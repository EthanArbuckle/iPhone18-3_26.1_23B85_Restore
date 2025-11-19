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
  MEMORY[0x1B8C84790](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 2);
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

void sub_1B51278E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x1B8C84790](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::wstring, std::wstring>> *this)
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
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
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

  JUMPOUT(0x1B8C85350);
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

  JUMPOUT(0x1B8C85350);
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
  MEMORY[0x1B8C84790](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1B8C85350);
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

  JUMPOUT(0x1B8C85350);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F2CFEF28;
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

  JUMPOUT(0x1B8C85350);
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
  MEMORY[0x1B8C84790](exception, 15);
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

  JUMPOUT(0x1B8C85350);
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

uint64_t std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(__int32 *__f, __int32 *__l, uint64_t a3, uint64_t a4, int a5)
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

void sub_1B5129120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, __int32 *__f, __int32 *__l, std::match_results<const wchar_t *> *this, int a5)
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
    v11 = (__f + 1);
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
        v11 = (v11 + 1);
      }

      while (v11 != __l);
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

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::wssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const wchar_t *>> *a3, uint64_t *a4, char a5)
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

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const __int32 *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
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

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const __int32 *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
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
      v26 = v24 - *(v17 - 11);
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

void sub_1B5129E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++a1[5];
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
  result = vaddq_s64(a1[2], xmmword_1B5AE1340);
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B512A2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_front<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>(a1, v11);
}

void sub_1B512A5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
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

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
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

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::wssub_match> *this, std::vector<std::wssub_match>::size_type __sz)
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

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::wssub_match> *this, std::vector<std::wssub_match>::size_type __n)
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
        v18 = begin->std::pair<std::__wrap_iter<const wchar_t *>, std::__wrap_iter<const wchar_t *>>;
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

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(std::regex_traits<char> *a1, uint64_t a2, int a3)
{
  v4 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v4[1].__loc_.__locale_) = a3;
  *(&v4[1].__loc_.__locale_ + 4) = 0u;
  *(&v4[1].__col_ + 4) = 0u;
  HIDWORD(v4[2].__ct_) = 0;
  std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>();
}

void sub_1B512AC50(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    operator new();
  }

  while (v7 != a3 && *v7 == 124)
  {
    v8 = a1->__end_;
    v9 = v7 + 1;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, v7 + 1, a3);
    if (v9 == v7)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v8);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, (v8 + 1), a3);
    if (v8 + 1 == v10)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  while (1)
  {
    v11 = v8 == a3 ? v8 : v8 + 1;
    if (v11 == a3)
    {
      break;
    }

    v9 = memchr(v11, 10, a3 - v11);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = a3;
    }

    v10 = a1->__end_;
    if (v8 == v11)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v11, v8);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v10);
  }

  return a3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  while (1)
  {
    v11 = v8 == a3 ? v8 : (&v8->__traits_.__loc_.__locale_ + 1);
    if (v11 == a3)
    {
      break;
    }

    v9 = memchr(v11, 10, a3 - v11);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = a3;
    }

    v10 = a1->__end_;
    if (v8 == v11)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v11, v8);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v10);
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          marked_count = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 1, this->__marked_count_);
          this->__marked_count_ += marked_count;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

          goto LABEL_27;
        }

        if (v7 == 61)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          v9 = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 0, this->__marked_count_);
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

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
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

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x3E)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          operator new();
        }

        if (v6 - 42 >= 2)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
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
          v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, a2 + 3, a3);
          if (v9 != a3 && *v9 == 41)
          {
            --this->__open_count_;
            return v9 + 1;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
          marked_count = this->__marked_count_;
          ++this->__open_count_;
          v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, v8, a3);
          if (v11 != a3)
          {
            v12 = v11;
            if (*v11 == 41)
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
              --this->__open_count_;
              return v12 + 1;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    if (*a2 > 0x5Bu)
    {
      if (v6 == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(this, a2, a3);
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
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_28;
      }
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
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
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
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
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v11, v23, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
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
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = (a2 + 1);
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, v3 + 1, a3, 0);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_21;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
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
        v5 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v5, a3, v7);
      }

      while (v8 != v5);
    }

    if (v8 == a3)
    {
      goto LABEL_21;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a3 != a2)
  {
    v4 = *a2;
    v5 = v4 - 48;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
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
        if ((v6 - 48) > 9)
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
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
      return v3;
    }

LABEL_16:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  return v3;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          v8 = 12;
          goto LABEL_69;
        }

        v9 = this;
        v8 = 12;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v8 = 10;
          goto LABEL_69;
        }

        v9 = this;
        v8 = 10;
      }
    }

    else
    {
      if (v5 != 48)
      {
        if (v5 == 99)
        {
          v4 = (a2 + 1);
          if (a2 + 1 == a3)
          {
            goto LABEL_72;
          }

          if (*v4 < 65)
          {
            goto LABEL_72;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_72;
          }

          v8 = v7 & 0x1F;
          if (this)
          {
            goto LABEL_67;
          }

          goto LABEL_69;
        }

        if (v5 == 95)
        {
          goto LABEL_72;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v8 = *a2;
        if (this)
        {
LABEL_67:
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
        return ++v4;
      }

      if (!this)
      {
        v8 = 0;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 0;
    }

LABEL_68:
    std::string::operator=(v9, v8);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (!this)
      {
        v8 = 13;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 13;
    }

    else
    {
      if (v5 != 116)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v8 = 9;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 9;
    }

    goto LABEL_68;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_41;
      }

      goto LABEL_64;
    }

    if (!this)
    {
      v8 = 11;
      goto LABEL_69;
    }

    v9 = this;
    v8 = 11;
    goto LABEL_68;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v10 = a2[1];
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
  {
    goto LABEL_72;
  }

  v4 = (a2 + 2);
  if (a2 + 2 == a3)
  {
    goto LABEL_72;
  }

  v11 = *v4;
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v12 = -87;
  }

  v6 = 16 * (v12 + v11);
LABEL_41:
  if (v4 + 1 == a3)
  {
    goto LABEL_72;
  }

  v13 = v4[1];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v14 = -87;
  }

  if (v4 + 2 == a3)
  {
LABEL_72:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v15 = v4[2];
  v16 = -48;
  if ((v15 & 0xF8) != 0x30 && (v15 & 0xFE) != 0x38)
  {
    v15 |= 0x20u;
    if ((v15 - 97) < 6)
    {
      v16 = -87;
      goto LABEL_51;
    }

    goto LABEL_72;
  }

LABEL_51:
  v17 = v16 + v15 + 16 * (v14 + v6 + v13);
  if (this)
  {
    std::string::operator=(this, v17);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
  }

  v4 += 3;
  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
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
  memset(&v23, 0, sizeof(v23));
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
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, &v23);
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

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
          v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, &v23);
        }

        else
        {
          v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, &v23, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v23, v12);
    ++v4;
  }

LABEL_16:
  if (v4 != a3)
  {
    v13 = *v4;
    if (v13 != 93)
    {
      v15 = v4 + 1;
      if (v4 + 1 != a3 && v13 == 45 && *v15 != 93)
      {
        memset(&v22, 0, sizeof(v22));
        v4 += 2;
        if (v15 + 1 != a3 && *v15 == 91 && *v4 == 46)
        {
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v15 + 2, a3, &v22);
LABEL_55:
          v4 = v16;
          goto LABEL_56;
        }

        if ((v11 | 0x40) == 0x40)
        {
          LODWORD(v15) = *v15;
          if (v15 == 92)
          {
            if (v11)
            {
              v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4, a3, &v22);
            }

            else
            {
              v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3, &v22, v6);
            }

            goto LABEL_55;
          }
        }

        else
        {
          LOBYTE(v15) = *v15;
        }

        std::string::operator=(&v22, v15);
LABEL_56:
        v21 = v23;
        memset(&v23, 0, sizeof(v23));
        __p = v22;
        memset(&v22, 0, sizeof(v22));
        std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        goto LABEL_41;
      }
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_)
    {
      if (v23.__r_.__value_.__l.__size_ != 1)
      {
        v14 = v23.__r_.__value_.__r.__words[0];
LABEL_40:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
        goto LABEL_41;
      }

      v14 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v23.__r_.__value_.__s + 23))
  {
    v14 = &v23;
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_40;
    }

LABEL_25:
    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0]);
  }

LABEL_41:
  v17 = 1;
LABEL_42:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    return v4;
  }

  return v6;
}

void sub_1B512C47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v22 = 23869;
  LOBYTE(__p[0]) = 0;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v22, &v23);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v8, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_7;
    }

LABEL_27:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_27;
  }

  v11 = v19;
LABEL_7:
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

  return v9 + 2;
}

void sub_1B512C684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  strcpy(v12, ":]");
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, v12, &v12[2]);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  v10 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v10;
  return v9 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v16[1] = 0;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v8, &v13);
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

  return v9 + 2;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
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
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
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
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
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

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
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

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
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
          v7 = 7;
          goto LABEL_31;
        }

        v7 = 7;
        goto LABEL_51;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v7 = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        v7 = 8;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v7 = 12;
        goto LABEL_31;
      }

      v7 = 12;
      goto LABEL_51;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v7 = 10;
        goto LABEL_31;
      }

      v7 = 10;
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
          v7 = 13;
          goto LABEL_31;
        }

        v7 = 13;
        goto LABEL_51;
      case 't':
        if (this)
        {
          v6 = this;
          v7 = 9;
          goto LABEL_31;
        }

        v7 = 9;
        goto LABEL_51;
      case 'v':
        if (this)
        {
          v6 = this;
          v7 = 11;
          goto LABEL_31;
        }

        v7 = 11;
LABEL_51:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_55;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v9 & 0xF8) != 0x30)
    {
      goto LABEL_42;
    }

    v8 = *v9 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v10 = a2[2];
      v11 = v10 & 0xF8;
      v12 = v10 + 8 * v8 - 48;
      if (v11 == 48)
      {
        v9 = a2 + 3;
      }

      else
      {
        v9 = a2 + 2;
      }

      if (v11 == 48)
      {
        v8 = v12;
      }

      goto LABEL_42;
    }
  }

  v9 = a3;
LABEL_42:
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  return v9;
}

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
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
          if (++a2 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return a2;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__parse_RE_expression<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 1 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = *(a2 + 1);
  if (v8 == 40)
  {
    v9 = a2 + 2;
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    marked_count = a1->__marked_count_;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_expression<std::__wrap_iter<char const*>>(a1, v9, v3);
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
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
      return v3;
    }

LABEL_23:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v3 = a2 + 2;
  if (!std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8))
  {
    return v7;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
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

    v13 = a3;
    if (a2 + 1 != a3 && v11 == 92)
    {
      v14 = a2[1] == 123 ? a2 + 2 : a2;
      if (v14 != a2)
      {
        v24 = 0;
        v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(this, v14, a3, &v24);
        if (v15 == v14)
        {
          goto LABEL_34;
        }

        if (v15 != v13)
        {
          v16 = *v15;
          if (v16 == 44)
          {
            v23 = -1;
            v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(this, v15 + 1, v13, &v23);
            if (v17 != v13)
            {
              if (v17 + 1 == v13 || *v17 != 92)
              {
                goto LABEL_33;
              }

              if (v17[1] == 125)
              {
                v13 = v17 + 2;
              }

              else
              {
                v13 = v17;
              }
            }

            if (v13 != v17)
            {
              v19 = v23;
              v18 = v24;
              if (v23 == -1)
              {
                v20 = v8;
                v21 = v7;
                v22 = this;
                v19 = -1;
                goto LABEL_32;
              }

              if (v23 >= v24)
              {
                v20 = v8;
                v21 = v7;
                v22 = this;
LABEL_32:
                std::basic_regex<char,std::regex_traits<char>>::__push_loop(v22, v18, v19, __s, v20, v21, 1);
                return v13;
              }

LABEL_34:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
            }
          }

          else if (v15 + 1 != v13 && v16 == 92)
          {
            v13 = v15[1] == 125 ? v15 + 2 : v15;
            if (v15 != v13)
            {
              v18 = v24;
              v20 = v8;
              v21 = v7;
              v22 = this;
              v19 = v24;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<std::__wrap_iter<char const*>>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if ((a2 + 1 != a3 || v4 != 36) && ((v4 - 46) > 0x2E || ((1 << (v4 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v3 = a2 + 1;
    if (a2 + 1 != a3 && *a2 == 92)
    {
      v4 = *v3;
      if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
        return v3 + 1;
      }
    }
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
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
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v9 + 1, a3);
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
    return a2;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      if ((*(a1 + 24) & 0x1F0) == 0x40)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
      }

      else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v4))
      {
        v3 += 2;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
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

void sub_1B512D6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
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
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, v8, v10, &__p, (flags & 0x800) != 0);
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
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = (v7 + 1);
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_1B512DBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
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
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}

void sub_1B512DCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
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

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
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

void sub_1B512DE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::RegexReplacementRule>::__emplace_back_slow_path<std::string &>(void *a1)
{
  v1 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) <= 0x2E8BA2E8BA2E8BALL)
  {
    if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
    {
      v3 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v3 = v2;
    }

    v5 = a1;
    if (v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RegexReplacementRule>>(a1, v3);
    }

    v4 = (88 * v1);
    quasar::RegexReplacementRule::RegexReplacementRule((88 * v1));
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B512DF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::RegexReplacementRule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RegexReplacementRule>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>(uint64_t a1, std::locale *a2, std::locale *a3, std::locale *this)
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

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 11;
      std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::RegexReplacementRule>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::RegexReplacementRule>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::RegexReplacementRule>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

void kaldi::concatenateNbest(float **a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v42 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  v33 = a1[1];
  if (*a1 == v33)
  {
    if (a4 != a2)
    {
      std::vector<std::pair<float,std::vector<int>>>::__assign_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(a4, *a2, a2[1], (a2[1] - *a2) >> 5);
    }
  }

  else
  {
    __p = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      v6 = *v4;
      v7 = v4[1];
      if (*v4 != v7)
      {
        v8 = v5 + 2;
        v9 = v6 + 2;
        do
        {
          v10 = *v5 + *v6;
          v11 = v40;
          if (v40 >= v41)
          {
            v13 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __p) >> 3);
            v14 = v13 + 1;
            if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v41 - __p) >> 3) > v14)
            {
              v14 = 0x5555555555555556 * ((v41 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v41 - __p) >> 3) >= 0x555555555555555)
            {
              v15 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>>>(&__p, v15);
            }

            v16 = 8 * ((v40 - __p) >> 3);
            *v16 = v10;
            *(v16 + 8) = v8;
            *(v16 + 16) = v9;
            v12 = 24 * v13 + 24;
            v17 = (v16 - (v40 - __p));
            memcpy(v17, __p, v40 - __p);
            v18 = __p;
            __p = v17;
            v40 = v12;
            v41 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v40 = v10;
            v12 = (v11 + 6);
            *(v11 + 1) = v8;
            *(v11 + 2) = v9;
          }

          v40 = v12;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(__p, v12, &v37, 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 3));
          v6 += 8;
          v9 += 8;
        }

        while (v6 != v7);
      }

      v5 += 8;
      v4 = a2;
    }

    while (v5 != v33);
    v20 = __p;
    v19 = v40;
    v21 = __p == v40 || a3 < 1;
    if (!v21)
    {
      v22 = 1;
      do
      {
        v23 = *v20;
        v38 = *(v20 + 2);
        v37 = v23;
        if (v19 - v20 >= 25)
        {
          v24 = *v20;
          v26 = *(v20 + 1);
          v25 = *(v20 + 2);
          std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(v20, &v34, 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 3));
          if (v19 - 6 == v27)
          {
            *v27 = v24;
            *(v27 + 8) = v26;
            *(v27 + 16) = v25;
          }

          else
          {
            *v27 = *(v19 - 6);
            *(v27 + 8) = *(v19 - 2);
            *(v27 + 16) = *(v19 - 1);
            *(v19 - 6) = v24;
            *(v19 - 2) = v26;
            *(v19 - 1) = v25;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(v20, v27 + 24, &v34, 0xAAAAAAAAAAAAAAABLL * ((v27 + 24 - v20) >> 3));
          }
        }

        v40 -= 6;
        __dst = 0;
        v36 = 0;
        v34 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v34, **(&v37 + 1), *(*(&v37 + 1) + 8), (*(*(&v37 + 1) + 8) - **(&v37 + 1)) >> 2);
        std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v34, __dst, *v38, v38[1], (v38[1] - *v38) >> 2);
        v28 = a4[1];
        if (v28 >= a4[2])
        {
          v29 = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<float &,std::vector<int>&>(a4, &v37, &v34);
        }

        else
        {
          std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<float &,std::vector<int>&>(a4, &v37, &v34);
          v29 = v28 + 32;
        }

        a4[1] = v29;
        if (v34)
        {
          __dst = v34;
          operator delete(v34);
        }

        v20 = __p;
        v19 = v40;
        if (__p == v40)
        {
          break;
        }

        v21 = v22++ < a3;
      }

      while (v21);
    }

    if (v20)
    {
      v40 = v20;
      operator delete(v20);
    }
  }
}

uint64_t kaldi::rescore@<X0>(kaldi::quasar::CEDecoder **a1@<X0>, uint64_t *a2@<X1>, std::string::size_type *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t *a6@<X8>, float a7@<S0>)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescoring: receive a prompt of size ", 36);
    MEMORY[0x1B8C84C30](v14, (a2[1] - *a2) >> 2);
    kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
  }

  kaldi::quasar::CEDecoder::ResetStates(*a1);
  v103 = kaldi::quasar::CEDecoder::BeamSize(*a1);
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = (a5 + 8);
    do
    {
      v17 = v15[5];
      v18 = v15[6];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = (*(*v17 + 16))(v17);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v107 = 0;
      v108 = 0;
      v109 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v107, *a2, a2[1], (a2[1] - *a2) >> 2);
      v21 = v15[2];
      v20 = v15[3];
      while (v21 != v20)
      {
        v22 = *v16;
        if (!*v16)
        {
          goto LABEL_18;
        }

        v23 = *v21;
        v24 = v16;
        do
        {
          if (*(v22 + 28) >= v23)
          {
            v24 = v22;
          }

          v22 = *(v22 + 8 * (*(v22 + 28) < v23));
        }

        while (v22);
        if (v24 == v16 || *(v24 + 7) > v23)
        {
LABEL_18:
          std::vector<int>::push_back[abi:ne200100](&v107, v21);
        }

        ++v21;
      }

      LODWORD(__p[0]) = kaldi::quasar::CEDecoder::EndOfTranscript(*a1);
      std::vector<int>::push_back[abi:ne200100](&v107, __p);
      *__p = v19;
      memset(&__p[1], 0, 24);
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p[1], v107, v108, (v108 - v107) >> 2);
      std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](a6, __p);
      if (__p[1])
      {
        __p[2] = __p[1];
        operator delete(__p[1]);
      }

      if (v107)
      {
        v108 = v107;
        operator delete(v107);
      }

      v15 = *v15;
    }

    while (v15);
  }

  v25 = v103;
  if (quasar::gLogLevel > 4)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    memset(__p, 0, sizeof(__p));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v26 = MEMORY[0x1B8C84C30](__p, (a6[1] - *a6) >> 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " nbest are extracted", 20);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  v27 = *a6;
  v28 = a6[1];
  if (v103 < ((v28 - *a6) >> 5))
  {
    v101 = a1;
    v102 = a3;
    if (quasar::gLogLevel >= 4)
    {
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      memset(__p, 0, sizeof(__p));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Shrinking nbest from ", 21);
      v30 = MEMORY[0x1B8C84C30](v29, (a6[1] - *a6) >> 5);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " to ", 4);
      MEMORY[0x1B8C84C00](v31, v103);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      v27 = *a6;
      v28 = a6[1];
    }

    if (v103)
    {
      v32 = v27 + 32 * v103;
      if (v103 >= 2)
      {
        v33 = (v103 - 2) >> 1;
        v34 = v27 + 32 * v33;
        v35 = v33 + 1;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::rescore(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::unordered_map<std::vector<int>,std::shared_ptr<void>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::shared_ptr<void>>>> const&,int,std::function<int ()(int)>,float,float,std::set<int> const&)::$_2 &,std::__wrap_iter<std::pair<float,std::vector<int>> *>>(v27, v103, v34);
          v34 -= 32;
          --v35;
        }

        while (v35);
      }

      if (v32 != v28)
      {
        v36 = v27 + 32 * v103;
        do
        {
          v37 = *v36;
          if (*v36 > *v27)
          {
            *v36 = *v27;
            *v27 = v37;
            v38 = *(v36 + 8);
            *(v36 + 8) = *(v27 + 8);
            *(v27 + 8) = v38;
            v39 = *(v36 + 16);
            *(v36 + 16) = *(v27 + 16);
            *(v27 + 16) = v39;
            v40 = *(v36 + 24);
            *(v36 + 24) = *(v27 + 24);
            *(v27 + 24) = v40;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::rescore(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::unordered_map<std::vector<int>,std::shared_ptr<void>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::shared_ptr<void>>>> const&,int,std::function<int ()(int)>,float,float,std::set<int> const&)::$_2 &,std::__wrap_iter<std::pair<float,std::vector<int>> *>>(v27, v103, v27);
          }

          v36 += 32;
        }

        while (v36 != v28);
      }

      if (v103 >= 2)
      {
        v41 = v103;
        do
        {
          v42 = 0;
          v43 = *v27;
          v44 = *(v27 + 8);
          v104 = *(v27 + 16);
          *(v27 + 16) = 0;
          *(v27 + 24) = 0;
          v45 = v27;
          *(v27 + 8) = 0;
          do
          {
            v46 = v45;
            v45 += 32 * v42 + 32;
            v47 = 2 * v42;
            v42 = (2 * v42) | 1;
            v48 = v47 + 2;
            if (v48 < v41 && *v45 > *(v45 + 32))
            {
              v45 += 32;
              v42 = v48;
            }

            v49 = (v45 + 8);
            *v46 = *v45;
            std::vector<int>::__move_assign((v46 + 2), (v45 + 8));
          }

          while (v42 <= ((v41 - 2) >> 1));
          if (v45 == v32 - 32)
          {
            *v45 = v43;
            v61 = *(v45 + 8);
            if (v61)
            {
              *(v45 + 16) = v61;
              operator delete(v61);
              *(v45 + 16) = 0;
              *(v45 + 24) = 0;
            }

            *v49 = v44;
          }

          else
          {
            *v45 = *(v32 - 32);
            std::vector<int>::__move_assign(v45 + 8, (v32 - 24));
            *(v32 - 32) = v43;
            v50 = *(v32 - 24);
            if (v50)
            {
              *(v32 - 16) = v50;
              operator delete(v50);
            }

            *(v32 - 24) = v44;
            *(v32 - 16) = v104;
            v51 = (v45 + 32 - v27) >> 5;
            v52 = v51 < 2;
            v53 = v51 - 2;
            if (v52)
            {
              goto LABEL_61;
            }

            v54 = v53 >> 1;
            v55 = v27 + 32 * (v53 >> 1);
            v56 = *v45;
            if (*v55 <= *v45)
            {
              goto LABEL_61;
            }

            v57 = *(v45 + 8);
            v104 = *(v45 + 16);
            *v49 = 0;
            *(v45 + 16) = 0;
            *(v45 + 24) = 0;
            v58 = *v55;
            do
            {
              v59 = v45;
              v45 = v55;
              *v59 = v58;
              std::vector<int>::__move_assign((v59 + 2), (v55 + 8));
              if (!v54)
              {
                break;
              }

              v54 = (v54 - 1) >> 1;
              v55 = v27 + 32 * v54;
              v58 = *v55;
            }

            while (*v55 > v56);
            *v45 = v56;
            v60 = *(v45 + 8);
            if (v60)
            {
              *(v45 + 16) = v60;
              operator delete(v60);
              *(v45 + 16) = 0;
              *(v45 + 24) = 0;
            }

            *(v45 + 8) = v57;
          }

          *(v45 + 16) = v104;
LABEL_61:
          v32 -= 32;
          v52 = v41-- <= 2;
        }

        while (!v52);
      }
    }

    std::vector<std::pair<float,std::vector<int>>>::resize(a6, v103);
    v27 = *a6;
    v28 = a6[1];
    a1 = v101;
    a3 = v102;
    v25 = v103;
  }

  if (v27 == v28)
  {
    v66 = -1;
  }

  else
  {
    v62 = a1;
    v63 = 0;
    v64 = quasar::gLogLevel;
    do
    {
      if (v63 <= ((*(v27 + 16) - *(v27 + 8)) >> 2))
      {
        v63 = (*(v27 + 16) - *(v27 + 8)) >> 2;
      }

      if (v64 >= 5)
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        memset(__p, 0, sizeof(__p));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "preAED-amCost", 13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " = ", 3);
        std::ostream::operator<<();
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        v64 = quasar::gLogLevel;
      }

      v27 += 32;
    }

    while (v27 != v28);
    v66 = v63 - 1;
    a1 = v62;
    v25 = v103;
  }

  memset(&__p[1], 0, 33);
  __p[0] = &unk_1F2D0EE38;
  kaldi::CuMatrix<float>::CuMatrix(&v107, v25, 1, 1, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v105, v25, 1, 1, 0, 0);
  if (v25 >= 1)
  {
    v68 = 0;
    v69 = v105[1];
    v70 = v106;
    v67 = vdupq_n_s64(v25 - 1);
    v71 = 3 * v106;
    v72 = 16 * v106;
    v73 = xmmword_1B5AE0050;
    v74 = xmmword_1B5AE0060;
    v75 = vdupq_n_s64(4uLL);
    v76 = 2 * v106;
    do
    {
      v77 = vmovn_s64(vcgeq_u64(v67, v74));
      if (vuzp1_s16(v77, *v67.i8).u8[0])
      {
        *v69 = v68;
      }

      if (vuzp1_s16(v77, *&v67).i8[2])
      {
        v69[v70] = (v68 + 1);
      }

      if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v67, *&v73))).i32[1])
      {
        v69[v76] = (v68 + 2);
        v69[v71] = (v68 + 3);
      }

      v68 += 4;
      v73 = vaddq_s64(v73, v75);
      v74 = vaddq_s64(v74, v75);
      v69 = (v69 + v72);
    }

    while (((v25 + 3) & 0xFFFFFFFC) != v68);
  }

  v78 = *a2;
  if (a2[1] - *a2 == 4)
  {
    v79 = 0;
  }

  else
  {
    v80 = 0;
    do
    {
      *v67.i32 = *(v78 + 4 * v80);
      kaldi::CuMatrixBase<float>::Set(&v107, *v67.i8);
      kaldi::quasar::CEDecoder::Compute(*a1, &v107, v105, a3, 0, 0, __p);
      ++v80;
      v78 = *a2;
      v81 = a2[1] - *a2;
    }

    while ((v81 >> 2) - 1 > v80);
    v79 = (v81 >> 2) - 1;
  }

  v82 = *a6;
  v83 = a6[1];
  if (v79 >= v66)
  {
    v91 = (v83 - v82) >> 5;
  }

  else
  {
    v84 = v79;
    do
    {
      if (v83 != v82)
      {
        v85 = 0;
        v86 = (v83 - v82) >> 5;
        v87 = v108;
        if (v86 <= 1)
        {
          v86 = 1;
        }

        v88 = (v82 + 16);
        v89 = 4 * v110;
        do
        {
          v90 = *(v88 - 1);
          if (v84 < (*v88 - v90) >> 2)
          {
            *v87 = *(v90 + 4 * v84);
          }

          ++v85;
          v88 += 4;
          v87 = (v87 + v89);
        }

        while (v86 != v85);
      }

      kaldi::quasar::CEDecoder::Compute(*a1, &v107, v105, a3, 0, 0, __p);
      v82 = *a6;
      v83 = a6[1];
      ++v84;
      v91 = (v83 - *a6) >> 5;
      if (v83 != *a6)
      {
        v92 = 0;
        v93 = __p[1];
        if (v91 <= 1)
        {
          v94 = 1;
        }

        else
        {
          v94 = (v83 - *a6) >> 5;
        }

        v95 = 4 * SLODWORD(__p[3]);
        v96 = *a6;
        do
        {
          v97 = *(v96 + 8);
          if (v84 < (*(v96 + 16) - v97) >> 2)
          {
            *v96 = *v96 + (a7 * v93[*(v97 + 4 * v84)]);
          }

          ++v92;
          v96 += 32;
          v93 = (v93 + v95);
        }

        while (v94 != v92);
      }
    }

    while (v66 != v84);
  }

  v98 = 126 - 2 * __clz(v91);
  if (v83 == v82)
  {
    v99 = 0;
  }

  else
  {
    v99 = v98;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(v82, v83, v99, 1);
  kaldi::CuMatrix<float>::~CuMatrix(v105);
  kaldi::CuMatrix<float>::~CuMatrix(&v107);
  return kaldi::CuMatrix<float>::~CuMatrix(__p);
}

uint64_t std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>>(result, v10);
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 8) = 0;
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = 32 * v7 + 32;
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
    result = std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = v4 + 32;
  }

  v3[1] = v6;
  return result;
}

void std::vector<std::pair<float,std::vector<int>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 24);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 32;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::pair<float,std::vector<int>>>::__append(a1, v5);
  }
}

void kaldi::decode(kaldi::quasar::CEDecoder **a1@<X0>, uint64_t *a2@<X1>, std::string::size_type *a3@<X2>, int **a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, float a9@<S0>, int a10, char a11)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v104);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v104, "receive a prompt of size ", 25);
    MEMORY[0x1B8C84C30](v16, (a2[1] - *a2) >> 2);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v104);
  }

  kaldi::quasar::CEDecoder::ResetStates(*a1);
  v17 = *a4;
  if (*a4)
  {
    v18 = (*(**a3 + 184))(*a3, 1);
    kaldi::CTCLabelScorer::ResetStates(v17, v18);
  }

  v19 = kaldi::quasar::CEDecoder::BeamSize(*a1);
  LODWORD(v104) = -947920896;
  v106 = 0;
  v107 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  std::vector<std::pair<float,std::vector<int>>>::vector[abi:ne200100](&v130, v19);
  if (__p)
  {
    v106 = __p;
    operator delete(__p);
  }

  *v130 = 0;
  v128 = 0u;
  v127 = 0u;
  v126 = &unk_1F2D0EE38;
  v129 = 0;
  v124 = 0u;
  v123 = 0u;
  v122 = &unk_1F2D0EE38;
  v125 = 0;
  v120 = 0u;
  v119 = 0u;
  v118 = &unk_1F2D0EE38;
  v121 = 0;
  kaldi::CuMatrix<float>::CuMatrix(v116, v19, 1, 1, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(&v113, v19, 1, 1, 0, 0);
  if (v19 >= 1)
  {
    v21 = 0;
    v22 = v114;
    v23 = v115;
    v20 = vdupq_n_s64(v19 - 1);
    v24 = 3 * v115;
    v25 = 16 * v115;
    v26 = xmmword_1B5AE0050;
    v27 = xmmword_1B5AE0060;
    v28 = vdupq_n_s64(4uLL);
    v29 = 2 * v115;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v20, v27));
      if (vuzp1_s16(v30, *v20.i8).u8[0])
      {
        *v22 = v21;
      }

      if (vuzp1_s16(v30, *&v20).i8[2])
      {
        v22[v23] = (v21 + 1);
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v26))).i32[1])
      {
        v22[v29] = (v21 + 2);
        v22[v24] = (v21 + 3);
      }

      v21 += 4;
      v26 = vaddq_s64(v26, v28);
      v27 = vaddq_s64(v27, v28);
      v22 = (v22 + v25);
    }

    while (((v19 + 3) & 0xFFFFFFFC) != v21);
  }

  v31 = *a2;
  if (a2[1] - *a2 != 4)
  {
    v32 = 0;
    do
    {
      *v20.i32 = *(v31 + 4 * v32);
      kaldi::CuMatrixBase<float>::Set(v116, *v20.i8);
      kaldi::quasar::CEDecoder::Compute(*a1, v116, &v113, a3, &v126, &v122, &v118);
      ++v32;
      v31 = *a2;
    }

    while (((a2[1] - *a2) >> 2) - 1 > v32);
  }

  v92 = a2;
  v111 = 0uLL;
  v112 = 0;
  a8[1] = 0;
  a8[2] = 0;
  *a8 = 0;
  v33 = a8;
  if (a10 >= 1)
  {
    v97 = 0;
    v94 = a3;
    v95 = a6;
    do
    {
      if (v19 <= (a8[1] - *a8) >> 5)
      {
        break;
      }

      if (a11)
      {
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a8);
      }

      if (v19 >= 1)
      {
        v34 = 0;
        v35 = (*(&v130 + 1) - v130) >> 5;
        v36 = v116[1];
        v37 = (v130 + 16);
        v38 = 4 * v117;
        do
        {
          if (v35 <= v34)
          {
            *(v37 - 4) = -947920896;
          }

          else
          {
            *v36 = *(*v37 - 4);
          }

          ++v34;
          v37 += 4;
          v36 = (v36 + v38);
        }

        while (v19 != v34);
      }

      kaldi::quasar::CEDecoder::Compute(*a1, v116, &v113, a3, &v126, &v122, &v118);
      if (*a4)
      {
        kaldi::CTCLabelScorer::Compute(*a4, v116, &v113, &v126, &v122, &v118);
      }

      __src = 0;
      v109 = 0;
      v110 = 0;
      if (v19 < 1)
      {
        v39 = 0;
        v52 = 0;
      }

      else
      {
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = 0;
          do
          {
            v42 = (*(v130 + 32 * v40) + *(v127 + 4 * v40 * v128 + 4 * v41)) - a9;
            v43 = v123 + 4 * v40 * v124;
            if (v39 >= v110)
            {
              v44 = __src;
              v45 = v39 - __src;
              v46 = 0xAAAAAAAAAAAAAAABLL * ((v39 - __src) >> 2);
              v47 = v46 + 1;
              if (v46 + 1 > 0x1555555555555555)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v110 - __src) >> 2) > v47)
              {
                v47 = 0x5555555555555556 * ((v110 - __src) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v110 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v48 = 0x1555555555555555;
              }

              else
              {
                v48 = v47;
              }

              if (v48)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(&__src, v48);
              }

              v49 = 12 * v46;
              *v49 = v40;
              *(v49 + 4) = v42;
              *(v49 + 8) = *(v43 + 4 * v41);
              v39 = 12 * v46 + 12;
              v50 = (v49 - v45);
              memcpy((v49 - v45), v44, v45);
              v51 = __src;
              __src = v50;
              v109 = v39;
              v110 = 0;
              if (v51)
              {
                operator delete(v51);
              }

              a8 = v33;
            }

            else
            {
              *v39 = v40;
              *(v39 + 4) = v42;
              *(v39 + 8) = *(v43 + 4 * v41);
              v39 += 12;
            }

            v109 = v39;
            ++v41;
          }

          while (v19 != v41);
          ++v40;
        }

        while (v40 != v19);
        v52 = __src;
      }

      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v39 - v52) >> 2));
      if (v39 == v52)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      std::__introsort<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,false>(v52, v39, v54, 1);
      v55 = __src;
      v56 = v109;
      a6 = v95;
      if (__src != v109)
      {
        while (1)
        {
          v57 = *v55;
          LODWORD(v102) = v55[2];
          v101 = v57;
          __p = 0;
          v106 = 0;
          v104 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v104, *(v130 + 32 * v57 + 8), *(v130 + 32 * v57 + 16), (*(v130 + 32 * v57 + 16) - *(v130 + 32 * v57 + 8)) >> 2);
          std::vector<int>::push_back[abi:ne200100](&v104, &v102);
          v58 = v102;
          if (v58 == kaldi::quasar::CEDecoder::EndOfTranscript(*a1))
          {
            if (*(&v101 + 1) > -65504.0)
            {
              v59 = a8[1];
              if (v59 >= a8[2])
              {
                v60 = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<float &,std::vector<int>&>(a8, &v101 + 1, &v104);
              }

              else
              {
                std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<float &,std::vector<int>&>(a8, &v101 + 1, &v104);
                v60 = v59 + 32;
              }

              a8[1] = v60;
              v63 = *(v95 + 24);
              if (!v63)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              *(a8[1] - 32) = (*(*v63 + 48))(*(v95 + 24), v60 - 32);
            }
          }

          else
          {
            v61 = *(&v111 + 1);
            v114[(v115 * ((*(&v111 + 1) - v111) >> 5))] = v101;
            if (v61 >= v112)
            {
              v62 = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<float &,std::vector<int>&>(&v111, &v101 + 1, &v104);
            }

            else
            {
              *v61 = HIDWORD(v101);
              *(v61 + 16) = 0;
              *(v61 + 24) = 0;
              *(v61 + 8) = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v61 + 8, v104, __p, (__p - v104) >> 2);
              v62 = v61 + 32;
            }

            *(&v111 + 1) = v62;
          }

          if (v19 == (*(&v111 + 1) - v111) >> 5 || v19 == (a8[1] - *a8) >> 5)
          {
            break;
          }

          if (v104)
          {
            __p = v104;
            operator delete(v104);
          }

          v55 += 3;
          if (v55 == v56)
          {
            goto LABEL_75;
          }
        }

        if (v104)
        {
          __p = v104;
          operator delete(v104);
        }
      }

LABEL_75:
      v64 = a8[1];
      v65 = 126 - 2 * __clz((v64 - *a8) >> 5);
      if (v64 == *a8)
      {
        v66 = 0;
      }

      else
      {
        v66 = v65;
      }

      _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(*a8, v64, v66, 1);
      a3 = v94;
      if (*(&v111 + 1) != v111)
      {
        v67 = *(a7 + 24);
        if (!v67)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v67 + 48))(v67, v111 + 8);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&v104, 3);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v104, "pending info  (", 15);
          v69 = MEMORY[0x1B8C84C00](v68, v97);
          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "/", 1);
          v71 = MEMORY[0x1B8C84C30](v70, v97 + ((v92[1] - *v92) >> 2));
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ") : ", 4);
          memset(v100, 0, sizeof(v100));
          std::vector<std::pair<float,std::vector<int>>>::__init_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(v100, v111, *(&v111 + 1), (*(&v111 + 1) - v111) >> 5);
          v73 = *(a5 + 24);
          if (!v73)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v73 + 48))(&v101);
          if ((v103 & 0x80u) == 0)
          {
            v74 = &v101;
          }

          else
          {
            v74 = v101;
          }

          if ((v103 & 0x80u) == 0)
          {
            v75 = v103;
          }

          else
          {
            v75 = v102;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v74, v75);
          if (v103 < 0)
          {
            operator delete(v101);
          }

          v132[0] = v100;
          std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](v132);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v104);
        }
      }

      if (a8[1] != *a8 && kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v104, 3);
        v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v104, "finished info (", 15);
        v77 = MEMORY[0x1B8C84C00](v76, v97);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "/", 1);
        v79 = MEMORY[0x1B8C84C30](v78, v97 + ((v92[1] - *v92) >> 2));
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ") : ", 4);
        memset(v99, 0, sizeof(v99));
        std::vector<std::pair<float,std::vector<int>>>::__init_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(v99, *a8, a8[1], (a8[1] - *a8) >> 5);
        v81 = *(a5 + 24);
        if (!v81)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v81 + 48))(&v101);
        if ((v103 & 0x80u) == 0)
        {
          v82 = &v101;
        }

        else
        {
          v82 = v101;
        }

        if ((v103 & 0x80u) == 0)
        {
          v83 = v103;
        }

        else
        {
          v83 = v102;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v82, v83);
        if (v103 < 0)
        {
          operator delete(v101);
        }

        v132[0] = v99;
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](v132);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v104);
      }

      std::vector<std::pair<float,std::vector<int>>>::__vdeallocate(&v130);
      v130 = v111;
      v131 = v112;
      v112 = 0;
      v111 = 0uLL;
      if (__src)
      {
        v109 = __src;
        operator delete(__src);
      }

      ++v97;
    }

    while (v97 != a10);
  }

  if (v19 <= 0)
  {
    v85 = a8[1];
  }

  else
  {
    v84 = 0;
    v85 = a8[1];
    do
    {
      if (v19 <= (v85 - *a8) >> 5)
      {
        break;
      }

      std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](a8, v130 + v84);
      v86 = *(a6 + 24);
      if (!v86)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v87 = (*(*v86 + 48))(v86, a8[1] - 32);
      v85 = a8[1];
      *(v85 - 32) = v87;
      v84 += 32;
    }

    while (32 * v19 != v84);
  }

  v88 = 126 - 2 * __clz((v85 - *a8) >> 5);
  if (v85 == *a8)
  {
    v89 = 0;
  }

  else
  {
    v89 = v88;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(*a8, v85, v89, 1);
  v90 = *(a7 + 24);
  if (!v90)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v90 + 48))(v90, *a8 + 8);
  v104 = &v111;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&v104);
  kaldi::CuMatrix<float>::~CuMatrix(&v113);
  kaldi::CuMatrix<float>::~CuMatrix(v116);
  kaldi::CuMatrix<float>::~CuMatrix(&v118);
  kaldi::CuMatrix<float>::~CuMatrix(&v122);
  kaldi::CuMatrix<float>::~CuMatrix(&v126);
  v104 = &v130;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&v104);
}

void sub_1B512FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29)
{
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x220]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x250]);
  kaldi::CuMatrix<float>::~CuMatrix(v29 - 256);
  kaldi::CuMatrix<float>::~CuMatrix(v29 - 208);
  a29 = (v29 - 160);
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<std::pair<float,std::vector<int>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<std::pair<float,std::vector<int>> const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::EncoderCacheView::~EncoderCacheView(quasar::EncoderCacheView *this)
{
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::FirstPassEncoderCacheView::FirstPassEncoderCacheView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F2CFF0B8;
  a1[1] = 0;
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  v6 = (a2 + 856);
  a1[6] = v6;
  quasar::EndPointer::createEndPointer((a2 + 1016), v6, *(a2 + 432), *(a2 + 1160));
}

void sub_1B5130264(_Unwind_Exception *a1)
{
  std::deque<kaldi::Vector<float>>::~deque[abi:ne200100](v3);
  v5 = v1[7];
  v1[7] = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::FirstPassEncoderCacheView::updateDecoderChainOutput(uint64_t this)
{
  v1 = *(this + 64);
  v2 = **(this + 40);
  v3 = **(this + 32);
  *(v3 + 592) = v1 - *(v2 + 8);
  *(v3 + 596) = *(v2 + 20);
  *(v3 + 598) = 1;
  LODWORD(v2) = *(this + 84);
  *(v3 + 1116) = v2 * *(this + 72);
  *(v3 + 1120) = v2 * v1;
  if (*(this + 68) == 1)
  {
    *(v3 + 596) = 256;
    *(v3 + 598) = 0;
  }

  return this;
}

uint64_t quasar::FirstPassEncoderCacheView::advance(quasar::FirstPassEncoderCacheView *this)
{
  v2 = *(this + 3);
  v3 = *(v2 + 16);
  v4 = *v2;
  result = (*(*v3 + 8))(v3, (*(this + 16) - 1));
  if (result)
  {
LABEL_77:
    result = *(this + 1);
    *(this + 1) = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  v6 = 0;
  while ((v6 & 1) == 0 && (*(this + 68) & 1) == 0)
  {
    SilencePosterior = kaldi::OnlineFeatureMatrix::GetSilencePosterior(v4, *(this + 16));
    v8 = *(this + 6);
    if ((*(this + 69) & 1) == 0)
    {
      if (SilencePosterior >= *(v8 + 312))
      {
        v42 = *(this + 22);
        if (v42 >= 1)
        {
          if (*(this + 17) == v42)
          {
            std::deque<kaldi::Vector<float>>::pop_front(this + 6);
          }

          kaldi::OnlineFeatureMatrix::GetFrame(v4, *(this + 16), __p);
          std::deque<kaldi::Vector<float>>::emplace_back<kaldi::SubVector<float>>(this + 12, __p);
        }

        v6 = 0;
        goto LABEL_73;
      }

      *(this + 69) = 1;
      v9 = *(this + 17);
      *(this + 18) = *(this + 16) - v9;
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *(this + 42);
          v12 = (*(this + 19) + 4 * (v11 * v10));
          v13 = *(this + 43) - v11 * v10;
          v14 = *(this + 22);
          LODWORD(__p[2]) = *(this + 40);
          HIDWORD(__p[2]) = 1;
          __p[3] = __PAIR64__(v13, v11);
          __p[4] = v14;
          __p[0] = &unk_1F2CFA908;
          __p[1] = v12;
          kaldi::CuMatrixBase<float>::CopyRowsFromVec(__p, (*(*(this + 13) + 8 * (*(this + 16) / 0xAAuLL)) + 24 * (*(this + 16) % 0xAAuLL)));
          ++v10;
          __p[0] = &unk_1F2CFA908;
          memset(&__p[1], 0, 32);
          quasar::Bitmap::~Bitmap(__p);
          std::deque<kaldi::Vector<float>>::pop_front(this + 6);
        }

        while (*(this + 17));
        v8 = *(this + 6);
      }
    }

    if (SilencePosterior <= *(v8 + 140))
    {
      v15 = 0;
    }

    else
    {
      v15 = *(this + 20) + 1;
    }

    v16 = *(this + 16) - *(this + 18);
    v17 = *(this + 21);
    *(this + 20) = v15;
    if (quasar::SpeechRequestData::isUtteranceDetectionEnabled(**(this + 5)) && *(this + 69) == 1)
    {
      v18 = *(this + 7);
      memset(__p, 0, 24);
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v19 = (**v18)(0.0, 0.0, SilencePosterior);
      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      v80 = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v80);
      if (v19)
      {
        goto LABEL_25;
      }
    }

    v20 = *(*(this + 6) + 308);
    if (v20 >= 1 && v16 * v17 > v20)
    {
LABEL_25:
      if (quasar::gLogLevel >= 4)
      {
        v78 = 0u;
        v79 = 0u;
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
        memset(__p, 0, sizeof(__p));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Utterance starting: ", 20);
        v24 = MEMORY[0x1B8C84C10](v23, *(**(this + 5) + 12));
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " start decoding: ", 17);
        v26 = MEMORY[0x1B8C84C10](v25, (*(**(this + 5) + 12) + (*(this + 18) - *(**(this + 5) + 8)) * *(this + 21)));
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "  detector force triggered because maximum number of frames is reached: ", 72);
        v28 = MEMORY[0x1B8C84C10](v27, (*(**(this + 5) + 12) + *(this + 21) * v16));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " or the utterance detection ep is triggered: ", 45);
        std::ostream::operator<<();
        quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      }

      *(this + 68) = 1;
      v22 = *(this + 16);
      *(this + 19) = v22;
    }

    else
    {
      v22 = *(this + 16);
    }

    v29 = v16 % *(*(this + 2) + 596);
    v30 = *(this + 40);
    v31 = *(this + 42);
    v32 = *(this + 43);
    __p[1] = (*(this + 19) + 4 * v31 * v29);
    v33 = *(this + 22);
    __p[2] = (v30 | 0x100000000);
    LODWORD(__p[3]) = v31;
    HIDWORD(__p[3]) = v32 - v31 * v29;
    __p[4] = v33;
    __p[0] = &unk_1F2CFA908;
    kaldi::OnlineFeatureMatrix::GetFrame(v4, v22, &v80);
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(__p, &v80);
    v34 = v29 + 1;
    __p[0] = &unk_1F2CFA908;
    memset(&__p[1], 0, 32);
    quasar::Bitmap::~Bitmap(__p);
    if ((*(this + 68) & 1) != 0 || v34 == *(*(this + 2) + 596) || (*(*v3 + 8))(v3, *(this + 16)))
    {
      if (kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Running encoder after reading frame ", 36);
        v36 = MEMORY[0x1B8C84C00](v35, *(this + 16));
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " start frame: ", 14);
        MEMORY[0x1B8C84C00](v37, *(this + 18));
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
      }

      v38 = *(this + 2);
      v39 = *(v38 + 808);
      if (v39)
      {
        if (v40)
        {
          v41 = *(v38 + 816);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            v38 = *(this + 2);
          }
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }

      if (*(v38 + 1177) == 1)
      {
        v43 = *(v38 + 1184);
        if (v34 % v43)
        {
          v43 = v34 % v43;
        }

        v44 = *(v38 + 1180) + v34 - v43;
        if (*(v38 + 596) >= v44)
        {
          v45 = v44;
        }

        else
        {
          v45 = *(v38 + 596);
        }
      }

      else
      {
        v45 = *(v38 + 596);
      }

      kaldi::quasar::InputShapeTemplate::InputShapeTemplate(&v63);
      if (*(*(this + 2) + 1177) == 1)
      {
        Config = kaldi::quasar::CEInferenceNet::GetConfig(v40);
        kaldi::quasar::InputShapeTemplate::InputShapeTemplate(__p, Config + 328);
        v63 = __p[0];
        v64 = __p[1];
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "R,C");
        kaldi::quasar::InputShapeTemplate::InputShapeTemplate(&v80, __p);
        v63 = v80;
        v64 = v81;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      kaldi::quasar::InputShapeTemplate::Get(&v63, v45, v4[6], &v80);
      ComputeEngine = kaldi::quasar::CEInferenceNet::GetComputeEngine(v40);
      v48 = *(this + 19);
      v49 = *(this + 22);
      LODWORD(__p[2]) = *(this + 40);
      HIDWORD(__p[2]) = v45;
      __p[3] = *(this + 21);
      __p[4] = v49;
      __p[0] = &unk_1F2CFA908;
      __p[1] = v48;
      v50 = *(this + 25);
      *(this + 25) = 0;
      v61 = v50;
      kaldi::quasar::CreateBufferFromMatrix(ComputeEngine, __p, &v80, &v61, &v62);
      v51 = v62;
      v62 = 0;
      v52 = *(this + 25);
      *(this + 25) = v51;
      if (v52)
      {
        (*(*v52 + 8))(v52);
        v53 = v62;
        v62 = 0;
        if (v53)
        {
          (*(*v53 + 8))(v53);
        }
      }

      v54 = v61;
      v61 = 0;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      __p[0] = &unk_1F2CFA908;
      memset(&__p[1], 0, 32);
      quasar::Bitmap::~Bitmap(__p);
      kaldi::quasar::CEInferenceNet::Feedforward(v40, this + 25, this + 26, 0);
      kaldi::CuMatrixBase<float>::SetZero(this + 144);
      v55 = *kaldi::quasar::CEDecoder::Engine(*(*(this + 2) + 824));
      kaldi::quasar::ComputeEngineBufferItf::GetShape(*(this + 26), __p);
      (*(*v55 + 64))(&v62, v55, __p);
      v56 = v62;
      v62 = 0;
      v57 = *(this + 1);
      *(this + 1) = v56;
      if (v57)
      {
        (*(*v57 + 8))(v57);
        v58 = v62;
        v62 = 0;
        if (v58)
        {
          (*(*v58 + 8))(v58);
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      for (i = 0; kaldi::quasar::ComputeEngineBufferItf::GetSize(*(this + 1)) > i; ++i)
      {
        v60 = *(this + 1);
        (*(**(this + 26) + 112))(*(this + 26), i);
        (*(*v60 + 104))(v60, i);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

LABEL_73:
    ++*(this + 16);
    result = (*(*v3 + 8))(v3);
    if (result)
    {
      break;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_77;
  }

  return result;
}

void sub_1B5130CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 128);
  if (v24)
  {
    *(v22 - 120) = v24;
    operator delete(v24);
  }

  *(v22 - 128) = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v22 - 128));
  _Unwind_Resume(a1);
}

uint64_t std::deque<kaldi::Vector<float>>::pop_front(int64x2_t *a1)
{
  kaldi::Vector<float>::Destroy(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0xAAuLL)) + 24 * (a1[2].i64[0] % 0xAAuLL));
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);

  return std::deque<kaldi::Vector<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<kaldi::Vector<float>>::emplace_back<kaldi::SubVector<float>>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<kaldi::Vector<float>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  kaldi::Vector<float>::Resize(v8, *(a2 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v8, a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0xAA));
  v14 = *v13 + 24 * (v11 % 0xAA);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 24;
}

uint64_t quasar::SecondPassEncoderCacheView::SecondPassEncoderCacheView(uint64_t a1, uint64_t a2, kaldi::OnlineFeatureMatrix **a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *a1 = &unk_1F2CFF0F8;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2 + 824;
  AllAedFeat = kaldi::OnlineFeatureMatrix::GetAllAedFeat(*a3);
  kaldi::CuMatrix<float>::CuMatrix<float>(a1 + 24, AllAedFeat, 111, 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = *(a2 + 596);
  *(a1 + 84) = *(a2 + 1177);
  if (quasar::gLogLevel >= 4)
  {
    v41 = 0u;
    v42 = 0u;
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
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "AED states (", 12);
    v14 = MEMORY[0x1B8C84C00](v13, *(a1 + 44));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
    v16 = MEMORY[0x1B8C84C00](v15, *(a1 + 40));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
  }

  *(a1 + 76) = a6;
  if (a7 < 0)
  {
    v18 = *(a1 + 44);
    goto LABEL_7;
  }

  v17 = a7 + a6;
  v18 = *(a1 + 44);
  if (a7 + a6 >= v18)
  {
LABEL_7:
    v17 = v18;
  }

  if (v17 >= *(*a4 + 592))
  {
    v17 = *(*a4 + 592);
  }

  *(a1 + 72) = v17;
  v19 = *(a1 + 80);
  if (v19 > kaldi::quasar::CEDecoder::MaxEncoderSize(**(a1 + 16)))
  {
    if (quasar::gLogLevel >= 4)
    {
      v41 = 0u;
      v42 = 0u;
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
      v26 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v26);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Shrinking the decodingWindowSize from ", 38);
      v21 = MEMORY[0x1B8C84C00](v20, *(a1 + 80));
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " to ", 4);
      v23 = kaldi::quasar::CEDecoder::MaxEncoderSize(**(a1 + 16));
      v24 = MEMORY[0x1B8C84C00](v22, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " because that's the maximum size that the model can handle", 58);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v26);
    }

    *(a1 + 80) = kaldi::quasar::CEDecoder::MaxEncoderSize(**(a1 + 16));
  }

  return a1;
}

void sub_1B51311C0(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix((v1 + 3));
  v4 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SecondPassEncoderCacheView::advance(quasar::SecondPassEncoderCacheView *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(this + 18);
  v2 = *(this + 19);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if ((v5 < 0) ^ v4 | (v5 == 0))
  {
    result = *(this + 1);
    *(this + 1) = 0;
    if (result)
    {
      v20 = *(*result + 8);

      return v20();
    }
  }

  else
  {
    v6 = *(this + 20);
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
    if (!*(this + 21))
    {
      v8 = kaldi::quasar::CEDecoder::MaxEncoderSize(**(this + 2));
    }

    kaldi::CuMatrix<float>::CuMatrix(v26, v8, *(this + 10), 0, 0, 0);
    *&v24 = v26[1];
    *(&v24 + 1) = __PAIR64__(v7, v27);
    v25 = v29;
    __p = &unk_1F2CFA908;
    v9 = *(this + 12);
    v10 = v9 * *(this + 19);
    v11 = *(this + 4) + 4 * v10;
    v12 = *(this + 13) - v10;
    v13 = *(this + 7);
    DWORD2(v31) = *(this + 10);
    HIDWORD(v31) = v7;
    *&v32 = __PAIR64__(v12, v9);
    *(&v32 + 1) = v13;
    v30 = &unk_1F2CFA908;
    *&v31 = v11;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&__p, &v30, 111);
    v30 = &unk_1F2CFA908;
    v31 = 0u;
    v32 = 0u;
    quasar::Bitmap::~Bitmap(&v30);
    __p = &unk_1F2CFA908;
    v24 = 0u;
    v25 = 0u;
    quasar::Bitmap::~Bitmap(&__p);
    v14 = kaldi::quasar::CEDecoder::Engine(**(this + 2));
    v30 = 1;
    *&v31 = v28;
    *(&v31 + 1) = v27;
    v24 = 0uLL;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v30, &v32, 3uLL);
    v21 = 0;
    kaldi::quasar::CreateBufferFromMatrix(v14, v26, &__p, &v21, &v22);
    v15 = v22;
    v22 = 0;
    v16 = *(this + 1);
    *(this + 1) = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
      v17 = v22;
      v22 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v21;
    v21 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (__p)
    {
      *&v24 = __p;
      operator delete(__p);
    }

    result = kaldi::CuMatrix<float>::~CuMatrix(v26);
    *(this + 19) += *(this + 20);
  }

  return result;
}

void sub_1B513152C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a10)
  {
    kaldi::quasar::CEInferenceNet::Feedforward();
  }

  if (__p)
  {
    operator delete(__p);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&a17);
  _Unwind_Resume(a1);
}

uint64_t quasar::AEDBeamSearchDecoder::AEDBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = quasar::CTCAlignedDecoder::CTCAlignedDecoder(a1, a2);
  *v3 = &unk_1F2CFF138;
  *(v3 + 592) = 0;
  *(v3 + 596) = -1;
  *(v3 + 600) = 0x8000000080;
  *(v3 + 608) = 1;
  std::string::basic_string[abi:ne200100]<0>((v3 + 616), "average-by-length");
  *(a1 + 640) = 0;
  std::string::basic_string[abi:ne200100]<0>(v6, "<?>");
  std::string::basic_string[abi:ne200100]<0>(v7, "<eps>");
  std::unordered_set<std::string>::unordered_set(a1 + 648, v6, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (v7[i * 8 + 23] < 0)
    {
      operator delete(v6[i + 3]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 696), "▁");
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::OnlineLatticeBiglmFasterDecoderConfig((a1 + 856));
  *(a1 + 1016) = 0xCF000000CF000000;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1089) = 0u;
  *(a1 + 1108) = 5000;
  *(a1 + 1112) = 0;
  *(a1 + 1116) = 0u;
  *(a1 + 1132) = 0u;
  *(a1 + 1145) = 0u;
  *(a1 + 1161) = 1;
  *(a1 + 1164) = 60000;
  *(a1 + 1172) = 500;
  *(a1 + 1176) = 0;
  *(a1 + 1180) = 0x60000000BLL;
  *(a1 + 1188) = 0;
  *(a1 + 1192) = 0x3F3333333E99999ALL;
  *(a1 + 1200) = 15;
  *(a1 + 1204) = 0;
  *(a1 + 1208) = 5;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1264) = -1;
  *(a1 + 1272) = 0x3E99999A3F333333;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1304) = a1 + 1312;
  std::string::basic_string[abi:ne200100]<0>((a1 + 1328), "decrease-by-one");
  *(a1 + 57) = 1;
  return a1;
}

void sub_1B51317D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__tree<int>::destroy(v15 + 1304, *(v15 + 1312));
  if (*(v15 + 1303) < 0)
  {
    operator delete(*v18);
  }

  quasar::AEDBeamSearchDecoder::AEDBeamSearchDecoder(v15, (v15 + 1240), (v15 + 1216), (v15 + 856));
  v20 = *(v15 + 848);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v15 + 832);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(v15 + 816);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*(v15 + 807) < 0)
  {
    operator delete(*(v15 + 784));
  }

  if (*(v15 + 783) < 0)
  {
    operator delete(*(v15 + 760));
  }

  v23 = *(v15 + 752);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*(v15 + 743) < 0)
  {
    operator delete(*(v15 + 720));
  }

  if (*(v15 + 719) < 0)
  {
    operator delete(*v17);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15 + 648);
  if (*(v15 + 639) < 0)
  {
    operator delete(*v16);
  }

  quasar::CTCAlignedDecoder::~CTCAlignedDecoder(v15);
  _Unwind_Resume(a1);
}

void quasar::AEDBeamSearchDecoder::~AEDBeamSearchDecoder(void **this)
{
  *this = &unk_1F2CFF138;
  if (*(this + 1351) < 0)
  {
    operator delete(this[166]);
  }

  std::__tree<int>::destroy((this + 163), this[164]);
  if (*(this + 1303) < 0)
  {
    operator delete(this[160]);
  }

  if (*(this + 1263) < 0)
  {
    operator delete(this[155]);
  }

  if (*(this + 1239) < 0)
  {
    operator delete(this[152]);
  }

  v2 = this[144];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v7 = this + 140;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 1103) < 0)
  {
    operator delete(this[135]);
  }

  if (*(this + 1079) < 0)
  {
    operator delete(this[132]);
  }

  if (*(this + 1055) < 0)
  {
    operator delete(this[129]);
  }

  v3 = this[106];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[104];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[102];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 807) < 0)
  {
    operator delete(this[98]);
  }

  if (*(this + 783) < 0)
  {
    operator delete(this[95]);
  }

  v6 = this[94];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 743) < 0)
  {
    operator delete(this[90]);
  }

  if (*(this + 719) < 0)
  {
    operator delete(this[87]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 81));
  if (*(this + 639) < 0)
  {
    operator delete(this[77]);
  }

  *this = &unk_1F2D37E18;
  if (*(this + 591) < 0)
  {
    operator delete(this[71]);
  }

  std::__tree<int>::destroy((this + 68), this[69]);
  if (*(this + 535) < 0)
  {
    operator delete(this[64]);
  }

  v7 = this + 60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 479) < 0)
  {
    operator delete(this[57]);
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::AEDBeamSearchDecoder::~AEDBeamSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void sub_1B51328E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::UttDetectConfig::registerParams(uint64_t a1, quasar::SystemConfig *this, const void **a3)
{
  quasar::SystemConfig::getPrefix(this, &v9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v9.__r_.__value_.__l.__data_, a3, &__p);
  quasar::SystemConfig::setPrefix(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::Register(a1, this);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  quasar::EndPointDecoderConfig::registerParams(a1 + 160, this, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "use-nnet");
  std::string::basic_string[abi:ne200100]<0>(v6, "Use nnet for utterance detection if true");
  quasar::SystemConfig::Register<BOOL>(this, &__p.__r_.__value_.__l.__data_, a1 + 304, v6, 1, 15, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "left-context");
  std::string::basic_string[abi:ne200100]<0>(v6, "Use left context for utterance detection if true");
  quasar::SystemConfig::Register<BOOL>(this, &__p.__r_.__value_.__l.__data_, a1 + 305, v6, 0, 15, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "hard-max-utt-length-ms");
  std::string::basic_string[abi:ne200100]<0>(v6, "If the utterance exceeds this length, force trigger the utterance detector. Ignored if <= 0. It is named 'hard' because there is a softer 'max-utt-length' config that does not trigger right away when exceeded.");
  quasar::SystemConfig::Register<int>(this, &__p.__r_.__value_.__l.__data_, a1 + 308, v6, 0, 108, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "utt-start-threshold");
  std::string::basic_string[abi:ne200100]<0>(v6, "If the speech activity detection model produce a score higher than threshold, we enable the decoder for graph/beam search. ");
  quasar::SystemConfig::Register<float>(this, &__p.__r_.__value_.__l.__data_, a1 + 312, v6, 0, 108, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "utt-start-silence-length-ms");
  std::string::basic_string[abi:ne200100]<0>(v6, "We include up to this much preceding silence when a new utterance start is detected. ");
  quasar::SystemConfig::Register<int>(this, &__p.__r_.__value_.__l.__data_, a1 + 316, v6, 0, 108, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::setPrefix(this, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B5132CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(exception_object);
}

void quasar::AEDBeamSearchDecoder::finishInit(quasar::AEDBeamSearchDecoder *this)
{
  v2 = (this + 744);
  quasar::ModelLoader::readSymbolTable(*(this + 47), this + 720, 4, 0, __p);
  v3 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v4 = *(this + 94);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }

  quasar::CTCAlignedDecoder::readNonDisplayableSymbols(this, v2);
  v5 = *(this + 1239);
  if (v5 < 0)
  {
    v5 = *(this + 153);
  }

  if (v5)
  {
    v6 = (*(**(this + 93) + 96))(*(this + 93), this + 1216);
    *(this + 316) = v6;
    if (v6 != -1)
    {
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 544, this + 316);
    }
  }

  v7 = *(this + 1263);
  if (v7 < 0)
  {
    v7 = *(this + 156);
  }

  if (v7)
  {
    v8 = (*(**(this + 93) + 96))(*(this + 93), this + 1240);
    *(this + 317) = v8;
    if (v8 != -1)
    {
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 544, this + 317);
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  kaldi::SplitStringToVector((this + 1280), ",", 1, &v21);
  v9 = v21;
  v10 = v22;
  while (v9 != v10)
  {
    v11 = (*(**v2 + 96))(*v2, v9);
    if (v11 != -1)
    {
      LODWORD(__p[0]) = v11;
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 1304, __p);
    }

    v9 += 24;
  }

  if ((*(this + 1188) & 1) == 0)
  {
    v12 = *(this + 47);
    v18 = 0;
    v19 = 0;
    LOBYTE(__p[0]) = 0;
    v17 = 0;
    quasar::ModelLoader::readNeuralNetwork(v12, this + 95, 1, 1, 1, &v18, __p, &v20);
    v13 = v20;
    v20 = 0uLL;
    v14 = *(this + 102);
    *(v2 + 4) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
      }
    }

    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  std::allocate_shared[abi:ne200100]<kaldi::quasar::CEDecoder,std::allocator<kaldi::quasar::CEDecoder>,std::string &,0>();
}

void sub_1B5133108(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v17 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  JUMPOUT(0x1B5133150);
}

void sub_1B513314C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  a11 = (v11 - 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t quasar::AEDBeamSearchDecoder::runImpl(uint64_t a1, void *a2, uint64_t *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a1 + 592) == 1)
  {
    if ((*(a1 + 1188) & 1) == 0)
    {
      v5 = a2[2];
      v6 = 0xFFFFFFFFLL;
      do
      {
        v7 = (*(*v5 + 8))(v5, v6);
        v6 = (v6 + 1);
      }

      while ((v7 & 1) == 0);
    }

    return 1;
  }

  if (*(a1 + 1188) != 1 || *(a1 + 1204) != 1)
  {
    goto LABEL_26;
  }

  v10 = *a3;
  (*(*a1 + 176))(__p, a1);
  v50 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 120, __p);
  v13 = *(v11 + 56);
  v12 = *(v11 + 64);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = v12;
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v13)
  {
LABEL_26:
    quasar::rescoring::AdapterModel::getFeaturizer(*(*a3 + 624));
    v21 = *(a1 + 744);
    v22 = *(a1 + 752);
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = a2[22];
    a2[21] = v21;
    a2[22] = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN3fst11SymbolTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v14 = *(v13 + 104);
  v15 = *(v13 + 108);
  v31 = v15;
  v16 = *(*a3 + 592);
  if (v14 < v16 && v15 != 0)
  {
    v24 = *(a1 + 1208);
    v25 = (v14 - v24) & ~((v14 - v24) >> 31);
    v32 = v25;
    if (v15 >= 1)
    {
      v26 = v15 + v14 + v24;
      if (v16 < v26)
      {
        v26 = *(*a3 + 592);
      }

      v31 = v26 - v25;
    }

    if (quasar::gLogLevel >= 5)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      *v44 = 0u;
      v45 = 0u;
      *v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      *v39 = 0u;
      *v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "AED redecoding encoder cache starting from ", 43);
      v28 = MEMORY[0x1B8C84C00](v27, v32);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", length ", 9);
      MEMORY[0x1B8C84C00](v29, v31);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    goto LABEL_26;
  }

  if (quasar::gLogLevel >= 4)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    *v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    *v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skip AED redecoding because it may be a segment with only silence ", 66);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  if (*(a1 + 1276) >= 0.00001)
  {
    v18 = *(*a3 + 592);
    if (v18)
    {
      if (v18 <= kaldi::quasar::CEDecoder::MaxEncoderSize(*(a1 + 824)))
      {
        if (quasar::gLogLevel >= 4)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v44 = 0u;
          v45 = 0u;
          *v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          *v39 = 0u;
          *v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Run AED rescoring on the segment.", 33);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        goto LABEL_26;
      }
    }
  }

  if (quasar::gLogLevel >= 4)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    *v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    *v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Skip AED rescoring because of rescoring-AED-scale: ", 51);
    v19 = std::ostream::operator<<();
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", or segment length: ", 21);
    MEMORY[0x1B8C84C10](v20, *(*a3 + 592));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  a2[84] = *(a1 + 688);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  return 0;
}

void sub_1B5134D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49)
{
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  JUMPOUT(0x1B5135108);
}

void sub_1B5134DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  JUMPOUT(0x1B5135140);
}

void sub_1B5134DE0()
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    JUMPOUT(0x1B513513CLL);
  }

  JUMPOUT(0x1B5135140);
}

void sub_1B5134DF8()
{
  if (!STACK[0x2A8])
  {
    JUMPOUT(0x1B513514CLL);
  }

  JUMPOUT(0x1B5135148);
}

void sub_1B5134E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a25);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a27);
  std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](&STACK[0x280]);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v69 = a22;
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
    v69 = a22;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  STACK[0x280] = &a45;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  std::__function::__value_func<float ()(std::pair<float,std::vector<int>> const&)>::~__value_func[abi:ne200100](v67 - 152);
  STACK[0x280] = &a55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  if (a58)
  {
    a59 = a58;
    operator delete(a58);
  }

  if (a61)
  {
    a62 = a61;
    operator delete(a61);
  }

  if (a67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a67);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_2::operator()(uint64_t *a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  LOBYTE(v17[0].__loc_.__locale_) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v17, 1);
  v4 = *a2;
  if (*a2 != a2[1])
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "    ", 4);
    v6 = *v5;
    *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v5 + *(v6 - 24) + 16) = 6;
    v7 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " | ", 3);
    v8 = *a1;
    quasar::AEDBeamSearchDecoder::runImpl(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::function<BOOL ()(void)> const&,BOOL)::$_5::operator()(a1 + 1, (v4 + 8), v17);
    kaldi::JoinVectorToString<std::string>(v17, "");
    *&v18 = v17;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v17, v8 + 696, 0);
  }

  std::stringbuf::str();
  v11[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v9;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v16);
}

void sub_1B51359E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  a15 = v28 - 136;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a15);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v28 - 112));
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::vector<quasar::Token> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<quasar::Token>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::Token> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t fst::Union<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 112))(a2);
  if (!fst::CompatSymbols(v4, v5, 1) || (v6 = (*(*a1 + 120))(a1), v7 = (*(*a2 + 120))(a2), !fst::CompatSymbols(v6, v7, 1)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v20 = fst::LogMessage::LogMessage(&v35, &__p);
    v21 = fst::cerr(v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Union: input/output symbol tables of 1st argument ", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "do not match input/output symbol tables of 2nd argument", 55);
    fst::LogMessage::~LogMessage(&v35);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    return (*(*a1 + 192))(a1, 4, 4);
  }

  v8 = (*(*a1 + 160))(a1);
  v9 = (*(*a1 + 64))(a1, 0x2000000000, 1);
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  result = (*(*a2 + 24))(a2);
  if (result == -1)
  {
    if ((v11 & 4) != 0)
    {
      v25 = *(*a1 + 192);

      return v25(a1, 4, 4);
    }

    return result;
  }

  v13 = result;
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v14 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
    if (v9)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8 + 1;
    }

    (*(*a1 + 248))(a1, (v15 + v14));
  }

  v37 = 0;
  (*(*a2 + 128))(a2, &v35);
LABEL_10:
  if (!v35)
  {
    if (v37 >= v36)
    {
      goto LABEL_40;
    }

    goto LABEL_14;
  }

  if (!(*(*v35 + 16))(v35))
  {
LABEL_14:
    v16 = (*(*a1 + 200))(a1);
    if (v35)
    {
      v17 = (*(*v35 + 24))(v35);
    }

    else
    {
      v17 = v37;
    }

    (*(*a2 + 32))(&__p, a2, v17);
    (*(*a1 + 184))(a1, v16, &__p);
    v18 = (*(*a2 + 40))(a2, v17);
    (*(*a1 + 256))(a1, v16, v18);
    v34 = 0;
    (*(*a2 + 136))(a2, v17, &__p);
    while (__p)
    {
      if ((*(*__p + 24))(__p))
      {
        if (__p)
        {
          (*(*__p + 8))();
          goto LABEL_31;
        }

LABEL_29:
        if (v33)
        {
          --*v33;
        }

LABEL_31:
        if (v35)
        {
          (*(*v35 + 32))(v35);
        }

        else
        {
          ++v37;
        }

        goto LABEL_10;
      }

      if (!__p)
      {
        goto LABEL_23;
      }

      v19 = (*(*__p + 32))();
LABEL_24:
      v28[0] = *v19;
      v28[1] = *(v19 + 8);
      v29 = *(v19 + 16) + v8;
      (*(*a1 + 208))(a1, v16, v28);
      if (__p)
      {
        (*(*__p + 40))(__p);
      }

      else
      {
        ++v34;
      }
    }

    if (v34 >= v32)
    {
      goto LABEL_29;
    }

LABEL_23:
    v19 = v31 + 20 * v34;
    goto LABEL_24;
  }

  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

LABEL_40:
  v23 = (*(*a1 + 24))(a1);
  if (v23 == -1)
  {
    (*(*a1 + 176))(a1, v13);
    return (*(*a1 + 192))(a1, v11, 0x3FFFFFFF0004);
  }

  else
  {
    v24 = v23;
    if (v9)
    {
      __p = 0;
      v31 = 0;
      LODWORD(v32) = v13 + v8;
      (*(*a1 + 208))(a1, v23, &__p);
    }

    else
    {
      v26 = (*(*a1 + 200))(a1);
      (*(*a1 + 176))(a1, v26);
      __p = 0;
      v31 = 0;
      LODWORD(v32) = v24;
      (*(*a1 + 208))(a1, v26, &__p);
      __p = 0;
      v31 = 0;
      LODWORD(v32) = v13 + v8;
      (*(*a1 + 208))(a1, v26, &__p);
    }

    v27 = fst::UnionProperties(v10, v11, 0);
    return (*(*a1 + 192))(a1, v27, 0x3FFFFFFF0007);
  }
}

void sub_1B51363E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::FirstPassEncoderCacheView::~FirstPassEncoderCacheView(quasar::FirstPassEncoderCacheView *this)
{
  *this = &unk_1F2CFF0B8;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  std::deque<kaldi::Vector<float>>::~deque[abi:ne200100](this + 12);
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F2CFF0B8;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  std::deque<kaldi::Vector<float>>::~deque[abi:ne200100](this + 12);
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::SecondPassEncoderCacheView::~SecondPassEncoderCacheView(quasar::SecondPassEncoderCacheView *this)
{
  *this = &unk_1F2CFF0F8;
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_1F2CFF0F8;
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 5;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(v8, v8 + 32, a2 - 32);
          return;
        case 4:
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(v8, v8 + 32, v8 + 64);
          v51 = *(a2 - 32);
          v52 = *(v8 + 64);
          if (v51 > v52)
          {
            *(v8 + 64) = v51;
            *(a2 - 32) = v52;
            v53 = *(v8 + 72);
            *(v8 + 72) = *(a2 - 24);
            *(a2 - 24) = v53;
            v54 = *(v8 + 80);
            *(v8 + 80) = *(a2 - 16);
            *(a2 - 16) = v54;
            v55 = *(v8 + 88);
            *(v8 + 88) = *(a2 - 8);
            *(a2 - 8) = v55;
            v56 = *(v8 + 64);
            v57 = *(v8 + 32);
            if (v56 > v57)
            {
              *(v8 + 32) = v56;
              *(v8 + 64) = v57;
              v58 = *(v8 + 72);
              v59 = *(v8 + 80);
              v60 = *(v8 + 40);
              *(v8 + 40) = v58;
              *(v8 + 48) = v59;
              *(v8 + 72) = v60;
              v61 = *(v8 + 56);
              v62 = *(v8 + 88);
              *(v8 + 56) = v62;
              v63 = *v8;
              v64 = v56 <= *v8;
              *(v8 + 88) = v61;
              if (!v64)
              {
                *v8 = v56;
                *(v8 + 32) = v63;
                v65 = *(v8 + 8);
                *(v8 + 8) = v58;
                *(v8 + 16) = v59;
                *(v8 + 40) = v65;
                v66 = *(v8 + 24);
                *(v8 + 24) = v62;
                *(v8 + 56) = v66;
              }
            }
          }

          return;
        case 5:

          _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEvT1_S1J_S1J_S1J_S1J_S1D_(v8, v8 + 32, v8 + 64, (v8 + 96), (a2 - 32));
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v46 = *(a2 - 32);
        v47 = *v8;
        if (v46 > *v8)
        {
          *v8 = v46;
          *(a2 - 32) = v47;
          v48 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 24);
          *(a2 - 24) = v48;
          v49 = *(v8 + 16);
          *(v8 + 16) = *(a2 - 16);
          *(a2 - 16) = v49;
          v50 = *(v8 + 24);
          *(v8 + 24) = *(a2 - 8);
          *(a2 - 8) = v50;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v80 = v10 >> 1;
      v81 = v10 >> 1;
      do
      {
        v82 = v81;
        if (v80 >= v81)
        {
          v83 = (2 * v81) | 1;
          v84 = v8 + 32 * v83;
          if (2 * v82 + 2 < v9 && *v84 > *(v84 + 32))
          {
            v84 += 32;
            v83 = 2 * v82 + 2;
          }

          v85 = v8 + 32 * v82;
          v86 = *v85;
          if (*v84 <= *v85)
          {
            v126 = *(v85 + 8);
            v87 = *(v85 + 24);
            *(v85 + 16) = 0;
            *(v85 + 24) = 0;
            *(v85 + 8) = 0;
            v88 = *v84;
            do
            {
              v89 = v85;
              v85 = v84;
              *v89 = v88;
              std::vector<int>::__move_assign((v89 + 2), (v84 + 8));
              if (v80 < v83)
              {
                break;
              }

              v90 = 2 * v83;
              v83 = (2 * v83) | 1;
              v84 = v8 + 32 * v83;
              v91 = v90 + 2;
              if (v91 < v9 && *v84 > *(v84 + 32))
              {
                v84 += 32;
                v83 = v91;
              }

              v88 = *v84;
            }

            while (*v84 <= v86);
            *v85 = v86;
            v92 = *(v85 + 8);
            if (v92)
            {
              *(v85 + 16) = v92;
              operator delete(v92);
            }

            *(v85 + 8) = v126;
            *(v85 + 24) = v87;
          }
        }

        v81 = v82 - 1;
      }

      while (v82);
      while (2)
      {
        v93 = 0;
        v94 = *v8;
        v95 = *(v8 + 8);
        v127 = *(v8 + 16);
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v96 = v8;
        *(v8 + 8) = 0;
        do
        {
          v97 = v96;
          v98 = v96 + 32 * v93;
          v96 = v98 + 32;
          v99 = 2 * v93;
          v93 = (2 * v93) | 1;
          v100 = v99 + 2;
          if (v100 < v9)
          {
            v102 = *(v98 + 64);
            v101 = v98 + 64;
            if (*(v101 - 32) > v102)
            {
              v96 = v101;
              v93 = v100;
            }
          }

          v103 = (v96 + 8);
          *v97 = *v96;
          std::vector<int>::__move_assign((v97 + 2), (v96 + 8));
        }

        while (v93 <= ((v9 - 2) >> 1));
        v104 = a2 - 32;
        if (v96 == a2 - 32)
        {
          *v96 = v94;
          v115 = *(v96 + 8);
          if (v115)
          {
            *(v96 + 16) = v115;
            operator delete(v115);
            *(v96 + 16) = 0;
            *(v96 + 24) = 0;
          }

          *v103 = v95;
LABEL_131:
          *(v96 + 16) = v127;
        }

        else
        {
          *v96 = *(a2 - 32);
          std::vector<int>::__move_assign(v96 + 8, (a2 - 24));
          *(a2 - 32) = v94;
          v105 = *(a2 - 24);
          if (v105)
          {
            *(a2 - 16) = v105;
            operator delete(v105);
          }

          *(a2 - 24) = v95;
          *(a2 - 16) = v127;
          v106 = (v96 + 32 - v8) >> 5;
          v64 = v106 < 2;
          v107 = v106 - 2;
          if (!v64)
          {
            v108 = v107 >> 1;
            v109 = v8 + 32 * (v107 >> 1);
            v110 = *v96;
            if (*v109 > *v96)
            {
              v111 = *(v96 + 8);
              v127 = *(v96 + 16);
              *v103 = 0;
              *(v96 + 16) = 0;
              *(v96 + 24) = 0;
              v112 = *v109;
              do
              {
                v113 = v96;
                v96 = v109;
                *v113 = v112;
                std::vector<int>::__move_assign((v113 + 2), (v109 + 8));
                if (!v108)
                {
                  break;
                }

                v108 = (v108 - 1) >> 1;
                v109 = v8 + 32 * v108;
                v112 = *v109;
              }

              while (*v109 > v110);
              *v96 = v110;
              v114 = *(v96 + 8);
              if (v114)
              {
                *(v96 + 16) = v114;
                operator delete(v114);
                *(v96 + 16) = 0;
                *(v96 + 24) = 0;
              }

              *(v96 + 8) = v111;
              goto LABEL_131;
            }
          }
        }

        a2 = v104;
        v64 = v9-- <= 2;
        if (v64)
        {
          return;
        }

        continue;
      }
    }

    v11 = v9 >> 1;
    v12 = v8 + 32 * (v9 >> 1);
    if (v9 < 0x81)
    {
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1 + 32 * (v9 >> 1), a1, a2 - 32);
    }

    else
    {
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1, a1 + 32 * (v9 >> 1), a2 - 32);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1 + 32, v12 - 32, a2 - 64);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1 + 64, a1 + 32 + 32 * v11, a2 - 96);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(v12 - 32, a1 + 32 * (v9 >> 1), a1 + 32 + 32 * v11);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
      v14 = *(a1 + 8);
      *(a1 + 8) = *(v12 + 8);
      *(v12 + 8) = v14;
      v15 = *(a1 + 24);
      *(a1 + 24) = *(v12 + 24);
      *(v12 + 24) = v15;
    }

    --a3;
    v16 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 32) > v16)
    {
      v17 = 0;
      v123 = *(a1 + 8);
      v18 = *(a1 + 24);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      do
      {
        v19 = *(a1 + v17 + 32);
        v17 += 32;
      }

      while (v19 > v16);
      v20 = a1 + v17;
      v21 = a2;
      if (v17 == 32)
      {
        v21 = a2;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v23 = *(v21 - 8);
          v21 -= 8;
        }

        while (v23 <= v16);
      }

      else
      {
        do
        {
          v22 = *(v21 - 8);
          v21 -= 8;
        }

        while (v22 <= v16);
      }

      if (v20 >= v21)
      {
        v8 = a1 + v17;
      }

      else
      {
        v24 = *v21;
        v8 = a1 + v17;
        v25 = v21;
        do
        {
          *v8 = v24;
          *v25 = v19;
          v26 = *(v8 + 8);
          *(v8 + 8) = *(v25 + 1);
          *(v25 + 1) = v26;
          v27 = *(v8 + 16);
          *(v8 + 16) = *(v25 + 2);
          *(v25 + 2) = v27;
          v28 = *(v8 + 24);
          *(v8 + 24) = *(v25 + 3);
          *(v25 + 3) = v28;
          do
          {
            v29 = *(v8 + 32);
            v8 += 32;
            v19 = v29;
          }

          while (v29 > v16);
          do
          {
            v30 = *(v25 - 8);
            v25 -= 8;
            v24 = v30;
          }

          while (v30 <= v16);
        }

        while (v8 < v25);
      }

      if (v8 - 32 != a1)
      {
        *a1 = *(v8 - 32);
        std::vector<int>::__move_assign(a1 + 8, (v8 - 24));
      }

      *(v8 - 32) = v16;
      v31 = *(v8 - 24);
      if (v31)
      {
        *(v8 - 16) = v31;
        operator delete(v31);
      }

      *(v8 - 24) = v123;
      *(v8 - 8) = v18;
      if (v20 < v21)
      {
        goto LABEL_39;
      }

      v32 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_EEbT1_S1J_S1D_(a1, v8 - 32);
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_EEbT1_S1J_S1D_(v8, a2))
      {
        a2 = v8 - 32;
        if (v32)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v32)
      {
LABEL_39:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(a1, v8 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v124 = *(a1 + 8);
      v33 = *(a1 + 24);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      if (v16 <= *(a2 - 32))
      {
        v35 = a1 + 32;
        do
        {
          v8 = v35;
          if (v35 >= a2)
          {
            break;
          }

          v35 += 32;
        }

        while (v16 <= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v34 = *(v8 + 32);
          v8 += 32;
        }

        while (v16 <= v34);
      }

      v36 = a2;
      if (v8 < a2)
      {
        v36 = a2;
        do
        {
          v37 = *(v36 - 32);
          v36 -= 32;
        }

        while (v16 > v37);
      }

      if (v8 < v36)
      {
        v38 = *v8;
        v39 = *v36;
        do
        {
          *v8 = v39;
          *v36 = v38;
          v40 = *(v8 + 8);
          *(v8 + 8) = *(v36 + 8);
          *(v36 + 8) = v40;
          v41 = *(v8 + 16);
          *(v8 + 16) = *(v36 + 16);
          *(v36 + 16) = v41;
          v42 = *(v8 + 24);
          *(v8 + 24) = *(v36 + 24);
          *(v36 + 24) = v42;
          do
          {
            v43 = *(v8 + 32);
            v8 += 32;
            v38 = v43;
          }

          while (v16 <= v43);
          do
          {
            v44 = *(v36 - 32);
            v36 -= 32;
            v39 = v44;
          }

          while (v16 > v44);
        }

        while (v8 < v36);
      }

      if (v8 - 32 != a1)
      {
        *a1 = *(v8 - 32);
        std::vector<int>::__move_assign(a1 + 8, (v8 - 24));
      }

      *(v8 - 32) = v16;
      v45 = *(v8 - 24);
      if (v45)
      {
        *(v8 - 16) = v45;
        operator delete(v45);
      }

      a4 = 0;
      *(v8 - 24) = v124;
      *(v8 - 8) = v33;
    }
  }

  v67 = v8 + 32;
  v69 = v8 == a2 || v67 == a2;
  if (a4)
  {
    if (!v69)
    {
      v70 = 0;
      v71 = v8;
      do
      {
        v72 = v67;
        v73 = *(v71 + 32);
        v74 = *v71;
        if (v73 > *v71)
        {
          v75 = *(v71 + 40);
          v125 = *(v71 + 48);
          *(v71 + 48) = 0;
          *(v71 + 56) = 0;
          v76 = v70;
          *(v71 + 40) = 0;
          while (1)
          {
            v77 = v8 + v76;
            *(v8 + v76 + 32) = v74;
            std::vector<int>::__move_assign(v8 + v76 + 40, (v8 + v76 + 8));
            if (!v76)
            {
              break;
            }

            v74 = *(v77 - 32);
            v76 -= 32;
            if (v73 <= v74)
            {
              v78 = v8 + v76 + 32;
              goto LABEL_90;
            }
          }

          v78 = v8;
LABEL_90:
          *v78 = v73;
          v79 = *(v77 + 8);
          if (v79)
          {
            *(v78 + 16) = v79;
            operator delete(v79);
          }

          *(v77 + 8) = v75;
          *(v78 + 16) = v125;
        }

        v67 = v72 + 32;
        v70 += 32;
        v71 = v72;
      }

      while (v72 + 32 != a2);
    }
  }

  else if (!v69)
  {
    v116 = (v8 + 56);
    do
    {
      v117 = v67;
      v118 = *(a1 + 32);
      v119 = *a1;
      if (v118 > *a1)
      {
        v128 = *(a1 + 40);
        v120 = *(a1 + 56);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v121 = v116;
        *(a1 + 40) = 0;
        do
        {
          v121[-2].n128_f32[2] = v119;
          std::vector<int>::__move_assign(&v121[-1], v121 - 3);
          v119 = v121[-6].n128_f32[2];
          v121 -= 2;
        }

        while (v118 > v119);
        v121[-2].n128_f32[2] = v118;
        v122 = v121[-1].n128_u64[0];
        if (v122)
        {
          v121[-1].n128_u64[1] = v122;
          operator delete(v122);
        }

        v121[-1] = v128;
        v121->n128_u64[0] = v120;
      }

      v67 = v117 + 32;
      v116 += 2;
      a1 = v117;
    }

    while (v117 + 32 != a2);
  }
}

uint64_t _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 > *result)
  {
    if (v5 <= v3)
    {
      *result = v3;
      *a2 = v4;
      v16 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v16;
      v17 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      v6 = (a2 + 24);
      v18 = *(a2 + 24);
      *(a2 + 16) = v17;
      v19 = *(result + 24);
      *(result + 24) = v18;
      *(a2 + 24) = v19;
      if (*a3 <= v4)
      {
        return result;
      }

      *a2 = *a3;
      *a3 = v4;
      v20 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v20;
      v8 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
    }

    else
    {
      v6 = (result + 24);
      *result = v5;
      *a3 = v4;
      v7 = *(result + 8);
      *(result + 8) = *(a3 + 8);
      *(a3 + 8) = v7;
      v8 = *(result + 16);
      *(result + 16) = *(a3 + 16);
    }

    *(a3 + 16) = v8;
    v12 = (a3 + 24);
    goto LABEL_10;
  }

  if (v5 > v3)
  {
    *a2 = v5;
    *a3 = v3;
    v9 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v9;
    v10 = *(a2 + 16);
    *(a2 + 16) = *(a3 + 16);
    *(a3 + 16) = v10;
    v12 = (a2 + 24);
    v11 = *(a2 + 24);
    *(a2 + 24) = *(a3 + 24);
    *(a3 + 24) = v11;
    v13 = *result;
    if (*a2 > *result)
    {
      *result = *a2;
      *a2 = v13;
      v14 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(a2 + 8) = v14;
      v15 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v15;
      v6 = (result + 24);
LABEL_10:
      v21 = *v6;
      *v6 = *v12;
      *v12 = v21;
    }
  }

  return result;
}

uint64_t _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEvT1_S1J_S1J_S1J_S1J_S1D_(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  result = _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Li0EEEbT1_S1J_S1J_S1D_(a1, a2, a3);
  v11 = *a3;
  if (*a4 > *a3)
  {
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 1);
    *(a4 + 1) = v12;
    v13 = *(a3 + 16);
    *(a3 + 16) = *(a4 + 2);
    *(a4 + 2) = v13;
    v14 = *(a3 + 24);
    *(a3 + 24) = *(a4 + 3);
    *(a4 + 3) = v14;
    v15 = *a2;
    if (*a3 > *a2)
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v16;
      v17 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v17;
      v18 = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v18;
      v19 = *a1;
      if (*a2 > *a1)
      {
        *a1 = *a2;
        *a2 = v19;
        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v20;
        v21 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a2 + 16) = v21;
        v22 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v22;
      }
    }
  }

  v23 = *a4;
  if (*a5 > *a4)
  {
    *a4 = *a5;
    *a5 = v23;
    v24 = *(a4 + 1);
    *(a4 + 1) = *(a5 + 1);
    *(a5 + 1) = v24;
    v25 = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = v25;
    v26 = *(a4 + 3);
    *(a4 + 3) = *(a5 + 3);
    *(a5 + 3) = v26;
    v27 = *a3;
    if (*a4 > *a3)
    {
      *a3 = *a4;
      *a4 = v27;
      v28 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 1);
      *(a4 + 1) = v28;
      v29 = *(a3 + 16);
      *(a3 + 16) = *(a4 + 2);
      *(a4 + 2) = v29;
      v30 = *(a3 + 24);
      *(a3 + 24) = *(a4 + 3);
      *(a4 + 3) = v30;
      v31 = *a2;
      if (*a3 > *a2)
      {
        *a2 = *a3;
        *a3 = v31;
        v32 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v32;
        v33 = *(a2 + 16);
        *(a2 + 16) = *(a3 + 16);
        *(a3 + 16) = v33;
        v34 = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v34;
        v35 = *a1;
        if (*a2 > *a1)
        {
          *a1 = *a2;
          *a2 = v35;
          v36 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v36;
          v37 = *(a1 + 16);
          *(a1 + 16) = *(a2 + 16);
          *(a2 + 16) = v37;
          v38 = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v38;
        }
      }
    }
  }

  return result;
}