uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x25F8748B0](a1 + 128);
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

void sub_25BA27A28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

void std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
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

uint64_t *std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::find<std::string>(uint64_t a1, void **a2)
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_25BA28280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F874870](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25BA28404(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t nws_log_obj()
{
  if (nws_log_obj_g_init != -1)
  {
    nws_log_obj_cold_1();
  }

  return nws_log_obj_log_obj;
}

os_log_t __nws_log_obj_block_invoke()
{
  result = os_log_create("com.apple.NetworkScore", "networkscore");
  nws_log_obj_log_obj = result;
  return result;
}

uint64_t nws_algos_log_obj()
{
  if (nws_algos_log_obj_g_init != -1)
  {
    nws_algos_log_obj_cold_1();
  }

  return nws_algos_log_obj_log_obj;
}

os_log_t __nws_algos_log_obj_block_invoke()
{
  result = os_log_create("com.apple.NetworkScore", "algos");
  nws_algos_log_obj_log_obj = result;
  return result;
}

void __nws_log_run_with_lock(uint64_t a1)
{
  os_unfair_lock_lock(&gLogLock);
  (*(a1 + 16))(a1);

  os_unfair_lock_unlock(&gLogLock);
}

void sub_25BA28980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::pair<std::string,std::string>::~pair(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_25BA29240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  std::vector<AlgosScoreCombinerFrameRow>::__destroy_vector::operator()[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

double amean(const AlgosScoreCombinerFrameRow **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0.0;
  }

  v3 = ((v2 - v1) >> 6);
  v4 = 0.0;
  do
  {
    AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v7, v1);
    v5 = v11;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    if (v8 < 0)
    {
      operator delete(v7);
    }

    v4 = v4 + v5 / v3;
    v1 = (v1 + 64);
  }

  while (v1 != v2);
  return v4;
}

double stddev(const AlgosScoreCombinerFrameRow **a1)
{
  if ((a1[1] - *a1) > 0x40)
  {
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v24 = v3;
    v25 = v1;
    v26 = v2;
    v9 = amean(a1);
    v10 = *a1;
    v11 = a1[1];
    if (*a1 == v11)
    {
      v13 = 0.0;
      v15 = *a1;
    }

    else
    {
      v12 = v9;
      v13 = 0.0;
      do
      {
        AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v16, v10);
        v14 = v20;
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v17 < 0)
        {
          operator delete(v16);
        }

        v13 = v13 + (v14 - v12) * (v14 - v12);
        v10 = (v10 + 64);
      }

      while (v10 != v11);
      v10 = *a1;
      v15 = a1[1];
    }

    return sqrt(v13 / (((v15 - v10) >> 6) - 1));
  }

  else
  {

    return nan("stddev");
  }
}

uint64_t std::vector<AlgosScoreCombinerFrameRow>::__emplace_back_slow_path<AlgosScoreCombinerFrameRow>(uint64_t a1, const AlgosScoreCombinerFrameRow *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AlgosScoreCombinerFrameRow>>(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 6);
  AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow((v2 << 6), a2);
  v16 = ((v2 << 6) + 64);
  v8 = *(a1 + 8);
  v9 = ((v2 << 6) + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AlgosScoreCombinerFrameRow>,AlgosScoreCombinerFrameRow*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<AlgosScoreCombinerFrameRow>::~__split_buffer(&v14);
  return v13;
}

void sub_25BA2954C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AlgosScoreCombinerFrameRow>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AlgosScoreCombinerFrameRow>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AlgosScoreCombinerFrameRow>,AlgosScoreCombinerFrameRow*>(uint64_t a1, const AlgosScoreCombinerFrameRow *a2, const AlgosScoreCombinerFrameRow *a3, AlgosScoreCombinerFrameRow *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(a4, v8);
      v8 = (v8 + 64);
      a4 = (a4 + 64);
      v7 -= 64;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v6);
      v6 += 64;
    }
  }
}

void sub_25BA29628(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 64;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      v4 -= 64;
      v2 += 64;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<AlgosScoreCombinerFrameRow>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<AlgosScoreCombinerFrameRow>::__init_with_size[abi:ne200100]<AlgosScoreCombinerFrameRow*,AlgosScoreCombinerFrameRow*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AlgosScoreCombinerFrameRow>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BA2971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AlgosScoreCombinerFrameRow>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<AlgosScoreCombinerFrameRow>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AlgosScoreCombinerFrameRow>>(a1, a2);
  }

  std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
}

AlgosScoreCombinerFrameRow *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AlgosScoreCombinerFrameRow>,AlgosScoreCombinerFrameRow*,AlgosScoreCombinerFrameRow*,AlgosScoreCombinerFrameRow*>(uint64_t a1, const AlgosScoreCombinerFrameRow *a2, const AlgosScoreCombinerFrameRow *a3, AlgosScoreCombinerFrameRow *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(a4, v6);
      v6 = (v6 + 64);
      a4 = (a4 + 64);
      v7 -= 64;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_25BA297D8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 64;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      v4 -= 64;
      v2 += 64;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AlgosScoreCombinerFrameRow>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,false>(std::string *a1, std::string *a2, uint64_t (**a3)(std::string *, const AlgosScoreCombinerFrameRow *), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v46 = a2;
  v47 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 6;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v43 = *a3;
        v46 = (v7 - 64);
        if ((v43)(v7 - 64))
        {
          v42 = &v47;
          v45 = &v46;
          goto LABEL_104;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v46 = (v7 - 64);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,0>(v8, (v8 + 64), (v8 + 128), (v7 - 64), a3);
      return;
    }

    if (v10 == 5)
    {
      v46 = (v7 - 64);
      v51 = (v8 + 64);
      v52.__r_.__value_.__r.__words[0] = v8;
      v49 = (v8 + 192);
      v50 = (v8 + 128);
      v48 = (v7 - 64);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,0>(v8, (v8 + 64), (v8 + 128), v8 + 8, a3);
      if ((*a3)((v7 - 64), (v8 + 192)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v49, &v48);
        if ((*a3)(v49, (v8 + 128)))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v50, &v49);
          if ((*a3)(v50, (v8 + 64)))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v51, &v50);
            v38 = (*a3)(v51, v8);
            goto LABEL_98;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(v8, v7, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(v8, v7, a3);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,AlgosScoreCombinerFrameRow*>(v8, v7, v7, a3);
      }

      return;
    }

    v11 = v10 >> 1;
    v12 = (v8 + 64 * (v10 >> 1));
    v13 = (v7 - 64);
    if (v10 < 0x81)
    {
      v51 = v8;
      v52.__r_.__value_.__r.__words[0] = v8 + 64 * (v10 >> 1);
      v50 = v13;
      v17 = (*a3)(v8, v12);
      v18 = (*a3)(v13, v8);
      if (v17)
      {
        if (v18)
        {
          v19 = &v52;
          goto LABEL_37;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v52, &v51);
        if ((*a3)(v50, v51))
        {
          v19 = &v51;
LABEL_37:
          v21 = &v50;
LABEL_38:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v19, v21);
        }
      }

      else if (v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v51, &v50);
        if ((*a3)(v51, v52.__r_.__value_.__l.__data_))
        {
          v19 = &v52;
          v21 = &v51;
          goto LABEL_38;
        }
      }

      v8 = v47;
      if (a5)
      {
        goto LABEL_69;
      }

      goto LABEL_71;
    }

    v51 = (v8 + 64 * (v10 >> 1));
    v52.__r_.__value_.__r.__words[0] = v8;
    v50 = v13;
    v14 = (*a3)(v12, v8);
    v15 = (*a3)(v13, v12);
    if (v14)
    {
      if (v15)
      {
        v16 = &v52;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v52, &v51);
        if (!(*a3)(v50, v51))
        {
          goto LABEL_29;
        }

        v16 = &v51;
      }

      v20 = &v50;
      goto LABEL_28;
    }

    if (v15)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v51, &v50);
      if ((*a3)(v51, v52.__r_.__value_.__l.__data_))
      {
        v16 = &v52;
        v20 = &v51;
LABEL_28:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v16, v20);
      }
    }

LABEL_29:
    v8 = v47;
    v22 = v47 + 64 * v11;
    v51 = (v22 - 64);
    v52.__r_.__value_.__r.__words[0] = &v47[2].__r_.__value_.__r.__words[2];
    v50 = (v46 - 128);
    v23 = (*a3)(v22 - 64);
    v24 = (*a3)((v46 - 128), (v22 - 64));
    if (v23)
    {
      if (v24)
      {
        v25 = &v52;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v52, &v51);
        if (!(*a3)(v50, v51))
        {
          goto LABEL_45;
        }

        v25 = &v51;
      }

      v26 = &v50;
      goto LABEL_44;
    }

    if (v24)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v51, &v50);
      if ((*a3)(v51, v52.__r_.__value_.__l.__data_))
      {
        v25 = &v52;
        v26 = &v51;
LABEL_44:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v25, v26);
      }
    }

LABEL_45:
    v51 = (v22 + 64);
    v52.__r_.__value_.__r.__words[0] = &v47[5].__r_.__value_.__l.__size_;
    v50 = v46 - 8;
    v27 = (*a3)(v22 + 64);
    v28 = (*a3)(v46 - 8, (v22 + 64));
    if (v27)
    {
      if (v28)
      {
        v29 = &v52;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v52, &v51);
        if (!(*a3)(v50, v51))
        {
          goto LABEL_55;
        }

        v29 = &v51;
      }

      v30 = &v50;
      goto LABEL_54;
    }

    if (v28)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v51, &v50);
      if ((*a3)(v51, v52.__r_.__value_.__l.__data_))
      {
        v29 = &v52;
        v30 = &v51;
LABEL_54:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v29, v30);
      }
    }

LABEL_55:
    v51 = (v47 + 64 * v11);
    v52.__r_.__value_.__r.__words[0] = (v22 - 64);
    v50 = (v22 + 64);
    v31 = (*a3)(v22, (v22 - 64));
    v32 = (*a3)((v22 + 64), v22);
    if (v31)
    {
      if (v32)
      {
        v33 = &v52;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v52, &v51);
        if (!(*a3)(v50, v51))
        {
          goto LABEL_65;
        }

        v33 = &v51;
      }

      v34 = &v50;
      goto LABEL_64;
    }

    if (v32)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v51, &v50);
      if ((*a3)(v51, v52.__r_.__value_.__l.__data_))
      {
        v33 = &v52;
        v34 = &v51;
LABEL_64:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v33, v34);
      }
    }

LABEL_65:
    AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v52, v47);
    AlgosScoreCombinerFrameRow::operator=(v47, v22);
    AlgosScoreCombinerFrameRow::operator=(v22, &v52);
    if (v54 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
      if (a5)
      {
LABEL_69:
        v7 = v46;
        goto LABEL_72;
      }
    }

    else if (a5)
    {
      goto LABEL_69;
    }

LABEL_71:
    v7 = v46;
    if (((*a3)((v8 - 64), v8) & 1) == 0)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AlgosScoreCombinerFrameRow *,BOOL (*&)(AlgosScoreCombinerFrameRow&,AlgosScoreCombinerFrameRow&)>(v8, v46, a3);
      goto LABEL_81;
    }

LABEL_72:
    v35 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AlgosScoreCombinerFrameRow *,BOOL (*&)(AlgosScoreCombinerFrameRow&,AlgosScoreCombinerFrameRow&)>(v8, v7, a3);
    if ((v36 & 1) == 0)
    {
      goto LABEL_79;
    }

    v37 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(v8, v35, a3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(&v35[2].__r_.__value_.__r.__words[2], v7, a3))
    {
      if (v37)
      {
        return;
      }

      v46 = v35;
      v7 = v35;
    }

    else
    {
      if (!v37)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,false>(v8, v35, a3, -i, a5 & 1);
        v8 = &v35[2].__r_.__value_.__r.__words[2];
LABEL_81:
        a5 = 0;
        v47 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v47 = (v35 + 64);
      v8 = &v35[2].__r_.__value_.__r.__words[2];
    }
  }

  v39 = (v8 + 64);
  v46 = (v7 - 64);
  v51 = (v8 + 64);
  v52.__r_.__value_.__r.__words[0] = v8;
  v50 = (v7 - 64);
  v40 = (*a3)((v8 + 64), v8);
  v41 = (*a3)((v7 - 64), v39);
  if (v40)
  {
    if (v41)
    {
      v42 = &v52;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v52, &v51);
      if (!(*a3)(v50, v51))
      {
        return;
      }

      v42 = &v51;
    }

    v45 = &v50;
    goto LABEL_104;
  }

  if (v41)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v51, &v50);
    v38 = (*a3)(v51, v52.__r_.__value_.__l.__data_);
LABEL_98:
    if (v38)
    {
      v42 = &v52;
      v45 = &v51;
LABEL_104:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v42, v45);
    }
  }
}

void sub_25BA29F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(const AlgosScoreCombinerFrameRow **a1, std::string **a2)
{
  v2 = *a1;
  v3 = *a2;
  AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v4, *a1);
  AlgosScoreCombinerFrameRow::operator=(v2, v3);
  AlgosScoreCombinerFrameRow::operator=(v3, &v4);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,0>(const AlgosScoreCombinerFrameRow *a1, std::string *a2, std::string *a3, std::string *a4, uint64_t (**a5)(std::string *, const AlgosScoreCombinerFrameRow *))
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v19 = a2;
  v20 = a1;
  v18 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v20;
LABEL_9:
      v13 = &v18;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v20, &v19);
    if ((*a5)(v18, v19))
    {
      v12 = &v19;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v19, &v18);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      v13 = &v19;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v15, &v14);
    if ((*a5)(v15, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v16, &v15);
      if ((*a5)(v16, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v17, &v16);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(const AlgosScoreCombinerFrameRow *a1, const AlgosScoreCombinerFrameRow *a2, uint64_t (**a3)(std::string *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 64);
    if ((a1 + 64) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v13, v8);
          v10 = v7;
          while (1)
          {
            AlgosScoreCombinerFrameRow::operator=((a1 + v10 + 64), (a1 + v10));
            if (!v10)
            {
              break;
            }

            v11 = (*a3)(&v13, a1 + v10 - 64);
            v10 -= 64;
            if ((v11 & 1) == 0)
            {
              v12 = (a1 + v10 + 64);
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          AlgosScoreCombinerFrameRow::operator=(v12, &v13);
          if (v15 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v13.__r_.__value_.__l.__data_);
          }
        }

        v5 = (v8 + 64);
        v7 += 64;
      }

      while ((v8 + 64) != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(uint64_t a1, const AlgosScoreCombinerFrameRow *a2, uint64_t (**a3)(std::string *, const AlgosScoreCombinerFrameRow *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 64);
    if ((a1 + 64) != a2)
    {
      do
      {
        v7 = v5;
        if ((*a3)(v5, v4))
        {
          AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v8, v7);
          do
          {
            AlgosScoreCombinerFrameRow::operator=((v4 + 64), v4);
            v4 = (v4 - 64);
          }

          while (((*a3)(&v8, v4) & 1) != 0);
          AlgosScoreCombinerFrameRow::operator=((v4 + 64), &v8);
          if (v10 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v8.__r_.__value_.__l.__data_);
          }
        }

        v5 = (v7 + 64);
        v4 = v7;
      }

      while ((v7 + 64) != a2);
    }
  }
}

const AlgosScoreCombinerFrameRow *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AlgosScoreCombinerFrameRow *,BOOL (*&)(AlgosScoreCombinerFrameRow&,AlgosScoreCombinerFrameRow&)>(const AlgosScoreCombinerFrameRow *a1, std::string *a2, unsigned int (**a3)(std::string *))
{
  v15 = a2;
  v16 = a1;
  AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v12, a1);
  if ((*a3)(&v12, &a2[-3].__r_.__value_.__l.__size_))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 64);
      v16 = v6;
    }

    while (((*a3)(&v12, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 64);
    do
    {
      v6 = v7;
      v16 = v7;
      if (v7 >= v15)
      {
        break;
      }

      v8 = (*a3)(&v12, v7);
      v7 = (v6 + 64);
    }

    while (!v8);
  }

  v9 = v15;
  if (v6 < v15)
  {
    do
    {
      v9 = (v9 - 64);
      v15 = v9;
    }

    while (((*a3)(&v12, v9) & 1) != 0);
    v6 = v16;
  }

  if (v6 < v9)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v16, &v15);
      do
      {
        v16 = (v16 + 64);
      }

      while (!(*a3)(&v12));
      do
      {
        v15 = (v15 - 64);
      }

      while (((*a3)(&v12) & 1) != 0);
      v6 = v16;
    }

    while (v16 < v15);
  }

  if ((v6 - 64) != a1)
  {
    AlgosScoreCombinerFrameRow::operator=(a1, (v6 - 64));
  }

  AlgosScoreCombinerFrameRow::operator=((v6 - 64), &v12);
  v10 = v16;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v10;
}

std::string *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AlgosScoreCombinerFrameRow *,BOOL (*&)(AlgosScoreCombinerFrameRow&,AlgosScoreCombinerFrameRow&)>(const AlgosScoreCombinerFrameRow *a1, std::string *a2, uint64_t (**a3)(void))
{
  v17 = a2;
  AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v14, a1);
  v5 = 0;
  do
  {
    v18 = (a1 + v5 + 64);
    v5 += 64;
  }

  while (((*a3)() & 1) != 0);
  v6 = v17;
  if (v5 == 64)
  {
    v9 = (a1 + 64);
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 = (v6 - 64);
      v17 = v6;
    }

    while (((v10)(v6, &v14) & 1) == 0);
  }

  else
  {
    v7 = (v17 - 64);
    do
    {
      v17 = v7;
      v8 = (*a3)(v7, &v14);
      v7 = (v7 - 64);
    }

    while (!v8);
    v9 = v18;
  }

  v11 = v9;
  if (v9 < v17)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v18, &v17);
      do
      {
        v18 = (v18 + 64);
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v17 = (v17 - 64);
      }

      while (!(*a3)());
      v11 = v18;
    }

    while (v18 < v17);
  }

  v12 = (v11 - 64);
  if ((v11 - 64) != a1)
  {
    AlgosScoreCombinerFrameRow::operator=(a1, (v11 - 64));
  }

  AlgosScoreCombinerFrameRow::operator=(v12, &v14);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v12;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(std::string::size_type a1, const AlgosScoreCombinerFrameRow *a2, uint64_t (**a3)(std::string *, const AlgosScoreCombinerFrameRow *))
{
  v29 = a2;
  v30 = a1;
  v6 = (a2 - a1) >> 6;
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v29 = (a2 - 64);
      if ((v7)())
      {
        v8 = &v30;
        v9 = &v29;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = (a1 + 128);
    v26.__r_.__value_.__r.__words[0] = a1;
    v33 = (a1 + 128);
    v34 = (a1 + 64);
    v17 = (*a3)((a1 + 64), a1);
    v18 = (*a3)((a1 + 128), (a1 + 64));
    if (v17)
    {
      if (v18)
      {
        v19 = &v26;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v26, &v34);
        if (!(*a3)(v33, v34))
        {
          goto LABEL_35;
        }

        v19 = &v34;
      }

      v20 = &v33;
    }

    else
    {
      if (!v18 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v34, &v33), !(*a3)(v34, v26.__r_.__value_.__l.__data_)))
      {
LABEL_35:
        v21 = (a1 + 192);
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v26, v21);
              do
              {
                v23 = v16;
                AlgosScoreCombinerFrameRow::operator=((v16 + 64), v16);
                if (v16 == v30)
                {
                  break;
                }

                v16 = (v16 - 64);
              }

              while (((*a3)(&v26, &v23[-3].__r_.__value_.__r.__words[1]) & 1) != 0);
              AlgosScoreCombinerFrameRow::operator=(v23, &v26);
              v24 = v29;
              if (v28 < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v26.__r_.__value_.__l.__data_);
              }

              if (++v22 == 8)
              {
                return (v21 + 64) == v24;
              }
            }

            else
            {
              v24 = v29;
            }

            v16 = v21;
            v21 = (v21 + 64);
            if (v21 == v24)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = &v26;
      v20 = &v34;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,0>(a1, (a1 + 64), (a1 + 128), (a2 - 64), a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v26.__r_.__value_.__r.__words[0] = a1;
    v33 = (a1 + 128);
    v34 = (a1 + 64);
    v10 = (a2 - 64);
    v32 = (a1 + 192);
    v31 = (a2 - 64);
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,0>(a1, (a1 + 64), (a1 + 128), (a1 + 192), a3);
    if (!(*a3)(v10, (a1 + 192)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v32, &v31);
    if (!(*a3)(v32, (a1 + 128)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v33, &v32);
    if (!(*a3)(v33, (a1 + 64)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v34, &v33);
    v11 = (*a3)(v34, a1);
    goto LABEL_22;
  }

  v12 = (a1 + 64);
  v13 = (a2 - 64);
  v26.__r_.__value_.__r.__words[0] = a1;
  v33 = (a2 - 64);
  v34 = (a1 + 64);
  v14 = (*a3)((a1 + 64), a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = &v26;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v26, &v34);
      if (!(*a3)(v33, v34))
      {
        return 1;
      }

      v8 = &v34;
    }

    v9 = &v33;
    goto LABEL_30;
  }

  if (v15)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v34, &v33);
    v11 = (*a3)(v34, v26.__r_.__value_.__l.__data_);
LABEL_22:
    if (v11)
    {
      v8 = &v26;
      v9 = &v34;
      goto LABEL_30;
    }
  }

  return 1;
}

const AlgosScoreCombinerFrameRow *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*,AlgosScoreCombinerFrameRow*>(std::string *a1, const AlgosScoreCombinerFrameRow *a2, const AlgosScoreCombinerFrameRow *a3, uint64_t (**a4)(const std::string *, const AlgosScoreCombinerFrameRow *))
{
  v16 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 6;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 64 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(v7, a4, v8, v11);
        v11 = (v11 - 64);
        --v10;
      }

      while (v10);
    }

    v15 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v12, v16))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AlgosScoreCombinerFrameRow *&,AlgosScoreCombinerFrameRow *&>(&v15, &v16);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(v16, a4, v8, v16);
        }

        v12 = (v15 + 64);
        v15 = v12;
      }

      while (v12 != a3);
      v7 = v16;
      v8 = (v6 - v16) >> 6;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(v7, v6, a4, v8);
        v6 = (v6 - 64);
      }

      while (v8-- > 2);
      return v15;
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(uint64_t a1, uint64_t (**a2)(const std::string *, const AlgosScoreCombinerFrameRow *), uint64_t a3, const AlgosScoreCombinerFrameRow *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 6)
    {
      v10 = (a4 - a1) >> 5;
      v11 = v10 + 1;
      v12 = (a1 + ((v10 + 1) << 6));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, &v12[2].__r_.__value_.__r.__words[2]))
      {
        v12 = (v12 + 64);
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v16, v5);
        do
        {
          v14 = v12;
          AlgosScoreCombinerFrameRow::operator=(v5, v12);
          if (v7 < v11)
          {
            break;
          }

          v15 = (2 * v11) | 1;
          v12 = (a1 + (v15 << 6));
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v15;
          }

          else if ((*a2)((a1 + (v15 << 6)), &v12[2].__r_.__value_.__r.__words[2]))
          {
            v12 = (v12 + 64);
          }

          else
          {
            v11 = v15;
          }

          v5 = v14;
        }

        while (!(*a2)(v12, &v16));
        AlgosScoreCombinerFrameRow::operator=(v14, &v16);
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(const AlgosScoreCombinerFrameRow *a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v11, a1);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(a1, a3, a4);
    v9 = v8;
    v10 = (a2 - 64);
    if (v8 == v10)
    {
      AlgosScoreCombinerFrameRow::operator=(v8, &v11);
    }

    else
    {
      AlgosScoreCombinerFrameRow::operator=(v8, v10);
      AlgosScoreCombinerFrameRow::operator=(v10, &v11);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(a1, &v9[2].__r_.__value_.__r.__words[2], a3, (&v9[2].__r_.__value_.__r.__words[2] - a1) >> 6);
    }

    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }
}

const std::string *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(std::string *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 64 * v6;
    v9 = (v8 + 64);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 128);
      if ((*a2)((v8 + 64), (v8 + 128)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    AlgosScoreCombinerFrameRow::operator=(a1, v9);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AlgosScoreCombinerFrameRow &,AlgosScoreCombinerFrameRow &),AlgosScoreCombinerFrameRow*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(const std::string *, std::string *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + (v4 >> 1 << 6));
    v9 = (a2 - 64);
    if ((*a3)(v8, (a2 - 64)))
    {
      AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v11, v9);
      do
      {
        v10 = v8;
        AlgosScoreCombinerFrameRow::operator=(v9, v8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + (v7 << 6));
        v9 = v10;
      }

      while (((*a3)(v8, &v11) & 1) != 0);
      AlgosScoreCombinerFrameRow::operator=(v10, &v11);
      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }
  }
}

double standard_moment(const AlgosScoreCombinerFrameRow **a1, int a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (v2 > 2)
  {
    v6 = amean(a1);
    v7 = stddev(a1);
    v8 = a2;
    v9 = pow(v7, a2);
    v10 = *a1;
    v11 = a1[1];
    if (v10 == v11)
    {
      return 0.0;
    }

    v12 = v9 * (v2 - 1);
    v13 = 0.0;
    do
    {
      AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(&v15, v10);
      v14 = pow(v19 - v6, v8);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }

      v13 = v13 + v14 / v12;
      v10 = (v10 + 64);
    }

    while (v10 != v11);
    return v13;
  }

  else
  {

    return nan("standard_moment");
  }
}

uint64_t AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(uint64_t a1, const std::string *a2, const std::string *a3, double a4, double a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = a4;
  std::string::operator=(a1, a2);
  *(a1 + 48) = a5;
  std::string::operator=((a1 + 24), a3);
  return a1;
}

void sub_25BA2B06C(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(v1);
  _Unwind_Resume(a1);
}

uint64_t AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(uint64_t a1, const std::string *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = a2[2].__r_.__value_.__l.__size_;
  std::string::operator=(a1, a2);
  *(a1 + 48) = a2[2].__r_.__value_.__l.__data_;
  std::string::operator=((a1 + 24), a2 + 1);
  return a1;
}

void sub_25BA2B0E8(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(v1);
  _Unwind_Resume(a1);
}

std::string *AlgosScoreCombinerFrameRow::operator=(std::string *a1, const std::string *a2)
{
  a1[2].__r_.__value_.__l.__size_ = a2[2].__r_.__value_.__l.__size_;
  std::string::operator=(a1, a2);
  a1[2].__r_.__value_.__r.__words[0] = a2[2].__r_.__value_.__r.__words[0];
  std::string::operator=(a1 + 1, a2 + 1);
  return a1;
}

_BYTE *AlgosScoreCombinerFrameRow::GetHeaderDescription@<X0>(_BYTE *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x100uLL, "     %-10s %-10s %-10s %-10s", "score", "type", "weight", "label");
  result = std::string::basic_string[abi:ne200100]<0>(a1, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *AlgosScoreCombinerFrameRow::GetRawDescription@<X0>(AlgosScoreCombinerFrameRow *this@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = this;
  if (*(this + 23) < 0)
  {
    v3 = *this;
  }

  v4 = this + 24;
  if (*(this + 47) < 0)
  {
    v4 = *v4;
  }

  snprintf(__str, 0x100uLL, "%-10.3f %-10s %-10.3f %-10s", *(this + 7), v3, *(this + 6), v4);
  result = std::string::basic_string[abi:ne200100]<0>(a2, __str);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void AlgosScoreCombinerFrame::DebugPrint(const std::string **this, int a2)
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  AlgosScoreCombinerFrameRow::GetHeaderDescription(__p);
  if (v21 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 initWithFormat:@"%s\n", v5];
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___ZN23AlgosScoreCombinerFrame10DebugPrintEi_block_invoke;
  v24[3] = &unk_27996CF98;
  v25 = v6;
  v7 = v6;
  __nws_log_run_with_lock(v24);

  v8 = *this;
  v9 = this[1];
  if (*this != v9)
  {
    v10 = 0;
    do
    {
      AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(__p, v8);
      if (a2 >= 1)
      {
        v11 = objc_alloc(MEMORY[0x277CCACA8]);
        AlgosScoreCombinerFrameRow::GetRawDescription(__p, v18);
        if (v19 >= 0)
        {
          v12 = v18;
        }

        else
        {
          v12 = v18[0];
        }

        v13 = [v11 initWithFormat:@"%3d: %s\n", v10, v12];
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = ___ZN23AlgosScoreCombinerFrame10DebugPrintEi_block_invoke_2;
        v16[3] = &unk_27996CF98;
        v14 = v13;
        v17 = v14;
        __nws_log_run_with_lock(v16);

        v10 = (v10 + 1);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = __OFSUB__(a2--, 1);
      if (a2 < 0 != v15)
      {
        break;
      }

      v8 = (v8 + 64);
    }

    while (v8 != v9);
  }
}

uint64_t ___ZN23AlgosScoreCombinerFrame10DebugPrintEi_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t ___ZN23AlgosScoreCombinerFrame10DebugPrintEi_block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t std::vector<AlgosScoreStreamFrameRow>::push_back[abi:ne200100](uint64_t a1, const AlgosScoreStreamFrameRow *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<AlgosScoreStreamFrameRow>::__emplace_back_slow_path<AlgosScoreStreamFrameRow>(a1, a2);
  }

  else
  {
    AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(*(a1 + 8), a2);
    result = v3 + 64;
    *(a1 + 8) = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_25BA2E2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a30, a31);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v33 - 120, *(v33 - 112));

  _Unwind_Resume(a1);
}

void AlgosScoreStreamFrameRow::GetParam(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = std::__tree<std::__value_type<std::string,NWSAlgosEventTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,NWSAlgosEventTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NWSAlgosEventTypes>>>::find<std::string>(a1 + 40, a2);
  if (a1 + 48 == v7)
  {
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      *&a4->__r_.__value_.__l.__data_ = *a3;
      a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
      return;
    }

    v9 = *a3;
    v10 = *(a3 + 8);
  }

  else
  {
    if ((*(v7 + 79) & 0x80000000) == 0)
    {
      v8 = *(v7 + 56);
      a4->__r_.__value_.__r.__words[2] = *(v7 + 72);
      *&a4->__r_.__value_.__l.__data_ = v8;
      return;
    }

    v9 = *(v7 + 56);
    v10 = *(v7 + 64);
  }

  std::string::__init_copy_ctor_external(a4, v9, v10);
}

void sub_25BA2F71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t std::vector<AlgosScoreStreamFrameRow>::__emplace_back_slow_path<AlgosScoreStreamFrameRow>(uint64_t a1, const AlgosScoreStreamFrameRow *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AlgosScoreStreamFrameRow>>(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 6);
  AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow((v2 << 6), a2);
  v16 = ((v2 << 6) + 64);
  v8 = *(a1 + 8);
  v9 = ((v2 << 6) + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AlgosScoreStreamFrameRow>,AlgosScoreStreamFrameRow*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<AlgosScoreStreamFrameRow>::~__split_buffer(&v14);
  return v13;
}

void sub_25BA2FD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AlgosScoreStreamFrameRow>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AlgosScoreStreamFrameRow>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AlgosScoreStreamFrameRow>,AlgosScoreStreamFrameRow*>(uint64_t a1, AlgosScoreStreamFrameRow *a2, AlgosScoreStreamFrameRow *a3, AlgosScoreStreamFrameRow *this)
{
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v6 = a2;
    do
    {
      AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(this, v6);
      v6 = (v6 + 64);
      this = (v13 + 64);
      v13 = (v13 + 64);
    }

    while (v6 != a3);
    v11 = 1;
    if (a2 != a3)
    {
      v7 = a2 + 40;
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v7, *(v7 + 1));
        v8 = (v7 + 24);
        v7 += 64;
      }

      while (v8 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AlgosScoreStreamFrameRow>,AlgosScoreStreamFrameRow*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AlgosScoreStreamFrameRow>,AlgosScoreStreamFrameRow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<AlgosScoreStreamFrameRow>,AlgosScoreStreamFrameRow*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<AlgosScoreStreamFrameRow>,AlgosScoreStreamFrameRow*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 64;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<AlgosScoreStreamFrameRow>::~__split_buffer(void **a1)
{
  std::__split_buffer<AlgosScoreStreamFrameRow>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<AlgosScoreStreamFrameRow>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(i - 24, *(i - 16));
  }
}

void std::vector<AlgosScoreStreamFrameRow>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 64;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_25BA30238(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void AlgosScoreStreamFrameRow::EventForString()
{
  {
    qword_27FBB2530 = 0;
    qword_27FBB2528 = 0;
    AlgosScoreStreamFrameRow::EventForString(std::string &)::event_map = &qword_27FBB2528;
    __cxa_atexit(std::map<std::string,NWSAlgosEventTypes>::~map[abi:ne200100], &AlgosScoreStreamFrameRow::EventForString(std::string &)::event_map, &dword_25BA15000);
  }
}

void AlgosScoreCombinerFrameRow::AlgosScoreCombinerFrameRow(void **a1)
{
  if (*(a1 + 23) < 0)
  {
    OUTLINED_FUNCTION_0_0(a1);
  }
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