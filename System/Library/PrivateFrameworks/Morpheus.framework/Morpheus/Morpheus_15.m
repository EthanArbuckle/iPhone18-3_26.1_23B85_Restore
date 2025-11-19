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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 4);
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

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_286BF2B68;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_25A366940(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_286BF2B68;
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
  a1->__locale_ = &unk_286BF2B68;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F851760);
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
  a1->__locale_ = &unk_286BF2BB0;
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
  a1->__locale_ = &unk_286BF2BB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F851760);
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

  JUMPOUT(0x25F851760);
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
  a1->__locale_ = &unk_286BF2C40;
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
  a1->__locale_ = &unk_286BF2C40;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F851760);
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
  a1->__locale_ = &unk_286BF2C88;
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
  a1->__locale_ = &unk_286BF2C88;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F851760);
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

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
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

  JUMPOUT(0x25F851760);
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

void sub_25A367648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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

  JUMPOUT(0x25F851760);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v18 = 0;
    negate = this->__negate_;
    goto LABEL_54;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_31;
  }

  v72 = *current;
  v6 = current[1];
  v73 = current[1];
  if (this->__icase_)
  {
    v72 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v73 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v72, &v74, &__p);
  if ((v71 & 0x80000000) == 0)
  {
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_31:
    negate = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
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
    while (v72 != *(p_second - 1) || v73 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v74);
    v12 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12[v13].first.__r_.__value_.__r.__words, &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v13].second.__r_.__value_.__l.__data_) >= 1)
      {
        ++v14;
        v12 = this->__ranges_.__begin_;
        ++v13;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v17 = 0;
    goto LABEL_130;
  }

  p_p = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v74, &__p);
  v36 = this->__equivalences_.__begin_;
  v37 = v71;
  v38 = this->__equivalences_.__end_ - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      size = HIBYTE(v36->__r_.__value_.__r.__words[2]);
      v45 = size;
      if ((size & 0x80u) != 0)
      {
        size = v36->__r_.__value_.__l.__size_;
      }

      if (v40 == size)
      {
        v46 = v45 >= 0 ? v36 : v36->__r_.__value_.__r.__words[0];
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      ++v36;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v65 = tab[v72];
      if (((v65 & mask) != 0 || v72 == 95 && (mask & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((tab[v73] & mask) != 0 || (mask & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      neg_mask = this->__neg_mask_;
      if ((v65 & neg_mask) != 0 || v72 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_147:
        negate = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v73] & neg_mask) == 0)
      {
        negate = 1;
        if (v73 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    negate = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  negate = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = *a2->__current_;
  v72 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v21) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v21);
    v72 = v21;
  }

  v22 = this->__chars_.__begin_;
  v23 = this->__chars_.__end_ - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = this->__neg_mask_;
  if (v25 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v21 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v21] & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    end = this->__neg_chars_.__end_;
    v28 = memchr(this->__neg_chars_.__begin_, v21, end - this->__neg_chars_.__begin_);
    v29 = !v28 || v28 == end;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      negate = 1;
      goto LABEL_54;
    }
  }

  v33 = this->__ranges_.__begin_;
  v34 = this->__ranges_.__end_;
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v73);
    v33 = this->__ranges_.__begin_;
    v34 = this->__ranges_.__end_;
  }

  else
  {
    v71 = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v33[v47].first.__r_.__value_.__r.__words, &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v47].second.__r_.__value_.__l.__data_) >= 1)
    {
      ++v48;
      v33 = this->__ranges_.__begin_;
      ++v47;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    negate = 1;
  }

  if (v71 < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_119:
      v61 = this->__mask_;
      if ((v72 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v72] & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      negate |= v62;
      goto LABEL_54;
    }

    v50 = &__p;
    std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v73, &__p);
    v51 = this->__equivalences_.__begin_;
    v52 = this->__equivalences_.__end_ - v51;
    if (v52)
    {
      v67 = v71;
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = v71;
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v51->__r_.__value_.__l.__size_;
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : v51->__r_.__value_.__r.__words[0];
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        ++v51;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      negate = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v32 = -993;
  }

  else
  {
    a2->__current_ += v18;
    first = this->__first_;
    v32 = -995;
  }

  a2->__do_ = v32;
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

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, a2, a3, a3 - a2);
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

void sub_25A367FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__s, a2, a3, a3 - a2);
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

void sub_25A368140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, a2, a3, a3 - a2);
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

void sub_25A368268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 5);
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
  v9 = 0;
  v10 = 0;
  v30 = 0uLL;
  v31 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v30);
        v9 = HIBYTE(v31);
        v10 = *(&v30 + 1);
        break;
      case ':':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_48;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v15 = v4;
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v16 = *v4;
    if (v16 == 92)
    {
      if (v14)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v30);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v30, v6);
      }

      v15 = v17;
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v16) = *v4;
  }

  if ((v9 & 0x80) != 0)
  {
    v18 = v30;
    *(&v30 + 1) = 1;
  }

  else
  {
    HIBYTE(v31) = 1;
    v18 = &v30;
  }

  *v18 = v16;
  *(v18 + 1) = 0;
  v15 = v4 + 1;
LABEL_28:
  if (v15 == a3 || (v19 = *v15, v19 == 93) || (v21 = v15 + 1, v15 + 1 == a3) || v19 != 45 || *v21 == 93)
  {
    if (SHIBYTE(v31) < 0)
    {
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) != 1)
        {
          v20 = v30;
LABEL_46:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, *v20, *(v20 + 1));
          goto LABEL_47;
        }

        v20 = v30;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v31))
    {
      v20 = &v30;
      if (HIBYTE(v31) != 1)
      {
        goto LABEL_46;
      }

LABEL_37:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, *v20);
    }

LABEL_47:
    v13 = 1;
    v4 = v15;
    goto LABEL_48;
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v4 = v15 + 2;
  if (v15 + 2 != a3 && *v21 == 91 && *v4 == 46)
  {
    v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v15 + 3, a3, v28);
LABEL_60:
    v4 = v22;
    goto LABEL_61;
  }

  if ((v14 | 0x40) == 0x40)
  {
    LODWORD(v21) = *v21;
    if (v21 == 92)
    {
      if (v14)
      {
        v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v15 + 2, a3, v28);
      }

      else
      {
        v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v15 + 2, a3, v28, v6);
      }

      goto LABEL_60;
    }
  }

  else
  {
    LOBYTE(v21) = *v21;
  }

  HIBYTE(v29) = 1;
  LOWORD(v28[0]) = v21;
LABEL_61:
  *v26 = v30;
  v27 = v31;
  v31 = 0;
  v30 = 0uLL;
  *__p = *v28;
  v25 = v29;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, v26, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v13 = 1;
LABEL_48:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_25A368654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void sub_25A368838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

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
  MEMORY[0x25F851160](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, a2, a3, a3 - a2);
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

void sub_25A369464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
  MEMORY[0x25F851160](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(&i[-1]);
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

  JUMPOUT(0x25F851760);
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

  JUMPOUT(0x25F851760);
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
  MEMORY[0x25F851160](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F851160](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x25F851760);
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

  JUMPOUT(0x25F851760);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_286BF2E50;
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

  JUMPOUT(0x25F851760);
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
  MEMORY[0x25F851160](exception, 15);
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

  JUMPOUT(0x25F851760);
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

std::string *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, std::__wrap_iter<const char *> a2, std::__wrap_iter<const char *> a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v18, a2, a3, a4, __m);
  memset(&v17.__match_.__prefix_, 0, 17);
  memset(&v17.__match_.__suffix_, 0, 17);
  v17.__match_.__ready_ = 0;
  v17.__match_.__position_start_.__i_ = 0;
  memset(&v17.__match_, 0, 41);
  memset(&v17, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::string::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v18.__match_.__prefix_.first.__i_;
        v15 = v18.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v18.__match_, a1, a5, &a5[v11], v6);
      v13 = v18.__match_.__suffix_.first.__i_;
      v12 = v18.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v18);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (v17.__match_.__matches_.__begin_)
  {
    v17.__match_.__matches_.__end_ = v17.__match_.__matches_.__begin_;
    operator delete(v17.__match_.__matches_.__begin_);
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_25A36ACD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

std::string *std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            v36 = *v35;
            v37 = *(v35 + 8);
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = *(v22 + 8);
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    pregex = this->__pregex_;
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v8, v10, &__p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, &__p, (flags & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    goto LABEL_16;
  }

  v12 = this->__end_.__i_;
  if (v12 == v7)
  {
LABEL_16:
    if (begin)
    {
      this->__match_.__matches_.__end_ = begin;
      operator delete(begin);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
    this->__match_.__prefix_.first.__i_ = 0;
    this->__match_.__prefix_.second.__i_ = 0;
    this->__match_.__prefix_.matched = 0;
    this->__match_.__suffix_.first.__i_ = 0;
    this->__match_.__suffix_.second.__i_ = 0;
    this->__match_.__suffix_.matched = 0;
    this->__match_.__position_start_.__i_ = 0;
    return this;
  }

  v13 = this->__pregex_;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_25A36B1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(std::regex_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, std::regex_constants::match_flag_type __m)
{
  v5 = __m;
  this->__begin_ = __a;
  this->__end_ = __b;
  this->__pregex_ = __re;
  this->__flags_ = __m;
  *&this->__match_.__matches_.__begin_ = 0u;
  p_match = &this->__match_;
  this->__match_.__prefix_.first.__i_ = 0;
  this->__match_.__prefix_.second.__i_ = 0;
  this->__match_.__prefix_.matched = 0;
  this->__match_.__suffix_.first.__i_ = 0;
  this->__match_.__suffix_.second.__i_ = 0;
  this->__match_.__suffix_.matched = 0;
  this->__match_.__ready_ = 0;
  this->__match_.__position_start_.__i_ = 0;
  *&this->__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, &__p, __m);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}

void sub_25A36B2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
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

void sub_25A36C030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
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
  result = vaddq_s64(a1[2], xmmword_25A9C1400);
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *>>::emplace_back<std::function<void ()(void)> *&>(a1, &v10);
}

void sub_25A36C498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *>>::emplace_front<std::function<void ()(void)> *>(a1, v11);
}

void sub_25A36C760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
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

  return std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::~__split_buffer(a1);
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

    std::vector<int>::__throw_length_error[abi:ne200100]();
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

    std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_25A36CE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<mlx::core::fast::CustomKernel>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream &,std::string,std::string,std::tuple<int,int,int> &,std::tuple<int,int,int> &,std::vector<mlx::core::fast::CustomKernelShapeInfo> const&,BOOL const&,std::optional<float> &,std::allocator<mlx::core::fast::CustomKernel>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char *a8, uint64_t *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF2FA0;
  std::construct_at[abi:ne200100]<mlx::core::fast::CustomKernel,mlx::core::Stream &,std::string,std::string,std::tuple<int,int,int> &,std::tuple<int,int,int> &,std::vector<mlx::core::fast::CustomKernelShapeInfo> const&,BOOL const&,std::optional<float> &,mlx::core::fast::CustomKernel*>((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::CustomKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF2FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::CustomKernel,mlx::core::Stream &,std::string,std::string,std::tuple<int,int,int> &,std::tuple<int,int,int> &,std::vector<mlx::core::fast::CustomKernelShapeInfo> const&,BOOL const&,std::optional<float> &,mlx::core::fast::CustomKernel*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char *a8, uint64_t *a9)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v12 = *(a2 + 2);
  v30 = *a3;
  v34[0] = a3[1];
  *(v34 + 7) = *(a3 + 15);
  v29 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v14 = *a4;
  v13 = a4[1];
  *&v33[7] = *(a4 + 15);
  v32 = 0;
  *v33 = v13;
  v15 = *(a4 + 23);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v16 = *a5;
  v17 = *(a5 + 2);
  v18 = *a6;
  v19 = *(a6 + 2);
  v20 = *a7;
  v21 = a7[1];
  v22 = v21 - *a7;
  v31 = 0uLL;
  std::vector<mlx::core::fast::CustomKernelShapeInfo>::__init_with_size[abi:ne200100]<mlx::core::fast::CustomKernelShapeInfo*,mlx::core::fast::CustomKernelShapeInfo*>(&v31, v20, v21, 0xAAAAAAAAAAAAAAABLL * v22);
  v23 = *a8;
  v24 = *a9;
  *(a1 + 16) = v12;
  *a1 = &unk_286C0A138;
  *(a1 + 8) = v11;
  v25 = *v33;
  *(a1 + 24) = v14;
  *(a1 + 32) = v25;
  *(a1 + 39) = *&v33[7];
  *(a1 + 47) = v15;
  v26 = v34[0];
  *(a1 + 48) = v30;
  *(a1 + 56) = v26;
  *(a1 + 63) = *(v34 + 7);
  *(a1 + 71) = v29;
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 84) = v18;
  *(a1 + 92) = v19;
  *(a1 + 96) = v31;
  *(a1 + 112) = v32;
  *(a1 + 120) = v23;
  *(a1 + 124) = v24;
  v27 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A36D1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, void *__p)
{
  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (a10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::broadcast(uint64_t **this, const mlx::core::array *a2, mlx::core::array *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (!*(*a2 + 48))
  {
    v16[0] = &unk_286BE3468;
    v16[1] = mlx::core::allocator::free;
    v16[3] = v16;
    mlx::core::array::set_data(a2, 0);
  }

  std::vector<long long>::vector[abi:ne200100](__p, (*(*a2 + 8) - **a2) >> 2);
  v5 = *a2;
  v6 = *this;
  v7 = **this;
  v8 = ((*this)[1] - v7) >> 2;
  v9 = (v8 - 1);
  if (v8 - 1 >= 0)
  {
    v10 = __p[0] + 8 * (((v5[1] - *v5) >> 2) - v8);
    do
    {
      if (*(v7 + 4 * v9) == 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v6[3] + 8 * v9);
      }

      *&v10[8 * v9] = v11;
    }

    while (v9-- > 0);
  }

  if (v5[6] <= v6[6])
  {
    v13 = *(v6 + 168);
  }

  else
  {
    v13 = v6[21] & 0xF9;
  }

  mlx::core::array::copy_shared_buffer(a2, this, __p, v13, v6[20], 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void mlx::core::Load::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
  v5[0] = &unk_286BE3468;
  v5[1] = mlx::core::allocator::free;
  v5[3] = v5;
  mlx::core::array::set_data(a3, v4);
}

void sub_25A36D7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::shared_future<void> a11, std::shared_future<void> a12, std::future<void> a13, char a14)
{
  __cxa_free_exception(v15);
  std::mutex::unlock(v14);
  std::shared_future<void>::~shared_future(&a11);
  std::shared_future<void>::~shared_future(&a12);
  _Unwind_Resume(a1);
}

void mlx::core::Load::~Load(mlx::core::Load *this)
{
  *this = &unk_286BF3000;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_286BF3000;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

void *std::__packaged_task_func<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__packaged_task_func(void *a1)
{
  *a1 = &unk_286BF30A0;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__packaged_task_func<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__packaged_task_func(void *a1)
{
  *a1 = &unk_286BF30A0;
  v1 = a1[6];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

__n128 std::__packaged_task_func<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF30A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  *(a2 + 40) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 68) = 0;
  *(a2 + 65) = 0;
  return result;
}

void std::__packaged_task_func<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__packaged_task_func<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__packaged_task_func<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::operator()(uint64_t a1)
{
  result = (*(**(a1 + 40) + 40))(*(a1 + 40), *(a1 + 8), *(a1 + 24) * *(a1 + 16), *(a1 + 32));
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 24);
    switch(v4)
    {
      case 8:
        v11 = *(a1 + 16);
        if (v11)
        {
          v12 = 0;
          v13 = *(a1 + 8);
          do
          {
            v14 = 0;
            v15 = 7;
            do
            {
              v16 = *(v13 + v14);
              *(v13 + v14) = *(v13 + v15);
              *(v13 + v15) = v16;
              ++v14;
              --v15;
            }

            while (v14 != 4);
            ++v12;
            v13 += 8;
          }

          while (v12 != v11);
        }

        break;
      case 4:
        v8 = *(a1 + 16);
        if (v8)
        {
          v9 = *(a1 + 8);
          do
          {
            v3.i32[0] = *v9;
            v10 = vrev64_s16(*&vmovl_u8(v3));
            v3 = vuzp1_s8(v10, v10);
            *v9++ = v3.i32[0];
            --v8;
          }

          while (v8);
        }

        break;
      case 2:
        v5 = *(a1 + 16);
        if (v5)
        {
          v6 = (*(a1 + 8) + 1);
          do
          {
            v7 = *(v6 - 1);
            *(v6 - 1) = *v6;
            *v6 = v7;
            v6 += 2;
            --v5;
          }

          while (v5);
        }

        break;
    }
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueIZN3mlx4core4Load8eval_cpuERKNS_6vectorINS5_5arrayENS_9allocatorIS8_EEEERS8_E3__0JEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSI_DpOSJ_EUlvE_NS9_ISR_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF30F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueIZN3mlx4core4Load8eval_cpuERKNS_6vectorINS5_5arrayENS_9allocatorIS8_EEEERS8_E3__0JEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSI_DpOSJ_EUlvE_NS9_ISR_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF30F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueIZN3mlx4core4Load8eval_cpuERKNS_6vectorINS5_5arrayENS_9allocatorIS8_EEEERS8_E3__0JEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSI_DpOSJ_EUlvE_NS9_ISR_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF30F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueIZN3mlx4core4Load8eval_cpuERKNS_6vectorINS5_5arrayENS_9allocatorIS8_EEEERS8_E3__0JEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSI_DpOSJ_EUlvE_NS9_ISR_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueIZN3mlx4core4Load8eval_cpuERKNS_6vectorINS5_5arrayENS_9allocatorIS8_EEEERS8_E3__0JEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSI_DpOSJ_EUlvE_NS9_ISR_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueIZN3mlx4core4Load8eval_cpuERKNS_6vectorINS5_5arrayENS_9allocatorIS8_EEEERS8_E3__0JEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSI_DpOSJ_EUlvE_NS9_ISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueIZN3mlx4core4Load8eval_cpuERKNSt3__16vectorINS2_5arrayENS4_9allocatorIS6_EEEERS6_E3__0JEEENS4_6futureINS4_13invoke_resultIT_JDpT0_EE4typeEEEOSG_DpOSH_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::shared_future<void> *std::__function::__func<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1,std::allocator<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286BF3178;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void std::__function::__func<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1,std::allocator<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286BF3178;
  std::shared_future<void>::~shared_future(a1 + 1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1,std::allocator<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BF3178;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1,std::allocator<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,void ()(void)>::destroy_deallocate(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1,std::allocator<mlx::core::Load::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::shapes_without_reduction_axes(uint64_t **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = *a1;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v7[3], v7[4], (v7[4] - v7[3]) >> 3);
  v8 = (a2[1] - *a2) >> 2;
  v9 = (v8 - 1);
  if (v8 - 1 >= 0)
  {
    do
    {
      v10 = *(*a2 + 4 * v9);
      v11 = v19 + 4 * v10;
      v12 = v20 - (v11 + 4);
      if (v20 != v11 + 4)
      {
        memmove(v19 + 4 * v10, v11 + 4, v20 - (v11 + 4));
      }

      v20 = &v11[v12];
      v13 = __p + 8 * v10;
      v14 = v17 - (v13 + 8);
      if (v17 != v13 + 8)
      {
        memmove(__p + 8 * v10, v13 + 8, v17 - (v13 + 8));
      }

      v17 = &v13[v14];
    }

    while (v9-- > 0);
  }

  std::pair<std::vector<int>,std::vector<long long>>::pair[abi:ne200100]<std::vector<int>&,std::vector<long long>&,0>(a3, &v19, &__p);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_25A36E16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::get_reduction_plan(uint64_t **this@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v128[2] = *MEMORY[0x277D85DE8];
  v6 = *this;
  v7 = *a2;
  if (*this)[6] == (*this)[20] && a2[1] - v7 == v6[1] - *v6 && (v6[21])
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    goto LABEL_123;
  }

  v104 = a3;
  if ((v6[21] & 2) != 0)
  {
    LODWORD(v121) = mlx::core::array::shape(this, *v7);
    v125 = 0;
    v126 = 0;
    v124 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v124, &v121, &v121 + 4, 1uLL);
    v127 = *((*this)[3] + 8 * **a2);
    v122 = 0;
    v123 = 0;
    v121 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v121, &v127, v128, 1uLL);
    v8 = *a2;
    if ((a2[1] - *a2) >= 5)
    {
      v9 = 0;
      do
      {
        v10 = v8[v9 + 1];
        if (v10 - 1 == v8[v9] && (v11 = mlx::core::array::shape(this, v10), v10 = (*a2)[v9 + 1], v11 >= 2))
        {
          v12 = mlx::core::array::shape(this, v10);
          *(v125 - 1) *= v12;
          v8 = *a2;
          *(v122 - 1) = *((*this)[3] + 8 * (*a2)[v9 + 1]);
        }

        else
        {
          v13 = mlx::core::array::shape(this, v10);
          v14 = v125;
          if (v125 >= v126)
          {
            v16 = v124;
            v17 = v125 - v124;
            v18 = (v125 - v124) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v20 = v126 - v124;
            if ((v126 - v124) >> 1 > v19)
            {
              v19 = v20 >> 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v21 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v124, v21);
            }

            v22 = (4 * v18);
            v23 = &v22[-((v125 - v124) >> 2)];
            *v22 = v13;
            v15 = (v22 + 1);
            memcpy(v23, v16, v17);
            v24 = v124;
            v124 = v23;
            v125 = v15;
            v126 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v125 = v13;
            v15 = v14 + 4;
          }

          v125 = v15;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v121, ((*this)[3] + 8 * (*a2)[v9 + 1]));
          v8 = *a2;
        }

        v25 = v9 + 2;
        ++v9;
      }

      while (v25 < a2[1] - v8);
    }

    v26 = ((v125 - v124) >> 2) - 1;
    if (v26 >= 0)
    {
      v27 = v26 + 1;
      v28 = 4 * (((v125 - v124) >> 2) - 1);
      v29 = v28 ^ 0xFFFFFFFFFFFFFFFCLL;
      v30 = 8 * (((v125 - v124) >> 2) - 1);
      v31 = v30 + 8;
      v32 = v30 ^ 0xFFFFFFFFFFFFFFF8;
      do
      {
        if (*&v124[v28] == 1)
        {
          v33 = &v124[v28];
          v34 = &v124[v28 + 4];
          v35 = v29 + v125 - v124;
          if (v34 != v125)
          {
            memmove(v33, v34, v29 + v125 - v124);
          }

          v125 = &v33[v35];
          v36 = &v121[v31 - 8];
          v37 = v32 + v122 - v121;
          if (&v121[v31] != v122)
          {
            memmove(&v121[v31 - 8], &v121[v31], v32 + v122 - v121);
          }

          v122 = &v36[v37];
        }

        v29 += 4;
        v31 -= 8;
        v32 += 8;
        v28 -= 4;
        v38 = v27-- <= 1;
      }

      while (!v38);
    }

    v39 = *(v122 - 1);
    if (v39 == 1)
    {
      v119 = 0uLL;
      v120 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v119, v124, v125, (v125 - v124) >> 2);
      v40 = v104;
      memset(v118, 0, sizeof(v118));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v118, v121, v122, (v122 - v121) >> 3);
      *v104 = 1;
      *(v104 + 8) = v119;
      v41 = v120;
      v119 = 0uLL;
      v120 = 0;
      v42 = v118[0];
      *(v104 + 24) = v41;
      *(v104 + 32) = v42;
      v43 = v118;
    }

    else
    {
      v40 = v104;
      if (v39 < 2)
      {
        v46 = 1;
        goto LABEL_41;
      }

      v116 = 0uLL;
      v117 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v116, v124, v125, (v125 - v124) >> 2);
      memset(v115, 0, sizeof(v115));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v115, v121, v122, (v122 - v121) >> 3);
      *v104 = 2;
      *(v104 + 8) = v116;
      v44 = v117;
      v116 = 0uLL;
      v117 = 0;
      v45 = v115[0];
      *(v104 + 24) = v44;
      *(v104 + 32) = v45;
      v43 = v115;
    }

    v46 = 0;
    *(v40 + 40) = *(v43 + 1);
    v43[1] = 0;
    v43[2] = 0;
    *v43 = 0;
LABEL_41:
    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v124)
    {
      v125 = v124;
      operator delete(v124);
    }

    if (!v46)
    {
      goto LABEL_123;
    }

    v7 = *a2;
  }

  v124 = 0;
  v125 = 0;
  v126 = 0;
  v47 = a2[1];
  if (v7 == v47)
  {
    v61 = 0;
    v60 = 0;
  }

  else
  {
    do
    {
      v48 = *v7;
      if (mlx::core::array::shape(this, *v7) >= 2)
      {
        v49 = mlx::core::array::shape(this, v48);
        v50 = *((*this)[3] + 8 * v48);
        v51 = v125;
        if (v125 >= v126)
        {
          v53 = (v125 - v124) >> 4;
          v54 = v53 + 1;
          if ((v53 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v55 = v126 - v124;
          if ((v126 - v124) >> 3 > v54)
          {
            v54 = v55 >> 3;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFF0)
          {
            v56 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v56 = v54;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,long long>>>(&v124, v56);
          }

          v57 = (16 * v53);
          *v57 = v49;
          v57[1] = v50;
          v52 = (16 * v53 + 16);
          v58 = (16 * v53 - (v125 - v124));
          memcpy(v58, v124, v125 - v124);
          v59 = v124;
          v124 = v58;
          v125 = v52;
          v126 = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          *v125 = v49;
          *(v51 + 1) = v50;
          v52 = v51 + 16;
        }

        v125 = v52;
      }

      ++v7;
    }

    while (v7 != v47);
    v60 = v124;
    v61 = v125;
  }

  v62 = 126 - 2 * __clz((v61 - v60) >> 4);
  if (v61 == v60)
  {
    v63 = 0;
  }

  else
  {
    v63 = v62;
  }

  std::__introsort<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,false>(v60, v61, v63, 1);
  v64 = v124;
  v65 = v125;
  v66 = ((v125 - v124) >> 4) - 1;
  if (v66 >= 1)
  {
    v67 = (v125 - v124) >> 4;
    do
    {
      v68 = &v64[4 * v66];
      v69 = *v68;
      v70 = *(v68 + 1);
      v71 = &v64[4 * (v67 - 2)];
      if (*(v71 + 1) == v70 * v69)
      {
        v72 = *v71;
        v73 = v68 + 4;
        if (v68 + 4 == v65)
        {
          v65 = &v64[4 * v66];
        }

        else
        {
          do
          {
            *(v73 - 4) = *v73;
            *(v73 - 1) = *(v73 + 1);
            v73 += 4;
          }

          while (v73 != v65);
          v65 = v73 - 4;
        }

        v125 = v65;
        *v71 = v72 * v69;
        *(v71 + 1) = v70;
      }

      --v67;
      v38 = v66-- <= 1;
    }

    while (!v38);
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  v127 = 0;
  v128[0] = 0;
  v128[1] = 0;
  do
  {
    v114 = *v64;
    v74 = v122;
    if (v122 >= v123)
    {
      v76 = v121;
      v77 = v122 - v121;
      v78 = (v122 - v121) >> 2;
      v79 = v78 + 1;
      if ((v78 + 1) >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v80 = v123 - v121;
      if ((v123 - v121) >> 1 > v79)
      {
        v79 = v80 >> 1;
      }

      if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v81 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v81 = v79;
      }

      if (v81)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v121, v81);
      }

      v82 = (4 * v78);
      v83 = &v82[-((v122 - v121) >> 2)];
      *v82 = v114;
      v75 = (v82 + 1);
      memcpy(v83, v76, v77);
      v84 = v121;
      v121 = v83;
      v122 = v75;
      v123 = 0;
      if (v84)
      {
        operator delete(v84);
      }
    }

    else
    {
      *v122 = v114;
      v75 = v74 + 4;
    }

    v122 = v75;
    std::vector<unsigned long long>::push_back[abi:ne200100](&v127, &v114 + 1);
    v64 += 4;
  }

  while (v64 != v65);
  v85 = *(v128[0] - 8);
  if (v85 == 1)
  {
    v112 = 0uLL;
    v113 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v112, v121, v122, (v122 - v121) >> 2);
    v86 = v104;
    memset(v111, 0, sizeof(v111));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v111, v127, v128[0], (v128[0] - v127) >> 3);
    *v104 = 3;
    *(v104 + 8) = v112;
    v87 = v113;
    v112 = 0uLL;
    v113 = 0;
    v88 = v111[0];
    *(v104 + 24) = v87;
    *(v104 + 32) = v88;
    v89 = v111;
    goto LABEL_117;
  }

  v86 = v104;
  if (v85 <= 1)
  {
    v97 = v121;
    goto LABEL_115;
  }

  v90 = ((*this)[1] - **this) >> 2;
  v91 = (v90 - 1);
  if (v90 - 1 < 0)
  {
    v96 = 0;
    v92 = 1;
    goto LABEL_111;
  }

  v92 = 1;
  while (1)
  {
    if (v91 == *(a2[1] - 1))
    {
      goto LABEL_106;
    }

    v93 = *((*this)[3] + 8 * v91);
    v94 = mlx::core::array::shape(this, v91);
    if (!v93)
    {
      break;
    }

    if (v93 != v92 && v94 != 1)
    {
LABEL_108:
      v96 = 0;
      goto LABEL_111;
    }

    v92 *= v94;
LABEL_106:
    v38 = v91-- <= 0;
    if (v38)
    {
      goto LABEL_108;
    }
  }

  if (v94 == 1)
  {
    goto LABEL_106;
  }

  v96 = 1;
LABEL_111:
  v98 = *(v128[0] - 8);
  v97 = v121;
  if (v92 != v98)
  {
    v96 = 1;
  }

  if (v92 <= v98 && (v96 & 1) != 0)
  {
LABEL_115:
    v106 = 0uLL;
    v107 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v106, v97, v122, (v122 - v97) >> 2);
    memset(v105, 0, sizeof(v105));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v105, v127, v128[0], (v128[0] - v127) >> 3);
    *v104 = 5;
    *(v104 + 8) = v106;
    v99 = v107;
    v106 = 0uLL;
    v107 = 0;
    v100 = v105[0];
    *(v104 + 24) = v99;
    *(v104 + 32) = v100;
    v89 = v105;
  }

  else
  {
    v109 = 0uLL;
    v110 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v109, v121, v122, (v122 - v121) >> 2);
    memset(v108, 0, sizeof(v108));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v108, v127, v128[0], (v128[0] - v127) >> 3);
    *v104 = 4;
    *(v104 + 8) = v109;
    v101 = v110;
    v109 = 0uLL;
    v110 = 0;
    v102 = v108[0];
    *(v104 + 24) = v101;
    *(v104 + 32) = v102;
    v89 = v108;
  }

LABEL_117:
  *(v86 + 40) = *(v89 + 1);
  v89[1] = 0;
  v89[2] = 0;
  *v89 = 0;
  if (v127)
  {
    v128[0] = v127;
    operator delete(v127);
  }

  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

LABEL_123:
  v103 = *MEMORY[0x277D85DE8];
}

void sub_25A36EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 128);
  if (v38)
  {
    *(v36 - 120) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 176);
  if (v39)
  {
    *(v36 - 168) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 152);
  if (v40)
  {
    *(v36 - 144) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::vector<int>,std::vector<long long>>::pair[abi:ne200100]<std::vector<int>&,std::vector<long long>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

void sub_25A36EC6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A36ECE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,long long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,false>(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  i = v7;
  while (1)
  {
LABEL_3:
    v7 = i;
    v9 = (a2 - i) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(i, (i + 16), a2 - 4);
        case 4:
          result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(i, (i + 16), (i + 32));
          v50 = *(a2 - 1);
          v51 = *(i + 40);
          if ((v50 == 0) != (v51 != 0))
          {
            if (v50 < v51)
            {
              return result;
            }
          }

          else if (v50 >= v51)
          {
            return result;
          }

          v101 = *(i + 32);
          *(i + 32) = *(a2 - 4);
          *(a2 - 4) = v101;
          *(i + 40) = v50;
          *(a2 - 1) = v51;
          v102 = *(i + 40);
          v103 = *(i + 24);
          if ((v102 == 0) != (v103 != 0))
          {
            if (v102 <= v103)
            {
              return result;
            }
          }

          else if (v102 > v103)
          {
            return result;
          }

          v109 = *(i + 16);
          v110 = *(i + 32);
          *(i + 16) = v110;
          *(i + 32) = v109;
          *(i + 24) = v102;
          *(i + 40) = v103;
          v111 = *(i + 8);
          if ((v102 == 0) != (v111 != 0))
          {
            if (v102 <= v111)
            {
              return result;
            }
          }

          else if (v102 > v111)
          {
            return result;
          }

          v112 = *i;
          *i = v110;
          *(i + 16) = v112;
          *(i + 8) = v102;
          *(i + 24) = v111;
          return result;
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(i, i + 16, i + 32, (i + 48), a2 - 4);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v48 = *(a2 - 1);
        v49 = *(i + 8);
        if ((v48 == 0) != (v49 != 0))
        {
          if (v48 < v49)
          {
            return result;
          }
        }

        else if (v48 >= v49)
        {
          return result;
        }

        v100 = *i;
        *i = *(a2 - 4);
        *(a2 - 4) = v100;
        *(i + 8) = v48;
        *(a2 - 1) = v49;
        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v65 = (v9 - 2) >> 1;
      v66 = v65;
      while (2)
      {
        v67 = v66;
        if (v65 < v66)
        {
          goto LABEL_168;
        }

        v68 = (2 * v66) | 1;
        v69 = i + 16 * v68;
        if (2 * v67 + 2 >= v9)
        {
          goto LABEL_150;
        }

        v70 = *(v69 + 8);
        v71 = *(v69 + 24);
        if ((v70 == 0) != (v71 != 0))
        {
          if (v70 <= v71)
          {
LABEL_150:
            v72 = (i + 16 * v67);
            v73 = *(v69 + 8);
            v74 = *v72;
            v75 = v72[1];
            result = v75 != 0;
            if ((v73 == 0) != (v75 != 0))
            {
              if (v73 > v75)
              {
                goto LABEL_168;
              }
            }

            else if (v73 <= v75)
            {
              goto LABEL_168;
            }

            *v72 = *v69;
            v72[1] = v73;
            if (v65 < v68)
            {
LABEL_155:
              v76 = v69;
LABEL_167:
              *v76 = v74;
              *(v76 + 8) = v75;
LABEL_168:
              v66 = v67 - 1;
              if (v67)
              {
                continue;
              }

              while (2)
              {
                v82 = 0;
                v83 = *i;
                v84 = *(i + 8);
                v85 = i;
LABEL_170:
                v86 = v85;
                v87 = v85 + 16 * v82;
                v85 = v87 + 16;
                v88 = 2 * v82;
                v82 = (2 * v82) | 1;
                v89 = v88 + 2;
                if (v89 < v9)
                {
                  v90 = *(v87 + 24);
                  result = *(v87 + 40);
                  if ((v90 == 0) != (result != 0))
                  {
                    if (v90 <= result)
                    {
                      goto LABEL_176;
                    }
                  }

                  else if (v90 > result)
                  {
                    goto LABEL_176;
                  }

                  v85 = v87 + 32;
                  v82 = v89;
                }

LABEL_176:
                *v86 = *v85;
                *(v86 + 8) = *(v85 + 8);
                if (v82 > ((v9 - 2) >> 1))
                {
                  if (v85 == a2 - 4)
                  {
                    *v85 = v83;
                    goto LABEL_192;
                  }

                  *v85 = *(a2 - 4);
                  *(v85 + 8) = *(a2 - 1);
                  *(a2 - 4) = v83;
                  *(a2 - 1) = v84;
                  v91 = (v85 - i + 16) >> 4;
                  v92 = v91 - 2;
                  if (v91 < 2)
                  {
                    goto LABEL_193;
                  }

                  v93 = v92 >> 1;
                  v94 = i + 16 * (v92 >> 1);
                  v95 = *(v94 + 8);
                  v96 = *v85;
                  v84 = *(v85 + 8);
                  result = v84 != 0;
                  if ((v95 == 0) == (v84 != 0))
                  {
                    if (v95 > v84)
                    {
                      goto LABEL_193;
                    }

LABEL_184:
                    *v85 = *v94;
                    *(v85 + 8) = v95;
                    if (v92 >= 2)
                    {
                      do
                      {
                        v97 = v93 - 1;
                        v93 = (v93 - 1) >> 1;
                        v85 = i + 16 * v93;
                        v98 = *(v85 + 8);
                        result = v98 == 0;
                        if ((v84 != 0) != (v98 == 0))
                        {
                          if (v98 <= v84)
                          {
                            goto LABEL_185;
                          }
                        }

                        else if (v98 > v84)
                        {
                          goto LABEL_185;
                        }

                        *v94 = *v85;
                        *(v94 + 8) = v98;
                        v94 = i + 16 * v93;
                      }

                      while (v97 > 1);
                    }

                    else
                    {
LABEL_185:
                      v85 = v94;
                    }

                    *v85 = v96;
LABEL_192:
                    *(v85 + 8) = v84;
                    goto LABEL_193;
                  }

                  if (v95 > v84)
                  {
                    goto LABEL_184;
                  }

LABEL_193:
                  a2 -= 4;
                  if (v9-- <= 2)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_170;
              }
            }

            while (2)
            {
              v77 = 2 * v68;
              v68 = (2 * v68) | 1;
              v76 = i + 16 * v68;
              v78 = v77 + 2;
              if (v78 < v9)
              {
                v79 = *(v76 + 8);
                v80 = *(v76 + 24);
                if ((v79 == 0) != (v80 != 0))
                {
                  if (v79 <= v80)
                  {
                    goto LABEL_162;
                  }
                }

                else if (v79 > v80)
                {
                  goto LABEL_162;
                }

                v76 += 16;
                v68 = v78;
              }

LABEL_162:
              v81 = *(v76 + 8);
              result = v81 == 0;
              if ((v75 != 0) != (v81 == 0))
              {
                if (v81 > v75)
                {
                  goto LABEL_155;
                }
              }

              else if (v81 <= v75)
              {
                goto LABEL_155;
              }

              *v69 = *v76;
              *(v69 + 8) = v81;
              v69 = v76;
              if (v65 < v68)
              {
                goto LABEL_167;
              }

              continue;
            }
          }
        }

        else if (v70 > v71)
        {
          goto LABEL_150;
        }

        break;
      }

      v69 += 16;
      v68 = 2 * v67 + 2;
      goto LABEL_150;
    }

    v10 = v9 >> 1;
    v11 = i + 16 * (v9 >> 1);
    if (v9 < 0x81)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>((v7 + 16 * (v9 >> 1)), v7, a2 - 4);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(v7, (v7 + 16 * (v9 >> 1)), a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>((v7 + 16), (v11 - 16), a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>((v7 + 32), (v7 + 16 + 16 * v10), a2 - 12);
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>((v11 - 16), v11, (v7 + 16 + 16 * v10));
      v12 = *v7;
      *v7 = *v11;
      *v11 = v12;
      v13 = *(v7 + 8);
      *(v7 + 8) = *(v11 + 8);
      *(v11 + 8) = v13;
    }

    --a3;
    v14 = *v7;
    if (a4)
    {
      v15 = *(v7 + 8);
    }

    else
    {
      v16 = *(v7 - 8);
      v15 = *(v7 + 8);
      if ((v16 == 0) != (v15 != 0))
      {
        if (v16 <= v15)
        {
          goto LABEL_19;
        }
      }

      else if (v16 > v15)
      {
LABEL_19:
        v17 = *(a2 - 1);
        if ((v15 == 0) != (v17 != 0))
        {
          if (v15 <= v17)
          {
LABEL_21:
            for (i = v7 + 16; i < a2; i += 16)
            {
              v18 = *(i + 8);
              if ((v15 == 0) != (v18 != 0))
              {
                if (v15 > v18)
                {
                  break;
                }
              }

              else if (v15 <= v18)
              {
                break;
              }
            }

LABEL_80:
            v39 = a2;
            if (i >= a2)
            {
              goto LABEL_98;
            }

            for (j = a2 - 6; ; j -= 4)
            {
              if ((v15 == 0) != (v17 != 0))
              {
                if (v15 <= v17)
                {
                  goto LABEL_87;
                }
              }

              else if (v15 > v17)
              {
LABEL_87:
                v39 = j + 2;
LABEL_98:
                while (i < v39)
                {
                  v42 = *i;
                  *i = *v39;
                  *v39 = v42;
                  v43 = *(i + 8);
                  *(i + 8) = *(v39 + 1);
                  *(v39 + 1) = v43;
                  v44 = i + 16;
                  do
                  {
                    while (1)
                    {
                      i = v44;
                      v45 = *(v44 + 8);
                      v44 += 16;
                      if ((v15 == 0) == (v45 != 0))
                      {
                        break;
                      }

                      if (v15 > v45)
                      {
                        goto LABEL_93;
                      }
                    }
                  }

                  while (v15 > v45);
LABEL_93:
                  v46 = v39 - 4;
                  do
                  {
                    while (1)
                    {
                      v39 = v46;
                      v47 = *(v46 + 1);
                      v46 -= 4;
                      if ((v15 == 0) == (v47 != 0))
                      {
                        break;
                      }

                      if (v15 <= v47)
                      {
                        goto LABEL_98;
                      }
                    }
                  }

                  while (v15 <= v47);
                }

                if (i - 16 != v7)
                {
                  *v7 = *(i - 16);
                  *(v7 + 8) = *(i - 8);
                }

                a4 = 0;
                *(i - 16) = v14;
                *(i - 8) = v15;
                goto LABEL_3;
              }

              v41 = *j;
              v17 = v41;
            }
          }
        }

        else if (v15 > v17)
        {
          goto LABEL_21;
        }

        v37 = v7 + 16;
        do
        {
          while (1)
          {
            i = v37;
            v38 = *(v37 + 8);
            v37 += 16;
            if ((v15 == 0) == (v38 != 0))
            {
              break;
            }

            if (v15 > v38)
            {
              goto LABEL_80;
            }
          }
        }

        while (v15 > v38);
        goto LABEL_80;
      }
    }

    for (k = 0; ; k += 16)
    {
      v20 = *(v7 + k + 24);
      if ((v15 != 0) == (v20 == 0))
      {
        break;
      }

      if (v20 <= v15)
      {
        goto LABEL_35;
      }

LABEL_34:
      ;
    }

    if (v20 <= v15)
    {
      goto LABEL_34;
    }

LABEL_35:
    v21 = v7 + k + 16;
    v22 = a2 - 4;
    if (k)
    {
      do
      {
        while (1)
        {
          v23 = v22;
          v24 = *(v22 + 1);
          v22 -= 4;
          if ((v15 != 0) == (v24 == 0))
          {
            break;
          }

          if (v24 > v15)
          {
            goto LABEL_55;
          }
        }
      }

      while (v24 > v15);
    }

    else
    {
      v23 = a2;
      if (v21 < a2)
      {
        v25 = a2 - 4;
        do
        {
          while (1)
          {
            v23 = v25;
            v26 = *(v25 + 1);
            v25 -= 4;
            if ((v15 != 0) == (v26 == 0))
            {
              break;
            }

            if (v26 > v15 || v21 >= v23)
            {
              goto LABEL_55;
            }
          }
        }

        while (v26 > v15 && v21 < v23);
      }
    }

LABEL_55:
    i = v21;
    if (v21 < v23)
    {
      v29 = v23;
      do
      {
        v30 = *i;
        *i = *v29;
        *v29 = v30;
        v31 = *(i + 8);
        *(i + 8) = *(v29 + 8);
        *(v29 + 8) = v31;
        v32 = i + 16;
        do
        {
          while (1)
          {
            i = v32;
            v33 = *(v32 + 8);
            v32 += 16;
            if ((v15 != 0) == (v33 == 0))
            {
              break;
            }

            if (v33 <= v15)
            {
              goto LABEL_62;
            }
          }
        }

        while (v33 <= v15);
LABEL_62:
        v34 = v29 - 16;
        do
        {
          while (1)
          {
            v29 = v34;
            v35 = *(v34 + 8);
            v34 -= 16;
            if ((v15 != 0) == (v35 == 0))
            {
              break;
            }

            if (v35 > v15)
            {
              goto LABEL_67;
            }
          }
        }

        while (v35 > v15);
LABEL_67:
        ;
      }

      while (i < v29);
    }

    if (i - 16 != v7)
    {
      *v7 = *(i - 16);
      *(v7 + 8) = *(i - 8);
    }

    *(i - 16) = v14;
    *(i - 8) = v15;
    if (v21 < v23)
    {
LABEL_73:
      result = std::__introsort<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,false>(v7, i - 16, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v36 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *>(v7, (i - 16));
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *>(i, a2);
      if (result)
      {
        a2 = (i - 16);
        if (v36)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v36)
      {
        goto LABEL_73;
      }
    }
  }

  v52 = (i + 16);
  v54 = i == a2 || v52 == a2;
  if (a4)
  {
    if (v54)
    {
      return result;
    }

    v55 = 0;
    v56 = i;
    while (2)
    {
      v57 = v56;
      v56 = v52;
      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      v60 = *(v57 + 8);
      if ((v58 == 0) != (v60 != 0))
      {
        if (v58 <= v60)
        {
          goto LABEL_139;
        }
      }

      else if (v58 > v60)
      {
        goto LABEL_139;
      }

      *(v57 + 16) = *v57;
      *(v56 + 8) = v60;
      v61 = i;
      if (v57 != i)
      {
        v62 = v55;
        do
        {
          v63 = *(i + v62 - 8);
          if ((v58 == 0) != (v63 != 0))
          {
            if (v58 <= v63)
            {
              v61 = v57;
              goto LABEL_138;
            }
          }

          else if (v58 > v63)
          {
            v61 = i + v62;
            goto LABEL_138;
          }

          v57 -= 16;
          v64 = i + v62;
          *v64 = *(i + v62 - 16);
          *(v64 + 8) = v63;
          v62 -= 16;
        }

        while (v62);
        v61 = i;
      }

LABEL_138:
      *v61 = v59;
      *(v61 + 8) = v58;
LABEL_139:
      v52 = (v56 + 16);
      v55 += 16;
      if ((v56 + 16) == a2)
      {
        return result;
      }

      continue;
    }
  }

  if (!v54)
  {
    do
    {
      v104 = v7;
      v7 = v52;
      v106 = *(v104 + 16);
      v105 = *(v104 + 24);
      v107 = *(v104 + 8);
      if ((v105 == 0) != (v107 != 0))
      {
        if (v105 > v107)
        {
          goto LABEL_207;
        }
      }

      else if (v105 <= v107)
      {
        do
        {
LABEL_207:
          while (1)
          {
            v108 = v104;
            *(v104 + 16) = *v104;
            *(v104 + 24) = v107;
            v104 -= 16;
            v107 = *(v108 - 8);
            if ((v105 == 0) == (v107 != 0))
            {
              break;
            }

            if (v105 <= v107)
            {
              goto LABEL_211;
            }
          }
        }

        while (v105 <= v107);
LABEL_211:
        *v108 = v106;
        *(v108 + 8) = v105;
      }

      v52 = (v7 + 16);
    }

    while ((v7 + 16) != a2);
  }

  return result;
}

int *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(int *result, int *a2, int *a3)
{
  v3 = *(a2 + 1);
  v4 = *(result + 1);
  if ((v3 == 0) == (v4 != 0))
  {
    if (v3 > v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = *(a3 + 1);
    if ((v3 != 0) != (v6 == 0))
    {
      if (v6 < v3)
      {
LABEL_9:
        v7 = *result;
        *result = *a2;
        *a2 = v7;
        *(result + 1) = v3;
        *(a2 + 1) = v4;
        v8 = *(a3 + 1);
        if ((v4 != 0) != (v8 == 0))
        {
          if (v8 <= v4)
          {
            return result;
          }
        }

        else if (v8 > v4)
        {
          return result;
        }

        *a2 = *a3;
        *a3 = v7;
        *(a2 + 1) = v8;
LABEL_20:
        *(a3 + 1) = v4;
        return result;
      }
    }

    else if (v6 >= v3)
    {
      goto LABEL_9;
    }

    v12 = *result;
    *result = *a3;
    *a3 = v12;
    *(result + 1) = v6;
    goto LABEL_20;
  }

  if (v3 > v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *(a3 + 1);
  if ((v3 != 0) != (v5 == 0))
  {
    if (v5 < v3)
    {
      return result;
    }
  }

  else if (v5 >= v3)
  {
    return result;
  }

  v9 = *a2;
  *a2 = *a3;
  *a3 = v9;
  *(a2 + 1) = v5;
  *(a3 + 1) = v3;
  v10 = *(a2 + 1);
  v11 = *(result + 1);
  if ((v10 == 0) == (v11 != 0))
  {
    if (v10 > v11)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v10 > v11)
  {
LABEL_22:
    v13 = *result;
    *result = *a2;
    *a2 = v13;
    *(result + 1) = v10;
    *(a2 + 1) = v11;
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(a1, a2, a3);
  v11 = *(a4 + 1);
  v12 = *(a3 + 8);
  if ((v11 == 0) != (v12 != 0))
  {
    if (v11 <= v12)
    {
      goto LABEL_14;
    }
  }

  else if (v11 > v12)
  {
    goto LABEL_14;
  }

  v13 = *a3;
  *a3 = *a4;
  *a4 = v13;
  *(a3 + 8) = v11;
  *(a4 + 1) = v12;
  v14 = *(a3 + 8);
  v15 = *(a2 + 8);
  if ((v14 == 0) != (v15 != 0))
  {
    if (v14 <= v15)
    {
      goto LABEL_14;
    }
  }

  else if (v14 > v15)
  {
    goto LABEL_14;
  }

  v16 = *a2;
  *a2 = *a3;
  *a3 = v16;
  *(a2 + 8) = v14;
  *(a3 + 8) = v15;
  v17 = *(a2 + 8);
  v18 = *(a1 + 8);
  if ((v17 == 0) == (v18 != 0))
  {
    if (v17 > v18)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v17 > v18)
  {
LABEL_13:
    v19 = *a1;
    *a1 = *a2;
    *a2 = v19;
    *(a1 + 8) = v17;
    *(a2 + 8) = v18;
  }

LABEL_14:
  v20 = *(a5 + 1);
  v21 = *(a4 + 1);
  if ((v20 == 0) != (v21 != 0))
  {
    if (v20 <= v21)
    {
      return result;
    }
  }

  else if (v20 > v21)
  {
    return result;
  }

  v22 = *a4;
  *a4 = *a5;
  *a5 = v22;
  *(a4 + 1) = v20;
  *(a5 + 1) = v21;
  v23 = *(a4 + 1);
  v24 = *(a3 + 8);
  if ((v23 == 0) != (v24 != 0))
  {
    if (v23 <= v24)
    {
      return result;
    }
  }

  else if (v23 > v24)
  {
    return result;
  }

  v25 = *a3;
  *a3 = *a4;
  *a4 = v25;
  *(a3 + 8) = v23;
  *(a4 + 1) = v24;
  v26 = *(a3 + 8);
  v27 = *(a2 + 8);
  if ((v26 == 0) != (v27 != 0))
  {
    if (v26 <= v27)
    {
      return result;
    }
  }

  else if (v26 > v27)
  {
    return result;
  }

  v28 = *a2;
  *a2 = *a3;
  *a3 = v28;
  *(a2 + 8) = v26;
  *(a3 + 8) = v27;
  v29 = *(a2 + 8);
  v30 = *(a1 + 8);
  if ((v29 == 0) == (v30 != 0))
  {
    if (v29 > v30)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (v29 > v30)
  {
LABEL_30:
    v31 = *a1;
    *a1 = *a2;
    *a2 = v31;
    *(a1 + 8) = v29;
    *(a2 + 8) = v30;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *>(uint64_t a1, int *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(a1, (a1 + 16), a2 - 4);
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(a1, a1 + 16, a1 + 32, (a1 + 48), a2 - 4);
        return 1;
      }

      goto LABEL_12;
    }

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(a1, (a1 + 16), (a1 + 32));
    v17 = *(a2 - 1);
    v18 = *(a1 + 40);
    if ((v17 == 0) != (v18 != 0))
    {
      if (v17 <= v18)
      {
        return 1;
      }
    }

    else if (v17 >= v18)
    {
      return 1;
    }

    v20 = *(a1 + 32);
    *(a1 + 32) = *(a2 - 4);
    *(a2 - 4) = v20;
    *(a1 + 40) = v17;
    *(a2 - 1) = v18;
    v21 = *(a1 + 40);
    v22 = *(a1 + 24);
    if ((v21 == 0) != (v22 != 0))
    {
      if (v21 <= v22)
      {
        return 1;
      }
    }

    else if (v21 >= v22)
    {
      return 1;
    }

    v23 = *(a1 + 16);
    v24 = *(a1 + 32);
    *(a1 + 16) = v24;
    *(a1 + 32) = v23;
    *(a1 + 24) = v21;
    *(a1 + 40) = v22;
    v25 = *(a1 + 8);
    if ((v21 == 0) != (v25 != 0))
    {
      if (v21 <= v25)
      {
        return 1;
      }
    }

    else if (v21 >= v25)
    {
      return 1;
    }

    v27 = *a1;
    *a1 = v24;
    *(a1 + 16) = v27;
    *(a1 + 8) = v21;
    *(a1 + 24) = v25;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *(a1 + 8);
    if ((v5 == 0) != (v6 != 0))
    {
      if (v5 <= v6)
      {
        return 1;
      }
    }

    else if (v5 >= v6)
    {
      return 1;
    }

    v19 = *a1;
    *a1 = *(a2 - 4);
    *(a2 - 4) = v19;
    *(a1 + 8) = v5;
    *(a2 - 1) = v6;
    return 1;
  }

LABEL_12:
  v7 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::get_reduction_plan(mlx::core::array const&,std::vector<int> const&)::$_0 &,std::pair<int,long long> *,0>(a1, (a1 + 16), (a1 + 32));
  v8 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = *v8;
    v12 = *(v8 + 1);
    v13 = *(v7 + 1);
    if ((v12 == 0) != (v13 != 0))
    {
      if (v12 <= v13)
      {
        goto LABEL_27;
      }
    }

    else if (v12 >= v13)
    {
      goto LABEL_27;
    }

    *v8 = *v7;
    *(v8 + 1) = v13;
    v14 = v9;
    while (1)
    {
      v15 = *(a1 + v14 + 24);
      if ((v12 == 0) == (v15 != 0))
      {
        break;
      }

      if (v12 <= v15)
      {
        goto LABEL_25;
      }

LABEL_23:
      *(a1 + v14 + 32) = *(a1 + v14 + 16);
      *(a1 + v14 + 40) = v15;
      v14 -= 16;
      if (v14 == -32)
      {
        v16 = a1;
        goto LABEL_26;
      }
    }

    if (v12 < v15)
    {
      goto LABEL_23;
    }

LABEL_25:
    v16 = a1 + v14 + 32;
LABEL_26:
    *v16 = v11;
    *(v16 + 8) = v12;
    if (++v10 != 8)
    {
LABEL_27:
      v7 = v8;
      v9 += 16;
      v8 += 4;
      if (v8 == a2)
      {
        return 1;
      }

      continue;
    }

    return v8 + 4 == a2;
  }
}

char **mlx::core::AsStrided::eval(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (a2[1] - v3 != 16)
  {
    mlx::core::AsStrided::eval();
  }

  v5 = *(*v3 + 168);
  if ((v5 & 2) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "AsStrided must be used with row contiguous arrays only.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56) - v6;
  v8 = (v7 >> 3) - 1;
  if (((v7 >> 3) - 1) < 0)
  {
    v22 = v5 & 0xF8;
    v21 = 1;
    v23 = 2;
LABEL_21:
    v20 = 4;
    goto LABEL_22;
  }

  v9 = 0;
  v10 = (v7 >> 3);
  v11 = *(a1 + 24);
  v12 = 1;
  v13 = 1;
  v14 = 1;
  v15 = 1;
  do
  {
    v16 = v14 == *(v6 + 8 * v8) || *(v11 + 4 * v8) == 1;
    v12 &= v16;
    v17 = *(v11 + 4 * v9);
    v19 = v15 == *(v6 + 8 * v9) || v17 == 1;
    v13 &= v19;
    v14 *= *(v11 + 4 * v8);
    v15 *= v17;
    ++v9;
    --v8;
  }

  while (v10 != v9);
  v20 = 0;
  v21 = (v12 | v13) & 1;
  v22 = v5 & 0xF8;
  if (v12)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  if (v13)
  {
    goto LABEL_21;
  }

LABEL_22:
  v24 = *(*a3 + 48);
  v25 = *(a1 + 72);

  return mlx::core::array::copy_shared_buffer(a3, v3, (a1 + 48), (v20 | v22 | v23) | v21, v24, v25);
}

char **mlx::core::Copy::eval(int a1, uint64_t a2, mlx::core::array *this)
{
  v4 = *a2;
  if (*(a2 + 8) - v4 != 16)
  {
    mlx::core::Copy::eval();
  }

  return mlx::core::array::copy_shared_buffer(this, v4);
}

char **mlx::core::CustomTransforms::eval(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = (a2[1] - *a2) >> 4;
  v4 = *a3;
  v5 = a3[1];
  v6 = v5 - *a3;
  if (v3 <= v6 >> 4)
  {
    mlx::core::CustomTransforms::eval();
  }

  if (v5 != v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = 16 * (v3 - (v6 >> 4));
    do
    {
      result = mlx::core::array::copy_shared_buffer((v4 + v9), (*a2 + v11 + v9));
      ++v10;
      v4 = *a3;
      v9 += 16;
    }

    while (v10 < (a3[1] - *a3) >> 4);
  }

  return result;
}

char **mlx::core::Depends::eval(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (a2[1] - *a2 <= (v4 - *a3))
  {
    mlx::core::Depends::eval();
  }

  if (v4 != v3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = mlx::core::array::copy_shared_buffer((v3 + v7), (*a2 + v7));
      ++v8;
      v3 = *a3;
      v7 += 16;
    }

    while (v8 < (a3[1] - *a3) >> 4);
  }

  return result;
}

void mlx::core::ExpandDims::eval(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (a2[1] - *a2 != 16)
  {
    mlx::core::ExpandDims::eval();
  }

  v6 = *v3;
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 3);
  v8 = *(a1 + 24);
  for (i = *(a1 + 32); v8 != i; ++v8)
  {
    v9 = __p + 8 * *v8;
    v10 = 1;
    std::vector<long long>::insert(&__p, v9, &v10);
  }

  mlx::core::array::copy_shared_buffer(a3, v3, &__p, *(*v3 + 168), *(*v3 + 160), 0);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_25A3702A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<long long>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<long long>::emplace_back<long long>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_25A37044C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::NumberOfElements::eval(uint64_t a1, void *a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v5[0] = &unk_286BE3468;
    v5[1] = mlx::core::allocator::free;
    v5[3] = v5;
    mlx::core::array::set_data(a3, v4);
  }

  mlx::core::NumberOfElements::eval();
}

void sub_25A3706A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::prepare_reshape(uint64_t **this@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *this;
  if (!(*this)[6] || (v6[21] & 2) != 0)
  {
    v24 = *a2;
    *a3 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v25 = v24[3];
    v26 = v24[4];

    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a3 + 8, v25, v26, (v26 - v25) >> 3);
    return;
  }

  if ((*this)[1] == *v6)
  {
    v27 = ((*a2)[1] - **a2) >> 2;
    __src = 0;
    std::vector<long long>::vector[abi:ne200100](v33, v27);
    *a3 = 0;
    *(a3 + 8) = *v33;
    *(a3 + 24) = v34;
    return;
  }

  mlx::core::collapse_contiguous_dims(this, 0x7FFFFFFF, v33);
  v31 = 0;
  v32 = 0;
  __src = 0;
  if ((*a2)[1] == **a2)
  {
    v12 = 0;
    v28 = 0;
    v23 = 0;
    goto LABEL_34;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = mlx::core::array::shape(a2, v7);
    if (v8 < ((v33[1] - v33[0]) >> 2))
    {
      v10 = *(v33[0] + v8);
      v11 = v10 / v9;
      if (!(v10 % v9))
      {
        *(v33[0] + v8) = v11;
        v29 = *(__p + v8) * v11;
        std::vector<unsigned long long>::push_back[abi:ne200100](&__src, &v29);
        if (*(v33[0] + v8) == 1)
        {
          ++v8;
        }

        goto LABEL_25;
      }
    }

    v12 = v31;
    if (v9 != 1)
    {
      break;
    }

    if (v31 >= v32)
    {
      v14 = __src;
      v15 = v31 - __src;
      v16 = (v31 - __src) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v18 = v32 - __src;
      if ((v32 - __src) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(&__src, v19);
      }

      v20 = (8 * v16);
      v21 = &v20[-((v31 - __src) >> 3)];
      *v20 = *(v31 - 1);
      v13 = (v20 + 1);
      memcpy(v21, v14, v15);
      v22 = __src;
      __src = v21;
      v31 = v13;
      v32 = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v31 = *(v31 - 1);
      v13 = (v12 + 8);
    }

    v31 = v13;
LABEL_25:
    if (++v7 >= (((*a2)[1] - **a2) >> 2))
    {
      v23 = 0;
      v12 = v31;
      goto LABEL_33;
    }
  }

  v23 = 1;
LABEL_33:
  v28 = __src;
LABEL_34:
  *a3 = v23;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a3 + 8, v28, v12, (v12 - v28) >> 3);
  if (__src)
  {
    v31 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }
}

void sub_25A3709D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a13);
  _Unwind_Resume(a1);
}

char **mlx::core::shared_buffer_reshape(uint64_t a1, char **a2, uint64_t *a3)
{
  v3 = *(*a1 + 168);
  if ((v3 & 2) != 0)
  {
    v4 = **a3;
    v5 = *(*a3 + 8);
    v6 = v4 + 1;
    if (v4 != v5 && v6 != v5)
    {
      v8 = *v4;
      v9 = v4 + 1;
      do
      {
        v11 = *v9++;
        v10 = v11;
        v12 = v8 < v11;
        if (v8 <= v11)
        {
          v8 = v10;
        }

        if (v12)
        {
          v4 = v6;
        }

        v6 = v9;
      }

      while (v9 != v5);
    }

    v13 = *(*a3 + 48);
    if (v13 >= 2)
    {
      v14 = 4 * (v13 == *v4);
    }

    else
    {
      v14 = 4;
    }

    v3 = v14 | v3 & 0xFB;
  }

  return mlx::core::array::copy_shared_buffer(a3, a1, a2, v3, *(*a1 + 160), 0);
}

void mlx::core::Split::eval(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Split::eval();
  }

  std::vector<int>::vector[abi:ne200100](&v30, 1uLL);
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v30, __dst, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v6 = v30;
  if (__dst != v30)
  {
    v7 = 0;
    do
    {
      v8 = *(*v3 + 24);
      v9 = (*a3 + 16 * v7);
      v10 = *(*v3 + 168) | 6;
      v11 = **v9;
      v12 = (*v9)[1] - v11;
      v13 = (v12 >> 2) - 1;
      if (((v12 >> 2) - 1) < 0)
      {
        goto LABEL_23;
      }

      v14 = 0;
      v15 = *(*v3 + 160);
      v16 = (v12 >> 2);
      v17 = 1;
      v18 = 1;
      v19 = 1;
      do
      {
        v20 = v10;
        v21 = *(v8 + 8 * v14);
        v22 = *(v11 + 4 * v14);
        if (v22 == 1 || v21 == v18)
        {
          v24 = -1;
        }

        else
        {
          v24 = -5;
        }

        v25 = *(v11 + 4 * v13);
        if (v25 == 1 || *(v8 + 8 * v13) == v17)
        {
          v27 = -1;
        }

        else
        {
          v27 = -3;
        }

        v10 = v24 & v27 & v20;
        v18 *= v22;
        v17 *= v25;
        if (v21 < 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = *(v11 + 4 * v14);
        }

        v19 *= v28;
        ++v14;
        --v13;
      }

      while (v16 != v14);
      if (v19 == 1)
      {
LABEL_23:
        LOBYTE(v10) = v10 | 1;
        v29 = 1;
      }

      else
      {
        if (v19 == v15)
        {
          v29 = *(*v3 + 160);
        }

        else
        {
          v29 = v19;
        }

        if (v19 != v15)
        {
          LOBYTE(v10) = v10 & 0xFE | v20 & ((v10 & 6) != 0);
        }
      }

      mlx::core::array::copy_shared_buffer((*a3 + 16 * v7), v3, (*v3 + 24), v10, v29, *(v8 + 8 * *(a1 + 48)) * v6[v7]);
      ++v7;
      v6 = v30;
    }

    while (v7 < (__dst - v30) >> 2);
  }

  if (v6)
  {
    __dst = v6;
    operator delete(v6);
  }
}

void sub_25A370C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Squeeze::eval(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Squeeze::eval();
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  v5 = *v3;
  v6 = **v3;
  if (*(*v3 + 8) != v6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 24);
      if (v9 < ((*(a1 + 32) - v10) >> 2) && v8 == *(v10 + 4 * v9))
      {
        ++v9;
      }

      else
      {
        v11 = mlx::core::array::strides(v3, v8);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v11);
        v5 = *v3;
        v6 = **v3;
      }

      ++v8;
    }

    while (v8 < (v5[1] - v6) >> 2);
  }

  mlx::core::array::copy_shared_buffer(a3, v3, &__p, *(v5 + 168), v5[20], 0);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_25A370D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::array::strides(mlx::core::array *this, unsigned int a2)
{
  v2 = *this;
  if ((a2 & 0x80000000) != 0)
  {
    v3 = ((v2[1] - *v2) >> 2) + a2;
  }

  else
  {
    v3 = a2;
  }

  v5 = v2 + 3;
  v4 = v2[3];
  if (v3 >= (v5[1] - v4) >> 3)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v4 + 8 * v3);
}

char **mlx::core::StopGradient::eval(int a1, uint64_t a2, mlx::core::array *this)
{
  v4 = *a2;
  if (*(a2 + 8) - v4 != 16)
  {
    mlx::core::StopGradient::eval();
  }

  return mlx::core::array::copy_shared_buffer(this, v4);
}

void mlx::core::Transpose::eval(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  if (a2[1] - *a2 != 16)
  {
    mlx::core::Transpose::eval();
  }

  std::vector<long long>::vector[abi:ne200100](__p, ((*a3)[1] - **a3) >> 2);
  v6 = *a2;
  v7 = *(a1 + 24);
  v8 = *v6;
  v9 = *(a1 + 32) - v7;
  if (v9)
  {
    v10 = v9 >> 2;
    v11 = *(v8 + 24);
    v12 = __p[0];
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v13 = *v7++;
      *v12++ = *(v11 + 8 * v13);
      --v10;
    }

    while (v10);
  }

  v14 = *(v8 + 168);
  if ((v14 & 1) != 0 && *(v8 + 160) == *(v8 + 48))
  {
    v14 |= 6u;
    v15 = (*a3)[1] - **a3;
    if (v15)
    {
      v16 = 0;
      v17 = (v15 >> 2) - 1;
      v18 = 1;
      v19 = 1;
      do
      {
        if (*(__p[0] + v16) == v19)
        {
          v20 = -1;
        }

        else if (mlx::core::array::shape(a3, v16) == 1)
        {
          v20 = -1;
        }

        else
        {
          v20 = -5;
        }

        v21 = mlx::core::array::shape(a3, v16);
        if (*(__p[0] + v17) == v18)
        {
          v22 = 2;
        }

        else
        {
          v22 = 2 * (mlx::core::array::shape(a3, v17) == 1);
        }

        v19 *= v21;
        v14 = v22 & v14 | v14 & v20 & 0xFD;
        v18 *= mlx::core::array::shape(a3, v17);
        ++v16;
        --v17;
      }

      while (v16 < ((*a3)[1] - **a3) >> 2);
      v8 = *v6;
    }
  }

  mlx::core::array::copy_shared_buffer(a3, v6, __p, v14, *(v8 + 160), 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25A370FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<long long>::emplace_back<long long>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(result[4], v11);
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
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_25A371158(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::copy_inplace(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *MEMORY[0x277D85DE8];
  mlx::core::cpu::get_command_encoder(a4, a5);
  mlx::core::array::unsafe_weak_copy(a1, &v6);
}

void sub_25A3715B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v28);
  std::mutex::unlock(v27);
  mlx::core::array::~array((v31 + 32));
  mlx::core::array::~array((v31 + 16));
  mlx::core::array::~array((v29 + 16));
  mlx::core::array::~array(&a27);
  mlx::core::array::~array((v30 + 16));
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::copy(mlx::core::array *a1, mlx::core::array *a2, unsigned int a3, uint64_t a4, int a5)
{
  result = mlx::core::set_copy_output_data(a1, a2, a3);
  if (!result || *(*a1 + 56) != *(*a2 + 56))
  {
    if (a3 == 3)
    {
      v11 = 2;
    }

    else
    {
      v11 = a3;
    }

    mlx::core::copy_inplace(a1, a2, v11, a4, a5);
  }

  return result;
}

uint64_t mlx::core::set_copy_output_data(mlx::core::array *a1, mlx::core::array *this, int a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    v10 = mlx::core::allocator::malloc((*(*this + 60) * *(*this + 48)));
    v17[0] = &unk_286BE3468;
    v17[1] = mlx::core::allocator::free;
    v17[3] = v17;
    mlx::core::array::set_data(this, v10);
  }

  v5 = *(a1 + 1);
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_10;
  }

  v6 = *(v5 + 8);
  v7 = *a1;
  if (v6 || (v8 = v7[18]) == 0 || *(v8 + 8) || ((*(*this + 56) ^ v7[7]) & 0xFF00000000) != 0)
  {
LABEL_10:
    v11 = mlx::core::allocator::malloc((*(*this + 60) * v7[20]));
    v12 = *a1;
    v13 = *(*a1 + 160);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
    v14 = *(*a1 + 168);
    v18[0] = &unk_286BE3468;
    v18[1] = mlx::core::allocator::free;
    v18[3] = v18;
    mlx::core::array::set_data(this, v11);
  }

  mlx::core::array::copy_shared_buffer(this, a1);
  result = 1;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A3718E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::copy_inplace(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v12 = *MEMORY[0x277D85DE8];
  mlx::core::cpu::get_command_encoder(a9, a10);
  mlx::core::array::unsafe_weak_copy(a1, v11);
}

void sub_25A372088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, uint64_t a14, char a15, int a16, __int16 a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v65);
  std::mutex::unlock(v64);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0>(mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0 &&)::{lambda(void)#1}::~dispatch(&a39);
  mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0::~$_0(&a64);
  mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0::~$_0(&a17);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (a15 == 1)
  {
    mlx::core::array::~array(&a13);
  }

  _Unwind_Resume(a1);
}

void mlx::core::copy_inplace(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,std::vector<long long> const&,std::vector<long long> const&,long long,long long,mlx::core::CopyType,mlx::core::Stream,std::optional<mlx::core::array> const&,std::optional<mlx::core::array> const&)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    mlx::core::array::~array((a1 + 152));
  }

  if (*(a1 + 144) == 1)
  {
    mlx::core::array::~array((a1 + 128));
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  mlx::core::array::~array((a1 + 16));

  mlx::core::array::~array(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_NS3_8CopyTypeENS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF31F8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_NS3_8CopyTypeENS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF31F8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_NS3_8CopyTypeENS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF31F8;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = *(result + 56);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_NS3_8CopyTypeENS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_NS3_8CopyTypeENS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_NS3_8CopyTypeENS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12copy_inplaceERKNS3_5arrayERS7_NS3_8CopyTypeENS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_25A387904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v135 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
    goto LABEL_83;
  }

  v110 = *(*a1 + 48);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v126, *a4, a4[1], (a4[1] - *a4) >> 3);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v129, *a5, a5[1], (a5[1] - *a5) >> 3);
  v115 = 0;
  v116 = 0;
  v117 = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v115, &v126, &v132, 2uLL);
  mlx::core::collapse_contiguous_dims(a3, &v115, 0x7FFFFFFFuLL, &v122);
  v125 = &v115;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v125);
  for (i = 0; i != -48; i -= 24)
  {
    v16 = *(&v129 + i);
    if (v16)
    {
      *(&v130 + i) = v16;
      operator delete(v16);
    }
  }

  v17 = (v123 - v122) >> 2;
  if (v17 > 2)
  {
    if (v11)
    {
      v12 += *v11;
    }

    if (v14)
    {
      v13 += *v14;
    }

    v21 = v17 - 3;
    mlx::core::ContiguousIterator::ContiguousIterator(&v126, &v122, v124, v17 - 3);
    mlx::core::ContiguousIterator::ContiguousIterator(&v115, &v122, v124 + 3, v17 - 3);
    v22 = v123 - 12;
    v23 = 1;
    do
    {
      v24 = *v22;
      v22 += 4;
      v23 *= v24;
    }

    while (v22 != v123);
    if (!v110)
    {
      v81 = v120;
      if (v120)
      {
LABEL_62:
        v121 = v81;
        operator delete(v81);
      }

LABEL_63:
      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      goto LABEL_81;
    }

    v104 = v12;
    v105 = v13;
    v25 = 0;
    v26 = v126;
    v27 = v130;
    v28 = v122;
    v29 = *v124;
    v30 = v124[3];
    v103 = v17 - 2;
    v31 = v17 - 1;
    v32 = (((v128 - v127) << 30) - 0x100000000) >> 32;
    v98 = v133;
    v112 = &v133[4 * v32];
    v102 = v32;
    v100 = &v127[4 * v32];
    v33 = ((v128 - v127) >> 2) & 0x7FFFFFFF;
    v97 = v33 - 1;
    v34 = v115;
    v35 = v118;
    v36 = (((v117 - v116) << 30) - 0x100000000) >> 32;
    __p = v120;
    v111 = &v120[4 * v36];
    v37 = ((v117 - v116) >> 2) & 0x7FFFFFFF;
    v96 = v37 - 1;
    v108 = v23;
    v109 = (v128 - v127) >> 2;
    v38 = 4 * v33;
    v39 = 4 * v37;
    v94 = v116 - 8;
    v95 = v127 - 8;
    v101 = v36;
    v113 = v17 - 3;
    v106 = v116 + 4 * v36;
    v107 = (v117 - v116) >> 2;
    while (1)
    {
      v114 = v25;
      v40 = *&v28[4 * v21];
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *(v29 + 8 * v113);
        v43 = *(v30 + 8 * v113);
        v44 = &v105[v34];
        v45 = v26 + v104;
        v46 = *(v29 + 8 * v103);
        v47 = *(v30 + 8 * v103);
        v48 = *&v28[4 * v103];
        do
        {
          if (v48 >= 1)
          {
            v49 = 0;
            v50 = *(v29 + 8 * v31);
            v51 = *(v30 + 8 * v31);
            v52 = v45;
            v53 = *&v28[4 * v31];
            v54 = v44;
            do
            {
              if (v53 >= 1)
              {
                v55 = 0;
                v56 = 0;
                v57 = v53;
                do
                {
                  v54[v55] = v52[v56];
                  v56 += v50;
                  v55 += v51;
                  --v57;
                }

                while (v57);
              }

              v52 += v46;
              v54 += v47;
              ++v49;
            }

            while (v49 != v48);
          }

          v45 += v42;
          v44 += v43;
          ++v41;
        }

        while (v41 != v40);
      }

      if (v109)
      {
        break;
      }

      v21 = v113;
      v66 = v114;
      v67 = v106;
      v59 = v107;
      if (v107)
      {
        goto LABEL_52;
      }

LABEL_60:
      v25 = v66 + v108;
      if (v25 >= v110)
      {
        v81 = __p;
        if (__p)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    v58 = *v112;
    v21 = v113;
    v59 = v107;
    if (v109 >= 2 && (v60 = v100, v58 == *v100 - 1))
    {
      v62 = v97;
      v61 = v98;
      v63 = v95;
      v64 = v112;
      v65 = v102;
      v66 = v114;
      v67 = v106;
      do
      {
        v68 = v62;
        *v64 = 0;
        v26 = (v26 - v27[v65] * (*v60 - 1));
        v126 = v26;
        --v62;
        v64 = &v61[v38 - 8];
        v58 = *v64;
        v61 -= 4;
        if (v68 < 2)
        {
          break;
        }

        v60 = &v63[v38];
        v69 = *&v63[v38] - 1;
        v63 -= 4;
        v65 = v62;
      }

      while (v58 == v69);
      v70 = &v61[v38 - 4];
    }

    else
    {
      v62 = v102;
      v70 = v112;
      v66 = v114;
      v67 = v106;
    }

    *v70 = v58 + 1;
    v26 = (v26 + v27[v62]);
    v126 = v26;
    if (!v107)
    {
      goto LABEL_60;
    }

LABEL_52:
    v71 = *v111;
    if (v59 >= 2 && v71 == *v67 - 1)
    {
      v72 = __p;
      v73 = v94;
      v74 = v96;
      v75 = v67;
      v76 = v111;
      v77 = v101;
      do
      {
        v78 = v74;
        *v76 = 0;
        v34 -= v35[v77] * (*v75 - 1);
        v115 = v34;
        --v74;
        v76 = &v72[v39 - 8];
        v71 = *v76;
        v72 -= 4;
        if (v78 < 2)
        {
          break;
        }

        v75 = &v73[v39];
        v79 = *&v73[v39] - 1;
        v73 -= 4;
        v77 = v74;
      }

      while (v71 == v79);
      v80 = &v72[v39 - 4];
    }

    else
    {
      v74 = v101;
      v80 = v111;
    }

    *v80 = v71 + 1;
    v34 += v35[v74];
    v115 = v34;
    goto LABEL_60;
  }

  if (v11)
  {
    v12 += *v11;
  }

  if (v14)
  {
    v13 += *v14;
  }

  if (v17 == 2)
  {
    v82 = *v122;
    if (*v122 >= 1)
    {
      v83 = 0;
      v84 = v124[3];
      v85 = **v124;
      v86 = (*v124)[1];
      v87 = *v84;
      v88 = v84[1];
      v89 = *(v122 + 1);
      do
      {
        if (v89 >= 1)
        {
          v90 = v89;
          v91 = v12;
          v92 = v13;
          do
          {
            *v92 = *v91;
            v91 += v86;
            v92 += v88;
            --v90;
          }

          while (v90);
        }

        v12 += v85;
        v13 += v87;
        ++v83;
      }

      while (v83 != v82);
    }
  }

  else if (v17 == 1)
  {
    v18 = *v122;
    if (*v122 >= 1)
    {
      v19 = **v124;
      v20 = *v124[3];
      do
      {
        *v13 = *v12;
        v12 += v19;
        v13 += v20;
        --v18;
      }

      while (v18);
    }
  }

LABEL_81:
  v126 = &v124;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v126);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

LABEL_83:
  v93 = *MEMORY[0x277D85DE8];
}

void sub_25A388610(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 176));
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(v1 - 232);
  _Unwind_Resume(a1);
}

void mlx::core::ContiguousIterator::~ContiguousIterator(mlx::core::ContiguousIterator *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

uint64_t std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(uint64_t a1)
{
  v4 = (a1 + 24);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A3887A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<long long>>,std::vector<long long> const*,std::vector<long long> const*,std::vector<long long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t mlx::core::ContiguousIterator::ContiguousIterator(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  *a1 = 0;
  v7 = *a2;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  v9 = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a1 + 8, v7, v7 + 4 * a4, a4);
  v10 = *a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(a1 + 32, v10, v10 + 8 * a4, v9);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = (a1 + 56);
  *(a1 + 72) = 0;
  if (*(a1 + 8) != *(a1 + 16))
  {
    mlx::core::collapse_contiguous_dims(v8, (a1 + 32), 0x7FFFFFFFLL, __p);
    v12 = *v8;
    if (*v8)
    {
      *(a1 + 16) = v12;
      operator delete(v12);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    *(a1 + 8) = *__p;
    *(a1 + 24) = v17;
    __p[1] = 0;
    v17 = 0;
    __p[0] = 0;
    v13 = *(a1 + 32);
    if (v13)
    {
      *(a1 + 40) = v13;
      operator delete(v13);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v13 = __p[0];
    }

    *(a1 + 32) = v18;
    *(a1 + 48) = v19;
    v19 = 0;
    v18 = 0uLL;
    if (v13)
    {
      __p[1] = v13;
      operator delete(v13);
    }

    std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 16) - *(a1 + 8)) >> 2);
    v14 = *v11;
    if (*v11)
    {
      *(a1 + 64) = v14;
      operator delete(v14);
      *v11 = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    *(a1 + 56) = *__p;
    *(a1 + 72) = v17;
  }

  return a1;
}

void sub_25A388A1C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[8] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[5] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[2] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A388ABC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::copy_general_general<BOOL,unsigned char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, _BYTE *a8, _BYTE *a9)
{
  v110 = *MEMORY[0x277D85DE8];
  if (a8[16] == 1)
  {
    v11 = *(*a8 + 152);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*a1 + 152) + a6);
  v13 = (*(*a2 + 152) + a7);
  if (a9[16] == 1)
  {
    v14 = *(*a9 + 152);
  }

  else
  {
    v14 = 0;
  }

  if (*a3 == *(a3 + 8))
  {
    *v13 = *v12;
  }

  else
  {
    v15 = *(*a1 + 48);
    v101 = 0;
    v102 = 0;
    v103 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v101, *a4, a4[1], (a4[1] - *a4) >> 3);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v104, *a5, a5[1], (a5[1] - *a5) >> 3);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(&v90, &v101, &v107, 2uLL);
    mlx::core::collapse_contiguous_dims(a3, &v90, 0x7FFFFFFFuLL, &v97);
    v100 = &v90;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v100);
    for (i = 0; i != -48; i -= 24)
    {
      v17 = *(&v104 + i);
      if (v17)
      {
        *(&v105 + i) = v17;
        operator delete(v17);
      }
    }

    v18 = v97;
    v19 = (v98 - v97) >> 2;
    if (v19 > 2)
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      v23 = v19 - 3;
      mlx::core::ContiguousIterator::ContiguousIterator(&v101, &v97, v99, v19 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v97, v99 + 3, v19 - 3);
      v24 = v98 - 3;
      v25 = 1;
      do
      {
        v26 = *v24++;
        v25 *= v26;
      }

      while (v24 != v98);
      if (v15)
      {
        v27 = 0;
        v28 = v19 - 2;
        v29 = v19 - 1;
        v30 = v99;
        do
        {
          v31 = *(v97 + v23);
          if (v31 >= 1)
          {
            v32 = 0;
            v33 = *(*v30 + 8 * v23);
            v34 = *(v30[3] + 8 * v23);
            v35 = &v13[v90];
            v36 = v101 + v12;
            do
            {
              v37 = *(v97 + v28);
              if (v37 >= 1)
              {
                v38 = 0;
                v39 = *(*v30 + 8 * v28);
                v40 = *(v30[3] + 8 * v28);
                v41 = v36;
                v42 = v35;
                do
                {
                  v43 = *(v97 + v29);
                  if (v43 >= 1)
                  {
                    v44 = 0;
                    v45 = 0;
                    v46 = *(*v30 + 8 * v29);
                    v47 = *(v30[3] + 8 * v29);
                    do
                    {
                      v42[v44] = v41[v45];
                      v45 += v46;
                      v44 += v47;
                      --v43;
                    }

                    while (v43);
                  }

                  v41 += v39;
                  v42 += v40;
                  ++v38;
                }

                while (v38 != v37);
              }

              v36 += v33;
              v35 += v34;
              ++v32;
            }

            while (v32 != v31);
          }

          v48 = v103 - v102;
          v49 = (v103 - v102) >> 2;
          if (v49)
          {
            v50 = v108;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v108 + 4 * v51;
            v53 = *v52;
            v54 = v102 + 4 * v51;
            v55 = v105;
            v56 = v101;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v102 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v101 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v101 = (v56 + v55[v58]);
          }

          v64 = v92 - v91;
          v65 = (v92 - v91) >> 2;
          if (v65)
          {
            v66 = __p;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = __p + 4 * v67;
            v69 = *v68;
            v70 = v93;
            v71 = v90;
            if (v65 >= 2 && (v72 = v91 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v91 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v90 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v90 = v70[v74] + v71;
          }

          v27 += v25;
        }

        while (v27 < v15);
      }

      if (__p)
      {
        v96 = __p;
        operator delete(__p);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      if (v105)
      {
        v106 = v105;
        operator delete(v105);
      }

      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }
    }

    else
    {
      if (v11)
      {
        v12 += *v11;
      }

      if (v14)
      {
        v13 += *v14;
      }

      if (v19 == 2)
      {
        v79 = *v97;
        if (*v97 >= 1)
        {
          v80 = 0;
          v81 = v99;
          v82 = **v99;
          v83 = *v99[3];
          do
          {
            v84 = v18[1];
            if (v84 >= 1)
            {
              v85 = *(*v81 + 8);
              v86 = *(v81[3] + 8);
              v87 = v12;
              v88 = v13;
              do
              {
                *v88 = *v87;
                v87 += v85;
                v88 += v86;
                --v84;
              }

              while (v84);
            }

            v12 += v82;
            v13 += v83;
            ++v80;
          }

          while (v80 != v79);
        }
      }

      else if (v19 == 1)
      {
        v20 = *v97;
        if (*v97 >= 1)
        {
          v21 = **v99;
          v22 = *v99[3];
          do
          {
            *v13 = *v12;
            v12 += v21;
            v13 += v22;
            --v20;
          }

          while (v20);
        }
      }
    }

    v101 = &v99;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v101);
    if (v97)
    {
      v98 = v97;
      operator delete(v97);
    }
  }

  v89 = *MEMORY[0x277D85DE8];
}