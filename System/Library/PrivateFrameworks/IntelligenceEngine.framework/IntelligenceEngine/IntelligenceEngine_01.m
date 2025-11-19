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

YAML::detail::iterator_value *YAML::detail::iterator_value::iterator_value(YAML::detail::iterator_value *this, const YAML::Node *a2)
{
  *this = *a2;
  v4 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 6) = *(a2 + 6);
  v12[0] = 0;
  *v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8[0] = 0;
  *__p = 0u;
  v10 = 0u;
  v11 = 0u;
  std::pair<YAML::Node,YAML::Node>::pair[abi:ne200100]<YAML::Node,YAML::Node,0>(this + 56, v12, v8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SBYTE7(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return this;
}

void sub_254C9B638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  YAML::Node::~Node(&a9);
  YAML::Node::~Node(&a16);
  YAML::Node::~Node(v16);
  _Unwind_Resume(a1);
}

uint64_t std::pair<YAML::Node,YAML::Node>::pair[abi:ne200100]<YAML::Node,YAML::Node,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 8);
    v6->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v9 = *(a3 + 8);
    *(a1 + 80) = *(a3 + 24);
    *(a1 + 64) = v9;
  }

  v10 = *(a3 + 40);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 96) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = *(a3 + 48);
  return a1;
}

YAML::detail::iterator_value *YAML::detail::iterator_value::iterator_value(YAML::detail::iterator_value *this, const YAML::Node *a2, const YAML::Node *a3)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::pair<YAML::Node,YAML::Node>::pair[abi:ne200100]<true,0>(this + 56, a2, a3);
  return this;
}

uint64_t std::pair<YAML::Node,YAML::Node>::pair[abi:ne200100]<true,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 8);
    v6->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v9 = *(a3 + 8);
    *(a1 + 80) = *(a3 + 24);
    *(a1 + 64) = v9;
  }

  v10 = *(a3 + 40);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 96) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = *(a3 + 48);
  return a1;
}

uint64_t std::__tree<std::string>::find<std::string>(uint64_t a1, const void **a2)
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

void YAML::as_if<std::string,void>::operator()(YAML::Node **a1@<X0>, std::string *a2@<X8>)
{
  if (YAML::Node::Type(*a1) != 2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v10 = YAML::Node::Mark(*a1);
    v11 = v9;
    YAML::BadConversion::BadConversion(exception, &v10);
    *exception = &unk_286719188;
  }

  v4 = YAML::Node::Scalar(*a1);
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = v4[1];

    std::string::__init_copy_ctor_external(a2, v6, v7);
  }

  else
  {
    v5 = *v4;
    a2->__r_.__value_.__r.__words[2] = v4[2];
    *&a2->__r_.__value_.__l.__data_ = v5;
  }
}

uint64_t YAML::Node::Type(YAML::Node *this)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, *(this + 1), *(this + 2));
    }

    else
    {
      v6 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v6);
  }

  v2 = *(this + 6);
  if (!v2)
  {
    return 1;
  }

  v3 = **v2;
  if (*v3 == 1)
  {
    return *(v3 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t *YAML::Node::Scalar(YAML::Node *this)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, *(this + 1), *(this + 2));
    }

    else
    {
      v5 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v5);
  }

  v2 = *(this + 6);
  if (v2)
  {
    return (**v2 + 56);
  }

  return YAML::detail::node_data::empty_scalar(this);
}

void *YAML::BadConversion::BadConversion(void *a1, _DWORD *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "bad conversion");
  YAML::Exception::Exception(a1, a2, __p);
  *a1 = &unk_28671C2B8;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_28671C378;
  return a1;
}

void sub_254C9BCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::TypedBadConversion<std::string>::~TypedBadConversion(std::runtime_error *a1)
{
  YAML::Exception::~Exception(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t YAML::detail::node_iterator_base<YAML::detail::node>::operator++(uint64_t result)
{
  if (*result == 2)
  {
    v1 = *(result + 24);
    v2 = (*(result + 16) + 16);
    if (v1 != v2)
    {
      while (****v2 != 1 || (***v2[1] & 1) == 0)
      {
        v2 += 2;
        if (v2 == v1)
        {
          v2 = *(result + 24);
          break;
        }
      }
    }

    *(result + 16) = v2;
  }

  else if (*result == 1)
  {
    *(result + 8) += 8;
  }

  return result;
}

std::__shared_weak_count *YAML::detail::node::get<std::string>(uint64_t **a1, const void **a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = YAML::detail::node_ref::get<std::string>(v3, a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_254C9BDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *YAML::detail::node_ref::get<std::string>(uint64_t *a1, const void **a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = YAML::detail::node_data::get<std::string>(v3, a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_254C9BE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *YAML::detail::node_data::get<std::string>(uint64_t a1, const void **a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3 < 2)
  {
    return 0;
  }

  if (v3 == 3)
  {
    result = a3[1];
    if (!result)
    {
      return result;
    }

    atomic_fetch_add_explicit(&result->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](result);
    return 0;
  }

  if (v3 == 2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    YAML::BadSubscript::BadSubscript<std::string>(exception, a2);
  }

  v7 = *(a1 + 112);
  if (v7 == *(a1 + 120))
  {
    return 0;
  }

  while (1)
  {
    v8 = *v7;
    v9 = a3[1];
    v13 = *a3;
    v14 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = YAML::detail::node::equals<std::string>(v8, a2, &v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v10)
    {
      break;
    }

    v7 += 2;
    if (v7 == *(a1 + 120))
    {
      return 0;
    }
  }

  return v7[1];
}

BOOL YAML::detail::node::equals<std::string>(uint64_t a1, const void **a2, uint64_t *a3)
{
  memset(&v22, 0, sizeof(v22));
  v4 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    __p = 0;
    v17 = 0;
    v18 = 0;
    v19 = v4;
    v20 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    __p = 0;
    v17 = 0;
    v18 = 0;
    v19 = v4;
    v20 = 0;
  }

  v15[0] = 1;
  v21 = a1;
  v6 = YAML::convert<std::string>::decode(v15, &v22);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if (!v6)
  {
    goto LABEL_25;
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if (v9 < 0)
  {
    v9 = a2[1];
  }

  if (size == v9)
  {
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v22;
    }

    else
    {
      v11 = v22.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    v13 = memcmp(v11, v12, size) == 0;
    if (v7 < 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_25:
    v13 = 0;
    if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_26:
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  return v13;
}

void sub_254C9C0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  YAML::Node::~Node(&a9);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *YAML::BadSubscript::BadSubscript<std::string>(void *a1, uint64_t a2)
{
  v6 = -1;
  v7 = -1;
  YAML::ErrorMsg::BAD_SUBSCRIPT_WITH_KEY(a2);
  YAML::Exception::Exception(a1, &v6, &__p);
  *a1 = &unk_28671C2B8;
  if (v5 < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_28671C538;
  return a1;
}

void sub_254C9C1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::ErrorMsg::BAD_SUBSCRIPT_WITH_KEY(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "operator[] call on a scalar", 27);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " (key: ", 8);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 2);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v15);
}

void sub_254C9C39C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

BOOL YAML::convert<std::string>::decode(YAML::Node *a1, std::string *a2)
{
  v4 = YAML::Node::Type(a1);
  if (v4 == 2)
  {
    v5 = YAML::Node::Scalar(a1);
    std::string::operator=(a2, v5);
  }

  return v4 == 2;
}

uint64_t streamable_to_string<char [14],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254C9C5A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [6],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254C9C74C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void YAML::Node::operator[]<char [5]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [5],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254C9C918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Node::operator[]<char [12]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [12],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254C9CB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Node::operator[]<char [8]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [8],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254C9CD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ValidateFlowTest_Step(siri::intelligence *this, const YAML::Node *a2, siri::intelligence::ValidationResults *a3)
{
  v3 = this;
  v231 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF4028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4028))
  {
    std::string::basic_string[abi:ne200100]<0>(v217, "setVariables");
    std::string::basic_string[abi:ne200100]<0>(&v217[24], "startFrom");
    std::string::basic_string[abi:ne200100]<0>(&v219, "sendIntent");
    std::string::basic_string[abi:ne200100]<0>(&v221[1], "assertResponse");
    std::string::basic_string[abi:ne200100]<0>(v224, "assertCondition");
    std::set<std::string>::set[abi:ne200100](&qword_280AF4088, v217, 5);
    for (i = 0; i != -15; i -= 3)
    {
      if (*(&v226 + i * 8) < 0)
      {
        operator delete(v224[i]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF4088, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4028);
    v3 = this;
  }

  if ((*v3 & 1) != 0 && (v4 = *(v3 + 6)) != 0)
  {
    YAML::detail::node_data::begin(**v4, v217);
    v6 = *(this + 4);
    v5 = *(this + 5);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = v6;
      v213 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = v6;
      v213 = 0;
    }
  }

  else
  {
    *v212 = 0;
    memset(&v212[8], 0, 32);
    v213 = 0;
  }

  if (*this == 1 && (v7 = *(this + 6)) != 0)
  {
    YAML::detail::node_data::end(**v7, v217);
    v8 = *(this + 5);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v217;
      v10 = *&v217[8];
      v199 = *&v217[16];
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v195 = v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v195 = 0;
      v9 = *v217;
      v10 = *&v217[8];
      v199 = *&v217[16];
    }
  }

  else
  {
    v195 = 0;
    v9 = 0;
    v199 = 0;
    v10 = 0;
  }

  while (1)
  {
    if (*v212 == v9)
    {
      v11 = v10;
      v12 = &v212[8];
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          break;
        }

        v11 = v199;
        v12 = &v212[16];
      }

      if (*v12 == v11)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v212, v217);
    if ((v220 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v222) < 0)
      {
        std::string::__init_copy_ctor_external(v207, v221[0], v221[1]);
      }

      else
      {
        *v207 = *v221;
        *&v207[16] = v222;
      }

      YAML::InvalidNode::InvalidNode(exception, v207);
    }

    *v207 = &v220;
    YAML::as_if<std::string,void>::operator()(v207, __p);
    v13 = std::__tree<std::string>::find<std::string>(&qword_280AF4088, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v13 == &unk_280AF4090)
    {
      if ((v220 & 1) == 0)
      {
        v145 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v222) < 0)
        {
          std::string::__init_copy_ctor_external(v207, v221[0], v221[1]);
        }

        else
        {
          *v207 = *v221;
          *&v207[16] = v222;
        }

        YAML::InvalidNode::InvalidNode(v145, v207);
      }

      *v207 = &v220;
      YAML::as_if<std::string,void>::operator()(v207, &v216);
      v14 = std::string::insert(&v216, 0, "Unsupported field for Step found in flow file: ");
      *__p = *v14;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((v225 & 1) == 0)
      {
        v144 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v228) < 0)
        {
          std::string::__init_copy_ctor_external(v207, v227, *(&v227 + 1));
        }

        else
        {
          *v207 = v227;
          *&v207[16] = v228;
        }

        YAML::InvalidNode::InvalidNode(v144, v207);
      }

      if (v230)
      {
        v15 = *(**v230 + 8);
      }

      else
      {
        v15 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v15);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }
    }

    if (v229)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v229);
    }

    if (SHIBYTE(v228) < 0)
    {
      operator delete(v227);
    }

    if (v224[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v224[0]);
    }

    if (SHIBYTE(v222) < 0)
    {
      operator delete(v221[0]);
    }

    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v212);
  }

  if (v195)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v195);
  }

  if (v213)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v213);
  }

  YAML::Node::operator[]<char [13]>(this, "setVariables", v217);
  v16 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v16)
    {
      goto LABEL_109;
    }
  }

  else if (v16)
  {
    goto LABEL_109;
  }

  YAML::Node::operator[]<char [13]>(this, "setVariables", v217);
  if ((v217[0] & 1) == 0)
  {
    v159 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v159, v212);
  }

  v18 = v219 && (v17 = **v219, *v17 == 1) && *(v17 + 16) == 3;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v18)
    {
LABEL_67:
      YAML::Node::operator[]<char [13]>(this, "setVariables", v212);
      if ((v212[0] & 1) != 0 && v214)
      {
        YAML::detail::node_data::begin(**v214, v217);
        v20 = *&v212[32];
        v19 = v213;
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
          *v207 = *v217;
          *&v207[16] = *&v217[16];
          *&v207[32] = v20;
          v208 = v19;
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          *v207 = *v217;
          *&v207[16] = *&v217[16];
          *&v207[32] = *&v212[32];
          v208 = 0;
        }
      }

      else
      {
        *v207 = 0;
        memset(&v207[8], 0, 32);
        v208 = 0;
      }

      if (v212[0] == 1 && v214)
      {
        YAML::detail::node_data::end(**v214, v217);
        v23 = v213;
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = *v217;
          v25 = *&v217[8];
          v26 = *&v217[16];
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        else
        {
          v24 = *v217;
          v25 = *&v217[8];
          v26 = *&v217[16];
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v23 = 0;
        v24 = 0;
      }

      while (1)
      {
        if (*v207 == v24)
        {
          v27 = v25;
          v28 = &v207[8];
          if (v24 != 1)
          {
            if (v24 != 2)
            {
              break;
            }

            v27 = v26;
            v28 = &v207[16];
          }

          if (*v28 == v27)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v207, v217);
        siri::intelligence::ValidateFlowTest_KeyValueParameter(v217, a2, v29);
        if (v229)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v229);
        }

        if (SHIBYTE(v228) < 0)
        {
          operator delete(v227);
        }

        if (v224[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v224[0]);
        }

        if (SHIBYTE(v222) < 0)
        {
          operator delete(v221[0]);
        }

        if (v218)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v218);
        }

        if ((v217[31] & 0x80000000) != 0)
        {
          operator delete(*&v217[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v207);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v208)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v208);
      }

      if (v213)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v213);
      }

      if ((v212[31] & 0x80000000) != 0)
      {
        v22 = *&v212[8];
        goto LABEL_108;
      }

      goto LABEL_109;
    }
  }

  else if (v18)
  {
    goto LABEL_67;
  }

  YAML::Node::operator[]<char [13]>(this, "setVariables", v217);
  siri::intelligence::ValidateFlowTest_KeyValueParameter(v217, a2, v21);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    v22 = *&v217[8];
LABEL_108:
    operator delete(v22);
  }

LABEL_109:
  YAML::Node::operator[]<char [10]>(this, "startFrom", v217);
  v30 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v30)
    {
      goto LABEL_259;
    }
  }

  else if (v30)
  {
    goto LABEL_259;
  }

  YAML::Node::operator[]<char [10]>(this, "startFrom", v217);
  if ((v217[0] & 1) == 0)
  {
    v160 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v160, v212);
  }

  v32 = v219 && (v31 = **v219, *v31 == 1) && *(v31 + 16) == 3;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (!v32)
    {
      goto LABEL_143;
    }

LABEL_131:
    std::string::basic_string[abi:ne200100]<0>(v207, "Invalid array value found for 'startFrom' on Step");
    YAML::Node::operator[]<char [10]>(this, "startFrom", v217);
    if ((v217[0] & 1) == 0)
    {
      v168 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
      }

      else
      {
        *v212 = *&v217[8];
        *&v212[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v168, v212);
    }

    if (v219)
    {
      v33 = *(**v219 + 8) + 1;
    }

    else
    {
      v33 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v207, v33);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    if ((v207[23] & 0x80000000) != 0)
    {
      operator delete(*v207);
    }

    goto LABEL_143;
  }

  if (v32)
  {
    goto LABEL_131;
  }

LABEL_143:
  YAML::Node::operator[]<char [10]>(this, "startFrom", v212);
  if ((atomic_load_explicit(&qword_280AF4038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4038))
  {
    std::string::basic_string[abi:ne200100]<0>(v217, "responseId");
    std::string::basic_string[abi:ne200100]<0>(&v217[24], "activityId");
    std::set<std::string>::set[abi:ne200100](&qword_280AF40B8, v217, 2);
    for (j = 0; j != -6; j -= 3)
    {
      if (SHIBYTE((&v218)[j]) < 0)
      {
        operator delete(*&v217[j * 8 + 24]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF40B8, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4038);
  }

  if ((v212[0] & 1) != 0 && v214)
  {
    YAML::detail::node_data::begin(**v214, v217);
    v35 = *&v212[32];
    v34 = v213;
    if (v213)
    {
      atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
      *v207 = *v217;
      *&v207[16] = *&v217[16];
      *&v207[32] = v35;
      v208 = v34;
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      *v207 = *v217;
      *&v207[16] = *&v217[16];
      *&v207[32] = *&v212[32];
      v208 = 0;
    }
  }

  else
  {
    *v207 = 0;
    memset(&v207[8], 0, 32);
    v208 = 0;
  }

  if (v212[0] == 1 && v214)
  {
    YAML::detail::node_data::end(**v214, v217);
    v36 = v213;
    if (v213)
    {
      atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *v217;
      v38 = *&v217[8];
      v197 = v36;
      v200 = *&v217[16];
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    else
    {
      v37 = *v217;
      v38 = *&v217[8];
      v197 = 0;
      v200 = *&v217[16];
    }
  }

  else
  {
    v197 = 0;
    v200 = 0;
    v37 = 0;
    v38 = 0;
  }

  while (1)
  {
    if (*v207 == v37)
    {
      v39 = v38;
      v40 = &v207[8];
      if (v37 != 1)
      {
        if (v37 != 2)
        {
          break;
        }

        v39 = v200;
        v40 = &v207[16];
      }

      if (*v40 == v39)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v207, v217);
    if ((v220 & 1) == 0)
    {
      v146 = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v222) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
      }

      else
      {
        *__p = *v221;
        *&__p[16] = v222;
      }

      YAML::InvalidNode::InvalidNode(v146, __p);
    }

    *__p = &v220;
    YAML::as_if<std::string,void>::operator()(__p, &v216);
    v41 = std::__tree<std::string>::find<std::string>(&qword_280AF40B8, &v216.__r_.__value_.__l.__data_);
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (v41 == &unk_280AF40C0)
    {
      if ((v220 & 1) == 0)
      {
        v151 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v222) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
        }

        else
        {
          *__p = *v221;
          *&__p[16] = v222;
        }

        YAML::InvalidNode::InvalidNode(v151, __p);
      }

      *__p = &v220;
      YAML::as_if<std::string,void>::operator()(__p, &v215);
      v42 = std::string::insert(&v215, 0, "Unsupported field for StartFrom found in flow file: ");
      v216 = *v42;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if ((v225 & 1) == 0)
      {
        v150 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v228) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v227, *(&v227 + 1));
        }

        else
        {
          *__p = v227;
          *&__p[16] = v228;
        }

        YAML::InvalidNode::InvalidNode(v150, __p);
      }

      if (v230)
      {
        v43 = *(**v230 + 8);
      }

      else
      {
        v43 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, &v216, v43);
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v215.__r_.__value_.__l.__data_);
      }
    }

    if (v229)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v229);
    }

    if (SHIBYTE(v228) < 0)
    {
      operator delete(v227);
    }

    if (v224[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v224[0]);
    }

    if (SHIBYTE(v222) < 0)
    {
      operator delete(v221[0]);
    }

    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v207);
  }

  if (v197)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v197);
  }

  if (v208)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v208);
  }

  YAML::Node::operator[]<char [11]>(v212, "responseId", v217);
  v44 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v44)
    {
      goto LABEL_223;
    }
  }

  else if (v44)
  {
    goto LABEL_223;
  }

  YAML::Node::operator[]<char [11]>(v212, "responseId", v217);
  if ((v217[0] & 1) == 0)
  {
    v170 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v207, *&v217[8], *&v217[16]);
    }

    else
    {
      *v207 = *&v217[8];
      *&v207[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v170, v207);
  }

  v46 = v219 && (v45 = **v219, *v45 == 1) && *(v45 + 16) == 2;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v46)
    {
      goto LABEL_223;
    }
  }

  else if (v46)
  {
    goto LABEL_223;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Invalid string value found for 'responseId' on StartFrom");
  YAML::Node::operator[]<char [11]>(v212, "responseId", v217);
  if ((v217[0] & 1) == 0)
  {
    v183 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v207, *&v217[8], *&v217[16]);
    }

    else
    {
      *v207 = *&v217[8];
      *&v207[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v183, v207);
  }

  if (v219)
  {
    v47 = *(**v219 + 8) + 1;
  }

  else
  {
    v47 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v47);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_223:
  YAML::Node::operator[]<char [11]>(v212, "activityId", v217);
  v48 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v48)
    {
      goto LABEL_255;
    }
  }

  else if (v48)
  {
    goto LABEL_255;
  }

  YAML::Node::operator[]<char [11]>(v212, "activityId", v217);
  if ((v217[0] & 1) == 0)
  {
    v171 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v207, *&v217[8], *&v217[16]);
    }

    else
    {
      *v207 = *&v217[8];
      *&v207[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v171, v207);
  }

  v50 = v219 && (v49 = **v219, *v49 == 1) && *(v49 + 16) == 2;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) == 0)
  {
    if (v50)
    {
      goto LABEL_255;
    }

LABEL_245:
    std::string::basic_string[abi:ne200100]<0>(__p, "Invalid string value found for 'activityId' on StartFrom");
    YAML::Node::operator[]<char [11]>(v212, "activityId", v217);
    if ((v217[0] & 1) == 0)
    {
      v184 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v207, *&v217[8], *&v217[16]);
      }

      else
      {
        *v207 = *&v217[8];
        *&v207[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v184, v207);
    }

    if (v219)
    {
      v51 = *(**v219 + 8) + 1;
    }

    else
    {
      v51 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v51);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_255;
  }

  operator delete(*&v217[8]);
  if (!v50)
  {
    goto LABEL_245;
  }

LABEL_255:
  if (v213)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v213);
  }

  if ((v212[31] & 0x80000000) != 0)
  {
    operator delete(*&v212[8]);
  }

LABEL_259:
  YAML::Node::operator[]<char [11]>(this, "sendIntent", v217);
  v52 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v52)
    {
      goto LABEL_469;
    }
  }

  else if (v52)
  {
    goto LABEL_469;
  }

  YAML::Node::operator[]<char [11]>(this, "sendIntent", v217);
  if ((v217[0] & 1) == 0)
  {
    v162 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v162, v212);
  }

  v54 = v219 && (v53 = **v219, *v53 == 1) && *(v53 + 16) == 3;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (!v54)
    {
      goto LABEL_291;
    }

LABEL_281:
    std::string::basic_string[abi:ne200100]<0>(v207, "Invalid array value found for 'sendIntent' on Step");
    YAML::Node::operator[]<char [11]>(this, "sendIntent", v217);
    if ((v217[0] & 1) == 0)
    {
      v169 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
      }

      else
      {
        *v212 = *&v217[8];
        *&v212[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v169, v212);
    }

    if (v219)
    {
      v55 = *(**v219 + 8) + 1;
    }

    else
    {
      v55 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v207, v55);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    if ((v207[23] & 0x80000000) != 0)
    {
      operator delete(*v207);
    }

    goto LABEL_291;
  }

  if (v54)
  {
    goto LABEL_281;
  }

LABEL_291:
  YAML::Node::operator[]<char [11]>(this, "sendIntent", v207);
  if ((atomic_load_explicit(&qword_280AF4040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4040))
  {
    std::string::basic_string[abi:ne200100]<0>(v217, "id");
    std::string::basic_string[abi:ne200100]<0>(&v217[24], "name");
    std::string::basic_string[abi:ne200100]<0>(&v219, "slots");
    std::set<std::string>::set[abi:ne200100](&qword_280AF40D0, v217, 3);
    for (k = 0; k != -9; k -= 3)
    {
      if (SHIBYTE(v221[k]) < 0)
      {
        operator delete((&v219)[k]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF40D0, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4040);
  }

  if ((v207[0] & 1) != 0 && v209)
  {
    YAML::detail::node_data::begin(**v209, v217);
    v57 = *&v207[32];
    v56 = v208;
    if (v208)
    {
      atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = v57;
      v213 = v56;
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    else
    {
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = *&v207[32];
      v213 = 0;
    }
  }

  else
  {
    *v212 = 0;
    memset(&v212[8], 0, 32);
    v213 = 0;
  }

  if (v207[0] == 1 && v209)
  {
    YAML::detail::node_data::end(**v209, v217);
    v58 = v208;
    if (v208)
    {
      atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      v59 = *v217;
      v60 = *&v217[8];
      v201 = *&v217[16];
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      v196 = v58;
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    else
    {
      v196 = 0;
      v59 = *v217;
      v60 = *&v217[8];
      v201 = *&v217[16];
    }
  }

  else
  {
    v196 = 0;
    v59 = 0;
    v201 = 0;
    v60 = 0;
  }

  while (1)
  {
    if (*v212 == v59)
    {
      v61 = v60;
      v62 = &v212[8];
      if (v59 != 1)
      {
        if (v59 != 2)
        {
          break;
        }

        v61 = v201;
        v62 = &v212[16];
      }

      if (*v62 == v61)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v212, v217);
    if ((v220 & 1) == 0)
    {
      v147 = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v222) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
      }

      else
      {
        *__p = *v221;
        *&__p[16] = v222;
      }

      YAML::InvalidNode::InvalidNode(v147, __p);
    }

    *__p = &v220;
    YAML::as_if<std::string,void>::operator()(__p, &v216);
    v63 = std::__tree<std::string>::find<std::string>(&qword_280AF40D0, &v216.__r_.__value_.__l.__data_);
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (v63 == &unk_280AF40D8)
    {
      if ((v220 & 1) == 0)
      {
        v153 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v222) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
        }

        else
        {
          *__p = *v221;
          *&__p[16] = v222;
        }

        YAML::InvalidNode::InvalidNode(v153, __p);
      }

      *__p = &v220;
      YAML::as_if<std::string,void>::operator()(__p, &v215);
      v64 = std::string::insert(&v215, 0, "Unsupported field for SendIntent found in flow file: ");
      v216 = *v64;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      if ((v225 & 1) == 0)
      {
        v152 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v228) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v227, *(&v227 + 1));
        }

        else
        {
          *__p = v227;
          *&__p[16] = v228;
        }

        YAML::InvalidNode::InvalidNode(v152, __p);
      }

      if (v230)
      {
        v65 = *(**v230 + 8);
      }

      else
      {
        v65 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, &v216, v65);
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v215.__r_.__value_.__l.__data_);
      }
    }

    if (v229)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v229);
    }

    if (SHIBYTE(v228) < 0)
    {
      operator delete(v227);
    }

    if (v224[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v224[0]);
    }

    if (SHIBYTE(v222) < 0)
    {
      operator delete(v221[0]);
    }

    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v212);
  }

  if (v196)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v196);
  }

  if (v213)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v213);
  }

  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  v66 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v66)
    {
      goto LABEL_371;
    }
  }

  else if (v66)
  {
    goto LABEL_371;
  }

  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  if ((v217[0] & 1) == 0)
  {
    v173 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v173, v212);
  }

  v68 = v219 && (v67 = **v219, *v67 == 1) && *(v67 + 16) == 2;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v68)
    {
      goto LABEL_371;
    }
  }

  else if (v68)
  {
    goto LABEL_371;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Invalid string value found for 'id' on SendIntent");
  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  if ((v217[0] & 1) == 0)
  {
    v185 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v185, v212);
  }

  if (v219)
  {
    v69 = *(**v219 + 8) + 1;
  }

  else
  {
    v69 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v69);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_371:
  YAML::Node::operator[]<char [5]>(v207, "name", v217);
  v70 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v70)
    {
      goto LABEL_403;
    }
  }

  else if (v70)
  {
    goto LABEL_403;
  }

  YAML::Node::operator[]<char [5]>(v207, "name", v217);
  if ((v217[0] & 1) == 0)
  {
    v174 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v174, v212);
  }

  v72 = v219 && (v71 = **v219, *v71 == 1) && *(v71 + 16) == 2;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v72)
    {
      goto LABEL_403;
    }
  }

  else if (v72)
  {
    goto LABEL_403;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Invalid string value found for 'name' on SendIntent");
  YAML::Node::operator[]<char [5]>(v207, "name", v217);
  if ((v217[0] & 1) == 0)
  {
    v186 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v186, v212);
  }

  if (v219)
  {
    v73 = *(**v219 + 8) + 1;
  }

  else
  {
    v73 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v73);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_403:
  YAML::Node::operator[]<char [6]>(v207, "slots", v217);
  v74 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) == 0)
  {
    if (v74)
    {
      goto LABEL_465;
    }

LABEL_414:
    YAML::Node::operator[]<char [6]>(v207, "slots", v217);
    if ((v217[0] & 1) == 0)
    {
      v175 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
      }

      else
      {
        *v212 = *&v217[8];
        *&v212[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v175, v212);
    }

    v76 = v219 && (v75 = **v219, *v75 == 1) && *(v75 + 16) == 3;
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
      if (v76)
      {
        goto LABEL_423;
      }
    }

    else if (v76)
    {
LABEL_423:
      YAML::Node::operator[]<char [6]>(v207, "slots", v212);
      if ((v212[0] & 1) != 0 && v214)
      {
        YAML::detail::node_data::begin(**v214, v217);
        v78 = *&v212[32];
        v77 = v213;
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
          *__p = *v217;
          *&__p[16] = *&v217[16];
          *&__p[32] = v78;
          v211 = v77;
          atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        else
        {
          *__p = *v217;
          *&__p[16] = *&v217[16];
          *&__p[32] = *&v212[32];
          v211 = 0;
        }
      }

      else
      {
        *__p = 0;
        memset(&__p[8], 0, 32);
        v211 = 0;
      }

      if (v212[0] == 1 && v214)
      {
        YAML::detail::node_data::end(**v214, v217);
        v81 = v213;
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
          v82 = *v217;
          v83 = *&v217[8];
          v84 = *&v217[16];
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        else
        {
          v82 = *v217;
          v83 = *&v217[8];
          v84 = *&v217[16];
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
        v81 = 0;
        v82 = 0;
      }

      while (1)
      {
        if (*__p == v82)
        {
          v85 = v83;
          v86 = &__p[8];
          if (v82 != 1)
          {
            if (v82 != 2)
            {
              break;
            }

            v85 = v84;
            v86 = &__p[16];
          }

          if (*v86 == v85)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(__p, v217);
        siri::intelligence::ValidateFlowTest_KeyValueParameter(v217, a2, v87);
        if (v229)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v229);
        }

        if (SHIBYTE(v228) < 0)
        {
          operator delete(v227);
        }

        if (v224[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v224[0]);
        }

        if (SHIBYTE(v222) < 0)
        {
          operator delete(v221[0]);
        }

        if (v218)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v218);
        }

        if ((v217[31] & 0x80000000) != 0)
        {
          operator delete(*&v217[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(__p);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (v211)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v211);
      }

      if (v213)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v213);
      }

      if ((v212[31] & 0x80000000) == 0)
      {
        goto LABEL_465;
      }

      v80 = *&v212[8];
LABEL_464:
      operator delete(v80);
      goto LABEL_465;
    }

    YAML::Node::operator[]<char [6]>(v207, "slots", v217);
    siri::intelligence::ValidateFlowTest_KeyValueParameter(v217, a2, v79);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) == 0)
    {
      goto LABEL_465;
    }

    v80 = *&v217[8];
    goto LABEL_464;
  }

  operator delete(*&v217[8]);
  if (!v74)
  {
    goto LABEL_414;
  }

LABEL_465:
  if (v208)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v208);
  }

  if ((v207[31] & 0x80000000) != 0)
  {
    operator delete(*&v207[8]);
  }

LABEL_469:
  YAML::Node::operator[]<char [15]>(this, "assertResponse", v217);
  v88 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v88)
    {
      goto LABEL_688;
    }
  }

  else if (v88)
  {
    goto LABEL_688;
  }

  YAML::Node::operator[]<char [15]>(this, "assertResponse", v217);
  if ((v217[0] & 1) == 0)
  {
    v164 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v164, v212);
  }

  v90 = v219 && (v89 = **v219, *v89 == 1) && *(v89 + 16) == 3;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (!v90)
    {
      goto LABEL_501;
    }

LABEL_491:
    std::string::basic_string[abi:ne200100]<0>(v207, "Invalid array value found for 'assertResponse' on Step");
    YAML::Node::operator[]<char [15]>(this, "assertResponse", v217);
    if ((v217[0] & 1) == 0)
    {
      v172 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
      }

      else
      {
        *v212 = *&v217[8];
        *&v212[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v172, v212);
    }

    if (v219)
    {
      v91 = *(**v219 + 8) + 1;
    }

    else
    {
      v91 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v207, v91);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    if ((v207[23] & 0x80000000) != 0)
    {
      operator delete(*v207);
    }

    goto LABEL_501;
  }

  if (v90)
  {
    goto LABEL_491;
  }

LABEL_501:
  YAML::Node::operator[]<char [15]>(this, "assertResponse", v207);
  if ((atomic_load_explicit(&qword_280AF4048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4048))
  {
    std::string::basic_string[abi:ne200100]<0>(v217, "id");
    std::string::basic_string[abi:ne200100]<0>(&v217[24], "anyId");
    std::string::basic_string[abi:ne200100]<0>(&v219, "allIds");
    std::string::basic_string[abi:ne200100]<0>(&v221[1], "count");
    std::set<std::string>::set[abi:ne200100](&qword_280AF40E8, v217, 4);
    for (m = 0; m != -12; m -= 3)
    {
      if (*(&v223 + m * 8) < 0)
      {
        operator delete(v221[m + 1]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF40E8, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4048);
  }

  if ((v207[0] & 1) != 0 && v209)
  {
    YAML::detail::node_data::begin(**v209, v217);
    v93 = *&v207[32];
    v92 = v208;
    if (v208)
    {
      atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = v93;
      v213 = v92;
      atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    else
    {
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = *&v207[32];
      v213 = 0;
    }
  }

  else
  {
    *v212 = 0;
    memset(&v212[8], 0, 32);
    v213 = 0;
  }

  if (v207[0] == 1 && v209)
  {
    YAML::detail::node_data::end(**v209, v217);
    v94 = v208;
    if (v208)
    {
      atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      v95 = *v217;
      v96 = *&v217[8];
      v198 = v94;
      v202 = *&v217[16];
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

    else
    {
      v95 = *v217;
      v96 = *&v217[8];
      v198 = 0;
      v202 = *&v217[16];
    }
  }

  else
  {
    v198 = 0;
    v202 = 0;
    v95 = 0;
    v96 = 0;
  }

  while (1)
  {
    if (*v212 == v95)
    {
      v97 = v96;
      v98 = &v212[8];
      if (v95 != 1)
      {
        if (v95 != 2)
        {
          break;
        }

        v97 = v202;
        v98 = &v212[16];
      }

      if (*v98 == v97)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v212, v217);
    if ((v220 & 1) == 0)
    {
      v148 = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v222) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
      }

      else
      {
        *__p = *v221;
        *&__p[16] = v222;
      }

      YAML::InvalidNode::InvalidNode(v148, __p);
    }

    *__p = &v220;
    YAML::as_if<std::string,void>::operator()(__p, &v216);
    v99 = std::__tree<std::string>::find<std::string>(&qword_280AF40E8, &v216.__r_.__value_.__l.__data_);
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (v99 == &unk_280AF40F0)
    {
      if ((v220 & 1) == 0)
      {
        v155 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v222) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
        }

        else
        {
          *__p = *v221;
          *&__p[16] = v222;
        }

        YAML::InvalidNode::InvalidNode(v155, __p);
      }

      *__p = &v220;
      YAML::as_if<std::string,void>::operator()(__p, &v215);
      v100 = std::string::insert(&v215, 0, "Unsupported field for AssertResponse found in flow file: ");
      v216 = *v100;
      v100->__r_.__value_.__l.__size_ = 0;
      v100->__r_.__value_.__r.__words[2] = 0;
      v100->__r_.__value_.__r.__words[0] = 0;
      if ((v225 & 1) == 0)
      {
        v154 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v228) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v227, *(&v227 + 1));
        }

        else
        {
          *__p = v227;
          *&__p[16] = v228;
        }

        YAML::InvalidNode::InvalidNode(v154, __p);
      }

      if (v230)
      {
        v101 = *(**v230 + 8);
      }

      else
      {
        v101 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, &v216, v101);
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v215.__r_.__value_.__l.__data_);
      }
    }

    if (v229)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v229);
    }

    if (SHIBYTE(v228) < 0)
    {
      operator delete(v227);
    }

    if (v224[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v224[0]);
    }

    if (SHIBYTE(v222) < 0)
    {
      operator delete(v221[0]);
    }

    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v212);
  }

  if (v198)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v198);
  }

  if (v213)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v213);
  }

  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  v102 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v102)
    {
      goto LABEL_581;
    }
  }

  else if (v102)
  {
    goto LABEL_581;
  }

  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  if ((v217[0] & 1) == 0)
  {
    v177 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v177, v212);
  }

  v104 = v219 && (v103 = **v219, *v103 == 1) && *(v103 + 16) == 2;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v104)
    {
      goto LABEL_581;
    }
  }

  else if (v104)
  {
    goto LABEL_581;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Invalid string value found for 'id' on AssertResponse");
  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  if ((v217[0] & 1) == 0)
  {
    v187 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v187, v212);
  }

  if (v219)
  {
    v105 = *(**v219 + 8) + 1;
  }

  else
  {
    v105 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v105);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_581:
  YAML::Node::operator[]<char [6]>(v207, "anyId", v217);
  v106 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v106)
    {
      goto LABEL_613;
    }
  }

  else if (v106)
  {
    goto LABEL_613;
  }

  YAML::Node::operator[]<char [6]>(v207, "anyId", v217);
  if ((v217[0] & 1) == 0)
  {
    v178 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v178, v212);
  }

  v108 = v219 && (v107 = **v219, *v107 == 1) && *(v107 + 16) == 4;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (!v108)
    {
      goto LABEL_613;
    }
  }

  else if (!v108)
  {
    goto LABEL_613;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Found a map instead of an array value for 'anyId' on AssertResponse");
  YAML::Node::operator[]<char [6]>(v207, "anyId", v217);
  if ((v217[0] & 1) == 0)
  {
    v188 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v188, v212);
  }

  if (v219)
  {
    v109 = *(**v219 + 8) + 1;
  }

  else
  {
    v109 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v109);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_613:
  YAML::Node::operator[]<char [7]>(v207, "allIds", v217);
  v110 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v110)
    {
      goto LABEL_645;
    }
  }

  else if (v110)
  {
    goto LABEL_645;
  }

  YAML::Node::operator[]<char [7]>(v207, "allIds", v217);
  if ((v217[0] & 1) == 0)
  {
    v179 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v179, v212);
  }

  v112 = v219 && (v111 = **v219, *v111 == 1) && *(v111 + 16) == 4;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (!v112)
    {
      goto LABEL_645;
    }
  }

  else if (!v112)
  {
    goto LABEL_645;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Found a map instead of an array value for 'allIds' on AssertResponse");
  YAML::Node::operator[]<char [7]>(v207, "allIds", v217);
  if ((v217[0] & 1) == 0)
  {
    v189 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v189, v212);
  }

  if (v219)
  {
    v113 = *(**v219 + 8) + 1;
  }

  else
  {
    v113 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v113);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_645:
  YAML::Node::operator[]<char [6]>(v207, "count", v217);
  v114 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v114)
    {
      goto LABEL_684;
    }
  }

  else if (v114)
  {
    goto LABEL_684;
  }

  YAML::Node::operator[]<char [6]>(v207, "count", v217);
  if ((v217[0] & 1) == 0)
  {
    v180 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v180, v212);
  }

  if (v219 && (v115 = **v219, (*v115 & 1) != 0) && *(v115 + 16) == 2)
  {
    YAML::Node::operator[]<char [6]>(v207, "count", v212);
    if ((v212[0] & 1) == 0)
    {
      v193 = __cxa_allocate_exception(0x38uLL);
      if ((v212[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(__p, *&v212[8], *&v212[16]);
      }

      else
      {
        *__p = *&v212[8];
        *&__p[16] = *&v212[24];
      }

      YAML::InvalidNode::InvalidNode(v193, __p);
    }

    *__p = v212;
    YAML::as_if<std::string,void>::operator()(__p, &v216);
    IsANumber = siri::intelligence::StringIsANumber(&v216);
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (v213)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v213);
    }

    v117 = IsANumber ^ 1;
    if ((v212[31] & 0x80000000) != 0)
    {
      operator delete(*&v212[8]);
    }
  }

  else
  {
    v117 = 1;
  }

  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) == 0)
  {
    if (!v117)
    {
      goto LABEL_684;
    }

LABEL_674:
    std::string::basic_string[abi:ne200100]<0>(__p, "Invalid int32 value found for 'count' on AssertResponse");
    YAML::Node::operator[]<char [6]>(v207, "count", v217);
    if ((v217[0] & 1) == 0)
    {
      v190 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
      }

      else
      {
        *v212 = *&v217[8];
        *&v212[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v190, v212);
    }

    if (v219)
    {
      v118 = *(**v219 + 8) + 1;
    }

    else
    {
      v118 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v118);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_684;
  }

  operator delete(*&v217[8]);
  if (v117)
  {
    goto LABEL_674;
  }

LABEL_684:
  if (v208)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v208);
  }

  if ((v207[31] & 0x80000000) != 0)
  {
    operator delete(*&v207[8]);
  }

LABEL_688:
  YAML::Node::operator[]<char [16]>(this, "assertCondition", v217);
  v119 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v119)
    {
      goto LABEL_843;
    }
  }

  else if (v119)
  {
    goto LABEL_843;
  }

  YAML::Node::operator[]<char [16]>(this, "assertCondition", v217);
  if ((v217[0] & 1) == 0)
  {
    v166 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v166, v212);
  }

  v121 = v219 && (v120 = **v219, *v120 == 1) && *(v120 + 16) == 3;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (!v121)
    {
      goto LABEL_720;
    }

LABEL_710:
    std::string::basic_string[abi:ne200100]<0>(v207, "Invalid array value found for 'assertCondition' on Step");
    YAML::Node::operator[]<char [16]>(this, "assertCondition", v217);
    if ((v217[0] & 1) == 0)
    {
      v176 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
      }

      else
      {
        *v212 = *&v217[8];
        *&v212[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v176, v212);
    }

    if (v219)
    {
      v122 = *(**v219 + 8) + 1;
    }

    else
    {
      v122 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v207, v122);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    if ((v207[23] & 0x80000000) != 0)
    {
      operator delete(*v207);
    }

    goto LABEL_720;
  }

  if (v121)
  {
    goto LABEL_710;
  }

LABEL_720:
  YAML::Node::operator[]<char [16]>(this, "assertCondition", v207);
  if ((atomic_load_explicit(&qword_280AF4050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4050))
  {
    std::string::basic_string[abi:ne200100]<0>(v217, "id");
    std::string::basic_string[abi:ne200100]<0>(&v217[24], "value");
    std::set<std::string>::set[abi:ne200100](&qword_280AF4100, v217, 2);
    for (n = 0; n != -6; n -= 3)
    {
      if (SHIBYTE((&v218)[n]) < 0)
      {
        operator delete(*&v217[n * 8 + 24]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF4100, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4050);
  }

  if ((v207[0] & 1) != 0 && v209)
  {
    YAML::detail::node_data::begin(**v209, v217);
    v124 = *&v207[32];
    v123 = v208;
    if (v208)
    {
      atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = v124;
      v213 = v123;
      atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v123);
    }

    else
    {
      *v212 = *v217;
      *&v212[16] = *&v217[16];
      *&v212[32] = *&v207[32];
      v213 = 0;
    }
  }

  else
  {
    *v212 = 0;
    memset(&v212[8], 0, 32);
    v213 = 0;
  }

  if (v207[0] == 1 && v209)
  {
    YAML::detail::node_data::end(**v209, v217);
    v125 = v208;
    if (v208)
    {
      atomic_fetch_add_explicit(&v208->__shared_owners_, 1uLL, memory_order_relaxed);
      v126 = *v217;
      v127 = *&v217[8];
      v203 = v125;
      v205 = *&v217[16];
      atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v125);
    }

    else
    {
      v126 = *v217;
      v127 = *&v217[8];
      v203 = 0;
      v205 = *&v217[16];
    }
  }

  else
  {
    v203 = 0;
    v205 = 0;
    v126 = 0;
    v127 = 0;
  }

  while (1)
  {
    if (*v212 == v126)
    {
      v128 = v127;
      v129 = &v212[8];
      if (v126 != 1)
      {
        if (v126 != 2)
        {
          break;
        }

        v128 = v205;
        v129 = &v212[16];
      }

      if (*v129 == v128)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v212, v217);
    if ((v220 & 1) == 0)
    {
      v149 = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v222) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
      }

      else
      {
        *__p = *v221;
        *&__p[16] = v222;
      }

      YAML::InvalidNode::InvalidNode(v149, __p);
    }

    *__p = &v220;
    YAML::as_if<std::string,void>::operator()(__p, &v216);
    v130 = std::__tree<std::string>::find<std::string>(&qword_280AF4100, &v216.__r_.__value_.__l.__data_);
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (v130 == &unk_280AF4108)
    {
      if ((v220 & 1) == 0)
      {
        v157 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v222) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v221[0], v221[1]);
        }

        else
        {
          *__p = *v221;
          *&__p[16] = v222;
        }

        YAML::InvalidNode::InvalidNode(v157, __p);
      }

      *__p = &v220;
      YAML::as_if<std::string,void>::operator()(__p, &v215);
      v131 = std::string::insert(&v215, 0, "Unsupported field for AssertCondition found in flow file: ");
      v216 = *v131;
      v131->__r_.__value_.__l.__size_ = 0;
      v131->__r_.__value_.__r.__words[2] = 0;
      v131->__r_.__value_.__r.__words[0] = 0;
      if ((v225 & 1) == 0)
      {
        v156 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v228) < 0)
        {
          std::string::__init_copy_ctor_external(__p, v227, *(&v227 + 1));
        }

        else
        {
          *__p = v227;
          *&__p[16] = v228;
        }

        YAML::InvalidNode::InvalidNode(v156, __p);
      }

      if (v230)
      {
        v132 = *(**v230 + 8);
      }

      else
      {
        v132 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, &v216, v132);
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v215.__r_.__value_.__l.__data_);
      }
    }

    if (v229)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v229);
    }

    if (SHIBYTE(v228) < 0)
    {
      operator delete(v227);
    }

    if (v224[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v224[0]);
    }

    if (SHIBYTE(v222) < 0)
    {
      operator delete(v221[0]);
    }

    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v212);
  }

  if (v203)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v203);
  }

  if (v213)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v213);
  }

  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  v133 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v133)
    {
      goto LABEL_800;
    }
  }

  else if (v133)
  {
    goto LABEL_800;
  }

  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  if ((v217[0] & 1) == 0)
  {
    v181 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v181, v212);
  }

  v135 = v219 && (v134 = **v219, *v134 == 1) && *(v134 + 16) == 2;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v135)
    {
      goto LABEL_800;
    }
  }

  else if (v135)
  {
    goto LABEL_800;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Invalid string value found for 'id' on AssertCondition");
  YAML::Node::operator[]<char [3]>(v207, "id", v217);
  if ((v217[0] & 1) == 0)
  {
    v191 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v191, v212);
  }

  if (v219)
  {
    v136 = *(**v219 + 8) + 1;
  }

  else
  {
    v136 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v136);
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_800:
  YAML::Node::operator[]<char [6]>(v207, "value", v217);
  v137 = v217[0] != 1 || v219 && (***v219 & 1) == 0;
  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) != 0)
  {
    operator delete(*&v217[8]);
    if (v137)
    {
      goto LABEL_839;
    }
  }

  else if (v137)
  {
    goto LABEL_839;
  }

  YAML::Node::operator[]<char [6]>(v207, "value", v217);
  if ((v217[0] & 1) == 0)
  {
    v182 = __cxa_allocate_exception(0x38uLL);
    if ((v217[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
    }

    else
    {
      *v212 = *&v217[8];
      *&v212[16] = *&v217[24];
    }

    YAML::InvalidNode::InvalidNode(v182, v212);
  }

  if (v219 && (v138 = **v219, (*v138 & 1) != 0) && *(v138 + 16) == 2)
  {
    YAML::Node::operator[]<char [6]>(v207, "value", v212);
    if ((v212[0] & 1) == 0)
    {
      v194 = __cxa_allocate_exception(0x38uLL);
      if ((v212[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(__p, *&v212[8], *&v212[16]);
      }

      else
      {
        *__p = *&v212[8];
        *&__p[16] = *&v212[24];
      }

      YAML::InvalidNode::InvalidNode(v194, __p);
    }

    *__p = v212;
    YAML::as_if<std::string,void>::operator()(__p, &v216);
    IsBool = siri::intelligence::StringIsBool(&v216);
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (v213)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v213);
    }

    v140 = !IsBool;
    if ((v212[31] & 0x80000000) != 0)
    {
      operator delete(*&v212[8]);
    }
  }

  else
  {
    v140 = 1;
  }

  if (v218)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v218);
  }

  if ((v217[31] & 0x80000000) == 0)
  {
    if (!v140)
    {
      goto LABEL_839;
    }

LABEL_829:
    std::string::basic_string[abi:ne200100]<0>(__p, "Invalid BOOL value found for 'value' on AssertCondition");
    YAML::Node::operator[]<char [6]>(v207, "value", v217);
    if ((v217[0] & 1) == 0)
    {
      v192 = __cxa_allocate_exception(0x38uLL);
      if ((v217[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v212, *&v217[8], *&v217[16]);
      }

      else
      {
        *v212 = *&v217[8];
        *&v212[16] = *&v217[24];
      }

      YAML::InvalidNode::InvalidNode(v192, v212);
    }

    if (v219)
    {
      v141 = *(**v219 + 8) + 1;
    }

    else
    {
      v141 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, __p, v141);
    if (v218)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    if ((v217[31] & 0x80000000) != 0)
    {
      operator delete(*&v217[8]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_839;
  }

  operator delete(*&v217[8]);
  if (v140)
  {
    goto LABEL_829;
  }

LABEL_839:
  if (v208)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v208);
  }

  if ((v207[31] & 0x80000000) != 0)
  {
    operator delete(*&v207[8]);
  }

LABEL_843:
  v142 = *MEMORY[0x277D85DE8];
}

void sub_254CA1024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  v64 = (v62 + 47);
  v65 = -48;
  v66 = (v62 + 47);
  while (1)
  {
    v67 = *v66;
    v66 -= 24;
    if (v67 < 0)
    {
      operator delete(*(v64 - 23));
    }

    v64 = v66;
    v65 += 24;
    if (!v65)
    {
      __cxa_guard_abort(&qword_280AF4050);
      YAML::Node::~Node(&a15);
      _Unwind_Resume(a1);
    }
  }
}

void sub_254CA1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x254CA1A88);
  }

  JUMPOUT(0x254CA1A8CLL);
}

void YAML::Node::operator[]<char [7]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [7],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA1C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t streamable_to_string<char [5],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA1E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [12],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA2018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [8],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA21C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void YAML::Node::operator[]<char [13]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [13],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA2390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ValidateFlowTest_KeyValueParameter(siri::intelligence *this, const YAML::Node *a2, siri::intelligence::ValidationResults *a3)
{
  v3 = this;
  v102 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF4030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4030))
  {
    std::string::basic_string[abi:ne200100]<0>(v90, "key");
    std::string::basic_string[abi:ne200100]<0>(&v90[24], "valueNumber");
    std::string::basic_string[abi:ne200100]<0>(&v92, "valueBoolean");
    std::string::basic_string[abi:ne200100]<0>(&v94 + 8, "valueString");
    std::string::basic_string[abi:ne200100]<0>(&v96, "valueArray");
    std::string::basic_string[abi:ne200100]<0>(v98, "valueDictionary");
    std::set<std::string>::set[abi:ne200100](&qword_280AF40A0, v90, 6);
    for (i = 0; i != -18; i -= 3)
    {
      if (SHIBYTE(v99[i]) < 0)
      {
        operator delete(v98[i]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF40A0, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4030);
    v3 = this;
  }

  if ((*v3 & 1) != 0 && (v4 = *(v3 + 6)) != 0)
  {
    YAML::detail::node_data::begin(**v4, v90);
    v6 = *(this + 4);
    v5 = *(this + 5);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *v85 = *v90;
      *&v85[16] = *&v90[16];
      *&v85[32] = v6;
      v86 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      *v85 = *v90;
      *&v85[16] = *&v90[16];
      *&v85[32] = v6;
      v86 = 0;
    }
  }

  else
  {
    *v85 = 0;
    memset(&v85[8], 0, 32);
    v86 = 0;
  }

  if (*this == 1 && (v7 = *(this + 6)) != 0)
  {
    YAML::detail::node_data::end(**v7, v90);
    v8 = *(this + 5);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v90;
      v10 = *&v90[8];
      v80 = *&v90[16];
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v79 = v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v79 = 0;
      v9 = *v90;
      v10 = *&v90[8];
      v80 = *&v90[16];
    }
  }

  else
  {
    v79 = 0;
    v9 = 0;
    v80 = 0;
    v10 = 0;
  }

  while (1)
  {
    if (*v85 == v9)
    {
      v11 = v10;
      v12 = &v85[8];
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          break;
        }

        v11 = v80;
        v12 = &v85[16];
      }

      if (*v12 == v11)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v85, v90);
    if ((v93 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v95) < 0)
      {
        std::string::__init_copy_ctor_external(v83, v94, *(&v94 + 1));
      }

      else
      {
        *v83 = v94;
        *&v83[16] = v95;
      }

      YAML::InvalidNode::InvalidNode(exception, v83);
    }

    *v83 = &v93;
    YAML::as_if<std::string,void>::operator()(v83, &__p);
    v13 = std::__tree<std::string>::find<std::string>(&qword_280AF40A0, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v13 == &unk_280AF40A8)
    {
      if ((v93 & 1) == 0)
      {
        v65 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v95) < 0)
        {
          std::string::__init_copy_ctor_external(v83, v94, *(&v94 + 1));
        }

        else
        {
          *v83 = v94;
          *&v83[16] = v95;
        }

        YAML::InvalidNode::InvalidNode(v65, v83);
      }

      *v83 = &v93;
      YAML::as_if<std::string,void>::operator()(v83, &v88);
      v14 = std::string::insert(&v88, 0, "Unsupported field for KeyValueParameter found in flow file: ");
      __p = *v14;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((v97 & 1) == 0)
      {
        v64 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v99[0]) < 0)
        {
          std::string::__init_copy_ctor_external(v83, v98[0], v98[1]);
        }

        else
        {
          *v83 = *v98;
          *&v83[16] = v99[0];
        }

        YAML::InvalidNode::InvalidNode(v64, v83);
      }

      if (v101)
      {
        v15 = *(**v101 + 8);
      }

      else
      {
        v15 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, &__p, v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }
    }

    if (v100)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
    }

    if (SHIBYTE(v99[0]) < 0)
    {
      operator delete(v98[0]);
    }

    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    if (SHIBYTE(v95) < 0)
    {
      operator delete(v94);
    }

    if (v91)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v91);
    }

    if ((v90[31] & 0x80000000) != 0)
    {
      operator delete(*&v90[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v85);
  }

  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  YAML::Node::operator[]<char [4]>(this, "key", v90);
  v16 = v90[0] != 1 || v92 && (***v92 & 1) == 0;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v16)
    {
      goto LABEL_81;
    }
  }

  else if (v16)
  {
    goto LABEL_81;
  }

  YAML::Node::operator[]<char [4]>(this, "key", v90);
  if ((v90[0] & 1) == 0)
  {
    v67 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v67, v85);
  }

  v18 = v92 && (v17 = **v92, *v17 == 1) && *(v17 + 16) == 2;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v18)
    {
      goto LABEL_81;
    }
  }

  else if (v18)
  {
    goto LABEL_81;
  }

  std::string::basic_string[abi:ne200100]<0>(v83, "Invalid string value found for 'key' on KeyValueParameter");
  YAML::Node::operator[]<char [4]>(this, "key", v90);
  if ((v90[0] & 1) == 0)
  {
    v73 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v73, v85);
  }

  if (v92)
  {
    v19 = *(**v92 + 8) + 1;
  }

  else
  {
    v19 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v83, v19);
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
  }

  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

LABEL_81:
  YAML::Node::operator[]<char [12]>(this, "valueNumber", v90);
  v20 = v90[0] != 1 || v92 && (***v92 & 1) == 0;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v20)
    {
      goto LABEL_120;
    }
  }

  else if (v20)
  {
    goto LABEL_120;
  }

  YAML::Node::operator[]<char [12]>(this, "valueNumber", v90);
  if ((v90[0] & 1) == 0)
  {
    v68 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v68, v85);
  }

  if (v92 && (v21 = **v92, (*v21 & 1) != 0) && *(v21 + 16) == 2)
  {
    YAML::Node::operator[]<char [12]>(this, "valueNumber", v85);
    if ((v85[0] & 1) == 0)
    {
      v77 = __cxa_allocate_exception(0x38uLL);
      if ((v85[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v83, *&v85[8], *&v85[16]);
      }

      else
      {
        *v83 = *&v85[8];
        *&v83[16] = *&v85[24];
      }

      YAML::InvalidNode::InvalidNode(v77, v83);
    }

    *v83 = v85;
    YAML::as_if<std::string,void>::operator()(v83, &__p);
    IsANumber = siri::intelligence::StringIsANumber(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    v23 = IsANumber ^ 1;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }
  }

  else
  {
    v23 = 1;
  }

  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (!v23)
    {
      goto LABEL_120;
    }
  }

  else if (!v23)
  {
    goto LABEL_120;
  }

  std::string::basic_string[abi:ne200100]<0>(v83, "Invalid double value found for 'valueNumber' on KeyValueParameter");
  YAML::Node::operator[]<char [12]>(this, "valueNumber", v90);
  if ((v90[0] & 1) == 0)
  {
    v74 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v74, v85);
  }

  if (v92)
  {
    v24 = *(**v92 + 8) + 1;
  }

  else
  {
    v24 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v83, v24);
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
  }

  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

LABEL_120:
  YAML::Node::operator[]<char [13]>(this, "valueBoolean", v90);
  v25 = v90[0] != 1 || v92 && (***v92 & 1) == 0;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v25)
    {
      goto LABEL_159;
    }
  }

  else if (v25)
  {
    goto LABEL_159;
  }

  YAML::Node::operator[]<char [13]>(this, "valueBoolean", v90);
  if ((v90[0] & 1) == 0)
  {
    v69 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v69, v85);
  }

  if (v92 && (v26 = **v92, (*v26 & 1) != 0) && *(v26 + 16) == 2)
  {
    YAML::Node::operator[]<char [13]>(this, "valueBoolean", v85);
    if ((v85[0] & 1) == 0)
    {
      v78 = __cxa_allocate_exception(0x38uLL);
      if ((v85[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v83, *&v85[8], *&v85[16]);
      }

      else
      {
        *v83 = *&v85[8];
        *&v83[16] = *&v85[24];
      }

      YAML::InvalidNode::InvalidNode(v78, v83);
    }

    *v83 = v85;
    YAML::as_if<std::string,void>::operator()(v83, &__p);
    IsBool = siri::intelligence::StringIsBool(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    v28 = !IsBool;
    if ((v85[31] & 0x80000000) != 0)
    {
      operator delete(*&v85[8]);
    }
  }

  else
  {
    v28 = 1;
  }

  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (!v28)
    {
      goto LABEL_159;
    }
  }

  else if (!v28)
  {
    goto LABEL_159;
  }

  std::string::basic_string[abi:ne200100]<0>(v83, "Invalid BOOL value found for 'valueBoolean' on KeyValueParameter");
  YAML::Node::operator[]<char [13]>(this, "valueBoolean", v90);
  if ((v90[0] & 1) == 0)
  {
    v75 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v75, v85);
  }

  if (v92)
  {
    v29 = *(**v92 + 8) + 1;
  }

  else
  {
    v29 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v83, v29);
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
  }

  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

LABEL_159:
  YAML::Node::operator[]<char [12]>(this, "valueString", v90);
  v30 = v90[0] != 1 || v92 && (***v92 & 1) == 0;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v30)
    {
      goto LABEL_191;
    }
  }

  else if (v30)
  {
    goto LABEL_191;
  }

  YAML::Node::operator[]<char [12]>(this, "valueString", v90);
  if ((v90[0] & 1) == 0)
  {
    v70 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v70, v85);
  }

  v32 = v92 && (v31 = **v92, *v31 == 1) && *(v31 + 16) == 2;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v32)
    {
      goto LABEL_191;
    }
  }

  else if (v32)
  {
    goto LABEL_191;
  }

  std::string::basic_string[abi:ne200100]<0>(v83, "Invalid string value found for 'valueString' on KeyValueParameter");
  YAML::Node::operator[]<char [12]>(this, "valueString", v90);
  if ((v90[0] & 1) == 0)
  {
    v76 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v76, v85);
  }

  if (v92)
  {
    v33 = *(**v92 + 8) + 1;
  }

  else
  {
    v33 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v83, v33);
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
  }

  if ((v83[23] & 0x80000000) != 0)
  {
    operator delete(*v83);
  }

LABEL_191:
  YAML::Node::operator[]<char [11]>(this, "valueArray", v90);
  v34 = v90[0] != 1 || v92 && (***v92 & 1) == 0;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v34)
    {
      goto LABEL_253;
    }
  }

  else if (v34)
  {
    goto LABEL_253;
  }

  YAML::Node::operator[]<char [11]>(this, "valueArray", v90);
  if ((v90[0] & 1) == 0)
  {
    v71 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v71, v85);
  }

  v36 = v92 && (v35 = **v92, *v35 == 1) && *(v35 + 16) == 3;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v36)
    {
LABEL_211:
      YAML::Node::operator[]<char [11]>(this, "valueArray", v85);
      if ((v85[0] & 1) != 0 && v87)
      {
        YAML::detail::node_data::begin(**v87, v90);
        v38 = *&v85[32];
        v37 = v86;
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          *v83 = *v90;
          *&v83[16] = *&v90[16];
          *&v83[32] = v38;
          v84 = v37;
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        else
        {
          *v83 = *v90;
          *&v83[16] = *&v90[16];
          *&v83[32] = *&v85[32];
          v84 = 0;
        }
      }

      else
      {
        *v83 = 0;
        memset(&v83[8], 0, 32);
        v84 = 0;
      }

      if (v85[0] == 1 && v87)
      {
        YAML::detail::node_data::end(**v87, v90);
        v41 = v86;
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          v42 = *v90;
          v43 = *&v90[8];
          v44 = *&v90[16];
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        else
        {
          v42 = *v90;
          v43 = *&v90[8];
          v44 = *&v90[16];
        }
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v41 = 0;
        v42 = 0;
      }

      while (1)
      {
        if (*v83 == v42)
        {
          v45 = v43;
          v46 = &v83[8];
          if (v42 != 1)
          {
            if (v42 != 2)
            {
              break;
            }

            v45 = v44;
            v46 = &v83[16];
          }

          if (*v46 == v45)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v83, v90);
        siri::intelligence::ValidateFlowTest_KeyValueParameter(v90, a2, v47);
        if (v100)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v100);
        }

        if (SHIBYTE(v99[0]) < 0)
        {
          operator delete(v98[0]);
        }

        if (v96)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        }

        if (SHIBYTE(v95) < 0)
        {
          operator delete(v94);
        }

        if (v91)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        if ((v90[31] & 0x80000000) != 0)
        {
          operator delete(*&v90[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v83);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v86);
      }

      if ((v85[31] & 0x80000000) != 0)
      {
        v40 = *&v85[8];
        goto LABEL_252;
      }

      goto LABEL_253;
    }
  }

  else if (v36)
  {
    goto LABEL_211;
  }

  YAML::Node::operator[]<char [11]>(this, "valueArray", v90);
  siri::intelligence::ValidateFlowTest_KeyValueParameter(v90, a2, v39);
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    v40 = *&v90[8];
LABEL_252:
    operator delete(v40);
  }

LABEL_253:
  YAML::Node::operator[]<char [16]>(this, "valueDictionary", v90);
  v48 = v90[0] != 1 || v92 && (***v92 & 1) == 0;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v48)
    {
      goto LABEL_315;
    }
  }

  else if (v48)
  {
    goto LABEL_315;
  }

  YAML::Node::operator[]<char [16]>(this, "valueDictionary", v90);
  if ((v90[0] & 1) == 0)
  {
    v72 = __cxa_allocate_exception(0x38uLL);
    if ((v90[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *&v90[8], *&v90[16]);
    }

    else
    {
      *v85 = *&v90[8];
      *&v85[16] = *&v90[24];
    }

    YAML::InvalidNode::InvalidNode(v72, v85);
  }

  v50 = v92 && (v49 = **v92, *v49 == 1) && *(v49 + 16) == 3;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    operator delete(*&v90[8]);
    if (v50)
    {
LABEL_273:
      YAML::Node::operator[]<char [16]>(this, "valueDictionary", v85);
      if ((v85[0] & 1) != 0 && v87)
      {
        YAML::detail::node_data::begin(**v87, v90);
        v52 = *&v85[32];
        v51 = v86;
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          *v83 = *v90;
          *&v83[16] = *&v90[16];
          *&v83[32] = v52;
          v84 = v51;
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        else
        {
          *v83 = *v90;
          *&v83[16] = *&v90[16];
          *&v83[32] = *&v85[32];
          v84 = 0;
        }
      }

      else
      {
        *v83 = 0;
        memset(&v83[8], 0, 32);
        v84 = 0;
      }

      if (v85[0] == 1 && v87)
      {
        YAML::detail::node_data::end(**v87, v90);
        v55 = v86;
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          v56 = *v90;
          v57 = *&v90[8];
          v58 = *&v90[16];
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        else
        {
          v56 = *v90;
          v57 = *&v90[8];
          v58 = *&v90[16];
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v55 = 0;
        v56 = 0;
      }

      while (1)
      {
        if (*v83 == v56)
        {
          v59 = v57;
          v60 = &v83[8];
          if (v56 != 1)
          {
            if (v56 != 2)
            {
              break;
            }

            v59 = v58;
            v60 = &v83[16];
          }

          if (*v60 == v59)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v83, v90);
        siri::intelligence::ValidateFlowTest_KeyValueParameter(v90, a2, v61);
        if (v100)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v100);
        }

        if (SHIBYTE(v99[0]) < 0)
        {
          operator delete(v98[0]);
        }

        if (v96)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        }

        if (SHIBYTE(v95) < 0)
        {
          operator delete(v94);
        }

        if (v91)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        if ((v90[31] & 0x80000000) != 0)
        {
          operator delete(*&v90[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v83);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v86);
      }

      if ((v85[31] & 0x80000000) != 0)
      {
        v54 = *&v85[8];
        goto LABEL_314;
      }

      goto LABEL_315;
    }
  }

  else if (v50)
  {
    goto LABEL_273;
  }

  YAML::Node::operator[]<char [16]>(this, "valueDictionary", v90);
  siri::intelligence::ValidateFlowTest_KeyValueParameter(v90, a2, v53);
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
  }

  if ((v90[31] & 0x80000000) != 0)
  {
    v54 = *&v90[8];
LABEL_314:
    operator delete(v54);
  }

LABEL_315:
  v62 = *MEMORY[0x277D85DE8];
}

void sub_254CA3B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46)
{
  v48 = (v46 + 143);
  v49 = -144;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v50 -= 24;
    if (v51 < 0)
    {
      operator delete(*(v48 - 23));
    }

    v48 = v50;
    v49 += 24;
    if (!v49)
    {
      __cxa_guard_abort(&qword_280AF4030);
      _Unwind_Resume(a1);
    }
  }
}

void YAML::Node::operator[]<char [10]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [10],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA4054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Node::operator[]<char [11]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [11],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA4270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Node::operator[]<char [15]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [15],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA448C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Node::operator[]<char [16]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [16],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA46A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t streamable_to_string<char [13],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA48A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void YAML::Node::operator[]<char [4]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [4],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA4A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t streamable_to_string<char [4],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA4C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [10],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA4E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [11],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA4FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void YAML::Node::operator[]<char [3]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [3],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254CA5190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t streamable_to_string<char [3],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA538C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [15],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA5538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [16],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA56E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t streamable_to_string<char [7],true>::impl(const char *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v2 = strlen(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, a1, v2);
  std::stringbuf::str();
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v6 = v3;
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v10);
}

void sub_254CA5890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseFlowTest_Test(siri::intelligence *this, protobuf::FlowTest_Test *a2, const YAML::Node *a3)
{
  memset(v58, 0, sizeof(v58));
  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  v5 = __p[0] != 1 || v44 && (***v44 & 1) == 0;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v5)
  {
    YAML::Node::operator[]<char [5]>(a2, "name", __p);
    if ((__p[0] & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v53, *&__p[8], *&__p[16]);
      }

      else
      {
        v53 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(exception, &v53);
    }

    v53.__r_.__value_.__r.__words[0] = __p;
    YAML::as_if<std::string,void>::operator()(&v53, v51);
    *(this + 4) |= 1u;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 6, &google::protobuf::internal::fixed_address_empty_string, v51);
    if ((v51[23] & 0x80000000) != 0)
    {
      operator delete(*v51);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [12]>(a2, "description", __p);
  v6 = __p[0] != 1 || v44 && (***v44 & 1) == 0;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v6)
    {
      goto LABEL_36;
    }
  }

  else if (v6)
  {
    goto LABEL_36;
  }

  YAML::Node::operator[]<char [12]>(a2, "description", __p);
  if ((__p[0] & 1) == 0)
  {
    v38 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v53, *&__p[8], *&__p[16]);
    }

    else
    {
      v53 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v38, &v53);
  }

  v53.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v53, v51);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 7, &google::protobuf::internal::fixed_address_empty_string, v51);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_36:
  YAML::Node::operator[]<char [8]>(a2, "enabled", __p);
  v7 = __p[0] != 1 || v44 && (***v44 & 1) == 0;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v7)
    {
      goto LABEL_54;
    }
  }

  else if (v7)
  {
    goto LABEL_54;
  }

  YAML::Node::operator[]<char [8]>(a2, "enabled", __p);
  if ((__p[0] & 1) == 0)
  {
    v39 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v53, *&__p[8], *&__p[16]);
    }

    else
    {
      v53 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v39, &v53);
  }

  v53.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v53, v51);
  v8 = siri::intelligence::StringToBool(v51, 0);
  *(this + 4) |= 4u;
  *(this + 64) = v8;
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_54:
  YAML::Node::operator[]<char [6]>(a2, "steps", __p);
  v9 = __p[0] != 1 || v44 && (***v44 & 1) == 0;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v9)
    {
      goto LABEL_130;
    }
  }

  else if (v9)
  {
    goto LABEL_130;
  }

  YAML::Node::operator[]<char [6]>(a2, "steps", __p);
  if ((__p[0] & 1) == 0)
  {
    v40 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v53, *&__p[8], *&__p[16]);
    }

    else
    {
      v53 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v40, &v53);
  }

  v11 = v44 && (v10 = **v44, *v10 == 1) && *(v10 + 16) == 3;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v11)
    {
LABEL_74:
      YAML::Node::operator[]<char [6]>(a2, "steps", &v53);
      if ((v53.__r_.__value_.__s.__data_[0] & 1) != 0 && v57)
      {
        YAML::detail::node_data::begin(**v57, __p);
        v13 = v55;
        v12 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          *v51 = *__p;
          *&v51[16] = *&__p[16];
          *&v51[32] = v13;
          v52 = v12;
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        else
        {
          *v51 = *__p;
          *&v51[16] = *&__p[16];
          *&v51[32] = v55;
          v52 = 0;
        }
      }

      else
      {
        *v51 = 0;
        memset(&v51[8], 0, 32);
        v52 = 0;
      }

      if (v53.__r_.__value_.__s.__data_[0] == 1 && v57)
      {
        YAML::detail::node_data::end(**v57, __p);
        v18 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *__p;
          v20 = *&__p[8];
          v21 = *&__p[16];
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        else
        {
          v19 = *__p;
          v20 = *&__p[8];
          v21 = *&__p[16];
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v18 = 0;
        v19 = 0;
      }

      while (1)
      {
        if (*v51 == v19)
        {
          v22 = v20;
          v23 = &v51[8];
          if (v19 != 1)
          {
            if (v19 != 2)
            {
              goto LABEL_113;
            }

            v22 = v21;
            v23 = &v51[16];
          }

          if (*v23 == v22)
          {
LABEL_113:
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            if (v56)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v56);
            }

            if (v54 < 0)
            {
              size = v53.__r_.__value_.__l.__size_;
              goto LABEL_129;
            }

            goto LABEL_130;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v51, __p);
        v25 = *(this + 5);
        if (!v25)
        {
          break;
        }

        v26 = *(this + 8);
        v27 = *v25;
        if (v26 < *v25)
        {
          *(this + 8) = v26 + 1;
          v28 = *&v25[2 * v26 + 2];
          goto LABEL_100;
        }

        if (v27 == *(this + 9))
        {
          goto LABEL_98;
        }

LABEL_99:
        *v25 = v27 + 1;
        v28 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(this + 3));
        v29 = *(this + 8);
        v30 = *(this + 5) + 8 * v29;
        *(this + 8) = v29 + 1;
        *(v30 + 8) = v28;
LABEL_100:
        siri::intelligence::ParseFlowTest_Step(v28, __p, v24);
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v51);
      }

      v27 = *(this + 9);
LABEL_98:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v27 + 1);
      v25 = *(this + 5);
      v27 = *v25;
      goto LABEL_99;
    }
  }

  else if (v11)
  {
    goto LABEL_74;
  }

  v14 = *(this + 5);
  if (!v14)
  {
    v16 = *(this + 9);
LABEL_123:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v16 + 1);
    v14 = *(this + 5);
    v16 = *v14;
    goto LABEL_124;
  }

  v15 = *(this + 8);
  v16 = *v14;
  if (v15 < *v14)
  {
    *(this + 8) = v15 + 1;
    v17 = *&v14[2 * v15 + 2];
    goto LABEL_125;
  }

  if (v16 == *(this + 9))
  {
    goto LABEL_123;
  }

LABEL_124:
  *v14 = v16 + 1;
  v17 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_Step>(*(this + 3));
  v32 = *(this + 8);
  v33 = *(this + 5) + 8 * v32;
  *(this + 8) = v32 + 1;
  *(v33 + 8) = v17;
LABEL_125:
  YAML::Node::operator[]<char [6]>(a2, "steps", __p);
  siri::intelligence::ParseFlowTest_Step(v17, __p, v34);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_129:
    operator delete(size);
  }

LABEL_130:
  YAML::Node::operator[]<char [7]>(a2, "repeat", __p);
  v35 = __p[0] != 1 || v44 && (***v44 & 1) == 0;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v35)
    {
      goto LABEL_148;
    }
  }

  else if (v35)
  {
    goto LABEL_148;
  }

  YAML::Node::operator[]<char [7]>(a2, "repeat", __p);
  if ((__p[0] & 1) == 0)
  {
    v41 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v53, *&__p[8], *&__p[16]);
    }

    else
    {
      v53 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v41, &v53);
  }

  v53.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v53, v51);
  v36 = siri::intelligence::StringToIntegralType<int>(v51, 0);
  *(this + 4) |= 8u;
  *(this + 17) = v36;
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_148:
  *__p = v58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254CA62BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  YAML::Node::~Node((v39 - 160));
  __p = (v39 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

__n128 google::protobuf::internal::ArenaStringPtr::SetNoArena(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  if (*a1 == a2)
  {
    operator new();
  }

  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  *v4 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

void siri::intelligence::ParseFlowTest_Step(siri::intelligence *this, protobuf::FlowTest_Step *a2, const YAML::Node *a3)
{
  memset(v117, 0, sizeof(v117));
  YAML::Node::operator[]<char [13]>(a2, "setVariables", __p);
  v5 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v5)
    {
      goto LABEL_77;
    }
  }

  else if (v5)
  {
    goto LABEL_77;
  }

  YAML::Node::operator[]<char [13]>(a2, "setVariables", __p);
  if ((__p[0] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(exception, &v130);
  }

  v7 = v121 && (v6 = **v121, *v6 == 1) && *(v6 + 16) == 3;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v7)
    {
LABEL_21:
      YAML::Node::operator[]<char [13]>(a2, "setVariables", &v130);
      if ((v130.__r_.__value_.__s.__data_[0] & 1) != 0 && v134)
      {
        YAML::detail::node_data::begin(**v134, __p);
        v9 = v132;
        v8 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          *v115 = *__p;
          *&v115[16] = *&__p[16];
          *&v115[32] = v9;
          v116 = v8;
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        else
        {
          *v115 = *__p;
          *&v115[16] = *&__p[16];
          *&v115[32] = v132;
          v116 = 0;
        }
      }

      else
      {
        *v115 = 0;
        memset(&v115[8], 0, 32);
        v116 = 0;
      }

      if (v130.__r_.__value_.__s.__data_[0] == 1 && v134)
      {
        YAML::detail::node_data::end(**v134, __p);
        v14 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *__p;
          v16 = *&__p[8];
          v17 = *&__p[16];
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        else
        {
          v15 = *__p;
          v16 = *&__p[8];
          v17 = *&__p[16];
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v14 = 0;
        v15 = 0;
      }

      while (1)
      {
        if (*v115 == v15)
        {
          v18 = v16;
          v19 = &v115[8];
          if (v15 != 1)
          {
            if (v15 != 2)
            {
              goto LABEL_60;
            }

            v18 = v17;
            v19 = &v115[16];
          }

          if (*v19 == v18)
          {
LABEL_60:
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            if (v116)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v116);
            }

            if (v133)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v133);
            }

            if (v131 < 0)
            {
              size = v130.__r_.__value_.__l.__size_;
              goto LABEL_76;
            }

            goto LABEL_77;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v115, __p);
        v21 = *(this + 5);
        if (!v21)
        {
          break;
        }

        v22 = *(this + 8);
        v23 = *v21;
        if (v22 < *v21)
        {
          *(this + 8) = v22 + 1;
          v24 = *&v21[2 * v22 + 2];
          goto LABEL_47;
        }

        if (v23 == *(this + 9))
        {
          goto LABEL_45;
        }

LABEL_46:
        *v21 = v23 + 1;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(this + 3));
        v25 = *(this + 8);
        v26 = *(this + 5) + 8 * v25;
        *(this + 8) = v25 + 1;
        *(v26 + 8) = v24;
LABEL_47:
        siri::intelligence::ParseFlowTest_KeyValueParameter(v24, __p, v20);
        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
        }

        if (v126 < 0)
        {
          operator delete(v125);
        }

        if (v124)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        if (v123 < 0)
        {
          operator delete(v122);
        }

        if (v120)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v120);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v115);
      }

      v23 = *(this + 9);
LABEL_45:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v23 + 1);
      v21 = *(this + 5);
      v23 = *v21;
      goto LABEL_46;
    }
  }

  else if (v7)
  {
    goto LABEL_21;
  }

  v10 = *(this + 5);
  if (!v10)
  {
    v12 = *(this + 9);
LABEL_70:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v12 + 1);
    v10 = *(this + 5);
    v12 = *v10;
    goto LABEL_71;
  }

  v11 = *(this + 8);
  v12 = *v10;
  if (v11 < *v10)
  {
    *(this + 8) = v11 + 1;
    v13 = *&v10[2 * v11 + 2];
    goto LABEL_72;
  }

  if (v12 == *(this + 9))
  {
    goto LABEL_70;
  }

LABEL_71:
  *v10 = v12 + 1;
  v13 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(this + 3));
  v28 = *(this + 8);
  v29 = *(this + 5) + 8 * v28;
  *(this + 8) = v28 + 1;
  *(v29 + 8) = v13;
LABEL_72:
  YAML::Node::operator[]<char [13]>(a2, "setVariables", __p);
  siri::intelligence::ParseFlowTest_KeyValueParameter(v13, __p, v30);
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_76:
    operator delete(size);
  }

LABEL_77:
  YAML::Node::operator[]<char [10]>(a2, "startFrom", __p);
  v31 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v31)
    {
      goto LABEL_130;
    }
  }

  else if (v31)
  {
    goto LABEL_130;
  }

  *(this + 4) |= 1u;
  started = *(this + 6);
  if (!started)
  {
    started = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_StartFrom>(0);
    *(this + 6) = started;
  }

  YAML::Node::operator[]<char [10]>(a2, "startFrom", &v130);
  memset(v128, 0, 24);
  YAML::Node::operator[]<char [11]>(&v130, "responseId", __p);
  v33 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v33)
    {
      goto LABEL_108;
    }
  }

  else if (v33)
  {
    goto LABEL_108;
  }

  YAML::Node::operator[]<char [11]>(&v130, "responseId", __p);
  if ((__p[0] & 1) == 0)
  {
    v102 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v115, *&__p[8], *&__p[16]);
    }

    else
    {
      *v115 = *&__p[8];
      *&v115[16] = *&__p[24];
    }

    YAML::InvalidNode::InvalidNode(v102, v115);
  }

  *v115 = __p;
  YAML::as_if<std::string,void>::operator()(v115, &v136);
  *(started + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(started + 3, &google::protobuf::internal::fixed_address_empty_string, &v136);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_108:
  YAML::Node::operator[]<char [11]>(&v130, "activityId", __p);
  v34 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) == 0)
  {
    if (v34)
    {
      goto LABEL_126;
    }

LABEL_119:
    YAML::Node::operator[]<char [11]>(&v130, "activityId", __p);
    if ((__p[0] & 1) == 0)
    {
      v103 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v115, *&__p[8], *&__p[16]);
      }

      else
      {
        *v115 = *&__p[8];
        *&v115[16] = *&__p[24];
      }

      YAML::InvalidNode::InvalidNode(v103, v115);
    }

    *v115 = __p;
    YAML::as_if<std::string,void>::operator()(v115, &v136);
    *(started + 4) |= 2u;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(started + 4, &google::protobuf::internal::fixed_address_empty_string, &v136);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (v120)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_126;
  }

  operator delete(*&__p[8]);
  if (!v34)
  {
    goto LABEL_119;
  }

LABEL_126:
  *__p = v128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v133)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v133);
  }

  if (v131 < 0)
  {
    operator delete(v130.__r_.__value_.__l.__size_);
  }

LABEL_130:
  YAML::Node::operator[]<char [11]>(a2, "sendIntent", __p);
  v35 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v35)
    {
      goto LABEL_259;
    }
  }

  else if (v35)
  {
    goto LABEL_259;
  }

  *(this + 4) |= 2u;
  v36 = *(this + 7);
  if (!v36)
  {
    v36 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_SendIntent>(0);
    *(this + 7) = v36;
  }

  YAML::Node::operator[]<char [11]>(a2, "sendIntent", v115);
  memset(&v136, 0, sizeof(v136));
  YAML::Node::operator[]<char [3]>(v115, "id", __p);
  v37 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v37)
    {
      goto LABEL_161;
    }
  }

  else if (v37)
  {
    goto LABEL_161;
  }

  YAML::Node::operator[]<char [3]>(v115, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    v104 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v104, &v130);
  }

  v130.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v130, v128);
  *(v36 + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v36 + 6, &google::protobuf::internal::fixed_address_empty_string, v128);
  if ((v128[23] & 0x80000000) != 0)
  {
    operator delete(*v128);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_161:
  YAML::Node::operator[]<char [5]>(v115, "name", __p);
  v38 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v38)
    {
      goto LABEL_179;
    }
  }

  else if (v38)
  {
    goto LABEL_179;
  }

  YAML::Node::operator[]<char [5]>(v115, "name", __p);
  if ((__p[0] & 1) == 0)
  {
    v105 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v105, &v130);
  }

  v130.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v130, v128);
  *(v36 + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v36 + 7, &google::protobuf::internal::fixed_address_empty_string, v128);
  if ((v128[23] & 0x80000000) != 0)
  {
    operator delete(*v128);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_179:
  YAML::Node::operator[]<char [6]>(v115, "slots", __p);
  v39 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v39)
    {
      goto LABEL_255;
    }
  }

  else if (v39)
  {
    goto LABEL_255;
  }

  YAML::Node::operator[]<char [6]>(v115, "slots", __p);
  if ((__p[0] & 1) == 0)
  {
    v106 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v106, &v130);
  }

  v41 = v121 && (v40 = **v121, *v40 == 1) && *(v40 + 16) == 3;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v41)
    {
LABEL_199:
      YAML::Node::operator[]<char [6]>(v115, "slots", &v130);
      if ((v130.__r_.__value_.__s.__data_[0] & 1) != 0 && v134)
      {
        YAML::detail::node_data::begin(**v134, __p);
        v43 = v132;
        v42 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          *v128 = *__p;
          *&v128[16] = *&__p[16];
          *&v128[32] = v43;
          v129 = v42;
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        else
        {
          *v128 = *__p;
          *&v128[16] = *&__p[16];
          *&v128[32] = v132;
          v129 = 0;
        }
      }

      else
      {
        *v128 = 0;
        memset(&v128[8], 0, 32);
        v129 = 0;
      }

      if (v130.__r_.__value_.__s.__data_[0] == 1 && v134)
      {
        YAML::detail::node_data::end(**v134, __p);
        v48 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          v49 = *__p;
          v50 = *&__p[8];
          v51 = *&__p[16];
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        else
        {
          v49 = *__p;
          v50 = *&__p[8];
          v51 = *&__p[16];
        }
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v48 = 0;
        v49 = 0;
      }

      while (1)
      {
        if (*v128 == v49)
        {
          v52 = v50;
          v53 = &v128[8];
          if (v49 != 1)
          {
            if (v49 != 2)
            {
              goto LABEL_238;
            }

            v52 = v51;
            v53 = &v128[16];
          }

          if (*v53 == v52)
          {
LABEL_238:
            if (v48)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v48);
            }

            if (v129)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v129);
            }

            if (v133)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v133);
            }

            if (v131 < 0)
            {
              v61 = v130.__r_.__value_.__l.__size_;
              goto LABEL_254;
            }

            goto LABEL_255;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v128, __p);
        v55 = *(v36 + 5);
        if (!v55)
        {
          break;
        }

        v56 = *(v36 + 8);
        v57 = *v55;
        if (v56 < *v55)
        {
          *(v36 + 8) = v56 + 1;
          v58 = *&v55[2 * v56 + 2];
          goto LABEL_225;
        }

        if (v57 == *(v36 + 9))
        {
          goto LABEL_223;
        }

LABEL_224:
        *v55 = v57 + 1;
        v58 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(v36 + 3));
        v59 = *(v36 + 8);
        v60 = *(v36 + 5) + 8 * v59;
        *(v36 + 8) = v59 + 1;
        *(v60 + 8) = v58;
LABEL_225:
        siri::intelligence::ParseFlowTest_KeyValueParameter(v58, __p, v54);
        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
        }

        if (v126 < 0)
        {
          operator delete(v125);
        }

        if (v124)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        if (v123 < 0)
        {
          operator delete(v122);
        }

        if (v120)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v120);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v128);
      }

      v57 = *(v36 + 9);
LABEL_223:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v36 + 6, v57 + 1);
      v55 = *(v36 + 5);
      v57 = *v55;
      goto LABEL_224;
    }
  }

  else if (v41)
  {
    goto LABEL_199;
  }

  v44 = *(v36 + 5);
  if (!v44)
  {
    v46 = *(v36 + 9);
    goto LABEL_248;
  }

  v45 = *(v36 + 8);
  v46 = *v44;
  if (v45 >= *v44)
  {
    if (v46 != *(v36 + 9))
    {
LABEL_249:
      *v44 = v46 + 1;
      v47 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(v36 + 3));
      v62 = *(v36 + 8);
      v63 = *(v36 + 5) + 8 * v62;
      *(v36 + 8) = v62 + 1;
      *(v63 + 8) = v47;
      goto LABEL_250;
    }

LABEL_248:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v36 + 6, v46 + 1);
    v44 = *(v36 + 5);
    v46 = *v44;
    goto LABEL_249;
  }

  *(v36 + 8) = v45 + 1;
  v47 = *&v44[2 * v45 + 2];
LABEL_250:
  YAML::Node::operator[]<char [6]>(v115, "slots", __p);
  siri::intelligence::ParseFlowTest_KeyValueParameter(v47, __p, v64);
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v61 = *&__p[8];
LABEL_254:
    operator delete(v61);
  }

LABEL_255:
  *__p = &v136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v116)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v116);
  }

  if ((v115[31] & 0x80000000) != 0)
  {
    operator delete(*&v115[8]);
  }

LABEL_259:
  YAML::Node::operator[]<char [15]>(a2, "assertResponse", __p);
  v65 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v65)
    {
      goto LABEL_447;
    }
  }

  else if (v65)
  {
    goto LABEL_447;
  }

  *(this + 4) |= 4u;
  v66 = *(this + 8);
  if (!v66)
  {
    v66 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertResponse>(0);
    *(this + 8) = v66;
  }

  YAML::Node::operator[]<char [15]>(a2, "assertResponse", v115);
  memset(v135, 0, sizeof(v135));
  YAML::Node::operator[]<char [3]>(v115, "id", __p);
  v67 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v67)
    {
      goto LABEL_290;
    }
  }

  else if (v67)
  {
    goto LABEL_290;
  }

  YAML::Node::operator[]<char [3]>(v115, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    v107 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v107, &v130);
  }

  v130.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v130, v128);
  *(v66 + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v66 + 9, &google::protobuf::internal::fixed_address_empty_string, v128);
  if ((v128[23] & 0x80000000) != 0)
  {
    operator delete(*v128);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_290:
  YAML::Node::operator[]<char [6]>(v115, "anyId", __p);
  v68 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v68)
  {
    goto LABEL_357;
  }

  YAML::Node::operator[]<char [6]>(v115, "anyId", __p);
  if ((__p[0] & 1) == 0)
  {
    v108 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v108, &v130);
  }

  v70 = v121 && (v69 = **v121, *v69 == 1) && *(v69 + 16) == 3;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v70)
    {
LABEL_309:
      YAML::Node::operator[]<char [6]>(v115, "anyId", &v130);
      if ((v130.__r_.__value_.__s.__data_[0] & 1) != 0 && v134)
      {
        YAML::detail::node_data::begin(**v134, __p);
        v72 = v132;
        v71 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          *v128 = *__p;
          *&v128[16] = *&__p[16];
          *&v128[32] = v72;
          v129 = v71;
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

        else
        {
          *v128 = *__p;
          *&v128[16] = *&__p[16];
          *&v128[32] = v132;
          v129 = 0;
        }
      }

      else
      {
        *v128 = 0;
        memset(&v128[8], 0, 32);
        v129 = 0;
      }

      if (v130.__r_.__value_.__s.__data_[0] == 1 && v134)
      {
        YAML::detail::node_data::end(**v134, __p);
        v74 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          v75 = *__p;
          v76 = *&__p[8];
          v77 = *&__p[16];
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        else
        {
          v75 = *__p;
          v76 = *&__p[8];
          v77 = *&__p[16];
        }
      }

      else
      {
        v76 = 0;
        v77 = 0;
        v74 = 0;
        v75 = 0;
      }

      while (1)
      {
        if (*v128 == v75)
        {
          v78 = v76;
          v79 = &v128[8];
          if (v75 != 1)
          {
            if (v75 != 2)
            {
              break;
            }

            v78 = v77;
            v79 = &v128[16];
          }

          if (*v79 == v78)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v128, __p);
        if ((__p[0] & 1) == 0)
        {
          v99 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
          }

          else
          {
            v136 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v99, &v136);
        }

        v136.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v136, &v118);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(v66 + 24, &v118);
        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
        }

        if (v126 < 0)
        {
          operator delete(v125);
        }

        if (v124)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        if (v123 < 0)
        {
          operator delete(v122);
        }

        if (v120)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v120);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v128);
      }

      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      if (v129)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v129);
      }

      if (v133)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v133);
      }

      if (v131 < 0)
      {
        v73 = v130.__r_.__value_.__l.__size_;
        goto LABEL_356;
      }

      goto LABEL_357;
    }
  }

  else if (v70)
  {
    goto LABEL_309;
  }

  YAML::Node::operator[]<char [6]>(v115, "anyId", __p);
  if ((__p[0] & 1) == 0)
  {
    v113 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v113, &v130);
  }

  v130.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v130, v128);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(v66 + 24, v128);
  if ((v128[23] & 0x80000000) != 0)
  {
    operator delete(*v128);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v73 = *&__p[8];
LABEL_356:
    operator delete(v73);
  }

LABEL_357:
  YAML::Node::operator[]<char [7]>(v115, "allIds", __p);
  v80 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v80)
    {
      goto LABEL_425;
    }
  }

  else if (v80)
  {
    goto LABEL_425;
  }

  YAML::Node::operator[]<char [7]>(v115, "allIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v109 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v109, &v130);
  }

  v82 = v121 && (v81 = **v121, *v81 == 1) && *(v81 + 16) == 3;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v82)
    {
LABEL_377:
      YAML::Node::operator[]<char [7]>(v115, "allIds", &v130);
      if ((v130.__r_.__value_.__s.__data_[0] & 1) != 0 && v134)
      {
        YAML::detail::node_data::begin(**v134, __p);
        v84 = v132;
        v83 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          *v128 = *__p;
          *&v128[16] = *&__p[16];
          *&v128[32] = v84;
          v129 = v83;
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        else
        {
          *v128 = *__p;
          *&v128[16] = *&__p[16];
          *&v128[32] = v132;
          v129 = 0;
        }
      }

      else
      {
        *v128 = 0;
        memset(&v128[8], 0, 32);
        v129 = 0;
      }

      if (v130.__r_.__value_.__s.__data_[0] == 1 && v134)
      {
        YAML::detail::node_data::end(**v134, __p);
        v86 = v133;
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          v87 = *__p;
          v88 = *&__p[8];
          v89 = *&__p[16];
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        else
        {
          v87 = *__p;
          v88 = *&__p[8];
          v89 = *&__p[16];
        }
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v86 = 0;
        v87 = 0;
      }

      while (1)
      {
        if (*v128 == v87)
        {
          v90 = v88;
          v91 = &v128[8];
          if (v87 != 1)
          {
            if (v87 != 2)
            {
              break;
            }

            v90 = v89;
            v91 = &v128[16];
          }

          if (*v91 == v90)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v128, __p);
        if ((__p[0] & 1) == 0)
        {
          v100 = __cxa_allocate_exception(0x38uLL);
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v136, *&__p[8], *&__p[16]);
          }

          else
          {
            v136 = *&__p[8];
          }

          YAML::InvalidNode::InvalidNode(v100, &v136);
        }

        v136.__r_.__value_.__r.__words[0] = __p;
        YAML::as_if<std::string,void>::operator()(&v136, &v118);
        google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(v66 + 48, &v118);
        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v127);
        }

        if (v126 < 0)
        {
          operator delete(v125);
        }

        if (v124)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        if (v123 < 0)
        {
          operator delete(v122);
        }

        if (v120)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v120);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v128);
      }

      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v86);
      }

      if (v129)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v129);
      }

      if (v133)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v133);
      }

      if (v131 < 0)
      {
        v85 = v130.__r_.__value_.__l.__size_;
        goto LABEL_424;
      }

      goto LABEL_425;
    }
  }

  else if (v82)
  {
    goto LABEL_377;
  }

  YAML::Node::operator[]<char [7]>(v115, "allIds", __p);
  if ((__p[0] & 1) == 0)
  {
    v114 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
    }

    else
    {
      v130 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v114, &v130);
  }

  v130.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v130, v128);
  google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(v66 + 48, v128);
  if ((v128[23] & 0x80000000) != 0)
  {
    operator delete(*v128);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v85 = *&__p[8];
LABEL_424:
    operator delete(v85);
  }

LABEL_425:
  YAML::Node::operator[]<char [6]>(v115, "count", __p);
  v92 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) == 0)
  {
    if (v92)
    {
      goto LABEL_443;
    }

LABEL_436:
    YAML::Node::operator[]<char [6]>(v115, "count", __p);
    if ((__p[0] & 1) == 0)
    {
      v112 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v130, *&__p[8], *&__p[16]);
      }

      else
      {
        v130 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v112, &v130);
    }

    v130.__r_.__value_.__r.__words[0] = __p;
    YAML::as_if<std::string,void>::operator()(&v130, v128);
    v93 = siri::intelligence::StringToIntegralType<int>(v128, 0);
    *(v66 + 4) |= 2u;
    *(v66 + 20) = v93;
    if ((v128[23] & 0x80000000) != 0)
    {
      operator delete(*v128);
    }

    if (v120)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_443;
  }

  operator delete(*&__p[8]);
  if (!v92)
  {
    goto LABEL_436;
  }

LABEL_443:
  *__p = v135;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v116)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v116);
  }

  if ((v115[31] & 0x80000000) != 0)
  {
    operator delete(*&v115[8]);
  }

LABEL_447:
  YAML::Node::operator[]<char [16]>(a2, "assertCondition", __p);
  v94 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v94)
    {
      goto LABEL_500;
    }
  }

  else if (v94)
  {
    goto LABEL_500;
  }

  *(this + 4) |= 8u;
  v95 = *(this + 9);
  if (!v95)
  {
    v95 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_AssertCondition>(0);
    *(this + 9) = v95;
  }

  YAML::Node::operator[]<char [16]>(a2, "assertCondition", &v130);
  memset(v128, 0, 24);
  YAML::Node::operator[]<char [3]>(&v130, "id", __p);
  v96 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v96)
    {
      goto LABEL_478;
    }
  }

  else if (v96)
  {
    goto LABEL_478;
  }

  YAML::Node::operator[]<char [3]>(&v130, "id", __p);
  if ((__p[0] & 1) == 0)
  {
    v110 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v115, *&__p[8], *&__p[16]);
    }

    else
    {
      *v115 = *&__p[8];
      *&v115[16] = *&__p[24];
    }

    YAML::InvalidNode::InvalidNode(v110, v115);
  }

  *v115 = __p;
  YAML::as_if<std::string,void>::operator()(v115, &v136);
  *(v95 + 4) |= 1u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(v95 + 3, &google::protobuf::internal::fixed_address_empty_string, &v136);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_478:
  YAML::Node::operator[]<char [6]>(&v130, "value", __p);
  v97 = __p[0] != 1 || v121 && (***v121 & 1) == 0;
  if (v120)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120);
  }

  if ((__p[31] & 0x80000000) == 0)
  {
    if (v97)
    {
      goto LABEL_496;
    }

LABEL_489:
    YAML::Node::operator[]<char [6]>(&v130, "value", __p);
    if ((__p[0] & 1) == 0)
    {
      v111 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v115, *&__p[8], *&__p[16]);
      }

      else
      {
        *v115 = *&__p[8];
        *&v115[16] = *&__p[24];
      }

      YAML::InvalidNode::InvalidNode(v111, v115);
    }

    *v115 = __p;
    YAML::as_if<std::string,void>::operator()(v115, &v136);
    v98 = siri::intelligence::StringToBool(&v136, 0);
    *(v95 + 4) |= 2u;
    *(v95 + 32) = v98;
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (v120)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    goto LABEL_496;
  }

  operator delete(*&__p[8]);
  if (!v97)
  {
    goto LABEL_489;
  }

LABEL_496:
  *__p = v128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v133)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v133);
  }

  if (v131 < 0)
  {
    operator delete(v130.__r_.__value_.__l.__size_);
  }

LABEL_500:
  *__p = v117;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254CA84F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28)
{
  __cxa_free_exception(v28);
  YAML::Node::~Node(&a28);
  *(v29 - 240) = v29 - 136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v29 - 240));
  YAML::Node::~Node(&__p);
  *(v29 - 240) = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v29 - 240));
  _Unwind_Resume(a1);
}

void siri::intelligence::ParseFlowTest_KeyValueParameter(siri::intelligence *this, protobuf::FlowTest_KeyValueParameter *a2, const YAML::Node *a3)
{
  memset(v85, 0, sizeof(v85));
  YAML::Node::operator[]<char [4]>(a2, "key", __p);
  v5 = __p[0] != 1 || v71 && (***v71 & 1) == 0;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v5)
  {
    YAML::Node::operator[]<char [4]>(a2, "key", __p);
    if ((__p[0] & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v80, *&__p[8], *&__p[16]);
      }

      else
      {
        v80 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(exception, &v80);
    }

    v80.__r_.__value_.__r.__words[0] = __p;
    YAML::as_if<std::string,void>::operator()(&v80, v78);
    *(this + 4) |= 1u;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 9, &google::protobuf::internal::fixed_address_empty_string, v78);
    if ((v78[23] & 0x80000000) != 0)
    {
      operator delete(*v78);
    }

    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  YAML::Node::operator[]<char [12]>(a2, "valueNumber", __p);
  v6 = __p[0] != 1 || v71 && (***v71 & 1) == 0;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v6)
    {
      goto LABEL_36;
    }
  }

  else if (v6)
  {
    goto LABEL_36;
  }

  YAML::Node::operator[]<char [12]>(a2, "valueNumber", __p);
  if ((__p[0] & 1) == 0)
  {
    v64 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v80, *&__p[8], *&__p[16]);
    }

    else
    {
      v80 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v64, &v80);
  }

  v80.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v80, v78);
  siri::intelligence::StringToDouble(v78, 0);
  *(this + 4) |= 4u;
  *(this + 11) = v7;
  if ((v78[23] & 0x80000000) != 0)
  {
    operator delete(*v78);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_36:
  YAML::Node::operator[]<char [13]>(a2, "valueBoolean", __p);
  v8 = __p[0] != 1 || v71 && (***v71 & 1) == 0;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v8)
    {
      goto LABEL_54;
    }
  }

  else if (v8)
  {
    goto LABEL_54;
  }

  YAML::Node::operator[]<char [13]>(a2, "valueBoolean", __p);
  if ((__p[0] & 1) == 0)
  {
    v65 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v80, *&__p[8], *&__p[16]);
    }

    else
    {
      v80 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v65, &v80);
  }

  v80.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v80, v78);
  v9 = siri::intelligence::StringToBool(v78, 0);
  *(this + 4) |= 8u;
  *(this + 96) = v9;
  if ((v78[23] & 0x80000000) != 0)
  {
    operator delete(*v78);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_54:
  YAML::Node::operator[]<char [12]>(a2, "valueString", __p);
  v10 = __p[0] != 1 || v71 && (***v71 & 1) == 0;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v10)
    {
      goto LABEL_72;
    }
  }

  else if (v10)
  {
    goto LABEL_72;
  }

  YAML::Node::operator[]<char [12]>(a2, "valueString", __p);
  if ((__p[0] & 1) == 0)
  {
    v66 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v80, *&__p[8], *&__p[16]);
    }

    else
    {
      v80 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v66, &v80);
  }

  v80.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v80, v78);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 10, &google::protobuf::internal::fixed_address_empty_string, v78);
  if ((v78[23] & 0x80000000) != 0)
  {
    operator delete(*v78);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_72:
  YAML::Node::operator[]<char [11]>(a2, "valueArray", __p);
  v11 = __p[0] != 1 || v71 && (***v71 & 1) == 0;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (v11)
  {
    goto LABEL_147;
  }

  YAML::Node::operator[]<char [11]>(a2, "valueArray", __p);
  if ((__p[0] & 1) == 0)
  {
    v67 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v80, *&__p[8], *&__p[16]);
    }

    else
    {
      v80 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v67, &v80);
  }

  v13 = v71 && (v12 = **v71, *v12 == 1) && *(v12 + 16) == 3;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
LABEL_91:
      YAML::Node::operator[]<char [11]>(a2, "valueArray", &v80);
      if ((v80.__r_.__value_.__s.__data_[0] & 1) != 0 && v84)
      {
        YAML::detail::node_data::begin(**v84, __p);
        v15 = v82;
        v14 = v83;
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          *v78 = *__p;
          *&v78[16] = *&__p[16];
          *&v78[32] = v15;
          v79 = v14;
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        else
        {
          *v78 = *__p;
          *&v78[16] = *&__p[16];
          *&v78[32] = v82;
          v79 = 0;
        }
      }

      else
      {
        *v78 = 0;
        memset(&v78[8], 0, 32);
        v79 = 0;
      }

      if (v80.__r_.__value_.__s.__data_[0] == 1 && v84)
      {
        YAML::detail::node_data::end(**v84, __p);
        v20 = v83;
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          v21 = *__p;
          v22 = *&__p[8];
          v23 = *&__p[16];
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        else
        {
          v21 = *__p;
          v22 = *&__p[8];
          v23 = *&__p[16];
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v20 = 0;
        v21 = 0;
      }

      while (1)
      {
        if (*v78 == v21)
        {
          v24 = v22;
          v25 = &v78[8];
          if (v21 != 1)
          {
            if (v21 != 2)
            {
              goto LABEL_130;
            }

            v24 = v23;
            v25 = &v78[16];
          }

          if (*v25 == v24)
          {
LABEL_130:
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            if (v79)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
            }

            if (v83)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            }

            if (v81 < 0)
            {
              size = v80.__r_.__value_.__l.__size_;
              goto LABEL_146;
            }

            goto LABEL_147;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v78, __p);
        v27 = *(this + 5);
        if (!v27)
        {
          break;
        }

        v28 = *(this + 8);
        v29 = *v27;
        if (v28 < *v27)
        {
          *(this + 8) = v28 + 1;
          v30 = *&v27[2 * v28 + 2];
          goto LABEL_117;
        }

        if (v29 == *(this + 9))
        {
          goto LABEL_115;
        }

LABEL_116:
        *v27 = v29 + 1;
        v30 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(this + 3));
        v31 = *(this + 8);
        v32 = *(this + 5) + 8 * v31;
        *(this + 8) = v31 + 1;
        *(v32 + 8) = v30;
LABEL_117:
        siri::intelligence::ParseFlowTest_KeyValueParameter(v30, __p, v26);
        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        if (v76 < 0)
        {
          operator delete(v75);
        }

        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        if (v73 < 0)
        {
          operator delete(v72);
        }

        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v78);
      }

      v29 = *(this + 9);
LABEL_115:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v29 + 1);
      v27 = *(this + 5);
      v29 = *v27;
      goto LABEL_116;
    }
  }

  else if (v13)
  {
    goto LABEL_91;
  }

  v16 = *(this + 5);
  if (!v16)
  {
    v18 = *(this + 9);
LABEL_140:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
    v16 = *(this + 5);
    v18 = *v16;
    goto LABEL_141;
  }

  v17 = *(this + 8);
  v18 = *v16;
  if (v17 < *v16)
  {
    *(this + 8) = v17 + 1;
    v19 = *&v16[2 * v17 + 2];
    goto LABEL_142;
  }

  if (v18 == *(this + 9))
  {
    goto LABEL_140;
  }

LABEL_141:
  *v16 = v18 + 1;
  v19 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(this + 3));
  v34 = *(this + 8);
  v35 = *(this + 5) + 8 * v34;
  *(this + 8) = v34 + 1;
  *(v35 + 8) = v19;
LABEL_142:
  YAML::Node::operator[]<char [11]>(a2, "valueArray", __p);
  siri::intelligence::ParseFlowTest_KeyValueParameter(v19, __p, v36);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    size = *&__p[8];
LABEL_146:
    operator delete(size);
  }

LABEL_147:
  YAML::Node::operator[]<char [16]>(a2, "valueDictionary", __p);
  v37 = __p[0] != 1 || v71 && (***v71 & 1) == 0;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v37)
    {
      goto LABEL_223;
    }
  }

  else if (v37)
  {
    goto LABEL_223;
  }

  YAML::Node::operator[]<char [16]>(a2, "valueDictionary", __p);
  if ((__p[0] & 1) == 0)
  {
    v68 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v80, *&__p[8], *&__p[16]);
    }

    else
    {
      v80 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v68, &v80);
  }

  v39 = v71 && (v38 = **v71, *v38 == 1) && *(v38 + 16) == 3;
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v39)
    {
LABEL_167:
      YAML::Node::operator[]<char [16]>(a2, "valueDictionary", &v80);
      if ((v80.__r_.__value_.__s.__data_[0] & 1) != 0 && v84)
      {
        YAML::detail::node_data::begin(**v84, __p);
        v41 = v82;
        v40 = v83;
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          *v78 = *__p;
          *&v78[16] = *&__p[16];
          *&v78[32] = v41;
          v79 = v40;
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        else
        {
          *v78 = *__p;
          *&v78[16] = *&__p[16];
          *&v78[32] = v82;
          v79 = 0;
        }
      }

      else
      {
        *v78 = 0;
        memset(&v78[8], 0, 32);
        v79 = 0;
      }

      if (v80.__r_.__value_.__s.__data_[0] == 1 && v84)
      {
        YAML::detail::node_data::end(**v84, __p);
        v46 = v83;
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          v47 = *__p;
          v48 = *&__p[8];
          v49 = *&__p[16];
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        else
        {
          v47 = *__p;
          v48 = *&__p[8];
          v49 = *&__p[16];
        }
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v46 = 0;
        v47 = 0;
      }

      while (1)
      {
        if (*v78 == v47)
        {
          v50 = v48;
          v51 = &v78[8];
          if (v47 != 1)
          {
            if (v47 != 2)
            {
              goto LABEL_206;
            }

            v50 = v49;
            v51 = &v78[16];
          }

          if (*v51 == v50)
          {
LABEL_206:
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            if (v79)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
            }

            if (v83)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            }

            if (v81 < 0)
            {
              v59 = v80.__r_.__value_.__l.__size_;
              goto LABEL_222;
            }

            goto LABEL_223;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v78, __p);
        v53 = *(this + 8);
        if (!v53)
        {
          break;
        }

        v54 = *(this + 14);
        v55 = *v53;
        if (v54 < *v53)
        {
          *(this + 14) = v54 + 1;
          v56 = *&v53[2 * v54 + 2];
          goto LABEL_193;
        }

        if (v55 == *(this + 15))
        {
          goto LABEL_191;
        }

LABEL_192:
        *v53 = v55 + 1;
        v56 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(this + 6));
        v57 = *(this + 14);
        v58 = *(this + 8) + 8 * v57;
        *(this + 14) = v57 + 1;
        *(v58 + 8) = v56;
LABEL_193:
        siri::intelligence::ParseFlowTest_KeyValueParameter(v56, __p, v52);
        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        if (v76 < 0)
        {
          operator delete(v75);
        }

        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        if (v73 < 0)
        {
          operator delete(v72);
        }

        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v78);
      }

      v55 = *(this + 15);
LABEL_191:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v55 + 1);
      v53 = *(this + 8);
      v55 = *v53;
      goto LABEL_192;
    }
  }

  else if (v39)
  {
    goto LABEL_167;
  }

  v42 = *(this + 8);
  if (!v42)
  {
    v44 = *(this + 15);
LABEL_216:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v44 + 1);
    v42 = *(this + 8);
    v44 = *v42;
    goto LABEL_217;
  }

  v43 = *(this + 14);
  v44 = *v42;
  if (v43 < *v42)
  {
    *(this + 14) = v43 + 1;
    v45 = *&v42[2 * v43 + 2];
    goto LABEL_218;
  }

  if (v44 == *(this + 15))
  {
    goto LABEL_216;
  }

LABEL_217:
  *v42 = v44 + 1;
  v45 = google::protobuf::Arena::CreateMaybeMessage<protobuf::FlowTest_KeyValueParameter>(*(this + 6));
  v60 = *(this + 14);
  v61 = *(this + 8) + 8 * v60;
  *(this + 14) = v60 + 1;
  *(v61 + 8) = v45;
LABEL_218:
  YAML::Node::operator[]<char [16]>(a2, "valueDictionary", __p);
  siri::intelligence::ParseFlowTest_KeyValueParameter(v45, __p, v62);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    v59 = *&__p[8];
LABEL_222:
    operator delete(v59);
  }

LABEL_223:
  *__p = v85;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}