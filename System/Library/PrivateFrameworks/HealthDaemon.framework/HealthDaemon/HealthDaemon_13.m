uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x22AAC8590);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 != 92)
    {
      if (v6 != 94)
      {
        goto LABEL_65;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      return a2 + 1;
    }

    if (a2 + 1 != a3)
    {
      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
        goto LABEL_56;
      }

      if (v11 == 98)
      {
        v12 = 0;
LABEL_56:
        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
        return a2 + 2;
      }
    }

    end = this->__end_;
    marked_count = this->__marked_count_;
    goto LABEL_37;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_65;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_22;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v29 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v29;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_63;
  }

  if (v7 != 61)
  {
LABEL_22:
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_23:
    if (a2 + 1 == a3)
    {
      goto LABEL_100;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v16 == a3)
      {
        goto LABEL_100;
      }

      v17 = v16;
      if (*v16 != 41)
      {
        goto LABEL_100;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v18 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v19 == a3 || (v17 = v19, *v19 != 41))
      {
LABEL_100:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v18);
    }

    --*p_open_count;
    v20 = v17 + 1;
LABEL_34:
    result = a2;
    if (v20 == a2)
    {
      return result;
    }

    goto LABEL_95;
  }

  std::regex_traits<char>::regex_traits(&v38.__traits_);
  memset(&v38.__flags_, 0, 40);
  v38.__flags_ = this->__flags_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
  v9 = v38.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
  this->__marked_count_ += v9;
  if (v8 == a3 || *v8 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_63:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
  result = v8 + 1;
  if (v8 + 1 != a2)
  {
    return result;
  }

  v6 = *a2;
LABEL_65:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v30 = (v6 - 92);
    if (v30 > 0x21)
    {
LABEL_74:
      if (v6 != 91)
      {
        if (v6 == 63)
        {
          goto LABEL_99;
        }

        goto LABEL_82;
      }

      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_34;
    }

    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return a2;
    }

    if (v6 != 92)
    {
      if (v30 == 31)
      {
        goto LABEL_99;
      }

      goto LABEL_74;
    }

LABEL_37:
    v21 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v22 = *v21;
    if (v22 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_94:
      v20 = a2 + 2;
      goto LABEL_95;
    }

    if ((v22 - 49) <= 8)
    {
      v23 = (v22 - 48);
      v20 = a2 + 2;
      if (a2 + 2 != a3)
      {
        while (1)
        {
          v24 = *v20;
          if ((v24 - 48) > 9)
          {
            break;
          }

          if (v23 >= 0x19999999)
          {
            goto LABEL_101;
          }

          v23 = v24 + 10 * v23 - 48;
          if (++v20 == a3)
          {
            v20 = a3;
            break;
          }
        }

        if (!v23)
        {
          goto LABEL_101;
        }
      }

      if (v23 > marked_count)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v23);
      if (v20 != v21)
      {
        goto LABEL_34;
      }

      v22 = *v21;
    }

    if (v22 > 99)
    {
      if (v22 == 119)
      {
        v25 = this;
        v26 = 0;
        goto LABEL_86;
      }

      if (v22 == 115)
      {
        v35 = this;
        v36 = 0;
LABEL_92:
        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
        v32 = started->__mask_ | 0x4000;
        goto LABEL_93;
      }

      if (v22 != 100)
      {
        goto LABEL_87;
      }

      v27 = this;
      v28 = 0;
    }

    else
    {
      if (v22 != 68)
      {
        if (v22 != 83)
        {
          if (v22 == 87)
          {
            v25 = this;
            v26 = 1;
LABEL_86:
            v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v25, v26);
            v33->__mask_ |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
            goto LABEL_94;
          }

LABEL_87:
          v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
          if (v34 == v21)
          {
            v20 = a2;
          }

          else
          {
            v20 = v34;
          }

          goto LABEL_34;
        }

        v35 = this;
        v36 = 1;
        goto LABEL_92;
      }

      v27 = this;
      v28 = 1;
    }

    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
    v32 = started->__mask_ | 0x400;
LABEL_93:
    started->__mask_ = v32;
    goto LABEL_94;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_82;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_23;
  }

LABEL_82:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v20 = a2 + 1;
LABEL_95:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v20, a3, end, marked_count + 1, v37);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA848;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA848;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA890;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA890;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x22AAC8590);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(begin);
}

void sub_228D8DEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_240;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_240;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v90 = a3 - 4;
      while (1)
      {
        v8 = v5;
        if (v5 == a3)
        {
          goto LABEL_147;
        }

        v9 = *v5;
        v8 = v5;
        if (v9 == 93)
        {
          goto LABEL_147;
        }

        v10 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v98 = 0;
        v11 = 0;
        v8 = v5;
        if (v5 + 1 != a3 && v9 == 91)
        {
          v12 = v5[1];
          switch(v12)
          {
            case '.':
              v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, __p);
              v11 = HIBYTE(v98);
              v10 = __p[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_239;
              }

              for (i = 0; v5[i + 2] != 58 || v5[i + 3] != 93; ++i)
              {
                if (v90 - v5 == i)
                {
                  goto LABEL_239;
                }
              }

              v23 = &v5[i + 2];
              if (v23 == a3)
              {
LABEL_239:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v24 = *(a1 + 24);
              std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__dst, v5 + 2, v23, i);
              end_high = HIBYTE(__dst.__end_);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__first_;
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                end_high = __dst.__begin_;
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, end_high + p_dst);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                first = &__dst;
              }

              else
              {
                first = __dst.__first_;
              }

              classname = std::__get_classname(first, v24 & 1);
              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v29 = 0;
              *(v7 + 160) |= classname;
              v18 = &v5[i + 4];
              goto LABEL_143;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_239;
              }

              v13 = v90 - v5;
              v14 = v5 + 2;
              for (j = v5 + 2; ; v14 = j)
              {
                v16 = *j++;
                if (v16 == 61 && *j == 93)
                {
                  break;
                }

                if (!v13)
                {
                  goto LABEL_239;
                }

                --v13;
              }

              if (v14 == a3)
              {
                goto LABEL_239;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__src, a1, v5 + 2, v14);
              v21 = SHIBYTE(v102);
              if ((SHIBYTE(v102) & 0x8000000000000000) != 0)
              {
                v21 = __src[1];
                if (!__src[1])
                {
LABEL_241:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                v22 = __src[0];
              }

              else
              {
                if (!HIBYTE(v102))
                {
                  goto LABEL_241;
                }

                v22 = __src;
              }

              std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__dst, v22, v22 + v21, v21);
              (*(**(a1 + 16) + 32))(__s);
              v31 = HIBYTE(v100);
              if (v100 < 0)
              {
                v31 = __s[1];
              }

              v32 = (v7 + 136);
              if (v31 != 1)
              {
                if (v31 == 12)
                {
                  v33 = __s;
                  if (v100 < 0)
                  {
                    v33 = __s[0];
                  }

                  *(v33 + 11) = *(v33 + 3);
                }

                else if (SHIBYTE(v100) < 0)
                {
                  *__s[0] = 0;
                  __s[1] = 0;
                }

                else
                {
                  LOBYTE(__s[0]) = 0;
                  HIBYTE(v100) = 0;
                }
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
                v32 = (v7 + 136);
              }

              v39 = HIBYTE(v100);
              if (v100 < 0)
              {
                v39 = __s[1];
              }

              if (v39)
              {
                v41 = *(v7 + 144);
                v40 = *(v7 + 152);
                if (v41 >= v40)
                {
                  v45 = *v32;
                  v46 = v32;
                  v47 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v32) >> 3);
                  v48 = v47 + 1;
                  if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
                  }

                  v49 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v45) >> 3);
                  if (2 * v49 > v48)
                  {
                    v48 = 2 * v49;
                  }

                  if (v49 >= 0x555555555555555)
                  {
                    v50 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v50 = v48;
                  }

                  __dst.__end_cap_.__value_ = v46;
                  if (v50)
                  {
                    if (v50 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  begin = (24 * v47);
                  __dst.__first_ = 0;
                  __dst.__begin_ = (24 * v47);
                  value = 0;
                  __dst.__end_ = (24 * v47);
                  __dst.__end_cap_.__value_ = 0;
                  if (v100 < 0)
                  {
                    std::string::__init_copy_ctor_external(begin, __s[0], __s[1]);
                    begin = __dst.__begin_;
                    end = __dst.__end_;
                    value = __dst.__end_cap_.__value_;
                  }

                  else
                  {
                    *&begin->__r_.__value_.__l.__data_ = *__s;
                    *(24 * v47 + 0x10) = v100;
                    end = (24 * v47);
                  }

                  v52 = end + 1;
                  v56 = *(v7 + 136);
                  v57 = *(v7 + 144) - v56;
                  v58 = begin - v57;
                  memcpy(begin - v57, v56, v57);
                  v59 = *(v7 + 136);
                  *(v7 + 136) = v58;
                  *(v7 + 144) = v52;
                  v60 = *(v7 + 152);
                  *(v7 + 152) = value;
                  __dst.__end_ = v59;
                  __dst.__end_cap_.__value_ = v60;
                  __dst.__first_ = v59;
                  __dst.__begin_ = v59;
                  std::__split_buffer<std::string>::~__split_buffer(&__dst);
                }

                else
                {
                  if (SHIBYTE(v100) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v42 = *__s;
                    *(v41 + 16) = v100;
                    *v41 = v42;
                  }

                  v52 = (v41 + 24);
                  *(v7 + 144) = v41 + 24;
                }

                *(v7 + 144) = v52;
              }

              else
              {
                v43 = HIBYTE(v102);
                if (SHIBYTE(v102) < 0)
                {
                  v43 = __src[1];
                }

                if (v43 == 2)
                {
                  v51 = __src;
                  if (SHIBYTE(v102) < 0)
                  {
                    v51 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v51, *(v51 + 1));
                }

                else
                {
                  if (v43 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  v44 = __src;
                  if (SHIBYTE(v102) < 0)
                  {
                    v44 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v44);
                }
              }

              if (SHIBYTE(v100) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v102) < 0)
              {
                operator delete(__src[0]);
              }

              v29 = 0;
              v18 = (v14 + 2);
LABEL_143:
              v37 = v5;
              goto LABEL_144;
            default:
              v10 = 0;
              v11 = 0;
              v8 = v5;
              break;
          }
        }

        v18 = (*(a1 + 24) & 0x1F0);
        if (v11 >= 0)
        {
          v10 = v11;
        }

        if (!v10)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v19 = *v8;
            if (v19 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v8 + 1, a3, __p);
              }

              else
              {
                v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v8 + 1, a3, __p, v7);
              }

              v8 = v20;
              goto LABEL_76;
            }
          }

          else
          {
            LOBYTE(v19) = *v8;
          }

          if (v11 < 0)
          {
            v30 = __p[0];
            __p[1] = 1;
          }

          else
          {
            HIBYTE(v98) = 1;
            v30 = __p;
          }

          *v30 = v19;
          *(v30 + 1) = 0;
          ++v8;
        }

LABEL_76:
        if (v8 != a3)
        {
          v34 = *v8;
          if (v34 != 93)
          {
            v36 = v8 + 1;
            if (v8 + 1 != a3 && v34 == 45 && *v36 != 93)
            {
              v95[0] = 0;
              v95[1] = 0;
              v96 = 0;
              v37 = v8 + 2;
              if (v8 + 2 != a3 && *v36 == 91 && *v37 == 46)
              {
                v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v8 + 3, a3, v95);
                goto LABEL_152;
              }

              if ((v18 | 0x40) == 0x40)
              {
                LODWORD(v36) = *v36;
                if (v36 == 92)
                {
                  if (v18)
                  {
                    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v8 + 2, a3, v95);
                  }

                  else
                  {
                    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v8 + 2, a3, v95, v7);
                  }

LABEL_152:
                  v37 = v38;
LABEL_153:
                  v18 = &__dst;
                  *v93 = *__p;
                  v94 = v98;
                  __p[1] = 0;
                  v98 = 0;
                  *v91 = *v95;
                  v92 = v96;
                  v95[0] = 0;
                  v95[1] = 0;
                  v96 = 0;
                  __p[0] = 0;
                  if (*(v7 + 170) == 1)
                  {
                    if (*(v7 + 169) == 1)
                    {
                      v62 = v93[1];
                      if (SHIBYTE(v94) >= 0)
                      {
                        v62 = SHIBYTE(v94);
                      }

                      if (v62)
                      {
                        v63 = 0;
                        v64 = SHIBYTE(v94) >> 63;
                        do
                        {
                          if (v64)
                          {
                            v65 = v93[0];
                          }

                          else
                          {
                            v65 = v93;
                          }

                          v66 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(v65 + v63));
                          if (SHIBYTE(v94) >= 0)
                          {
                            v67 = v93;
                          }

                          else
                          {
                            v67 = v93[0];
                          }

                          *(v67 + v63++) = v66;
                          v68 = SHIBYTE(v94);
                          v64 = SHIBYTE(v94) >> 63;
                          if (SHIBYTE(v94) < 0)
                          {
                            v68 = v93[1];
                          }
                        }

                        while (v63 < v68);
                      }

                      v69 = v91[1];
                      if (v92 >= 0)
                      {
                        v69 = SHIBYTE(v92);
                      }

                      if (v69)
                      {
                        v70 = 0;
                        v71 = SHIBYTE(v92) >> 63;
                        do
                        {
                          if (v71)
                          {
                            v72 = v91[0];
                          }

                          else
                          {
                            v72 = v91;
                          }

                          v73 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(v72 + v70));
                          if (v92 >= 0)
                          {
                            v74 = v91;
                          }

                          else
                          {
                            v74 = v91[0];
                          }

                          *(v74 + v70++) = v73;
                          v75 = SHIBYTE(v92);
                          v71 = SHIBYTE(v92) >> 63;
                          if (v92 < 0)
                          {
                            v75 = v91[1];
                          }
                        }

                        while (v70 < v75);
                      }
                    }

                    v76 = HIBYTE(v94);
                    if (SHIBYTE(v94) >= 0)
                    {
                      v77 = v93;
                    }

                    else
                    {
                      v77 = v93[0];
                    }

                    if (SHIBYTE(v94) < 0)
                    {
                      v76 = v93[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__src, v7 + 16, v77, &v76[v77]);
                    v78 = HIBYTE(v92);
                    if (v92 >= 0)
                    {
                      v79 = v91;
                    }

                    else
                    {
                      v79 = v91[0];
                    }

                    if (v92 < 0)
                    {
                      v78 = v91[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__s, v7 + 16, v79, &v78[v79]);
                    *&__dst.__first_ = *__src;
                    __dst.__end_ = v102;
                    __src[1] = 0;
                    v102 = 0;
                    __dst.__end_cap_ = *__s;
                    v104 = v100;
                    __s[0] = 0;
                    __s[1] = 0;
                    v100 = 0;
                    __src[0] = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v104) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      operator delete(__dst.__first_);
                    }

                    if (SHIBYTE(v100) < 0)
                    {
                      operator delete(__s[0]);
                    }

                    if (SHIBYTE(v102) < 0)
                    {
                      v80 = __src[0];
                      goto LABEL_223;
                    }
                  }

                  else
                  {
                    v81 = HIBYTE(v94);
                    if (SHIBYTE(v94) < 0)
                    {
                      v81 = v93[1];
                    }

                    if (v81 != 1)
                    {
                      goto LABEL_243;
                    }

                    v82 = HIBYTE(v92);
                    if (v92 < 0)
                    {
                      v82 = v91[1];
                    }

                    if (v82 != 1)
                    {
LABEL_243:
                      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
                    }

                    if (*(v7 + 169) == 1)
                    {
                      if (SHIBYTE(v94) >= 0)
                      {
                        v83 = v93;
                      }

                      else
                      {
                        v83 = v93[0];
                      }

                      v84 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v83);
                      if (SHIBYTE(v94) >= 0)
                      {
                        v85 = v93;
                      }

                      else
                      {
                        v85 = v93[0];
                      }

                      *v85 = v84;
                      if (v92 >= 0)
                      {
                        v86 = v91;
                      }

                      else
                      {
                        v86 = v91[0];
                      }

                      v87 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v86);
                      if (v92 >= 0)
                      {
                        v88 = v91;
                      }

                      else
                      {
                        v88 = v91[0];
                      }

                      *v88 = v87;
                    }

                    *&__dst.__first_ = *v93;
                    __dst.__end_ = v94;
                    v93[0] = 0;
                    v93[1] = 0;
                    v94 = 0;
                    __dst.__end_cap_ = *v91;
                    v104 = v92;
                    v91[0] = 0;
                    v91[1] = 0;
                    v92 = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v104) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      v80 = __dst.__first_;
LABEL_223:
                      operator delete(v80);
                    }
                  }

                  if (SHIBYTE(v92) < 0)
                  {
                    operator delete(v91[0]);
                  }

                  if (SHIBYTE(v94) < 0)
                  {
                    operator delete(v93[0]);
                  }

                  if (SHIBYTE(v96) < 0)
                  {
                    operator delete(v95[0]);
                  }

                  v29 = 1;
LABEL_144:
                  if (SHIBYTE(v98) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v8 = v37;
                  if ((v29 & 1) == 0)
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_147;
                }
              }

              else
              {
                LOBYTE(v36) = *v36;
              }

              HIBYTE(v96) = 1;
              LOWORD(v95[0]) = v36;
              goto LABEL_153;
            }
          }
        }

        if (SHIBYTE(v98) < 0)
        {
          if (__p[1])
          {
            if (__p[1] == 1)
            {
              v35 = __p[0];
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v35);
LABEL_95:
              v29 = 1;
              v37 = v8;
              goto LABEL_144;
            }

            v35 = __p[0];
LABEL_94:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v35, v35[1]);
            goto LABEL_95;
          }

          operator delete(__p[0]);
        }

        else if (HIBYTE(v98))
        {
          v35 = __p;
          if (HIBYTE(v98) == 1)
          {
            goto LABEL_85;
          }

          goto LABEL_94;
        }

LABEL_147:
        v18 = v8;
LABEL_148:
        v61 = v18 == v5;
        v5 = v18;
        if (v61)
        {
          goto LABEL_232;
        }
      }
    }

    v18 = v5;
LABEL_232:
    if (v18 == a3)
    {
      goto LABEL_240;
    }

    if (LOBYTE(v18->__first_) == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      v18 = (v18 + 1);
    }

    if (v18 == a3 || LOBYTE(v18->__first_) != 93)
    {
LABEL_240:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return &v18->__first_ + 1;
  }

  return a2;
}

void sub_228D8EAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  *(v48 + 144) = v49;
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 13;
          goto LABEL_91;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_73;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 9;
          goto LABEL_91;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_99;
        }

        v9 = a2[1];
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_99;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_99;
        }

        v10 = *v4;
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v11 = -87;
        }

        v6 = 16 * (v11 + v10);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_99;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v13 = -87;
        }

        if (v4 + 2 != a3)
        {
          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v14 |= 0x20u;
          if ((v14 - 97) < 6)
          {
            v15 = -87;
LABEL_55:
            v16 = v14 + 16 * (v6 + v13 + v12) + v15;
            if (a4)
            {
              if (*(a4 + 23) < 0)
              {
                a4[1] = 1;
                a4 = *a4;
              }

              else
              {
                *(a4 + 23) = 1;
              }

              *a4 = v16;
              *(a4 + 1) = 0;
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
            }

            v4 += 3;
            return v4;
          }
        }

LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_73:
        v17 = v5;
        if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_99;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return ++v4;
        }

        goto LABEL_78;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 11;
LABEL_91:
        *a4 = v18;
        return ++v4;
      }

      v17 = 11;
    }

LABEL_78:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 12;
        goto LABEL_91;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_73;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 10;
        goto LABEL_91;
      }

      v17 = 10;
    }

    goto LABEL_78;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v17 = 0;
    goto LABEL_78;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_99;
    }

    goto LABEL_73;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_99;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_99;
  }

  v8 = v7 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_228D8F408(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x22AAC8590](v2, v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA920;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA920;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA968;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA968;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
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

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
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

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA9F8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA9F8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_283BEAA40;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_283BEAA40;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_228D901D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x22AAC8590](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x22AAC8590);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_63;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v74, &__s);
  __p = v74;
  size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v74.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v74);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v74;
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v74.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v74.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_168;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_168:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    negate = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v22 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v22)
  {
    goto LABEL_38;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_164;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v74);
    v16 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ == v16)
    {
LABEL_32:
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 3;
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v16->first.__r_.__value_.__r.__words[v18 - 3], &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, (&this->__ranges_.__begin_->first.__r_.__value_.__l.__data_ + v18 * 8)) >= 1)
      {
        ++v17;
        v16 = this->__ranges_.__begin_;
        v18 += 6;
        if (v17 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v16) >> 4))
        {
          goto LABEL_32;
        }
      }

      v20 = 5;
      v19 = 1;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v19)
    {
      v21 = 1;
      goto LABEL_144;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v21 = 0;
    goto LABEL_146;
  }

  p_s = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v74);
  v39 = this->__equivalences_.__begin_;
  v40 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v41 = this->__equivalences_.__end_ - v39;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v42 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v39->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v39->__r_.__value_.__l.__size_;
      }

      if (v43 == v47)
      {
        v49 = v48 >= 0 ? v39 : v39->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v43))
        {
          break;
        }
      }

      v46 = v45++ < v42;
      ++v39;
      if (!--v44)
      {
        goto LABEL_141;
      }
    }

    v21 = 1;
    v20 = 5;
    if (v40 < 0)
    {
LABEL_142:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_141:
    v20 = 0;
    v21 = 0;
    if (v40 < 0)
    {
      goto LABEL_142;
    }
  }

  if (!v46)
  {
LABEL_146:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v68 = tab[__src];
      if (((v68 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_164;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v68) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_163:
        negate = v21;
LABEL_165:
        v9 = 2;
        goto LABEL_63;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_165;
        }
      }

      goto LABEL_163;
    }

LABEL_164:
    negate = 1;
    goto LABEL_165;
  }

LABEL_144:
  v9 = 2;
  negate = v21;
  if (v20)
  {
    goto LABEL_63;
  }

LABEL_39:
  v23 = *a2->__current_;
  v74.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v23) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v23);
    v74.__r_.__value_.__s.__data_[0] = v23;
  }

  v24 = this->__chars_.__begin_;
  v25 = this->__chars_.__end_ - v24;
  if (v25)
  {
    if (v25 <= 1)
    {
      v25 = 1;
    }

    do
    {
      v26 = *v24++;
      if (v26 == v23)
      {
        goto LABEL_62;
      }
    }

    while (--v25);
  }

  v27 = this->__neg_mask_;
  if (v27 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v23 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v23] & v27) == 0)
    {
      v29 = (v27 >> 7) & 1;
      v28 = v23 == 95 ? v29 : 0;
    }

    else
    {
      v28 = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v23, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v28 & 1) == 0 && !v33)
    {
LABEL_62:
      negate = 1;
      goto LABEL_63;
    }
  }

  v36 = this->__ranges_.__begin_;
  v37 = this->__ranges_.__end_;
  if (v36 == v37)
  {
    goto LABEL_100;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v74, &v74.__r_.__value_.__s.__data_[1]);
    v36 = this->__ranges_.__begin_;
    v37 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v23;
  }

  if (v37 == v36)
  {
LABEL_96:
    v52 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 3;
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36->first.__r_.__value_.__r.__words[v51 - 3], &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, (&this->__ranges_.__begin_->first.__r_.__value_.__l.__data_ + v51 * 8)) >= 1)
    {
      ++v50;
      v36 = this->__ranges_.__begin_;
      v51 += 6;
      if (v50 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v36) >> 4))
      {
        goto LABEL_96;
      }
    }

    v52 = 1;
    negate = 1;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v52 & 1) == 0)
  {
LABEL_100:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_135:
      v64 = this->__mask_;
      if ((v74.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v74.__r_.__value_.__s.__data_[0]] & v64) != 0)
      {
        goto LABEL_62;
      }

      v65 = (v64 >> 7) & 1;
      if (v74.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v65) = 0;
      }

      negate |= v65;
      goto LABEL_63;
    }

    v53 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v74, &v74.__r_.__value_.__s.__data_[1]);
    v54 = this->__equivalences_.__begin_;
    v55 = this->__equivalences_.__end_ - v54;
    if (v55)
    {
      v70 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v71 = v9;
      v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = __s.__r_.__value_.__r.__words[0];
      }

      if (v56 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3);
      }

      v59 = 1;
      v60 = 1;
      while (1)
      {
        v61 = HIBYTE(v54->__r_.__value_.__r.__words[2]);
        v62 = v61;
        if ((v61 & 0x80u) != 0)
        {
          v61 = v54->__r_.__value_.__l.__size_;
        }

        if (v57 == v61)
        {
          v63 = v62 >= 0 ? v54 : v54->__r_.__value_.__r.__words[0];
          if (!memcmp(v53, v63, v57))
          {
            break;
          }
        }

        v60 = v59++ < v56;
        ++v54;
        if (!--v58)
        {
          goto LABEL_132;
        }
      }

      negate = 1;
LABEL_132:
      v9 = v71;
      if ((v70 & 0x80) == 0)
      {
LABEL_134:
        if (v60)
        {
          goto LABEL_63;
        }

        goto LABEL_135;
      }
    }

    else
    {
      v60 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_134;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_134;
  }

LABEL_63:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v35 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v35 = -995;
  }

  a2->__do_ = v35;
  a2->__node_ = first;
}

void sub_228D90B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(uint64_t a1)
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

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_228D90EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

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
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_228D9109C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        std::vector<char>::push_back[abi:ne200100](a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    std::vector<char>::push_back[abi:ne200100](v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_228D91A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_228D91D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
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

  JUMPOUT(0x22AAC8590);
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

  JUMPOUT(0x22AAC8590);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x22AAC8590);
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

  JUMPOUT(0x22AAC8590);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_283BEAC08;
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

  JUMPOUT(0x22AAC8590);
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
  MEMORY[0x22AAC82B0](exception, 15);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
    if (v7 == a2)
    {
LABEL_12:
      v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }
  }

  else
  {
    v7 = a2 + 1;
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
      return v7;
    }

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

  if (v7 == a2 && v7 != a3 && v7 + 1 != a3 && *v7 == 92)
  {
    v10 = v7[1];
    if (v10 == 40)
    {
      v11 = v7 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      do
      {
        v13 = v11;
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v11, a3);
        v11 = v14;
      }

      while (v14 != v13);
      if (v13 == a3 || v14 + 1 == a3 || *v14 != 92 || v14[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v14 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
    }

    else
    {
      v15 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v10);
      v16 = 2;
      if (!v15)
      {
        v16 = 0;
      }

      v7 += v16;
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
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 2, a3, &__max);
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
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v15 + 1, a3, &v26);
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

  JUMPOUT(0x22AAC8590);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_24;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
LABEL_14:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

LABEL_15:
    v12 = 1;
    goto LABEL_16;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (!this->__open_count_)
      {
        LOBYTE(v8) = 41;
        goto LABEL_15;
      }

LABEL_24:
      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_25;
    }

    goto LABEL_14;
  }

LABEL_4:
  v10 = a2 + 1;
  if (a2 + 1 == a3 || v8 != 92)
  {
LABEL_22:
    if (v8 == 46)
    {
      operator new();
    }

    goto LABEL_24;
  }

  v11 = *v10;
  LOBYTE(v8) = *v10;
  v12 = 2;
  if ((v11 - 36) <= 0x3A && ((1 << (v11 - 36)) & 0x5800000080004F1) != 0 || (v11 - 123) < 3)
  {
LABEL_16:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v8);
    v13 = &a2[v12];
    goto LABEL_37;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, a2 + 1, a3, 0);
  }

  else
  {
    v14 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v8);
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    v13 = &a2[v15];
  }

  if (v13 == a2)
  {
    v8 = *v13;
    goto LABEL_22;
  }

LABEL_25:
  if (v13 == a2 && v13 != a3)
  {
    v16 = *v13;
    switch(v16)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v17 = this->__marked_count_;
        ++this->__open_count_;
        v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, v13 + 1, a3);
        if (v18 == a3 || (v13 = v18, *v18 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v17);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_36;
    }

    ++v13;
  }

LABEL_36:
  if (v13 == a2)
  {
    return v13;
  }

LABEL_37:
  v19 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v13, a3, end, marked_count + 1, v19);
}

void std::__function::__func<health::HDDemangleBacktraceLine(std::string)::$_0,std::allocator<health::HDDemangleBacktraceLine(std::string)::$_0>,std::string ()(std::match_results<std::__wrap_iter<char const*>>)>::operator()(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
  if (v8 >= 2)
  {
    if (v3[5])
    {
      v9 = v3[3];
      v10 = v3[4];
      goto LABEL_5;
    }

LABEL_8:
    memset(&mangled, 0, sizeof(mangled));
    p_mangled = &mangled;
    goto LABEL_9;
  }

  v9 = *(a1 + 24);
  v10 = v6;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&mangled, v9, v10, v10 - v9);
  if ((mangled.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_mangled = &mangled;
  }

  else
  {
    p_mangled = mangled.__r_.__value_.__r.__words[0];
  }

LABEL_9:
  v12 = __cxa_demangle(p_mangled, 0, 0, 0);
  v13 = v12;
  if ((SHIBYTE(mangled.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_15:
    if (v4 == v3)
    {
      if (v7)
      {
LABEL_34:
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a2, v5, v6, v6 - v5);
        if (!v3)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else if (*(v3 + 16) == 1)
    {
      v5 = *v3;
      v6 = v3[1];
      goto LABEL_34;
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_35;
  }

  operator delete(mangled.__r_.__value_.__l.__data_);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_11:
  std::string::basic_string[abi:ne200100]<0>(&mangled, v13);
  if (v8 < 3)
  {
    if (v7)
    {
      goto LABEL_19;
    }
  }

  else if (v3[8])
  {
    v5 = v3[6];
    v6 = v3[7];
LABEL_19:
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, v5, v6, v6 - v5);
    v14 = HIBYTE(v22);
    v16 = __p;
    v15 = v21;
    goto LABEL_21;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  __p = 0;
  v21 = 0;
  v22 = 0;
LABEL_21:
  if ((v14 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v16;
  }

  if ((v14 & 0x80u) == 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = v15;
  }

  v19 = std::string::append(&mangled, p_p, v18);
  *a2 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(mangled.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(mangled.__r_.__value_.__l.__data_);
  }

  free(v13);
  if (v3)
  {
LABEL_35:
    operator delete(v3);
  }
}

void sub_228D93384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<health::HDDemangleBacktraceLine(std::string)::$_0,std::allocator<health::HDDemangleBacktraceLine(std::string)::$_0>,std::string ()(std::match_results<std::__wrap_iter<char const*>>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::string ()(std::match_results<std::__wrap_iter<char const*>>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _HDAddSequenceEpochColumnsToCloudSyncStores(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF910 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddBluetoothIdentifierColumnToDevicesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 unprotectedDatabase];
  if ([v5 executeUncachedSQL:@"CREATE TABLE source_devices_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{name TEXT NOT NULL, bluetooth_identifier TEXT, manufacturer TEXT NOT NULL, model TEXT NOT NULL, hardware TEXT NOT NULL, firmware TEXT NOT NULL, software TEXT NOT NULL, localIdentifier TEXT NOT NULL, FDAUDI TEXT NOT NULL, creation_date REAL NOT NULL, sync_provenance INTEGER NOT NULL, uuid BLOB UNIQUE NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, sync_provenance, uuid, sync_identity, bluetooth_identifier));", a4}])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO source_devices_new (ROWID, name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid, sync_identity) SELECT ROWID, name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid, sync_identity FROM source_devices"];;
    v14[0] = v6;
    v7 = 1;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v9 = [v5 executeSQLStatements:v8 error:a4];

    if (v9)
    {
      v13[0] = @"DROP TABLE source_devices;";
      v13[1] = @"ALTER TABLE source_devices_new RENAME TO source_devices;";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
      v7 = [v5 executeSQLStatements:v10 error:a4] ^ 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _HDUpdateSourcesToUseHiddenSourceOption(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = @"UPDATE sources SET source_options=274 FROM logical_sources WHERE logical_sources.ROWID = sources.logical_source_id AND logical_sources.bundle_id='com.apple.health.GymKit'";
  v12 = @"UPDATE sources SET source_options=386 FROM logical_sources WHERE logical_sources.ROWID = sources.logical_source_id AND logical_sources.bundle_id='com.apple.BTLEServer'";
  v13 = @"UPDATE sources SET source_options=386 FROM logical_sources WHERE logical_sources.ROWID = sources.logical_source_id AND logical_sources.bundle_id='com.apple.heartratecoordinatord'";
  v5 = MEMORY[0x277CBEA60];
  v6 = a2;
  v7 = [v5 arrayWithObjects:&v11 count:3];
  v8 = [v6 unprotectedDatabase];

  LODWORD(a4) = [v8 executeSQLStatements:v7 error:a4];
  v9 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDUpdateWorkoutSessionEntityFailureFromBoolToNSError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF970 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutAssociatedObjectSampleTypeColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF988 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRemoveSingleBloodPressureAuthorizations(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 unprotectedDatabase];
  v9[0] = @"DELETE FROM authorization                                         WHERE (source_id, object_type) IN(                                            SELECT source_id, object_type                                             FROM authorization                                             WHERE object_type IN (16, 17)                                             GROUP BY source_id                                             HAVING COUNT(DISTINCT object_type) = 1)";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDResetMismatchedBloodPressureAuthorizations(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 unprotectedDatabase];
  v9[0] = @"UPDATE authorization                                     SET status = 100                                     WHERE EXISTS(                                        SELECT 1                                         FROM authorization AS a2                                         WHERE authorization.source_id = a2.source_id                                             AND authorization.object_type IN (16, 17)                                             AND a2.object_type IN (16, 17)                                             AND authorization.object_type != a2.object_type                                             AND authorization.status != a2.status                                    )";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  LODWORD(a4) = [v5 executeSQLStatements:v6 error:a4];

  v7 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDResetECGNanoSyncAnchorsOnWatch(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = [v6 unprotectedDatabase];
    v10 = [v9 executeSQLStatements:&unk_283CAFA00 error:a4] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _HDUpdateAssocationsForBehavior(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF8F8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddConceptAuthorizationRecordsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF940 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddDoseUnitStringColumnToDoseEventTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF958 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMoveMHTablesOutOfFutureMigrations(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF9A0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddBirthDateTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF928 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddHFSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF9B8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDCreateClinicalHealthLinksTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF9D0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSRTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF9E8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddHKHRSampleTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[38] = *MEMORY[0x277D85DE8];
  v11[0] = @"DROP TABLE IF EXISTS hr_type_samples";
  v11[1] = @"DROP TABLE IF EXISTS hr_demo";
  v11[2] = @"DROP TABLE IF EXISTS hr_intro_snapshots";
  v11[3] = @"DROP TABLE IF EXISTS hr_intro_snapshots_m_r";
  v11[4] = @"DROP TABLE IF EXISTS hr_domain_snapshots";
  v11[5] = @"DROP TABLE IF EXISTS hr_domain_snapshots_m_r";
  v11[6] = @"DROP TABLE IF EXISTS hr_indicator_snapshots";
  v11[7] = @"DROP TABLE IF EXISTS hr_indicator_snapshots_m_r";
  v11[8] = @"DROP TABLE IF EXISTS hr_constellation_snapshots";
  v11[9] = @"DROP TABLE IF EXISTS hr_constellation_snapshots_m_r";
  v11[10] = @"DROP TABLE IF EXISTS hr_indicator_collection";
  v11[11] = @"DROP TABLE IF EXISTS hr_indicator_e_results";
  v11[12] = @"DROP TABLE IF EXISTS hr_indicator_c_results";
  v11[13] = @"DROP TABLE IF EXISTS hr_indicator_e";
  v11[14] = @"DROP TABLE IF EXISTS hr_i_snapshot_collection";
  v11[15] = @"DROP TABLE IF EXISTS hr_i_c_collection";
  v11[16] = @"DROP TABLE IF EXISTS hr_previous_content";
  v11[17] = @"DROP TABLE IF EXISTS hr_f_a_b_measure_collection";
  v11[18] = @"DROP TABLE IF EXISTS hr_f_a_a_measure_collection";
  v11[19] = @"CREATE TABLE IF NOT EXISTS hr_type_samples          (          data_id                INTEGER PRIMARY KEY REFERENCES samples (data_id) ON DELETE CASCADE,           r_identifier           BLOB UNIQUE     NOT NULL,           r_version              INTEGER         NOT NULL       )";
  v11[20] = @"CREATE TABLE IF NOT EXISTS hr_demo          (          ROWID              INTEGER PRIMARY KEY AUTOINCREMENT,           data_id            INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           demo_data          BLOB            NOT NULL      )";
  v11[21] = @"CREATE TABLE IF NOT EXISTS hr_intro_snapshots          (          intro_snapshot_id   BLOB PRIMARY KEY,           data_id             INTEGER NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE      )";
  v11[22] = @"CREATE TABLE IF NOT EXISTS hr_intro_snapshots_m_r          (          ROWID               INTEGER PRIMARY KEY AUTOINCREMENT,           intro_snapshot_id   BLOB            NOT NULL REFERENCES hr_intro_snapshots (intro_snapshot_id) ON DELETE CASCADE,           usage_identifier    TEXT            NOT NULL,           m_type              TEXT            NOT NULL,           m_identifier        TEXT            NOT NULL       )";
  v11[23] = @"CREATE TABLE IF NOT EXISTS hr_domain_snapshots          (          domain_snapshot_id  BLOB PRIMARY KEY,           data_id             INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           domain_identifier   TEXT            NOT NULL      )";
  v11[24] = @"CREATE TABLE IF NOT EXISTS hr_domain_snapshots_m_r          (          ROWID                   INTEGER PRIMARY KEY AUTOINCREMENT,           domain_snapshot_id      BLOB            NOT NULL REFERENCES hr_domain_snapshots (domain_snapshot_id) ON DELETE CASCADE,           usage_identifier        TEXT            NOT NULL,           m_type                  TEXT            NOT NULL,           m_identifier            TEXT            NOT NULL       )";
  v11[25] = @"CREATE TABLE IF NOT EXISTS hr_indicator_snapshots          (          indicator_snapshot_id   BLOB PRIMARY KEY,           data_id                 INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           measure_identifier      TEXT            NOT NULL,           indicator_type          TEXT            NOT NULL       )";
  v11[26] = @"CREATE TABLE IF NOT EXISTS hr_indicator_snapshots_m_r          (          ROWID                   INTEGER PRIMARY KEY AUTOINCREMENT,           indicator_snapshot_id   BLOB            NOT NULL REFERENCES hr_indicator_snapshots (indicator_snapshot_id) ON DELETE CASCADE,           usage_identifier        TEXT            NOT NULL,           m_type                  TEXT            NOT NULL,           m_identifier            TEXT            NOT NULL       )";
  v11[27] = @"CREATE TABLE IF NOT EXISTS hr_constellation_snapshots          (          constellation_snapshot_id   BLOB PRIMARY KEY,           data_id                     INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           constellation_identifier    TEXT            NOT NULL,           constellation_type          TEXT            NOT NULL       )";
  v11[28] = @"CREATE TABLE IF NOT EXISTS hr_constellation_snapshots_m_r          (          ROWID                       INTEGER PRIMARY KEY AUTOINCREMENT,           constellation_snapshot_id   BLOB            NOT NULL REFERENCES hr_constellation_snapshots (constellation_snapshot_id) ON DELETE CASCADE,           usage_identifier            TEXT            NOT NULL,           m_type                      TEXT            NOT NULL,           m_identifier                TEXT            NOT NULL       )";
  v11[29] = @"CREATE TABLE IF NOT EXISTS hr_indicator_collection          (          ROWID                               INTEGER PRIMARY KEY AUTOINCREMENT,           data_id                             INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           collection_identifier               TEXT            NOT NULL,           collection_type                     TEXT            NOT NULL,           measure_identifier                  TEXT            NOT NULL      )";
  v11[30] = @"CREATE TABLE IF NOT EXISTS hr_indicator_e_results          (          ROW_ID                     INTEGER PRIMARY KEY AUTOINCREMENT,           indicator_e_results_id     BLOB            NOT NULL,           data_id                    INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           r_source                   TEXT            NOT NULL,           measure_identifier         TEXT            NOT NULL,           is_c_e                     INTEGER         NOT NULL,           c_u_r                      INTEGER      )";
  v11[31] = @"CREATE TABLE IF NOT EXISTS hr_indicator_c_results          (          ROWID                          INTEGER PRIMARY KEY AUTOINCREMENT,           indicator_e_results_row_id     INTEGER         NOT NULL REFERENCES hr_indicator_e_results (ROW_ID) ON DELETE CASCADE,           level_id                       TEXT            NOT NULL,            quantity_value                 REAL,                                unit_string                    TEXT,                                scale_level_ids                BLOB,                                thresholds                     BLOB,                                score                          REAL,                                start_date                     REAL            NOT NULL,            end_date                       REAL            NOT NULL,            contributing_data              BLOB                            )";
  v11[32] = @"CREATE TABLE IF NOT EXISTS hr_indicator_e          (          ROWID                          INTEGER PRIMARY KEY AUTOINCREMENT,           indicator_e_results_row_id     INTEGER         NOT NULL REFERENCES hr_indicator_e_results (ROW_ID) ON DELETE CASCADE,           e_identifier                   TEXT            NOT NULL,           contributing_data              BLOB                           )";
  v11[33] = @"CREATE TABLE IF NOT EXISTS hr_i_snapshot_collection          (          i_snapshot_identifier      BLOB PRIMARY KEY,           data_id                             INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           measure_identifier                  TEXT            NOT NULL      )";
  v11[34] = @"CREATE TABLE IF NOT EXISTS hr_i_c_collection         (          ROWID                      INTEGER PRIMARY KEY AUTOINCREMENT,           i_snapshot_identifier      BLOB            NOT NULL REFERENCES hr_i_snapshot_collection (i_snapshot_identifier) ON DELETE CASCADE,           i_c_identifier             TEXT            NOT NULL,           i_c_value                  BLOB            NOT NULL       )";
  v11[35] = @"CREATE TABLE IF NOT EXISTS hr_previous_content          (          ROWID          INTEGER PRIMARY KEY AUTOINCREMENT,           data_id        INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           r_end_date     REAL            NOT NULL      )";
  v11[36] = @"CREATE TABLE IF NOT EXISTS hr_f_a_b_measure_collection        (        ROWID                    INTEGER PRIMARY KEY AUTOINCREMENT,         f_a_identifier           BLOB            NOT NULL,         b_measure_identifier     TEXT            NOT NULL     )";
  v11[37] = @"CREATE TABLE IF NOT EXISTS hr_f_a_a_measure_collection        (        ROWID                   INTEGER PRIMARY KEY AUTOINCREMENT,         f_a_identifier          BLOB            NOT NULL,         a_measure_identifier    TEXT            NOT NULL    )";
  v5 = MEMORY[0x277CBEA60];
  v6 = a2;
  v7 = [v5 arrayWithObjects:v11 count:38];
  v8 = [v6 protectedDatabase];

  LODWORD(a4) = [v8 executeSQLStatements:v7 error:a4];
  v9 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddHKHRSampleTablesPhase2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = @"DROP TABLE IF EXISTS hr_c_results";
  v12 = @"DROP TABLE IF EXISTS hr_e_results";
  v13 = @"DROP TABLE IF EXISTS hr_f_a_b_measure_collection";
  v14 = @"DROP TABLE IF EXISTS hr_f_a_a_measure_collection";
  v15 = @"DROP TABLE IF EXISTS hr_f_a_measure_collection";
  v16 = @"DROP TABLE IF EXISTS hr_indicator_e_results";
  v17 = @"DROP TABLE IF EXISTS hr_indicator_c_results";
  v18 = @"DROP TABLE IF EXISTS hr_indicator_e";
  v19 = @"CREATE TABLE IF NOT EXISTS hr_c_results          (          ROWID                         INTEGER PRIMARY KEY AUTOINCREMENT,           data_id                       INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           source                        TEXT            NOT NULL,           measure_identifier            TEXT            NOT NULL,           level_id                      TEXT            NOT NULL,           quantity_value                REAL,                               unit_string                   TEXT,                               scale_level_ids               BLOB,                               thresholds                    BLOB,                               score                         REAL,                               start_date                    REAL            NOT NULL,           end_date                      REAL            NOT NULL,           contributing_data             BLOB                           )";
  v20 = @"CREATE TABLE IF NOT EXISTS hr_e_results          (          ROWID                     INTEGER PRIMARY KEY AUTOINCREMENT,           data_id                   INTEGER         NOT NULL REFERENCES samples (data_id) ON DELETE CASCADE,           source                    TEXT            NOT NULL,           e_identifier              TEXT            NOT NULL,           contributing_data         BLOB                           )";
  v21 = @"CREATE TABLE IF NOT EXISTS hr_f_a_measure_collection        (        ROWID                   INTEGER PRIMARY KEY AUTOINCREMENT,         type                    TEXT            NOT NULL,         f_a_identifier          BLOB            NOT NULL,         measure_identifier      TEXT            NOT NULL     )";
  v5 = MEMORY[0x277CBEA60];
  v6 = a2;
  v7 = [v5 arrayWithObjects:&v11 count:11];
  v8 = [v6 protectedDatabase];

  LODWORD(a4) = [v8 executeSQLStatements:v7 error:a4];
  v9 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddOHSTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFA18 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddBQuantitySampleTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFA30 error:a4] ^ 1;

  return v6;
}

uint64_t HDCodableSyncEntityVersionMapReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSyncEntityVersionRange);
        [a1 addEntityVersionRange:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSyncEntityVersionRangeReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HDSyncStoreClassForSyncStoreType(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = off_27860EF98;
LABEL_7:
      v3 = *v2;
      v4 = objc_opt_class();

      return v4;
    case 5:
      v2 = off_27860FA38;
      goto LABEL_7;
    case 2:
      v2 = off_27860E140;
      goto LABEL_7;
  }

  v4 = 0;

  return v4;
}

id HDInstantiateSyncStore(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 type];
  if (v7 == 1 || v7 == 5)
  {
    v8 = [MEMORY[0x277CCA9B8] hk_error:125 description:@"Attempted to instantiate sync store that is not supported."];
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        *a3 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  else
  {
    if (v7 != 2)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v8 = [v6 identifier];
    v9 = [HDCloudSyncStore syncStoreForProfile:v5 storeIdentifier:v8 error:a3];
  }

LABEL_12:

  return v9;
}

uint64_t __Block_byref_object_copy__124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D996E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D9A280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 120), 8);
  _Unwind_Resume(a1);
}

NSObject *HDDatabaseForContainer(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = [v5 type];
  if (v7 > 3)
  {
    if (v7 == 100 || v7 == 4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if ((v7 - 2) < 2)
    {
      v8 = [v4 sharedCloudDatabase];
LABEL_11:
      v2 = v8;
      goto LABEL_12;
    }

    if (v7 == 1)
    {
LABEL_10:
      v8 = [v4 privateCloudDatabase];
      goto LABEL_11;
    }
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    v2 = v9;
    v10 = [v6 identifier];
    v13 = 138412546;
    v14 = v10;
    v15 = 2048;
    v16 = [v6 type];
    _os_log_fault_impl(&dword_228986000, v2, OS_LOG_TYPE_FAULT, "Unexpected profile with identifier %@ and type %lu", &v13, 0x16u);
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

id HDListUserDomainConceptEntityPredicateForListType(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v5 = [v3 predicateWithProperty:@"list_type" value:v4 comparisonType:v2];

  return v5;
}

void sub_228D9D75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D9D9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableBloodPressureJournalStateReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableBloodPressureJournal);
        [a1 addBloodPressureJournal:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableBloodPressureJournalReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228D9EA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__125(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDCreateDataAggregatorForType(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 code];
  if (v5 > 257)
  {
    v6 = v5 - 2;
    if ((v5 - 258) > 0x2D)
    {
      goto LABEL_39;
    }

    if (((1 << v6) & 0x38F013C11007) != 0)
    {
      goto LABEL_10;
    }

    if (((1 << v6) & 0x10000280800) != 0)
    {
      goto LABEL_32;
    }

    if (v5 != 272)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if (v5 > 112)
  {
    if (v5 <= 146)
    {
      if (v5 == 113)
      {
        goto LABEL_10;
      }

      if (v5 != 138)
      {
        if (v5 == 140)
        {
          v9 = HDTachycardiaDataAggregator;
          goto LABEL_44;
        }

        goto LABEL_39;
      }

      goto LABEL_32;
    }

    v8 = v5 + 109;
    if ((v5 - 147) > 0x2F)
    {
      goto LABEL_39;
    }

    if (((1 << v8) & 0x830900000000) != 0)
    {
LABEL_32:
      v7 = HDPassiveQuantityDataAggregator;
      goto LABEL_33;
    }

    if (((1 << v8) & 0x6000000) == 0)
    {
      if (v5 == 147)
      {
        v9 = HDBradycardiaDataAggregator;
        goto LABEL_44;
      }

      goto LABEL_39;
    }

LABEL_26:
    v7 = HDAudioExposureAggregator;
LABEL_33:
    v10 = [[v7 alloc] initForQuantityType:v4 dataCollectionManager:v3];
LABEL_34:
    v11 = v10;
    goto LABEL_35;
  }

  if (v5 <= 60)
  {
    if ((v5 - 7) >= 4)
    {
      if (v5 != 5)
      {
        if (v5 != 12)
        {
          goto LABEL_39;
        }

        goto LABEL_10;
      }

      v9 = HDHeartRateDataAggregator;
LABEL_44:
      v10 = [[v9 alloc] initWithDataCollectionManager:v3];
      goto LABEL_34;
    }

LABEL_10:
    if (HKFeatureFlagWorkoutSeriesAggregation())
    {
      v7 = HDWorkoutSeriesDataAggregator;
    }

    else
    {
      v7 = HDActiveQuantityDataAggregator;
    }

    goto LABEL_33;
  }

  if (v5 <= 100)
  {
    if (v5 != 61)
    {
      if (v5 == 75)
      {
        v9 = HDAppleExerciseTimeDataAggregator;
        goto LABEL_44;
      }

      if (v5 == 83)
      {
        v9 = HDCyclingDistanceDataAggregator;
        goto LABEL_44;
      }

      goto LABEL_39;
    }

    goto LABEL_32;
  }

  if ((v5 - 110) < 2)
  {
    goto LABEL_32;
  }

  if (v5 == 101)
  {
    goto LABEL_10;
  }

LABEL_39:
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
  {
    v15 = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Attempting to fetch aggregator for non-collectible type %{public}@", &v15, 0x16u);
  }

  v11 = 0;
LABEL_35:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t HDCloudSyncCodableShardPredicateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 11)
      {
        *(a1 + 28) |= 1u;
        v31 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v27 = v31;
        v28 = 8;
      }

      else
      {
        if (v13 != 10)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              LOBYTE(v31) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v31 & 0x7F) << v14;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_40;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_40:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_46;
        }

        *(a1 + 28) |= 2u;
        v31 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v27 = v31;
        v28 = 16;
      }

      *(a1 + v28) = v27;
LABEL_46:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id NSDictionaryPreferencesSyncRepresentationForHKFeatureAttributes(void *a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"FeatureVersion";
  v1 = a1;
  v2 = [v1 featureVersion];
  v11[1] = @"UpdateVersion";
  v12[0] = v2;
  v3 = [v1 updateVersion];
  v12[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v5 = [v4 mutableCopy];

  v6 = [v1 UDIDeviceIdentifier];
  [v5 setObject:v6 forKeyedSubscript:@"UDIDeviceIdentifier"];

  v7 = [v1 yearOfRelease];

  [v5 setObject:v7 forKeyedSubscript:@"YearOfRelease"];
  v8 = [v5 copy];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id NSDictionaryPreferencesSyncRepresentationForHKCountrySet(void *a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"AvailableRegions";
  v1 = a1;
  v2 = [v1 countryBitmasks];
  v12[0] = v2;
  v11[1] = @"AvailableRegionsVersion";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "compatibilityVersion")}];
  v12[1] = v3;
  v11[2] = @"AvailableRegionsContentVersion";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "contentVersion")}];
  v12[2] = v4;
  v11[3] = @"CountrySetProvenance";
  v5 = MEMORY[0x277CCABB0];
  v6 = [v1 provenance];

  v7 = [v5 numberWithInteger:v6];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id HKLocalFeaturePropertiesDefaultsDomainForFeatureIdentifier(void *a1)
{
  v1 = MEMORY[0x277CCDD30];
  v2 = a1;
  v3 = [v1 sharedBehavior];
  v4 = [v3 isAppleWatch];

  v5 = *MEMORY[0x277CCDF20];
  if (v4)
  {
    v6 = @"%@.%@.watch";
  }

  else
  {
    v6 = @"%@.%@.companion";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, *MEMORY[0x277CCDF20], v2];

  return v7;
}

void sub_228DA25EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HKRemoteFeaturePropertiesDefaultsDomainForFeatureIdentifier(void *a1)
{
  v1 = MEMORY[0x277CCDD30];
  v2 = a1;
  v3 = [v1 sharedBehavior];
  v4 = [v3 isAppleWatch];

  v5 = *MEMORY[0x277CCDF20];
  if (v4)
  {
    v6 = @"%@.%@.companion";
  }

  else
  {
    v6 = @"%@.%@.watch";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, *MEMORY[0x277CCDF20], v2];

  return v7;
}

id HKFeatureAttributesFromSource(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringForKey:@"FeatureVersion"];
    v4 = [v2 stringForKey:@"UpdateVersion"];
    v5 = v4;
    v6 = 0;
    if (v3 && v4)
    {
      v7 = [v2 stringForKey:@"UDIDeviceIdentifier"];
      v8 = [v2 stringForKey:@"YearOfRelease"];
      v6 = [objc_alloc(MEMORY[0x277CCD3D8]) initWithFeatureVersion:v3 updateVersion:v5 UDIDeviceIdentifier:v7 yearOfRelease:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id HKCountrySetFromSource(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = NSNumberFromHKFeaturePropertiesReadSourceForKey(v1, @"AvailableRegionsVersion");
    v4 = [v2 arrayForKey:@"AvailableRegions"];
    v5 = v4;
    v6 = 0;
    if (v3 && v4)
    {
      v7 = NSNumberFromHKFeaturePropertiesReadSourceForKey(v2, @"AvailableRegionsContentVersion");
      v8 = NSNumberFromHKFeaturePropertiesReadSourceForKey(v2, @"CountrySetProvenance");
      v6 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:v5 compatibilityVersion:objc_msgSend(v3 contentVersion:"integerValue") provenance:{objc_msgSend(v7, "integerValue"), objc_msgSend(v8, "integerValue")}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id NSNumberFromHKFeaturePropertiesReadSourceForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_228DA34E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228DA5C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__126(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DA7504(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDDataCollectorCanResumeFromLastSensorDatum(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 canResumeCollectionFromLastSensorDatum];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_228DA91F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

uint64_t HDCodableCategoryDomainDictionaryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v16 = objc_alloc_init(HDCodableTimestampedKeyValuePair);
          [a1 addKeyValuePairs:v16];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !HDCodableTimestampedKeyValuePairReadFrom(v16, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(HDCodableSyncIdentity);
          objc_storeStrong((a1 + 32), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v26 & 0x7F) << v17;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_43:
          *(a1 + 8) = v23;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableRacingMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        *(a1 + 48) |= 2u;
        v30[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v24 = v30[0];
        v25 = 16;
        goto LABEL_44;
      }

      if (v13 == 4)
      {
        *(a1 + 48) |= 1u;
        v30[0] = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v24 = v30[0];
        v25 = 8;
LABEL_44:
        *(a1 + v25) = v24;
        goto LABEL_45;
      }

      if (v13 != 10)
      {
        goto LABEL_36;
      }

      v14 = objc_alloc_init(HDCodableRoutePointDatum);
      [a1 addRoutePoints:v14];
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableRoutePointDatumReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadData();
      v22 = *(a1 + 40);
      *(a1 + 40) = v21;

      goto LABEL_45;
    }

    if (v13 == 2)
    {
      *(a1 + 48) |= 4u;
      v30[0] = 0;
      v15 = [a2 position] + 8;
      if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v30[0];
      v25 = 24;
      goto LABEL_44;
    }

LABEL_36:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableRoutineRequestMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 9)
      {
        if (v13 == 10)
        {
          v16 = objc_alloc_init(HDCodableRoutineLocationRequest);
          objc_storeStrong((a1 + 8), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !HDCodableRoutineLocationRequestReadFrom(v16, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 12)
        {
          v16 = objc_alloc_init(HDCodableRoutineScenarioTriggeredRequest);
          objc_storeStrong((a1 + 32), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !HDCodableRoutineScenarioTriggeredRequestReadFrom(v16, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v26 & 0x7F) << v17;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_43:
          *(a1 + 24) = v23;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228DAF888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__127(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DB00A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228DB0454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableCDADocumentSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v27[0] & 0x7F) << v19;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v11 = v20++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_51:
          *(a1 + 32) = v25;
          goto LABEL_37;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 24;
          goto LABEL_36;
        }

        goto LABEL_32;
      }

      v16 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 48), v16);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_37:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_36;
      }

      if (v13 == 7)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_36;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_36;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 40;
LABEL_36:
        v17 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_37;
      }
    }

LABEL_32:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_37;
  }

  return [a2 hasError] ^ 1;
}

void sub_228DB43DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228DB4EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableClinicalGatewayReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(HDCodableMessageVersion);
        objc_storeStrong((a1 + 8), v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMessageVersionReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(HDCodableSyncIdentity);
    objc_storeStrong((a1 + 24), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_228DB6B58(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_228DB6EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_228DB7788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__129(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DBA220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228DBA634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 184), 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_228DBA88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_228DBADB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228DBB1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_228DBB4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HDCloudSyncOperationStatusToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_278625640[a1];
  }

  return v2;
}

uint64_t statistics::RawQuantitySample::RawQuantitySample(uint64_t this)
{
  *this = &unk_283BEB0A8;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_283BEB0A8;
  *(this + 44) = 0;
  return this;
}

void statistics::RawQuantitySample::~RawQuantitySample(statistics::RawQuantitySample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x22AAC8590);
}

uint64_t statistics::RawQuantitySample::RawQuantitySample(uint64_t this, const statistics::RawQuantitySample *a2)
{
  *this = &unk_283BEB0A8;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 8;
    *(this + 44) = 8;
    *(this + 32) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 3);
    v3 |= 4u;
    *(this + 44) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 1);
    v3 |= 1u;
    *(this + 44) = v3;
    *(this + 8) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 2);
  v3 |= 2u;
  *(this + 44) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 41);
  v3 |= 0x20u;
  *(this + 44) = v3;
  *(this + 41) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 42);
    *(this + 44) = v3 | 0x40;
    *(this + 42) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 40);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 40) = v9;
  if ((*(a2 + 44) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t statistics::RawQuantitySample::operator=(uint64_t a1, const statistics::RawQuantitySample *a2)
{
  if (a1 != a2)
  {
    statistics::RawQuantitySample::RawQuantitySample(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v15;
    v15 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    LOBYTE(v6) = *(a1 + 41);
    *(a1 + 41) = v13;
    v13 = v6;
    LOBYTE(v6) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    LOBYTE(v6) = *(a1 + 42);
    *(a1 + 42) = v14;
    v14 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double statistics::swap(statistics *this, statistics::RawQuantitySample *a2, statistics::RawQuantitySample *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  LOBYTE(v7) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v7;
  LOBYTE(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  LOBYTE(v7) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v7;
  return result;
}

double statistics::RawQuantitySample::RawQuantitySample(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283BEB0A8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  return result;
}

{
  *a1 = &unk_283BEB0A8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  return result;
}

uint64_t statistics::RawQuantitySample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v13[0] = &unk_283BEB0A8;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 41);
    v7 = *(a2 + 40);
    v8 = *(a2 + 42);
    v18 = *(a1 + 44);
    v9 = *(a1 + 24);
    v10 = *(a2 + 24);
    *(a1 + 44) = v3;
    *(a1 + 24) = v10;
    v14 = v9;
    *&v9 = *(a1 + 8);
    *(a1 + 8) = v4;
    v13[1] = v9;
    v11 = *(a1 + 16);
    *(a1 + 16) = v5;
    v13[2] = v11;
    LOBYTE(v11) = *(a1 + 41);
    *(a1 + 41) = v6;
    v16 = v11;
    LOBYTE(v11) = *(a1 + 40);
    *(a1 + 40) = v7;
    v15 = v11;
    LOBYTE(v11) = *(a1 + 42);
    *(a1 + 42) = v8;
    v17 = v11;
    PB::Base::~Base(v13);
  }

  return a1;
}

uint64_t statistics::RawQuantitySample::formatText(statistics::RawQuantitySample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "endTime", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 40);
  PB::TextFormatter::format(a2, "hasContributedToOverall");
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = *(this + 41);
  PB::TextFormatter::format(a2, "hasContributedToSource");
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(this + 42);
  PB::TextFormatter::format(a2, "hasContributedToSourceID");
  v5 = *(this + 44);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(this + 2);
  PB::TextFormatter::format(a2, "sourceID");
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "startTime", *(this + 3));
  if ((*(this + 44) & 8) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "value", *(this + 4));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t statistics::RawQuantitySample::readFrom(statistics::RawQuantitySample *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_50:
            *(a2 + 24) = 1;
            goto LABEL_72;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_66;
        case 2:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_50;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_66;
        case 3:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_50;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_66:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_72;
      }
    }

    else if (v22 > 10)
    {
      if (v22 == 11)
      {
        *(this + 44) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v36 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v35 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v36 = v35 != 0;
        }

        *(this + 40) = v36;
        goto LABEL_72;
      }

      if (v22 == 12)
      {
        *(this + 44) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v26 = v25 != 0;
        }

        *(this + 42) = v26;
        goto LABEL_72;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 44) |= 2u;
        v27 = *(a2 + 1);
        v2 = *(a2 + 2);
        v28 = *a2;
        if (v27 > 0xFFFFFFFFFFFFFFF5 || v27 + 10 > v2)
        {
          v37 = 0;
          v38 = 0;
          v31 = 0;
          if (v2 <= v27)
          {
            v2 = *(a2 + 1);
          }

          v39 = (v28 + v27);
          v40 = v2 - v27;
          v41 = v27 + 1;
          while (1)
          {
            if (!v40)
            {
              v31 = 0;
              *(a2 + 24) = 1;
              goto LABEL_71;
            }

            v42 = v41;
            v43 = *v39;
            *(a2 + 1) = v42;
            v31 |= (v43 & 0x7F) << v37;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            ++v39;
            --v40;
            v41 = v42 + 1;
            v14 = v38++ > 8;
            if (v14)
            {
              v31 = 0;
              goto LABEL_70;
            }
          }

          if (*(a2 + 24))
          {
            v31 = 0;
          }

LABEL_70:
          v2 = v42;
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = (v28 + v27);
          v33 = v27 + 1;
          while (1)
          {
            v2 = v33;
            *(a2 + 1) = v33;
            v34 = *v32++;
            v31 |= (v34 & 0x7F) << v29;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            ++v33;
            v14 = v30++ > 8;
            if (v14)
            {
              v31 = 0;
              break;
            }
          }
        }

LABEL_71:
        *(this + 2) = v31;
        goto LABEL_72;
      }

      if (v22 == 10)
      {
        *(this + 44) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 41) = v24;
        goto LABEL_72;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v44 = 0;
      return v44 & 1;
    }

    v2 = *(a2 + 1);
LABEL_72:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v44 = v4 ^ 1;
  return v44 & 1;
}

uint64_t statistics::RawQuantitySample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = *(v3 + 16);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = *(v3 + 40);
    this = PB::Writer::write(a2);
    if ((*(v3 + 44) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  v6 = *(v3 + 41);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = *(v3 + 42);

  return PB::Writer::write(a2);
}

BOOL statistics::RawQuantitySample::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 0x20) != 0)
  {
    if ((*(a2 + 44) & 0x20) == 0 || *(a1 + 41) != *(a2 + 41))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if ((*(a2 + 44) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 44) & 0x40) == 0;
  if ((*(a1 + 44) & 0x40) != 0)
  {
    return (*(a2 + 44) & 0x40) != 0 && *(a1 + 42) == *(a2 + 42);
  }

  return v2;
}

uint64_t statistics::RawQuantitySample::hash_value(statistics::RawQuantitySample *this)
{
  if ((*(this + 44) & 8) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v2 = 0.0;
    if (*(this + 44))
    {
      goto LABEL_6;
    }

LABEL_17:
    v3 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v1 = *(this + 4);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 44) & 2) != 0)
  {
LABEL_9:
    v4 = *(this + 2);
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = 0;
  if ((*(this + 44) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(this + 41);
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v6 = 0;
    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v7 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_19:
  v5 = 0;
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *(this + 40);
  if ((*(this + 44) & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v7 = *(this + 42);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6 ^ v7;
}

void sub_228DC0B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DC0ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228DC1A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228DC1C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228DC1E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228DC1FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228DC221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *HDStatisticsPresence::addSample(void *this, const HDRawQuantitySample *a2, int a3)
{
  if (a3)
  {
    ++*this;
  }

  return this;
}

__n128 HDStatisticsPresence::updateMostRecentSample(HDStatisticsPresence *this, const HDRawQuantitySample *a2)
{
  if (!*(this + 40) || (result.n128_u64[0] = *(this + 2), result.n128_f64[0] <= a2->var1))
  {
    result = *&a2->var0;
    v3 = *&a2->var2;
    *(this + 20) = *&a2->var4;
    *(this + 24) = v3;
    *(this + 8) = result;
  }

  return result;
}

double HDStatisticsPresence::unarchive@<D0>(HDStatisticsPresence *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = *(this + 3);
  v4 = *(this + 14);
  if (v4)
  {
    result = *(v4 + 8);
    v5 = *(v4 + 16);
    *(a2 + 8) = vextq_s8(*(v4 + 24), *(v4 + 24), 8uLL);
    *(a2 + 24) = result;
    *(a2 + 32) = v5;
    *(a2 + 40) = 1;
  }

  return result;
}

void HDStatisticsPresence::archive(HDStatisticsPresence *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 112) = 0;
  v4 = (a2 + 112);
  *(a2 + 64) = 0;
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v5 = *this;
  *(a2 + 204) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  statistics::Statistics::makeMostRecentDatum(a2);
  v6[0] = &unk_283BEB0A8;
  v10 = 127;
  v7 = vextq_s8(*(this + 8), *(this + 8), 8uLL);
  v6[1] = *(this + 3);
  v6[2] = *(this + 4);
  v8 = 0;
  v9 = 0;
  statistics::RawQuantitySample::operator=(*v4, v6);
  PB::Base::~Base(v6);
}

void sub_228DC7F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HDQueryServerSampleTypeObservationAssertionName(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 identifier];
  v3 = [v1 stringWithFormat:@"QueryServerObserver-%@", v2];

  return v3;
}

void sub_228DC97B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromQueryServerState(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown state";
  }

  else
  {
    return off_278625880[a1];
  }
}

uint64_t HDCodableSyncEntityVersionRangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableEntityIdentifier);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HDCodableEntityIdentifierReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HDCodableSyncVersionRange);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HDCodableSyncVersionRangeReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _HDResetAllReceivedSyncAnchorsOnVisionDevices(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isRealityDevice];

  if (v8)
  {
    v9 = [v6 unprotectedDatabase];
    v10 = [v9 executeSQLStatements:&unk_283CAFA90 error:a4] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _HDAddClientOptionsToAlarmEventsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFAA8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddLastAssociationAnchorToSubscriptions(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFAD8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetReceivedNanoSyncAnchorsOnWatchForActivityCache(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = [v6 unprotectedDatabase];
    v10 = [v9 executeSQLStatements:&unk_283CAFAF0 error:a4] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _HDResetReceivedNanoSyncAnchorsOnWatch(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = [v6 unprotectedDatabase];
    v10 = [v9 executeSQLStatements:&unk_283CAFAC0 error:a4] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _HDUpdateSDKVersionTokenFieldOnSubscriptionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  active_platform = dyld_get_active_platform();
  v7 = [v5 unprotectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDUpdateSDKVersionTokenFieldOnSubscriptionsTable_block_invoke;
  v10[3] = &unk_2786258B0;
  v12 = active_platform;
  v11 = v5;
  v8 = v5;
  LODWORD(a4) = [v7 executeSQL:@"SELECT ROWID error:sdk_version FROM subscription_app_launch WHERE sdk_version != 0" bindingHandler:a4 enumerationHandler:{0, v10}];

  return a4 ^ 1;
}

uint64_t _HDAddPendingFullSyncColumnToCloudSyncStoresTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFB08 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetAnchorsForAssociationsForNanoSync_0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 unprotectedDatabase];
    v9 = [v10 executeSQLStatements:&unk_283CAFB20 error:a4] ^ 1;
  }

  return v9;
}

uint64_t _HDAddExcludedSyncIdentitiesColumnToCloudSyncStores(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFB38 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddRPEFieldsToAssociationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[11] = *MEMORY[0x277D85DE8];
  v5 = [a2 protectedDatabase];
  v6 = [MEMORY[0x277CBEAA8] distantPast];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO associations_new (ROWID, destination_object_id, source_object_id, sync_provenance, sync_identity, type, deleted, creation_date) SELECT ROWID, parent_id, child_id, sync_provenance, sync_identity, %lu, %d, %f FROM associations", 0, 0, v8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO pending_associations_new (ROWID, parent_uuid, child_uuid, sync_provenance, sync_identity, type, deleted, creation_date) SELECT ROWID, parent_uuid, child_uuid, sync_provenance, sync_identity, %lu, %d, %f FROM pending_associations", 0, 0, v8];
  v14[2] = @"UPDATE sqlite_sequence SET seq=(SELECT seq FROM sqlite_sequence WHERE name = 'associations') WHERE sqlite_sequence.name = 'associations_new'";
  v14[3] = @"DROP TABLE associations";
  v14[0] = @"CREATE TABLE associations_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, destination_object_id INTEGER, source_object_id INTEGER, sync_provenance INTEGER, sync_identity INTEGER NOT NULL, type INTEGER NOT NULL, deleted INTEGER NOT NULL, creation_date REAL NOT NULL, destination_sub_object_id INTEGER NULL, UNIQUE(destination_object_id, source_object_id))";
  v14[1] = v9;
  v14[4] = @"ALTER TABLE associations_new RENAME TO associations";
  v14[5] = @"CREATE INDEX IF NOT EXISTS associations_child ON associations (source_object_id)";
  v14[6] = @"CREATE TABLE pending_associations_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, parent_uuid BLOB NOT NULL, child_uuid BLOB NOT NULL, sync_provenance INTEGER NOT NULL, sync_identity INTEGER NOT NULL, destination_sub_uuid BLOB NULL, type INTEGER NOT NULL, deleted INTEGER NOT NULL, creation_date REAL NOT NULL, UNIQUE(parent_uuid, child_uuid, destination_sub_uuid))";
  v14[7] = v10;
  v14[8] = @"DROP TABLE pending_associations";
  v14[9] = @"ALTER TABLE pending_associations_new RENAME TO pending_associations";
  v14[10] = @"CREATE INDEX IF NOT EXISTS pending_associations_child ON pending_associations (child_uuid)";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:11];
  LODWORD(a4) = [v5 executeSQLStatements:v11 error:a4];

  v12 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddPauseRingsScheduleTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS pause_rings_schedule_samples (data_id INTEGER PRIMARY KEY REFERENCES samples (data_id) ON DELETE CASCADE error:{start_date_index INTEGER NOT NULL, end_date_index INTEGER NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddPauseColumnToActivityCache(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE activity_caches ADD COLUMN paused INTEGER" error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddActivityGoalSchedulesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFB50 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateTypeAndCreationDateFieldOnAssociationsTableForWorkoutEffortChildren(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"UPDATE associations SET type = %lu, creation_date = samples.end_date FROM samples WHERE associations.source_object_id=samples.data_id AND associations.type = %lu AND (samples.data_type = %lu OR samples.data_type = %lu)", 1, 0, 298, 304];
  v8 = [v6 protectedDatabase];

  v9 = [v8 executeUncachedSQL:v7 error:a4] ^ 1;
  return v9;
}

uint64_t _HDUpdateTypeAndCreationDateFieldOnAssociationsTableForNonWorkoutEffortChildren(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a2;
  v7 = [v5 distantPast];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE associations SET type = %lu, creation_date = %f FROM samples WHERE associations.source_object_id=samples.data_id AND associations.type = %lu AND samples.data_type != %lu AND samples.data_type != %lu", 0, v9, 1, 298, 304];
  v11 = [v6 protectedDatabase];

  v12 = [v11 executeUncachedSQL:v10 error:a4] ^ 1;
  return v12;
}

void sub_228DCDAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__131(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DCE510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_228DCEDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_228DCF094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHDQuantitySampleValueEnumeratorOptions(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"expand series"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"secondary sort by UUID"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

uint64_t HDCodableOntologyConceptIdentifierReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableECGSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36[0] & 0x7F) << v5;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v36[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v36[0] & 0x7F) << v21;
            if ((v36[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_57:
          v32 = 16;
          goto LABEL_58;
        }

LABEL_48:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_61;
      }

      v31 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 32), v31);
      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v31, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_61:
      v34 = [a2 position];
      if (v34 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        *(a1 + 48) |= 1u;
        v36[0] = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v36[0];
        goto LABEL_61;
      case 4:
        v29 = PBReaderReadData();
        v30 = *(a1 + 40);
        *(a1 + 40) = v29;

        goto LABEL_61;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v36[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36[0] & 0x7F) << v14;
          if ((v36[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_53;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_53:
        v32 = 24;
LABEL_58:
        *(a1 + v32) = v20;
        goto LABEL_61;
    }

    goto LABEL_48;
  }

  return [a2 hasError] ^ 1;
}

void sub_228DD2BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__132(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableUserDomainConceptReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v54) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v54 & 0x7F) << v5;
      if ((v54 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadData();
        v14 = 128;
        goto LABEL_67;
      case 2u:
        v15 = objc_alloc_init(HDCodableUserDomainConceptTypeIdentifier);
        objc_storeStrong((a1 + 40), v15);
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !HDCodableUserDomainConceptTypeIdentifierReadFrom(v15, a2))
        {
          goto LABEL_114;
        }

        goto LABEL_91;
      case 3u:
        *(a1 + 140) |= 1u;
        v54 = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v51 = [a2 data];
          [v51 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v49 = v54;
        v50 = 8;
        goto LABEL_111;
      case 4u:
        *(a1 + 140) |= 2u;
        v54 = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v49 = v54;
        v50 = 16;
LABEL_111:
        *(a1 + v50) = v49;
        goto LABEL_112;
      case 5u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 140) |= 0x20u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v54 & 0x7F) << v23;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_97;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_97:
        *(a1 + 136) = v29;
        goto LABEL_112;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 24;
        goto LABEL_67;
      case 7u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 140) |= 4u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v54 & 0x7F) << v35;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_101;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_101:
        v47 = 72;
        goto LABEL_106;
      case 8u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 140) |= 8u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v54 & 0x7F) << v41;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v43;
        }

LABEL_105:
        v47 = 76;
        goto LABEL_106;
      case 9u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 140) |= 0x10u;
        while (1)
        {
          LOBYTE(v54) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v54 & 0x7F) << v16;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_95;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_95:
        v47 = 96;
LABEL_106:
        *(a1 + v47) = v22;
        goto LABEL_112;
      case 0xAu:
        v13 = PBReaderReadData();
        v14 = 56;
        goto LABEL_67;
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
        goto LABEL_21;
      case 0x14u:
        v15 = objc_alloc_init(HDCodableMedicalCoding);
        [a1 addCodings:v15];
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicalCodingReadFrom(v15, a2))
        {
          goto LABEL_114;
        }

        goto LABEL_91;
      case 0x15u:
        v15 = objc_alloc_init(HDCodableUserDomainConceptLink);
        [a1 addLinks:v15];
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !HDCodableUserDomainConceptLinkReadFrom(v15, a2))
        {
          goto LABEL_114;
        }

        goto LABEL_91;
      case 0x16u:
        v15 = objc_alloc_init(HDCodableUserDomainConceptProperty);
        [a1 addProperties:v15];
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !HDCodableUserDomainConceptPropertyReadFrom(v15, a2))
        {
          goto LABEL_114;
        }

        goto LABEL_91;
      case 0x17u:
        v15 = objc_alloc_init(HDCodableUserDomainConceptLocalizedStringProperty);
        [a1 addLocalizedStringProperties:v15];
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !HDCodableUserDomainConceptLocalizedStringPropertyReadFrom(v15, a2))
        {
          goto LABEL_114;
        }

        goto LABEL_91;
      case 0x18u:
        v15 = objc_alloc_init(HDCodableOntologyLocalizedEducationContent);
        objc_storeStrong((a1 + 88), v15);
        v54 = 0;
        v55 = 0;
        if (!PBReaderPlaceMark() || !HDCodableOntologyLocalizedEducationContentReadFrom(v15, a2))
        {
          goto LABEL_114;
        }

        goto LABEL_91;
      case 0x19u:
        v15 = objc_alloc_init(HDCodableUserDomainConceptNamedQuantity);
        [a1 addNamedQuantities:v15];
        v54 = 0;
        v55 = 0;
        if (PBReaderPlaceMark() && HDCodableUserDomainConceptNamedQuantityReadFrom(v15, a2))
        {
          goto LABEL_91;
        }

        goto LABEL_114;
      case 0x1Au:
        v15 = objc_alloc_init(HDCodableSyncIdentity);
        objc_storeStrong((a1 + 112), v15);
        v54 = 0;
        v55 = 0;
        if (PBReaderPlaceMark() && HDCodableSyncIdentityReadFrom(v15, a2))
        {
LABEL_91:
          PBReaderRecallMark();

LABEL_112:
          v52 = [a2 position];
          if (v52 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_114:

        return 0;
      default:
        if ((v12 >> 3) == 100)
        {
          v13 = PBReaderReadData();
          v14 = 120;
LABEL_67:
          v34 = *(a1 + v14);
          *(a1 + v14) = v13;
        }

        else
        {
LABEL_21:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_112;
    }
  }
}