void mlcore::AnyInPredicate<std::string>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D7240;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA6EDD40);
}

void *mlcore::AnyInPredicate<std::string>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D7240;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D58F0BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<double>::matches(void *a1, void *a2)
{
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    v6 = mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::valueForProperty(*a2 + 8, *v2);
    v7 = a1[5] + 16;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v6 == *(v7 + 16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlcore::AnyInPredicate<double>::description@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    v6 = 1;
    do
    {
      v7 = *v4;
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", ", 2);
      }

      (*(*v7 + 40))(__p, v7);
      if ((v15 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v15 & 0x80u) == 0)
      {
        v9 = v15;
      }

      else
      {
        v9 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v8, v9);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 0;
      ++v4;
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " in [", 5);
  v10 = (a1[5] + 16);
  for (i = 1; ; i = 0)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    v12 = v10[2];
    if ((i & 1) == 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", ", 2);
    }

    MEMORY[0x1DA6EDAE0](&v16, v12);
  }

  LOBYTE(__p[0]) = 93;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, __p, 1);
  std::ostringstream::str[abi:ne200100](a2, &v16);
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v20);
}

void mlcore::AnyInPredicate<double>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D71E8;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA6EDD40);
}

void *mlcore::AnyInPredicate<double>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D71E8;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D58F1298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<int>::matches(void *a1, void *a2)
{
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    v6 = mlcore::PropertyCacheBase<int,double,std::string,mediaplatform::Data>::valueForProperty(*a2 + 8, *v2);
    v7 = a1[5] + 16;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v6 == *(v7 + 16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlcore::AnyInPredicate<int>::description@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    v6 = 1;
    do
    {
      v7 = *v4;
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", ", 2);
      }

      (*(*v7 + 40))(__p, v7);
      if ((v15 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v15 & 0x80u) == 0)
      {
        v9 = v15;
      }

      else
      {
        v9 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v8, v9);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 0;
      ++v4;
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " in [", 5);
  v10 = a1[5] + 16;
  for (i = 1; ; i = 0)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    v12 = *(v10 + 16);
    if ((i & 1) == 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", ", 2);
    }

    MEMORY[0x1DA6EDAF0](&v16, v12);
  }

  LOBYTE(__p[0]) = 93;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, __p, 1);
  std::ostringstream::str[abi:ne200100](a2, &v16);
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v20);
}

void mlcore::AnyInPredicate<int>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D7190;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA6EDD40);
}

void *mlcore::AnyInPredicate<int>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D7190;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D58F1954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<mediaplatform::Data>::matches(void *a1, void *a2)
{
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    mlcore::PropertyCacheBase<mediaplatform::Data>::valueForProperty(v13, *a2 + 8, *v2);
    v6 = a1[5] + 16;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      mediaplatform::Data::Data(&v9, *(v6 + 40), *(v6 + 24), 1);
      v7 = __n == v13[1] && memcmp(__s1, __s2, __n) == 0;
      v9 = &unk_1F50DD860;
      if (v12 == 1 && __s2)
      {
        MEMORY[0x1DA6EDD20](__s2, 0x1000C8077774924);
      }

      if (v7)
      {
        v13[0] = &unk_1F50DD860;
        if (v15 == 1)
        {
          if (__s1)
          {
            MEMORY[0x1DA6EDD20](__s1, 0x1000C8077774924);
          }
        }

        return 1;
      }
    }

    v13[0] = &unk_1F50DD860;
    if (v15 == 1 && __s1)
    {
      MEMORY[0x1DA6EDD20](__s1, 0x1000C8077774924);
    }
  }

  return 0;
}

void sub_1D58F1B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  mediaplatform::Data::~Data(va);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<mediaplatform::Data>::description@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    v6 = 1;
    do
    {
      v7 = *v4;
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, ", ", 2);
      }

      (*(*v7 + 40))(__p, v7);
      if ((v17 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v9 = v17;
      }

      else
      {
        v9 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v8, v9);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 0;
      ++v4;
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " in [", 5);
  v10 = *(a1[5] + 16);
  if (v10)
  {
    v11 = 1;
    do
    {
      mediaplatform::Data::Data(__p, v10[5], v10[3], 1);
      if ((v11 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, ", ", 2);
      }

      mediaplatform::Base16Representation(__p, &v15);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v15;
      }

      else
      {
        v12 = v15.__r_.__value_.__r.__words[0];
      }

      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v15.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v12, size);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      __p[0] = &unk_1F50DD860;
      if (v19 == 1 && v18)
      {
        MEMORY[0x1DA6EDD20](v18, 0x1000C8077774924);
      }

      v11 = 0;
      v10 = *v10;
    }

    while (v10);
  }

  LOBYTE(__p[0]) = 93;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, __p, 1);
  std::ostringstream::str[abi:ne200100](a2, &v20);
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

void sub_1D58F1ED8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D58F1EC8);
}

void mlcore::AnyInPredicate<mediaplatform::Data>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D7298;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1DA6EDD40);
}

void *mlcore::AnyInPredicate<mediaplatform::Data>::~AnyInPredicate(void *a1)
{
  *a1 = &unk_1F50D7298;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *a1 = &unk_1F50D4A80;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void mlcore::AnyInPredicate<long long>::AnyInPredicate(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  std::unordered_set<long long>::unordered_set<std::__wrap_iter<long long const*>>(v3, *a3, a3[1]);
  mlcore::AnyInPredicate<long long>::AnyInPredicate();
}

{
  std::unordered_set<long long>::unordered_set<std::__wrap_iter<long long const*>>(v3, *a3, a3[1]);
  mlcore::AnyInPredicate<long long>::AnyInPredicate();
}

void sub_1D58F2054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<long long>::unordered_set<std::__wrap_iter<long long const*>>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(a1, *v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void mlcore::AnyInPredicate<long long>::AnyInPredicate(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = (v3 - *a2) >> 3;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<long long> * const*>,std::__wrap_iter<mlcore::ModelProperty<long long> * const*>>(&v7, v4, v3, v5);
  *a1 = &unk_1F50D4A80;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v6 = v7;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 1), v7, v8, (v8 - v7) >> 3);
  if (v6)
  {
    operator delete(v6);
  }

  *a1 = &unk_1F50D7138;
  mlcore::SharedObject<std::unordered_set<long long>,int>::create<std::unordered_set<long long> const&>();
}

void sub_1D58F21B0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<long long> * const*>,std::__wrap_iter<mlcore::ModelProperty<long long> * const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D58F2238(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::SharedObject<std::unordered_set<long long>,int>::create<std::unordered_set<long long> const&>()
{
  v0 = mlcore::SharedObject<std::unordered_set<long long>,int>::_mutex();
  std::mutex::lock(v0);
  {
    {
      operator new();
    }
  }

  ++*mlcore::SharedObject<std::unordered_set<long long>,int>::_nextToken(void)::token;
  operator new();
}

void sub_1D58F27F0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_1D58F281C()
{
  v1 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v0);
  MEMORY[0x1DA6EDD40](v1, 0x10A0C408EF24B1CLL);
  JUMPOUT(0x1D58F283CLL);
}

uint64_t mlcore::SharedObject<std::unordered_set<long long>,int>::_mutex()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<long long>,int>::_mutex(void)::mutex;
}

uint64_t mlcore::SharedObject<std::unordered_set<long long>,int>::_objects()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<long long>,int>::_objects(void)::objects;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void mlcore::SharedObject<std::unordered_set<long long>,int>::create<std::unordered_set<long long> const&>(std::unordered_set<long long> const&)::{lambda(std::unordered_set<long long>*)#1}::operator()(int *a1, uint64_t a2)
{
  v4 = mlcore::SharedObject<std::unordered_set<long long>,int>::_mutex();
  std::mutex::lock(v4);
  v5 = mlcore::SharedObject<std::unordered_set<long long>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v5, *a1);
  if (a2)
  {
    v6 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(a2);
    MEMORY[0x1DA6EDD40](v6, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v4);
}

void std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(void *a1, int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::find<int>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,void *>>>::operator()[abi:ne200100](1, v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::unordered_set<long long> *,mlcore::SharedObject<std::unordered_set<long long>,int> mlcore::SharedObject<std::unordered_set<long long>,int>::create<std::unordered_set<long long> const&>(std::unordered_set<long long> const&)::{lambda(std::unordered_set<long long> *)#1},std::allocator<std::unordered_set<long long>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12SharedObjectINSt3__113unordered_setIxNS1_4hashIxEENS1_8equal_toIxEENS1_9allocatorIxEEEEiE6createIJRKS9_EEESA_DpOT_EUlPS9_E_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::unordered_set<long long> *,mlcore::SharedObject<std::unordered_set<long long>,int> mlcore::SharedObject<std::unordered_set<long long>,int>::create<std::unordered_set<long long> const&>(std::unordered_set<long long> const&)::{lambda(std::unordered_set<long long> *)#1},std::allocator<std::unordered_set<long long>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = mlcore::SharedObject<std::unordered_set<long long>,int>::_mutex();
  std::mutex::lock(v3);
  v4 = mlcore::SharedObject<std::unordered_set<long long>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v4, *(a1 + 32));
  if (v2)
  {
    v5 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v2);
    MEMORY[0x1DA6EDD40](v5, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v3);
}

void std::__shared_ptr_pointer<std::unordered_set<long long> *,mlcore::SharedObject<std::unordered_set<long long>,int> mlcore::SharedObject<std::unordered_set<long long>,int>::create<std::unordered_set<long long> const&>(std::unordered_set<long long> const&)::{lambda(std::unordered_set<long long> *)#1},std::allocator<std::unordered_set<long long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1D58F3014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *mlcore::AnyInPredicateBase::AnyInPredicateBase(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F50D4A80;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 3);
  return a1;
}

uint64_t mlcore::AnyInPredicate<long long>::AnyInPredicate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<long long> * const*>,std::__wrap_iter<mlcore::ModelProperty<long long> * const*>>(&v11, v6, v5, v7);
  *a1 = &unk_1F50D4A80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v8 = v11;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(a1 + 8, v11, v12, (v12 - v11) >> 3);
  if (v8)
  {
    operator delete(v8);
  }

  *a1 = &unk_1F50D7138;
  *(a1 + 32) = *a3;
  v9 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1D58F316C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AnyInPredicate<std::string>::AnyInPredicate(uint64_t a1, uint64_t a2, void **a3)
{
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string const*>>(&__p, *a3, a3[1]);
  mlcore::AnyInPredicate<std::string>::AnyInPredicate();
}

{
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string const*>>(&__p, *a3, a3[1]);
  mlcore::AnyInPredicate<std::string>::AnyInPredicate();
}

void sub_1D58F31FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string const*>>(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, v5);
      v5 += 3;
    }

    while (v5 != a3);
  }

  return a1;
}

void mlcore::AnyInPredicate<std::string>::AnyInPredicate(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = (v3 - *a2) >> 3;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<std::string> * const*>,std::__wrap_iter<mlcore::ModelProperty<std::string> * const*>>(&v7, v4, v3, v5);
  *a1 = &unk_1F50D4A80;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v6 = v7;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 1), v7, v8, (v8 - v7) >> 3);
  if (v6)
  {
    operator delete(v6);
  }

  *a1 = &unk_1F50D7240;
  mlcore::SharedObject<std::unordered_set<std::string>,int>::create<std::unordered_set<std::string> const&>();
}

void sub_1D58F3358(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<std::string> * const*>,std::__wrap_iter<mlcore::ModelProperty<std::string> * const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D58F33E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::SharedObject<std::unordered_set<std::string>,int>::create<std::unordered_set<std::string> const&>()
{
  v0 = mlcore::SharedObject<std::unordered_set<std::string>,int>::_mutex();
  std::mutex::lock(v0);
  {
    {
      operator new();
    }
  }

  ++*mlcore::SharedObject<std::unordered_set<std::string>,int>::_nextToken(void)::token;
  operator new();
}

uint64_t mlcore::SharedObject<std::unordered_set<std::string>,int>::_mutex()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<std::string>,int>::_mutex(void)::mutex;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2);
  }

  return a1;
}

uint64_t mlcore::SharedObject<std::unordered_set<std::string>,int>::_objects()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<std::string>,int>::_objects(void)::objects;
}

void mlcore::SharedObject<std::unordered_set<std::string>,int>::create<std::unordered_set<std::string> const&>(std::unordered_set<std::string> const&)::{lambda(std::unordered_set<std::string>*)#1}::operator()(int *a1, uint64_t a2)
{
  v4 = mlcore::SharedObject<std::unordered_set<std::string>,int>::_mutex();
  std::mutex::lock(v4);
  v5 = mlcore::SharedObject<std::unordered_set<std::string>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v5, *a1);
  if (a2)
  {
    v6 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a2);
    MEMORY[0x1DA6EDD40](v6, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v4);
}

uint64_t std::__shared_ptr_pointer<std::unordered_set<std::string> *,mlcore::SharedObject<std::unordered_set<std::string>,int> mlcore::SharedObject<std::unordered_set<std::string>,int>::create<std::unordered_set<std::string> const&>(std::unordered_set<std::string> const&)::{lambda(std::unordered_set<std::string> *)#1},std::allocator<std::unordered_set<std::string>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12SharedObjectINSt3__113unordered_setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4hashIS8_EENS1_8equal_toIS8_EENS6_IS8_EEEEiE6createIJRKSE_EEESF_DpOT_EUlPSE_E_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::unordered_set<std::string> *,mlcore::SharedObject<std::unordered_set<std::string>,int> mlcore::SharedObject<std::unordered_set<std::string>,int>::create<std::unordered_set<std::string> const&>(std::unordered_set<std::string> const&)::{lambda(std::unordered_set<std::string> *)#1},std::allocator<std::unordered_set<std::string>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = mlcore::SharedObject<std::unordered_set<std::string>,int>::_mutex();
  std::mutex::lock(v3);
  v4 = mlcore::SharedObject<std::unordered_set<std::string>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v4, *(a1 + 32));
  if (v2)
  {
    v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2);
    MEMORY[0x1DA6EDD40](v5, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v3);
}

void std::__shared_ptr_pointer<std::unordered_set<std::string> *,mlcore::SharedObject<std::unordered_set<std::string>,int> mlcore::SharedObject<std::unordered_set<std::string>,int>::create<std::unordered_set<std::string> const&>(std::unordered_set<std::string> const&)::{lambda(std::unordered_set<std::string> *)#1},std::allocator<std::unordered_set<std::string>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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
    operator new();
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

  result = std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
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

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1D58F40B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<std::string>::AnyInPredicate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<std::string> * const*>,std::__wrap_iter<mlcore::ModelProperty<std::string> * const*>>(&v11, v6, v5, v7);
  *a1 = &unk_1F50D4A80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v8 = v11;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(a1 + 8, v11, v12, (v12 - v11) >> 3);
  if (v8)
  {
    operator delete(v8);
  }

  *a1 = &unk_1F50D7240;
  *(a1 + 32) = *a3;
  v9 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1D58F41AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AnyInPredicate<double>::AnyInPredicate(uint64_t a1, uint64_t a2, double **a3)
{
  std::unordered_set<double>::unordered_set<std::__wrap_iter<double const*>>(v3, *a3, a3[1]);
  mlcore::AnyInPredicate<double>::AnyInPredicate();
}

{
  std::unordered_set<double>::unordered_set<std::__wrap_iter<double const*>>(v3, *a3, a3[1]);
  mlcore::AnyInPredicate<double>::AnyInPredicate();
}

void sub_1D58F422C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<double>::unordered_set<std::__wrap_iter<double const*>>(uint64_t a1, double *a2, double *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<double,std::hash<double>,std::equal_to<double>,std::allocator<double>>::__emplace_unique_key_args<double,double const&>(a1, *v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void mlcore::AnyInPredicate<double>::AnyInPredicate(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = (v3 - *a2) >> 3;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<double> * const*>,std::__wrap_iter<mlcore::ModelProperty<double> * const*>>(&v7, v4, v3, v5);
  *a1 = &unk_1F50D4A80;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v6 = v7;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 1), v7, v8, (v8 - v7) >> 3);
  if (v6)
  {
    operator delete(v6);
  }

  *a1 = &unk_1F50D71E8;
  mlcore::SharedObject<std::unordered_set<double>,int>::create<std::unordered_set<double> const&>();
}

void sub_1D58F4388(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<double> * const*>,std::__wrap_iter<mlcore::ModelProperty<double> * const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D58F4410(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::SharedObject<std::unordered_set<double>,int>::create<std::unordered_set<double> const&>()
{
  v0 = mlcore::SharedObject<std::unordered_set<double>,int>::_mutex();
  std::mutex::lock(v0);
  {
    {
      operator new();
    }
  }

  ++*mlcore::SharedObject<std::unordered_set<double>,int>::_nextToken(void)::token;
  operator new();
}

void sub_1D58F49C8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_1D58F49F4()
{
  v1 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v0);
  MEMORY[0x1DA6EDD40](v1, 0x10A0C408EF24B1CLL);
  JUMPOUT(0x1D58F4A14);
}

uint64_t mlcore::SharedObject<std::unordered_set<double>,int>::_mutex()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<double>,int>::_mutex(void)::mutex;
}

uint64_t mlcore::SharedObject<std::unordered_set<double>,int>::_objects()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<double>,int>::_objects(void)::objects;
}

void mlcore::SharedObject<std::unordered_set<double>,int>::create<std::unordered_set<double> const&>(std::unordered_set<double> const&)::{lambda(std::unordered_set<double>*)#1}::operator()(int *a1, uint64_t a2)
{
  v4 = mlcore::SharedObject<std::unordered_set<double>,int>::_mutex();
  std::mutex::lock(v4);
  v5 = mlcore::SharedObject<std::unordered_set<double>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v5, *a1);
  if (a2)
  {
    v6 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(a2);
    MEMORY[0x1DA6EDD40](v6, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v4);
}

uint64_t std::__shared_ptr_pointer<std::unordered_set<double> *,mlcore::SharedObject<std::unordered_set<double>,int> mlcore::SharedObject<std::unordered_set<double>,int>::create<std::unordered_set<double> const&>(std::unordered_set<double> const&)::{lambda(std::unordered_set<double> *)#1},std::allocator<std::unordered_set<double>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12SharedObjectINSt3__113unordered_setIdNS1_4hashIdEENS1_8equal_toIdEENS1_9allocatorIdEEEEiE6createIJRKS9_EEESA_DpOT_EUlPS9_E_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::unordered_set<double> *,mlcore::SharedObject<std::unordered_set<double>,int> mlcore::SharedObject<std::unordered_set<double>,int>::create<std::unordered_set<double> const&>(std::unordered_set<double> const&)::{lambda(std::unordered_set<double> *)#1},std::allocator<std::unordered_set<double>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = mlcore::SharedObject<std::unordered_set<double>,int>::_mutex();
  std::mutex::lock(v3);
  v4 = mlcore::SharedObject<std::unordered_set<double>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v4, *(a1 + 32));
  if (v2)
  {
    v5 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v2);
    MEMORY[0x1DA6EDD40](v5, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v3);
}

void std::__shared_ptr_pointer<std::unordered_set<double> *,mlcore::SharedObject<std::unordered_set<double>,int> mlcore::SharedObject<std::unordered_set<double>,int>::create<std::unordered_set<double> const&>(std::unordered_set<double> const&)::{lambda(std::unordered_set<double> *)#1},std::allocator<std::unordered_set<double>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void *std::__hash_table<double,std::hash<double>,std::equal_to<double>,std::allocator<double>>::__emplace_unique_key_args<double,double const&>(void *result, double a2)
{
  if (a2 == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a2;
  }

  v3 = result[1];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (*&v2 >= *&v3)
    {
      *&v5 = *&v2 % *&v3;
    }
  }

  else
  {
    *&v5 = (*&v3 - 1) & *&v2;
  }

  v6 = *(*result + 8 * *&v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v8 = *(v7 + 1);
    if (v8 == *&v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != *&v5)
    {
      goto LABEL_21;
    }

LABEL_20:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D58F4F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<double>::AnyInPredicate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<double> * const*>,std::__wrap_iter<mlcore::ModelProperty<double> * const*>>(&v11, v6, v5, v7);
  *a1 = &unk_1F50D4A80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v8 = v11;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(a1 + 8, v11, v12, (v12 - v11) >> 3);
  if (v8)
  {
    operator delete(v8);
  }

  *a1 = &unk_1F50D71E8;
  *(a1 + 32) = *a3;
  v9 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1D58F5074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AnyInPredicate<int>::AnyInPredicate(uint64_t a1, uint64_t a2, int **a3)
{
  std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(v3, *a3, a3[1]);
  mlcore::AnyInPredicate<int>::AnyInPredicate();
}

{
  std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(v3, *a3, a3[1]);
  mlcore::AnyInPredicate<int>::AnyInPredicate();
}

void sub_1D58F50F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, *v5++);
    }

    while (v5 != a3);
  }

  return a1;
}

void mlcore::AnyInPredicate<int>::AnyInPredicate(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = (v3 - *a2) >> 3;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<int> * const*>,std::__wrap_iter<mlcore::ModelProperty<int> * const*>>(&v7, v4, v3, v5);
  *a1 = &unk_1F50D4A80;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v6 = v7;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 1), v7, v8, (v8 - v7) >> 3);
  if (v6)
  {
    operator delete(v6);
  }

  *a1 = &unk_1F50D7190;
  mlcore::SharedObject<std::unordered_set<int>,int>::create<std::unordered_set<int> const&>();
}

void sub_1D58F5250(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<int> * const*>,std::__wrap_iter<mlcore::ModelProperty<int> * const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D58F52D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::SharedObject<std::unordered_set<int>,int>::create<std::unordered_set<int> const&>()
{
  v0 = mlcore::SharedObject<std::unordered_set<int>,int>::_mutex();
  std::mutex::lock(v0);
  {
    {
      operator new();
    }
  }

  ++*mlcore::SharedObject<std::unordered_set<int>,int>::_nextToken(void)::token;
  operator new();
}

void sub_1D58F5890(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_1D58F58BC()
{
  v1 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v0);
  MEMORY[0x1DA6EDD40](v1, 0x10A0C408EF24B1CLL);
  JUMPOUT(0x1D58F58DCLL);
}

uint64_t mlcore::SharedObject<std::unordered_set<int>,int>::_mutex()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<int>,int>::_mutex(void)::mutex;
}

uint64_t mlcore::SharedObject<std::unordered_set<int>,int>::_objects()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<int>,int>::_objects(void)::objects;
}

void mlcore::SharedObject<std::unordered_set<int>,int>::create<std::unordered_set<int> const&>(std::unordered_set<int> const&)::{lambda(std::unordered_set<int>*)#1}::operator()(int *a1, uint64_t a2)
{
  v4 = mlcore::SharedObject<std::unordered_set<int>,int>::_mutex();
  std::mutex::lock(v4);
  v5 = mlcore::SharedObject<std::unordered_set<int>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v5, *a1);
  if (a2)
  {
    v6 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(a2);
    MEMORY[0x1DA6EDD40](v6, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v4);
}

uint64_t std::__shared_ptr_pointer<std::unordered_set<int> *,mlcore::SharedObject<std::unordered_set<int>,int> mlcore::SharedObject<std::unordered_set<int>,int>::create<std::unordered_set<int> const&>(std::unordered_set<int> const&)::{lambda(std::unordered_set<int> *)#1},std::allocator<std::unordered_set<int>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12SharedObjectINSt3__113unordered_setIiNS1_4hashIiEENS1_8equal_toIiEENS1_9allocatorIiEEEEiE6createIJRKS9_EEESA_DpOT_EUlPS9_E_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::unordered_set<int> *,mlcore::SharedObject<std::unordered_set<int>,int> mlcore::SharedObject<std::unordered_set<int>,int>::create<std::unordered_set<int> const&>(std::unordered_set<int> const&)::{lambda(std::unordered_set<int> *)#1},std::allocator<std::unordered_set<int>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = mlcore::SharedObject<std::unordered_set<int>,int>::_mutex();
  std::mutex::lock(v3);
  v4 = mlcore::SharedObject<std::unordered_set<int>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v4, *(a1 + 32));
  if (v2)
  {
    v5 = std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v2);
    MEMORY[0x1DA6EDD40](v5, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v3);
}

void std::__shared_ptr_pointer<std::unordered_set<int> *,mlcore::SharedObject<std::unordered_set<int>,int> mlcore::SharedObject<std::unordered_set<int>,int>::create<std::unordered_set<int> const&>(std::unordered_set<int> const&)::{lambda(std::unordered_set<int> *)#1},std::allocator<std::unordered_set<int>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void sub_1D58F5C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<int>::AnyInPredicate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<int> * const*>,std::__wrap_iter<mlcore::ModelProperty<int> * const*>>(&v11, v6, v5, v7);
  *a1 = &unk_1F50D4A80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v8 = v11;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(a1 + 8, v11, v12, (v12 - v11) >> 3);
  if (v8)
  {
    operator delete(v8);
  }

  *a1 = &unk_1F50D7190;
  *(a1 + 32) = *a3;
  v9 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1D58F5D18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AnyInPredicate<mediaplatform::Data>::AnyInPredicate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  std::unordered_set<mediaplatform::Data>::unordered_set<std::__wrap_iter<mediaplatform::Data const*>>(&__p, *a3, a3[1]);
  mlcore::AnyInPredicate<mediaplatform::Data>::AnyInPredicate();
}

{
  std::unordered_set<mediaplatform::Data>::unordered_set<std::__wrap_iter<mediaplatform::Data const*>>(&__p, *a3, a3[1]);
  mlcore::AnyInPredicate<mediaplatform::Data>::AnyInPredicate();
}

void sub_1D58F5DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<mediaplatform::Data>::unordered_set<std::__wrap_iter<mediaplatform::Data const*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::__emplace_unique_key_args<mediaplatform::Data,mediaplatform::Data const&>(a1, v5);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return a1;
}

void mlcore::AnyInPredicate<mediaplatform::Data>::AnyInPredicate(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = (v3 - *a2) >> 3;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<mediaplatform::Data> * const*>,std::__wrap_iter<mlcore::ModelProperty<mediaplatform::Data> * const*>>(&v7, v4, v3, v5);
  *a1 = &unk_1F50D4A80;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v6 = v7;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 1), v7, v8, (v8 - v7) >> 3);
  if (v6)
  {
    operator delete(v6);
  }

  *a1 = &unk_1F50D7298;
  mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::create<std::unordered_set<mediaplatform::Data> const&>();
}

void sub_1D58F5F04(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::__deallocate_node(void (***a1)(void))
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      (*v1[2])();
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<mediaplatform::Data> * const*>,std::__wrap_iter<mlcore::ModelProperty<mediaplatform::Data> * const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlcore::ModelPropertyBase *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D58F602C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::create<std::unordered_set<mediaplatform::Data> const&>()
{
  v0 = mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_mutex();
  std::mutex::lock(v0);
  {
    {
      operator new();
    }
  }

  ++*mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_nextToken(void)::token;
  operator new();
}

void sub_1D58F65E4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_1D58F6610()
{
  v1 = std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::~__hash_table(v0);
  MEMORY[0x1DA6EDD40](v1, 0x10A0C408EF24B1CLL);
  JUMPOUT(0x1D58F6630);
}

uint64_t mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_mutex()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_mutex(void)::mutex;
}

uint64_t mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_objects()
{
  {
    operator new();
  }

  return mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_objects(void)::objects;
}

void mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::create<std::unordered_set<mediaplatform::Data> const&>(std::unordered_set<mediaplatform::Data> const&)::{lambda(std::unordered_set<mediaplatform::Data>*)#1}::operator()(int *a1, uint64_t a2)
{
  v4 = mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_mutex();
  std::mutex::lock(v4);
  v5 = mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>>>::__erase_unique<int>(v5, *a1);
  if (a2)
  {
    v6 = std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::~__hash_table(a2);
    MEMORY[0x1DA6EDD40](v6, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v4);
}

void std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>>>::__erase_unique<int>(uint64_t *a1, int a2)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = a2;
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (v2 <= a2)
      {
        v6 = a2 % v2;
      }
    }

    else
    {
      v6 = (v2 - 1) & a2;
    }

    v7 = *a1;
    v8 = *(*a1 + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        v10 = v2 - 1;
        do
        {
          v11 = v9[1];
          if (v11 == v4)
          {
            if (*(v9 + 4) == a2)
            {
              v12 = v9[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v12 >= v2)
                {
                  v12 %= v2;
                }
              }

              else
              {
                v12 &= v10;
              }

              v13 = *(v7 + 8 * v12);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v9);
              if (v14 == a1 + 2)
              {
                goto LABEL_36;
              }

              v15 = v14[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v15 >= v2)
                {
                  v15 %= v2;
                }
              }

              else
              {
                v15 &= v10;
              }

              if (v15 != v12)
              {
LABEL_36:
                if (!*v9)
                {
                  goto LABEL_37;
                }

                v16 = *(*v9 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v16 >= v2)
                  {
                    v16 %= v2;
                  }
                }

                else
                {
                  v16 &= v10;
                }

                if (v16 != v12)
                {
LABEL_37:
                  *(v7 + 8 * v12) = 0;
                }
              }

              v17 = *v9;
              if (*v9)
              {
                v18 = *(v17 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v18 >= v2)
                  {
                    v18 %= v2;
                  }
                }

                else
                {
                  v18 &= v10;
                }

                if (v18 != v12)
                {
                  *(*a1 + 8 * v18) = v14;
                  v17 = *v9;
                }
              }

              *v14 = v17;
              *v9 = 0;
              --a1[3];
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,void *>>>::operator()[abi:ne200100](1, v9);
              return;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v11 >= v2)
              {
                v11 %= v2;
              }
            }

            else
            {
              v11 &= v10;
            }

            if (v11 != v6)
            {
              return;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }
}

uint64_t std::__shared_ptr_pointer<std::unordered_set<mediaplatform::Data> *,mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int> mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::create<std::unordered_set<mediaplatform::Data> const&>(std::unordered_set<mediaplatform::Data> const&)::{lambda(std::unordered_set<mediaplatform::Data> *)#1},std::allocator<std::unordered_set<mediaplatform::Data>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12SharedObjectINSt3__113unordered_setIN13mediaplatform4DataENS1_4hashIS4_EENS1_8equal_toIS4_EENS1_9allocatorIS4_EEEEiE6createIJRKSB_EEESC_DpOT_EUlPSB_E_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::unordered_set<mediaplatform::Data> *,mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int> mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::create<std::unordered_set<mediaplatform::Data> const&>(std::unordered_set<mediaplatform::Data> const&)::{lambda(std::unordered_set<mediaplatform::Data> *)#1},std::allocator<std::unordered_set<mediaplatform::Data>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_mutex();
  std::mutex::lock(v3);
  v4 = mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<mediaplatform::Data>>>>>::__erase_unique<int>(v4, *(a1 + 32));
  if (v2)
  {
    v5 = std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::~__hash_table(v2);
    MEMORY[0x1DA6EDD40](v5, 0x10A0C408EF24B1CLL);
  }

  std::mutex::unlock(v3);
}

void std::__shared_ptr_pointer<std::unordered_set<mediaplatform::Data> *,mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int> mlcore::SharedObject<std::unordered_set<mediaplatform::Data>,int>::create<std::unordered_set<mediaplatform::Data> const&>(std::unordered_set<mediaplatform::Data> const&)::{lambda(std::unordered_set<mediaplatform::Data> *)#1},std::allocator<std::unordered_set<mediaplatform::Data>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::__emplace_unique_key_args<mediaplatform::Data,mediaplatform::Data const&>(void *a1, uint64_t a2)
{
  v4 = std::hash<mediaplatform::Data>::operator()(*(a2 + 8), *(a2 + 24));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
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
LABEL_20:
    operator new();
  }

  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  while (1)
  {
    v14 = v11[1];
    if (v14 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v14 >= *&v6)
      {
        v14 %= *&v6;
      }
    }

    else
    {
      v14 &= *&v6 - 1;
    }

    if (v14 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v12 != v11[3])
  {
    goto LABEL_19;
  }

  result = memcmp(v11[5], v13, v12);
  if (result)
  {
    goto LABEL_19;
  }

  return result;
}

void sub_1D58F6D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<mediaplatform::Data,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<mediaplatform::Data,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t std::hash<mediaplatform::Data>::operator()(size_t __n, void *__src)
{
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v6 = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + __n) = 0;
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&__dst);
  if (v6 < 0)
  {
    operator delete(__dst);
  }

  return v3;
}

uint64_t std::unique_ptr<std::__hash_node<mediaplatform::Data,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<mediaplatform::Data,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[2])();
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1D58F6EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<mediaplatform::Data,std::hash<mediaplatform::Data>,std::equal_to<mediaplatform::Data>,std::allocator<mediaplatform::Data>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t mlcore::AnyInPredicate<mediaplatform::Data>::AnyInPredicate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 3;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlcore::ModelProperty<mediaplatform::Data> * const*>,std::__wrap_iter<mlcore::ModelProperty<mediaplatform::Data> * const*>>(&v11, v6, v5, v7);
  *a1 = &unk_1F50D4A80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v8 = v11;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(a1 + 8, v11, v12, (v12 - v11) >> 3);
  if (v8)
  {
    operator delete(v8);
  }

  *a1 = &unk_1F50D7298;
  *(a1 + 32) = *a3;
  v9 = *(a3 + 16);
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1D58F6FF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mediaplatform::Describable::description@<X0>(mediaplatform::Describable *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  LOBYTE(__p) = 60;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
  (*(*this + 24))(&__p, this);
  if ((v17 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v5);
  LOBYTE(v28) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v28, 1);
  *(&v18 + *(v18 - 24) + 8) = *(&v18 + *(v18 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x1DA6EDAD0](&v18, this);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  (*(*this + 32))(&__p, this);
  v6 = __p;
  v7 = v16;
  if (__p != v16)
  {
    do
    {
      v27 = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v27, 1);
      v8 = *(v6 + 23);
      if (v8 >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      if (v8 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
      v6 += 3;
    }

    while (v6 != v7);
  }

  v27 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v27, 1);
  if ((v25 & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v12 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v11 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    locale = v20[1].__locale_;
    v12 = v20[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, locale, v11);
  }

LABEL_30:
  a2[v11] = 0;
  v28 = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v26);
}

void sub_1D58F7388(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x1DA6EDCB0](va);
  _Unwind_Resume(a1);
}

void mediaplatform::Describable::descriptionAttributes(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

unint64_t mediaplatform::Describable::className@<X0>(mediaplatform::Describable *this@<X0>, _BYTE *a2@<X8>)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*(*this - 8) + 8);
  result = strlen((v3 & 0x7FFFFFFFFFFFFFFFLL));
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, (v3 & 0x7FFFFFFFFFFFFFFFLL), result);
  }

  a2[v5] = 0;
  return result;
}

uint64_t mlcore::TypedEntityClass<mlcore::Podcast>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::Podcast>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::Podcast>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::Podcast>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::Podcast>::sharedPointer(void)::__sharedPointer;
}

void mlcore::TypedEntityClass<mlcore::Podcast>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::Podcast>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::Podcast>::databaseTable()
{
  mediaplatform::Singleton<mlcore::AlbumTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void *mediaplatform::Singleton<mlcore::AlbumTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore10AlbumTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::AlbumTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::AlbumTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D58F7798(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::AlbumTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D22D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void sub_1D58F7A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::Podcast>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D0F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::Podcast>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::Podcast::~Podcast(mlcore::Podcast *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

void mlcore::Podcast::Podcast(mlcore::Podcast *this, uint64_t a2)
{
  mlcore::Album::Album(this, a2);
  *v2 = &unk_1F50D3A10;
}

{
  mlcore::Album::Album(this, a2);
  *v2 = &unk_1F50D3A10;
}

uint64_t MemHandleGetPtr(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

_DWORD *MemNewHandleClear(size_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (v2)
  {
    v3 = malloc_type_calloc(a1, 1uLL, 0xA7E7FE5uLL);
    *v2 = v3;
    if (v3)
    {
      v2[2] = a1;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

_DWORD *MemNewHandle(size_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (v2)
  {
    v3 = malloc_type_malloc(a1, 0xA373834uLL);
    *v2 = v3;
    if (v3)
    {
      v2[2] = a1;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t MemResizeHandle(void ***a1, int a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 2);
    v6 = v5 + a2;
    if (a2 < 0 && v6 < 0)
    {
      return 4294967246;
    }

    else
    {
      if (v5 < v6)
      {
        *v4 = malloc_type_realloc(*v4, v6, 0xF74AAAE3uLL);
      }

      *(v4 + 2) = v6;
      if (a2 >= 1)
      {
        bzero(**a1 + v5, a2);
      }

      return 0;
    }
  }

  else
  {
    v8 = MemNewHandleClear(a2);
    *a1 = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      return 4294967188;
    }
  }
}

uint64_t MemGetHandleSize(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t MemSetHandleSize(uint64_t a1, size_t size)
{
  v2 = size;
  if (*(a1 + 8) < size)
  {
    *a1 = malloc_type_realloc(*a1, size, 0xF74AAAE3uLL);
  }

  *(a1 + 8) = v2;
  return 0;
}

void MemDisposeHandle(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void mlcore::SQLRenderer::~SQLRenderer(mlcore::SQLRenderer *this)
{
  mlcore::SQLRenderer::~SQLRenderer(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D79D0;
  v2 = (this + 64);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *(this + 4) = &unk_1F50DDA98;
  v2 = (this + 40);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void mlcore::SQLRenderer::popRenderingContext(mlcore::SQLRenderer *this)
{
  v1 = *(this + 9);
  if ((v1 - *(this + 8)) <= 0x10)
  {
    __assert_rtn("popRenderingContext", "SQLRenderer.cpp", 47, "_renderingContexts.size() > 1");
  }

  v3 = *(v1 - 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 9) = v1 - 16;
}

void mlcore::SQLRenderer::pushRenderingContext(mlcore::SQLRenderer *this)
{
  (*(*this + 8))(&v1);
  std::unordered_set<std::string>::unordered_set(v2, v1 + 48);
  operator new();
}

uint64_t mlcore::SQLRenderer::currentSQLRenderingContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 72);
  v4 = *(v2 - 16);
  v3 = *(v2 - 8);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void mlcore::SQLRenderer::stringForDatabaseBindParameter(mlcore::SQLRenderer *this@<X0>, const mediaplatform::DatabaseBindParameter *a2@<X1>, uint64_t a3@<X8>)
{
  mediaplatform::DatabaseParameterList::add(this + 4, (a2 + 8));
  *(a3 + 23) = 1;
  *a3 = 63;
}

void mlcore::SQLRenderer::SQLRenderer(uint64_t a1)
{
  *a1 = &unk_1F50D79D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F50DDA98;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  operator new();
}

void sub_1D58F8540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](va);
  *(v3 + 32) = v4;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 31) < 0)
  {
    operator delete(*v6);
  }

  _Unwind_Resume(a1);
}

void mlcore::CompoundPredicate::_allProperties(mlcore::CompoundPredicate *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; v3 += 2)
  {
    v5 = *v3;
    v6 = v3[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 56))(&__p);
    v7 = __p;
    v8 = v10;
    while (v7 != v8)
    {
      v12 = *v7;
      mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a2, &v12);
      ++v7;
    }

    std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(&v11);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1D58F8688(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::~OrderedSet(v1);
  _Unwind_Resume(a1);
}

void mlcore::AndPredicate::_SQLExpression(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    do
    {
      v6 = *v3;
      v7 = v3[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = a2[1];
      v9 = *a2;
      v10 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 64))(&v11);
      v12 = v11;
      v11 = 0uLL;
      std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::push_back[abi:ne200100](&v13, &v12);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }

      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v3 += 2;
    }

    while (v3 != v4);
    if (v13 != v14)
    {
      LODWORD(v11) = 1;
      std::allocate_shared[abi:ne200100]<mediaplatform::SQLBinaryExpressionList,std::allocator<mediaplatform::SQLBinaryExpressionList>,std::vector<std::shared_ptr<mediaplatform::SQLExpression const>> &,mediaplatform::SQLBinaryExpression::BinaryOperator,0>();
    }
  }

  *&v12 = &v13;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_1D58F87FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_1D58F88D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mediaplatform::SQLBinaryExpressionList>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D23B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::AndPredicate::matches(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    v5 = *v2;
    v6 = v2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = a2[1];
    v11 = *a2;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v5 + 48))(v5, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v2 += 2;
    if (v2 == v3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  while ((v9 & 1) != 0);
  return v8;
}

void sub_1D58F8A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AndPredicate::description@<X0>(mlcore::AndPredicate *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  LOBYTE(__p[0]) = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, __p, 1);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 1;
    do
    {
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " and ", 5);
      }

      (*(**v4 + 40))(__p);
      if ((v11 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v7, v8);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 0;
      v4 += 16;
    }

    while (v4 != v5);
  }

  LOBYTE(__p[0]) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, __p, 1);
  std::ostringstream::str[abi:ne200100](a2, &v12);
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v16);
}

void mlcore::AndPredicate::~AndPredicate(mlcore::AndPredicate *this)
{
  *this = &unk_1F50D4DD0;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D4DD0;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void mlcore::OrPredicate::_SQLExpression(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    do
    {
      v6 = *v3;
      v7 = v3[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = a2[1];
      v9 = *a2;
      v10 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 64))(&v11);
      v12 = v11;
      v11 = 0uLL;
      std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::push_back[abi:ne200100](&v13, &v12);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }

      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v3 += 2;
    }

    while (v3 != v4);
    if (v13 != v14)
    {
      LODWORD(v11) = 2;
      std::allocate_shared[abi:ne200100]<mediaplatform::SQLBinaryExpressionList,std::allocator<mediaplatform::SQLBinaryExpressionList>,std::vector<std::shared_ptr<mediaplatform::SQLExpression const>> &,mediaplatform::SQLBinaryExpression::BinaryOperator,0>();
    }
  }

  *&v12 = &v13;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_1D58F8ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t mlcore::OrPredicate::matches(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    v5 = *v2;
    v6 = v2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = a2[1];
    v11 = *a2;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v5 + 48))(v5, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v2 += 2;
    if (v2 == v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }
  }

  while ((v9 & 1) == 0);
  return v8;
}

void sub_1D58F8FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::OrPredicate::description@<X0>(mlcore::OrPredicate *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  LOBYTE(__p[0]) = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, __p, 1);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 1;
    do
    {
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " or ", 4);
      }

      (*(**v4 + 40))(__p);
      if ((v11 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v7, v8);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 0;
      v4 += 16;
    }

    while (v4 != v5);
  }

  LOBYTE(__p[0]) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, __p, 1);
  std::ostringstream::str[abi:ne200100](a2, &v12);
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v16);
}

void mlcore::OrPredicate::~OrPredicate(mlcore::OrPredicate *this)
{
  *this = &unk_1F50D4DD0;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D4DD0;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void *mlcore::CompoundPredicate::CompoundPredicate(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F50D4DD0;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

uint64_t mlcore::CreateAndPredicate@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<mlcore::Predicate> *>,decltype(nullptr)>(*a1, a1[1]);
  result = std::vector<std::shared_ptr<mlcore::Predicate>>::erase(a1, v4, a1[1]);
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7 == 16)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a2 = v9;
    a2[1] = v8;
  }

  else if (v7 >= 0x11)
  {
    operator new();
  }

  return result;
}

void sub_1D58F94C0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<mlcore::Predicate> *>,decltype(nullptr)>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (*v2)
    {
      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v6 = *i;
        if (*i)
        {
          v7 = i[1];
          *i = 0;
          i[1] = 0;
          v8 = v2[1];
          *v2 = v6;
          v2[1] = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t std::vector<std::shared_ptr<mlcore::Predicate>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void std::__shared_ptr_emplace<mlcore::AndPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::CreateOrPredicate@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v4 = std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<mlcore::Predicate> *>,decltype(nullptr)>(*a1, a1[1]);
  result = std::vector<std::shared_ptr<mlcore::Predicate>>::erase(a1, v4, a1[1]);
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7 == 16)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a2 = v9;
    a2[1] = v8;
  }

  else if (v7 >= 0x11)
  {
    operator new();
  }

  return result;
}

void sub_1D58F97E8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::OrPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

mlcore::CloudKVSTable *mlcore::CloudKVSTable::CloudKVSTable(mlcore::CloudKVSTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v40, "cloud_kvs");
  std::string::basic_string[abi:ne200100]<0>(&__s, "key");
  v35 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = __s;
  }

  v37 = 1;
  v38 = 0;
  memset(&v39, 0, sizeof(v39));
  v35 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v29, "play_count_user");
  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v29;
  }

  v32 = 16;
  v33[0] = 1;
  *&v33[4] = 0;
  v30 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v24, "has_been_played");
  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v24;
  }

  v27 = 16;
  v28[0] = 1;
  *&v28[4] = 0;
  v25 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "bookmark_time_ms");
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
  v23[0] = 1;
  *&v23[4] = 0;
  v20 = &unk_1F50D7B00;
  std::string::basic_string[abi:ne200100]<0>(&v14, "bookmark_sync_timestamp");
  v15 = &unk_1F50D86E0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v14;
  }

  v17 = 16;
  v18[0] = 1;
  *&v18[4] = 0;
  v15 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v9, "bookmark_sync_revision");
  v10 = &unk_1F50D86E0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v9;
  }

  v12 = 16;
  v13[0] = 1;
  *&v13[4] = 0;
  v10 = &unk_1F50D7AC0;
  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v68 = v36;
  }

  v69 = v37;
  v67 = &unk_1F50D89B8;
  v70 = v38;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v39;
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v31;
  }

  v64 = v32;
  v62 = &unk_1F50D8958;
  v65 = *v33;
  v66 = *&v33[8];
  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = v26;
  }

  v59 = v27;
  v57 = &unk_1F50D8958;
  v60 = *v28;
  v61 = *&v28[8];
  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v53 = v21;
  }

  v54 = v22;
  v52 = &unk_1F50D8998;
  v55 = *v23;
  v56 = *&v23[8];
  v47 = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = v16;
  }

  v49 = v17;
  v47 = &unk_1F50D8958;
  v50 = *v18;
  v51 = *&v18[8];
  v42 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = __p;
  }

  v44 = v12;
  v42 = &unk_1F50D8958;
  v45 = *v13;
  v46 = *&v13[8];
  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v41) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v40[0], v40[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v40;
    *(this + 3) = v41;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50D8FA8;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v68;
  }

  v99 = v69;
  v97 = &unk_1F50D89B8;
  v100 = v70;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v71;
  }

  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v93, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v93 = v63;
  }

  v94 = v64;
  v92 = &unk_1F50D8958;
  v95 = v65;
  v96 = v66;
  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v58;
  }

  v89 = v59;
  v87 = &unk_1F50D8958;
  v90 = v60;
  v91 = v61;
  v82 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v83 = v53;
  }

  v84 = v54;
  v82 = &unk_1F50D8998;
  v85 = v55;
  v86 = v56;
  v77 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v78 = v48;
  }

  v79 = v49;
  v77 = &unk_1F50D8958;
  v80 = v50;
  v81 = v51;
  v72 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v73 = v43;
  }

  v74 = v44;
  v72 = &unk_1F50D8958;
  v75 = v45;
  v76 = v46;
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v93;
  }

  v124 = v94;
  v122 = &unk_1F50D8958;
  v125 = v95;
  v126 = v96;
  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v88;
  }

  v119 = v89;
  v117 = &unk_1F50D8958;
  v120 = v90;
  v121 = v91;
  v112 = &unk_1F50D86E0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
  }

  else
  {
    v113 = v83;
  }

  v114 = v84;
  v112 = &unk_1F50D8998;
  v115 = v85;
  v116 = v86;
  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v108 = v78;
  }

  v109 = v79;
  v107 = &unk_1F50D8958;
  v110 = v80;
  v111 = v81;
  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v103 = v73;
  }

  v104 = v74;
  v102 = &unk_1F50D8958;
  v105 = v75;
  v106 = v76;
  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v118;
  }

  v144 = v119;
  v142 = &unk_1F50D8958;
  v145 = v120;
  v146 = v121;
  v137 = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v113;
  }

  v139 = v114;
  v137 = &unk_1F50D8998;
  v140 = v115;
  v141 = v116;
  v132 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v133, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v133 = v108;
  }

  v134 = v109;
  v132 = &unk_1F50D8958;
  v135 = v110;
  v136 = v111;
  v127 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v128 = v103;
  }

  v129 = v104;
  v127 = &unk_1F50D8958;
  v130 = v105;
  v131 = v106;
  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v138;
  }

  v159 = v139;
  v157 = &unk_1F50D8998;
  v160 = v140;
  v161 = v141;
  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v133.__r_.__value_.__l.__data_, v133.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v133;
  }

  v154 = v134;
  v152 = &unk_1F50D8958;
  v155 = v135;
  v156 = v136;
  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
  }

  else
  {
    v148 = v128;
  }

  v149 = v129;
  v147 = &unk_1F50D8958;
  v150 = v130;
  v151 = v131;
  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v168, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
  }

  else
  {
    v168 = v153;
  }

  v169 = v154;
  v167 = &unk_1F50D8958;
  v170 = v155;
  v171 = v156;
  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v148;
  }

  v164 = v149;
  v162 = &unk_1F50D8958;
  v165 = v150;
  v166 = v151;
  mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(this + 80, &v167, &v162);
  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  *(this + 22) = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 184), v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 184) = v158;
  }

  *(this + 52) = v159;
  *(this + 22) = &unk_1F50D8998;
  *(this + 212) = v160;
  *(this + 55) = v161;
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

  *(this + 28) = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 232) = v143;
  }

  *(this + 64) = v144;
  *(this + 28) = &unk_1F50D8958;
  *(this + 260) = v145;
  *(this + 67) = v146;
  v127 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v132 = &unk_1F50D86E0;
  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
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

  *(this + 34) = &unk_1F50D86E0;
  v3 = (this + 280);
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v123.__r_.__value_.__l.__data_;
    *(this + 37) = *(&v123.__r_.__value_.__l + 2);
  }

  *(this + 76) = v124;
  *(this + 34) = &unk_1F50D8958;
  *(this + 308) = v125;
  *(this + 79) = v126;
  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v112 = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  *(this + 40) = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 328), v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 328) = v98;
  }

  *(this + 88) = v99;
  *(this + 40) = &unk_1F50D89B8;
  *(this + 356) = v100;
  v4 = (this + 360);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v101.__r_.__value_.__l.__data_;
    *(this + 47) = *(&v101.__r_.__value_.__l + 2);
  }

  v72 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v77 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v82 = &unk_1F50D86E0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v97);
  v42 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v47 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v67);
  *this = &unk_1F50D8558;
  *(this + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 392), v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 392) = v36;
  }

  *(this + 104) = v37;
  *(this + 48) = &unk_1F50D89B8;
  *(this + 420) = v38;
  v5 = (this + 424);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v39.__r_.__value_.__l.__data_;
    *(this + 55) = *(&v39.__r_.__value_.__l + 2);
  }

  *(this + 48) = &unk_1F50D7B20;
  *(this + 56) = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 19, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 19) = v31;
  }

  *(this + 120) = v32;
  *(this + 484) = *v33;
  *(this + 123) = *&v33[8];
  *(this + 56) = &unk_1F50D7AC0;
  *(this + 62) = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 21, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 21) = v26;
  }

  *(this + 132) = v27;
  *(this + 532) = *v28;
  *(this + 135) = *&v28[8];
  *(this + 62) = &unk_1F50D7AC0;
  *(this + 68) = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 23, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 23) = v21;
  }

  *(this + 144) = v22;
  *(this + 580) = *v23;
  *(this + 147) = *&v23[8];
  *(this + 68) = &unk_1F50D7B00;
  *(this + 74) = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 25, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 25) = v16;
  }

  *(this + 156) = v17;
  *(this + 628) = *v18;
  *(this + 159) = *&v18[8];
  *(this + 74) = &unk_1F50D7AC0;
  *(this + 80) = &unk_1F50D86E0;
  v6 = (this + 648);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v7 = 0;
    *&v6->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(this + 83) = *(&__p.__r_.__value_.__l + 2);
  }

  *(this + 168) = v12;
  *(this + 676) = *v13;
  *(this + 171) = *&v13[8];
  *(this + 80) = &unk_1F50D7AC0;
  v10 = &unk_1F50D86E0;
  if (v7)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v15 = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
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

  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v35);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  *this = &unk_1F50D75F8;
  return this;
}

void sub_1D58FB4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  *(v80 + 592) = v86;
  if (*(v80 + 623) < 0)
  {
    operator delete(*v85);
  }

  *(v80 + 544) = v84;
  if (*(v80 + 575) < 0)
  {
    operator delete(*v83);
  }

  *(v80 + 496) = v82;
  if (*(v80 + 527) < 0)
  {
    operator delete(*v81);
  }

  *(v80 + 448) = a31;
  if (*(v80 + 479) < 0)
  {
    operator delete(*v79);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v78);
  mediaplatform::DatabaseTable<std::string,long long,long long,double,long long,long long>::~DatabaseTable(v80);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  STACK[0x218] = a36;
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x260]);
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  _Unwind_Resume(a1);
}

void sub_1D58FBB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<std::string,long long,long long,double,long long,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 224);
  mediaplatform::ColumnNamesApplier::operator()<double>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D58FBBD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::CloudKVSTable::~CloudKVSTable(void **this)
{
  *this = &unk_1F50D8558;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<double>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl((this + 48));
  *this = &unk_1F50D8FA8;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D8558;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<double>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl((this + 48));
  *this = &unk_1F50D8FA8;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<double>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(uint64_t a1)
{
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

  *(a1 + 112) = &unk_1F50D86E0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 64) = &unk_1F50D86E0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 240);
  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

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

void mediaplatform::DatabaseTable<std::string,long long,long long,double,long long,long long>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8FA8;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8FA8;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  *a1 = &unk_1F50D8FA8;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

void mlcore::MediaTable<std::string,long long,long long,double,long long,long long>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D8558;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<double>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(a1 + 384);
  *a1 = &unk_1F50D8FA8;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8558;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<double>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>>::~__tuple_impl(a1 + 384);
  *a1 = &unk_1F50D8FA8;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
  }

  v11 = *(a3 + 32);
  v9 = &unk_1F50D8958;
  v12 = *(a3 + 36);
  v13 = *(a3 + 44);
  mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(a1, &v9);
  v9 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 72) = *(a2 + 24);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 32);
  *(a1 + 48) = &unk_1F50D8958;
  v7 = *(a2 + 36);
  *(a1 + 92) = *(a2 + 44);
  *(a1 + 84) = v7;
  return a1;
}

void sub_1D58FC32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = &unk_1F50D86E0;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F50D86E0;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  *a1 = &unk_1F50D8958;
  v6 = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 36) = v6;
  return a1;
}

void mlcore::CloudKVSTable::keyColoumn(mlcore::CloudKVSTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 415) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 49), *(this + 50));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 392);
    *(a2 + 24) = *(this + 51);
  }

  *(a2 + 32) = *(this + 104);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 420);
  if (*(this + 447) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 53), *(this + 54));
  }

  else
  {
    *(a2 + 40) = *(this + 424);
    *(a2 + 56) = *(this + 55);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D58FC50C(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::CloudKVSTable::playCountColumn(mlcore::CloudKVSTable *this@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 44) = *(this + 123);
  *(a2 + 36) = *(this + 484);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::CloudKVSTable::hasBeenPlayedColumn(mlcore::CloudKVSTable *this@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 44) = *(this + 135);
  *(a2 + 36) = *(this + 532);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::CloudKVSTable::bookmarkTimeColumn(mlcore::CloudKVSTable *this@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 44) = *(this + 147);
  *(a2 + 36) = *(this + 580);
  *a2 = &unk_1F50D7B00;
}

void mlcore::CloudKVSTable::bookmarkSyncTimestampColumn(mlcore::CloudKVSTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 623) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 75), *(this + 76));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 600);
    *(a2 + 24) = *(this + 77);
  }

  *(a2 + 32) = *(this + 156);
  *(a2 + 44) = *(this + 159);
  *(a2 + 36) = *(this + 628);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::CloudKVSTable::bookmarkSyncRevisionColumn(mlcore::CloudKVSTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 671) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 81), *(this + 82));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 648);
    *(a2 + 24) = *(this + 83);
  }

  *(a2 + 32) = *(this + 168);
  *(a2 + 44) = *(this + 171);
  *(a2 + 36) = *(this + 676);
  *a2 = &unk_1F50D7AC0;
}

uint64_t mediaplatform::DatabaseTableBase::columnNames@<X0>(mediaplatform::DatabaseTableBase *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 4), *(this + 5), 0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - *(this + 4)) >> 3));
}

void mediaplatform::DatabaseTableBase::~DatabaseTableBase(void **this)
{
  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD390;
  v2 = this + 4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *mediaplatform::DatabaseTableBase::DatabaseTableBase(void *a1, __int128 *a2)
{
  *a1 = &unk_1F50DD390;
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

  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void mlcore::Entity::_SQLExpressionForIdentity(mlcore::Entity *this)
{
  v1 = (*(*this + 48))(this);
  v2 = (*(*v1 + 96))(v1);
  (*(*v2 + 24))(v3);
  std::allocate_shared[abi:ne200100]<mediaplatform::SQLColumnNameExpression,std::allocator<mediaplatform::SQLColumnNameExpression>,std::string &,0>();
}

void sub_1D58FCAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12, uint64_t a13, char a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v16 = *(v14 - 40);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  a11 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_1D58FCC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v29);
  _Unwind_Resume(a1);
}

void sub_1D58FCD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::SQLLiteralValue<long long>::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = *(a1 + 8);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  MEMORY[0x1DA6EDB10](&v20, v4);
  std::ostringstream::str[abi:ne200100](v13, &v20);
  v20 = *MEMORY[0x1E69E54E8];
  v5 = v20;
  v6 = *(MEMORY[0x1E69E54E8] + 24);
  *(&v20 + *(v20 - 24)) = v6;
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  MEMORY[0x1DA6EDCB0](&v24);
  if ((v14 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v13[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v7, v8);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if ((*(a1 + 39) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_22;
    }

LABEL_15:
    goto LABEL_22;
  }

  if (*(a1 + 39))
  {
    goto LABEL_15;
  }

LABEL_22:
  std::ostringstream::str[abi:ne200100](a2, &v15);
  v15 = v5;
  *(&v15 + *(v5 - 24)) = v6;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v19);
}

void sub_1D58FD054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void mediaplatform::SQLLiteralValue<long long>::~SQLLiteralValue(uint64_t a1)
{
  *a1 = &unk_1F50D8868;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::SQLLiteralValue<long long>::~SQLLiteralValue(uint64_t a1)
{
  *a1 = &unk_1F50D8868;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__shared_ptr_emplace<mediaplatform::SQLLiteralValue<long long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::Entity::descriptionAttributes(mlcore::Entity *this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  std::to_string(&__p, *(this + 28));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a2, &__p, &v5, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1D58FD280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double mlcore::Entity::Entity(mlcore::Entity *this, uint64_t a2)
{
  *this = &unk_1F50D3C08;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  return result;
}

void *mlcore::Entity::Entity(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F50D3C08;
  mlcore::PropertyCache::PropertyCache((a1 + 1), a3);
  a1[28] = a2;
  return a1;
}

void mlcore::Entity::createWithType(mlcore::Entity *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (this > 4)
  {
    if (this <= 7)
    {
      if (this == 5)
      {
        std::allocate_shared[abi:ne200100]<mlcore::Composer,std::allocator<mlcore::Composer>,long long &,0>();
      }

      if (this == 7)
      {
        std::allocate_shared[abi:ne200100]<mlcore::Artist,std::allocator<mlcore::Artist>,long long &,0>();
      }
    }

    else
    {
      switch(this)
      {
        case 8:
          operator new();
        case 9:
          std::allocate_shared[abi:ne200100]<mlcore::PlaylistItem,std::allocator<mlcore::PlaylistItem>,long long &,0>();
        case 0xD:
          operator new();
      }
    }
  }

  else
  {
    if (this > 1)
    {
      if (this != 2)
      {
        if (this != 3)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    if (!this)
    {
      operator new();
    }

    if (this == 1)
    {
      std::allocate_shared[abi:ne200100]<mlcore::Playlist,std::allocator<mlcore::Playlist>,long long &,0>();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "unknown entity type");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void std::__shared_ptr_emplace<mlcore::LibraryPin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50DE348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mlcore::LibraryProperty>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D19A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mlcore::Genre>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::LocalizedSearchQuery::_perform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::__value_func[abi:ne200100](v6, a3);
  mlcore::LocalizedSearchQuery::_performWeightedSearch(a1, v5);
}

void sub_1D58FDA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::~__value_func[abi:ne200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void mlcore::LocalizedSearchQuery::_performWeightedSearch(uint64_t a1, std::exception **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = (*a2)[3].__vftable;
  v15 = (*a2)[2].__vftable;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->~exception_0, 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v4 = v2[6].__vftable;
  v5 = v4->~exception_0;
  v14 = v4->~exception;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = atomic_load((a1 + 88));
  if ((v6 & 1) == 0)
  {
    v7 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8[1], 1uLL, memory_order_relaxed);
    }

    v9 = v7[3].__vftable;
    v17[0] = v7[2];
    v17[1].__vftable = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->~exception_0, 1uLL, memory_order_relaxed);
    }

    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8[1], 1uLL, memory_order_relaxed);
    }

    mlcore::EntityRevisionController::latestRevisionNumber(v17);
  }

  what = v15[2].what;
  v11 = v15[3].~exception;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(what + 19);
  v13 = *(what + 20);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v12 + 399) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(v12 + 376), *(v12 + 384));
  }

  else
  {
    v16 = *(v12 + 376);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  operator new();
}

void sub_1D5900A98()
{
  std::mutex::unlock(v0);
  JUMPOUT(0x1D59015F8);
}

void sub_1D5900AAC()
{
  __cxa_free_exception(v0);
  __cxa_end_catch();
  JUMPOUT(0x1D590151CLL);
}

void sub_1D5900AE0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1D59015E4);
}

void sub_1D5900AF8(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1D59015E4);
}

void sub_1D5900C0C()
{
  std::__shared_weak_count::~__shared_weak_count(v0);
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::~__hash_table(v1 - 256);
  JUMPOUT(0x1D590155CLL);
}

void sub_1D5900C28()
{
  mlcore::MediaError::~MediaError((v1 - 256));
  std::__shared_weak_count::~__shared_weak_count(v0);
  operator delete(v2);
  mlcore::MediaError::~MediaError(&STACK[0x300]);
  JUMPOUT(0x1D590155CLL);
}

void sub_1D5900C54()
{
  if (*(v0 - 233) < 0)
  {
    operator delete(*(v0 - 256));
  }

  JUMPOUT(0x1D590155CLL);
}

void sub_1D5900D44(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::create<std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long>(std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long &&)::{lambda(mlcore::LocalizedSearchQuery::SearchWeightContext*)#1}::operator()((v3 - 256), v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x1D59015E4);
}

void sub_1D5900D60()
{
  __cxa_end_catch();
  std::mutex::unlock(v0);
  JUMPOUT(0x1D59015F8);
}

void sub_1D5900D7C()
{
  MEMORY[0x1DA6EDD40](v1, 0x10A0C4090A7D76FLL);
  std::mutex::unlock(v0);
  JUMPOUT(0x1D59015F8);
}

void sub_1D5900DA4()
{
  if (!v0)
  {
    JUMPOUT(0x1D5901604);
  }

  JUMPOUT(0x1D5901600);
}

void sub_1D5900DAC()
{
  STACK[0x2A0] = v1;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A0]);
  if (*(v2 - 233) < 0)
  {
    operator delete(*(v2 - 256));
  }

  std::__shared_weak_count::~__shared_weak_count(v0);
  operator delete(v3);
  JUMPOUT(0x1D5901604);
}

void sub_1D5900DFC()
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  std::__shared_weak_count::~__shared_weak_count(v0);
  operator delete(v2);
  if (!*(v1 - 248))
  {
    JUMPOUT(0x1D5901604);
  }

  JUMPOUT(0x1D5901600);
}

void sub_1D5900E80()
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    v1 = STACK[0x300];
    JUMPOUT(0x1D5900ED8);
  }

  std::__shared_weak_count::~__shared_weak_count(v0);
  operator delete(v2);
  JUMPOUT(0x1D5901604);
}

void sub_1D5900F3C()
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  JUMPOUT(0x1D59015F0);
}

void sub_1D5900F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::~__hash_table(v40 - 256);
  JUMPOUT(0x1D590155CLL);
}

void sub_1D5900F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  mlcore::MediaError::~MediaError(&STACK[0x300]);
  JUMPOUT(0x1D590155CLL);
}

void sub_1D5900F98()
{
  v1 = *(v0 - 248);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (!STACK[0x308])
  {
    JUMPOUT(0x1D5901568);
  }

  JUMPOUT(0x1D5901564);
}

void sub_1D5900FCC()
{
  if (*(v1 - 233) < 0)
  {
    operator delete(*(v1 - 256));
  }

  if (!v0)
  {
    JUMPOUT(0x1D5901604);
  }

  JUMPOUT(0x1D5901600);
}

void sub_1D5900FEC()
{
  std::__shared_weak_count::~__shared_weak_count(v0);
  operator delete(v1);
  JUMPOUT(0x1D59015BCLL);
}

void sub_1D5901010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  std::__shared_weak_count::~__shared_weak_count(v60);
  operator delete(v62);
  std::unique_ptr<std::vector<mlcore::Section>>::~unique_ptr[abi:ne200100](&a56);
  if (a60)
  {
    JUMPOUT(0x1D59013E4);
  }

  std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::~__hash_table(v61 - 256);
  JUMPOUT(0x1D590155CLL);
}

void sub_1D5901418()
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  if (!v1)
  {
    JUMPOUT(0x1D59014ACLL);
  }

  JUMPOUT(0x1D59014A4);
}

void sub_1D590145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  if (STACK[0x3F0])
  {
    operator delete(STACK[0x3F0]);
  }

  if (a33)
  {
    JUMPOUT(0x1D5901558);
  }

  JUMPOUT(0x1D590155CLL);
}

void sub_1D5901518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  std::__function::__value_func<void ()(long long,unsigned long,int,BOOL &)>::~__value_func[abi:ne200100](&STACK[0x3D0]);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  mlcore::SQLRenderer::~SQLRenderer((v65 - 256));
  std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  STACK[0x3D0] = &a62;
  std::vector<mediaplatform::SQLCompoundSelectStatement::CompoundFragment>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3D0]);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if (STACK[0x208])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x208]);
  }

  STACK[0x200] = &STACK[0x218];
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>>>::~__hash_table(&STACK[0x230]);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>>>::~__hash_table(&STACK[0x3A0]);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>>>::~__hash_table(&STACK[0x2A0]);
  STACK[0x2A0] = &STACK[0x2D0];
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A0]);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (STACK[0x278])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x278]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(a1);
}

void sub_1D59015EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  std::__function::__value_func<void ()(long long,std::string,BOOL &)>::~__value_func[abi:ne200100](&STACK[0x3D0]);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (STACK[0x220])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x220]);
  }

  JUMPOUT(0x1D59015A0);
}

void sub_1D590161C()
{
  if (STACK[0x308])
  {
    JUMPOUT(0x1D5901628);
  }

  JUMPOUT(0x1D590162CLL);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::QueryResult>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(long long,std::string,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1D59018A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v29);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>>>::__emplace_unique_key_args<std::shared_ptr<mlcore::LocalizedSearchScope>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<mlcore::LocalizedSearchScope> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v18 = *a2;
  v19 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(&v18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_30;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_30:
    operator new();
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
      goto LABEL_30;
    }

LABEL_29:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  v13 = v11[2];
  v14 = v11[3];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 8);
  v18 = *a2;
  v19 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(v13, &v18);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v16)
  {
    goto LABEL_29;
  }

  return v11;
}

void sub_1D5901DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>>>::find<std::shared_ptr<mlcore::LocalizedSearchScope>>(void *a1, uint64_t a2)
{
  v4 = std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>::operator()[abi:ne200100](*a2, *(a2 + 8));
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
    if (v6 == v12)
    {
      if (std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>::operator()[abi:ne200100](i[2], i[3], a2))
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

void std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::DatabaseParameterBase>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>>>::__emplace_unique_key_args<std::shared_ptr<mlcore::LocalizedSearchScope>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<mlcore::LocalizedSearchScope> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>::operator()[abi:ne200100](*a2, *(a2 + 8));
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
    operator new();
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

  if (!std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>::operator()[abi:ne200100](v11[2], v11[3], a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>>>::__emplace_unique_key_args<std::shared_ptr<mlcore::LocalizedSearchScope>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<mlcore::LocalizedSearchScope> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v18 = *a2;
  v19 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(&v18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_30;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_30:
    operator new();
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
      goto LABEL_30;
    }

LABEL_29:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  v13 = v11[2];
  v14 = v11[3];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 8);
  v18 = *a2;
  v19 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(v13, &v18);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v16)
  {
    goto LABEL_29;
  }

  return v11;
}

void sub_1D5902940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<int,mlcore::ModelPropertyBase *>>::__assign_with_size[abi:ne200100]<std::pair<int,mlcore::ModelPropertyBase *> const*,std::pair<int,mlcore::ModelPropertyBase *> const*>(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

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

    if (!(v10 >> 60))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 8);
      v5 += 16;
      result += 16;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5 + 8);
        v5 += 16;
        result += 16;
      }

      while (v5 != v12);
    }

    while (v12 != a3)
    {
      v13 = *v12++;
      *v11 = v13;
      v11 += 16;
    }

    *(a1 + 8) = v11;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(long long,unsigned long,int,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::__emplace_unique_key_args<mlcore::LocalizedSearchScope *,std::piecewise_construct_t const&,std::tuple<mlcore::LocalizedSearchScope *&&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::__unordered_map_hasher<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::hash<mlcore::EntityClass *>,std::equal_to<mlcore::EntityClass *>,true>,std::__unordered_map_equal<mlcore::EntityClass *,std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>,std::equal_to<mlcore::EntityClass *>,std::hash<mlcore::EntityClass *>,true>,std::allocator<std::__hash_value_type<mlcore::EntityClass *,std::vector<mlcore::ModelPropertyBase *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__alloc_func<mediaplatform::DatabaseConnectionPool::_checkoutConnection(BOOL)::$_0,std::allocator<mediaplatform::DatabaseConnectionPool::_checkoutConnection(BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100]((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t mlcore::LocalizedSearchQueryResult::LocalizedSearchQueryResult(uint64_t a1, const mlcore::MediaError *a2)
{
  mlcore::MediaError::MediaError(&v4, a2);
  *a1 = &unk_1F50D7A10;
  mlcore::MediaError::MediaError((a1 + 8), &v4);
  v4.__vftable = &unk_1F50D85C8;
  v5 = &unk_1F50D85F8;
  if (v9 < 0)
  {
    operator delete(v8[8].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(v8);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  std::exception::~exception(&v4);
  *a1 = &unk_1F50D3F10;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  return a1;
}

void sub_1D5903100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlcore::MediaError::~MediaError(va);
  _Unwind_Resume(a1);
}

void mlcore::LocalizedSearchQueryResult::~LocalizedSearchQueryResult(std::exception *this)
{
  this->__vftable = &unk_1F50D3F10;
  v2 = this + 20;
  v3 = this + 25;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::~__hash_table(v2);
  mlcore::QueryResult::~QueryResult(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  this->__vftable = &unk_1F50D3F10;
  v2 = this + 20;
  v3 = this + 25;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::~__hash_table(v2);

  mlcore::QueryResult::~QueryResult(this);
}

void std::__shared_ptr_emplace<mlcore::LocalizedSearchQueryResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D12A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t std::__shared_ptr_pointer<std::vector<mlcore::Section> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D5AFEB1CLL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<mlcore::Section> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<mlcore::MultiEntityQueryResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D13F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::LocalizedSearchQueryResult::LocalizedSearchQueryResult(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v18, "");
  mlcore::MediaError::MediaError(&v20, 0, v18);
  *a1 = &unk_1F50D7A10;
  mlcore::MediaError::MediaError((a1 + 8), &v20);
  v20.__vftable = &unk_1F50D85C8;
  v21 = &unk_1F50D85F8;
  if (v25 < 0)
  {
    operator delete(v24[8].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(v24);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  std::exception::~exception(&v20);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  *a1 = &unk_1F50D3F10;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__rehash<true>(a1 + 160, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v7 = i[2];
    v8 = 0x9DDFEA08EB382D69 * ((8 * (v7 & 0x1FFFFFFF) + 8) ^ HIDWORD(v7));
    v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ (v8 >> 47) ^ v8);
    v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
    v11 = *(a1 + 168);
    if (!*&v11)
    {
      goto LABEL_24;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
      if (v10 >= *&v11)
      {
        v13 = v10 % *&v11;
      }
    }

    else
    {
      v13 = v10 & (*&v11 - 1);
    }

    v14 = *(*(a1 + 160) + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        break;
      }

      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_24;
      }

LABEL_23:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    if (v15[2] != v7)
    {
      goto LABEL_23;
    }
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(a1 + 200, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D59037D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::__hash_table<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::__unordered_map_hasher<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::hash<mlcore::LocalizedSearchScope *>,std::equal_to<mlcore::LocalizedSearchScope *>,true>,std::__unordered_map_equal<mlcore::LocalizedSearchScope *,std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>,std::equal_to<mlcore::LocalizedSearchScope *>,std::hash<mlcore::LocalizedSearchScope *>,true>,std::allocator<std::__hash_value_type<mlcore::LocalizedSearchScope *,std::shared_ptr<mlcore::EntityQueryResult>>>>::~__hash_table(v17);
  mlcore::QueryResult::~QueryResult(v16);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<mlcore::Predicate>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (result = a4; a2 != a3; result += 2)
  {
    v5 = a2[1];
    *result = *a2;
    result[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 2;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(long long,unsigned long,int,BOOL &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_1,std::allocator<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_1>,void ()(long long,unsigned long,int,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore20LocalizedSearchQuery22_performWeightedSearchENSt3__110shared_ptrINS_11TransactionEEENS1_8functionIFvNS2_INS_11QueryResultEEEEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_1,std::allocator<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_1>,void ()(long long,unsigned long,int,BOOL &)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, _BYTE *a5)
{
  v44 = *a2;
  v6 = *a3;
  v43 = *a4;
  v7 = *(a1 + 8);
  v8 = atomic_load((v7 + 88));
  *a5 = v8 & 1;
  v9 = *(**(a1 + 16) + 16 * v6);
  v61 = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 24);
  v45 = &v61;
  v11 = std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>>>::__emplace_unique_key_args<std::shared_ptr<mlcore::LocalizedSearchScope>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<mlcore::LocalizedSearchScope> const&>,std::tuple<>>(v10, &v61);
  v13 = *(v7 + 56);
  v12 = *(v7 + 64);
  if (v12 != v13)
  {
    v14 = 0;
    v15 = v11[4];
    v16 = *v61;
    do
    {
      if ((v15 >> v14))
      {
        v17 = *(v13 + 16 * v14);
        v60 = v17;
        if (*(&v17 + 1))
        {
          atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (*(v17 + 56) != *(v17 + 48))
        {
          v18 = *(a1 + 32);
          v45 = &v60;
          v19 = std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>>>::__emplace_unique_key_args<std::shared_ptr<mlcore::LocalizedSearchScope>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<mlcore::LocalizedSearchScope> const&>,std::tuple<>>(v18, &v60)[4];
          v21 = *(v19 + 8);
          v20 = *(v19 + 16);
          if (v21 >= v20)
          {
            v23 = (v21 - *v19) >> 3;
            if ((v23 + 1) >> 61)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            v24 = v20 - *v19;
            v25 = v24 >> 2;
            if (v24 >> 2 <= (v23 + 1))
            {
              v25 = v23 + 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              v26 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            if (v26)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v26);
            }

            *(8 * v23) = v16;
            v22 = 8 * v23 + 8;
            v27 = *(v19 + 8) - *v19;
            v28 = (8 * v23 - v27);
            memcpy(v28, *v19, v27);
            v29 = *v19;
            *v19 = v28;
            *(v19 + 8) = v22;
            *(v19 + 16) = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v21 = v16;
            v22 = (v21 + 1);
          }

          *(v19 + 8) = v22;
        }

        v30 = *(a1 + 40);
        v45 = &v60;
        v31 = std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>>>::__emplace_unique_key_args<std::shared_ptr<mlcore::LocalizedSearchScope>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<mlcore::LocalizedSearchScope> const&>,std::tuple<>>(v30, &v60);
        v32 = *(v7 + 80);
        if (!v32)
        {
          v32 = -1;
        }

        if (0x84BDA12F684BDA13 * ((*(v31[4] + 8) - *v31[4]) >> 3) < v32)
        {
          v47 = 0u;
          v46 = 0u;
          v49 = 0u;
          v50 = 0u;
          v48 = 1065353216;
          v51 = 1065353216;
          v52 = 0u;
          v53 = 0u;
          memset(v55, 0, sizeof(v55));
          v54 = 1065353216;
          v56 = 1065353216;
          memset(v57, 0, sizeof(v57));
          v58 = 1065353216;
          v45 = &unk_1F50D7378;
          v59 = &unk_1F50D73A0;
          v62 = (*(*v16 + 120))(v16);
          v63 = &v62;
          v33 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v57, v62);
          *(v33 + 3) = v44;
          v62 = mlcore::LocalizedSearchPropertyWeight(v33);
          v63 = &v62;
          *(std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(v55, v62) + 6) = v43;
          v34 = *(a1 + 40);
          v63 = &v60;
          v35 = std::__hash_table<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::PropertyCache>>>>>::__emplace_unique_key_args<std::shared_ptr<mlcore::LocalizedSearchScope>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<mlcore::LocalizedSearchScope> const&>,std::tuple<>>(v34, &v60);
          v36 = v35[4];
          v37 = *(v36 + 8);
          if (v37 >= *(v36 + 16))
          {
            v38 = std::vector<mlcore::PropertyCache>::__emplace_back_slow_path<mlcore::PropertyCache const&>(v35[4], &v45);
          }

          else
          {
            mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::PropertyCacheBase(*(v36 + 8), &v45);
            *v37 = &unk_1F50D7378;
            v37[26] = &unk_1F50D73A0;
            v38 = (v37 + 27);
            *(v36 + 8) = v37 + 27;
          }

          *(v36 + 8) = v38;
          mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v45);
        }

        if (*(&v60 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60 + 1));
        }

        v13 = *(v7 + 56);
        v12 = *(v7 + 64);
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 4);
  }

  v39 = *(v7 + 80);
  if (v39 && (*a5 & 1) == 0)
  {
    *a5 = 1;
    v40 = (*(a1 + 40) + 16);
    while (1)
    {
      v40 = *v40;
      if (!v40)
      {
        break;
      }

      if (0x84BDA12F684BDA13 * ((*(v40[4] + 8) - *v40[4]) >> 3) < v39)
      {
        v41 = atomic_load((v7 + 88));
        *a5 = v41 & 1;
        break;
      }
    }
  }

  if (*(&v61 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v61 + 1));
  }
}

void sub_1D5903DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 120);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::LocalizedSearchPropertyWeight(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::LocalizedSearchPropertyWeight(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::LocalizedSearchPropertyWeight(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::LocalizedSearchPropertyWeight(void)::$_0 &&>>);
  }

  return mlcore::LocalizedSearchPropertyWeight(void)::property;
}

void sub_1D5903FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_1,std::allocator<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_1>,void ()(long long,unsigned long,int,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F50D2EA8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mediaplatform::SQLOrderingTerm>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mediaplatform::SQLCompoundSelectStatement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mediaplatform::SQLAliasExpression>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

BOOL std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(void *a1, void *a2)
{
  v2 = *a2;
  if (*a1 != **a2)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a1[2];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v8 = v2[1];
  v7 = v2[2];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5 == v8)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    if (v5 && v8)
    {
      (*(*v5 + 40))(v18);
      (*(*v8 + 40))(__p, v8);
      v9 = v19;
      if ((v19 & 0x80u) == 0)
      {
        v10 = v19;
      }

      else
      {
        v10 = v18[1];
      }

      v11 = v17;
      v12 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v11 = __p[1];
      }

      if (v10 == v11)
      {
        if ((v19 & 0x80u) == 0)
        {
          v13 = v18;
        }

        else
        {
          v13 = v18[0];
        }

        if ((v17 & 0x80u) == 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        v3 = memcmp(v13, v14, v10) == 0;
        if ((v12 & 0x80000000) == 0)
        {
LABEL_27:
          if ((v9 & 0x80) != 0)
          {
            operator delete(v18[0]);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v3 = 0;
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }
      }

      operator delete(__p[0]);
      v9 = v19;
      goto LABEL_27;
    }
  }

LABEL_29:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_1D590442C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if (!v18)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v18)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  goto LABEL_5;
}

unint64_t std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = v2[2];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    (*(*v3 + 40))(__p);
    v5 = std::__string_hash<char>::operator()[abi:ne200100](__p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = **a1;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5 ^ v6;
}

void sub_1D5904528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<mlcore::PropertyCache>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D0E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

unint64_t std::__unordered_map_hasher<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>::operator()[abi:ne200100](uint64_t *a1, std::__shared_weak_count *a2)
{
  v5[0] = a1;
  v5[1] = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(v5);
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v3;
}

void sub_1D590463C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__unordered_map_equal<std::shared_ptr<mlcore::LocalizedSearchScope>,std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::hash<std::shared_ptr<mlcore::LocalizedSearchScope>>,true>::operator()[abi:ne200100](void *a1, std::__shared_weak_count *a2, void *a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  v7[0] = *a3;
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = std::equal_to<std::shared_ptr<mlcore::LocalizedSearchScope>>::operator()(a1, v7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  return v5;
}

void sub_1D59046D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,long long>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<mlcore::LocalizedSearchScope>,std::shared_ptr<std::vector<mlcore::EntityClass *>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__alloc_func<mediaplatform::DatabaseConnectionPool::_checkoutConnection(BOOL)::$_0,std::allocator<mediaplatform::DatabaseConnectionPool::_checkoutConnection(BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100](v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::vector<mlcore::EntityClass *>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<mlcore::EntityClass *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D0D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_mutex()
{
  {
    operator new();
  }

  return mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_mutex(void)::mutex;
}

uint64_t std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (v10[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_objects()
{
  {
    operator new();
  }

  return mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_objects(void)::objects;
}

void mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::create<std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long>(std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long &&)::{lambda(mlcore::LocalizedSearchQuery::SearchWeightContext*)#1}::operator()(int *a1, uint64_t a2)
{
  v4 = mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_mutex();
  std::mutex::lock(v4);
  v5 = mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v5, *a1);
  if (a2)
  {
    v6 = std::__hash_table<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>>>::~__hash_table(a2);
    MEMORY[0x1DA6EDD40](v6, 0x10A0C4090A7D76FLL);
  }

  std::mutex::unlock(v4);
}

uint64_t std::__shared_ptr_pointer<mlcore::LocalizedSearchQuery::SearchWeightContext *,mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int> mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::create<std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long>(std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long &&)::{lambda(mlcore::LocalizedSearchQuery::SearchWeightContext *)#1},std::allocator<mlcore::LocalizedSearchQuery::SearchWeightContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12SharedObjectINS_20LocalizedSearchQuery19SearchWeightContextEiE6createIJRNSt3__113unordered_mapIxN13mediaplatform13SearchMatcher12ReasonResultENS5_4hashIxEENS5_8equal_toIxEENS5_9allocatorINS5_4pairIKxS9_EEEEEEmEEES3_DpOT_EUlPS2_E_"))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<mlcore::LocalizedSearchQuery::SearchWeightContext *,mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int> mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::create<std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long>(std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long &&)::{lambda(mlcore::LocalizedSearchQuery::SearchWeightContext *)#1},std::allocator<mlcore::LocalizedSearchQuery::SearchWeightContext>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_mutex();
  std::mutex::lock(v3);
  v4 = mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_objects();
  std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::__erase_unique<int>(v4, *(a1 + 32));
  if (v2)
  {
    v5 = std::__hash_table<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>>>::~__hash_table(v2);
    MEMORY[0x1DA6EDD40](v5, 0x10A0C4090A7D76FLL);
  }

  std::mutex::unlock(v3);
}

void std::__shared_ptr_pointer<mlcore::LocalizedSearchQuery::SearchWeightContext *,mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int> mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::create<std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long>(std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult> &,unsigned long &&)::{lambda(mlcore::LocalizedSearchQuery::SearchWeightContext *)#1},std::allocator<mlcore::LocalizedSearchQuery::SearchWeightContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unordered_set<unsigned long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, i[2]);
  }

  return a1;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(long long,std::string,BOOL &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double mediaplatform::ColumnResultsFunctor::operator()<std::string>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  *(a1 + 2) = v4 + 1;
  v5 = sqlite3_column_text(*(v3 + 24), v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v8, v6);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t std::__function::__func<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0,std::allocator<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0>,void ()(long long,std::string,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore20LocalizedSearchQuery22_performWeightedSearchENSt3__110shared_ptrINS_11TransactionEEENS1_8functionIFvNS2_INS_11QueryResultEEEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0,std::allocator<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0>,void ()(long long,std::string,BOOL &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *__p = *a3;
  v21 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  mediaplatform::SearchMatcher::reasons(**(a1 + 8), __p, &v22);
  if (!v22)
  {
    goto LABEL_30;
  }

  v5 = *(a1 + 16);
  v6 = (*v5)[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(**v5 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (v10[2] != v4)
  {
    goto LABEL_18;
  }

  *(v10 + 6) = v22;
  if (v10 + 3 != &v22)
  {
    *(v10 + 16) = v24;
    v12 = v23[2];
    v13 = v10[5];
    if (!v13)
    {
      goto LABEL_27;
    }

    for (i = 0; i != v13; ++i)
    {
      *(v10[4] + 8 * i) = 0;
    }

    v15 = v10[6];
    v10[6] = 0;
    v10[7] = 0;
    if (v15)
    {
      while (v12)
      {
        v16 = v12[2];
        v15[2] = v16;
        v17 = *v15;
        v15[1] = v16;
        inserted = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__node_insert_multi_prepare((v10 + 4), v16, v15 + 2);
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__node_insert_multi_perform(v10 + 4, v15, inserted);
        v12 = *v12;
        v15 = v17;
        if (!v17)
        {
          goto LABEL_27;
        }
      }

      do
      {
        v19 = *v15;
        operator delete(v15);
        v15 = v19;
      }

      while (v19);
    }

    else
    {
LABEL_27:
      if (v12)
      {
        operator new();
      }
    }
  }

LABEL_30:
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v23);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D5905578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,mediaplatform::SearchMatcher::ReasonResult>,void *>>>>::~unique_ptr[abi:ne200100](&a21);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
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
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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

__n128 std::__function::__func<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0,std::allocator<mlcore::LocalizedSearchQuery::_performWeightedSearch(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0>,void ()(long long,std::string,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F50D2F00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mediaplatform::SearchMatcher>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::LocalizedSearchQuery::~LocalizedSearchQuery(void **this)
{
  *this = &unk_1F50D45D0;
  v3 = this + 7;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F50D3CA8;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D45D0;
  v3 = this + 7;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F50D3CA8;
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *mlcore::LocalizedSearchScope::LocalizedSearchScope(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a3;
  v5 = a3[1];
  *a1 = a2;
  a1[1] = v6;
  a1[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>((a1 + 3), *a4, a4[1], (a4[1] - *a4) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}

void sub_1D5905D28(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::LocalizedSearchScope::LocalizedSearchScope(uint64_t a1, uint64_t *a2)
{
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(a1 + 48, *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

void sub_1D5905D94(_Unwind_Exception *exception_object)
{
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::LocalizedSearchScope::predicate@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

BOOL mlcore::LocalizedSearchScope::operator==(void *a1, void *a2)
{
  v3 = a2[6];
  v2 = a2[7];
  v4 = a1[6];
  if (v2 - v3 != a1[7] - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    v3 += 16;
    v4 += 2;
  }

  if (*a2 != *a1)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = a2[2];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  v10 = a1[2];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v7 == v9 && (v11 = a2[3], v12 = a2[4] - v11, v13 = a1[3], v12 == a1[4] - v13) && memcmp(v11, v13, v12) == 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

uint64_t mlcore::LocalizedSearchQuery::LocalizedSearchQuery(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F50D45D0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v3;
  }

  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return a1;
}

void sub_1D5905FA0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::LocalizedSearchQuery::setScopes(uint64_t *a1, uint64_t **a2)
{
  v2 = (a1 + 7);
  if (a1 + 7 != a2)
  {
    v5 = *a2;
    v4 = a2[1];
    v6 = v4 - *a2;
    v7 = a1[9];
    v8 = a1[7];
    if (v7 - v8 < v6)
    {
      v9 = v6 >> 4;
      if (v8)
      {
        std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::clear[abi:ne200100](a1 + 7);
        operator delete(*v2);
        v7 = 0;
        *v2 = 0;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
      }

      if (!(v9 >> 60))
      {
        v10 = v7 >> 3;
        if (v7 >> 3 <= v9)
        {
          v10 = v9;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::vector<std::shared_ptr<mlcore::Predicate>>::__vallocate[abi:ne200100](v2, v11);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = a1[8] - v8;
    if (v12 >= v6)
    {
      v13 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *>(*a2, a2[1], v8);
      for (i = a1[8]; i != v13; i -= 2)
      {
        v15 = *(i - 1);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      a1[8] = v13;
    }

    else
    {
      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *,std::shared_ptr<mediaplatform::SQLExpression const> *>(v5, (v5 + v12), v8);
      a1[8] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<mlcore::LocalizedSearchScope>>,std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*,std::shared_ptr<mlcore::LocalizedSearchScope>*>(v2, (v5 + v12), v4, a1[8]);
    }
  }
}

uint64_t mlcore::LocalizedSearchQuery::SearchWeightContext::SearchWeightContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult>::unordered_map(a1, a2);
  *(result + 40) = a3;
  return result;
}

{
  result = std::unordered_map<long long,mediaplatform::SearchMatcher::ReasonResult>::unordered_map(a1, a2);
  *(result + 40) = a3;
  return result;
}

void mlcore::LocalizedSearchQueryResult::resultForSearchScope(void *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = a1[25];
  v5 = a1[26];
  if (v4 != v5)
  {
    while (*v4 != *a2)
    {
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_4:
    __assert_rtn("resultForSearchScope", "LocalizedSearchQuery.cpp", 440, "validSearchScopeIter != _searchScopes.end()");
  }

  v6 = a1[21];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = *a2;
  v8 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ (*a2 >> 32));
  v9 = 0x9DDFEA08EB382D69 * ((*a2 >> 32) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = vcnt_s8(v6);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v10;
    if (v10 >= *&v6)
    {
      v12 = v10 % *&v6;
    }
  }

  else
  {
    v12 = v10 & (*&v6 - 1);
  }

  v13 = *(a1[20] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_22:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v10)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_22;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  if (v14[2] != v7)
  {
    goto LABEL_21;
  }

  *a3 = 0;
  a3[1] = 0;
  v17 = v14[3];
  v16 = v14[4];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    v7 = *a2;
  }

  *a3 = v17;
  a3[1] = v16;
  v18 = *(v7 + 3);
  v19 = v7[7];
  v20 = v7[6];
  if (v19 == v20)
  {
    v26 = *(v17 + 256);
    v25 = *(v17 + 264);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *a2;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&v27, v7[3], v7[4], (v7[4] - v7[3]) >> 3);
    (*(*v26 + 16))(v26, &v27, **a2);
    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  else
  {
    do
    {
      v22 = *v20;
      v21 = v20[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(v17 + 256);
      v23 = *(v17 + 264);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __p = 0;
      v31 = 0;
      v32 = 0;
      std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase **,mlcore::ModelPropertyBase **>(&__p, v22[3], v22[4], (v22[4] - v22[3]) >> 3);
      (*(*v24 + 16))(v24, &__p, *v22);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v20 += 2;
    }

    while (v20 != v19);
  }
}

void sub_1D5906444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::DatabaseStatement::descriptionAttributes(mediaplatform::DatabaseStatement *this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  mediaplatform::FormatString<std::string>(&__p, "sql='{0}'", this + 32);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a2, &__p, &v5, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1D5906548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::DatabaseStatement::~DatabaseStatement(mediaplatform::DatabaseStatement *this)
{
  mediaplatform::DatabaseStatement::~DatabaseStatement(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DCEF0;
  v2 = *(this + 3);
  if (v2)
  {
    sqlite3_finalize(v2);
    *(this + 3) = 0;
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

_BYTE *mediaplatform::DatabaseBindParameter::sql@<X0>(uint64_t a1@<X0>, uint64_t (***a2)(void, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    return (**a2)(a2, a1);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "?");
  }
}

void mediaplatform::DatabaseBindParameter::~DatabaseBindParameter(mediaplatform::DatabaseBindParameter *this)
{
  *this = &unk_1F50DCF30;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DCF30;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t mediaplatform::DatabaseParameterList::description@<X0>(mediaplatform::DatabaseParameterList *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "(", 1);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 1;
    while (1)
    {
      v8 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        (*(*v8 + 40))(&__p, v8);
        v9 = (v17 & 0x80u) == 0 ? &__p : __p;
        v10 = (v17 & 0x80u) == 0 ? v17 : v16;
      }

      else
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, ", ", 2);
        (*(*v8 + 40))(&__p, v8);
        v9 = (v17 & 0x80u) == 0 ? &__p : __p;
        v10 = (v17 & 0x80u) == 0 ? v17 : v16;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
      if (v17 < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_20;
      }

LABEL_21:
      v6 = 0;
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_25;
      }
    }

    operator delete(__p);
    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_21;
  }

LABEL_25:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, ")", 1);
  if ((v25 & 0x10) != 0)
  {
    v12 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v12 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v11 = 0;
      a2[23] = 0;
      goto LABEL_38;
    }

    locale = v20[1].__locale_;
    v12 = v20[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, locale, v11);
  }

LABEL_38:
  a2[v11] = 0;
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v26);
}

void sub_1D5906A5C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x1DA6EDCB0](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseParameterList::~DatabaseParameterList(mediaplatform::DatabaseParameterList *this)
{
  *this = &unk_1F50DDA98;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDA98;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t mediaplatform::DatabaseStatement::DatabaseStatement(uint64_t a1, sqlite3 *db, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F50DCEF0;
  *(a1 + 24) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 8));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 16);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = -1;
  if (!db)
  {
    __assert_rtn("DatabaseStatement", "DatabaseStatement.cpp", 25, "connectionHandle");
  }

  ppStmt = 0;
  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = sqlite3_prepare_v2(db, v7, -1, &ppStmt, 0);
  *(a1 + 24) = ppStmt;
  if (v8)
  {
    v17 = sqlite3_errcode(db);
    if ((v17 - 1) > 0x19)
    {
      v10 = 36;
    }

    else
    {
      v10 = *&asc_1D5AFEE50[4 * (v17 - 1)];
    }

    v16 = v10;
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(v14, &v16, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v12 = sqlite3_errmsg(db);
    mediaplatform::FormatString<int,char const*,std::string>(&__p, &v17, &v12, a3);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v15 = __p;
    exception = __cxa_allocate_exception(0x40uLL);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(exception, v14);
  }

  return a1;
}

void sub_1D5906D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::exception a16)
{
  __cxa_free_exception(v17);
  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(&a16);
  if (*(v16 + 55) < 0)
  {
    operator delete(*(v16 + 32));
  }

  v19 = *(v16 + 16);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(a1);
}

void mediaplatform::FormatString<int,char const*,std::string>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a4;
  v4[1] = a3;
  v4[2] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  mediaplatform::FormatImplementation<int,char const*,std::string>("SQLite Error {0}: {1} | {2}", a1, 0, v4);
}

void sub_1D5906E18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::FormatImplementation<int,char const*,std::string>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = a3;
    v11 = a1;
    while (1)
    {
      if (v6 == 123)
      {
        v12 = v11->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v41 = &v11->__r_.__value_.__s.__data_[2];
            v30 = v11->__r_.__value_.__s.__data_[2];
            if ((v30 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v31 = 0;
              v32 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v33 = v32;
                v41 = v32;
                v31 = (v30 & 0xF) + 10 * v31;
                ++v32;
                v35 = *v33;
                v34 = (v33 - 1);
                LOBYTE(v30) = v35;
              }

              while ((v35 - 58) >= 0xFFFFFFF6);
              v41 = (v34 + 2);
              if (*(v32 - 1) == 125)
              {
                mediaplatform::FormatterParameters<0ul,int,char const*,std::string>::formatOptionsAtIndex<int,char const*,std::string>(v31);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mediaplatform::FormatOptions::FormatOptions(&v37, &v41);
          v15 = v41;
          if (*(&v37 + 1))
          {
            if (*(&v37 + 1) == 1)
            {
              v20 = **(a4 + 8);
              v42 = v20;
              if (v20)
              {
                v20 = strlen(v20);
              }

              *v43 = v20;
              *&v43[8] = v37;
              *&v43[24] = v38;
              *&v43[40] = v39;
              v44 = v40;
              v21 = *(&v38 + 1);
              if (*(&v38 + 1) <= v20)
              {
                v21 = v20;
              }

              if (v38)
              {
                v22 = v21;
              }

              else
              {
                v22 = v20;
              }

              mediaplatform::FormatImplementation<int,char const*,std::string>(v41, a2, &v22[v10], a4);
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = a2;
              }

              else
              {
                v23 = a2->__r_.__value_.__r.__words[0];
              }

              mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(&v37, v23 + v10, &v42);
            }

            else
            {
              if (*(&v37 + 1) != 2)
              {
                mediaplatform::FormatterParameters<3ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,int,char const*,std::string>>();
              }

              v16 = *a4;
              v42 = v16;
              *v43 = v37;
              *&v43[16] = v38;
              *&v43[32] = v39;
              *&v43[48] = v40;
              v17 = *(v16 + 23);
              if ((v17 & 0x8000000000000000) != 0)
              {
                v17 = *(v16 + 8);
              }

              v18 = *(&v38 + 1);
              if (*(&v38 + 1) <= v17)
              {
                v18 = v17;
              }

              if (v38)
              {
                v17 = v18;
              }

              mediaplatform::FormatImplementation<int,char const*,std::string>(v41, a2, v17 + v10, a4);
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v19 = a2;
              }

              else
              {
                v19 = a2->__r_.__value_.__r.__words[0];
              }

              mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v37, &v19[v10], &v42);
            }
          }

          else
          {
            mediaplatform::TypeFormatter<int,void>::TypeFormatter(&v42, **(a4 + 16), &v37);
            if (v43[40] == 1 && *(v42 + 48) != 1)
            {
              v24 = 32;
            }

            else
            {
              v24 = 33;
            }

            v25 = v24 - *&v43[32];
            if (*(v42 + 50) == 1 && v25 <= *(v42 + 24))
            {
              v25 = *(v42 + 24);
            }

            v26 = *(&v38 + 1);
            if (*(&v38 + 1) <= v25)
            {
              v26 = v25;
            }

            if (v38)
            {
              v27 = v26;
            }

            else
            {
              v27 = v25;
            }

            mediaplatform::FormatImplementation<int,char const*,std::string>(v15, a2, v27 + v10, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = a2;
            }

            else
            {
              v28 = a2->__r_.__value_.__r.__words[0];
            }

            mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,int>(&v37, &v28[v10], &v42);
          }

          if (v10 != a3)
          {
            mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          }

          goto LABEL_57;
        }

        v9 = 1;
        v11 = (v11 + 1);
      }

      ++v10;
      v41 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, v10, 0);
        if (v10 != a3)
        {
          v13 = *MEMORY[0x1E69E9840];

          mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          return;
        }

LABEL_57:
        v29 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  std::string::resize(a2, a3, 0);
}

void mediaplatform::FormatterParameters<0ul,int,char const*,std::string>::formatOptionsAtIndex<int,char const*,std::string>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul,char const*,std::string>::formatOptionsAtIndex<int,char const*,std::string>(a1);
}

void mediaplatform::FormatterParameters<3ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,int,char const*,std::string>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatterParameters<1ul,char const*,std::string>::formatOptionsAtIndex<int,char const*,std::string>(uint64_t a1)
{
  if (a1 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<2ul,std::string>::formatOptionsAtIndex<int,char const*,std::string>(a1);
}

void mediaplatform::FormatterParameters<2ul,std::string>::formatOptionsAtIndex<int,char const*,std::string>(uint64_t a1)
{
  if (a1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<3ul>::formatOptionsAtIndex<int,char const*,std::string>();
}

void mediaplatform::FormatterParameters<3ul>::formatOptionsAtIndex<int,char const*,std::string>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

uint64_t mediaplatform::DatabaseStatement::DatabaseStatement(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F50DCEF0;
  *(a1 + 24) = *(a2 + 24);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  *(a2 + 24) = 0;
  return a1;
}

void sub_1D59074F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}