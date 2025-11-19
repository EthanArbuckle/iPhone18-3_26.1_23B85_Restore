void sub_1D59486F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a11);
  v33 = 24;
  while (1)
  {
    v34 = *(&__p + v33);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v33 -= 16;
    if (v33 == -8)
    {
      if (a20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a20);
      }

      if (a24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a24);
      }

      _Unwind_Resume(a1);
    }
  }
}

void mediaplatform::DatabaseParameter<std::string>::bind(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  mediaplatform::DatabaseStatement::bindParameter<std::string>(a2, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D594899C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::DatabaseParameter<std::string>::description(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "'");
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

  for (; size; --size)
  {
    std::string::push_back(a2, p_p->__r_.__value_.__s.__data_[0]);
    if (p_p->__r_.__value_.__s.__data_[0] == 39)
    {
      std::string::push_back(a2, 39);
    }

    p_p = (p_p + 1);
  }

  std::string::push_back(a2, 39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D5948A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::DatabaseParameter<std::string>::~DatabaseParameter(uint64_t a1)
{
  *a1 = &unk_1F50D87D8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseParameter<std::string>::~DatabaseParameter(uint64_t a1)
{
  *a1 = &unk_1F50D87D8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__shared_ptr_emplace<mediaplatform::DatabaseParameter<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ComparisonPredicate<std::string>::matches(uint64_t a1, void *a2)
{
  mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::valueForProperty(&__p, *a2 + 8, *(a1 + 8));
  v3 = mlcore::_string_matches((a1 + 24), *(a1 + 20), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_1D5948C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::_string_matches(char *a1, int a2, char *a3)
{
  if (a2 > 4)
  {
    if (a2 <= 9)
    {
      if (a2 == 5)
      {
        return std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3) < 1;
      }

      if (a2 == 9)
      {
        v17 = a3[23];
        if ((v17 & 0x80u) == 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        if ((v17 & 0x80u) != 0)
        {
          v17 = *(a3 + 1);
        }

        v19 = a1[23];
        if (v19 >= 0)
        {
          v20 = a1;
        }

        else
        {
          v20 = *a1;
        }

        if (v19 >= 0)
        {
          v21 = a1[23];
        }

        else
        {
          v21 = *(a1 + 1);
        }

        if (!v21)
        {
          return 1;
        }

        v22 = &v18[v17];
        if (v17 >= v21)
        {
          v50 = *v20;
          v51 = v18;
          do
          {
            v52 = v17 - v21;
            if (v52 == -1)
            {
              break;
            }

            v53 = memchr(v51, v50, v52 + 1);
            if (!v53)
            {
              break;
            }

            v23 = v53;
            if (!memcmp(v53, v20, v21))
            {
              return v23 != v22 && v23 == v18;
            }

            v51 = v23 + 1;
            v17 = v22 - (v23 + 1);
          }

          while (v17 >= v21);
        }

        v23 = v22;
        return v23 != v22 && v23 == v18;
      }
    }

    else
    {
      switch(a2)
      {
        case 10:
          v31 = a3[23];
          if ((v31 & 0x80u) == 0)
          {
            v32 = a3;
          }

          else
          {
            v32 = *a3;
          }

          if ((v31 & 0x80u) != 0)
          {
            v31 = *(a3 + 1);
          }

          v33 = a1[23];
          v34 = *a1;
          if ((v33 & 0x80u) != 0)
          {
            v33 = *(a1 + 1);
          }

          else
          {
            v34 = a1;
          }

          v35 = &v32[v31];
          if (v31)
          {
            v36 = v33 == 0;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
            v43 = &v32[v31];
          }

          else
          {
            v41 = *v34;
            v39 = v34 + 1;
            v40 = v41;
            v42 = v32;
            v43 = &v32[v31];
            do
            {
              v44 = v42 + 1;
              while (*v42 != v40)
              {
                ++v42;
                ++v44;
                if (v42 == v35)
                {
                  goto LABEL_93;
                }
              }

              v45 = v33 - 1;
              v46 = v39;
              while (v45)
              {
                if (v44 == v35)
                {
                  goto LABEL_93;
                }

                v48 = *v44++;
                v47 = v48;
                v49 = *v46++;
                --v45;
                if (v47 != v49)
                {
                  goto LABEL_113;
                }
              }

              v43 = v42;
LABEL_113:
              ++v42;
            }

            while (v42 != v35);
          }

LABEL_93:
          v37 = v43 - v32;
          if (v43 == v35 && v33 != 0)
          {
            v37 = -1;
          }

          return v37 == v31 - v33;
        case 12:
          v4 = a3[23];
          if ((v4 & 0x80u) == 0)
          {
            v5 = a3;
          }

          else
          {
            v5 = *a3;
          }

          if ((v4 & 0x80u) != 0)
          {
            v4 = *(a3 + 1);
          }

          v6 = a1[23];
          if (v6 >= 0)
          {
            v7 = a1;
          }

          else
          {
            v7 = *a1;
          }

          if (v6 >= 0)
          {
            v8 = a1[23];
          }

          else
          {
            v8 = *(a1 + 1);
          }

          if (v8)
          {
            v9 = &v5[v4];
            if (v4 >= v8)
            {
              v54 = *v7;
              v55 = v5;
              do
              {
                v56 = v4 - v8;
                if (v56 == -1)
                {
                  break;
                }

                v57 = memchr(v55, v54, v56 + 1);
                if (!v57)
                {
                  break;
                }

                v10 = v57;
                if (!memcmp(v57, v7, v8))
                {
                  goto LABEL_23;
                }

                v55 = v10 + 1;
                v4 = v9 - (v10 + 1);
              }

              while (v4 >= v8);
            }

            v10 = v9;
LABEL_23:
            v11 = v10 == v9 || v10 - v5 == -1;
            return !v11;
          }

          return 1;
        case 11:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "not implemented yet");
          goto LABEL_130;
      }
    }

LABEL_129:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unexpected operator type");
LABEL_130:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3) > 0;
    }

    if (a2 != 3)
    {
      return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3) & 0x80u) == 0;
    }

    return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3) & 0x80u) != 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v12 = a1[23];
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a1 + 1);
      }

      v14 = a3[23];
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 1);
      }

      if (v12 == v14)
      {
        if (v13 < 0)
        {
          a1 = *a1;
        }

        if (v15 >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        v11 = memcmp(a1, v16, v12) == 0;
        return !v11;
      }

      return 1;
    }

    goto LABEL_129;
  }

  v25 = a1[23];
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a1 + 1);
  }

  v27 = a3[23];
  v28 = v27;
  if ((v27 & 0x80u) != 0)
  {
    v27 = *(a3 + 1);
  }

  if (v25 != v27)
  {
    return 0;
  }

  if (v26 < 0)
  {
    a1 = *a1;
  }

  if (v28 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  return memcmp(a1, v29, v25) == 0;
}

uint64_t mlcore::ComparisonPredicate<std::string>::description@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  v4 = *(a1 + 8);
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  v8 = *(v5 + 23);
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= 0)
  {
    v10 = *(v5 + 23);
  }

  else
  {
    v10 = *(v5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v9, v10);
  LOBYTE(__p[0]) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, __p, 1);
  v11 = *(a1 + 20);
  if (v11 >= 0xD)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unexpected operator type");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, (&off_1E84C8280)[v11]);
  if ((v23 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v13 = v23;
  }

  else
  {
    v13 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v12, v13);
  v29 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, &v29, 1);
  v29 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, &v29, 1);
  v16 = *(a1 + 24);
  v15 = a1 + 24;
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v18, v19);
  v29 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, &v29, 1);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  std::ostringstream::str[abi:ne200100](a2, &v24);
  v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v28);
}

void sub_1D5949344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void mlcore::ComparisonPredicate<std::string>::~ComparisonPredicate(uint64_t a1)
{
  *a1 = &unk_1F50D48C0;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ComparisonPredicate<std::string>::~ComparisonPredicate(uint64_t a1)
{
  *a1 = &unk_1F50D48C0;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void mlcore::ComparisonPredicate<double>::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    operator new();
  }

  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 96))(&v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseBindParameter,std::allocator<mediaplatform::DatabaseBindParameter>,std::shared_ptr<mediaplatform::DatabaseParameter<int>> &,0>();
}

void sub_1D5949A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, char a25)
{
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v26 = 24;
  while (1)
  {
    v27 = *(&a25 + v26);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    v26 -= 16;
    if (v26 == -8)
    {
      if (a18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a18);
      }

      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t mediaplatform::DatabaseParameter<double>::bind(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sqlite3_bind_double(*(a2 + 24), a3 + 1, *(a1 + 8));

  return mediaplatform::DatabaseStatement::_checkSQLiteResult(a2, v4);
}

void std::__shared_ptr_emplace<mediaplatform::DatabaseParameter<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D27D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

BOOL mlcore::ComparisonPredicate<double>::matches(uint64_t a1, void *a2)
{
  v3 = mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::valueForProperty(*a2 + 8, *(a1 + 8));
  v4 = *(a1 + 20);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return v3 < *(a1 + 24);
      case 4:
        return v3 >= *(a1 + 24);
      case 5:
        return v3 <= *(a1 + 24);
      default:
        goto LABEL_14;
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        return v3 > *(a1 + 24);
      }

LABEL_14:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "unexpected operator type");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    return v3 != *(a1 + 24);
  }

  else
  {
    return v3 == *(a1 + 24);
  }
}

uint64_t mlcore::ComparisonPredicate<double>::description@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v4 = *(a1 + 8);
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  v8 = *(v5 + 23);
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= 0)
  {
    v10 = *(v5 + 23);
  }

  else
  {
    v10 = *(v5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
  LOBYTE(__p[0]) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, __p, 1);
  v11 = *(a1 + 20);
  if (v11 >= 0xD)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unexpected operator type");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, (&off_1E84C8280)[v11]);
  if ((v17 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v12, v13);
  v23 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
  MEMORY[0x1DA6EDAE0](&v18, *(a1 + 24));
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::ostringstream::str[abi:ne200100](a2, &v18);
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v22);
}

void sub_1D594A0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void mlcore::ComparisonPredicate<double>::~ComparisonPredicate(void *a1)
{
  *a1 = &unk_1F50D4868;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

void *mlcore::ComparisonPredicate<double>::~ComparisonPredicate(void *a1)
{
  *a1 = &unk_1F50D4868;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void mlcore::ComparisonPredicate<int>::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    operator new();
  }

  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 96))(&v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseBindParameter,std::allocator<mediaplatform::DatabaseBindParameter>,std::shared_ptr<mediaplatform::DatabaseParameter<int>> &,0>();
}

void sub_1D594A7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, char a25)
{
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v26 = 24;
  while (1)
  {
    v27 = *(&a25 + v26);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    v26 -= 16;
    if (v26 == -8)
    {
      if (a18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a18);
      }

      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      _Unwind_Resume(a1);
    }
  }
}

BOOL mlcore::ComparisonPredicate<int>::matches(uint64_t a1, void *a2)
{
  v3 = mlcore::PropertyCacheBase<int,double,std::string,mediaplatform::Data>::valueForProperty(*a2 + 8, *(a1 + 8));
  v4 = *(a1 + 20);
  if (v4 > 3)
  {
    if (v4 > 6)
    {
      if (v4 == 8)
      {
        v5 = (*(a1 + 24) | v3) == 0;
      }

      else
      {
        if (v4 != 7)
        {
          goto LABEL_22;
        }

        v5 = (*(a1 + 24) & v3) == 0;
      }

      return !v5;
    }

    if (v4 == 4)
    {
      return v3 >= *(a1 + 24);
    }

    if (v4 == 5)
    {
      return v3 <= *(a1 + 24);
    }

LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unexpected operator type");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v3 == *(a1 + 24);
    }

    if (v4 == 1)
    {
      v5 = v3 == *(a1 + 24);
      return !v5;
    }

    goto LABEL_22;
  }

  if (v4 == 2)
  {
    return v3 > *(a1 + 24);
  }

  else
  {
    return v3 < *(a1 + 24);
  }
}

uint64_t mlcore::ComparisonPredicate<int>::description@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v4 = *(a1 + 8);
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  v8 = *(v5 + 23);
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= 0)
  {
    v10 = *(v5 + 23);
  }

  else
  {
    v10 = *(v5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
  LOBYTE(__p[0]) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, __p, 1);
  v11 = *(a1 + 20);
  if (v11 >= 0xD)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unexpected operator type");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, (&off_1E84C8280)[v11]);
  if ((v17 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v12, v13);
  v23 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
  MEMORY[0x1DA6EDAF0](&v18, *(a1 + 24));
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::ostringstream::str[abi:ne200100](a2, &v18);
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v22);
}

void sub_1D594AD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void mlcore::ComparisonPredicate<int>::~ComparisonPredicate(void *a1)
{
  *a1 = &unk_1F50D4810;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

void *mlcore::ComparisonPredicate<int>::~ComparisonPredicate(void *a1)
{
  *a1 = &unk_1F50D4810;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void mlcore::ComparisonPredicate<mediaplatform::Data>::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 64))
  {
    operator new();
  }

  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 96))(&v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseBindParameter,std::allocator<mediaplatform::DatabaseBindParameter>,std::shared_ptr<mediaplatform::DatabaseParameter<int>> &,0>();
}

void sub_1D594B474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, char a25)
{
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v26 = 24;
  while (1)
  {
    v27 = *(&a25 + v26);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    v26 -= 16;
    if (v26 == -8)
    {
      if (a18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a18);
      }

      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t mediaplatform::DatabaseParameter<mediaplatform::Data>::bind(uint64_t a1, uint64_t a2, int a3)
{
  mediaplatform::Data::Data(&v7, *(a1 + 32), *(a1 + 16), 1);
  v5 = sqlite3_bind_blob(*(a2 + 24), a3 + 1, v9, n, 0xFFFFFFFFFFFFFFFFLL);
  result = mediaplatform::DatabaseStatement::_checkSQLiteResult(a2, v5);
  v7 = &unk_1F50DD860;
  if (v10 == 1)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x1DA6EDD20](v9, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_1D594B720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mediaplatform::Data::~Data(va);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::DatabaseParameter<mediaplatform::Data>::description@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  mediaplatform::Data::Data(v4, *(a1 + 32), *(a1 + 16), 1);
  result = mediaplatform::SQLStringValue<mediaplatform::Data>(a2, v4);
  v4[0] = &unk_1F50DD860;
  if (v6 == 1)
  {
    result = v5;
    if (v5)
    {
      return MEMORY[0x1DA6EDD20](v5, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_1D594B7C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mediaplatform::Data::~Data(va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseParameter<mediaplatform::Data>::~DatabaseParameter(uint64_t a1)
{
  *a1 = &unk_1F50D8820;
  *(a1 + 8) = &unk_1F50DD860;
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      MEMORY[0x1DA6EDD20](v1, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseParameter<mediaplatform::Data>::~DatabaseParameter(uint64_t a1)
{
  *a1 = &unk_1F50D8820;
  *(a1 + 8) = &unk_1F50DD860;
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      MEMORY[0x1DA6EDD20](v2, 0x1000C8077774924);
    }
  }

  return a1;
}

void std::__shared_ptr_emplace<mediaplatform::DatabaseParameter<mediaplatform::Data>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ComparisonPredicate<mediaplatform::Data>::matches(uint64_t a1, void *a2)
{
  v2 = a1;
  mlcore::PropertyCacheBase<mediaplatform::Data>::valueForProperty(v9, *a2 + 8, *(a1 + 8));
  std::string::basic_string[abi:ne200100](__dst, *(v2 + 48), *(v2 + 32));
  LODWORD(v2) = *(v2 + 20);
  std::string::basic_string[abi:ne200100](__p, __src, v9[1]);
  v3 = mlcore::_string_matches(__dst, v2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }

  v9[0] = &unk_1F50DD860;
  if (v11 == 1 && __src)
  {
    MEMORY[0x1DA6EDD20](__src, 0x1000C8077774924);
  }

  return v3;
}

void sub_1D594BA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  mediaplatform::Data::~Data(&a22);
  _Unwind_Resume(a1);
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

uint64_t mlcore::ComparisonPredicate<mediaplatform::Data>::description@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v4 = *(a1 + 8);
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  v8 = *(v5 + 23);
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= 0)
  {
    v10 = *(v5 + 23);
  }

  else
  {
    v10 = *(v5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v9, v10);
  LOBYTE(v19[0]) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v19, 1);
  v11 = *(a1 + 20);
  if (v11 >= 0xD)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unexpected operator type");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::basic_string[abi:ne200100]<0>(v19, (&off_1E84C8280)[v11]);
  if ((v20 & 0x80u) == 0)
  {
    v12 = v19;
  }

  else
  {
    v12 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v13 = v20;
  }

  else
  {
    v13 = v19[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v12, v13);
  __p.__r_.__value_.__s.__data_[0] = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &__p, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "x'", 2);
  mediaplatform::Base16Representation(a1 + 24, &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "'", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::ostringstream::str[abi:ne200100](a2, &v21);
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v25);
}

void sub_1D594BE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  __cxa_free_exception(v22);
  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void mlcore::ComparisonPredicate<mediaplatform::Data>::~ComparisonPredicate(uint64_t a1)
{
  *a1 = &unk_1F50D4918;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(a1 + 24) = &unk_1F50DD860;
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      MEMORY[0x1DA6EDD20](v3, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ComparisonPredicate<mediaplatform::Data>::~ComparisonPredicate(uint64_t a1)
{
  *a1 = &unk_1F50D4918;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(a1 + 24) = &unk_1F50DD860;
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      MEMORY[0x1DA6EDD20](v3, 0x1000C8077774924);
    }
  }

  return a1;
}

void mlcore::ComparisonPropertyPredicate::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 96))(&v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v6 = *(a1 + 24);
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 96))(&v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if ((*(a1 + 16) & 4) == 0)
  {
    mlcore::ComparisonPredicateBase::_SQLOperator(a1);
    operator new();
  }

  v8 = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (v8 <= 1)
  {
    if (!v8)
    {
      v16 = v14;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(v15) = 0;
      std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<int>,std::allocator<mediaplatform::SQLLiteralValue<int>>,int,0>();
    }

    if (v8 == 1)
    {
      v16 = v14;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(v15) = 0;
      std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<long long>,std::allocator<mediaplatform::SQLLiteralValue<long long>>,int,0>();
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v16 = v14;
        if (*(&v14 + 1))
        {
          atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        LODWORD(v15) = 0;
        std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<double>,std::allocator<mediaplatform::SQLLiteralValue<double>>,int,0>();
      case 3:
        v16 = v14;
        if (*(&v14 + 1))
        {
          atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<std::string>,std::allocator<mediaplatform::SQLLiteralValue<std::string>>,char const(&)[1],0>();
      case 4:
        v19 = v14;
        if (*(&v14 + 1))
        {
          atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        *&v16 = &unk_1F50DD860;
        *(&v16 + 1) = 0;
        v17 = 0uLL;
        v18 = 0;
        std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<mediaplatform::Data>,std::allocator<mediaplatform::SQLLiteralValue<mediaplatform::Data>>,mediaplatform::Data,0>();
    }
  }

  v16 = v14;
  if (*(&v14 + 1))
  {
    atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v15) = 0;
  std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<long long>,std::allocator<mediaplatform::SQLLiteralValue<long long>>,int,0>();
}

void sub_1D594CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, char a27)
{
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v28 = 24;
  while (1)
  {
    v29 = *(&a27 + v28);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v28 -= 16;
    if (v28 == -8)
    {
      if (a20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a20);
      }

      if (a24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a24);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t mlcore::ComparisonPropertyPredicate::_allProperties@<X0>(mlcore::ComparisonPropertyPredicate *this@<X0>, uint64_t a2@<X8>)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v5[0] = *(this + 1);
  v5[1] = v2;
  result = mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::OrderedSet(a2, v5, 2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mlcore::ComparisonPredicate<long long>::ComparisonPredicate(uint64_t result, uint64_t a2, int a3, void *a4, int a5)
{
  *(result + 16) = a5;
  *(result + 20) = a3;
  *result = &unk_1F50D47B8;
  *(result + 8) = a2;
  *(result + 24) = *a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

{
  *(result + 16) = a5;
  *(result + 20) = a3;
  *result = &unk_1F50D47B8;
  *(result + 8) = a2;
  *(result + 24) = *a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t mlcore::ComparisonPredicateBase::ComparisonPredicateBase(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = &unk_1F50D40E0;
  *(result + 8) = a2;
  *(result + 16) = a4;
  *(result + 20) = a3;
  return result;
}

uint64_t mlcore::ComparisonPredicate<long long>::setValue(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 24) = *a2;
  v3 = *(result + 32);
  if (v3)
  {
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t mlcore::ComparisonPredicate<std::string>::ComparisonPredicate(uint64_t a1, uint64_t a2, int a3, __int128 *a4, int a5)
{
  *(a1 + 16) = a5;
  *(a1 + 20) = a3;
  *a1 = &unk_1F50D48C0;
  *(a1 + 8) = a2;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v6;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

std::string *mlcore::ComparisonPredicate<std::string>::setValue(std::string *a1, const std::string *a2)
{
  result = std::string::operator=(a1 + 1, a2);
  data = a1[2].__r_.__value_.__l.__data_;
  if (data)
  {

    return std::string::operator=((data + 8), a2);
  }

  return result;
}

double mlcore::ComparisonPredicate<double>::ComparisonPredicate(uint64_t a1, uint64_t a2, int a3, double *a4, int a5)
{
  *(a1 + 16) = a5;
  *(a1 + 20) = a3;
  *a1 = &unk_1F50D4868;
  *(a1 + 8) = a2;
  result = *a4;
  *(a1 + 24) = *a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

{
  *(a1 + 16) = a5;
  *(a1 + 20) = a3;
  *a1 = &unk_1F50D4868;
  *(a1 + 8) = a2;
  result = *a4;
  *(a1 + 24) = *a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t mlcore::ComparisonPredicate<double>::setValue(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 24) = *a2;
  v3 = *(result + 32);
  if (v3)
  {
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t mlcore::ComparisonPredicate<int>::ComparisonPredicate(uint64_t result, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  *(result + 16) = a5;
  *(result + 20) = a3;
  *result = &unk_1F50D4810;
  *(result + 8) = a2;
  *(result + 24) = *a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

{
  *(result + 16) = a5;
  *(result + 20) = a3;
  *result = &unk_1F50D4810;
  *(result + 8) = a2;
  *(result + 24) = *a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t mlcore::ComparisonPredicate<int>::setValue(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 24) = *a2;
  v3 = *(result + 32);
  if (v3)
  {
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t mlcore::ComparisonPredicate<mediaplatform::Data>::ComparisonPredicate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(a1 + 16) = a5;
  *(a1 + 20) = a3;
  *a1 = &unk_1F50D4918;
  *(a1 + 8) = a2;
  mediaplatform::Data::Data((a1 + 24), *(a4 + 24), *(a4 + 8), 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

{
  *(a1 + 16) = a5;
  *(a1 + 20) = a3;
  *a1 = &unk_1F50D4918;
  *(a1 + 8) = a2;
  mediaplatform::Data::Data((a1 + 24), *(a4 + 24), *(a4 + 8), 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t mlcore::ComparisonPredicate<mediaplatform::Data>::setValue(uint64_t a1, uint64_t a2)
{
  result = mediaplatform::Data::operator=(a1 + 24, a2);
  v5 = *(a1 + 64);
  if (v5)
  {

    return mediaplatform::Data::operator=(v5 + 8, a2);
  }

  return result;
}

uint64_t mlcore::ComparisonPropertyPredicate::ComparisonPropertyPredicate(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *(result + 16) = 0;
  *(result + 20) = a3;
  *result = &unk_1F50D3EB8;
  *(result + 8) = a2;
  *(result + 24) = a4;
  return result;
}

{
  *(result + 16) = 0;
  *(result + 20) = a3;
  *result = &unk_1F50D3EB8;
  *(result + 8) = a2;
  *(result + 24) = a4;
  return result;
}

void sub_1D594D3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double mediaplatform::SQLBeginTransactionStatement::sql@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v3 = *(a1 + 8);
  if (v3 == 2)
  {
    HIBYTE(v11) = 9;
    LOBYTE(v10) = 69;
    v5 = "EXCLUSIVE";
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    HIBYTE(v11) = 9;
    LOBYTE(v10) = 69;
    v5 = "IMMEDIATE";
LABEL_7:
    v4 = *v5;
    goto LABEL_8;
  }

  if (v3)
  {
    *(a2 + 16) = 0x1100000000000000;
    result = *"BEGIN TRANSACTION";
    *a2 = *"BEGIN TRANSACTION";
    *(a2 + 16) = 78;
    return result;
  }

  HIBYTE(v11) = 8;
  v4 = 0x4445525245464544;
LABEL_8:
  __p = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  mediaplatform::FormatString<std::string>(&v8, "BEGIN {0} TRANSACTION", &__p);
  v6 = SHIBYTE(v11);
  result = *&v8.__r_.__value_.__l.__data_;
  *a2 = v8;
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return result;
}

void sub_1D594D518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLRollbackTransactionStatement::sql(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "ROLLBACK TRANSACTION");
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      return;
    }
  }

  else if (!*(a1 + 31))
  {
    return;
  }

  mediaplatform::FormatString<std::string>(&__p, "TO SAVEPOINT {0}", a1 + 8);
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D594D5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void mediaplatform::SQLRollbackTransactionStatement::~SQLRollbackTransactionStatement(void **this)
{
  *this = &unk_1F50DD008;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD008;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t mediaplatform::SQLBeginTransactionStatement::SQLBeginTransactionStatement(uint64_t result, int a2)
{
  *result = &unk_1F50DCFE0;
  *(result + 8) = a2;
  return result;
}

{
  *result = &unk_1F50DCFE0;
  *(result + 8) = a2;
  return result;
}

void *mediaplatform::SQLRollbackTransactionStatement::SQLRollbackTransactionStatement(void *a1, __int128 *a2)
{
  *a1 = &unk_1F50DD008;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

mlcore::LocalizedSortingDetails *mlcore::LocalizedSortingDetails::LocalizedSortingDetails(mlcore::LocalizedSortingDetails *this, const mediaplatform::FilePath *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (*(a2 + 2) != *(a2 + 1))
  {
    mediaplatform::PropertyList::PropertyList(&v26, a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "InsignificantSortPrefixes");
    mediaplatform::PropertyList::arrayValueForKey<std::string>(&v24, &v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v3 = v24;
    for (i = v25; v3 != i; v3 = (v3 + 24))
    {
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
      }

      else
      {
        v5 = *v3;
        __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&__p.__r_.__value_.__l.__data_ = v5;
      }

      mediaplatform::StringToUCharString(&__p, v21);
      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *this) >> 3);
        v10 = v9 + 1;
        if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *this) >> 3);
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v12);
        }

        v13 = 24 * v9;
        v14 = *v21;
        *(v13 + 16) = v22;
        *v13 = v14;
        v21[1] = 0;
        v22 = 0;
        v21[0] = 0;
        v15 = 24 * v9 + 24;
        v16 = *(this + 1) - *this;
        v17 = 24 * v9 - v16;
        memcpy((v13 - v16), *this, v16);
        v18 = *this;
        *this = v17;
        *(this + 1) = v15;
        *(this + 2) = 0;
        if (v18)
        {
          operator delete(v18);
        }

        v19 = SHIBYTE(v22);
        *(this + 1) = v15;
        if (v19 < 0)
        {
          operator delete(v21[0]);
        }
      }

      else
      {
        v8 = *v21;
        *(v7 + 16) = v22;
        *v7 = v8;
        *(this + 1) = v7 + 24;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    __p.__r_.__value_.__r.__words[0] = &v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    v26 = &unk_1F50DDA28;
    mediaplatform::CFRetainedPointer<__CFDictionary *>::~CFRetainedPointer(&v27);
  }

  return this;
}

void sub_1D594DA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, const void *a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  a25 = &unk_1F50DDA28;
  mediaplatform::CFRetainedPointer<__CFDictionary *>::~CFRetainedPointer(&a26);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

const void **mediaplatform::PropertyList::arrayValueForKey<std::string>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mediaplatform::PropertyList::_cfValueForKey(a2, a3, &v31);
  first = v31.__first_;
  TypeID = CFArrayGetTypeID();
  if (first)
  {
    if (CFGetTypeID(first) == TypeID)
    {
      CFRetain(first);
    }

    else
    {
      first = 0;
    }
  }

  theArray = first;
  mediaplatform::CFRetainedPointer<void const*>::~CFRetainedPointer(&v31.__first_);
  if (!first)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "not an array");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E84C80F8, MEMORY[0x1E69E5298]);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  Count = CFArrayGetCount(first);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v9 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
        v29 = v9;
        CFRetain(v9);
      }

      else
      {
        v29 = 0;
      }

      v27 = v9;
      mediaplatform::PlistValueGetter<std::string,void>::value(&__p, v9);
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v10 >= v11)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a1) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        v31.__end_cap_.__value_ = a1;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v16);
        }

        v17 = 24 * v13;
        v18 = *&__p.__r_.__value_.__l.__data_;
        *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v17 = v18;
        memset(&__p, 0, sizeof(__p));
        v19 = 24 * v13 + 24;
        v20 = *(a1 + 8) - *a1;
        v21 = 24 * v13 - v20;
        memcpy((v17 - v20), *a1, v20);
        v22 = *a1;
        *a1 = v21;
        *(a1 + 8) = v19;
        v23 = *(a1 + 16);
        *(a1 + 16) = 0;
        v31.__end_ = v22;
        v31.__end_cap_.__value_ = v23;
        v31.__first_ = v22;
        v31.__begin_ = v22;
        std::__split_buffer<std::string>::~__split_buffer(&v31);
        v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a1 + 8) = v19;
        if (v24 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v12 = *&__p.__r_.__value_.__l.__data_;
        *(v10 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v10 = v12;
        memset(&__p, 0, sizeof(__p));
        *(a1 + 8) = v10 + 24;
      }

      mediaplatform::CFRetainedPointer<void const*>::~CFRetainedPointer(&v27);
      mediaplatform::CFRetainedPointer<void const*>::~CFRetainedPointer(&v29);
    }
  }

  return mediaplatform::CFRetainedPointer<__CFArray const*>::~CFRetainedPointer(&theArray);
}

const void **mediaplatform::PlistValueGetter<std::string,void>::value(std::string *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v11 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "not a string");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E84C80F8, MEMORY[0x1E69E5298]);
  }

  CFRetain(a2);
  v11 = a2;
  memset(&v12, 0, sizeof(v12));
  Length = CFStringGetLength(a2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v7 = MaximumSizeForEncoding;
  if (MaximumSizeForEncoding < 0)
  {
    goto LABEL_7;
  }

  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(a2, v8, v7 + 1, 0x8000100u))
  {
    free(v8);
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(a1, "(invalid)");
    return mediaplatform::CFRetainedPointer<__CFString const*>::~CFRetainedPointer(&v11);
  }

  std::string::__assign_external(&v12, v8);
  free(v8);
  *a1 = v12;
  return mediaplatform::CFRetainedPointer<__CFString const*>::~CFRetainedPointer(&v11);
}

const void **mediaplatform::CFRetainedPointer<__CFArray const*>::~CFRetainedPointer(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::wstring::__init_copy_ctor_external(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0xA)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if ((a3 | 3) == 0xB)
      {
        v3 = 13;
      }

      else
      {
        v3 = (a3 | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  __dst[23] = a3;
  v4 = 2 * a3 + 2;

  return memmove(__dst, __src, v4);
}

mlcore::GeniusConfigTable *mlcore::GeniusConfigTable::GeniusConfigTable(mlcore::GeniusConfigTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v37, "genius_config");
  std::string::basic_string[abi:ne200100]<0>(&v31, "id");
  v32 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v31;
  }

  v34 = 1;
  v35 = 0;
  v36 = 0;
  v32 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v25, "version");
  v26 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v25;
  }

  v28 = 32;
  v29 = 0;
  v30 = 0;
  v26 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "default_num_results");
  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v19;
  }

  v22 = 16;
  v23 = 1;
  v24 = 0;
  v20 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "min_num_results");
  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  v16 = 16;
  v17 = 1;
  v18 = 0;
  v14 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "data");
  v4 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  v6 = 0;
  v7 = 0;
  v8 = &unk_1F50DD860;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = &unk_1F50D7B40;
  mlcore::MediaTable<long long,int,int,int,mediaplatform::Data>::MediaTable(this, &v37, &v32, &v26, &v20, &v14, &v4);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v26 = &unk_1F50D86E0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v32 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  *this = &unk_1F50D4D10;
  return this;
}

void sub_1D594E488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  *(v54 - 192) = v53;
  if (*(v54 - 161) < 0)
  {
    operator delete(*(v54 - 184));
  }

  if (*(v54 - 193) < 0)
  {
    operator delete(*(v54 - 216));
  }

  *(v54 - 120) = v52;
  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (*(v54 - 49) < 0)
  {
    operator delete(*(v54 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::MediaTable<long long,int,int,int,mediaplatform::Data>::MediaTable(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a3;
  v45 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *(a3 + 8), *(a3 + 16));
    a3 = v25;
  }

  else
  {
    v46 = *(a3 + 8);
  }

  v14 = (a3 + 36);
  v13 = *(a3 + 36);
  v47 = *(a3 + 32);
  v45 = &unk_1F50D8958;
  v48 = v13;
  v49 = *(a3 + 44);
  v41 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v42 = *(a4 + 8);
  }

  v43 = *(a4 + 32);
  v41 = &unk_1F50D8978;
  v44 = *(a4 + 36);
  v37 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v38 = *(a5 + 8);
  }

  v39 = *(a5 + 32);
  v37 = &unk_1F50D8978;
  v40 = *(a5 + 36);
  v33 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    __p = *(a6 + 8);
  }

  v35 = *(a6 + 32);
  v33 = &unk_1F50D8978;
  v36 = *(a6 + 36);
  v26 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v27 = *(a7 + 8);
  }

  v28 = *(a7 + 32);
  v26 = &unk_1F50D89D8;
  v29 = *(a7 + 36);
  mediaplatform::Data::Data(&v30, *(a7 + 64), *(a7 + 48), 1);
  mediaplatform::DatabaseTableBase::DatabaseTableBase(a1, a2);
  *a1 = &unk_1F50D8C28;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v69 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v46;
  }

  v71 = v47;
  v69 = &unk_1F50D8958;
  v72 = v48;
  v73 = v49;
  v65 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v42;
  }

  v67 = v43;
  v65 = &unk_1F50D8978;
  v68 = v44;
  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v38;
  }

  v63 = v39;
  v61 = &unk_1F50D8978;
  v64 = v40;
  v57 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = __p;
  }

  v59 = v35;
  v57 = &unk_1F50D8978;
  v60 = v36;
  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v51 = v27;
  }

  v52 = v28;
  v50 = &unk_1F50D89D8;
  v53 = v29;
  mediaplatform::Data::Data(&v54, __src, __n, 1);
  v89 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = __s;
  }

  v91 = v67;
  v89 = &unk_1F50D8978;
  v92 = v68;
  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v62;
  }

  v87 = v63;
  v85 = &unk_1F50D8978;
  v88 = v64;
  v81 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v82 = v58;
  }

  v83 = v59;
  v81 = &unk_1F50D8978;
  v84 = v60;
  v74 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = v51;
  }

  v76 = v52;
  v74 = &unk_1F50D89D8;
  v77 = v53;
  mediaplatform::Data::Data(&v78, v56, v55, 1);
  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v86;
  }

  v106 = v87;
  v104 = &unk_1F50D8978;
  v107 = v88;
  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v82;
  }

  v102 = v83;
  v100 = &unk_1F50D8978;
  v103 = v84;
  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v75;
  }

  v95 = v76;
  v93 = &unk_1F50D89D8;
  v96 = v77;
  mediaplatform::Data::Data(&v97, v80, v79, 1);
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v101;
  }

  v117 = v102;
  v115 = &unk_1F50D8978;
  v118 = v103;
  v108 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v109 = v94;
  }

  v110 = v95;
  v108 = &unk_1F50D89D8;
  v111 = v96;
  mediaplatform::Data::Data(&v112, v99, v98, 1);
  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v120 = v109;
  }

  v121 = v110;
  v119 = &unk_1F50D89D8;
  v122 = v111;
  mediaplatform::Data::Data(v123, v114, v113, 1);
  *(a1 + 80) = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 88) = v120;
  }

  *(a1 + 112) = v121;
  *(a1 + 80) = &unk_1F50D89D8;
  *(a1 + 116) = v122;
  mediaplatform::Data::Data((a1 + 120), v123[3], v123[1], 1);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v119);
  *(a1 + 160) = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 168), v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 168) = v116;
  }

  *(a1 + 192) = v117;
  *(a1 + 160) = &unk_1F50D8978;
  *(a1 + 196) = v118;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v108);
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  *(a1 + 208) = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 216), v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 216) = v105;
  }

  *(a1 + 240) = v106;
  *(a1 + 208) = &unk_1F50D8978;
  *(a1 + 244) = v107;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v93);
  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  *(a1 + 256) = &unk_1F50D86E0;
  v15 = (a1 + 264);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v15, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v15->__r_.__value_.__l.__data_ = *&v90.__r_.__value_.__l.__data_;
    *(a1 + 280) = *(&v90.__r_.__value_.__l + 2);
  }

  *(a1 + 288) = v91;
  *(a1 + 256) = &unk_1F50D8978;
  *(a1 + 292) = v92;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v74);
  v81 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  *(a1 + 304) = &unk_1F50D86E0;
  v16 = (a1 + 312);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v16, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v16->__r_.__value_.__l.__data_ = *&v70.__r_.__value_.__l.__data_;
    *(a1 + 328) = *(&v70.__r_.__value_.__l + 2);
  }

  *(a1 + 336) = v71;
  *(a1 + 304) = &unk_1F50D8958;
  *(a1 + 340) = v72;
  *(a1 + 348) = v73;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v50);
  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v65 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v69 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v26);
  v33 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v37 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v41 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F50D81D8;
  *(a1 + 352) = &unk_1F50D86E0;
  v17 = v25;
  if (*(v25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 360), *(v25 + 8), *(v25 + 16));
    v17 = v25;
  }

  else
  {
    v18 = *(v25 + 8);
    *(a1 + 376) = *(v25 + 24);
    *(a1 + 360) = v18;
  }

  *(a1 + 384) = *(v17 + 32);
  *(a1 + 352) = &unk_1F50D8958;
  v19 = *v14;
  *(a1 + 396) = *(v14 + 2);
  *(a1 + 388) = v19;
  *(a1 + 352) = &unk_1F50D7AC0;
  *(a1 + 400) = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 408), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v20 = *(a4 + 8);
    *(a1 + 424) = *(a4 + 24);
    *(a1 + 408) = v20;
  }

  *(a1 + 432) = *(a4 + 32);
  *(a1 + 400) = &unk_1F50D8978;
  *(a1 + 436) = *(a4 + 36);
  *(a1 + 400) = &unk_1F50D7AE0;
  *(a1 + 448) = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 456), *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v21 = *(a5 + 8);
    *(a1 + 472) = *(a5 + 24);
    *(a1 + 456) = v21;
  }

  *(a1 + 480) = *(a5 + 32);
  *(a1 + 448) = &unk_1F50D8978;
  *(a1 + 484) = *(a5 + 36);
  *(a1 + 448) = &unk_1F50D7AE0;
  *(a1 + 496) = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 504), *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v22 = *(a6 + 8);
    *(a1 + 520) = *(a6 + 24);
    *(a1 + 504) = v22;
  }

  *(a1 + 528) = *(a6 + 32);
  *(a1 + 496) = &unk_1F50D8978;
  *(a1 + 532) = *(a6 + 36);
  *(a1 + 496) = &unk_1F50D7AE0;
  *(a1 + 544) = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 552), *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v23 = *(a7 + 8);
    *(a1 + 568) = *(a7 + 24);
    *(a1 + 552) = v23;
  }

  *(a1 + 576) = *(a7 + 32);
  *(a1 + 544) = &unk_1F50D89D8;
  *(a1 + 580) = *(a7 + 36);
  mediaplatform::Data::Data((a1 + 584), *(a7 + 64), *(a7 + 48), 1);
  *(a1 + 544) = &unk_1F50D7B40;
  return a1;
}

void sub_1D594F828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27)
{
  *(v27 + 496) = v29;
  if (*(v27 + 527) < 0)
  {
    operator delete(*v31);
  }

  *(v27 + 448) = v28;
  if (*(v27 + 479) < 0)
  {
    operator delete(*v32);
  }

  *(v27 + 400) = a27;
  if (*(v27 + 431) < 0)
  {
    operator delete(*v30);
  }

  *(v27 + 352) = a26;
  if (*(v27 + 383) < 0)
  {
    operator delete(*a25);
  }

  mediaplatform::DatabaseTable<long long,int,int,int,mediaplatform::Data>::~DatabaseTable(v27);
  _Unwind_Resume(a1);
}

void sub_1D594FB80()
{
  STACK[0x448] = v0;
  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  JUMPOUT(0x1D594F9F0);
}

void sub_1D594FB9C()
{
  STACK[0x398] = v0;
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  JUMPOUT(0x1D594FA0CLL);
}

void sub_1D594FBB8()
{
  STACK[0x2B8] = v0;
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  JUMPOUT(0x1D594FA44);
}

void sub_1D594FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D594FA94);
}

void sub_1D594FBF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D594FB18);
}

void sub_1D594FC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,int,int,int,mediaplatform::Data>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 304);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 256);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 208);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 160);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 80);
}

void sub_1D594FD18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::GeniusConfigTable::~GeniusConfigTable(mlcore::GeniusConfigTable *this)
{
  mlcore::MediaTable<long long,int,int,int,mediaplatform::Data>::~MediaTable(this);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaTable<long long,int,int,int,mediaplatform::Data>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D81D8;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 544);
  *(a1 + 496) = &unk_1F50D86E0;
  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  *(a1 + 448) = &unk_1F50D86E0;
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  *(a1 + 400) = &unk_1F50D86E0;
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  mediaplatform::DatabaseTable<long long,int,int,int,mediaplatform::Data>::~DatabaseTable(a1);
}

{
  mlcore::MediaTable<long long,int,int,int,mediaplatform::Data>::~MediaTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseTable<long long,int,int,int,mediaplatform::Data>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8C28;
  *(a1 + 304) = &unk_1F50D86E0;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  *(a1 + 256) = &unk_1F50D86E0;
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *(a1 + 160) = &unk_1F50D86E0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,int,int,int,mediaplatform::Data>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  *(a1 + 128) = &unk_1F50D86E0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 80) = &unk_1F50D86E0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  return mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<2ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 128) = &unk_1F50D86E0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 80) = &unk_1F50D86E0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  return mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<3ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 80) = &unk_1F50D86E0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  return mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1);
}

void mlcore::GeniusConfigTable::IDColumn(mlcore::GeniusConfigTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 383) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 45), *(this + 46));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 360);
    *(a2 + 24) = *(this + 47);
  }

  *(a2 + 32) = *(this + 96);
  *(a2 + 44) = *(this + 99);
  *(a2 + 36) = *(this + 388);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::GeniusConfigTable::versionColumn(mlcore::GeniusConfigTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 431) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 51), *(this + 52));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 408);
    *(a2 + 24) = *(this + 53);
  }

  *(a2 + 32) = *(this + 108);
  *(a2 + 36) = *(this + 436);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::GeniusConfigTable::defaultNumResultsColumn(mlcore::GeniusConfigTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 479) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 57), *(this + 58));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 456);
    *(a2 + 24) = *(this + 59);
  }

  *(a2 + 32) = *(this + 120);
  *(a2 + 36) = *(this + 484);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::GeniusConfigTable::minNumResultsColumn(mlcore::GeniusConfigTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 527) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 63), *(this + 64));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 504);
    *(a2 + 24) = *(this + 65);
  }

  *(a2 + 32) = *(this + 132);
  *(a2 + 36) = *(this + 532);
  *a2 = &unk_1F50D7AE0;
}

mediaplatform::Data *mlcore::GeniusConfigTable::dataColumn@<X0>(mlcore::GeniusConfigTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 575) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 69), *(this + 70));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 552);
    *(a2 + 24) = *(this + 71);
  }

  *(a2 + 32) = *(this + 144);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 580);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 76), *(this + 74), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D5950540(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLOnJoinConstraint::sql(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(**(a1 + 8) + 16))(&v4);
  v3 = std::string::insert(&v4, 0, "ON ", 3uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1D59505F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLOnJoinConstraint::~SQLOnJoinConstraint(mediaplatform::SQLOnJoinConstraint *this)
{
  *this = &unk_1F50DD078;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD078;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void mediaplatform::SQLUsingJoinConstraint::sql(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v18, ", ");
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 != v7)
  {
    v8 = 1;
    while (1)
    {
      v10 = *v6;
      v9 = v6[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v8 & 1) == 0)
      {
        if ((v19 & 0x80u) == 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v18[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v12 = v19;
        }

        else
        {
          v12 = v18[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v11, v12);
      }

      (*(*v10 + 16))(__p, v10, a2);
      v13 = (v23 & 0x80u) == 0 ? __p : __p[0];
      v14 = (v23 & 0x80u) == 0 ? v23 : __p[1];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v13, v14);
      if (v23 < 0)
      {
        break;
      }

      if (v9)
      {
        goto LABEL_21;
      }

LABEL_22:
      v8 = 0;
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_26;
      }
    }

    operator delete(__p[0]);
    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_22;
  }

LABEL_26:
  std::ostringstream::str[abi:ne200100](&v20, &v24);
  v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  MEMORY[0x1DA6EDCB0](&v28);
  v15 = std::string::insert(&v20, 0, "USING (", 7uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v21, ")", 1uLL);
  *a3 = *v17;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1D595099C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLUsingJoinConstraint::~SQLUsingJoinConstraint(mediaplatform::SQLUsingJoinConstraint *this)
{
  *this = &unk_1F50DD0A0;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD0A0;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t mediaplatform::SQLJoinClause::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v4 = *(a1 + 8);
  if (v4 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unknown join operator");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, (&off_1E84C82E8)[v4]);
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
    v6 = v16;
  }

  else
  {
    v6 = v15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " JOIN ", 6);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 39);
  if (v7 >= 0)
  {
    v8 = a1 + 16;
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 39);
  }

  else
  {
    v9 = *(a1 + 24);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v8, v9);
  if (*(a1 + 40))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " ", 1);
    (*(**(a1 + 40) + 16))(&__p);
    v10 = (v16 & 0x80u) == 0 ? &__p : __p;
    v11 = (v16 & 0x80u) == 0 ? v16 : v15;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v10, v11);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  std::ostringstream::str[abi:ne200100](a2, &v17);
  v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v21);
}

void sub_1D5950D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void mediaplatform::SQLJoinClause::~SQLJoinClause(mediaplatform::SQLJoinClause *this)
{
  *this = &unk_1F50DD0C8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD0C8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t mediaplatform::SQLFromStatement::sql@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  if (a2)
  {
    (*(*a2 + 8))(&v19, a2);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v19.__r_.__value_.__r.__words[0] + 48), (a1 + 8));
    if (v19.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19.__r_.__value_.__l.__size_);
    }
  }

  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    v7 = a1 + 8;
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v7, v8);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v9 != v10)
  {
    while (1)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!a2)
      {
        goto LABEL_24;
      }

      if (*(v12 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(v12 + 16), *(v12 + 24));
      }

      else
      {
        v19 = *(v12 + 16);
      }

      (*(*a2 + 8))(&v17, a2);
      v13 = v17;
      if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v17 + 48), &v19))
      {
        break;
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

LABEL_31:
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        if (!v11)
        {
          goto LABEL_34;
        }

LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        goto LABEL_34;
      }

      if (v11)
      {
        goto LABEL_33;
      }

LABEL_34:
      v9 += 2;
      if (v9 == v10)
      {
        goto LABEL_38;
      }
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v13 + 48), &v19);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

LABEL_24:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " ", 1);
    (*(*v12 + 16))(&v19, v12, a2);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v19;
    }

    else
    {
      v14 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v14, size);
    goto LABEL_31;
  }

LABEL_38:
  std::ostringstream::str[abi:ne200100](a3, &v20);
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v24);
}

void sub_1D59511F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

void mediaplatform::SQLFromStatement::~SQLFromStatement(void **this)
{
  *this = &unk_1F50DD0F0;
  v2 = this + 4;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD0F0;
  v2 = this + 4;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *mediaplatform::SQLOnJoinConstraint::SQLOnJoinConstraint(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F50DD078;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F50DD078;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void mediaplatform::SQLUsingJoinConstraint::SQLUsingJoinConstraint(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F50DD0A0;
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void sub_1D59514CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void *mediaplatform::SQLUsingJoinConstraint::SQLUsingJoinConstraint(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F50DD0A0;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLColumnNameExpression const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLColumnNameExpression const>*,std::shared_ptr<mediaplatform::SQLColumnNameExpression const>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

{
  *a1 = &unk_1F50DD0A0;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLColumnNameExpression const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLColumnNameExpression const>*,std::shared_ptr<mediaplatform::SQLColumnNameExpression const>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

void std::vector<std::shared_ptr<mediaplatform::SQLColumnNameExpression const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLColumnNameExpression const>*,std::shared_ptr<mediaplatform::SQLColumnNameExpression const>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t mediaplatform::SQLJoinClause::SQLJoinClause(uint64_t a1, int a2, __int128 *a3, void *a4)
{
  *a1 = &unk_1F50DD0C8;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v6;
  }

  v7 = a4[1];
  *(a1 + 40) = *a4;
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t mediaplatform::SQLFromStatement::SQLFromStatement(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *a1 = &unk_1F50DD0F0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a1 + 32, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D59517C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void *mediaplatform::SQLFromStatement::addJoinClause(void *result, _OWORD *a2)
{
  v2 = result;
  v17 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit(((*(a2 + 8) >> 64) + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[5];
  v3 = result[6];
  if (v4 >= v3)
  {
    v6 = result[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
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

    v18[4] = v2 + 4;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>>(v11);
    }

    v12 = v8;
    v13 = (16 * v8);
    v14 = &v13[-v12];
    *v13 = v17;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    v15 = v2[4];
    v2[4] = v14;
    v2[5] = v5;
    v16 = v2[6];
    v2[6] = 0;
    v18[2] = v15;
    v18[3] = v16;
    v18[0] = v15;
    v18[1] = v15;
    result = std::__split_buffer<std::shared_ptr<mediaplatform::SQLExpression const>>::~__split_buffer(v18);
  }

  else
  {
    *v4 = v17;
    v5 = v4 + 16;
  }

  v2[5] = v5;
  return result;
}

void sub_1D59519D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

mlcore::ItemArtistTable *mlcore::ItemArtistTable::ItemArtistTable(mlcore::ItemArtistTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v113, "item_artist");
  std::string::basic_string[abi:ne200100]<0>(&__s, "item_artist_pid");
  v109 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = __s;
  }

  v111 = 1;
  v112[0] = 0;
  *&v112[4] = 0;
  v109 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v101, "item_artist");
  std::string::basic_string[abi:ne200100]<0>(v99, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v103, v101, v99);
  std::string::basic_string[abi:ne200100]<0>(&v93, "sort_item_artist");
  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v93;
  }

  v96 = 0;
  v97 = 0;
  memset(&v98, 0, sizeof(v98));
  v94 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(v86, "series_name");
  std::string::basic_string[abi:ne200100]<0>(v84, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v88, v86, v84);
  std::string::basic_string[abi:ne200100]<0>(&v78, "sort_series_name");
  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v80 = v78;
  }

  v81 = 0;
  v82 = 0;
  memset(&v83, 0, sizeof(v83));
  v79 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v68, "grouping_key");
  v69 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v68;
  }

  v71 = 0;
  v72 = 0;
  v73 = &unk_1F50DD860;
  __n = 0;
  __src = 0;
  v75 = 0;
  v77 = 0;
  v69 = &unk_1F50D7B40;
  std::string::basic_string[abi:ne200100]<0>(&v63, "cloud_status");
  v64 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = v63;
  }

  v66 = 16;
  LOBYTE(v67) = 1;
  HIDWORD(v67) = 0;
  v64 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v58, "store_id");
  v59 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v60 = v58;
  }

  v61 = 16;
  v62[0] = 1;
  *&v62[4] = 0;
  v59 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v53, "representative_item_pid");
  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = v53;
  }

  v56 = 16;
  v57[0] = 1;
  *&v57[4] = 0;
  v54 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v48, "keep_local");
  v49 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = v48;
  }

  v51 = 16;
  LOBYTE(v52) = 1;
  HIDWORD(v52) = 0;
  v49 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v43, "keep_local_status");
  v44 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v43;
  }

  v46 = 16;
  LOBYTE(v47) = 1;
  HIDWORD(v47) = 0;
  v44 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v38, "keep_local_status_reason");
  v39 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v38;
  }

  v41 = 16;
  LOBYTE(v42) = 1;
  HIDWORD(v42) = 0;
  v39 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v33, "keep_local_constraints");
  v34 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v33;
  }

  v36 = 16;
  LOBYTE(v37) = 1;
  HIDWORD(v37) = 0;
  v34 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "app_data");
  v24 = &unk_1F50D86E0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v23;
  }

  v26 = 0;
  v27 = 0;
  v28 = &unk_1F50DD860;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v32 = 0;
  v24 = &unk_1F50D7B40;
  std::string::basic_string[abi:ne200100]<0>(&v18, "sync_id");
  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v18;
  }

  v21 = 16;
  v22[0] = 1;
  *&v22[4] = 0;
  v19 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "classical_experience_available");
  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  v16 = 16;
  LOBYTE(v17) = 1;
  HIDWORD(v17) = 0;
  v14 = &unk_1F50D7AE0;
  v188 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v189, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v189 = v110;
  }

  v190 = v111;
  v188 = &unk_1F50D8958;
  v191 = *v112;
  v192 = *&v112[8];
  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v184, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v184 = v104;
  }

  v185 = v105;
  v183 = &unk_1F50D89B8;
  v186 = v106;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v107;
  }

  v178 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v179, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v179 = v95;
  }

  v180 = v96;
  v178 = &unk_1F50D89B8;
  v181 = v97;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v98;
  }

  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v89;
  }

  v175 = v90;
  v173 = &unk_1F50D89B8;
  v176 = v91;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v177 = v92;
  }

  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v169 = v80;
  }

  v170 = v81;
  v168 = &unk_1F50D89B8;
  v171 = v82;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v83;
  }

  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v70;
  }

  v163 = v71;
  v161 = &unk_1F50D89D8;
  v164 = v72;
  mediaplatform::Data::Data(&v165, __src, __n, 1);
  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v65;
  }

  v159 = v66;
  v157 = &unk_1F50D8978;
  v160 = v67;
  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v60;
  }

  v154 = v61;
  v152 = &unk_1F50D8958;
  v155 = *v62;
  v156 = *&v62[8];
  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v148 = v55;
  }

  v149 = v56;
  v147 = &unk_1F50D8958;
  v150 = *v57;
  v151 = *&v57[8];
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v50;
  }

  v145 = v51;
  v143 = &unk_1F50D8978;
  v146 = v52;
  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v140 = v45;
  }

  v141 = v46;
  v139 = &unk_1F50D8978;
  v142 = v47;
  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v136 = v40;
  }

  v137 = v41;
  v135 = &unk_1F50D8978;
  v138 = v42;
  v131 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v132 = v35;
  }

  v133 = v36;
  v131 = &unk_1F50D8978;
  v134 = v37;
  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v25;
  }

  v126 = v26;
  v124 = &unk_1F50D89D8;
  v127 = v27;
  mediaplatform::Data::Data(&v128, v31, v29, 1);
  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v120 = v20;
  }

  v121 = v21;
  v119 = &unk_1F50D8958;
  v122 = *v22;
  v123 = *&v22[8];
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v15;
  }

  v117 = v16;
  v115 = &unk_1F50D8978;
  v118 = v17;
  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v114) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v113[0], v113[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v113;
    *(this + 3) = v114;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50D8DE8;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v189;
  }

  v264 = v190;
  v262 = &unk_1F50D8958;
  v265 = v191;
  v266 = v192;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v184;
  }

  v259 = v185;
  v257 = &unk_1F50D89B8;
  v260 = v186;
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v261, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    v261 = v187;
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v179.__r_.__value_.__l.__data_, v179.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v179;
  }

  v254 = v180;
  v252 = &unk_1F50D89B8;
  v255 = v181;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v256 = v182;
  }

  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v248 = v174;
  }

  v249 = v175;
  v247 = &unk_1F50D89B8;
  v250 = v176;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v251, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    v251 = v177;
  }

  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v169;
  }

  v244 = v170;
  v242 = &unk_1F50D89B8;
  v245 = v171;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v172;
  }

  v237 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v162;
  }

  v239 = v163;
  v237 = &unk_1F50D89D8;
  v240 = v164;
  mediaplatform::Data::Data(&v241, v167, v166, 1);
  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    v234 = v158;
  }

  v235 = v159;
  v233 = &unk_1F50D8978;
  v236 = v160;
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
  }

  else
  {
    v229 = v153;
  }

  v230 = v154;
  v228 = &unk_1F50D8958;
  v231 = v155;
  v232 = v156;
  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_);
  }

  else
  {
    v224 = v148;
  }

  v225 = v149;
  v223 = &unk_1F50D8958;
  v226 = v150;
  v227 = v151;
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v144;
  }

  v221 = v145;
  v219 = &unk_1F50D8978;
  v222 = v146;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v140.__r_.__value_.__l.__data_, v140.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v140;
  }

  v217 = v141;
  v215 = &unk_1F50D8978;
  v218 = v142;
  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v212, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v212 = v136;
  }

  v213 = v137;
  v211 = &unk_1F50D8978;
  v214 = v138;
  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
  }

  else
  {
    v208 = v132;
  }

  v209 = v133;
  v207 = &unk_1F50D8978;
  v210 = v134;
  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v125.__r_.__value_.__l.__data_, v125.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v125;
  }

  v204 = v126;
  v202 = &unk_1F50D89D8;
  v205 = v127;
  mediaplatform::Data::Data(&v206, v130, v129, 1);
  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v120;
  }

  v199 = v121;
  v197 = &unk_1F50D8958;
  v200 = v122;
  v201 = v123;
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v116;
  }

  v195 = v117;
  v193 = &unk_1F50D8978;
  v196 = v118;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(this + 80, &v262, &v257, &v252, &v247, &v242, &v237, &v233, &v228, &v223, &v219, &v215, &v211, &v207, &v202, &v197, &v193);
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v202);
  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229.__r_.__value_.__l.__data_);
  }

  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v237);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v242);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v247);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v252);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v257);
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v124);
  v131 = &unk_1F50D86E0;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v161);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v168);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v173);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v178);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v183);
  v188 = &unk_1F50D86E0;
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50D8398;
  *(this + 122) = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 41, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 41) = v110;
  }

  *(this + 252) = v111;
  *(this + 1012) = *v112;
  *(this + 255) = *&v112[8];
  *(this + 122) = &unk_1F50D7AC0;
  *(this + 128) = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 43, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 43) = v104;
  }

  *(this + 264) = v105;
  *(this + 128) = &unk_1F50D89B8;
  *(this + 1060) = v106;
  v3 = (this + 1064);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v107.__r_.__value_.__l.__data_;
    *(this + 135) = *(&v107.__r_.__value_.__l + 2);
  }

  *(this + 128) = &unk_1F50D7B20;
  *(this + 136) = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1096), v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 1096) = v95;
  }

  *(this + 280) = v96;
  *(this + 136) = &unk_1F50D89B8;
  *(this + 1124) = v97;
  v4 = (this + 1128);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v98.__r_.__value_.__l.__data_;
    *(this + 143) = *(&v98.__r_.__value_.__l + 2);
  }

  *(this + 136) = &unk_1F50D7B20;
  *(this + 144) = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1160), v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 1160) = v89;
  }

  *(this + 296) = v90;
  *(this + 144) = &unk_1F50D89B8;
  *(this + 1188) = v91;
  v5 = (this + 1192);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v92.__r_.__value_.__l.__data_;
    *(this + 151) = *(&v92.__r_.__value_.__l + 2);
  }

  *(this + 144) = &unk_1F50D7B20;
  *(this + 152) = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 51, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 51) = v80;
  }

  *(this + 312) = v81;
  *(this + 152) = &unk_1F50D89B8;
  *(this + 1252) = v82;
  v6 = (this + 1256);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *&v83.__r_.__value_.__l.__data_;
    *(this + 159) = *(&v83.__r_.__value_.__l + 2);
  }

  *(this + 152) = &unk_1F50D7B20;
  *(this + 160) = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1288), v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 1288) = v70;
  }

  *(this + 328) = v71;
  *(this + 160) = &unk_1F50D89D8;
  *(this + 1316) = v72;
  mediaplatform::Data::Data((this + 1320), __src, __n, 1);
  *(this + 160) = &unk_1F50D7B40;
  *(this + 170) = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 57, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 57) = v65;
  }

  *(this + 348) = v66;
  *(this + 1396) = v67;
  *(this + 170) = &unk_1F50D7AE0;
  *(this + 176) = &unk_1F50D86E0;
  v7 = (this + 1416);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *&v60.__r_.__value_.__l.__data_;
    *(this + 179) = *(&v60.__r_.__value_.__l + 2);
  }

  *(this + 360) = v61;
  *(this + 1444) = *v62;
  *(this + 363) = *&v62[8];
  *(this + 176) = &unk_1F50D7AC0;
  *(this + 182) = &unk_1F50D86E0;
  v8 = (this + 1464);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&v55.__r_.__value_.__l.__data_;
    *(this + 185) = *(&v55.__r_.__value_.__l + 2);
  }

  *(this + 372) = v56;
  *(this + 1492) = *v57;
  *(this + 375) = *&v57[8];
  *(this + 182) = &unk_1F50D7AC0;
  *(this + 188) = &unk_1F50D86E0;
  v9 = (this + 1512);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&v50.__r_.__value_.__l.__data_;
    *(this + 191) = *(&v50.__r_.__value_.__l + 2);
  }

  *(this + 384) = v51;
  *(this + 1540) = v52;
  *(this + 188) = &unk_1F50D7AE0;
  *(this + 194) = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 65, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 65) = v45;
  }

  *(this + 396) = v46;
  *(this + 1588) = v47;
  *(this + 194) = &unk_1F50D7AE0;
  *(this + 200) = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 67, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 67) = v40;
  }

  *(this + 408) = v41;
  *(this + 1636) = v42;
  *(this + 200) = &unk_1F50D7AE0;
  *(this + 206) = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 69, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 69) = v35;
  }

  *(this + 420) = v36;
  *(this + 1684) = v37;
  *(this + 206) = &unk_1F50D7AE0;
  *(this + 212) = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 71, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 71) = v25;
  }

  *(this + 432) = v26;
  *(this + 212) = &unk_1F50D89D8;
  *(this + 1732) = v27;
  mediaplatform::Data::Data((this + 1736), v31, v29, 1);
  *(this + 212) = &unk_1F50D7B40;
  *(this + 222) = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1784), v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 1784) = v20;
  }

  *(this + 452) = v21;
  *(this + 1812) = *v22;
  *(this + 455) = *&v22[8];
  *(this + 222) = &unk_1F50D7AC0;
  *(this + 228) = &unk_1F50D86E0;
  v10 = (this + 1832);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    v11 = (v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v11 = 0;
    *&v10->__r_.__value_.__l.__data_ = *&v15.__r_.__value_.__l.__data_;
    *(this + 231) = *(&v15.__r_.__value_.__l + 2);
  }

  *(this + 464) = v16;
  *(this + 1860) = v17;
  *(this + 228) = &unk_1F50D7AE0;
  v14 = &unk_1F50D86E0;
  if (v11)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v24);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v34 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v39 = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v44 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v49 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v59 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v64 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v69);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v79);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v88);
  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v94);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v103);
  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113[0]);
  }

  *this = &unk_1F50D6570;
  return this;
}

void sub_1D59545A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _Unwind_Exception *exception_objecta, uint64_t a20, void **a21, void **a22, uint64_t a23, void **a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39, unint64_t a40, unint64_t a41, unint64_t a42, unint64_t a43, unint64_t a44, unint64_t a45, unint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  *(v77 + 1776) = v80;
  if (*(v77 + 1807) < 0)
  {
    operator delete(*v81);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(v82);
  *(v77 + 1648) = v79;
  if (*(v77 + 1679) < 0)
  {
    operator delete(*v76);
  }

  *(v77 + 1600) = a20;
  if (*(v77 + 1631) < 0)
  {
    operator delete(*v78);
  }

  *(v77 + 1552) = a23;
  if (*(v77 + 1583) < 0)
  {
    operator delete(*v75);
  }

  *(v77 + 1504) = a26;
  if (*(v77 + 1535) < 0)
  {
    operator delete(*a21);
  }

  *(v77 + 1456) = a27;
  if (*(v77 + 1487) < 0)
  {
    operator delete(*a22);
  }

  *(v77 + 1408) = a28;
  if (*(v77 + 1439) < 0)
  {
    operator delete(*a24);
  }

  *(v77 + 1360) = a29;
  if (*(v77 + 1391) < 0)
  {
    operator delete(*a25);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a36);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a30);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a32);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a33);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a34);
  *(v77 + 976) = a35;
  if (*(v77 + 1007) < 0)
  {
    operator delete(*a31);
  }

  mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~DatabaseTable(v77);
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&a75);
  if (a74 < 0)
  {
    operator delete(a73);
  }

  STACK[0x240] = a39;
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  STACK[0x288] = a40;
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  STACK[0x2D0] = a41;
  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  STACK[0x318] = a42;
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  STACK[0x360] = a43;
  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  STACK[0x3A8] = a44;
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  STACK[0x3F0] = a45;
  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&STACK[0x438]);
  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x4A0]);
  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x510]);
  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x568]);
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x5D8]);
  if (SLOBYTE(STACK[0x5BF]) < 0)
  {
    operator delete(STACK[0x5A8]);
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  STACK[0x630] = a46;
  if (SLOBYTE(STACK[0x64F]) < 0)
  {
    operator delete(STACK[0x638]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  _Unwind_Resume(a1);
}

void sub_1D5954EF0()
{
  STACK[0xBF8] = v0;
  if (SLOBYTE(STACK[0xC17]) < 0)
  {
    operator delete(STACK[0xC00]);
  }

  JUMPOUT(0x1D5954B24);
}

void sub_1D5954F0C()
{
  STACK[0x6D8] = v0;
  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  JUMPOUT(0x1D5954BB0);
}

void sub_1D5954F28()
{
  STACK[0x878] = v0;
  if (SLOBYTE(STACK[0x897]) < 0)
  {
    operator delete(STACK[0x880]);
  }

  JUMPOUT(0x1D5954C60);
}

void sub_1D5955060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 928);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 864);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 800);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 736);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 672);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 592);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 544);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 496);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 448);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 400);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 352);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 304);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 256);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 80);
}

void sub_1D595516C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::ItemArtistTable::~ItemArtistTable(mlcore::ItemArtistTable *this)
{
  *this = &unk_1F50D8398;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 976);
  mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D8398;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 976);

  mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~DatabaseTable(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>>::~__tuple_impl(uint64_t a1)
{
  *(a1 + 848) = &unk_1F50D86E0;
  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  *(a1 + 800) = &unk_1F50D86E0;
  if (*(a1 + 831) < 0)
  {
    operator delete(*(a1 + 808));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 720);
  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  *(a1 + 384) = &unk_1F50D86E0;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 304);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 240);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 176);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 112);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 48);
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8DE8;
  *(a1 + 928) = &unk_1F50D86E0;
  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 864);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 800);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 736);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 672);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 592);
  *(a1 + 544) = &unk_1F50D86E0;
  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 416) = &unk_1F50D86E0;
  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  *(a1 + 368) = &unk_1F50D86E0;
  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  *(a1 + 320) = &unk_1F50D86E0;
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  *(a1 + 272) = &unk_1F50D86E0;
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  *(a1 + 224) = &unk_1F50D86E0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 96);
  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::MediaTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~MediaTable(void *a1)
{
  *a1 = &unk_1F50D8398;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>>::~__tuple_impl((a1 + 122));
  mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8398;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>>::~__tuple_impl((a1 + 122));

  mediaplatform::DatabaseTable<long long,std::string,std::string,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,int>::~DatabaseTable(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v100 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v101 = *(a3 + 8);
  }

  v102 = *(a3 + 32);
  v100 = &unk_1F50D89B8;
  v103 = *(a3 + 36);
  if (*(a3 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, *(a3 + 40), *(a3 + 48));
  }

  else
  {
    v104 = *(a3 + 40);
  }

  v95 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v97 = *(a4 + 32);
  v95 = &unk_1F50D89B8;
  v98 = *(a4 + 36);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, *(a4 + 40), *(a4 + 48));
  }

  else
  {
    v99 = *(a4 + 40);
  }

  v90 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v91 = *(a5 + 8);
  }

  v92 = *(a5 + 32);
  v90 = &unk_1F50D89B8;
  v93 = *(a5 + 36);
  if (*(a5 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *(a5 + 40), *(a5 + 48));
  }

  else
  {
    v94 = *(a5 + 40);
  }

  v85 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v86 = *(a6 + 8);
  }

  v87 = *(a6 + 32);
  v85 = &unk_1F50D89B8;
  v88 = *(a6 + 36);
  if (*(a6 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, *(a6 + 40), *(a6 + 48));
  }

  else
  {
    v89 = *(a6 + 40);
  }

  v78 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v79 = *(a7 + 8);
  }

  v80 = *(a7 + 32);
  v78 = &unk_1F50D89D8;
  v81 = *(a7 + 36);
  mediaplatform::Data::Data(&v82, *(a7 + 64), *(a7 + 48), 1);
  v74 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v75 = *(a8 + 8);
  }

  v76 = *(a8 + 32);
  v74 = &unk_1F50D8978;
  v77 = *(a8 + 36);
  v69 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v70 = *(a9 + 8);
  }

  v71 = *(a9 + 32);
  v69 = &unk_1F50D8958;
  v72 = *(a9 + 36);
  v73 = *(a9 + 44);
  v64 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v65 = *(a10 + 8);
  }

  v66 = *(a10 + 32);
  v64 = &unk_1F50D8958;
  v67 = *(a10 + 36);
  v68 = *(a10 + 44);
  v60 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v61 = *(a11 + 8);
  }

  v62 = *(a11 + 32);
  v60 = &unk_1F50D8978;
  v63 = *(a11 + 36);
  v56 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v57 = *(a12 + 8);
  }

  v58 = *(a12 + 32);
  v56 = &unk_1F50D8978;
  v59 = *(a12 + 36);
  v52 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v53 = *(a13 + 8);
  }

  v54 = *(a13 + 32);
  v52 = &unk_1F50D8978;
  v55 = *(a13 + 36);
  v48 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v49 = *(a14 + 8);
  }

  v50 = *(a14 + 32);
  v48 = &unk_1F50D8978;
  v51 = *(a14 + 36);
  v41 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v42 = *(a15 + 8);
  }

  v43 = *(a15 + 32);
  v41 = &unk_1F50D89D8;
  v44 = *(a15 + 36);
  mediaplatform::Data::Data(&v45, *(a15 + 64), *(a15 + 48), 1);
  v36 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v37 = *(a16 + 8);
  }

  v38 = *(a16 + 32);
  v36 = &unk_1F50D8958;
  v39 = *(a16 + 36);
  v40 = *(a16 + 44);
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v33 = *(a17 + 8);
  }

  v34 = *(a17 + 32);
  v35 = *(a17 + 36);
  v168 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v169 = __s;
  }

  v170 = v97;
  v168 = &unk_1F50D89B8;
  v171 = v98;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v99;
  }

  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v91;
  }

  v165 = v92;
  v163 = &unk_1F50D89B8;
  v166 = v93;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v94;
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v86;
  }

  v160 = v87;
  v158 = &unk_1F50D89B8;
  v161 = v88;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v89;
  }

  v151 = &unk_1F50D86E0;
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v79;
  }

  v153 = v80;
  v151 = &unk_1F50D89D8;
  v154 = v81;
  mediaplatform::Data::Data(&v155, __src, __n, 1);
  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v148 = v75;
  }

  v149 = v76;
  v147 = &unk_1F50D8978;
  v150 = v77;
  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v70;
  }

  v144 = v71;
  v142 = &unk_1F50D8958;
  v145 = v72;
  v146 = v73;
  v137 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v65;
  }

  v139 = v66;
  v137 = &unk_1F50D8958;
  v140 = v67;
  v141 = v68;
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v61;
  }

  v135 = v62;
  v133 = &unk_1F50D8978;
  v136 = v63;
  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v57;
  }

  v131 = v58;
  v129 = &unk_1F50D8978;
  v132 = v59;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v53;
  }

  v127 = v54;
  v125 = &unk_1F50D8978;
  v128 = v55;
  v121 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v122 = v49;
  }

  v123 = v50;
  v121 = &unk_1F50D8978;
  v124 = v51;
  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v115 = v42;
  }

  v116 = v43;
  v114 = &unk_1F50D89D8;
  v117 = v44;
  mediaplatform::Data::Data(&v118, v47, v46, 1);
  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v37;
  }

  v111 = v38;
  v109 = &unk_1F50D8958;
  v112 = v39;
  v113 = v40;
  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v33;
  }

  v107 = v34;
  v105 = &unk_1F50D8978;
  v108 = v35;
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v232, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v232 = v164;
  }

  v233 = v165;
  v231 = &unk_1F50D89B8;
  v234 = v166;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v167;
  }

  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v159;
  }

  v228 = v160;
  v226 = &unk_1F50D89B8;
  v229 = v161;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v162;
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v152;
  }

  v221 = v153;
  v219 = &unk_1F50D89D8;
  v222 = v154;
  mediaplatform::Data::Data(&v223, v157, v156, 1);
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v148;
  }

  v217 = v149;
  v215 = &unk_1F50D8978;
  v218 = v150;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v143;
  }

  v212 = v144;
  v210 = &unk_1F50D8958;
  v213 = v145;
  v214 = v146;
  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v138;
  }

  v207 = v139;
  v205 = &unk_1F50D8958;
  v208 = v140;
  v209 = v141;
  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v202 = v134;
  }

  v203 = v135;
  v201 = &unk_1F50D8978;
  v204 = v136;
  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v130;
  }

  v199 = v131;
  v197 = &unk_1F50D8978;
  v200 = v132;
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v126;
  }

  v195 = v127;
  v193 = &unk_1F50D8978;
  v196 = v128;
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v122.__r_.__value_.__l.__data_, v122.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v122;
  }

  v191 = v123;
  v189 = &unk_1F50D8978;
  v192 = v124;
  v182 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v183, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v183 = v115;
  }

  v184 = v116;
  v182 = &unk_1F50D89D8;
  v185 = v117;
  mediaplatform::Data::Data(&v186, v120, v119, 1);
  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v110;
  }

  v179 = v111;
  v177 = &unk_1F50D8958;
  v180 = v112;
  v181 = v113;
  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v106;
  }

  v175 = v107;
  v173 = &unk_1F50D8978;
  v176 = v108;
  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v227.__r_.__value_.__l.__data_, v227.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v227;
  }

  v291 = v228;
  v289 = &unk_1F50D89B8;
  v292 = v229;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, v230.__r_.__value_.__l.__data_, v230.__r_.__value_.__l.__size_);
  }

  else
  {
    v293 = v230;
  }

  v282 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v220.__r_.__value_.__l.__data_, v220.__r_.__value_.__l.__size_);
  }

  else
  {
    v283 = v220;
  }

  v284 = v221;
  v282 = &unk_1F50D89D8;
  v285 = v222;
  mediaplatform::Data::Data(&v286, v225, v224, 1);
  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v216;
  }

  v280 = v217;
  v278 = &unk_1F50D8978;
  v281 = v218;
  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v211;
  }

  v275 = v212;
  v273 = &unk_1F50D8958;
  v276 = v213;
  v277 = v214;
  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v269, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v269 = v206;
  }

  v270 = v207;
  v268 = &unk_1F50D8958;
  v271 = v208;
  v272 = v209;
  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v265, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v265 = v202;
  }

  v266 = v203;
  v264 = &unk_1F50D8978;
  v267 = v204;
  v260 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v261, v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_);
  }

  else
  {
    v261 = v198;
  }

  v262 = v199;
  v260 = &unk_1F50D8978;
  v263 = v200;
  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v194;
  }

  v258 = v195;
  v256 = &unk_1F50D8978;
  v259 = v196;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v190;
  }

  v254 = v191;
  v252 = &unk_1F50D8978;
  v255 = v192;
  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v183.__r_.__value_.__l.__data_, v183.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v183;
  }

  v247 = v184;
  v245 = &unk_1F50D89D8;
  v248 = v185;
  mediaplatform::Data::Data(&v249, v188, v187, 1);
  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v241, v178.__r_.__value_.__l.__data_, v178.__r_.__value_.__l.__size_);
  }

  else
  {
    v241 = v178;
  }

  v242 = v179;
  v240 = &unk_1F50D8958;
  v243 = v180;
  v244 = v181;
  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v237, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v237 = v174;
  }

  v238 = v175;
  v236 = &unk_1F50D8978;
  v239 = v176;
  v338 = &unk_1F50D86E0;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v339, v283.__r_.__value_.__l.__data_, v283.__r_.__value_.__l.__size_);
  }

  else
  {
    v339 = v283;
  }

  v340 = v284;
  v338 = &unk_1F50D89D8;
  v341 = v285;
  mediaplatform::Data::Data(&v342, v288, v287, 1);
  v334 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v335, v279.__r_.__value_.__l.__data_, v279.__r_.__value_.__l.__size_);
  }

  else
  {
    v335 = v279;
  }

  v336 = v280;
  v334 = &unk_1F50D8978;
  v337 = v281;
  v329 = &unk_1F50D86E0;
  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v330, v274.__r_.__value_.__l.__data_, v274.__r_.__value_.__l.__size_);
  }

  else
  {
    v330 = v274;
  }

  v331 = v275;
  v329 = &unk_1F50D8958;
  v332 = v276;
  v333 = v277;
  v324 = &unk_1F50D86E0;
  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v325, v269.__r_.__value_.__l.__data_, v269.__r_.__value_.__l.__size_);
  }

  else
  {
    v325 = v269;
  }

  v326 = v270;
  v324 = &unk_1F50D8958;
  v327 = v271;
  v328 = v272;
  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v321, v265.__r_.__value_.__l.__data_, v265.__r_.__value_.__l.__size_);
  }

  else
  {
    v321 = v265;
  }

  v322 = v266;
  v320 = &unk_1F50D8978;
  v323 = v267;
  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v261.__r_.__value_.__l.__data_, v261.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v261;
  }

  v318 = v262;
  v316 = &unk_1F50D8978;
  v319 = v263;
  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v313, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_);
  }

  else
  {
    v313 = v257;
  }

  v314 = v258;
  v312 = &unk_1F50D8978;
  v315 = v259;
  v308 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v309, v253.__r_.__value_.__l.__data_, v253.__r_.__value_.__l.__size_);
  }

  else
  {
    v309 = v253;
  }

  v310 = v254;
  v308 = &unk_1F50D8978;
  v311 = v255;
  v303 = &unk_1F50D86E0;
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v304, v246.__r_.__value_.__l.__data_, v246.__r_.__value_.__l.__size_);
  }

  else
  {
    v304 = v246;
  }

  v305 = v247;
  v303 = &unk_1F50D89D8;
  v306 = v248;
  mediaplatform::Data::Data(&v307, v251, v250, 1);
  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v241.__r_.__value_.__l.__data_, v241.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v241;
  }

  v300 = v242;
  v298 = &unk_1F50D8958;
  v301 = v243;
  v302 = v244;
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v237.__r_.__value_.__l.__data_, v237.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v237;
  }

  v296 = v238;
  v294 = &unk_1F50D8978;
  v297 = v239;
  mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(a1, &v338, &v334, &v329, &v324, &v320, &v316, &v312, &v308, &v303, &v298, &v294);
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v303);
  v308 = &unk_1F50D86E0;
  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v309.__r_.__value_.__l.__data_);
  }

  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v313.__r_.__value_.__l.__data_);
  }

  v316 = &unk_1F50D86E0;
  if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v317.__r_.__value_.__l.__data_);
  }

  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v321.__r_.__value_.__l.__data_);
  }

  v324 = &unk_1F50D86E0;
  if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v325.__r_.__value_.__l.__data_);
  }

  v329 = &unk_1F50D86E0;
  if (SHIBYTE(v330.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v330.__r_.__value_.__l.__data_);
  }

  v334 = &unk_1F50D86E0;
  if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v335.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v338);
  *(a1 + 592) = &unk_1F50D86E0;
  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 600), v290.__r_.__value_.__l.__data_, v290.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 600) = v290;
  }

  *(a1 + 624) = v291;
  *(a1 + 592) = &unk_1F50D89B8;
  *(a1 + 628) = v292;
  v25 = (a1 + 632);
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v25, v293.__r_.__value_.__l.__data_, v293.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v25->__r_.__value_.__l.__data_ = *&v293.__r_.__value_.__l.__data_;
    *(a1 + 648) = *(&v293.__r_.__value_.__l + 2);
  }

  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v245);
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v260 = &unk_1F50D86E0;
  if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v261.__r_.__value_.__l.__data_);
  }

  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v274.__r_.__value_.__l.__data_);
  }

  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v282);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v289);
  *(a1 + 656) = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 664), v232.__r_.__value_.__l.__data_, v232.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 664) = v232;
  }

  *(a1 + 688) = v233;
  *(a1 + 656) = &unk_1F50D89B8;
  *(a1 + 692) = v234;
  v26 = (a1 + 696);
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v26, v235.__r_.__value_.__l.__data_, v235.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v26->__r_.__value_.__l.__data_ = *&v235.__r_.__value_.__l.__data_;
    *(a1 + 712) = *(&v235.__r_.__value_.__l + 2);
  }

  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v182);
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v219);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v226);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v231);
  *(a1 + 720) = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 728), v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 728) = v169;
  }

  *(a1 + 752) = v170;
  *(a1 + 720) = &unk_1F50D89B8;
  *(a1 + 756) = v171;
  v27 = (a1 + 760);
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v27->__r_.__value_.__l.__data_ = *&v172.__r_.__value_.__l.__data_;
    *(a1 + 776) = *(&v172.__r_.__value_.__l + 2);
  }

  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v114);
  v121 = &unk_1F50D86E0;
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  v137 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v151);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v158);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v163);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v168);
  *(a1 + 784) = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 792), v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 792) = v101;
  }

  *(a1 + 816) = v102;
  *(a1 + 784) = &unk_1F50D89B8;
  *(a1 + 820) = v103;
  v28 = (a1 + 824);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v28, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v28->__r_.__value_.__l.__data_ = *&v104.__r_.__value_.__l.__data_;
    *(a1 + 840) = *(&v104.__r_.__value_.__l + 2);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v41);
  v48 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v56 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v64 = &unk_1F50D86E0;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  v69 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  v74 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v78);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v85);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v90);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v95);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v100);
  *(a1 + 848) = &unk_1F50D86E0;
  v29 = (a1 + 856);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v29, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v30 = *(a2 + 8);
    *(a1 + 872) = *(a2 + 24);
    *&v29->__r_.__value_.__l.__data_ = v30;
  }

  *(a1 + 880) = *(a2 + 32);
  *(a1 + 848) = &unk_1F50D8958;
  v31 = *(a2 + 36);
  *(a1 + 892) = *(a2 + 44);
  *(a1 + 884) = v31;
  return a1;
}

void sub_1D5958570(_Unwind_Exception *a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v1);
  mediaplatform::DatabaseColumnTuple<2ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(v2);
  _Unwind_Resume(a1);
}

void sub_1D5958E44()
{
  *(v1 - 168) = v0;
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  JUMPOUT(0x1D5958A4CLL);
}

void sub_1D5958E60()
{
  STACK[0xAE8] = v0;
  if (SLOBYTE(STACK[0xB07]) < 0)
  {
    operator delete(STACK[0xAF0]);
  }

  JUMPOUT(0x1D5958A84);
}

void sub_1D5958E7C()
{
  STACK[0xC88] = v0;
  if (SLOBYTE(STACK[0xCA7]) < 0)
  {
    operator delete(STACK[0xC90]);
  }

  JUMPOUT(0x1D5958B34);
}

void sub_1D5958E98()
{
  STACK[0x818] = v0;
  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(STACK[0x820]);
  }

  JUMPOUT(0x1D5958B74);
}

void sub_1D5958EB4()
{
  STACK[0x9B8] = v0;
  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  JUMPOUT(0x1D5958C24);
}

void sub_1D5958ED0()
{
  STACK[0x508] = v0;
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  JUMPOUT(0x1D5958C6CLL);
}

void sub_1D5958EEC()
{
  STACK[0x6A8] = v0;
  if (SLOBYTE(STACK[0x6C7]) < 0)
  {
    operator delete(STACK[0x6B0]);
  }

  JUMPOUT(0x1D5958D1CLL);
}

void sub_1D5958F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D5958D6CLL);
}

void sub_1D5958F24()
{
  STACK[0x358] = v0;
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  JUMPOUT(0x1D5958E1CLL);
}

uint64_t mediaplatform::DatabaseColumnTuple<2ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 720);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 656);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 592);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 512);
  *(a1 + 464) = &unk_1F50D86E0;
  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 592);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 512);
  *(a1 + 464) = &unk_1F50D86E0;
  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v72 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v73 = *(a3 + 8);
  }

  v74 = *(a3 + 32);
  v72 = &unk_1F50D8978;
  v75 = *(a3 + 36);
  v67 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v69 = *(a4 + 32);
  v67 = &unk_1F50D8958;
  v70 = *(a4 + 36);
  v71 = *(a4 + 44);
  v62 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v63 = *(a5 + 8);
  }

  v64 = *(a5 + 32);
  v62 = &unk_1F50D8958;
  v65 = *(a5 + 36);
  v66 = *(a5 + 44);
  v58 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v59 = *(a6 + 8);
  }

  v60 = *(a6 + 32);
  v58 = &unk_1F50D8978;
  v61 = *(a6 + 36);
  v54 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v55 = *(a7 + 8);
  }

  v56 = *(a7 + 32);
  v54 = &unk_1F50D8978;
  v57 = *(a7 + 36);
  v50 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v51 = *(a8 + 8);
  }

  v52 = *(a8 + 32);
  v50 = &unk_1F50D8978;
  v53 = *(a8 + 36);
  v46 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v47 = *(a9 + 8);
  }

  v48 = *(a9 + 32);
  v46 = &unk_1F50D8978;
  v49 = *(a9 + 36);
  v39 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v40 = *(a10 + 8);
  }

  v41 = *(a10 + 32);
  v39 = &unk_1F50D89D8;
  v42 = *(a10 + 36);
  mediaplatform::Data::Data(&v43, *(a10 + 64), *(a10 + 48), 1);
  v34 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v35 = *(a11 + 8);
  }

  v36 = *(a11 + 32);
  v34 = &unk_1F50D8958;
  v37 = *(a11 + 36);
  v38 = *(a11 + 44);
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    __p = *(a12 + 8);
  }

  v32 = *(a12 + 32);
  v33 = *(a12 + 36);
  v113 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v114 = __s;
  }

  v115 = v69;
  v113 = &unk_1F50D8958;
  v116 = v70;
  v117 = v71;
  v108 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v109 = v63;
  }

  v110 = v64;
  v108 = &unk_1F50D8958;
  v111 = v65;
  v112 = v66;
  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v59;
  }

  v106 = v60;
  v104 = &unk_1F50D8978;
  v107 = v61;
  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v55;
  }

  v102 = v56;
  v100 = &unk_1F50D8978;
  v103 = v57;
  v96 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v97 = v51;
  }

  v98 = v52;
  v96 = &unk_1F50D8978;
  v99 = v53;
  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v93, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v93 = v47;
  }

  v94 = v48;
  v92 = &unk_1F50D8978;
  v95 = v49;
  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v40;
  }

  v87 = v41;
  v85 = &unk_1F50D89D8;
  v88 = v42;
  mediaplatform::Data::Data(&v89, __src, __n, 1);
  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v35;
  }

  v82 = v36;
  v80 = &unk_1F50D8958;
  v83 = v37;
  v84 = v38;
  v76 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = __p;
  }

  v78 = v32;
  v76 = &unk_1F50D8978;
  v79 = v33;
  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v109;
  }

  v152 = v110;
  v150 = &unk_1F50D8958;
  v153 = v111;
  v154 = v112;
  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v105;
  }

  v148 = v106;
  v146 = &unk_1F50D8978;
  v149 = v107;
  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v101;
  }

  v144 = v102;
  v142 = &unk_1F50D8978;
  v145 = v103;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v97;
  }

  v140 = v98;
  v138 = &unk_1F50D8978;
  v141 = v99;
  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v93;
  }

  v136 = v94;
  v134 = &unk_1F50D8978;
  v137 = v95;
  v127 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v128 = v86;
  }

  v129 = v87;
  v127 = &unk_1F50D89D8;
  v130 = v88;
  mediaplatform::Data::Data(&v131, v91, v90, 1);
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v81;
  }

  v124 = v82;
  v122 = &unk_1F50D8958;
  v125 = v83;
  v126 = v84;
  v118 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v119 = v77;
  }

  v120 = v78;
  v118 = &unk_1F50D8978;
  v121 = v79;
  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v184, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    v184 = v147;
  }

  v185 = v148;
  v183 = &unk_1F50D8978;
  v186 = v149;
  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v180, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    v180 = v143;
  }

  v181 = v144;
  v179 = &unk_1F50D8978;
  v182 = v145;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v139;
  }

  v177 = v140;
  v175 = &unk_1F50D8978;
  v178 = v141;
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v135;
  }

  v173 = v136;
  v171 = &unk_1F50D8978;
  v174 = v137;
  v164 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v165, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
  }

  else
  {
    v165 = v128;
  }

  v166 = v129;
  v164 = &unk_1F50D89D8;
  v167 = v130;
  mediaplatform::Data::Data(&v168, v133, v132, 1);
  v159 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v160, v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    v160 = v123;
  }

  v161 = v124;
  v159 = &unk_1F50D8958;
  v162 = v125;
  v163 = v126;
  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v156, v119.__r_.__value_.__l.__data_, v119.__r_.__value_.__l.__size_);
  }

  else
  {
    v156 = v119;
  }

  v157 = v120;
  v155 = &unk_1F50D8978;
  v158 = v121;
  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v212, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    v212 = v180;
  }

  v213 = v181;
  v211 = &unk_1F50D8978;
  v214 = v182;
  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v208 = v176;
  }

  v209 = v177;
  v207 = &unk_1F50D8978;
  v210 = v178;
  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v204, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v204 = v172;
  }

  v205 = v173;
  v203 = &unk_1F50D8978;
  v206 = v174;
  v196 = &unk_1F50D86E0;
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
  }

  else
  {
    v197 = v165;
  }

  v198 = v166;
  v196 = &unk_1F50D89D8;
  v199 = v167;
  mediaplatform::Data::Data(&v200, v170, v169, 1);
  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, v160.__r_.__value_.__l.__data_, v160.__r_.__value_.__l.__size_);
  }

  else
  {
    v192 = v160;
  }

  v193 = v161;
  v191 = &unk_1F50D8958;
  v194 = v162;
  v195 = v163;
  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, v156.__r_.__value_.__l.__data_, v156.__r_.__value_.__l.__size_);
  }

  else
  {
    v188 = v156;
  }

  v189 = v157;
  v187 = &unk_1F50D8978;
  v190 = v158;
  v235 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v236, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
  }

  else
  {
    v236 = v208;
  }

  v237 = v209;
  v235 = &unk_1F50D8978;
  v238 = v210;
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v232, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v232 = v204;
  }

  v233 = v205;
  v231 = &unk_1F50D8978;
  v234 = v206;
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v197;
  }

  v226 = v198;
  v224 = &unk_1F50D89D8;
  v227 = v199;
  mediaplatform::Data::Data(&v228, v202, v201, 1);
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v192;
  }

  v221 = v193;
  v219 = &unk_1F50D8958;
  v222 = v194;
  v223 = v195;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v188;
  }

  v217 = v189;
  v215 = &unk_1F50D8978;
  v218 = v190;
  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, v232.__r_.__value_.__l.__data_, v232.__r_.__value_.__l.__size_);
  }

  else
  {
    v256 = v232;
  }

  v257 = v233;
  v255 = &unk_1F50D8978;
  v258 = v234;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v249, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
  }

  else
  {
    v249 = v225;
  }

  v250 = v226;
  v248 = &unk_1F50D89D8;
  v251 = v227;
  mediaplatform::Data::Data(&v252, v230, v229, 1);
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v220.__r_.__value_.__l.__data_, v220.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v220;
  }

  v245 = v221;
  v243 = &unk_1F50D8958;
  v246 = v222;
  v247 = v223;
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v240, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    v240 = v216;
  }

  v241 = v217;
  v239 = &unk_1F50D8978;
  v242 = v218;
  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v269, v249.__r_.__value_.__l.__data_, v249.__r_.__value_.__l.__size_);
  }

  else
  {
    v269 = v249;
  }

  v270 = v250;
  v268 = &unk_1F50D89D8;
  v271 = v251;
  mediaplatform::Data::Data(&v272, v254, v253, 1);
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, v244.__r_.__value_.__l.__data_, v244.__r_.__value_.__l.__size_);
  }

  else
  {
    v264 = v244;
  }

  v265 = v245;
  v263 = &unk_1F50D8958;
  v266 = v246;
  v267 = v247;
  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v260, v240.__r_.__value_.__l.__data_, v240.__r_.__value_.__l.__size_);
  }

  else
  {
    v260 = v240;
  }

  v261 = v241;
  v259 = &unk_1F50D8978;
  v262 = v242;
  v279 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v280, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
  }

  else
  {
    v280 = v264;
  }

  v281 = v265;
  v279 = &unk_1F50D8958;
  v282 = v266;
  v283 = v267;
  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, v260.__r_.__value_.__l.__data_, v260.__r_.__value_.__l.__size_);
  }

  else
  {
    v276 = v260;
  }

  v20 = v261;
  v277 = v261;
  v275 = &unk_1F50D8978;
  v21 = v262;
  v278 = v262;
  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v285, v276.__r_.__value_.__l.__data_, v276.__r_.__value_.__l.__size_);
    v20 = v277;
    v21 = v278;
  }

  else
  {
    v285 = v276;
  }

  v286 = v20;
  v284 = &unk_1F50D8978;
  v287 = v21;
  *a1 = &unk_1F50D86E0;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), v285.__r_.__value_.__l.__data_, v285.__r_.__value_.__l.__size_);
    v22 = v287;
    v23 = SHIBYTE(v285.__r_.__value_.__r.__words[2]);
    *(a1 + 32) = v286;
    *a1 = &unk_1F50D8978;
    *(a1 + 36) = v22;
    v284 = &unk_1F50D86E0;
    if (v23 < 0)
    {
      operator delete(v285.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 8) = v285;
    *(a1 + 32) = v20;
    *a1 = &unk_1F50D8978;
    *(a1 + 36) = v21;
    v284 = &unk_1F50D86E0;
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), v280.__r_.__value_.__l.__data_, v280.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 56) = v280;
  }

  *(a1 + 80) = v281;
  *(a1 + 48) = &unk_1F50D8958;
  *(a1 + 84) = v282;
  *(a1 + 92) = v283;
  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v276.__r_.__value_.__l.__data_);
  }

  v279 = &unk_1F50D86E0;
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), v269.__r_.__value_.__l.__data_, v269.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 104) = v269;
  }

  *(a1 + 128) = v270;
  *(a1 + 96) = &unk_1F50D89D8;
  *(a1 + 132) = v271;
  mediaplatform::Data::Data((a1 + 136), v274, v273, 1);
  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v268);
  *(a1 + 176) = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 184), v256.__r_.__value_.__l.__data_, v256.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 184) = v256;
  }

  *(a1 + 208) = v257;
  *(a1 + 176) = &unk_1F50D8978;
  *(a1 + 212) = v258;
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v248);
  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v256.__r_.__value_.__l.__data_);
  }

  *(a1 + 224) = &unk_1F50D86E0;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 232), v236.__r_.__value_.__l.__data_, v236.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 232) = v236;
  }

  *(a1 + 256) = v237;
  *(a1 + 224) = &unk_1F50D8978;
  *(a1 + 260) = v238;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v224);
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
  }

  v235 = &unk_1F50D86E0;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  *(a1 + 272) = &unk_1F50D86E0;
  v24 = (a1 + 280);
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v24, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v24->__r_.__value_.__l.__data_ = *&v212.__r_.__value_.__l.__data_;
    *(a1 + 296) = *(&v212.__r_.__value_.__l + 2);
  }

  *(a1 + 304) = v213;
  *(a1 + 272) = &unk_1F50D8978;
  *(a1 + 308) = v214;
  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v196);
  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  *(a1 + 320) = &unk_1F50D86E0;
  v25 = (a1 + 328);
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v25, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v25->__r_.__value_.__l.__data_ = *&v184.__r_.__value_.__l.__data_;
    *(a1 + 344) = *(&v184.__r_.__value_.__l + 2);
  }

  *(a1 + 352) = v185;
  *(a1 + 320) = &unk_1F50D8978;
  *(a1 + 356) = v186;
  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  v159 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v164);
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  *(a1 + 368) = &unk_1F50D86E0;
  v26 = (a1 + 376);
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v26, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v26->__r_.__value_.__l.__data_ = *&v151.__r_.__value_.__l.__data_;
    *(a1 + 392) = *(&v151.__r_.__value_.__l + 2);
  }

  *(a1 + 400) = v152;
  *(a1 + 368) = &unk_1F50D8958;
  *(a1 + 404) = v153;
  *(a1 + 412) = v154;
  v118 = &unk_1F50D86E0;
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v127);
  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  *(a1 + 416) = &unk_1F50D86E0;
  v27 = (a1 + 424);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v27->__r_.__value_.__l.__data_ = *&v114.__r_.__value_.__l.__data_;
    *(a1 + 440) = *(&v114.__r_.__value_.__l + 2);
  }

  *(a1 + 448) = v115;
  *(a1 + 416) = &unk_1F50D8958;
  *(a1 + 452) = v116;
  *(a1 + 460) = v117;
  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v85);
  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v96 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  v108 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  v113 = &unk_1F50D86E0;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  *(a1 + 464) = &unk_1F50D86E0;
  v28 = (a1 + 472);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v28, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v28->__r_.__value_.__l.__data_ = *&v73.__r_.__value_.__l.__data_;
    *(a1 + 488) = *(&v73.__r_.__value_.__l + 2);
  }

  *(a1 + 496) = v74;
  *(a1 + 464) = &unk_1F50D8978;
  *(a1 + 500) = v75;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v34 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v39);
  v46 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v58 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v67 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v72 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  *(a1 + 512) = &unk_1F50D86E0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 520), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v29 = *(a2 + 8);
    *(a1 + 536) = *(a2 + 24);
    *(a1 + 520) = v29;
  }

  *(a1 + 544) = *(a2 + 32);
  *(a1 + 512) = &unk_1F50D89D8;
  *(a1 + 548) = *(a2 + 36);
  mediaplatform::Data::Data((a1 + 552), *(a2 + 64), *(a2 + 48), 1);
  return a1;
}

void sub_1D595BFC8()
{
  STACK[0xBD8] = v0;
  if (SLOBYTE(STACK[0xBF7]) < 0)
  {
    operator delete(STACK[0xBE0]);
  }

  JUMPOUT(0x1D595BB98);
}

void sub_1D595BFE4()
{
  STACK[0xAF8] = v0;
  if (SLOBYTE(STACK[0xB17]) < 0)
  {
    operator delete(STACK[0xB00]);
  }

  JUMPOUT(0x1D595BBD0);
}

void sub_1D595C000()
{
  STACK[0x9E8] = v0;
  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  JUMPOUT(0x1D595BC20);
}

void sub_1D595C01C()
{
  STACK[0x8A8] = v0;
  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(STACK[0x8B0]);
  }

  JUMPOUT(0x1D595BC88);
}

void sub_1D595C038()
{
  STACK[0x738] = v0;
  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(STACK[0x740]);
  }

  JUMPOUT(0x1D595BD08);
}

void sub_1D595C054()
{
  STACK[0x598] = v0;
  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  JUMPOUT(0x1D595BDA0);
}

void sub_1D595C070()
{
  STACK[0x3C8] = v0;
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  JUMPOUT(0x1D595BE50);
}

void sub_1D595C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D595BF18);
}

uint64_t mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 464) = &unk_1F50D86E0;
  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<8ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 368) = &unk_1F50D86E0;
  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  *(a1 + 320) = &unk_1F50D86E0;
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  *(a1 + 272) = &unk_1F50D86E0;
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  *(a1 + 224) = &unk_1F50D86E0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 96);
  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<11ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 224) = &unk_1F50D86E0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 96);
  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 320) = &unk_1F50D86E0;
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  *(a1 + 272) = &unk_1F50D86E0;
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  *(a1 + 224) = &unk_1F50D86E0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 96);
  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 272) = &unk_1F50D86E0;
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  *(a1 + 224) = &unk_1F50D86E0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 96);
  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 96);
  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::ItemArtistTable::persistentIDColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1007) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 123), *(this + 124));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 984);
    *(a2 + 24) = *(this + 125);
  }

  *(a2 + 32) = *(this + 252);
  *(a2 + 44) = *(this + 255);
  *(a2 + 36) = *(this + 1012);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemArtistTable::nameColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1055) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 129), *(this + 130));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1032);
    *(a2 + 24) = *(this + 131);
  }

  *(a2 + 32) = *(this + 264);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1060);
  if (*(this + 1087) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 133), *(this + 134));
  }

  else
  {
    *(a2 + 40) = *(this + 1064);
    *(a2 + 56) = *(this + 135);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D595C828(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemArtistTable::sortNameColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1119) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 137), *(this + 138));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1096);
    *(a2 + 24) = *(this + 139);
  }

  *(a2 + 32) = *(this + 280);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1124);
  if (*(this + 1151) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 141), *(this + 142));
  }

  else
  {
    *(a2 + 40) = *(this + 1128);
    *(a2 + 56) = *(this + 143);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D595C940(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemArtistTable::seriesNameColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1183) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 145), *(this + 146));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1160);
    *(a2 + 24) = *(this + 147);
  }

  *(a2 + 32) = *(this + 296);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1188);
  if (*(this + 1215) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 149), *(this + 150));
  }

  else
  {
    *(a2 + 40) = *(this + 1192);
    *(a2 + 56) = *(this + 151);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D595CA58(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemArtistTable::sortSeriesNameColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1247) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 153), *(this + 154));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1224);
    *(a2 + 24) = *(this + 155);
  }

  *(a2 + 32) = *(this + 312);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1252);
  if (*(this + 1279) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 157), *(this + 158));
  }

  else
  {
    *(a2 + 40) = *(this + 1256);
    *(a2 + 56) = *(this + 159);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D595CB70(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

mediaplatform::Data *mlcore::ItemArtistTable::groupingKeyColumn@<X0>(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1311) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 161), *(this + 162));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1288);
    *(a2 + 24) = *(this + 163);
  }

  *(a2 + 32) = *(this + 328);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 1316);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 168), *(this + 166), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D595CC6C(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemArtistTable::cloudStatusColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1391) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 171), *(this + 172));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1368);
    *(a2 + 24) = *(this + 173);
  }

  *(a2 + 32) = *(this + 348);
  *(a2 + 36) = *(this + 1396);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemArtistTable::storeIDColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1439) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 177), *(this + 178));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1416);
    *(a2 + 24) = *(this + 179);
  }

  *(a2 + 32) = *(this + 360);
  *(a2 + 44) = *(this + 363);
  *(a2 + 36) = *(this + 1444);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemArtistTable::representativeItemPersistentIDColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1487) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 183), *(this + 184));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1464);
    *(a2 + 24) = *(this + 185);
  }

  *(a2 + 32) = *(this + 372);
  *(a2 + 44) = *(this + 375);
  *(a2 + 36) = *(this + 1492);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemArtistTable::keepLocalColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1535) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 189), *(this + 190));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1512);
    *(a2 + 24) = *(this + 191);
  }

  *(a2 + 32) = *(this + 384);
  *(a2 + 36) = *(this + 1540);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemArtistTable::keepLocalStatusColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1583) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 195), *(this + 196));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1560);
    *(a2 + 24) = *(this + 197);
  }

  *(a2 + 32) = *(this + 396);
  *(a2 + 36) = *(this + 1588);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemArtistTable::keepLocalStatusReasonColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1631) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 201), *(this + 202));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1608);
    *(a2 + 24) = *(this + 203);
  }

  *(a2 + 32) = *(this + 408);
  *(a2 + 36) = *(this + 1636);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ItemArtistTable::keepLocalConstraintsColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1679) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 207), *(this + 208));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1656);
    *(a2 + 24) = *(this + 209);
  }

  *(a2 + 32) = *(this + 420);
  *(a2 + 36) = *(this + 1684);
  *a2 = &unk_1F50D7AE0;
}

mediaplatform::Data *mlcore::ItemArtistTable::appDataColumn@<X0>(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1727) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 213), *(this + 214));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1704);
    *(a2 + 24) = *(this + 215);
  }

  *(a2 + 32) = *(this + 432);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 1732);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 220), *(this + 218), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D595D1D8(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemArtistTable::syncIDColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1807) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 223), *(this + 224));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1784);
    *(a2 + 24) = *(this + 225);
  }

  *(a2 + 32) = *(this + 452);
  *(a2 + 44) = *(this + 455);
  *(a2 + 36) = *(this + 1812);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ItemArtistTable::classicalExperienceAvailableColumn(mlcore::ItemArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1855) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 229), *(this + 230));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1832);
    *(a2 + 24) = *(this + 231);
  }

  *(a2 + 32) = *(this + 464);
  *(a2 + 36) = *(this + 1860);
  *a2 = &unk_1F50D7AE0;
}

std::vector<std::string> *mlcore::LanguageResources::LanguageResources(std::vector<std::string> *this, const mediaplatform::ContentBundle *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "");
  mediaplatform::FilePath::FilePath(&__p, &v20);
  mlcore::LocalizedSectionsInfo::LocalizedSectionsInfo(this, &__p);
  __p.__r_.__value_.__r.__words[0] = &unk_1F50DE578;
  __str.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, "");
  mediaplatform::FilePath::FilePath(&__p, &v20);
  mlcore::LocalizedSortingDetails::LocalizedSortingDetails(&this[3], &__p);
  __p.__r_.__value_.__r.__words[0] = &unk_1F50DE578;
  __str.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  this[4].__begin_ = 0;
  this[4].__end_ = 0;
  this[4].__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  mediaplatform::FilePath::FilePath(&v20, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *(a2 + 12);
  if (v4 != *(a2 + 13))
  {
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      __str.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&__str.__r_.__value_.__l.__data_ = v5;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&v18, size + 6);
    if (SHIBYTE(v18.__end_cap_.__value_) >= 0)
    {
      begin = &v18;
    }

    else
    {
      begin = v18.__begin_;
    }

    if (size)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      memmove(begin, p_str, size);
    }

    strcpy(begin + size, ".lproj");
    mediaplatform::FilePath::operator+(a2 + 64, &v18, &__p);
    mediaplatform::File::File(&v19, &__p);
  }

  if (v20.__r_.__value_.__r.__words[2] == v20.__r_.__value_.__l.__size_)
  {
    LODWORD(v18.__begin_) = 2;
    std::string::basic_string[abi:ne200100]<0>(&__str, "Could not find preferred localization bundle");
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(&__p, &v18, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(exception, &__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Sections.plist");
  mediaplatform::FilePath::operator+(&v20, &__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mlcore::LocalizedSectionsInfo::LocalizedSectionsInfo(&__p, &__str);
  if (this->__begin_)
  {
    std::vector<mlcore::LocalizedSectionHeader>::__base_destruct_at_end[abi:ne200100](this, this->__begin_);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }

  *this = __p;
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__vdeallocate(this + 1);
  *&this[1].__begin_ = v13;
  this[1].__end_cap_.__value_ = v14;
  v14 = 0;
  v13 = 0uLL;
  if (SHIBYTE(this[2].__end_cap_.__value_) < 0)
  {
    operator delete(this[2].__begin_);
  }

  *&this[2].__begin_ = v15;
  this[2].__end_cap_.__value_ = v16;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v18.__begin_ = &v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18.__begin_ = &__p;
  std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](&v18);
  std::string::basic_string[abi:ne200100]<0>(&v18, "SortingDetails.plist");
  v11 = &this[3];
  mediaplatform::FilePath::operator+(&v20, &v18, &__p);
  if (SHIBYTE(v18.__end_cap_.__value_) < 0)
  {
    operator delete(v18.__begin_);
  }

  mlcore::LocalizedSortingDetails::LocalizedSortingDetails(&v18, &__p);
  if (*v11)
  {
    std::vector<std::string>::clear[abi:ne200100](v11);
    operator delete(*v11);
    *v11 = 0;
    this[3].__end_ = 0;
    this[3].__end_cap_.__value_ = 0;
  }

  this[3] = v18;
  memset(&v18, 0, sizeof(v18));
  v19 = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  __p.__r_.__value_.__r.__words[0] = &unk_1F50DE578;
  v18.__begin_ = &__p.__r_.__value_.__r.__words[1];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  __str.__r_.__value_.__r.__words[0] = &unk_1F50DE578;
  __p.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__l.__size_;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v20.__r_.__value_.__r.__words[0] = &unk_1F50DE578;
  __p.__r_.__value_.__r.__words[0] = &v20.__r_.__value_.__l.__size_;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return this;
}

void sub_1D595D914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, std::exception_vtbl *a11, void **a12, std::exception a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(&a13);
  *(v38 - 128) = &unk_1F50DE578;
  a13.__vftable = (v38 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (*(a12 + 119) < 0)
  {
    operator delete(*a10);
  }

  a13.__vftable = a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  mlcore::LocalizedSectionsInfo::~LocalizedSectionsInfo(a12);
  _Unwind_Resume(a1);
}