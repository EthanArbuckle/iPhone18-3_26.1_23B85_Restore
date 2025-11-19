void sub_1B520AB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_neg_char[abi:ne200100](uint64_t a1, int a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v3 = (a1 + 64);
    v4 = &v6;
LABEL_5:
    std::vector<int>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = (a1 + 64);
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<int>::push_back[abi:ne200100]((a1 + 64), &v7);
}

void (__cdecl ***std::__begin_marked_subexpression<wchar_t>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<wchar_t>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__begin_marked_subexpression<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<wchar_t>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__end_marked_subexpression<wchar_t>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__end_marked_subexpression<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<wchar_t const*>(uint64_t a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  v4 = a2;
  if (a2 != a3)
  {
    v8 = (*(**(a1 + 8) + 104))(*(a1 + 8), *a2, 0);
    if ((v8 & 0xFFFFFFF8) == 0x30 || (v8 & 0xFFFFFFFE) == 0x38)
    {
      *a4 = v8 - 48;
      for (++v4; v4 != a3; ++v4)
      {
        v9 = (*(**(a1 + 8) + 104))(*(a1 + 8), *v4, 0);
        if ((v9 & 0xFFFFFFF8) != 0x30 && (v9 & 0xFFFFFFFE) != 0x38)
        {
          break;
        }

        if (*a4 >= 214748364)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
        }

        *a4 = v9 + 10 * *a4 - 48;
      }
    }
  }

  return v4;
}

void std::__loop<wchar_t>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  std::__owns_two_states<wchar_t>::~__owns_two_states(a1);

  JUMPOUT(0x1B8C85350);
}

unsigned int *std::__loop<wchar_t>::__exec(unsigned int *result, void *a2)
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

unsigned int *std::__loop<wchar_t>::__exec_split(unsigned int *result, int a2, void *a3)
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

void std::__owns_two_states<wchar_t>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  std::__owns_two_states<wchar_t>::~__owns_two_states(a1);

  JUMPOUT(0x1B8C85350);
}

void (__cdecl ***std::__owns_two_states<wchar_t>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  *a1 = &unk_1F2D05AC0;
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

uint64_t std::__repeat_one_loop<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<wchar_t>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  std::__owns_two_states<wchar_t>::~__owns_two_states(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__alternate<wchar_t>::__exec_split(uint64_t result, int a2, uint64_t a3)
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

uint64_t std::__empty_non_own_state<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_simple_RE<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t>::value_type *a2, int *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_nondupl_RE<wchar_t const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_RE_dupl_symbol<wchar_t const*>(a1, v8, a3, end, marked_count + 1, v9);
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_nondupl_RE<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t>::value_type *a2, int *a3)
{
  v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_RE<wchar_t const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3)
  {
    v8 = v6 + 1;
    if (v6 + 1 != a3 && *v6 == 92)
    {
      if (*v8 == 40)
      {
        v9 = v6 + 2;
        std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_begin_marked_subexpression(a1);
        marked_count = a1->__marked_count_;
        do
        {
          v11 = v9;
          v12 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_simple_RE<wchar_t const*>(a1, v9, a3);
          v9 = v12;
        }

        while (v12 != v11);
        if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        v7 = v12 + 2;
        std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_end_marked_subexpression(a1, marked_count);
      }

      else
      {
        v13 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__test_back_ref(a1, *v8);
        v14 = 8;
        if (!v13)
        {
          v14 = 0;
        }

        return (v7 + v14);
      }
    }
  }

  return v7;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_RE_dupl_symbol<wchar_t const*>(std::basic_regex<wchar_t> *this, unsigned int *a2, unsigned int *a3, std::__owns_one_state<wchar_t> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    if (*a2 == 42)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && *a2 == 92 && a2[1] == 123)
    {
      v13 = a2 + 2;
      LODWORD(__max) = 0;
      v14 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<wchar_t const*>(this, a2 + 2, a3, &__max);
      if (v14 == v13)
      {
        goto LABEL_25;
      }

      if (v14 != a3)
      {
        v15 = v14 + 1;
        if (*v14 == 44)
        {
          v24 = -1;
          v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<wchar_t const*>(this, v15, a3, &v24);
          if (v16 != a3)
          {
            v17 = v16;
            if (v16 + 1 != a3 && *v16 == 92)
            {
              v18 = v16[1];
              v19 = v18 == 125;
              if (v18 == 125)
              {
                v20 = v24;
                if (v24 == -1)
                {
                  v21 = v8;
                  v22 = v7;
                  v23 = this;
                  v20 = -1;
                  goto LABEL_23;
                }

                if (v24 >= __max)
                {
                  v21 = v8;
                  v22 = v7;
                  v23 = this;
LABEL_23:
                  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_loop(v23, __max, v20, __s, v21, v22, 1);
                  return &v17[2 * v19];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v15 != a3 && *v14 == 92 && *v15 == 125)
        {
          v6 = v14 + 2;
          std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_RE<wchar_t const*>(std::basic_regex<wchar_t> *this, std::basic_regex<wchar_t>::value_type *a2, int *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR<wchar_t const*>(this, a2, a3);
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
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR<wchar_t const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<wchar_t const*>(this, a2, a3);
}

_DWORD *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR<wchar_t const*>(std::basic_regex<wchar_t> *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any<wchar_t>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this)))(std::__owns_one_state<wchar_t> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any<wchar_t>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<wchar_t> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__match_any<wchar_t>::__exec(uint64_t result, uint64_t a2)
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

BOOL std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__test_back_ref(std::basic_regex<wchar_t> *this, __int32 a2)
{
  v3 = (this->__traits_.__ct_->do_narrow)(this->__traits_.__ct_, *&a2, 0);
  if ((v3 & 0xFFFFFFF8) != 0x30 && (v3 & 0xFFFFFFFE) != 0x38 || (v3 - 49) > 8)
  {
    return 0;
  }

  if (v3 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_back_ref(this, v3 - 48);
  return 1;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_branch<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_expression<wchar_t const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_expression<wchar_t const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_expression<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_ERE<wchar_t const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    if (*v8 == 36)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_r_anchor(a1);
    }

    else if (v10 == 40)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_begin_marked_subexpression(a1);
      v11 = a1->__marked_count_;
      ++a1->__open_count_;
      v12 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<wchar_t const*>(a1, v9 + 1, a3);
      if (v12 == a3 || (v9 = v12, *v12 != 41))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_end_marked_subexpression(a1, v11);
      --a1->__open_count_;
    }

    else
    {
      if (v10 != 94)
      {
        goto LABEL_12;
      }

      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_l_anchor(a1);
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_dupl_symbol<wchar_t const*>(a1, v9, a3, end, marked_count + 1, v13);
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_ERE<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ORD_CHAR_ERE<wchar_t const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR_ERE<wchar_t const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<wchar_t const*>(a1, a2, a3);
}

std::basic_regex<wchar_t> *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ORD_CHAR_ERE<wchar_t const*>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *this, std::basic_regex<wchar_t> *a3)
{
  v3 = this;
  if (this != a3)
  {
    locale = this->__traits_.__loc_.__locale_;
    v5 = (locale - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (locale - 36)) & 0x5800000080004D1) != 0)
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
      if ((locale - 123) < 2)
      {
        return v3;
      }
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, locale);
    return (v3 + 4);
  }

  return v3;
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR_ERE<wchar_t const*>(uint64_t a1, std::wstring::value_type *a2, std::wstring::value_type *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = (*v4 - 36) > 0x3A || ((1 << (*v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (*v4 - 123) < 3)
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, *v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__test_back_ref(a1, *v4);
    v8 = 8;
    if (!v7)
    {
      v8 = 0;
    }

    return (v3 + v8);
  }

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<wchar_t const*>(a1, v4, a3, 0);
}

void std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::basic_regex[abi:ne200100]<std::char_traits<wchar_t>,std::allocator<wchar_t>>(std::regex_traits<wchar_t> *a1, uint64_t a2, int a3)
{
  v4 = std::regex_traits<wchar_t>::regex_traits(a1);
  LODWORD(v4[1].__loc_.__locale_) = a3;
  *(&v4[1].__loc_.__locale_ + 4) = 0u;
  *(&v4[1].__col_ + 4) = 0u;
  HIDWORD(v4[2].__ct_) = 0;
  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse<std::__wrap_iter<wchar_t const*>>();
}

void sub_1B520BF48(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ecma_exp<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_alternative<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    operator new();
  }

  while (v7 != a3 && *v7 == 124)
  {
    v8 = a1->__end_;
    v9 = v7 + 1;
    v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_alternative<std::__wrap_iter<wchar_t const*>>(a1, v7 + 1, a3);
    if (v9 == v7)
    {
      operator new();
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(a1, end, v8);
  }

  return v7;
}

std::basic_regex<wchar_t>::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_basic_reg_exp<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *this, unsigned int *a2, unsigned int *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_simple_RE<std::__wrap_iter<wchar_t const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_branch<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_branch<std::__wrap_iter<wchar_t const*>>(a1, (v8 + 1), a3);
    if (v8 + 1 == v10)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_grep<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *this, unsigned int *a2, unsigned int *a3)
{
  end = this->__end_;
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_6;
  }

  while (*v6 != 10)
  {
    if (++v6 == a3)
    {
      v6 = a3;
      break;
    }
  }

  if (v6 == a2)
  {
LABEL_6:
    operator new();
  }

  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_basic_reg_exp<std::__wrap_iter<wchar_t const*>>(this, a2, v6);
  for (i = &v6[v6 != a3]; i != a3; i = &v8[v8 != a3])
  {
    v8 = i;
    while (*v8 != 10)
    {
      if (++v8 == a3)
      {
        v8 = a3;
        break;
      }
    }

    v9 = this->__end_;
    if (i == v8)
    {
      operator new();
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_basic_reg_exp<std::__wrap_iter<wchar_t const*>>(this, i, v8);
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(this, end, v9);
  }

  return a3;
}

std::basic_regex<wchar_t> *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_egrep<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  end = a1->__end_;
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_6;
  }

  while (LODWORD(v6->__traits_.__loc_.__locale_) != 10)
  {
    v6 = (v6 + 4);
    if (v6 == a3)
    {
      v6 = a3;
      break;
    }
  }

  if (v6 == a2)
  {
LABEL_6:
    operator new();
  }

  std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<std::__wrap_iter<wchar_t const*>>(a1, a2, v6);
  for (i = (v6 + 4 * (v6 != a3)); i != a3; i = (v8 + 4 * (v8 != a3)))
  {
    v8 = i;
    while (LODWORD(v8->__traits_.__loc_.__locale_) != 10)
    {
      v8 = (v8 + 4);
      if (v8 == a3)
      {
        v8 = a3;
        break;
      }
    }

    v9 = a1->__end_;
    if (i == v8)
    {
      operator new();
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<std::__wrap_iter<wchar_t const*>>(a1, i, v8);
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_alternation(a1, end, v9);
  }

  return a3;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_alternative<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_term<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_term<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  result = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_assertion<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_dupl_symbol<std::__wrap_iter<wchar_t const*>>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_assertion<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *this, int *a2, int *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (*a2 <= 91)
  {
    if (v6 != 36)
    {
      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          std::regex_traits<wchar_t>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse<std::__wrap_iter<wchar_t const*>>(&v14, v3 + 3, a3);
          marked_count = v14.__marked_count_;
          std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_lookahead(this, &v14, 1, this->__marked_count_);
          this->__marked_count_ += marked_count;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

          goto LABEL_27;
        }

        if (v7 == 61)
        {
          std::regex_traits<wchar_t>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse<std::__wrap_iter<wchar_t const*>>(&v14, v3 + 3, a3);
          v9 = v14.__marked_count_;
          std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_lookahead(this, &v14, 0, this->__marked_count_);
          this->__marked_count_ += v9;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

LABEL_27:
          v3 = v8 + 1;
          std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v14.__traits_.__loc_);
          return v3;
        }
      }

      return v3;
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v11 = a2[1];
    if (v11 == 66)
    {
      v12 = 1;
    }

    else
    {
      if (v11 != 98)
      {
        return v3;
      }

      v12 = 0;
    }

    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_word_boundary(this, v12);
    v3 += 2;
  }

  return v3;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *this, std::basic_regex<wchar_t>::value_type *a2, std::basic_regex<wchar_t>::value_type *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (*a2 <= 62)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          operator new();
        }

        if ((v6 - 42) >= 2)
        {
          return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_pattern_character<wchar_t const*>(this, a2, a3);
        }

LABEL_28:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      v8 = a2 + 1;
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && *v8 == 63 && a2[2] == 58)
        {
          ++this->__open_count_;
          v9 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ecma_exp<std::__wrap_iter<wchar_t const*>>(this, a2 + 3, a3);
          if (v9 != a3 && *v9 == 41)
          {
            --this->__open_count_;
            return v9 + 1;
          }
        }

        else
        {
          std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_begin_marked_subexpression(this);
          marked_count = this->__marked_count_;
          ++this->__open_count_;
          v11 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ecma_exp<std::__wrap_iter<wchar_t const*>>(this, v8, a3);
          if (v11 != a3)
          {
            v12 = v11;
            if (*v11 == 41)
            {
              std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_end_marked_subexpression(this, marked_count);
              --this->__open_count_;
              return v12 + 1;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    if (v6 > 91)
    {
      if (v6 == 92)
      {
        return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom_escape<std::__wrap_iter<wchar_t const*>>(this, a2, a3);
      }

      if (v6 == 123)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 == 91)
      {
        return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<std::__wrap_iter<wchar_t const*>>(this, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_28;
      }
    }

    return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_pattern_character<wchar_t const*>(this, a2, a3);
  }

  return v3;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_dupl_symbol<std::__wrap_iter<wchar_t const*>>(uint64_t a1, unsigned int *a2, unsigned int *a3, std::__owns_one_state<wchar_t> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (*a2 > 62)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v17 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v17 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<std::__wrap_iter<wchar_t const*>>(a1, a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        if (*v16 != 44)
        {
          if (*v16 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v17 = __max;
LABEL_32:
              v20 = __s;
              v21 = 0;
LABEL_45:
              std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_loop(a1, v14, v17, v20, a5, a6, v21);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v17 = __max;
LABEL_44:
            v20 = __s;
            v21 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v22 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v22 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v17 = -1;
          goto LABEL_44;
        }

        v26 = -1;
        v24 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<std::__wrap_iter<wchar_t const*>>(v11, v22, a3, &v26);
        if (v22 != v24 && v24 != a3 && *v24 == 125)
        {
          v17 = v26;
          v14 = __max;
          if (v26 >= __max)
          {
            v6 = v24 + 1;
            v21 = 1;
            if (!v12 && v6 != a3)
            {
              v25 = v24[1];
              v21 = v25 != 63;
              if (v25 == 63)
              {
                v6 = v24 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v20 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v17 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_atom_escape<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_decimal_escape<std::__wrap_iter<wchar_t const*>>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_class_escape<wchar_t const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<std::__wrap_iter<wchar_t const*>>(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<std::__wrap_iter<wchar_t const*>>(uint64_t a1, std::wstring::value_type *a2, std::wstring::value_type *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_21;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = v5;
        v5 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_expression_term<std::__wrap_iter<wchar_t const*>>(a1, v5, a3, v7);
      }

      while (v8 != v5);
    }

    if (v8 == a3)
    {
      goto LABEL_21;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_decimal_escape<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = *a2 - 48;
    if (v4 == 48)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v5);
      return ++v3;
    }

    if ((v4 - 49) > 8)
    {
      return v3;
    }

    if (++v3 == a3)
    {
      v3 = a3;
    }

    else
    {
      while (1)
      {
        v6 = *v3;
        if ((*v3 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_16;
        }

        ++v3;
        v5 = v6 + 10 * v5 - 48;
        if (v3 == a3)
        {
          v3 = a3;
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (v5 <= a1->__marked_count_)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_back_ref(a1, v5);
      return v3;
    }

LABEL_16:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  return v3;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *this, unsigned int *a2, unsigned int *a3, std::wstring *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v7 = this;
  v8 = *a2;
  if (*a2 <= 113)
  {
    if (v8 > 101)
    {
      if (v8 == 102)
      {
        if (!a4)
        {
          v11 = 12;
          goto LABEL_64;
        }

        v12 = a4;
        v11 = 12;
      }

      else
      {
        if (v8 != 110)
        {
          goto LABEL_66;
        }

        if (!a4)
        {
          v11 = 10;
          goto LABEL_64;
        }

        v12 = a4;
        v11 = 10;
      }
    }

    else
    {
      if (v8 != 48)
      {
        if (v8 == 99)
        {
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_72;
          }

          v10 = *v4;
          if (*v4 < 65 || v10 >= 0x5B && v10 - 97 > 0x19)
          {
            goto LABEL_72;
          }

          v11 = *v4 & 0x1F;
          if (a4)
          {
            goto LABEL_68;
          }

LABEL_16:
          this = v7;
LABEL_64:
          std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(this, v11);
          return ++v4;
        }

        if (v8 == 95)
        {
          goto LABEL_72;
        }

LABEL_66:
        if ((this->__traits_.__ct_->do_is)(this->__traits_.__ct_, 1280))
        {
          goto LABEL_72;
        }

        v11 = *v4;
        if (a4)
        {
LABEL_68:
          v12 = a4;
          goto LABEL_69;
        }

        goto LABEL_16;
      }

      if (!a4)
      {
        v11 = 0;
        goto LABEL_64;
      }

      v12 = a4;
      v11 = 0;
    }

LABEL_69:
    std::wstring::operator=(v12, v11);
    return ++v4;
  }

  if (v8 <= 116)
  {
    if (v8 == 114)
    {
      if (!a4)
      {
        v11 = 13;
        goto LABEL_64;
      }

      v12 = a4;
      v11 = 13;
    }

    else
    {
      if (v8 != 116)
      {
        goto LABEL_66;
      }

      if (!a4)
      {
        v11 = 9;
        goto LABEL_64;
      }

      v12 = a4;
      v11 = 9;
    }

    goto LABEL_69;
  }

  if (v8 != 117)
  {
    if (v8 != 118)
    {
      if (v8 == 120)
      {
        v9 = 0;
        goto LABEL_42;
      }

      goto LABEL_66;
    }

    if (!a4)
    {
      v11 = 11;
      goto LABEL_64;
    }

    v12 = a4;
    v11 = 11;
    goto LABEL_69;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v13 = (this->__traits_.__ct_->do_narrow)(this->__traits_.__ct_, a2[1], 0);
  v14 = v13;
  v15 = -48;
  if ((v13 & 0xFFFFFFF8) != 0x30 && (v13 & 0xFFFFFFFE) != 0x38)
  {
    v14 = v13 | 0x20;
    if (((v13 | 0x20) - 97) >= 6u)
    {
      goto LABEL_72;
    }

    v15 = -87;
  }

  v4 += 2;
  if (v4 == a3)
  {
    goto LABEL_72;
  }

  v16 = (v7->__traits_.__ct_->do_narrow)(v7->__traits_.__ct_, *v4, 0);
  v17 = -48;
  if ((v16 & 0xFFFFFFF8) != 0x30 && (v16 & 0xFFFFFFFE) != 0x38)
  {
    v16 |= 0x20u;
    if ((v16 - 97) >= 6u)
    {
      goto LABEL_72;
    }

    v17 = -87;
  }

  v9 = ((v15 + v14) << 8) + 16 * (v17 + v16);
LABEL_42:
  if (v4 + 1 == a3)
  {
    goto LABEL_72;
  }

  v18 = (v7->__traits_.__ct_->do_narrow)(v7->__traits_.__ct_, v4[1], 0);
  v19 = v18;
  v20 = -48;
  if ((v18 & 0xFFFFFFF8) != 0x30 && (v18 & 0xFFFFFFFE) != 0x38)
  {
    v19 = v18 | 0x20;
    if (((v18 | 0x20) - 97) >= 6u)
    {
      goto LABEL_72;
    }

    v20 = -87;
  }

  if (v4 + 2 == a3)
  {
LABEL_72:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v21 = (v7->__traits_.__ct_->do_narrow)(v7->__traits_.__ct_, v4[2], 0);
  v22 = -48;
  if ((v21 & 0xFFFFFFF8) != 0x30 && (v21 & 0xFFFFFFFE) != 0x38)
  {
    v21 |= 0x20u;
    if ((v21 - 97) < 6u)
    {
      v22 = -87;
      goto LABEL_52;
    }

    goto LABEL_72;
  }

LABEL_52:
  v23 = v22 + v21 + 16 * (v20 + v9 + v19);
  if (a4)
  {
    std::wstring::operator=(a4, v23);
  }

  else
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(v7, v23);
  }

  v4 += 3;
  return v4;
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_expression_term<std::__wrap_iter<wchar_t const*>>(uint64_t a1, std::wstring::value_type *a2, std::wstring::value_type *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = a2 + 1;
  memset(&v24, 0, sizeof(v24));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v12 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v10 = *v9;
  if (*v9 != 46)
  {
    if (v10 == 58)
    {
      v11 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_class<std::__wrap_iter<wchar_t const*>>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v10 == 61)
    {
      v11 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_equivalence_class<std::__wrap_iter<wchar_t const*>>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v11;
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v4 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_collating_symbol<std::__wrap_iter<wchar_t const*>>(a1, a2 + 2, a3, &v24);
  v12 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_10:
    if ((v12 | 0x40) == 0x40)
    {
      v13 = *v4;
      if (*v4 == 92)
      {
        if (v12)
        {
          v4 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<std::__wrap_iter<wchar_t const*>>(a1, v4 + 1, a3, &v24);
        }

        else
        {
          v4 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_class_escape<std::__wrap_iter<wchar_t const*>>(a1, v4 + 1, a3, &v24, v6);
          v12 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v13 = *v4;
    }

    std::wstring::operator=(&v24, v13);
    ++v4;
  }

LABEL_16:
  if (v4 != a3 && *v4 != 93)
  {
    v15 = v4 + 1;
    if (v4 + 1 != a3 && *v4 == 45 && *v15 != 93)
    {
      memset(&v23, 0, sizeof(v23));
      v4 += 2;
      if (v15 + 1 != a3 && *v15 == 91 && *v4 == 46)
      {
        v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_collating_symbol<std::__wrap_iter<wchar_t const*>>(a1, v15 + 2, a3, &v23);
LABEL_55:
        v4 = v16;
        goto LABEL_56;
      }

      if ((v12 | 0x40) == 0x40)
      {
        v20 = *v15;
        if (*v15 == 92)
        {
          if (v12)
          {
            v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<std::__wrap_iter<wchar_t const*>>(a1, v15 + 1, a3, &v23);
          }

          else
          {
            v16 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_class_escape<std::__wrap_iter<wchar_t const*>>(a1, v15 + 1, a3, &v23, v6);
          }

          goto LABEL_55;
        }
      }

      else
      {
        v20 = *v15;
      }

      std::wstring::operator=(&v23, v20);
LABEL_56:
      v22 = v24;
      memset(&v24, 0, sizeof(v24));
      __p = v23;
      memset(&v23, 0, sizeof(v23));
      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_range[abi:ne200100](v6, &v22, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      goto LABEL_41;
    }
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v24.__r_.__value_.__l.__size_)
    {
      if (v24.__r_.__value_.__l.__size_ != 1)
      {
        v14 = v24.__r_.__value_.__r.__words[0];
LABEL_40:
        std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_digraph[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
        goto LABEL_41;
      }

      v14 = v24.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v24.__r_.__value_.__s + 23))
  {
    v14 = &v24;
    if (HIBYTE(v24.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_40;
    }

LABEL_25:
    std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0]);
  }

LABEL_41:
  v17 = 1;
LABEL_42:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    return v4;
  }

  return v6;
}

void sub_1B520D8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_equivalence_class<std::__wrap_iter<wchar_t const*>>(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0x5D0000003DLL;
  LOBYTE(__p[0]) = 0;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<wchar_t const*>,std::__wrap_iter<wchar_t const*>,wchar_t *,wchar_t *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v21, &v22);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<wchar_t>::__lookup_collatename<wchar_t *>(a1, a2, v8, &v18);
  v9 = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (v20)
    {
      v10 = &v18;
      goto LABEL_7;
    }

LABEL_27:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v9 = v19;
  if (!v19)
  {
    goto LABEL_27;
  }

  v10 = v18;
LABEL_7:
  std::regex_traits<wchar_t>::__transform_primary<wchar_t *>(a1, v10, &v10[4 * v9], __p);
  v11 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  if (v11)
  {
    std::vector<std::wstring>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v12 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v12 = v19;
    }

    if (v12 == 2)
    {
      v14 = &v18;
      if ((v20 & 0x80u) != 0)
      {
        v14 = v18;
      }

      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_digraph[abi:ne200100](a4, *v14, v14[1]);
    }

    else
    {
      if (v12 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v13 = &v18;
      if ((v20 & 0x80u) != 0)
      {
        v13 = v18;
      }

      std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](a4, *v13);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v18);
  }

  return v8 + 8;
}

void sub_1B520DB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_class<std::__wrap_iter<wchar_t const*>>(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0x5D0000003ALL;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<wchar_t const*>,std::__wrap_iter<wchar_t const*>,wchar_t *,wchar_t *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v12, &v13);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  v10 = std::regex_traits<wchar_t>::__lookup_classname<wchar_t const*>(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v10;
  return v9 + 8;
}

_BYTE *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_collating_symbol<std::__wrap_iter<wchar_t const*>>(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0x5D0000002ELL;
  v15 = 0;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<wchar_t const*>,std::__wrap_iter<wchar_t const*>,wchar_t *,wchar_t *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v16, &v17);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<wchar_t>::__lookup_collatename<wchar_t *>(a1, a2, v8, &v13);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 8;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_class_escape<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, unsigned int *a2, unsigned int *a3, std::wstring *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (*a2 > 97)
  {
    if (v6 > 114)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<std::__wrap_iter<wchar_t const*>>(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::wstring::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<std::__wrap_iter<wchar_t const*>>(a1, a2, a3, this);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (v6 <= 82)
  {
    if (v6)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<std::__wrap_iter<wchar_t const*>>(a1, a2, a3, this);
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<wchar_t,std::regex_traits<wchar_t>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_character_escape<std::__wrap_iter<wchar_t const*>>(a1, a2, a3, this);
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::wstring::value_type *a2, std::wstring::value_type *a3, std::wstring *this)
{
  if (a2 == a3)
  {
LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 101)
  {
    if (v5 <= 91)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_51;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::wstring::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if (v5 <= 113)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_51;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_51;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_51;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_51;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_51:
        std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_55;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v8 & 0xFFFFFFF8) != 0x30)
    {
      goto LABEL_42;
    }

    v7 = *v8 + 8 * v7 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 & 0xFFFFFFF8;
      if (v10 == 48)
      {
        v8 = a2 + 3;
      }

      else
      {
        v8 = a2 + 2;
      }

      if (v10 == 48)
      {
        v7 = *v9 + 8 * v7 - 48;
      }

      goto LABEL_42;
    }
  }

  v8 = a3;
LABEL_42:
  if (this)
  {
    std::wstring::operator=(this, v7);
  }

  else
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v7);
  }

  return v8;
}

_DWORD *std::__search_impl[abi:ne200100]<std::__wrap_iter<wchar_t const*>,std::__wrap_iter<wchar_t const*>,wchar_t *,wchar_t *,std::__equal_to,std::__identity,std::__identity,0>(_DWORD *result, uint64_t a2, char *a3, char *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    v5 = (a2 - result) >> 2;
    if (v5 < v4 >> 2)
    {
      return a2;
    }

    v6 = &result[v5 - (v4 >> 2) + 1];
    if (v6 == result)
    {
      return a2;
    }

    else
    {
      v9 = *a3;
      v7 = a3 + 4;
      v8 = v9;
      while (*result != v8)
      {
LABEL_11:
        if (++result == v6)
        {
          return a2;
        }
      }

      v10 = result + 1;
      v11 = v7;
      while (v11 != a4)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = *v11;
        v11 += 4;
        if (v12 != v14)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<std::__wrap_iter<wchar_t const*>>(uint64_t a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  v4 = a2;
  if (a2 != a3)
  {
    v8 = (*(**(a1 + 8) + 104))(*(a1 + 8), *a2, 0);
    if ((v8 & 0xFFFFFFF8) == 0x30 || (v8 & 0xFFFFFFFE) == 0x38)
    {
      *a4 = v8 - 48;
      if (++v4 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
        {
          v9 = (*(**(a1 + 8) + 104))(*(a1 + 8), *v4, 0);
          if ((v9 & 0xFFFFFFF8) != 0x30 && (v9 & 0xFFFFFFFE) != 0x38)
          {
            break;
          }

          if (*a4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          *a4 = v9 + 10 * *a4 - 48;
          if (++v4 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return v4;
}

uint64_t std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_RE_expression<std::__wrap_iter<wchar_t const*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_simple_RE<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_simple_RE<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t>::value_type *a2, std::basic_regex<wchar_t>::value_type *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_nondupl_RE<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_RE_dupl_symbol<std::__wrap_iter<wchar_t const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

std::basic_regex<wchar_t>::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_nondupl_RE<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t>::value_type *a2, std::basic_regex<wchar_t>::value_type *a3)
{
  v3 = a3;
  v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 1 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = a2[1];
  if (v8 == 40)
  {
    v9 = (a2 + 2);
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_begin_marked_subexpression(a1);
    marked_count = a1->__marked_count_;
    v12 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_RE_expression<std::__wrap_iter<wchar_t const*>>(a1, v9, v3);
    if (v12 != v3)
    {
      if (v12 + 1 == v3 || *v12 != 92)
      {
        goto LABEL_23;
      }

      if (v12[1] == 41)
      {
        v3 = (v12 + 2);
      }

      else
      {
        v3 = v12;
      }
    }

    if (v3 != v12)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_end_marked_subexpression(a1, marked_count);
      return v3;
    }

LABEL_23:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__test_back_ref(a1, v8))
  {
    return a2 + 2;
  }

  else
  {
    return v7;
  }
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_RE_dupl_symbol<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *this, unsigned int *a2, unsigned int *a3, std::__owns_one_state<wchar_t> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    if (*a2 == 42)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    v12 = a3;
    if (a2 + 1 != a3 && *a2 == 92)
    {
      v13 = a2[1] == 123 ? a2 + 2 : a2;
      if (v13 != a2)
      {
        v22 = 0;
        v14 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<std::__wrap_iter<wchar_t const*>>(this, v13, a3, &v22);
        if (v14 == v13)
        {
          goto LABEL_34;
        }

        if (v14 != v12)
        {
          if (*v14 == 44)
          {
            v21 = -1;
            v15 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_DUP_COUNT<std::__wrap_iter<wchar_t const*>>(this, v14 + 1, v12, &v21);
            if (v15 != v12)
            {
              if (v15 + 1 == v12 || *v15 != 92)
              {
                goto LABEL_33;
              }

              if (v15[1] == 125)
              {
                v12 = v15 + 2;
              }

              else
              {
                v12 = v15;
              }
            }

            if (v12 != v15)
            {
              v17 = v21;
              v16 = v22;
              if (v21 == -1)
              {
                v18 = v8;
                v19 = v7;
                v20 = this;
                v17 = -1;
                goto LABEL_32;
              }

              if (v21 >= v22)
              {
                v18 = v8;
                v19 = v7;
                v20 = this;
LABEL_32:
                std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_loop(v20, v16, v17, __s, v18, v19, 1);
                return v12;
              }

LABEL_34:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
            }
          }

          else if (v14 + 1 != v12 && *v14 == 92)
          {
            v12 = v14[1] == 125 ? v14 + 2 : v14;
            if (v14 != v12)
            {
              v16 = v22;
              v18 = v8;
              v19 = v7;
              v20 = this;
              v17 = v22;
              goto LABEL_32;
            }
          }
        }

LABEL_33:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
      }
    }
  }

  return v6;
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t>::value_type *a2, std::basic_regex<wchar_t>::value_type *a3)
{
  v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ORD_CHAR<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
}

std::basic_regex<wchar_t>::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ORD_CHAR<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t>::value_type *a2, std::basic_regex<wchar_t>::value_type *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v3 + 1 != a3 || v4 != 36) && ((v4 - 46) > 0x2E || ((1 << (v4 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

std::basic_regex<wchar_t>::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = a2 + 1;
    if (a2 + 1 != a3 && *a2 == 92 && (*v4 - 36) <= 0x3A && ((1 << (*v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, *v4);
      return v4 + 1;
    }
  }

  return v3;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_branch<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_expression<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_expression<std::__wrap_iter<wchar_t const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned int *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_expression<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    if (*v8 == 36)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_r_anchor(a1);
    }

    else if (v10 == 40)
    {
      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_begin_marked_subexpression(a1);
      v11 = a1->__marked_count_;
      ++a1->__open_count_;
      v12 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_extended_reg_exp<std::__wrap_iter<wchar_t const*>>(a1, v9 + 1, a3);
      if (v12 == a3 || (v9 = v12, *v12 != 41))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_end_marked_subexpression(a1, v11);
      --a1->__open_count_;
    }

    else
    {
      if (v10 != 94)
      {
        goto LABEL_12;
      }

      std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_l_anchor(a1);
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return a2;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ERE_dupl_symbol<std::__wrap_iter<wchar_t const*>>(a1, v9, a3, end, marked_count + 1, v13);
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<wchar_t const*>>(std::basic_regex<wchar_t> *a1, std::basic_regex<wchar_t> *a2, std::basic_regex<wchar_t> *a3)
{
  v6 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_ORD_CHAR_ERE<wchar_t const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_bracket_expression<std::__wrap_iter<wchar_t const*>>(a1, a2, a3);
}

std::wstring::value_type *std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<wchar_t const*>>(uint64_t a1, std::wstring::value_type *a2, std::wstring::value_type *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = a2 + 1;
    if (a2 + 1 != a3 && *a2 == 92)
    {
      v5 = *v4;
      v6 = (*v4 - 36) > 0x3A || ((1 << (*v4 - 36)) & 0x5800000080004F1) == 0;
      if (v6 && (v5 - 123) >= 3)
      {
        if ((*(a1 + 24) & 0x1F0) == 0x40)
        {
          return std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__parse_awk_escape<std::__wrap_iter<wchar_t const*>>(a1, v3 + 1, a3, 0);
        }

        else if (std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__test_back_ref(a1, v5))
        {
          v3 += 2;
        }
      }

      else
      {
        std::basic_regex<wchar_t,std::regex_traits<wchar_t>>::__push_char(a1, v5);
        v3 += 2;
      }
    }
  }

  return v3;
}

uint64_t std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__emplace_back_slow_path<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RegexReplacementRule>>(a1, v6);
  }

  v7 = 88 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  std::locale::locale(v7, a2);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = *(a2 + 56);
  v8 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 64) = v8;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *&v17 = v7 + 88;
  v9 = *(a1 + 8);
  v10 = (v7 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>,std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::~__split_buffer(&v15);
  return v14;
}

void sub_1B520EC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>,std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>*>(uint64_t a1, std::locale *a2, std::locale *a3, std::locale *this)
{
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = this;
    v6 = a2;
    v7 = a1;
    v8 = a2;
    do
    {
      std::locale::locale(v4, v8);
      *&v4[1].__locale_ = *&v8[1].__locale_;
      *&v4[3].__locale_ = *&v8[3].__locale_;
      *&v4[5].__locale_ = *&v8[5].__locale_;
      v8[5].__locale_ = 0;
      v8[6].__locale_ = 0;
      v4[7].__locale_ = v8[7].__locale_;
      v9 = *&v8[8].__locale_;
      v4[10].__locale_ = v8[10].__locale_;
      *&v4[8].__locale_ = v9;
      v8[9].__locale_ = 0;
      v8[10].__locale_ = 0;
      v8[8].__locale_ = 0;
      v8 += 11;
      v4 = v14 + 11;
      v14 += 11;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(v7, v6);
      v6 += 11;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>,std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>,std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(v5, (v4 - 88));
  }
}

uint64_t kaldi::nnet1::Component::Backpropagate(_DWORD *lpsrc, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5, uint64_t a6)
{
  if (lpsrc[3] != *(a4 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Non-matching output dims, component:", 36);
    v23 = MEMORY[0x1B8C84C00](v22, lpsrc[3]);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " data:", 6);
    MEMORY[0x1B8C84C00](v24, *(a4 + 16));
    goto LABEL_17;
  }

  if (*(lpsrc + 17) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "Backpropagate() attempted while disabled");
LABEL_17:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  if (a5)
  {
    kaldi::CuMatrix<float>::Resize(a5, *(a2 + 20), lpsrc[2], 0, 0);
    (*(*lpsrc + 56))(lpsrc, *(a2 + 20));
    v12 = *(*lpsrc + 128);
    v13 = lpsrc;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = a5;
LABEL_11:

    return v12(v13, v14, v15, v16, v17, a6);
  }

  v18 = *lpsrc;
  if ((*(v18 + 24))(lpsrc) == 2055 || ((result = (*(*lpsrc + 24))(lpsrc), result != 2049) ? (v21 = v19 == 0) : (v21 = 0), !v21))
  {
    v12 = *(*lpsrc + 128);
    v13 = lpsrc;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = 0;
    goto LABEL_11;
  }

  return result;
}

uint64_t kaldi::nnet1::MomentStatistics<float>(uint64_t a1)
{
  kaldi::Matrix<float>::Matrix(v3, *(a1 + 20), *(a1 + 16), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(a1, v3, 111);
  kaldi::nnet1::MomentStatistics<float>(v3);
  return kaldi::Matrix<float>::~Matrix(v3);
}

void sub_1B520F0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::nnet1::UpdatableComponent::CheckParams(kaldi::nnet1::UpdatableComponent *this)
{
  result = (*(*this + 208))(this);
  if (fabsf(result) == INFINITY)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "'inf' in component parameters (weight explosion, try lower learning rate?)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void sub_1B520F230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t std::valarray<unsigned long>::~valarray[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void hmaxent::model::model(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = **(a2 + 32);
  v5 = *(*(a2 + 32) + 8);
  *(a1 + 24) = 0;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = **(a2 + 24);
  v7 = *(*(a2 + 24) + 8);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = **(a2 + 24);
  v9 = *(*(a2 + 24) + 8);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::valarray<double>::resize(a1 + 80, (v9 - v8) >> 3);
  v10 = **(a2 + 24);
  v11 = *(*(a2 + 24) + 8);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 1000;
  operator new();
}

void sub_1B520F66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  MEMORY[0x1B8C85350](v16, 0x80C40803F642BLL);
  std::valarray<unsigned long>::~valarray[abi:ne200100](v15);
  std::valarray<unsigned long>::~valarray[abi:ne200100](v14);
  std::valarray<unsigned long>::~valarray[abi:ne200100](v13);
  std::valarray<unsigned long>::~valarray[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void search_sorted<unsigned long>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = 0;
  a2[1] = 0;
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

uint64_t std::__val_expr<std::_BinaryOp<std::plus<unsigned long>,std::valarray<unsigned long>,std::__scalar_expr<unsigned long>>>::operator std::valarray<unsigned long>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = **(a1 + 8);
  v3 = *(*(a1 + 8) + 8);
  result = v3 - v2;
  if (v3 != v2)
  {
    if (!((result >> 3) >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void hmaxent::model::~model(hmaxent::model *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 8);
      if (v4 != v3)
      {
        *(v2 + 8) = &v4[(v3 - v4 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v3);
      *v2 = 0;
      *(v2 + 8) = 0;
    }

    MEMORY[0x1B8C85350](v2, 0x10C40B8F86A93);
  }

  v5 = *(this + 15);
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);
      if (v7 != v6)
      {
        *(v5 + 8) = &v7[(v6 - v7 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v6);
      *v5 = 0;
      *(v5 + 8) = 0;
    }

    MEMORY[0x1B8C85350](v5, 0x80C40803F642BLL);
  }

  v8 = *(this + 16);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 8);
      if (v10 != v9)
      {
        *(v8 + 8) = &v10[(v9 - v10 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v9);
      *v8 = 0;
      *(v8 + 8) = 0;
    }

    MEMORY[0x1B8C85350](v8, 0x80C40803F642BLL);
  }

  v11 = *(this + 12);
  if (v11)
  {
    v12 = *(this + 13);
    if (v12 != v11)
    {
      *(this + 13) = &v12[(v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v11);
    *(this + 12) = 0;
    *(this + 13) = 0;
  }

  v13 = *(this + 10);
  if (v13)
  {
    v14 = *(this + 11);
    if (v14 != v13)
    {
      *(this + 11) = &v14[(v13 - v14 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v13);
    *(this + 10) = 0;
    *(this + 11) = 0;
  }

  v15 = *(this + 5);
  if (v15)
  {
    v16 = *(this + 6);
    if (v16 != v15)
    {
      *(this + 6) = &v16[(v15 - v16 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v15);
    *(this + 5) = 0;
    *(this + 6) = 0;
  }

  v17 = *(this + 3);
  if (v17)
  {
    v18 = *(this + 4);
    if (v18 != v17)
    {
      *(this + 4) = &v18[(v17 - v18 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v17);
    *(this + 3) = 0;
    *(this + 4) = 0;
  }
}

void *hmaxent::model::lognormconst(hmaxent::model *this)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(this + 73) != 1)
  {
    hmaxent::model::ensure_exp_params(this);
    v2 = *(**(*(this + 2) + 32) + 24);
    v38 = **(this + 15);
    v39 = v2;
    p_p = 1;
    std::valarray<double>::valarray(&__p, &v38);
    v28 = (this + 24);
    **(this + 3) = logsumexp<double>(&__p);
    if (__p)
    {
      if (v37 != __p)
      {
        v37 += (__p - v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }

    v3 = **(this + 2);
    if (v3 < 2)
    {
      goto LABEL_53;
    }

    v4 = **(this + 14);
    v5 = 2;
    v29 = 1;
    v6 = 1;
    while (1)
    {
      v7 = *(v4 + 8 * v6 - 8);
      if (v7 < 1)
      {
        goto LABEL_52;
      }

      for (i = 0; i < v7; ++i)
      {
        v9 = (**(*(this + 2) + 32) + 32 * (i + v29));
        v10 = *(*(this + 3) + 8 * v9[1]);
        v11 = v9[3];
        v38 = *(this + 5) + 8 * v9[2];
        v39 = v11;
        p_p = 1;
        std::valarray<double>::valarray(&__p, &v38);
        v34 = 0;
        v35 = 0;
        std::valarray<double>::resize(&v34, (v37 - __p) >> 3);
        v32 = 0;
        v33 = 0;
        if (v11)
        {
          if (!(v11 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v12 = 1;
        do
        {
          if (v12 == 1)
          {
            goto LABEL_23;
          }

          v38 = *(this + 12);
          std::valarray<unsigned long>::valarray(&v39, &v32);
          v13 = v39;
          v14 = p_p;
          v15 = v39 - p_p;
          if (v39 == p_p)
          {
            if (!v39)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v16 = v38;
          v17 = v32;
          v18 = v39;
          do
          {
            v19 = *v18++;
            *v17++ = *(v16 + 8 * v19);
          }

          while (v18 != v14);
          if (v13)
          {
            p_p = v14 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_22:
            operator delete(v13);
          }

LABEL_23:
          v38 = **(this + 15);
          std::valarray<unsigned long>::valarray(&v39, &v32);
          std::valarray<double>::valarray(&v30, &v38);
          v20 = v34;
          v21 = v35;
          v22 = v30;
          if (v34 == v35)
          {
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v23 = v30;
            do
            {
              v24 = *v23++;
              *v20 = v24 + *v20;
              ++v20;
            }

            while (v20 != v21);
          }

          if (v31 != v22)
          {
            v31 += (v22 - v31 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          operator delete(v22);
          v30 = 0;
          v31 = 0;
LABEL_31:
          if (v39)
          {
            if (p_p != v39)
            {
              p_p += (v39 - p_p + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            operator delete(v39);
          }

          ++v12;
        }

        while (v12 != v5);
        v30 = 0x3FF0000000000000;
        p_p = &__p;
        v41 = &v30;
        v42 = (v37 - __p) >> 3;
        v43 = &v34;
        v25 = std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::__val_expr<std::_BinaryOp<std::minus<double>,std::valarray<double>,std::__scalar_expr<double>>>,std::__val_expr<std::_UnaryOp<std::__exp_expr<double>,std::valarray<double>>>>>::sum[abi:ne200100](&v38);
        if (v25 != 0.0)
        {
          v26 = exp(v10);
          v10 = log(v26 + v25);
        }

        *(*v28 + 8 * (i + v29)) = v10;
        if (v32)
        {
          if (v33 != v32)
          {
            v33 += (v32 - v33 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          operator delete(v32);
        }

        if (v34)
        {
          if (v35 != v34)
          {
            v35 = (v35 + ((v34 - v35 + 7) & 0xFFFFFFFFFFFFFFF8));
          }

          operator delete(v34);
        }

        if (__p)
        {
          if (v37 != __p)
          {
            v37 += (__p - v37 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          operator delete(__p);
        }

        v4 = **(this + 14);
        v7 = *(v4 + 8 * v6 - 8);
      }

      v3 = **(this + 2);
LABEL_52:
      v29 += v7;
      ++v6;
      ++v5;
      if (v6 >= v3)
      {
LABEL_53:
        *(this + 73) = 1;
        return v28;
      }
    }
  }

  return (this + 24);
}

void sub_1B520FF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void hmaxent::model::ensure_exp_params(hmaxent::model *this)
{
  if ((*(this + 72) & 1) == 0)
  {
    v2 = (this + 40);
    v3 = *(this + 15);
    v5 = *v3;
    v4 = v3[1];
    v6 = v4 - *v3;
    v7 = v6 >> 3;
    if (*(this + 6) - *(this + 5) != v6)
    {
      std::valarray<double>::resize(this + 40, v6 >> 3);
    }

    if (v4 != v5)
    {
      v8 = *v2;
      v9 = *v3;
      do
      {
        v10 = *v9++;
        *v8++ = exp(v10);
        --v7;
      }

      while (v7);
    }
  }

  *(this + 72) = 1;
}

long double logsumexp<double>(double **a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v9 = 0.0;
  }

  else
  {
    v3 = v1 + 1;
    if (v1 + 1 == v2)
    {
      v5 = *a1;
    }

    else
    {
      v4 = *v1;
      v5 = *a1;
      v6 = v1 + 1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v4 < v7)
        {
          v4 = v8;
          v5 = v3;
        }

        v3 = v6;
      }

      while (v6 != v2);
    }

    v9 = *v5;
  }

  v12 = v9;
  v14 = a1;
  v15 = &v12;
  v16 = v2 - v1;
  v10 = std::__val_expr<std::_UnaryOp<std::__exp_expr<double>,std::__val_expr<std::_BinaryOp<std::minus<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::sum[abi:ne200100](v13);
  return v9 + log(v10);
}

double std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::__val_expr<std::_BinaryOp<std::minus<double>,std::valarray<double>,std::__scalar_expr<double>>>,std::__val_expr<std::_UnaryOp<std::__exp_expr<double>,std::valarray<double>>>>>::sum[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  v4 = *(v2 + 8) - *v2;
  v5 = v4 >> 3;
  if (v4)
  {
    v6 = *v3 - **(a1 + 24);
    v7 = v6 * exp(***(a1 + 48));
  }

  else
  {
    v7 = 0.0;
  }

  if (v5 >= 2)
  {
    v8 = **(a1 + 24);
    v9 = **(a1 + 48);
    v10 = v5 - 1;
    v11 = v3 + 1;
    v12 = (v9 + 8);
    do
    {
      v13 = *v11++;
      v14 = v13 - v8;
      v15 = *v12++;
      v7 = v7 + v14 * exp(v15);
      --v10;
    }

    while (v10);
  }

  return v7;
}

void hmaxent::model::param_sums(hmaxent::model *this@<X0>, uint64_t *a2@<X8>)
{
  std::valarray<double>::valarray(a2, *(this + 15));
  v4 = **(this + 2);
  if (v4 < 2)
  {
    return;
  }

  v5 = **(this + 14);
  v6 = 1;
  v7 = 1;
  do
  {
    v8 = *(v5 + 8 * v6 - 8);
    if (v8 < 1)
    {
      goto LABEL_23;
    }

    for (i = 0; i < v8; ++i)
    {
      v10 = **(*(this + 2) + 32) + 32 * v7 + 32 * i;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      v19 = *(this + 12) + 8 * v12;
      v20 = v11;
      v21 = 1;
      std::valarray<unsigned long>::valarray(&v22, &v19);
      v19 = *a2;
      std::valarray<unsigned long>::valarray(&v20, &v22);
      std::valarray<double>::valarray(&__p, &v19);
      v13 = __p;
      if (v11)
      {
        v14 = (*a2 + 8 * v12);
        v15 = __p;
        do
        {
          v16 = *v15++;
          *v14 = v16 + *v14;
          ++v14;
          --v11;
        }

        while (v11);
      }

      else if (!__p)
      {
        goto LABEL_13;
      }

      if (v18 != v13)
      {
        v18 += (v13 - v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(v13);
      __p = 0;
      v18 = 0;
LABEL_13:
      if (v20)
      {
        if (v21 != v20)
        {
          v21 += (v20 - v21 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(v20);
      }

      if (v22)
      {
        if (v23 != v22)
        {
          v23 += (v22 - v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(v22);
      }

      v5 = **(this + 14);
      v8 = *(v5 + 8 * v6 - 8);
    }

    v4 = **(this + 2);
LABEL_23:
    v7 += v8;
    ++v6;
  }

  while (v6 < v4);
}

void sub_1B5210418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::valarray<unsigned long>::~valarray[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

double hmaxent::model::log_prob_context(hmaxent::model *this, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  result = -*(*hmaxent::model::lognormconst(this) + 8 * a2);
  v7 = *(this + 2);
  v8 = **(v7 + 32);
  if (v8)
  {
    v9 = **(v7 + 24);
    while (1)
    {
      v10 = v8 + 32 * v4;
      v11 = *(v10 + 16);
      v12 = v11 + *(v10 + 24) - 1;
      if (v11 <= v12)
      {
        v14 = *(v10 + 16);
        do
        {
          v11 = (v14 + v12) >> 1;
          v13 = *(v9 + 8 * v11);
          if (v13 >= a3)
          {
            if (v13 <= a3)
            {
              break;
            }

            v12 = v11 - 1;
          }

          else
          {
            v14 = v11 + 1;
          }
        }

        while (v14 <= v12);
      }

      else
      {
        v13 = *(v9 + 8 * v11);
      }

      if (v13 == a3)
      {
        result = result + *(**(this + 15) + 8 * v11);
      }

      if (!*v10)
      {
        break;
      }

      v4 = *(v10 + 8);
    }
  }

  return result;
}

void *std::valarray<unsigned long>::valarray(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void *std::valarray<double>::valarray(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void std::valarray<double>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

void *std::valarray<double>::valarray(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

double std::__val_expr<std::_UnaryOp<std::__exp_expr<double>,std::__val_expr<std::_BinaryOp<std::minus<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::sum[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  v4 = *(v2 + 8) - *v2;
  v5 = v4 >> 3;
  if (v4)
  {
    v6 = exp(*v3 - **(a1 + 24));
  }

  else
  {
    v6 = 0.0;
  }

  if (v5 >= 2)
  {
    v7 = **(a1 + 24);
    v8 = v5 - 1;
    v9 = v3 + 1;
    do
    {
      v10 = *v9++;
      v6 = v6 + exp(v10 - v7);
      --v8;
    }

    while (v8);
  }

  return v6;
}

void *std::valarray<unsigned long>::valarray(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

uint64_t quasar::InverseTextNormalizer::char32Converter(quasar::InverseTextNormalizer *this)
{
  {
    operator new();
  }

  return quasar::InverseTextNormalizer::char32Converter(void)::converter;
}

void sub_1B52109D0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1032C4095874D8CLL);
  _Unwind_Resume(a1);
}

uint64_t quasar::VocabId::getWordId(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {

    return kaldi::quasar::Vocab::GetWordId(v4, a2);
  }

  else
  {
    if (!*(a1 + 16))
    {
      return 0;
    }

    marisa::Agent::Agent(v11);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    marisa::Agent::set_query(v6, v7);
    if (marisa::Trie::lookup(*(a1 + 16), v11))
    {
      v8 = v12;
    }

    else
    {
      v8 = *(a1 + 80);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      if ((v8 & 0x80000000) != 0 || v9 <= v8)
      {
        memset(v10, 0, sizeof(v10));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "wordId out of bound in marisaLabelMapping", 41);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
      }

      v8 = *(*(a1 + 56) + 4 * v8);
    }

    marisa::Agent::~Agent(v11);
    return v8;
  }
}

uint64_t quasar::LabelTransformer::doInference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v23 = 0u;
  v22 = &unk_1F2D0EE38;
  v25 = 0;
  (*(**(a1 + 56) + 152))(*(a1 + 56));
  v8 = *(a1 + 72);
  if (a3 < 1)
  {
    if (v8)
    {
      (*(**(a1 + 56) + 96))(*(a1 + 56), a2, &v22, 0);
      goto LABEL_17;
    }
  }

  else if (v8)
  {
    kaldi::nnet1::Nnet::Feedforward((v8 + 8), a2, (a1 + 128), a3, 0);
    kaldi::nnet1::Nnet::Feedforward((*(a1 + 72) + 8), a1 + 128, &v22, ((*(*(a1 + 72) + 16) - *(*(a1 + 72) + 8)) >> 3) - a3, a3);
    goto LABEL_17;
  }

  v9 = *kaldi::quasar::CEInferenceNet::GetComputeEngine(*(a1 + 88));
  v11 = *(a2 + 16);
  v10 = *(a2 + 20);
  v31 = 1;
  v32 = v10;
  v33 = v11;
  v27 = 0;
  v28 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v31, &v34, 3uLL);
  (*(*v9 + 64))(&v21, v9, &__p);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (*(a2 + 20) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(a2 + 8) + 4 * *(a2 + 24) * v12;
      v14 = *(a2 + 16);
      v15 = *(a2 + 32);
      __p = &unk_1F2CFCA48;
      v27 = v13;
      v29 = v15;
      v28 = v14;
      (*(*v21 + 88))(v21);
      ++v12;
    }

    while (v12 < *(a2 + 20));
  }

  v20 = 0;
  if (a4)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v30 = &v31;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(&v31, 1uLL);
  }

  kaldi::quasar::CEInferenceNet::Feedforward(*(a1 + 88), &v21, &v20, 0);
  ComputeEngine = kaldi::quasar::CEInferenceNet::GetComputeEngine(*(a1 + 88));
  quasar::squeezeCEBufferItfToCuMatrix(ComputeEngine, &v20, *(a2 + 20), &v22);
  v17 = v20;
  v20 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v21;
  v21 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

LABEL_17:
  kaldi::CuMatrixBase<float>::FindRowMaxId(&v22, (a1 + 104));
  if (*(a1 + 208))
  {
    quasar::buildApplyLabelMasks(&v22, (a1 + 104), (a1 + 184), (a1 + 224));
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v22);
}

void sub_1B5211DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = v22 - 96;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&a11);
  _Unwind_Resume(a1);
}

uint64_t quasar::squeezeCEBufferItfToCuMatrix(uint64_t *a1, void *a2, int a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v17[0] = (*(**a2 + 184))(*a2, 1);
  v17[1] = (*(**a2 + 184))(*a2, 2);
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, v17, &v18, 2uLL);
  (*(*v7 + 64))(&v16, v7, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (a3 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (*(**a2 + 184))(*a2, 2);
      v11 = (*(**a2 + 184))(*a2, 2);
      (*(*v16 + 72))(v16, *a2, (v10 * v8), (v11 + v10 * v8), v9);
      v9 = (v11 + v9);
      ++v8;
    }

    while (a3 != v8);
  }

  (*(*v16 + 32))(v16, a4);
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1B5212108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(exception_object);
}

void quasar::buildApplyLabelMasks(uint64_t a1, int *a2, void *a3, uint64_t *a4)
{
  std::vector<BOOL>::resize(a4, *a2, 0);
  if (*(a1 + 20) >= 1)
  {
    v8 = 0;
    do
    {
      v14 = *(*(a2 + 1) + 4 * v8);
      v9 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a3, &v14);
      v10 = v8 >> 3;
      if (v9 && *(*(a1 + 8) + 4 * *(a1 + 24) * v8 + 4 * *(*(a2 + 1) + 4 * v8)) < *(v9 + 5))
      {
        v11 = *a4;
        v12 = v10 & 0x1FFFFFFFFFFFFFF8;
        v13 = *(*a4 + v12) & ~(1 << v8);
      }

      else
      {
        v11 = *a4;
        v12 = v10 & 0x1FFFFFFFFFFFFFF8;
        v13 = *(*a4 + v12) | (1 << v8);
      }

      *(v11 + v12) = v13;
      ++v8;
    }

    while (v8 < *(a1 + 20));
  }
}

void quasar::InverseTextNormalizer::~InverseTextNormalizer(quasar::InverseTextNormalizer *this)
{
  *this = &unk_1F2D05C10;
  ucasemap_close();
  std::unique_ptr<quasar::PunctuationTransformer>::reset[abi:ne200100](this + 97, 0);
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(this + 744, *(this + 94));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 704);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 664);
  std::unique_ptr<quasar::LabelTransformer>::reset[abi:ne200100](this + 82, 0);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 600);
  v2 = *(this + 74);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 544);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 504);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 464);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 424);
  v4 = (this + 400);
  std::vector<quasar::InverseTextNormalizer::RegexFeatInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(this + 376, *(this + 48));
  v3 = *(this + 46);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  quasar::InverseTextNormalizer::~InverseTextNormalizer(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::InverseTextNormalizer::InitPunctuationTransformer(quasar::InverseTextNormalizer *this, const quasar::PTree *a2, quasar::SystemConfig *a3)
{
  if (a2)
  {
    v3 = kaldi::quasar::ProcessName(this);
    if ((*(v3 + 23) & 0x80000000) == 0 || *(v3 + 8) != 50 || memcmp(*v3, "com.apple.SpeechRecognitionCore.speechrecognitiond", 0x32uLL))
    {
      operator new();
    }

    if (quasar::gLogLevel >= 4)
    {
      memset(v4, 0, sizeof(v4));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Disabling punctuation model loading for speechrecognitiond", 58);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v4);
    }
  }
}

void quasar::EntityTransformer::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Ptree = quasar::SystemConfig::getPtree(a2, a3);
  v4 = Ptree;
  v7 = *Ptree;
  if (*(Ptree + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(Ptree + 8), *(Ptree + 16));
  }

  else
  {
    v5 = *(Ptree + 8);
    v8.__r_.__value_.__r.__words[2] = *(Ptree + 24);
    *&v8.__r_.__value_.__l.__data_ = v5;
  }

  memset(v9, 0, sizeof(v9));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v9, *(v4 + 32), *(v4 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v4 + 40) - *(v4 + 32)) >> 3));
  v10 = *(v4 + 56);
  std::string::basic_string[abi:ne200100]<0>(__p, "entity-tsv-file");
  quasar::PTree::getString(&v7, __p);
}

void sub_1B5213188(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  v4 = &v3;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v5, v5[1]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v6);
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  quasar::PTree::~PTree((v1 - 160));
  _Unwind_Resume(a1);
}

void quasar::VocabId::getPaddingWord(quasar::VocabId *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<PAD>");
  }

  else if (*(this + 111) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 11), *(this + 12));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 88);
    a2->__r_.__value_.__r.__words[2] = *(this + 13);
  }
}

void quasar::VocabId::getOovWord(quasar::VocabId *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    kaldi::quasar::Vocab::OOvWord(*this, a2);
  }

  else if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 14), *(this + 15));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 7);
    a2->__r_.__value_.__r.__words[2] = *(this + 16);
  }
}

__int128 *quasar::InverseTextNormalizer::getCompoundWord(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4)
{
  v6 = **(a1 + 584);
  if (*(a4 + 23) < 0)
  {
    **a4 = 0;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 23) = 0;
  }

  v7 = *a3;
  if (*a3 != *(a2 + 8))
  {
    v8 = v7 + 14;
    v9 = *a3;
    do
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v16.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v16.__r_.__value_.__l.__data_ = v10;
      }

      v11 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v6, &v16.__r_.__value_.__l.__data_);
      if (v11)
      {
        v6 = v11[5];
      }

      else
      {
        v6 = 0;
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (!v6)
      {
        break;
      }

      if (v6[63] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 5), *(v6 + 6));
      }

      else
      {
        __p = *(v6 + 40);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::operator=(a4, &__p);
        v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v7 = v8;
      }

      if (v13 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 += 14;
      v8 += 14;
    }

    while (v9 != *(a2 + 8));
  }

  return v7;
}

void sub_1B5213424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::InverseTextNormalizer::RegexFeatInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::InverseTextNormalizer::RegexFeatInfo>::__emplace_back_slow_path<quasar::InverseTextNormalizer::RegexFeatInfo>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void quasar::InverseTextNormalizer::RegexFeatInfo::~RegexFeatInfo(quasar::InverseTextNormalizer::RegexFeatInfo *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t quasar::LabelTransformer::str2LinearFst(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = (*(*a2 + 200))(a2);
  (*(*a2 + 176))(a2, v6);
  if (a3 < 1)
  {
    v11 = v6;
  }

  else
  {
    v7 = 0;
    v8 = a3;
    do
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      v10 = *(v9 + v7);
      v11 = (*(*a2 + 200))(a2);
      v13[0] = v10;
      v13[1] = v10;
      v13[2] = 1065353216;
      v13[3] = v11;
      (*(*a2 + 208))(a2, v6, v13);
      ++v7;
      v6 = v11;
    }

    while (v8 != v7);
  }

  return (*(*a2 + 184))(a2, v11, 0.0);
}

uint64_t quasar::LabelTransformer::addAcceptorArcs(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a1[23];
  if (v6 < 0)
  {
    v6 = *(a1 + 1);
    if (!v6)
    {
      return a2;
    }

    v5 = *a1;
  }

  else if (!a1[23])
  {
    return a2;
  }

  do
  {
    v7 = *v5++;
    v8 = (*(*a3 + 200))(a3);
    v10[0] = v7;
    v10[1] = v7;
    v10[2] = 1065353216;
    v10[3] = v8;
    (*(*a3 + 208))(a3, v4, v10);
    v4 = v8;
    --v6;
  }

  while (v6);
  return v8;
}

uint64_t quasar::LabelTransformer::addAcceptorArc(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v6 = (*(*a3 + 200))(a3);
    v8[0] = a2;
    v8[1] = a2;
    v8[2] = 1065353216;
    v8[3] = v6;
    (*(*a3 + 208))(a3, a1, v8);
    return v6;
  }

  return a1;
}

uint64_t quasar::InverseTextNormalizer::getNumTokens(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 24))(a2);
  LODWORD(v7) = (*(*a2 + 32))(a2, v4);
  v11 = 2139095040;
  v5 = 0;
  if (*&v7 == INFINITY)
  {
    while (1)
    {
      v10 = 0;
      (*(*a2 + 136))(a2, v4, &v7);
      if (!v7)
      {
        break;
      }

      if (*(*(*v7 + 32))(v7) == *(a1 + 12))
      {
        v5 = (v5 + 1);
      }

      else
      {
        v5 = v5;
      }

      if (!v7)
      {
        goto LABEL_12;
      }

      v4 = *((*(*v7 + 32))() + 12);
      if (!v7)
      {
        goto LABEL_13;
      }

      (*(*v7 + 8))(v7);
LABEL_15:
      LODWORD(v7) = (*(*a2 + 32))(a2, v4);
      v11 = 2139095040;
      if (*&v7 != INFINITY)
      {
        return v5;
      }
    }

    if (*(v8 + 16 * v10) == *(a1 + 12))
    {
      v5 = (v5 + 1);
    }

    else
    {
      v5 = v5;
    }

LABEL_12:
    v4 = *(v8 + 16 * v10 + 12);
LABEL_13:
    if (v9)
    {
      --*v9;
    }

    goto LABEL_15;
  }

  return v5;
}

void sub_1B5213A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    quasar::InverseTextNormalizer::getNumTokens((v9 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::LabelTransformer::concatLinearFsts(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = (*(*a2 + 160))(a2);
  if (result)
  {
    (*(*a3 + 184))(a3, *a4, INFINITY);
    v8 = (*(*a2 + 24))(a2);
    LODWORD(v11) = (*(*a2 + 32))(a2, v8);
    v15 = 2139095040;
    if (*&v11 == INFINITY)
    {
      while (1)
      {
        v14 = 0;
        (*(*a2 + 136))(a2, v8, &v11);
        v9 = v11 ? (*(*v11 + 32))(v11) : v12 + 16 * v14;
        v10 = *(v9 + 4);
        if (v10)
        {
          *a4 = quasar::LabelTransformer::addAcceptorArc(*a4, v10, a3);
        }

        if (!v11)
        {
          break;
        }

        v8 = *((*(*v11 + 32))(v11) + 12);
        if (!v11)
        {
          goto LABEL_12;
        }

        (*(*v11 + 8))(v11);
LABEL_14:
        LODWORD(v11) = (*(*a2 + 32))(a2, v8);
        v15 = 2139095040;
        if (*&v11 != INFINITY)
        {
          return (*(*a3 + 184))(a3, *a4, 0.0);
        }
      }

      v8 = *(v12 + 16 * v14 + 12);
LABEL_12:
      if (v13)
      {
        --*v13;
      }

      goto LABEL_14;
    }

    return (*(*a3 + 184))(a3, *a4, 0.0);
  }

  return result;
}

void sub_1B5213CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    quasar::InverseTextNormalizer::getNumTokens((v9 + 24));
  }

  _Unwind_Resume(a1);
}

void quasar::LabelTransformer::applyLabel(uint64_t a1, void *a2, int a3)
{
  v3 = a3;
  if (a2[1] != *a2)
  {
    fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
  }
}

uint64_t quasar::LabelTransformer::linearFst2Str@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  if ((*(*a1 + 160))(a1))
  {
    v6 = (*(*a1 + 24))(a1);
    while (1)
    {
      LODWORD(v11) = (*(*a1 + 32))(a1, v6);
      v20 = 2139095040;
      if (*&v11 != INFINITY)
      {
        std::stringbuf::str();
        goto LABEL_23;
      }

      v14 = 0;
      (*(*a1 + 136))(a1, v6, &v11);
      if (v11)
      {
        v7 = (*(*v11 + 32))(v11);
      }

      else
      {
        v7 = v12 + 16 * v14;
      }

      v8 = *(v7 + 4);
      if (v8)
      {
        if (v8 != 95 || a2 == 0)
        {
          LOBYTE(v20) = *(v7 + 4);
        }

        else
        {
          LOBYTE(v20) = 32;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, &v20, 1);
      }

      if (!v11)
      {
        break;
      }

      v6 = *((*(*v11 + 32))(v11) + 12);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
LABEL_19:
        if (v13)
        {
          --*v13;
        }
      }
    }

    v6 = *(v12 + 16 * v14 + 12);
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(a3, "");
LABEL_23:
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v19);
}

void sub_1B52143FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *quasar::EntityTransformer::applyEntityLabel(uint64_t a1, void *a2, int a3)
{
  v11 = a3;
  v10 = a2[1];
  ++*(v10 + 56);
  v9 = &unk_1F2D04A58;
  v12 = &v11;
  v4 = std::__tree<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 80, &v11);
  v5 = v4[5];
  for (i = v4[6]; v5 != i; v5 += 2)
  {
    v7 = *v5;
    LOBYTE(v12) = 1;
    HIDWORD(v12) = 0;
    fst::Compose<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2, v7, a2, &v12);
  }

  if (!(*(*a2 + 160))(a2))
  {
    fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetImpl(a2, v10, 0);
  }

  return fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&v9);
}

uint64_t fst::Compose<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  if (v4 <= 1)
  {
    if (!v4)
    {
      fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase(result, a2);
    }

    if (v4 == 1)
    {
      fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::NullComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
      case 3:
        fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::AltSequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
      case 4:
        fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::MatchComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }
  }

  if (*a4 == 1)
  {
    fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a3);
  }

  return result;
}

void quasar::LabelTransformer::applyLabel(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
  }
}

const void **quasar::InverseTextNormalizer::setGuardedTokenLabels(const void **result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v6 + 68, (v3 + 224 * v7));
      if (result)
      {
        v9 = result;
        v10 = result + 5;
        v3 = *a2;
        v11 = (*(a3 + 8) + 4 * v8 + 4);
        for (i = *a2 + 224 * v8; ; i += 224)
        {
          v13 = *(i + 23);
          if (v13 >= 0)
          {
            v14 = *(i + 23);
          }

          else
          {
            v14 = *(i + 8);
          }

          v15 = *(v9 + 63);
          v16 = v15;
          if (v15 < 0)
          {
            v15 = v9[6];
          }

          if (v14 == v15)
          {
            v17 = v13 >= 0 ? i : *i;
            v18 = v16 >= 0 ? v10 : *v10;
            result = memcmp(v17, v18, v14);
            if (!result)
            {
              break;
            }
          }

          *v11++ = *v6[82];
          ++v8;
        }
      }

      else
      {
        ++v8;
        v3 = *a2;
      }

      v7 = v8;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - v3) >> 5) > v8);
  }

  return result;
}

void quasar::InverseTextNormalizer::applyOverrides(uint64_t a1, const void ***a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v36, 0, 272);
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Applying ", 9);
    v7 = MEMORY[0x1B8C84C30](v6, 0x8E38E38E38E38E39 * (a2[1] - *a2));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " overrides", 10);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v36);
  }

  v9 = *a2;
  v8 = a2[1];
  v31 = v8;
  while (v9 != v8)
  {
    v11 = *a3;
    v10 = a3[1];
    if (v10 != *a3)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = v13;
        v16 = v11 + 224 * v12;
        v17 = *(v9 + 23);
        v18 = v17 >= 0 ? *(v9 + 23) : v9[1];
        v19 = *(v16 + 23);
        v20 = v19 >= 0 ? *(v16 + 23) : *(v16 + 8);
        if (v18 == v20)
        {
          if (v17 >= 0)
          {
            v21 = v9;
          }

          else
          {
            v21 = *v9;
          }

          if (v19 >= 0)
          {
            v22 = (v11 + 224 * v12);
          }

          else
          {
            v22 = *v16;
          }

          ++v13;
          if (!memcmp(v21, v22, v18))
          {
            v14 = v15 + 1;
          }
        }

        else
        {
          ++v13;
        }

        v23 = *(v9 + 47);
        v24 = v23;
        if (v23 < 0)
        {
          v23 = v9[4];
        }

        if (v23 == v20)
        {
          v25 = v24 >= 0 ? v9 + 3 : v9[3];
          v26 = v19 >= 0 ? (v11 + 224 * v12) : *v16;
          if (!memcmp(v25, v26, v20))
          {
            break;
          }
        }

        if (v14 && v15 >= v14)
        {
          if (v19 < 0)
          {
            **v16 = 0;
            *(v16 + 8) = 0;
          }

          else
          {
            *v16 = 0;
            *(v16 + 23) = 0;
          }

          v27 = *a4 + 24 * v12;
          if (*(v27 + 23) < 0)
          {
            **v27 = 0;
            *(v27 + 8) = 0;
          }

          else
          {
            *v27 = 0;
            *(v27 + 23) = 0;
          }

          *(*(a5 + 8) + 4 * v12 + 4) = **(a1 + 656);
          v11 = *a3;
          v10 = a3[1];
        }

        v12 = v13;
        if (0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 5) <= v13)
        {
          goto LABEL_48;
        }
      }

      if (v15 > v14 && v14 && v15 != 1)
      {
        v28 = 224 * v14;
        std::string::operator=((v11 + v28), v9 + 2);
        v29 = *(*a3 + 224 * (v15 - 1) + 32);
        v30 = *a3 + v28;
        *(v30 + 32) = v29;
        *(v30 + 36) = v29;
        std::string::operator=((*a4 + 24 * v14), v9 + 2);
      }
    }

LABEL_48:
    v9 += 9;
    v8 = v31;
  }
}

void sub_1B5215038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::EntityTransformer::transformEntity(uint64_t a1, void *a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  v41[0] = a3;
  v11 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1, v41);
  v12 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 40), v41);
  v13 = v12;
  if (!v11)
  {
    v14 = 0xFFFFFFFFLL;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  v14 = *(v11 + 5);
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = *(v12 + 5);
LABEL_6:
  v16 = quasar::gLogLevel;
  if (v11 && quasar::gLogLevel >= 5)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
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
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "start entity <", 14);
    v18 = MEMORY[0x1B8C84C00](v17, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ">", 1);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v24);
    v16 = quasar::gLogLevel;
  }

  if (v13 && v16 >= 5)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
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
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "end entity <", 12);
    v20 = MEMORY[0x1B8C84C00](v19, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ">", 1);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v24);
  }

  v21 = *(a1 + 104);
  if (v21 == 1)
  {
    if (v11 || !v13)
    {
      if (v11)
      {
        *(a1 + 104) = 2;
        if (quasar::gLogLevel >= 4)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
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
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Encountered orphan start entity ", 32);
          MEMORY[0x1B8C84C00](v22, *(a1 + 108));
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v24);
        }
      }
    }

    else if (v15 == *(a1 + 108))
    {
      quasar::EntityTransformer::applyEntityLabel(a1, a2, v41[0]);
      *(a1 + 104) = 0;
      *a6 = a4;
    }
  }

  else
  {
    if (v21)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
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
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v24);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v24, "This cannot happen");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v24);
    }

    *a5 = a4;
    *a6 = a4;
    if (v11 && v13 && v14 == v15)
    {
      quasar::EntityTransformer::applyEntityLabel(a1, a2, v41[0]);
    }

    else if (v11)
    {
      *(a1 + 104) = 1;
      *(a1 + 108) = v14;
    }
  }

  return *(a1 + 104);
}

void quasar::LabelTransformer::applyLabels(uint64_t a1, uint64_t *a2, uint64_t a3, std::string *a4)
{
  v6 = *a2;
  v5 = a2[1];
  std::string::basic_string[abi:ne200100]<0>(&v24, "");
  std::string::basic_string[abi:ne200100]<0>(&__str, "");
  std::string::basic_string[abi:ne200100]<0>(&v21, "");
  memset(v20, 0, sizeof(v20));
  std::string::basic_string[abi:ne200100]<0>(&v18, "");
  quasar::Token::Token(&v7, &v24, 0, 0, 0, 0, 0, &__str, 0.0, &v21, v20, 0, &v18, 0, 0, 0);
  std::vector<quasar::Token>::resize(a4, 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3), &v7);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v26[0] = &v13;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v26);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v26[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v26);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  *&v18 = v20;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B5215ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v7 - 184));
  _Unwind_Resume(a1);
}

void std::vector<quasar::Token>::resize(std::string *a1, unint64_t a2, quasar::Token *a3)
{
  size = a1->__r_.__value_.__l.__size_;
  v5 = 0x6DB6DB6DB6DB6DB7 * ((size - a1->__r_.__value_.__r.__words[0]) >> 5);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<quasar::Token>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = a1->__r_.__value_.__r.__words[0] + 224 * a2;
    while (size != v8)
    {
      quasar::Token::~Token((size - 224));
    }

    a1->__r_.__value_.__l.__size_ = v8;
  }
}

uint64_t quasar::InverseTextNormalizer::getNextToken(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4, uint64_t a5, _BYTE *a6, _DWORD *a7)
{
  MEMORY[0x1B8C84820](a4, "");
  MEMORY[0x1B8C84820](a5, "");
  v14 = 0;
  *a6 = 0;
  *a7 = -1;
  do
  {
    LODWORD(__p[0]) = (*(*a2 + 32))(a2, a3);
    LODWORD(v39) = 2139095040;
    if (*__p != INFINITY)
    {
      break;
    }

    v42 = 0;
    (*(*a2 + 136))(a2, a3, &v39);
    if (v39)
    {
      v15 = (*(*v39 + 32))(v39);
    }

    else
    {
      v15 = (v40 + 16 * v42);
    }

    v16 = *v15;
    if (!v14)
    {
      if (v16 != *(a1 + 12))
      {
        v37 = 0u;
        v38 = 0u;
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
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Missing TokenBoundary label", 27);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }

      v14 = 1;
      goto LABEL_20;
    }

    if ((v14 & 0xFFFFFFFE) != 2 || v16 != *(a1 + 12))
    {
      if (v14 == 3)
      {
        std::string::push_back(a5, v16);
      }

      else
      {
        if (v14 != 2)
        {
          *a7 = v16;
          goto LABEL_17;
        }

        if (v16 != 92)
        {
          std::string::push_back(a4, v16);
LABEL_17:
          v14 = 2;
LABEL_20:
          if (v39)
          {
            v18 = (*(*v39 + 32))(v39);
          }

          else
          {
            v18 = v40 + 16 * v42;
          }

          a3 = *(v18 + 12);
          v17 = 1;
          goto LABEL_24;
        }
      }

      v14 = 3;
      goto LABEL_20;
    }

    v17 = 0;
LABEL_24:
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    else if (v41)
    {
      --*v41;
    }
  }

  while ((v17 & 1) != 0);
  v19 = *(a5 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a5 + 8);
  }

  if (v19)
  {
    std::operator+<char>();
    v20 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 504), __p);
    if (SBYTE7(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      *a6 = 1;
    }
  }

  return a3;
}

void sub_1B521600C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    v4 = *(v1 - 104);
    if (v4)
    {
      --*v4;
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::InverseTextNormalizer::startsWithCapitalLetter(uint64_t a1)
{
  v2 = quasar::InverseTextNormalizer::char32Converter(a1);
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

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(v2, v4, (v4 + v5), __p);
  if (v10 < 0)
  {
    if (!__p[1])
    {
      goto LABEL_14;
    }

    v6 = __p[0];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v6 = __p;
  }

  if (u_isupper(*v6))
  {
    v7 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
LABEL_15:
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1B5216100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::InverseTextNormalizer::capitalizeFirstLetter(uint64_t a1)
{
  v2 = quasar::CommandTransform::char32Converter(a1);
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

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(v2, v4, (v4 + v5), &__p);
  if (v15 < 0)
  {
    if (!v14)
    {
      goto LABEL_15;
    }

    p_p = __p;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_15;
    }

    p_p = &__p;
  }

  v6 = MEMORY[0x1B8C870C0](*p_p);
  v8 = &__p;
  if ((v15 & 0x80u) != 0)
  {
    v8 = __p;
  }

  *v8 = v6;
LABEL_15:
  v9 = quasar::InverseTextNormalizer::char32Converter(v6);
  v10 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  if ((v15 & 0x80u) != 0)
  {
    v10 = v14;
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(v9, v11, (v11 + 4 * v10), &v12);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  if (v15 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B5216208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::InverseTextNormalizer::getFeatures(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = a5;
  v11 = *(a1 + 400);
  v12 = *(a1 + 408);
  if (v11 == v12)
  {
    if (quasar::InverseTextNormalizer::startsWithCapitalLetter(a2))
    {
      v8 = a5 + 1;
      *(*(a6 + 8) + 4 * *(a6 + 24) * a4 + 4 * a5) = 1065353216;
    }
  }

  else
  {
    do
    {
      if (quasar::InverseTextNormalizer::RegexFeatInfo::isMatch(v11, a2, a3))
      {
        if (quasar::gLogLevel >= 5)
        {
          memset(v37, 0, 272);
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Regex match for ", 16);
          v15 = *(a2 + 23);
          if (v15 >= 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = *a2;
          }

          if (v15 >= 0)
          {
            v17 = *(a2 + 23);
          }

          else
          {
            v17 = *(a2 + 8);
          }

          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "(", 1);
          v20 = *(a3 + 23);
          if (v20 >= 0)
          {
            v21 = a3;
          }

          else
          {
            v21 = *a3;
          }

          if (v20 >= 0)
          {
            v22 = *(a3 + 23);
          }

          else
          {
            v22 = *(a3 + 8);
          }

          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ") with label ", 13);
          MEMORY[0x1B8C84C00](v24, *v11);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v37);
        }

        *(*(a6 + 8) + 4 * *(a6 + 24) * a4 + 4 * v8++) = *v11;
      }

      v11 += 10;
    }

    while (v11 != v12);
  }

  v25 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a7, a2);
  if (a7 + 8 == v25)
  {
    v28 = a5;
  }

  else
  {
    v26 = *(v25 + 56);
    v27 = *(v25 + 64);
    v28 = a5;
    if (v26 != v27)
    {
      v29 = *(a6 + 8) + 4 * *(a6 + 24) * a4;
      v30 = v8;
      do
      {
        v31 = *v26++;
        v8 = v30 + 1;
        *(v29 + 4 * v30++) = v31;
      }

      while (v26 != v27);
    }
  }

  if (v8 == v28)
  {
    v8 = v28 + 1;
    v32 = *(a6 + 16);
    v33 = *(a6 + 8);
    v34 = *(a6 + 24) * a4;
    *(v33 + 4 * v34 + 4 * v28) = 0;
  }

  else
  {
    v32 = *(a6 + 16);
    v33 = *(a6 + 8);
    v34 = *(a6 + 24) * a4;
  }

  memset_pattern16((v33 + 4 * (v34 + v8)), &unk_1B5AE5CD0, 4 * (v32 + ~v8) + 4);
}

void sub_1B5216490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarDebugMessage::~QuasarDebugMessage(va);
  _Unwind_Resume(a1);
}

BOOL quasar::InverseTextNormalizer::RegexFeatInfo::isMatch(uint64_t a1, const char *a2, const char *a3)
{
  result = quasar::URegularExpressionWrapper::isMatch(*(a1 + 8), a2);
  if (result)
  {
    v6 = *(a1 + 24);

    return quasar::URegularExpressionWrapper::isMatch(v6, a3);
  }

  return result;
}

uint64_t quasar::InverseTextNormalizer::doPreProcessing@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a4[1] = *a4;
  (*(*a3 + 224))(a3);
  v10 = (*(*a3 + 200))(a3);
  (*(*a3 + 176))(a3, v10);
  v11 = *(a2 + 8);
  v37 = *a2;
  v12 = v37;
  if (v37 != v11)
  {
    v13 = 1;
    do
    {
      v14 = quasar::LabelTransformer::addAcceptorArc(v10, *(a1 + 12), a3);
      v15 = quasar::LabelTransformer::addAcceptorArc(v14, v13, a3);
      memset(&__str, 0, sizeof(__str));
      CompoundWord = quasar::InverseTextNormalizer::getCompoundWord(a1, a2, &v37, &__str);
      if (v12 == CompoundWord)
      {
        std::string::operator=(&__str, v12);
        std::vector<quasar::Token>::push_back[abi:ne200100](a5, v12);
        v17 = -1227133513 * ((v12 - *a2) >> 5);
        *v22 = v17 | (v17 << 32);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](a4, v22);
        v12 = (CompoundWord + 14);
        CompoundWord += 14;
      }

      else
      {
        quasar::InverseTextNormalizer::getMergedToken(v12, CompoundWord, v22);
        std::string::operator=(v22, &__str);
        std::vector<quasar::Token>::push_back[abi:ne200100](a5, v22);
        v38[0] = (((0xB6DB6DB700000000 * ((CompoundWord - *a2) >> 5)) | (-1227133513 * ((v12 - *a2) >> 5))) - 0x100000000);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](a4, v38);
        if (SBYTE7(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v29) < 0)
        {
          operator delete(v28[0]);
        }

        v38[0] = v27 + 1;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v38);
        if (SBYTE7(v27[0]) < 0)
        {
          operator delete(v26[0]);
        }

        v38[0] = v25 + 1;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v38);
        if (SBYTE7(v25[0]) < 0)
        {
          operator delete(v24[0]);
        }

        if ((v22[23] & 0x80000000) != 0)
        {
          operator delete(*v22);
        }

        v12 = CompoundWord;
      }

      *(a5[1] - 180) = 0;
      v37 = CompoundWord;
      if (quasar::gLogLevel >= 6)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *__p = 0u;
        v31 = 0u;
        *v28 = 0u;
        v29 = 0u;
        memset(v27, 0, sizeof(v27));
        *v26 = 0u;
        *v24 = 0u;
        memset(v25, 0, sizeof(v25));
        v23 = 0u;
        memset(v22, 0, sizeof(v22));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Preprocessed token: ", 20);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, p_str, size);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(v22);
      }

      v10 = quasar::LabelTransformer::addAcceptorArcs(&__str, v15, a3);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    while (v12 != *(a2 + 8));
  }

  return (*(*a3 + 184))(a3, v10, 0.0);
}

void sub_1B521686C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::InverseTextNormalizer::getMergedToken(quasar::Token *a1@<X0>, quasar::Token *a2@<X1>, std::string *a3@<X8>)
{
  v5 = a1 + 224;
  if ((a1 + 224) == a2)
  {

    quasar::Token::Token(a3, a1);
    return;
  }

  v7 = *(a1 + 10);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(a1 + 6), *(a1 + 7));
  }

  else
  {
    v53 = *(a1 + 2);
  }

  v29 = a3;
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(a1 + 12), *(a1 + 13));
  }

  else
  {
    v52 = *(a1 + 4);
  }

  v8 = *(a1 + 42);
  v9 = (v5 + 204);
  v51 = *(a1 + 204);
  do
  {
    v10 = v8;
    v11 = v9[-9].i8[11];
    if (v11 < 0)
    {
      v11 = *(&v9[-10].i64[1] + 4);
    }

    v12 = v9[-11].f32[3];
    if (v11)
    {
      std::operator+<char>();
      v13 = (SBYTE7(v35) & 0x80u) == 0 ? __p : __p[0];
      v14 = (SBYTE7(v35) & 0x80u) == 0 ? BYTE7(v35) : __p[1];
      std::string::append(&v53, v13, v14);
      if (SBYTE7(v35) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((v9[-6].i8[11] & 0x8000000000000000) != 0)
    {
      if (!*(&v9[-7].i64[1] + 4))
      {
        goto LABEL_35;
      }
    }

    else if (!v9[-6].i8[11])
    {
      goto LABEL_35;
    }

    std::operator+<char>();
    if ((SBYTE7(v35) & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((SBYTE7(v35) & 0x80u) == 0)
    {
      v16 = BYTE7(v35);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(&v52, v15, v16);
    if (SBYTE7(v35) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_35:
    quasar::Token::DecodingSignals::operator+=(&v51, v9);
    v8 = v9[-3].u32[3];
    if (v10 == v8)
    {
      v8 = v10;
    }

    else if (v10 != 4 && quasar::gLogLevel >= 2)
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
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Merged token span covers multiple LME types (", 45);
      v18 = quasar::operator<<(v17, v10);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " and ", 5);
      v20 = quasar::operator<<(v19, v9[-3].u32[3]);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "); using ", 9);
      v22 = quasar::operator<<(v21, v9[-3].u32[3]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".", 1);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
      v8 = v9[-3].u32[3];
    }

    v7 = v7 + v12;
    v23 = &v9[1].i32[1];
    v9 += 14;
  }

  while (v23 != a2);
  std::string::basic_string[abi:ne200100]<0>(v32, "");
  v24 = *(a1 + 7);
  v25 = *(a2 - 48);
  v26 = *(a2 - 47);
  v27 = *(a2 - 180);
  v28 = *(a1 + 45);
  __p[0] = 0;
  __p[1] = 0;
  *&v35 = 0;
  std::string::basic_string[abi:ne200100]<0>(v30, "");
  quasar::Token::Token(v29, v32, v24, v25, v26, v27, v28, &v53, v7 / (0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 5)), &v52, __p, 0, v30, 0, 0, 0);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v30[0] = __p;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v30);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  LODWORD(v29[7].__r_.__value_.__l.__data_) = v8;
  *(&v29[8].__r_.__value_.__r.__words[1] + 4) = v51;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }
}

void sub_1B5216C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::InverseTextNormalizer::checkFunction(unsigned int **a1, int a2)
{
  std::vector<BOOL>::vector(&__p, a2);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_13:
    v12 = 1;
  }

  else
  {
    v6 = __p;
LABEL_3:
    v7 = *v4;
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v4[1];
      if (v7 <= v8 && v8 < a2)
      {
        v10 = v7 - 1;
        while (1)
        {
          v11 = v6[v7 >> 6];
          if ((v11 & (1 << v7)) != 0)
          {
            break;
          }

          v6[v7 >> 6] = v11 | (1 << v7);
          ++v7;
          if (v8 <= ++v10)
          {
            v4 += 2;
            if (v4 != v5)
            {
              goto LABEL_3;
            }

            goto LABEL_13;
          }
        }
      }
    }

    v12 = 0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void quasar::InverseTextNormalizer::doFeatureExtraction(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v14 = *a7;
  if (*a7)
  {
    v15 = *(a7 + 8);
    if (v15)
    {
LABEL_3:
      v60 = v15;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_6;
    }
  }

  else
  {
    v14 = *(a1 + 360);
    v15 = *(a1 + 368);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v60 = 0;
LABEL_6:
  quasar::VocabId::getBosWord(v14, __p);
  WordId = quasar::VocabId::getWordId(v14, __p);
  if (SBYTE7(v63) < 0)
  {
    operator delete(__p[0]);
  }

  quasar::VocabId::getEosWord(v14, __p);
  v17 = quasar::VocabId::getWordId(v14, __p);
  if (SBYTE7(v63) < 0)
  {
    operator delete(__p[0]);
  }

  quasar::VocabId::getPaddingWord(v14, __p);
  v18 = quasar::VocabId::getWordId(v14, __p);
  if (SBYTE7(v63) < 0)
  {
    operator delete(__p[0]);
    if (a5)
    {
LABEL_12:
      kaldi::CuMatrix<float>::Resize(a4, a6, (*(a1 + 8) + 1), 0, 0);
      v19.i32[0] = -1.0;
      kaldi::CuMatrixBase<float>::Set(a4, v19);
      NumTokens = quasar::InverseTextNormalizer::getNumTokens(a1, a2);
      v22 = a4[2].i32[1];
      v23 = a4[1];
      *v23.i32[0] = WordId;
      v24 = a4[3].i32[0];
      v25 = *&v23 + 4 * (v24 + v24 * NumTokens);
      *v25 = v17;
      *(*&v23 + 4) = 0;
      *(v25 + 4) = 0;
      v26 = NumTokens + 2;
      if (NumTokens + 2 < v22)
      {
        v27 = 0;
        *v21.i32 = v18;
        v28 = (v22 - NumTokens - 3);
        v29 = vdupq_n_s64(v28);
        v30 = (v28 + 4) & 0x1FFFFFFFCLL;
        v31 = v24 * v26;
        v32 = (v26 + 3) * v24;
        v33 = (v26 + 2) * v24;
        v34 = v24 + v31;
        v35 = 16 * v24;
        do
        {
          v36 = vdupq_n_s64(v27);
          v37 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v36, xmmword_1B5AE0060)));
          if (vuzp1_s16(v37, v21).u8[0])
          {
            *(*&v23 + 4 * v31) = v21.i32[0];
          }

          if (vuzp1_s16(v37, v21).i8[2])
          {
            *(*&v23 + 4 * v34) = v21.i32[0];
          }

          if (vuzp1_s16(v21, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v36, xmmword_1B5AE0050)))).i32[1])
          {
            *(*&v23 + 4 * v33) = v21.i32[0];
            *(*&v23 + 4 * v32) = v21.i32[0];
          }

          v27 += 4;
          *&v23 += v35;
        }

        while (v30 != v27);
      }

      goto LABEL_25;
    }
  }

  else if (a5)
  {
    goto LABEL_12;
  }

  v38 = quasar::InverseTextNormalizer::getNumTokens(a1, a2);
  kaldi::CuMatrix<float>::Resize(a4, (v38 + 1), (*(a1 + 8) + 1), 1, 0);
  v39 = a4[2].i32[0];
  v40 = a4[1];
  *v40 = WordId;
  if (v39 >= 2)
  {
    memset_pattern16(v40 + 1, &unk_1B5AE5CD0, 4 * (v39 - 1));
  }

LABEL_25:
  NextToken = (*(*a2 + 24))(a2);
  memset(&v86, 0, sizeof(v86));
  v42 = 1;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v81 = -1;
  while (1)
  {
    LODWORD(__p[0]) = (*(*a2 + 32))(a2, NextToken);
    LODWORD(v79[0]) = 2139095040;
    if (*__p != INFINITY)
    {
      break;
    }

    NextToken = quasar::InverseTextNormalizer::getNextToken(a1, a2, NextToken, &v86, &v83, &v82, &v81);
    v43 = HIBYTE(v85);
    if (v85 < 0)
    {
      v43 = v84;
    }

    if (v43)
    {
      std::operator+<char>();
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v79, "");
    }

    v44 = v82;
    if (v82 == 1)
    {
      v45 = quasar::VocabId::getWordId(v14, v79);
    }

    else
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v86.__r_.__value_.__l.__data_, v79, __p);
      v45 = quasar::VocabId::getWordId(v14, __p);
      if (SBYTE7(v63) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (quasar::gLogLevel >= 6)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "tokenNum=", 9);
      v47 = MEMORY[0x1B8C84C00](v46, v81);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " tokenId=", 9);
      v49 = MEMORY[0x1B8C84C00](v48, v45);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " word=", 6);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v86;
      }

      else
      {
        v51 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v86.__r_.__value_.__l.__size_;
      }

      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, size);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " tag=", 5);
      if ((v80 & 0x80u) == 0)
      {
        v55 = v79;
      }

      else
      {
        v55 = v79[0];
      }

      if ((v80 & 0x80u) == 0)
      {
        v56 = v80;
      }

      else
      {
        v56 = v79[1];
      }

      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " tagIsSense=", 12);
      MEMORY[0x1B8C84BD0](v58, v44);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
    }

    *(*&a4[1] + 4 * a4[3].i32[0] * v42) = v45;
    if (*a8)
    {
      v59 = *a8;
    }

    else
    {
      v59 = a1 + 376;
    }

    quasar::InverseTextNormalizer::getFeatures(a1, &v86, &v83, v42, 1, a4, v59);
    std::vector<std::string>::push_back[abi:ne200100](a3, &v86);
    if (v80 < 0)
    {
      operator delete(v79[0]);
    }

    ++v42;
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }
}

void sub_1B5217370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(exception_object);
}

void quasar::VocabId::getBosWord(quasar::VocabId *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    kaldi::quasar::Vocab::BosWord(*this, a2);
  }

  else if (*(this + 159) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 17), *(this + 18));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 136);
    a2->__r_.__value_.__r.__words[2] = *(this + 19);
  }
}

void quasar::VocabId::getEosWord(quasar::VocabId *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    kaldi::quasar::Vocab::EosWord(*this, a2);
  }

  else if (*(this + 183) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 20), *(this + 21));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 10);
    a2->__r_.__value_.__r.__words[2] = *(this + 22);
  }
}

void quasar::InverseTextNormalizer::run(int *a1@<X0>, __int128 **a2@<X1>, const void **a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v10 = quasar::QsrText::SingletonInstance(a1);
  quasar::QsrText::removeW00(v10, a2, &v21);
  v11 = a1[4];
  v12 = v21;
  v13 = v22;
  v14 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 5);
  if (v11 && v14 > v11)
  {
    v15 = 0;
    v16 = v21 + 8;
    while (1)
    {
      if (v15)
      {
        if (v14 <= v15 - 1)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v17 = *(v16 - 1);
        if (*(v16 - 56) > v17)
        {
LABEL_16:
          if (quasar::gLogLevel >= 5)
          {
            memset(v20, 0, sizeof(v20));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "token sequence time is not monotonic increasing.", 48);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v20);
            v12 = v21;
            v13 = v22;
          }

          if (v12 != v13)
          {
            v19 = 0;
            do
            {
              v12[7] = v19;
              v19 += 10;
              v12[8] = v19;
              v12[9] = v19;
              v12 += 56;
            }

            while (v12 != v13);
          }

LABEL_21:
          quasar::InverseTextNormalizer::runInChunks();
        }
      }

      else
      {
        v17 = v21[7];
      }

      if (v17 > *v16 || *v16 == 0)
      {
        goto LABEL_16;
      }

      ++v15;
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_21;
      }
    }
  }

  quasar::InverseTextNormalizer::runChunk(a1, &v21, a5);
  quasar::InverseTextNormalizer::removeTrailingFormalAutoPunctuation(a1, a5, a3, a4);
  *&v20[0] = &v21;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v20);
}

void sub_1B5217720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = v9 - 88;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

double quasar::StopWatch::pause(quasar::StopWatch *this, clockid_t a2)
{
  if (*(this + 6) != 1)
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "StopWatch is not running.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v7);
  }

  v2 = this;
  *(this + 6) = 0;
  Seconds = kaldi::Timer::GetSeconds(5, a2);
  v4 = v2[4];
  v2 += 4;
  v2[5] = v2[5] + Seconds - v4;
  result = kaldi::Timer::ElapsedCPU(v2, v5) + v2[6];
  v2[6] = result;
  return result;
}

uint64_t quasar::InverseTextNormalizer::getCommands(uint64_t a1, uint64_t *a2, void *a3, std::vector<unsigned int> *a4)
{
  v8 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5);
  v18 = 0uLL;
  std::vector<std::shared_ptr<quasar::CommandTransform>>::resize(a3, v8, &v18);
  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
  }

  std::vector<int>::resize(a4, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = -1;
    do
    {
      a4->__begin_[v12] = v13;
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 600), (v9 + v10));
      if (v14)
      {
        quasar::CommandTransform::getCommandTransform(*(v14 + 10));
      }

      v15 = (*a3 + v11);
      v16 = v15[1];
      *v15 = 0;
      v15[1] = 0;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v13 = v12++;
      v9 = *a2;
      v11 += 16;
      v10 += 224;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v12);
  }

  return 0;
}

void sub_1B52179B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<quasar::CommandTransform>>::resize(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 16 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v4 -= 16;
      }

      *(a1 + 8) = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    std::vector<std::shared_ptr<quasar::CommandTransform>>::__append(a1, v6, a3);
  }
}

void quasar::InverseTextNormalizer::applyCommands(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  memset(v29, 0, 24);
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v29, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v26 = &v26;
  v27 = &v26;
  v28 = 0;
  if (a2[1] != *a2)
  {
    v6 = 0;
    do
    {
      v7 = *a3 + 16 * v6;
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8[4] != 4 || (*(*v8 + 16))(v8, a2, v6, *(*a4 + 4 * v6), v29) != 1)
        {
          v10 = v8[3];
          v11 = v27;
          if (v10 && v27 != &v26)
          {
            while (*(v11[2] + 8) != v10)
            {
              v11 = v11[1];
              if (v11 == &v26)
              {
                goto LABEL_27;
              }
            }

            std::list<std::shared_ptr<quasar::CommandTransform>>::erase(&v26, v11);
          }

LABEL_27:
          operator new();
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      else
      {
        v12 = v27;
        if (v27 != &v26)
        {
          do
          {
            v13 = (*(*v12[2] + 16))(v12[2], a2, v6, *(*a4 + 4 * v6), v29);
            if (quasar::gLogLevel >= 5)
            {
              memset(v25, 0, sizeof(v25));
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
              v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "index=", 6);
              v15 = MEMORY[0x1B8C84C00](v14, v6);
              v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " token=", 7);
              v17 = *a2 + 224 * v6;
              v18 = *(v17 + 23);
              if (v18 >= 0)
              {
                v19 = *a2 + 224 * v6;
              }

              else
              {
                v19 = *v17;
              }

              if (v18 >= 0)
              {
                v20 = *(v17 + 23);
              }

              else
              {
                v20 = *(v17 + 8);
              }

              v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v19, v20);
              v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " commandId=", 11);
              MEMORY[0x1B8C84C00](v22, *(v12[2] + 8));
              quasar::QuasarDebugMessage::~QuasarDebugMessage(v25);
            }

            v23 = v12[1];
            if (v13 == 1)
            {
              std::list<std::shared_ptr<quasar::CommandTransform>>::erase(&v26, v12);
            }

            v12 = v23;
          }

          while (v23 != &v26);
        }
      }

      ++v6;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v6);
  }

  std::__list_imp<std::shared_ptr<quasar::CommandTransform>>::clear(&v26);
  *&v25[0] = v29;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v25);
}

void sub_1B5217D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__list_imp<std::shared_ptr<quasar::CommandTransform>>::clear((v12 - 136));
  a11 = (v12 - 112);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void *std::list<std::shared_ptr<quasar::CommandTransform>>::erase(uint64_t a1, uint64_t *__p)
{
  v3 = *__p;
  v4 = __p[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(__p);
  return v4;
}

void quasar::InverseTextNormalizer::setSpacing(uint64_t a1, std::string **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v5 = *a2;
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v3->__r_.__value_.__r.__words[0];
    }

    if (v5->__r_.__value_.__s.__data_[0] == 32)
    {
      std::string::erase(*a2, 0, 1uLL);
      v3 = *a2;
      v2 = a2[1];
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 5)) >= 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
      while (1)
      {
        v9 = (v3 + v6 + 224);
        v10 = v9;
        if (v3[10].__r_.__value_.__s.__data_[v6 + 7] < 0)
        {
          v10 = v9->__r_.__value_.__r.__words[0];
        }

        if (v10->__r_.__value_.__s.__data_[0] == 32)
        {
          std::string::erase(v9, 0, 1uLL);
          v11 = *a2;
          (*a2)[1].__r_.__value_.__s.__data_[224 * v7 + 20] = 1;
          v12 = v3[10].__r_.__value_.__s.__data_[v6 + 7];
          if ((v12 & 0x80) != 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v12 = v3[10].__r_.__value_.__s.__data_[v6 + 7];
          v11 = v3;
          if ((v12 & 0x80) != 0)
          {
LABEL_14:
            v12 = v3[9].__r_.__value_.__r.__words[v6 / 8 + 2];
          }
        }

        if (v12)
        {
          v7 = v8;
        }

        ++v8;
        v2 = a2[1];
        v6 += 224;
        v3 = v11;
        if (0x6DB6DB6DB6DB6DB7 * ((v2 - v11) >> 5) <= v8)
        {
          goto LABEL_24;
        }
      }
    }

    v11 = v3;
LABEL_24:
    while (v11 != v2)
    {
      size = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v11->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        break;
      }

      v11[1].__r_.__value_.__s.__data_[20] = 0;
      v11 = (v11 + 224);
    }
  }
}

BOOL quasar::InverseTextNormalizer::easterEgg(uint64_t a1, quasar::Token **a2, quasar::Token **a3)
{
  v3 = *a2;
  if (a2[1] - *a2 != 1344)
  {
    return 0;
  }

  v5 = *(v3 + 23);
  if (v5 < 0)
  {
    if (*(v3 + 1) != 2)
    {
      return 0;
    }

    v6 = *v3;
  }

  else
  {
    v6 = *a2;
    if (v5 != 2)
    {
      return 0;
    }
  }

  if (*v6 != 31085)
  {
    return 0;
  }

  v8 = v3 + 224;
  v9 = *(v3 + 247);
  if (v9 < 0)
  {
    if (*(v3 + 29) != 6)
    {
      return 0;
    }

    v8 = *v8;
  }

  else if (v9 != 6)
  {
    return 0;
  }

  v10 = *v8;
  v11 = *(v8 + 2);
  if (v10 != 1852142150 || v11 != 26723)
  {
    return 0;
  }

  v13 = v3 + 448;
  v14 = *(v3 + 471);
  if (v14 < 0)
  {
    if (*(v3 + 57) != 10)
    {
      return 0;
    }

    v13 = *v13;
  }

  else if (v14 != 10)
  {
    return 0;
  }

  v15 = *v13;
  v16 = *(v13 + 4);
  if (v15 != 0x616E6F6974636964 || v16 != 31090)
  {
    return 0;
  }

  v18 = (v3 + 672);
  v19 = *(v3 + 695);
  if (v19 < 0)
  {
    if (*(v3 + 85) != 4)
    {
      return 0;
    }

    v18 = *v18;
  }

  else if (v19 != 4)
  {
    return 0;
  }

  if (*v18 != 1937006949)
  {
    return 0;
  }

  v20 = (v3 + 896);
  v21 = *(v3 + 919);
  if (v21 < 0)
  {
    if (*(v3 + 113) != 4)
    {
      return 0;
    }

    v20 = *v20;
  }

  else if (v21 != 4)
  {
    return 0;
  }

  if (*v20 != 1702259046)
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3 + 140, "hotdogs");
  if (result)
  {
    if (a3 != a2)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    }

    MEMORY[0x1B8C84820](*a3, "Tantor");
    MEMORY[0x1B8C84820](*a3 + 224, "is");
    MEMORY[0x1B8C84820](*a3 + 448, "a");
    MEMORY[0x1B8C84820](*a3 + 672, "mighty");
    MEMORY[0x1B8C84820](*a3 + 896, "fine");
    MEMORY[0x1B8C84820](*a3 + 1120, "elephant.");
    return 1;
  }

  return result;
}

uint64_t quasar::InverseTextNormalizer::emptyCommandTokens(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 44;
    do
    {
      if (*(v4 + v7))
      {
        result = MEMORY[0x1B8C84820](*a3 + v9 - 44, "");
        *(*a3 + v9) = 0;
        v4 = *a2;
        v3 = a2[1];
      }

      ++v8;
      v9 += 224;
      v7 += 16;
    }

    while (v8 < (v3 - v4) >> 4);
  }

  return result;
}

void quasar::InverseTextNormalizer::setTokenProperties(uint64_t *a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (a3[1] != *a3)
  {
    v4 = a2;
    v6 = 0;
    do
    {
      v7 = (*v4 + 8 * v6);
      v8 = *v7;
      v9 = v3 + 224 * v6;
      v75 = v7[1];
      if (*(v9 + 172) == 1)
      {
        v10 = *(*a1 + 224 * v7[1] + 32);
        *(v9 + 28) = v10;
        *(v9 + 32) = v10;
      }

      else
      {
        v11 = *(v9 + 173);
        v12 = *a1;
        v10 = *(*a1 + 224 * v8 + 28);
        *(v9 + 28) = v10;
        if (v11 == 1)
        {
          *(v9 + 32) = v10;
        }

        else
        {
          v13 = v12 + 224 * v75;
          *(v9 + 32) = *(v13 + 32);
          v10 = *(v13 + 36);
        }
      }

      *(v9 + 36) = v10;
      memset(&__str, 0, sizeof(__str));
      memset(&v94, 0, sizeof(v94));
      quasar::Token::DecodingSignals::DecodingSignals(v93.f32, 0.0, 0.0, 0.0, 0.0);
      if (v8 <= v75)
      {
        v16 = 224 * v8 + 104;
        v17 = v75 - v8 + 1;
        v15 = 0.0;
        v18 = 4;
        do
        {
          v19 = *a1 + v16;
          v20 = *(v19 - 64);
          if (*(v19 - 33) >= 0)
          {
            v21 = *(v19 - 33);
          }

          else
          {
            v21 = *(v19 - 48);
          }

          std::string::basic_string[abi:ne200100](__p, v21 + 1);
          if ((SBYTE7(v77) & 0x80u) == 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (v21)
          {
            if (*(v19 - 33) >= 0)
            {
              v23 = (v19 - 56);
            }

            else
            {
              v23 = *(v19 - 56);
            }

            memmove(v22, v23, v21);
          }

          *(v22 + v21) = 32;
          if ((SBYTE7(v77) & 0x80u) == 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          if ((SBYTE7(v77) & 0x80u) == 0)
          {
            v25 = BYTE7(v77);
          }

          else
          {
            v25 = __p[1];
          }

          std::string::append(&__str, v24, v25);
          if (SBYTE7(v77) < 0)
          {
            operator delete(__p[0]);
          }

          size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
          if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v94.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            std::string::append(&v94, ".");
          }

          v27 = *a1 + v16;
          v28 = *(v27 + 15);
          v29 = *v27;
          v32 = *(v27 - 8);
          v30 = (v27 - 8);
          v31 = v32;
          if ((v28 & 0x80u) == 0)
          {
            v33 = v30;
          }

          else
          {
            v33 = v31;
          }

          if ((v28 & 0x80u) == 0)
          {
            v34 = v28;
          }

          else
          {
            v34 = v29;
          }

          std::string::append(&v94, v33, v34);
          v35 = *a1;
          v14 = *(*a1 + v16 + 64);
          if (v18 == v14)
          {
            v14 = v18;
          }

          else if (v18 != 4 && quasar::gLogLevel >= 6)
          {
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Merged token span covers multiple LME types (", 45);
            v37 = quasar::operator<<(v36, v18);
            v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " and ", 5);
            v39 = quasar::operator<<(v38, *(*a1 + v16 + 64));
            v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "); using ", 9);
            v41 = quasar::operator<<(v40, *(*a1 + v16 + 64));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ".", 1);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
            v35 = *a1;
            v14 = *(*a1 + v16 + 64);
          }

          quasar::Token::DecodingSignals::operator+=(&v93, (v35 + v16 + 100));
          v15 = v15 + v20;
          v16 += 224;
          v18 = v14;
          --v17;
        }

        while (v17);
      }

      else
      {
        LODWORD(v14) = 4;
        v15 = 0.0;
      }

      quasar::trim(&__str);
      v42 = *a3 + 224 * v6;
      *(v42 + 40) = v15 / (v75 - v8 + 1);
      std::string::operator=((v42 + 48), &__str);
      std::string::operator=((*a3 + 224 * v6 + 96), &v94);
      v43 = *a3 + 224 * v6;
      *(v43 + 168) = v14;
      *(v43 + 204) = v93;
      v4 = a2;
      if (quasar::gLogLevel >= 6)
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[", 1);
        v45 = MEMORY[0x1B8C84C00](v44, *(*a2 + 8 * v6));
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "] ", 2);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "", 1);
        v48 = *a1 + 224 * *(*a2 + 8 * v6);
        v49 = *(v48 + 23);
        if (v49 >= 0)
        {
          v50 = *a1 + 224 * *(*a2 + 8 * v6);
        }

        else
        {
          v50 = *v48;
        }

        if (v49 >= 0)
        {
          v51 = *(v48 + 23);
        }

        else
        {
          v51 = *(v48 + 8);
        }

        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v50, v51);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " ~ ", 4);
        v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "[", 1);
        v55 = MEMORY[0x1B8C84C00](v54, *(*a2 + 8 * v6 + 4));
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "] ", 2);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "", 1);
        v58 = *a1 + 224 * *(*a2 + 8 * v6 + 4);
        v59 = *(v58 + 23);
        if (v59 >= 0)
        {
          v60 = *a1 + 224 * *(*a2 + 8 * v6 + 4);
        }

        else
        {
          v60 = *v58;
        }

        if (v59 >= 0)
        {
          v61 = *(v58 + 23);
        }

        else
        {
          v61 = *(v58 + 8);
        }

        v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v60, v61);
        v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " -> ", 5);
        v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "[", 1);
        v65 = MEMORY[0x1B8C84C00](v64, v6);
        v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "] ", 2);
        v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "", 1);
        v68 = *a3 + 224 * v6;
        v69 = *(v68 + 23);
        if (v69 >= 0)
        {
          v70 = *a3 + 224 * v6;
        }

        else
        {
          v70 = *v68;
        }

        if (v69 >= 0)
        {
          v71 = *(v68 + 23);
        }

        else
        {
          v71 = *(v68 + 8);
        }

        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v70, v71);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "", 1);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v6;
      v3 = *a3;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5) > v6);
  }
}

void sub_1B521881C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 137) < 0)
  {
    operator delete(*(v18 - 160));
  }

  if (*(v18 - 113) < 0)
  {
    operator delete(*(v18 - 136));
  }

  _Unwind_Resume(exception_object);
}

void quasar::InverseTextNormalizer::removeEmptyTokens(uint64_t a1, void *a2, uint64_t a3, void *a4, const void **a5, void **a6)
{
  v10 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5);
  LOBYTE(v61) = 0;
  std::vector<BOOL>::vector(&v84, v10);
  v11 = *a3;
  if (*(a3 + 8) != *a3)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = &v11[28 * v12];
      v15 = v14[23];
      if (v14[23] < 0)
      {
        if (*(v14 + 1))
        {
          goto LABEL_9;
        }
      }

      else if (v14[23])
      {
        goto LABEL_9;
      }

      if (v14[44] == 1)
      {
        MEMORY[0x1B8C84820]();
        v11 = *a3;
        v16 = *a3 + 224 * v12;
        *(v16 + 44) = 0;
        v15 = *(v16 + 23);
      }

LABEL_9:
      if ((v15 & 0x80) != 0)
      {
        if (v11[28 * v12 + 1])
        {
LABEL_13:
          ++v13;
          v17 = (*a4 + 8 * v12);
          v18 = v17[1];
          v19 = *v17;
          if (v19 <= v18)
          {
            v20 = v84;
            v21 = v18 - v19 + 1;
            do
            {
              *&v20[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
              ++v19;
              --v21;
            }

            while (v21);
          }
        }
      }

      else if (v15)
      {
        goto LABEL_13;
      }

      if (0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - v11) >> 5) <= ++v12)
      {
        goto LABEL_19;
      }
    }
  }

  v13 = 0;
LABEL_19:
  std::vector<quasar::Token>::vector[abi:ne200100](&v82, v13);
  *&v61 = 0x800000007FFFFFFFLL;
  std::vector<std::pair<int,int>>::vector[abi:ne200100](&v80, v13);
  memset(&v79, 0, sizeof(v79));
  if (*a6 != a6[1])
  {
    std::vector<int>::resize(&v79, v13);
  }

  v78 = 0;
  v22 = *a3;
  if (*(a3 + 8) != *a3)
  {
    v23 = 0;
    v24 = 0;
    LODWORD(v25) = -1;
    do
    {
      v26 = &v22[28 * v24];
      if ((*(v26 + 23) & 0x8000000000000000) != 0)
      {
        if (!v26[1])
        {
LABEL_33:
          if (quasar::gLogLevel >= 5)
          {
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v61 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v61);
            v32 = MEMORY[0x1B8C84C00](&v61, v78);
            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " ", 1);
            v34 = MEMORY[0x1B8C84C00](v33, *(*a4 + 8 * v78));
            v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
            MEMORY[0x1B8C84C00](v35, *(*a4 + 8 * v78 + 4));
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v61);
            v23 = v78;
          }

          if (((*&v84[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v23) & 1) == 0)
          {
            if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 424), (*a2 + 224 * v23)) || (v25 & 0x80000000) != 0)
            {
              v44 = v25 + 1;
              if (v44 >= v13)
              {
                std::vector<int>::push_back[abi:ne200100](a5, &v78);
              }

              else
              {
                if (quasar::gLogLevel >= 5)
                {
                  v76 = 0u;
                  v77 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v62 = 0u;
                  v63 = 0u;
                  v61 = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v61);
                  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "Merging pre-token ", 18);
                  v46 = *a2 + 224 * v78;
                  v47 = *(v46 + 23);
                  if (v47 >= 0)
                  {
                    v48 = *a2 + 224 * v78;
                  }

                  else
                  {
                    v48 = *v46;
                  }

                  if (v47 >= 0)
                  {
                    v49 = *(v46 + 23);
                  }

                  else
                  {
                    v49 = *(v46 + 8);
                  }

                  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v48, v49);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " to next post token", 19);
                  quasar::QuasarDebugMessage::~QuasarDebugMessage(&v61);
                }

                v51 = *(v80 + 8 * v44);
                if (v51 >= v78)
                {
                  v51 = v78;
                }

                *(v80 + 8 * v44) = v51;
              }
            }

            else
            {
              if (quasar::gLogLevel >= 5)
              {
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v61 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v61);
                v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "Merging pre-token ", 18);
                v37 = *a2 + 224 * v78;
                v38 = *(v37 + 23);
                if (v38 >= 0)
                {
                  v39 = *a2 + 224 * v78;
                }

                else
                {
                  v39 = *v37;
                }

                if (v38 >= 0)
                {
                  v40 = *(v37 + 23);
                }

                else
                {
                  v40 = *(v37 + 8);
                }

                v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v39, v40);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " to previous post token", 23);
                quasar::QuasarDebugMessage::~QuasarDebugMessage(&v61);
              }

              v42 = v80 + 8 * v25;
              v43 = v78;
              if (v78 <= *(v42 + 4))
              {
                v43 = *(v42 + 4);
              }

              *(v42 + 4) = v43;
            }

            v23 = v78;
            *&v84[(v78 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v78;
          }

          goto LABEL_64;
        }
      }

      else if (!*(v26 + 23))
      {
        goto LABEL_33;
      }

      v25 = v25 + 1;
      quasar::Token::operator=(v82 + 224 * v25, v26);
      v27 = *a4;
      v28 = (v80 + 8 * v25);
      v29 = *(*a4 + 8 * v78);
      v30 = v28[1];
      if (*v28 < v29)
      {
        v29 = *v28;
      }

      *v28 = v29;
      v31 = v27[2 * v78 + 1];
      if (v31 <= v30)
      {
        v31 = v30;
      }

      v28[1] = v31;
      if (v79.__begin_ != v79.__end_)
      {
        v79.__begin_[v25] = *(*a6 + v78);
      }

      v23 = v78;
LABEL_64:
      v78 = ++v23;
      v24 = v23;
      v22 = *a3;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 5) > v23);
  }

  v52 = (*(&v80 + 1) - v80) >> 3;
  if (v52 >= 2)
  {
    v53 = v52 - 1;
    v54 = (v80 + 4);
    do
    {
      v55 = v54[1] - 1;
      if (v55 >= *v54)
      {
        v55 = *v54;
      }

      *v54 = v55;
      v54 += 2;
      --v53;
    }

    while (v53);
  }

  std::vector<quasar::Token>::__vdeallocate(a3);
  *a3 = v82;
  *(a3 + 16) = v83;
  v83 = 0;
  v82 = 0uLL;
  v56 = *a4;
  if (*a4)
  {
    a4[1] = v56;
    operator delete(v56);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = v80;
  a4[2] = v81;
  v81 = 0;
  v80 = 0uLL;
  v57 = *&v79.__begin_;
  if (vmovn_s64(vceqq_s64(*&v79.__begin_, vdupq_laneq_s64(*&v79.__begin_, 1))).u8[0])
  {
    if (v79.__begin_)
    {
      v79.__end_ = v79.__begin_;
      operator delete(v79.__begin_);
    }
  }

  else
  {
    v58 = *a6;
    if (*a6)
    {
      a6[1] = v58;
      operator delete(v58);
      *a6 = 0;
      a6[1] = 0;
      a6[2] = 0;
      v57 = *&v79.__begin_;
    }

    *a6 = v57;
    a6[2] = v79.__end_cap_.__value_;
  }

  if (v80)
  {
    *(&v80 + 1) = v80;
    operator delete(v80);
  }

  *&v61 = &v82;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v61);
  if (v84)
  {
    operator delete(v84);
  }
}

void sub_1B5218EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  v15 = *(v13 - 208);
  if (v15)
  {
    *(v13 - 200) = v15;
    operator delete(v15);
  }

  v16 = *(v13 - 176);
  if (v16)
  {
    *(v13 - 168) = v16;
    operator delete(v16);
  }

  a13 = (v13 - 144);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a13);
  v17 = *(v13 - 112);
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::Token::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 39);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 39) = v5;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 72));
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v7;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  std::vector<std::pair<std::string,float>>::__vdeallocate(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v8 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v8;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  v9 = *(a2 + 86);
  *(a1 + 168) = *(a2 + 42);
  *(a1 + 172) = v9;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v10 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v10;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  v11 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 54);
  *(a1 + 200) = v11;
  return a1;
}

void quasar::InverseTextNormalizer::createSeparateAutoPunctuationTokens(quasar::InverseTextNormalizer *a1, void **a2, void **a3, void *a4)
{
  v4 = a3;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  if (a2[1] == *a2)
  {
    v96 = 0;
    memset(&v119, 0, sizeof(v119));
    goto LABEL_153;
  }

  v7 = 0;
  v8 = 172;
  do
  {
    v9 = quasar::InverseTextNormalizer::char32Converter(a1);
    v10 = *a2 + v8;
    v13 = *(v10 - 172);
    v11 = v10 - 172;
    v12 = v13;
    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = v12;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(v9, v15, (v15 + v16), &v119);
    v18 = quasar::InverseTextNormalizer::char32Converter(v17);
    v19 = *a2 + v8;
    v22 = *(v19 - 172);
    v20 = v19 - 172;
    v21 = v22;
    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = v21;
    }

    if (v23 >= 0)
    {
      v25 = *(v20 + 23);
    }

    else
    {
      v25 = *(v20 + 8);
    }

    std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(v18, v24, (v24 + v25), &__str);
    v27 = *(*a4 + 4 * v7);
    v28 = *a2;
    if (*(*a2 + v8 + 1) == 1)
    {
      v29 = quasar::InverseTextNormalizer::char32Converter(v26);
      std::basic_string<char32_t>::basic_string(&v116, &__str, 0, v27, (&v115 + 4));
      size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v116;
      }

      else
      {
        v31 = v116.__r_.__value_.__r.__words[0];
      }

      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v116.__r_.__value_.__l.__size_;
      }

      std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(v29, v31, (v31 + 4 * size), &__p);
      v114 = 0;
      v115 = 0;
      v113 = 0;
      v32 = v121;
      if (v121 >= v122)
      {
        v33 = std::vector<quasar::Token>::__emplace_back_slow_path<std::string,int,int,int,int,BOOL,BOOL &>(&v120, &__p, &v115 + 1, &v115, &v114 + 1, &v114, &v113, *a2 + v8 - 127);
      }

      else
      {
        std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,int,BOOL,BOOL &>(&v120, v121, &__p, &v115 + 1, &v115, &v114 + 1, &v114, &v113, *a2 + v8 - 127);
        v33 = (v32 + 224);
      }

      v121 = v33;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      v121[-3].__r_.__value_.__s.__data_[21] = 1;
      v34 = *a2 + v8;
      *(v34 - 127) = 0;
      *(v34 + 1) = 0;
      v35 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v119.__r_.__value_.__l.__size_;
      }

      std::basic_string<char32_t>::basic_string(&__p, &v119, 1uLL, v35 - v27, &v116);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      v119 = __p;
      v28 = *a2;
    }

    v36 = &v28[v8 - 172];
    v37 = v121;
    if (v121 >= v122)
    {
      v38 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token&>(&v120, v36);
    }

    else
    {
      quasar::Token::Token(v121, v36);
      v38 = (v37 + 224);
    }

    v121 = v38;
    v39 = quasar::InverseTextNormalizer::char32Converter(v38);
    v40 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
    if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v119;
    }

    else
    {
      v41 = v119.__r_.__value_.__r.__words[0];
    }

    if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v119.__r_.__value_.__l.__size_;
    }

    std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(v39, v41, (v41 + 4 * v40), &__p);
    v42 = &v121[-10].__r_.__value_.__s.__data_[16];
    if (v121[-9].__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(*v42);
    }

    v43 = *&__p.__r_.__value_.__l.__data_;
    *(v42 + 2) = *(&__p.__r_.__value_.__l + 2);
    *v42 = v43;
    if (*(*a2 + v8) == 1)
    {
      v44 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v44 = v119.__r_.__value_.__l.__size_;
      }

      v45 = std::basic_string<char32_t>::basic_string(&__p, &v119, 0, v44 - v27, &v116);
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      v119 = __p;
      v46 = quasar::InverseTextNormalizer::char32Converter(v45);
      v47 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v119;
      }

      else
      {
        v48 = v119.__r_.__value_.__r.__words[0];
      }

      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v119.__r_.__value_.__l.__size_;
      }

      std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(v46, v48, (v48 + 4 * v47), &__p);
      v50 = &v121[-10].__r_.__value_.__s.__data_[16];
      if (v121[-9].__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(*v50);
      }

      v51 = *&__p.__r_.__value_.__l.__data_;
      *(v50 + 2) = *(&__p.__r_.__value_.__l + 2);
      *v50 = v51;
      v52 = v121;
      v121[-8].__r_.__value_.__s.__data_[12] = 0;
      v52[-3].__r_.__value_.__s.__data_[20] = 0;
      v53 = quasar::InverseTextNormalizer::char32Converter(v49);
      v54 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __str.__r_.__value_.__l.__size_;
      }

      std::basic_string<char32_t>::basic_string(&v116, &__str, v54 - v27, v27, (&v115 + 4));
      v55 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v116;
      }

      else
      {
        v56 = v116.__r_.__value_.__r.__words[0];
      }

      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = v116.__r_.__value_.__l.__size_;
      }

      std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(v53, v56, (v56 + 4 * v55), &__p);
      v114 = 0;
      v115 = 0;
      v57 = *a2 + v8 - 128;
      v113 = 0;
      v58 = v121;
      if (v121 >= v122)
      {
        a1 = std::vector<quasar::Token>::__emplace_back_slow_path<std::string,int,int,int,int,BOOL &,BOOL>(&v120, &__p, &v115 + 1, &v115, &v114 + 1, &v114, v57, &v113);
      }

      else
      {
        std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,std::string,int,int,int,int,BOOL &,BOOL>(&v120, v121, &__p, &v115 + 1, &v115, &v114 + 1, &v114, v57, &v113);
        a1 = &v58[9].__r_.__value_.__r.__words[1];
      }

      v121 = a1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      v121[-3].__r_.__value_.__s.__data_[20] = 1;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v119.__r_.__value_.__l.__data_);
    }

    ++v7;
    v8 += 224;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v7);
  v59 = v120;
  memset(&v119, 0, sizeof(v119));
  if (v121 == v120)
  {
    v96 = 0;
    v4 = a3;
    goto LABEL_153;
  }

  v60 = 0;
  v61 = 0;
  v4 = a3;
  do
  {
    if (!quasar::Token::isAutoPunctuation((v59 + v60)))
    {
      goto LABEL_145;
    }

    if (0x6DB6DB6DB6DB6DB7 * ((v121 - v120) >> 5) - 1 <= v61 || (v62 = quasar::Token::isAutoPunctuation(&v120[9].__r_.__value_.__r.__words[v60 / 8 + 1]), (v62 & 1) != 0))
    {
      if (!v60)
      {
        goto LABEL_145;
      }

      isAutoPunctuation = quasar::Token::isAutoPunctuation((&v120[-9] + v60 - 8));
      if (isAutoPunctuation)
      {
        goto LABEL_145;
      }

      v64 = v120 + v60;
      v65 = SHIBYTE(v120->__r_.__value_.__r.__words[v60 / 8 + 2]);
      if (v65 >= 0)
      {
        v66 = v64[23];
      }

      else
      {
        v66 = *(v64 + 1);
      }

      v67 = *(v64 - 201);
      v68 = v67;
      if ((v67 & 0x80u) != 0)
      {
        v67 = *(v64 - 27);
      }

      if (v66 != v67 || ((v69 = v64 - 224, v65 >= 0) ? (v70 = v120 + v60) : (v70 = *v64), (v71 = *(v64 - 28), v68 >= 0) ? (v72 = v69) : (v72 = v71), isAutoPunctuation = memcmp(v70, v72, v66), isAutoPunctuation))
      {
        v73 = quasar::InverseTextNormalizer::char32Converter(isAutoPunctuation);
        v74 = *(&v120[-8] + v60 - 9);
        if (v74 >= 0)
        {
          v75 = (&v120[-9] + v60 - 8);
        }

        else
        {
          v75 = *(&v120[-9] + v60 - 8);
        }

        if (v74 >= 0)
        {
          v76 = *(&v120[-8] + v60 - 9);
        }

        else
        {
          v76 = *(&v120[-9].__r_.__value_.__l.__data_ + v60);
        }

        std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(v73, v75, (v75 + v76), &__str);
        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 1)
          {
            p_str = &__str;
            goto LABEL_134;
          }

          goto LABEL_140;
        }

        if (__str.__r_.__value_.__l.__size_ == 1)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
LABEL_134:
          if (u_ispunct(p_str->__r_.__value_.__s.__data_[0]))
          {
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v92 = &__str;
            }

            else
            {
              v92 = __str.__r_.__value_.__r.__words[0];
            }

            goto LABEL_138;
          }
        }

LABEL_140:
        v93 = 1;
        goto LABEL_141;
      }
    }

    else
    {
      v78 = v120 + v60;
      v79 = SHIBYTE(v120->__r_.__value_.__r.__words[v60 / 8 + 2]);
      if (v79 >= 0)
      {
        v80 = v78[23];
      }

      else
      {
        v80 = *(v78 + 1);
      }

      v81 = v78[247];
      v82 = v81;
      if ((v81 & 0x80u) != 0)
      {
        v81 = *(v78 + 29);
      }

      if (v80 != v81 || ((v83 = v78 + 224, v79 >= 0) ? (v84 = v120 + v60) : (v84 = *v78), (v85 = *(v78 + 28), v82 >= 0) ? (v86 = v83) : (v86 = v85), v62 = memcmp(v84, v86, v80), v62))
      {
        v87 = quasar::InverseTextNormalizer::char32Converter(v62);
        v88 = v120[10].__r_.__value_.__s.__data_[v60 + 7];
        if (v88 >= 0)
        {
          v89 = &v120[9].__r_.__value_.__r.__words[v60 / 8 + 1];
        }

        else
        {
          v89 = *(&v120[9].__r_.__value_.__l.__size_ + v60);
        }

        if (v88 >= 0)
        {
          v90 = v120[10].__r_.__value_.__s.__data_[v60 + 7];
        }

        else
        {
          v90 = v120[9].__r_.__value_.__r.__words[v60 / 8 + 2];
        }

        std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(v87, v89, (v89 + v90), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__str.__r_.__value_.__l.__size_ != 1)
          {
            goto LABEL_140;
          }

          v91 = __str.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 1)
          {
            goto LABEL_140;
          }

          v91 = &__str;
        }

        if (!u_ispunct(v91->__r_.__value_.__s.__data_[0]))
        {
          goto LABEL_140;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v92 = &__str;
        }

        else
        {
          v92 = __str.__r_.__value_.__r.__words[0];
        }

LABEL_138:
        if ((quasar::isCJK(v92->__r_.__value_.__s.__data_[0]) & 1) == 0)
        {
          goto LABEL_140;
        }

        v93 = 0;
LABEL_141:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          if ((v93 & 1) == 0)
          {
            goto LABEL_149;
          }
        }

        else if ((v93 & 1) == 0)
        {
          goto LABEL_149;
        }

LABEL_145:
        v94 = v119.__r_.__value_.__l.__size_;
        if (v119.__r_.__value_.__l.__size_ >= v119.__r_.__value_.__r.__words[2])
        {
          v95 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token&>(&v119, (v120 + v60));
        }

        else
        {
          quasar::Token::Token(v119.__r_.__value_.__l.__size_, (v120 + v60));
          v95 = v94 + 224;
        }

        v119.__r_.__value_.__l.__size_ = v95;
      }
    }

LABEL_149:
    ++v61;
    v59 = v120;
    v60 += 224;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((v121 - v120) >> 5) > v61);
  v96 = 0x6DB6DB6DB6DB6DB7 * ((v119.__r_.__value_.__l.__size_ - v119.__r_.__value_.__r.__words[0]) >> 5);
LABEL_153:
  __p.__r_.__value_.__r.__words[0] = 0x800000007FFFFFFFLL;
  std::vector<std::pair<int,int>>::vector[abi:ne200100](&__str, v96);
  v98 = *a2;
  v97 = a2[1];
  v99 = *v4;
  v100 = __str.__r_.__value_.__r.__words[0];
  if (v119.__r_.__value_.__l.__size_ != v119.__r_.__value_.__r.__words[0] || v97 != v98)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0x6DB6DB6DB6DB6DB7 * ((v119.__r_.__value_.__l.__size_ - v119.__r_.__value_.__r.__words[0]) >> 5);
    v105 = 0x6DB6DB6DB6DB6DB7 * ((v97 - v98) >> 5);
    v106 = (v119.__r_.__value_.__r.__words[0] + 173);
    do
    {
      if (v103 && (*(v106 - 1) & 1) != 0)
      {
        *v100 = *(v100 - 2);
        v107 = v100 - 1;
      }

      else
      {
        v108 = *v106 == 1 && v104 - 1 > v103;
        v109 = &v99[8 * v101];
        if (!v108)
        {
          ++v102;
        }

        v110 = *v109;
        v107 = v109 + 4;
        *v100 = v110;
      }

      v106 += 224;
      v100[1] = *v107;
      ++v103;
      v101 = v102;
      v100 += 2;
    }

    while (v104 > v103 || v105 > v102);
  }

  std::vector<quasar::Token>::__vdeallocate(a2);
  *a2 = v119;
  memset(&v119, 0, sizeof(v119));
  v111 = *v4;
  if (*v4)
  {
    v4[1] = v111;
    operator delete(v111);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *v4 = __str;
  __str.__r_.__value_.__r.__words[0] = &v119;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__str);
  v119.__r_.__value_.__r.__words[0] = &v120;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v119);
}

void sub_1B5219988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void **__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  __p = &a34;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  a34 = (v39 - 120);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void quasar::InverseTextNormalizer::removeTrailingFormalAutoPunctuation(uint64_t a1, uint64_t *a2, const void **a3, char a4)
{
  v4 = *(a1 + 776);
  if (v4)
  {
    v8 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(v4 + 256, a3);
    if ((a4 & 1) != 0 && v4 + 264 != v8)
    {
      v9 = a2[1];
      if (*a2 != v9 && quasar::Token::isAutoPunctuation((v9 - 224)) && std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((*(a1 + 776) + 376), (a2[1] - 224)))
      {
        v10 = *(a1 + 776);
        v11 = *a2;
        v12 = a2[1];
        if (v12 - *a2 == 224)
        {
LABEL_14:
          v16 = *(v10 + 368);
          if ((v16 & 0x80000000) != 0 || 0x6DB6DB6DB6DB6DB7 * ((v12 - v11) >> 5) <= v16)
          {
            quasar::Token::~Token((v12 - 224));
            a2[1] = v17;
            if (*a2 != v17)
            {
              *(v12 - 404) = 0;
            }
          }
        }

        else
        {
          v13 = 0;
          v14 = 0;
          while (1)
          {
            v15 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v10 + 416), (v11 + v13));
            v11 = *a2;
            if (v15)
            {
              if (std::string::compare((v11 + v13), "."))
              {
                break;
              }

              v11 = *a2;
              if (*(*a2 + v13 + 44))
              {
                break;
              }
            }

            ++v14;
            v12 = a2[1];
            v13 += 224;
            if (0x6DB6DB6DB6DB6DB7 * ((v12 - v11) >> 5) - 1 <= v14)
            {
              v10 = *(a1 + 776);
              goto LABEL_14;
            }
          }
        }
      }
    }
  }
}

uint64_t quasar::InverseTextNormalizer::isEnableAutoPunctuation(uint64_t a1, const void **a2, char a3)
{
  v3 = *(a1 + 776);
  if (!v3)
  {
    return 0;
  }

  if (v3 + 264 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(v3 + 256, a2))
  {
    return 0;
  }

  return a3 & 1;
}

double quasar::InverseTextNormalizer::getEndsOfSentencePunctuations@<D0>(quasar::InverseTextNormalizer *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 97);
  if (v2)
  {
    std::unordered_set<std::string>::unordered_set(a2, v2 + 416);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
  }

  return result;
}

void quasar::InverseTextNormalizer::runChunk(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0uLL;
  v6 = 0;
  if (*(a2 + 8) == *a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    if (!quasar::InverseTextNormalizer::easterEgg(a1, a2, &v5))
    {
      fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
    }

    *a3 = v5;
    a3[2] = v6;
  }

  v5 = 0uLL;
  v6 = 0;
  *__x = &v5;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__x);
}

void sub_1B521B5E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int128 a55, __int128 a56, __int128 a57, __int128 a58, __int128 a59, __int128 a60, __int128 a61, __int128 a62, __int128 a63)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a55);
  *&a55 = &STACK[0x3E8];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a55);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x400]);
  v67 = *(v64 - 240);
  if (v67)
  {
    *(v64 - 232) = v67;
    operator delete(v67);
  }

  *&a55 = v64 - 216;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a55);
  *&a55 = v64 - 192;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);
  v68 = *(v64 - 168);
  if (v68)
  {
    *(v64 - 160) = v68;
    operator delete(v68);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v64 - 144));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 4)
    {
      *&STACK[0x260] = 0u;
      *&STACK[0x270] = 0u;
      *&STACK[0x240] = 0u;
      *&STACK[0x250] = 0u;
      *&STACK[0x220] = 0u;
      *&STACK[0x230] = 0u;
      *&STACK[0x200] = 0u;
      *&STACK[0x210] = 0u;
      a62 = 0u;
      a63 = 0u;
      a60 = 0u;
      a61 = 0u;
      a58 = 0u;
      a59 = 0u;
      a56 = 0u;
      a57 = 0u;
      a55 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a55, "ITN failed", 10);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&a55);
    }

    *v63 = 0;
    v63[1] = 0;
    v63[2] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1B521B574);
  }

  *&a55 = v64 - 128;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);
  _Unwind_Resume(a1);
}

void sub_1B521BA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::locale a55)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a55);
  __cxa_end_catch();
  JUMPOUT(0x1B521B844);
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::erase(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __pos, std::basic_string<char32_t>::size_type __n)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size < __pos)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (__n == -1)
  {
    if ((v4 & 0x80000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      this->__r_.__value_.__l.__size_ = __pos;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = __pos & 0x7F;
      v6 = this;
    }

    v6->__r_.__value_.__s.__data_[__pos] = 0;
  }

  else
  {
    std::basic_string<char32_t>::__erase_external_with_move(this, __pos, __n);
  }

  return this;
}

void quasar::getFirstNonSpaceChar(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = quasar::CommandTransform::char32Converter(a1);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(v4, v6, (v6 + v7), &__p);
  v8 = v17;
  if (v18 >= 0)
  {
    v8 = v18;
  }

  if (v8)
  {
    v9 = 0;
    v10 = v18 >> 63;
    while (1)
    {
      v11 = (v10 & 1) != 0 ? __p : &__p;
      isUWhiteSpace = u_isUWhiteSpace(v11[v9]);
      if (!isUWhiteSpace)
      {
        break;
      }

      ++v9;
      v13 = v18;
      v10 = v18 >> 63;
      if (v18 < 0)
      {
        v13 = v17;
      }

      if (v13 <= v9)
      {
        goto LABEL_18;
      }
    }

    v14 = quasar::CommandTransform::char32Converter(isUWhiteSpace);
    p_p = &__p;
    if (v18 < 0)
    {
      p_p = __p;
    }

    LODWORD(v19.__r_.__value_.__l.__data_) = p_p[v9];
    std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(v14, &v19, (v19.__r_.__value_.__r.__words + 4), a2);
  }

  else
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  if (v18 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B521BBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B521C630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  a22 = v59 - 240;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = v59 - 216;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  v61 = *(v59 - 192);
  if (v61)
  {
    *(v59 - 184) = v61;
    operator delete(v61);
  }

  a22 = v59 - 168;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = v59 - 144;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void std::vector<quasar::PreTokenToPostTokenItnMap>::resize(void *a1, unint64_t a2)
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
    std::vector<quasar::PreTokenToPostTokenItnMap>::__append(a1, a2 - v2);
  }
}

void *std::__shared_ptr_emplace<kaldi::quasar::Vocab>::__shared_ptr_emplace[abi:ne200100]<std::istream &,BOOL &,std::allocator<kaldi::quasar::Vocab>,0>(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05C48;
  kaldi::quasar::Vocab::Vocab(a1 + 3, a2, *a3, 1);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::Vocab>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D05C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::Vocab>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 104);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1B521C9B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::URegularExpressionWrapper>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::URegularExpressionWrapper>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05C98;
  quasar::URegularExpressionWrapper::URegularExpressionWrapper(a1 + 3, a2, 0);
  return a1;
}

void std::__shared_ptr_emplace<quasar::URegularExpressionWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D05C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

double kaldi::Timer::ElapsedCPU(kaldi::Timer *this, clockid_t a2)
{
  if ((*(this + 24) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Process CPU time was not enabled");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return kaldi::Timer::GetSeconds(0xC, a2) - *(this + 1);
}

void std::__list_imp<std::shared_ptr<quasar::CommandTransform>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_62;
  }

  v7 = a2;
  std::string::basic_string[abi:ne200100](a4, (a3 - a2) >> 1, 0);
  if (a3 == v7)
  {
    v23 = *(a1 + 136);
    v52 = *(a1 + 120);
    v53 = v23;
    v24 = *(a1 + 168);
    v54 = *(a1 + 152);
    v55 = v24;
    v25 = *(a1 + 72);
    v48 = *(a1 + 56);
    v49 = v25;
    v26 = *(a1 + 104);
    v50 = *(a1 + 88);
    v51 = v26;
  }

  else
  {
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = 22;
    }

    else
    {
      v8 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(a4, v8, 0);
    v9 = *(a1 + 136);
    v52 = *(a1 + 120);
    v53 = v9;
    v10 = *(a1 + 168);
    v54 = *(a1 + 152);
    v55 = v10;
    v11 = *(a1 + 72);
    v48 = *(a1 + 56);
    v49 = v11;
    v12 = *(a1 + 88);
    v13 = *(a1 + 104);
    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    v16 = &v15[size];
    v50 = *(a1 + 88);
    v51 = v13;
    while (1)
    {
      v17 = (*(**(a1 + 48) + 24))(*(a1 + 48), &v48, v7, a3, &v47, v15, v16, &v46, v12);
      v18 = v47 == v7;
      *(a1 + 184) += (v47 - v7) >> 2;
      if (v18)
      {
        goto LABEL_60;
      }

      if (v17 != 1)
      {
        break;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = a4->__r_.__value_.__r.__words[0];
      }

      v20 = v46 - v19;
      std::string::resize(a4, 2 * (v46 - v19), 0);
      v21 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v21 & 0x80u) == 0)
      {
        v22 = a4;
      }

      else
      {
        v22 = a4->__r_.__value_.__r.__words[0];
      }

      v15 = v22 + v20;
      if ((v21 & 0x80u) != 0)
      {
        v21 = a4->__r_.__value_.__l.__size_;
      }

      v16 = v22 + v21;
      v7 = v47;
      if (v47 >= a3)
      {
        goto LABEL_60;
      }
    }

    if (v17)
    {
      if (v17 != 3)
      {
        goto LABEL_60;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = a4;
      }

      else
      {
        v27 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v15 - v27, 0);
      std::string::append[abi:ne200100]<char const*,0>(a4, v7, a3);
    }

    else
    {
      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = a4;
      }

      else
      {
        v28 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v46 - v28, 0);
    }
  }

  v29 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  v30 = a4->__r_.__value_.__l.__size_;
  if ((v29 & 0x80u) == 0)
  {
    v31 = 22;
  }

  else
  {
    v31 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  std::string::resize(a4, v31, 0);
  if ((v29 & 0x80u) == 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = v30;
  }

  v33 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  v34 = v33 < 0;
  if (v33 >= 0)
  {
    v35 = a4;
  }

  else
  {
    v35 = a4->__r_.__value_.__r.__words[0];
  }

  v36 = (v35 + v32);
  if (v34)
  {
    v37 = a4->__r_.__value_.__l.__size_;
  }

  else
  {
    v37 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  for (i = v36 + v37; ; i = v43 + v42)
  {
    v39 = (*(**(a1 + 48) + 40))(*(a1 + 48), &v48, v36, i, &v47);
    if (v39 != 1)
    {
      break;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = a4;
    }

    else
    {
      v40 = a4->__r_.__value_.__r.__words[0];
    }

    v41 = (v47 - v40);
    std::string::resize(a4, 2 * (v47 - v40), 0);
    v42 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v42 & 0x80u) == 0)
    {
      v43 = a4;
    }

    else
    {
      v43 = a4->__r_.__value_.__r.__words[0];
    }

    v36 = &v41[v43];
    if ((v42 & 0x80u) != 0)
    {
      v42 = a4->__r_.__value_.__l.__size_;
    }
  }

  if (!v39)
  {
    v36 = v47;
    goto LABEL_68;
  }

  if (v39 == 3)
  {
LABEL_68:
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = a4;
    }

    else
    {
      v45 = a4->__r_.__value_.__r.__words[0];
    }

    std::string::resize(a4, v36 - v45, 0);
    return;
  }

LABEL_60:
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a4->__r_.__value_.__l.__data_);
  }

LABEL_62:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      *&a4->__r_.__value_.__l.__data_ = *a1;
      a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
      return;
    }

LABEL_73:
    std::__throw_range_error[abi:ne200100]("wstring_convert: to_bytes error");
  }

  v44 = *(a1 + 8);
  if (!v44)
  {
    goto LABEL_73;
  }

  std::string::__init_copy_ctor_external(a4, *a1, v44);
}

void sub_1B521CFB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::MappedFile *,std::shared_ptr<fst::MappedFile>::__shared_ptr_default_delete<fst::MappedFile,fst::MappedFile>,std::allocator<fst::MappedFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::MappedFile *,std::shared_ptr<fst::MappedFile>::__shared_ptr_default_delete<fst::MappedFile,fst::MappedFile>,std::allocator<fst::MappedFile>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::MappedFile *,std::shared_ptr<fst::MappedFile>::__shared_ptr_default_delete<fst::MappedFile,fst::MappedFile>,std::allocator<fst::MappedFile>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B521D108(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<quasar::FstTokenTransform>::shared_ptr[abi:ne200100]<quasar::SpaceApplyDefaultFstTokenTransform,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::SpaceApplyDefaultFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::SpaceApplyDefaultFstTokenTransform>,std::allocator<quasar::SpaceApplyDefaultFstTokenTransform>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SpaceApplyDefaultFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::SpaceApplyDefaultFstTokenTransform>,std::allocator<quasar::SpaceApplyDefaultFstTokenTransform>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::SpaceApplyDefaultFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::SpaceApplyDefaultFstTokenTransform>,std::allocator<quasar::SpaceApplyDefaultFstTokenTransform>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B521D234(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<quasar::FstTokenTransform>::shared_ptr[abi:ne200100]<quasar::SpaceApplyDefaultFstTokenTransform,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::RewriteApplyCapitalizeFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::RewriteApplyCapitalizeFstTokenTransform>,std::allocator<quasar::RewriteApplyCapitalizeFstTokenTransform>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::RewriteApplyCapitalizeFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::RewriteApplyCapitalizeFstTokenTransform>,std::allocator<quasar::RewriteApplyCapitalizeFstTokenTransform>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::RewriteApplyCapitalizeFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::RewriteApplyCapitalizeFstTokenTransform>,std::allocator<quasar::RewriteApplyCapitalizeFstTokenTransform>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1B521D360(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<quasar::FstTokenTransform>::shared_ptr[abi:ne200100]<quasar::SpaceApplyDefaultFstTokenTransform,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::RewriteApplyDefaultFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::RewriteApplyDefaultFstTokenTransform>,std::allocator<quasar::RewriteApplyDefaultFstTokenTransform>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::RewriteApplyDefaultFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::RewriteApplyDefaultFstTokenTransform>,std::allocator<quasar::RewriteApplyDefaultFstTokenTransform>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::RewriteApplyDefaultFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::RewriteApplyDefaultFstTokenTransform>,std::allocator<quasar::RewriteApplyDefaultFstTokenTransform>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<quasar::ComposeFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::ComposeFstTokenTransform>,std::allocator<quasar::ComposeFstTokenTransform>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::ComposeFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::ComposeFstTokenTransform>,std::allocator<quasar::ComposeFstTokenTransform>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::ComposeFstTokenTransform *,std::shared_ptr<quasar::FstTokenTransform>::__shared_ptr_default_delete<quasar::FstTokenTransform,quasar::ComposeFstTokenTransform>,std::allocator<quasar::ComposeFstTokenTransform>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}