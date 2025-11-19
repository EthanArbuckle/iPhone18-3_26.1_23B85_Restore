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

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_28671B498;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_254D38910(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28671B498;
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
  a1->__locale_ = &unk_28671B498;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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
  a1->__locale_ = &unk_28671B4E0;
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
  a1->__locale_ = &unk_28671B4E0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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

  JUMPOUT(0x259C29D90);
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
  a1->__locale_ = &unk_28671B570;
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
  a1->__locale_ = &unk_28671B570;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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
  a1->__locale_ = &unk_28671B5B8;
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
  a1->__locale_ = &unk_28671B5B8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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

  JUMPOUT(0x259C29D90);
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

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_254D39638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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

  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x259C29D90);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v35 = 0;
    negate = this->__negate_;
    goto LABEL_82;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_57;
  }

  v113 = *current;
  v6 = current[1];
  v114 = current[1];
  if (this->__icase_)
  {
    v113 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v114 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v113, &v115, &__p);
  if ((v112 & 0x80000000) == 0)
  {
    if (v112)
    {
      goto LABEL_8;
    }

LABEL_57:
    negate = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v111;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v113 != *(p_second - 1) || v114 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_217;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_p = &__p;
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v113, &v115);
    v13 = this->__ranges_.__begin_;
    v14 = v112;
    v15 = this->__ranges_.__end_ - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v107 = v112;
      if (v112 >= 0)
      {
        v17 = v112;
      }

      else
      {
        v17 = v111;
      }

      if (v112 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = &v13->second.__r_.__value_.__r.__words[2] + 7;
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_166;
        }
      }

      v34 = 5;
LABEL_166:
      v14 = v107;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v87 = 1;
      goto LABEL_197;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v87 = 0;
    goto LABEL_199;
  }

  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v113, &v115, &__p);
  v88 = this->__equivalences_.__begin_;
  v89 = v112;
  v90 = this->__equivalences_.__end_ - v88;
  if (v90)
  {
    v91 = 0xAAAAAAAAAAAAAAABLL * (v90 >> 3);
    if (v112 >= 0)
    {
      v92 = v112;
    }

    else
    {
      v92 = v111;
    }

    if (v112 >= 0)
    {
      v93 = &__p;
    }

    else
    {
      v93 = __p;
    }

    if (v91 <= 1)
    {
      v94 = 1;
    }

    else
    {
      v94 = 0xAAAAAAAAAAAAAAABLL * (v90 >> 3);
    }

    v95 = 1;
    v96 = 1;
    while (1)
    {
      size = HIBYTE(v88->__r_.__value_.__r.__words[2]);
      v98 = size;
      if ((size & 0x80u) != 0)
      {
        size = v88->__r_.__value_.__l.__size_;
      }

      if (v92 == size)
      {
        v99 = v98 >= 0 ? v88 : v88->__r_.__value_.__r.__words[0];
        if (!memcmp(v93, v99, v92))
        {
          break;
        }
      }

      v96 = v95++ < v91;
      ++v88;
      if (!--v94)
      {
        goto LABEL_194;
      }
    }

    v87 = 1;
    v34 = 5;
    if (v89 < 0)
    {
LABEL_195:
      operator delete(__p);
    }
  }

  else
  {
    v96 = 0;
LABEL_194:
    v34 = 0;
    v87 = 0;
    if (v89 < 0)
    {
      goto LABEL_195;
    }
  }

  if (!v96)
  {
LABEL_199:
    if (v113 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v102 = tab[v113];
      if (((v102 & mask) != 0 || v113 == 95 && (mask & 0x80) != 0) && (v114 & 0x8000000000000000) == 0 && ((tab[v114] & mask) != 0 || (mask & 0x80) != 0 && v114 == 95))
      {
        goto LABEL_217;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v102) != 0 || v113 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_216:
        negate = v87;
LABEL_218:
        v35 = 2;
        goto LABEL_82;
      }
    }

    if ((v114 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v114] & neg_mask) == 0)
      {
        negate = 1;
        if (v114 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_218;
        }
      }

      goto LABEL_216;
    }

LABEL_217:
    negate = 1;
    goto LABEL_218;
  }

LABEL_197:
  v35 = 2;
  negate = v87;
  if (v34)
  {
    goto LABEL_82;
  }

LABEL_58:
  v38 = *a2->__current_;
  v113 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v38) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    v113 = v38;
  }

  v39 = this->__chars_.__begin_;
  v40 = this->__chars_.__end_ - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_81;
      }
    }

    while (--v40);
  }

  v42 = this->__neg_mask_;
  if (v42 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v38 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v38] & v42) == 0)
    {
      v44 = (v42 >> 7) & 1;
      v43 = v38 == 95 ? v44 : 0;
    }

    else
    {
      v43 = 1;
    }

    end = this->__neg_chars_.__end_;
    v46 = memchr(this->__neg_chars_.__begin_, v38, end - this->__neg_chars_.__begin_);
    v47 = !v46 || v46 == end;
    v48 = !v47;
    if ((v43 & 1) == 0 && !v48)
    {
LABEL_81:
      negate = 1;
      goto LABEL_82;
    }
  }

  v51 = this->__ranges_.__begin_;
  v52 = this->__ranges_.__end_;
  if (v51 != v52)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&this->__traits_, &v113, &v114);
      v51 = this->__ranges_.__begin_;
      v52 = this->__ranges_.__end_;
      v53 = v112;
    }

    else
    {
      v53 = 1;
      v112 = 1;
      LOWORD(__p) = v38;
    }

    v54 = v52 - v51;
    if (v54)
    {
      v108 = v35;
      v104 = negate;
      v105 = v53;
      v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4);
      if ((v53 & 0x80u) == 0)
      {
        v56 = v53;
      }

      else
      {
        v56 = v111;
      }

      if ((v53 & 0x80u) == 0)
      {
        v57 = &__p;
      }

      else
      {
        v57 = __p;
      }

      if (v55 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4);
      }

      v59 = &v51->second.__r_.__value_.__r.__words[2] + 7;
      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = *(v59 - 24);
        if (v62 >= 0)
        {
          v63 = *(v59 - 24);
        }

        else
        {
          v63 = *(v59 - 39);
        }

        if (v62 >= 0)
        {
          v64 = (v59 - 47);
        }

        else
        {
          v64 = *(v59 - 47);
        }

        if (v63 >= v56)
        {
          v65 = v56;
        }

        else
        {
          v65 = v63;
        }

        v66 = memcmp(v57, v64, v65);
        v67 = v56 >= v63;
        if (v66)
        {
          v67 = v66 >= 0;
        }

        if (v67)
        {
          v68 = *v59;
          if (v68 >= 0)
          {
            v69 = *v59;
          }

          else
          {
            v69 = *(v59 - 15);
          }

          if (v68 >= 0)
          {
            v70 = (v59 - 23);
          }

          else
          {
            v70 = *(v59 - 23);
          }

          if (v56 >= v69)
          {
            v71 = v69;
          }

          else
          {
            v71 = v56;
          }

          v72 = memcmp(v70, v57, v71);
          v73 = v69 >= v56;
          if (v72)
          {
            v73 = v72 >= 0;
          }

          if (v73)
          {
            break;
          }
        }

        v61 = v60++ < v55;
        v59 += 48;
        if (!--v58)
        {
          negate = v104;
          goto LABEL_130;
        }
      }

      negate = 1;
LABEL_130:
      v35 = v108;
      if ((v105 & 0x80) == 0)
      {
LABEL_132:
        if (v61)
        {
          goto LABEL_82;
        }

        goto LABEL_133;
      }
    }

    else
    {
      v61 = 0;
      if ((v53 & 0x80) == 0)
      {
        goto LABEL_132;
      }
    }

    operator delete(__p);
    goto LABEL_132;
  }

LABEL_133:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_159;
  }

  v74 = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v113, &v114, &__p);
  v75 = this->__equivalences_.__begin_;
  v76 = this->__equivalences_.__end_ - v75;
  if (!v76)
  {
    v81 = 0;
    if ((v112 & 0x80) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_157;
  }

  v106 = v112;
  v109 = v35;
  v77 = 0xAAAAAAAAAAAAAAABLL * (v76 >> 3);
  if (v112 >= 0)
  {
    v78 = v112;
  }

  else
  {
    v78 = v111;
  }

  if (v112 < 0)
  {
    v74 = __p;
  }

  if (v77 <= 1)
  {
    v79 = 1;
  }

  else
  {
    v79 = 0xAAAAAAAAAAAAAAABLL * (v76 >> 3);
  }

  v80 = 1;
  v81 = 1;
  while (1)
  {
    v82 = HIBYTE(v75->__r_.__value_.__r.__words[2]);
    v83 = v82;
    if ((v82 & 0x80u) != 0)
    {
      v82 = v75->__r_.__value_.__l.__size_;
    }

    if (v78 == v82)
    {
      v84 = v83 >= 0 ? v75 : v75->__r_.__value_.__r.__words[0];
      if (!memcmp(v74, v84, v78))
      {
        break;
      }
    }

    v81 = v80++ < v77;
    ++v75;
    if (!--v79)
    {
      goto LABEL_156;
    }
  }

  negate = 1;
LABEL_156:
  v35 = v109;
  if (v106 < 0)
  {
LABEL_157:
    operator delete(__p);
  }

LABEL_158:
  if (v81)
  {
    goto LABEL_82;
  }

LABEL_159:
  v85 = this->__mask_;
  if ((v113 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v113] & v85) != 0)
  {
    goto LABEL_81;
  }

  v86 = (v85 >> 7) & 1;
  if (v113 != 95)
  {
    LOBYTE(v86) = 0;
  }

  negate |= v86;
LABEL_82:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v50 = -993;
  }

  else
  {
    a2->__current_ += v35;
    first = this->__first_;
    v50 = -995;
  }

  a2->__do_ = v50;
  a2->__node_ = first;
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
  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&v7);
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

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254D3A0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
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
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
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

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_254D3A25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254D3A384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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
  MEMORY[0x259C29980](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_254D3A83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<char *>(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_254D3AA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
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

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
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
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
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
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
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
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 0x71u)
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
      goto LABEL_47;
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
      goto LABEL_47;
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
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    std::regex_traits<char>::transform<char *>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<char *>(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
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
  MEMORY[0x259C29980](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_254D3B5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 64, &v7);
}

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
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestParseError>>(a1, v12);
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
  MEMORY[0x259C29980](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v4, i - 48);
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
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

  JUMPOUT(0x259C29D90);
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

  JUMPOUT(0x259C29D90);
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
  MEMORY[0x259C29980](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x259C29D90);
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

  JUMPOUT(0x259C29D90);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_28671B780;
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

  JUMPOUT(0x259C29D90);
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
  MEMORY[0x259C29980](exception, 15);
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

  JUMPOUT(0x259C29D90);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
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
            std::allocator<std::__state<char>>::destroy[abi:ne200100](&v59, v41);
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
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
          std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = (a3 - a2);
      }

      else
      {
        v34 = v53 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
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

void sub_254D3D8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
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
  std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
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
  result = vaddq_s64(a1[2], xmmword_254E1F4C0);
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<YAML::Token *>::emplace_back<YAML::Token *&>(a1, &v10);
}

void sub_254D3DD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<YAML::Token *>::emplace_front<YAML::Token *>(a1, v11);
}

void sub_254D3E014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v7);
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

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
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

    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

uint64_t std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(char *__f, char *__l, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, __f, __l, &__p, a5 | 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(a3, __f, __l, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_254D3E554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  begin = a1->__begin_;
  if (a1->__end_ == a1->__begin_)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12 * 24);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      begin[v12].first.__i_ = (v14 + *v19);
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12 * 24);
      }

      a1->__begin_[v12].second.__i_ = (v14 + v20[1]);
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12 * 24);
      }

      v22 = *(v21 + 16);
      begin = a1->__begin_;
      end = a1->__end_;
      a1->__begin_[v12].matched = v22;
      ++v13;
      ++v12;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3));
  }

  a1[1].__begin_ = a3;
  a1[1].__end_ = a3;
  LOBYTE(a1[1].__end_cap_.__value_) = 0;
  v24 = (v14 + a4[6]);
  a1[2].__begin_ = v24;
  a1[2].__end_ = (v14 + a4[7]);
  LOBYTE(a1[2].__end_cap_.__value_) = *(a4 + 64);
  a1[3].__begin_ = (v14 + a4[9]);
  a1[3].__end_ = (v14 + a4[10]);
  LOBYTE(a1[3].__end_cap_.__value_) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[4].__end_ = v24;
  }

  LOBYTE(a1[4].__begin_) = *(a4 + 96);
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __sz)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v11 -= 24;
      }

      while (v11);
      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v9);
    }

    v12 = 24 * __n;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    begin = this->__begin_;
    v15 = this->__end_;
    v16 = (24 * v6 + this->__begin_ - v15);
    if (v15 != this->__begin_)
    {
      v17 = (24 * v6 + this->__begin_ - v15);
      do
      {
        v18 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *(v17 + 2) = *&begin->matched;
        *v17 = v18;
        v17 += 24;
        ++begin;
      }

      while (begin != v15);
      begin = this->__begin_;
    }

    this->__begin_ = v16;
    this->__end_ = (24 * v6 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = (v7 + 8 * v19);
        v21 = v5;
        do
        {
          std::string::operator=(v21, v7);
          v7 = (v7 + 24);
          ++v21;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18, v7);
            v7 = (v7 + 24);
            ++v18;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
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

      v34.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v34.__first_ = 0;
      v34.__begin_ = v22;
      v34.__end_ = v22;
      v34.__end_cap_.__value_ = 0;
      v23 = &v22[a5];
      v24 = 24 * a5;
      do
      {
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v22, *v7, *(v7 + 1));
        }

        else
        {
          v25 = *v7;
          v22->__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&v22->__r_.__value_.__l.__data_ = v25;
        }

        ++v22;
        v7 = (v7 + 24);
        v24 -= 24;
      }

      while (v24);
      v26 = v34.__begin_;
      memcpy(v23, v5, a1->__end_ - v5);
      v27 = a1->__begin_;
      v28 = (v23 + a1->__end_ - v5);
      a1->__end_ = v5;
      v29 = v5 - v27;
      v30 = (v26 - (v5 - v27));
      memcpy(v30, v27, v29);
      v31 = a1->__begin_;
      a1->__begin_ = v30;
      a1->__end_ = v28;
      v32 = a1->__end_cap_.__value_;
      a1->__end_cap_.__value_ = v34.__end_cap_.__value_;
      v34.__end_ = v31;
      v34.__end_cap_.__value_ = v32;
      v34.__first_ = v31;
      v34.__begin_ = v31;
      std::__split_buffer<std::string>::~__split_buffer(&v34);
      return v26;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v5 = __from_s + end - __to;
  if (v5 >= __from_e)
  {
    v7 = this->__end_;
  }

  else
  {
    v6 = __from_s + end - __to;
    v7 = this->__end_;
    do
    {
      v8 = *v6;
      v7->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v7->__r_.__value_.__l.__data_ = v8;
      ++v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 += 24;
    }

    while (v6 < __from_e);
  }

  this->__end_ = v7;
  if (end != __to)
  {
    v9 = 0;
    v10 = (__to - end);
    do
    {
      v11 = &v9[end - 24];
      if (v9[end - 1] < 0)
      {
        operator delete(*v11);
      }

      v12 = &v5[(v9 - 24)];
      v13 = *v12;
      *&v9[end - 8] = *(v12 + 2);
      *v11 = v13;
      v9[v5 - 1] = 0;
      *v12 = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }
}

void YAML::Scanner::Scanner(uint64_t a1, uint64_t a2)
{
  YAML::Stream::Stream(a1, a2);
}

{
  YAML::Stream::Stream(a1, a2);
}

void YAML::Scanner::~Scanner(YAML::Scanner *this)
{
  std::deque<YAML::CollectionType::value>::~deque[abi:ne200100](this + 34);
  v2 = (this + 248);
  std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::deque<YAML::Scanner::IndentMarker *>::~deque[abi:ne200100](this + 25);
  std::deque<YAML::Scanner::SimpleKey>::~deque[abi:ne200100](this + 19);
  std::deque<YAML::Token>::~deque[abi:ne200100](this + 96);
  YAML::Stream::~Stream(this);
}

void YAML::Scanner::EnsureTokensInQueue(int64x2_t *this)
{
  while (1)
  {
    while (1)
    {
      if (!this[8].i64[1])
      {
        goto LABEL_4;
      }

      v2 = *(*(this[6].i64[1] + 8 * (this[8].i64[0] / 0x33uLL)) + 80 * (this[8].i64[0] % 0x33uLL));
      if (v2 != 1)
      {
        break;
      }

      std::deque<YAML::Token>::pop_front(this + 6);
    }

    if (!v2)
    {
      return;
    }

LABEL_4:
    if (this[9].i8[1])
    {
      break;
    }

    YAML::Scanner::ScanNextToken(this);
  }
}

void YAML::Scanner::pop(int64x2_t *this)
{
  YAML::Scanner::EnsureTokensInQueue(this);
  if (this[8].i64[1])
  {

    std::deque<YAML::Token>::pop_front(this + 6);
  }
}

unint64_t YAML::Scanner::peek(int64x2_t *this)
{
  YAML::Scanner::EnsureTokensInQueue(this);
  if (!this[8].i64[1])
  {
    __assert_rtn("peek", "scanner.cpp", 37, "!m_tokens.empty()");
  }

  return *(this[6].i64[1] + 8 * (this[8].i64[0] / 0x33uLL)) + 80 * (this[8].i64[0] % 0x33uLL);
}

void YAML::Scanner::ScanNextToken(YAML::Scanner *this)
{
  if (*(this + 145))
  {
    return;
  }

  if ((*(this + 144) & 1) == 0)
  {

    YAML::Scanner::StartStream(this);
  }

  YAML::Scanner::ScanToNextToken(this);
  YAML::Scanner::PopIndentToHere(this);
  AheadTo = YAML::Stream::operator BOOL(this);
  if (AheadTo)
  {
    if (*(this + 4))
    {
      goto LABEL_5;
    }

    if (!*(this + 8) || *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) != 37)
    {
      v4 = YAML::Exp::DocStart(AheadTo);
      v15 = 0;
      v16 = this;
      if (*(this + 8) || (AheadTo = YAML::Stream::_ReadAheadTo(this, 0), (AheadTo & 1) != 0))
      {
        AheadTo = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v4, &v15);
        if ((AheadTo & 0x80000000) == 0)
        {
          YAML::Scanner::ScanDocStart(this);
          return;
        }
      }

      if (!*(this + 4))
      {
        v7 = YAML::Exp::DocEnd(AheadTo);
        v15 = 0;
        v16 = this;
        if (*(this + 8) || (AheadTo = YAML::Stream::_ReadAheadTo(this, 0), (AheadTo & 1) != 0))
        {
          AheadTo = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v7, &v15);
          if ((AheadTo & 0x80000000) == 0)
          {
            YAML::Scanner::ScanDocEnd(this);
            return;
          }
        }
      }

LABEL_5:
      if (*(this + 8))
      {
        v3 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
        if (v3 <= 0x5C)
        {
          if (v3 == 44)
          {
            YAML::Scanner::ScanFlowEntry(this);
            return;
          }

          if (v3 == 91)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3 == 93 || v3 == 125)
          {
            YAML::Scanner::ScanFlowEnd(this);
            return;
          }

          if (v3 == 123)
          {
LABEL_10:
            YAML::Scanner::ScanFlowStart(this);
            return;
          }
        }
      }

      YAML::Exp::BlockEntry(AheadTo);
      v5 = YAML::RegEx::Matches(&unk_280AF4530, this);
      if (v5)
      {
        YAML::Scanner::ScanBlockEntry(this);
        return;
      }

      if (*(this + 39))
      {
        YAML::Exp::KeyInFlow(v5);
        v6 = &unk_280AF4570;
      }

      else
      {
        YAML::Exp::Key(v5);
        v6 = &unk_280AF4550;
      }

      if (YAML::RegEx::Matches(v6, this))
      {
        YAML::Scanner::ScanKey(this);
        return;
      }

      ValueRegex = YAML::Scanner::GetValueRegex(this);
      v9 = YAML::RegEx::Matches(ValueRegex, this);
      if (v9)
      {
        YAML::Scanner::ScanValue(this);
        return;
      }

      if (!*(this + 8))
      {
        if (!*(this + 39))
        {
LABEL_56:
          v11 = YAML::Exp::PlainScalar(v9);
          goto LABEL_57;
        }

LABEL_50:
        v11 = YAML::Exp::PlainScalarInFlow(v9);
LABEL_57:
        if (!YAML::RegEx::Matches(v11, this))
        {
          exception = __cxa_allocate_exception(0x38uLL);
          v14 = *(this + 4);
          v17 = *(this + 1);
          v18 = v14;
          std::string::basic_string[abi:ne200100]<0>(&v15, "unknown token");
          YAML::Exception::Exception(exception, &v17, &v15);
          *exception = &unk_28671C278;
        }

        YAML::Scanner::ScanPlainScalar(this);
        return;
      }

      v10 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
      if (v10 == 33)
      {
        YAML::Scanner::ScanTag(this);
        return;
      }

      if (v10 == 42 || v10 == 38)
      {
        YAML::Scanner::ScanAnchorOrAlias(this);
        return;
      }

      v12 = *(this + 39);
      if (v12)
      {
        if (v10 != 39 && v10 != 34)
        {
          goto LABEL_55;
        }

LABEL_62:
        YAML::Scanner::ScanQuotedScalar(this);
        return;
      }

      if (*(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) > 0x3Du)
      {
        if (v10 == 124 || v10 == 62)
        {
          YAML::Scanner::ScanBlockScalar(this);
          return;
        }
      }

      else if (v10 == 34 || v10 == 39)
      {
        goto LABEL_62;
      }

LABEL_55:
      if (!v12)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }

    YAML::Scanner::ScanDirective(this);
  }

  else
  {

    YAML::Scanner::EndStream(this);
  }
}

void sub_254D3F28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void YAML::Scanner::StartStream(YAML::Scanner *this)
{
  *(this + 144) = 1;
  *(this + 146) = 1;
  operator new();
}

void sub_254D3F364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x259C29D90](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::Scanner::ScanToNextToken(YAML::Scanner *this)
{
  while (1)
  {
    while (YAML::Stream::operator BOOL(this))
    {
      if (!*(this + 8))
      {
        break;
      }

      v2 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
      if (v2 != 32 && v2 != 9)
      {
        break;
      }

      if (!*(this + 39))
      {
        {
          YAML::Exp::Tab(void)::e = 1;
          word_27F753994 = 9;
          qword_27F7539A0 = 0;
          unk_27F7539A8 = 0;
          qword_27F753998 = 0;
          __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Tab(void)::e, &dword_254C81000);
        }

        v12 = 0;
        v13[0] = this;
        if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::Tab(void)::e, &v12) & 0x80000000) == 0)
        {
          *(this + 146) = 0;
        }
      }

      YAML::Stream::get(this);
    }

    {
      YAML::Exp::Comment(void)::e = 1;
      word_27F7539BC = 35;
      qword_27F7539C8 = 0;
      unk_27F7539D0 = 0;
      qword_27F7539C0 = 0;
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Comment(void)::e, &dword_254C81000);
    }

    LODWORD(v12) = YAML::Exp::Comment(void)::e;
    WORD2(v12) = word_27F7539BC;
    memset(v13, 0, sizeof(v13));
    std::vector<YAML::RegEx>::__init_with_size[abi:ne200100]<YAML::RegEx*,YAML::RegEx*>(v13, qword_27F7539C0, qword_27F7539C8, (qword_27F7539C8 - qword_27F7539C0) >> 5);
    v14[0] = 0;
    v14[1] = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v4 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&v12, v14);
      v14[0] = v13;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v14);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = YAML::Stream::operator BOOL(this);
        if (v5)
        {
          do
          {
            v6 = YAML::Exp::Break(v5);
            v12 = 0;
            v13[0] = this;
            if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
            {
              v5 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v6, &v12);
              if ((v5 & 0x80000000) == 0)
              {
                break;
              }
            }

            YAML::Stream::get(this);
            v5 = YAML::Stream::operator BOOL(this);
          }

          while ((v5 & 1) != 0);
        }
      }
    }

    else
    {
      v14[0] = v13;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v14);
    }

    v7 = YAML::Exp::Break(v5);
    v12 = 0;
    v13[0] = this;
    if (!*(this + 8))
    {
      result = YAML::Stream::_ReadAheadTo(this, 0);
      if ((result & 1) == 0)
      {
        break;
      }
    }

    result = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v7, &v12);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v9 = YAML::Exp::Break(result);
    v12 = 0;
    v13[0] = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v10 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v9, &v12);
      if (v10 >= 1)
      {
        v11 = v10;
        do
        {
          YAML::Stream::get(this);
          --v11;
        }

        while (v11);
      }
    }

    YAML::Scanner::InvalidateSimpleKey(this);
    if (!*(this + 39))
    {
      *(this + 146) = 1;
    }
  }

  return result;
}

void sub_254D3F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::PopIndentToHere(YAML::Scanner *this)
{
  if (!*(this + 39))
  {
    v7[4] = v1;
    v7[5] = v2;
    v4 = *(this + 30);
    if (v4)
    {
      while (1)
      {
        v5 = *(*(*(this + 26) + (((v4 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(this + 29) - 1) & 0x1FF));
        v6 = *(this + 4);
        if (*v5 < v6)
        {
          goto LABEL_12;
        }

        if (*v5 == v6)
        {
          if (v5[1] != 1)
          {
            goto LABEL_12;
          }

          YAML::Exp::BlockEntry(this);
          v7[0] = 0;
          v7[1] = this;
          if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&unk_280AF4530, v7) & 0x80000000) == 0)
          {
            break;
          }
        }

        YAML::Scanner::PopIndent(this);
        v4 = *(this + 30);
        if (!v4)
        {
          return;
        }
      }

      while (1)
      {
        v4 = *(this + 30);
        if (!v4)
        {
          break;
        }

LABEL_12:
        if (*(*(*(*(this + 26) + (((v4 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(this + 29) - 1) & 0x1FF)) + 8) != 1)
        {
          return;
        }

        YAML::Scanner::PopIndent(this);
      }
    }
  }
}

void YAML::Scanner::EndStream(YAML::Scanner *this)
{
  if (*(this + 4) >= 1)
  {
    *(this + 4) = 0;
  }

  YAML::Scanner::PopAllIndents(this);
  while (1)
  {
    v2 = *(this + 24);
    if (!v2)
    {
      break;
    }

    *(this + 24) = v2 - 1;
    std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](this + 19, 1);
  }

  *(this + 145) = 1;
}

void *YAML::Exp::DocStart(YAML::Exp *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "---");
    v2 = YAML::RegEx::RegEx(&v11, __p, 6);
    v3 = YAML::Exp::BlankOrBreak(v2);
    v4 = 0;
    v5 = 0;
    memset(v6, 0, sizeof(v6));
    YAML::operator|(v3, &v4, &v7);
    YAML::operator+(&v11, &v7, &YAML::Exp::DocStart(void)::e);
    v13 = &v8;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v13 = v6;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v7 = &v12;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::DocStart(void)::e, &dword_254C81000);
  }

  return &YAML::Exp::DocStart(void)::e;
}

void sub_254D3F944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v24 - 40) = v23 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  *(v24 - 40) = v22;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  a13 = v24 - 64;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL YAML::RegEx::Matches(YAML::RegEx *this, const YAML::Stream *a2)
{
  v4[0] = 0;
  v4[1] = a2;
  if (*(a2 + 8))
  {
    return YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(this, v4) >= 0;
  }

  result = YAML::Stream::_ReadAheadTo(a2, 0);
  if (result)
  {
    return YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(this, v4) >= 0;
  }

  return result;
}

void *YAML::Exp::DocEnd(YAML::Exp *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "...");
    v2 = YAML::RegEx::RegEx(&v11, __p, 6);
    v3 = YAML::Exp::BlankOrBreak(v2);
    v4 = 0;
    v5 = 0;
    memset(v6, 0, sizeof(v6));
    YAML::operator|(v3, &v4, &v7);
    YAML::operator+(&v11, &v7, &YAML::Exp::DocEnd(void)::e);
    v13 = &v8;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v13 = v6;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v7 = &v12;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::DocEnd(void)::e, &dword_254C81000);
  }

  return &YAML::Exp::DocEnd(void)::e;
}

void sub_254D3FB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v24 - 40) = v23 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  *(v24 - 40) = v22;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  a13 = v24 - 64;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void YAML::Exp::BlockEntry(YAML::Exp *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_13, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&_MergedGlobals_13);
    if (v1)
    {
      v8 = 1;
      v9 = 45;
      memset(v10, 0, sizeof(v10));
      v2 = YAML::Exp::BlankOrBreak(v1);
      v3 = 0;
      v4 = 0;
      memset(v5, 0, sizeof(v5));
      YAML::operator|(v2, &v3, &v6);
      YAML::operator+(&v8, &v6, &unk_280AF4530);
      v11 = &v7;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v11);
      v11 = v5;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v11);
      v6 = v10;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4530, &dword_254C81000);
      __cxa_guard_release(&_MergedGlobals_13);
    }
  }
}

void sub_254D3FCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v8 - 40) = v7 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v8 - 40));
  *(v8 - 40) = v6;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v8 - 40));
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](va);
  __cxa_guard_abort(&_MergedGlobals_13);
  _Unwind_Resume(a1);
}

void YAML::Exp::Key(YAML::Exp *this)
{
  if ((atomic_load_explicit(&qword_280AF4508, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_280AF4508);
    if (v1)
    {
      v3 = 1;
      v4 = 63;
      memset(v5, 0, sizeof(v5));
      v2 = YAML::Exp::BlankOrBreak(v1);
      YAML::operator+(&v3, v2, &unk_280AF4550);
      v6 = v5;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4550, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4508);
    }
  }
}

void sub_254D3FDC0(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  __cxa_guard_abort(&qword_280AF4508);
  _Unwind_Resume(a1);
}

void YAML::Exp::KeyInFlow(YAML::Exp *this)
{
  if ((atomic_load_explicit(&qword_280AF4510, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_280AF4510);
    if (v1)
    {
      v3 = 1;
      v4 = 63;
      memset(v5, 0, sizeof(v5));
      v2 = YAML::Exp::BlankOrBreak(v1);
      YAML::operator+(&v3, v2, &unk_280AF4570);
      v6 = v5;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4570, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4510);
    }
  }
}

void sub_254D3FE9C(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  __cxa_guard_abort(&qword_280AF4510);
  _Unwind_Resume(a1);
}

int *YAML::Scanner::GetValueRegex(YAML::Scanner *this)
{
  if (*(this + 39))
  {
    if (*(this + 147) == 1)
    {
      v1 = &dword_280AF45B0;
      if ((atomic_load_explicit(&qword_280AF4520, memory_order_acquire) & 1) == 0)
      {
        v2 = &qword_280AF4520;
        if (__cxa_guard_acquire(&qword_280AF4520))
        {
          dword_280AF45B0 = 1;
          v1 = &dword_280AF45B0;
          word_280AF45B4 = 58;
          qword_280AF45C0 = 0;
          unk_280AF45C8 = 0;
          qword_280AF45B8 = 0;
LABEL_15:
          __cxa_atexit(YAML::RegEx::~RegEx, v1, &dword_254C81000);
          __cxa_guard_release(v2);
        }
      }
    }

    else
    {
      v1 = &unk_280AF45D0;
      if ((atomic_load_explicit(&qword_280AF4528, memory_order_acquire) & 1) == 0)
      {
        v6 = __cxa_guard_acquire(&qword_280AF4528);
        if (v6)
        {
          v15 = 1;
          v16 = 58;
          v18 = 0;
          v19 = 0;
          v17 = 0;
          v7 = YAML::Exp::BlankOrBreak(v6);
          std::string::basic_string[abi:ne200100]<0>(__p, ",}");
          YAML::RegEx::RegEx(&v10, __p, 3);
          YAML::operator|(v7, &v10, &v13);
          YAML::operator+(&v15, &v13, &unk_280AF45D0);
          v20 = v14;
          std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
          v20 = v12;
          std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
          if (v9 < 0)
          {
            operator delete(__p[0]);
          }

          v13 = &v17;
          std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
          v2 = &qword_280AF4528;
          v1 = &unk_280AF45D0;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v1 = &unk_280AF4590;
    if ((atomic_load_explicit(&qword_280AF4518, memory_order_acquire) & 1) == 0)
    {
      v3 = __cxa_guard_acquire(&qword_280AF4518);
      if (v3)
      {
        v15 = 1;
        v16 = 58;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v4 = YAML::Exp::BlankOrBreak(v3);
        v10 = 0;
        v11 = 0;
        memset(v12, 0, sizeof(v12));
        YAML::operator|(v4, &v10, &v13);
        YAML::operator+(&v15, &v13, &unk_280AF4590);
        __p[0] = v14;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v12;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](__p);
        v13 = &v17;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
        v2 = &qword_280AF4518;
        v1 = &unk_280AF4590;
        goto LABEL_15;
      }
    }
  }

  return v1;
}

void sub_254D4010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 40) = v19 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  *(v20 - 40) = &a16;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a19);
  __cxa_guard_abort(&qword_280AF4528);
  _Unwind_Resume(a1);
}

void *YAML::Exp::PlainScalar(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::BlankOrBreak(v2);
      YAML::RegEx::RegEx(&v19, v17, 3);
      YAML::operator|(v3, &v19, &v21);
      std::string::basic_string[abi:ne200100]<0>(__p, "-?:");
      v4 = YAML::RegEx::RegEx(&v13, __p, 3);
      v5 = YAML::Exp::BlankOrBreak(v4);
      v6 = 0;
      v7 = 0;
      memset(v8, 0, sizeof(v8));
      YAML::operator|(v5, &v6, &v9);
      YAML::operator+(&v13, &v9, &v15);
      YAML::operator|(&v21, &v15, &v23);
      YAML::operator!(&v23, &YAML::Exp::PlainScalar(void)::e);
      v25 = &v24;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v25 = &v16;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v25 = &v10;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v25 = v8;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v9 = &v14;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v9);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = &v22;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v15);
      v15 = &v20;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v15);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::PlainScalar(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::PlainScalar(void)::e;
}

void sub_254D403A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v39 - 40) = v38 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  *(v39 - 40) = &a29;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  *(v39 - 40) = &a15;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  *(v39 - 40) = v37;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  a14 = &a25;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a28 = v39 - 96;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = v39 - 128;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a28);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void *YAML::Exp::PlainScalarInFlow(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::BlankOrBreak(v2);
      YAML::RegEx::RegEx(&v14, v12, 3);
      YAML::operator|(v3, &v14, &v16);
      std::string::basic_string[abi:ne200100]<0>(__p, "-:");
      v4 = YAML::RegEx::RegEx(&v8, __p, 3);
      v5 = YAML::Exp::Blank(v4);
      YAML::operator+(&v8, v5, &v10);
      YAML::operator|(&v16, &v10, &v18);
      YAML::operator!(&v18, &YAML::Exp::PlainScalarInFlow(void)::e);
      v20 = &v19;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
      v20 = &v11;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
      v20 = &v9;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = &v17;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v10);
      v10 = &v15;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v10);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::PlainScalarInFlow(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::PlainScalarInFlow(void)::e;
}

void sub_254D40640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31)
{
  *(v32 - 40) = v31 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v32 - 40));
  *(v32 - 40) = &a21;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v32 - 40));
  *(v32 - 40) = &a17;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v32 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a20 = (v32 - 96);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = &a31;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void *YAML::ParserException::ParserException(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = YAML::Exception::Exception(a1, a2, a3);
  *result = &unk_28671C278;
  return result;
}

void YAML::ptr_vector<YAML::Scanner::IndentMarker>::push_back(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void YAML::Scanner::PopAllIndents(YAML::Scanner *this)
{
  if (!*(this + 39))
  {
    while (1)
    {
      v2 = *(this + 30);
      if (!v2 || *(*(*(*(this + 26) + (((v2 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v2 + *(this + 29) - 1) & 0x1FF)) + 4) == 2)
      {
        break;
      }

      YAML::Scanner::PopIndent(this);
    }
  }
}

unint64_t YAML::Scanner::PushToken(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  LODWORD(v7) = 0;
  DWORD1(v7) = a2;
  *(&v7 + 1) = v3;
  v8 = v4;
  *__p = 0u;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  std::deque<YAML::Token>::push_back(a1 + 96, &v7);
  v12 = v10 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (SBYTE7(v10[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 136) + *(a1 + 128) - 1;
  return *(*(a1 + 104) + 8 * (v5 / 0x33)) + 80 * (v5 % 0x33);
}

void sub_254D4098C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::Token::~Token(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Scanner::GetStartTokenFor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 4;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      __assert_rtn("GetStartTokenFor", "scanner.cpp", 279, "false");
    }

    __assert_rtn("GetStartTokenFor", "scanner.cpp", 282, "false");
  }

  return 3;
}

uint64_t YAML::Scanner::PushIndentTo(uint64_t a1)
{
  if (!*(a1 + 312))
  {
    operator new();
  }

  return 0;
}

void YAML::Scanner::PopIndent(YAML::Scanner *this)
{
  v3 = *(this + 26);
  v2 = *(this + 27);
  v4 = ((v2 - v3) << 6) - 1;
  if (v2 == v3)
  {
    v4 = 0;
  }

  v5 = *(this + 30) - 1;
  v6 = v5 + *(this + 29);
  v7 = *(*(v3 + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF));
  *(this + 30) = v5;
  if (v4 - v6 >= 0x400)
  {
    operator delete(*(v2 - 8));
    *(this + 27) -= 8;
  }

  if (*(v7 + 8))
  {

    YAML::Scanner::InvalidateSimpleKey(this);
  }

  else
  {
    v8 = *(v7 + 4);
    if (v8)
    {
      if (v8 != 1)
      {
        return;
      }

      v9 = *(this + 1);
      v10 = *(this + 4);
      *&v13 = 0x500000000;
      *(&v13 + 1) = v9;
      v14 = v10;
      *__p = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      std::deque<YAML::Token>::push_back(this + 96, &v13);
    }

    else
    {
      v11 = *(this + 1);
      v12 = *(this + 4);
      *&v13 = 0x600000000;
      *(&v13 + 1) = v11;
      v14 = v12;
      *__p = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      std::deque<YAML::Token>::push_back(this + 96, &v13);
    }

    v19 = &v16 + 1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_254D40CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::Token::~Token(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Scanner::GetTopIndent(YAML::Scanner *this)
{
  v1 = *(this + 30);
  if (v1)
  {
    return **(*(*(this + 26) + (((v1 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v1 + *(this + 29) - 1) & 0x1FF));
  }

  else
  {
    return 0;
  }
}

void YAML::Scanner::ThrowParserException(void *a1, uint64_t a2)
{
  v6 = -1;
  v7 = -1;
  if (a1[17])
  {
    v3 = *(a1[13] + 8 * (a1[16] / 0x33uLL)) + 80 * (a1[16] % 0x33uLL);
    v4 = *(v3 + 16);
    v6 = *(v3 + 8);
    v7 = v4;
  }

  exception = __cxa_allocate_exception(0x38uLL);
  YAML::ParserException::ParserException(exception, &v6, a2);
}

uint64_t std::deque<YAML::Scanner::IndentMarker *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
}

uint64_t std::deque<YAML::Scanner::SimpleKey>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 85;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
}

uint64_t std::deque<YAML::Token>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x33];
    v7 = *v6 + 80 * (v5 % 0x33);
    v8 = v3[(*(a1 + 40) + v5) / 0x33] + 80 * ((*(a1 + 40) + v5) % 0x33);
    if (v7 != v8)
    {
      do
      {
        std::allocator<YAML::Token>::destroy[abi:ne200100](a1, v7);
        v7 += 80;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 25;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 51;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<YAML::Token>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }
}

void std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x259C29D90](result, 0x1020C406E52F545);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::deque<YAML::Token>::pop_front(int64x2_t *a1)
{
  std::allocator<YAML::Token>::destroy[abi:ne200100](a1, *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x33uLL)) + 80 * (a1[2].i64[0] % 0x33uLL));
  a1[2] = vaddq_s64(a1[2], xmmword_254E1F970);

  return std::deque<YAML::Token>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<YAML::Token>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x33)
  {
    a2 = 1;
  }

  if (v2 < 0x66)
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
    *(a1 + 32) -= 51;
  }

  return v4 ^ 1u;
}

void *std::deque<YAML::Scanner::IndentMarker *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<YAML::Scanner::IndentMarker *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<YAML::Scanner::IndentMarker *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::IndentMarker **>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<YAML::Scanner::IndentMarker **>::emplace_back<YAML::Scanner::IndentMarker **&>(a1, &v10);
}

void sub_254D41740(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<YAML::Scanner::IndentMarker **>::emplace_back<YAML::Scanner::IndentMarker **&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::IndentMarker **>>(v11);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::IndentMarker **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __cxx_global_array_dtor_2()
{
  v0 = &byte_280AF5737;
  v1 = -480;
  v2 = &byte_280AF5737;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void sub_254D41D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  if (v20 != v21)
  {
  }

  if (a14 != v17)
  {
  }

  _Unwind_Resume(a1);
}

void sub_254D420B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

id ConvertTestResults(const siri::intelligence::TestSuite *a1, const siri::intelligence::TestResults *a2)
{
  v33 = objc_opt_new();
  v35 = objc_opt_new();
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<siri::intelligence::TestParseError>::__init_with_size[abi:ne200100]<siri::intelligence::TestParseError*,siri::intelligence::TestParseError*>(&v46, *(a1 + 3), *(a1 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 4) - *(a1 + 3)) >> 4));
  v4 = v46;
  for (i = v47; v4 != i; v4 = (v4 + 48))
  {
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *v4, *(v4 + 1));
    }

    else
    {
      v6 = *v4;
      v38.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v38.__r_.__value_.__l.__data_ = v6;
    }

    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 3), *(v4 + 4));
    }

    else
    {
      v7 = *(v4 + 24);
      __p.__r_.__value_.__r.__words[2] = *(v4 + 5);
      *&__p.__r_.__value_.__l.__data_ = v7;
    }

    v8 = objc_opt_new();
    v9 = MEMORY[0x277CCACA8];
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    }

    else
    {
      v45 = v38;
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v45;
    }

    else
    {
      v10 = v45.__r_.__value_.__r.__words[0];
    }

    v11 = [v9 stringWithUTF8String:v10];
    [v8 setFlowId:v11];

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    v12 = MEMORY[0x277CCACA8];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v45 = __p;
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v45;
    }

    else
    {
      v13 = v45.__r_.__value_.__r.__words[0];
    }

    v14 = [v12 stringWithUTF8String:v13];
    [v8 setError:v14];

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    [v35 addObject:v8];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  v38.__r_.__value_.__r.__words[0] = &v46;
  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&v38);
  v15 = objc_opt_new();
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<siri::intelligence::TestResult>::__init_with_size[abi:ne200100]<siri::intelligence::TestResult*,siri::intelligence::TestResult*>(&v46, *(a2 + 1), *(a2 + 2), 0xD37A6F4DE9BD37A7 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  v16 = v46;
  for (j = v47; v16 != j; v16 = (v16 + 184))
  {
    siri::intelligence::TestCase::TestCase(&v38, v16);
    siri::intelligence::TestResult::GetDescriptions(v16, &v45);
    size = v45.__r_.__value_.__l.__size_;
    for (k = v45.__r_.__value_.__r.__words[0]; k != size; k += 24)
    {
      if (*(k + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *k, *(k + 8));
      }

      else
      {
        v19 = *k;
        v37.__r_.__value_.__r.__words[2] = *(k + 16);
        *&v37.__r_.__value_.__l.__data_ = v19;
      }

      v20 = objc_opt_new();
      v21 = v20;
      v22 = (*(v16 + 38) - 1);
      if (v22 < 3)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      [v20 setStatus:v23];
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v37;
      }

      else
      {
        v24 = v37.__r_.__value_.__r.__words[0];
      }

      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
      [v21 setSummary:v25];

      v26 = MEMORY[0x277CCACA8];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = __p;
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v36;
      }

      else
      {
        v27 = v36.__r_.__value_.__r.__words[0];
      }

      v28 = [v26 stringWithUTF8String:v27];
      [v21 setFlowId:v28];

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      v29 = MEMORY[0x277CCACA8];
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v40;
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v36;
      }

      else
      {
        v30 = v36.__r_.__value_.__r.__words[0];
      }

      v31 = [v29 stringWithUTF8String:v30];
      [v21 setTestName:v31];

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      [v15 addObject:v21];

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }

    v37.__r_.__value_.__r.__words[0] = &v45;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
    v45.__r_.__value_.__r.__words[0] = &v44;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
    v45.__r_.__value_.__r.__words[0] = &v43;
    std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v45);
    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  v38.__r_.__value_.__r.__words[0] = &v46;
  std::vector<siri::intelligence::TestResult>::__destroy_vector::operator()[abi:ne200100](&v38);
  [v33 setParseErrors:v35];
  [v33 setResults:v15];

  return v33;
}

void sub_254D42924(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  _Unwind_Resume(a1);
}

id MakeEmptyTestResults(void)
{
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  [v0 setParseErrors:v1];

  v2 = objc_opt_new();
  [v0 setResults:v2];

  return v0;
}

void sub_254D42A4C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_254D42DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_254D43208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_254D43548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_254D43770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_254D43920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_254D43A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254D43B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254D43BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254D43D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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
  }

  _Unwind_Resume(a1);
}

void sub_254D43EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::TestResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<siri::intelligence::TestResult>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<siri::intelligence::TestResult>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = v3 - 3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      v5 = v3 - 7;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      v5 = v3 - 10;
      std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v5);
      if (*(v3 - 89) < 0)
      {
        operator delete(*(v3 - 14));
      }

      if (*(v3 - 113) < 0)
      {
        operator delete(*(v3 - 17));
      }

      if (*(v3 - 137) < 0)
      {
        operator delete(*(v3 - 20));
      }

      v4 = v3 - 23;
      if (*(v3 - 161) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 23;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_254D441D0(_Unwind_Exception *exception_object)
{
  v4 = v1[10];
  if (v4)
  {
    v1[11] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[8] = v5;
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    v1[5] = v6;
    operator delete(v6);
  }

  v7 = v1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<YAML::detail::node *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1, v10);
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

void YAML::NodeBuilder::~NodeBuilder(YAML::NodeBuilder *this)
{
  *this = &unk_28671B8D0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

{
  YAML::NodeBuilder::~NodeBuilder(this);

  JUMPOUT(0x259C29D90);
}

void YAML::NodeBuilder::Root(YAML::NodeBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = v4;
      *(a2 + 40) = v3;
      *(a2 + 48) = v2;
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = v4;
      *(a2 + 40) = 0;
      *(a2 + 48) = v2;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
  }
}

void YAML::NodeBuilder::Pop(YAML::NodeBuilder *this)
{
  v2 = *(this + 4);
  v1 = *(this + 5);
  if (v2 == v1)
  {
    __assert_rtn("Pop", "nodebuilder.cpp", 100, "!m_stack.empty()");
  }

  if (v1 - v2 == 8)
  {
    *(this + 3) = *v2;
    *(this + 5) = v1 - 8;
    return;
  }

  v6 = *(v1 - 1);
  v4 = v1 - 8;
  v5 = v6;
  *(this + 5) = v4;
  v7 = *(v4 - 1);
  v8 = **v7;
  if (*v8 != 1)
  {
    goto LABEL_32;
  }

  v9 = *(v8 + 4);
  if (v9 != 4)
  {
    if (v9 == 3)
    {
      v10 = *(this + 1);
      v11 = *(this + 2);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v7;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v12;
        v19 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v19 = 0;
      }

      v18 = v10;
      YAML::detail::node_data::push_back(v8, v5);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      YAML::detail::node::add_dependency(v5, v7);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      return;
    }

LABEL_32:
    __assert_rtn("Pop", "nodebuilder.cpp", 124, "false");
  }

  v13 = *(this + 11);
  if (*(this + 10) == v13)
  {
    __assert_rtn("Pop", "nodebuilder.cpp", 115, "!m_keys.empty()");
  }

  if (*(v13 - 8) == 1)
  {
    v14 = *(v13 - 16);
    v15 = *(this + 1);
    v16 = *(this + 2);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v7;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v17;
      v19 = v16;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v19 = 0;
    }

    v18 = v15;
    YAML::detail::node_data::insert(v8, v14, v5, &v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    YAML::detail::node::add_dependency(v14, v7);
    YAML::detail::node::add_dependency(v5, v7);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    *(this + 11) -= 16;
  }

  else
  {
    *(v13 - 8) = 1;
  }
}

void sub_254D44718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void YAML::NodeBuilder::OnAlias(YAML::NodeBuilder *a1, uint64_t a2, uint64_t a3)
{
  YAML::NodeBuilder::Push(a1, *(*(a1 + 7) + 8 * a3));

  YAML::NodeBuilder::Pop(a1);
}

void YAML::NodeBuilder::Push(YAML::NodeBuilder *this, YAML::detail::node *a2)
{
  v6 = *(this + 4);
  v5 = *(this + 5);
  v4 = this + 32;
  if (v6 != v5 && (v7 = ***(v5 - 8), *v7 == 1) && *(v7 + 16) == 4)
  {
    v8 = *(this + 11) - *(this + 10);
    v9 = *(this + 13);
    v22 = a2;
    std::vector<YAML::detail::node *>::push_back[abi:ne200100](v4, &v22);
    if (v9 > v8 >> 4)
    {
      v11 = *(this + 11);
      v10 = *(this + 12);
      if (v11 >= v10)
      {
        v13 = *(this + 10);
        v14 = v11 - v13;
        v15 = (v11 - v13) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
        }

        v17 = v10 - v13;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v15;
        v20 = 16 * v15;
        *v20 = a2;
        *(v20 + 8) = 0;
        v12 = 16 * v15 + 16;
        v21 = (v20 - 16 * v19);
        memcpy(v21, v13, v14);
        *(this + 10) = v21;
        *(this + 11) = v12;
        *(this + 12) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v11 = a2;
        *(v11 + 8) = 0;
        v12 = v11 + 16;
      }

      *(this + 11) = v12;
    }
  }

  else
  {
    v22 = a2;
    std::vector<YAML::detail::node *>::push_back[abi:ne200100](v4, &v22);
  }
}

void YAML::NodeBuilder::OnMapEnd(YAML::NodeBuilder *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    __assert_rtn("OnMapEnd", "nodebuilder.cpp", 76, "m_mapDepth > 0");
  }

  *(this + 13) = v2 - 1;

  YAML::NodeBuilder::Pop(this);
}

void YAML::NodeBuilder::RegisterAnchor(YAML::NodeBuilder *this, uint64_t a2, YAML::detail::node *a3)
{
  if (a2)
  {
    v4 = *(this + 7);
    v5 = *(this + 8);
    v3 = this + 56;
    if (a2 != (v5 - v4) >> 3)
    {
      __assert_rtn("RegisterAnchor", "nodebuilder.cpp", 131, "anchor == m_anchors.size()");
    }

    v6 = a3;
    std::vector<YAML::detail::node *>::push_back[abi:ne200100](v3, &v6);
  }
}

void YAML::detail::node::add_dependency(YAML::detail::node *this, YAML::detail::node *a2)
{
  if (***this == 1)
  {

    YAML::detail::node::mark_defined(a2);
  }

  else
  {
    v2 = *(this + 3);
    if (!v2)
    {
LABEL_11:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v2;
        v4 = v2[4];
        if (v4 <= a2)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      if (v4 >= a2)
      {
        break;
      }

      v2 = v3[1];
      if (!v2)
      {
        goto LABEL_11;
      }
    }
  }
}

siri::intelligence::Variable *siri::intelligence::Variable::Variable(siri::intelligence::Variable *this)
{
  *(this + 1) = 0;
  *this = &unk_28671B958;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 32, siri::intelligence::TYPE_UNKNOWN);
  *(this + 7) = 0;
  *(this + 32) = 0;
  return this;
}

void sub_254D44D04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Variable::Variable(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *a1 = &unk_28671B958;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::string::operator=((a1 + 8), a2);
  std::string::operator=((a1 + 32), a3);
  *(a1 + 56) = 0;
  return a1;
}

void sub_254D44DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Variable::~Variable(void **this)
{
  *this = &unk_28671B958;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  siri::intelligence::Variable::~Variable(this);

  JUMPOUT(0x259C29D90);
}

void siri::intelligence::Variable::GetKey(siri::intelligence::Variable *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void siri::intelligence::Variable::GetType(siri::intelligence::Variable *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void siri::intelligence::Variable::GetFullKey(siri::intelligence::Variable *this@<X0>, uint64_t a2@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *a2 = *(this + 8);
    *(a2 + 16) = *(this + 3);
  }

  for (i = *(this + 7); i; i = *(i + 56))
  {
    v5 = *(i + 31);
    if (v5 < 0)
    {
      if (!*(i + 16))
      {
        break;
      }
    }

    else if (!*(i + 31))
    {
      break;
    }

    if (v5 >= 0)
    {
      v6 = *(i + 31);
    }

    else
    {
      v6 = *(i + 16);
    }

    std::string::basic_string[abi:ne200100](&v17, v6 + 1);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v17;
    }

    else
    {
      v7 = v17.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(i + 31) >= 0)
      {
        v8 = (i + 8);
      }

      else
      {
        v8 = *(i + 8);
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 46;
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::string::append(&v17, v10, v11);
    v13 = v12->__r_.__value_.__r.__words[0];
    v18[0] = v12->__r_.__value_.__l.__size_;
    *(v18 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v15 = v18[0];
    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 15) = *(v18 + 7);
    *(a2 + 23) = v14;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_254D45078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D451A4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void siri::intelligence::Variable::FromProtobuf(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if ((v4 & 8) != 0)
  {
    v7 = *(a1 + 144);
    operator new();
  }

  if ((v4 & 0x10) != 0)
  {
    v16 = 0uLL;
    v17 = 0;
    v14 = 0uLL;
    v15 = 0;
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v14, a1 + 96);
    if (DWORD2(v14))
    {
      if (v15)
      {
        v8 = (v15 + 8);
      }

      else
      {
        v8 = 0;
      }

      do
      {
        std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&v16, *v8++);
        if (v15)
        {
          v9 = v15 + 8;
        }

        else
        {
          v9 = 0;
        }
      }

      while (v8 != (v9 + 8 * SDWORD2(v14)));
    }

    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v14);
    v10 = *(a1 + 152);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
  }

  if ((v4 & 2) != 0)
  {
    v11 = *(a1 + 128);
    operator new();
  }

  if ((v4 & 0x100) != 0)
  {
    v12 = *(a1 + 184);
    operator new();
  }

  if ((v4 & 0x80) != 0)
  {
    v13 = *(a1 + 176);
    operator new();
  }

  if (*(a1 + 80) >= 1)
  {
    v16 = 0uLL;
    v17 = 0;
    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::RepeatedPtrField(&v14, a1 + 72);
    if (DWORD2(v14))
    {
      if (v15)
      {
        v5 = (v15 + 8);
      }

      else
      {
        v5 = 0;
      }

      do
      {
        std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&v16, *v5++);
        if (v15)
        {
          v6 = v15 + 8;
        }

        else
        {
          v6 = 0;
        }
      }

      while (v5 != (v6 + 8 * SDWORD2(v14)));
    }

    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v14);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,std::string const&,std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
  }

  if (*(a1 + 56) >= 1)
  {
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableArray,std::allocator<siri::intelligence::VariableArray>,std::string const&,0>();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_254D455C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<protobuf::Intelligence_KeyValueParameter>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](uint64_t a1, const protobuf::Intelligence_KeyValueParameter *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<protobuf::Intelligence_KeyValueParameter>::__emplace_back_slow_path<protobuf::Intelligence_KeyValueParameter const&>(a1, a2);
  }

  else
  {
    protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(*(a1 + 8), a2);
    result = v3 + 192;
    *(a1 + 8) = v3 + 192;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<siri::intelligence::Variable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671B9D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::vector<protobuf::Intelligence_KeyValueParameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 192;
      v7 = v4 - 192;
      v8 = v4 - 192;
      do
      {
        v9 = *v8;
        v8 -= 192;
        (*v9)(v7);
        v6 -= 192;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::RepeatedPtrField(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1, a2);
  return a1;
}

uint64_t std::vector<protobuf::Intelligence_KeyValueParameter>::__emplace_back_slow_path<protobuf::Intelligence_KeyValueParameter const&>(uint64_t a1, const protobuf::Intelligence_KeyValueParameter *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>>(a1, v6);
  }

  v13 = 0;
  v14 = 192 * v2;
  protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter((192 * v2), a2);
  v15 = 192 * v2 + 192;
  v7 = *(a1 + 8);
  v8 = (192 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>,protobuf::Intelligence_KeyValueParameter*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<protobuf::Intelligence_KeyValueParameter>::~__split_buffer(&v13);
  return v12;
}

void sub_254D459B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<protobuf::Intelligence_KeyValueParameter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>,protobuf::Intelligence_KeyValueParameter*>(uint64_t a1, protobuf::Intelligence_KeyValueParameter *a2, protobuf::Intelligence_KeyValueParameter *a3, protobuf::Intelligence_KeyValueParameter *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(a4, v7);
      v7 = (v7 + 192);
      a4 = (v8 + 192);
    }

    while (v7 != a3);
    v9 = v6;
    v10 = v6;
    do
    {
      v11 = *v10;
      v10 = (v10 + 192);
      (*v11)(v6);
      v9 = (v9 + 192);
      v6 = v10;
    }

    while (v10 != a3);
  }
}

protobuf::Intelligence_KeyValueParameter *protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(protobuf::Intelligence_KeyValueParameter *a1, protobuf::Intelligence_KeyValueParameter *a2)
{
  protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(a1);
  if (a1 != a2)
  {
    protobuf::Intelligence_KeyValueParameter::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t std::__split_buffer<protobuf::Intelligence_KeyValueParameter>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 192);
    *(a1 + 16) = i - 192;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__shared_ptr_emplace<siri::intelligence::VariableDictionary>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,std::allocator<siri::intelligence::VariableDictionary>,0>(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671B030;
  std::allocator<siri::intelligence::VariableDictionary>::construct[abi:ne200100]<siri::intelligence::VariableDictionary,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::allocator<siri::intelligence::VariableDictionary>::construct[abi:ne200100]<siri::intelligence::VariableDictionary,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &>(int a1, void *a2, char *__s, uint64_t *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  siri::intelligence::VariableDictionary::VariableDictionary(a2, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D45CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D45D44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_254D45E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Loader::LoadFile(uint64_t a1)
{
  siri::intelligence::GetFormatForFilename(a1);

  siri::intelligence::Loader::LoadFile();
}

void *_ZNSt3__120__shared_ptr_emplaceIN8protobuf12IntelligenceENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671BA30;
  protobuf::Intelligence::Intelligence((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<protobuf::Intelligence>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671BA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void siri::intelligence::Validator::Validate(uint64_t a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<siri::intelligence::ValidationResult>::__init_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(a2, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 6);
  std::set<std::string>::set[abi:ne200100](a2 + 3, (a1 + 24));
  _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_254D47D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  google::protobuf::internal::LogMessage::~LogMessage((v23 - 144));
  siri::intelligence::ValidationData::~ValidationData(&a23);
  std::__tree<std::string>::destroy((a14 + 3), a14[4]);
  a23 = a14;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void siri::intelligence::ValidateAll(siri::intelligence *this, const protobuf::Intelligence *a2, siri::intelligence::ValidationData *a3, siri::intelligence::ValidationResults *a4)
{
  if ((*(this + 4) & 2) != 0)
  {
    v6 = *(this + 67);
    if (!v6)
    {
      google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 22110);
      v7 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || start_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v765, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
      v6 = *(this + 67);
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &protobuf::_Intelligence_Start_default_instance_;
    }

    if (*(v8 + 8) >= 1)
    {
      if (v8[2])
      {
        v9 = std::string::basic_string[abi:ne200100]<0>(&__p, "start definition contains both responseIds and an activityId");
        v10 = v8[1];
        if (v10)
        {
          v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v9);
          v11 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v765, "");
        siri::intelligence::GetLineNumFromUnknownField(v11, &v765, -1);
      }

      v12 = 0;
      do
      {
        v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v8 + 3), v12);
        if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v13))
        {
          v14 = std::operator+<char>();
          v15 = v8[1];
          if (v15)
          {
            v16 = (v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v14);
            v16 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v765, "responseIds");
          siri::intelligence::GetLineNumFromUnknownField(v16, &v765, v12);
        }

        ++v12;
      }

      while (v12 < *(v8 + 8));
    }

    if (v8[2])
    {
      v17 = v8[6];
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v17, *(v17 + 1));
      }

      else
      {
        v18 = *v17;
        __p.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&__p.__r_.__value_.__l.__data_ = v18;
      }

      if ((a2 + 200) == std::__tree<std::string>::find<std::string>(a2 + 192, &__p.__r_.__value_.__l.__data_))
      {
        v19 = std::operator+<char>();
        v20 = v8[1];
        if (v20)
        {
          v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v19);
          v21 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "activityId");
        siri::intelligence::GetLineNumFromUnknownField(v21, &v764, -1);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(this + 62) >= 1)
  {
    siri::intelligence::Utils::VersionLessThan(a2);
  }

  v22 = this;
  if (*(this + 8) >= 1)
  {
    v23 = 0;
    do
    {
      v24 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(v22 + 24, v23);
      if ((*(v24 + 16) & 1) == 0)
      {
        v25 = v24;
        v26 = std::string::basic_string[abi:ne200100]<0>(&__p, "Meta element has no name");
        v27 = *(v25 + 8);
        if (v27)
        {
          v28 = (v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v26);
          v28 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v765, "");
        siri::intelligence::GetLineNumFromUnknownField(v28, &v765, -1);
      }

      ++v23;
      v22 = this;
    }

    while (v23 < *(this + 8));
  }

  v29 = v22;
  if (*(v22 + 14) >= 1)
  {
    for (i = 0; i < *(this + 14); ++i)
    {
      v31 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(v29 + 48, i);
      std::string::basic_string[abi:ne200100]<0>(&__p, "dialog response ");
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = *(v31 + 120);
        std::operator+<char>();
        v34 = std::string::append(&v764, "' ");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v765.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v765.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v765;
        }

        else
        {
          v36 = v765.__r_.__value_.__r.__words[0];
        }

        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v765.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v36, size);
        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }

        v32 = *(v31 + 16);
      }

      if ((v32 & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v38 = __p.__r_.__value_.__l.__size_;
        }

        v39 = std::string::basic_string[abi:ne200100](&v765, v38 + 21);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v765;
        }

        else
        {
          v40 = v765.__r_.__value_.__r.__words[0];
        }

        if (v38)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v39 = memmove(v40, p_p, v38);
        }

        strcpy(v40 + v38, "does not define an id");
        v42 = *(v31 + 8);
        if (v42)
        {
          v43 = (v42 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v39);
          v43 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v43, &v764, -1);
      }

      if ((siri::intelligence::IsValidId(*(v31 + 120)) & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = __p.__r_.__value_.__l.__size_;
        }

        v45 = std::string::basic_string[abi:ne200100](&v765, v44 + 32);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v765;
        }

        else
        {
          v46 = v765.__r_.__value_.__r.__words[0];
        }

        if (v44)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__p;
          }

          else
          {
            v47 = __p.__r_.__value_.__r.__words[0];
          }

          v45 = memmove(v46, v47, v44);
        }

        strcpy(v46 + v44, "has invalid characters in the ID");
        v48 = *(v31 + 8);
        if (v48)
        {
          v49 = (v48 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v45);
          v49 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "id");
        siri::intelligence::GetLineNumFromUnknownField(v49, &v764, -1);
      }

      v50 = *(v31 + 120);
      if (*(v31 + 80) == 1)
      {
        v51 = *(*(v31 + 88) + 8);
        v52 = *(v50 + 8);
        v53 = *(v50 + 23);
        v54 = *(v51 + 23);
        if (v54 >= 0)
        {
          v55 = *(v51 + 23);
        }

        else
        {
          v55 = *(v51 + 8);
        }

        if (v53 >= 0)
        {
          v52 = *(v50 + 23);
        }

        if (v55 == v52)
        {
          v56 = v54 >= 0 ? *(*(v31 + 88) + 8) : *v51;
          v57 = *v50;
          v58 = v53 >= 0 ? *(v31 + 120) : *v50;
          if (!memcmp(v56, v58, v55))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v59 = __p.__r_.__value_.__l.__size_;
            }

            v60 = std::string::basic_string[abi:ne200100](&v765, v59 + 42);
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v765;
            }

            else
            {
              v61 = v765.__r_.__value_.__r.__words[0];
            }

            if (v59)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v62 = &__p;
              }

              else
              {
                v62 = __p.__r_.__value_.__r.__words[0];
              }

              v60 = memmove(v61, v62, v59);
            }

            strcpy(v61 + v59, "has a single next id that refers to itself");
            v63 = *(v31 + 8);
            if (v63)
            {
              v64 = (v63 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v60);
              v64 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v764, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v64, &v764, 0);
          }
        }
      }

      v65 = std::__tree<std::string>::find<std::string>(a2 + 240, v50);
      if ((a2 + 248) == v65)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v66 = __p.__r_.__value_.__l.__size_;
        }

        v67 = std::string::basic_string[abi:ne200100](&v765, v66 + 12);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &v765;
        }

        else
        {
          v68 = v765.__r_.__value_.__r.__words[0];
        }

        if (v66)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = &__p;
          }

          else
          {
            v69 = __p.__r_.__value_.__r.__words[0];
          }

          v67 = memmove(v68, v69, v66);
        }

        strcpy(v68 + v66, "is not used.");
        v70 = *(v31 + 8);
        if (v70)
        {
          v71 = (v70 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v67);
          v71 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v71, &v764, -1);
      }

      if (*(v31 + 80) >= 1)
      {
        v72 = 0;
        do
        {
          v73 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v31 + 72, v72);
          v65 = std::__tree<std::string>::find<std::string>(a2 + 72, v73);
          if ((a2 + 80) == v65)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v74 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v74 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v764, v74 + 29);
            if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v75 = &v764;
            }

            else
            {
              v75 = v764.__r_.__value_.__r.__words[0];
            }

            if (v74)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v76 = &__p;
              }

              else
              {
                v76 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v75, v76, v74);
            }

            strcpy(v75 + v74, "refers to undefined next id: ");
            v77 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v31 + 72, v72);
            v78 = *(v77 + 23);
            if (v78 >= 0)
            {
              v79 = v77;
            }

            else
            {
              v79 = *v77;
            }

            if (v78 >= 0)
            {
              v80 = *(v77 + 23);
            }

            else
            {
              v80 = *(v77 + 8);
            }

            v81 = std::string::append(&v764, v79, v80);
            v765 = *v81;
            v81->__r_.__value_.__l.__size_ = 0;
            v81->__r_.__value_.__r.__words[2] = 0;
            v81->__r_.__value_.__r.__words[0] = 0;
            v82 = *(v31 + 8);
            if (v82)
            {
              v83 = (v82 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v81);
              v83 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v763, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v83, &v763, v72);
          }

          ++v72;
        }

        while (v72 < *(v31 + 80));
      }

      v84 = *(v31 + 216);
      if ((*(v84 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v84 + 8))
        {
          goto LABEL_179;
        }
      }

      else if (!*(v84 + 23))
      {
        goto LABEL_179;
      }

      v65 = std::__tree<std::string>::find<std::string>(a2 + 96, v84);
      if ((a2 + 104) == v65)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v764, v85 + 33);
        if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = &v764;
        }

        else
        {
          v86 = v764.__r_.__value_.__r.__words[0];
        }

        if (v85)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v87 = &__p;
          }

          else
          {
            v87 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v86, v87, v85);
        }

        strcpy(v86 + v85, "refers to undefined input group: ");
        v88 = *(v31 + 216);
        v89 = *(v88 + 23);
        if (v89 >= 0)
        {
          v90 = *(v31 + 216);
        }

        else
        {
          v90 = *v88;
        }

        if (v89 >= 0)
        {
          v91 = *(v88 + 23);
        }

        else
        {
          v91 = *(v88 + 8);
        }

        v92 = std::string::append(&v764, v90, v91);
        v765 = *v92;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v93 = *(v31 + 8);
        if (v93)
        {
          v94 = (v93 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v92);
          v94 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v763, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v94, &v763, -1);
      }

LABEL_179:
      v95 = *(v31 + 208);
      if ((*(v95 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v95 + 8))
        {
          goto LABEL_204;
        }
      }

      else if (!*(v95 + 23))
      {
        goto LABEL_204;
      }

      v65 = std::__tree<std::string>::find<std::string>(a2 + 168, v95);
      if ((a2 + 176) == v65)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v96 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v764, v96 + 31);
        if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v97 = &v764;
        }

        else
        {
          v97 = v764.__r_.__value_.__r.__words[0];
        }

        if (v96)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v98 = &__p;
          }

          else
          {
            v98 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v97, v98, v96);
        }

        strcpy(v97 + v96, "refers to undefined condition: ");
        v99 = *(v31 + 208);
        v100 = *(v99 + 23);
        if (v100 >= 0)
        {
          v101 = *(v31 + 208);
        }

        else
        {
          v101 = *v99;
        }

        if (v100 >= 0)
        {
          v102 = *(v99 + 23);
        }

        else
        {
          v102 = *(v99 + 8);
        }

        v103 = std::string::append(&v764, v101, v102);
        v765 = *v103;
        v103->__r_.__value_.__l.__size_ = 0;
        v103->__r_.__value_.__r.__words[2] = 0;
        v103->__r_.__value_.__r.__words[0] = 0;
        v104 = *(v31 + 8);
        if (v104)
        {
          v105 = (v104 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v103);
          v105 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v763, "conditionId");
        siri::intelligence::GetLineNumFromUnknownField(v105, &v763, -1);
      }

LABEL_204:
      v106 = *(v31 + 16);
      if (*(v31 + 80) >= 1 && (v106 & 0x1000) != 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v107 = __p.__r_.__value_.__l.__size_;
        }

        v108 = std::string::basic_string[abi:ne200100](&v765, v107 + 38);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v109 = &v765;
        }

        else
        {
          v109 = v765.__r_.__value_.__r.__words[0];
        }

        if (v107)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v110 = &__p;
          }

          else
          {
            v110 = __p.__r_.__value_.__r.__words[0];
          }

          v108 = memmove(v109, v110, v107);
        }

        strcpy(v109 + v107, "contains both nextIds and inputGroupId");
        v111 = *(v31 + 8);
        if (v111)
        {
          v112 = (v111 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v108);
          v112 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v112, &v764, -1);
      }

      if ((v106 & 0x80) != 0)
      {
        v113 = *(v31 + 176);
        v114 = *(v31 + 8);
        if (v114)
        {
          v115 = (v114 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v65);
          v115 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v765, "text");
        siri::intelligence::GetLineNumFromUnknownField(v115, &v765, -1);
      }

      if (*(v31 + 32) >= 1 && (v106 & 0x200) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v116 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v116 = __p.__r_.__value_.__l.__size_;
        }

        v117 = std::string::basic_string[abi:ne200100](&v765, v116 + 36);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v118 = &v765;
        }

        else
        {
          v118 = v765.__r_.__value_.__r.__words[0];
        }

        if (v116)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v119 = &__p;
          }

          else
          {
            v119 = __p.__r_.__value_.__r.__words[0];
          }

          v117 = memmove(v118, v119, v116);
        }

        strcpy(v118 + v116, "defines CAT parameters but no CAT ID");
        v120 = *(v31 + 8);
        if (v120)
        {
          v121 = (v120 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v117);
          v121 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "catParameters");
        siri::intelligence::GetLineNumFromUnknownField(v121, &v764, -1);
      }

      if (*(v31 + 56) >= 1 && (v106 & 0x400) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v122 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v122 = __p.__r_.__value_.__l.__size_;
        }

        v123 = std::string::basic_string[abi:ne200100](&v765, v122 + 44);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v124 = &v765;
        }

        else
        {
          v124 = v765.__r_.__value_.__r.__words[0];
        }

        if (v122)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v125 = &__p;
          }

          else
          {
            v125 = __p.__r_.__value_.__r.__words[0];
          }

          v123 = memmove(v124, v125, v122);
        }

        strcpy(v124 + v122, "defines Pattern parameters but no Pattern ID");
        v126 = *(v31 + 8);
        if (v126)
        {
          v127 = (v126 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v123);
          v127 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "patternParameters");
        siri::intelligence::GetLineNumFromUnknownField(v127, &v764, -1);
      }

      if ((v106 & 0x200) != 0)
      {
        v128 = *(v31 + 192);
        std::string::basic_string[abi:ne200100]<0>(&v765, "#");
        if (siri::intelligence::StringContains(v128, &v765))
        {
          v129 = *(a2 + 47);
          if (v129 < 0)
          {
            v129 = *(a2 + 4);
          }

          v130 = v129 != 0;
        }

        else
        {
          v130 = 0;
        }

        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
          if (!v130)
          {
            goto LABEL_268;
          }
        }

        else if (!v130)
        {
          goto LABEL_268;
        }

        if (siri::intelligence::DirExists(a2 + 6))
        {
          siri::intelligence::FindPathForCatId(a2 + 48, *(v31 + 192));
        }
      }

LABEL_268:
      if ((*(v31 + 17) & 4) != 0)
      {
        v131 = *(v31 + 200);
        std::string::basic_string[abi:ne200100]<0>(&v765, "#");
        if (siri::intelligence::StringContains(v131, &v765))
        {
          v132 = *(a2 + 47);
          if (v132 < 0)
          {
            v132 = *(a2 + 4);
          }

          v133 = v132 != 0;
        }

        else
        {
          v133 = 0;
        }

        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
          if (v133)
          {
LABEL_278:
            if (siri::intelligence::DirExists(a2 + 6))
            {
              siri::intelligence::FindFileForPatternId(*(v31 + 200), &v765);
              if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v134 = SHIBYTE(v765.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v134 = v765.__r_.__value_.__l.__size_;
              }

              if ((SHIBYTE(v765.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                operator delete(v765.__r_.__value_.__l.__data_);
                if (!v134)
                {
LABEL_286:
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v135 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v135 = __p.__r_.__value_.__l.__size_;
                  }

                  std::string::basic_string[abi:ne200100](&v764, v135 + 42);
                  if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v136 = &v764;
                  }

                  else
                  {
                    v136 = v764.__r_.__value_.__r.__words[0];
                  }

                  if (v135)
                  {
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v137 = &__p;
                    }

                    else
                    {
                      v137 = __p.__r_.__value_.__r.__words[0];
                    }

                    memmove(v136, v137, v135);
                  }

                  strcpy(v136 + v135, "defines a Pattern ID that does not exist: ");
                  v138 = *(v31 + 200);
                  v139 = *(v138 + 23);
                  if (v139 >= 0)
                  {
                    v140 = *(v31 + 200);
                  }

                  else
                  {
                    v140 = *v138;
                  }

                  if (v139 >= 0)
                  {
                    v141 = *(v138 + 23);
                  }

                  else
                  {
                    v141 = *(v138 + 8);
                  }

                  v142 = std::string::append(&v764, v140, v141);
                  v765 = *v142;
                  v142->__r_.__value_.__l.__size_ = 0;
                  v142->__r_.__value_.__r.__words[2] = 0;
                  v142->__r_.__value_.__r.__words[0] = 0;
                  v143 = *(v31 + 8);
                  if (v143)
                  {
                    v144 = (v143 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  else
                  {
                    google::protobuf::internal::InitProtobufDefaults(v142);
                    v144 = &google::protobuf::internal::fixed_address_empty_string;
                  }

                  std::string::basic_string[abi:ne200100]<0>(&v763, "patternId");
                  siri::intelligence::GetLineNumFromUnknownField(v144, &v763, -1);
                }
              }

              else if (!v134)
              {
                goto LABEL_286;
              }
            }
          }
        }

        else if (v133)
        {
          goto LABEL_278;
        }
      }

      v29 = this;
      if (*(v31 + 32) >= 1)
      {
        v145 = 0;
        do
        {
          v146 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v31 + 24, v145);
          siri::intelligence::ValidateKeyValueParameter(&__p, v146, a2, a3);
          ++v145;
        }

        while (v145 < *(v31 + 32));
      }

      if (*(v31 + 104) >= 1)
      {
        v147 = 0;
        do
        {
          v148 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v31 + 96, v147);
          siri::intelligence::ValidateKeyValueParameter(&__p, v148, a2, a3);
          ++v147;
        }

        while (v147 < *(v31 + 104));
      }

      if (*(v31 + 56) >= 1)
      {
        v149 = 0;
        do
        {
          v150 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v31 + 48, v149);
          siri::intelligence::ValidateKeyValueParameter(&__p, v150, a2, a3);
          ++v149;
        }

        while (v149 < *(v31 + 56));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v151 = v29;
  if (*(v29 + 20) >= 1)
  {
    v152 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(v29 + 72, 0);
    std::string::basic_string[abi:ne200100]<0>(&__p, "behavior response ");
    v153 = *(v152 + 16);
    if (v153)
    {
      v154 = *(v152 + 72);
      std::operator+<char>();
      v155 = std::string::append(&v764, "' ");
      v156 = *&v155->__r_.__value_.__l.__data_;
      v765.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
      *&v765.__r_.__value_.__l.__data_ = v156;
      v155->__r_.__value_.__l.__size_ = 0;
      v155->__r_.__value_.__r.__words[2] = 0;
      v155->__r_.__value_.__r.__words[0] = 0;
      if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v157 = &v765;
      }

      else
      {
        v157 = v765.__r_.__value_.__r.__words[0];
      }

      if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v158 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v158 = v765.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v157, v158);
      if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v765.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v764.__r_.__value_.__l.__data_);
      }

      v153 = *(v152 + 16);
    }

    if ((v153 & 1) == 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v159 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v159 = __p.__r_.__value_.__l.__size_;
      }

      v160 = std::string::basic_string[abi:ne200100](&v765, v159 + 21);
      if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v161 = &v765;
      }

      else
      {
        v161 = v765.__r_.__value_.__r.__words[0];
      }

      if (v159)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v162 = &__p;
        }

        else
        {
          v162 = __p.__r_.__value_.__r.__words[0];
        }

        v160 = memmove(v161, v162, v159);
      }

      strcpy(v161 + v159, "does not define an id");
      v163 = *(v152 + 8);
      if (v163)
      {
        v164 = (v163 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v160);
        v164 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v764, "");
      siri::intelligence::GetLineNumFromUnknownField(v164, &v764, -1);
    }

    if ((siri::intelligence::IsValidId(*(v152 + 72)) & 1) == 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v165 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v165 = __p.__r_.__value_.__l.__size_;
      }

      v166 = std::string::basic_string[abi:ne200100](&v765, v165 + 32);
      if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v167 = &v765;
      }

      else
      {
        v167 = v765.__r_.__value_.__r.__words[0];
      }

      if (v165)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v168 = &__p;
        }

        else
        {
          v168 = __p.__r_.__value_.__r.__words[0];
        }

        v166 = memmove(v167, v168, v165);
      }

      strcpy(v167 + v165, "has invalid characters in the ID");
      v169 = *(v152 + 8);
      if (v169)
      {
        v170 = (v169 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v166);
        v170 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v764, "id");
      siri::intelligence::GetLineNumFromUnknownField(v170, &v764, -1);
    }

    v171 = *(v152 + 72);
    if (*(v152 + 56) == 1)
    {
      v172 = *(*(v152 + 64) + 8);
      v173 = *(v171 + 8);
      v174 = *(v171 + 23);
      v175 = *(v172 + 23);
      if (v175 >= 0)
      {
        v176 = *(v172 + 23);
      }

      else
      {
        v176 = *(v172 + 8);
      }

      if (v174 >= 0)
      {
        v173 = *(v171 + 23);
      }

      if (v176 == v173)
      {
        v177 = v175 >= 0 ? *(*(v152 + 64) + 8) : *v172;
        v178 = *v171;
        v179 = v174 >= 0 ? *(v152 + 72) : *v171;
        if (!memcmp(v177, v179, v176))
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v180 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v180 = __p.__r_.__value_.__l.__size_;
          }

          v181 = std::string::basic_string[abi:ne200100](&v765, v180 + 42);
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v182 = &v765;
          }

          else
          {
            v182 = v765.__r_.__value_.__r.__words[0];
          }

          if (v180)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v183 = &__p;
            }

            else
            {
              v183 = __p.__r_.__value_.__r.__words[0];
            }

            v181 = memmove(v182, v183, v180);
          }

          strcpy(v182 + v180, "has a single next id that refers to itself");
          v184 = *(v152 + 8);
          if (v184)
          {
            v185 = (v184 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v181);
            v185 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v764, "nextIds");
          siri::intelligence::GetLineNumFromUnknownField(v185, &v764, 0);
        }
      }
    }

    if ((a2 + 248) == std::__tree<std::string>::find<std::string>(a2 + 240, v171))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v186 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v186 = __p.__r_.__value_.__l.__size_;
      }

      v187 = std::string::basic_string[abi:ne200100](&v765, v186 + 12);
      if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v188 = &v765;
      }

      else
      {
        v188 = v765.__r_.__value_.__r.__words[0];
      }

      if (v186)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v189 = &__p;
        }

        else
        {
          v189 = __p.__r_.__value_.__r.__words[0];
        }

        v187 = memmove(v188, v189, v186);
      }

      strcpy(v188 + v186, "is not used.");
      v190 = *(v152 + 8);
      if (v190)
      {
        v191 = (v190 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v187);
        v191 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v764, "");
      siri::intelligence::GetLineNumFromUnknownField(v191, &v764, -1);
    }

    if (*(v152 + 56) >= 1)
    {
      v192 = 0;
      do
      {
        v193 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v152 + 48, v192);
        if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v193))
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v194 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v194 = __p.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v764, v194 + 29);
          if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v195 = &v764;
          }

          else
          {
            v195 = v764.__r_.__value_.__r.__words[0];
          }

          if (v194)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v196 = &__p;
            }

            else
            {
              v196 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v195, v196, v194);
          }

          strcpy(v195 + v194, "refers to undefined next id: ");
          v197 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v152 + 48, v192);
          v198 = *(v197 + 23);
          if (v198 >= 0)
          {
            v199 = v197;
          }

          else
          {
            v199 = *v197;
          }

          if (v198 >= 0)
          {
            v200 = *(v197 + 23);
          }

          else
          {
            v200 = *(v197 + 8);
          }

          v201 = std::string::append(&v764, v199, v200);
          v765 = *v201;
          v201->__r_.__value_.__l.__size_ = 0;
          v201->__r_.__value_.__r.__words[2] = 0;
          v201->__r_.__value_.__r.__words[0] = 0;
          v202 = *(v152 + 8);
          if (v202)
          {
            v203 = (v202 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v201);
            v203 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v763, "nextIds");
          siri::intelligence::GetLineNumFromUnknownField(v203, &v763, v192);
        }

        ++v192;
      }

      while (v192 < *(v152 + 56));
    }

    v204 = *(v152 + 144);
    if ((*(v204 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v204 + 8))
      {
        goto LABEL_467;
      }
    }

    else if (!*(v204 + 23))
    {
      goto LABEL_467;
    }

    if ((a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, v204))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v205 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v205 = __p.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v764, v205 + 33);
      if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v206 = &v764;
      }

      else
      {
        v206 = v764.__r_.__value_.__r.__words[0];
      }

      if (v205)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v207 = &__p;
        }

        else
        {
          v207 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v206, v207, v205);
      }

      strcpy(v206 + v205, "refers to undefined input group: ");
      v208 = *(v152 + 144);
      v209 = *(v208 + 23);
      if (v209 >= 0)
      {
        v210 = *(v152 + 144);
      }

      else
      {
        v210 = *v208;
      }

      if (v209 >= 0)
      {
        v211 = *(v208 + 23);
      }

      else
      {
        v211 = *(v208 + 8);
      }

      v212 = std::string::append(&v764, v210, v211);
      v765 = *v212;
      v212->__r_.__value_.__l.__size_ = 0;
      v212->__r_.__value_.__r.__words[2] = 0;
      v212->__r_.__value_.__r.__words[0] = 0;
      v213 = *(v152 + 8);
      if (v213)
      {
        v214 = (v213 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v212);
        v214 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v763, "inputGroupId");
      siri::intelligence::GetLineNumFromUnknownField(v214, &v763, -1);
    }

LABEL_467:
    v215 = *(v152 + 136);
    if ((*(v215 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v215 + 8))
      {
        goto LABEL_492;
      }
    }

    else if (!*(v215 + 23))
    {
      goto LABEL_492;
    }

    if ((a2 + 176) == std::__tree<std::string>::find<std::string>(a2 + 168, v215))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v216 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v216 = __p.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v764, v216 + 31);
      if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v217 = &v764;
      }

      else
      {
        v217 = v764.__r_.__value_.__r.__words[0];
      }

      if (v216)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v218 = &__p;
        }

        else
        {
          v218 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v217, v218, v216);
      }

      strcpy(v217 + v216, "refers to undefined condition: ");
      v219 = *(v152 + 136);
      v220 = *(v219 + 23);
      if (v220 >= 0)
      {
        v221 = *(v152 + 136);
      }

      else
      {
        v221 = *v219;
      }

      if (v220 >= 0)
      {
        v222 = *(v219 + 23);
      }

      else
      {
        v222 = *(v219 + 8);
      }

      v223 = std::string::append(&v764, v221, v222);
      v765 = *v223;
      v223->__r_.__value_.__l.__size_ = 0;
      v223->__r_.__value_.__r.__words[2] = 0;
      v223->__r_.__value_.__r.__words[0] = 0;
      v224 = *(v152 + 8);
      if (v224)
      {
        v225 = (v224 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v223);
        v225 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v763, "conditionId");
      siri::intelligence::GetLineNumFromUnknownField(v225, &v763, -1);
    }

LABEL_492:
    v226 = *(v152 + 16);
    if (*(v152 + 56) >= 1 && (v226 & 0x200) != 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v227 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v227 = __p.__r_.__value_.__l.__size_;
      }

      v228 = std::string::basic_string[abi:ne200100](&v765, v227 + 38);
      if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v229 = &v765;
      }

      else
      {
        v229 = v765.__r_.__value_.__r.__words[0];
      }

      if (v227)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v230 = &__p;
        }

        else
        {
          v230 = __p.__r_.__value_.__r.__words[0];
        }

        v228 = memmove(v229, v230, v227);
      }

      strcpy(v229 + v227, "contains both nextIds and inputGroupId");
      v231 = *(v152 + 8);
      if (v231)
      {
        v232 = (v231 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v228);
        v232 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v764, "");
      siri::intelligence::GetLineNumFromUnknownField(v232, &v764, -1);
    }

    if ((v226 & 0x80) == 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v233 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v233 = __p.__r_.__value_.__l.__size_;
      }

      v234 = std::string::basic_string[abi:ne200100](&v765, v233 + 22);
      if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v235 = &v765;
      }

      else
      {
        v235 = v765.__r_.__value_.__r.__words[0];
      }

      if (v233)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v236 = &__p;
        }

        else
        {
          v236 = __p.__r_.__value_.__r.__words[0];
        }

        v234 = memmove(v235, v236, v233);
      }

      strcpy(v235 + v233, "does not define a name");
      v237 = *(v152 + 8);
      if (v237)
      {
        v238 = (v237 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v234);
        v238 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v764, "");
      siri::intelligence::GetLineNumFromUnknownField(v238, &v764, -1);
    }

    if (*(v152 + 32) >= 1)
    {
      v239 = 0;
      do
      {
        v240 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v152 + 24, v239);
        siri::intelligence::ValidateKeyValueParameter(&__p, v240, a2, a3);
        ++v239;
      }

      while (v239 < *(v152 + 32));
    }

    memset(&v765, 0, sizeof(v765));
    memset(&v764, 0, sizeof(v764));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v764, v152 + 24);
    if (LODWORD(v764.__r_.__value_.__r.__words[1]))
    {
      if (v764.__r_.__value_.__r.__words[2])
      {
        v241 = (v764.__r_.__value_.__r.__words[2] + 8);
      }

      else
      {
        v241 = 0;
      }

      do
      {
        std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&v765, *v241++);
        if (v764.__r_.__value_.__r.__words[2])
        {
          v242 = v764.__r_.__value_.__r.__words[2] + 8;
        }

        else
        {
          v242 = 0;
        }
      }

      while (v241 != (v242 + 8 * SLODWORD(v764.__r_.__value_.__r.__words[1])));
    }

    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v764);
    v243 = *(v152 + 128);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
  }

  if (*(v29 + 26) >= 1)
  {
    for (j = 0; j < *(this + 26); ++j)
    {
      v245 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>((v151 + 24), j);
      std::string::basic_string[abi:ne200100]<0>(&__p, "reference response ");
      v246 = *(v245 + 16);
      if (v246)
      {
        v247 = *(v245 + 48);
        std::operator+<char>();
        v248 = std::string::append(&v764, "' ");
        v249 = *&v248->__r_.__value_.__l.__data_;
        v765.__r_.__value_.__r.__words[2] = v248->__r_.__value_.__r.__words[2];
        *&v765.__r_.__value_.__l.__data_ = v249;
        v248->__r_.__value_.__l.__size_ = 0;
        v248->__r_.__value_.__r.__words[2] = 0;
        v248->__r_.__value_.__r.__words[0] = 0;
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v250 = &v765;
        }

        else
        {
          v250 = v765.__r_.__value_.__r.__words[0];
        }

        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v251 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v251 = v765.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v250, v251);
        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }

        v246 = *(v245 + 16);
      }

      if ((v246 & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v252 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v252 = __p.__r_.__value_.__l.__size_;
        }

        v253 = std::string::basic_string[abi:ne200100](&v765, v252 + 21);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v254 = &v765;
        }

        else
        {
          v254 = v765.__r_.__value_.__r.__words[0];
        }

        if (v252)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v255 = &__p;
          }

          else
          {
            v255 = __p.__r_.__value_.__r.__words[0];
          }

          v253 = memmove(v254, v255, v252);
        }

        strcpy(v254 + v252, "does not define an id");
        v256 = *(v245 + 8);
        if (v256)
        {
          v257 = (v256 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v253);
          v257 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v257, &v764, -1);
      }

      if ((siri::intelligence::IsValidId(*(v245 + 48)) & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v258 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v258 = __p.__r_.__value_.__l.__size_;
        }

        v259 = std::string::basic_string[abi:ne200100](&v765, v258 + 32);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v260 = &v765;
        }

        else
        {
          v260 = v765.__r_.__value_.__r.__words[0];
        }

        if (v258)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v261 = &__p;
          }

          else
          {
            v261 = __p.__r_.__value_.__r.__words[0];
          }

          v259 = memmove(v260, v261, v258);
        }

        strcpy(v260 + v258, "has invalid characters in the ID");
        v262 = *(v245 + 8);
        if (v262)
        {
          v263 = (v262 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v259);
          v263 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "id");
        siri::intelligence::GetLineNumFromUnknownField(v263, &v764, -1);
      }

      v264 = *(v245 + 48);
      if (*(v245 + 32) == 1)
      {
        v265 = *(*(v245 + 40) + 8);
        v266 = *(v264 + 8);
        v267 = *(v264 + 23);
        v268 = *(v265 + 23);
        if (v268 >= 0)
        {
          v269 = *(v265 + 23);
        }

        else
        {
          v269 = *(v265 + 8);
        }

        if (v267 >= 0)
        {
          v266 = *(v264 + 23);
        }

        if (v269 == v266)
        {
          v270 = v268 >= 0 ? *(*(v245 + 40) + 8) : *v265;
          v271 = *v264;
          v272 = v267 >= 0 ? *(v245 + 48) : *v264;
          if (!memcmp(v270, v272, v269))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v273 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v273 = __p.__r_.__value_.__l.__size_;
            }

            v274 = std::string::basic_string[abi:ne200100](&v765, v273 + 42);
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v275 = &v765;
            }

            else
            {
              v275 = v765.__r_.__value_.__r.__words[0];
            }

            if (v273)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v276 = &__p;
              }

              else
              {
                v276 = __p.__r_.__value_.__r.__words[0];
              }

              v274 = memmove(v275, v276, v273);
            }

            strcpy(v275 + v273, "has a single next id that refers to itself");
            v277 = *(v245 + 8);
            if (v277)
            {
              v278 = (v277 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v274);
              v278 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v764, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v278, &v764, 0);
          }
        }
      }

      if ((a2 + 248) == std::__tree<std::string>::find<std::string>(a2 + 240, v264))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v279 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v279 = __p.__r_.__value_.__l.__size_;
        }

        v280 = std::string::basic_string[abi:ne200100](&v765, v279 + 12);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v281 = &v765;
        }

        else
        {
          v281 = v765.__r_.__value_.__r.__words[0];
        }

        if (v279)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v282 = &__p;
          }

          else
          {
            v282 = __p.__r_.__value_.__r.__words[0];
          }

          v280 = memmove(v281, v282, v279);
        }

        strcpy(v281 + v279, "is not used.");
        v283 = *(v245 + 8);
        if (v283)
        {
          v284 = (v283 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v280);
          v284 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v284, &v764, -1);
      }

      if (*(v245 + 32) >= 1)
      {
        v285 = 0;
        do
        {
          v286 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v245 + 24, v285);
          if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v286))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v287 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v287 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v764, v287 + 29);
            if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v288 = &v764;
            }

            else
            {
              v288 = v764.__r_.__value_.__r.__words[0];
            }

            if (v287)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v289 = &__p;
              }

              else
              {
                v289 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v288, v289, v287);
            }

            strcpy(v288 + v287, "refers to undefined next id: ");
            v290 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v245 + 24, v285);
            v291 = *(v290 + 23);
            if (v291 >= 0)
            {
              v292 = v290;
            }

            else
            {
              v292 = *v290;
            }

            if (v291 >= 0)
            {
              v293 = *(v290 + 23);
            }

            else
            {
              v293 = *(v290 + 8);
            }

            v294 = std::string::append(&v764, v292, v293);
            v765 = *v294;
            v294->__r_.__value_.__l.__size_ = 0;
            v294->__r_.__value_.__r.__words[2] = 0;
            v294->__r_.__value_.__r.__words[0] = 0;
            v295 = *(v245 + 8);
            if (v295)
            {
              v296 = (v295 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v294);
              v296 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v763, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v296, &v763, v285);
          }

          ++v285;
        }

        while (v285 < *(v245 + 32));
      }

      v297 = *(v245 + 128);
      if ((*(v297 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v297 + 8))
        {
          goto LABEL_681;
        }
      }

      else if (!*(v297 + 23))
      {
        goto LABEL_681;
      }

      if ((a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, v297))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v298 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v298 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v764, v298 + 33);
        if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v299 = &v764;
        }

        else
        {
          v299 = v764.__r_.__value_.__r.__words[0];
        }

        if (v298)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v300 = &__p;
          }

          else
          {
            v300 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v299, v300, v298);
        }

        strcpy(v299 + v298, "refers to undefined input group: ");
        v301 = *(v245 + 128);
        v302 = *(v301 + 23);
        if (v302 >= 0)
        {
          v303 = *(v245 + 128);
        }

        else
        {
          v303 = *v301;
        }

        if (v302 >= 0)
        {
          v304 = *(v301 + 23);
        }

        else
        {
          v304 = *(v301 + 8);
        }

        v305 = std::string::append(&v764, v303, v304);
        v765 = *v305;
        v305->__r_.__value_.__l.__size_ = 0;
        v305->__r_.__value_.__r.__words[2] = 0;
        v305->__r_.__value_.__r.__words[0] = 0;
        v306 = *(v245 + 8);
        if (v306)
        {
          v307 = (v306 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v305);
          v307 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v763, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v307, &v763, -1);
      }

LABEL_681:
      v308 = *(v245 + 120);
      if ((*(v308 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v308 + 8))
        {
LABEL_685:
          if ((a2 + 176) == std::__tree<std::string>::find<std::string>(a2 + 168, v308))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v309 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v309 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v764, v309 + 31);
            if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v310 = &v764;
            }

            else
            {
              v310 = v764.__r_.__value_.__r.__words[0];
            }

            if (v309)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v311 = &__p;
              }

              else
              {
                v311 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v310, v311, v309);
            }

            strcpy(v310 + v309, "refers to undefined condition: ");
            v312 = *(v245 + 120);
            v313 = *(v312 + 23);
            if (v313 >= 0)
            {
              v314 = *(v245 + 120);
            }

            else
            {
              v314 = *v312;
            }

            if (v313 >= 0)
            {
              v315 = *(v312 + 23);
            }

            else
            {
              v315 = *(v312 + 8);
            }

            v316 = std::string::append(&v764, v314, v315);
            v765 = *v316;
            v316->__r_.__value_.__l.__size_ = 0;
            v316->__r_.__value_.__r.__words[2] = 0;
            v316->__r_.__value_.__r.__words[0] = 0;
            v317 = *(v245 + 8);
            if (v317)
            {
              v318 = (v317 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v316);
              v318 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v763, "conditionId");
            siri::intelligence::GetLineNumFromUnknownField(v318, &v763, -1);
          }
        }
      }

      else if (*(v308 + 23))
      {
        goto LABEL_685;
      }

      v319 = *(v245 + 16);
      if (*(v245 + 32) >= 1 && (v319 & 0x400) != 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v320 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v320 = __p.__r_.__value_.__l.__size_;
        }

        v321 = std::string::basic_string[abi:ne200100](&v765, v320 + 38);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v322 = &v765;
        }

        else
        {
          v322 = v765.__r_.__value_.__r.__words[0];
        }

        if (v320)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v323 = &__p;
          }

          else
          {
            v323 = __p.__r_.__value_.__r.__words[0];
          }

          v321 = memmove(v322, v323, v320);
        }

        strcpy(v322 + v320, "contains both nextIds and inputGroupId");
        v324 = *(v245 + 8);
        if (v324)
        {
          v325 = (v324 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v321);
          v325 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v325, &v764, -1);
      }

      if ((v319 & 0x80) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v326 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v326 = __p.__r_.__value_.__l.__size_;
        }

        v327 = std::string::basic_string[abi:ne200100](&v765, v326 + 23);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v328 = &v765;
        }

        else
        {
          v328 = v765.__r_.__value_.__r.__words[0];
        }

        if (v326)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v329 = &__p;
          }

          else
          {
            v329 = __p.__r_.__value_.__r.__words[0];
          }

          v327 = memmove(v328, v329, v326);
        }

        strcpy(v328 + v326, "does not define a refId");
        v330 = *(v245 + 8);
        if (v330)
        {
          v331 = (v330 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v327);
          v331 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v331, &v764, -1);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v151 = this;
    }
  }

  if (v151[104] >= 1)
  {
    for (k = 0; k < *(this + 104); ++k)
    {
      v333 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>((v151 + 102), k);
      std::string::basic_string[abi:ne200100]<0>(&__p, "response group ");
      v334 = *(v333 + 16);
      if (v334)
      {
        v335 = *(v333 + 48);
        std::operator+<char>();
        v336 = std::string::append(&v764, "' ");
        v337 = *&v336->__r_.__value_.__l.__data_;
        v765.__r_.__value_.__r.__words[2] = v336->__r_.__value_.__r.__words[2];
        *&v765.__r_.__value_.__l.__data_ = v337;
        v336->__r_.__value_.__l.__size_ = 0;
        v336->__r_.__value_.__r.__words[2] = 0;
        v336->__r_.__value_.__r.__words[0] = 0;
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v338 = &v765;
        }

        else
        {
          v338 = v765.__r_.__value_.__r.__words[0];
        }

        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v339 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v339 = v765.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v338, v339);
        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }

        v334 = *(v333 + 16);
      }

      if ((v334 & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v340 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v340 = __p.__r_.__value_.__l.__size_;
        }

        v341 = std::string::basic_string[abi:ne200100](&v765, v340 + 21);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v342 = &v765;
        }

        else
        {
          v342 = v765.__r_.__value_.__r.__words[0];
        }

        if (v340)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v343 = &__p;
          }

          else
          {
            v343 = __p.__r_.__value_.__r.__words[0];
          }

          v341 = memmove(v342, v343, v340);
        }

        strcpy(v342 + v340, "does not define an id");
        v344 = *(v333 + 8);
        if (v344)
        {
          v345 = (v344 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v341);
          v345 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v345, &v764, -1);
      }

      if ((siri::intelligence::IsValidId(*(v333 + 48)) & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v346 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v346 = __p.__r_.__value_.__l.__size_;
        }

        v347 = std::string::basic_string[abi:ne200100](&v765, v346 + 32);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v348 = &v765;
        }

        else
        {
          v348 = v765.__r_.__value_.__r.__words[0];
        }

        if (v346)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v349 = &__p;
          }

          else
          {
            v349 = __p.__r_.__value_.__r.__words[0];
          }

          v347 = memmove(v348, v349, v346);
        }

        strcpy(v348 + v346, "has invalid characters in the ID");
        v350 = *(v333 + 8);
        if (v350)
        {
          v351 = (v350 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v347);
          v351 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "id");
        siri::intelligence::GetLineNumFromUnknownField(v351, &v764, -1);
      }

      v352 = *(v333 + 48);
      if (*(v333 + 32) == 1)
      {
        v353 = *(*(v333 + 40) + 8);
        v354 = *(v352 + 8);
        v355 = *(v352 + 23);
        v356 = *(v353 + 23);
        if (v356 >= 0)
        {
          v357 = *(v353 + 23);
        }

        else
        {
          v357 = *(v353 + 8);
        }

        if (v355 >= 0)
        {
          v354 = *(v352 + 23);
        }

        if (v357 == v354)
        {
          v358 = v356 >= 0 ? *(*(v333 + 40) + 8) : *v353;
          v359 = *v352;
          v360 = v355 >= 0 ? *(v333 + 48) : *v352;
          if (!memcmp(v358, v360, v357))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v361 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v361 = __p.__r_.__value_.__l.__size_;
            }

            v362 = std::string::basic_string[abi:ne200100](&v765, v361 + 42);
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v363 = &v765;
            }

            else
            {
              v363 = v765.__r_.__value_.__r.__words[0];
            }

            if (v361)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v364 = &__p;
              }

              else
              {
                v364 = __p.__r_.__value_.__r.__words[0];
              }

              v362 = memmove(v363, v364, v361);
            }

            strcpy(v363 + v361, "has a single next id that refers to itself");
            v365 = *(v333 + 8);
            if (v365)
            {
              v366 = (v365 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v362);
              v366 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v764, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v366, &v764, 0);
          }
        }
      }

      if ((a2 + 248) == std::__tree<std::string>::find<std::string>(a2 + 240, v352))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v367 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v367 = __p.__r_.__value_.__l.__size_;
        }

        v368 = std::string::basic_string[abi:ne200100](&v765, v367 + 12);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v369 = &v765;
        }

        else
        {
          v369 = v765.__r_.__value_.__r.__words[0];
        }

        if (v367)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v370 = &__p;
          }

          else
          {
            v370 = __p.__r_.__value_.__r.__words[0];
          }

          v368 = memmove(v369, v370, v367);
        }

        strcpy(v369 + v367, "is not used.");
        v371 = *(v333 + 8);
        if (v371)
        {
          v372 = (v371 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v368);
          v372 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v372, &v764, -1);
      }

      if (*(v333 + 32) >= 1)
      {
        v373 = 0;
        do
        {
          v374 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v333 + 24, v373);
          if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v374))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v375 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v375 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v764, v375 + 29);
            if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v376 = &v764;
            }

            else
            {
              v376 = v764.__r_.__value_.__r.__words[0];
            }

            if (v375)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v377 = &__p;
              }

              else
              {
                v377 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v376, v377, v375);
            }

            strcpy(v376 + v375, "refers to undefined next id: ");
            v378 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v333 + 24, v373);
            v379 = *(v378 + 23);
            if (v379 >= 0)
            {
              v380 = v378;
            }

            else
            {
              v380 = *v378;
            }

            if (v379 >= 0)
            {
              v381 = *(v378 + 23);
            }

            else
            {
              v381 = *(v378 + 8);
            }

            v382 = std::string::append(&v764, v380, v381);
            v765 = *v382;
            v382->__r_.__value_.__l.__size_ = 0;
            v382->__r_.__value_.__r.__words[2] = 0;
            v382->__r_.__value_.__r.__words[0] = 0;
            v383 = *(v333 + 8);
            if (v383)
            {
              v384 = (v383 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v382);
              v384 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v763, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v384, &v763, v373);
          }

          ++v373;
        }

        while (v373 < *(v333 + 32));
      }

      v385 = *(v333 + 112);
      if ((*(v385 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v385 + 8))
        {
          goto LABEL_887;
        }
      }

      else if (!*(v385 + 23))
      {
        goto LABEL_887;
      }

      if ((a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, v385))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v386 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v386 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v764, v386 + 33);
        if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v387 = &v764;
        }

        else
        {
          v387 = v764.__r_.__value_.__r.__words[0];
        }

        if (v386)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v388 = &__p;
          }

          else
          {
            v388 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v387, v388, v386);
        }

        strcpy(v387 + v386, "refers to undefined input group: ");
        v389 = *(v333 + 112);
        v390 = *(v389 + 23);
        if (v390 >= 0)
        {
          v391 = *(v333 + 112);
        }

        else
        {
          v391 = *v389;
        }

        if (v390 >= 0)
        {
          v392 = *(v389 + 23);
        }

        else
        {
          v392 = *(v389 + 8);
        }

        v393 = std::string::append(&v764, v391, v392);
        v765 = *v393;
        v393->__r_.__value_.__l.__size_ = 0;
        v393->__r_.__value_.__r.__words[2] = 0;
        v393->__r_.__value_.__r.__words[0] = 0;
        v394 = *(v333 + 8);
        if (v394)
        {
          v395 = (v394 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v393);
          v395 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v763, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v395, &v763, -1);
      }

LABEL_887:
      v396 = *(v333 + 104);
      if ((*(v396 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v396 + 8))
        {
LABEL_891:
          if ((a2 + 176) == std::__tree<std::string>::find<std::string>(a2 + 168, v396))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v397 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v397 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v764, v397 + 31);
            if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v398 = &v764;
            }

            else
            {
              v398 = v764.__r_.__value_.__r.__words[0];
            }

            if (v397)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v399 = &__p;
              }

              else
              {
                v399 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v398, v399, v397);
            }

            strcpy(v398 + v397, "refers to undefined condition: ");
            v400 = *(v333 + 104);
            v401 = *(v400 + 23);
            if (v401 >= 0)
            {
              v402 = *(v333 + 104);
            }

            else
            {
              v402 = *v400;
            }

            if (v401 >= 0)
            {
              v403 = *(v400 + 23);
            }

            else
            {
              v403 = *(v400 + 8);
            }

            v404 = std::string::append(&v764, v402, v403);
            v765 = *v404;
            v404->__r_.__value_.__l.__size_ = 0;
            v404->__r_.__value_.__r.__words[2] = 0;
            v404->__r_.__value_.__r.__words[0] = 0;
            v405 = *(v333 + 8);
            if (v405)
            {
              v406 = (v405 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v404);
              v406 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v763, "conditionId");
            siri::intelligence::GetLineNumFromUnknownField(v406, &v763, -1);
          }
        }
      }

      else if (*(v396 + 23))
      {
        goto LABEL_891;
      }

      v407 = *(v333 + 32);
      if (v407 < 1)
      {
        if (!v407 && (*(v333 + 17) & 1) == 0)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v414 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v414 = __p.__r_.__value_.__l.__size_;
          }

          v415 = std::string::basic_string[abi:ne200100](&v765, v414 + 51);
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v416 = &v765;
          }

          else
          {
            v416 = v765.__r_.__value_.__r.__words[0];
          }

          if (v414)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v417 = &__p;
            }

            else
            {
              v417 = __p.__r_.__value_.__r.__words[0];
            }

            v415 = memmove(v416, v417, v414);
          }

          strcpy(v416 + v414, "has not effect: no nextIds and inputGroupId defined");
          v418 = *(v333 + 8);
          if (v418)
          {
            v419 = (v418 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v415);
            v419 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v764, "");
          siri::intelligence::GetLineNumFromUnknownField(v419, &v764, -1);
        }
      }

      else if (*(v333 + 17))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v408 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v408 = __p.__r_.__value_.__l.__size_;
        }

        v409 = std::string::basic_string[abi:ne200100](&v765, v408 + 38);
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v410 = &v765;
        }

        else
        {
          v410 = v765.__r_.__value_.__r.__words[0];
        }

        if (v408)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v411 = &__p;
          }

          else
          {
            v411 = __p.__r_.__value_.__r.__words[0];
          }

          v409 = memmove(v410, v411, v408);
        }

        strcpy(v410 + v408, "contains both nextIds and inputGroupId");
        v412 = *(v333 + 8);
        if (v412)
        {
          v413 = (v412 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v409);
          v413 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v413, &v764, -1);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v151 = this;
    }
  }

  if (v151[110] >= 1)
  {
    v420 = 0;
    v421 = a2 + 80;
    while (1)
    {
      v751 = v420;
      v422 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>((v151 + 108), v420);
      std::string::basic_string[abi:ne200100]<0>(&v761, "input group ");
      v423 = *(v422 + 16);
      if (v423)
      {
        v424 = *(v422 + 144);
        std::operator+<char>();
        v425 = std::string::append(&v765, "' ");
        v426 = *&v425->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v425->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v426;
        v425->__r_.__value_.__l.__size_ = 0;
        v425->__r_.__value_.__r.__words[2] = 0;
        v425->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v427 = &__p;
        }

        else
        {
          v427 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v428 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v428 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v761, v427, v428);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
        }

        v423 = *(v422 + 16);
      }

      if ((v423 & 1) == 0)
      {
        if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v429 = HIBYTE(v761.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v429 = v761.__r_.__value_.__l.__size_;
        }

        v430 = std::string::basic_string[abi:ne200100](&__p, v429 + 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v431 = &__p;
        }

        else
        {
          v431 = __p.__r_.__value_.__r.__words[0];
        }

        if (v429)
        {
          if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v432 = &v761;
          }

          else
          {
            v432 = v761.__r_.__value_.__r.__words[0];
          }

          v430 = memmove(v431, v432, v429);
        }

        strcpy(v431 + v429, "does not define an id");
        v433 = *(v422 + 8);
        if (v433)
        {
          v434 = (v433 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v430);
          v434 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v765, "");
        siri::intelligence::GetLineNumFromUnknownField(v434, &v765, -1);
      }

      if ((siri::intelligence::IsValidId(*(v422 + 144)) & 1) == 0)
      {
        if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v435 = HIBYTE(v761.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v435 = v761.__r_.__value_.__l.__size_;
        }

        v436 = std::string::basic_string[abi:ne200100](&__p, v435 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v437 = &__p;
        }

        else
        {
          v437 = __p.__r_.__value_.__r.__words[0];
        }

        if (v435)
        {
          if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v438 = &v761;
          }

          else
          {
            v438 = v761.__r_.__value_.__r.__words[0];
          }

          v436 = memmove(v437, v438, v435);
        }

        strcpy(v437 + v435, "has invalid characters in the ID");
        v439 = *(v422 + 8);
        if (v439)
        {
          v440 = (v439 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v436);
          v440 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v765, "id");
        siri::intelligence::GetLineNumFromUnknownField(v440, &v765, -1);
      }

      if ((a2 + 224) == std::__tree<std::string>::find<std::string>(a2 + 216, *(v422 + 144)) && (*(v422 + 169) & 1) == 0)
      {
        if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v507 = HIBYTE(v761.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v507 = v761.__r_.__value_.__l.__size_;
        }

        v508 = std::string::basic_string[abi:ne200100](&__p, v507 + 74);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v509 = &__p;
        }

        else
        {
          v509 = __p.__r_.__value_.__r.__words[0];
        }

        if (v507)
        {
          if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v510 = &v761;
          }

          else
          {
            v510 = v761.__r_.__value_.__r.__words[0];
          }

          v508 = memmove(v509, v510, v507);
        }

        strcpy(v509 + v507, "is not referenced. Did you mean to set 'toplevel: true' to make it global?");
        v511 = *(v422 + 8);
        if (v511)
        {
          v512 = (v511 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v508);
          v512 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v765, "");
        siri::intelligence::GetLineNumFromUnknownField(v512, &v765, -1);
      }

      if (*(v422 + 32) >= 1)
      {
        siri::intelligence::Utils::VersionLessThan(a2);
      }

      v441 = *(v422 + 112);
      v442 = (v441 + 8);
      v443 = v441 == 0;
      v444 = v422;
      if (v443)
      {
        v445 = 0;
      }

      else
      {
        v445 = v442;
      }

      v446 = v444;
      v447 = *(v444 + 104);
      if (v447)
      {
        v448 = 8 * v447;
        do
        {
          siri::intelligence::ValidateKeyValueParameter(&v761, *v445++, a2, a3);
          v448 -= 8;
        }

        while (v448);
      }

      if (*(v446 + 128) >= 1)
      {
        break;
      }

LABEL_1123:
      if (*(v446 + 56) >= 1)
      {
        v494 = 0;
        do
        {
          v495 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(v446 + 48, v494);
          std::string::basic_string[abi:ne200100]<0>(&__p, "input group fallback ");
          if (*(v495 + 56) >= 1)
          {
            v496 = 0;
            do
            {
              v497 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v495 + 48, v496);
              if (*(v497 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v765, *v497, *(v497 + 8));
              }

              else
              {
                v498 = *v497;
                v765.__r_.__value_.__r.__words[2] = *(v497 + 16);
                *&v765.__r_.__value_.__l.__data_ = v498;
              }

              if (v421 == std::__tree<std::string>::find<std::string>(a2 + 72, &v765.__r_.__value_.__l.__data_))
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v499 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v499 = __p.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](&v763, v499 + 33);
                if ((v763.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v500 = &v763;
                }

                else
                {
                  v500 = v763.__r_.__value_.__r.__words[0];
                }

                if (v499)
                {
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v501 = &__p;
                  }

                  else
                  {
                    v501 = __p.__r_.__value_.__r.__words[0];
                  }

                  memmove(v500, v501, v499);
                }

                strcpy(v500 + v499, "refers to undefined response id: ");
                if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v502 = &v765;
                }

                else
                {
                  v502 = v765.__r_.__value_.__r.__words[0];
                }

                if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v503 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v503 = v765.__r_.__value_.__l.__size_;
                }

                v504 = std::string::append(&v763, v502, v503);
                v764 = *v504;
                v504->__r_.__value_.__l.__size_ = 0;
                v504->__r_.__value_.__r.__words[2] = 0;
                v504->__r_.__value_.__r.__words[0] = 0;
                v505 = *(v495 + 8);
                if (v505)
                {
                  v506 = (v505 & 0xFFFFFFFFFFFFFFFELL);
                }

                else
                {
                  google::protobuf::internal::InitProtobufDefaults(v504);
                  v506 = &google::protobuf::internal::fixed_address_empty_string;
                }

                std::string::basic_string[abi:ne200100]<0>(&v762, "responseIds");
                siri::intelligence::GetLineNumFromUnknownField(v506, &v762, v496);
              }

              if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v765.__r_.__value_.__l.__data_);
              }

              ++v496;
            }

            while (v496 < *(v495 + 56));
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v494;
        }

        while (v494 < *(v446 + 56));
      }

      if (SHIBYTE(v761.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v761.__r_.__value_.__l.__data_);
      }

      v420 = v751 + 1;
      v151 = this;
      if (v751 + 1 >= *(this + 110))
      {
        goto LABEL_1180;
      }
    }

    v449 = 0;
    while (1)
    {
      v450 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(v446 + 120, v449);
      std::string::basic_string[abi:ne200100]<0>(&__p, "input group event ");
      if (*(v450 + 16))
      {
        v451 = *(v450 + 48);
        std::operator+<char>();
        v452 = std::string::append(&v764, "' ");
        v453 = *&v452->__r_.__value_.__l.__data_;
        v765.__r_.__value_.__r.__words[2] = v452->__r_.__value_.__r.__words[2];
        *&v765.__r_.__value_.__l.__data_ = v453;
        v452->__r_.__value_.__l.__size_ = 0;
        v452->__r_.__value_.__r.__words[2] = 0;
        v452->__r_.__value_.__r.__words[0] = 0;
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v454 = &v765;
        }

        else
        {
          v454 = v765.__r_.__value_.__r.__words[0];
        }

        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v455 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v455 = v765.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v454, v455);
        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }

        if ((*(v450 + 16) & 1) != 0 && (siri::intelligence::IsValidId(*(v450 + 48)) & 1) == 0)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v456 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v456 = __p.__r_.__value_.__l.__size_;
          }

          v457 = std::string::basic_string[abi:ne200100](&v765, v456 + 32);
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v458 = &v765;
          }

          else
          {
            v458 = v765.__r_.__value_.__r.__words[0];
          }

          if (v456)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v459 = &__p;
            }

            else
            {
              v459 = __p.__r_.__value_.__r.__words[0];
            }

            v457 = memmove(v458, v459, v456);
          }

          strcpy(v458 + v456, "has invalid characters in the ID");
          v460 = *(v450 + 8);
          if (v460)
          {
            v461 = (v460 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v457);
            v461 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v764, "id");
          siri::intelligence::GetLineNumFromUnknownField(v461, &v764, -1);
        }
      }

      v462 = *(v450 + 64);
      if ((*(v462 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v462 + 8))
        {
LABEL_1043:
          if ((a2 + 152) == std::__tree<std::string>::find<std::string>(a2 + 144, v462))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v463 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v463 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v764, v463 + 27);
            if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v464 = &v764;
            }

            else
            {
              v464 = v764.__r_.__value_.__r.__words[0];
            }

            if (v463)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v465 = &__p;
              }

              else
              {
                v465 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v464, v465, v463);
            }

            strcpy(v464 + v463, "refers to undefined event: ");
            v466 = *(v450 + 64);
            v467 = *(v466 + 23);
            if (v467 >= 0)
            {
              v468 = *(v450 + 64);
            }

            else
            {
              v468 = *v466;
            }

            if (v467 >= 0)
            {
              v469 = *(v466 + 23);
            }

            else
            {
              v469 = *(v466 + 8);
            }

            v470 = std::string::append(&v764, v468, v469);
            v765 = *v470;
            v470->__r_.__value_.__l.__size_ = 0;
            v470->__r_.__value_.__r.__words[2] = 0;
            v470->__r_.__value_.__r.__words[0] = 0;
            v471 = *(v450 + 8);
            if (v471)
            {
              v472 = (v471 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v470);
              v472 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v763, "eventId");
            siri::intelligence::GetLineNumFromUnknownField(v472, &v763, -1);
          }

          if (!*(v450 + 32))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v473 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v473 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v764, v473 + 48);
            if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v474 = &v764;
            }

            else
            {
              v474 = v764.__r_.__value_.__r.__words[0];
            }

            if (v473)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v475 = &__p;
              }

              else
              {
                v475 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v474, v475, v473);
            }

            strcpy(v474 + v473, "defines no responses to be triggered for event: ");
            v476 = *(v450 + 64);
            v477 = *(v476 + 23);
            if (v477 >= 0)
            {
              v478 = *(v450 + 64);
            }

            else
            {
              v478 = *v476;
            }

            if (v477 >= 0)
            {
              v479 = *(v476 + 23);
            }

            else
            {
              v479 = *(v476 + 8);
            }

            v480 = std::string::append(&v764, v478, v479);
            v765 = *v480;
            v480->__r_.__value_.__l.__size_ = 0;
            v480->__r_.__value_.__r.__words[2] = 0;
            v480->__r_.__value_.__r.__words[0] = 0;
            v481 = *(v450 + 8);
            if (v481)
            {
              v482 = (v481 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v480);
              v482 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v763, "eventId");
            siri::intelligence::GetLineNumFromUnknownField(v482, &v763, -1);
          }
        }
      }

      else if (*(v462 + 23))
      {
        goto LABEL_1043;
      }

      if (*(v450 + 32) >= 1)
      {
        v483 = 0;
        do
        {
          v484 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v450 + 24, v483);
          if (*(v484 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v765, *v484, *(v484 + 8));
          }

          else
          {
            v485 = *v484;
            v765.__r_.__value_.__r.__words[2] = *(v484 + 16);
            *&v765.__r_.__value_.__l.__data_ = v485;
          }

          if (v421 == std::__tree<std::string>::find<std::string>(a2 + 72, &v765.__r_.__value_.__l.__data_))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v486 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v486 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v763, v486 + 33);
            if ((v763.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v487 = &v763;
            }

            else
            {
              v487 = v763.__r_.__value_.__r.__words[0];
            }

            if (v486)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v488 = &__p;
              }

              else
              {
                v488 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v487, v488, v486);
            }

            strcpy(v487 + v486, "refers to undefined response id: ");
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v489 = &v765;
            }

            else
            {
              v489 = v765.__r_.__value_.__r.__words[0];
            }

            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v490 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v490 = v765.__r_.__value_.__l.__size_;
            }

            v491 = std::string::append(&v763, v489, v490);
            v764 = *v491;
            v491->__r_.__value_.__l.__size_ = 0;
            v491->__r_.__value_.__r.__words[2] = 0;
            v491->__r_.__value_.__r.__words[0] = 0;
            v492 = *(v450 + 8);
            if (v492)
            {
              v493 = (v492 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v491);
              v493 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v762, "responseIds");
            siri::intelligence::GetLineNumFromUnknownField(v493, &v762, v483);
          }

          if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v765.__r_.__value_.__l.__data_);
          }

          ++v483;
        }

        while (v483 < *(v450 + 32));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (++v449 >= *(v446 + 128))
      {
        goto LABEL_1123;
      }
    }
  }

LABEL_1180:
  v513 = v151;
  if (v151[128] >= 1)
  {
    v514 = 0;
    while (1)
    {
      v753 = v514;
      v515 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(v513 + 504, v514);
      std::string::basic_string[abi:ne200100]<0>(&v765, "event ");
      v516 = *(v515 + 16);
      if (v516)
      {
        break;
      }

      if ((v516 & 2) != 0)
      {
        v517 = *(v515 + 128);
        std::operator+<char>();
        v518 = std::string::append(&v764, "' ");
        v519 = *&v518->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v518->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v519;
        v518->__r_.__value_.__l.__size_ = 0;
        v518->__r_.__value_.__r.__words[2] = 0;
        v518->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v520 = &__p;
        }

        else
        {
          v520 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v521 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v521 = __p.__r_.__value_.__l.__size_;
        }

LABEL_1196:
        std::string::append(&v765, v520, v521);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }
      }

      if ((*(v515 + 16) & 1) == 0)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v525 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v525 = v765.__r_.__value_.__l.__size_;
        }

        v526 = std::string::basic_string[abi:ne200100](&__p, v525 + 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v527 = &__p;
        }

        else
        {
          v527 = __p.__r_.__value_.__r.__words[0];
        }

        if (v525)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v528 = &v765;
          }

          else
          {
            v528 = v765.__r_.__value_.__r.__words[0];
          }

          v526 = memmove(v527, v528, v525);
        }

        strcpy(v527 + v525, "does not define an id");
        v529 = *(v515 + 8);
        if (v529)
        {
          v530 = (v529 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v526);
          v530 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v530, &v764, -1);
      }

      if ((siri::intelligence::IsValidId(*(v515 + 120)) & 1) == 0)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v531 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v531 = v765.__r_.__value_.__l.__size_;
        }

        v532 = std::string::basic_string[abi:ne200100](&__p, v531 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v533 = &__p;
        }

        else
        {
          v533 = __p.__r_.__value_.__r.__words[0];
        }

        if (v531)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v534 = &v765;
          }

          else
          {
            v534 = v765.__r_.__value_.__r.__words[0];
          }

          v532 = memmove(v533, v534, v531);
        }

        strcpy(v533 + v531, "has invalid characters in the ID");
        v535 = *(v515 + 8);
        if (v535)
        {
          v536 = (v535 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v532);
          v536 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "id");
        siri::intelligence::GetLineNumFromUnknownField(v536, &v764, -1);
      }

      v537 = *(v515 + 16);
      if ((v537 & 0xC) == 8)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v538 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v538 = v765.__r_.__value_.__l.__size_;
        }

        v539 = std::string::basic_string[abi:ne200100](&__p, v538 + 54);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v540 = &__p;
        }

        else
        {
          v540 = __p.__r_.__value_.__r.__words[0];
        }

        if (v538)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v541 = &v765;
          }

          else
          {
            v541 = v765.__r_.__value_.__r.__words[0];
          }

          v539 = memmove(v540, v541, v538);
        }

        strcpy(v540 + v538, "defines a CATI intent GUID but not a CATI intent name.");
        v542 = *(v515 + 8);
        if (v542)
        {
          v543 = (v542 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v539);
          v543 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v543, &v764, -1);
      }

      if ((v537 & 0x14) == 0x10)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v544 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v544 = v765.__r_.__value_.__l.__size_;
        }

        v545 = std::string::basic_string[abi:ne200100](&__p, v544 + 51);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v546 = &__p;
        }

        else
        {
          v546 = __p.__r_.__value_.__r.__words[0];
        }

        if (v544)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v547 = &v765;
          }

          else
          {
            v547 = v765.__r_.__value_.__r.__words[0];
          }

          v545 = memmove(v546, v547, v544);
        }

        strcpy(v546 + v544, "defines a CATI ensemble but not a CATI intent name.");
        v548 = *(v515 + 8);
        if (v548)
        {
          v549 = (v548 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v545);
          v549 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v549, &v764, -1);
      }

      if ((v537 & 0x1C) == 4)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v550 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v550 = v765.__r_.__value_.__l.__size_;
        }

        v551 = std::string::basic_string[abi:ne200100](&__p, v550 + 59);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v552 = &__p;
        }

        else
        {
          v552 = __p.__r_.__value_.__r.__words[0];
        }

        if (v550)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v553 = &v765;
          }

          else
          {
            v553 = v765.__r_.__value_.__r.__words[0];
          }

          v551 = memmove(v552, v553, v550);
        }

        strcpy(v552 + v550, "defines a CATI intent name but not a CATI ensemble or GUID.");
        v554 = *(v515 + 8);
        if (v554)
        {
          v555 = (v554 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v551);
          v555 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v555, &v764, -1);
      }

      if ((v537 & 8) != 0 && (v537 & 0x20) != 0)
      {
        if (!*(v515 + 160))
        {
          google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 18904);
          v556 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || nl_producer_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v764, &v556->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
        }

        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v557 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v557 = v765.__r_.__value_.__l.__size_;
        }

        v558 = std::string::basic_string[abi:ne200100](&__p, v557 + 88);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v559 = &__p;
        }

        else
        {
          v559 = __p.__r_.__value_.__r.__words[0];
        }

        if (v557)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v560 = &v765;
          }

          else
          {
            v560 = v765.__r_.__value_.__r.__words[0];
          }

          v558 = memmove(v559, v560, v557);
        }

        strcpy(v559 + v557, "defines a CATI intent GUID and a custom producer. The CATI GUID definition will be used.");
        v561 = *(v515 + 8);
        if (v561)
        {
          v562 = (v561 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v558);
          v562 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v562, &v764, -1);
      }

      v563 = *(v515 + 40);
      if (v563)
      {
        v564 = v563 + 8;
      }

      else
      {
        v564 = 0;
      }

      v565 = *(v515 + 32);
      if (v565)
      {
        v566 = v564 + 8 * v565;
        do
        {
          v567 = *(*v564 + 40);
          if (v567)
          {
            v568 = (v567 + 8);
          }

          else
          {
            v568 = 0;
          }

          v569 = *(*v564 + 32);
          if (v569)
          {
            v570 = 8 * v569;
            do
            {
              siri::intelligence::ValidateKeyValueParameter(&v765, *v568++, a2, a3);
              v570 -= 8;
            }

            while (v570);
          }

          v564 += 8;
        }

        while (v564 != v566);
      }

      if ((*(v515 + 16) & 0x20) != 0)
      {
        v571 = *(v515 + 160);
        if (!v571)
        {
          google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 18904);
          v572 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || nl_producer_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v764, &v572->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
          v571 = *(v515 + 160);
        }

        if (!v571)
        {
          v571 = &protobuf::_Intelligence_NLParameters_default_instance_;
        }

        v573 = *(v571 + 5);
        if (v573)
        {
          v574 = (v573 + 8);
        }

        else
        {
          v574 = 0;
        }

        v575 = v571[8];
        if (v575)
        {
          v576 = 8 * v575;
          do
          {
            siri::intelligence::ValidateKeyValueParameter(&v765, *v574++, a2, a3);
            v576 -= 8;
          }

          while (v576);
        }
      }

      v577 = *(v515 + 104);
      if (v577 >= 1)
      {
        memset(&__p, 0, sizeof(__p));
        v578 = *(v515 + 112);
        if (v578)
        {
          v579 = (v578 + 8);
        }

        else
        {
          v579 = 0;
        }

        v580 = 8 * v577;
        do
        {
          v581 = *v579;
          siri::intelligence::Utterances::GetNormalizedText(*v579, &v764);
          v582 = HIBYTE(v764.__r_.__value_.__r.__words[2]);
          if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v582 = v764.__r_.__value_.__l.__size_;
          }

          if (!v582)
          {
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v594 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v594 = v765.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v761, v594 + 50);
            if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v595 = &v761;
            }

            else
            {
              v595 = v761.__r_.__value_.__r.__words[0];
            }

            if (v594)
            {
              if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v596 = &v765;
              }

              else
              {
                v596 = v765.__r_.__value_.__r.__words[0];
              }

              memmove(v595, v596, v594);
            }

            strcpy(v595 + v594, "has an empty / ineffectual normalized utterance: '");
            v597 = SHIBYTE(v581->__r_.__value_.__r.__words[2]);
            if (v597 >= 0)
            {
              v598 = v581;
            }

            else
            {
              v598 = v581->__r_.__value_.__r.__words[0];
            }

            if (v597 >= 0)
            {
              v599 = HIBYTE(v581->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v599 = v581->__r_.__value_.__l.__size_;
            }

            v600 = std::string::append(&v761, v598, v599);
            v601 = *&v600->__r_.__value_.__l.__data_;
            v762.__r_.__value_.__r.__words[2] = v600->__r_.__value_.__r.__words[2];
            *&v762.__r_.__value_.__l.__data_ = v601;
            v600->__r_.__value_.__l.__size_ = 0;
            v600->__r_.__value_.__r.__words[2] = 0;
            v600->__r_.__value_.__r.__words[0] = 0;
            v602 = std::string::append(&v762, "'");
            v763 = *v602;
            v602->__r_.__value_.__l.__size_ = 0;
            v602->__r_.__value_.__r.__words[2] = 0;
            v602->__r_.__value_.__r.__words[0] = 0;
            v603 = *(v515 + 8);
            if (v603)
            {
              v604 = (v603 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v602);
              v604 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(v759, "");
            siri::intelligence::GetLineNumFromUnknownField(v604, v759, -1);
          }

          if (siri::intelligence::VectorContains(&__p, &v764))
          {
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v583 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v583 = v765.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v761, v583 + 39);
            if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v584 = &v761;
            }

            else
            {
              v584 = v761.__r_.__value_.__r.__words[0];
            }

            if (v583)
            {
              if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v585 = &v765;
              }

              else
              {
                v585 = v765.__r_.__value_.__r.__words[0];
              }

              memmove(v584, v585, v583);
            }

            strcpy(v584 + v583, "has a duplicate normalized utterance: '");
            v586 = SHIBYTE(v581->__r_.__value_.__r.__words[2]);
            if (v586 >= 0)
            {
              v587 = v581;
            }

            else
            {
              v587 = v581->__r_.__value_.__r.__words[0];
            }

            if (v586 >= 0)
            {
              v588 = HIBYTE(v581->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v588 = v581->__r_.__value_.__l.__size_;
            }

            v589 = std::string::append(&v761, v587, v588);
            v590 = *&v589->__r_.__value_.__l.__data_;
            v762.__r_.__value_.__r.__words[2] = v589->__r_.__value_.__r.__words[2];
            *&v762.__r_.__value_.__l.__data_ = v590;
            v589->__r_.__value_.__l.__size_ = 0;
            v589->__r_.__value_.__r.__words[2] = 0;
            v589->__r_.__value_.__r.__words[0] = 0;
            v591 = std::string::append(&v762, "'");
            v763 = *v591;
            v591->__r_.__value_.__l.__size_ = 0;
            v591->__r_.__value_.__r.__words[2] = 0;
            v591->__r_.__value_.__r.__words[0] = 0;
            v592 = *(v515 + 8);
            if (v592)
            {
              v593 = (v592 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v591);
              v593 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(v759, "");
            siri::intelligence::GetLineNumFromUnknownField(v593, v759, -1);
          }

          std::vector<std::string>::push_back[abi:ne200100](&__p, &v764);
          if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v764.__r_.__value_.__l.__data_);
          }

          ++v579;
          v580 -= 8;
        }

        while (v580);
        v605 = *(v515 + 104);
        if (v605 >= 25)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v606 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v606 = v765.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v762, v606 + 14);
          if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v607 = &v762;
          }

          else
          {
            v607 = v762.__r_.__value_.__r.__words[0];
          }

          if (v606)
          {
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v608 = &v765;
            }

            else
            {
              v608 = v765.__r_.__value_.__r.__words[0];
            }

            memmove(v607, v608, v606);
          }

          strcpy(v607 + v606, "has more than ");
          std::to_string(&v761, 24);
          if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v609 = &v761;
          }

          else
          {
            v609 = v761.__r_.__value_.__r.__words[0];
          }

          if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v610 = HIBYTE(v761.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v610 = v761.__r_.__value_.__l.__size_;
          }

          v611 = std::string::append(&v762, v609, v610);
          v612 = *&v611->__r_.__value_.__l.__data_;
          v763.__r_.__value_.__r.__words[2] = v611->__r_.__value_.__r.__words[2];
          *&v763.__r_.__value_.__l.__data_ = v612;
          v611->__r_.__value_.__l.__size_ = 0;
          v611->__r_.__value_.__r.__words[2] = 0;
          v611->__r_.__value_.__r.__words[0] = 0;
          v613 = std::string::append(&v763, " utterances. This feature is meant for prototyping only. It is not a production NL system.");
          v764 = *v613;
          v613->__r_.__value_.__l.__size_ = 0;
          v613->__r_.__value_.__r.__words[2] = 0;
          v613->__r_.__value_.__r.__words[0] = 0;
          v614 = *(v515 + 8);
          if (v614)
          {
            v615 = (v614 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v613);
            v615 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(v759, "");
          siri::intelligence::GetLineNumFromUnknownField(v615, v759, -1);
        }

        if (v605 >= 13)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v616 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v616 = v765.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v762, v616 + 14);
          if ((v762.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v617 = &v762;
          }

          else
          {
            v617 = v762.__r_.__value_.__r.__words[0];
          }

          if (v616)
          {
            if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v618 = &v765;
            }

            else
            {
              v618 = v765.__r_.__value_.__r.__words[0];
            }

            memmove(v617, v618, v616);
          }

          strcpy(v617 + v616, "has more than ");
          std::to_string(&v761, 12);
          if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v619 = &v761;
          }

          else
          {
            v619 = v761.__r_.__value_.__r.__words[0];
          }

          if ((v761.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v620 = HIBYTE(v761.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v620 = v761.__r_.__value_.__l.__size_;
          }

          v621 = std::string::append(&v762, v619, v620);
          v622 = *&v621->__r_.__value_.__l.__data_;
          v763.__r_.__value_.__r.__words[2] = v621->__r_.__value_.__r.__words[2];
          *&v763.__r_.__value_.__l.__data_ = v622;
          v621->__r_.__value_.__l.__size_ = 0;
          v621->__r_.__value_.__r.__words[2] = 0;
          v621->__r_.__value_.__r.__words[0] = 0;
          v623 = std::string::append(&v763, " utterances. This feature is meant for prototyping only. It is not a production NL system.");
          v764 = *v623;
          v623->__r_.__value_.__l.__size_ = 0;
          v623->__r_.__value_.__r.__words[2] = 0;
          v623->__r_.__value_.__r.__words[0] = 0;
          v624 = *(v515 + 8);
          if (v624)
          {
            v625 = (v624 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v623);
            v625 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(v759, "");
          siri::intelligence::GetLineNumFromUnknownField(v625, v759, -1);
        }

        v764.__r_.__value_.__r.__words[0] = &__p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v764);
      }

      if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v765.__r_.__value_.__l.__data_);
      }

      v514 = v753 + 1;
      v513 = this;
      if (v753 + 1 >= *(this + 128))
      {
        goto LABEL_1426;
      }
    }

    v522 = *(v515 + 120);
    std::operator+<char>();
    v523 = std::string::append(&v764, "' ");
    v524 = *&v523->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v523->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v524;
    v523->__r_.__value_.__l.__size_ = 0;
    v523->__r_.__value_.__r.__words[2] = 0;
    v523->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v520 = &__p;
    }

    else
    {
      v520 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v521 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v521 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_1196;
  }

LABEL_1426:
  if (*(v513 + 98) >= 1)
  {
    v626 = 0;
    v627 = a2 + 296;
    do
    {
      v628 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(v513 + 384, v626);
      std::string::basic_string[abi:ne200100]<0>(&v765, "variable ");
      v629 = *(v628 + 16);
      if (v629)
      {
        v630 = *(v628 + 72);
        std::operator+<char>();
        v631 = std::string::append(&v764, "' ");
        v632 = *&v631->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v631->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v632;
        v631->__r_.__value_.__l.__size_ = 0;
        v631->__r_.__value_.__r.__words[2] = 0;
        v631->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v633 = &__p;
        }

        else
        {
          v633 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v634 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v634 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v765, v633, v634);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }

        v629 = *(v628 + 16);
      }

      if ((v629 & 1) == 0)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v635 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v635 = v765.__r_.__value_.__l.__size_;
        }

        v636 = std::string::basic_string[abi:ne200100](&__p, v635 + 22);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v637 = &__p;
        }

        else
        {
          v637 = __p.__r_.__value_.__r.__words[0];
        }

        if (v635)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v638 = &v765;
          }

          else
          {
            v638 = v765.__r_.__value_.__r.__words[0];
          }

          v636 = memmove(v637, v638, v635);
        }

        strcpy(v637 + v635, "does not define a name");
        v639 = *(v628 + 8);
        if (v639)
        {
          v640 = (v639 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v636);
          v640 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v640, &v764, -1);
      }

      if (v627 == std::__tree<std::string>::find<std::string>(a2 + 288, *(v628 + 72)))
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v641 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v641 = v765.__r_.__value_.__l.__size_;
        }

        v642 = std::string::basic_string[abi:ne200100](&__p, v641 + 12);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v643 = &__p;
        }

        else
        {
          v643 = __p.__r_.__value_.__r.__words[0];
        }

        if (v641)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v644 = &v765;
          }

          else
          {
            v644 = v765.__r_.__value_.__r.__words[0];
          }

          v642 = memmove(v643, v644, v641);
        }

        strcpy(v643 + v641, "is not used.");
        v645 = *(v628 + 8);
        if (v645)
        {
          v646 = (v645 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v642);
          v646 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v646, &v764, -1);
      }

      if ((*(v628 + 16) & 2) == 0)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v647 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v647 = v765.__r_.__value_.__l.__size_;
        }

        v648 = std::string::basic_string[abi:ne200100](&__p, v647 + 22);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v649 = &__p;
        }

        else
        {
          v649 = __p.__r_.__value_.__r.__words[0];
        }

        if (v647)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v650 = &v765;
          }

          else
          {
            v650 = v765.__r_.__value_.__r.__words[0];
          }

          v648 = memmove(v649, v650, v647);
        }

        strcpy(v649 + v647, "does not define a type");
        v651 = *(v628 + 8);
        if (v651)
        {
          v652 = (v651 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v648);
          v652 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v652, &v764, -1);
      }

      if (!siri::intelligence::IsValidTypeName(*(v628 + 80)))
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v653 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v653 = v765.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v764, v653 + 26);
        if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v654 = &v764;
        }

        else
        {
          v654 = v764.__r_.__value_.__r.__words[0];
        }

        if (v653)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v655 = &v765;
          }

          else
          {
            v655 = v765.__r_.__value_.__r.__words[0];
          }

          memmove(v654, v655, v653);
        }

        strcpy(v654 + v653, "has an invalid type name: ");
        v656 = *(v628 + 80);
        v657 = *(v656 + 23);
        if (v657 >= 0)
        {
          v658 = *(v628 + 80);
        }

        else
        {
          v658 = *v656;
        }

        if (v657 >= 0)
        {
          v659 = *(v656 + 23);
        }

        else
        {
          v659 = *(v656 + 8);
        }

        v660 = std::string::append(&v764, v658, v659);
        __p = *v660;
        v660->__r_.__value_.__l.__size_ = 0;
        v660->__r_.__value_.__r.__words[2] = 0;
        v660->__r_.__value_.__r.__words[0] = 0;
        v661 = *(v628 + 8);
        if (v661)
        {
          v662 = (v661 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v660);
          v662 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v763, "type");
        siri::intelligence::GetLineNumFromUnknownField(v662, &v763, -1);
      }

      if ((*(v628 + 16) & 1) != 0 && !siri::intelligence::IsValidVariableName(*(v628 + 72)))
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v663 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v663 = v765.__r_.__value_.__l.__size_;
        }

        v664 = std::string::basic_string[abi:ne200100](&__p, v663 + 34);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v665 = &__p;
        }

        else
        {
          v665 = __p.__r_.__value_.__r.__words[0];
        }

        if (v663)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v666 = &v765;
          }

          else
          {
            v666 = v765.__r_.__value_.__r.__words[0];
          }

          v664 = memmove(v665, v666, v663);
        }

        strcpy(v665 + v663, "has invalid characters in the name");
        v667 = *(v628 + 8);
        if (v667)
        {
          v668 = (v667 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v664);
          v668 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "name");
        siri::intelligence::GetLineNumFromUnknownField(v668, &v764, -1);
      }

      v669 = *(v628 + 16);
      if ((v669 & 0x10) == 0)
      {
        goto LABEL_1628;
      }

      v670 = *(v628 + 104);
      if (v670)
      {
        if ((v669 & 2) != 0)
        {
          goto LABEL_1527;
        }
      }

      else
      {
        google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 17756);
        v671 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || default_value_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v764, &v671->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
        v670 = *(v628 + 104);
        if ((*(v628 + 16) & 2) != 0)
        {
LABEL_1527:
          if (v670)
          {
            v672 = v670;
          }

          else
          {
            v672 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
          }

          v673 = *(v628 + 80);
          if (*(v673 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v764, *v673, *(v673 + 1));
          }

          else
          {
            v674 = *v673;
            v764.__r_.__value_.__r.__words[2] = *(v673 + 2);
            *&v764.__r_.__value_.__l.__data_ = v674;
          }

          v675 = *(v672 + 4);
          LOWORD(v676) = v675;
          if ((v675 & 2) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v762, siri::intelligence::TYPE_STRING[0]);
            if (siri::intelligence::IsEquivalentType(&v764, &v762.__r_.__value_.__l.__data_))
            {
              v676 = *(v672 + 4);
              goto LABEL_1536;
            }

            v680 = 1;
LABEL_1565:
            if (SHIBYTE(v762.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v762.__r_.__value_.__l.__data_);
            }

LABEL_1567:
            v513 = this;
            if (v680)
            {
              goto LABEL_1568;
            }

            v692 = *(v672 + 4);
            if ((v692 & 0x10) != 0)
            {
              memset(&__p, 0, sizeof(__p));
              memset(&v763, 0, sizeof(v763));
              google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v763, v672 + 96);
              if (LODWORD(v763.__r_.__value_.__r.__words[1]))
              {
                if (v763.__r_.__value_.__r.__words[2])
                {
                  v695 = (v763.__r_.__value_.__r.__words[2] + 8);
                }

                else
                {
                  v695 = 0;
                }

                do
                {
                  std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&__p, *v695++);
                  if (v763.__r_.__value_.__r.__words[2])
                  {
                    v696 = v763.__r_.__value_.__r.__words[2] + 8;
                  }

                  else
                  {
                    v696 = 0;
                  }
                }

                while (v695 != (v696 + 8 * SLODWORD(v763.__r_.__value_.__r.__words[1])));
              }

              google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v763);
              v697 = *(v672 + 19);
              std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
            }

            if ((v692 & 8) == 0)
            {
              if (siri::intelligence::DialogTypes::IsDialogType(&v764))
              {
                v693 = *(v628 + 72);
                if (*(v628 + 104))
                {
                  v694 = *(v628 + 104);
                }

                else
                {
                  v694 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
                }

                siri::intelligence::Variable::FromProtobuf(v694, &v755);
                _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
              }

LABEL_1626:
              siri::intelligence::ValidateKeyValueParameter(&v765, v672, a2, a3);
              if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v764.__r_.__value_.__l.__data_);
              }

              goto LABEL_1628;
            }

            siri::intelligence::Memory::GetVariable(a2 + 312, *(v672 + 18), &v763);
            if (v763.__r_.__value_.__r.__words[0])
            {
              (*(*v763.__r_.__value_.__l.__data_ + 96))(&__p);
              v698 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v699 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v699 = __p.__r_.__value_.__l.__size_;
              }

              v700 = HIBYTE(v764.__r_.__value_.__r.__words[2]);
              if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v700 = v764.__r_.__value_.__l.__size_;
              }

              if (v699 == v700)
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v701 = &__p;
                }

                else
                {
                  v701 = __p.__r_.__value_.__r.__words[0];
                }

                if ((v764.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v702 = &v764;
                }

                else
                {
                  v702 = v764.__r_.__value_.__r.__words[0];
                }

                v703 = memcmp(v701, v702, v699) != 0;
                if (v698 < 0)
                {
LABEL_1621:
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v703 = 1;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_1621;
                }
              }

              v513 = this;
            }

            else
            {
              v703 = 0;
            }

            if (v763.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v763.__r_.__value_.__l.__size_);
            }

            if (v703)
            {
LABEL_1568:
              if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v682 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v682 = v765.__r_.__value_.__l.__size_;
              }

              std::string::basic_string[abi:ne200100](&v763, v682 + 51);
              if ((v763.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v683 = &v763;
              }

              else
              {
                v683 = v763.__r_.__value_.__r.__words[0];
              }

              if (v682)
              {
                if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v684 = &v765;
                }

                else
                {
                  v684 = v765.__r_.__value_.__r.__words[0];
                }

                memmove(v683, v684, v682);
              }

              strcpy(v683 + v682, "has a default value that doesn't match the type of ");
              v685 = *(v628 + 80);
              v686 = *(v685 + 23);
              if (v686 >= 0)
              {
                v687 = *(v628 + 80);
              }

              else
              {
                v687 = *v685;
              }

              if (v686 >= 0)
              {
                v688 = *(v685 + 23);
              }

              else
              {
                v688 = *(v685 + 8);
              }

              v689 = std::string::append(&v763, v687, v688);
              __p = *v689;
              v689->__r_.__value_.__l.__size_ = 0;
              v689->__r_.__value_.__r.__words[2] = 0;
              v689->__r_.__value_.__r.__words[0] = 0;
              v690 = *(v628 + 8);
              if (v690)
              {
                v691 = (v690 & 0xFFFFFFFFFFFFFFFELL);
              }

              else
              {
                google::protobuf::internal::InitProtobufDefaults(v689);
                v691 = &google::protobuf::internal::fixed_address_empty_string;
              }

              std::string::basic_string[abi:ne200100]<0>(&v755, "defaultValue");
              siri::intelligence::GetLineNumFromUnknownField(v691, &v755, -1);
            }

            goto LABEL_1626;
          }

LABEL_1536:
          LOBYTE(v677) = v676;
          if ((v676 & 0x100) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v761, siri::intelligence::TYPE_BOOLEAN[0]);
            if (siri::intelligence::IsEquivalentType(&v764, &v761.__r_.__value_.__l.__data_))
            {
              v677 = *(v672 + 4);
              goto LABEL_1539;
            }

            v680 = 1;
LABEL_1561:
            if (SHIBYTE(v761.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v761.__r_.__value_.__l.__data_);
            }

LABEL_1564:
            if ((v675 & 2) != 0)
            {
              goto LABEL_1565;
            }

            goto LABEL_1567;
          }

LABEL_1539:
          if ((v677 & 0x80) == 0 || (std::string::basic_string[abi:ne200100]<0>(v759, siri::intelligence::TYPE_NUMBER[0]), siri::intelligence::IsEquivalentType(&v764, v759)))
          {
            v678 = v627;
            v679 = *(v672 + 14);
            if (v679 < 1)
            {
              if (*(v672 + 20) >= 1)
              {
                goto LABEL_1548;
              }

              v680 = 0;
LABEL_1557:
              v627 = v678;
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(v757, siri::intelligence::TYPE_ARRAY[0]);
              if (!siri::intelligence::IsEquivalentType(&v764, v757))
              {
                v680 = 1;
                goto LABEL_1554;
              }

              if (*(v672 + 20) <= 0)
              {
                v680 = 0;
                goto LABEL_1554;
              }

LABEL_1548:
              std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_DICTIONARY[0]);
              IsEquivalentType = siri::intelligence::IsEquivalentType(&v764, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v680 = !IsEquivalentType;
              if (v679 < 1)
              {
                goto LABEL_1557;
              }

LABEL_1554:
              v627 = v678;
              if (v758 < 0)
              {
                operator delete(v757[0]);
              }
            }

            if ((v677 & 0x80) != 0)
            {
LABEL_1559:
              if (v760 < 0)
              {
                operator delete(v759[0]);
                if ((v676 & 0x100) != 0)
                {
                  goto LABEL_1561;
                }

                goto LABEL_1564;
              }
            }

            if ((v676 & 0x100) != 0)
            {
              goto LABEL_1561;
            }

            goto LABEL_1564;
          }

          v680 = 1;
          goto LABEL_1559;
        }
      }

LABEL_1628:
      if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v765.__r_.__value_.__l.__data_);
      }

      ++v626;
    }

    while (v626 < *(v513 + 98));
  }

  v704 = v513;
  if (*(v513 + 68) >= 1)
  {
    v705 = 0;
    do
    {
      v706 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(v704 + 264, v705);
      std::string::basic_string[abi:ne200100]<0>(&v765, "condition ");
      v707 = *(v706 + 16);
      if (v707)
      {
        v708 = *(v706 + 24);
        std::operator+<char>();
        v709 = std::string::append(&v764, "' ");
        v710 = *&v709->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v709->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v710;
        v709->__r_.__value_.__l.__size_ = 0;
        v709->__r_.__value_.__r.__words[2] = 0;
        v709->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v711 = &__p;
        }

        else
        {
          v711 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v712 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v712 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v765, v711, v712);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }

        v707 = *(v706 + 16);
      }

      if ((v707 & 1) == 0)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v713 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v713 = v765.__r_.__value_.__l.__size_;
        }

        v714 = std::string::basic_string[abi:ne200100](&__p, v713 + 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v715 = &__p;
        }

        else
        {
          v715 = __p.__r_.__value_.__r.__words[0];
        }

        if (v713)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v716 = &v765;
          }

          else
          {
            v716 = v765.__r_.__value_.__r.__words[0];
          }

          v714 = memmove(v715, v716, v713);
        }

        strcpy(v715 + v713, "does not define an id");
        v717 = *(v706 + 8);
        if (v717)
        {
          v718 = (v717 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v714);
          v718 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v718, &v764, -1);
      }

      if ((siri::intelligence::IsValidId(*(v706 + 24)) & 1) == 0)
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v719 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v719 = v765.__r_.__value_.__l.__size_;
        }

        v720 = std::string::basic_string[abi:ne200100](&__p, v719 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v721 = &__p;
        }

        else
        {
          v721 = __p.__r_.__value_.__r.__words[0];
        }

        if (v719)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v722 = &v765;
          }

          else
          {
            v722 = v765.__r_.__value_.__r.__words[0];
          }

          v720 = memmove(v721, v722, v719);
        }

        strcpy(v721 + v719, "has invalid characters in the ID");
        v723 = *(v706 + 8);
        if (v723)
        {
          v724 = (v723 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v720);
          v724 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "id");
        siri::intelligence::GetLineNumFromUnknownField(v724, &v764, -1);
      }

      if ((a2 + 272) == std::__tree<std::string>::find<std::string>(a2 + 264, *(v706 + 24)))
      {
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v725 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v725 = v765.__r_.__value_.__l.__size_;
        }

        v726 = std::string::basic_string[abi:ne200100](&__p, v725 + 12);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v727 = &__p;
        }

        else
        {
          v727 = __p.__r_.__value_.__r.__words[0];
        }

        if (v725)
        {
          if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v728 = &v765;
          }

          else
          {
            v728 = v765.__r_.__value_.__r.__words[0];
          }

          v726 = memmove(v727, v728, v725);
        }

        strcpy(v727 + v725, "is not used.");
        v729 = *(v706 + 8);
        if (v729)
        {
          v730 = (v729 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v726);
          v730 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "");
        siri::intelligence::GetLineNumFromUnknownField(v730, &v764, -1);
      }

      if ((*(v706 + 16) & 2) != 0)
      {
        v731 = *(v706 + 32);
        if (!v731)
        {
          google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21788);
          v732 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || condition_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v764, &v732->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
          v731 = *(v706 + 32);
        }

        if (v731)
        {
          v733 = v731;
        }

        else
        {
          v733 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
        }

        siri::intelligence::ValidateConditionEntry(&v765.__r_.__value_.__l.__data_, v733, a2, a3);
      }

      if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v765.__r_.__value_.__l.__data_);
      }

      ++v705;
      v704 = this;
    }

    while (v705 < *(this + 68));
  }

  if (*(v704 + 44) >= 1)
  {
    v734 = 0;
    do
    {
      v735 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(v704 + 168, v734);
      std::string::basic_string[abi:ne200100]<0>(&__p, "activity ");
      v736 = *(v735 + 16);
      if ((v736 & 2) != 0)
      {
        v737 = *(v735 + 56);
        std::operator+<char>();
        v738 = std::string::append(&v764, "' ");
        v739 = *&v738->__r_.__value_.__l.__data_;
        v765.__r_.__value_.__r.__words[2] = v738->__r_.__value_.__r.__words[2];
        *&v765.__r_.__value_.__l.__data_ = v739;
        v738->__r_.__value_.__l.__size_ = 0;
        v738->__r_.__value_.__r.__words[2] = 0;
        v738->__r_.__value_.__r.__words[0] = 0;
        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v740 = &v765;
        }

        else
        {
          v740 = v765.__r_.__value_.__r.__words[0];
        }

        if ((v765.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v741 = HIBYTE(v765.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v741 = v765.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v740, v741);
        if (SHIBYTE(v765.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v765.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v764.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v764.__r_.__value_.__l.__data_);
        }

        v736 = *(v735 + 16);
      }

      if ((v736 & 0x10) != 0 && (a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, *(v735 + 80)))
      {
        v742 = *(v735 + 80);
        v743 = std::operator+<char>();
        v744 = *(v735 + 8);
        if (v744)
        {
          v745 = (v744 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v743);
          v745 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v764, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v745, &v764, -1);
      }

      if (*(v735 + 32) >= 1)
      {
        v746 = 0;
        do
        {
          v747 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v735 + 24, v746);
          if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v747))
          {
            v748 = std::operator+<char>();
            v749 = *(v735 + 8);
            if (v749)
            {
              v750 = (v749 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v748);
              v750 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v764, "responseIds");
            siri::intelligence::GetLineNumFromUnknownField(v750, &v764, v746);
          }

          ++v746;
        }

        while (v746 < *(v735 + 32));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v734;
      v704 = this;
    }

    while (v734 < *(this + 44));
  }
}