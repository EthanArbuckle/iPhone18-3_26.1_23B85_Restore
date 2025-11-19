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

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v32]);
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
  MEMORY[0x1AC5526F0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, a2, a3, a3 - a2);
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

void sub_1A59F2C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
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

void sub_1A59F2D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5526F0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
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

void sub_1A59F3068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      std::allocator<std::pair<std::string,std::string>>::allocate_at_least[abi:ne200100](a1, v12);
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

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
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

void sub_1A59F331C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x1AC5526F0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::allocator<std::pair<std::string,std::string>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
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
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v10);
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

  JUMPOUT(0x1AC552B90);
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

  JUMPOUT(0x1AC552B90);
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
  MEMORY[0x1AC5526F0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5526F0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1AC552B90);
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

  JUMPOUT(0x1AC552B90);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F1917790;
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

  JUMPOUT(0x1AC552B90);
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
  MEMORY[0x1AC5526F0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
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

  JUMPOUT(0x1AC552B90);
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

void std::__shared_ptr_emplace<std::basic_regex<char,std::regex_traits<char>> const,std::allocator<std::basic_regex<char,std::regex_traits<char>>>>::__shared_ptr_emplace[abi:ne200100]<char const(&)[40],std::allocator<std::basic_regex<char,std::regex_traits<char>>>,0>(std::regex_traits<char> *a1, const char *a2)
{
  a1->__ct_ = 0;
  a1->__col_ = 0;
  a1->__loc_.__locale_ = &unk_1F1917178;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](a1 + 1, a2, 0);
}

void std::__shared_ptr_emplace<vega::DateTime const>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<vega::DateTime>,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19178E0;
  vega::DateTime::DateTime((a1 + 24));
}

void std::__shared_ptr_emplace<vega::DateTime const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19178E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::DateTime const>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *std::__shared_ptr_emplace<vega::RegexString const>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::shared_ptr<std::basic_regex<char,std::regex_traits<char>> const> const,std::allocator<vega::RegexString>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917930;
  vega::RegexString::RegexString(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<vega::RegexString const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__destroy_at[abi:ne200100]<vega::RegexString,0>(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::__shared_ptr_emplace<vega::RegexString const>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::shared_ptr<std::basic_regex<char,std::regex_traits<char>> const> const,std::allocator<vega::RegexString>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917930;
  vega::RegexString::RegexString(a1 + 3);
  return a1;
}

void vega::DateTime::DateTime(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *vega::dicom::File::trial_transfer_syntaxes_when_missing_file_meta(vega::dicom::File *this)
{
  v7 = *MEMORY[0x1E69E9840];
  {
    vega::dicom::TransferSyntax::IMPLICIT_VR_LITTLE_ENDIAN(v3);
    vega::dicom::TransferSyntax::EXPLICIT_VR_LITTLE_ENDIAN(v4);
    vega::dicom::TransferSyntax::EXPLICIT_VR_BIG_ENDIAN(v5);
    vega::dicom::TransferSyntax::DEFLATED_EXPLICIT_VR_LITTLE_ENDIAN(v6);
    vega::dicom::File::trial_transfer_syntaxes_when_missing_file_meta(void)::v = 0;
    unk_1EB1ECB10 = 0;
    qword_1EB1ECB18 = 0;
    std::vector<vega::dicom::TransferSyntax>::__init_with_size[abi:ne200100]<vega::dicom::TransferSyntax const*,vega::dicom::TransferSyntax const*>(&vega::dicom::File::trial_transfer_syntaxes_when_missing_file_meta(void)::v, v3, &v7, 4uLL);
    for (i = 144; i != -48; i -= 48)
    {
      vega::dicom::TransferSyntax::~TransferSyntax(&v3[i / 0x18].__r_.__value_.__l.__data_);
    }
  }

  return &vega::dicom::File::trial_transfer_syntaxes_when_missing_file_meta(void)::v;
}

void sub_1A59F4EB8(_Unwind_Exception *a1)
{
  v3 = (v1 + 144);
  v4 = -192;
  do
  {
    vega::dicom::TransferSyntax::~TransferSyntax(v3);
    v3 = (v5 - 48);
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void vega::dicom::File::File(_OWORD *a1, uint64_t a2, char a3, char a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v4 = a4;
  *a1 = 0u;
  a1[1] = 0u;
  _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7DataSetENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1A59F5740(_Unwind_Exception *a1)
{
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void sub_1A59F58A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  JUMPOUT(0x1A59F58DCLL);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_1A59F5A44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A59F5ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A59F5D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<vega::dicom::TransferSyntax>::__init_with_size[abi:ne200100]<vega::dicom::TransferSyntax const*,vega::dicom::TransferSyntax const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vega::dicom::TransferSyntax>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A59F5EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<vega::dicom::TransferSyntax>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::allocator<std::pair<std::string,std::string>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vega::dicom::TransferSyntax>,vega::dicom::TransferSyntax const*,vega::dicom::TransferSyntax const*,vega::dicom::TransferSyntax*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1A59F6010(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1AC552780](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1A59F6310(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1AC552AF0](v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::Reader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::istream> &,BOOL &,BOOL &,std::allocator<vega::dicom::Reader>,0>(void *a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19179B8;
  std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<std::istream> &,BOOL &,BOOL &,vega::dicom::Reader*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<std::istream> &,BOOL &,BOOL &,vega::dicom::Reader*>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Reader::Reader(a1, &v7, *a3, *a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_1A59F64A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Preamble>::__shared_ptr_emplace[abi:ne200100]<vega::dicom::Reader &,std::allocator<vega::dicom::Preamble>,0>(void *a1, vega::dicom::Reader *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19179F0;
  vega::dicom::Preamble::Preamble((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Preamble>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19179F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::dicom::FileMeta>::__shared_ptr_emplace[abi:ne200100]<vega::dicom::Reader &,std::allocator<vega::dicom::FileMeta>,0>(void *a1, vega::dicom::Reader *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917A40;
  vega::dicom::FileMeta::FileMeta((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::FileMeta>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917A40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::FileMeta>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::__shared_ptr_emplace<vega::dicom::Reader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>> &,std::allocator<vega::dicom::Reader>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19179B8;
  std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>> &,vega::dicom::Reader*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::Reader,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>> &,vega::dicom::Reader*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Reader::Reader(a1, &v5, 0, 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59F6918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom8PreambleENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19179F0;
  vega::dicom::Preamble::Preamble((a1 + 24));
  return a1;
}

void *std::__shared_ptr_emplace<vega::dicom::FileMeta>::__shared_ptr_emplace[abi:ne200100]<vega::dicom::SOPClass const&,vega::UID const&,std::allocator<vega::dicom::FileMeta>,0>(void *a1, const vega::dicom::SOPClass *a2, const vega::UID *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917A40;
  vega::dicom::FileMeta::FileMeta((a1 + 3), a2, a3);
  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne200100IJES7_Li0EEES7_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917A90;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::dicom::Writer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::ostream> &,std::allocator<vega::dicom::Writer>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917AE0;
  std::construct_at[abi:ne200100]<vega::dicom::Writer,std::shared_ptr<std::ostream> &,vega::dicom::Writer*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::Writer,std::shared_ptr<std::ostream> &,vega::dicom::Writer*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Writer::Writer(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59F6D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dicom::Reader::Reader(uint64_t a1, uint64_t *a2, char a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x1E69E5310];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::RawReader::RawReader(a1 + 40, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *(a1 + 208) = a3;
  *(a1 + 209) = a4;
  return a1;
}

void sub_1A59F6DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dicom::Reader::read_data_element@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 >= 101)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "read_data_element() recursion level hit. Corrupt file");
    std::runtime_error::runtime_error(exception, &v18);
    exception->__vftable = &unk_1F1917B30;
  }

  if (!*a2)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "read_data_element() must receive parent DataSet");
    std::runtime_error::runtime_error(v9, &v17);
    v9->__vftable = &unk_1F1917B30;
  }

  v6 = vega::Formatter::indent((a1 + 2));
  vega::operator<<<char [18]>(v6, "read_data_element");
  vega::Formatter::newline((a1 + 2));
  ++a1[3];
  v16 = 0;
  v15 = 0;
  *a4 = 0;
  a4[1] = 0;
  if ((vega::dicom::RawReader::read_into<vega::Tag>((a1 + 5), &v16) & 1) == 0)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Reader failed to read element tag");
    std::runtime_error::runtime_error(v10, &v14);
    v10->__vftable = &unk_1F1917B30;
  }

  if (!vega::dicom::RawWriter::vr_explicit((a1 + 5)))
  {
    v12.__r_.__value_.__s.__data_[0] = 1;
    std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag &,std::shared_ptr<vega::dicom::DataSet> &,BOOL,0>();
  }

  if ((vega::dicom::RawReader::read_into<vega::VR>((a1 + 5)) & 1) == 0)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Reader failed to read in explicit VR");
    std::runtime_error::runtime_error(v11, &v13);
    v11->__vftable = &unk_1F1917B30;
  }

  if (*CMPhotoGetEncodeAccelerationModeOverride(&v16) || *vega::Tag::element(&v16) | v15)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag &,vega::VR &,std::shared_ptr<vega::dicom::DataSet> &,0>();
  }

  vega::dicom::RawReader::eof_pos((a1 + 5), &v19);
  return vega::dicom::RawReader::seek_pos();
}

uint64_t vega::operator<<<char [18]>(uint64_t a1, char *__s)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = strlen(__s);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, __s, v5);
  }

  return a1;
}

vega::Formatter *vega::Formatter::indent(vega::Formatter *this)
{
  if (*(this + 16) == 1 && *(this + 1))
  {
    v2 = 0;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*this, "  ", 2);
      ++v2;
    }

    while (v2 < *(this + 1));
  }

  return this;
}

vega::Formatter *vega::Formatter::newline(vega::Formatter *this)
{
  if (*(this + 16) == 1)
  {
    std::ios_base::getloc((*this + *(**this - 24)));
    v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
    (v2->__vftable[2].~facet_0)(v2, 10);
    std::locale::~locale(&v4);
    std::ostream::put();
    std::ostream::flush();
  }

  return this;
}

uint64_t vega::dicom::RawReader::read_into<unsigned int>(vega::dicom::IOState *a1, uint64_t a2)
{
  if (vega::dicom::IOState::swap(a1))
  {
    v4 = a2 + 3;
    v5 = -4;
    while (1)
    {
      std::istream::read();
      if (!*(*(a1 + 2) + 8))
      {
        break;
      }

      --v4;
      if (__CFADD__(v5++, 1))
      {
        return 1;
      }
    }
  }

  else
  {
    std::istream::read();
    if ((*(*(a1 + 2) + 8) & 0xFFFFFFFC) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t vega::dicom::RawReader::read_into<unsigned short>(vega::dicom::IOState *a1)
{
  if (vega::dicom::IOState::swap(a1))
  {
    for (i = 1; ; i = 0)
    {
      v3 = i;
      std::istream::read();
      if (!*(*(a1 + 2) + 8))
      {
        break;
      }

      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    std::istream::read();
    if ((*(*(a1 + 2) + 8) & 0xFFFFFFFE) != 0)
    {
      return 1;
    }
  }

  return 0;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t vega::dicom::Reader::read_data_element_undefined_sequence(void *a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = vega::Formatter::indent((a1 + 2));
  if (*(v6 + 16) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v6, "element is sequence with undefined length", 41);
  }

  vega::Formatter::newline((a1 + 2));
  result = vega::dicom::RawReader::eof((a1 + 5));
  if ((result & 1) == 0)
  {
    v8 = (a3 + 1);
    while (1)
    {
      v19 = 0;
      vega::dicom::RawReader::tell(v20, (a1 + 5));
      if ((vega::dicom::RawReader::read_into<vega::Tag>((a1 + 5), &v19) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v18, "Reader failed to read sequence tag in undefined length element");
        std::runtime_error::runtime_error(exception, &v18);
        exception->__vftable = &unk_1F1917B30;
      }

      if (vega::Tag::is_sequence_delimitation_tag(&v19))
      {
        break;
      }

      v22[6] = v20[6];
      v22[7] = v20[7];
      v23 = v21;
      v22[2] = v20[2];
      v22[3] = v20[3];
      v22[4] = v20[4];
      v22[5] = v20[5];
      v22[0] = v20[0];
      v22[1] = v20[1];
      vega::dicom::RawReader::seek_pos();
      ++a1[3];
      v9 = *(a2 + 8);
      v15 = *a2;
      v16 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      vega::dicom::Reader::read_data_set(v22, a1, &v15, v8);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      --a1[3];
      if (*&v22[0])
      {
        v10 = vega::dicom::DataElement::data_sets(*a2);
        std::vector<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::push_back[abi:ne200100](v10, v22);
      }

      if (*(&v22[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22[0] + 1));
      }

      result = vega::dicom::RawReader::eof((a1 + 5));
      v8 = (v8 + 1);
      if (result)
      {
        return result;
      }
    }

    v11 = vega::Formatter::indent((a1 + 2));
    if (*(v11 + 16) == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v11, "--END-- of element (sequence delimit)", 37);
    }

    vega::Formatter::newline((a1 + 2));
    LODWORD(v22[0]) = 0;
    result = vega::dicom::RawReader::read_into<unsigned int>((a1 + 5), v22);
    if (LODWORD(v22[0]))
    {
      v12 = 0;
    }

    else
    {
      v12 = result;
    }

    if ((v12 & 1) == 0)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v17, "Reader failed to read sequence length in undefined length element");
      std::runtime_error::runtime_error(v14, &v17);
      v14->__vftable = &unk_1F1917B30;
    }
  }

  return result;
}

void sub_1A59F86D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t *vega::dicom::Reader::read_data_element_finite_sequence(void *a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = vega::Formatter::indent((a1 + 2));
  if (*(v6 + 16) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v6, "element is sequence has regular length", 38);
  }

  vega::Formatter::newline((a1 + 2));
  vega::dicom::RawReader::tell(v16, (a1 + 5));
  v7 = *vega::dicom::SOPClass::uid(*a2);
  v8 = v17;
  result = vega::dicom::RawReader::tell(v16, (a1 + 5));
  v10 = v8 + v7;
  if (v17 < v10)
  {
    v11 = (a3 + 1);
    do
    {
      ++a1[3];
      v12 = *(a2 + 8);
      v14 = *a2;
      v15 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      vega::dicom::Reader::read_data_set(v16, a1, &v14, v11);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      --a1[3];
      if (*&v16[0])
      {
        v13 = vega::dicom::DataElement::data_sets(*a2);
        std::vector<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::push_back[abi:ne200100](v13, v16);
      }

      if (*(&v16[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16[0] + 1));
      }

      result = vega::dicom::RawReader::tell(v16, (a1 + 5));
      v11 = (v11 + 1);
    }

    while (v17 < v10);
  }

  return result;
}

void sub_1A59F88B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::Reader::read_data_element_value_field(uint64_t a1, vega **a2)
{
  v4 = vega::Formatter::indent((a1 + 16));
  vega::operator<<<char [18]>(v4, "element is not sequence");
  vega::Formatter::newline((a1 + 16));
  vega::manipulator_for (*a2, v5);
}

void sub_1A59F8B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (*(v60 - 89) < 0)
  {
    operator delete(*(v60 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v60 - 113) < 0)
  {
    operator delete(*(v60 - 136));
  }

  if (*(v60 - 137) < 0)
  {
    operator delete(*(v60 - 160));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
    if ((v59 & 1) == 0)
    {
LABEL_26:
      v62 = *(v60 - 56);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v59)
  {
    goto LABEL_26;
  }

  __cxa_free_exception(v58);
  goto LABEL_26;
}

vega::Formatter *vega::dicom::Reader::read_data_set@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = vega::Formatter::indent((a1 + 2));
  if (*(v4 + 16) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v4, "read_data_set", 13);
  }

  vega::Formatter::newline((a1 + 2));
  ++a1[3];
  v18 = 0;
  if ((vega::dicom::RawReader::read_into<vega::Tag>((a1 + 5), &v18) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Reader failed to read in data set tag");
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_1F1917B30;
  }

  if (vega::Tag::is_item_tag(&v18))
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::DataSet,std::allocator<vega::dicom::DataSet>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  if (!vega::Tag::is_item_delimitation_tag(&v18))
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v15, "Reader unexpectedly reached end of read_data_set() method");
    std::runtime_error::runtime_error(v13, &v15);
    v13->__vftable = &unk_1F1917B30;
  }

  LODWORD(v19) = 0;
  v5 = vega::dicom::RawReader::read_into<unsigned int>((a1 + 5), &v19);
  if (v19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if ((v6 & 1) == 0)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v16, "Reader failed to read in length of item delimitation tag");
    std::runtime_error::runtime_error(v14, &v16);
    v14->__vftable = &unk_1F1917B30;
  }

  v7 = vega::Formatter::indent((a1 + 2));
  v8 = vega::operator<<<char [18]>(v7, "DataSet (delim): ");
  v9 = v8;
  if (*(v8 + 16) == 1)
  {
    vega::operator<<(*v8);
  }

  v10 = vega::operator<<<char [18]>(v9, " ");
  if (*(v10 + 16) == 1)
  {
    MEMORY[0x1AC552920](*v10, v19);
  }

  result = vega::Formatter::newline((a1 + 2));
  --a1[3];
  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1A59F956C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
LABEL_6:
      v63 = *(v59 + 8);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v60);
  goto LABEL_6;
}

void vega::dicom::Reader::ReadingError::~ReadingError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<vega::Tag &,vega::VR &,std::shared_ptr<vega::dicom::DataSet> &,std::allocator<vega::dicom::DataElement>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag &,vega::VR &,std::shared_ptr<vega::dicom::DataSet> &,vega::dicom::DataElement*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag &,vega::VR &,std::shared_ptr<vega::dicom::DataSet> &,vega::dicom::DataElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a4[1];
  v7 = *a4;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataElement::DataElement(a1, a2, a3, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_1A59F9880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<vega::Tag &,std::shared_ptr<vega::dicom::DataSet> &,BOOL,std::allocator<vega::dicom::DataElement>,0>(void *a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag &,std::shared_ptr<vega::dicom::DataSet> &,BOOL,vega::dicom::DataElement*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,vega::Tag &,std::shared_ptr<vega::dicom::DataSet> &,BOOL,vega::dicom::DataElement*>(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataElement::DataElement(a1, a2, &v7, *a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return a1;
}

void sub_1A59F99F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<vega::dicom::Reader>::shared_ptr[abi:ne200100]<vega::dicom::Reader,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void vega::dicom::Reader::read_data_element()
{
  if (__cxa_guard_acquire(&qword_1ED6FA788))
  {
    _MergedGlobals_14 = 20819;
    __cxa_guard_release(&qword_1ED6FA788);
  }
}

void vega::RFC1951::inflate()
{
  MEMORY[0x1EEE9AC00]();
  v0 = *MEMORY[0x1E69E9840];
  _ZNSt3__115allocate_sharedB8ne200100INS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1A59F9DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, _Unwind_Exception *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v35 & 1) == 0)
    {
LABEL_8:
      v36 = *(v33 + 8);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v34);
  goto LABEL_8;
}

void sub_1A59F9E88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A59F9E74);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_1A59FA244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, _Unwind_Exception *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v35 & 1) == 0)
    {
LABEL_8:
      v36 = *(v33 + 8);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v34);
  goto LABEL_8;
}

void sub_1A59FA2FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A59FA2E8);
}

BOOL vega::manipulators::ValueManipulator::operator==(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 24))(v13);
  (*(*a2 + 24))(__p, a2);
  v3 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = v13[1];
  }

  v5 = v12;
  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v4 == v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v7 = v13;
    }

    else
    {
      v7 = v13[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = memcmp(v7, v8, v4) == 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p[0]);
  v3 = v14;
LABEL_17:
  if ((v3 & 0x80) != 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_1A59FA420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::ValueManipulator::operator!=(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 24))(v13);
  (*(*a2 + 24))(__p, a2);
  v3 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = v13[1];
  }

  v5 = v12;
  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v4 == v5)
  {
    if ((v14 & 0x80u) == 0)
    {
      v7 = v13;
    }

    else
    {
      v7 = v13[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = memcmp(v7, v8, v4) != 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 1;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p[0]);
  v3 = v14;
LABEL_17:
  if ((v3 & 0x80) != 0)
  {
    operator delete(v13[0]);
  }

  return v9;
}

void sub_1A59FA548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::UID::BASE(std::string *a1@<X8>)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "1.2.840.113635.100.22");
    if (SHIBYTE(v4) < 0)
    {
      std::string::__init_copy_ctor_external(&vega::UID::BASE(void)::BASE, __p[0], __p[1]);
      if (SHIBYTE(v4) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      vega::UID::BASE(void)::BASE = *__p;
      unk_1EB1ECB38 = v4;
    }
  }

  if (byte_1EB1ECB3F < 0)
  {
    std::string::__init_copy_ctor_external(a1, vega::UID::BASE(void)::BASE, *(&vega::UID::BASE(void)::BASE + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = vega::UID::BASE(void)::BASE;
    a1->__r_.__value_.__r.__words[2] = unk_1EB1ECB38;
  }
}

void sub_1A59FA64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *vega::UID::UID(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

void vega::UID::IMPLEMENTATION_CLASS_UID(std::string *a1@<X8>)
{
  {
    vega::UID::BASE(&v3);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(".1", &v3.__r_.__value_.__l.__data_, __p);
    if (SHIBYTE(v5) < 0)
    {
      std::string::__init_copy_ctor_external(&vega::UID::IMPLEMENTATION_CLASS_UID(void)::IMPLEMENTATION_CLASS_UID, __p[0], __p[1]);
      if (SHIBYTE(v5) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      vega::UID::IMPLEMENTATION_CLASS_UID(void)::IMPLEMENTATION_CLASS_UID = *__p;
      unk_1EB1ECB58 = v5;
    }

    if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v3.__r_.__value_.__l.__data_);
    }
  }

  if (byte_1EB1ECB5F < 0)
  {
    std::string::__init_copy_ctor_external(a1, vega::UID::IMPLEMENTATION_CLASS_UID(void)::IMPLEMENTATION_CLASS_UID, *(&vega::UID::IMPLEMENTATION_CLASS_UID(void)::IMPLEMENTATION_CLASS_UID + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = vega::UID::IMPLEMENTATION_CLASS_UID(void)::IMPLEMENTATION_CLASS_UID;
    a1->__r_.__value_.__r.__words[2] = unk_1EB1ECB58;
  }
}

void sub_1A59FA7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
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

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void *vega::UID::UID(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

BOOL vega::UID::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

BOOL vega::UID::operator!=(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

void vega::UID::generate(vega::UID *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  std::to_string(&v21, this);
  vega::UID::BASE(v17);
  if ((v17[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17[0].__r_.__value_.__l.__size_;
  }

  if (!v2)
  {
    v5 = -1;
    if ((SHIBYTE(v17[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

  v5 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v17[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

  v5 = v21.__r_.__value_.__l.__size_;
  if (SHIBYTE(v17[0].__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_37:
    operator delete(v17[0].__r_.__value_.__l.__data_);
  }

LABEL_7:
  std::ostringstream::basic_ostringstream[abi:ne200100](v17);
  vega::UID::BASE(&__p);
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
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_p, v7);
  v22 = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v22, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__s.__data_[0] = rand() % 9 + 49;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &__p, 1);
  if (47 - (size + v5) >= 2)
  {
    v9 = 46 - (size + v5);
    do
    {
      __p.__r_.__value_.__s.__data_[0] = rand() % 10 + 48;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &__p, 1);
      --v9;
    }

    while (v9);
  }

  if (v2)
  {
    __p.__r_.__value_.__s.__data_[0] = 46;
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &__p, 1);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v21;
    }

    else
    {
      v11 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v21.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  }

  __p.__r_.__value_.__s.__data_[0] = 46;
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &__p, 1);
  vega::UID::timestamp(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str[abi:ne200100](&v17[0].__r_.__value_.__l.__size_, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }

  v17[0].__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54E8];
  *(v17[0].__r_.__value_.__r.__words + *(v17[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18);
  }

  v17[0].__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v17[0].__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x1AC552AF0](&v20);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1A59FAD30(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1AC552AF0](va);
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  _Unwind_Resume(a1);
}

_BYTE *vega::UID::timestamp@<X0>(_BYTE *a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = time(0);
  v3 = gmtime(&v5);
  strftime(__s, 0xFuLL, "%Y%m%d%H%M%S", v3);
  return std::string::basic_string[abi:ne200100]<0>(a1, __s);
}

void *vega::operator>>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v11 = 0;
  if ((*(a1 + *(*a1 - 24) + 32) & 2) == 0)
  {
    v4 = MEMORY[0x1E69E9830];
    do
    {
      v5 = std::istream::peek();
      if ((v5 > 0xFF || (*(v4 + 4 * v5 + 60) & 0x400) == 0) && std::istream::peek() != 46)
      {
        break;
      }

      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v11);
      LOBYTE(v9) = v11;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, &v9, 1);
    }

    while ((*(a1 + *(*a1 - 24) + 32) & 2) == 0);
  }

  std::stringbuf::str[abi:ne200100](&v14, &v9);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v9;
  v6 = MEMORY[0x1E69E54D8];
  *(a2 + 16) = v10;
  v12[0] = *v6;
  v7 = v6[9];
  *(v12 + *(v12[0] - 24)) = v6[8];
  v13 = v7;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC552AF0](&v17);
  return a1;
}

{
  MEMORY[0x1AC552850]();
  v10 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v10);
  v4 = v10;
  v5 = v10 - 68;
  v6 = v5 > 0x15;
  v7 = (1 << v5) & 0x280201;
  if (v6 || v7 == 0)
  {
    v4 = 89;
  }

  *(a2 + 2) = v4;
  return a1;
}

void sub_1A59FB06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC552AF0](&a30);
  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

vega::dicom::IOState *vega::dicom::RawWriter::RawWriter(vega::dicom::IOState *a1, uint64_t a2)
{
  v12[17] = *MEMORY[0x1E69E9840];
  v4 = vega::dicom::IOState::IOState(a1);
  v6 = *a2;
  v5 = *(a2 + 8);
  *(v4 + 2) = *a2;
  *(v4 + 3) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 2);
  }

  if (!v6 || (*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::__init(&v10, "Invalid output stream in RawWriter()", 0x24uLL);
    std::runtime_error::runtime_error(exception, &v10);
    exception->__vftable = &unk_1F1917C28;
  }

  MEMORY[0x1AC5528B0](v11, v6);
  v7 = v6 + *(*v6 - 24);
  if ((v7[32] & 5) == 0)
  {
    (*(**(v7 + 5) + 32))(v12);
    if (v12[16] == -1)
    {
      std::ios_base::clear((v6 + *(*v6 - 24)), *(v6 + *(*v6 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1AC5528C0](v11);
  return a1;
}

void sub_1A59FB2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  MEMORY[0x1AC5528C0](&a16);
  v18 = *(v16 + 24);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

uint64_t vega::dicom::RawWriter::tell@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 16) + *(**(this + 16) - 24);
  if ((*(v2 + 32) & 5) == 0)
  {
    return (*(**(v2 + 40) + 32))(*(v2 + 40), 0, 1, 16);
  }

  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 128) = -1;
  return this;
}

uint64_t vega::dicom::RawWriter::seek_pos(uint64_t a1)
{
  v5[17] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  MEMORY[0x1AC5528B0](v4, v1);
  v2 = v1 + *(*v1 - 24);
  if ((v2[32] & 5) == 0)
  {
    (*(**(v2 + 5) + 32))(v5);
    if (v5[16] == -1)
    {
      std::ios_base::clear((v1 + *(*v1 - 24)), *(v1 + *(*v1 - 24) + 32) | 4);
    }
  }

  return MEMORY[0x1AC5528C0](v4);
}

uint64_t vega::dicom::RawWriter::write_from<vega::Tag>(vega::dicom::IOState *a1, vega::Tag *a2)
{
  CMPhotoGetEncodeAccelerationModeOverride(a2);
  v4 = vega::dicom::RawWriter::write_from<unsigned short>(a1);
  vega::Tag::element(a2);
  return vega::dicom::RawWriter::write_from<unsigned short>(a1) + v4;
}

uint64_t vega::dicom::RawWriter::write_from<vega::VR>(vega::dicom::IOState *a1)
{
  vega::dicom::IOState::swap(a1);
  std::ostream::write();
  vega::dicom::IOState::swap(a1);
  std::ostream::write();
  return 2;
}

void vega::dicom::RawWriter::WritingError::~WritingError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1AC552B90);
}

void ___ZN4vega10dictionary10Dictionary28default_dictionary_file_nameEv_block_invoke()
{
  v12[2] = *MEMORY[0x1E69E9840];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CMPhoto");
  if (BundleWithIdentifier)
  {
    v1 = CFBundleCopyBundleURL(BundleWithIdentifier);
    if (v1)
    {
      v2 = v1;
      v3 = CFURLCopyPath(v1);
      if (v3)
      {
        v4 = v3;
        MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v3);
        std::vector<char>::vector[abi:ne200100](&__p, MaximumSizeOfFileSystemRepresentation);
        CFStringGetFileSystemRepresentation(v4, __p, v11 - __p);
        std::string::basic_string[abi:ne200100]<0>(&v9, __p);
        v6 = std::string::append(&v9, "dictionary.txt", 0xEuLL);
        v7 = v6->__r_.__value_.__r.__words[0];
        v12[0] = v6->__r_.__value_.__l.__size_;
        *(v12 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
        v8 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        if (byte_1EB1ECB7F < 0)
        {
          operator delete(vega::dictionary::Dictionary::default_dictionary_file_name(void)::gFilename);
        }

        vega::dictionary::Dictionary::default_dictionary_file_name(void)::gFilename = v7;
        unk_1EB1ECB70 = v12[0];
        unk_1EB1ECB77 = *(v12 + 7);
        byte_1EB1ECB7F = v8;
        if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v9.__r_.__value_.__l.__data_);
        }

        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        CFRelease(v4);
      }

      CFRelease(v2);
    }
  }
}

void sub_1A59FB728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dictionary::Dictionary::instance(vega::dictionary::Dictionary *this)
{
  v1 = this;
  result = vega::dictionary::Dictionary::singleton_;
  if (!vega::dictionary::Dictionary::singleton_)
  {
    if (v1)
    {
      if (vega::dictionary::Dictionary::default_dictionary_file_name(void)::onceToken != -1)
      {
        vega::dictionary::Dictionary::instance();
      }

      vega::dictionary::Dictionary::set_dictionary();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v4, "Dictionary not yet initialized with call to set_dictionary()");
    std::runtime_error::runtime_error(exception, &v4);
    exception->__vftable = &unk_1F1917110;
  }

  return result;
}

void sub_1A59FB888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void vega::dictionary::Dictionary::Dictionary(void *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  a1[2] = 0;
  a1[1] = 0;
  a1[3] = 0;
  *a1 = a1 + 1;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[6] = a1 + 7;
  a1[10] = 0;
  a1[8] = 0;
  a1[9] = a1 + 10;
  a1[11] = 0;
  a1[13] = 0;
  a1[12] = a1 + 13;
  a1[14] = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v1, "^public \\(([0-9a-fA-FxX]{4}),([0-9a-fA-FxX]{4})\\)\\s+([a-zA-Z]{2}(?:[/_][a-zA-Z]{2})*)\\s+(\\w+)\\s+([1-9]\\d*(?:-(?:[1-9]\\d*)?n?)?)$", 0);
}

void sub_1A59FC500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void **a13, void **a14, void **a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  a44 = &a59;
  std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&a44);
  if (a67 < 0)
  {
    operator delete(a62);
  }

  std::ifstream::~ifstream(&STACK[0x230], MEMORY[0x1E69E54C8]);
  MEMORY[0x1AC552AF0](&STACK[0x3D8]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a68);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a72);
  std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::destroy(a16, *a15);
  std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::destroy(a10, *a11);
  std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::destroy(a12, *a13);
  v74 = *a14;
  if (*a14)
  {
    *(v72 + 32) = v74;
    operator delete(v74);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::destroy(v72, *(v72 + 8));
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<vega::dictionary::Page const>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<vega::dictionary::Page const>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<vega::manipulators::OtherWordManipulator>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void vega::dictionary::Dictionary::add_pages(uint64_t a1, vega::dictionary::Page ***a2)
{
  v49[0] = 0;
  v49[1] = 0;
  v48 = v49;
  v47 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    goto LABEL_44;
  }

  v5 = (a1 + 56);
  v6 = a1 + 80;
  do
  {
    v7 = vega::dictionary::Page::name(*v3);
    std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::shared_ptr<vega::dictionary::Page const> const&>(a1, v7);
    v8 = vega::dictionary::Page::tag_mask(*v3);
    v9 = vega::Tag::tag((v8 + 4));
    v47 = vega::math::popcount(v9);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v48, &v47);
    v10 = *v5;
    if (!*v5)
    {
      goto LABEL_11;
    }

    v11 = a1 + 56;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= v47;
      v14 = v12 < v47;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 == v5 || v47 < *(v11 + 32))
    {
LABEL_11:
      v45 = 0;
      v46 = 0;
      v44 = &v45;
      std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::__emplace_unique_key_args<unsigned int,unsigned int &,std::set<vega::Tag>>(a1 + 48, &v47);
      std::__tree<unsigned int>::destroy(&v44, v45);
      v15 = *v5;
      v11 = a1 + 56;
      if (*v5)
      {
        v16 = a1 + 56;
        do
        {
          v17 = *(v15 + 32);
          v13 = v17 >= v47;
          v18 = v17 < v47;
          if (v13)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v18);
        }

        while (v15);
        v11 = a1 + 56;
        if (v16 != v5)
        {
          v11 = v16;
          if (v47 < *(v16 + 32))
          {
            v11 = a1 + 56;
          }
        }
      }
    }

    v19 = vega::dictionary::Page::tag_mask(*v3);
    std::__tree<vega::Tag>::__emplace_unique_key_args<vega::Tag,vega::Tag const&>(v11 + 40, (v19 + 4));
    v20 = vega::dictionary::Page::tag_mask(*v3);
    v21 = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(a1 + 72, (v20 + 4));
    if (v6 == v21)
    {
      v22 = vega::dictionary::Page::tag_mask(*v3);
      v45 = 0;
      v46 = 0;
      v44 = &v45;
      std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag const&,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>(a1 + 72, (v22 + 4));
      std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy(&v44, v45);
      v23 = vega::dictionary::Page::tag_mask(*v3);
      v21 = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(a1 + 72, (v23 + 4));
    }

    v24 = vega::dictionary::Page::tag_mask(*v3);
    std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag const&,std::shared_ptr<vega::dictionary::Page const> const&>(v21 + 40, v24);
    v3 += 2;
  }

  while (v3 != v4);
  v25 = v48;
  if (v48 == v49)
  {
LABEL_44:
    v26 = *(a1 + 32);
  }

  else
  {
    v26 = *(a1 + 32);
    do
    {
      v27 = *(a1 + 40);
      if (v26 >= v27)
      {
        v28 = *(a1 + 24);
        v29 = v26 - v28;
        v30 = (v26 - v28) >> 2;
        v31 = v30 + 1;
        if ((v30 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v32 = v27 - v28;
        if (v32 >> 1 > v31)
        {
          v31 = v32 >> 1;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v33 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          std::allocator<int>::allocate_at_least[abi:ne200100](a1 + 24, v33);
        }

        v34 = v30;
        v35 = (4 * v30);
        v36 = &v35[-v34];
        *v35 = *(v25 + 7);
        v26 = v35 + 1;
        memcpy(v36, v28, v29);
        v37 = *(a1 + 24);
        *(a1 + 24) = v36;
        *(a1 + 32) = v26;
        *(a1 + 40) = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v26++ = *(v25 + 7);
      }

      *(a1 + 32) = v26;
      v38 = v25[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v25[2];
          v40 = *v39 == v25;
          v25 = v39;
        }

        while (!v40);
      }

      v25 = v39;
    }

    while (v39 != v49);
  }

  v41 = *(a1 + 24);
  v42 = 126 - 2 * __clz((v26 - v41) >> 2);
  if (v26 == v41)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(v26, v26, v41, *(a1 + 24), &v44, v43, 1);
  std::__tree<unsigned int>::destroy(&v48, v49[0]);
}

uint64_t vega::dictionary::Dictionary::page_for@<X0>(uint64_t this@<X0>, const vega::Tag *a2@<X1>, void *a3@<X8>)
{
  v28 = 0;
  v3 = *(this + 24);
  v27 = *(this + 32);
  if (v3 == v27)
  {
LABEL_35:
    *a3 = 0;
    a3[1] = 0;
    return this;
  }

  v5 = this;
  v6 = (this + 56);
  while (1)
  {
    v7 = *v6;
    if (!*v6)
    {
      goto LABEL_11;
    }

    v8 = *v3;
    v9 = v6;
    do
    {
      v10 = *(v7 + 32);
      v11 = v10 >= v8;
      v12 = v10 < v8;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 == v6 || v8 < *(v9 + 8))
    {
LABEL_11:
      v9 = v6;
    }

    v13 = v9[5];
    v14 = (v9 + 6);
    if (v13 != (v9 + 6))
    {
      break;
    }

LABEL_34:
    if (++v3 == v27)
    {
      goto LABEL_35;
    }
  }

  while (1)
  {
    v15 = vega::Tag::tag((v13 + 13));
    HIDWORD(v16) = vega::Tag::tag(a2) & v15;
    LODWORD(v16) = HIDWORD(v16);
    v28 = v16 >> 16;
    v17 = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(v5 + 72, v13 + 13);
    this = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(v17 + 40, &v28);
    if (v17 + 48 == this)
    {
      goto LABEL_28;
    }

    v18 = this;
    v19 = *CMPhotoGetEncodeAccelerationModeOverride(a2);
    this = vega::dictionary::Page::name(*(v18 + 40));
    v20 = *(this + 23);
    if ((v20 & 0x80000000) == 0)
    {
      if (v20 == 14)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    if (*(this + 8) == 14)
    {
      break;
    }

LABEL_27:
    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_28:
    v23 = *(v13 + 1);
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      do
      {
        v24 = *(v13 + 2);
        v21 = *v24 == v13;
        v13 = v24;
      }

      while (!v21);
    }

    v13 = v24;
    if (v24 == v14)
    {
      goto LABEL_34;
    }
  }

  this = *this;
LABEL_19:
  v21 = *this == 0x4365746176697250 && *(this + 6) == 0x726F746165724365;
  v22 = v21;
  if ((v22 ^ v19))
  {
    goto LABEL_28;
  }

LABEL_36:
  v25 = *(v18 + 48);
  *a3 = *(v18 + 40);
  a3[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t vega::dictionary::Dictionary::page_for@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::find<std::string>(a1, a2);
  if (a1 + 8 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(result + 64);
    *a3 = *(result + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t vega::dictionary::Dictionary::private_owner@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::find<std::string>(a1 + 96, a2);
  if (a1 + 104 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(result + 64);
    *a3 = *(result + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vega::Byte>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A59FD000(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<vega::dictionary::Dictionary>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::destroy(v2 + 96, *(v2 + 104));
    std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::destroy(v2 + 72, *(v2 + 80));
    std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::destroy(v2 + 48, *(v2 + 56));
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::destroy(v2, *(v2 + 8));

    JUMPOUT(0x1AC552B90);
  }

  return result;
}

vega::Tag *vega::TagMask::TagMask(vega::Tag *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  v4 = (a1 + 4);
  v5 = *(a2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5 != 4)
  {
    goto LABEL_52;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (v7 != 4)
  {
LABEL_52:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v29 = std::string::append(&__p, ", ", 2uLL);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = *(a3 + 23);
    if (v31 >= 0)
    {
      v32 = a3;
    }

    else
    {
      v32 = *a3;
    }

    if (v31 >= 0)
    {
      v33 = *(a3 + 23);
    }

    else
    {
      v33 = *(a3 + 8);
    }

    v34 = std::string::append(&v37, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v38);
    exception->__vftable = &unk_1F1917110;
  }

  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *a2, *(a2 + 8));
  }

  else
  {
    v37 = *a2;
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = (&v37 + HIBYTE(v37.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v9 = (v37.__r_.__value_.__r.__words[0] + v37.__r_.__value_.__l.__size_);
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v37;
  }

  else
  {
    v10 = v37.__r_.__value_.__r.__words[0];
  }

  while (v10 != v9)
  {
    v10->__r_.__value_.__s.__data_[0] = __tolower(v10->__r_.__value_.__s.__data_[0]);
    v10 = (v10 + 1);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v11 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  while (p_p != v11)
  {
    p_p->__r_.__value_.__s.__data_[0] = __tolower(p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 1);
  }

  v13 = 0;
  for (i = 3; i != -1; --i)
  {
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v37;
    }

    else
    {
      v15 = v37.__r_.__value_.__r.__words[0];
    }

    v16 = v15->__r_.__value_.__s.__data_[i];
    if (v16 != 120)
    {
      EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(v4);
      *EncodeAccelerationModeOverride |= 15 << v13;
      v18 = CMPhotoGetEncodeAccelerationModeOverride(a1);
      v19 = v16 - 48;
      if ((v16 - 48) >= 0xA)
      {
        v19 = v16 - 87;
      }

      *v18 |= v19 << v13;
    }

    v13 += 4;
  }

  v20 = 0;
  for (j = 3; j != -1; --j)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    v23 = v22->__r_.__value_.__s.__data_[j];
    if (v23 != 120)
    {
      v24 = vega::Tag::element(v4);
      *v24 |= 15 << v20;
      v25 = vega::Tag::element(a1);
      v26 = v23 - 48;
      if ((v23 - 48) >= 0xA)
      {
        v26 = v23 - 87;
      }

      *v25 |= v26 << v20;
    }

    v20 += 4;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A59FD3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void std::allocator<std::shared_ptr<vega::dictionary::Page const>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1AC552790](a1 + 2);

  return std::istream::~istream();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, char a7)
{
LABEL_1:
  for (i = 1 - a6; ; ++i)
  {
    v15 = a2 - a4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v57 = *(a2 - 1);
        if (*a4 < v57)
        {
          *(a2 - 1) = *a4;
          *a4 = v57;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v61 = *(a2 - 2);
      v62 = *(a2 - 1);
      v63 = *(a2 - 3);
      if (v61 >= v62)
      {
        if (v63 >= v61)
        {
          v61 = *(a2 - 3);
        }

        else
        {
          *(a2 - 3) = v61;
          *(a2 - 2) = v63;
          v75 = *(a2 - 1);
          if (v63 < v75)
          {
            *(a2 - 2) = v75;
            *(a2 - 1) = v63;
            v61 = *(a2 - 3);
          }
        }
      }

      else
      {
        if (v63 < v61)
        {
          *(a2 - 1) = v63;
          goto LABEL_124;
        }

        *(a2 - 2) = v62;
        *(a2 - 1) = v61;
        v61 = *(a2 - 3);
        if (v61 < v62)
        {
          *(a2 - 2) = v61;
LABEL_124:
          *(a2 - 3) = v62;
          v61 = v62;
        }
      }

      if (*a4 >= v61)
      {
        return;
      }

      *(a2 - 3) = *a4;
      *a4 = v61;
      v73 = *(a2 - 3);
      goto LABEL_128;
    }

    if (v15 == 5)
    {
      v58 = *(a2 - 2);
      v59 = *(a2 - 1);
      v60 = *(a2 - 3);
      if (v58 >= v59)
      {
        if (v60 >= v58)
        {
          v58 = *(a2 - 3);
        }

        else
        {
          *(a2 - 3) = v58;
          *(a2 - 2) = v60;
          v74 = *(a2 - 1);
          if (v60 < v74)
          {
            *(a2 - 2) = v74;
            *(a2 - 1) = v60;
            v58 = *(a2 - 3);
          }
        }
      }

      else
      {
        if (v60 < v58)
        {
          *(a2 - 1) = v60;
          goto LABEL_113;
        }

        *(a2 - 2) = v59;
        *(a2 - 1) = v58;
        v58 = *(a2 - 3);
        if (v58 < v59)
        {
          *(a2 - 2) = v58;
LABEL_113:
          *(a2 - 3) = v59;
          v58 = v59;
        }
      }

      v82 = *(a2 - 4);
      if (v82 < v58)
      {
        *(a2 - 4) = v58;
        *(a2 - 3) = v82;
        v83 = *(a2 - 2);
        if (v82 < v83)
        {
          *(a2 - 3) = v83;
          *(a2 - 2) = v82;
          v84 = *(a2 - 1);
          if (v82 < v84)
          {
            *(a2 - 2) = v84;
            *(a2 - 1) = v82;
          }
        }
      }

      v85 = *(a2 - 4);
      if (*a4 >= v85)
      {
        return;
      }

      *(a2 - 4) = *a4;
      *a4 = v85;
      v73 = *(a2 - 4);
      v86 = *(a2 - 3);
      if (v73 >= v86)
      {
        return;
      }

      *(a2 - 4) = v86;
      *(a2 - 3) = v73;
LABEL_128:
      v87 = *(a2 - 2);
      if (v73 >= v87)
      {
        return;
      }

      *(a2 - 3) = v87;
      *(a2 - 2) = v73;
LABEL_130:
      v88 = *(a2 - 1);
      if (v73 < v88)
      {
        *(a2 - 2) = v88;
        *(a2 - 1) = v73;
      }

      return;
    }

LABEL_9:
    if (v15 <= 23)
    {
      if (a7)
      {
        if (a2 != a4)
        {
          v64 = a2 - 1;
          if (a2 - 1 != a4)
          {
            v65 = 0;
            v66 = a2 - 1;
            do
            {
              v68 = *--v66;
              v67 = v68;
              v69 = *v64;
              if (v68 < v69)
              {
                v70 = v65;
                v71 = a2;
                do
                {
                  v72 = v71;
                  *(v71 - 2) = v69;
                  if (!v70)
                  {
                    break;
                  }

                  ++v71;
                  v69 = *v72;
                  v70 -= 4;
                }

                while (v67 < *v72);
                *(v72 - 1) = v67;
              }

              --a2;
              v65 += 4;
              v64 = v66;
            }

            while (v66 != a4);
          }
        }
      }

      else if (a2 != a4)
      {
        v76 = a2 - 1;
        if (a2 - 1 != a4)
        {
          v77 = a2 - 1;
          do
          {
            v78 = v76 + 1;
            v80 = *--v77;
            v79 = v80;
            if (v80 < *v76)
            {
              do
              {
                *(v76 - 1) = *(v78 - 1);
                v81 = *v78;
                v76 = v78++;
              }

              while (v79 < v81);
              *(v78 - 2) = v79;
            }

            v76 = v77;
          }

          while (v77 != a4);
        }
      }

      return;
    }

    if (i == 1)
    {
      if (a2 != a4)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, a2, a3, a4, a3, a4, a5);
      }

      return;
    }

    v16 = ((a2 - a4) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = (a2 - v16);
    v18 = a2 - v16;
    v19 = *a4;
    if (v15 >= 0x81)
    {
      v20 = *(v18 - 1);
      v21 = *(a2 - 1);
      if (v20 >= v21)
      {
        if (v19 < v20)
        {
          *(v18 - 1) = v19;
          *a4 = v20;
          v24 = *(v18 - 1);
          v25 = *(a2 - 1);
          if (v24 < v25)
          {
            *(a2 - 1) = v24;
            *(v18 - 1) = v25;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          *(a2 - 1) = v19;
          goto LABEL_26;
        }

        *(a2 - 1) = v20;
        *(v18 - 1) = v21;
        if (*a4 < v21)
        {
          *(v18 - 1) = *a4;
LABEL_26:
          *a4 = v21;
        }
      }

      v30 = *v17;
      v28 = v17 + 1;
      v29 = v30;
      v31 = *(a2 - 2);
      v32 = a4[1];
      if (v30 >= v31)
      {
        if (v32 < v29)
        {
          *(v28 - 1) = v32;
          a4[1] = v29;
          v33 = *(v28 - 1);
          v34 = *(a2 - 2);
          if (v33 < v34)
          {
            *(a2 - 2) = v33;
            *(v28 - 1) = v34;
          }
        }
      }

      else
      {
        if (v32 < v29)
        {
          *(a2 - 2) = v32;
          goto LABEL_38;
        }

        *(a2 - 2) = v29;
        *(v28 - 1) = v31;
        v35 = a4[1];
        if (v35 < v31)
        {
          *(v28 - 1) = v35;
LABEL_38:
          a4[1] = v31;
        }
      }

      v36 = a2 - v16 - 4;
      v37 = *(v36 - 1);
      v38 = *(a2 - 3);
      v39 = a4[2];
      if (v37 >= v38)
      {
        if (v39 < v37)
        {
          *(v36 - 1) = v39;
          a4[2] = v37;
          v40 = *(v36 - 1);
          v41 = *(a2 - 3);
          if (v40 < v41)
          {
            *(a2 - 3) = v40;
            *(v36 - 1) = v41;
          }
        }
      }

      else
      {
        if (v39 < v37)
        {
          *(a2 - 3) = v39;
          goto LABEL_47;
        }

        *(a2 - 3) = v37;
        *(v36 - 1) = v38;
        v42 = a4[2];
        if (v42 < v38)
        {
          *(v36 - 1) = v42;
LABEL_47:
          a4[2] = v38;
        }
      }

      v43 = *(v18 - 1);
      v44 = *(v28 - 1);
      v45 = *(v36 - 1);
      if (v43 >= v44)
      {
        if (v45 < v43)
        {
          *(v18 - 1) = v45;
          *(v36 - 1) = v43;
          v46 = *(v18 - 1);
          v47 = *(v28 - 1);
          if (v46 < v47)
          {
            *(v28 - 1) = v46;
            *(v18 - 1) = v47;
          }
        }
      }

      else
      {
        if (v45 < v43)
        {
          *(v28 - 1) = v45;
          goto LABEL_56;
        }

        *(v28 - 1) = v43;
        *(v18 - 1) = v44;
        v48 = *(v36 - 1);
        if (v48 < v44)
        {
          *(v18 - 1) = v48;
LABEL_56:
          *(v36 - 1) = v44;
        }
      }

      v49 = *(a2 - 1);
      *(a2 - 1) = *(v18 - 1);
      *(v18 - 1) = v49;
      goto LABEL_58;
    }

    v22 = *(a2 - 1);
    v23 = *(v18 - 1);
    if (v22 >= v23)
    {
      if (v19 < v22)
      {
        *(a2 - 1) = v19;
        *a4 = v22;
        v26 = *(a2 - 1);
        v27 = *(v18 - 1);
        if (v26 < v27)
        {
          *(v18 - 1) = v26;
          *(a2 - 1) = v27;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        *(v18 - 1) = v19;
LABEL_35:
        *a4 = v23;
        goto LABEL_58;
      }

      *(v18 - 1) = v22;
      *(a2 - 1) = v23;
      if (*a4 < v23)
      {
        *(a2 - 1) = *a4;
        goto LABEL_35;
      }
    }

LABEL_58:
    if ((a7 & 1) != 0 || *a2 < *(a2 - 1))
    {
      std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,std::__less<void,void> &>(a2, a4, &v90);
      v52 = v90;
      v53 = v91;
      a6 = -i;
      if (v92 == 1)
      {
        v89 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, a2, v90, v91);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>((v53 - 1), v53 - 1, a3, a4))
        {
          a3 = v52;
          a4 = v53;
          if ((v89 & 1) == 0)
          {
            goto LABEL_1;
          }

          return;
        }

        if (v89)
        {
          a1 = v52;
          a2 = v53 - 1;
          goto LABEL_1;
        }
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(a1, a2, v52, v53, a5, a6, a7 & 1);
      a7 = 0;
      a2 = v53 - 1;
      a1 = v52;
      goto LABEL_1;
    }

    std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,std::__less<void,void> &>(a1, a2, a3, a4);
    a1 = v50;
    a2 = v51;
    a7 = 0;
  }

  v55 = *(a2 - 2);
  v54 = *(a2 - 1);
  v56 = *a4;
  if (v55 >= v54)
  {
    if (v56 >= v55)
    {
      return;
    }

    *(a2 - 2) = v56;
    *a4 = v55;
    v73 = *(a2 - 2);
    goto LABEL_130;
  }

  if (v56 >= v55)
  {
    *(a2 - 2) = v54;
    *(a2 - 1) = v55;
    if (*a4 >= v54)
    {
      return;
    }

    *(a2 - 2) = *a4;
  }

  else
  {
    *(a2 - 1) = v56;
  }

  *a4 = v54;
}

void std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,std::__less<void,void> &>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  v4 = *(a2 - 1);
  if (v4 >= *a4)
  {
    v8 = a2 - 1;
    do
    {
      v6 = v8;
      if (v8 <= a4)
      {
        break;
      }

      --v8;
    }

    while (v4 >= *(v6 - 1));
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = v5 - 1;
      v7 = *(v5 - 2);
      --v5;
    }

    while (v4 >= v7);
  }

  if (v6 > a4)
  {
    do
    {
      v9 = *a4++;
    }

    while (v4 < v9);
  }

  while (v6 > a4)
  {
    v10 = *(v6 - 1);
    *(v6 - 1) = *(a4 - 1);
    *(a4 - 1) = v10;
    do
    {
      v11 = *(v6 - 2);
      --v6;
    }

    while (v4 >= v11);
    do
    {
      v12 = *a4++;
    }

    while (v4 < v12);
  }

  if (a2 != v6 + 1)
  {
    *(a2 - 1) = *v6;
  }

  *v6 = v4;
}

void std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,std::__less<void,void> &>(unint64_t a1@<X1>, unsigned int *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *(a1 - 4);
  v4 = a1 + 4;
  v5 = a1;
  do
  {
    v6 = *(v5 - 8);
    v5 -= 4;
    v4 -= 4;
  }

  while (v6 < v3);
  if (a1 == v4)
  {
    do
    {
      if (v5 <= a2)
      {
        break;
      }

      v7 = *a2++;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v8 = *a2++;
    }

    while (v8 >= v3);
  }

  if (v5 > a2)
  {
    v9 = v5;
    v10 = a2;
    do
    {
      v11 = *(v9 - 4);
      *(v9 - 4) = *(v10 - 1);
      *(v10 - 1) = v11;
      v4 = v9 + 4;
      do
      {
        v12 = *(v9 - 8);
        v9 -= 4;
        v4 -= 4;
      }

      while (v12 < v3);
      do
      {
        v13 = *v10++;
      }

      while (v13 >= v3);
    }

    while (v9 > v10);
  }

  if (a1 != v4)
  {
    *(a1 - 4) = *(v4 - 4);
  }

  *(v4 - 4) = v3;
  *a3 = v4;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5 <= a2;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a2 - a4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v12 = *(a2 - 2);
      v11 = *(a2 - 1);
      v13 = *a4;
      if (v12 < v11)
      {
        if (v13 >= v12)
        {
          *(a2 - 2) = v11;
          *(a2 - 1) = v12;
          if (*a4 >= v11)
          {
            goto LABEL_3;
          }

          *(a2 - 2) = *a4;
        }

        else
        {
          *(a2 - 1) = v13;
        }

        *a4 = v11;
        goto LABEL_3;
      }

      if (v13 >= v12)
      {
LABEL_3:
        v5 = 1;
        return v5 & 1;
      }

      *(a2 - 2) = v13;
      *a4 = v12;
      v21 = *(a2 - 2);
LABEL_69:
      v40 = *(a2 - 1);
      if (v21 < v40)
      {
        *(a2 - 2) = v40;
        *(a2 - 1) = v21;
      }

      goto LABEL_3;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_17;
      }

      v7 = *(a2 - 2);
      v8 = *(a2 - 1);
      v9 = *(a2 - 3);
      if (v7 >= v8)
      {
        if (v9 >= v7)
        {
          v7 = *(a2 - 3);
        }

        else
        {
          *(a2 - 3) = v7;
          *(a2 - 2) = v9;
          v23 = *(a2 - 1);
          if (v9 < v23)
          {
            *(a2 - 2) = v23;
            *(a2 - 1) = v9;
            v7 = *(a2 - 3);
          }
        }

        goto LABEL_54;
      }

      if (v9 >= v7)
      {
        *(a2 - 2) = v8;
        *(a2 - 1) = v7;
        v7 = *(a2 - 3);
        if (v7 >= v8)
        {
          goto LABEL_54;
        }

        *(a2 - 2) = v7;
      }

      else
      {
        *(a2 - 1) = v9;
      }

      *(a2 - 3) = v8;
      v7 = v8;
LABEL_54:
      v34 = *(a2 - 4);
      if (v34 < v7)
      {
        *(a2 - 4) = v7;
        *(a2 - 3) = v34;
        v35 = *(a2 - 2);
        if (v34 < v35)
        {
          *(a2 - 3) = v35;
          *(a2 - 2) = v34;
          v36 = *(a2 - 1);
          if (v34 < v36)
          {
            *(a2 - 2) = v36;
            *(a2 - 1) = v34;
          }
        }
      }

      v37 = *(a2 - 4);
      if (*a4 >= v37)
      {
        goto LABEL_3;
      }

      *(a2 - 4) = *a4;
      *a4 = v37;
      v21 = *(a2 - 4);
      v38 = *(a2 - 3);
      if (v21 >= v38)
      {
        goto LABEL_3;
      }

      *(a2 - 4) = v38;
      *(a2 - 3) = v21;
LABEL_67:
      v39 = *(a2 - 2);
      if (v21 >= v39)
      {
        goto LABEL_3;
      }

      *(a2 - 3) = v39;
      *(a2 - 2) = v21;
      goto LABEL_69;
    }

    v18 = *(a2 - 2);
    v19 = *(a2 - 1);
    v20 = *(a2 - 3);
    if (v18 >= v19)
    {
      if (v20 >= v18)
      {
        v18 = *(a2 - 3);
      }

      else
      {
        *(a2 - 3) = v18;
        *(a2 - 2) = v20;
        v24 = *(a2 - 1);
        if (v20 < v24)
        {
          *(a2 - 2) = v24;
          *(a2 - 1) = v20;
          v18 = *(a2 - 3);
        }
      }

      goto LABEL_65;
    }

    if (v20 >= v18)
    {
      *(a2 - 2) = v19;
      *(a2 - 1) = v18;
      v18 = *(a2 - 3);
      if (v18 >= v19)
      {
LABEL_65:
        if (*a4 >= v18)
        {
          goto LABEL_3;
        }

        *(a2 - 3) = *a4;
        *a4 = v18;
        v21 = *(a2 - 3);
        goto LABEL_67;
      }

      *(a2 - 2) = v18;
    }

    else
    {
      *(a2 - 1) = v20;
    }

    *(a2 - 3) = v19;
    v18 = v19;
    goto LABEL_65;
  }

  if (v4 < 2)
  {
    goto LABEL_3;
  }

  if (v4 == 2)
  {
    v10 = *(a2 - 1);
    if (*a4 < v10)
    {
      *(a2 - 1) = *a4;
      *a4 = v10;
    }

    goto LABEL_3;
  }

LABEL_17:
  v16 = *(a2 - 2);
  v15 = *(a2 - 1);
  v14 = a2 - 2;
  v17 = *(a2 - 3);
  if (v16 >= v15)
  {
    if (v17 < v16)
    {
      *(a2 - 3) = v16;
      *(a2 - 2) = v17;
      v22 = *(a2 - 1);
      if (v17 < v22)
      {
        *(a2 - 2) = v22;
        *(a2 - 1) = v17;
      }
    }

    goto LABEL_40;
  }

  if (v17 < v16)
  {
    *(a2 - 1) = v17;
LABEL_39:
    *(a2 - 3) = v15;
    goto LABEL_40;
  }

  *(a2 - 2) = v15;
  *(a2 - 1) = v16;
  v25 = *(a2 - 3);
  if (v25 < v15)
  {
    *(a2 - 2) = v25;
    goto LABEL_39;
  }

LABEL_40:
  v26 = a2 - 3;
  if (a2 - 3 == a4)
  {
LABEL_48:
    v33 = 1;
  }

  else
  {
    v27 = 0;
    v28 = a2 - 3;
    while (1)
    {
      v30 = *--v28;
      v29 = v30;
      if (v30 < *(v14 - 1))
      {
        v31 = v26;
        do
        {
          v32 = v14;
          *(v31 - 1) = *(v14 - 1);
          if (v14 == a2)
          {
            break;
          }

          ++v14;
          v31 = v32;
        }

        while (v29 < *v32);
        *(v32 - 1) = v29;
        if (++v27 == 8)
        {
          break;
        }
      }

      v14 = v26;
      v26 = v28;
      if (v28 == a4)
      {
        goto LABEL_48;
      }
    }

    v33 = 0;
    LOBYTE(v26) = v28 == a4;
  }

  v5 = v33 | v26;
  return v5 & 1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v8 = a2 - a4;
  if (a2 != a4)
  {
    a5 = a3;
    v14 = v8 >> 2;
    v15 = __OFSUB__(v8 >> 2, 2);
    v16 = (v8 >> 2) - 2;
    if (v16 < 0 == v15)
    {
      v17 = v16 >> 1;
      v18 = v17 + 1;
      v19 = a2 - 4 * v17;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, a2, a7, v14, v19, v19);
        v19 += 4;
        --v18;
      }

      while (v18);
    }

    if (a4 != a6)
    {
      v20 = a4;
      do
      {
        v22 = *--v20;
        v21 = v22;
        v23 = *(a2 - 4);
        if (v22 < v23)
        {
          *v20 = v23;
          *(a2 - 4) = v21;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, a2, a7, v14, a1, a2);
        }
      }

      while (v20 != a6);
    }

    if (v14 >= 2)
    {
      v24 = a4 + 1;
      do
      {
        v25 = *(a2 - 4);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, a2, a7, v14);
        if (v24 == v27)
        {
          *(v27 - 1) = v25;
        }

        else
        {
          *(v27 - 1) = *(v24 - 1);
          *(v24 - 1) = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, a2, v26, v27 - 1, a7, (a2 - (v27 - 1)) >> 2);
        }

        ++v24;
      }

      while (v14-- > 2);
    }
  }

  return a5;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v6 = a2 - a6;
    v7 = (a4 - 2) >> 1;
    if (v7 >= (a2 - a6) >> 2)
    {
      v8 = v6 >> 1;
      v9 = (v6 >> 1) | 1;
      v10 = a2 - 4 * v9;
      v11 = v8 + 2;
      if (v11 < a4 && *(v10 - 4) < *(v10 - 8))
      {
        v10 -= 4;
        v9 = v11;
      }

      v12 = *(v10 - 4);
      v13 = *(a6 - 4);
      if (v12 >= v13)
      {
        do
        {
          *(a6 - 4) = v12;
          a6 = v10;
          if (v7 < v9)
          {
            break;
          }

          v14 = (2 * v9) | 1;
          v10 = a2 - 4 * v14;
          v9 = 2 * v9 + 2;
          if (v9 >= a4)
          {
            v9 = v14;
          }

          else if (*(v10 - 4) >= *(v10 - 8))
          {
            v9 = v14;
          }

          else
          {
            v10 -= 4;
          }

          v12 = *(v10 - 4);
        }

        while (v12 >= v13);
        *(a6 - 4) = v13;
      }
    }
  }
}

void std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = a2 + 4 * ~v4;
    v6 = (2 * v4) | 1;
    v7 = 2 * v4 + 2;
    if (v7 < a4 && *(v5 - 4) < *(v5 - 8))
    {
      v5 -= 4;
      v6 = v7;
    }

    *(a2 - 4) = *(v5 - 4);
    a2 = v5;
    v4 = v6;
  }

  while (v6 <= (a4 - 2) / 2);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (a6 >= 2)
  {
    v6 = (a6 - 2) >> 1;
    v7 = (a2 - 4 * v6);
    v8 = *(v7 - 1);
    v9 = *a4;
    if (v8 < *a4)
    {
      v10 = a4 + 1;
      do
      {
        v11 = v7;
        *(v10 - 1) = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a2 - 4 * v6);
        v8 = *(v7 - 1);
        v10 = v11;
      }

      while (v8 < v9);
      *(v11 - 1) = v9;
    }
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<vega::dictionary::Page const>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<vega::dictionary::Page const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::destroy(a1, a2[1]);
    std::__tree<unsigned int>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *std::__shared_ptr_emplace<vega::dictionary::Page const>::__shared_ptr_emplace[abi:ne200100]<std::string const&,vega::TagMask const&,vega::MultiVR const&,vega::VM const&,std::allocator<vega::dictionary::Page>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917C50;
  vega::dictionary::Page::Page(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<vega::dictionary::Page const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dictionary::Page const>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::find<std::string>(uint64_t a1, void **a2)
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

std::string *std::__shared_ptr_emplace<vega::dictionary::PrivateOwner>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<vega::dictionary::PrivateOwner>,0>(std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F1917CA0;
  vega::dictionary::PrivateOwner::PrivateOwner(a1 + 1, a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dictionary::PrivateOwner>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__destroy_at[abi:ne200100]<vega::dictionary::PrivateOwner,0>(uint64_t a1)
{
  std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::__emplace_unique_key_args<std::string,std::string const&,std::shared_ptr<vega::dictionary::PrivateOwner>&>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::__construct_node<std::string const&,std::shared_ptr<vega::dictionary::PrivateOwner>&>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<vega::dictionary::Page const>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::shared_ptr<vega::dictionary::PrivateOwner>>::pair[abi:ne200100]<std::string const&,std::shared_ptr<vega::dictionary::PrivateOwner>&,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *std::__shared_ptr_emplace<vega::dictionary::Page const>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dictionary::PrivateOwner> &,std::string const&,vega::TagMask const&,vega::MultiVR const&,vega::VM const&,std::allocator<vega::dictionary::Page>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917C50;
  std::construct_at[abi:ne200100]<vega::dictionary::Page,std::shared_ptr<vega::dictionary::PrivateOwner> &,std::string const&,vega::TagMask const&,vega::MultiVR const&,vega::VM const&,vega::dictionary::Page*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dictionary::Page,std::shared_ptr<vega::dictionary::PrivateOwner> &,std::string const&,vega::TagMask const&,vega::MultiVR const&,vega::VM const&,vega::dictionary::Page*>(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dictionary::Page::Page(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void sub_1A59FED4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dictionary::Page const>::__shared_ptr_emplace[abi:ne200100]<std::string,vega::TagMask,vega::MultiVR,vega::VM,std::allocator<vega::dictionary::Page>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917C50;
  vega::dictionary::Page::Page(a1 + 3);
  return a1;
}

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::shared_ptr<vega::dictionary::Page const> const&>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::PrivateOwner>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vega::dictionary::Page const>>>>::__construct_node<std::string const&,std::shared_ptr<vega::dictionary::Page const> const&>();
  }

  return v2;
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::__emplace_unique_key_args<unsigned int,unsigned int &,std::set<vega::Tag>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::__construct_node<unsigned int &,std::set<vega::Tag>>();
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

uint64_t std::__tree<vega::Tag>::__emplace_unique_key_args<vega::Tag,vega::Tag const&>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<vega::Tag>::__find_equal<vega::Tag>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

unsigned __int16 *std::__tree<vega::Tag>::__find_equal<vega::Tag>(uint64_t a1, unsigned __int16 **a2, unsigned __int16 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!vega::Tag::operator<(a3, v4 + 13))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!vega::Tag::operator<(v7 + 13, a3))
      {
        break;
      }

      v5 = v7 + 4;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(uint64_t a1, unsigned __int16 *a2)
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
    v6 = vega::Tag::operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || vega::Tag::operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag const&,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>(uint64_t a1, unsigned __int16 *a2)
{
  result = *std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::__find_equal<vega::Tag>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned int,std::set<vega::Tag>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<vega::Tag>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<vega::Tag>>>>::__construct_node<unsigned int &,std::set<vega::Tag>>();
  }

  return result;
}

unsigned __int16 *std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::__find_equal<vega::Tag>(uint64_t a1, unsigned __int16 **a2, unsigned __int16 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!vega::Tag::operator<(a3, v4 + 16))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!vega::Tag::operator<(v7 + 16, a3))
      {
        break;
      }

      v5 = v7 + 4;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag const&,std::shared_ptr<vega::dictionary::Page const> const&>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::__find_equal<vega::Tag>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

double vega::math::frexp10(vega::math *this, double a2, int *a3)
{
  if (a2 == 0.0)
  {
    *this = 0;
    return 0.0;
  }

  else
  {
    v6 = log10(fabs(a2));
    *this = v6 - (v6 < v6);
    return __exp10(((v6 < v6) - v6)) * a2;
  }
}

uint64_t vega::math::popcount(vega::math *this)
{
  v1 = vcnt_s8(this);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void vega::manipulator_for (vega *this, const vega::dicom::DataElement *a2)
{
  v3 = vega::dictionary::Page::name(this);
  if (vega::Tag::operator==(v3, vega::Tag::PIXEL_DATA))
  {
    if (vega::dicom::DataElement::is_undefined_length(this))
    {
      operator new();
    }

    operator new();
  }

  v4 = vega::dicom::DataElement::vr(this);
  vega::vr::AE(v4);
  if (vega::Word::operator==(v4, &_MergedGlobals_15))
  {
    operator new();
  }

  v5 = vega::dicom::DataElement::vr(this);
  vega::vr::AS(v5);
  if (vega::Word::operator==(v5, &word_1ED6FA792))
  {
    operator new();
  }

  v6 = vega::dicom::DataElement::vr(this);
  vega::vr::AT(v6);
  if (vega::Word::operator==(v6, &word_1ED6FA794))
  {
    operator new();
  }

  v7 = vega::dicom::DataElement::vr(this);
  vega::vr::CS(v7);
  if (vega::Word::operator==(v7, &word_1ED6FA796))
  {
    operator new();
  }

  v8 = vega::dicom::DataElement::vr(this);
  vega::vr::DA(v8);
  if (vega::Word::operator==(v8, &word_1ED6FA798))
  {
    operator new();
  }

  v9 = vega::dicom::DataElement::vr(this);
  vega::vr::DS(v9);
  if (vega::Word::operator==(v9, &word_1ED6FA79A))
  {
    operator new();
  }

  v10 = vega::dicom::DataElement::vr(this);
  vega::vr::DT(v10);
  if (vega::Word::operator==(v10, &word_1ED6FA79C))
  {
    operator new();
  }

  v11 = vega::dicom::DataElement::vr(this);
  vega::vr::FL(v11);
  if (vega::Word::operator==(v11, &word_1ED6FA79E))
  {
    operator new();
  }

  v12 = vega::dicom::DataElement::vr(this);
  vega::vr::FD(v12);
  if (vega::Word::operator==(v12, &word_1ED6FA7A0))
  {
    operator new();
  }

  v13 = vega::dicom::DataElement::vr(this);
  vega::vr::IS(v13);
  if (vega::Word::operator==(v13, &word_1ED6FA7A2))
  {
    operator new();
  }

  v14 = vega::dicom::DataElement::vr(this);
  vega::vr::LO(v14);
  if (vega::Word::operator==(v14, &word_1ED6FA7A4))
  {
    operator new();
  }

  v15 = vega::dicom::DataElement::vr(this);
  vega::vr::LT(v15);
  if (vega::Word::operator==(v15, &word_1ED6FA7A6))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega12manipulators19LongTextManipulatorENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v16 = vega::dicom::DataElement::vr(this);
  vega::vr::OB(v16);
  if (vega::Word::operator==(v16, &word_1ED6FA7A8))
  {
    operator new();
  }

  v17 = vega::dicom::DataElement::vr(this);
  vega::vr::OW(v17);
  if (vega::Word::operator==(v17, &word_1ED6FA7AA))
  {
    operator new();
  }

  v18 = vega::dicom::DataElement::vr(this);
  vega::vr::OF(v18);
  if (vega::Word::operator==(v18, &word_1ED6FA7AC))
  {
    operator new();
  }

  v19 = vega::dicom::DataElement::vr(this);
  vega::vr::OD(v19);
  if (vega::Word::operator==(v19, &word_1ED6FA7AE))
  {
    operator new();
  }

  v20 = vega::dicom::DataElement::vr(this);
  vega::vr::PN(v20);
  if (vega::Word::operator==(v20, &word_1ED6FA7B0))
  {
    operator new();
  }

  v21 = vega::dicom::DataElement::vr(this);
  vega::vr::SH(v21);
  if (vega::Word::operator==(v21, &word_1ED6FA7B2))
  {
    operator new();
  }

  v22 = vega::dicom::DataElement::vr(this);
  vega::vr::SL(v22);
  if (vega::Word::operator==(v22, &word_1ED6FA7B4))
  {
    operator new();
  }

  v23 = vega::dicom::DataElement::vr(this);
  vega::vr::SS(v23);
  if (vega::Word::operator==(v23, &word_1ED6FA7B6))
  {
    operator new();
  }

  v24 = vega::dicom::DataElement::vr(this);
  vega::vr::ST(v24);
  if (vega::Word::operator==(v24, &word_1ED6FA7B8))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega12manipulators20ShortTextManipulatorENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v25 = vega::dicom::DataElement::vr(this);
  vega::vr::TM(v25);
  if (vega::Word::operator==(v25, &word_1ED6FA7BA))
  {
    operator new();
  }

  v26 = vega::dicom::DataElement::vr(this);
  vega::vr::UI(v26);
  if (vega::Word::operator==(v26, &word_1ED6FA7BC))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega12manipulators27UniqueIdentifierManipulatorENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v27 = vega::dicom::DataElement::vr(this);
  vega::vr::UL(v27);
  if (vega::Word::operator==(v27, &word_1ED6FA7BE))
  {
    operator new();
  }

  v28 = vega::dicom::DataElement::vr(this);
  vega::vr::UN(v28);
  if (vega::Word::operator==(v28, &word_1ED6FA7C0))
  {
    operator new();
  }

  v29 = vega::dicom::DataElement::vr(this);
  vega::vr::US(v29);
  if (vega::Word::operator==(v29, &word_1ED6FA7C2))
  {
    operator new();
  }

  v30 = vega::dicom::DataElement::vr(this);
  vega::vr::UT(v30);
  if (vega::Word::operator==(v30, &word_1ED6FA7C4))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega12manipulators24UnlimitedTextManipulatorENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v31 = vega::dicom::DataElement::vr(this);
  vega::vr::SV(v31);
  if (vega::Word::operator==(v31, &word_1ED6FA7C6))
  {
    operator new();
  }

  v32 = vega::dicom::DataElement::vr(this);
  vega::vr::UV(v32);
  if (vega::Word::operator==(v32, &word_1ED6FA7C8))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v53, "Unhandled VR ");
  v34 = vega::dicom::DataElement::vr(this);
  vega::VR::str(v34, v51);
  if ((v52 & 0x80u) == 0)
  {
    v35 = v51;
  }

  else
  {
    v35 = v51[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = v51[1];
  }

  v37 = std::string::append(&v53, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v49, " with tag ");
  if ((v50 & 0x80u) == 0)
  {
    v39 = v49;
  }

  else
  {
    v39 = v49[0];
  }

  if ((v50 & 0x80u) == 0)
  {
    v40 = v50;
  }

  else
  {
    v40 = v49[1];
  }

  v41 = std::string::append(&v54, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  vega::dictionary::Page::name(this);
  vega::Tag::str(v47);
  if ((v48 & 0x80u) == 0)
  {
    v43 = v47;
  }

  else
  {
    v43 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v44 = v48;
  }

  else
  {
    v44 = v47[1];
  }

  v45 = std::string::append(&v55, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, &v56);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A5A00550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v39 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_18;
  }

  __cxa_free_exception(v38);
  goto LABEL_18;
}

void vega::vr::AE(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA7D0, memory_order_acquire) & 1) == 0)
  {
    vega::vr::AE();
  }
}

void vega::vr::AS(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA7D8, memory_order_acquire) & 1) == 0)
  {
    vega::vr::AS();
  }
}

void vega::vr::CS(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA7E8, memory_order_acquire) & 1) == 0)
  {
    vega::vr::CS();
  }
}

void vega::vr::DA(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA7F0, memory_order_acquire) & 1) == 0)
  {
    vega::vr::DA();
  }
}

void vega::vr::DS(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA7F8, memory_order_acquire) & 1) == 0)
  {
    vega::vr::DS();
  }
}

void vega::vr::DT(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA800, memory_order_acquire) & 1) == 0)
  {
    vega::vr::DT();
  }
}

void vega::vr::IS(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA818, memory_order_acquire) & 1) == 0)
  {
    vega::vr::IS();
  }
}

void vega::vr::LO(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA820, memory_order_acquire) & 1) == 0)
  {
    vega::vr::LO();
  }
}

void vega::vr::LT(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA828, memory_order_acquire) & 1) == 0)
  {
    vega::vr::LT();
  }
}

void vega::vr::OF(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA840, memory_order_acquire) & 1) == 0)
  {
    vega::vr::OF();
  }
}

void vega::vr::OD(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA848, memory_order_acquire) & 1) == 0)
  {
    vega::vr::OD();
  }
}

void vega::vr::PN(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA850, memory_order_acquire) & 1) == 0)
  {
    vega::vr::PN();
  }
}

void vega::vr::SH(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA858, memory_order_acquire) & 1) == 0)
  {
    vega::vr::SH();
  }
}

void vega::vr::SL(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA860, memory_order_acquire) & 1) == 0)
  {
    vega::vr::SL();
  }
}

void vega::vr::ST(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA870, memory_order_acquire) & 1) == 0)
  {
    vega::vr::ST();
  }
}

void vega::vr::TM(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA878, memory_order_acquire) & 1) == 0)
  {
    vega::vr::TM();
  }
}

void vega::vr::UI(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA880, memory_order_acquire) & 1) == 0)
  {
    vega::vr::UI();
  }
}

void vega::vr::UL(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA888, memory_order_acquire) & 1) == 0)
  {
    vega::vr::UL();
  }
}

void vega::vr::UN(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA890, memory_order_acquire) & 1) == 0)
  {
    vega::vr::UN();
  }
}

void vega::vr::UT(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA8A0, memory_order_acquire) & 1) == 0)
  {
    vega::vr::UT();
  }
}

void vega::vr::SV(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA8A8, memory_order_acquire) & 1) == 0)
  {
    vega::vr::SV();
  }
}

void vega::vr::UV(vega::vr *this)
{
  if ((atomic_load_explicit(&qword_1ED6FA8B0, memory_order_acquire) & 1) == 0)
  {
    vega::vr::UV();
  }
}

void std::__shared_ptr_emplace<vega::manipulators::PixelDataManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::PixelDataManipulator::~PixelDataManipulator(vega::manipulators::PixelDataManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Byte>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  if (*(a1 + 16) != *(a1 + 8))
  {
    v4 = 0;
    do
    {
      vega::to_string<vega::Byte>(__p);
      if ((v12 & 0x80u) == 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v6 = v12;
      }

      else
      {
        v6 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v5, v6);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      if (v4 < ~v8 + v7)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
        v8 = *(a1 + 8);
        v7 = *(a1 + 16);
      }

      ++v4;
    }

    while (v4 < v7 - v8);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v9;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

BOOL vega::manipulators::FixedSizeElementManipulator<vega::Byte>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  a1[2] = a1[1];
  if (a3)
  {
    v6 = 0;
    v7 = 1;
    v8 = a3;
    do
    {
      v10 = a1[2];
      v9 = a1[3];
      if (v10 >= v9)
      {
        v12 = a1[1];
        v13 = (v10 - v12);
        v14 = v10 - v12 + 1;
        if (v14 < 0)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v15 = v9 - v12;
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          operator new();
        }

        v17 = v10 - v12;
        *v13 = 0;
        v11 = v13 + 1;
        memcpy(0, v12, v17);
        a1[1] = 0;
        a1[2] = v13 + 1;
        a1[3] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = 0;
        v11 = v10 + 1;
      }

      a1[2] = v11;
      if ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) == 0)
      {
        break;
      }

      v6 = v7++ >= a3;
      --v8;
    }

    while (v8);
  }

  else
  {
    return 1;
  }

  return v6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Byte>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v6 = a1 + 8;
    v4 = *(a1 + 8);
    v5 = *(v6 + 8);
    v7 = *(result + 8);
    if (v5 - v4 == *(result + 16) - v7)
    {
      if (v4 == v5)
      {
        return 1;
      }

      else
      {
        do
        {
          result = vega::Byte::operator==(v4, v7);
          if (!result)
          {
            break;
          }

          ++v4;
          ++v7;
        }

        while (v4 != v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::dicom::RawReader::read_into<vega::Byte>(vega::dicom::IOState *a1)
{
  v2 = vega::dicom::IOState::swap(a1);
  std::istream::read();
  v3 = *(*(a1 + 2) + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else if (!v3)
  {
    return 0;
  }

  return 1;
}

BOOL vega::manipulators::PixelDataManipulator::allows_vr(vega::manipulators::PixelDataManipulator *this, const vega::VR *a2)
{
  vega::vr::OB(this);
  v3 = vega::Word::operator==(this, &word_1ED6FA7A8);
  if (v3)
  {
    return 1;
  }

  vega::vr::OW(v3);
  if (vega::Word::operator==(this, &word_1ED6FA7AA))
  {
    return 1;
  }

  if ((atomic_load_explicit(&qword_1ED6FA8C0, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::PixelDataManipulator::allows_vr();
  }

  v5 = qword_1ED6FA8B8;

  return vega::Word::operator==(this, v5);
}

uint64_t vega::operator<<<std::string>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *a1;
    v4 = *(a2 + 8);
    if (*(a2 + 23) >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v5 = v4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, a2, v5);
  }

  return a1;
}

uint64_t vega::to_json<vega::Byte>@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552920](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
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
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A014B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vega::manipulators::ApplicationEntityManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917E38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::ApplicationEntityManipulator::~ApplicationEntityManipulator(vega::manipulators::ApplicationEntityManipulator *this)
{
  v2 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(this);
  MEMORY[0x1AC552B90](EncodeAccelerationModeOverride, 0xA1C4030951706);
}

void sub_1A5A01668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<std::string>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::to_string<std::string>(v4 + v5, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, p_p, size);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      v7 += v10;
      if (v6 < -1 - 0x5555555555555555 * ((*(a1 + 16) - *(a1 + 8)) >> 3))
      {
        v21[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v21, 1);
        ++v7;
        v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v11 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 3));
    if (v7)
    {
      __p.__r_.__value_.__s.__data_[0] = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, a2);
  v15[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v12;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v20);
}

BOOL vega::manipulators::PaddedStringManipulator<std::string>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        std::vector<std::string>::clear[abi:ne200100]((a1 + 8));
        std::vector<std::string>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<std::string>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    std::vector<std::string>::clear[abi:ne200100]((a1 + 8));
    return 1;
  }

  return v6;
}

void sub_1A5A01B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<std::string>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A01C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::ApplicationEntityManipulator::is_valid_for (vega::manipulators::ApplicationEntityManipulator *this, const vega::VR *a2)
{
  vega::vr::AE(this);

  return vega::Word::operator==(a2, &_MergedGlobals_15);
}

BOOL vega::manipulators::PaddedStringManipulator<std::string>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A01DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<std::string>::parse_from_string(void *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v26, a2, 8);
  memset(&__str, 0, sizeof(__str));
  v3 = a1 + 1;
  std::vector<std::string>::clear[abi:ne200100](a1 + 1);
  while (1)
  {
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v6 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v6 == 32)
        {
          std::string::basic_string(&v31, &__str, 0, size - 1, &__p);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = *&v31.__first_;
          __str.__r_.__value_.__r.__words[2] = v31.__end_;
        }

        vega::to_string<std::string>(&__str, &__p);
        v8 = a1[2];
        v7 = a1[3];
        if (v8 >= v7)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v3) >> 3);
          v11 = v10 + 1;
          if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v3) >> 3);
          if (2 * v12 > v11)
          {
            v11 = 2 * v12;
          }

          if (v12 >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v11;
          }

          v31.__end_cap_.__value_ = (a1 + 1);
          if (v13)
          {
            std::allocator<std::string>::allocate_at_least[abi:ne200100]((a1 + 1), v13);
          }

          v14 = 24 * v10;
          v15 = *&__p.__r_.__value_.__l.__data_;
          *(v14 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v14 = v15;
          memset(&__p, 0, sizeof(__p));
          v16 = 24 * v10 + 24;
          v17 = a1[1];
          v18 = a1[2] - v17;
          v19 = 24 * v10 - v18;
          memcpy((v14 - v18), v17, v18);
          v20 = a1[1];
          a1[1] = v19;
          a1[2] = v16;
          v21 = a1[3];
          a1[3] = 0;
          v31.__end_ = v20;
          v31.__end_cap_.__value_ = v21;
          v31.__first_ = v20;
          v31.__begin_ = v20;
          std::__split_buffer<std::string>::~__split_buffer(&v31);
          v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          a1[2] = v16;
          if (v22 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v9 = *&__p.__r_.__value_.__l.__data_;
          *(v8 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v8 = v9;
          a1[2] = v8 + 24;
        }
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v6 = *(&__p.__r_.__value_.__r.__words[2] + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 7);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v26[0] = *MEMORY[0x1E69E54E0];
  *(v26 + *(v26[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v30);
}

void sub_1A5A0219C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::istringstream::~istringstream(&a23);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::string>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A02368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>(uint64_t a1, uint64_t *a2)
{
  v13 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
  v4 = *(a2 + 23);
  v5 = a2[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a2 + 23);
  }

  if (v5)
  {
    v6 = 0;
    v7 = v4 >> 63;
    do
    {
      if (v7)
      {
        v8 = *a2;
      }

      else
      {
        v8 = a2;
      }

      v9 = *(v8 + v6);
      if (v9 <= 11)
      {
        switch(v9)
        {
          case 8:
            v13 = 92;
            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
            v13 = 98;
            break;
          case 9:
            v13 = 92;
            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
            v13 = 116;
            break;
          case 10:
            v13 = 92;
            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
            v13 = 110;
            break;
          default:
            goto LABEL_21;
        }
      }

      else if (v9 > 33)
      {
        if (v9 == 34)
        {
          v13 = 92;
          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
          v13 = 34;
          goto LABEL_25;
        }

        if (v9 != 92)
        {
          goto LABEL_21;
        }

        v13 = 92;
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
        v13 = 92;
      }

      else
      {
        if (v9 == 12)
        {
          v13 = 92;
          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
          v13 = 102;
          goto LABEL_25;
        }

        if (v9 != 13)
        {
LABEL_21:
          v13 = v9;
          v10 = (a1 + 16);
          goto LABEL_25;
        }

        v13 = 92;
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
        v13 = 114;
      }

LABEL_25:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v13, 1);
      ++v6;
      v11 = *(a2 + 23);
      v7 = v11 >> 63;
      if ((v11 & 0x80000000) != 0)
      {
        v11 = a2[1];
      }
    }

    while (v6 < v11);
  }

  v13 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v13, 1);
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::AgeStringManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::AgeStringManipulator::~AgeStringManipulator(vega::manipulators::AgeStringManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

void sub_1A5A02724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Age>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::Age::str((v4 + v5), &__p);
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < ((*(a1 + 16) - *(a1 + 8)) >> 2) - 1)
      {
        v23 = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 4;
    }

    while (v6 < (*(a1 + 16) - v4) >> 2);
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Age>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        a1[2] = a1[1];
        std::vector<vega::Age>::reserve(a1 + 1, v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::Age>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    a1[2] = a1[1];
    return 1;
  }

  return v6;
}

void sub_1A5A02C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Age>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A02CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::AgeStringManipulator::is_valid_for (vega::manipulators::AgeStringManipulator *this, const vega::VR *a2)
{
  vega::vr::AS(this);

  return vega::Word::operator==(a2, &word_1ED6FA792);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Age>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A02EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<vega::Age>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::allocator<vega::Age>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Age>::parse_from_string(void *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v22, a2, 8);
  memset(&__str, 0, sizeof(__str));
  v3 = a1 + 1;
  a1[2] = a1[1];
  while (1)
  {
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v22, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v6 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v6 == 32)
        {
          std::string::basic_string(&v20, &__str, 0, size - 1, &v27);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v20;
        }

        vega::Age::Age(&v20, &__str);
        v8 = a1[2];
        v7 = a1[3];
        if (v8 >= v7)
        {
          v10 = (v8 - *v3) >> 2;
          if ((v10 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v11 = v7 - *v3;
          v12 = v11 >> 1;
          if (v11 >> 1 <= (v10 + 1))
          {
            v12 = v10 + 1;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v13 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          if (v13)
          {
            std::allocator<vega::Age>::allocate_at_least[abi:ne200100]((a1 + 1), v13);
          }

          v14 = (4 * v10);
          *v14 = v20.__r_.__value_.__l.__data_ & 0xFFFFFF;
          v9 = 4 * v10 + 4;
          v15 = a1[1];
          v16 = a1[2] - v15;
          v17 = v14 - v16;
          memcpy(v14 - v16, v15, v16);
          v18 = a1[1];
          a1[1] = v17;
          a1[2] = v9;
          a1[3] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v8 = v20.__r_.__value_.__l.__data_ & 0xFFFFFF;
          v9 = (v8 + 1);
        }

        a1[2] = v9;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v6 = *(&v20.__r_.__value_.__r.__words[2] + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 7);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v22[0] = *MEMORY[0x1E69E54E0];
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v26);
}

void sub_1A5A03294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a19);
  _Unwind_Resume(a1);
}

void std::allocator<vega::Age>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<vega::Age>,(vega::manipulators::PaddedStringManipulator<vega::Age>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = (v5 - v4) >> 2;
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::Age>(a1, v4);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<vega::Age>(a1, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 2;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 2;
        }

        ++v10;
        v9 += 2;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<vega::Age>(uint64_t a1, unsigned __int16 *a2)
{
  vega::to_json<vega::Age>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A034D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<vega::Age>@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Age>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A03670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Age>(uint64_t a1, unsigned __int16 *a2)
{
  v7 = 34;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v7, 1);
  v5 = vega::operator<<(v4, a2);
  v8 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  return a1;
}

void vega::Json::from_json<vega::manipulators::PaddedStringManipulator<vega::Age> &,vega::Age>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v35 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<vega::Age>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = (v7 - v24) >> 2;
      if ((v25 + 1) >> 62)
      {
LABEL_35:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v26 = v6 - v24;
      v27 = v26 >> 1;
      if (v26 >> 1 <= (v25 + 1))
      {
        v27 = v25 + 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        std::allocator<vega::Age>::allocate_at_least[abi:ne200100]((a2 + 1), v28);
      }

      v29 = (4 * v25);
      *v29 = v5 & 0xFFFFFF;
      v8 = 4 * v25 + 4;
      v30 = a2[1];
      v31 = a2[2] - v30;
      v32 = v29 - v31;
      memcpy(v29 - v31, v30, v31);
      v33 = a2[1];
      a2[1] = v32;
      a2[2] = v8;
      a2[3] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v7 = v5 & 0xFFFFFF;
      v8 = (v7 + 1);
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
  do
  {
    v9 = vega::Json::value_from_json<vega::Age>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = (v11 - v13) >> 2;
      if ((v14 + 1) >> 62)
      {
        goto LABEL_35;
      }

      v15 = v10 - v13;
      v16 = v15 >> 1;
      if (v15 >> 1 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::allocator<vega::Age>::allocate_at_least[abi:ne200100]((a2 + 1), v17);
      }

      v18 = (4 * v14);
      *v18 = v9 & 0xFFFFFF;
      v12 = 4 * v14 + 4;
      v19 = a2[1];
      v20 = a2[2] - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9 & 0xFFFFFF;
      v12 = (v11 + 1);
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
  }

  while (v35 == 44);
  if (v35 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v34);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0398C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<vega::Age>(void *a1)
{
  vega::Age::Age(&v4);
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    vega::operator>>(a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    vega::operator>>(a1, &v4);
  }

  return v4;
}

void std::__shared_ptr_emplace<vega::manipulators::AttributeTagManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::AttributeTagManipulator::~AttributeTagManipulator(vega::manipulators::AttributeTagManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Tag>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  if (*(a1 + 16) != *(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      vega::Tag::str(__p);
      if ((v12 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
      if (v5 < v8 - 1)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
        v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
      }

      ++v5;
      v4 += 4;
    }

    while (v5 < v8);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v9;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Tag>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 4;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(4 * v13) = 0;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 4);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<vega::Tag>(a2, (v10 - 4));
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 4;
  }

  while (!v19);
  return result;
}

void sub_1A5A03FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Tag>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<vega::Tag>(a2, v2);
    v2 = (v2 + 4);
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::AttributeTagManipulator::is_valid_for (vega::manipulators::AttributeTagManipulator *this, const vega::VR *a2)
{
  vega::vr::AT(this);

  return vega::Word::operator==(a2, &word_1ED6FA794);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Tag>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v6 = a1 + 8;
    v4 = *(a1 + 8);
    v5 = *(v6 + 8);
    v7 = *(result + 8);
    if (v5 - v4 == *(result + 16) - v7)
    {
      if (v4 == v5)
      {
        return 1;
      }

      else
      {
        do
        {
          result = vega::Tag::operator==(v4, v7);
          if (!result)
          {
            break;
          }

          v4 += 2;
          v7 += 2;
        }

        while (v4 != v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<vega::Tag>,(vega::manipulators::FixedSizeElementManipulator<vega::Tag>*)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = (v5 - v4) >> 2;
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::Tag>(a1);
  }

  else if (v7)
  {
    if (*(a1 + 16) == 1)
    {
      v8 = *a1;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<vega::Tag>(a1);
        v11 = (*(a2 + 16) - *(a2 + 8)) >> 2;
        if (v10 < v11 - 1 && *(a1 + 16) == 1)
        {
          v12 = *a1;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v11 = (*(a2 + 16) - *(a2 + 8)) >> 2;
        }

        ++v10;
        v9 += 4;
      }

      while (v10 < v11);
    }

    if (*(a1 + 16) == 1)
    {
      v13 = *a1;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(a1, "null");
  }
}

void vega::Json::value_to_json<vega::Tag>(uint64_t a1)
{
  vega::to_json<vega::Tag>(__p);
  vega::operator<<<std::string>(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A043A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<vega::Tag>@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Tag>(v4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v4, a1);
  v4[0] = *MEMORY[0x1E69E54D8];
  v2 = *(MEMORY[0x1E69E54D8] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v8);
}

void sub_1A5A04540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Tag>(uint64_t a1)
{
  v5 = 34;
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v5, 1);
  v3 = vega::operator<<(v2);
  v6 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v6, 1);
  return a1;
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<vega::Tag> &,vega::Tag>(uint64_t *a1, void *a2)
{
  v4 = std::istream::peek();
  v35 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<vega::Tag>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = (v7 - v24) >> 2;
      if ((v25 + 1) >> 62)
      {
LABEL_35:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v26 = v6 - v24;
      v27 = v26 >> 1;
      if (v26 >> 1 <= (v25 + 1))
      {
        v27 = v25 + 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v28);
      }

      v29 = (4 * v25);
      *v29 = v5;
      v8 = 4 * v25 + 4;
      v30 = a2[1];
      v31 = a2[2] - v30;
      v32 = v29 - v31;
      memcpy(v29 - v31, v30, v31);
      v33 = a2[1];
      a2[1] = v32;
      a2[2] = v8;
      a2[3] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
  do
  {
    v9 = vega::Json::value_from_json<vega::Tag>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = (v11 - v13) >> 2;
      if ((v14 + 1) >> 62)
      {
        goto LABEL_35;
      }

      v15 = v10 - v13;
      v16 = v15 >> 1;
      if (v15 >> 1 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v17);
      }

      v18 = (4 * v14);
      *v18 = v9;
      v12 = 4 * v14 + 4;
      v19 = a2[1];
      v20 = a2[2] - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = (v11 + 1);
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v35);
  }

  while (v35 == 44);
  if (v35 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v34);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0484C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<vega::Tag>(uint64_t *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    vega::operator>>(a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    vega::operator>>(a1, &v4);
  }

  return v4;
}

void sub_1A5A04984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Date>::str@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::Date::str(&__p, (v4 + v5));
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < -1 - 0x5555555555555555 * ((*(a1 + 16) - *(a1 + 8)) >> 4))
      {
        v23[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 48;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 4));
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Date>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        std::vector<vega::Date>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
        std::vector<vega::Date>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::Date>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    std::vector<vega::Date>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
    return 1;
  }

  return v6;
}

void sub_1A5A04E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Date>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A04F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Date>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}