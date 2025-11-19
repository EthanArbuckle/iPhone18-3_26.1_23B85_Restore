void *mediaplatform::FilePath::FilePath(void *a1, std::string *__str)
{
  *a1 = &unk_1F50DE578;
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if ((SHIBYTE(__str->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&__str->__r_.__value_.__s + 23))
    {
      goto LABEL_32;
    }

    __p = *__str;
    v16 = 1;
    LOWORD(v15[0]) = 47;
    v5 = __str;
    goto LABEL_4;
  }

  size = __str->__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_32;
  }

  std::string::__init_copy_ctor_external(&__p, __str->__r_.__value_.__l.__data_, size);
  v7 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v16 = 1;
  LOWORD(v15[0]) = 47;
  if ((v7 & 0x80000000) == 0)
  {
    v5 = __str;
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v5->__r_.__value_.__s.__data_[0] == 47)
    {
      std::string::basic_string(&v14, __str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v14;
      std::vector<std::string>::push_back[abi:ne200100](&v18, v15);
    }

    else
    {
      std::string::operator=(&__p, __str);
    }

    goto LABEL_16;
  }

  if (__str->__r_.__value_.__l.__size_)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    goto LABEL_4;
  }

LABEL_15:
  std::vector<std::string>::push_back[abi:ne200100](&v18, v15);
LABEL_16:
  mediaplatform::ComponentsSeparatedByString(&__p, v15, &v14);
  v9 = v14.__r_.__value_.__l.__size_;
  for (i = v14.__r_.__value_.__r.__words[0]; i != v9; i += 24)
  {
    if (*(i + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *i, *(i + 8));
    }

    else
    {
      v13 = *i;
    }

    v10 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    v11 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v13.__r_.__value_.__l.__size_;
    }

    if (v10)
    {
      std::vector<std::string>::push_back[abi:ne200100](&v18, &v13);
    }

    if (v11 < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (v4 != &v18)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v4, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
  }

  __p.__r_.__value_.__r.__words[0] = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return a1;
}

void sub_1D575AB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a22 = (v28 - 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  *(v28 - 72) = v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 72));
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = begin;
    value = 0;
    v19.__end_ = begin;
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
      value = v19.__end_cap_.__value_;
    }

    else
    {
      v13 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v13;
      end = begin;
    }

    v10 = end + 1;
    v15 = *(a1 + 8) - *a1;
    v16 = begin - v15;
    memcpy(begin - v15, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v10;
    v18 = *(a1 + 16);
    *(a1 + 16) = value;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
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

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void mediaplatform::ComponentsSeparatedByString(std::string *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v7 = a2[23];
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  if (v9)
  {
    v10 = size < v9;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = v6 + size;
    v13 = *v8;
    v14 = v6;
    do
    {
      v15 = size - v9;
      if (v15 == -1)
      {
        break;
      }

      v16 = memchr(v14, v13, v15 + 1);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (!memcmp(v16, v8, v9))
      {
        if (v17 == v12)
        {
          break;
        }

        v18 = v17 - v6;
        if (v18 == -1)
        {
          break;
        }

        v19 = 0;
        v35 = v4;
        do
        {
          v20 = v18;
          std::string::basic_string(&v36, a1, v19, v18 - v19, &v37);
          std::vector<std::string>::push_back[abi:ne200100](v4, &v36);
          v19 = v18 + v9;
          v21 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
          if (v21 >= 0)
          {
            v22 = a1;
          }

          else
          {
            v22 = a1->__r_.__value_.__r.__words[0];
          }

          if (v21 >= 0)
          {
            v23 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = a1->__r_.__value_.__l.__size_;
          }

          v24 = a2[23];
          if (v24 >= 0)
          {
            v25 = a2;
          }

          else
          {
            v25 = *a2;
          }

          if (v24 >= 0)
          {
            v26 = a2[23];
          }

          else
          {
            v26 = *(a2 + 1);
          }

          v27 = &v23[-v19];
          if (v23 >= v19)
          {
            v18 += v9;
            if (v26)
            {
              v28 = &v23[v22];
              if (v27 >= v26)
              {
                v34 = v22;
                v30 = (v22 + v19);
                v31 = *v25;
                do
                {
                  v32 = v27 - v26;
                  if (v32 == -1)
                  {
                    break;
                  }

                  v33 = memchr(v30, v31, v32 + 1);
                  if (!v33)
                  {
                    break;
                  }

                  v29 = v33;
                  if (!memcmp(v33, v25, v26))
                  {
                    goto LABEL_50;
                  }

                  v30 = v29 + 1;
                  v27 = v28 - (v29 + 1);
                }

                while (v27 >= v26);
                v29 = v28;
LABEL_50:
                v22 = v34;
              }

              else
              {
                v29 = &v23[v22];
              }

              if (v29 == v28)
              {
                v18 = -1;
              }

              else
              {
                v18 = &v29[-v22];
              }

              v4 = v35;
            }
          }

          else
          {
            v18 = -1;
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }
        }

        while (v18 != -1);
        std::string::basic_string(&v36, a1, v20 + v9, -v20, &v37);
        std::vector<std::string>::push_back[abi:ne200100](v4, &v36);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        return;
      }

      v14 = (v17 + 1);
      size = v12 - (v17 + 1);
    }

    while (size >= v9);
  }

  std::vector<std::string>::push_back[abi:ne200100](v4, a1);
}

void sub_1D575B140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
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

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D575B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *mediaplatform::ContentBundle::ContentBundle(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *a1 = &unk_1F50DE578;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  a1[5] = 0;
  a1[4] = &unk_1F50DE578;
  a1[6] = 0;
  a1[7] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 5), *(a3 + 8), *(a3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 16) - *(a3 + 8)) >> 3));
  a1[9] = 0;
  a1[8] = &unk_1F50DE578;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 9), *(a4 + 8), *(a4 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 16) - *(a4 + 8)) >> 3));
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 12), *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  return a1;
}

void sub_1D575B75C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v5 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  *a3 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  *v4 = a4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1D575B844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::~wstring_convert(va);
  _Unwind_Resume(a1);
}

void std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::from_bytes(std::wstring *this, uint64_t a2, std::wstring *a3, std::wstring *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  *(a2 + 184) = 0;
  if (!*(a2 + 48))
  {
    goto LABEL_29;
  }

  v7 = a3;
  v8 = 2 * (a4 - a3);
  if (v8 > 0x3FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(v8 + 2);
  }

  *(&this->__r_.__value_.__s + 23) = v8;
  if (a4 != a3)
  {
    bzero(this, 8 * (a4 - a3));
  }

  this->__r_.__value_.__s.__data_[v8] = 0;
  if (v7 != a4)
  {
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = 4;
    }

    else
    {
      v10 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::wstring::resize(this, v10, 0);
    v11 = *(a2 + 136);
    v47[4] = *(a2 + 120);
    v47[5] = v11;
    v12 = *(a2 + 168);
    v47[6] = *(a2 + 152);
    v47[7] = v12;
    v13 = *(a2 + 72);
    v47[0] = *(a2 + 56);
    v47[1] = v13;
    v14 = *(a2 + 88);
    v15 = *(a2 + 104);
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v17 = this;
    }

    else
    {
      v17 = this->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v18 = v17 + 4 * size;
    v47[2] = *(a2 + 88);
    v47[3] = v15;
    while (1)
    {
      v19 = (*(**(a2 + 48) + 32))(*(a2 + 48), v47, v7, a4, &v44, v17, v18, &v43, v14);
      v20 = v44 == v7;
      *(a2 + 184) += v44 - v7;
      if (v20)
      {
        goto LABEL_42;
      }

      if (v19 != 1)
      {
        break;
      }

      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = this;
      }

      else
      {
        v21 = this->__r_.__value_.__r.__words[0];
      }

      v22 = v43 - v21;
      std::wstring::resize(this, (v43 - v21) >> 1, 0);
      v23 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      v24 = v23;
      v25 = this->__r_.__value_.__r.__words[0];
      if ((v23 & 0x80u) == 0)
      {
        v25 = this;
      }

      v17 = (v25 + v22);
      if ((v23 & 0x80u) != 0)
      {
        v23 = this->__r_.__value_.__l.__size_;
      }

      v18 = v25 + 4 * v23;
      v7 = v44;
      if (v44 >= a4)
      {
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_29;
        }

LABEL_43:
        operator delete(this->__r_.__value_.__l.__data_);
LABEL_29:
        if (*(a2 + 47) < 0)
        {
          v31 = *(a2 + 32);
          if (v31)
          {
            std::wstring::__init_copy_ctor_external(this, *(a2 + 24), v31);
            goto LABEL_48;
          }
        }

        else if (*(a2 + 47))
        {
          *&this->__r_.__value_.__l.__data_ = *(a2 + 24);
          this->__r_.__value_.__r.__words[2] = *(a2 + 40);
          goto LABEL_48;
        }

        std::__throw_range_error[abi:ne200100]("wstring_convert: from_bytes error");
      }
    }

    if (v19)
    {
      if (v19 != 3)
      {
LABEL_42:
        if ((*(&this->__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_43;
        }

        goto LABEL_29;
      }

      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = this;
      }

      else
      {
        v26 = this->__r_.__value_.__r.__words[0];
      }

      std::wstring::resize(this, (v17 - v26) >> 2, 0);
      v27 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v27 & 0x8000000000000000) != 0)
      {
        if (v7 == a4)
        {
          goto LABEL_48;
        }

        v27 = this->__r_.__value_.__l.__size_;
        v34 = this->__r_.__value_.__r.__words[2];
        v28 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v30 = this->__r_.__value_.__r.__words[0];
        v29 = HIBYTE(v34);
      }

      else
      {
        if (v7 == a4)
        {
          goto LABEL_48;
        }

        v28 = 4;
        LOBYTE(v29) = *(&this->__r_.__value_.__s + 23);
        v30 = this;
      }

      v35 = a4 - v7;
      v36 = v35 >> 2;
      if (v30 > v7 || (v30->__r_.__value_.__r.__words + 4 * v27 + 4) <= v7)
      {
        if (v28 - v27 < v36)
        {
          std::wstring::__grow_by(this, v28, v27 - v28 + v36, v27, v27, 0, 0);
          this->__r_.__value_.__l.__size_ = v27;
          LOBYTE(v29) = *(&this->__r_.__value_.__s + 23);
        }

        v37 = this;
        if ((v29 & 0x80) != 0)
        {
          v37 = this->__r_.__value_.__r.__words[0];
        }

        v38 = v37 + 4 * v27;
        memmove(v38, v7, v35);
        *&v38[v35] = 0;
        v39 = v36 + v27;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v39;
        }

        else
        {
          *(&this->__r_.__value_.__s + 23) = v39 & 0x7F;
        }
      }

      else
      {
        if (v36 > 0x3FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v36 > 4)
        {
          if ((v36 | 1) == 5)
          {
            v40 = 7;
          }

          else
          {
            v40 = (v36 | 1) + 1;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(v40);
        }

        v46 = v35 >> 2;
        memmove(__dst, v7, v35);
        *(__dst + v35) = 0;
        if ((v46 & 0x80u) == 0)
        {
          v41 = __dst;
        }

        else
        {
          v41 = __dst[0];
        }

        if ((v46 & 0x80u) == 0)
        {
          v42 = v46;
        }

        else
        {
          v42 = __dst[1];
        }

        std::wstring::append(this, v41, v42);
        if (v46 < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    else
    {
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = this;
      }

      else
      {
        v32 = this->__r_.__value_.__r.__words[0];
      }

      std::wstring::resize(this, (v43 - v32) >> 2, 0);
    }
  }

LABEL_48:
  v33 = *MEMORY[0x1E69E9840];
}

void sub_1D575BD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::wstring_convert<std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>,wchar_t,std::allocator<wchar_t>,std::allocator<char>>::~wstring_convert(uint64_t a1)
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

void std::codecvt_utf8_utf16<wchar_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8_utf16[abi:ne200100](std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::LocalizedSectionHeader::LocalizedSectionHeader(uint64_t a1, int a2, int a3, uint64_t *a4, void *a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 8, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  mlcore::LocalizedSectionHeader::_initializeLocalizedHeaderTitles(a1, a5);
  return a1;
}

void sub_1D575BEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void mlcore::LocalizedSectionHeader::_initializeLocalizedHeaderTitles(uint64_t a1, void *a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 24)
  {
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 8));
    }

    else
    {
      __p = *v3;
    }

    v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
    if (v6)
    {
      p_p = (v6 + 5);
    }

    else
    {
      p_p = &__p;
    }

    std::vector<std::string>::push_back[abi:ne200100](&v9, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((a1 + 32) != &v9)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 32), v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
  }

  __p.__r_.__value_.__r.__words[0] = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1D575C0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

_BYTE *mediaplatform::StringToUCharString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *pErrorCode = 0;
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  u_strFromUTF8(dest, 256, &pErrorCode[1], v4, v5, pErrorCode);
  if (pErrorCode[0] != U_STRING_NOT_TERMINATED_WARNING)
  {
    if (pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR)
    {
      operator new[]();
    }

    if (pErrorCode[0])
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v11 = 37;
      std::to_string(&v9, pErrorCode[0]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, "u_strFromUTF8: ", &v9);
      mediaplatform::PlatformErrorCondition::PlatformErrorCondition(exception, &v11, &v10);
    }
  }

  result = std::wstring::basic_string[abi:ne200100](a2, dest, pErrorCode[1]);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D575C7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      MEMORY[0x1DA6EDD20](v22, v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

_BYTE *std::wstring::basic_string[abi:ne200100](_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v6);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  return __dst;
}

{
  if (a3 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 5)
  {
    if ((a3 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (a3 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(v6);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 4 * a3);
  }

  *&__dst[4 * a3] = 0;
  return __dst;
}

uint64_t mlcore::LocalizedSectionsInfo::LocalizedSectionsInfo(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, __int128 *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<mlcore::LocalizedSectionHeader>::__init_with_size[abi:ne200100]<mlcore::LocalizedSectionHeader*,mlcore::LocalizedSectionHeader*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 64) = *(a5 + 2);
    *(a1 + 48) = v9;
  }

  mlcore::LocalizedSectionsInfo::_initializeLocalizedIndices(a1, a3, a4);
  return a1;
}

void sub_1D575C9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<mlcore::LocalizedSectionHeader>::__init_with_size[abi:ne200100]<mlcore::LocalizedSectionHeader*,mlcore::LocalizedSectionHeader*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::LocalizedSectionHeader>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1D575CB8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::LocalizedSectionHeader>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void mlcore::LocalizedSectionsInfo::_initializeLocalizedIndices(std::vector<std::string> *a1, uint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 8));
      }

      else
      {
        __p = *v4;
      }

      v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a3, &__p);
      if (v7)
      {
        p_p = (v7 + 5);
      }

      else
      {
        p_p = &__p;
      }

      std::vector<std::string>::push_back[abi:ne200100](&v10, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  if (&a1[1] != &v10)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 1, v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3));
  }

  __p.__r_.__value_.__r.__words[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1D575CD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlcore::LocalizedSectionHeader>,mlcore::LocalizedSectionHeader*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 56)
    {
      v7 = (v4 - 24);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      v7 = (v4 - 48);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
    }
  }

  return a1;
}

void *mlcore::LocalizedSortingDetails::LocalizedSortingDetails(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

std::string *mlcore::LanguageResources::LanguageResources(std::string *a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<mlcore::LocalizedSectionHeader>::__init_with_size[abi:ne200100]<mlcore::LocalizedSectionHeader*,mlcore::LocalizedSectionHeader*>(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&a1[1], *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v8 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v8;
  }

  a1[3].__r_.__value_.__r.__words[0] = 0;
  a1[3].__r_.__value_.__l.__size_ = 0;
  a1[3].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(&a1[3], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 4, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    a1[4].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&a1[4].__r_.__value_.__l.__data_ = v9;
  }

  return a1;
}

void sub_1D575D058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  mlcore::LocalizedSectionsInfo::~LocalizedSectionsInfo(v2);
  _Unwind_Resume(a1);
}

void sub_1D575D188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

uint64_t mlcore::Library::Library(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *a1 = &unk_1F50D3A60;
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

  *(a1 + 40) = 0;
  *(a1 + 32) = &unk_1F50DE578;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 40, a3[1], a3[2], 0xAAAAAAAAAAAAAAABLL * ((a3[2] - a3[1]) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 64) = &unk_1F50DE578;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 72, a3[5], a3[6], 0xAAAAAAAAAAAAAAABLL * ((a3[6] - a3[5]) >> 3));
  *(a1 + 104) = 0;
  *(a1 + 96) = &unk_1F50DE578;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 104, a3[9], a3[10], 0xAAAAAAAAAAAAAAABLL * ((a3[10] - a3[9]) >> 3));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 128, a3[12], a3[13], 0xAAAAAAAAAAAAAAABLL * ((a3[13] - a3[12]) >> 3));
  return a1;
}

void sub_1D575D364(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);
  *v6 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  *a2 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  *a4 = a3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v4 + 31) < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

void sub_1D575D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = (v16 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v18);
  mlcore::Library::~Library(v14);
  _Unwind_Resume(a1);
}

void mlcore::LocalLibrary::LocalLibrary(mlcore::LocalLibrary *this, const mediaplatform::ContentBundle *a2, const mediaplatform::FilePath *a3, const mlcore::LanguageResources *a4)
{
  v12[4] = *MEMORY[0x1E69E9840];
  mlcore::LocalLibrary::_libraryIdentifierFromContentBundleAndRelativePath(a2, a3, &__p);
  mlcore::Library::Library(this, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50D7710;
  mlcore::LocalLibrary::_databasePathFromContentBundleAndRelativePath(a2, a3, &__p);
  mediaplatform::FilePath::FilePath(this + 19, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *(this + 20);
  v8 = *(this + 21);
  v9 = &unk_1F50DE578;
  memset(v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v10, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
  v12[0] = &unk_1F50D37F0;
  v12[1] = mediaplatform::DefaultConnectionAllocator;
  v12[3] = v12;
  mediaplatform::DatabaseConnectionPool::DatabaseConnectionPool(this + 23, &v9, 10, 1, v12);
}

void sub_1D575D828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlcore::LocalizedSectionsInfo::~LocalizedSectionsInfo(v21);
  mediaplatform::DatabaseConnectionPool::~DatabaseConnectionPool((v22 + 24));
  *v20 = &unk_1F50DE578;
  __p = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlcore::Library::~Library(v19);
  _Unwind_Resume(a1);
}

void mlcore::LocalLibrary::_libraryIdentifierFromContentBundleAndRelativePath(mlcore::LocalLibrary *this@<X0>, const mediaplatform::ContentBundle *a2@<X1>, std::string *a3@<X8>)
{
  mlcore::LocalLibrary::_databasePathFromContentBundleAndRelativePath(this, a2, &v6);
  v5 = std::string::insert(&v6, 0, "local:", 6uLL);
  *a3 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1D575D9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::LocalLibrary::_databasePathFromContentBundleAndRelativePath(mlcore::LocalLibrary *this@<X0>, const mediaplatform::ContentBundle *a2@<X1>, std::string *a3@<X8>)
{
  v8 = &unk_1F50DE578;
  memset(v9, 0, sizeof(v9));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v9, *(this + 1), *(this + 2), 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
  mediaplatform::FilePath::operator+(&v8, a2, &v6);
  mediaplatform::FilePath::str(&v6, a3);
  v6 = &unk_1F50DE578;
  v10 = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  v8 = &unk_1F50DE578;
  v6 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1D575DAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = &unk_1F50DE578;
  *(v11 - 40) = v10 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void mediaplatform::FilePath::operator+(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v8, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v5 = 0;
  v6 = 0;
  v7 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v5, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&v8, v8.__end_, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
  v9 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  *a3 = &unk_1F50DE578;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a3 + 1), v8.__begin_, v8.__end_, 0xAAAAAAAAAAAAAAABLL * ((v8.__end_ - v8.__begin_) >> 3));
  v5 = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1D575DBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = __from_s;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v15 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v17 = 3 * a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v18 = (v6 + 8 * v17);
        do
        {
          std::string::operator=(v7, v6);
          v6 = (v6 + 24);
          ++v7;
        }

        while (v6 != v18);
      }

      else
      {
        v16 = (a3 + v15);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (a3 + v15), a4, a1->__end_);
        if (v15 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v7, end, &v7[a5]);
          do
          {
            std::string::operator=(v7, v6);
            v6 = (v6 + 24);
            ++v7;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      v28.__end_cap_.__value_ = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v14);
      }

      v19 = (8 * ((__from_s - begin) >> 3));
      v28.__first_ = 0;
      v28.__begin_ = v19;
      v28.__end_ = v19;
      v28.__end_cap_.__value_ = 0;
      v20 = &v19[a5];
      v21 = 24 * a5;
      do
      {
        if (*(v6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v19, *v6, *(v6 + 1));
        }

        else
        {
          v22 = *v6;
          v19->__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&v19->__r_.__value_.__l.__data_ = v22;
        }

        ++v19;
        v6 = (v6 + 24);
        v21 -= 24;
      }

      while (v21);
      memcpy(v20, v7, a1->__end_ - v7);
      v23 = a1->__begin_;
      v28.__end_ = (v20 + a1->__end_ - v7);
      a1->__end_ = v7;
      v24 = v7 - v23;
      v25 = (v28.__begin_ - (v7 - v23));
      memcpy(v25, v23, v24);
      v26 = a1->__begin_;
      a1->__begin_ = v25;
      v27 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v28.__end_;
      v28.__end_ = v26;
      v28.__end_cap_.__value_ = v27;
      v28.__first_ = v26;
      v28.__begin_ = v26;
      std::__split_buffer<std::string>::~__split_buffer(&v28);
    }
  }
}

void mediaplatform::FilePath::str(mediaplatform::FilePath *this@<X0>, std::string *a2@<X8>)
{
  memset(&v16, 0, sizeof(v16));
  v15 = 1;
  LOWORD(v14[0]) = 47;
  v4 = *(this + 1);
  v5 = *(this + 2);
  v3 = (this + 8);
  if (v5 == v4)
  {
    goto LABEL_20;
  }

  v6 = *(v4 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v4 + 8);
  }

  if (v6 == 1 && (v7 >= 0 ? (v8 = v4) : (v8 = *v4), *v8 == 47))
  {
    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    v18 = 0;
    if (v5 != (v4 + 24))
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((&v5[-1] - v4) >> 3);
      if (v9 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v9);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    std::vector<std::string>::__vdeallocate(&v16);
    v16 = __p;
    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
    mediaplatform::ComponentsJoinedByString<std::string>(&__p, &v16, v14);
    if (v15 >= 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = v14[0];
    }

    if (v15 >= 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14[1];
    }

    v12 = std::string::insert(&__p, 0, v10, v11);
    *a2 = *v12;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

  else
  {
LABEL_20:
    if (&v16 != v3)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v16, v4, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
    }

    mediaplatform::ComponentsJoinedByString<std::string>(a2, &v16, v14);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v14[0] = &v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
}

void sub_1D575E088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 64));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1D575E2F0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1DA6EDCB0](v1);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::ComponentsJoinedByString<std::string>(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v7 = *a2;
  v6 = a2[1];
  if (v7 != v6)
  {
    v8 = 1;
    do
    {
      if ((v8 & 1) == 0)
      {
        v9 = *(a3 + 23);
        if (v9 >= 0)
        {
          v10 = a3;
        }

        else
        {
          v10 = *a3;
        }

        if (v9 >= 0)
        {
          v11 = *(a3 + 23);
        }

        else
        {
          v11 = *(a3 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v10, v11);
      }

      v12 = *(v7 + 23);
      if (v12 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = *(v7 + 23);
      }

      else
      {
        v14 = *(v7 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v13, v14);
      v8 = 0;
      v7 += 24;
    }

    while (v7 != v6);
  }

  std::ostringstream::str[abi:ne200100](a1, &v16);
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

void sub_1D575E4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1DA6EDC40](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1D575E578(_Unwind_Exception *a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1DA6EDAA0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1DA6EDAB0](v20);
  return a1;
}

void sub_1D575E950(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA6EDAB0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1D575E924);
}

void mediaplatform::DatabaseConnectionPool::DatabaseConnectionPool(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F50DE578;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 1), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  v7 = *(a5 + 24);
  if (v7)
  {
    if (v7 == a5)
    {
      a1[7] = a1 + 4;
      (*(**(a5 + 24) + 24))(*(a5 + 24), a1 + 4);
LABEL_6:
      std::allocate_shared[abi:ne200100]<mediaplatform::DBCPSubpool,std::allocator<mediaplatform::DBCPSubpool>,mediaplatform::FilePath &,unsigned long &,BOOL,0>();
    }

    v7 = (*(*v7 + 16))(v7);
  }

  a1[7] = v7;
  goto LABEL_6;
}

void sub_1D575EB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v4 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1D575EDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  mediaplatform::WorkQueueDispatchTarget::~WorkQueueDispatchTarget(v20);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mediaplatform::DatabaseConnection> (*)(mediaplatform::FilePath const&,BOOL),std::allocator<std::shared_ptr<mediaplatform::DatabaseConnection> (*)(mediaplatform::FilePath const&,BOOL)>,std::shared_ptr<mediaplatform::DatabaseConnection> ()(mediaplatform::FilePath const&,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F50D37F0;
  a2[1] = v2;
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

uint64_t std::__function::__value_func<std::shared_ptr<mediaplatform::DatabaseConnection> ()(mediaplatform::FilePath const&,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<void ()(mediaplatform::DatabaseConnection &)>::operator=(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v8 != a1)
  {
    v4 = v9;
    v5 = *(a1 + 24);
    if (v9 == v8)
    {
      if (v5 == a1)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v8);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v8);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1D575F328(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void mediaplatform::DBCPSubpool::setDelegateCallbacks(mediaplatform::DBCPSubpool *this, const mediaplatform::DatabaseConnectionCallbacks *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  std::function<void ()(mediaplatform::DatabaseConnection &)>::operator=(this + 96, a2);
  std::function<void ()(mediaplatform::DatabaseConnection &)>::operator=(this + 128, a2 + 32);
  std::function<void ()(mediaplatform::DatabaseConnection &)>::operator=(this + 160, a2 + 64);
  (*(*this + 24))(&v5, this);
  v7[0] = &unk_1F50DCBF8;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  (*(*v5 + 48))(v5, v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D575F43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<mlcore::LocalLibrary::LocalLibrary(mediaplatform::ContentBundle const&,mediaplatform::FilePath const&,mlcore::LanguageResources const&)::$_0,std::allocator<mlcore::LocalLibrary::LocalLibrary(mediaplatform::ContentBundle const&,mediaplatform::FilePath const&,mlcore::LanguageResources const&)::$_0>,void ()(mediaplatform::DatabaseConnection &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F50D3378;
  a2[1] = v2;
  return result;
}

uint64_t mediaplatform::WorkQueueDispatchTarget::targetQueue@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void mediaplatform::WorkQueue_Dispatch::invokeSync(void *a1, void *a2)
{
  (*(*a1 + 72))(a1);
  v4 = a1[10];

  dispatch_sync_f(v4, a2, mediaplatform::_SyncDispatcher);
}

uint64_t mediaplatform::_SyncDispatcher(mediaplatform *this, void *a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void *mediaplatform::UnionSets<std::shared_ptr<mediaplatform::DatabaseConnection>>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::set<std::shared_ptr<mediaplatform::DatabaseConnection>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<mediaplatform::DatabaseConnection>,std::__tree_node<std::shared_ptr<mediaplatform::DatabaseConnection>,void *> *,long>>(a1, *a2, (a2 + 8));
  return std::set<std::shared_ptr<mediaplatform::DatabaseConnection>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<mediaplatform::DatabaseConnection>,std::__tree_node<std::shared_ptr<mediaplatform::DatabaseConnection>,void *> *,long>>(a1, *a3, (a3 + 8));
}

void std::__function::__func<void mediaplatform::DispatchTarget::invokeSync<mediaplatform::DBCPSubpool::setDelegateCallbacks(mediaplatform::DatabaseConnectionCallbacks const&)::$_0>(mediaplatform::DBCPSubpool::setDelegateCallbacks(mediaplatform::DatabaseConnectionCallbacks const&)::$_0)::{lambda(void)#1},std::allocator<void mediaplatform::DispatchTarget::invokeSync<mediaplatform::DBCPSubpool::setDelegateCallbacks(mediaplatform::DatabaseConnectionCallbacks const&)::$_0>(mediaplatform::DBCPSubpool::setDelegateCallbacks(mediaplatform::DatabaseConnectionCallbacks const&)::$_0)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  mediaplatform::UnionSets<std::shared_ptr<mediaplatform::DatabaseConnection>>(&v8, *(a1 + 8) + 192, *(a1 + 8) + 216);
  v2 = v8;
  if (v8 != v9)
  {
    do
    {
      v3 = v2[4];
      v4 = v2[5];
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mediaplatform::DatabaseConnection::setDelegateCallbacks(v3, *(a1 + 16));
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v9);
  }

  std::__tree<std::shared_ptr<mediaplatform::DatabaseConnection>>::destroy(v9[0]);
}

void sub_1D575F720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__tree<std::shared_ptr<mediaplatform::DatabaseConnection>>::destroy(a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::set<std::shared_ptr<mediaplatform::DatabaseConnection>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<mediaplatform::DatabaseConnection>,std::__tree_node<std::shared_ptr<mediaplatform::DatabaseConnection>,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = v3[4];
      if (v5[4] < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = v4[4];
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void std::__tree<std::shared_ptr<mediaplatform::DatabaseConnection>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<mediaplatform::DatabaseConnection>>::destroy(*a1);
    std::__tree<std::shared_ptr<mediaplatform::DatabaseConnection>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

uint64_t mlcore::TypedEntityClass<mlcore::Item>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::Item>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::Item>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::Item>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::Item>::sharedPointer(void)::__sharedPointer;
}

uint64_t JRNewAtomContainer(void *a1)
{
  if (a1)
  {
    v2 = MemNewHandleClear(0x20uLL);
    *a1 = v2;
    if (v2)
    {
      v3 = 0;
      v4 = *v2;
      *(v4 + 12) = 0x6E61657314000000;
      *(v4 + 20) = 0x1000000;
    }

    else
    {
      return -108;
    }
  }

  else
  {
    return -50;
  }

  return v3;
}

uint64_t JRDisposeAtomContainer(uint64_t a1)
{
  if (a1 && *(a1 + 8) >= 0x20u && (v1 = *a1, *(*a1 + 16) == 1851876723) && *(v1 + 5) == 0x1000000)
  {
    v1[2] = 0;
    MemDisposeHandle(a1);
    return 0;
  }

  else
  {
    return -2107;
  }
}

uint64_t JRAtomContainerCreate(uint64_t **a1)
{
  result = JRNewAtomContainer(a1);
  if (!result)
  {
    if (*a1)
    {
      v3 = **a1;
      *(v3 + 24) = 1;
      *(v3 + 8) = 128;
    }
  }

  return result;
}

_DWORD *JRAtomContainerRetain(_DWORD *a1)
{
  if (a1 && JRAtomContainerIsValidRetainedContainer(a1) && *(*a1 + 24))
  {
    ++*(*a1 + 24);
  }

  return a1;
}

_DWORD *JRAtomContainerIsValidRetainedContainer(_DWORD *result)
{
  if (result)
  {
    if (result[2] >= 0x20u && (v1 = *result, *(*result + 16) == 1851876723) && *(v1 + 20) == 0x1000000 && (*(v1 + 8) & 0x80) != 0)
    {
      return (*(v1 + 24) > 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *JRAtomContainerRelease(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    result = JRAtomContainerIsValidRetainedContainer(result);
    if (result)
    {
      v2 = *(*v1 + 24);
      if ((v2 - 1001) >= 0xFC18u)
      {
        v3 = v2 - 1;
        *(*v1 + 24) = v3;
        if (!v3)
        {

          return JRDisposeAtomContainer(v1);
        }
      }
    }
  }

  return result;
}

CFDataRef JRAtomContainerToCFData(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (v2 < 0x20)
  {
    return 0;
  }

  v3 = *a1;
  if (*(*a1 + 16) != 1851876723 || *(v3 + 20) != 0x1000000 || !JRAtomContainerIsValidAtomChildren(a1, 0, 1))
  {
    return 0;
  }

  v4 = *(v3 + 24);
  v5 = *(v3 + 8);
  *(v3 + 8) = v5 & 0xFF7F;
  *(v3 + 24) = 0;
  result = CFDataCreate(0, v3, v2);
  v7 = *a1;
  *(v7 + 24) = v4;
  *(v7 + 8) = v5;
  return result;
}

uint64_t JRAtomContainerIsValidAtomChildren(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = 12;
    }

    v6 = v4 + v5;
    v7 = bswap32(*(v6 + 14)) >> 16;
    if (v7 < 1)
    {
      return 1;
    }

    else
    {
      v9 = v4 + *(result + 8);
      v10 = (v6 + 20);
      LOWORD(v11) = 1;
      while (1)
      {
        v12 = bswap32(*v10);
        v13 = (v10 + v12);
        if (v12 < 21 || v13 > v9)
        {
          break;
        }

        if (a3)
        {
          result = JRAtomContainerIsValidAtomChildren(v3, (v10 - v4), 0);
          if (!result)
          {
            return result;
          }
        }

        v11 = (v11 + 1);
        v10 = v13;
        if (v11 > v7)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t getAtomFirstChild(void *a1, int a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 12;
  }

  v3 = *a1 + v2;
  v4 = bswap32(*(v3 + 14)) >> 16;
  v5 = v3 + 20;
  if (v4 <= 0)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t JRDataToAtomContainer(unsigned int a1, const void *a2)
{
  v3 = a1;
  v4 = MemNewHandleClear(a1);
  v5 = v4;
  if (v4)
  {
    memcpy(*v4, a2, v3);
    if (*(v5 + 8) >= 0x20u && (v6 = *v5, *(*v5 + 16) == 1851876723) && *(v6 + 5) == 0x1000000 && (JRAtomContainerIsValidAtomChildren(v5, 0, 1) & 1) != 0)
    {
      v6[12] = 1;
      v6[4] |= 0x80u;
    }

    else
    {
      MemDisposeHandle(v5);
      return 0;
    }
  }

  return v5;
}

unsigned int *JRGetNextChildType(unsigned int *a1, int a2, unsigned int a3)
{
  result = JRAtomContainerIsValidAtom(a1, a2);
  if (result)
  {
    v7 = *a1;
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 12;
    }

    v9 = v7 + v8;
    if (bswap32(*(v9 + 14)) >> 16 < 1)
    {
      return 0;
    }

    if (!a3)
    {
      return bswap32(*(v9 + 24));
    }

    v10 = v7 + v8;
    v11 = (v10 + 20);
    v12 = bswap32(*(v10 + 14)) >> 16;
    while (--v12 && bswap32(v11[1]) != a3)
    {
      v11 = (v11 + bswap32(*v11));
    }

    if (bswap32(v11[1]) != a3)
    {
      return 0;
    }

    v13 = a3;
    if (v12)
    {
      while (1)
      {
        v13 = bswap32(v11[1]);
        if (v13 != a3)
        {
          break;
        }

        v11 = (v11 + bswap32(*v11));
        if (!--v12)
        {
          v13 = bswap32(v11[1]);
          break;
        }
      }
    }

    if (v13 == a3)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

unsigned int *JRAtomContainerIsValidAtom(unsigned int *result, int a2)
{
  if (result)
  {
    v2 = result[2];
    if (v2 >= 0x20 && *(*result + 16) == 1851876723 && *(*result + 20) == 0x1000000)
    {
      if (v2 - 20 >= a2)
      {
        return ((a2 - 12) < 0xFFFFFFF5);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t JRCountChildrenOfType(unsigned int *a1, int a2, int a3)
{
  v6 = JRAtomContainerIsValidAtom(a1, a2);
  LOWORD(v7) = 0;
  if (a1 && v6)
  {
    v14 = 0;
    v8 = a2 ? a2 : 12;
    v7 = bswap32(*(*a1 + v8 + 14)) >> 16;
    if (a3)
    {
      ChildAtomPtr = findChildAtomPtr(a1, a2, a3, 1, 0, &v14, 0);
      if (ChildAtomPtr && v14 <= v7)
      {
        v11 = v7 - v14 + 1;
        v12 = v7 - v14 + 1;
        v13 = v14 + 1;
        LOWORD(v7) = 0;
        while (bswap32(ChildAtomPtr[1]) == a3)
        {
          LOWORD(v7) = v7 + 1;
          v14 = v13;
          ChildAtomPtr = (ChildAtomPtr + bswap32(*ChildAtomPtr));
          ++v13;
          if (!--v12)
          {
            LOWORD(v7) = v11;
            return v7;
          }
        }
      }

      else
      {
        LOWORD(v7) = 0;
      }
    }
  }

  return v7;
}

unsigned int *findChildAtomPtr(unsigned int *result, int a2, int a3, __int16 a4, int a5, _DWORD *a6, _WORD *a7)
{
  if (!result)
  {
    return result;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 12;
  }

  v8 = *result + v7;
  v9 = bswap32(*(v8 + 14)) >> 16;
  if (v9 < 1)
  {
LABEL_16:
    result = 0;
    if (a6)
    {
      *a6 = 0;
    }

    return result;
  }

  v10 = 0;
  result = (v8 + 20);
  LOWORD(v8) = 1;
  while (1)
  {
    if (bswap32(result[1]) != a3)
    {
      goto LABEL_15;
    }

    if (!a4)
    {
      break;
    }

    if (!--a4)
    {
      if (a6)
      {
        *a6 = v8;
      }

      return result;
    }

LABEL_15:
    result = (result + bswap32(*result));
    LODWORD(v8) = (v8 + 1);
    if (v8 > v9)
    {
      goto LABEL_16;
    }
  }

  if (!v10)
  {
    v10 = v8;
  }

  if (bswap32(result[2]) != a5)
  {
    a4 = 0;
    goto LABEL_15;
  }

  if (a6)
  {
    *a6 = v8;
  }

  if (a7)
  {
    *a7 = v8 - v10 + 1;
  }

  return result;
}

unsigned int *JRFindChildByIndex(unsigned int *a1, int a2, int a3, int a4, _DWORD *a5)
{
  v10 = JRAtomContainerIsValidAtom(a1, a2);
  result = 0;
  if (a4)
  {
    if (v10)
    {
      result = findChildAtomPtr(a1, a2, a3, a4, 0, 0, 0);
      if (result)
      {
        v12 = result;
        if (a1)
        {
          v13 = *a1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        result = (result - v13);
        if (a5)
        {
          *a5 = bswap32(v12[2]);
        }
      }
    }
  }

  return result;
}

unsigned int *JRFindChildByID(unsigned int *a1, int a2, int a3, int a4, _WORD *a5)
{
  result = JRAtomContainerIsValidAtom(a1, a2);
  if (result)
  {
    result = findChildAtomPtr(a1, a2, a3, 0, a4, 0, a5);
    if (result)
    {
      if (a1)
      {
        v11 = *a1;
      }

      else
      {
        LODWORD(v11) = 0;
      }

      return (result - v11);
    }
  }

  return result;
}

uint64_t JRNextChildAnyType(unsigned int *a1, int a2, int a3, _DWORD *a4)
{
  if (!a4)
  {
    return -50;
  }

  *a4 = 0;
  if (!JRAtomContainerIsValidAtom(a1, a2))
  {
    return -2106;
  }

  if (!a1)
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 12;
    }

    v14 = *(v13 + 0xELL);
    if (!*(v13 + 0xELL))
    {
      goto LABEL_21;
    }

    LODWORD(v15) = 0;
    LODWORD(v11) = v13 + 20;
    goto LABEL_20;
  }

  v8 = *a1;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 12;
  }

  v10 = v8 + v9;
  if (!a3)
  {
    if (!*(v10 + 14))
    {
      v14 = 0;
      goto LABEL_21;
    }

    LODWORD(v11) = v10 + 20;
    goto LABEL_19;
  }

  v11 = v8 + a3 + bswap32(*(v8 + a3));
  if (v11 - v10 <= bswap32(*v10) - 20)
  {
LABEL_19:
    v15 = *a1;
LABEL_20:
    v14 = v11 - v15;
LABEL_21:
    v12 = 0;
    *a4 = v14;
    return v12;
  }

  return 0;
}

uint64_t JRSetAtomData(unsigned int *a1, unsigned int a2, int a3, const void *a4)
{
  if (!JRAtomContainerIsValidAtom(a1, a2))
  {
    return -2106;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 12;
  }

  if (*(*a1 + v8 + 14))
  {
    return -2102;
  }

  return setAtomData(a1, a2, a3, a4);
}

uint64_t setAtomData(int *a1, unsigned int a2, int a3, const void *a4)
{
  if (!a1 || a3 && !a4)
  {
    LOWORD(v8) = -50;
    return v8;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 12;
  }

  v10 = bswap32(*(*a1 + v9)) - 20;
  v8 = resizeContainer(a1, a2 + 20, v10, a3);
  if (v8)
  {
    return v8;
  }

  v12 = (*a1 + v9);
  *v12 = bswap32(a3 + 20);
  memmove(v12 + 5, a4, a3);

  return patchParentSizes(a1, a2, a3 - v10, 0);
}

uint64_t resizeContainer(uint64_t a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    return -2107;
  }

  v5 = *a1;
  if (v5[5])
  {
    return -117;
  }

  v7 = a4 - a3;
  if (a4 == a3)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  if (v9 < a2)
  {
    return -50;
  }

  v10 = v9 - a2;
  if (v9 - a2 + v7 < 0)
  {
    return -50;
  }

  if (v7 >= 1)
  {
    v11 = v9 + v7;
    if (v9 < v9 + v7)
    {
      v5 = malloc_type_realloc(v5, v11, 0xF74AAAE3uLL);
      *a1 = v5;
    }

    *(a1 + 8) = v11;
    memmove(v5 + a2 + v7, v5 + a2, v10);
    return 0;
  }

  memmove(v5 + a2, v5 + a2 - v7, (v9 - a2 + v7));
  v13 = v9 + v7;
  if (*(a1 + 8) < (v9 + v7))
  {
    *a1 = malloc_type_realloc(*a1, v13, 0xF74AAAE3uLL);
  }

  v6 = 0;
  *(a1 + 8) = v13;
  return v6;
}

uint64_t patchParentSizes(int *a1, unsigned int a2, int a3, int a4)
{
  v4 = 0;
  if (!a2 || a2 == 12)
  {
    return v4;
  }

  if (a1)
  {
    v5 = *a1;
    v6 = *(*a1 + 26);
    if (*(*a1 + 26))
    {
      v7 = a1[2] - 20;
      goto LABEL_8;
    }

    return 0;
  }

  v6 = MEMORY[0x1A];
  if (!MEMORY[0x1A])
  {
    return 0;
  }

  v5 = 0;
  v7 = -20;
LABEL_8:
  v8 = 0;
  v9 = 0;
  v10 = __rev16(v6);
  v11 = v5 + 12;
  v12 = 12;
  while (1)
  {
    v4 = -50;
    if (v12 > a2 || v7 < v12)
    {
      break;
    }

    if (v12 != a2)
    {
      v13 = bswap32(*v11);
      if (v13 + v12 <= a2)
      {
        if (v8)
        {
          if (v8 > v10)
          {
            return -50;
          }

          ++v8;
        }

        v11 += v13;
        v12 += v13;
      }

      else
      {
        v10 = bswap32(*(v11 + 14)) >> 16;
        *v11 = bswap32(v13 + a3);
        v11 += 20;
        v9 = v12;
        v12 += 20;
        v8 = 1;
      }

      if (v10 > 0)
      {
        continue;
      }
    }

    if (!v9)
    {
      return 0;
    }

    v4 = 0;
    *(*a1 + v9 + 14) = bswap32(a4 + (bswap32(*(*a1 + v9 + 14)) >> 16)) >> 16;
    return v4;
  }

  return v4;
}

uint64_t JRCopyAtomDataToMemHandle(unsigned int *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    if (JRAtomContainerIsValidAtom(a1, a2))
    {
      if (a1)
      {
        v6 = *a1;
        if (a2)
        {
          v7 = a2;
        }

        else
        {
          v7 = 12;
        }

        v8 = v6 + v7;
        if (*(v8 + 14))
        {
          return -2102;
        }

        else
        {
          v11 = bswap32(*v8) - 20;
          v12 = *a3;
          if (*(a3 + 8) < v11)
          {
            v12 = malloc_type_realloc(v12, v11, 0xF74AAAE3uLL);
            *a3 = v12;
          }

          v13 = *a1;
          *(a3 + 8) = v11;
          memmove(v12, (v13 + v8 - v6 + 20), v11);
          return 0;
        }
      }

      else
      {
        if (a2)
        {
          v10 = a2;
        }

        else
        {
          v10 = 12;
        }

        if (*(v10 + 0xELL))
        {
          return -2102;
        }

        else
        {
          return -50;
        }
      }
    }

    else
    {
      return -2106;
    }
  }

  else
  {
    return -50;
  }
}

uint64_t JRCopyAtomDataToPtr(unsigned int *a1, int a2, int a3, signed int a4, void *a5, signed int *a6)
{
  if (!JRAtomContainerIsValidAtom(a1, a2))
  {
    v12 = -2106;
    if (!a6)
    {
      return v12;
    }

    goto LABEL_20;
  }

  v12 = -50;
  if (a4 && a5)
  {
    if (a1)
    {
      if (a2)
      {
        v13 = a2;
      }

      else
      {
        v13 = 12;
      }

      v14 = *a1 + v13;
      if (*(v14 + 14))
      {
        v12 = -2102;
        if (!a6)
        {
          return v12;
        }
      }

      else
      {
        v19 = *v14;
        v18 = (v14 + 20);
        v16 = bswap32(v19) - 20;
        if (v16 <= a4 && (a3 || v16 >= a4))
        {
          memmove(a5, v18, v16);
          v12 = 0;
          if (!a6)
          {
            return v12;
          }

          goto LABEL_21;
        }

        v12 = -50;
        if (!a6)
        {
          return v12;
        }
      }

LABEL_20:
      v16 = 0;
LABEL_21:
      *a6 = v16;
      return v12;
    }

    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 12;
    }

    if (*(v15 + 0xELL))
    {
      v12 = -2102;
    }

    else
    {
      v12 = -50;
    }
  }

  if (a6)
  {
    goto LABEL_20;
  }

  return v12;
}

uint64_t JRGetAtomTypeAndID(unsigned int *a1, int a2, _DWORD *a3, _DWORD *a4)
{
  if (JRAtomContainerIsValidAtom(a1, a2))
  {
    if (a1)
    {
      v8 = *a1;
    }

    else
    {
      v8 = 0;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 12;
    }

    v11 = v8 + v10;
    if (a3)
    {
      *a3 = bswap32(*(v11 + 4));
    }

    v9 = 0;
    if (a4)
    {
      *a4 = bswap32(*(v11 + 8));
    }
  }

  else
  {
    return -2106;
  }

  return v9;
}

uint64_t JRCopyAtom(unsigned int *a1, int a2, uint64_t *a3)
{
  if (a3)
  {
    if (JRAtomContainerIsValidAtom(a1, a2))
    {
      *a3 = 0;
      if (a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 12;
      }

      if (v6 == 12)
      {
        if (a1)
        {
          v7 = (bswap32(*(*a1 + 12)) + 12);
          v8 = MemNewHandleClear(v7);
          *a3 = v8;
          if (v8)
          {
            v9 = *a1;
LABEL_16:
            memmove(*v8, v9, v7);
            v10 = 0;
            v12 = **a3;
            *(v12 + 8) = 0;
            *v12 = 0;
            return v10;
          }
        }

        else
        {
          v8 = MemNewHandleClear(0);
          *a3 = v8;
          if (v8)
          {
            v7 = 0;
            v9 = 0;
            goto LABEL_16;
          }
        }

        v10 = -108;
      }

      else
      {
        v11 = JRNewAtomContainer(a3);
        if (v11)
        {
          v10 = v11;
        }

        else
        {
          v13 = v6;
          v14 = bswap32(*(*a1 + v6));
          v15 = resizeContainer(*a3, 32, 0, v14);
          v10 = v15;
          if (!v15)
          {
            memmove((**a3 + 32), (*a1 + v13), v14);
            v16 = **a3;
            *(v16 + 12) = bswap32(v14 + 20);
            *(v16 + 26) = 256;
            return v10;
          }
        }
      }

      MemDisposeHandle(*a3);
      *a3 = 0;
      return v10;
    }

    return -2106;
  }

  else
  {
    return -50;
  }
}

uint64_t JRLockContainer(_DWORD *a1)
{
  if (a1 && a1[2] >= 0x20u && (v1 = *a1, *(*a1 + 16) == 1851876723) && *(v1 + 20) == 0x1000000)
  {
    v2 = 0;
    *(v1 + 10) = bswap32((bswap32(*(v1 + 10)) >> 16) + 1) >> 16;
  }

  else
  {
    return -2107;
  }

  return v2;
}

uint64_t JRGetAtomDataPtr(unsigned int *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (JRAtomContainerIsValidAtom(a1, a2))
  {
    if (a1)
    {
      if (a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = 12;
      }

      v9 = *a1 + v8;
      if (*(v9 + 14))
      {
        return -2102;
      }

      else if (a3 | a4)
      {
        if (a3)
        {
          *a3 = bswap32(*v9) - 20;
        }

        v10 = 0;
        if (a4)
        {
          *a4 = v9 + 20;
        }
      }

      else
      {
        return -50;
      }
    }

    else
    {
      if (a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = 12;
      }

      if (*(v11 + 0xELL))
      {
        return -2102;
      }

      else
      {
        return -50;
      }
    }
  }

  else
  {
    return -2106;
  }

  return v10;
}

uint64_t JRFindAndGetAtomDataPtr(unsigned int *a1, int a2, int a3, int a4, _DWORD *a5)
{
  v10 = 0;
  v9 = 0;
  v7 = JRFindChildByIndex(a1, a2, a3, a4, 0);
  if (v7)
  {
    JRGetAtomDataPtr(a1, v7, &v10, &v9);
  }

  if (a5)
  {
    *a5 = v10;
  }

  return v9;
}

unsigned int *JRAddOrInsertAtom(unsigned int *a1, int a2, unsigned int a3, int a4, const void *a5)
{
  v10 = JRFindChildByIndex(a1, a2, a3, 1, 0);
  v13 = v10;
  if (v10)
  {
    v11 = v10;
    JRSetAtomData(a1, v10, a4, a5);
  }

  else
  {
    JRInsertChild(a1, a2, a3, 0, 1, a4, a5, &v13);
    return v13;
  }

  return v11;
}

uint64_t JRInsertChild(unsigned int *a1, int a2, unsigned int a3, unsigned int a4, int a5, int a6, const void *a7, _DWORD *a8)
{
  if (!JRAtomContainerIsValidAtom(a1, a2))
  {
    LOWORD(v16) = -2106;
    return v16;
  }

  if (!a3)
  {
    LOWORD(v16) = -2108;
    return v16;
  }

  if (*(*a1 + 10))
  {
    LOWORD(v16) = -117;
  }

  else
  {
    if (a4)
    {
      if (findChildAtomPtr(a1, a2, a3, 0, a4, 0, 0))
      {
        LOWORD(v16) = -2105;
        return v16;
      }
    }

    else
    {
      if (!JRAtomContainerIsValidAtom(a1, a2))
      {
        LOWORD(v16) = -2106;
        goto LABEL_5;
      }

      v18 = 1;
      do
      {
        a4 = v18;
        ChildAtomPtr = findChildAtomPtr(a1, a2, a3, 0, v18, 0, 0);
        if (!v18)
        {
          break;
        }

        ++v18;
      }

      while (ChildAtomPtr);
      if (!a4)
      {
        LOWORD(v16) = -108;
        goto LABEL_5;
      }
    }

    JRLockContainer(a1);
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = 12;
    }

    v21 = *a1 + v20;
    v22 = bswap32(*v21);
    v23 = *(v21 + 14);
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22 < 0x15;
    }

    if (v22 >= 0x15 && v23 == 0)
    {
      LOWORD(v16) = -2109;
    }

    else
    {
      v26 = v20;
      if (!a5)
      {
        LOWORD(a5) = JRCountChildrenOfType(a1, v20, a3) + 1;
      }

      if (a5 >= 1 && (!a6 || a7))
      {
        v27 = v22 - 20;
        v28 = findChildAtomPtr(a1, v26, a3, a5, 0, 0, 0);
        if (!v28)
        {
          if (a5 == 1)
          {
            v28 = (*a1 + v26 + v27 + 20);
          }

          else
          {
            v29 = findChildAtomPtr(a1, v26, a3, a5 - 1, 0, 0, 0);
            if (!v29)
            {
              LOWORD(v16) = -2104;
              goto LABEL_5;
            }

            v28 = (v29 + bswap32(*v29));
          }
        }

        v39 = v26;
        v30 = v27;
        v31 = v28 - *a1;
        v32 = a6 + 20;
        if (v24)
        {
          v33 = v30;
        }

        else
        {
          v33 = 0;
        }

        v34 = v32 - v33;
        JRUnlockContainer(a1);
        v16 = resizeContainer(a1, v31, 0, v34);
        JRLockContainer(a1);
        if (!v16)
        {
          v35 = *a1 + v39;
          *v35 = bswap32(bswap32(*v35) + v34);
          *(v35 + 14) = bswap32((bswap32(*(v35 + 14)) >> 16) + 1) >> 16;
          v36 = patchParentSizes(a1, v39, v34, 0);
          if (v36)
          {
            LOWORD(v16) = v36;
          }

          else
          {
            v37 = v31;
            if (!v31)
            {
              v37 = 12;
            }

            v38 = *a1 + v37;
            *v38 = bswap32(v32);
            *(v38 + 4) = bswap32(a3);
            *(v38 + 8) = bswap32(a4);
            *(v38 + 12) = 0;
            if (a7)
            {
              memmove((v38 + 20), a7, a6);
            }

            LOWORD(v16) = 0;
            if (a8)
            {
              *a8 = v38 - *a1;
            }
          }
        }

        goto LABEL_5;
      }

      LOWORD(v16) = -50;
    }
  }

LABEL_5:
  JRUnlockContainer(a1);
  return v16;
}

uint64_t JRUnlockContainer(_DWORD *a1)
{
  if (a1 && a1[2] >= 0x20u && (v1 = *a1, *(*a1 + 16) == 1851876723) && *(v1 + 20) == 0x1000000)
  {
    v2 = 0;
    v3 = (bswap32(*(v1 + 10)) >> 16) - 1;
    v4 = v3;
    v5 = bswap32(v3) >> 16;
    if (v4 < 0)
    {
      LOWORD(v5) = 0;
    }

    *(v1 + 10) = v5;
  }

  else
  {
    return -2107;
  }

  return v2;
}

uint64_t JRInsertChildren(unsigned int *a1, int a2, unsigned int *a3)
{
  v4 = a2;
  if (!JRAtomContainerIsValidAtom(a1, a2))
  {
    LOWORD(v8) = -2106;
    return v8;
  }

  if (!a3)
  {
    LOWORD(v8) = -2107;
    return v8;
  }

  v6 = *(*a3 + 26);
  if (!v6)
  {
    goto LABEL_31;
  }

  if (!v4)
  {
    v4 = 12;
  }

  if (a1)
  {
    v7 = *a1;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 + v4;
  v10 = bswap32(*v9);
  if (v10 >= 0x15 && !*(v9 + 14))
  {
    LOWORD(v8) = -2109;
    return v8;
  }

  if (!*(v9 + 14))
  {
    v21 = *(*a3 + 12);
    v22 = bswap32(v21);
    v8 = resizeContainer(a1, v4 + 20, v10 - 20, v22 - 20);
    if (v8)
    {
      return v8;
    }

    memmove((*a1 + v4 + 20), (*a3 + 32), (v22 - 20));
    v23 = *a1 + v4;
    *v23 = v21;
    *(v23 + 14) = v6;
    v8 = patchParentSizes(a1, v4, v22 - v10, 0);
    if (v8)
    {
      return v8;
    }

LABEL_31:
    LOWORD(v8) = 0;
    return v8;
  }

  JRLockContainer(a3);
  v11 = 0;
  do
  {
LABEL_15:
    ChildType = JRGetNextChildType(a3, 0, v11);
    if (!ChildType)
    {
      JRUnlockContainer(a3);
      goto LABEL_31;
    }

    v11 = ChildType;
    v13 = JRCountChildrenOfType(a3, 0, ChildType);
  }

  while (v13 < 1);
  v14 = v13;
  LOWORD(v15) = 1;
  while (1)
  {
    v25 = 0;
    v16 = JRFindChildByIndex(a3, 0, v11, v15, 0);
    v17 = v16 ? v16 : 12;
    v18 = *a3 + v17;
    v8 = JRInsertChild(a1, v4, v11, bswap32(*(v18 + 8)), 0, bswap32(*v18) - 20, (v18 + 20), &v25);
    if (v8)
    {
      return v8;
    }

    v19 = v25;
    if (!v25)
    {
      v19 = 12;
    }

    v20 = *a1 + v19;
    *(v20 + 12) = 0;
    *(v20 + 14) = *(v18 + 14);
    *(v20 + 16) = 0;
    v15 = (v15 + 1);
    if (v15 > v14)
    {
      goto LABEL_15;
    }
  }
}

uint64_t JRRemoveAtom(unsigned int *a1, signed int a2)
{
  if (!JRAtomContainerIsValidAtom(a1, a2))
  {
    LOWORD(v4) = -2106;
    return v4;
  }

  if (!a2)
  {
    LOWORD(v4) = -50;
    return v4;
  }

  if (!a1 || *(*a1 + 10))
  {
    LOWORD(v4) = -117;
    return v4;
  }

  v6 = bswap32(*(*a1 + a2));
  v4 = patchParentSizes(a1, a2, -v6, -1);
  if (v4)
  {
    return v4;
  }

  return resizeContainer(a1, a2, v6, 0);
}

uint64_t JRRemoveChildren(unsigned int *a1, int a2)
{
  if (!JRAtomContainerIsValidAtom(a1, a2))
  {
    LOWORD(v6) = -2106;
    return v6;
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 12;
  }

  if (v4 == 12)
  {
    if (a1)
    {
      v5 = *a1;
      if (*(*a1 + 10))
      {
        LOWORD(v6) = -117;
      }

      else
      {
        if (a1[2] <= 0x1F)
        {
          v5 = malloc_type_realloc(*a1, 0x20uLL, 0xF74AAAE3uLL);
          *a1 = v5;
        }

        LOWORD(v6) = 0;
        a1[2] = 32;
        *(v5 + 12) = 0x6E61657314000000;
        *(v5 + 5) = 0x1000000;
        *(v5 + 3) = 0;
      }
    }

    else if (MEMORY[0xA])
    {
      LOWORD(v6) = -117;
    }

    else
    {
      LOWORD(v6) = -2107;
    }

    return v6;
  }

  v7 = v4;
  if (a1)
  {
    v8 = *a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[v7];
  if (!*(v9 + 7))
  {
    LOWORD(v6) = 0;
    return v6;
  }

  v10 = bswap32(*v9);
  v6 = resizeContainer(a1, v7 + 20, v10 - 20, 0);
  if (v6)
  {
    return v6;
  }

  v11 = *a1 + v7;
  *(v11 + 14) = 0;
  *v11 = 335544320;

  return patchParentSizes(a1, v7, 20 - v10, 0);
}

uint64_t JRReplaceAtom(unsigned int *a1, int a2, unsigned int *a3, int a4)
{
  if (!JRAtomContainerIsValidAtom(a1, a2) || !JRAtomContainerIsValidAtom(a3, a4))
  {
    return -2106;
  }

  if (a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = 12;
  }

  v11 = v8 + v10;
  if (a1)
  {
    v12 = *a1;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 12;
  }

  v14 = v12 + v13;
  if (*(v11 + 4) != *(v14 + 4))
  {
    return -2103;
  }

  v15 = bswap32(*v11) - 20;
  *(v14 + 14) = *(v11 + 14);
  *(v14 + 16) = *(v11 + 16);
  if (a1 == a3)
  {
    v18 = malloc_type_malloc(v15, 0xE786414FuLL);
    if (v18)
    {
      v19 = v18;
      memmove(v18, (*a3 + v10 + 20), v15);
      v16 = setAtomData(a1, a2, v15, v19);
      free(v19);
      return v16;
    }

    return -108;
  }

  JRLockContainer(a3);
  v16 = setAtomData(a1, a2, v15, (v11 + 20));
  JRUnlockContainer(a3);
  return v16;
}

uint64_t JRSwapAtoms(unsigned int *a1, int a2, int a3)
{
  v16 = 0;
  v17 = 0;
  if (JRAtomContainerIsValidAtom(a1, a2))
  {
    if (JRAtomContainerIsValidAtom(a1, a3))
    {
      v6 = -50;
      if (a2 && a3)
      {
        v7 = *(*a1 + a2 + 4);
        if (v7 == *(*a1 + a3 + 4))
        {
          if (a2 == a3)
          {
            v6 = 0;
          }

          else
          {
            if (a2 >= a3)
            {
              v8 = a3;
            }

            else
            {
              v8 = a2;
            }

            if (a2 >= a3)
            {
              a3 = a2;
            }

            v9 = JRCopyAtom(a1, v8, &v17);
            if (!v9)
            {
              v9 = JRCopyAtom(a1, a3, &v16);
              if (!v9)
              {
                v10 = bswap32(v7);
                v11 = v17;
                v12 = JRFindChildByIndex(v17, 0, v10, 1, 0);
                v9 = JRReplaceAtom(a1, a3, v11, v12);
                if (!v9)
                {
                  v13 = v16;
                  v14 = JRFindChildByIndex(v16, 0, v10, 1, 0);
                  LOWORD(v9) = JRReplaceAtom(a1, v8, v13, v14);
                }
              }
            }

            v6 = v9;
          }
        }

        else
        {
          v6 = -2103;
        }
      }
    }

    else
    {
      v6 = -2106;
    }

    if (v17)
    {
      JRDisposeAtomContainer(v17);
    }

    if (v16)
    {
      JRDisposeAtomContainer(v16);
    }
  }

  else
  {
    return -2106;
  }

  return v6;
}

uint64_t JRSetAtomID(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  v6 = JRAtomContainerIsValidAtom(a1, a2);
  v7 = -2106;
  if (a2 >= 0x20 && v6)
  {
    v8 = JRGetAtomParent(a1, a2);
    if (v8 == -1)
    {
      return -2106;
    }

    else
    {
      if (a1)
      {
        v9 = *a1;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 + a2;
      if (findChildAtomPtr(a1, v8, bswap32(*(v10 + 4)), 0, a3, 0, 0))
      {
        return -2105;
      }

      else
      {
        v7 = 0;
        *(v10 + 8) = bswap32(a3);
      }
    }
  }

  return v7;
}

uint64_t JRGetAtomParent(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (!a2 || a2 == 12)
  {
    return result;
  }

  v4 = *(a1 + 8) - 20;
  if (v4 < 0xC)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *a1 + 12;
  v9 = 12;
  while (v9 != a2)
  {
    v10 = bswap32(*v8);
    v11 = v10 + v9;
    if (v10 + v9 <= a2)
    {
      if (v5)
      {
        if (v5 > v6)
        {
          return 0xFFFFFFFFLL;
        }

        ++v5;
      }

      v8 += v10;
    }

    else
    {
      v6 = bswap32(*(v8 + 14)) >> 16;
      v8 += 20;
      v11 = v9 + 20;
      v5 = 1;
      v7 = v9;
    }

    v9 = v11;
    if (v4 < v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v7 == 12)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

mlcore::BaseLocationTable *mlcore::BaseLocationTable::BaseLocationTable(mlcore::BaseLocationTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "base_location");
  std::string::basic_string[abi:ne200100]<0>(&v11, "base_location_id");
  v12 = &unk_1F50D86E0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v11;
  }

  v14 = 1;
  v15 = 0;
  v16 = 0;
  v12 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "path");
  v4 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  v6 = 16;
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v4 = &unk_1F50D7B20;
  mlcore::MediaTable<long long,std::string>::MediaTable(this, &v17, &v12, &v4);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  *this = &unk_1F50D4E28;
  return this;
}

void sub_1D576296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v30 - 88) = v29;
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v30 - 17) < 0)
  {
    operator delete(*(v30 - 40));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t mlcore::MediaTable<long long,std::string>::MediaTable(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v20 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v8 = *(a3 + 36);
  v22 = *(a3 + 32);
  v20 = &unk_1F50D8958;
  v23 = v8;
  v24 = *(a3 + 44);
  v15 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v16 = *(a4 + 8);
  }

  v17 = *(a4 + 32);
  v15 = &unk_1F50D89B8;
  v18 = *(a4 + 36);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(a4 + 40), *(a4 + 48));
  }

  else
  {
    v19 = *(a4 + 40);
  }

  mediaplatform::DatabaseTableBase::DatabaseTableBase(a1, a2);
  *a1 = &unk_1F50D8EC8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v21;
  }

  v32 = v22;
  v30 = &unk_1F50D8958;
  v33 = v23;
  v34 = v24;
  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v16;
  }

  v27 = v17;
  v25 = &unk_1F50D89B8;
  v28 = v18;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = v19;
  }

  v35 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v26;
  }

  v37 = v27;
  v35 = &unk_1F50D89B8;
  v38 = v28;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v29;
  }

  *(a1 + 80) = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 88) = v36;
  }

  *(a1 + 112) = v37;
  *(a1 + 80) = &unk_1F50D89B8;
  *(a1 + 116) = v38;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 120) = v39;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v35);
  *(a1 + 144) = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 152) = __p;
  }

  *(a1 + 176) = v32;
  *(a1 + 144) = &unk_1F50D8958;
  *(a1 + 180) = v33;
  *(a1 + 188) = v34;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v25);
  v30 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v15);
  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F50D8478;
  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 200), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v9 = *(a3 + 8);
    *(a1 + 216) = *(a3 + 24);
    *(a1 + 200) = v9;
  }

  *(a1 + 224) = *(a3 + 32);
  *(a1 + 192) = &unk_1F50D8958;
  v10 = *(a3 + 36);
  *(a1 + 236) = *(a3 + 44);
  *(a1 + 228) = v10;
  *(a1 + 192) = &unk_1F50D7AC0;
  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 248), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v11 = *(a4 + 8);
    *(a1 + 264) = *(a4 + 24);
    *(a1 + 248) = v11;
  }

  *(a1 + 272) = *(a4 + 32);
  *(a1 + 240) = &unk_1F50D89B8;
  *(a1 + 276) = *(a4 + 36);
  v12 = (a1 + 280);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v12, *(a4 + 40), *(a4 + 48));
  }

  else
  {
    v13 = *(a4 + 40);
    *(a1 + 296) = *(a4 + 56);
    *&v12->__r_.__value_.__l.__data_ = v13;
  }

  *(a1 + 240) = &unk_1F50D7B20;
  return a1;
}

void sub_1D57630FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  *(v49 + 240) = v51;
  if (*(v49 + 271) < 0)
  {
    operator delete(*(v49 + 248));
  }

  *(v49 + 192) = v50;
  if (*(v49 + 223) < 0)
  {
    operator delete(*(v49 + 200));
  }

  mediaplatform::DatabaseTable<long long,std::string>::~DatabaseTable(v49);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(uint64_t a1)
{
  *a1 = &unk_1F50D89B8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1D5763350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1D5763444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mediaplatform::SQLColumnNameExpression>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseTable<long long,std::string>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 144);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 80);
}

void sub_1D5763574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::ColumnNamesApplier::operator()<long long>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = __p.__r_.__value_.__r.__words[0];

    operator delete(v3);
  }
}

void sub_1D5763618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::ColumnNamesApplier::operator()<std::string>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = __p.__r_.__value_.__r.__words[0];

    operator delete(v3);
  }
}

void sub_1D57636C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E84C80E8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void mlcore::BaseLocationTable::~BaseLocationTable(mlcore::BaseLocationTable *this)
{
  *this = &unk_1F50D8478;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 240);
  *(this + 24) = &unk_1F50D86E0;
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  *this = &unk_1F50D8EC8;
  *(this + 18) = &unk_1F50D86E0;
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D8478;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 240);
  *(this + 24) = &unk_1F50D86E0;
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  *this = &unk_1F50D8EC8;
  *(this + 18) = &unk_1F50D86E0;
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void mediaplatform::DatabaseTable<long long,std::string>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8EC8;
  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8EC8;
  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  *a1 = &unk_1F50D8EC8;
  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

void mlcore::MediaTable<long long,std::string>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D8478;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 240);
  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *a1 = &unk_1F50D8EC8;
  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8478;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 240);
  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *a1 = &unk_1F50D8EC8;
  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

void mediaplatform::DatabaseColumnBase::~DatabaseColumnBase(void **this)
{
  *this = &unk_1F50D86E0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D86E0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseColumn<long long>::~DatabaseColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumn<long long>::~DatabaseColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::MediaColumn<std::string>::~MediaColumn(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaColumn<long long>::~MediaColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::MediaColumn<long long>::~MediaColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::BaseLocationTable::baseLocationIDColumn(mlcore::BaseLocationTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 223) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 25), *(this + 26));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 200);
    *(a2 + 24) = *(this + 27);
  }

  *(a2 + 32) = *(this + 56);
  *(a2 + 36) = *(this + 228);
  *(a2 + 44) = *(this + 59);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::BaseLocationTable::pathColumn(mlcore::BaseLocationTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 271) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 31), *(this + 32));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 248);
    *(a2 + 24) = *(this + 33);
  }

  *(a2 + 32) = *(this + 68);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 276);
  if (*(this + 303) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 35), *(this + 36));
  }

  else
  {
    *(a2 + 40) = *(this + 280);
    *(a2 + 56) = *(this + 37);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D57642FC(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

mlcore::ChapterTable *mlcore::ChapterTable::ChapterTable(mlcore::ChapterTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "chapter");
  std::string::basic_string[abi:ne200100]<0>(&v13, "item_pid");
  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  v16 = 1;
  v17 = 0;
  v18 = 0;
  v14 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "chapter_data");
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
  mlcore::MediaTable<long long,mediaplatform::Data>::MediaTable(this, &v19, &v14, &v4);
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

  if (v20 < 0)
  {
    operator delete(v19);
  }

  *this = &unk_1F50D77C0;
  return this;
}

void sub_1D5764508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v32 - 88) = v31;
  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v32 - 17) < 0)
  {
    operator delete(*(v32 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::MediaTable<long long,mediaplatform::Data>::MediaTable(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v20 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __p = *(a3 + 8);
  }

  v8 = *(a3 + 36);
  v22 = *(a3 + 32);
  v20 = &unk_1F50D8958;
  v23 = v8;
  v24 = *(a3 + 44);
  v13 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v14 = *(a4 + 8);
  }

  v15 = *(a4 + 32);
  v13 = &unk_1F50D89D8;
  v16 = *(a4 + 36);
  mediaplatform::Data::Data(&v17, *(a4 + 64), *(a4 + 48), 1);
  mediaplatform::DatabaseTableBase::DatabaseTableBase(a1, a2);
  *a1 = &unk_1F50D8F00;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v32 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = __p;
  }

  v34 = v22;
  v32 = &unk_1F50D8958;
  v35 = v23;
  v36 = v24;
  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v14;
  }

  v27 = v15;
  v25 = &unk_1F50D89D8;
  v28 = v16;
  mediaplatform::Data::Data(&v29, __src, __n, 1);
  v37 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v26;
  }

  v39 = v27;
  v37 = &unk_1F50D89D8;
  v40 = v28;
  mediaplatform::Data::Data(v41, v31, v30, 1);
  *(a1 + 80) = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 88) = v38;
  }

  *(a1 + 112) = v39;
  *(a1 + 80) = &unk_1F50D89D8;
  *(a1 + 116) = v40;
  mediaplatform::Data::Data((a1 + 120), v41[3], v41[1], 1);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v37);
  *(a1 + 160) = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 168), v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 168) = v33;
  }

  *(a1 + 192) = v34;
  *(a1 + 160) = &unk_1F50D8958;
  *(a1 + 196) = v35;
  *(a1 + 204) = v36;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v25);
  v32 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v13);
  v20 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F50D84B0;
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 216), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v9 = *(a3 + 8);
    *(a1 + 232) = *(a3 + 24);
    *(a1 + 216) = v9;
  }

  *(a1 + 240) = *(a3 + 32);
  *(a1 + 208) = &unk_1F50D8958;
  v10 = *(a3 + 36);
  *(a1 + 252) = *(a3 + 44);
  *(a1 + 244) = v10;
  *(a1 + 208) = &unk_1F50D7AC0;
  *(a1 + 256) = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 264), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v11 = *(a4 + 8);
    *(a1 + 280) = *(a4 + 24);
    *(a1 + 264) = v11;
  }

  *(a1 + 288) = *(a4 + 32);
  *(a1 + 256) = &unk_1F50D89D8;
  *(a1 + 292) = *(a4 + 36);
  mediaplatform::Data::Data((a1 + 296), *(a4 + 64), *(a4 + 48), 1);
  *(a1 + 256) = &unk_1F50D7B40;
  return a1;
}

void sub_1D5764B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v31 + 208) = v32;
  if (*(v31 + 239) < 0)
  {
    operator delete(*(v31 + 216));
  }

  mediaplatform::DatabaseTable<long long,mediaplatform::Data>::~DatabaseTable(v31);
  _Unwind_Resume(a1);
}

void sub_1D5764CA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D5764C44);
}

void sub_1D5764CC4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D5764C80);
}

uint64_t mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(uint64_t a1)
{
  *a1 = &unk_1F50D89D8;
  *(a1 + 40) = &unk_1F50DD860;
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      MEMORY[0x1DA6EDD20](v2, 0x1000C8077774924);
    }
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1D5764E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,mediaplatform::Data>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 160);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 80);
}

void sub_1D5764E74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = __p.__r_.__value_.__r.__words[0];

    operator delete(v3);
  }
}

void sub_1D5764F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ChapterTable::~ChapterTable(mlcore::ChapterTable *this)
{
  *this = &unk_1F50D84B0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 256);
  *(this + 26) = &unk_1F50D86E0;
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  *this = &unk_1F50D8F00;
  *(this + 20) = &unk_1F50D86E0;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D84B0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 256);
  *(this + 26) = &unk_1F50D86E0;
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  *this = &unk_1F50D8F00;
  *(this + 20) = &unk_1F50D86E0;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void mediaplatform::DatabaseTable<long long,mediaplatform::Data>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8F00;
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

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8F00;
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
  *a1 = &unk_1F50D8F00;
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

void mlcore::MediaTable<long long,mediaplatform::Data>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D84B0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 256);
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *a1 = &unk_1F50D8F00;
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

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D84B0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 256);
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *a1 = &unk_1F50D8F00;
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

void mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(uint64_t a1)
{
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaColumn<mediaplatform::Data>::~MediaColumn(uint64_t a1)
{
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::ChapterTable::persistentIDColumn(mlcore::ChapterTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 239) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 27), *(this + 28));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 216);
    *(a2 + 24) = *(this + 29);
  }

  *(a2 + 32) = *(this + 60);
  *(a2 + 36) = *(this + 244);
  *(a2 + 44) = *(this + 63);
  *a2 = &unk_1F50D7AC0;
}

mediaplatform::Data *mlcore::ChapterTable::chapterDataColumn@<X0>(mlcore::ChapterTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 287) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 33), *(this + 34));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 264);
    *(a2 + 24) = *(this + 35);
  }

  *(a2 + 32) = *(this + 72);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 292);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 40), *(this + 38), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D57656E0(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::Query::_perform()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "abstract method _perform must be implemented by subclasses");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

double mlcore::Query::_allPropertiesToFetch@<D0>(uint64_t a1@<X0>, mlcore::LibraryView **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
    if (!*a2)
    {
      goto LABEL_11;
    }

    *&v9 = v5;
    *(&v9 + 1) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_6:
    mlcore::LibraryView::_predicateByApplyingFilters(v10, *(a1 + 8), v6, &v9);
    v5 = v10[0];
    v7 = v10[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (*(&v9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
    }

    v4 = v7;
LABEL_11:
    if (v5)
    {
      goto LABEL_12;
    }

LABEL_17:
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 56) = 1065353216;
    if (!v4)
    {
      return result;
    }

    goto LABEL_13;
  }

  v6 = *a2;
  if (*a2)
  {
    v9 = *(a1 + 16);
    goto LABEL_6;
  }

  v4 = 0;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_12:
  (*(*v5 + 56))(v5);
  if (!v4)
  {
    return result;
  }

LABEL_13:

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return result;
}

void sub_1D5765874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::Query::_SQLWhereExpression(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_11;
    }

    *&v12 = v6;
    *(&v12 + 1) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_6:
    mlcore::LibraryView::_predicateByApplyingFilters(v13, *(a1 + 8), v7, &v12);
    v6 = v13[0];
    v8 = v13[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    v5 = v8;
LABEL_11:
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = *a2;
  if (*a2)
  {
    v12 = *(a1 + 16);
    goto LABEL_6;
  }

  v5 = 0;
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = *(a2 + 8);
  v10 = *a2;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 64))(v6, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v5)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1D57659C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5765C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  *(v13 - 56) = v13 - 80;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100]((v13 - 56));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v15 = *(v12 + 8);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void sub_1D5765D2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_emplace<mediaplatform::SQLSelectStatement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::Query::_SQLFromStatement(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 88))(__p, a1, &v5);
  mlcore::SQLJoinClausesForEntityClassAndProperties(__p, v9);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(&v8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  (*(*a1[1] + 96))(a1[1]);
  operator new();
}

void sub_1D5765FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v15);
  a12 = v13 - 56;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::~OrderedSet(uint64_t a1)
{
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<mediaplatform::SQLFromStatement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D28B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::Query::_SQLOrderingTerms(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1D5766274(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5766378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>,std::shared_ptr<mediaplatform::SQLExpression const>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t mediaplatform::SQLLiteralValue<int>::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = *(a1 + 8);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  MEMORY[0x1DA6EDAF0](&v20, v4);
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

void sub_1D5766828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1DA6EDCB0](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void mediaplatform::SQLLiteralValue<int>::~SQLLiteralValue(uint64_t a1)
{
  *a1 = &unk_1F50D88B8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::SQLLiteralValue<int>::~SQLLiteralValue(uint64_t a1)
{
  *a1 = &unk_1F50D88B8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__shared_ptr_emplace<mediaplatform::SQLLiteralValue<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D29D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::Query::descriptionAttributes(mlcore::Query *this@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  (*(**(this + 1) + 56))(__p);
  mediaplatform::FormatString<std::string>(&v9, "entityClass = {0}", __p);
  v8 = (this + 16);
  memset(&v10, 0, sizeof(v10));
  mediaplatform::FormatImplementation<std::shared_ptr<mlcore::Predicate>>("predicate = {0}", &v10, 0, &v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a2, &v9, &v11, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v10.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v9 + i * 8 + 24));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1D5766CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v27 = (v25 + 47);
  v28 = -48;
  v29 = v27;
  while (1)
  {
    v30 = *v29;
    v29 -= 24;
    if (v30 < 0)
    {
      operator delete(*(v27 - 23));
    }

    v27 = v29;
    v28 += 24;
    if (!v28)
    {
      if (a15 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

void mediaplatform::FormatString<std::string>(std::string *a1, std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  mediaplatform::FormatImplementation<std::string>(a2, a1, 0, &v3);
}

void sub_1D5766DEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D5766E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void mediaplatform::FormatImplementation<std::shared_ptr<mlcore::Predicate>>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t **a4)
{
  v66 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = a3;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    ++v10;
    v66 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, v10, 0);
      if (v10 != a3)
      {

        mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v9 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v66 = &v11->__r_.__value_.__s.__data_[2];
    v54 = v11->__r_.__value_.__s.__data_[2];
    if ((v54 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v55 = 0;
      v56 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v57 = v56;
        v66 = v56;
        v55 = (v54 & 0xF) + 10 * v55;
        ++v56;
        v59 = *v57;
        v58 = (v57 - 1);
        LOBYTE(v54) = v59;
      }

      while ((v59 - 58) >= 0xFFFFFFF6);
      v66 = (v58 + 2);
      if (*(v56 - 1) == 125)
      {
        mediaplatform::FormatterParameters<0ul,std::shared_ptr<mlcore::Predicate>>::formatOptionsAtIndex<std::shared_ptr<mlcore::Predicate>>(v55);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatOptions::FormatOptions(&v61, &v66);
  if (v62)
  {
    mediaplatform::FormatterParameters<1ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::shared_ptr<mlcore::Predicate>>>();
  }

  v13 = v66;
  v14 = **a4;
  if (v14)
  {
    (*(*v14 + 16))(&v67);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, (0x80000001D5B06924 & 0x7FFFFFFFFFFFFFFFLL));
    mediaplatform::FormatPointerImplementation(__p, 0, &v67);
    if (v69 < 0)
    {
      operator delete(__p[0]);
    }
  }

  size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v67.__r_.__value_.__l.__size_;
  }

  v16 = v64;
  if (v64 <= size)
  {
    v16 = size;
  }

  if (v63)
  {
    size = v16;
  }

  mediaplatform::FormatImplementation<std::shared_ptr<mlcore::Predicate>>(v13, a2, size + v10, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  v18 = v17 + v10;
  v19 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  v20 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  v21 = v67.__r_.__value_.__l.__size_;
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v67.__r_.__value_.__l.__size_;
  }

  if (v63 == 1 && (v23 = v64 - v22, v64 > v22))
  {
    if (v61)
    {
      if (v61 == 1)
      {
        if (v23 >= 2)
        {
          v28 = v23 >> 1;
          if (v23 >> 1 <= 1)
          {
            v28 = 1;
          }

          v29 = v65;
          do
          {
            *v18++ = v29;
            --v28;
          }

          while (v28);
          v19 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
          v21 = v67.__r_.__value_.__l.__size_;
          v20 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        v30 = v23 - (v23 >> 1);
        if (v20 >= 0)
        {
          v31 = v19;
        }

        else
        {
          v31 = v21;
        }

        if (v31)
        {
          if (v20 >= 0)
          {
            v32 = &v67;
          }

          else
          {
            v32 = v67.__r_.__value_.__r.__words[0];
          }

          memmove(v18, v32, v31);
        }

        v33 = v65;
        if (v30 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v30;
        }

        v35 = vdupq_n_s64(v34 - 1);
        v36 = -((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = &v18[v22 + 7];
        v38 = 15;
        do
        {
          v39 = vdupq_n_s64(v38 - 15);
          v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB360)));
          if (vuzp1_s8(vuzp1_s16(v40, *v35.i8), *v35.i8).u8[0])
          {
            *(v37 - 7) = v33;
          }

          if (vuzp1_s8(vuzp1_s16(v40, *&v35), *&v35).i8[1])
          {
            *(v37 - 6) = v33;
          }

          if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB350)))), *&v35).i8[2])
          {
            *(v37 - 5) = v33;
            *(v37 - 4) = v33;
          }

          v41 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB340)));
          if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i32[1])
          {
            *(v37 - 3) = v33;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(v41, *&v35)).i8[5])
          {
            *(v37 - 2) = v33;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB330))))).i8[6])
          {
            *(v37 - 1) = v33;
            *v37 = v33;
          }

          v42 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB320)));
          if (vuzp1_s8(vuzp1_s16(v42, *v35.i8), *v35.i8).u8[0])
          {
            v37[1] = v33;
          }

          if (vuzp1_s8(vuzp1_s16(v42, *&v35), *&v35).i8[1])
          {
            v37[2] = v33;
          }

          if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB310)))), *&v35).i8[2])
          {
            v37[3] = v33;
            v37[4] = v33;
          }

          v43 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB300)));
          if (vuzp1_s8(*&v35, vuzp1_s16(v43, *&v35)).i32[1])
          {
            v37[5] = v33;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(v43, *&v35)).i8[5])
          {
            v37[6] = v33;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1D5AFB2F0))))).i8[6])
          {
            v37[7] = v33;
            v37[8] = v33;
          }

          v38 += 16;
          v37 += 16;
        }

        while (v36 + v38 != 15);
      }

      else if (v61 == 2)
      {
        v24 = v65;
        do
        {
          *v18++ = v24;
          --v23;
        }

        while (v23);
        v25 = (v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v67.__r_.__value_.__r.__words[2]) : v67.__r_.__value_.__l.__size_;
        if (v25)
        {
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v67;
          }

          else
          {
            v26 = v67.__r_.__value_.__r.__words[0];
          }

          v27 = v18;
          goto LABEL_52;
        }
      }
    }

    else
    {
      if (v22)
      {
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v67;
        }

        else
        {
          v44 = v67.__r_.__value_.__r.__words[0];
        }

        memmove(v18, v44, v22);
      }

      v45 = v65;
      v46 = vdupq_n_s64(v23 - 1);
      v47 = &v18[v22 + 7];
      v48 = 15;
      do
      {
        v49 = vdupq_n_s64(v48 - 15);
        v50 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB360)));
        if (vuzp1_s8(vuzp1_s16(v50, *v46.i8), *v46.i8).u8[0])
        {
          *(v47 - 7) = v45;
        }

        if (vuzp1_s8(vuzp1_s16(v50, *&v46), *&v46).i8[1])
        {
          *(v47 - 6) = v45;
        }

        if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB350)))), *&v46).i8[2])
        {
          *(v47 - 5) = v45;
          *(v47 - 4) = v45;
        }

        v51 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB340)));
        if (vuzp1_s8(*&v46, vuzp1_s16(v51, *&v46)).i32[1])
        {
          *(v47 - 3) = v45;
        }

        if (vuzp1_s8(*&v46, vuzp1_s16(v51, *&v46)).i8[5])
        {
          *(v47 - 2) = v45;
        }

        if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB330))))).i8[6])
        {
          *(v47 - 1) = v45;
          *v47 = v45;
        }

        v52 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB320)));
        if (vuzp1_s8(vuzp1_s16(v52, *v46.i8), *v46.i8).u8[0])
        {
          v47[1] = v45;
        }

        if (vuzp1_s8(vuzp1_s16(v52, *&v46), *&v46).i8[1])
        {
          v47[2] = v45;
        }

        if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB310)))), *&v46).i8[2])
        {
          v47[3] = v45;
          v47[4] = v45;
        }

        v53 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB300)));
        if (vuzp1_s8(*&v46, vuzp1_s16(v53, *&v46)).i32[1])
        {
          v47[5] = v45;
        }

        if (vuzp1_s8(*&v46, vuzp1_s16(v53, *&v46)).i8[5])
        {
          v47[6] = v45;
        }

        if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v49, xmmword_1D5AFB2F0))))).i8[6])
        {
          v47[7] = v45;
          v47[8] = v45;
        }

        v48 += 16;
        v47 += 16;
      }

      while (v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0) != 15);
    }
  }

  else if (v22)
  {
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v67;
    }

    else
    {
      v26 = v67.__r_.__value_.__r.__words[0];
    }

    v27 = v18;
    v25 = v22;
LABEL_52:
    memmove(v27, v26, v25);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (v10 != a3)
  {
    mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
  }
}

void sub_1D57676F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::FormatterParameters<0ul,std::shared_ptr<mlcore::Predicate>>::formatOptionsAtIndex<std::shared_ptr<mlcore::Predicate>>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul>::formatOptionsAtIndex<std::shared_ptr<mlcore::Predicate>>();
}

void mediaplatform::FormatterParameters<1ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::shared_ptr<mlcore::Predicate>>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatterParameters<1ul>::formatOptionsAtIndex<std::shared_ptr<mlcore::Predicate>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatImplementation<std::string>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t *a4)
{
  v28 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = a3;
    for (i = a1; ; i = (i + 1))
    {
      if (v6 == 123)
      {
        v12 = i->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v28 = &i->__r_.__value_.__s.__data_[2];
            v17 = i->__r_.__value_.__s.__data_[2];
            if ((v17 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v18 = 0;
              v19 = &i->__r_.__value_.__s.__data_[3];
              do
              {
                v20 = v19;
                v28 = v19;
                v18 = (v17 & 0xF) + 10 * v18;
                ++v19;
                v22 = *v20;
                v21 = (v20 - 1);
                LOBYTE(v17) = v22;
              }

              while ((v22 - 58) >= 0xFFFFFFF6);
              v28 = (v21 + 2);
              if (*(v19 - 1) == 125)
              {
                mediaplatform::FormatterParameters<0ul,std::string>::formatOptionsAtIndex<std::string>(v18);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mediaplatform::FormatOptions::FormatOptions(v24, &v28);
          if (v24[1])
          {
            mediaplatform::FormatterParameters<1ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::string>>();
          }

          v13 = *a4;
          v29 = v13;
          v30 = v24[0];
          v31 = v25;
          v32 = v26;
          v33 = v27;
          v14 = *(v13 + 23);
          if ((v14 & 0x8000000000000000) != 0)
          {
            v14 = *(v13 + 8);
          }

          v15 = *(&v25 + 1);
          if (*(&v25 + 1) <= v14)
          {
            v15 = v14;
          }

          if (v25)
          {
            v14 = v15;
          }

          mediaplatform::FormatImplementation<std::string>(v28, a2, v14 + v10, a4);
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = a2->__r_.__value_.__r.__words[0];
          }

          mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(v24, &v16[v10], &v29);
          if (v10 != a3)
          {
            mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          }

          return;
        }

        v9 = 1;
        i = (i + 1);
      }

      ++v10;
      v28 = &i->__r_.__value_.__s.__data_[1];
      v6 = i->__r_.__value_.__s.__data_[1];
      if (!v6)
      {
        std::string::resize(a2, v10, 0);
        if (v10 != a3)
        {

          mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
        }

        return;
      }
    }
  }

  std::string::resize(a2, a3, 0);
}

void mediaplatform::FormatterParameters<0ul,std::string>::formatOptionsAtIndex<std::string>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul>::formatOptionsAtIndex<std::string>();
}

void mediaplatform::FormatterParameters<1ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::string>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

_DWORD *mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(_DWORD *result, char *__dst, uint64_t a3)
{
  v5 = result;
  v6 = *a3;
  v7 = *(*a3 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = v7;
  }

  if (*(result + 16) != 1 || (v9 = *(result + 3), v10 = v9 - v8, v9 <= v8))
  {
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v11 = *result;
  if (*result)
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        return result;
      }

      v12 = *(result + 52);
      do
      {
        *__dst++ = v12;
        --v10;
      }

      while (v10);
      v6 = *a3;
      v7 = *(*a3 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
LABEL_16:
        v13 = v6;
        v6 = *v6;
        v7 = v13[1];
        if (!v7)
        {
          return result;
        }

LABEL_17:

        return memmove(__dst, v6, v7);
      }

LABEL_14:
      if (!v7)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (v10 >= 2)
    {
      v14 = v10 >> 1;
      if (v10 >> 1 <= 1)
      {
        v14 = 1;
      }

      v15 = *(result + 52);
      do
      {
        *__dst++ = v15;
        --v14;
      }

      while (v14);
      v6 = *a3;
      LOBYTE(v7) = *(*a3 + 23);
    }

    if ((v7 & 0x80) != 0)
    {
      v27 = v6;
      v6 = *v6;
      v7 = v27[1];
    }

    else
    {
      v7 = v7;
    }

    v28 = v10 - (v10 >> 1);
    if (v7)
    {
      result = memmove(__dst, v6, v7);
    }

    v29 = v5[52];
    if (v28 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v28;
    }

    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
    v32 = vdupq_n_s64(v30 - 1);
    v33 = &__dst[v8 + 7];
    v34 = 15;
    do
    {
      v35 = vdupq_n_s64(v34 - 15);
      v36 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB360)));
      if (vuzp1_s8(vuzp1_s16(v36, *v32.i8), *v32.i8).u8[0])
      {
        *(v33 - 7) = v29;
      }

      if (vuzp1_s8(vuzp1_s16(v36, *&v32), *&v32).i8[1])
      {
        *(v33 - 6) = v29;
      }

      if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB350)))), *&v32).i8[2])
      {
        *(v33 - 5) = v29;
        *(v33 - 4) = v29;
      }

      v37 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB340)));
      if (vuzp1_s8(*&v32, vuzp1_s16(v37, *&v32)).i32[1])
      {
        *(v33 - 3) = v29;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(v37, *&v32)).i8[5])
      {
        *(v33 - 2) = v29;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB330))))).i8[6])
      {
        *(v33 - 1) = v29;
        *v33 = v29;
      }

      v38 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB320)));
      if (vuzp1_s8(vuzp1_s16(v38, *v32.i8), *v32.i8).u8[0])
      {
        v33[1] = v29;
      }

      if (vuzp1_s8(vuzp1_s16(v38, *&v32), *&v32).i8[1])
      {
        v33[2] = v29;
      }

      if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB310)))), *&v32).i8[2])
      {
        v33[3] = v29;
        v33[4] = v29;
      }

      v39 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB300)));
      if (vuzp1_s8(*&v32, vuzp1_s16(v39, *&v32)).i32[1])
      {
        v33[5] = v29;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(v39, *&v32)).i8[5])
      {
        v33[6] = v29;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1D5AFB2F0))))).i8[6])
      {
        v33[7] = v29;
        v33[8] = v29;
      }

      v34 += 16;
      v33 += 16;
      v31 -= 16;
    }

    while (v31);
  }

  else
  {
    if ((v7 & 0x80000000) != 0)
    {
      v16 = v6;
      v6 = *v6;
      v7 = v16[1];
    }

    if (v7)
    {
      result = memmove(__dst, v6, v7);
    }

    v17 = v5[52];
    v18 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    v19 = vdupq_n_s64(v10 - 1);
    v20 = &__dst[v8 + 7];
    v21 = 15;
    do
    {
      v22 = vdupq_n_s64(v21 - 15);
      v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB360)));
      if (vuzp1_s8(vuzp1_s16(v23, *v19.i8), *v19.i8).u8[0])
      {
        *(v20 - 7) = v17;
      }

      if (vuzp1_s8(vuzp1_s16(v23, *&v19), *&v19).i8[1])
      {
        *(v20 - 6) = v17;
      }

      if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB350)))), *&v19).i8[2])
      {
        *(v20 - 5) = v17;
        *(v20 - 4) = v17;
      }

      v24 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB340)));
      if (vuzp1_s8(*&v19, vuzp1_s16(v24, *&v19)).i32[1])
      {
        *(v20 - 3) = v17;
      }

      if (vuzp1_s8(*&v19, vuzp1_s16(v24, *&v19)).i8[5])
      {
        *(v20 - 2) = v17;
      }

      if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB330))))).i8[6])
      {
        *(v20 - 1) = v17;
        *v20 = v17;
      }

      v25 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB320)));
      if (vuzp1_s8(vuzp1_s16(v25, *v19.i8), *v19.i8).u8[0])
      {
        v20[1] = v17;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v19), *&v19).i8[1])
      {
        v20[2] = v17;
      }

      if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB310)))), *&v19).i8[2])
      {
        v20[3] = v17;
        v20[4] = v17;
      }

      v26 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB300)));
      if (vuzp1_s8(*&v19, vuzp1_s16(v26, *&v19)).i32[1])
      {
        v20[5] = v17;
      }

      if (vuzp1_s8(*&v19, vuzp1_s16(v26, *&v19)).i8[5])
      {
        v20[6] = v17;
      }

      if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1D5AFB2F0))))).i8[6])
      {
        v20[7] = v17;
        v20[8] = v17;
      }

      v21 += 16;
      v20 += 16;
      v18 -= 16;
    }

    while (v18);
  }

  return result;
}

void mediaplatform::FormatterParameters<1ul>::formatOptionsAtIndex<std::string>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::Query::~Query(mlcore::Query *this)
{
  *this = &unk_1F50D3CA8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3CA8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t mlcore::RangeQuery::_SQLLimitExpression@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 40))
  {
    std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<unsigned long>,std::allocator<mediaplatform::SQLLiteralValue<unsigned long>>,unsigned long &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void sub_1D576835C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t mediaplatform::SQLLiteralValue<unsigned long>::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = *(a1 + 8);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  MEMORY[0x1DA6EDB00](&v20, v4);
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

void sub_1D5768654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void mediaplatform::SQLLiteralValue<unsigned long>::~SQLLiteralValue(uint64_t a1)
{
  *a1 = &unk_1F50D8890;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::SQLLiteralValue<unsigned long>::~SQLLiteralValue(uint64_t a1)
{
  *a1 = &unk_1F50D8890;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__shared_ptr_emplace<mediaplatform::SQLLiteralValue<unsigned long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::RangeQuery::_SQLOffsetExpression@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 32))
  {
    std::allocate_shared[abi:ne200100]<mediaplatform::SQLLiteralValue<unsigned long>,std::allocator<mediaplatform::SQLLiteralValue<unsigned long>>,unsigned long &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void mlcore::RangeQuery::_SQLSelectStatement(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  mlcore::Query::_SQLSelectStatement();
}

void sub_1D5768960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::RangeQuery::~RangeQuery(mlcore::RangeQuery *this)
{
  *this = &unk_1F50D3CA8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3CA8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *mlcore::Query::Query(void *result, uint64_t a2, void *a3)
{
  *result = &unk_1F50D3CA8;
  result[1] = a2;
  v3 = a3[1];
  result[2] = *a3;
  result[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *result = &unk_1F50D3CA8;
  result[1] = a2;
  v3 = a3[1];
  result[2] = *a3;
  result[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t mlcore::Query::predicate@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void mlcore::Query::setPredicate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *mlcore::QueryResult::QueryResult(void *a1, const mlcore::MediaError *a2)
{
  *a1 = &unk_1F50D7A10;
  mlcore::MediaError::MediaError((a1 + 1), a2);
  return a1;
}

{
  *a1 = &unk_1F50D7A10;
  mlcore::MediaError::MediaError((a1 + 1), a2);
  return a1;
}

mlcore::MediaError *mlcore::MediaError::MediaError(mlcore::MediaError *this, const mlcore::MediaError *a2)
{
  *(this + 8) = *(a2 + 8);
  *this = &unk_1F50D85C8;
  *(this + 3) = &unk_1F50D85F8;
  *(this + 8) = *(a2 + 8);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v4 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v4;
  }

  mediaplatform::PlatformErrorCondition::PlatformErrorCondition((this + 64), (a2 + 64));
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v5 = *(a2 + 8);
    *(this + 18) = *(a2 + 18);
    *(this + 8) = v5;
  }

  return this;
}

void sub_1D5768C1C(_Unwind_Exception *a1)
{
  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition((v1 + 64));
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void mlcore::QueryResult::~QueryResult(std::exception *this)
{
  this->__vftable = &unk_1F50D7A10;
  v2 = this + 1;
  this[1].__vftable = &unk_1F50D85C8;
  this[4].__vftable = &unk_1F50D85F8;
  if (SHIBYTE(this[19].__vftable) < 0)
  {
    operator delete(this[17].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(this + 9);
  if (SHIBYTE(this[8].__vftable) < 0)
  {
    operator delete(this[6].__vftable);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x1DA6EDD40);
}

{
  this->__vftable = &unk_1F50D7A10;
  v2 = this + 1;
  this[1].__vftable = &unk_1F50D85C8;
  this[4].__vftable = &unk_1F50D85F8;
  if (SHIBYTE(this[19].__vftable) < 0)
  {
    operator delete(this[17].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(this + 9);
  if (SHIBYTE(this[8].__vftable) < 0)
  {
    operator delete(this[6].__vftable);
  }

  std::exception::~exception(v2);
}

{
  this->__vftable = &unk_1F50D7A10;
  v2 = this + 1;
  this[1].__vftable = &unk_1F50D85C8;
  this[4].__vftable = &unk_1F50D85F8;
  if (SHIBYTE(this[19].__vftable) < 0)
  {
    operator delete(this[17].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(this + 9);
  if (SHIBYTE(this[8].__vftable) < 0)
  {
    operator delete(this[6].__vftable);
  }

  std::exception::~exception(v2);
}

void mlcore::MediaError::~MediaError(std::exception *this)
{
  this->__vftable = &unk_1F50D85C8;
  this[3].__vftable = &unk_1F50D85F8;
  if (SHIBYTE(this[18].__vftable) < 0)
  {
    operator delete(this[16].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(this + 8);
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F50D85C8;
  this[3].__vftable = &unk_1F50D85F8;
  if (SHIBYTE(this[18].__vftable) < 0)
  {
    operator delete(this[16].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(this + 8);
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  this->__vftable = &unk_1F50D85C8;
  this[3].__vftable = &unk_1F50D85F8;
  if (SHIBYTE(this[18].__vftable) < 0)
  {
    operator delete(this[16].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(this + 8);
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t mlcore::RangeQuery::RangeQuery(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F50D3CA8;
  *(a1 + 8) = a2;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F50D7F20;
  *(a1 + 32) = *a4;
  return a1;
}

__n128 mlcore::RangeQuery::setRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[2] = *a2;
  return result;
}

void mlcore::AggregateFunctionQuery::_perform(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  v4 = *(*a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v5 = *(v2 + 48);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(&v12);
  v10 = v12;
  v12 = 0uLL;
  mlcore::SQLRenderer::SQLRenderer(v11);
}

void sub_1D576923C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v27);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  mlcore::SQLRenderer::~SQLRenderer(&a22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    if (!v22)
    {
LABEL_4:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_4;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  goto LABEL_4;
}

void std::vector<std::shared_ptr<mediaplatform::DatabaseParameterBase>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseParameterBase>*,std::shared_ptr<mediaplatform::DatabaseParameterBase>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::DatabaseParameterBase>>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

sqlite3_int64 mediaplatform::DatabaseResult<long long>::valueForFirstRowAndColumn(uint64_t *a1)
{
  v2 = *a1;
  v3 = sqlite3_step(*(*a1 + 24));
  mediaplatform::DatabaseStatement::_checkSQLiteResult(v2, v3);
  *(v2 + 56) = v3;
  v4 = *(*a1 + 56);
  if (v4 != 100)
  {
    if (v4 != -1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "no column data exists for statement");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    __assert_rtn("hasColumnValueData", "DatabaseStatement.cpp", 102, "_lastStepResult != -1");
  }

  v6 = sqlite3_column_int64(*(*a1 + 24), 0);
  v7 = *a1;
  v8 = sqlite3_reset(*(v7 + 24));
  mediaplatform::DatabaseStatement::_checkSQLiteResult(v7, v8);
  *(v7 + 56) = -1;
  return v6;
}

void sub_1D5769560(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

mlcore::AggregateFunctionQueryResult *mlcore::AggregateFunctionQueryResult::AggregateFunctionQueryResult(mlcore::AggregateFunctionQueryResult *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "");
  mlcore::MediaError::MediaError(&v7, 0, v5);
  *this = &unk_1F50D7A10;
  mlcore::MediaError::MediaError((this + 8), &v7);
  v7.__vftable = &unk_1F50D85C8;
  v8 = &unk_1F50D85F8;
  if (v12 < 0)
  {
    operator delete(v11[8].__vftable);
  }

  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(v11);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  std::exception::~exception(&v7);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  *this = &unk_1F50D3E60;
  *(this + 20) = a2;
  return this;
}

void sub_1D5769708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  mlcore::MediaError::~MediaError(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlcore::AggregateFunctionQueryResult::~AggregateFunctionQueryResult(std::exception *this)
{
  mlcore::QueryResult::~QueryResult(this);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mlcore::AggregateFunctionQueryResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseStatement::bindParameters<mediaplatform::DatabaseParameterList>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<std::shared_ptr<mediaplatform::DatabaseParameterBase>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseParameterBase>*,std::shared_ptr<mediaplatform::DatabaseParameterBase>*>(&v7, a2, a3, (a3 - a2) >> 4);
  v10 = &unk_1F50DDA98;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<std::shared_ptr<mediaplatform::DatabaseParameterBase>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::DatabaseParameterBase>*,std::shared_ptr<mediaplatform::DatabaseParameterBase>*>(&v11, v7, v8, (v8 - v7) >> 4);
  v4 = v11;
  v5 = v12;
  if (v11 != v12)
  {
    v6 = 0;
    do
    {
      (*(**v4 + 48))(*v4, a1, v6);
      v6 = (v6 + 1);
      v4 += 2;
    }

    while (v4 != v5);
  }

  v10 = &unk_1F50DDA98;
  v14 = &v11;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v10 = &v7;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_1D57699E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::DatabaseParameterBase>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void mlcore::AggregateFunctionQuery::_allPropertiesToFetch(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>)
{
  v5 = *(a2 + 8);
  v7[0] = *a2;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  mlcore::Query::_allPropertiesToFetch(a1, v7, a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(a1 + 56))
  {
    v6 = *(a1 + 56);
    mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a3, &v6);
  }
}

int8x8_t *mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(int8x8_t *result, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[4];
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

  v8 = *(*&result[3] + 8 * v7);
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

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void mlcore::AggregateFunctionQuery::_SQLSelectStatement(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  mlcore::RangeQuery::_SQLSelectStatement(a1, v3);
}

void sub_1D576A4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  std::__shared_weak_count::~__shared_weak_count(v29);
  operator delete(v32);
  *(v30 - 112) = &a15;
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100]((v30 - 112));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1D576A790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<mediaplatform::SQLExpression const>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void std::__shared_ptr_emplace<mediaplatform::SQLFunctionExpression>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t std::__split_buffer<std::shared_ptr<mediaplatform::SQLExpression const>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void mlcore::AggregateFunctionQuery::~AggregateFunctionQuery(mlcore::AggregateFunctionQuery *this)
{
  *this = &unk_1F50D3CA8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3CA8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t mlcore::AggregateFunctionQuery::AggregateFunctionQuery(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, char a6)
{
  v10 = a5[1];
  v13[0] = *a5;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = 0uLL;
  mlcore::RangeQuery::RangeQuery(a1, a2, v13, &v12);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a1 = &unk_1F50D4160;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = a6;
  return a1;
}

void *mlcore::AggregateFunctionQueryResult::AggregateFunctionQueryResult(void *a1, const mlcore::MediaError *a2)
{
  mlcore::MediaError::MediaError(&v4, a2);
  *a1 = &unk_1F50D7A10;
  mlcore::MediaError::MediaError((a1 + 1), &v4);
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
  *a1 = &unk_1F50D3E60;
  return a1;
}

void sub_1D576AC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlcore::MediaError::~MediaError(va);
  _Unwind_Resume(a1);
}

void mlcore::ContainerAuthorTable::targetColumnExpression(mlcore::ContainerAuthorTable *this, const mediaplatform::DatabaseTableBase *a2, const mediaplatform::DatabaseColumnBase *a3)
{
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 1), *(a3 + 2));
  }

  else
  {
    __p = *(a3 + 8);
  }

  std::allocate_shared[abi:ne200100]<mediaplatform::SQLColumnNameExpression,std::allocator<mediaplatform::SQLColumnNameExpression>,std::string,std::string const&,0>();
}

void sub_1D576ACE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D576ADD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 224);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 80);
}

void sub_1D576AE9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::ColumnNamesApplier::operator()<int>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = __p.__r_.__value_.__r.__words[0];

    operator delete(v3);
  }
}

void sub_1D576AF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ContainerAuthorTable::~ContainerAuthorTable(mlcore::ContainerAuthorTable *this)
{
  *this = &unk_1F50DC7C8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 368);
  mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DC7C8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(this + 368);

  mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::~DatabaseTable(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(uint64_t a1)
{
  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

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

void mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::~DatabaseTable(mediaplatform::DatabaseTableBase *this)
{
  *this = &unk_1F50DC800;
  *(this + 40) = &unk_1F50D86E0;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 34) = &unk_1F50D86E0;
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  *(this + 28) = &unk_1F50D86E0;
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  *(this + 22) = &unk_1F50D86E0;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 16) = &unk_1F50D86E0;
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  *(this + 10) = &unk_1F50D86E0;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void sub_1D576B30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::~DatabaseTable(mediaplatform::DatabaseTableBase *a1)
{
  mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaTable<long long,long long,long long,int,int,int>::~MediaTable(mediaplatform::DatabaseTableBase *a1)
{
  *a1 = &unk_1F50DC7C8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(a1 + 368);
  mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50DC7C8;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>>::~__tuple_impl(a1 + 368);

  mediaplatform::DatabaseTable<long long,long long,long long,int,int,int>::~DatabaseTable(a1);
}

mlcore::ContainerAuthorTable *mlcore::ContainerAuthorTable::ContainerAuthorTable(mlcore::ContainerAuthorTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v38, "container_author");
  std::string::basic_string[abi:ne200100]<0>(&__s, "container_author_pid");
  v34 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = __s;
  }

  v36 = 1;
  v37[0] = 0;
  *&v37[4] = 0;
  v34 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "container_pid");
  v29 = &unk_1F50D86E0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v28;
  }

  v31 = 16;
  v32[0] = 1;
  *&v32[4] = 0;
  v29 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "person_pid");
  v24 = &unk_1F50D86E0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v23;
  }

  v26 = 16;
  v27[0] = 1;
  *&v27[4] = 0;
  v24 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v18, "role");
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
  LOBYTE(v22) = 1;
  HIDWORD(v22) = 0;
  v19 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "is_pending");
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
  std::string::basic_string[abi:ne200100]<0>(&v8, "position");
  v9 = &unk_1F50D86E0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  v11 = 16;
  LOBYTE(v12) = 1;
  HIDWORD(v12) = 0;
  v9 = &unk_1F50D7AE0;
  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v35;
  }

  v64 = v36;
  v62 = &unk_1F50D8958;
  v65 = *v37;
  v66 = *&v37[8];
  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = v30;
  }

  v59 = v31;
  v57 = &unk_1F50D8958;
  v60 = *v32;
  v61 = *&v32[8];
  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v53 = v25;
  }

  v54 = v26;
  v52 = &unk_1F50D8958;
  v55 = *v27;
  v56 = *&v27[8];
  v48 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = v20;
  }

  v50 = v21;
  v48 = &unk_1F50D8978;
  v51 = v22;
  v44 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v15;
  }

  v46 = v16;
  v44 = &unk_1F50D8978;
  v47 = v17;
  v40 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = __p;
  }

  v42 = v11;
  v40 = &unk_1F50D8978;
  v43 = v12;
  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v39) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v38[0], v38[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v38;
    *(this + 3) = v39;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50DC800;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v63;
  }

  v91 = v64;
  v89 = &unk_1F50D8958;
  v92 = v65;
  v93 = v66;
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v58;
  }

  v86 = v59;
  v84 = &unk_1F50D8958;
  v87 = v60;
  v88 = v61;
  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v80 = v53;
  }

  v81 = v54;
  v79 = &unk_1F50D8958;
  v82 = v55;
  v83 = v56;
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = v49;
  }

  v77 = v50;
  v75 = &unk_1F50D8978;
  v78 = v51;
  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v72 = v45;
  }

  v73 = v46;
  v71 = &unk_1F50D8978;
  v74 = v47;
  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v68 = v41;
  }

  v69 = v42;
  v67 = &unk_1F50D8978;
  v70 = v43;
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v85;
  }

  v113 = v86;
  v111 = &unk_1F50D8958;
  v114 = v87;
  v115 = v88;
  v106 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v80;
  }

  v108 = v81;
  v106 = &unk_1F50D8958;
  v109 = v82;
  v110 = v83;
  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v103 = v76;
  }

  v104 = v77;
  v102 = &unk_1F50D8978;
  v105 = v78;
  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v72;
  }

  v100 = v73;
  v98 = &unk_1F50D8978;
  v101 = v74;
  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v68;
  }

  v96 = v69;
  v94 = &unk_1F50D8978;
  v97 = v70;
  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v107;
  }

  v130 = v108;
  v128 = &unk_1F50D8958;
  v131 = v109;
  v132 = v110;
  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v103;
  }

  v126 = v104;
  v124 = &unk_1F50D8978;
  v127 = v105;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v99;
  }

  v122 = v100;
  v120 = &unk_1F50D8978;
  v123 = v101;
  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v117 = v95;
  }

  v118 = v96;
  v116 = &unk_1F50D8978;
  v119 = v97;
  v141 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v142, v125.__r_.__value_.__l.__data_, v125.__r_.__value_.__l.__size_);
  }

  else
  {
    v142 = v125;
  }

  v143 = v126;
  v141 = &unk_1F50D8978;
  v144 = v127;
  v137 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v121;
  }

  v139 = v122;
  v137 = &unk_1F50D8978;
  v140 = v123;
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v117.__r_.__value_.__l.__data_, v117.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v117;
  }

  v135 = v118;
  v133 = &unk_1F50D8978;
  v136 = v119;
  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
  }

  else
  {
    v150 = v138;
  }

  v151 = v139;
  v149 = &unk_1F50D8978;
  v152 = v140;
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v134;
  }

  v147 = v135;
  v145 = &unk_1F50D8978;
  v148 = v136;
  mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::DatabaseColumnTuple(this + 80, &v149, &v145);
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  *(this + 22) = &unk_1F50D86E0;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 184), v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 184) = v142;
  }

  *(this + 52) = v143;
  *(this + 22) = &unk_1F50D8978;
  *(this + 212) = v144;
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

  v141 = &unk_1F50D86E0;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  *(this + 28) = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 232) = v129;
  }

  *(this + 64) = v130;
  *(this + 28) = &unk_1F50D8958;
  *(this + 260) = v131;
  *(this + 67) = v132;
  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  *(this + 34) = &unk_1F50D86E0;
  v3 = (this + 280);
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v112.__r_.__value_.__l.__data_;
    *(this + 37) = *(&v112.__r_.__value_.__l + 2);
  }

  *(this + 76) = v113;
  *(this + 34) = &unk_1F50D8958;
  *(this + 308) = v114;
  *(this + 79) = v115;
  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v106 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  *(this + 40) = &unk_1F50D86E0;
  v4 = (this + 328);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v90.__r_.__value_.__l.__data_;
    *(this + 43) = *(&v90.__r_.__value_.__l + 2);
  }

  *(this + 88) = v91;
  *(this + 40) = &unk_1F50D8958;
  *(this + 356) = v92;
  *(this + 91) = v93;
  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v40 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v44 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

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

  *this = &unk_1F50DC7C8;
  *(this + 46) = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 376), v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 376) = v35;
  }

  *(this + 100) = v36;
  *(this + 404) = *v37;
  *(this + 103) = *&v37[8];
  *(this + 46) = &unk_1F50D7AC0;
  *(this + 52) = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 424), v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 424) = v30;
  }

  *(this + 112) = v31;
  *(this + 452) = *v32;
  *(this + 115) = *&v32[8];
  *(this + 52) = &unk_1F50D7AC0;
  *(this + 58) = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 472), v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 472) = v25;
  }

  *(this + 124) = v26;
  *(this + 500) = *v27;
  *(this + 127) = *&v27[8];
  *(this + 58) = &unk_1F50D7AC0;
  *(this + 64) = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 520), v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 520) = v20;
  }

  *(this + 136) = v21;
  *(this + 548) = v22;
  *(this + 64) = &unk_1F50D7AE0;
  *(this + 70) = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 568), v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 568) = v15;
  }

  *(this + 148) = v16;
  *(this + 596) = v17;
  *(this + 70) = &unk_1F50D7AE0;
  *(this + 76) = &unk_1F50D86E0;
  v5 = (this + 616);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v6 = 0;
    *&v5->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(this + 79) = *(&__p.__r_.__value_.__l + 2);
  }

  *(this + 160) = v11;
  *(this + 644) = v12;
  *(this + 76) = &unk_1F50D7AE0;
  v9 = &unk_1F50D86E0;
  if (v6)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
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

  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v24 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v29 = &unk_1F50D86E0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v34 = &unk_1F50D86E0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  *this = &unk_1F50D4680;
  return this;
}