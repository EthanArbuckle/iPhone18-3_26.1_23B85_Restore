void sub_2474A6414(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::removeChild(void *a1, const void **a2)
{
  v3 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 12, a2);
  if (v3)
  {
    v4 = v3[6];
    v5 = v3[5];
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 48))(a1, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_2474A64C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *RIO_MTLX::Element::setAttribute(RIO_MTLX::Element *a1, __int128 *a2, const std::string *a3)
{
  RIO_MTLX::Element::getDocument(a1, v9);
  v6 = v9[1];
  *(*(v9[0] + 272) + 80) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, a2))
  {
    std::vector<std::string>::push_back[abi:ne200100](a1 + 200, a2);
  }

  v9[0] = a2;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 20, a2);
  return std::string::operator=((v7 + 5), a3);
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

void RIO_MTLX::Element::removeAttribute(RIO_MTLX::Element *a1, const void **a2)
{
  v2 = a2;
  v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 20, a2);
  if (v4)
  {
    v5 = v4;
    RIO_MTLX::Element::getDocument(a1, v18);
    v6 = v18[1];
    *(*(v18[0] + 272) + 80) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1 + 20, v5, v18);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v18);
    v7 = *(a1 + 25);
    v8 = *(a1 + 26);
    if (v7 != v8)
    {
      v9 = *(v2 + 23);
      if (v9 >= 0)
      {
        v10 = *(v2 + 23);
      }

      else
      {
        v10 = v2[1];
      }

      if (v9 < 0)
      {
        v2 = *v2;
      }

      while (1)
      {
        v11 = *(v7 + 23);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v7 + 8);
        }

        if (v11 == v10)
        {
          v13 = v12 >= 0 ? v7 : *v7;
          if (!memcmp(v13, v2, v10))
          {
            break;
          }
        }

        v7 += 24;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }
    }

    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(v18, (v7 + 24), v8, v7);
    v15 = v14;
    v16 = *(a1 + 26);
    if (v16 != v14)
    {
      do
      {
        v17 = *(v16 - 1);
        v16 -= 3;
        if (v17 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
    }

    *(a1 + 26) = v15;
  }
}

void RIO_MTLX::Element::addChildOfCategory(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a3 + 8))
    {
      goto LABEL_20;
    }
  }

  else if (*(a3 + 23))
  {
    goto LABEL_20;
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  std::string::basic_string[abi:ne200100](__p, v8 + 1);
  if (v39 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v9, v10, v8);
  }

  *(v9 + v8) = 49;
  RIO_MTLX::Element::createValidChildName(a1, __p, &v40);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v40;
  *(a3 + 16) = v41;
  HIBYTE(v41) = 0;
  LOBYTE(v40) = 0;
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  v11 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a3);
  *a4 = 0;
  a4[1] = 0;
  v32 = a4;
  RIO_MTLX::Element::_creatorMap(v11);
  v12 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_27EE52C90, a2);
  v13 = *(&xmmword_27EE52C90 + 1);
  if (!*(&xmmword_27EE52C90 + 1))
  {
    goto LABEL_36;
  }

  v14 = v12;
  v15 = vcnt_s8(*(&xmmword_27EE52C90 + 8));
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v12;
    if (v12 >= *(&xmmword_27EE52C90 + 1))
    {
      v17 = v12 % *(&xmmword_27EE52C90 + 1);
    }
  }

  else
  {
    v17 = (*(&xmmword_27EE52C90 + 1) - 1) & v12;
  }

  v18 = *(xmmword_27EE52C90 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_36:
    RIO_MTLX::Element::_creatorMap(v12);
    goto LABEL_37;
  }

  while (1)
  {
    v20 = v19[1];
    if (v20 == v14)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v20 >= v13)
      {
        v20 %= v13;
      }
    }

    else
    {
      v20 &= v13 - 1;
    }

    if (v20 != v17)
    {
      goto LABEL_36;
    }

LABEL_35:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_36;
    }
  }

  v12 = std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_27EE52C90, v19 + 2, a2);
  if ((v12 & 1) == 0)
  {
    goto LABEL_35;
  }

  RIO_MTLX::Element::_creatorMap(v12);
  v30 = v19[5];
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v36, (a1 + 8));
  v30(&v40, &v36, a3);
  v31 = v40;
  v40 = 0uLL;
  *v32 = v31;
  v21 = v37;
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (!v31)
  {
LABEL_37:
    v22 = RIO_MTLX::EMPTY_STRING(v21);
    RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(a1, &v40);
    v23 = v40;
    if (*(&v40 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
    }

    if (v23)
    {
      v24 = *(v22 + 23);
      v25 = v24 >= 0 ? *(v22 + 23) : v22[1];
      if (!v25)
      {
        goto LABEL_54;
      }

      v26 = *(a1 + 47);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(a1 + 32);
      }

      if (v26 == v25)
      {
        v28 = v27 >= 0 ? (a1 + 24) : *(a1 + 24);
        v29 = v24 >= 0 ? v22 : *v22;
        if (!memcmp(v28, v29, v25))
        {
LABEL_54:
          std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v35, (a1 + 8));
          std::allocate_shared[abi:ne200100]<RIO_MTLX::Node,std::allocator<RIO_MTLX::Node>,std::shared_ptr<RIO_MTLX::Element> &,std::string const&,0>();
        }
      }
    }

    std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v34, (a1 + 8));
    std::allocate_shared[abi:ne200100]<RIO_MTLX::GenericElement,std::allocator<RIO_MTLX::GenericElement>,std::shared_ptr<RIO_MTLX::Element> &,std::string const&,0>();
  }

  v33 = v31;
  if (*(&v31 + 1))
  {
    atomic_fetch_add_explicit((*(&v31 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 40))(a1, &v33);
  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }
}

void sub_2474A6AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v26 = *(a11 + 8);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

__n128 RIO_MTLX::Element::createValidChildName@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v7 = __p.__r_.__value_.__s.__data_[0];
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

  if (size)
  {
    do
    {
      {
        p_p->__r_.__value_.__s.__data_[0] = 95;
      }

      p_p = (p_p + 1);
      --size;
    }

    while (size);
    v7 = __p.__r_.__value_.__s.__data_[0];
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  *v15 = *(&__p.__r_.__value_.__l.__data_ + 1);
  *&v15[14] = *(&__p.__r_.__value_.__r.__words[1] + 7);
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *a2 = v7;
    *(a2 + 1) = *v15;
    *(a2 + 15) = *&v15[14];
    *(a2 + 23) = v6;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = v7;
    *(a2 + 1) = *v15;
    *(a2 + 15) = *&v15[14];
    *(a2 + 23) = v6;
  }

  for (i = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2); i; i = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2))
  {
    RIO_MTLX::incrementName(a2, v15);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *v15;
    *(a2 + 16) = *&v15[16];
  }

  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474A6CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::changeChildCategory(void *a1@<X0>, std::string **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  ChildIndex = RIO_MTLX::Element::getChildIndex(a1, &(*a2)[2].__r_.__value_.__l.__data_);
  if (ChildIndex == -1)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v9 = ChildIndex;
    RIO_MTLX::Element::removeChild(a1, &(*a2)[2].__r_.__value_.__l.__data_);
    v10 = *a2;
    if (SHIBYTE((*a2)[2].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, v10[2].__r_.__value_.__l.__data_, v10[2].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = v10[2];
    }

    RIO_MTLX::Element::addChildOfCategory(a1, a3, &v14, a4);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    RIO_MTLX::Element::setChildIndex(a1, &(*a2)[2].__r_.__value_.__l.__data_, v9);
    v11 = *a4;
    v12 = a2[1];
    v13[0] = *a2;
    v13[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::copyContentFrom(v11, v13);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_2474A6E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v19 = *(v16 + 8);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::copyContentFrom(uint64_t a1, const std::string **a2)
{
  RIO_MTLX::Element::getDocument(a1, &v22);
  v4 = v23;
  *(*(v22 + 272) + 80) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::string::operator=((a1 + 72), *a2 + 3);
  v5 = *a2;
  if (*a2 != a1)
  {
    *(a1 + 192) = v5[8].__r_.__value_.__l.__data_;
    size = v5[7].__r_.__value_.__l.__size_;
    v7 = *(a1 + 168);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        *(*(a1 + 160) + 8 * i) = 0;
      }

      v9 = *(a1 + 176);
      *(a1 + 176) = 0;
      *(a1 + 184) = 0;
      if (v9)
      {
        v10 = size == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = v9;
      }

      else
      {
        do
        {
          std::string::operator=((v9 + 16), (size + 16));
          std::string::operator=((v9 + 40), (size + 40));
          v11 = *v9;
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(a1 + 160, v9);
          size = *size;
          if (!v11)
          {
            break;
          }

          v9 = v11;
        }

        while (size);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1 + 160, v11);
    }

    if (size)
    {
      operator new();
    }

    v5 = *a2;
  }

  if (v5 != a1)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 200), v5[8].__r_.__value_.__l.__size_, v5[8].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((v5[8].__r_.__value_.__r.__words[2] - v5[8].__r_.__value_.__l.__size_) >> 3));
    v5 = *a2;
  }

  v12 = v5[5].__r_.__value_.__r.__words[2];
  data = v5[6].__r_.__value_.__l.__data_;
  while (v12 != data)
  {
    v15 = *v12;
    v14 = v12[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), (v15 + 48));
    if (v16)
    {
      v17 = v16[5];
      v18 = v16[6];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v18 = 0;
    }

    if (*(v15 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(v15 + 48), *(v15 + 56));
    }

    else
    {
      v21 = *(v15 + 48);
    }

    RIO_MTLX::Element::addChildOfCategory(a1, v15 + 24, &v21, &v22);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v19 = v22;
    v20[0] = v15;
    v20[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::copyContentFrom(v19, v20);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

LABEL_41:
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v12 += 2;
  }
}

void sub_2474A716C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::traverseInheritance(RIO_MTLX::Element *this@<X0>, unint64_t *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v3, this + 1);
  RIO_MTLX::InheritanceIterator::InheritanceIterator(a2, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_2474A7260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::traverseTree(RIO_MTLX::Element *this@<X0>, uint64_t a2@<X8>)
{
  RIO_MTLX::Element::getSelfNonConst(this, &v5);
  v3 = v6;
  *a2 = v5;
  *(a2 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v6;
    *(a2 + 48) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }
}

void RIO_MTLX::Element::traverseGraph(RIO_MTLX::Element *this@<X0>, uint64_t a2@<X8>)
{
  RIO_MTLX::Element::getSelfNonConst(this, &v3);
  RIO_MTLX::GraphIterator::GraphIterator(a2, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_2474A7338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *RIO_MTLX::Element::getUpstreamEdge@<X0>(RIO_MTLX::Element *this@<X0>, void *a2@<X8>)
{
  result = RIO_MTLX::NULL_EDGE(this);
  v4 = *(result + 1);
  *a2 = *result;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 3);
  a2[2] = *(result + 2);
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 5);
  a2[4] = *(result + 4);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void RIO_MTLX::Element::clearContent(RIO_MTLX::Element *this)
{
  RIO_MTLX::Element::getDocument(this, v3);
  v2 = v3[1];
  *(*(v3[0] + 272) + 80) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 95) < 0)
  {
    **(this + 9) = 0;
    *(this + 10) = 0;
  }

  else
  {
    *(this + 72) = 0;
    *(this + 95) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(this + 160);
  std::vector<std::string>::clear[abi:ne200100](this + 25);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::clear(this + 96);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](this + 17);
}

uint64_t RIO_MTLX::Element::validate(uint64_t a1, std::string *a2)
{
  v30 = 1;
  isValidName = RIO_MTLX::isValidName((a1 + 48));
  std::string::basic_string[abi:ne200100]<0>(__p, "Invalid element name");
  RIO_MTLX::Element::validateRequire(a1, isValidName, &v30, a2, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  RIO_MTLX::Element::INHERIT_ATTRIBUTE(v5);
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), RIO_MTLX::Element::INHERIT_ATTRIBUTE(void)::v))
  {
    InheritString = RIO_MTLX::Element::getInheritString(a1);
    RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Element>(a1, InheritString, &v36);
    if (v36)
    {
      v7 = RIO_MTLX::Element::getInheritString(a1);
      RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Element>(a1, v7, &v33);
      v8 = *(v33 + 47);
      if (v8 >= 0)
      {
        v9 = *(v33 + 47);
      }

      else
      {
        v9 = *(v33 + 32);
      }

      v10 = *(a1 + 47);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a1 + 32);
      }

      if (v9 == v10)
      {
        if (v8 >= 0)
        {
          v12 = (v33 + 24);
        }

        else
        {
          v12 = *(v33 + 24);
        }

        if (v11 >= 0)
        {
          v13 = (a1 + 24);
        }

        else
        {
          v13 = *(a1 + 24);
        }

        v14 = memcmp(v12, v13, v9) == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }
    }

    else
    {
      v14 = 0;
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    std::string::basic_string[abi:ne200100]<0>(v26, "Invalid element inheritance");
    RIO_MTLX::Element::validateRequire(a1, v14, &v30, a2, v26);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  v15 = *(a1 + 136);
  v16 = *(a1 + 144);
  for (i = v30; v15 != v16; v15 += 2)
  {
    v18 = *v15;
    v19 = v15[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = (*(*v18 + 32))(v18, a2);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    i &= v20;
  }

  RIO_MTLX::Element::traverseInheritance(a1, &v36);
  v39 = 0;
  v33 = v36;
  v34 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = std::set<std::shared_ptr<RIO_MTLX::Element const>>::set[abi:ne200100](v35, &v38);
  v35[3] = v39;
  RIO_MTLX::NULL_INHERITANCE_ITERATOR(v21);
  v31[0] = RIO_MTLX::NULL_INHERITANCE_ITERATOR(void)::v;
  v31[1] = unk_27EE527E0;
  if (unk_27EE527E0)
  {
    atomic_fetch_add_explicit((unk_27EE527E0 + 8), 1uLL, memory_order_relaxed);
  }

  std::set<std::shared_ptr<RIO_MTLX::Element const>>::set[abi:ne200100](v32, &unk_27EE527E8);
  v32[3] = qword_27EE52800;
  while (v33 != v31[0])
  {
    v22 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    RIO_MTLX::InheritanceIterator::operator++(&v33);
  }

  RIO_MTLX::InheritanceIterator::~InheritanceIterator(v31);
  RIO_MTLX::InheritanceIterator::~InheritanceIterator(&v33);
  RIO_MTLX::InheritanceIterator::~InheritanceIterator(&v36);
  std::string::basic_string[abi:ne200100]<0>(&v24, "Cycle in element inheritance chain");
  if (v25 < 0)
  {
    operator delete(v24);
  }

  return i & 1;
}

void sub_2474A7748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::validateRequire(uint64_t a1, char a2, _BYTE *a3, std::string *a4, const void **a5)
{
  if ((a2 & 1) == 0)
  {
    *a3 = 0;
    if (a4)
    {
      if (*(a5 + 23) >= 0)
      {
        v8 = *(a5 + 23);
      }

      else
      {
        v8 = a5[1];
      }

      v9 = &v47;
      std::string::basic_string[abi:ne200100](&v47, v8 + 2);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v47.__r_.__value_.__r.__words[0];
      }

      if (v8)
      {
        if (*(a5 + 23) >= 0)
        {
          v10 = a5;
        }

        else
        {
          v10 = *a5;
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, ": ");
      v11 = std::operator+<char>();
      v12 = RIO_MTLX::EMPTY_STRING(v11);
      v13 = *(a1 + 71);
      if (v13 >= 0)
      {
        v14 = *(a1 + 71);
      }

      else
      {
        v14 = *(a1 + 56);
      }

      v15 = *(v12 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = v12[1];
      }

      if (v14 != v15 || (v13 >= 0 ? (v17 = (a1 + 48)) : (v17 = *(a1 + 48)), v16 >= 0 ? (v18 = v12) : (v18 = *v12), memcmp(v17, v18, v14)))
      {
        std::operator+<char>();
        v19 = std::string::append(&v53, "");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v55 = v19->__r_.__value_.__r.__words[2];
        v54 = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v21 = &v54;
        }

        else
        {
          v21 = v54;
        }

        if (v55 >= 0)
        {
          v22 = HIBYTE(v55);
        }

        else
        {
          v22 = *(&v54 + 1);
        }

        std::string::append(&v46, v21, v22);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      v23 = *(a1 + 200);
      for (i = *(a1 + 208); v23 != i; v23 += 3)
      {
        std::operator+<char>();
        v25 = std::string::append(&v51, "=");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v52.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v27 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), v23);
        if (v27)
        {
          v28 = (v27 + 5);
        }

        else
        {
          v28 = RIO_MTLX::EMPTY_STRING(0);
        }

        v29 = *(v28 + 23);
        if (v29 >= 0)
        {
          v30 = v28;
        }

        else
        {
          v30 = *v28;
        }

        if (v29 >= 0)
        {
          v31 = *(v28 + 23);
        }

        else
        {
          v31 = v28[1];
        }

        v32 = std::string::append(&v52, v30, v31);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        v34 = std::string::append(&v53, "");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v55 = v34->__r_.__value_.__r.__words[2];
        v54 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v55 >= 0)
        {
          v36 = &v54;
        }

        else
        {
          v36 = v54;
        }

        if (v55 >= 0)
        {
          v37 = HIBYTE(v55);
        }

        else
        {
          v37 = *(&v54 + 1);
        }

        std::string::append(&v46, v36, v37);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }
      }

      std::string::append(&v46, ">");
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v46;
      }

      else
      {
        v38 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v46.__r_.__value_.__l.__size_;
      }

      v40 = std::string::append(&v47, v38, size);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v48, "\n");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v50 = v42->__r_.__value_.__r.__words[2];
      *__p = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (v50 >= 0)
      {
        v44 = __p;
      }

      else
      {
        v44 = __p[0];
      }

      if (v50 >= 0)
      {
        v45 = HIBYTE(v50);
      }

      else
      {
        v45 = __p[1];
      }

      std::string::append(a4, v44, v45);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_2474A7BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2474A82A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40)
{
  v42 = *(v40 - 120);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v43 = *(a10 + 8);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RIO_MTLX::Element::getActiveGeomPrefix(RIO_MTLX::Element *this)
{
  v2 = std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v10, this + 1);
  v3 = v10;
  if (v10)
  {
    GeomPrefix = RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(void)::v;
    while (1)
    {
      RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(v2);
      v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v3 + 20, RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(void)::v);
      v5 = v10;
      if (v4)
      {
        break;
      }

      v2 = *(v10 + 29);
      if (v2 && (v2 = std::__shared_weak_count::lock(v2)) != 0)
      {
        v3 = *(v5 + 28);
      }

      else
      {
        v3 = 0;
      }

      v6 = v11;
      v10 = v3;
      v11 = v2;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        v3 = v10;
      }

      if (!v3)
      {
        goto LABEL_11;
      }
    }

    GeomPrefix = RIO_MTLX::Element::getGeomPrefix(v10);
    v7 = 0;
  }

  else
  {
LABEL_11:
    v7 = 1;
  }

  v8 = v11;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v7)
  {
    return RIO_MTLX::EMPTY_STRING(v8);
  }

  return GeomPrefix;
}

void sub_2474A856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::GeomElement::getActiveGeom(std::string *__return_ptr a1@<X8>, RIO_MTLX::GeomElement *this@<X0>)
{
  v4 = RIO_MTLX::GeomElement::GEOM_ATTRIBUTE(this);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v4);
  if (v5)
  {
    RIO_MTLX::EMPTY_STRING(v5);
    RIO_MTLX::Element::createStringResolver();
  }

  v6 = RIO_MTLX::EMPTY_STRING(0);
  if (*(v6 + 23) < 0)
  {
    v8 = *v6;
    v9 = v6[1];

    std::string::__init_copy_ctor_external(a1, v8, v9);
  }

  else
  {
    v7 = *v6;
    a1->__r_.__value_.__r.__words[2] = v6[2];
    *&a1->__r_.__value_.__l.__data_ = v7;
  }
}

void sub_2474A86A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::ValueElement::getResolvedValueString(RIO_MTLX::ValueElement *a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  v6 = (*(*a1 + 56))(a1);
  isResolvedType = RIO_MTLX::StringResolver::isResolvedType(v6);
  if (isResolvedType)
  {
    v8 = *a2;
    if (!*a2)
    {
      v9 = RIO_MTLX::EMPTY_STRING(isResolvedType);
      RIO_MTLX::Element::createStringResolver(&v19, a1, v9);
      v10 = a2[1];
      v11 = v19;
      *a2 = v19;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        v8 = *a2;
      }

      else
      {
        v8 = v11;
      }
    }

    ValueString = RIO_MTLX::ValueElement::getValueString(a1);
    v17 = (*(*a1 + 56))(a1);
    v18 = *(*v8 + 16);

    v18(v8, ValueString, v17);
  }

  else
  {
    v12 = RIO_MTLX::ValueElement::getValueString(a1);
    if (*(v12 + 23) < 0)
    {
      v14 = *v12;
      v15 = v12[1];

      std::string::__init_copy_ctor_external(a3, v14, v15);
    }

    else
    {
      v13 = *v12;
      a3->__r_.__value_.__r.__words[2] = v12[2];
      *&a3->__r_.__value_.__l.__data_ = v13;
    }
  }
}

BOOL RIO_MTLX::StringResolver::isResolvedType(uint64_t a1)
{
  v2 = RIO_MTLX::FILENAME_TYPE_STRING(a1);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v2[23];
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v2 + 1);
  }

  if (v4 == v5)
  {
    v7 = v3 >= 0 ? a1 : *a1;
    v8 = v6 >= 0 ? v2 : *v2;
    v2 = memcmp(v7, v8, v4);
    if (!v2)
    {
      return 1;
    }
  }

  v9 = RIO_MTLX::GEOMNAME_TYPE_STRING(v2);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = v9[23];
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v9 + 1);
  }

  if (v11 != v12)
  {
    return 0;
  }

  if (v10 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v13 >= 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = *v9;
  }

  return memcmp(v14, v15, v11) == 0;
}

uint64_t *RIO_MTLX::ValueElement::getValueString(RIO_MTLX::ValueElement *this)
{
  RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(void)::v);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

const void **RIO_MTLX::ValueElement::getValue@<X0>(RIO_MTLX::ValueElement *this@<X0>, void *a2@<X8>)
{
  RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(this);
  result = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(void)::v);
  if (result)
  {
    ValueString = RIO_MTLX::ValueElement::getValueString(this);
    v6 = (*(*this + 56))(this);

    return RIO_MTLX::Value::createValueFromStrings(ValueString, v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t RIO_MTLX::ValueElement::validate(uint64_t a1, std::string *a2)
{
  v84[0] = 1;
  RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(a1);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(void)::v);
  if (v4)
  {
    RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v4);
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(void)::v);
    if (v4)
    {
      RIO_MTLX::ValueElement::getValue(a1, &lpsrc);
      v5 = lpsrc;
      std::string::basic_string[abi:ne200100]<0>(v82, "Invalid value");
      RIO_MTLX::Element::validateRequire(a1, v5 != 0, v84, a2, v82);
      if (v83 < 0)
      {
        operator delete(v82[0]);
      }

      v4 = v65;
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }
    }
  }

  RIO_MTLX::ValueElement::INTERFACE_NAME_ATTRIBUTE(v4);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), RIO_MTLX::ValueElement::INTERFACE_NAME_ATTRIBUTE(void)::v);
  if (v6)
  {
    v7 = RIO_MTLX::EMPTY_STRING(v6);
    v8 = RIO_MTLX::Element::isA<RIO_MTLX::Input>(a1, v7);
    if (v8)
    {
      goto LABEL_9;
    }

    v10 = RIO_MTLX::EMPTY_STRING(v8);
    std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
    {
      v12 = v65;
      v13 = 0;
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v12 = 0;
      v13 = 1;
    }

    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v13)
    {
      goto LABEL_34;
    }

    v14 = *(v10 + 23);
    v15 = v14 >= 0 ? *(v10 + 23) : v10[1];
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = *(a1 + 47);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a1 + 32);
    }

    if (v16 == v15 && (v17 >= 0 ? (v18 = (a1 + 24)) : (v18 = *(a1 + 24)), v14 >= 0 ? (v19 = v10) : (v19 = *v10), !memcmp(v18, v19, v15)))
    {
LABEL_9:
      v9 = 1;
    }

    else
    {
LABEL_34:
      v9 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v80, "Only input and token elements support interface names");
    RIO_MTLX::Element::validateRequire(a1, v9, v84, a2, v80);
    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    RIO_MTLX::Element::getAncestorOfType<RIO_MTLX::NodeGraph>(a1, &p_lpsrc);
    if (p_lpsrc)
    {
      RIO_MTLX::NodeGraph::getNodeDef(p_lpsrc, &v76);
      v20 = v76;
      if (v76)
      {
        InterfaceName = RIO_MTLX::ValueElement::getInterfaceName(a1);
        RIO_MTLX::InterfaceElement::getActiveValueElement(v20, InterfaceName, &v74);
        v22 = v74;
        std::string::basic_string[abi:ne200100]<0>(__p, "Interface name not found in referenced NodeDef");
        RIO_MTLX::Element::validateRequire(a1, v22 != 0, v84, a2, __p);
        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v74)
        {
          goto LABEL_74;
        }

        std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&lpsrc, (a1 + 8));
        if (lpsrc)
        {
          v23 = **lpsrc;
          if (v24)
          {
            v25 = v65;
            if (v65)
            {
              atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
            }

LABEL_49:
            v26 = v65;
            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            }

            if (v24 && (v27 = RIO_MTLX::PortElement::CHANNELS_ATTRIBUTE(v26), std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v24 + 20, v27)))
            {
              Channels = RIO_MTLX::PortElement::getChannels(v24);
              v29 = (*(*v74 + 56))(v74);
              v30 = (*(*a1 + 56))(a1);
              LOBYTE(Channels) = RIO_MTLX::PortElement::validChannelsString(Channels, v29, v30);
              std::string::basic_string[abi:ne200100]<0>(v70, "Invalid channels string for interface name");
              RIO_MTLX::Element::validateRequire(a1, Channels, v84, a2, v70);
              if ((v71 & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

              v31 = v70;
            }

            else
            {
              v32 = (*(*a1 + 56))(a1);
              v33 = (*(*v74 + 56))(v74);
              v34 = *(v32 + 23);
              if (v34 >= 0)
              {
                v35 = *(v32 + 23);
              }

              else
              {
                v35 = *(v32 + 8);
              }

              v36 = *(v33 + 23);
              v37 = v36;
              if ((v36 & 0x80u) != 0)
              {
                v36 = *(v33 + 8);
              }

              if (v35 == v36)
              {
                if (v34 >= 0)
                {
                  v38 = v32;
                }

                else
                {
                  v38 = *v32;
                }

                if (v37 >= 0)
                {
                  v39 = v33;
                }

                else
                {
                  v39 = *v33;
                }

                v40 = memcmp(v38, v39, v35) == 0;
              }

              else
              {
                v40 = 0;
              }

              std::string::basic_string[abi:ne200100]<0>(v68, "Interface name refers to value element of a different type");
              RIO_MTLX::Element::validateRequire(a1, v40, v84, a2, v68);
              if ((v69 & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

              v31 = v68;
            }

            operator delete(*v31);
LABEL_72:
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }

LABEL_74:
            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            }

            goto LABEL_76;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v76 = 0;
      v77 = 0;
    }

LABEL_76:
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    v6 = v79;
    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }
  }

  RIO_MTLX::ValueElement::UNITTYPE_ATTRIBUTE(v6);
  v41 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), byte_27EE52AC8);
  if (!v41)
  {
    goto LABEL_91;
  }

  RIO_MTLX::ValueElement::UNITTYPE_ATTRIBUTE(v41);
  v41 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), byte_27EE52AC8);
  if (v41)
  {
    v42 = (v41 + 40);
  }

  else
  {
    v41 = RIO_MTLX::EMPTY_STRING(0);
    v42 = v41;
  }

  v43 = *(v42 + 23);
  if ((v43 & 0x80u) != 0)
  {
    v43 = *(v42 + 1);
  }

  if (v43)
  {
    RIO_MTLX::Element::getDocument(a1, &p_lpsrc);
    RIO_MTLX::Element::getChildOfType<RIO_MTLX::UnitTypeDef>(p_lpsrc, v42, &lpsrc);
    v45 = lpsrc;
    v44 = v65;
    lpsrc = 0;
    v65 = 0;
    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }

    std::string::basic_string[abi:ne200100]<0>(v66, "Unit type definition does not exist in document");
    RIO_MTLX::Element::validateRequire(a1, v45 != 0, v84, a2, v66);
    if (v67 < 0)
    {
      operator delete(v66[0]);
    }
  }

  else
  {
LABEL_91:
    v44 = 0;
    v45 = 0;
  }

  RIO_MTLX::ValueElement::UNIT_ATTRIBUTE(v41);
  v46 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), byte_27EE52AB0);
  if (v46)
  {
    if (v45)
    {
      RIO_MTLX::ValueElement::UNIT_ATTRIBUTE(v46);
      v47 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 160), byte_27EE52AB0);
      if (v47)
      {
        v48 = (v47 + 5);
      }

      else
      {
        v48 = RIO_MTLX::EMPTY_STRING(0);
      }

      RIO_MTLX::UnitTypeDef::getUnitDefs(v45, &lpsrc);
      v50 = lpsrc;
      v51 = v65;
      if (lpsrc != v65)
      {
        while (1)
        {
          v52 = v50->__vftable;
          shared_owners = v50->__shared_owners_;
          if (shared_owners)
          {
            atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v54 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&v52[2].__on_zero_shared, v48);
          v55 = v54;
          if (!v54)
          {
            break;
          }

          v56 = v54[5];
          v57 = v55[6];
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v56)
          {
            goto LABEL_115;
          }

          RIO_MTLX::Element::asA<RIO_MTLX::Unit>(v56, &p_lpsrc);
          if (v57)
          {
            goto LABEL_106;
          }

LABEL_107:
          v58 = p_lpsrc;
          v49 = p_lpsrc != 0;
          if (v79)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v79);
          }

          if (shared_owners)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
          }

          if (!v58)
          {
            v50 = (v50 + 16);
            if (v50 != v51)
            {
              continue;
            }
          }

          goto LABEL_118;
        }

        v57 = 0;
LABEL_115:
        p_lpsrc = 0;
        v79 = 0;
        if (!v57)
        {
          goto LABEL_107;
        }

LABEL_106:
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        goto LABEL_107;
      }

      v49 = 0;
LABEL_118:
      p_lpsrc = &lpsrc;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&p_lpsrc);
    }

    else
    {
      v49 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v62, "Unit definition does not exist in document");
    RIO_MTLX::Element::validateRequire(a1, v49, v84, a2, v62);
    if (v63 < 0)
    {
      operator delete(v62[0]);
    }
  }

  v59 = RIO_MTLX::Element::validate(a1, a2);
  v60 = v84[0];
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  return v59 & v60;
}

void sub_2474A919C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, std::__shared_weak_count *a45)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  v48 = *(v46 - 152);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::Element::isA<RIO_MTLX::Input>(uint64_t a1, const void **a2)
{
  RIO_MTLX::Element::asA<RIO_MTLX::Input>(a1, &v15);
  v4 = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void RIO_MTLX::Element::getAncestorOfType<RIO_MTLX::NodeGraph>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v9, (a1 + 8));
  shared_weak_owners = v9;
  if (v9)
  {
    do
    {
      RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(shared_weak_owners, a2);
      v4 = *a2 == 0;
      if (*a2)
      {
        break;
      }

      v5 = a2[1];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = v9;
      shared_weak_owners = v9[9].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        shared_weak_owners = std::__shared_weak_count::lock(shared_weak_owners);
        v7 = shared_weak_owners;
        if (shared_weak_owners)
        {
          shared_weak_owners = v6[9].__shared_owners_;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v10;
      v9 = shared_weak_owners;
      v10 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        shared_weak_owners = v9;
      }
    }

    while (shared_weak_owners);
  }

  else
  {
    v4 = 1;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v4)
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_2474A9480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RIO_MTLX::ValueElement::getInterfaceName(RIO_MTLX::ValueElement *this)
{
  RIO_MTLX::ValueElement::INTERFACE_NAME_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::ValueElement::INTERFACE_NAME_ATTRIBUTE(void)::v);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t *RIO_MTLX::PortElement::getChannels(RIO_MTLX::PortElement *this)
{
  v2 = RIO_MTLX::PortElement::CHANNELS_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::StringResolver::resolve(RIO_MTLX *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, std::string *a4@<X8>)
{
  v8 = RIO_MTLX::FILENAME_TYPE_STRING(a1);
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  v11 = v8[23];
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v8 + 1);
  }

  if (v10 == v11 && (v9 >= 0 ? (v13 = a3) : (v13 = *a3), v12 >= 0 ? (v14 = v8) : (v14 = *v8), v8 = memcmp(v13, v14, v10), !v8))
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *a2, *(a2 + 8));
    }

    else
    {
      v42 = *a2;
    }

    RIO_MTLX::replaceSubstrings(&v42, a1 + 56, &v43);
    v26 = *(a1 + 1);
    v25 = a1 + 8;
    v24 = v26;
    v27 = v25[23];
    if (v27 >= 0)
    {
      v28 = v25;
    }

    else
    {
      v28 = v24;
    }

    if (v27 >= 0)
    {
      v29 = *(v25 + 23);
    }

    else
    {
      v29 = *(v25 + 1);
    }

    v30 = std::string::insert(&v43, 0, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    a4->__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&a4->__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      v32 = v42.__r_.__value_.__r.__words[0];
LABEL_58:
      operator delete(v32);
    }
  }

  else
  {
    v15 = RIO_MTLX::GEOMNAME_TYPE_STRING(v8);
    v16 = *(a3 + 23);
    if (v16 >= 0)
    {
      v17 = *(a3 + 23);
    }

    else
    {
      v17 = a3[1];
    }

    v18 = v15[23];
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(v15 + 1);
    }

    if (v17 != v18 || (v16 >= 0 ? (v20 = a3) : (v20 = *a3), v19 >= 0 ? (v21 = v15) : (v21 = *v15), memcmp(v20, v21, v17)))
    {
      if (*(a2 + 23) < 0)
      {
        v22 = *a2;
        v23 = *(a2 + 8);

        std::string::__init_copy_ctor_external(a4, v22, v23);
      }

      else
      {
        *&a4->__r_.__value_.__l.__data_ = *a2;
        a4->__r_.__value_.__r.__words[2] = *(a2 + 16);
      }

      return;
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    RIO_MTLX::replaceSubstrings(&__p, a1 + 96, &v43);
    v35 = *(a1 + 4);
    v34 = a1 + 32;
    v33 = v35;
    v36 = v34[23];
    if (v36 >= 0)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    if (v36 >= 0)
    {
      v38 = *(v34 + 23);
    }

    else
    {
      v38 = *(v34 + 1);
    }

    v39 = std::string::insert(&v43, 0, v37, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    a4->__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&a4->__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v32 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_58;
    }
  }
}

void sub_2474A97A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::targetStringsMatch(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    return 1;
  }

  v6 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v6, v23);
  v8 = RIO_MTLX::ARRAY_VALID_SEPARATORS(v7);
  RIO_MTLX::splitString(a2, v8, v22);
  std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string*>>(&v20, v23[0], v23[1]);
  std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string*>>(&v18, v22[0], v22[1]);
  v16 = 0;
  v17 = 0;
  v15 = &v16;
  v9 = v18;
  v26 = v18;
  v27 = v20;
  v25[0] = &v15;
  v25[1] = &v16;
  v24 = 0;
  if (v18 == v19)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    do
    {
      v10 = v27;
      v27 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,std::__less<void,void>>(v27, v21, v9 + 4);
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::insert_iterator<std::set<std::string>>>(v27 == v10, &v27, &v26, v25, &v24);
      if (v27 == v21)
      {
        break;
      }

      v11 = v26;
      v26 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,std::__less<void,void>>(v26, v19, v27 + 4);
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::insert_iterator<std::set<std::string>>>(v26 == v11, &v27, &v26, v25, &v24);
      v9 = v26;
    }

    while (v26 != v19);
    v12 = v16;
    v13 = v17 != 0;
  }

  std::__tree<std::string>::destroy(&v15, v12);
  std::__tree<std::string>::destroy(&v18, v19[0]);
  std::__tree<std::string>::destroy(&v20, v21[0]);
  v20 = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  v22[0] = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v22);
  return v13;
}

void sub_2474A99CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, char *a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__tree<std::string>::destroy(&a15, a16);
  a15 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  a18 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void RIO_MTLX::AttributeDef::CATEGORY(RIO_MTLX::AttributeDef *this)
{
  if ((atomic_load_explicit(&qword_27EE52A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A20))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52AE0, "attributedef");

    __cxa_guard_release(&qword_27EE52A20);
  }
}

void *RIO_MTLX::registryAttributeDef(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::AttributeDef>::ElementRegistry(&RIO_MTLX::registryAttributeDef(void)::v);
  }

  return &RIO_MTLX::registryAttributeDef(void)::v;
}

_BYTE *RIO_MTLX::Backdrop::CATEGORY(RIO_MTLX::Backdrop *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Backdrop::CATEGORY(void)::v, "backdrop");
  }

  return RIO_MTLX::Backdrop::CATEGORY(void)::v;
}

void *RIO_MTLX::registryBackdrop(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Backdrop>::ElementRegistry(&RIO_MTLX::registryBackdrop(void)::v);
  }

  return &RIO_MTLX::registryBackdrop(void)::v;
}

void RIO_MTLX::Collection::CATEGORY(RIO_MTLX::Collection *this)
{
  if ((atomic_load_explicit(&qword_27EE52A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A28))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52AF8, "collection");

    __cxa_guard_release(&qword_27EE52A28);
  }
}

void *RIO_MTLX::registryCollection(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Collection>::ElementRegistry(&RIO_MTLX::registryCollection(void)::v);
  }

  return &RIO_MTLX::registryCollection(void)::v;
}

_BYTE *RIO_MTLX::CommentElement::CATEGORY(RIO_MTLX::CommentElement *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::CommentElement::CATEGORY(void)::v, "comment");
  }

  return RIO_MTLX::CommentElement::CATEGORY(void)::v;
}

void *RIO_MTLX::registryCommentElement(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::CommentElement>::ElementRegistry(&RIO_MTLX::registryCommentElement(void)::v);
  }

  return &RIO_MTLX::registryCommentElement(void)::v;
}

_BYTE *RIO_MTLX::Document::CATEGORY(RIO_MTLX::Document *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Document::CATEGORY(void)::v, "materialx");
  }

  return RIO_MTLX::Document::CATEGORY(void)::v;
}

void *RIO_MTLX::registryDocument(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Document>::ElementRegistry(&RIO_MTLX::registryDocument(void)::v);
  }

  return &RIO_MTLX::registryDocument(void)::v;
}

void RIO_MTLX::GenericElement::CATEGORY(RIO_MTLX::GenericElement *this)
{
  if ((atomic_load_explicit(&qword_27EE52A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A30))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52B10, "generic");

    __cxa_guard_release(&qword_27EE52A30);
  }
}

void *RIO_MTLX::registryGenericElement(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::GenericElement>::ElementRegistry(&RIO_MTLX::registryGenericElement(void)::v);
  }

  return &RIO_MTLX::registryGenericElement(void)::v;
}

_BYTE *RIO_MTLX::GeomInfo::CATEGORY(RIO_MTLX::GeomInfo *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::GeomInfo::CATEGORY(void)::v, "geominfo");
  }

  return RIO_MTLX::GeomInfo::CATEGORY(void)::v;
}

void *RIO_MTLX::registryGeomInfo(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::GeomInfo>::ElementRegistry(&RIO_MTLX::registryGeomInfo(void)::v);
  }

  return &RIO_MTLX::registryGeomInfo(void)::v;
}

_BYTE *RIO_MTLX::GeomProp::CATEGORY(RIO_MTLX::GeomProp *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::GeomProp::CATEGORY(void)::v, "geomprop");
  }

  return RIO_MTLX::GeomProp::CATEGORY(void)::v;
}

void *RIO_MTLX::registryGeomProp(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::GeomProp>::ElementRegistry(&RIO_MTLX::registryGeomProp(void)::v);
  }

  return &RIO_MTLX::registryGeomProp(void)::v;
}

void RIO_MTLX::GeomPropDef::CATEGORY(RIO_MTLX::GeomPropDef *this)
{
  if ((atomic_load_explicit(&qword_27EE52A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A38))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52B28, "geompropdef");

    __cxa_guard_release(&qword_27EE52A38);
  }
}

void *RIO_MTLX::registryGeomPropDef(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::GeomPropDef>::ElementRegistry(&RIO_MTLX::registryGeomPropDef(void)::v);
  }

  return &RIO_MTLX::registryGeomPropDef(void)::v;
}

void RIO_MTLX::Implementation::CATEGORY(RIO_MTLX::Implementation *this)
{
  if ((atomic_load_explicit(&qword_27EE52A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A40))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52B40, "implementation");

    __cxa_guard_release(&qword_27EE52A40);
  }
}

void *RIO_MTLX::registryImplementation(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Implementation>::ElementRegistry(&RIO_MTLX::registryImplementation(void)::v);
  }

  return &RIO_MTLX::registryImplementation(void)::v;
}

_BYTE *RIO_MTLX::Input::CATEGORY(RIO_MTLX::Input *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Input::CATEGORY(void)::v, "input");
  }

  return RIO_MTLX::Input::CATEGORY(void)::v;
}

void *RIO_MTLX::registryInput(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Input>::ElementRegistry(&RIO_MTLX::registryInput(void)::v);
  }

  return &RIO_MTLX::registryInput(void)::v;
}

void RIO_MTLX::Look::CATEGORY(RIO_MTLX::Look *this)
{
  if ((atomic_load_explicit(&qword_27EE52A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A48))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52B58, "look");

    __cxa_guard_release(&qword_27EE52A48);
  }
}

void *RIO_MTLX::registryLook(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Look>::ElementRegistry(&RIO_MTLX::registryLook(void)::v);
  }

  return &RIO_MTLX::registryLook(void)::v;
}

void RIO_MTLX::LookGroup::CATEGORY(RIO_MTLX::LookGroup *this)
{
  if ((atomic_load_explicit(&qword_27EE52A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A50))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52B70, "lookgroup");

    __cxa_guard_release(&qword_27EE52A50);
  }
}

void *RIO_MTLX::registryLookGroup(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::LookGroup>::ElementRegistry(&RIO_MTLX::registryLookGroup(void)::v);
  }

  return &RIO_MTLX::registryLookGroup(void)::v;
}

_BYTE *RIO_MTLX::MaterialAssign::CATEGORY(RIO_MTLX::MaterialAssign *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::MaterialAssign::CATEGORY(void)::v, "materialassign");
  }

  return RIO_MTLX::MaterialAssign::CATEGORY(void)::v;
}

void *RIO_MTLX::registryMaterialAssign(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::MaterialAssign>::ElementRegistry(&RIO_MTLX::registryMaterialAssign(void)::v);
  }

  return &RIO_MTLX::registryMaterialAssign(void)::v;
}

void RIO_MTLX::Member::CATEGORY(RIO_MTLX::Member *this)
{
  if ((atomic_load_explicit(&qword_27EE52A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A58))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52B88, "member");

    __cxa_guard_release(&qword_27EE52A58);
  }
}

void *RIO_MTLX::registryMember(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Member>::ElementRegistry(&RIO_MTLX::registryMember(void)::v);
  }

  return &RIO_MTLX::registryMember(void)::v;
}

_BYTE *RIO_MTLX::Node::CATEGORY(RIO_MTLX::Node *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Node::CATEGORY(void)::v, "node");
  }

  return RIO_MTLX::Node::CATEGORY(void)::v;
}

void *RIO_MTLX::registryNode(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Node>::ElementRegistry(&RIO_MTLX::registryNode(void)::v);
  }

  return &RIO_MTLX::registryNode(void)::v;
}

_BYTE *RIO_MTLX::NodeDef::CATEGORY(RIO_MTLX::NodeDef *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::NodeDef::CATEGORY(void)::v, "nodedef");
  }

  return RIO_MTLX::NodeDef::CATEGORY(void)::v;
}

void *RIO_MTLX::registryNodeDef(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::NodeDef>::ElementRegistry(&RIO_MTLX::registryNodeDef(void)::v);
  }

  return &RIO_MTLX::registryNodeDef(void)::v;
}

_BYTE *RIO_MTLX::NodeGraph::CATEGORY(RIO_MTLX::NodeGraph *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::NodeGraph::CATEGORY(void)::v, "nodegraph");
  }

  return RIO_MTLX::NodeGraph::CATEGORY(void)::v;
}

void *RIO_MTLX::registryNodeGraph(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::NodeGraph>::ElementRegistry(&RIO_MTLX::registryNodeGraph(void)::v);
  }

  return &RIO_MTLX::registryNodeGraph(void)::v;
}

_BYTE *RIO_MTLX::Output::CATEGORY(RIO_MTLX::Output *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Output::CATEGORY(void)::v, "output");
  }

  return RIO_MTLX::Output::CATEGORY(void)::v;
}

void *RIO_MTLX::registryOutput(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Output>::ElementRegistry(&RIO_MTLX::registryOutput(void)::v);
  }

  return &RIO_MTLX::registryOutput(void)::v;
}

void RIO_MTLX::Property::CATEGORY(RIO_MTLX::Property *this)
{
  if ((atomic_load_explicit(&qword_27EE52A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A60))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52BA0, "property");

    __cxa_guard_release(&qword_27EE52A60);
  }
}

void *RIO_MTLX::registryProperty(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Property>::ElementRegistry(&RIO_MTLX::registryProperty(void)::v);
  }

  return &RIO_MTLX::registryProperty(void)::v;
}

void RIO_MTLX::PropertyAssign::CATEGORY(RIO_MTLX::PropertyAssign *this)
{
  if ((atomic_load_explicit(&qword_27EE52A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A68))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52BB8, "propertyassign");

    __cxa_guard_release(&qword_27EE52A68);
  }
}

void *RIO_MTLX::registryPropertyAssign(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::PropertyAssign>::ElementRegistry(&RIO_MTLX::registryPropertyAssign(void)::v);
  }

  return &RIO_MTLX::registryPropertyAssign(void)::v;
}

void RIO_MTLX::PropertySet::CATEGORY(RIO_MTLX::PropertySet *this)
{
  if ((atomic_load_explicit(&qword_27EE52A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A70))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52BD0, "propertyset");

    __cxa_guard_release(&qword_27EE52A70);
  }
}

void *RIO_MTLX::registryPropertySet(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::PropertySet>::ElementRegistry(&RIO_MTLX::registryPropertySet(void)::v);
  }

  return &RIO_MTLX::registryPropertySet(void)::v;
}

void RIO_MTLX::PropertySetAssign::CATEGORY(RIO_MTLX::PropertySetAssign *this)
{
  if ((atomic_load_explicit(&qword_27EE52A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A78))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52BE8, "propertysetassign");

    __cxa_guard_release(&qword_27EE52A78);
  }
}

void *RIO_MTLX::registryPropertySetAssign(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::PropertySetAssign>::ElementRegistry(&RIO_MTLX::registryPropertySetAssign(void)::v);
  }

  return &RIO_MTLX::registryPropertySetAssign(void)::v;
}

void RIO_MTLX::TargetDef::CATEGORY(RIO_MTLX::TargetDef *this)
{
  if ((atomic_load_explicit(&qword_27EE52A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A80))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52C00, "targetdef");

    __cxa_guard_release(&qword_27EE52A80);
  }
}

void *RIO_MTLX::registryTargetDef(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::TargetDef>::ElementRegistry(&RIO_MTLX::registryTargetDef(void)::v);
  }

  return &RIO_MTLX::registryTargetDef(void)::v;
}

_BYTE *RIO_MTLX::Token::CATEGORY(RIO_MTLX::Token *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Token::CATEGORY(void)::v, "token");
  }

  return RIO_MTLX::Token::CATEGORY(void)::v;
}

void *RIO_MTLX::registryToken(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Token>::ElementRegistry(&RIO_MTLX::registryToken(void)::v);
  }

  return &RIO_MTLX::registryToken(void)::v;
}

void RIO_MTLX::TypeDef::CATEGORY(RIO_MTLX::TypeDef *this)
{
  if ((atomic_load_explicit(&qword_27EE52A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A88))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52C18, "typedef");

    __cxa_guard_release(&qword_27EE52A88);
  }
}

void *RIO_MTLX::registryTypeDef(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::TypeDef>::ElementRegistry(&RIO_MTLX::registryTypeDef(void)::v);
  }

  return &RIO_MTLX::registryTypeDef(void)::v;
}

_BYTE *RIO_MTLX::Unit::CATEGORY(RIO_MTLX::Unit *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::Unit::CATEGORY(void)::v, "unit");
  }

  return RIO_MTLX::Unit::CATEGORY(void)::v;
}

void *RIO_MTLX::registryUnit(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Unit>::ElementRegistry(&RIO_MTLX::registryUnit(void)::v);
  }

  return &RIO_MTLX::registryUnit(void)::v;
}

_BYTE *RIO_MTLX::UnitDef::CATEGORY(RIO_MTLX::UnitDef *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::UnitDef::CATEGORY(void)::v, "unitdef");
  }

  return RIO_MTLX::UnitDef::CATEGORY(void)::v;
}

void *RIO_MTLX::registryUnitDef(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::UnitDef>::ElementRegistry(&RIO_MTLX::registryUnitDef(void)::v);
  }

  return &RIO_MTLX::registryUnitDef(void)::v;
}

_BYTE *RIO_MTLX::UnitTypeDef::CATEGORY(RIO_MTLX::UnitTypeDef *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::UnitTypeDef::CATEGORY(void)::v, "unittypedef");
  }

  return RIO_MTLX::UnitTypeDef::CATEGORY(void)::v;
}

void *RIO_MTLX::registryUnitTypeDef(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::UnitTypeDef>::ElementRegistry(&RIO_MTLX::registryUnitTypeDef(void)::v);
  }

  return &RIO_MTLX::registryUnitTypeDef(void)::v;
}

void RIO_MTLX::Variant::CATEGORY(RIO_MTLX::Variant *this)
{
  if ((atomic_load_explicit(&qword_27EE52A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A90))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52C30, "variant");

    __cxa_guard_release(&qword_27EE52A90);
  }
}

void *RIO_MTLX::registryVariant(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Variant>::ElementRegistry(&RIO_MTLX::registryVariant(void)::v);
  }

  return &RIO_MTLX::registryVariant(void)::v;
}

void RIO_MTLX::VariantAssign::CATEGORY(RIO_MTLX::VariantAssign *this)
{
  if ((atomic_load_explicit(&qword_27EE52A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52A98))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52C48, "variantassign");

    __cxa_guard_release(&qword_27EE52A98);
  }
}

void *RIO_MTLX::registryVariantAssign(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::VariantAssign>::ElementRegistry(&RIO_MTLX::registryVariantAssign(void)::v);
  }

  return &RIO_MTLX::registryVariantAssign(void)::v;
}

void RIO_MTLX::VariantSet::CATEGORY(RIO_MTLX::VariantSet *this)
{
  if ((atomic_load_explicit(&qword_27EE52AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52AA0))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52C60, "variantset");

    __cxa_guard_release(&qword_27EE52AA0);
  }
}

void *RIO_MTLX::registryVariantSet(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::VariantSet>::ElementRegistry(&RIO_MTLX::registryVariantSet(void)::v);
  }

  return &RIO_MTLX::registryVariantSet(void)::v;
}

void RIO_MTLX::Visibility::CATEGORY(RIO_MTLX::Visibility *this)
{
  if ((atomic_load_explicit(&qword_27EE52AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52AA8))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52C78, "visibility");

    __cxa_guard_release(&qword_27EE52AA8);
  }
}

void *RIO_MTLX::registryVisibility(RIO_MTLX *this)
{
  {
    RIO_MTLX::ElementRegistry<RIO_MTLX::Visibility>::ElementRegistry(&RIO_MTLX::registryVisibility(void)::v);
  }

  return &RIO_MTLX::registryVisibility(void)::v;
}

void *RIO_MTLX::Element::initCategoryRegistry(RIO_MTLX::Element *this)
{
  v1 = RIO_MTLX::registryInput(this);
  v2 = RIO_MTLX::registryAttributeDef(v1);
  v3 = RIO_MTLX::registryBackdrop(v2);
  v4 = RIO_MTLX::registryCollection(v3);
  v5 = RIO_MTLX::registryCommentElement(v4);
  v6 = RIO_MTLX::registryDocument(v5);
  v7 = RIO_MTLX::registryGenericElement(v6);
  v8 = RIO_MTLX::registryGeomInfo(v7);
  v9 = RIO_MTLX::registryGeomProp(v8);
  v10 = RIO_MTLX::registryGeomPropDef(v9);
  v11 = RIO_MTLX::registryImplementation(v10);
  v12 = RIO_MTLX::registryInput(v11);
  v13 = RIO_MTLX::registryLook(v12);
  v14 = RIO_MTLX::registryLookGroup(v13);
  v15 = RIO_MTLX::registryMaterialAssign(v14);
  v16 = RIO_MTLX::registryMember(v15);
  v17 = RIO_MTLX::registryNode(v16);
  v18 = RIO_MTLX::registryNodeDef(v17);
  v19 = RIO_MTLX::registryNodeGraph(v18);
  v20 = RIO_MTLX::registryOutput(v19);
  v21 = RIO_MTLX::registryProperty(v20);
  v22 = RIO_MTLX::registryPropertyAssign(v21);
  v23 = RIO_MTLX::registryPropertySet(v22);
  v24 = RIO_MTLX::registryPropertySetAssign(v23);
  v25 = RIO_MTLX::registryTargetDef(v24);
  v26 = RIO_MTLX::registryToken(v25);
  v27 = RIO_MTLX::registryTypeDef(v26);
  v28 = RIO_MTLX::registryUnit(v27);
  v29 = RIO_MTLX::registryUnitDef(v28);
  v30 = RIO_MTLX::registryUnitTypeDef(v29);
  v31 = RIO_MTLX::registryVariant(v30);
  v32 = RIO_MTLX::registryVariantAssign(v31);
  v33 = RIO_MTLX::registryVariantSet(v32);

  return RIO_MTLX::registryVisibility(v33);
}

void RIO_MTLX::Element::~Element(RIO_MTLX::Element *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_2859456B0;
  v2 = *(this + 31);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v5 = (this + 200);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 160);
  v5 = (this + 136);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::~__hash_table(this + 96);
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void RIO_MTLX::ValueElement::~ValueElement(RIO_MTLX::ValueElement *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t *RIO_MTLX::TypedElement::getType(RIO_MTLX::TypedElement *this)
{
  RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(void)::v);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::StringResolver::~StringResolver(void **this)
{
  RIO_MTLX::StringResolver::~StringResolver(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_2859440F0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 12));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 7));
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(void *a1, void *a2)
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
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(void *a1, const void **a2)
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
    if (v6 == v12)
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

void *std::set<std::shared_ptr<RIO_MTLX::Element const>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::shared_ptr<RIO_MTLX::Element const>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<RIO_MTLX::Element const>,std::__tree_node<std::shared_ptr<RIO_MTLX::Element const>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<std::shared_ptr<RIO_MTLX::Element const>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<RIO_MTLX::Element const>,std::__tree_node<std::shared_ptr<RIO_MTLX::Element const>,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__emplace_hint_unique_key_args<std::shared_ptr<RIO_MTLX::Element const>,std::shared_ptr<RIO_MTLX::Element const> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__emplace_hint_unique_key_args<std::shared_ptr<RIO_MTLX::Element const>,std::shared_ptr<RIO_MTLX::Element const> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__find_equal<std::shared_ptr<RIO_MTLX::Element const>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__find_equal<std::shared_ptr<RIO_MTLX::Element const>>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void RIO_MTLX::InheritanceIterator::~InheritanceIterator(RIO_MTLX::InheritanceIterator *this)
{
  std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(this + 16, *(this + 3));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t RIO_MTLX::GraphIterator::GraphIterator(uint64_t a1, unint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::__tree<std::shared_ptr<RIO_MTLX::Element>>::__emplace_unique_key_args<std::shared_ptr<RIO_MTLX::Element>,std::shared_ptr<RIO_MTLX::Element> const&>(a1 + 32, a2);
  return a1;
}

void sub_2474AC29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  v14 = v11;
  a10 = v13;
  std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(v14, *(v10 + 40));
  v16 = *(v10 + 24);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(v10 + 8);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::shared_ptr<RIO_MTLX::Element>>::__emplace_unique_key_args<std::shared_ptr<RIO_MTLX::Element>,std::shared_ptr<RIO_MTLX::Element> const&>(uint64_t a1, unint64_t *a2)
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

void std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void RIO_MTLX::Edge::~Edge(RIO_MTLX::Edge *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

unint64_t *RIO_MTLX::InheritanceIterator::InheritanceIterator(unint64_t *a1, unint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[3] = 0;
  a1[2] = (a1 + 3);
  a1[4] = 0;
  a1[5] = 0;
  std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__emplace_unique_key_args<std::shared_ptr<RIO_MTLX::Element const>,std::shared_ptr<RIO_MTLX::Element const> const&>((a1 + 2), a2);
  return a1;
}

void sub_2474AC508(_Unwind_Exception *a1)
{
  std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::destroy(v2, *(v1 + 24));
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__emplace_unique_key_args<std::shared_ptr<RIO_MTLX::Element const>,std::shared_ptr<RIO_MTLX::Element const> const&>(uint64_t a1, unint64_t *a2)
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

void RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Element>(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 248);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  RIO_MTLX::Element::getQualifiedName(a1, a2, &__p);
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Element>(v8, &__p.__r_.__value_.__l.__data_, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    v9 = v12;
    *a3 = v11;
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    RIO_MTLX::Element::getChildOfType<RIO_MTLX::Element>(v8, &a2->__r_.__value_.__l.__data_, a3);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_2474AC6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RIO_MTLX::Element::getInheritString(RIO_MTLX::Element *this)
{
  RIO_MTLX::Element::INHERIT_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::Element::INHERIT_ATTRIBUTE(void)::v);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Element>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Element>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2474AC810(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getQualifiedName(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v39, (a1 + 8));
LABEL_2:
  v5 = v39;
  while (1)
  {
    if (!v5)
    {
      v12 = 1;
      goto LABEL_38;
    }

    Namespace = RIO_MTLX::Element::getNamespace(v5);
    v7 = Namespace;
    v8 = *(Namespace + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = Namespace[1];
    }

    if (v8)
    {
      break;
    }

    v9 = v39;
    v5 = *(v39 + 29);
    if (v5)
    {
      v5 = std::__shared_weak_count::lock(v5);
      v10 = v5;
      if (v5)
      {
        v5 = *(v9 + 28);
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v40;
    v39 = v5;
    v40 = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      goto LABEL_2;
    }
  }

  v13 = RIO_MTLX::NAME_PREFIX_SEPARATOR(Namespace);
  v14 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  v16 = v14 < 0;
  if (v14 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  if (!v16)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  v18 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v13;
  }

  else
  {
    v19 = v13->__r_.__value_.__r.__words[0];
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = v13->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v27 = &v17[size];
    v28 = v17;
LABEL_45:
    v29 = v18;
    v30 = v19;
    while (*v28 != v30->__r_.__value_.__s.__data_[0])
    {
      v30 = (v30 + 1);
      if (!--v29)
      {
        if (++v28 != v27)
        {
          goto LABEL_45;
        }

        goto LABEL_29;
      }
    }

    if (v28 == v27 || v28 - v17 == -1)
    {
      goto LABEL_29;
    }

    v13 = std::string::basic_string(&__p, a2, 0, v28 - v17, &v41);
    v31 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = __p.__r_.__value_.__l.__size_;
    }

    v33 = *(v7 + 23);
    v34 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v33 = v7[1];
    }

    if (v32 == v33)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v34 >= 0)
      {
        v36 = v7;
      }

      else
      {
        v36 = *v7;
      }

      v13 = memcmp(p_p, v36, v32);
      v37 = v13 == 0;
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v37 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_68:
        if (!v37)
        {
          goto LABEL_29;
        }

        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v12 = 0;
          *&a3->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
          a3->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
          goto LABEL_38;
        }

        std::string::__init_copy_ctor_external(a3, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
        goto LABEL_37;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_68;
  }

LABEL_29:
  v21 = RIO_MTLX::NAME_PREFIX_SEPARATOR(v13);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, v21, &__p);
  v22 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v22 >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = a2->__r_.__value_.__r.__words[0];
  }

  if (v22 >= 0)
  {
    v24 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = a2->__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&__p, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_37:
  v12 = 0;
LABEL_38:
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v12)
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a3, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    }
  }
}

void sub_2474ACAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RIO_MTLX::Element::getNamespace(RIO_MTLX::Element *this)
{
  RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::Element::NAMESPACE_ATTRIBUTE(void)::v);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278EA82E0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__shared_ptr_pointer<RIO_MTLX::StringResolver *,std::shared_ptr<RIO_MTLX::StringResolver>::__shared_ptr_default_delete<RIO_MTLX::StringResolver,RIO_MTLX::StringResolver>,std::allocator<RIO_MTLX::StringResolver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<RIO_MTLX::StringResolver *,std::shared_ptr<RIO_MTLX::StringResolver>::__shared_ptr_default_delete<RIO_MTLX::StringResolver,RIO_MTLX::StringResolver>,std::allocator<RIO_MTLX::StringResolver>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RIO_MTLX::StringResolver *,std::shared_ptr<RIO_MTLX::StringResolver>::__shared_ptr_default_delete<RIO_MTLX::StringResolver,RIO_MTLX::StringResolver>,std::allocator<RIO_MTLX::StringResolver>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *RIO_MTLX::Element::getFilePrefix(RIO_MTLX::Element *this)
{
  RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::Element::FILE_PREFIX_ATTRIBUTE(void)::v);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t *RIO_MTLX::Element::getGeomPrefix(RIO_MTLX::Element *this)
{
  RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, RIO_MTLX::Element::GEOM_PREFIX_ATTRIBUTE(void)::v);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::GeomInfo>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::GeomInfo>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_2474ACE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::GeomElement::getGeom(RIO_MTLX::GeomElement *this)
{
  v2 = RIO_MTLX::GeomElement::GEOM_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Token>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Token>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_2474ACFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::UnitTypeDef>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::UnitTypeDef>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2474AD0A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474AD128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v4[2] = a2[2];
      a2 += 3;
      v4 += 3;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 24;
  }
}

void RIO_MTLX::TreeIterator::~TreeIterator(RIO_MTLX::TreeIterator *this)
{
  v3 = (this + 16);
  std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
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

void sub_2474AD830(_Unwind_Exception *a1, uint64_t a2, ...)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2474ADE54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *,std::shared_ptr<RIO_MTLX::Element> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
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
    std::vector<char const*>::__throw_length_error[abi:ne200100]();
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

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2474AE1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Node>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Node *RIO_MTLX::Node::Node(RIO_MTLX::Node *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Node::CATEGORY(a1);
  RIO_MTLX::InterfaceElement::InterfaceElement(a1, &v7, RIO_MTLX::Node::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_2859563C8;
  return a1;
}

void sub_2474AE304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::InterfaceElement::InterfaceElement(void *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::TypedElement::TypedElement(a1, &v7, a3, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_28595E138;
  a1[32] = 0;
  a1[33] = 0;
  return a1;
}

void sub_2474AE398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::TypedElement::TypedElement(void *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Element::Element(a1, &v7, a3, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285945660;
  return a1;
}

void sub_2474AE428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::Element::Element(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2859456B0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v8;
  }

  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v9 = *a2;
  *(a1 + 224) = *a2;
  v10 = a2[1];
  *(a1 + 232) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
    v9 = *a2;
  }

  if (v9 && (v11 = *(v9 + 248)) != 0 && (v12 = std::__shared_weak_count::lock(v11)) != 0)
  {
    v13 = *(v9 + 240);
    *(a1 + 248) = v12;
    *(a1 + 240) = v13;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  else
  {
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  if (atomic_load_explicit(&RIO_MTLX::Element::Element(std::shared_ptr<RIO_MTLX::Element>,std::string const&,std::string const&)::once, memory_order_acquire) != -1)
  {
    v16 = &v17;
    v15 = &v16;
    std::__call_once(&RIO_MTLX::Element::Element(std::shared_ptr<RIO_MTLX::Element>,std::string const&,std::string const&)::once, &v15, std::__call_once_proxy[abi:ne200100]<std::tuple<RIO_MTLX::Element::Element(std::shared_ptr<RIO_MTLX::Element>,std::string const&,std::string const&)::{lambda(void)#1} &&>>);
  }

  return a1;
}

void sub_2474AE5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(v12 + 47) < 0)
  {
    operator delete(*(v12 + 24));
  }

  v14 = *(v12 + 16);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::TypedElement::~TypedElement(RIO_MTLX::TypedElement *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<RIO_MTLX::Element::Element(std::shared_ptr<RIO_MTLX::Element>,std::string const&,std::string const&)::{lambda(void)#1} &&>>(RIO_MTLX::Element *a1)
{
  inited = RIO_MTLX::Element::initCategoryRegistry(a1);

  return RIO_MTLX::Value::initValueTypeRegistry(inited);
}

void std::shared_ptr<RIO_MTLX::Node>::__enable_weak_this[abi:ne200100]<RIO_MTLX::Element,RIO_MTLX::Node,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_2474AE8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::GenericElement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859441A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::GenericElement::~GenericElement(RIO_MTLX::GenericElement *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 1) = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime < v5)
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        *(a1 + 8) = 0;
      }
    }

    v5 = *(a1 + 8);
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20[1];
        if (v17 > 1)
        {
          v23 = v20[1];
          if (v22 >= v5)
          {
            v23 = v22 % v5;
          }
        }

        else
        {
          v23 = v22 & (v5 - 1);
        }

        if (v23 != v18)
        {
          break;
        }

        v24 = v22 == v4 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v20 + 2, a2 + 2);
        if ((v21 & (v24 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v24 != (v21 & 1);
        v19 = *v19;
        v20 = *v19;
      }

      while (*v19);
      v5 = *(a1 + 8);
      v25 = vcnt_s8(v5);
      v25.i16[0] = vaddlv_u8(v25);
      v17 = v25.u32[0];
    }
  }

  v26 = *(a2 + 1);
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    *(*a1 + 8 * v26) = a1 + 16;
    if (!*a2)
    {
      goto LABEL_66;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_65:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_66;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  ++*(a1 + 24);
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

void sub_2474AEEDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>>>::__deallocate_node(a1, *(a1 + 16));
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

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::TypeDef>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::TypeDef>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2474AF3A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<std::string>::set[abi:ne200100]<std::__wrap_iter<std::string*>>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, v6);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return a1;
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

  return std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_2474AF6F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

void *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,std::__less<void,void>>(uint64_t a1, void *a2, const void **a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v4 = a1;
    v5 = *(a3 + 23);
    v6 = *(a1 + 55);
    if (v6 >= 0)
    {
      v7 = *(a1 + 55);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    if (v6 >= 0)
    {
      v8 = (a1 + 32);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    if (v5 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    if (v5 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    v12 = memcmp(v8, v10, v11);
    v13 = v7 < v9;
    if (v12)
    {
      v13 = v12 < 0;
    }

    if (!v13)
    {
      return v4;
    }

    v14 = 1;
LABEL_21:
    if (v14)
    {
      v15 = 0;
      v16 = v4;
      do
      {
        if (v16 == v3)
        {
          v20 = v14;
          goto LABEL_43;
        }

        v17 = v16[1];
        v18 = v16;
        if (v17)
        {
          do
          {
            v16 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v16 = v18[2];
            v19 = *v16 == v18;
            v18 = v16;
          }

          while (!v19);
        }

        ++v15;
      }

      while (v15 != v14);
      v20 = v14;
      v15 = v14;
    }

    else
    {
      v20 = 0;
      v15 = 0;
      v16 = v4;
    }

LABEL_43:
    while (v16 != v3)
    {
      v24 = *(v16 + 55);
      if (v24 >= 0)
      {
        v25 = *(v16 + 55);
      }

      else
      {
        v25 = v16[5];
      }

      if (v24 >= 0)
      {
        v26 = v16 + 4;
      }

      else
      {
        v26 = v16[4];
      }

      if (v9 >= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v9;
      }

      v28 = memcmp(v26, v10, v27);
      v29 = v25 < v9;
      if (v28)
      {
        v29 = v28 < 0;
      }

      if (!v29)
      {
        break;
      }

      v14 *= 2;
      v4 = v16;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      v15 = 0;
      v20 = -v14;
      if (-v14 > 1)
      {
        v21 = -v14;
      }

      else
      {
        v21 = 1;
      }

      while (v16 != v3)
      {
        v22 = *v16;
        v23 = v16;
        if (*v16)
        {
          do
          {
            v16 = v22;
            v22 = v22[1];
          }

          while (v22);
        }

        else
        {
          do
          {
            v16 = v23[2];
            v19 = *v16 == v23;
            v23 = v16;
          }

          while (v19);
        }

        if (++v15 == v21)
        {
          v15 = v21;
          goto LABEL_43;
        }
      }
    }

    v30 = v15 - v20 + v14;
    if (!v30)
    {
      return v4;
    }

    v3 = v16;
    if (v30 != 1)
    {
      do
      {
        v31 = v30 >> 1;
        v32 = v4;
        if (v30 >= 2)
        {
          v33 = v30 >> 1;
          v34 = v4;
          do
          {
            v35 = v34[1];
            if (v35)
            {
              do
              {
                v32 = v35;
                v35 = *v35;
              }

              while (v35);
            }

            else
            {
              do
              {
                v32 = v34[2];
                v19 = *v32 == v34;
                v34 = v32;
              }

              while (!v19);
            }

            v34 = v32;
          }

          while (v33-- > 1);
        }

        v37 = *(v32 + 55);
        if (v37 >= 0)
        {
          v38 = *(v32 + 55);
        }

        else
        {
          v38 = v32[5];
        }

        if (v37 >= 0)
        {
          v39 = v32 + 4;
        }

        else
        {
          v39 = v32[4];
        }

        if (v9 >= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v9;
        }

        v41 = memcmp(v39, v10, v40);
        v42 = v38 < v9;
        if (v41)
        {
          v42 = v41 < 0;
        }

        if (v42)
        {
          v43 = v32[1];
          if (v43)
          {
            do
            {
              v4 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v4 = v32[2];
              v19 = *v4 == v32;
              v32 = v4;
            }

            while (!v19);
          }

          v31 = v30 + ~v31;
        }

        v30 = v31;
      }

      while (v31);
      return v4;
    }
  }

  return v3;
}

uint64_t std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::insert_iterator<std::set<std::string>>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(*a4, *(a4 + 8), (*a2 + 32));
      *(a4 + 8) = result;
      v9 = *(result + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(result + 16);
          v11 = *v10 == result;
          result = v10;
        }

        while (!v11);
      }

      *(a4 + 8) = v10;
      v12 = *a2;
      v13 = *(*a2 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      *a2 = v14;
      v15 = *a3;
      v16 = *(*a3 + 8);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v15[2];
          v11 = *v17 == v15;
          v15 = v17;
        }

        while (!v11);
      }

      v18 = 0;
      *a3 = v17;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  *a5 = v18;
  return result;
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::AttributeDef>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::AttributeDef::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52AE0)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::AttributeDef>;
  return a1;
}

void sub_2474AFD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::AttributeDef>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::AttributeDef::~AttributeDef(RIO_MTLX::AttributeDef *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(const void **a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&xmmword_27EE52C90, a1);
  v3 = v2;
  v4 = *(&xmmword_27EE52C90 + 1);
  if (!*(&xmmword_27EE52C90 + 1))
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(*(&xmmword_27EE52C90 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_27EE52C90 + 1))
    {
      v7 = v2 % *(&xmmword_27EE52C90 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_27EE52C90 + 1) - 1) & v2;
  }

  v8 = *(xmmword_27EE52C90 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v3)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= v4)
      {
        v10 %= v4;
      }
    }

    else
    {
      v10 &= v4 - 1;
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](&xmmword_27EE52C90, v9 + 2, a1))
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
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

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Backdrop>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Backdrop::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::Backdrop::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Backdrop>;
  return a1;
}

void sub_2474B048C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Backdrop>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859452B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Backdrop *RIO_MTLX::Backdrop::Backdrop(RIO_MTLX::Backdrop *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Backdrop::CATEGORY(a1);
  RIO_MTLX::Element::Element(a1, &v7, RIO_MTLX::Backdrop::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285956428;
  return a1;
}

void sub_2474B05D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Collection>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Collection::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52AF8)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Collection>;
  return a1;
}

void sub_2474B0798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Collection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::CommentElement>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::CommentElement::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::CommentElement::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::CommentElement>;
  return a1;
}

void sub_2474B0A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::CommentElement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::CommentElement::~CommentElement(RIO_MTLX::CommentElement *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Document>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Document::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::Document::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Document>;
  return a1;
}

void sub_2474B0C3C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Document>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::GenericElement>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::GenericElement::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52B10)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::GenericElement>;
  return a1;
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::GeomInfo>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::GeomInfo::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::GeomInfo::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::GeomInfo>;
  return a1;
}

void sub_2474B0E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::GeomInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::GeomInfo *RIO_MTLX::GeomInfo::GeomInfo(RIO_MTLX::GeomInfo *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::GeomInfo::CATEGORY(a1);
  RIO_MTLX::GeomElement::GeomElement(a1, &v7, RIO_MTLX::GeomInfo::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285945258;
  return a1;
}

void sub_2474B0FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::GeomElement::GeomElement(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Element::Element(a1, &v7, a3, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_2859574B8;
  return a1;
}

void sub_2474B1050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::GeomInfo::~GeomInfo(RIO_MTLX::GeomInfo *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::GeomProp>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::GeomProp::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::GeomProp::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::GeomProp>;
  return a1;
}

void sub_2474B11C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::GeomProp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859454B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::GeomProp *RIO_MTLX::GeomProp::GeomProp(RIO_MTLX::GeomProp *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::GeomProp::CATEGORY(a1);
  RIO_MTLX::ValueElement::ValueElement(a1, &v7, RIO_MTLX::GeomProp::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285945500;
  return a1;
}

void sub_2474B1310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::ValueElement::ValueElement(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::TypedElement::TypedElement(a1, &v7, a3, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285945610;
  return a1;
}

void sub_2474B13A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::GeomProp::~GeomProp(RIO_MTLX::GeomProp *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::GeomPropDef>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::GeomPropDef::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52B28)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::GeomPropDef>;
  return a1;
}

void sub_2474B159C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::GeomPropDef>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::GeomPropDef::~GeomPropDef(RIO_MTLX::GeomPropDef *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Implementation>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Implementation::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52B40)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Implementation>;
  return a1;
}

void sub_2474B184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Implementation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859444B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Input>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Input::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::Input::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Input>;
  return a1;
}

void sub_2474B1A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Input>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859455C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Input *RIO_MTLX::Input::Input(RIO_MTLX::Input *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Input::CATEGORY(a1);
  RIO_MTLX::PortElement::PortElement(a1, &v7, RIO_MTLX::Input::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_28595E1C8;
  return a1;
}

void sub_2474B1B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::PortElement::PortElement(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::ValueElement::ValueElement(a1, &v7, a3, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_28595E228;
  return a1;
}

void sub_2474B1C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Look>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Look::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52B58)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Look>;
  return a1;
}

void sub_2474B1DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Look>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Look::~Look(RIO_MTLX::Look *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::LookGroup>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::LookGroup::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52B70)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::LookGroup>;
  return a1;
}

void sub_2474B2084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::LookGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859445B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::LookGroup::~LookGroup(RIO_MTLX::LookGroup *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::MaterialAssign>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::MaterialAssign::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::MaterialAssign::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::MaterialAssign>;
  return a1;
}

void sub_2474B22AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::MaterialAssign>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::MaterialAssign *RIO_MTLX::MaterialAssign::MaterialAssign(RIO_MTLX::MaterialAssign *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::MaterialAssign::CATEGORY(a1);
  RIO_MTLX::GeomElement::GeomElement(a1, &v7, RIO_MTLX::MaterialAssign::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_2859446B8;
  return a1;
}

void sub_2474B23F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::MaterialAssign::~MaterialAssign(RIO_MTLX::MaterialAssign *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Member>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Member::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52B88)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Member>;
  return a1;
}

void sub_2474B25F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Member>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Member::~Member(RIO_MTLX::Member *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Node>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Node::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::Node::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Node>;
  return a1;
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::NodeDef>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::NodeDef::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::NodeDef::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::NodeDef>;
  return a1;
}

void sub_2474B2874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::NodeDef>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::NodeDef *RIO_MTLX::NodeDef::NodeDef(RIO_MTLX::NodeDef *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::NodeDef::CATEGORY(a1);
  RIO_MTLX::InterfaceElement::InterfaceElement(a1, &v7, RIO_MTLX::NodeDef::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_28594D238;
  return a1;
}

void sub_2474B29C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::NodeGraph>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::NodeGraph::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::NodeGraph::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::NodeGraph>;
  return a1;
}

void sub_2474B2AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::NodeGraph>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::NodeGraph *RIO_MTLX::NodeGraph::NodeGraph(RIO_MTLX::NodeGraph *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::NodeGraph::CATEGORY(a1);
  RIO_MTLX::GraphElement::GraphElement(a1, &v7, RIO_MTLX::NodeGraph::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_2859564A0;
  return a1;
}

void sub_2474B2C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::GraphElement::GraphElement(void *a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::InterfaceElement::InterfaceElement(a1, &v7, a3, a4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285945108;
  return a1;
}

void sub_2474B2CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::GraphElement::~GraphElement(RIO_MTLX::GraphElement *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Output>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Output::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::Output::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Output>;
  return a1;
}

void sub_2474B2E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Output>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859451B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Output *RIO_MTLX::Output::Output(RIO_MTLX::Output *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Output::CATEGORY(a1);
  RIO_MTLX::PortElement::PortElement(a1, &v7, RIO_MTLX::Output::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_28595E298;
  return a1;
}

void sub_2474B2F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Property>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Property::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52BA0)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Property>;
  return a1;
}

void sub_2474B3154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Property>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859447D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Property::~Property(RIO_MTLX::Property *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::PropertyAssign>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::PropertyAssign::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52BB8)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::PropertyAssign>;
  return a1;
}

void sub_2474B3404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::PropertyAssign>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::PropertyAssign::~PropertyAssign(RIO_MTLX::PropertyAssign *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::PropertySet>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::PropertySet::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52BD0)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::PropertySet>;
  return a1;
}

void sub_2474B36B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::PropertySet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::PropertySet::~PropertySet(RIO_MTLX::PropertySet *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::PropertySetAssign>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::PropertySetAssign::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52BE8)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::PropertySetAssign>;
  return a1;
}

void sub_2474B3964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::PropertySetAssign>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859449F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::PropertySetAssign::~PropertySetAssign(RIO_MTLX::PropertySetAssign *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::TargetDef>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::TargetDef::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52C00)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::TargetDef>;
  return a1;
}

void sub_2474B3C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TargetDef>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::TargetDef::~TargetDef(RIO_MTLX::TargetDef *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Token>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Token::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::Token::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Token>;
  return a1;
}

void sub_2474B3E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Token>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Token *RIO_MTLX::Token::Token(RIO_MTLX::Token *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Token::CATEGORY(a1);
  RIO_MTLX::ValueElement::ValueElement(a1, &v7, RIO_MTLX::Token::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_2859453A8;
  return a1;
}

void sub_2474B3F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Token::~Token(RIO_MTLX::Token *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::TypeDef>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::TypeDef::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52C18)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::TypeDef>;
  return a1;
}

void sub_2474B4184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypeDef>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::TypeDef::~TypeDef(RIO_MTLX::TypeDef *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Unit>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Unit::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::Unit::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Unit>;
  return a1;
}

void sub_2474B43AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Unit>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Unit *RIO_MTLX::Unit::Unit(RIO_MTLX::Unit *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::Unit::CATEGORY(a1);
  RIO_MTLX::Element::Element(a1, &v7, RIO_MTLX::Unit::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285944C58;
  return a1;
}

void sub_2474B44F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Unit::~Unit(RIO_MTLX::Unit *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::UnitDef>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::UnitDef::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::UnitDef::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::UnitDef>;
  return a1;
}

void sub_2474B466C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::UnitDef>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::UnitDef *RIO_MTLX::UnitDef::UnitDef(RIO_MTLX::UnitDef *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::UnitDef::CATEGORY(a1);
  RIO_MTLX::Element::Element(a1, &v7, RIO_MTLX::UnitDef::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285944D08;
  return a1;
}

void sub_2474B47B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::UnitDef::~UnitDef(RIO_MTLX::UnitDef *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::UnitTypeDef>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::UnitTypeDef::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::UnitTypeDef::CATEGORY(void)::v)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::UnitTypeDef>;
  return a1;
}

void sub_2474B492C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::UnitTypeDef>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944D68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::UnitTypeDef *RIO_MTLX::UnitTypeDef::UnitTypeDef(RIO_MTLX::UnitTypeDef *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RIO_MTLX::UnitTypeDef::CATEGORY(a1);
  RIO_MTLX::Element::Element(a1, &v7, RIO_MTLX::UnitTypeDef::CATEGORY(void)::v, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_285944DB8;
  return a1;
}

void sub_2474B4A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::UnitTypeDef::~UnitTypeDef(RIO_MTLX::UnitTypeDef *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Variant>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Variant::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52C30)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Variant>;
  return a1;
}

void sub_2474B4C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Variant>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Variant::~Variant(RIO_MTLX::Variant *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::VariantAssign>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::VariantAssign::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52C48)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::VariantAssign>;
  return a1;
}

void sub_2474B4F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::VariantAssign>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::VariantAssign::~VariantAssign(RIO_MTLX::VariantAssign *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::VariantSet>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::VariantSet::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52C60)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::VariantSet>;
  return a1;
}

void sub_2474B51D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::VariantSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285944F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::VariantSet::~VariantSet(RIO_MTLX::VariantSet *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Element *RIO_MTLX::ElementRegistry<RIO_MTLX::Visibility>::ElementRegistry(RIO_MTLX::Element *a1)
{
  RIO_MTLX::Element::_creatorMap(a1);
  RIO_MTLX::Visibility::CATEGORY(v2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element> (*)(std::shared_ptr<RIO_MTLX::Element>,std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(byte_27EE52C78)[5] = RIO_MTLX::Element::createElement<RIO_MTLX::Visibility>;
  return a1;
}

void sub_2474B5484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Visibility>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Visibility::~Visibility(RIO_MTLX::Visibility *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t RIOPxrUsdGeomXformableXformQueryGetLocalTransformation(uint64_t a1, _OWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v14 = MEMORY[0x277D86748] + 16;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v13, 1.0);
  if (v15 && (*(v15 + 57) & 8) == 0 && (*(v14 + 32))(&v14))
  {
    MEMORY[0x24C1A54B0](v12, &v14);
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation();
    v16 = v12;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&v16);
    v3 = v13[1];
    v4 = v13[2];
    v5 = v13[3];
    v6 = v13[4];
    v7 = v13[5];
    v8 = v13[6];
    v9 = v13[7];
    *a2 = v13[0];
    a2[1] = v3;
    a2[2] = v4;
    a2[3] = v5;
    a2[4] = v6;
    a2[5] = v7;
    v10 = 1;
    a2[6] = v8;
    a2[7] = v9;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x24C1A54D0](&v14);
  return v10;
}

void sub_2474B56E0(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  MEMORY[0x24C1A54D0](v2 - 80);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdGeomXformableXformQueryCopyTimeSamples()
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v8 = 0;
  v9 = MEMORY[0x277D86748] + 16;
  v6 = 0;
  v7 = 0;
  if (v10 && (*(v10 + 57) & 8) == 0 && (*(MEMORY[0x277D86748] + 48))(&v9))
  {
    MEMORY[0x24C1A54B0](v5, &v9);
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetTimeSamples();
    v11 = v5;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&v11);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v1 = v6;
  v2 = v7;
  if (v6 != v7)
  {
    v3 = *MEMORY[0x277CBECE8];
    do
    {
      v5[0] = CFNumberCreate(v3, kCFNumberDoubleType, v1);
      CFArrayAppendValue(Mutable, v5[0]);
      realityio::WrappedCFRef<__CFNumber const*>::~WrappedCFRef(v5);
      v1 += 8;
    }

    while (v1 != v2);
    v1 = v6;
  }

  if (v1)
  {
    v7 = v1;
    operator delete(v1);
  }

  MEMORY[0x24C1A54D0](&v9);
  return Mutable;
}

void sub_2474B5850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 40) = v17;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x24C1A54D0](&a17);
  _Unwind_Resume(a1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 136;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (v2 != -1)
  {
    result = (*(&off_2859456E8 + v2))(&v3, result);
  }

  *(v1 + 120) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN32pxrInternal__aapl__pxrReserved__12UsdAttributeENS8_17UsdAttributeQueryEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 16);
  result = *(a2 + 8);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::~UsdAttributeQuery(pxrInternal__aapl__pxrReserved__::UsdAttributeQuery *this)
{
  v4 = *(this + 14);
  v2 = (this + 112);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<pxrInternal__aapl__pxrReserved__::UsdResolveTarget>::operator()[abi:ne200100](v2, v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 96);
  v5 = *(this + 7);
  if (v5 && atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  if (v6 && atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v8 = *(this + 1);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }
}

void std::default_delete<pxrInternal__aapl__pxrReserved__::UsdResolveTarget>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x24C1A91B0);
  }
}

const void **realityio::WrappedCFRef<__CFNumber const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void RIOPxrUsdUtilsModifyAssetPaths(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = &unk_285945708;
  v13 = MEMORY[0x24C1A9770]();
  v14 = &v12;
  v4 = realityio::UsdLayerMutexTracker::instance(v13);
  if (*(a1 + 16))
  {
    v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->((a1 + 16));
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v10, v5);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v6 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v4, &v10);
  v7 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  std::recursive_mutex::lock(v6);
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v10, (a1 + 16));
  pxrInternal__aapl__pxrReserved__::UsdUtilsModifyAssetPaths();
  v8 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  std::recursive_mutex::unlock(v6);
  std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](&v12);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2474B5D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, char a12)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  std::recursive_mutex::unlock(v13);
  std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void std::__function::__func<RIOPxrUsdUtilsModifyAssetPaths::$_0,std::allocator<RIOPxrUsdUtilsModifyAssetPaths::$_0>,std::string ()(std::string const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<RIOPxrUsdUtilsModifyAssetPaths::$_0,std::allocator<RIOPxrUsdUtilsModifyAssetPaths::$_0>,std::string ()(std::string const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_285945708;
  result = MEMORY[0x24C1A9770](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RIOPxrUsdUtilsModifyAssetPaths::$_0,std::allocator<RIOPxrUsdUtilsModifyAssetPaths::$_0>,std::string ()(std::string const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RIOPxrUsdUtilsModifyAssetPaths::$_0,std::allocator<RIOPxrUsdUtilsModifyAssetPaths::$_0>,std::string ()(std::string const&)>::operator()(uint64_t a1@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 8))
  {
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v12 = CFStringCreateWithCString(0, a2, 0x8000100u);
    v11 = (*(*(a1 + 8) + 16))();
    realityio::CFStringCopyUTF8String(v11, v8);
    if (SHIBYTE(v10) < 0)
    {
      v5 = v9;
      std::string::__init_copy_ctor_external(a3, v9, *(&v9 + 1));
      if (v8[0] == 1)
      {
        operator delete(v5);
      }
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = v9;
      a3->__r_.__value_.__r.__words[2] = v10;
    }

    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v11);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v12);
  }

  else if (a2[23] < 0)
  {
    v6 = *(a2 + 1);
    v7 = *a2;

    std::string::__init_copy_ctor_external(a3, v7, v6);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }
}

void sub_2474B6050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  if (a9 == 1)
  {
    operator delete(v13);
  }

  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a13);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v14 - 24));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RIOPxrUsdUtilsModifyAssetPaths::$_0,std::allocator<RIOPxrUsdUtilsModifyAssetPaths::$_0>,std::string ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *realityio::UsdLayerMutexTracker::instance(realityio::UsdLayerMutexTracker *this)
{
  {
    tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::concurrent_unordered_base(&realityio::UsdLayerMutexTracker::instance(void)::ret, 8uLL, &v2);
  }

  return &realityio::UsdLayerMutexTracker::instance(void)::ret;
}

uint64_t realityio::UsdLayerMutexTracker::writeMutexForLayer(uint64_t a1, void *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator pxrInternal__aapl__pxrReserved__::SdfLayer* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::*)(void)const(a2);
  if (!(v5 & 1 | v4))
  {
    return _ZTWN9realityio33kDummyLayerMutexForInvalidObjectsE();
  }

  return tbb::interface5::concurrent_unordered_map<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::operator[](a1, a2);
}

uint64_t tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::concurrent_unordered_base(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x60);
  v5[11] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::set_bucket(a1, 0, &v11);
  return a1;
}

void tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::set_bucket(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::segment_index_of(a2);
  v7 = v6;
  v8 = a1 + 48;
  v9 = *(a1 + 48 + 8 * v6);
  __dmb(0xBu);
  if (!v9)
  {
    if (v6)
    {
      v10 = 8 << v6;
    }

    else
    {
      v10 = 16;
    }

    v11 = tbb::internal::allocate_via_handler_v3(v10);
    bzero(v11, v10);
    v13 = (v8 + 8 * v7);
    while (1)
    {
      v14 = 0;
      atomic_compare_exchange_strong(v13, &v14, v11);
      if (!v14)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v13, 0, memory_order_relaxed))
      {
        tbb::internal::deallocate_via_handler_v3(v11, v12);
        break;
      }
    }
  }

  v15 = *(v8 + 8 * v7);
  __dmb(0xBu);
  *(v15 + 8 * (a2 - ((1 << v7) & 0x1FFFFFFFFFFFFFFELL))) = *a3;
}

unint64_t tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::segment_index_of(unint64_t a1)
{
  v1 = a1 | 1;
  if (HIDWORD(a1))
  {
    v1 = HIDWORD(a1);
  }

  if (v1 >= 0x10000)
  {
    v2 = (32 * (HIDWORD(a1) != 0)) | 0x10;
  }

  else
  {
    v2 = 32 * (HIDWORD(a1) != 0);
  }

  if (v1 >= 0x10000)
  {
    v1 >>= 16;
  }

  if (v1 >= 0x100)
  {
    v2 |= 8uLL;
    v1 >>= 8;
  }

  if (v1 >= 0x10)
  {
    v2 |= 4uLL;
    v1 >>= 4;
  }

  if (v1 >= 4)
  {
    v2 += 2;
    v1 >>= 2;
  }

  return ((v1 >> 1) & 1) + v2;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::~split_ordered_list(uint64_t a1)
{
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::clear(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::destroy_node(a1, v2);
  return a1;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::destroy_node(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::destroy_node(uint64_t a1, tbb::internal *this)
{
  if (*(this + 88))
  {
    tbb::tbb_allocator<tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::node>::destroy(a1, this);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

atomic_uint *tbb::tbb_allocator<tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::node>::destroy(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::~recursive_mutex((a2 + 24));
  result = *(a2 + 16);
  if (result && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::~pair(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 16));
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t tbb::interface5::concurrent_unordered_map<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::operator[](uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::internal_find(a1, a2, &v11);
  v4 = v11;
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v11 + 1) == a1 + 16;
  }

  if (v5)
  {
    MEMORY[0x24C1A8FC0](&v12);
    std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,0>(&v13, a2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,0>(&v16, &v13);
    tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::internal_insert<tbb::internal::BOOL_constant<true>,tbb::internal::BOOL_constant<true>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>(a1, &v16, 0, &v10);
    v11 = v10;
    std::recursive_mutex::~recursive_mutex(&v17);
    v6 = *(&v16 + 1);
    if (*(&v16 + 1) && atomic_fetch_add_explicit((*(&v16 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    std::recursive_mutex::~recursive_mutex(&v15);
    v7 = v14;
    if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v7 + 8))(v7);
    }

    std::recursive_mutex::~recursive_mutex(&v12);
    v4 = v11;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4 + 24;
}

void sub_2474B67F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::recursive_mutex *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::~pair(v15 - 120);
  std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::~pair(va1);
  std::recursive_mutex::~recursive_mutex(va);
  _Unwind_Resume(a1);
}

uint64_t (*pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator pxrInternal__aapl__pxrReserved__::SdfLayer* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::*)(void)const(void *a1))(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return 0;
  }

  if ((*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14) & (*a1 != 0)) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::_FetchPointer;
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::_FetchPointer(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return 0;
  }

  if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14))
  {
    return *a1;
  }

  return 0;
}

void tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::internal_find(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2));
  v17 = 0;
  v18 = v6;
  v7 = &v18;
  for (i = 7; i != -1; --i)
  {
    v9 = *v7++;
    *(&v17 + i) = tbb::internal::reverse<unsigned char>::byte_table[v9];
  }

  v10 = v17;
  v11 = a1 + 16;
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::prepare_bucket(a1, v6, &v18);
  v12 = v18;
  if (v18)
  {
    v13 = v10 | 1;
    while (1)
    {
      v14 = v12[11];
      if (v14 > v13)
      {
        break;
      }

      if (v14 == v13)
      {
        UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier((v12 + 1));
        v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2);
        v12 = v18;
        if (UniqueIdentifier == v16)
        {
          goto LABEL_11;
        }
      }

      v12 = *v12;
      v18 = v12;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v12 = 0;
LABEL_11:
    *a3 = v12;
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  a3[1] = v11;
}

void tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::prepare_bucket(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  __dmb(0xBu);
  v6 = a2 % v5;
  v7 = tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::segment_index_of(a2 % v5);
  v8 = v7;
  v9 = v6 - ((1 << v7) & 0xFFFFFFFFFFFFFFFELL);
  v10 = a1 + 48;
  v11 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v11 || (v12 = *(v10 + 8 * v7), __dmb(0xBu), !*(v12 + 8 * v9)))
  {
    tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::init_bucket(a1, v6);
  }

  v13 = *(v10 + 8 * v8);
  __dmb(0xBu);
  *a3 = *(v13 + 8 * v9);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = (a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v1) + 16);

  return v3();
}

void tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::init_bucket(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = HIDWORD(a2);
    if (!HIDWORD(a2))
    {
      v4 = a2;
    }

    if (v4 >= 0x10000)
    {
      v5 = (32 * (HIDWORD(a2) != 0)) | 0x10;
    }

    else
    {
      v5 = 32 * (HIDWORD(a2) != 0);
    }

    if (v4 >= 0x10000)
    {
      v4 >>= 16;
    }

    if (v4 >= 0x100)
    {
      v5 |= 8uLL;
      v4 >>= 8;
    }

    if (v4 >= 0x10)
    {
      v5 |= 4uLL;
      v4 >>= 4;
    }

    if (v4 >= 4)
    {
      v5 += 2;
      v4 >>= 2;
    }

    v6 = ((v4 >> 1) & 1) + v5;
  }

  else
  {
    LOBYTE(v6) = -1;
  }

  v7 = a2 & ~(1 << v6);
  if (!tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::is_initialized(a1, v7))
  {
    tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::init_bucket(a1, v7);
  }

  v8 = tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::segment_index_of(v7);
  v9 = *(a1 + 8 * v8 + 48);
  __dmb(0xBu);
  v13 = *(v9 + 8 * (v7 - ((1 << v8) & 0x1FFFFFFFFFFFFFFELL)));
  v14 = 0;
  v15 = a2;
  v10 = &v15;
  for (i = 7; i != -1; --i)
  {
    v12 = *v10;
    v10 = (v10 + 1);
    *(&v14 + i) = tbb::internal::reverse<unsigned char>::byte_table[v12];
  }

  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::insert_dummy(a1 + 16, &v13, v14 & 0xFFFFFFFFFFFFFFFELL, &v15);
  v14 = v15;
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::set_bucket(a1, a2, &v14);
}

BOOL tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::is_initialized(uint64_t a1, unint64_t a2)
{
  v4 = tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::segment_index_of(a2);
  v5 = *(a1 + 48 + 8 * v4);
  __dmb(0xBu);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 48 + 8 * v4);
  __dmb(0xBu);
  return *(v6 + 8 * (a2 - ((1 << v4) & 0x1FFFFFFFFFFFFFFELL))) != 0;
}

tbb::internal *tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::insert_dummy@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X1>, unint64_t a3@<X2>, atomic_ullong **a4@<X8>)
{
  i = **a2;
  result = tbb::internal::allocate_via_handler_v3(0x60);
  *(result + 11) = a3;
  *result = 0;
  if (i)
  {
    goto LABEL_2;
  }

LABEL_3:
  while (1)
  {
    v11 = *a2;
    *result = i;
    while (1)
    {
      v12 = i;
      atomic_compare_exchange_strong(v11, &v12, result);
      if (v12 == i)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v11, 0, memory_order_relaxed);
      if (add_explicit != i)
      {
        goto LABEL_8;
      }
    }

    add_explicit = i;
LABEL_8:
    if (i == add_explicit || result == add_explicit)
    {
      break;
    }

    for (i = *a2; ; *a2 = i)
    {
      i = *i;
      if (!i)
      {
        break;
      }

LABEL_2:
      v10 = i[11];
      if (v10 > a3)
      {
        goto LABEL_3;
      }

      if (v10 == a3)
      {
        result = tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::destroy_node(a1, result);
        goto LABEL_17;
      }
    }
  }

  i = result;
LABEL_17:
  *a4 = i;
  return result;
}

void tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::internal_insert<tbb::internal::BOOL_constant<true>,tbb::internal::BOOL_constant<true>,std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>(uint64_t a1@<X0>, void *a2@<X1>, tbb::internal *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = bswap64(0x9E3779B97F4A7C55 * pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a2));
  v25 = 0;
  v26 = v8;
  v9 = &v26;
  for (i = 7; i != -1; --i)
  {
    v11 = *v9;
    v9 = (v9 + 1);
    *(&v25 + i) = tbb::internal::reverse<unsigned char>::byte_table[v11];
  }

  v12 = v25 | 1;
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::SdfLayerHandleHashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>,false>>::prepare_bucket(a1, v8, &v26);
  v13 = a1 + 16;
  if (a3)
  {
    *(a3 + 11) = v12;
    *a3 = 0;
  }

  v14 = a2;
  while (1)
  {
    v15 = v26;
    v16 = *v26;
    if (*v26)
    {
      v17 = v16[11];
      while (1)
      {
        v18 = v16;
        if (v17 > v12)
        {
          break;
        }

        if (v17 == v12)
        {
          UniqueIdentifier = pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier((v16 + 1));
          if (UniqueIdentifier == pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(v14))
          {
            if (a3)
            {
              tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::destroy_node(a1 + 16, a3);
            }

            *a4 = v18;
            *(a4 + 8) = v13;
            *(a4 + 16) = 0;
            return;
          }
        }

        v26 = v18;
        v16 = *v18;
        if (!*v18)
        {
          v15 = v18;
          break;
        }

        v17 = v16[11];
        v15 = v18;
      }
    }

    if (!a3)
    {
      a3 = tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::create_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>(a1 + 16, v12, a2);
      v14 = a3 + 8;
      v15 = v26;
    }

    *a3 = v16;
    while (1)
    {
      v20 = v16;
      atomic_compare_exchange_strong(v15, &v20, a3);
      if (v20 == v16)
      {
        break;
      }

      add_explicit = atomic_fetch_add_explicit(v15, 0, memory_order_relaxed);
      if (add_explicit != v16)
      {
        goto LABEL_21;
      }
    }

    add_explicit = v16;
LABEL_21:
    if (v16 == add_explicit || a3 == add_explicit)
    {
      break;
    }

    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  add = atomic_fetch_add((a1 + 24), 1uLL);
  *a4 = a3;
  *(a4 + 8) = v13;
  *(a4 + 16) = 1;
  v23 = *(a1 + 8);
  __dmb(0xBu);
  if ((add / v23) > *(a1 + 44))
  {
    do
    {
      v24 = v23;
      atomic_compare_exchange_strong((a1 + 8), &v24, 2 * v23);
    }

    while (v24 != v23 && atomic_fetch_add_explicit((a1 + 8), 0, memory_order_relaxed) == v23);
  }
}

void *tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>>::create_node<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = tbb::internal::allocate_via_handler_v3(0x60);
  std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::pair[abi:ne200100](v5 + 1, a3);
  v5[11] = a2;
  *v5 = 0;
  return v5;
}

void sub_2474B6FB4(void *a1)
{
  __cxa_begin_catch(a1);
  tbb::internal::deallocate_via_handler_v3(v1, v2);
  __cxa_rethrow();
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::pair[abi:ne200100](void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  MEMORY[0x24C1A8FC0](a1 + 2);
  return a1;
}

void sub_2474B7020(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  MEMORY[0x24C1A8FC0](a1 + 2);
  return a1;
}

void sub_2474B70B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

_OWORD *std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>,realityio::UsdLayerMutexTracker::StdMutexFakeCopyWrapper,0>(_OWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  MEMORY[0x24C1A8FC0](a1 + 1);
  return a1;
}

void sub_2474B7130(_Unwind_Exception *exception_object)
{
  v2 = v1;
  v4 = *(v2 + 8);
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v4 + 8))(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Tf_Remnant::Register((a2 + 16), &v6);
    v3 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v3 + 8))(v3);
      }

      v4 = v6;
      if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  return a1;
}

void sub_2474B724C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2F);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(v3);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::Tf_Remnant::Register((v3 + 16), &v7);
    v4 = a1[1];
    a1[1] = v7;
    v7 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = v7;
      if (v7 && atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  return a1;
}

void sub_2474B73E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

id anonymous namespace::getValue(_anonymous_namespace_ *this, const char *a2)
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s", "com.apple.re", this];
  v5 = [v3 objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v7 = [v3 objectForKey:v6];
    v5 = v7;
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v9 = [v4 rangeOfString:@"." options:4];
      v10 = [v4 substringToIndex:v9];
      v8 = [v4 substringFromIndex:v9 + 1];

      if ([(__CFString *)v10 isEqualToString:@"com.apple.re.network.multipeerservice"])
      {

        v10 = @"com.apple.renetwork.multipeerservice";
      }

      v11 = [v3 dictionaryForKey:v10];
      v5 = [v11 objectForKey:v8];

      if (!v5)
      {
        goto LABEL_9;
      }
    }

    v12 = *realityio::logObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

LABEL_9:
  }

  return v5;
}

void realityio::Defaults::intValue(realityio::Defaults *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 intValue];
    *a3 = 1;
    *(a3 + 4) = v5;
    v4 = v6;
  }

  else
  {
    *a3 = 0;
  }
}

void *realityio::MeshDeformationComponentAction::operator()@<X0>(void *a1@<X2>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a2 + 1) = 0;
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v12, a2);
    v4 = a1[1];
    v5 = ~*(a1 + 2);
    *(a2 + 1) = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a1, a2);
    }

    else
    {
      *a2 = *a1;
    }

    if (v13)
    {
      (*(v13 + 32))(&v12);
    }
  }

  v11[0] = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(a2))
  {
    REMeshDeformationComponentGetComponentType();
    v7 = REComponentCreateByClass();
    v12 = v7;
    if (v7)
    {
      RERetain();
    }

    v8 = v11[0];
    if (v11[0] != v7)
    {
      v11[0] = v7;
      v12 = v8;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v12);
    v11[2] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

  v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a2);
  realityio::WrappedRERef<REAsset *>::operator=(v11, v6);
  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474B78B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP11REComponentEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

void *realityio::WrappedRERef<REComponent *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<realityio::WrappedRERef<REComponent *>>(void *result)
{
  if (result)
  {
    realityio::WrappedRERef<REComponent *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}