void sub_22CD3D0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *NL::NumericValue::upper@<X0>(NL::NumericValue *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    return std::to_string(a2, *(*this + 8));
  }

  v3 = *(this + 2);
  if (v3)
  {
    return std::to_string(a2, *(v3 + 16));
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

std::string *NL::NumericValue::lower@<X0>(NL::NumericValue *this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    return std::to_string(a2, *(*this + 4));
  }

  v3 = *(this + 2);
  if (v3)
  {
    return std::to_string(a2, *(v3 + 8));
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

std::string *NL::NumericValue::value@<X0>(int **this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    return std::to_string(a2, **this);
  }

  v3 = this[2];
  if (v3)
  {
    return std::to_string(a2, *v3);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::string>::__find_equal<std::string>(a1, a3, a5);
}

void sub_22CD3E3C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27873F898, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void nlp::CFScopedPtr<__CFNumber const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,NLSearchParseResultModifier>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,NLSearchParseResultModifier>>,0>(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_22CD3EE40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,NLSearchParseResultModifier>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,NLSearchParseResultModifier>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,NLSearchParseResultModifier>,std::__tree_node<std::__value_type<std::string,NLSearchParseResultModifier>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,NLSearchParseResultModifier>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,NLSearchParseResultModifier>,std::__tree_node<std::__value_type<std::string,NLSearchParseResultModifier>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,NLSearchParseResultModifier> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,NLSearchParseResultModifier> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__construct_node<std::pair<std::string const,NLSearchParseResultModifier> const&>();
  }

  return result;
}

void sub_22CD3F05C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
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

void nlp::CFScopedPtr<__CFAttributedString *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFSet const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,NLSearchParseResultModifier>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t createEmojiPredictorWrapper(NLEmojiGenerator *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_EmojiPredictorWrapper)
  {
    qword_280C27290 = 0;
    unk_280C272A0 = 0u;
    unk_280C272B0 = 0u;
    g_CFTypeID_EmojiPredictorWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

__CFArray *NLEmojiPredictorCreateCandidatesForString(uint64_t a1, const __CFString *a2)
{
  if (a1 && a2)
  {
    return NLEmojiGenerator::createEmojisForString(*(a1 + 24), a2);
  }

  else
  {
    return 0;
  }
}

void EmojiPredictorWrapper::~EmojiPredictorWrapper(EmojiPredictorWrapper *this)
{
  EmojiPredictorWrapper::~EmojiPredictorWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400F140;
  v2 = *(this + 1);
  if (v2)
  {
    NLEmojiGenerator::~NLEmojiGenerator(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void NLGujaratiOrthographyChecker::NLGujaratiOrthographyChecker(NLGujaratiOrthographyChecker *this)
{
  *this = &unk_28400E598;
  *(this + 1) = @"઼";
  *(this + 2) = @"‍";
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"ઁ");
  CFStringAppend(Mutable, @"ં");
  CFStringAppend(Mutable, @"઼");
  CFStringAppend(Mutable, @"ા");
  CFStringAppend(Mutable, @"િ");
  CFStringAppend(Mutable, @"ી");
  CFStringAppend(Mutable, @"ુ");
  CFStringAppend(Mutable, @"ૂ");
  CFStringAppend(Mutable, @"ૃ");
  CFStringAppend(Mutable, @"ૄ");
  CFStringAppend(Mutable, @"ૅ");
  CFStringAppend(Mutable, @"ે");
  CFStringAppend(Mutable, @"ૈ");
  CFStringAppend(Mutable, @"ૉ");
  CFStringAppend(Mutable, @"ો");
  CFStringAppend(Mutable, @"ૌ");
  CFStringAppend(Mutable, @"્");
  *(this + 3) = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  CFRelease(Mutable);
  v3 = CFStringCreateMutable(0, 0);
  CFStringAppend(v3, @"ઋ");
  CFStringAppend(v3, @"ક");
  CFStringAppend(v3, @"ખ");
  CFStringAppend(v3, @"ગ");
  CFStringAppend(v3, @"ઘ");
  CFStringAppend(v3, @"ઙ");
  CFStringAppend(v3, @"ચ");
  CFStringAppend(v3, @"છ");
  CFStringAppend(v3, @"જ");
  CFStringAppend(v3, @"ઝ");
  CFStringAppend(v3, @"ઞ");
  CFStringAppend(v3, @"ટ");
  CFStringAppend(v3, @"ઠ");
  CFStringAppend(v3, @"ડ");
  CFStringAppend(v3, @"ઢ");
  CFStringAppend(v3, @"ણ");
  CFStringAppend(v3, @"ત");
  CFStringAppend(v3, @"થ");
  CFStringAppend(v3, @"દ");
  CFStringAppend(v3, @"ધ");
  CFStringAppend(v3, @"ન");
  CFStringAppend(v3, @"પ");
  CFStringAppend(v3, @"ફ");
  CFStringAppend(v3, @"બ");
  CFStringAppend(v3, @"ભ");
  CFStringAppend(v3, @"મ");
  CFStringAppend(v3, @"ય");
  CFStringAppend(v3, @"ર");
  CFStringAppend(v3, @"લ");
  CFStringAppend(v3, @"ળ");
  CFStringAppend(v3, @"વ");
  CFStringAppend(v3, @"શ");
  CFStringAppend(v3, @"ષ");
  CFStringAppend(v3, @"સ");
  CFStringAppend(v3, @"હ");
  *(this + 4) = CFCharacterSetCreateWithCharactersInString(0, v3);
  CFRelease(v3);
  v4 = CFStringCreateMutable(0, 0);
  CFStringAppend(v4, @"ઙ");
  CFStringAppend(v4, @"ઞ");
  CFStringAppend(v4, @"ણ");
  CFStringAppend(v4, @"ન");
  CFStringAppend(v4, @"મ");
  *(this + 5) = CFCharacterSetCreateWithCharactersInString(0, v4);
  CFRelease(v4);
  v5 = CFStringCreateMutable(0, 0);
  CFStringAppend(v5, @"ક");
  CFStringAppend(v5, @"ખ");
  CFStringAppend(v5, @"ગ");
  CFStringAppend(v5, @"ઘ");
  CFStringAppend(v5, @"ઙ");
  *(this + 6) = CFCharacterSetCreateWithCharactersInString(0, v5);
  CFRelease(v5);
  v6 = CFStringCreateMutable(0, 0);
  CFStringAppend(v6, @"ચ");
  CFStringAppend(v6, @"છ");
  CFStringAppend(v6, @"જ");
  CFStringAppend(v6, @"ઝ");
  CFStringAppend(v6, @"ઞ");
  *(this + 7) = CFCharacterSetCreateWithCharactersInString(0, v6);
  CFRelease(v6);
  v7 = CFStringCreateMutable(0, 0);
  CFStringAppend(v7, @"ટ");
  CFStringAppend(v7, @"ઠ");
  CFStringAppend(v7, @"ડ");
  CFStringAppend(v7, @"ઢ");
  CFStringAppend(v7, @"ણ");
  *(this + 8) = CFCharacterSetCreateWithCharactersInString(0, v7);
  CFRelease(v7);
  v8 = CFStringCreateMutable(0, 0);
  CFStringAppend(v8, @"ટ");
  CFStringAppend(v8, @"ઠ");
  CFStringAppend(v8, @"ડ");
  CFStringAppend(v8, @"ઢ");
  CFStringAppend(v8, @"ણ");
  CFStringAppend(v8, @"ય");
  CFStringAppend(v8, @"વ");
  CFStringAppend(v8, @"શ");
  CFStringAppend(v8, @"ષ");
  CFStringAppend(v8, @"સ");
  CFStringAppend(v8, @"હ");
  *(this + 9) = CFCharacterSetCreateWithCharactersInString(0, v8);
  CFRelease(v8);
  v9 = CFStringCreateMutable(0, 0);
  *(this + 10) = CFCharacterSetCreateWithCharactersInString(0, v9);
  CFRelease(v9);
  v10 = CFStringCreateMutable(0, 0);
  CFStringAppend(v10, @"અ");
  CFStringAppend(v10, @"આ");
  CFStringAppend(v10, @"ઇ");
  CFStringAppend(v10, @"ઈ");
  CFStringAppend(v10, @"ઉ");
  CFStringAppend(v10, @"ઊ");
  CFStringAppend(v10, @"ઋ");
  CFStringAppend(v10, @"ઍ");
  CFStringAppend(v10, @"એ");
  CFStringAppend(v10, @"ઐ");
  CFStringAppend(v10, @"ઑ");
  CFStringAppend(v10, @"ઓ");
  CFStringAppend(v10, @"ઔ");
  *(this + 11) = CFCharacterSetCreateWithCharactersInString(0, v10);
  CFRelease(v10);
  v11 = CFStringCreateMutable(0, 0);
  CFStringAppend(v11, @"ઁ");
  CFStringAppend(v11, @"ં");
  CFStringAppend(v11, @"ઃ");
  CFStringAppend(v11, @"અ");
  CFStringAppend(v11, @"આ");
  CFStringAppend(v11, @"ઇ");
  CFStringAppend(v11, @"ઈ");
  CFStringAppend(v11, @"ઉ");
  CFStringAppend(v11, @"ઊ");
  CFStringAppend(v11, @"ઋ");
  CFStringAppend(v11, @"ઍ");
  CFStringAppend(v11, @"એ");
  CFStringAppend(v11, @"ઐ");
  CFStringAppend(v11, @"ઑ");
  CFStringAppend(v11, @"ઓ");
  CFStringAppend(v11, @"ઔ");
  CFStringAppend(v11, @"ક");
  CFStringAppend(v11, @"ખ");
  CFStringAppend(v11, @"ગ");
  CFStringAppend(v11, @"ઘ");
  CFStringAppend(v11, @"ઙ");
  CFStringAppend(v11, @"ચ");
  CFStringAppend(v11, @"છ");
  CFStringAppend(v11, @"જ");
  CFStringAppend(v11, @"ઝ");
  CFStringAppend(v11, @"ઞ");
  CFStringAppend(v11, @"ટ");
  CFStringAppend(v11, @"ઠ");
  CFStringAppend(v11, @"ડ");
  CFStringAppend(v11, @"ઢ");
  CFStringAppend(v11, @"ણ");
  CFStringAppend(v11, @"ત");
  CFStringAppend(v11, @"થ");
  CFStringAppend(v11, @"દ");
  CFStringAppend(v11, @"ધ");
  CFStringAppend(v11, @"ન");
  CFStringAppend(v11, @"પ");
  CFStringAppend(v11, @"ફ");
  CFStringAppend(v11, @"બ");
  CFStringAppend(v11, @"ભ");
  CFStringAppend(v11, @"મ");
  CFStringAppend(v11, @"ય");
  CFStringAppend(v11, @"ર");
  CFStringAppend(v11, @"લ");
  CFStringAppend(v11, @"ળ");
  CFStringAppend(v11, @"વ");
  CFStringAppend(v11, @"શ");
  CFStringAppend(v11, @"ષ");
  CFStringAppend(v11, @"સ");
  CFStringAppend(v11, @"હ");
  CFStringAppend(v11, @"઼");
  CFStringAppend(v11, @"ઽ");
  CFStringAppend(v11, @"ા");
  CFStringAppend(v11, @"િ");
  CFStringAppend(v11, @"ી");
  CFStringAppend(v11, @"ુ");
  CFStringAppend(v11, @"ૂ");
  CFStringAppend(v11, @"ૃ");
  CFStringAppend(v11, @"ૄ");
  CFStringAppend(v11, @"ૅ");
  CFStringAppend(v11, @"ે");
  CFStringAppend(v11, @"ૈ");
  CFStringAppend(v11, @"ૉ");
  CFStringAppend(v11, @"ો");
  CFStringAppend(v11, @"ૌ");
  CFStringAppend(v11, @"્");
  CFStringAppend(v11, @"૦");
  CFStringAppend(v11, @"૧");
  CFStringAppend(v11, @"૨");
  CFStringAppend(v11, @"૩");
  CFStringAppend(v11, @"૪");
  CFStringAppend(v11, @"૫");
  CFStringAppend(v11, @"૬");
  CFStringAppend(v11, @"૭");
  CFStringAppend(v11, @"૮");
  CFStringAppend(v11, @"૯");
  v12 = CFCharacterSetCreateWithCharactersInString(0, v11);
  *(this + 12) = CFCharacterSetCreateInvertedSet(0, v12);
  CFRelease(v12);
  CFRelease(v11);
}

void NLGujaratiOrthographyChecker::~NLGujaratiOrthographyChecker(CFTypeRef *this)
{
  *this = &unk_28400E598;
  CFRelease(this[1]);
  CFRelease(this[2]);
  CFRelease(this[3]);
  CFRelease(this[4]);
  CFRelease(this[5]);
  CFRelease(this[6]);
  CFRelease(this[7]);
  CFRelease(this[8]);
  CFRelease(this[9]);
  CFRelease(this[10]);
  CFRelease(this[11]);
  CFRelease(this[12]);

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

{
  NLGujaratiOrthographyChecker::~NLGujaratiOrthographyChecker(this);

  JUMPOUT(0x2318C0600);
}

BOOL NLGujaratiOrthographyChecker::isVowelSign(NLGujaratiOrthographyChecker *this, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"ઽ");
  CFStringAppend(Mutable, @"ા");
  CFStringAppend(Mutable, @"િ");
  CFStringAppend(Mutable, @"ી");
  CFStringAppend(Mutable, @"ુ");
  CFStringAppend(Mutable, @"ૂ");
  CFStringAppend(Mutable, @"ૃ");
  CFStringAppend(Mutable, @"ૄ");
  CFStringAppend(Mutable, @"ૅ");
  CFStringAppend(Mutable, @"ે");
  CFStringAppend(Mutable, @"ૈ");
  CFStringAppend(Mutable, @"ૉ");
  CFStringAppend(Mutable, @"ો");
  CFStringAppend(Mutable, @"ૌ");
  v4 = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v4);
  CFRelease(Mutable);
  CFRelease(v4);
  v8.length = CFStringGetLength(a2) - 1;
  v8.location = 0;
  v6 = CFStringFindCharacterFromSet(a2, InvertedSet, v8, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v6;
}

BOOL NLGujaratiOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, this[1], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[4];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

BOOL NLGujaratiOrthographyChecker::canViramaPrecedeLetter(NLGujaratiOrthographyChecker *this, CFStringRef theString)
{
  v4 = *(this + 4);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) || CFStringCompare(theString, *(this + 2), 0) == kCFCompareEqualTo;
}

CFMutableStringRef NLGujaratiOrthographyChecker::stringByCorrectingIllegalVowelLetters(NLGujaratiOrthographyChecker *this, const __CFString *a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v12 = @"અા";
  v13 = v14;
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"આ";
  v12 = @"અો";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ઓ";
  v12 = @"અાે";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ઓ";
  v12 = @"આે";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ઓ";
  v12 = @"અૌ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ઔ";
  v12 = @"અાૈ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ઔ";
  v12 = @"આૈ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ઔ";
  v12 = @"અૈ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ઐ";
  Length = CFStringGetLength(a2);
  MutableCopy = CFStringCreateMutableCopy(0, Length, a2);
  v5 = v13;
  if (v13 != v14)
  {
    do
    {
      v6 = v5[5];
      v7 = CFStringFind(MutableCopy, v5[4], 0);
      if (v7.length >= 1)
      {
        CFStringReplace(MutableCopy, v7, v6);
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v14);
  }

  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(&v13, v14[0]);
  return MutableCopy;
}

BOOL NLGujaratiOrthographyChecker::checkSpelling(NLGujaratiOrthographyChecker *this, CFStringRef theString, const __CFString **a3, const __CFString **a4)
{
  v75 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(theString);
  result = xmmword_22CDDE300;
  v76.location = 0;
  v76.length = Length;
  if (CFStringFindCharacterFromSet(theString, *(this + 3), v76, 0, &result))
  {
    v9 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (!result.location)
      {
        goto LABEL_43;
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL && result.location == v9 + location)
      {
        v77.location = location;
        v77.length = v9;
        v11 = CFStringCreateWithSubstring(0, theString, v77);
        v12 = CFStringCreateWithSubstring(0, theString, result);
        if ((CFStringCompare(v11, *(this + 1), 0) || CFStringCompare(v12, *(this + 1), 0) == kCFCompareEqualTo) && (CFStringCompare(v12, @"ં", 0) || !NLGujaratiOrthographyChecker::isVowelSign(0, v11)) && (CFStringCompare(v12, @"ઁ", 0) || !NLGujaratiOrthographyChecker::canCandrabinduFollowVowelSign(0, v11)))
        {
          if (v11)
          {
            CFRelease(v11);
          }

          if (v12)
          {
            CFRelease(v12);
          }

LABEL_43:
          v14 = 0;
          v15 = @"illegal diacritic placement";
          goto LABEL_135;
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }

      location = result.location;
      v9 = result.length;
      v78.location = result.length + result.location;
      v78.length = Length - (result.length + result.location);
    }

    while (CFStringFindCharacterFromSet(theString, *(this + 3), v78, 0, &result));
  }

  result = xmmword_22CDDE300;
  v79.location = 0;
  v79.length = Length;
  if (CFStringFindWithOptions(theString, *(this + 1), v79, 0, &result))
  {
    if (result.location)
    {
      v80.location = result.location - 1;
      v80.length = 1;
      v13 = CFStringCreateWithSubstring(0, theString, v80);
      if (v13)
      {
        CFRelease(v13);
      }
    }

    v14 = 0;
    v15 = @"illegal nukta placement";
    goto LABEL_135;
  }

  result = xmmword_22CDDE300;
  v81.location = 0;
  v81.length = Length;
  if (CFStringFindWithOptions(theString, @"્", v81, 0, &result))
  {
    do
    {
      if (!result.location)
      {
        goto LABEL_48;
      }

      v82.location = result.location - 1;
      v82.length = 1;
      v16 = CFStringCreateWithSubstring(0, theString, v82);
      if (result.location + 1 >= Length)
      {
        v17 = 0;
        if (!NLGujaratiOrthographyChecker::canViramaFollowLetter(this, v16))
        {
LABEL_44:
          if (v16)
          {
            CFRelease(v16);
          }

          if (v17)
          {
            CFRelease(v17);
          }

LABEL_48:
          v14 = 0;
          v15 = @"illegal virama placement";
          goto LABEL_135;
        }
      }

      else
      {
        v83.length = 1;
        v83.location = result.location + 1;
        v17 = CFStringCreateWithSubstring(0, theString, v83);
        if (!NLGujaratiOrthographyChecker::canViramaFollowLetter(this, v16))
        {
          goto LABEL_44;
        }

        if (v17)
        {
          if (!NLGujaratiOrthographyChecker::canViramaPrecedeLetter(this, v17))
          {
            goto LABEL_44;
          }

          v18 = 0;
          if (!v16)
          {
            goto LABEL_34;
          }

LABEL_33:
          CFRelease(v16);
          goto LABEL_34;
        }
      }

      v18 = 1;
      if (v16)
      {
        goto LABEL_33;
      }

LABEL_34:
      if ((v18 & 1) == 0)
      {
        CFRelease(v17);
      }

      v84.location = result.length + result.location;
      v84.length = Length - (result.length + result.location);
    }

    while (CFStringFindWithOptions(theString, @"્", v84, 0, &result));
  }

  if (a3)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    Mutable = 0;
  }

  v20 = CFStringGetLength(theString);
  v85.location = 0;
  v85.length = v20;
  v67 = a3;
  theArray = Mutable;
  if (!CFStringFindCharacterFromSet(theString, *(this + 5), v85, 0, &range))
  {
    if (!Mutable)
    {
      goto LABEL_103;
    }

    v15 = 0;
    v21 = 1;
LABEL_92:
    if (CFArrayGetCount(Mutable) >= 1)
    {
      v65 = v21;
      v66 = a4;
      MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
      Count = CFArrayGetCount(Mutable);
      if (Count >= 1)
      {
        v37 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v37 - 2);
          Value = CFDictionaryGetValue(ValueAtIndex, @"range.location");
          v40 = CFDictionaryGetValue(ValueAtIndex, @"range.length");
          result = xmmword_22CDDE2F0;
          CFNumberGetValue(Value, kCFNumberCFIndexType, &result);
          CFNumberGetValue(v40, kCFNumberCFIndexType, &result.length);
          v41 = CFDictionaryGetValue(ValueAtIndex, @"replacement");
          v42.location = result.location;
          if (result.location != -1)
          {
            v42.length = result.length;
            if (result.length >= 1)
            {
              if (v41)
              {
                CFStringReplace(MutableCopy, v42, v41);
              }
            }
          }

          --v37;
          Mutable = theArray;
        }

        while (v37 > 1);
      }

      a4 = v66;
      a3 = v67;
      *v67 = MutableCopy;
      v21 = v65;
    }

    CFRelease(Mutable);
    if (v21)
    {
      goto LABEL_102;
    }

LABEL_134:
    v14 = 0;
    goto LABEL_135;
  }

  v15 = 0;
  v21 = 1;
  do
  {
    if (range.location + 2 >= v20 || CFStringGetCharacterAtIndex(theString, range.location + 1) != 2765)
    {
      goto LABEL_85;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, range.location);
    v23 = CFStringGetCharacterAtIndex(theString, range.location + 2);
    if (CFCharacterSetIsCharacterMember(*(this + 10), v23))
    {
      v24 = 1;
    }

    else
    {
      v24 = range.location + 3 < v20 && CFStringGetCharacterAtIndex(theString, range.location + 3) == 2748;
    }

    if (CharacterAtIndex <= 2722)
    {
      if (CharacterAtIndex != 2713)
      {
        if (CharacterAtIndex != 2718)
        {
          goto LABEL_71;
        }

        a3 = v67;
        if (!v24)
        {
          v25 = *(this + 7);
          goto LABEL_77;
        }

        goto LABEL_81;
      }

      a3 = v67;
      if (v24)
      {
        goto LABEL_81;
      }

      v25 = *(this + 6);
LABEL_77:
      if (((CFCharacterSetIsCharacterMember(v25, v23) != 0) & v21) != 0)
      {
LABEL_78:
        v21 = 1;
        goto LABEL_85;
      }

      goto LABEL_81;
    }

    if (CharacterAtIndex == 2723)
    {
      a3 = v67;
      if (v24)
      {
        goto LABEL_81;
      }

      v25 = *(this + 9);
      goto LABEL_77;
    }

    if (CharacterAtIndex != 2728 || !CFCharacterSetIsCharacterMember(*(this + 6), v23) && !CFCharacterSetIsCharacterMember(*(this + 7), v23) && !CFCharacterSetIsCharacterMember(*(this + 8), v23) || range.location >= 1 && CFStringGetCharacterAtIndex(theString, range.location) == 2765)
    {
LABEL_71:
      a3 = v67;
      if (v21)
      {
        goto LABEL_78;
      }

      goto LABEL_81;
    }

    a3 = v67;
    if (Mutable)
    {
      result = xmmword_27873FCA0;
      v74 = @"replacement";
      valuePtr = range.location;
      v70 = 2;
      v26 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
      v27 = CFNumberCreate(0, kCFNumberCFIndexType, &v70);
      values[0] = v26;
      values[1] = v27;
      values[2] = @"ं";
      v28 = v15;
      v29 = CFDictionaryCreate(0, &result, values, 3, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      CFRelease(v26);
      v30 = v27;
      a3 = v67;
      CFRelease(v30);
      CFArrayAppendValue(theArray, v29);
      v31 = v29;
      v15 = v28;
      Mutable = theArray;
      CFRelease(v31);
    }

LABEL_81:
    if (!v15)
    {
      v86.location = range.location;
      v86.length = 3;
      v32 = CFStringCreateWithSubstring(0, theString, v86);
      v33 = CFStringCreateWithFormat(0, 0, @"invalid nasal combination '%@'", v32);
      v34 = v32;
      v15 = v33;
      CFRelease(v34);
    }

    if (!Mutable)
    {
      v14 = 0;
      goto LABEL_135;
    }

    v21 = 0;
LABEL_85:
    if (v20 <= range.location + 1)
    {
      break;
    }

    v87.location = range.location + 1;
    v87.length = v20 - (range.location + 1);
  }

  while (CFStringFindCharacterFromSet(theString, *(this + 5), v87, 0, &range));
  if (Mutable)
  {
    goto LABEL_92;
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_134;
  }

LABEL_102:
  Mutable = v15;
LABEL_103:
  Copy = CFCharacterSetCreateCopy(0, *(this + 11));
  v44 = CFCharacterSetCreateCopy(0, *(this + 3));
  v45 = CFCharacterSetCreateWithCharactersInString(0, @"ઁં");
  v46 = CFStringGetLength(theString);
  v88.location = 0;
  v88.length = v46;
  if (CFStringFindCharacterFromSet(theString, Copy, v88, 0, &result))
  {
    while (1)
    {
      if (result.location + 1 < v46)
      {
        v47 = CFStringGetCharacterAtIndex(theString, result.location + 1);
        if (CFCharacterSetIsCharacterMember(v44, v47))
        {
          IsCharacterMember = CFCharacterSetIsCharacterMember(v45, v47);
          if (!IsCharacterMember)
          {
            break;
          }
        }
      }

      v89.location = result.length + result.location;
      v89.length = v46 - (result.length + result.location);
      if (!CFStringFindCharacterFromSet(theString, Copy, v89, 0, &result))
      {
        v49 = 1;
        a3 = v67;
        goto LABEL_114;
      }
    }

    a3 = v67;
    v49 = 0;
    if (v67)
    {
      *v67 = NLGujaratiOrthographyChecker::stringByCorrectingIllegalVowelLetters(IsCharacterMember, theString);
    }

    Mutable = @"illegal diacritic after vowel letter";
  }

  else
  {
    v49 = 1;
  }

LABEL_114:
  CFRelease(Copy);
  CFRelease(v44);
  CFRelease(v45);
  if (v49)
  {
    v50 = CFStringGetLength(theString);
    v51 = CFStringCreateMutableCopy(0, v50, theString);
    v52 = CFStringFind(v51, @"‌", 0);
    v15 = Mutable;
    if (v52.length >= 1)
    {
      CFStringReplace(v51, v52, &stru_284010170);
    }

    v53 = CFStringCompare(v51, theString, 0);
    v54 = v53;
    if (a3 && v53)
    {
      *a3 = v51;
    }

    if (v51)
    {
      CFRelease(v51);
      if (v54)
      {
        goto LABEL_122;
      }

LABEL_125:
      v55 = *(this + 2);
      v90.length = CFStringGetLength(theString);
      v90.location = 0;
      if (CFStringFindWithOptions(theString, v55, v90, 0, &result))
      {
        do
        {
          if (result.location)
          {
            v91.length = result.location - 1;
            v91.location = 0;
            v56 = CFStringCreateWithSubstring(0, theString, v91);
            CFRelease(v56);
          }

          v57 = *(this + 2);
          v92.length = CFStringGetLength(theString);
          v92.location = 0;
        }

        while (CFStringFindWithOptions(theString, v57, v92, 0, &result));
        if (!a3)
        {
          v15 = @"invalid sequence with ZWJ";
          goto LABEL_134;
        }

        v58 = CFStringGetLength(theString);
        v59 = CFStringCreateMutableCopy(0, v58, theString);
        v60 = CFStringFind(v59, *(this + 2), 0);
        if (v60.length >= 1)
        {
          CFStringReplace(v59, v60, &stru_284010170);
        }

        v14 = 0;
        *a3 = v59;
        v15 = @"invalid sequence with ZWJ";
      }

      else
      {
        v93.length = CFStringGetLength(theString);
        v93.location = 0;
        CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 12), v93, 0, &result);
        v14 = CharacterFromSet == 0;
        if (CharacterFromSet)
        {
          v64 = CFStringCreateWithSubstring(0, theString, result);
          v15 = CFStringCreateWithFormat(0, 0, @"invalid letter '%@'", v64);
          CFRelease(v64);
        }
      }
    }

    else
    {
      if (v53 == kCFCompareEqualTo)
      {
        goto LABEL_125;
      }

LABEL_122:
      v14 = 0;
      v15 = @"invalid: ZWNJ present";
    }
  }

  else
  {
    v14 = 0;
    v15 = Mutable;
  }

LABEL_135:
  if (!a4 || v14)
  {
    if (!a4 && v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    *a4 = v15;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v14;
}

void std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void NLAbstractTransMappings::NLAbstractTransMappings(NLAbstractTransMappings *this, const __CFDictionary *a2)
{
  *this = &unk_28400EDA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  NLAbstractTransMappings::loadMappings(this, a2);
}

void sub_22CD417B8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void NLAbstractTransMappings::loadMappings(NLAbstractTransMappings *this, const __CFDictionary *a2)
{
  LocaleFromOptions = NLTransliteratorUtils::getLocaleFromOptions(a2, a2);
  if (LocaleFromOptions)
  {
    Value = CFLocaleGetValue(LocaleFromOptions, *MEMORY[0x277CBEED0]);
    v6 = CFDictionaryGetValue(a2, kNLTransliteratorSourceToTargetCharMappingsKey[0]);
    if (v6)
    {

      NLAbstractTransMappings::loadStaticMap(this, v6);
    }

    else
    {
      Mutable = CFStringCreateMutable(0, 0);
      CFStringAppend(Mutable, Value);
      CFStringAppend(Mutable, @"-Mappings.plist");
      getPathForResource(Mutable, &v14);
      v8 = *MEMORY[0x277CBECE8];
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v9, 0x8000100u);
      v11 = CFURLCreateWithFileSystemPath(v8, v10, kCFURLPOSIXPathStyle, 0);
      v12 = std::string::compare(&v14, "");
      if (v12)
      {
        (**this)(this, v11);
      }

      else
      {
        v13 = NL::CFLogger::sharedInstance(v12);
        (*(*v13 + 16))(v13, 3, "Could not locate Roman-Hindi character mappings from resource bundle");
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_22CD419A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLAbstractTransMappings::loadStaticMap(NLAbstractTransMappings *this, CFDictionaryRef theDict)
{
  Count = CFDictionaryGetCount(theDict);
  v4 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(theDict, v4, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = v4[i];
      getUTF8StringFromCFString(v6, v30);
      Value = CFDictionaryGetValue(theDict, v6);
      v8 = CFArrayGetCount(Value);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, j);
          v11 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
          getUTF8StringFromCFString(v11, v25);
          v12 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
          valuePtr = 0;
          CFNumberGetValue(v12, kCFNumberSInt8Type, &valuePtr);
          v13 = CFArrayGetValueAtIndex(ValueAtIndex, 2);
          v23 = 0.0;
          CFNumberGetValue(v13, kCFNumberDoubleType, &v23);
          NLExtendedString::NLExtendedString(__p, v25, valuePtr, v23);
          v14 = v28;
          if (v28 >= v29)
          {
            v28 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(&v27, __p);
            if (SHIBYTE(v20) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v15 = *__p;
            v28->__r_.__value_.__r.__words[2] = v20;
            *&v14->__r_.__value_.__l.__data_ = v15;
            __p[1] = 0;
            v20 = 0;
            __p[0] = 0;
            v16 = v22;
            *&v14[1].__r_.__value_.__l.__data_ = v21;
            v14[1].__r_.__value_.__s.__data_[16] = v16;
            v28 = v14 + 2;
          }

          if (v26 < 0)
          {
            operator delete(v25[0]);
          }
        }
      }

      v25[0] = v30;
      v17 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 16, v30) + 5);
      if (v17 != &v27)
      {
        std::vector<NLExtendedString>::__assign_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v17, v27, v28, 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 4));
      }

      __p[0] = &v27;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }
  }

  if (v4)
  {
    free(v4);
  }
}

void sub_22CD41C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (*(v27 - 81) < 0)
  {
    operator delete(*(v27 - 104));
  }

  _Unwind_Resume(exception_object);
}

CFPropertyListRef createMyPropertyListFromFile(CFURLRef url)
{
  resourceData = 0;
  errorString = 0;
  errorCode = 0;
  v1 = *MEMORY[0x277CBECE8];
  CFURLCreateDataAndPropertiesFromResource(*MEMORY[0x277CBECE8], url, &resourceData, 0, 0, &errorCode);
  v2 = CFPropertyListCreateFromXMLData(v1, resourceData, 0, &errorString);
  if (resourceData)
  {
    CFRelease(resourceData);
  }

  if (errorString)
  {
    CFRelease(errorString);
  }

  return v2;
}

void NLAbstractTransMappings::loadMappingsFromPlist(NLAbstractTransMappings *this, CFURLRef url)
{
  MyPropertyListFromFile = createMyPropertyListFromFile(url);
  Count = CFDictionaryGetCount(MyPropertyListFromFile);
  v4 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(MyPropertyListFromFile, v4, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = v4[i];
      getUTF8StringFromCFString(v6, v30);
      Value = CFDictionaryGetValue(MyPropertyListFromFile, v6);
      v8 = CFArrayGetCount(Value);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, j);
          v11 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
          getUTF8StringFromCFString(v11, v25);
          v12 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
          valuePtr = 0;
          CFNumberGetValue(v12, kCFNumberSInt8Type, &valuePtr);
          v13 = CFArrayGetValueAtIndex(ValueAtIndex, 2);
          v23 = 0.0;
          CFNumberGetValue(v13, kCFNumberDoubleType, &v23);
          NLExtendedString::NLExtendedString(__p, v25, valuePtr, v23);
          v14 = v28;
          if (v28 >= v29)
          {
            v28 = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(&v27, __p);
            if (SHIBYTE(v20) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v15 = *__p;
            v28->__r_.__value_.__r.__words[2] = v20;
            *&v14->__r_.__value_.__l.__data_ = v15;
            __p[1] = 0;
            v20 = 0;
            __p[0] = 0;
            v16 = v22;
            *&v14[1].__r_.__value_.__l.__data_ = v21;
            v14[1].__r_.__value_.__s.__data_[16] = v16;
            v28 = v14 + 2;
          }

          if (v26 < 0)
          {
            operator delete(v25[0]);
          }
        }
      }

      v25[0] = v30;
      v17 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 16, v30) + 5);
      if (v17 != &v27)
      {
        std::vector<NLExtendedString>::__assign_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v17, v27, v28, 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 4));
      }

      __p[0] = &v27;
      std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }
  }

  if (MyPropertyListFromFile)
  {
    CFRelease(MyPropertyListFromFile);
  }

  if (v4)
  {
    free(v4);
  }
}

void sub_22CD41F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (*(v27 - 81) < 0)
  {
    operator delete(*(v27 - 104));
  }

  _Unwind_Resume(exception_object);
}

void NLAbstractTransMappings::addDynamicMapping(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>((a1 + 8), a2);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (!v6 || &v26 == (v6 + 5) || (std::vector<NLExtendedString>::__assign_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(&v26, v6[5], v6[6], 0xAAAAAAAAAAAAAAABLL * ((v6[6] - v6[5]) >> 4)), v7 = v26, v27 == v26))
  {
LABEL_28:
    std::vector<NLExtendedString>::push_back[abi:ne200100](&v26, a3);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(&v7[v8]);
      v11 = v10;
      NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(a3);
      v13 = *(v12 + 23);
      v14 = *(v11 + 23);
      v15 = v14 >= 0 ? *(v11 + 23) : *(v11 + 8);
      v16 = v14 >= 0 ? v11 : *v11;
      v17 = v13 >= 0 ? *(v12 + 23) : *(v12 + 8);
      v18 = v13 >= 0 ? v12 : *v12;
      v19 = v17 >= v15 ? v15 : v17;
      v20 = memcmp(v16, v18, v19);
      if (v17 == v15 && v20 == 0)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4) <= v9)
        {
          std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
        }

        Pos = NLExtendedString::getPos(&v26[v8]);
        if (Pos == NLExtendedString::getPos(a3))
        {
          break;
        }
      }

      ++v9;
      v7 = v26;
      v8 += 2;
      if (0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4) <= v9)
      {
        goto LABEL_28;
      }
    }

    v24 = &v26[v8];
    std::string::operator=(&v26[v8], a3);
    v25 = *(a3 + 24);
    v24[1].__r_.__value_.__s.__data_[16] = *(a3 + 40);
    *&v24[1].__r_.__value_.__l.__data_ = v25;
  }

  if (v27 != v26)
  {
    v29 = a2;
    v23 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a2) + 5);
    if (v23 != &v26)
    {
      std::vector<NLExtendedString>::__assign_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(v23, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4));
    }
  }

  v30 = &v26;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_22CD421F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t std::vector<NLExtendedString>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString const&>(a1, a2);
  }

  else
  {
    std::vector<NLExtendedString>::__construct_one_at_end[abi:ne200100]<NLExtendedString const&>(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

__int128 *NLAbstractTransMappings::findMatches@<X0>(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1 + 16, a2);
  if (result)
  {
    result = std::vector<NLExtendedString>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(a3, 0, *(result + 5), *(result + 6), 0xAAAAAAAAAAAAAAABLL * ((*(result + 6) - *(result + 5)) >> 4));
  }

  if (a1[4])
  {
    result = std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1 + 1, a2);
    if (result)
    {
      return std::vector<NLExtendedString>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(a3, a3[1], *(result + 5), *(result + 6), 0xAAAAAAAAAAAAAAABLL * ((*(result + 6) - *(result + 5)) >> 4));
    }
  }

  return result;
}

void sub_22CD42310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<NLExtendedString>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<NLExtendedString>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<NLExtendedString>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<NLExtendedString>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<NLExtendedString>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NLExtendedString>>(a1, v6);
  }

  v7 = 48 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v9;
  *&v18 = 48 * v2 + 48;
  v10 = *(a1 + 8);
  v11 = 48 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<NLExtendedString>::~__split_buffer(&v16);
  return v15;
}

void sub_22CD42654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<NLExtendedString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLExtendedString>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NLExtendedString>,NLExtendedString*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NLExtendedString>,NLExtendedString*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<NLExtendedString>,NLExtendedString*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<NLExtendedString>,NLExtendedString*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<NLExtendedString>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<NLExtendedString>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<NLExtendedString>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22CD42B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<NLExtendedString>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::vector<NLExtendedString>::__assign_with_size[abi:ne200100]<NLExtendedString*,NLExtendedString*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<NLExtendedString>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<NLExtendedString>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v14 = v6[1].__r_.__value_.__s.__data_[16];
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        *(v8 + 40) = v14;
        v6 += 2;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = SHIBYTE(v11[-2].__r_.__value_.__r.__words[2]);
      v11 -= 2;
      if (v15 < 0)
      {
        operator delete(v11->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (v11 + __str - v8);
    if (v11 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v13 = v6[1].__r_.__value_.__s.__data_[16];
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        *(v8 + 40) = v13;
        v6 += 2;
        v8 += 48;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*,NLExtendedString*,NLExtendedString*>(a1, v12, a3, v11);
  }
}

void std::vector<NLExtendedString>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<NLExtendedString>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<NLExtendedString>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NLExtendedString>>(a1, a2);
  }

  std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*,NLExtendedString*,NLExtendedString*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      v4[1].__r_.__value_.__s.__data_[16] = *(v6 + 40);
      *&v4[1].__r_.__value_.__l.__data_ = v9;
      v6 += 3;
      v4 = v8 + 2;
      v14 = v8 + 2;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<NLExtendedString>,NLExtendedString*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
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

__n128 std::vector<NLExtendedString>::__construct_one_at_end[abi:ne200100]<NLExtendedString const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<NLExtendedString>::__emplace_back_slow_path<NLExtendedString const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NLExtendedString>>(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<NLExtendedString>::~__split_buffer(&v18);
  return v17;
}

void sub_22CD439A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<NLExtendedString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27873F8A0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

__int128 *std::vector<NLExtendedString>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NLExtendedString*>,std::__wrap_iter<NLExtendedString*>>(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v20 = 3 * a5;
        std::vector<NLExtendedString>::__move_range(a1, a2, a1[1], a2 + 48 * a5);
        v21 = &v7[v20];
        v22 = v5;
        do
        {
          std::string::operator=(v22, v7);
          v23 = *(v7 + 40);
          *(v22 + 24) = *(v7 + 24);
          *(v22 + 40) = v23;
          v7 += 3;
          v22 += 3;
        }

        while (v7 != v21);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*,NLExtendedString*,NLExtendedString*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<NLExtendedString>::__move_range(a1, v5, v10, &v5[3 * a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18, v7);
            v19 = *(v7 + 40);
            *(v18 + 24) = *(v7 + 24);
            *(v18 + 40) = v19;
            v7 += 3;
            v18 += 3;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 > 0x555555555555555)
      {
        std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x2AAAAAAAAAAAAAALL)
      {
        v15 = 0x555555555555555;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<NLExtendedString>>(a1, v15);
      }

      v25 = 0;
      v26 = 16 * (v13 >> 4);
      v27 = v26;
      v28 = 0;
      std::__split_buffer<NLExtendedString>::__construct_at_end_with_size<std::__wrap_iter<NLExtendedString*>>(&v25, a3, a5);
      v5 = std::vector<NLExtendedString>::__swap_out_circular_buffer(a1, &v25, v5);
      std::__split_buffer<NLExtendedString>::~__split_buffer(&v25);
    }
  }

  return v5;
}

uint64_t std::vector<NLExtendedString>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      v9 += 48;
      v8 += 48;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<NLExtendedString *,NLExtendedString *,NLExtendedString *>(&v13, a2, v7, v6);
}

void std::__split_buffer<NLExtendedString>::__construct_at_end_with_size<std::__wrap_iter<NLExtendedString*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = v4 + 48 * a3;
    v7 = 48 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v9 = *(a2 + 24);
      *(v4 + 40) = *(a2 + 40);
      *(v4 + 24) = v9;
      v4 += 48;
      a2 += 3;
      v7 -= 48;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

uint64_t std::vector<NLExtendedString>::__swap_out_circular_buffer(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<NLExtendedString>,NLExtendedString*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<NLExtendedString *,NLExtendedString *,NLExtendedString *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 48);
      if (*(a4 + v7 - 25) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 48);
      v11 = *v10;
      *(a4 + v7 - 32) = *(a3 + v7 - 32);
      *v9 = v11;
      *(a3 + v7 - 25) = 0;
      *v10 = 0;
      v12 = *(a3 + v7 - 24);
      *(v8 - 8) = *(a3 + v7 - 8);
      *(v8 - 24) = v12;
      v7 -= 48;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

double NLTransliterationCandidate::getTotalScore(NLTransliterationCandidate *this)
{
  if (NLTransliterationCandidate::getTotalScore(void)const::once != -1)
  {
    NLTransliterationCandidate::getTotalScore();
  }

  return *(this + 8) + *&NLTransliterationCandidate::getTotalScore(void)const::lmDistributionModulatingFactor * *(this + 7);
}

void ___ZNK26NLTransliterationCandidate13getTotalScoreEv_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NLP"];
  v1 = [v0 URLForResource:@"CandidateRankingParameters" withExtension:@"plist"];

  v11 = 0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v1 error:&v11];
  v3 = v11;
  if (v2)
  {
    v4 = [v2 objectForKey:@"LMDistributionModulatingFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [v5 doubleValue];
      if (v6 >= 0.0 && ([v5 doubleValue], v7 <= 1.0))
      {
        [v5 doubleValue];
        NLTransliterationCandidate::getTotalScore(void)const::lmDistributionModulatingFactor = v9;
        v8 = _nlpDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v13 = NLTransliterationCandidate::getTotalScore(void)const::lmDistributionModulatingFactor;
          _os_log_impl(&dword_22CD0B000, v8, OS_LOG_TYPE_INFO, "Using LM distribution modulating factor value of: %f", buf, 0xCu);
        }
      }

      else
      {
        v8 = _nlpDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ___ZNK26NLTransliterationCandidate13getTotalScoreEv_block_invoke_cold_2();
        }
      }
    }

    else
    {
      v5 = _nlpDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ___ZNK26NLTransliterationCandidate13getTotalScoreEv_block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = _nlpDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___ZNK26NLTransliterationCandidate13getTotalScoreEv_block_invoke_cold_3(v1, v3, v4);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t NLTransliterationCandidate::copyMetadata(NLTransliterationCandidate *this)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = kNLTransliteratorCandidateMetadataLMScoreKey[0];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 7)];
  v10[0] = v2;
  v9[1] = kNLTransliteratorCandidateMetadataSeq2SeqScoreKey[0];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(this + 8)];
  v10[1] = v3;
  v9[2] = kNLTransliteratorCandidateMetadataTotalScoreKey;
  v4 = MEMORY[0x277CCABB0];
  if (NLTransliterationCandidate::getTotalScore(void)const::once != -1)
  {
    NLTransliterationCandidate::getTotalScore();
  }

  v5 = [v4 numberWithDouble:*(this + 8) + *&NLTransliterationCandidate::getTotalScore(void)const::lmDistributionModulatingFactor * *(this + 7)];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL NLTransliteratorUtils::checkMetaFlags(NLTransliteratorUtils *this, NLTransliterationCandidate *a2)
{
  v2 = a2;
  if ((a2 & 0x82) == 0x80)
  {
    NLTransliterationCandidate::setLMScore(this, -INFINITY);
    NLTransliterationCandidate::setIsExtensionCandidate(this, 1);
  }

  return (v2 & 2) == 0;
}

BOOL NLTransliteratorUtils::greater_than_key(NLTransliteratorUtils *this, const NLTransliterationCandidate *a2, const NLTransliterationCandidate *a3)
{
  LMScore = NLTransliterationCandidate::getLMScore(this);
  v6 = NLTransliterationCandidate::getLMScore(a2);
  v7 = fabs(v6) == INFINITY;
  SequenceScore = NLTransliterationCandidate::getSequenceScore(this);
  if (fabs(LMScore) != INFINITY || !v7)
  {
    SequenceScore = SequenceScore * 0.65 + LMScore * 0.35;
    v10 = NLTransliterationCandidate::getSequenceScore(a2) * 0.65 + v6 * 0.35;
  }

  else
  {
    v10 = NLTransliterationCandidate::getSequenceScore(a2);
  }

  Type = NLTransliterationCandidate::getType(this);
  v12 = NLTransliterationCandidate::getType(a2);
  v13 = Type == v12;
  if (SequenceScore <= v10)
  {
    v13 = 0;
  }

  return Type < v12 || v13;
}

BOOL NLTransliteratorUtils::greater_than_key_oov(NLTransliteratorUtils *this, const NLTransliterationCandidate *a2, const NLTransliterationCandidate *a3)
{
  Score = NLMessageIntentCandidate::getScore(this);
  v6 = NLTransliterationCandidate::getSequenceScore(this) * 0.65 + Score * 0.35;
  v7 = NLMessageIntentCandidate::getScore(a2);
  return v6 > NLTransliterationCandidate::getSequenceScore(a2) * 0.65 + v7 * 0.35;
}

void sub_22CD449F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a28);
  _Unwind_Resume(a1);
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

uint64_t NLTransliteratorUtils::getMaximumLayerSize(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1 >= 0x10)
  {
    v2 = 3;
  }

  else
  {
    v2 = 8;
  }

  if (v1 >= 0xB)
  {
    return v2;
  }

  else
  {
    return 10;
  }
}

uint64_t NLTransliteratorUtils::findExistingCandidate(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (a1[1] == *a1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    TransliteratedWord = NLTransliterationCandidate::getTransliteratedWord(*(v2 + 8 * v5));
    v7 = *(a2 + 23);
    v8 = *(TransliteratedWord + 23);
    if (v8 >= 0)
    {
      v9 = *(TransliteratedWord + 23);
    }

    else
    {
      v9 = TransliteratedWord[1];
    }

    if (v8 < 0)
    {
      TransliteratedWord = *TransliteratedWord;
    }

    v10 = v7 >= 0 ? *(a2 + 23) : *(a2 + 8);
    v11 = v7 >= 0 ? a2 : *a2;
    v12 = v10 >= v9 ? v9 : v10;
    v13 = memcmp(TransliteratedWord, v11, v12);
    if (v10 == v9 && v13 == 0)
    {
      break;
    }

    ++v5;
    v2 = *a1;
    if (v5 >= (a1[1] - *a1) >> 3)
    {
      return 0;
    }
  }

  if (v5 >= (a1[1] - *a1) >> 3)
  {
    std::vector<NLExtendedString>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*a1 + 8 * v5);
}

CFLocaleRef NLTransliteratorUtils::getLocaleFromOptions(NLTransliteratorUtils *this, const __CFDictionary *a2)
{
  if (!this)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(this, kNLTransliteratorTargetLocaleKey[0]);
  if (!Value)
  {
    v6 = *(*NL::CFLogger::sharedInstance(0) + 16);
LABEL_13:
    v6();
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 == CFStringGetTypeID())
  {

    return CFLocaleCreate(0, v3);
  }

  v7 = CFGetTypeID(v3);
  TypeID = CFLocaleGetTypeID();
  if (v7 != TypeID)
  {
    v6 = *(*NL::CFLogger::sharedInstance(TypeID) + 16);
    goto LABEL_13;
  }

  return CFRetain(v3);
}

void std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8[abi:ne200100]()
{
  MEMORY[0x2318C0530]();

  JUMPOUT(0x2318C0600);
}

uint64_t std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

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

void std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(uint64_t a1@<X0>, std::basic_string<char32_t> *a2@<X1>, std::basic_string<char32_t> *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_29;
  }

  v7 = a2;
  v8 = 2 * (a3 - a2);
  if (v8 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(a4, v8 + 2);
  }

  *(a4 + 23) = v8;
  if (a3 != a2)
  {
    bzero(a4, 8 * (a3 - a2));
  }

  *(a4 + 4 * v8) = 0;
  if (v7 != a3)
  {
    if (*(a4 + 23) >= 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::basic_string<char32_t>::resize(a4, v9, 0);
    v10 = *(a1 + 136);
    v31[4] = *(a1 + 120);
    v31[5] = v10;
    v11 = *(a1 + 168);
    v31[6] = *(a1 + 152);
    v31[7] = v11;
    v12 = *(a1 + 72);
    v31[0] = *(a1 + 56);
    v31[1] = v12;
    v13 = *(a1 + 88);
    v14 = *(a1 + 104);
    v15 = *(a4 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a4 + 8);
    }

    v17 = &v16[4 * v15];
    v31[2] = *(a1 + 88);
    v31[3] = v14;
    while (1)
    {
      v18 = (*(**(a1 + 48) + 32))(*(a1 + 48), v31, v7, a3, &v30, v16, v17, &v29, v13);
      v19 = v30 == v7;
      *(a1 + 184) += v30 - v7;
      if (v19)
      {
        goto LABEL_40;
      }

      if (v18 != 1)
      {
        break;
      }

      if (*(a4 + 23) >= 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = *a4;
      }

      v21 = v29 - v20;
      std::basic_string<char32_t>::resize(a4, (v29 - v20) >> 1, 0);
      v22 = *(a4 + 23);
      v23 = v22;
      v24 = *a4;
      if ((v22 & 0x80u) == 0)
      {
        v24 = a4;
      }

      v16 = (v24 + v21);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(a4 + 8);
      }

      v17 = (v24 + 4 * v22);
      v7 = v30;
      if (v30 >= a3)
      {
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_29;
        }

LABEL_41:
        operator delete(*a4);
LABEL_29:
        if (*(a1 + 47) < 0)
        {
          v26 = *(a1 + 32);
          if (v26)
          {
            std::basic_string<char32_t>::__init_copy_ctor_external(a4, *(a1 + 24), v26);
            goto LABEL_46;
          }
        }

        else if (*(a1 + 47))
        {
          *a4 = *(a1 + 24);
          *(a4 + 16) = *(a1 + 40);
          goto LABEL_46;
        }

        std::__throw_range_error[abi:ne200100]("wstring_convert: from_bytes error");
      }
    }

    if (v18)
    {
      if (v18 != 3)
      {
LABEL_40:
        if ((*(a4 + 23) & 0x80) != 0)
        {
          goto LABEL_41;
        }

        goto LABEL_29;
      }

      if (*(a4 + 23) >= 0)
      {
        v25 = a4;
      }

      else
      {
        v25 = *a4;
      }

      std::basic_string<char32_t>::resize(a4, (v16 - v25) >> 2, 0);
      std::basic_string<char32_t>::append<char32_t const*,0>(a4, v7, a3);
    }

    else
    {
      if (*(a4 + 23) >= 0)
      {
        v27 = a4;
      }

      else
      {
        v27 = *a4;
      }

      std::basic_string<char32_t>::resize(a4, (v29 - v27) >> 2, 0);
    }
  }

LABEL_46:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_22CD4502C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char32_t> *std::basic_string<char32_t>::append<char32_t const*,0>(std::basic_string<char32_t> *this, std::basic_string<char32_t> *__src, std::basic_string<char32_t> *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 4;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  v12 = v7 >> 2;
  if (v10 > __src || (v10->__r_.__value_.__r.__words + 4 * size + 4) <= __src)
  {
    if (v8 - size < v12)
    {
      std::basic_string<char32_t>::__grow_by(this, v8, size - v8 + v12, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v15 = this;
    if ((v9 & 0x80) != 0)
    {
      v15 = this->__r_.__value_.__r.__words[0];
    }

    v16 = v15 + 4 * size;
    if (a3 != __src)
    {
      memmove(v15 + 4 * size, __src, v7);
    }

    *&v16[v7] = 0;
    v17 = v12 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(__p, __src, a3, v12);
    if ((v20 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = __p[1];
    }

    std::basic_string<char32_t>::append(this, v13, v14);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_22CD451C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_range_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::range_error::range_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27873F890, MEMORY[0x277D825E0]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::basic_string<char32_t>::resize(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __n, std::basic_string<char32_t>::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size >= __n)
    {
      this->__r_.__value_.__l.__size_ = __n;
      this = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

LABEL_5:
    std::basic_string<char32_t>::append(this, __n - size, __c);
    return;
  }

  if (size < __n)
  {
    goto LABEL_5;
  }

  *(&this->__r_.__value_.__s + 23) = __n;
LABEL_7:
  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::append(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __n, std::basic_string<char32_t>::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = HIBYTE(v9);
    }

    else
    {
      v7 = 4;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    if (v7 - size < __n)
    {
      std::basic_string<char32_t>::__grow_by(this, v7, __n - v7 + size, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v10 = this;
    if ((v8 & 0x80) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    v11 = 0;
    v12 = vdupq_n_s64(__n - 1);
    v13 = &v10->__r_.__value_.__s.__data_[size + 2];
    do
    {
      v14 = vdupq_n_s64(v11);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_22CDDE3B0)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = __c;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = __c;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_22CDDE3A0)))).i32[1])
      {
        *v13 = __c;
        v13[1] = __c;
      }

      v11 += 4;
      v13 += 4;
    }

    while (((__n + 3) & 0xFFFFFFFFFFFFFFFCLL) != v11);
    v16 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }

    v10->__r_.__value_.__s.__data_[v16] = 0;
  }

  return this;
}

void std::basic_string<char32_t>::__grow_by(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __old_cap, std::basic_string<char32_t>::size_type __delta_cap, std::basic_string<char32_t>::size_type __old_sz, std::basic_string<char32_t>::size_type __n_copy, std::basic_string<char32_t>::size_type __n_del, std::basic_string<char32_t>::size_type __n_add)
{
  if (0x3FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    v8 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v8 = 2 * __old_cap;
    }

    if ((v8 | 1) == 5)
    {
      v9 = 7;
    }

    else
    {
      v9 = (v8 | 1) + 1;
    }

    v10 = v8 >= 5;
    v11 = 5;
    if (v10)
    {
      v11 = v9;
    }

    if (__old_cap <= 0x1FFFFFFFFFFFFFF2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x3FFFFFFFFFFFFFF7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(this, v12);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::basic_string<char32_t> *__cdecl std::basic_string<char32_t>::append(std::basic_string<char32_t> *this, const std::basic_string<char32_t>::value_type *__s, std::basic_string<char32_t>::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 4;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + 4 * size, __s, 4 * __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::basic_string<char32_t>::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

_BYTE *std::basic_string<char32_t>::__init_with_size[abi:ne200100]<char32_t const*,char32_t const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v5 = 7;
    }

    else
    {
      v5 = (a4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(__dst, v5);
  }

  __dst[23] = a4;
  v6 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v6);
  }

  *&v4[v6] = 0;
  return __dst;
}

void std::basic_string<char32_t>::__grow_by_and_replace(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __old_cap, std::basic_string<char32_t>::size_type __delta_cap, std::basic_string<char32_t>::size_type __old_sz, std::basic_string<char32_t>::size_type __n_copy, std::basic_string<char32_t>::size_type __n_del, std::basic_string<char32_t>::size_type __n_add, const std::basic_string<char32_t>::value_type *__p_new_stuff)
{
  if (0x3FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    v9 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v9 = 2 * __old_cap;
    }

    if ((v9 | 1) == 5)
    {
      v10 = 7;
    }

    else
    {
      v10 = (v9 | 1) + 1;
    }

    v11 = v9 >= 5;
    v12 = 5;
    if (v11)
    {
      v12 = v10;
    }

    if (__old_cap > 0x1FFFFFFFFFFFFFF2)
    {
      v13 = 0x3FFFFFFFFFFFFFF7;
    }

    else
    {
      v13 = v12;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(this, v13);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

void std::basic_string<char32_t>::__init_copy_ctor_external(std::basic_string<char32_t> *this, const std::basic_string<char32_t>::value_type *__s, std::basic_string<char32_t>::size_type __sz)
{
  if (__sz > 4)
  {
    if (__sz < 0x3FFFFFFFFFFFFFF8)
    {
      if ((__sz | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (__sz | 1) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char32_t>>(this, v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 4 * __sz + 4;

  memmove(this, __s, v4);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::to_bytes(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_68;
  }

  v7 = a2;
  v8 = (a3 - a2) >> 1;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&a4->__r_.__value_.__s + 23) = (a3 - a2) >> 1;
  if (a3 != a2)
  {
    bzero(a4, v8);
  }

  a4->__r_.__value_.__s.__data_[v8] = 0;
  if (v7 == a3)
  {
    v24 = *(a1 + 136);
    v54 = *(a1 + 120);
    v55 = v24;
    v25 = *(a1 + 168);
    v56 = *(a1 + 152);
    v57 = v25;
    v26 = *(a1 + 72);
    v50 = *(a1 + 56);
    v51 = v26;
    v27 = *(a1 + 104);
    v52 = *(a1 + 88);
    v53 = v27;
  }

  else
  {
    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = 22;
    }

    else
    {
      v9 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(a4, v9, 0);
    v10 = *(a1 + 136);
    v54 = *(a1 + 120);
    v55 = v10;
    v11 = *(a1 + 168);
    v56 = *(a1 + 152);
    v57 = v11;
    v12 = *(a1 + 72);
    v50 = *(a1 + 56);
    v51 = v12;
    v13 = *(a1 + 88);
    v14 = *(a1 + 104);
    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    v17 = &v16[size];
    v52 = *(a1 + 88);
    v53 = v14;
    while (1)
    {
      v18 = (*(**(a1 + 48) + 24))(*(a1 + 48), &v50, v7, a3, &v49, v16, v17, &v48, v13);
      v19 = v49 == v7;
      *(a1 + 184) += (v49 - v7) >> 2;
      if (v19)
      {
        goto LABEL_66;
      }

      if (v18 != 1)
      {
        break;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = a4->__r_.__value_.__r.__words[0];
      }

      v21 = v48 - v20;
      std::string::resize(a4, 2 * (v48 - v20), 0);
      v22 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v22 & 0x80u) == 0)
      {
        v23 = a4;
      }

      else
      {
        v23 = a4->__r_.__value_.__r.__words[0];
      }

      v16 = v23 + v21;
      if ((v22 & 0x80u) != 0)
      {
        v22 = a4->__r_.__value_.__l.__size_;
      }

      v17 = v23 + v22;
      v7 = v49;
      if (v49 >= a3)
      {
        goto LABEL_66;
      }
    }

    if (v18)
    {
      if (v18 != 3)
      {
        goto LABEL_66;
      }

      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = a4;
      }

      else
      {
        v28 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v16 - v28, 0);
      std::string::append[abi:ne200100]<char const*,0>(a4, v7, a3);
    }

    else
    {
      if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = a4;
      }

      else
      {
        v29 = a4->__r_.__value_.__r.__words[0];
      }

      std::string::resize(a4, v48 - v29, 0);
    }
  }

  v30 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  v31 = a4->__r_.__value_.__l.__size_;
  if ((v30 & 0x80u) == 0)
  {
    v32 = 22;
  }

  else
  {
    v32 = (a4->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  std::string::resize(a4, v32, 0);
  if ((v30 & 0x80u) == 0)
  {
    v33 = v30;
  }

  else
  {
    v33 = v31;
  }

  v34 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  v35 = v34 < 0;
  if (v34 >= 0)
  {
    v36 = a4;
  }

  else
  {
    v36 = a4->__r_.__value_.__r.__words[0];
  }

  v37 = (v36 + v33);
  if (v35)
  {
    v38 = a4->__r_.__value_.__l.__size_;
  }

  else
  {
    v38 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  for (i = v37 + v38; ; i = v44 + v43)
  {
    v40 = (*(**(a1 + 48) + 40))(*(a1 + 48), &v50, v37, i, &v49);
    if (v40 != 1)
    {
      break;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = a4;
    }

    else
    {
      v41 = a4->__r_.__value_.__r.__words[0];
    }

    v42 = (v49 - v41);
    std::string::resize(a4, 2 * (v49 - v41), 0);
    v43 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((v43 & 0x80u) == 0)
    {
      v44 = a4;
    }

    else
    {
      v44 = a4->__r_.__value_.__r.__words[0];
    }

    v37 = &v42[v44];
    if ((v43 & 0x80u) != 0)
    {
      v43 = a4->__r_.__value_.__l.__size_;
    }
  }

  if (v40)
  {
    if (v40 != 3)
    {
LABEL_66:
      if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(a4->__r_.__value_.__l.__data_);
      }

LABEL_68:
      if (*(a1 + 23) < 0)
      {
        v45 = *(a1 + 8);
        if (v45)
        {
          std::string::__init_copy_ctor_external(a4, *a1, v45);
          goto LABEL_78;
        }
      }

      else if (*(a1 + 23))
      {
        *&a4->__r_.__value_.__l.__data_ = *a1;
        a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
        goto LABEL_78;
      }

      std::__throw_range_error[abi:ne200100]("wstring_convert: to_bytes error");
    }
  }

  else
  {
    v37 = v49;
  }

  if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = a4;
  }

  else
  {
    v46 = a4->__r_.__value_.__r.__words[0];
  }

  std::string::resize(a4, v37 - v46, 0);
LABEL_78:
  v47 = *MEMORY[0x277D85DE8];
}

void sub_22CD45D7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_22CD45F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
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
    std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void NLUrduWordLanguageModeler::NLUrduWordLanguageModeler(NLUrduWordLanguageModeler *this, const __CFDictionary *a2)
{
  NLAbstractLanguageModeler::NLAbstractLanguageModeler(this, @"ur");
  *v4 = &unk_28400E940;
  if (CFDictionaryGetValue(a2, @"useLanguageModel") == *MEMORY[0x277CBED28])
  {
    NLUrduWordLanguageModeler::loadLanguageModel(this, a2);
  }
}

void NLUrduWordLanguageModeler::loadLanguageModel(NLUrduWordLanguageModeler *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D23078], *MEMORY[0x277CBED28]);
  valuePtr = 0x3FD0000000000000;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(v4, *MEMORY[0x277D230A8], v5);
  CFRelease(v5);
  v9 = 1;
  v6 = CFNumberCreate(0, kCFNumberLongType, &v9);
  CFDictionarySetValue(v4, *MEMORY[0x277D230B0], v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230C0], v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230B8], v6);
  CFRelease(v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230E0], @"ur");
  *(this + 1) = LMLanguageModelCreate();
  CFRelease(v4);
  if (!*(this + 1))
  {
    v8 = NL::CFLogger::sharedInstance(v7);
    (*(*v8 + 16))(v8, 3, "Could not locate Urdu language model");
  }
}

void NLUrduWordLanguageModeler::~NLUrduWordLanguageModeler(NLUrduWordLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

void NLGujaratiCharLanguageModeler::NLGujaratiCharLanguageModeler(NLGujaratiCharLanguageModeler *this, CFDictionaryRef theDict)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_28400E4B8;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D230E0], @"gu");
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  if (v4)
  {
    if (BundleWithIdentifier)
    {
      BundleWithIdentifier = CFBundleCopyResourcesDirectoryURL(BundleWithIdentifier);
      v6 = BundleWithIdentifier;
      if (BundleWithIdentifier)
      {
        CFDictionarySetValue(v4, *MEMORY[0x277D230A0], BundleWithIdentifier);
        *v2 = LMLanguageModelCreate();
        CFRelease(v6);
      }
    }
  }

  if (!*v2)
  {
    v7 = NL::CFLogger::sharedInstance(BundleWithIdentifier);
    (*(*v7 + 16))(v7, 3, "Could not locate Gujarati character language model");
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

double NLGujaratiCharLanguageModeler::logProbability(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return -INFINITY;
  }

  LMLanguageModelJointProbability();
  return result;
}

double NLGujaratiCharLanguageModeler::logProbability(uint64_t a1, uint64_t *a2)
{
  stringToUTF32Characters(a2, __p);
  if (*(a1 + 8))
  {
    LMLanguageModelJointProbability();
    v4 = v3;
  }

  else
  {
    v4 = -INFINITY;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_22CD4670C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLGujaratiCharLanguageModeler::~NLGujaratiCharLanguageModeler(NLGujaratiCharLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

void NLEnglishWordLanguageModeler::NLEnglishWordLanguageModeler(NLEnglishWordLanguageModeler *this, const __CFDictionary *a2)
{
  NLAbstractLanguageModeler::NLAbstractLanguageModeler(this, @"en_US");
  *v3 = &unk_28400E5C0;
  NLEnglishWordLanguageModeler::loadLanguageModel(v3, a2);
}

void NLEnglishWordLanguageModeler::loadLanguageModel(NLEnglishWordLanguageModeler *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D230E0], @"en_US");
  *(this + 1) = LMLanguageModelCreate();
  CFRelease(v4);
  if (!*(this + 1))
  {
    v6 = *(*NL::CFLogger::sharedInstance(v5) + 16);

    v6();
  }
}

void NLEnglishWordLanguageModeler::~NLEnglishWordLanguageModeler(NLEnglishWordLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

uint64_t createMorphologicalAnalyzerWrapper(NLWordAnalyzer *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_MorphologicalAnalyzerWrapper)
  {
    qword_280C271D0 = 0;
    unk_280C271E0 = 0u;
    unk_280C271F0 = 0u;
    g_CFTypeID_MorphologicalAnalyzerWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

uint64_t NLMorphologicalAnalyzerCreate(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, kNLMorphologicalAnalyzerLocaleKey);
    if (Value)
    {
      v2 = Value;
      v3 = CFGetTypeID(Value);
      if (v3 == CFStringGetTypeID())
      {
        v4 = CFLocaleCreate(0, v2);
LABEL_9:
        v5 = v4;
        goto LABEL_10;
      }

      v7 = CFGetTypeID(v2);
      TypeID = CFLocaleGetTypeID();
      if (v7 == TypeID)
      {
        v4 = CFRetain(v2);
        goto LABEL_9;
      }

      v6 = *(*NL::CFLogger::sharedInstance(TypeID) + 16);
    }

    else
    {
      v6 = *(*NL::CFLogger::sharedInstance(0) + 16);
    }

    v6();
    return 0;
  }

  v5 = 0;
LABEL_10:
  v9 = CFLocaleGetValue(v5, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(v9, @"ar", 0) == kCFCompareEqualTo)
  {
    operator new();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

void NLMorphologicalAnalyzerEnumerateLemmasForToken(uint64_t a1, __CFString *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    getUTF8StringFromCFString(a2, __p);
    (*(*v4 + 16))(&v11, v4, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = v11;
    if (v12 != v11)
    {
      LOBYTE(__p[0]) = 0;
      do
      {
        CFStringFromString = createCFStringFromString(v5);
        v7 = v5 + 24;
        v8 = createCFStringFromString(v7);
        (*(a3 + 16))(a3, CFStringFromString, v8, __p);
        if (CFStringFromString)
        {
          CFRelease(CFStringFromString);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        v5 = v7 + 24;
      }

      while (v5 != v12);
    }

    __p[0] = &v11;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_22CD46CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLMorphologicalAnalyzerEnumerateVariantsForToken(uint64_t a1, __CFString *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    getUTF8StringFromCFString(a2, __p);
    (*(*v4 + 24))(&v11, v4, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = v11;
    if (v12 != v11)
    {
      LOBYTE(__p[0]) = 0;
      do
      {
        CFStringFromString = createCFStringFromString(v5);
        v7 = v5 + 24;
        v8 = createCFStringFromString(v7);
        (*(a3 + 16))(a3, CFStringFromString, v8, __p);
        if (CFStringFromString)
        {
          CFRelease(CFStringFromString);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        v5 = v7 + 24;
      }

      while (v5 != v12);
    }

    __p[0] = &v11;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_22CD46E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MorphologicalAnalyzerWrapper::~MorphologicalAnalyzerWrapper(MorphologicalAnalyzerWrapper *this)
{
  MorphologicalAnalyzerWrapper::~MorphologicalAnalyzerWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400E658;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
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
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void NL::Resource::enumerateAssetResourcesWithContentType()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  v1 = 0;
  LDEnumerateAssetDataItems();
  _Block_object_dispose(v0, 8);
}

BOOL ___ZN2NL8Resource38enumerateAssetResourcesWithContentTypeEPK10__CFLocalePK10__CFStringU13block_pointerFvPS0_PbE_block_invoke(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, const __CFString *a5)
{
  result = CFStringsAreEqual(a5, *(a1 + 48));
  if (result)
  {
    CFURLCopyLastPathComponent(a2);
    operator new();
  }

  return result;
}

void sub_22CD471A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2318C0600](v2, 0x10E1C40F75B5662);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::Resource::createAssetResource(NL::Resource *this, const __CFLocale *a2, const __CFString *a3, const __CFString *a4)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  NL::Resource::enumerateAssetResourcesWithContentType();
  v4 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v4;
}

void sub_22CD4727C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFString *___ZN2NL8Resource19createAssetResourceEPK10__CFLocalePK10__CFStringS6__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = *(a2 + 32);
  if (result)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      result = CFStringFind(result, v6, 0).location;
      if (result != -1)
      {
        atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
        *(*(*(a1 + 32) + 8) + 24) = a2;
        *a3 = 1;
      }
    }
  }

  return result;
}

void NL::Resource::createBundleResource(NL::Resource *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.NLP");
  CFBundleCopyResourceURL(BundleWithIdentifier, a2, a3, a4);
  operator new();
}

NL::Resource *NL::Resource::Resource(NL::Resource *this, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  *(this + 2) = 1;
  *this = &unk_28400E0B0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (cf)
  {
    *(this + 2) = CFRetain(cf);
  }

  if (a3)
  {
    *(this + 3) = CFRetain(a3);
  }

  if (a4)
  {
    *(this + 4) = CFRetain(a4);
  }

  return this;
}

void NL::Resource::~Resource(NL::Resource *this)
{
  *this = &unk_28400E0B0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }
}

{
  NL::Resource::~Resource(this);

  JUMPOUT(0x2318C0600);
}

void sub_22CD47578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiWordLanguageModeler::NLHindiWordLanguageModeler(NLHindiWordLanguageModeler *this, const __CFDictionary *a2)
{
  NLAbstractLanguageModeler::NLAbstractLanguageModeler(this, @"hi");
  *v3 = &unk_28400E7C8;
  NLHindiWordLanguageModeler::loadLanguageModel(v3, a2);
}

void NLHindiWordLanguageModeler::loadLanguageModel(NLHindiWordLanguageModeler *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277D23078], *MEMORY[0x277CBED28]);
  valuePtr = 0x3FD0000000000000;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(v4, *MEMORY[0x277D230A8], v5);
  CFRelease(v5);
  v13 = 1;
  v6 = CFNumberCreate(0, kCFNumberLongType, &v13);
  CFDictionarySetValue(v4, *MEMORY[0x277D230B0], v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230C0], v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230B8], v6);
  CFRelease(v6);
  CFDictionarySetValue(v4, *MEMORY[0x277D230E0], @"hi");
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(@"hi"))
  {
    applesauce::CF::details::CFString_get_value<false>(@"hi", __p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
  }

  v8 = _nlpDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    NLHindiWordLanguageModeler::loadLanguageModel(__p);
  }

  *(this + 1) = LMLanguageModelCreate();
  CFRelease(v4);
  if (*(this + 1))
  {
    v9 = _nlpDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NLHindiWordLanguageModeler::loadLanguageModel(__p);
    }
  }

  else
  {
    v10 = _nlpDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NLHindiWordLanguageModeler::loadLanguageModel(__p);
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22CD4781C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiWordLanguageModeler::removeDiacritics(uint64_t a1@<X1>, char a2@<W2>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "ँ");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  replaceAll(a3, v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "ं");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  replaceAll(a3, v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "़");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  replaceAll(a3, v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
    if (a2)
    {
      goto LABEL_22;
    }
  }

  else if (a2)
  {
    goto LABEL_22;
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "्");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  replaceAll(a3, v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

LABEL_22:
  std::string::basic_string[abi:ne200100]<0>(v7, "ः");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  replaceAll(a3, v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_22CD47A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void NLHindiWordLanguageModeler::~NLHindiWordLanguageModeler(NLHindiWordLanguageModeler *this)
{
  NLAbstractLanguageModeler::~NLAbstractLanguageModeler(this);

  JUMPOUT(0x2318C0600);
}

_BYTE *applesauce::CF::details::CFString_get_value<false>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v10.location = 0;
  v10.length = Length;
  CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v7 = maxBufLen;
  if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v7)
  {
    bzero(a2, v7);
  }

  a2[v7] = 0;
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v11.location = 0;
  v11.length = Length;
  return CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
}

uint64_t *OUTLINED_FUNCTION_0_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void NLAbstractOrthographyConvertor::convertToModernOrthography(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void NLConvertBW2UTF::NLConvertBW2UTF(NLConvertBW2UTF *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
}

uint64_t NLConvertBW2UTF::loadBw2utf(void *a1, uint64_t *a2)
{
  v24[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v22, a2);
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  v3 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((v22 + *(v22[0] - 24)));
    v4 = std::locale::use_facet(v18, v3);
    v5 = (v4->__vftable[2].~facet_0)(v4, 10);
    std::locale::~locale(v18);
    v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v22, __p, v5);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      break;
    }

    trim(__p, v18);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *&v18[0].__locale_;
    v21 = v19;
    std::string::basic_string[abi:ne200100]<0>(v18, ";");
    v7 = startswith(__p, v18);
    v8 = v7;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0].__locale_);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else if (!v7)
    {
LABEL_9:
      v18[0].__locale_ = 0;
      v18[1].__locale_ = 0;
      v19 = 0;
      splitWithChar(__p, 9u, v18);
      if (*(v18[0].__locale_ + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *v18[0].__locale_, *(v18[0].__locale_ + 1));
      }

      else
      {
        v9 = *v18[0].__locale_;
        v17.__r_.__value_.__r.__words[2] = *(v18[0].__locale_ + 2);
        *&v17.__r_.__value_.__l.__data_ = v9;
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, "\");
      std::string::basic_string[abi:ne200100]<0>(v14, "");
      replaceAll(&v17, &__str, v14);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (*(v18[0].__locale_ + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(v18[0].__locale_ + 3), *(v18[0].__locale_ + 4));
      }

      else
      {
        __str = *(v18[0].__locale_ + 1);
      }

      v14[0] = &v17;
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v17.__r_.__value_.__l.__data_);
      std::string::operator=((v10 + 5), &__str);
      v14[0] = &__str;
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 5, &__str.__r_.__value_.__l.__data_);
      std::string::operator=((v11 + 5), &v17);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      v17.__r_.__value_.__r.__words[0] = v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
    }
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v22 + *(v22[0] - 24)), *&v23[*(v22[0] - 24) + 16] | 4);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v22[0] = *MEMORY[0x277D82808];
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x2318C03D0](v23);
  std::istream::~istream();
  result = MEMORY[0x2318C0570](v24);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x2318C03C0](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22CD48330(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2318C0570](v1);
  _Unwind_Resume(a1);
}

void NLConvertBW2UTF::bw2utf(void *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    if (!v8)
    {
LABEL_3:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v7 = a2;
    v8 = *(a2 + 23);
    if (!*(a2 + 23))
    {
      goto LABEL_3;
    }
  }

  do
  {
    if (*v7 == 79)
    {
      *v7 = 62;
    }

    ++v7;
    --v8;
  }

  while (v8);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_4:
    v9 = v6;
    v10 = a2;
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *a2;
  v9 = *(a2 + 8);
  if (!v9)
  {
LABEL_5:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  do
  {
LABEL_26:
    if (*v10 == 87)
    {
      *v10 = 38;
    }

    ++v10;
    --v9;
  }

  while (v9);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    v11 = v6;
    v12 = a2;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = *a2;
  v11 = *(a2 + 8);
  if (!v11)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

  do
  {
LABEL_31:
    if (*v12 == 73)
    {
      *v12 = 60;
    }

    ++v12;
    --v11;
  }

  while (v11);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    v13 = v6;
    v14 = a2;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *a2;
  v13 = *(a2 + 8);
  if (!v13)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  do
  {
LABEL_36:
    if (*v14 == 86)
    {
      *v14 = 42;
    }

    ++v14;
    --v13;
  }

  while (v13);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    v15 = v6;
    v16 = a2;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v16 = *a2;
  v15 = *(a2 + 8);
  if (!v15)
  {
LABEL_11:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

  do
  {
LABEL_41:
    if (*v16 == 99)
    {
      *v16 = 36;
    }

    ++v16;
    --v15;
  }

  while (v15);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_12:
    v17 = v6;
    v18 = a2;
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *a2;
  v17 = *(a2 + 8);
  if (!v17)
  {
LABEL_13:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

  do
  {
LABEL_46:
    if (*v18 == 81)
    {
      *v18 = 125;
    }

    ++v18;
    --v17;
  }

  while (v17);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_14:
    v19 = v6;
    v20 = a2;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v20 = *a2;
  v19 = *(a2 + 8);
  if (!v19)
  {
LABEL_15:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

  do
  {
LABEL_51:
    if (*v20 == 67)
    {
      *v20 = 39;
    }

    ++v20;
    --v19;
  }

  while (v19);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_16:
    v21 = v6;
    v22 = a2;
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  v22 = *a2;
  v21 = *(a2 + 8);
  if (!v21)
  {
LABEL_17:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_60:
    v23 = *a2;
    v6 = *(a2 + 8);
    if (!v6)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  do
  {
LABEL_56:
    if (*v22 == 77)
    {
      *v22 = 124;
    }

    ++v22;
    --v21;
  }

  while (v21);
  LOBYTE(v6) = *(a2 + 23);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_60;
  }

LABEL_18:
  v6 = v6;
  v23 = a2;
  if (!v6)
  {
    goto LABEL_64;
  }

  do
  {
LABEL_61:
    if (*v23 == 76)
    {
      *v23 = 123;
    }

    ++v23;
    --v6;
  }

  while (v6);
LABEL_64:
  std::string::basic_string[abi:ne200100]<0>(a3, "");
  for (i = 0; ; ++i)
  {
    v25 = *(a2 + 23);
    if ((v25 & 0x8000000000000000) != 0)
    {
      v25 = *(a2 + 8);
    }

    if (v25 <= i)
    {
      break;
    }

    std::string::basic_string(&v33, a2, i, 1uLL, &v34);
    if (std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::find<std::string>(a1, &v33.__r_.__value_.__l.__data_))
    {
      v34 = &v33;
      v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v33.__r_.__value_.__l.__data_);
      v29 = v26[5];
      v27 = v26 + 5;
      v28 = v29;
      v30 = *(v27 + 23);
      if (v30 >= 0)
      {
        v31 = v27;
      }

      else
      {
        v31 = v28;
      }

      if (v30 >= 0)
      {
        size = *(v27 + 23);
      }

      else
      {
        size = v27[1];
      }
    }

    else
    {
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v33;
      }

      else
      {
        v31 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }
    }

    std::string::append(a3, v31, size);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }
}

void sub_22CD486D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void NLConvertBW2UTF::utf2bw(std::string *a1@<X1>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "\u202B");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "\u202C");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "\u200F");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٠");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "١");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٢");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٣");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٤");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٥");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٦");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٧");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٨");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "٩");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  replaceAll(a1, v6, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
  operator new();
}

void sub_22CD48F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(&a23);
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x2318C03D0](a1 + 2);

  return std::istream::~istream();
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2318C03E0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_22CD492A8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x22CD49268);
  }

  __cxa_rethrow();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22CD49598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void NLCompositeTransliteratorException::NLCompositeTransliteratorException(NLCompositeTransliteratorException *this, const __CFLocale *a2, const __CFURL *a3)
{
  *this = 0;
  ExceptionList = NLCompositeTransliteratorException::loadExceptionList(this, a2, a3);
  std::unique_ptr<NL::StringMap>::reset[abi:ne200100](this, ExceptionList);
}

NL::StringMap *std::unique_ptr<NL::StringMap>::reset[abi:ne200100](NL::StringMap **a1, NL::StringMap *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::StringMap::~StringMap(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

uint64_t NLCompositeTransliteratorException::loadExceptionList(NLCompositeTransliteratorException *this, CFLocaleRef locale, const __CFURL *a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3002000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if (a3)
  {
    Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    v8 = Mutable;
    if (Mutable)
    {
      CFStringAppend(Mutable, Value);
      CFStringAppend(v8, @"_exceptions.dat");
      v23 = CFURLCreateCopyAppendingPathComponent(v6, a3, v8, 0);
      getFileSystemRepresentationFromCFURL(v23);
    }
  }

  else
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 0x40000000;
    v18 = ___ZN34NLCompositeTransliteratorException17loadExceptionListEPK10__CFLocalePK7__CFURL_block_invoke;
    v19 = &unk_27873F918;
    v20 = &v24;
    LMEnumerateAssetDataItems();
  }

  v9 = v25[5];
  if (v9)
  {
    getUTF8StringFromCFString(v9, __p);
    NL::StringMap::createWithFile();
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "Could not locate exception list for: ");
  composeErrorMessageForLocale(locale, v14, __p);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v11 = NL::CFLogger::sharedInstance(v10);
  v12 = __p;
  if (v22 < 0)
  {
    v12 = __p[0];
  }

  (*(*v11 + 16))(v11, 3, "%s", v12);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  _Block_object_dispose(&v24, 8);
  if (v29)
  {
    CFRelease(v29);
  }

  return 0;
}

void sub_22CD49A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Block_object_dispose((v40 - 112), 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v39 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZN34NLCompositeTransliteratorException17loadExceptionListEPK10__CFLocalePK7__CFURL_block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent)
  {
    v10 = PathComponent;
    if (CFStringsAreEqual(PathComponent, @"exceptions.dat"))
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = CFURLCopyPath(url);
      nlp::CFScopedPtr<__CFString const*>::reset((v11 + 40), v12);
      *a6 = 1;
    }

    CFRelease(v10);
  }
}

void sub_22CD49C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void NLCompositeTransliteratorException::exceptionCandidatesForInput(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  NLOSSignPostexceptionCandidatesForInput::NLOSSignPostexceptionCandidatesForInput(&v15);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a1)
  {
    v6 = *(a2 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 8);
    }

    if (v6)
    {
      NL::StringMap::get(*a1, a2, &v14);
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        splitWithChar(&v14, 0x2Cu, &v11);
        if (v11 != v12)
        {
          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
          }

          else
          {
            v9 = *v11;
            __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
            *&__p.__r_.__value_.__l.__data_ = v9;
          }

          operator new();
        }

        __p.__r_.__value_.__r.__words[0] = &v11;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        v8 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      if (v8 < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }
  }

  NLOSSignPostexceptionCandidatesForInput::~NLOSSignPostexceptionCandidatesForInput(&v15);
}

void sub_22CD49E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, os_signpost_id_t a24)
{
  a9 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v26 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v26;
    operator delete(v26);
  }

  NLOSSignPostexceptionCandidatesForInput::~NLOSSignPostexceptionCandidatesForInput(&a24);
  _Unwind_Resume(a1);
}

void NLOSSignPostexceptionCandidatesForInput::NLOSSignPostexceptionCandidatesForInput(NLOSSignPostexceptionCandidatesForInput *this)
{
  v2 = _nlpSignpostLog();
  *this = os_signpost_id_make_with_pointer(v2, this);
  v3 = _nlpSignpostLog();
  v4 = *this;
  if ((*this - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "exceptionCandidatesForInput", &unk_22CDFA99D, v6, 2u);
    }
  }
}

void NLOSSignPostexceptionCandidatesForInput::~NLOSSignPostexceptionCandidatesForInput(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CD0B000, v4, OS_SIGNPOST_INTERVAL_END, v3, "exceptionCandidatesForInput", &unk_22CDFA99D, v5, 2u);
    }
  }
}

void nlp::CFScopedPtr<__CFString *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFURL const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLTransliterationCandidate *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t NLMessageIntentCandidate::NLMessageIntentCandidate(uint64_t a1, int a2, uint64_t a3, double a4)
{
  *a1 = a2;
  std::unordered_map<std::string,std::string>::unordered_map(a1 + 8, a3);
  *(a1 + 48) = a4;
  return a1;
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<NLExtendedString>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<NLExtendedString>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22CD4A3E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), (v4 + 2));
        std::string::operator=((v8 + 40), (v4 + 5));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }
}

void sub_22CD4A548(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_22CD4AB30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void NL::CFLogger::CFLogger(NL::CFLogger *this)
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"NLDebug", *MEMORY[0x277CBF008], &keyExistsAndHasValidFormat);
  if (AppIntegerValue > 7 || keyExistsAndHasValidFormat == 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = AppIntegerValue;
  }

  *this = &unk_28400E100;
  *(this + 2) = v4;
  operator new[]();
}

uint64_t NL::CFLogger::sharedInstance(NL::CFLogger *this)
{
  if (NL::CFLogger::sharedInstance(void)::onceToken != -1)
  {
    NL::CFLogger::sharedInstance();
  }

  return NL::CFLogger::sharedInstance(void)::instance;
}

void NL::CFLogger::log(NL::CFLogger *this, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 2) >= a2)
  {
    vsnprintf(__str, 0x400uLL, a3, va);
    v5 = CFStringCreateWithCString(0, __str, 0x8000100u);
    (*(*this + 24))(this, a2, v5);
    CFRelease(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t NL::CFLogger::log(uint64_t this, int a2, const __CFString *a3)
{
  if (*(this + 8) >= a2)
  {
    return CFLog();
  }

  return this;
}

void NL::CFLogger::~CFLogger(NL::CFLogger *this)
{
  *this = &unk_28400E100;
  v1 = *(this + 2);
  if (v1)
  {
    MEMORY[0x2318C05E0](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_28400E100;
  v1 = *(this + 2);
  if (v1)
  {
    MEMORY[0x2318C05E0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x2318C0600);
}

void NL::ParseBuilder::ParseBuilder(NL::ParseBuilder *a1, void *a2, void *a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  v4 = a2[1];
  *(a1 + 2) = *a2;
  *(a1 + 3) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  *(a1 + 4) = *a3;
  *(a1 + 5) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v6 = a2[1];
  v7 = *a2;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NL::EntityConverter::EntityConverter(a1 + 64, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 13) = 0;
  *(a1 + 13) = NLGraphStructureStackCreate();
  NL::ParseBuilder::reset(a1);
}

void sub_22CD4AFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = v10[7];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v10[5];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v10[3];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = v10[1];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void NL::ParseBuilder::reset(NL::ParseBuilder *this)
{
  NLGraphStructureStackReset(*(this + 13));
  NL::ParserContext::reset(*(this + 2));
  operator new();
}

void NL::ParseBuilder::~ParseBuilder(NL::ParseBuilder *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    NLGraphStructureStackRelease(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    NL::Transcriber::~Transcriber(v3);
    MEMORY[0x2318C0600]();
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    NL::NumericConverter::~NumericConverter(v4);
    MEMORY[0x2318C0600]();
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    std::default_delete<NL::DateConverter>::operator()[abi:ne200100](this + 80, v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void NL::ParseBuilder::enumerateAttributeNamesWithType(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    v66 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, *a3, *(a3 + 8));
  }

  else
  {
    v65 = *a3;
  }

  std::string::basic_string[abi:ne200100]<0>(v63, "FROM");
  if (endswith(a2, v63))
  {
    v8 = 1;
    goto LABEL_20;
  }

  std::string::basic_string[abi:ne200100]<0>(v61, "OF");
  if (startswith(a2, v61))
  {
    v8 = 1;
    goto LABEL_18;
  }

  v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = a2;
    if (v9 != 2)
    {
      goto LABEL_17;
    }

LABEL_16:
    v8 = LOWORD(v10->__r_.__value_.__l.__data_) == 22850;
    goto LABEL_18;
  }

  if (a2->__r_.__value_.__l.__size_ == 2)
  {
    v10 = a2->__r_.__value_.__r.__words[0];
    goto LABEL_16;
  }

LABEL_17:
  v8 = 0;
LABEL_18:
  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

LABEL_20:
  if (v64 < 0)
  {
    operator delete(v63[0]);
    if (v8)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
    goto LABEL_24;
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    if (a2->__r_.__value_.__l.__size_ == 2 && *a2->__r_.__value_.__l.__data_ == 20308)
    {
      goto LABEL_142;
    }

    if (a2->__r_.__value_.__l.__size_ == 5)
    {
      v12 = a2->__r_.__value_.__r.__words[0];
LABEL_33:
      data = v12->__r_.__value_.__l.__data_;
      v14 = v12->__r_.__value_.__s.__data_[4];
      if (data == 1414415699 && v14 == 79)
      {
        goto LABEL_142;
      }
    }
  }

  else
  {
    if (*(&a2->__r_.__value_.__s + 23) != 2)
    {
      v12 = a2;
      if (*(&a2->__r_.__value_.__s + 23) != 5)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (LOWORD(a2->__r_.__value_.__l.__data_) == 20308)
    {
      goto LABEL_142;
    }
  }

LABEL_40:
  std::string::basic_string[abi:ne200100]<0>(v63, "WITH");
  v16 = startswith(a2, v63);
  v17 = v16;
  if (v64 < 0)
  {
    operator delete(v63[0]);
    if (v17)
    {
      goto LABEL_42;
    }

LABEL_46:
    std::string::basic_string[abi:ne200100]<0>(v63, "SHARED");
    v19 = startswith(a2, v63);
    v20 = v19;
    if (v64 < 0)
    {
      operator delete(v63[0]);
      if (v20)
      {
LABEL_48:
        std::string::basic_string[abi:ne200100]<0>(v63, "WITH");
        v21 = endswith(a2, v63);
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        v22 = *(*(a1 + 16) + 48);
        if (v21)
        {
          if ((v22 & 0x10000000000) != 0)
          {
            goto LABEL_142;
          }

          MEMORY[0x2318C02F0](&v66, "SENDER");
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v54, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
          }

          else
          {
            v54 = v66;
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v53, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
          }

          else
          {
            v53 = v65;
          }

          (*(a4 + 16))(a4, &v54, &v53);
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_142;
          }

          v25 = &v54;
          goto LABEL_141;
        }

        if ((v22 & 0x10000000000) == 0)
        {
          if ((v22 & 4) == 0)
          {
            MEMORY[0x2318C02F0](&v66, "SENDER");
            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v52, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
            }

            else
            {
              v52 = v66;
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v51, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
            }

            else
            {
              v51 = v65;
            }

            (*(a4 + 16))(a4, &v52, &v51);
            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_142;
            }

            v25 = &v52;
            goto LABEL_141;
          }

          v11 = "RECIPIENT.HasShared";
LABEL_179:
          v29 = &v65;
          goto LABEL_144;
        }

        goto LABEL_124;
      }
    }

    else if (v19)
    {
      goto LABEL_48;
    }

    v23 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v23 < 0)
    {
      if (a2->__r_.__value_.__l.__size_ != 8)
      {
LABEL_78:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "FROMTO"))
        {
          v26 = *(a1 + 16);
          v27 = *(v26 + 48);
          if ((v27 & 4) == 0)
          {
            v28 = (*(v26 + 48) & 0x12) != 0;
            if ((v27 & 0x10000000000) != 0)
            {
              v28 = 0;
            }

            v11 = "SENDER";
            v29 = &v66;
            if ((v27 & 0x400) != 0 || v28)
            {
              goto LABEL_144;
            }

            if ((v27 & 0x10000000010) != 0)
            {
              v11 = "RECIPIENT";
LABEL_144:
              MEMORY[0x2318C02F0](v29, v11);
              goto LABEL_145;
            }

            if (((v27 & 0x6000000000) != 0 || *(v26 + 40) == 3) && *(v26 + 88))
            {
              goto LABEL_144;
            }

            MEMORY[0x2318C02F0](&v66, "SENDER");
            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v50, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
            }

            else
            {
              v50 = v66;
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v49, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
            }

            else
            {
              v49 = v65;
            }

            (*(a4 + 16))(a4, &v50, &v49);
            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v49.__r_.__value_.__l.__data_);
            }

            if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_142;
            }

            v25 = &v50;
LABEL_141:
            operator delete(v25->__r_.__value_.__l.__data_);
            goto LABEL_142;
          }

          goto LABEL_24;
        }

        std::string::basic_string[abi:ne200100]<0>(v63, "AUTHORED");
        v30 = startswith(a2, v63);
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (v30)
        {
          v31 = *(a1 + 16);
          v32 = *(v31 + 48);
          if ((v32 & 0xC0000018000) == 0 && *(v31 + 40) != 3 && ((v32 & 0x4000) == 0 || (v32 & 0x300) == 0 && (*(v31 + 88) & 0xFFFFFFFE) == 0))
          {
            std::string::operator=(&v66, a2);
            goto LABEL_145;
          }

          MEMORY[0x2318C02F0](&v66, "SENDER");
          if ((*(*(a1 + 16) + 53) & 1) == 0)
          {
            goto LABEL_145;
          }

          goto LABEL_178;
        }

        std::string::basic_string[abi:ne200100]<0>(v63, "OWNER");
        v33 = startswith(a2, v63);
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        v34 = *(a1 + 16);
        if (v33)
        {
          v35 = *(v34 + 6);
          if ((v35 & 0x1C012) == 0)
          {
            if ((v35 & 4) == 0)
            {
              goto LABEL_145;
            }

            MEMORY[0x2318C02F0](&v66, "RECEIVEMOD");
            v11 = "HasReceived";
            goto LABEL_179;
          }

LABEL_97:
          MEMORY[0x2318C02F0](&v66, "SENTMOD");
          v11 = "HasSent";
          goto LABEL_179;
        }

        if (!NL::ParserContext::currentActionContainsSent(v34) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, "HasUserSent"))
        {
          if (NL::ParserContext::currentActionContainsReceived(*(a1 + 16)) && std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, "HasUserReceived"))
          {
            goto LABEL_142;
          }

          if (std::string::find[abi:ne200100](a2, "USERSENT", 0) != -1)
          {
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, "Received"))
            {
              goto LABEL_124;
            }

LABEL_142:
            v11 = "RECIPIENT";
            goto LABEL_143;
          }

          if (std::string::find[abi:ne200100](a2, "USERRECEIVED", 0) == -1)
          {
            std::string::basic_string[abi:ne200100]<0>(v63, "AIRDROPPED");
            if (startswith(a2, v63))
            {
              v38 = 1;
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(v61, "MESSAGED");
              if (startswith(a2, v61))
              {
                v38 = 1;
              }

              else
              {
                std::string::basic_string[abi:ne200100]<0>(v47, "MAILED");
                if (startswith(a2, v47))
                {
                  v38 = 1;
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(v45, "POSTED");
                  v38 = startswith(a2, v45);
                  if (v46 < 0)
                  {
                    operator delete(v45[0]);
                  }
                }

                if (v48 < 0)
                {
                  operator delete(v47[0]);
                }
              }

              if (v62 < 0)
              {
                operator delete(v61[0]);
              }
            }

            if (v64 < 0)
            {
              operator delete(v63[0]);
            }

            if (v38)
            {
              v11 = "TRANSPORT";
              goto LABEL_143;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "USERACTION"))
            {
              v39 = *(*(a1 + 16) + 48);
              if ((v39 & 0x40040004000) == 0x40000000)
              {
                MEMORY[0x2318C02F0](&v66, "USERCREATED");
                v11 = "HasUserCreated";
                goto LABEL_179;
              }

              if ((v39 & 0x100000000) != 0)
              {
                MEMORY[0x2318C02F0](&v66, "USERMODIFIED");
                v11 = "HasUserModified";
                goto LABEL_179;
              }

              if ((v39 & 0x800000000) != 0)
              {
                MEMORY[0x2318C02F0](&v66, "USERPRINTED");
                v11 = "HasUserPrinted";
                goto LABEL_179;
              }

              if ((v39 & 0x8000000800) != 0)
              {
                goto LABEL_145;
              }

              if ((v39 & 0x2070C0000012) != 0)
              {
                goto LABEL_124;
              }

              if ((v39 & 0x404) == 0)
              {
                goto LABEL_145;
              }

LABEL_225:
              MEMORY[0x2318C02F0](&v66, "RECIPIENT");
              v11 = "HasUserReceived";
              goto LABEL_179;
            }

            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "USERCREATED"))
            {
              if ((*(*(a1 + 16) + 49) & 0x1C0) == 0)
              {
                goto LABEL_145;
              }

              goto LABEL_97;
            }

            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "SENTMOD"))
            {
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "RECEIVEMOD"))
              {
                if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "MAILSENDER"))
                {
                  goto LABEL_145;
                }

                MEMORY[0x2318C02F0](&v66, "KIND");
                v11 = "MailKind";
                goto LABEL_179;
              }

              v42 = *(*(a1 + 16) + 48);
              if ((v42 & 0x1E000800041ELL) != 0 && (v42 & 0x10000000010) == 0)
              {
                goto LABEL_145;
              }

              goto LABEL_225;
            }

            v40 = *(a1 + 16);
            v41 = *(v40 + 48);
            if ((v41 & 0x8000000000) == 0 && ((v41 & 0x1E0008000C1ELL) == 0 || (v41 & 0x10000000010) != 0))
            {
              goto LABEL_124;
            }

            if ((v41 & 4) != 0 || !*(v40 + 88))
            {
              goto LABEL_145;
            }

LABEL_116:
            v11 = "";
            goto LABEL_143;
          }
        }

LABEL_24:
        v11 = "SENDER";
LABEL_143:
        v29 = &v66;
        goto LABEL_144;
      }

      v24 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      v24 = a2;
      if (v23 != 8)
      {
        goto LABEL_78;
      }
    }

    if (v24->__words[0] == 0x544E455352455355)
    {
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, "Contact"))
      {
        goto LABEL_142;
      }

      if ((*(*(a1 + 16) + 53) & 0x10) == 0)
      {
LABEL_124:
        MEMORY[0x2318C02F0](&v66, "SENDER");
LABEL_178:
        v11 = "HasUserSent";
        goto LABEL_179;
      }

      goto LABEL_116;
    }

    goto LABEL_78;
  }

  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_42:
  v18 = *(*(a1 + 16) + 48);
  if ((v18 & 0x8000000000) == 0)
  {
    MEMORY[0x2318C02F0](&v66, "SENDER");
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
    }

    else
    {
      v56 = v66;
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    }

    else
    {
      v55 = v65;
    }

    (*(a4 + 16))(a4, &v56, &v55);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    v25 = &v56;
    goto LABEL_141;
  }

  if ((v18 & 0x10000000000) == 0)
  {
    MEMORY[0x2318C02F0](&v66, "SENDER");
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = v66;
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v57, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
    }

    else
    {
      v57 = v65;
    }

    (*(a4 + 16))(a4, &v58, &v57);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    v25 = &v58;
    goto LABEL_141;
  }

  MEMORY[0x2318C02F0](&v66, "RECIPIENT");
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v60 = v66;
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = v65;
  }

  (*(a4 + 16))(a4, &v60, &v59);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

LABEL_145:
  size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v66.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v37 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v65.__r_.__value_.__l.__size_;
    }

    if (v37)
    {
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
        if ((*(&v65.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_153;
        }
      }

      else
      {
        v44 = v66;
        if ((*(&v65.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_153:
          __p = v65;
LABEL_156:
          (*(a4 + 16))(a4, &v44, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }
      }

      std::string::__init_copy_ctor_external(&__p, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
      goto LABEL_156;
    }
  }

LABEL_160:
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }
}

void sub_22CD4BE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 137) < 0)
  {
    operator delete(*(v28 - 160));
  }

  if (*(v28 - 113) < 0)
  {
    operator delete(*(v28 - 136));
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

void NL::ParseBuilder::getAttributeForBranchAtIndex(uint64_t a1@<X0>, CFArrayRef *a2@<X1>, CFArrayRef *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v7 = *(a1 + 48);
  Root = NLBranchGetRoot(a2);
  Symbol = NL::SearchGrammar::getSymbol(v7, Root);
  NL::SearchGrammar::getValidRootName(Symbol, &v27);
  v10 = *(a1 + 48);
  Leaf = NLBranchGetLeaf(a2);
  v12 = NL::SearchGrammar::getSymbol(v10, Leaf);
  NL::SearchGrammar::getValidLeafName(v12, &__p);
  if (!a3)
  {
    goto LABEL_11;
  }

  v13 = *(a1 + 48);
  v14 = NLBranchGetRoot(a2);
  v15 = NLBranchGetRoot(a3);
  if (!NL::SearchGrammar::isEquivalent(v13, v14, v15))
  {
    TokenSpan = NLBranchGetTokenSpan(a2);
    v18 = v17;
    v19 = NLBranchGetTokenSpan(a3);
    if (TokenSpan <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = TokenSpan;
    }

    v22 = TokenSpan + v18;
    if (TokenSpan + v18 >= v19 + v20)
    {
      v22 = v19 + v20;
    }

    if (v21 == -1 || v22 <= v21 || (NLBranchGetTokenSpan(a2), v24 = v23, NLBranchGetTokenSpan(a3), v24 >= v25))
    {
LABEL_11:
      NLBranchGetTokenSpan(a2);
      NLBranchGetScore(a2);
      NLBranchGetLocation(a2);
      operator new();
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_22CD4C474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void NL::ParseAttribute::setEntity(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*a2)
  {
    v7 = *(*a2 + 112);
    switch(v7)
    {
      case 1:
        *(a1 + 36) = 1;
        break;
      case 7:
        *(a1 + 38) = 1;
        break;
      case 5:
        *(a1 + 37) = 1;
        break;
    }
  }
}

void ___ZN2NL12ParseBuilder28getAttributeForBranchAtIndexEP9_NLBranchS2_l_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  std::vector<std::string>::push_back[abi:ne200100](v4 + 64, &v6);
  std::vector<std::string>::push_back[abi:ne200100](v4 + 88, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_22CD4C640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void NL::ParseAttribute::close(NL::ParseAttribute *this)
{
  v2 = *(this + 6);
  v4 = *(v2 + 128);
  v3 = *(v2 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v4)
  {
    v5 = *(this + 8);
    v38 = *(this + 9);
    if (v5 != v38)
    {
      while (1)
      {
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v39, *v5, *(v5 + 1));
        }

        else
        {
          v6 = *v5;
          v39.__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&v39.__r_.__value_.__l.__data_ = v6;
        }

        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v39;
        }

        else
        {
          v7 = v39.__r_.__value_.__r.__words[0];
        }

        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v39.__r_.__value_.__l.__size_;
        }

        v9 = v7 + size;
        if (size > 9)
        {
          v10 = size;
          v11 = v7;
          do
          {
            v12 = memchr(v11, 66, v10 - 9);
            if (!v12)
            {
              break;
            }

            if (*v12 == 0x414445524F464542 && *(v12 + 4) == 17748)
            {
              if (v12 != v9 && v12 - v7 != -1)
              {
LABEL_35:
                v18 = 4;
                goto LABEL_99;
              }

              break;
            }

            v11 = (v12 + 1);
            v10 = v9 - v11;
          }

          while (v9 - v11 >= 10);
          v14 = size;
          v15 = v7;
          do
          {
            v16 = memchr(v15, 66, v14 - 9);
            if (!v16)
            {
              break;
            }

            if (*v16 == 0x495445524F464542 && *(v16 + 4) == 17741)
            {
              if (v16 == v9 || v16 - v7 == -1)
              {
                break;
              }

              goto LABEL_35;
            }

            v15 = (v16 + 1);
            v14 = v9 - v15;
          }

          while (v9 - v15 > 9);
        }

        if (size >= 9)
        {
          v19 = size;
          v20 = v7;
          do
          {
            v21 = memchr(v20, 65, v19 - 8);
            if (!v21)
            {
              break;
            }

            if (*v21 == 0x5441445245544641 && v21[8] == 69)
            {
              if (v21 != v9 && v21 - v7 != -1)
              {
LABEL_57:
                v18 = 5;
                goto LABEL_99;
              }

              break;
            }

            v20 = (v21 + 1);
            v19 = v9 - v20;
          }

          while (v9 - v20 >= 9);
          v23 = size;
          v24 = v7;
          do
          {
            v25 = memchr(v24, 65, v23 - 8);
            if (!v25)
            {
              break;
            }

            if (*v25 == 0x4D49545245544641 && v25[8] == 69)
            {
              if (v25 != v9 && v25 - v7 != -1)
              {
                goto LABEL_57;
              }

              break;
            }

            v24 = (v25 + 1);
            v23 = v9 - v24;
          }

          while (v9 - v24 >= 9);
          v27 = size;
          v28 = v7;
          do
          {
            v29 = memchr(v28, 83, v27 - 8);
            if (!v29)
            {
              break;
            }

            if (*v29 == 0x54414445434E4953 && v29[8] == 69)
            {
              if (v29 != v9 && v29 - v7 != -1)
              {
LABEL_78:
                v18 = 6;
                goto LABEL_99;
              }

              break;
            }

            v28 = (v29 + 1);
            v27 = v9 - v28;
          }

          while (v9 - v28 >= 9);
          v31 = size;
          v32 = v7;
          do
          {
            v33 = memchr(v32, 83, v31 - 8);
            if (!v33)
            {
              break;
            }

            if (*v33 == 0x4D495445434E4953 && v33[8] == 69)
            {
              if (v33 == v9 || v33 - v7 == -1)
              {
                break;
              }

              goto LABEL_78;
            }

            v32 = (v33 + 1);
            v31 = v9 - v32;
          }

          while (v9 - v32 >= 9);
        }

        if (size >= 6)
        {
          v35 = v7;
          do
          {
            v36 = memchr(v35, 84, size - 5);
            if (!v36)
            {
              break;
            }

            if (*v36 == 1094995796 && *(v36 + 2) == 17748)
            {
              if (v36 != v9 && v36 - v7 != -1)
              {
                goto LABEL_91;
              }

              break;
            }

            v35 = (v36 + 1);
            size = v9 - v35;
          }

          while (v9 - v35 >= 6);
        }

        if (std::string::find[abi:ne200100](&v39, "TOTIME", 0) != -1)
        {
          break;
        }

        if (std::string::find[abi:ne200100](&v39, "FROMDATE", 0) != -1 || std::string::find[abi:ne200100](&v39, "STARTDATE", 0) != -1 || std::string::find[abi:ne200100](&v39, "ENDDATE", 0) != -1 || std::string::find[abi:ne200100](&v39, "FROMTIME", 0) != -1 || std::string::find[abi:ne200100](&v39, "STARTTIME", 0) != -1 || std::string::find[abi:ne200100](&v39, "ENDTIME", 0) != -1)
        {
          v18 = 2;
          goto LABEL_99;
        }

        if (std::string::find[abi:ne200100](&v39, "ANYDATE", 0) != -1 || std::string::find[abi:ne200100](&v39, "ANYTIME", 0) != -1)
        {
          v18 = 1;
          goto LABEL_99;
        }

LABEL_100:
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        v5 = (v5 + 24);
        if (v5 == v38)
        {
          return;
        }
      }

LABEL_91:
      v18 = 7;
LABEL_99:
      *(this + 10) = v18;
      goto LABEL_100;
    }
  }
}

void NL::ParseBuilder::getQuoteAttributeForEntity(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_22CD4CCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

uint64_t NL::ParseBuilder::getFunctionTokenCountForSpan(NL::ParseBuilder *this, CFRange a2, uint64_t a3)
{
  if (!a2.length)
  {
    return 0;
  }

  result = 0;
  v5 = *(this + 4);
  v6 = *(v5 + 208);
  v7 = *(v5 + 216);
  do
  {
    v8 = v6;
    if (v6 != v7)
    {
      v8 = v6;
      while (*v8 != a3 || v8[1] != a2.location - 1 + a2.length)
      {
        v8 += 2;
        if (v8 == v7)
        {
          v8 = v7;
          break;
        }
      }
    }

    if (v8 != v7)
    {
      ++result;
    }

    --a2.length;
  }

  while (a2.length);
  return result;
}

void NL::ParseBuilder::updateIntentsForParseAtIndex()
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v5[3] = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v3[3] = 0;
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x3802000000;
  v2[3] = __Block_byref_object_copy__1;
  v2[6] = 0;
  v2[4] = __Block_byref_object_dispose__1;
  v2[5] = 0;
  v1[0] = 0;
  v1[1] = v1;
  v1[2] = 0x3802000000;
  v1[3] = __Block_byref_object_copy__42;
  v1[6] = 0;
  v1[4] = __Block_byref_object_dispose__43;
  v1[5] = 0;
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3802000000;
  v0[3] = __Block_byref_object_copy__44;
  v0[4] = __Block_byref_object_dispose__45;
  _ZNSt3__115allocate_sharedB8ne200100IN2NL11ParseIntentENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_22CD4D2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::string>::destroy(&a13, a14);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  if (__p)
  {
    a51 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a53, 8);
  a45 = a10;
  std::vector<std::shared_ptr<NL::ParseAttribute>>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Block_object_dispose(&a61, 8);
  if (a67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a67);
  }

  _Block_object_dispose(&a68, 8);
  if (STACK[0x208])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x208]);
  }

  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v68 - 232), 8);
  _Block_object_dispose((v68 - 200), 8);
  _Block_object_dispose((v68 - 168), 8);
  _Block_object_dispose((v68 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__43(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 __Block_byref_object_copy__44(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__45(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 __Block_byref_object_copy__46(void *a1, uint64_t a2)
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

__n128 __Block_byref_object_copy__48(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__49(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN2NL12ParseBuilder28updateIntentsForParseAtIndexEP8_NLParsell_block_invoke(void *a1, CFArrayRef *a2)
{
  v4 = a1[14];
  NL::ParseBuilder::getAttributeForBranchAtIndex(v4, a2, *(*(a1[5] + 8) + 24), &v52);
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 48);
  *(v5 + 40) = v52;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(*(a1[4] + 8) + 40))
  {
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + NLBranchGetScore(a2);
    TokenSpan = NLBranchGetTokenSpan(a2);
    v9 = v8;
    v10 = *(a1[4] + 8);
    v11 = *(v10 + 40);
    if (*(v11 + 37) == 1)
    {
      v12 = *(a1[7] + 8);
      Location = NLBranchGetLocation(a2);
      v15 = v12[6];
      v14 = v12[7];
      if (v15 >= v14)
      {
        v17 = v12[5];
        v18 = v15 - v17;
        v19 = (v15 - v17) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          std::vector<NLExtendedString>::__throw_length_error[abi:ne200100]();
        }

        v21 = v14 - v17;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
        v23 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<long>>((v12 + 5), v23);
        }

        v24 = (v15 - v17) >> 3;
        v25 = (8 * v19);
        v26 = (8 * v19 - 8 * v24);
        *v25 = Location;
        v16 = v25 + 1;
        memcpy(v26, v17, v18);
        v27 = v12[5];
        v12[5] = v26;
        v12[6] = v16;
        v12[7] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v15 = Location;
        v16 = v15 + 8;
      }

      v12[6] = v16;
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 40);
    }

    if (*(v11 + 38) == 1)
    {
      *(*(a1[8] + 8) + 24) = 1;
      v10 = *(a1[4] + 8);
    }

    std::vector<std::shared_ptr<NL::ParseAttribute>>::push_back[abi:ne200100]((*(a1[9] + 8) + 40), (v10 + 40));
    v28 = *(*(a1[5] + 8) + 24);
    if (!v28)
    {
      goto LABEL_33;
    }

    v29 = NLBranchGetTokenSpan(v28);
    if (TokenSpan <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = TokenSpan;
    }

    v32 = TokenSpan + v9;
    if (TokenSpan + v9 >= v29 + v30)
    {
      v32 = v29 + v30;
    }

    if (v31 != -1 && v32 > v31)
    {
      v44 = *(*(a1[10] + 8) + 40);
      v45 = *(a1[4] + 8);
      v47 = *(v45 + 40);
      v46 = *(v45 + 48);
      v50 = v47;
      v51 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      NL::ParseIntent::append(v44, &v50);
      v41 = v51;
      if (!v51)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v34 = *(*(a1[5] + 8) + 24);
    if (!v34 || TokenSpan != NLBranchGetTokenSpan(v34) || v9 != v35)
    {
LABEL_33:
      v36.location = *(*(a1[11] + 8) + 48) + *(*(a1[11] + 8) + 40);
      if (TokenSpan > v36.location)
      {
        v36.length = TokenSpan - v36.location;
        *(*(a1[12] + 8) + 24) += NL::ParseBuilder::getFunctionTokenCountForSpan(v4, v36, a1[15]);
      }

      *(*(a1[13] + 8) + 24) += v9;
    }

    v37 = *(*(a1[10] + 8) + 40);
    v38 = *(a1[4] + 8);
    v40 = *(v38 + 40);
    v39 = *(v38 + 48);
    v48 = v40;
    v49 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    NL::ParseIntent::add(v37, &v48);
    v41 = v49;
    if (!v49)
    {
      goto LABEL_40;
    }

LABEL_39:
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_40:
    v42 = *(a1[11] + 8);
    *(v42 + 40) = TokenSpan;
    *(v42 + 48) = v9;
    v43 = *(*(a1[5] + 8) + 24);
    if (v43)
    {
      NLBranchRelease(v43);
    }

    *(*(a1[5] + 8) + 24) = NLBranchRetain(a2);
  }
}