const void **std::deque<char32_t>::__add_front_capacity(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 7) - 1;
  }

  if ((v6 & 0x3FF) != 0)
  {
    v8 = (v6 >> 10) + 1;
  }

  else
  {
    v8 = v6 >> 10;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 10)
  {
    v11 = v10 >> 10;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 10)
  {
    for (result[4] = &v9[1024 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = std::__split_buffer<int *>::emplace_front<int *&>(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[1024 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = std::__split_buffer<int *>::emplace_front<int *&>(v2, v17);
    }
  }

  return result;
}

void sub_1B53B36EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
    }

    else
    {
      result += v4 >> 10;
    }
  }

  return result;
}

void *std::deque<char32_t>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *>(v2, v16);
    }
  }

  return result;
}

void sub_1B53B3A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator-[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = ((*(a1 + 8) - *result) >> 2) - a2;
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
    }

    else
    {
      result += v4 >> 10;
    }
  }

  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 2 >= v11 >> 2 ? v11 >> 2 : (a3 - v9) >> 2;
      if (v12)
      {
        __src = memmove(__dst, v9, 4 * v12);
      }

      v9 += 4 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 4 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 2 >= v12 >> 2)
      {
        v13 = v12 >> 2;
      }

      else
      {
        v13 = (v11 - a1) >> 2;
      }

      v11 -= 4 * v13;
      a4 -= 4 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 4 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

uint64_t std::basic_string<char32_t>::__insert_with_size<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>(std::basic_string<char32_t> *a1, uint64_t a2, void *a3, std::basic_string<char32_t>::value_type *a4, uint64_t a5, std::basic_string<char32_t>::value_type *a6, std::basic_string<char32_t>::size_type a7)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = a1->__r_.__value_.__r.__words[0];
    v9 = a2 - a1->__r_.__value_.__r.__words[0];
    if (!a7)
    {
      return v10 + v9;
    }
  }

  else
  {
    v9 = a2 - a1;
    if (!a7)
    {
      v10 = a1;
      return v10 + v9;
    }
  }

  v11 = v9 >> 2;
  std::basic_string<char32_t>::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>(&__p, a3, a4, a5, a6);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = std::basic_string<char32_t>::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char32_t const*>,std::__wrap_iter<char32_t const*>>(a1, a7, v11, p_p, p_p + 4 * size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1B53B3F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_string<char32_t>::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char32_t const*>,std::__wrap_iter<char32_t const*>>(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __n_add, std::basic_string<char32_t>::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 4;
    v12 = this;
    if (4 - size >= __n_add)
    {
LABEL_7:
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + 4 * __n_copy + 4 * __n_add, v12 + 4 * __n_copy, 4 * (size - __n_copy));
      }

      goto LABEL_10;
    }
  }

  std::basic_string<char32_t>::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v13 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v13;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v13 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v13] = 0;
  if (a5 != a4)
  {
    memmove(v12 + 4 * __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + 4 * __n_copy;
}

void std::basic_string<char32_t>::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>(std::basic_string<char32_t> *this, void *a2, std::basic_string<char32_t>::value_type *a3, uint64_t a4, std::basic_string<char32_t>::value_type *a5)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::basic_string<char32_t>::push_back(this, *v6++);
      if ((v6 - *a2) == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }
}

void sub_1B53B40C4(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *quasar::rescoring::operator<<(void *a1, unsigned __int8 *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Feature(", 8);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "type=", 5);
  v6 = *a2;
  if (v6 <= 0x15)
  {
    v7 = quasar::rescoring::EnumNamesFeatureType(void)::names[v6];
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "index=", 6);
  v12 = MEMORY[0x1B8C84C00](v11, *(a2 + 1));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
  return a1;
}

void *quasar::rescoring::operator<<(void *a1, int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "TransformedFeature(", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "feature=[", 9);
  v5 = (a2 + *(a2 - *a2 + 4));
  v6 = (v5 + *v5);
  v7 = *v6;
  if (v7)
  {
    v8 = 8 * v7;
    v9 = (v6 + 1);
    do
    {
      v10 = quasar::rescoring::operator<<(a1, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
      v9 += 8;
      v8 -= 8;
    }

    while (v8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "], ", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "transformation=[", 16);
  v12 = (a2 + *(a2 - *a2 + 6));
  v13 = (v12 + *v12);
  v14 = *v13;
  if (v14)
  {
    v15 = (v13 + 1);
    do
    {
      v16 = *v15;
      v17 = "";
      if (v16 <= 0x11)
      {
        v17 = quasar::rescoring::EnumNamesFeatureTransformation(void)::names[v16];
      }

      v18 = strlen(v17);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v17, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", ", 2);
      ++v15;
      --v14;
    }

    while (v14);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "], ", 3);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "index=", 6);
  v22 = (a2 - *a2);
  if (*v22 >= 9u && (v23 = v22[4]) != 0)
  {
    v24 = *(a2 + v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x1B8C84C00](v21, v24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ")", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "FeatureWeight(", 14);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "weight=", 7);
  v6 = (a2 - *a2);
  v7.n128_u64[0] = 0;
  if (*v6 >= 7u)
  {
    v8 = v6[3];
    if (v8)
    {
      v7.n128_u64[0] = *(a2 + v8);
    }
  }

  v9 = MEMORY[0x1B8C84BE0](v5, v7);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "feature=[", 9);
  v11 = *(a2 - *a2 + 4);
  v12 = *(a2 + v11);
  v13 = *(a2 + v11 + v12);
  if (v13)
  {
    v14 = 4 * v13;
    v15 = a2 + v12 + v11 + 4;
    v16 = v15;
    do
    {
      v17 = *v16++;
      v18 = quasar::rescoring::operator<<(a1, (v15 + v17));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
      v15 = v16;
      v14 -= 4;
    }

    while (v14);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "])", 2);
  return a1;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorOfStructs<quasar::rescoring::Feature>(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = 8 * a3;
  flatbuffers_2_0_6::FlatBufferBuilder::StartVector(a1, 2 * (a3 & 0x1FFFFFFFFFFFFFFFLL), 4uLL);
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7 - *(a1 + 64) < v6)
    {
      flatbuffers_2_0_6::vector_downward::reallocate(a1, v6);
      v7 = *(a1 + 56);
    }

    *(a1 + 56) = v7 - v6;
    *(a1 + 40) += v6;
    memcpy((v7 - v6), a2, v6);
  }

  *(a1 + 78) = 0;

  return flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

void *quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::~unique_string_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v2, v3);
  }

  return a1;
}

void quasar::rescoring::NullOpAdapterModel()
{
  v18 = 0;
  v19 = xmmword_1B5AEA6A0;
  v20 = 0;
  v21 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 256;
  v26 = 0;
  v16 = 21;
  v17 = 0;
  v0 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorOfStructs<quasar::rescoring::Feature>(&v17, &v16, 1);
  BYTE14(v23) = 1;
  v1 = v21;
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v17, 10, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(&v17, 8, 0, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v17, 6, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v17, 4, v0);
  v14 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v17, v1);
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*>(&__p, &v14, &v15, 1uLL);
  if (v12 == __p)
  {
    v2 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>> const&)::t;
  }

  else
  {
    v2 = __p;
  }

  v3 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(&v17, v2, (v12 - __p) >> 2);
  BYTE14(v23) = 1;
  v4 = v21;
  if (v25 == 1)
  {
    v5 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(&v17, 0.0);
    flatbuffers_2_0_6::FlatBufferBuilder::TrackField(&v17, 8, v5);
  }

  v6 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(&v17, 1.0);
  flatbuffers_2_0_6::FlatBufferBuilder::TrackField(&v17, 6, v6);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v17, 4, v3);
  v15 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v17, v4);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*>(&v27, &v15, &v16, 1uLL);
  if (v28 == v27)
  {
    v7 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>> const&)::t;
  }

  else
  {
    v7 = v27;
  }

  v8 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(&v17, v7, (v28 - v27) >> 2);
  BYTE14(v23) = 1;
  v9 = v21;
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v17, 6, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v17, 4, v8);
  v10 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v17, v9);
  flatbuffers_2_0_6::FlatBufferBuilder::Finish(&v17, v10, 0, 0);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::fromBuilder();
}

void sub_1B53B49B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = *(v19 - 80);
  *(v19 - 88) = &unk_1F2D0F210;
  *(v19 - 80) = 0;
  if (v21)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v18 + 8, v21);
  }

  MEMORY[0x1B8C85350](v17, 0x10E1C40DC75050CLL);
  v22 = a11;
  a11 = 0;
  if (v22)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](&a11, v22);
  }

  flatbuffers_2_0_6::FlatBufferBuilder::~FlatBufferBuilder(&a17);
  _Unwind_Resume(a1);
}

void quasar::rescoring::LoadLinearAdapterModelFromPath(uint64_t a1, kaldi::quasar::Vocab *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v3 = MEMORY[0x1E69E5528] + 64;
  v28 = MEMORY[0x1E69E5528] + 64;
  v4 = *(MEMORY[0x1E69E54C8] + 16);
  v26[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v26 + *(v26[0] - 24)) = v4;
  v26[1] = 0;
  v5 = (v26 + *(v26[0] - 24));
  std::ios_base::init(v5, v27);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v26[0] = v6;
  v28 = v3;
  MEMORY[0x1B8C849F0](v27);
  kaldi::quasar::Vocab::OOvWord(a2, __p);
  std::ifstream::open();
  if (SBYTE7(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (!*&v27[*(v26[0] - 24) + 16])
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
    std::ostream::operator<<();
    std::stringbuf::str();
    quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::fromString();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to load adapter model at ", 32);
  v8 = quasar::filesystem::operator<<(v7, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ".", 1);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B53B4F8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *quasar::rescoring::AdapterModelMultiplexer::AdapterModelMultiplexer(void *result, uint64_t *a2, void *a3)
{
  *result = *a3;
  v3 = a3 + 1;
  v4 = a3[1];
  result[1] = v4;
  v5 = result + 1;
  v6 = a3[2];
  result[2] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *a3 = v3;
    *v3 = 0;
    a3[2] = 0;
  }

  else
  {
    *result = v5;
  }

  v7 = *a2;
  *a2 = 0;
  result[3] = v7;
  return result;
}

uint64_t quasar::rescoring::AdapterModelMultiplexer::getModel(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return *(a1 + 24);
  }

  v3 = (a2 - *a2);
  if (*v3 < 5u)
  {
    return *(a1 + 24);
  }

  v4 = v3[2];
  if (!v4)
  {
    return *(a1 + 24);
  }

  v5 = (a2 + v4 + *(a2 + v4));
  v6 = *v5;
  v10[0] = v5 + 1;
  v10[1] = v6;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(a1, v10);
  if (a1 + 8 == v7)
  {
    v8 = a1 + 24;
  }

  else
  {
    v8 = v7 + 56;
  }

  return *v8;
}

_BYTE *flatbuffers_2_0_6::FlatBufferBuilder::AddElement<double>(_BYTE *this, uint64_t a2, double a3, double a4)
{
  v5 = this;
  if (a3 != a4 || this[88] == 1)
  {
    v6 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(this, a3);

    return flatbuffers_2_0_6::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return this;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(flatbuffers_2_0_6::vector_downward *this, double a2)
{
  if (*(this + 10) <= 7uLL)
  {
    *(this + 10) = 8;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, -*(this + 10) & 7);
  v5 = a2;
  flatbuffers_2_0_6::vector_downward::push_small<double>(this, &v5);
  return *(this + 10);
}

double flatbuffers_2_0_6::vector_downward::push_small<double>(flatbuffers_2_0_6::vector_downward *this, double *a2)
{
  v4 = *(this + 7);
  if ((v4 - *(this + 8)) <= 7)
  {
    flatbuffers_2_0_6::vector_downward::reallocate(this, 8uLL);
    v4 = *(this + 7);
  }

  result = *a2;
  *(v4 - 8) = *a2;
  *(this + 7) = v4 - 8;
  *(this + 10) += 8;
  return result;
}

void *quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::~generic_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v2, v3);
  }

  return a1;
}

void quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::~generic_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v3 = a1[1];
  v1 = a1 + 1;
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v1, v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t *a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = *a3;
      v8 = *(*a3[1] + 8 * v6);
      v9 = a3[2];
      v22[0] = *a3;
      v22[1] = v8;
      v22[2] = v9;
      v10 = *(v8 + 1) - *v8;
      if (v10)
      {
        v11 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(v7, v10 >> 3, v22);
      }

      else
      {
        v11 = 0;
      }

      v13 = v8[3];
      v12 = v8[4];
      *(v7 + 78) = 1;
      v14 = *(v7 + 40);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<double>(v7, 8, v12, 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<double>(v7, 6, v13, 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v7, 4, v11);
      v15 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v7, v14);
      v16 = __p;
      *(__p + v6++) = v15;
    }

    while (a2 != v6);
  }

  else
  {
    v16 = __p;
  }

  if (v21 == v16)
  {
    v17 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>> const&)::t;
  }

  else
  {
    v17 = v16;
  }

  v18 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v17, (v21 - v16) >> 2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_1B53B559C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#2},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t *a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      TransformedFeature = quasar::rescoring::CreateTransformedFeature(*a3, *(*(a3[1] + 24) + 8 * v6), a3[2]);
      v8 = __p;
      *(__p + v6++) = TransformedFeature;
    }

    while (a2 != v6);
  }

  else
  {
    v8 = __p;
  }

  if (v13 == v8)
  {
    v9 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>> const&)::t;
  }

  else
  {
    v9 = v8;
  }

  v10 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v9, (v13 - v8) >> 2);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1B53B566C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B53B56E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      TransformedFeature = quasar::rescoring::CreateTransformedFeature(*a3, *(**(a3 + 8) + 8 * v6), *(a3 + 16));
      v8 = __p;
      *(__p + v6++) = TransformedFeature;
    }

    while (a2 != v6);
  }

  else
  {
    v8 = __p;
  }

  if (v13 == v8)
  {
    v9 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>> const&)::t;
  }

  else
  {
    v9 = v8;
  }

  v10 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v9, (v13 - v8) >> 2);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1B53B57B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B53B5830(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::rescoring::CreateTransformedFeature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7)
  {
    v8 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorOfStructs<quasar::rescoring::Feature>(a1, v5, v7 >> 3);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorScalarCast<signed char,quasar::rescoring::FeatureTransformation>(a1, v9, v10 - v9);
  }

  v12 = *(a2 + 48);
  v13 = *(a2 + 64) - *(a2 + 56);
  if (v13)
  {
    v14 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(a1, v13 >> 3, v17);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 78) = 1;
  v15 = *(a1 + 40);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(a1, 10, v14);
  flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(a1, 8, v12, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(a1, 6, v11);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(a1, 4, v8);
  return flatbuffers_2_0_6::FlatBufferBuilder::EndTable(a1, v15);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorScalarCast<signed char,quasar::rescoring::FeatureTransformation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  flatbuffers_2_0_6::FlatBufferBuilder::StartVector(a1, a3, 1uLL);
  if (a3)
  {
    v6 = a2 - 1;
    v7 = a3;
    do
    {
      v8 = *(v6 + v7);
      if (!*(a1 + 80))
      {
        *(a1 + 80) = 1;
      }

      --v7;
      v10 = v8;
      flatbuffers_2_0_6::vector_downward::push_small<signed char>(a1, &v10);
    }

    while (v7);
  }

  *(a1 + 78) = 0;
  return flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t *a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = *a3;
      v8 = **(*(a3[1] + 56) + 8 * v6);
      if (v8)
      {
        v9 = *v8;
        *(v7 + 78) = 1;
        v10 = *(v7 + 40);
        flatbuffers_2_0_6::FlatBufferBuilder::AddElement<float>(v7, 4, v9, 0.0);
        v11 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v7, v10);
      }

      else
      {
        v11 = 0;
      }

      *(v7 + 78) = 1;
      v12 = *(v7 + 40);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v7, 4, v11);
      v13 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v7, v12);
      v14 = __p;
      *(__p + v6++) = v13;
    }

    while (a2 != v6);
  }

  else
  {
    v14 = __p;
  }

  if (v19 == v14)
  {
    v15 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>> const&)::t;
  }

  else
  {
    v15 = v14;
  }

  v16 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v15, (v19 - v14) >> 2);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v16;
}

void sub_1B53B5B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B53B5B80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B5BF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B5C68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::generic_flatbuf_ptr(uint64_t result, unsigned int **a2, unsigned int a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_1F2D0F210;
  *(result + 8) = v3;
  *(result + 16) = a3;
  if (!a3)
  {
    *(result + 24) = 0;
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    goto LABEL_10;
  }

  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v4 = (v3 + *v3);
  *(result + 24) = v4;
  v5 = (v4 - *v4);
  if (*v5 > a3)
  {
    v6 = *(v5 + a3);
    if (v6)
    {
      v3 = (v4 + v6);
LABEL_10:
      v7 = v3 + *v3;
      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  *(result + 32) = v7;
  return result;
}

void quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::~unique_string_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v3 = a1[1];
  v1 = a1 + 1;
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v1, v2);
  }

  JUMPOUT(0x1B8C85350);
}

void *quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::unique_string_flatbuf_ptr(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = v4;
  quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::generic_flatbuf_ptr(a1, &v7, *(a2 + 16));
  *a1 = &unk_1F2D0F240;
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](&v7, v5);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

void sub_1B53B5E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::rescoring::LinearAdapterModel::LinearAdapterModel(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_1F2D0F2D8;
  a1[1] = v5;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F2D0F278;
  v6 = quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::unique_string_flatbuf_ptr(a1 + 3, a3);
  v7 = a1[7];
  v8 = (v7 - *v7);
  if (*v8 < 7u || (v9 = v8[3]) == 0)
  {
    quasar::rescoring::GetDefaultTransformedFeatureDescs(v6);
  }

  quasar::rescoring::ConvertTransformedFeaturesToTransformedFeatureDescs<flatbuffers_2_0_6::Vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>((v7 + v9 + *(v7 + v9)), a1 + 8);
  return a1;
}

void sub_1B53B5EF0(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  v1[3] = &unk_1F2D0F210;
  v1[4] = 0;
  if (v4)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100]((v1 + 4), v4);
  }

  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(exception_object);
}

void quasar::rescoring::ConvertTransformedFeaturesToTransformedFeatureDescs<flatbuffers_2_0_6::Vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<quasar::rescoring::TransformedFeatureDesc>::reserve(a2, *a1);
  v4 = *a1;
  if (v4)
  {
    v5 = 4 * v4;
    v6 = a1 + 1;
    do
    {
      quasar::rescoring::CreateTransformedFeatureDesc((v6 + *v6), v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = std::vector<quasar::rescoring::TransformedFeatureDesc>::__emplace_back_slow_path<quasar::rescoring::TransformedFeatureDesc>(a2, v9);
      }

      else
      {
        v7[2] = 0;
        v7[3] = 0;
        *v7 = 0;
        v7[1] = 0;
        *v7 = *v9;
        v7[2] = v10;
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        v7[4] = 0;
        v7[5] = 0;
        *(v7 + 3) = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v7[5] = v12;
        v7[6] = 0;
        v12 = 0;
        v7[7] = 0;
        v7[8] = 0;
        *(v7 + 3) = v13;
        v7[8] = v14;
        v13 = 0uLL;
        v14 = 0;
        v8 = (v7 + 9);
      }

      a2[1] = v8;
      v15 = &v13;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v15);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v9[0])
      {
        v9[1] = v9[0];
        operator delete(v9[0]);
      }

      ++v6;
      v5 -= 4;
    }

    while (v5);
  }
}

void quasar::rescoring::LinearAdapterModel::~LinearAdapterModel(quasar::rescoring::LinearAdapterModel *this)
{
  *this = &unk_1F2D0F278;
  v4 = (this + 64);
  std::vector<quasar::rescoring::TransformedFeatureDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  *(this + 3) = &unk_1F2D0F210;
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](this + 32, v2);
  }

  *this = &unk_1F2D0F2D8;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F2D0F278;
  v4 = (this + 64);
  std::vector<quasar::rescoring::TransformedFeatureDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  *(this + 3) = &unk_1F2D0F210;
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](this + 32, v2);
  }

  *this = &unk_1F2D0F2D8;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1B8C85350](this, 0x10E1C40DC75050CLL);
}

float quasar::rescoring::LinearAdapterModel::scoreHypothesis(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (quasar::gLogLevel >= 6)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Scoring hypothesis ", 19);
    v9 = MEMORY[0x1B8C84C30](v8, a4);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
    v11 = (a2 + *(a2 - *a2 + 4));
    v12 = v11 + *v11;
    v13 = strlen(v12 + 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, (v12 + 4), v13);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v50);
  }

  v14 = *(a1 + 56);
  v15 = *(v14 - *v14 + 4);
  v16 = *(v14 + v15);
  v17 = (v14 + v15 + v16);
  v18 = *v17;
  if (v18)
  {
    v19 = 0;
    v20 = 4 * v18;
    v21 = v14 + v15 + v16;
    v22 = 0.0;
    while (1)
    {
      v23 = v17[v19 / 4 + 1];
      v24 = (&v17[v19 / 4] + v23);
      v25 = v23 - v24[1];
      v26 = &v17[v19 / 4] + v25;
      if (*(v26 + 2) >= 7u)
      {
        v27 = *(v26 + 5);
        if (v27)
        {
          if (*(&v17[v19 / 4 + 1] + v23 + v27) != 0.0)
          {
            break;
          }
        }
      }

LABEL_24:
      v19 += 4;
      if (v20 == v19)
      {
        goto LABEL_27;
      }
    }

    v28 = *(&v17[v19 / 4 + 2] + v25);
    if (v28)
    {
      v29 = &v17[v19 / 4 + 1] + v23 + v28 + *(&v17[v19 / 4 + 1] + v23 + v28);
    }

    else
    {
      v29 = 0;
    }

    v30 = (*(**(a1 + 8) + 16))(*(a1 + 8), a2, a3, a4, v29);
    v31 = v30;
    v32 = v23 - v24[1];
    v33 = &v21[v19 + v32];
    v34 = *(v33 + 2);
    if (v34 < 9)
    {
      v36 = (v30 + 0.0);
      v37 = 0.0;
      if (v34 < 7)
      {
LABEL_21:
        v40 = v36 * v37;
        if (quasar::gLogLevel >= 6)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Hypothesis ", 11);
          v42 = MEMORY[0x1B8C84C30](v41, a4);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " ", 1);
          v44 = quasar::rescoring::operator<<(v43, v24 + 1);
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "; ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "featureValue=", 13);
          v46 = std::ostream::operator<<();
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " ", 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "shiftedAndWeightedFeatureValue=", 31);
          std::ostream::operator<<();
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v50);
        }

        v22 = v22 + v40;
        goto LABEL_24;
      }
    }

    else
    {
      if (*(v33 + 6))
      {
        v35 = *&v21[v19 + 4 + v23 + *(v33 + 6)];
      }

      else
      {
        v35 = 0.0;
      }

      v38 = v35 + v31;
      v36 = v38;
    }

    v39 = *&v21[v19 + 10 + v32];
    if (v39)
    {
      v37 = *&v21[v19 + 4 + v23 + v39];
    }

    else
    {
      v37 = 0.0;
    }

    goto LABEL_21;
  }

  v22 = 0.0;
LABEL_27:
  if (quasar::gLogLevel > 5)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Score: ", 7);
    MEMORY[0x1B8C84BE0](v48, v22);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v50);
  }

  return v22;
}

void quasar::rescoring::LinearAdapterModel::serialize(uint64_t a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  quasar::rescoring::LinearRescoringModelDesc::UnPackTo(*(a1 + 56), &v17);
  v7 = 0;
  v8 = 0;
  v9 = xmmword_1B5AEA6A0;
  v10 = 0;
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 1;
  v15 = 256;
  v16 = 0;
  v20[0] = &v7;
  v20[1] = &v17;
  v20[2] = 0;
  if (*(&v17 + 1) == v17)
  {
    v3 = 0;
  }

  else
  {
    v3 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(&v7, (*(&v17 + 1) - v17) >> 3, v20);
  }

  if (v19 == *(&v18 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#2},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(&v7, (v19 - *(&v18 + 1)) >> 3, v20);
  }

  BYTE14(v13) = 1;
  v5 = v11;
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v7, 6, v4);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v7, 4, v3);
  v6 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v7, v5);
  flatbuffers_2_0_6::FlatBufferBuilder::Finish(&v7, v6, 0, 0);
  quasar::tennessee::Serialize(&v7, a2);
  flatbuffers_2_0_6::FlatBufferBuilder::~FlatBufferBuilder(&v7);
  v7 = &v18 + 1;
  std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = &v17;
  std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B53B677C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  quasar::rescoring::LinearRescoringModelDescT::~LinearRescoringModelDescT(va);
  _Unwind_Resume(a1);
}

void *std::vector<quasar::rescoring::TransformedFeatureDesc>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B53B6874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::rescoring::CreateTransformedFeatureDesc(int *a1@<X0>, void *a2@<X8>)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v4 = (a1 + *(a1 - *a1 + 4));
  std::vector<quasar::rescoring::FeatureType>::reserve(&v47, *(v4 + *v4));
  v40 = a2;
  v5 = *a1;
  v6 = *(a1 - v5 + 4);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + v7);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v48;
    v11 = v6 + v7 + 4;
    do
    {
      v12 = *(a1 + v11);
      if (v10 >= v49)
      {
        v13 = v47;
        v14 = (v10 - v47);
        v15 = v10 - v47 + 1;
        if (v15 < 0)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = v49 - v47;
        if (2 * (v49 - v47) > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          operator new();
        }

        v18 = v10 - v47;
        *v14 = v12;
        v10 = v14 + 1;
        memcpy(0, v13, v18);
        v47 = 0;
        v48 = v14 + 1;
        v49 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v10++ = v12;
      }

      v48 = v10;
      v11 += 8;
      v9 -= 8;
    }

    while (v9);
    v19 = -*a1;
  }

  else
  {
    v19 = -v5;
  }

  v20 = (a1 + v19);
  v21 = *v20;
  if (v20[3])
  {
    v39 = (a1 + v20[3] + *(a1 + v20[3]));
  }

  else
  {
    v39 = 0;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v21 >= 0xB)
  {
    v22 = v20[5];
    if (v20[5])
    {
      v23 = *(a1 + v22);
      v24 = (a1 + v22 + v23);
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::resize(&v44, *v24);
      v25 = *v24;
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        v28 = 4 * v25;
        v29 = a1 + v22 + v23;
        do
        {
          v30 = *&v29[v26 + 4];
          v31 = &v29[v26 + v30 - *(&v24[v26 / 4 + 1] + v30)];
          if (*(v31 + 2) >= 5u)
          {
            v32 = *(v31 + 4);
            if (*(v31 + 4))
            {
              v33 = *&v29[v26 + 4 + v30 + v32];
              v34 = *(v44 + v27);
              if (!v34)
              {
                operator new();
              }

              v35 = *&v29[v30 + 4 + v32 + v26 + v33];
              v36 = 0;
              if (*&v29[v26 + 4 + v30 + v32 + v33 - v35] >= 5u)
              {
                v37 = v30 + v32 + v33;
                if (*&v29[v26 + 8 + v37 - v35])
                {
                  v36 = *&v29[v37 + 4 + v26 + *&v29[v26 + 8 + v37 - v35]];
                }
              }

              *v34 = v36;
            }
          }

          v27 += 8;
          v26 += 4;
        }

        while (v28 != v26);
      }
    }
  }

  v38 = *v39;
  v42 = 0;
  v43 = 0;
  __p = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation const*,quasar::rescoring::FeatureTransformation const*>(&__p, (v39 + 1), v39 + v38 + 4, v38);
  *v40 = 0;
  v40[1] = 0;
  v40[2] = 0;
  std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType*,quasar::rescoring::FeatureType*>(v40, v47, v48, v48 - v47);
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation*,quasar::rescoring::FeatureTransformation*>((v40 + 3), __p, v42, v42 - __p);
  v40[6] = 0;
  v40[7] = 0;
  v40[8] = 0;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*>((v40 + 6), v44, v45, (v45 - v44) >> 3);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  __p = &v44;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_1B53B6C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  a12 = &a15;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator<quasar::PhoneticMatchAlignmentSpan>::construct[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,quasar::PhoneticMatchAlignmentSpan>(a1, a4, v7);
      v7 += 72;
      a4 = v12 + 9;
      v12 += 9;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 48);
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 72;
      std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(v5, v4 - 72);
  }
}

uint64_t std::vector<quasar::rescoring::TransformedFeatureDesc>::__emplace_back_slow_path<quasar::rescoring::TransformedFeatureDesc>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  std::allocator<quasar::PhoneticMatchAlignmentSpan>::construct[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,quasar::PhoneticMatchAlignmentSpan>(a1, (72 * v2), a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = (72 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(&v13);
  return v12;
}

void sub_1B53B70B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<quasar::rescoring::FeatureType>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<quasar::rescoring::FeatureTransformationArgumentT>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__base_destruct_at_end[abi:ne200100](a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__append(a1, a2 - v2);
  }
}

void std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v17 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v11);
    }

    v14 = 0;
    v15 = 8 * v9;
    bzero((8 * v9), 8 * a2);
    v16 = 8 * v9 + 8 * a2;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>(a1, v6, v5, 0);
    v12 = *a1;
    *a1 = 0;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::~__split_buffer(&v14);
  }
}

void sub_1B53B72EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
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
      *v6++ = 0;
      *a4++ = v7;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = *v5;
        *v5 = 0;
        if (v8)
        {
          MEMORY[0x1B8C85350](v8, 0x1000C4052888210);
        }

        ++v5;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::__destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      *(v4 + 16) = v2;
      *v2 = 0;
      if (v5)
      {
        result = MEMORY[0x1B8C85350](result, 0x1000C4052888210);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation const*,quasar::rescoring::FeatureTransformation const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B74C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::rescoring::TransformedFeatureDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::rescoring::TransformedFeatureDesc>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::rescoring::TransformedFeatureDesc>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void quasar::rescoring::LinearRescoringModelDesc::UnPackTo(int *a1, void *a2)
{
  v4 = (a1 - *a1);
  if (*v4 >= 5u)
  {
    v5 = v4[2];
    if (v5)
    {
      v6 = (a1 + v5 + *(a1 + v5));
      std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::resize(a2, *v6);
      if (*v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = v6 + 1;
        do
        {
          v10 = *(*a2 + v7);
          if (!v10)
          {
            operator new();
          }

          quasar::rescoring::FeatureWeight::UnPackTo((v9 + *v9), v10);
          ++v8;
          v7 += 8;
          ++v9;
        }

        while (v8 < *v6);
      }
    }
  }

  v11 = (a1 - *a1);
  if (*v11 >= 7u)
  {
    v12 = v11[3];
    if (v12)
    {
      v13 = (a1 + v12 + *(a1 + v12));
      std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::resize(a2 + 3, *v13);
      if (*v13)
      {
        v14 = 0;
        v15 = 0;
        v16 = v13 + 1;
        do
        {
          v17 = *(a2[3] + v14);
          if (!v17)
          {
            operator new();
          }

          quasar::rescoring::TransformedFeature::UnPackTo((v16 + *v16), v17);
          ++v15;
          v14 += 8;
          ++v16;
        }

        while (v15 < *v13);
      }
    }
  }
}

void sub_1B53B77C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100](--v3, 0);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__append(a1, v5);
  }
}

void quasar::rescoring::FeatureWeight::UnPackTo(int *a1, void *a2)
{
  v4 = (a1 - *a1);
  if (*v4 >= 5u)
  {
    v5 = v4[2];
    if (v5)
    {
      v6 = (a1 + v5 + *(a1 + v5));
      std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::resize(a2, *v6);
      if (*v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = v6 + 1;
        do
        {
          v10 = *(*a2 + v7);
          if (!v10)
          {
            operator new();
          }

          quasar::rescoring::TransformedFeature::UnPackTo((v9 + *v9), v10);
          ++v8;
          v7 += 8;
          ++v9;
        }

        while (v8 < *v6);
      }
    }
  }

  v11 = (a1 - *a1);
  v12 = *v11;
  if (v12 <= 6)
  {
    a2[3] = 0;
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (v11[3])
    {
      v14 = *(a1 + v11[3]);
    }

    a2[3] = v14;
    if (v12 >= 9)
    {
      v15 = v11[4];
      if (v15)
      {
        v13 = *(a1 + v15);
      }
    }
  }

  a2[4] = v13;
}

void sub_1B53B7A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](--v3, 0);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__append(a1, v5);
  }
}

void quasar::rescoring::TransformedFeature::UnPackTo(int *a1, uint64_t a2)
{
  v4 = (a1 - *a1);
  if (*v4 >= 5u)
  {
    v5 = v4[2];
    if (v4[2])
    {
      v6 = a1 + v5;
      v7 = *(a1 + v5);
      std::vector<std::pair<int,float>>::resize(a2, *(a1 + v5 + v7));
      if (*&v6[v7])
      {
        v8 = 0;
        do
        {
          *(*a2 + 8 * v8) = *(&a1[2 * v8 + 1] + v5 + v7);
          ++v8;
        }

        while (v8 < *&v6[v7]);
      }
    }
  }

  v9 = (a1 - *a1);
  if (*v9 >= 7u)
  {
    v10 = v9[3];
    if (v10)
    {
      v11 = (a1 + v10 + *(a1 + v10));
      v12 = *(a2 + 24);
      v13 = *v11;
      v14 = *(a2 + 32) - v12;
      if (v13 <= v14)
      {
        if (v13 < v14)
        {
          *(a2 + 32) = v12 + v13;
        }
      }

      else
      {
        std::vector<signed char>::__append((a2 + 24), v13 - v14);
        LODWORD(v13) = *v11;
      }

      if (v13)
      {
        v15 = (v11 + 1);
        v16 = *(a2 + 24);
        v13 = v13;
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v13;
        }

        while (v13);
      }
    }
  }

  v18 = (a1 - *a1);
  if (*v18 < 9u)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[4];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  *(a2 + 48) = v19;
  v20 = (a1 - *a1);
  if (*v20 >= 0xBu)
  {
    v21 = v20[5];
    if (v21)
    {
      v22 = (a1 + v21 + *(a1 + v21));
      std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::resize((a2 + 56), *v22);
      if (*v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = v22 + 1;
        do
        {
          v26 = *(*(a2 + 56) + v23);
          if (!v26)
          {
            operator new();
          }

          v27 = *v25;
          v28 = v27 - *(v25 + v27);
          if (*(v25 + v28) >= 5u)
          {
            v29 = v25 + v28;
            v30 = *(v29 + 2);
            if (*(v29 + 2))
            {
              v31 = *(v25 + v27 + v30);
              v32 = v27 + v30 + v31;
              if (!*v26)
              {
                operator new();
              }

              v33 = *(v25 + v32);
              v34 = 0;
              if (*(v25 + v32 - v33) >= 5u)
              {
                v35 = v27 + v30 + v31;
                v36 = *(v25 + v35 - v33 + 4);
                if (v36)
                {
                  v34 = *(v25 + v35 + v36);
                }
              }

              **v26 = v34;
            }
          }

          ++v24;
          v23 += 8;
          ++v25;
        }

        while (v24 < *v22);
      }
    }
  }
}

void sub_1B53B7E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](&a10, v10);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1B8C85350](v2, 0x1020C4084B17629);
  }

  return result;
}

void std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__base_destruct_at_end[abi:ne200100](a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__append(a1, a2 - v2);
  }
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      MEMORY[0x1B8C85350](v2, 0x1000C4052888210);
    }

    JUMPOUT(0x1B8C85350);
  }
}

uint64_t *std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 56);
    std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    return MEMORY[0x1B8C85350](v2, 0x1030C40F1006E01);
  }

  return result;
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void quasar::rescoring::LinearRescoringModelDescT::~LinearRescoringModelDescT(void **this)
{
  v2 = this + 3;
  std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void quasar::TranslationTokenInternal::strippedText(std::string *__str@<X0>, std::string *a2@<X8>)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v3 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = __str;
  }

  v4 = 3;
  if (size < 3)
  {
    v4 = size;
  }

  if (!size)
  {
    goto LABEL_20;
  }

  v5 = v3 + v4;
  v6 = v3;
  v7 = (v3 + v4);
  do
  {
    if (v6->__r_.__value_.__s.__data_[0] == 226)
    {
      v8 = 1u;
      while (v8 != 3)
      {
        if ((v6 + v8) == v5)
        {
          goto LABEL_17;
        }

        v9 = v6->__r_.__value_.__s.__data_[v8];
        v10 = asc_1B5BFF99D[v8++];
        if (v9 != v10)
        {
          goto LABEL_9;
        }
      }

      v7 = v6;
    }

LABEL_9:
    v6 = (v6 + 1);
  }

  while (v6 != v5);
LABEL_17:
  if (v7 != v5 && v7 == v3)
  {
    std::string::basic_string(a2, __str, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v13);
  }

  else
  {
LABEL_20:
    if (SHIBYTE(__str[3].__r_.__value_.__r.__words[2]) < 0)
    {
      data = __str[3].__r_.__value_.__l.__data_;
      v12 = __str[3].__r_.__value_.__l.__size_;

      std::string::__init_copy_ctor_external(a2, data, v12);
    }

    else
    {
      *a2 = __str[3];
    }
  }
}

uint64_t quasar::join<std::vector<float>>(uint64_t *a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  quasar::joinToStream<std::vector<float>>(&v7, a1, a2);
  std::stringbuf::str();
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
  return MEMORY[0x1B8C85200](&v11);
}

void sub_1B53B8948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v2 + 128);
  _Unwind_Resume(a1);
}

uint64_t quasar::joinToStream<std::vector<float>>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      v3 += 4;
      result = std::ostream::operator<<();
      v7 = 0;
    }

    while (v3 != v4);
  }

  return result;
}

kaldi::nnet1::RecurrentBaseComponent *kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, const kaldi::nnet1::RecurrentBaseComponent *a2, uint64_t a3)
{
  *this = &unk_1F2D16320;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 8, *(a3 + 8), *(a3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 16) - *(a3 + 8)) >> 4));
  *(this + 4) = &unk_1F2D27A18;
  *(this + 10) = *(a3 + 40);
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = *(a2 + 1);
  *(this + 6) = &unk_1F2D279F8;
  v7 = *(a3 + 56);
  *(this + 71) = *(a3 + 71);
  *(this + 56) = v7;
  *&v7 = *(a3 + 96);
  *(this + 13) = 0;
  *(this + 6) = &unk_1F2D27A38;
  *(this + 11) = &unk_1F2D27A58;
  *(this + 12) = v7;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 104, *(a3 + 104), *(a3 + 112), (*(a3 + 112) - *(a3 + 104)) >> 5);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 128, *(a3 + 128), *(a3 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 136) - *(a3 + 128)) >> 4));
  *(this + 19) = *(a3 + 152);
  return this;
}

void sub_1B53B8BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(v3);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  if (*(a1 + 208) == 1)
  {
    v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v4);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v8);
  }

  if (*(a1 + 224) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v4);

    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v9);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0F728, a2);
  *a1 = &unk_1F2D0F318;
  *(a1 + 848) = &unk_1F2D0F608;
  *(a1 + 160) = &unk_1F2D0F4A8;
  *(a1 + 168) = &unk_1F2D0F4D0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53B9B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, quasar::Bitmap *a24, quasar::Bitmap *a25, kaldi::nnet1::UpdatableComponent *a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t a30)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v30);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v33 = *(v31 + 63);
  if (v33)
  {
    *(v31 + 64) = v33;
    operator delete(v33);
  }

  v34 = *(v31 + 60);
  if (v34)
  {
    *(v31 + 61) = v34;
    operator delete(v34);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a23;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a27, 0);
  v35 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a29, 0);
  quasar::Bitmap::~Bitmap(a24);
  quasar::Bitmap::~Bitmap(a25);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F2D0F728);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a26);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  if (*(a1 + 208) == 1)
  {
    v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v4);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v8);
  }

  if (*(a1 + 224) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v4);

    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v9);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FB68, a2);
  *a1 = &unk_1F2D0F758;
  *(a1 + 848) = &unk_1F2D0FA48;
  *(a1 + 160) = &unk_1F2D0F8E8;
  *(a1 + 168) = &unk_1F2D0F910;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53BA990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, quasar::Bitmap *a24, quasar::Bitmap *a25, kaldi::nnet1::UpdatableComponent *a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t a30)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v30);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v33 = *(v31 + 63);
  if (v33)
  {
    *(v31 + 64) = v33;
    operator delete(v33);
  }

  v34 = *(v31 + 60);
  if (v34)
  {
    *(v31 + 61) = v34;
    operator delete(v34);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a23;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a27, 0);
  v35 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a29, 0);
  quasar::Bitmap::~Bitmap(a24);
  quasar::Bitmap::~Bitmap(a25);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F2D0FB68);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a26);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::LstmComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 856) = a2;
  *(a1 + 860) = a3;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  *(a1 + 904) = xmmword_1B5AE0070;
  *(a1 + 920) = 0x3BF800000;
  *(a1 + 928) = 1;
  *(a1 + 932) = 0;
  *(a1 + 934) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FFA8);
  *v4 = &unk_1F2D0FB98;
  *(v4 + 848) = &unk_1F2D0FE88;
  *(v4 + 160) = &unk_1F2D0FD28;
  *(v4 + 168) = &unk_1F2D0FD50;
  *(v4 + 176) = a3;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 184) = 0;
  *(v4 + 208) = 1;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 456) = 0;
  result = 0.0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 464) = 0x3DCCCCCD3F800000;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 504) = 0u;
  *(v4 + 513) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  if (*(a1 + 208) == 1)
  {
    v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v4);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v8);
  }

  if (*(a1 + 224) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v4);

    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v9);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::LstmComponent(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FFA8, a2);
  *a1 = &unk_1F2D0FB98;
  *(a1 + 848) = &unk_1F2D0FE88;
  *(a1 + 160) = &unk_1F2D0FD28;
  *(a1 + 168) = &unk_1F2D0FD50;
  v7 = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 176) = v7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  LOBYTE(v7) = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  v9 = *(a2 + 184);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  v10 = *(a2 + 192);
  if (v10)
  {
    kaldi::NewCuSubOrMat<float>(v10, 0);
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v11 = *(a2 + 216);
  if (v11)
  {
    kaldi::NewCuSubOrMat<float>(v11, 0);
  }

  v12 = *(a2 + 232);
  if (v12)
  {
    kaldi::NewCuSubOrMat<float>(v12, 0);
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v13))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      if (*(*(a2 + 560) + 8 * v13))
      {
        v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 608) + 8 * v13))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v13);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v13))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v13))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      ++v13;
    }

    while (v13 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53BBA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, quasar::Bitmap *a22, quasar::Bitmap *a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t a26)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v27);
  a26 = a9;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a11;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v29 = *(v26 + 63);
  if (v29)
  {
    *(v26 + 64) = v29;
    operator delete(v29);
  }

  v30 = *(v26 + 60);
  if (v30)
  {
    *(v26 + 61) = v30;
    operator delete(v30);
  }

  a26 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v31 = *(v26 + 29);
  *(v26 + 29) = 0;
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  v32 = *(v26 + 27);
  *(v26 + 27) = 0;
  if (v32)
  {
    (*(*v32 + 24))(v32);
  }

  v33 = *(v26 + 25);
  *(v26 + 25) = 0;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = *(v26 + 24);
  *(v26 + 24) = 0;
  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  v35 = *a25;
  *a25 = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  quasar::Bitmap::~Bitmap(a22);
  quasar::Bitmap::~Bitmap(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v26, off_1F2D0FFA8);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = &unk_1F2D0FD28;
  *(a1 + 168) = &unk_1F2D0FD50;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 776));
  v12 = (a1 + 752);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 728);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 704);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 680);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 656);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 632);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 608);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 584);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 560);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 536);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v5 = *(a1 + 504);
  if (v5)
  {
    *(a1 + 512) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    *(a1 + 488) = v6;
    operator delete(v6);
  }

  v12 = (a1 + 440);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 416);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 392);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 368);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 344);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 320);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 296);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 272);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v10 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  quasar::Bitmap::~Bitmap((a1 + 168));
  quasar::Bitmap::~Bitmap((a1 + 160));
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(a1, a2 + 1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v2 + 848));
  return a1;
}

void non-virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 688));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 680));
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 - 160);
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 - 168);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(void *a1)
{
  v2 = (v1 + 848);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 + *(*a1 - 24));
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 848));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 12);
  v68 = -1;
  v69 = v4;
  v66 = 0x40000000;
  v67 = -1073741824;
  v64 = -1073741824;
  v65 = 1036831949;
  v63 = 0x40000000;
  kaldi::nnet1::Component::TypeToMarker(2, &v62);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &v61);
  memset(v60, 0, sizeof(v60));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_227;
    }

    kaldi::ReadToken(a2, 0, v60);
    if ((SHIBYTE(v60[2]) & 0x80000000) == 0)
    {
      break;
    }

    v8 = v60[1];
    if (v60[1] > 14)
    {
      if (v60[1] > 20)
      {
        if (v60[1] == 21)
        {
          if (*v60[0] != 0x47746567726F463CLL || *(v60[0] + 8) != 0x5273616942657461 || *(v60[0] + 13) != 0x3E65676E61527361)
          {
            goto LABEL_226;
          }

LABEL_126:
          v21 = &v63;
LABEL_213:
          kaldi::ReadBasicType<float>(a2, 0, v21);
          goto LABEL_214;
        }

        if (v60[1] == 25)
        {
LABEL_106:
          v30 = *v60[0] == 0x7463656A6F72503CLL && *(v60[0] + 8) == 0x6E7261654C6E6F69 && *(v60[0] + 16) == 0x66656F4365746152 && *(v60[0] + 24) == 62;
          v21 = (a1 + 468);
          if (v30)
          {
            goto LABEL_213;
          }

          goto LABEL_173;
        }

        goto LABEL_154;
      }

      if (v60[1] != 15)
      {
        if (v60[1] == 20)
        {
          if (*v60[0] != 0x47746567726F463CLL || *(v60[0] + 8) != 0x4D73616942657461 || *(v60[0] + 16) != 1047421285)
          {
            goto LABEL_226;
          }

LABEL_82:
          v21 = &v64;
          goto LABEL_213;
        }

        goto LABEL_154;
      }

      v5 = v60[0];
LABEL_100:
      v25 = *v5;
      v26 = *(v5 + 7);
      v27 = v25 == 0x61526E7261654C3CLL && v26 == 0x3E66656F43657461;
      v21 = (a1 + 464);
      if (v27)
      {
        goto LABEL_213;
      }

      v8 = v60[1];
      if ((v60[2] & 0x8000000000000000) != 0 && v60[1] == 25)
      {
        goto LABEL_106;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v60[2]) <= 0xBu)
        {
          goto LABEL_139;
        }

LABEL_137:
        if (HIBYTE(v60[2]) == 12)
        {
LABEL_32:
          if (v60[0] != 0x536D6F646E61523CLL || LODWORD(v60[1]) != 1046766949)
          {
            goto LABEL_226;
          }

LABEL_37:
          v12 = &v68;
LABEL_134:
          kaldi::ReadBasicType<int>(a2, 0, v12);
          goto LABEL_214;
        }

LABEL_200:
        if (HIBYTE(v60[2]) != 18)
        {
          if (HIBYTE(v60[2]) != 19)
          {
            goto LABEL_226;
          }

          v5 = v60;
          goto LABEL_203;
        }

        if (v60[0] != 0x4374757074754F3CLL || v60[1] != 0x65756C61566C6C65 || LOWORD(v60[2]) != 15987)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }

      goto LABEL_154;
    }

    if (v60[1] != 10)
    {
      if (v60[1] == 11)
      {
        if (*v60[0] != 0x6E6152736169423CLL || *(v60[0] + 3) != 0x3E65676E61527361)
        {
LABEL_226:
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v60, "</Component>"))
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v59);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "Invalid token ", 14);
            if (v60[2] >= 0)
            {
              v54 = v60;
            }

            else
            {
              v54 = v60[0];
            }

            if (v60[2] >= 0)
            {
              v55 = HIBYTE(v60[2]);
            }

            else
            {
              v55 = v60[1];
            }

            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ". Allowed tokens: ", 18);
            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "(NumCells|BiasMean|BiasRange|ForgetGateBiasMean|ForgetGateBiasRange|ParamStddev|LearnRateCoef|ProjectionLearnRateCoef|MaxNorm|", 126);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "MaxGrad|MaxCell|NoPeep|InitTransformType|GradientNormType|RandomSeed)", 69);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v59);
          }

LABEL_227:
          kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateParams(a1, v69);
        }

        goto LABEL_132;
      }

      if (v60[1] == 13)
      {
        if (*v60[0] != 0x74536D617261503CLL || *(v60[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_226;
        }

        goto LABEL_88;
      }

LABEL_154:
      if (v8 == 9)
      {
        v40 = *v60[0] == 0x6D726F4E78614D3CLL && *(v60[0] + 8) == 62;
        v21 = (a1 + 472);
        if (v40)
        {
          goto LABEL_213;
        }

        v41 = *v60[0] == 0x6461724778614D3CLL && *(v60[0] + 8) == 62;
        v21 = (a1 + 152);
        if (v41)
        {
          goto LABEL_213;
        }
      }

      else if (v8 == 18)
      {
        v37 = *v60[0] == 0x6E6569646172473CLL && *(v60[0] + 8) == 0x7079546D726F4E74;
        if (v37 && *(v60[0] + 16) == 15973)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_173;
    }

    if (*v60[0] == 0x6C6C65436D754E3CLL && *(v60[0] + 8) == 15987)
    {
LABEL_133:
      v12 = &v69;
      goto LABEL_134;
    }

    if (*v60[0] == 0x61654D736169423CLL && *(v60[0] + 8) == 15982)
    {
      goto LABEL_98;
    }

LABEL_173:
    if (v60[1] == 9)
    {
      v45 = *v60[0] == 0x6C6C654378614D3CLL && *(v60[0] + 8) == 62;
      v21 = (a1 + 476);
      if (v45)
      {
        goto LABEL_213;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_199;
      }
    }

    if (v60[1] == 12)
    {
      if (*v60[0] == 0x536D6F646E61523CLL && *(v60[0] + 8) == 1046766949)
      {
        goto LABEL_37;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
LABEL_199:
        if (HIBYTE(v60[2]) == 8)
        {
          goto LABEL_215;
        }

        goto LABEL_200;
      }
    }

    if (v60[1] == 8)
    {
      if (*v60[0] == 0x3E706565506F4E3CLL)
      {
        goto LABEL_216;
      }

      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }
    }

    if (v60[1] != 18)
    {
      goto LABEL_192;
    }

    if (*v60[0] != 0x4374757074754F3CLL || *(v60[0] + 8) != 0x65756C61566C6C65 || *(v60[0] + 16) != 15987)
    {
      if ((v60[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }

LABEL_192:
      if (v60[1] != 19)
      {
        goto LABEL_226;
      }

      v5 = v60[0];
LABEL_203:
      v46 = *v5;
      v47 = v5[1];
      v48 = *(v5 + 11);
      if (v46 != 0x61725474696E493CLL || v47 != 0x79546D726F66736ELL || v48 != 0x3E657079546D726FLL)
      {
        goto LABEL_226;
      }

      v39 = &v62;
LABEL_212:
      kaldi::ReadToken(a2, 0, v39);
      goto LABEL_214;
    }

LABEL_225:
    *(a1 + 209) = 1;
LABEL_214:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v60[2]) <= 0xCu)
  {
    if (HIBYTE(v60[2]) > 9u)
    {
      if (HIBYTE(v60[2]) == 10)
      {
        if (v60[0] == 0x6C6C65436D754E3CLL && LOWORD(v60[1]) == 15987)
        {
          goto LABEL_133;
        }

        if (v60[0] != 0x61654D736169423CLL || LOWORD(v60[1]) != 15982)
        {
          goto LABEL_226;
        }

LABEL_98:
        v21 = &v67;
        goto LABEL_213;
      }

      if (HIBYTE(v60[2]) != 11)
      {
        goto LABEL_32;
      }

      if (v60[0] != 0x6E6152736169423CLL || *(v60 + 3) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

LABEL_132:
      v21 = &v66;
      goto LABEL_213;
    }

LABEL_139:
    if (HIBYTE(v60[2]) != 8)
    {
      if (HIBYTE(v60[2]) != 9)
      {
        goto LABEL_226;
      }

      v34 = v60[0] == 0x6D726F4E78614D3CLL && LOBYTE(v60[1]) == 62;
      v21 = (a1 + 472);
      if (!v34)
      {
        v35 = v60[0] == 0x6461724778614D3CLL && LOBYTE(v60[1]) == 62;
        v21 = (a1 + 152);
        if (!v35)
        {
          v36 = v60[0] == 0x6C6C654378614D3CLL && LOBYTE(v60[1]) == 62;
          v21 = (a1 + 476);
          if (!v36)
          {
            goto LABEL_226;
          }
        }
      }

      goto LABEL_213;
    }

LABEL_215:
    if (v60[0] != 0x3E706565506F4E3CLL)
    {
      goto LABEL_226;
    }

LABEL_216:
    *(a1 + 208) = 0;
    goto LABEL_214;
  }

  v5 = v60;
  if (HIBYTE(v60[2]) > 0x12u)
  {
    if (HIBYTE(v60[2]) == 19)
    {
      goto LABEL_203;
    }

    if (HIBYTE(v60[2]) != 20)
    {
      if (HIBYTE(v60[2]) != 21)
      {
        goto LABEL_226;
      }

      v13 = v60[0] == 0x47746567726F463CLL && v60[1] == 0x5273616942657461;
      if (!v13 || *(&v60[1] + 5) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

      goto LABEL_126;
    }

    if (v60[0] != 0x47746567726F463CLL || v60[1] != 0x4D73616942657461 || LODWORD(v60[2]) != 1047421285)
    {
      goto LABEL_226;
    }

    goto LABEL_82;
  }

  if (HIBYTE(v60[2]) == 13)
  {
    if (v60[0] != 0x74536D617261503CLL || *(v60 + 5) != 0x3E7665646474536DLL)
    {
      goto LABEL_226;
    }

LABEL_88:
    v21 = &v65;
    goto LABEL_213;
  }

  if (HIBYTE(v60[2]) != 15)
  {
    if (HIBYTE(v60[2]) != 18)
    {
      goto LABEL_226;
    }

    if (v60[0] == 0x6E6569646172473CLL && v60[1] == 0x7079546D726F4E74 && LOWORD(v60[2]) == 15973)
    {
LABEL_164:
      v39 = &v61;
      goto LABEL_212;
    }

    goto LABEL_137;
  }

  goto LABEL_100;
}

void sub_1B53BD0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  if (*(v3 - 185) < 0)
  {
    operator delete(*(v3 - 208));
  }

  if (*(v3 - 161) < 0)
  {
    operator delete(*(v3 - 184));
  }

  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateParams(uint64_t a1, uint64_t a2)
{
  *(a1 + 176) = a2;
  if (*(a1 + *(*a1 - 24) + 12) > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "# LSTM cells (", 14);
    v5 = MEMORY[0x1B8C84C00](v4, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") should not be less than output dim (", 38);
    v7 = MEMORY[0x1B8C84C00](v6, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ").");
  }

  else
  {
    if (!*(a1 + 184))
    {
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "input_weights_ thought to be un-initialized here");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

uint64_t kaldi::nnet1::RandMatrix<kaldi::CuMatrixBase<float>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, uint64_t a4, float a5)
{
  kaldi::Matrix<float>::Matrix(v15, *(a4 + 20), *(a4 + 16), 0, 0);
  v10 = 0;
LABEL_2:
  if (v10 < kaldi::MatrixBase<float>::NumRows(v15))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::MatrixBase<float>::NumCols(v15))
      {
        ++v10;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0);
          v12 = v13 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v12 = (kaldi::UniformRandomNumber::RandUniform(a1, 0) + -0.5) * (a5 + a5);
        }
      }

      else if (v10 == i)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      *(*v15 + 4 * v10 * v16 + 4 * i) = v12;
    }
  }

  kaldi::CuMatrixBase<float>::CopyFromMat(a4, v15, 111);
  return kaldi::Matrix<float>::~Matrix(v15);
}

void sub_1B53BD7C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(uint64_t a1)
{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(uint64_t a1)
{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(uint64_t a1)
{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(uint64_t a1)
{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_113:
    v34 = *(a1 + 176);
    v35 = *(a1 + *(*a1 - 24) + 12);
    if (v34 < v35)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# LSTM cells (", 14);
      v40 = MEMORY[0x1B8C84C00](v39, *(a1 + 176));
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ") should not be less than output dim (", 38);
      v42 = MEMORY[0x1B8C84C00](v41, *(a1 + *(*a1 - 24) + 12));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v42, ").");
    }

    else
    {
      *(a1 + 224) = v34 > v35;
      if (!*(a1 + 184))
      {
        operator new();
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_weights_ thougth to be un-initialized here");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    kaldi::ReadToken(a2, a3, &v45);
    if (SHIBYTE(v47) < 0)
    {
      if (v46 != 10 || (*v45 == 0x6C6C65436D754E3CLL ? (v7 = *(v45 + 4) == 15987) : (v7 = 0), !v7))
      {
        if (v46 != 15)
        {
          v12 = v46;
          if (v46 == 25)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

        v6 = v45;
LABEL_13:
        v8 = *v6;
        v9 = *(v6 + 7);
        v10 = v8 == 0x61526E7261654C3CLL && v9 == 0x3E66656F43657461;
        v11 = (a1 + 464);
        if (v10)
        {
          goto LABEL_109;
        }

        v12 = v46;
        if (v47 < 0 && v46 == 25)
        {
LABEL_33:
          v17 = *v45 == 0x7463656A6F72503CLL && v45[1] == 0x6E7261654C6E6F69 && v45[2] == 0x66656F4365746152 && *(v45 + 24) == 62;
          v11 = (a1 + 468);
          if (!v17)
          {
LABEL_116:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
            if (v47 >= 0)
            {
              v37 = &v45;
            }

            else
            {
              v37 = v45;
            }

            if (v47 >= 0)
            {
              v38 = HIBYTE(v47);
            }

            else
            {
              v38 = v46;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_109;
        }

        if (v47 < 0)
        {
LABEL_44:
          if (v12 == 9)
          {
            v18 = *v45 == 0x6D726F4E78614D3CLL && *(v45 + 8) == 62;
            v11 = (a1 + 472);
            if (v18)
            {
              goto LABEL_109;
            }

            if (v47 < 0)
            {
              v30 = *v45 == 0x6C6C654378614D3CLL && *(v45 + 8) == 62;
              v11 = (a1 + 476);
              if (!v30)
              {
                v28 = v45;
                goto LABEL_104;
              }

LABEL_109:
              kaldi::ReadBasicType<float>(a2, a3, v11);
              goto LABEL_110;
            }

            goto LABEL_50;
          }

          if (v12 == 8)
          {
            v29 = *v45;
            goto LABEL_97;
          }

          if (v12 != 18)
          {
            goto LABEL_116;
          }

          if (*v45 != 0x4374757074754F3CLL || v45[1] != 0x65756C61566C6C65 || *(v45 + 8) != 15987)
          {
            if (*v45 == 0x6E6569646172473CLL && v45[1] == 0x7079546D726F4E74 && *(v45 + 8) == 15973)
            {
              goto LABEL_73;
            }

            if (HIBYTE(v47) != 9)
            {
              goto LABEL_116;
            }

LABEL_93:
            v28 = &v45;
LABEL_104:
            v31 = *v28;
            v32 = *(v28 + 8);
            v33 = v31 == 0x6461724778614D3CLL && v32 == 62;
            v11 = (a1 + 152);
            if (!v33)
            {
              goto LABEL_116;
            }

            goto LABEL_109;
          }

LABEL_95:
          *(a1 + 209) = 1;
          goto LABEL_110;
        }

LABEL_25:
        if (HIBYTE(v47) == 9)
        {
          v14 = v45 == 0x6D726F4E78614D3CLL && v46 == 62;
          v11 = (a1 + 472);
          if (v14)
          {
            goto LABEL_109;
          }

LABEL_53:
          v19 = v45 == 0x6C6C654378614D3CLL && v46 == 62;
          v11 = (a1 + 476);
          if (v19)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_50:
        if (HIBYTE(v47) == 8)
        {
          v29 = v45;
LABEL_97:
          if (v29 != 0x3E706565506F4E3CLL)
          {
            goto LABEL_116;
          }

          *(a1 + 208) = 0;
          goto LABEL_110;
        }

        if (HIBYTE(v47) != 18)
        {
          if (HIBYTE(v47) != 9)
          {
            goto LABEL_116;
          }

          goto LABEL_53;
        }

        if (v45 != 0x4374757074754F3CLL || v46 != 0x65756C61566C6C65 || v47 != 15987)
        {
          if (v45 != 0x6E6569646172473CLL || v46 != 0x7079546D726F4E74 || v47 != 15973)
          {
            goto LABEL_116;
          }

LABEL_73:
          __p[0] = 0;
          __p[1] = 0;
          v44 = 0;
          kaldi::ReadToken(a2, a3, __p);
          *(a1 + 156) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_110;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (HIBYTE(v47) != 10)
      {
        if (HIBYTE(v47) == 15)
        {
          v6 = &v45;
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      if (v45 != 0x6C6C65436D754E3CLL || v46 != 15987)
      {
        goto LABEL_25;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, a1 + 176);
LABEL_110:
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v45);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_113;
    }
  }
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<NumCells>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 176));
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<ProjectionLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxCell>");
  result = kaldi::WriteBasicType<float>(a2, a3);
  if ((*(a1 + 208) & 1) == 0)
  {
    result = kaldi::WriteToken(a2, a3, "<NoPeep>");
  }

  if (*(a1 + 209) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<OutputCellValues>");
  }

  return result;
}

void sub_1B53BE650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrixBase<float>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3);
  if (a1[224] == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);

    kaldi::CuMatrixBase<float>::Write(v12, a2, a3, a4);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::NumParams(uint64_t a1)
{
  v2 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v3 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v2;
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v5 = v3 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) * v4;
  v6 = (v5 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v6 = (v6 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v7);
  }

  if (*(a1 + 224) == 1)
  {
    v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    return (v6 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v8);
  }

  return v6;
}

const void **kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetParams(_BYTE *a1, void **a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v6 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v5;
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) * v7;
  v24 = 0;
  v25 = 0;
  v23 = *a2;
  LODWORD(v24) = v6;
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v9);
  v24 = 0;
  v25 = 0;
  v10 = v8 + v6;
  v23 = *a2 + 4 * v6;
  LODWORD(v24) = v8;
  v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v11);
  if (a1[208] == 1)
  {
    v12 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v13 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v12;
    v24 = 0;
    v25 = 0;
    v14 = v13 + v10;
    v23 = *a2 + 4 * v10;
    LODWORD(v24) = v13;
    v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v15);
    v10 = v14;
  }

  v16 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v24 = 0;
  v25 = 0;
  v23 = *a2 + 4 * v10;
  LODWORD(v24) = v16;
  v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  result = kaldi::CuVectorBase<float>::CopyToVec<float>(v17, &v23);
  if (a1[224] == 1)
  {
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v10;
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v20;
    v24 = 0;
    v25 = 0;
    v23 = *a2 + 4 * v19;
    LODWORD(v24) = v21;
    v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    return kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v22);
  }

  return result;
}

void **kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetParams(_BYTE *a1, char **a2)
{
  (*(*a1 + 208))(a1);
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v5 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v4;
  v6 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) * v6;
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v22 = 0;
  v23 = 0;
  v21 = *a2;
  LODWORD(v22) = v5;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v8, &v21);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v22 = 0;
  v23 = 0;
  v10 = v7 + v5;
  v21 = &(*a2)[4 * v5];
  LODWORD(v22) = v7;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v9, &v21);
  if (a1[208] == 1)
  {
    v11 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v12 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v11;
    v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v22 = 0;
    v23 = 0;
    v21 = &(*a2)[4 * v10];
    LODWORD(v22) = v12;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v13, &v21);
    v10 += v12;
  }

  v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v15 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v22 = 0;
  v23 = 0;
  v21 = &(*a2)[4 * v10];
  LODWORD(v22) = v15;
  result = kaldi::CuVectorBase<float>::CopyFromVec<float>(v14, &v21);
  if (a1[224] == 1)
  {
    v17 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v10;
    v18 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v18;
    v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    v22 = 0;
    v23 = 0;
    v21 = &(*a2)[4 * v17];
    LODWORD(v22) = v19;
    return kaldi::CuMatrixBase<float>::CopyRowsFromVec(v20, &v21);
  }

  return result;
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v3 = kaldi::CuMatrixBase<float>::Sum(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v5 = v3 + kaldi::CuMatrixBase<float>::Sum(v4);
  if (*(a1 + 208) == 1)
  {
    v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v5 = v5 + kaldi::CuMatrixBase<float>::Sum(v6);
  }

  if (*(a1 + 224) == 1)
  {
    v7 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    v5 = v5 + kaldi::CuMatrixBase<float>::Sum(v7);
  }

  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v9 = kaldi::CuVectorBase<float>::Sum(v8);
  return v5 + *&v9;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2)
{
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v5 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrix<float>::CuMatrix(v20, v4, *(v5 + 16), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v20);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v6, v20, 111, a2, 1.0);
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrix<float>::Resize(v20, v7, *(v8 + 16), 1, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v20);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v9, v20, 111, a2, 1.0);
  if (*(a1 + 208) == 1)
  {
    v10 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrix<float>::Resize(v20, v10, *(v11 + 16), 1, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v20);
    v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v12, v20, 111, a2, 1.0);
  }

  v13 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  memset(&v19[1], 0, 24);
  v19[0] = &unk_1F2D3AC18;
  kaldi::CuVector<float>::Resize(v19, v13, 1);
  kaldi::CuVectorBase<float>::SetRandn(v19);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  *&v14 = a2;
  kaldi::CuVectorBase<float>::AddVec(v14, 1.0);
  if (*(a1 + 224) == 1)
  {
    v15 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrix<float>::Resize(v20, v15, *(v16 + 16), 1, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v20);
    v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v17, v20, 111, a2, 1.0);
  }

  kaldi::CuVector<float>::~CuVector(v19);
  return kaldi::CuMatrix<float>::~CuMatrix(v20);
}

void sub_1B53BF100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 336))(v9, a2, a3, 0, 0);
  v10 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a4, v10, 0);
  v11 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v12 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v11;
  v13 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v14 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16);
  v34 = 0;
  v35 = 0;
  v33 = *a4;
  LODWORD(v34) = v12;
  v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(v9, 0);
  kaldi::Matrix<float>::Matrix<float>(&v30, v15, 111);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v33, &v30);
  v16 = v14 * v13;
  kaldi::Matrix<float>::~Matrix(&v30);
  v31 = 0;
  v32 = 0;
  v17 = v16 + v12;
  v30 = *a4 + 4 * v12;
  LODWORD(v31) = v16;
  v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(v9, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v30, v18);
  if (a1[208] == 1)
  {
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v19;
    v31 = 0;
    v32 = 0;
    v21 = v20 + v17;
    v30 = *a4 + 4 * v17;
    LODWORD(v31) = v20;
    v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v30, v22);
    v17 = v21;
  }

  v23 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v31 = 0;
  v32 = 0;
  v30 = *a4 + 4 * v17;
  LODWORD(v31) = v23;
  v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(v9, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v24, &v30);
  if (a1[224] == 1)
  {
    v25 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v17;
    v26 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v27 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v26;
    v31 = 0;
    v32 = 0;
    v30 = *a4 + 4 * v25;
    LODWORD(v31) = v27;
    v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v30, v28);
  }

  return (*(*v9 + 8))(v9);
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(void *a1, int a2)
{
  v2 = (a1 + *(*a1 - 24));
  if ((v2[21] & 1) == 0)
  {
    return v2[14];
  }

  v3 = a1[63];
  v4 = a1[64] - v3;
  if (!v4)
  {
    return NAN;
  }

  v5 = v4 >> 2;
  if (v5 <= a2)
  {
    return NAN;
  }

  v6 = v5 - 1;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  return *(v3 + 4 * v6);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
  (*(*a1 + 192))(a1, &v44, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Input weights:", 16);
  v3 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<float>(v3);
  if ((v43 & 0x80u) == 0)
  {
    v4 = v42;
  }

  else
  {
    v4 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v5 = v43;
  }

  else
  {
    v5 = v42[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n Recurrent weights:", 20);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<float>(v8);
  if ((v41 & 0x80u) == 0)
  {
    v9 = v40;
  }

  else
  {
    v9 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v10 = v41;
  }

  else
  {
    v10 = v40[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n Bias:", 7);
  v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::nnet1::MomentStatistics<float>(v13);
  if ((v39 & 0x80u) == 0)
  {
    v14 = v38;
  }

  else
  {
    v14 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v15 = v39;
  }

  else
  {
    v15 = v38[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n Forget gate bias:", 19);
  v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v19 = *(a1 + 176);
  v34 = 0;
  v20 = *(v18 + 8) + 4 * v19;
  v32 = &unk_1F2CFCA48;
  v33 = v20;
  LODWORD(v34) = v19;
  v35 = *(v18 + 24);
  kaldi::nnet1::MomentStatistics<float>(&v32);
  if ((v37 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v22 = v37;
  }

  else
  {
    v22 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v21, v22);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (*(a1 + 208) == 1)
  {
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Peephole weights:", 19);
    v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v24);
    v25 = v34 >= 0 ? &v32 : v32;
    v26 = v34 >= 0 ? HIBYTE(v34) : v33;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n Projection weights:", 21);
    v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v28);
    v29 = v34 >= 0 ? &v32 : v32;
    v30 = v34 >= 0 ? HIBYTE(v34) : v33;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }
  }

  std::stringbuf::str();
  v44 = *MEMORY[0x1E69E54E8];
  *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v45 = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(v46[7].__locale_);
  }

  v45 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v48);
}

void sub_1B53BFC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v101, 0, sizeof(v101));
    v100 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v88, "\n For batch ");
        kaldi::quasar::to_string<int>(&v100);
        if ((v87 & 0x80u) == 0)
        {
          v3 = v86;
        }

        else
        {
          v3 = v86[0];
        }

        if ((v87 & 0x80u) == 0)
        {
          v4 = v87;
        }

        else
        {
          v4 = v86[1];
        }

        v5 = std::string::append(&v88, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v84, ": ");
        if ((v85 & 0x80u) == 0)
        {
          v7 = v84;
        }

        else
        {
          v7 = v84[0];
        }

        if ((v85 & 0x80u) == 0)
        {
          v8 = v85;
        }

        else
        {
          v8 = v84[1];
        }

        v9 = std::string::append(&v89, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v82, "\n  Number of cells : ");
        if ((v83 & 0x80u) == 0)
        {
          v11 = v82;
        }

        else
        {
          v11 = v82[0];
        }

        if ((v83 & 0x80u) == 0)
        {
          v12 = v83;
        }

        else
        {
          v12 = v82[1];
        }

        v13 = std::string::append(&v90, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v91.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v91.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::quasar::to_string<int>((a1 + 176));
        if ((v81 & 0x80u) == 0)
        {
          v15 = v80;
        }

        else
        {
          v15 = v80[0];
        }

        if ((v81 & 0x80u) == 0)
        {
          v16 = v81;
        }

        else
        {
          v16 = v80[1];
        }

        v17 = std::string::append(&v91, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v92.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v92.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v78, "\n  Input weights gradient: ");
        if ((v79 & 0x80u) == 0)
        {
          v19 = v78;
        }

        else
        {
          v19 = v78[0];
        }

        if ((v79 & 0x80u) == 0)
        {
          v20 = v79;
        }

        else
        {
          v20 = v78[1];
        }

        v21 = std::string::append(&v92, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v23);
        if ((v77 & 0x80u) == 0)
        {
          v24 = v76;
        }

        else
        {
          v24 = v76[0];
        }

        if ((v77 & 0x80u) == 0)
        {
          v25 = v77;
        }

        else
        {
          v25 = v76[1];
        }

        v26 = std::string::append(&v93, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v74, "\n  Recurrent weights gradient: ");
        if ((v75 & 0x80u) == 0)
        {
          v28 = v74;
        }

        else
        {
          v28 = v74[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v29 = v75;
        }

        else
        {
          v29 = v74[1];
        }

        v30 = std::string::append(&v94, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v32);
        if ((v73 & 0x80u) == 0)
        {
          v33 = v72;
        }

        else
        {
          v33 = v72[0];
        }

        if ((v73 & 0x80u) == 0)
        {
          v34 = v73;
        }

        else
        {
          v34 = v72[1];
        }

        v35 = std::string::append(&v95, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v70, "\n  Bias gradient: ");
        if ((v71 & 0x80u) == 0)
        {
          v37 = v70;
        }

        else
        {
          v37 = v70[0];
        }

        if ((v71 & 0x80u) == 0)
        {
          v38 = v71;
        }

        else
        {
          v38 = v70[1];
        }

        v39 = std::string::append(&v96, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v41);
        if ((v69 & 0x80u) == 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        if ((v69 & 0x80u) == 0)
        {
          v43 = v69;
        }

        else
        {
          v43 = __p[1];
        }

        v44 = std::string::append(&v97, v42, v43);
        v45 = *&v44->__r_.__value_.__l.__data_;
        v99 = v44->__r_.__value_.__r.__words[2];
        v98 = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (v99 >= 0)
        {
          v46 = &v98;
        }

        else
        {
          v46 = v98;
        }

        if (v99 >= 0)
        {
          v47 = HIBYTE(v99);
        }

        else
        {
          v47 = *(&v98 + 1);
        }

        std::string::append(&v101, v46, v47);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (v69 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (v73 < 0)
        {
          operator delete(v72[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (v77 < 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if (v83 < 0)
        {
          operator delete(v82[0]);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 208) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Peephole weights gradient: ");
          v48 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v48);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v96;
          }

          else
          {
            v49 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v96.__r_.__value_.__l.__size_;
          }

          v51 = std::string::append(&v97, v49, size);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v99 = v51->__r_.__value_.__r.__words[2];
          v98 = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v53 = &v98;
          }

          else
          {
            v53 = v98;
          }

          if (v99 >= 0)
          {
            v54 = HIBYTE(v99);
          }

          else
          {
            v54 = *(&v98 + 1);
          }

          std::string::append(&v101, v53, v54);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        if (*(a1 + 224) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Projection weights gradient: ");
          v55 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v55);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &v96;
          }

          else
          {
            v56 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v96.__r_.__value_.__l.__size_;
          }

          v58 = std::string::append(&v97, v56, v57);
          v59 = *&v58->__r_.__value_.__l.__data_;
          v99 = v58->__r_.__value_.__r.__words[2];
          v98 = v59;
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v60 = &v98;
          }

          else
          {
            v60 = v98;
          }

          if (v99 >= 0)
          {
            v61 = HIBYTE(v99);
          }

          else
          {
            v61 = *(&v98 + 1);
          }

          std::string::append(&v101, v60, v61);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        ++v100;
      }

      while (v100 < *(a1 + 80));
    }

    v62 = std::string::basic_string[abi:ne200100]<0>(&v98, "\n");
    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v101;
    }

    else
    {
      v63 = v101.__r_.__value_.__r.__words[0];
    }

    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v101.__r_.__value_.__l.__size_;
    }

    v65 = std::string::insert(v62, 0, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v65->__r_.__value_.__l + 2);
    *a2 = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  Gradients are uninitialized");
  }
}

void sub_1B53C0400(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v76, "\n For batch ");
      kaldi::quasar::to_string<int>(&v88);
      if ((v75 & 0x80u) == 0)
      {
        v3 = v74;
      }

      else
      {
        v3 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = v74[1];
      }

      v5 = std::string::append(&v76, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v72, ": ");
      if ((v73 & 0x80u) == 0)
      {
        v7 = v72;
      }

      else
      {
        v7 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v8 = v73;
      }

      else
      {
        v8 = v72[1];
      }

      v9 = std::string::append(&v77, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v70, "\n  Gates values: ");
      if ((v71 & 0x80u) == 0)
      {
        v11 = v70;
      }

      else
      {
        v11 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70[1];
      }

      v13 = std::string::append(&v78, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 248) + 48 * v88);
      if ((v69 & 0x80u) == 0)
      {
        v15 = v68;
      }

      else
      {
        v15 = v68[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v16 = v69;
      }

      else
      {
        v16 = v68[1];
      }

      v17 = std::string::append(&v79, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v66, "\n  Cell values: ");
      if ((v67 & 0x80u) == 0)
      {
        v19 = v66;
      }

      else
      {
        v19 = v66[0];
      }

      if ((v67 & 0x80u) == 0)
      {
        v20 = v67;
      }

      else
      {
        v20 = v66[1];
      }

      v21 = std::string::append(&v80, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 272) + 48 * v88);
      if ((v65 & 0x80u) == 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = v64[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v24 = v65;
      }

      else
      {
        v24 = v64[1];
      }

      v25 = std::string::append(&v81, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v62, "\n  Cell outputs: ");
      if ((v63 & 0x80u) == 0)
      {
        v27 = v62;
      }

      else
      {
        v27 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v28 = v63;
      }

      else
      {
        v28 = v62[1];
      }

      v29 = std::string::append(&v82, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 296) + 48 * v88);
      if ((v61 & 0x80u) == 0)
      {
        v31 = v60;
      }

      else
      {
        v31 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v32 = v61;
      }

      else
      {
        v32 = v60[1];
      }

      v33 = std::string::append(&v83, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Cell outputs gated: ");
      if ((v59 & 0x80u) == 0)
      {
        v35 = v58;
      }

      else
      {
        v35 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v36 = v59;
      }

      else
      {
        v36 = v58[1];
      }

      v37 = std::string::append(&v84, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 320) + 48 * v88);
      if ((v57 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v40 = v57;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = std::string::append(&v85, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v87 = v41->__r_.__value_.__r.__words[2];
      v86 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v87 >= 0)
      {
        v43 = &v86;
      }

      else
      {
        v43 = v86;
      }

      if (v87 >= 0)
      {
        v44 = HIBYTE(v87);
      }

      else
      {
        v44 = *(&v86 + 1);
      }

      std::string::append(&v89, v43, v44);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v85, "\n  Output values: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 344) + 48 * v88);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v85, v45, size);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v87 = v47->__r_.__value_.__r.__words[2];
        v86 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v49 = &v86;
        }

        else
        {
          v49 = v86;
        }

        if (v87 >= 0)
        {
          v50 = HIBYTE(v87);
        }

        else
        {
          v50 = *(&v86 + 1);
        }

        std::string::append(&v89, v49, v50);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      ++v88;
    }

    while (v88 < *(a1 + 80));
  }

  v51 = std::string::basic_string[abi:ne200100]<0>(&v86, "\n");
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v89;
  }

  else
  {
    v52 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v89.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(v51, 0, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_1B53C0CE4(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v64, "\n For batch ");
      kaldi::quasar::to_string<int>(&v74);
      if ((v63 & 0x80u) == 0)
      {
        v3 = v62;
      }

      else
      {
        v3 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v4 = v63;
      }

      else
      {
        v4 = v62[1];
      }

      v5 = std::string::append(&v64, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v60, ": ");
      if ((v61 & 0x80u) == 0)
      {
        v7 = v60;
      }

      else
      {
        v7 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v8 = v61;
      }

      else
      {
        v8 = v60[1];
      }

      v9 = std::string::append(&v65, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Gates diff: ");
      if ((v59 & 0x80u) == 0)
      {
        v11 = v58;
      }

      else
      {
        v11 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v12 = v59;
      }

      else
      {
        v12 = v58[1];
      }

      v13 = std::string::append(&v66, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 440) + 48 * v74);
      if ((v57 & 0x80u) == 0)
      {
        v15 = v56;
      }

      else
      {
        v15 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v16 = v57;
      }

      else
      {
        v16 = v56[1];
      }

      v17 = std::string::append(&v67, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v54, "\n  Cell diff: ");
      if ((v55 & 0x80u) == 0)
      {
        v19 = v54;
      }

      else
      {
        v19 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54[1];
      }

      v21 = std::string::append(&v68, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 416) + 48 * v74);
      if ((v53 & 0x80u) == 0)
      {
        v23 = v52;
      }

      else
      {
        v23 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v24 = v53;
      }

      else
      {
        v24 = v52[1];
      }

      v25 = std::string::append(&v69, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v50, "\n  Cell out gated diff: ");
      if ((v51 & 0x80u) == 0)
      {
        v27 = v50;
      }

      else
      {
        v27 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50[1];
      }

      v29 = std::string::append(&v70, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 392) + 48 * v74);
      if ((v49 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v32 = v49;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v73 = v33->__r_.__value_.__r.__words[2];
      v72 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v73 >= 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72;
      }

      if (v73 >= 0)
      {
        v36 = HIBYTE(v73);
      }

      else
      {
        v36 = *(&v72 + 1);
      }

      std::string::append(&v75, v35, v36);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v71, "\n  Output diff: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 368) + 48 * v74);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v70;
        }

        else
        {
          v37 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&v71, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v73 = v39->__r_.__value_.__r.__words[2];
        v72 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v41 = &v72;
        }

        else
        {
          v41 = v72;
        }

        if (v73 >= 0)
        {
          v42 = HIBYTE(v73);
        }

        else
        {
          v42 = *(&v72 + 1);
        }

        std::string::append(&v75, v41, v42);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      ++v74;
    }

    while (v74 < *(a1 + 80));
  }

  v43 = std::string::basic_string[abi:ne200100]<0>(&v72, "\n");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v75;
  }

  else
  {
    v44 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v75.__r_.__value_.__l.__size_;
  }

  v46 = std::string::insert(v43, 0, v44, v45);
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_1B53C14D8(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 20);
  v9 = *(a1 + 96);
  v130 = (v8 / v9);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v161, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v161, "Running forward propagation for batch size = ", 45);
    v11 = MEMORY[0x1B8C84C00](v10, v8);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v13 = MEMORY[0x1B8C84C00](v12, v130);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " frames each from ", 18);
    v15 = MEMORY[0x1B8C84C00](v14, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v161);
  }

  v16 = *(a3 + 32);
  (*(*v7 + 88))(v7);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(v7, a4, v8, v16);
  v17 = *(v7 + 104);
  if (*(v7 + 112) == v17 || *(v17 + 32 * a4 + 16) < 1)
  {
    v125 = 0;
  }

  else
  {
    v18 = (*(v7 + 128) + 48 * a4);
    v18[4] = v16;
    v125 = 1;
    kaldi::CuMatrix<float>::Resize(v18, v9, *(*(v7 + 8) + 48 * a4 + 16), 1, 0);
  }

  v19 = *(v7 + 248) + 48 * a4;
  v131 = *(v7 + 344) + 48 * a4;
  v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(v7);
  kaldi::CuMatrixBase<float>::AddMatMat(v19, a2, 111, v20, 112);
  v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(v7);
  kaldi::CuMatrixBase<float>::AddVecToRows(v19, v21, 1.0, 1.0);
  if (v130 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v126 = v7 + 12;
    v128 = 4 * v9;
    v129 = v9;
    v124 = -v9;
    v133 = v9;
    v127 = v7;
    do
    {
      v25 = *(v19 + 24);
      v26 = *(v19 + 8) + 4 * (v25 * v22);
      v27 = *(v19 + 28) - v25 * v22;
      v28 = *(v19 + 32);
      DWORD2(v162) = *(v7 + 176);
      HIDWORD(v162) = v9;
      *&v163 = __PAIR64__(v27, v25);
      *(&v163 + 1) = v28;
      *&v162 = v26;
      v161.__locale_ = &unk_1F2CFA908;
      v29 = *(v19 + 8) + 4 * (v25 * v22) + 4 * DWORD2(v162);
      v30 = *(v19 + 28) - DWORD2(v162) - v25 * v22;
      *(&v159 + 1) = __PAIR64__(v9, DWORD2(v162));
      *&v160 = __PAIR64__(v30, v25);
      *(&v160 + 1) = v28;
      v158 = &unk_1F2CFA908;
      *&v159 = v29;
      v31 = *(v19 + 24);
      v32 = *(v19 + 8) + 4 * (v31 * v22) + 12 * DWORD2(v162);
      LODWORD(v29) = *(v19 + 28) - 3 * DWORD2(v162) - v31 * v22;
      v33 = *(v19 + 32);
      *(&v156 + 1) = __PAIR64__(v9, DWORD2(v162));
      *&v157 = __PAIR64__(v29, v31);
      *(&v157 + 1) = v33;
      v155 = &unk_1F2CFA908;
      *&v156 = v32;
      v34 = *(v7 + 272) + 48 * a4;
      LODWORD(v32) = *(v34 + 16);
      LODWORD(v33) = *(v34 + 24);
      v35 = *(v34 + 8) + 4 * v33 * v22;
      LODWORD(v28) = *(v34 + 28) - v33 * v22;
      v36 = *(v34 + 32);
      *(&v153 + 1) = __PAIR64__(v9, v32);
      *&v154 = __PAIR64__(v28, v33);
      *(&v154 + 1) = v36;
      v152 = &unk_1F2CFA908;
      *&v153 = v35;
      v151 = 0u;
      v150 = 0u;
      v149 = &unk_1F2CFA908;
      v148 = 0u;
      v147 = 0u;
      v146 = &unk_1F2CFA908;
      v132 = v24;
      if (v24)
      {
        if (v125)
        {
          v37 = a4;
          kaldi::CuMatrixBase<float>::SetZero(*(v7 + 128) + 48 * a4);
          v38 = *(v7 + 128) + 48 * a4;
          v39 = *(v38 + 8);
          v40 = *(v38 + 20);
          v41 = *(v38 + 24);
          v42 = *(v38 + 28);
          v43 = *(v38 + 32);
          DWORD2(v144) = *(v7 + 176);
          *&v147 = v39;
          *(&v147 + 1) = __PAIR64__(v40, DWORD2(v144));
          *&v148 = __PAIR64__(v42, v41);
          *(&v148 + 1) = v43;
          v143 = &unk_1F2CFA908;
          v145 = 0u;
          v144 = 0u;
          quasar::Bitmap::~Bitmap(&v143);
          v44 = *(v7 + 272) + 48 * a4;
          v45 = *(v44 + 16);
          v46 = *(v44 + 24);
          v47 = *(v44 + 8) + 4 * (v46 * (v124 + v22));
          v48 = *(v44 + 28) - v46 * (v124 + v22);
          v49 = *(v44 + 32);
          *(&v144 + 1) = __PAIR64__(v9, v45);
          *&v145 = __PAIR64__(v48, v46);
          *(&v145 + 1) = v49;
          v143 = &unk_1F2CFA908;
          *&v144 = v47;
          v50 = *(v7 + 104) + 32 * a4;
          *(&v141 + 1) = 0;
          v140 = &unk_1F2CFCA48;
          *&v141 = *(v50 + 8) + v23;
          DWORD2(v141) = v9;
          *&v142 = *(v50 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v146, &v143, &v140, 1);
          v143 = &unk_1F2CFA908;
          v144 = 0u;
          v145 = 0u;
          quasar::Bitmap::~Bitmap(&v143);
          v51 = *(v7 + 128) + 48 * a4;
          v52 = *(v7 + 176);
          v53 = *(v51 + 20);
          v54 = *(v51 + 24);
          v55 = *(v51 + 8) + 4 * v52;
          LODWORD(v52) = *(v51 + 28) - v52;
          v56 = *(v51 + 32);
          DWORD2(v144) = *(v126 + *(*v7 - 24));
          *&v150 = v55;
          *(&v150 + 1) = __PAIR64__(v53, DWORD2(v144));
          *&v151 = __PAIR64__(v52, v54);
          *(&v151 + 1) = v56;
          v143 = &unk_1F2CFA908;
          v145 = 0u;
          v144 = 0u;
          quasar::Bitmap::~Bitmap(&v143);
          v57 = *(v131 + 24);
          v58 = *(v131 + 8) + 4 * (v57 * (v124 + v22));
          v59 = *(v131 + 28) - v57 * (v124 + v22);
          v60 = *(v131 + 32);
          DWORD2(v144) = *(v131 + 16);
          HIDWORD(v144) = v9;
          *&v145 = __PAIR64__(v59, v57);
          *(&v145 + 1) = v60;
          v143 = &unk_1F2CFA908;
          *&v144 = v58;
          v61 = *(v7 + 104) + 32 * a4;
          *(&v141 + 1) = 0;
          v140 = &unk_1F2CFCA48;
          *&v141 = *(v61 + 8) + v23;
          DWORD2(v141) = v9;
          *&v142 = *(v61 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v149, &v143, &v140, 1);
          v143 = &unk_1F2CFA908;
          v144 = 0u;
          v145 = 0u;
          quasar::Bitmap::~Bitmap(&v143);
          LODWORD(v9) = v133;
        }

        else
        {
          v74 = *(v131 + 16);
          v75 = *(v131 + 24);
          v76 = *(v131 + 28) - v75 * (v124 + v22);
          v77 = *(v131 + 32);
          *&v150 = *(v131 + 8) + 4 * (v75 * (v124 + v22));
          *(&v150 + 1) = __PAIR64__(v9, v74);
          *&v151 = __PAIR64__(v76, v75);
          *(&v151 + 1) = v77;
          v143 = &unk_1F2CFA908;
          v144 = 0uLL;
          v145 = 0uLL;
          quasar::Bitmap::~Bitmap(&v143);
          v37 = a4;
          v78 = *(v7 + 272) + 48 * a4;
          v79 = *(v78 + 16);
          v80 = *(v78 + 24);
          v81 = *(v78 + 8) + 4 * (v80 * (v124 + v22));
          v82 = *(v78 + 28) - v80 * (v124 + v22);
          v83 = *(v78 + 32);
          *&v147 = v81;
          *(&v147 + 1) = __PAIR64__(v9, v79);
          *&v148 = __PAIR64__(v82, v80);
          *(&v148 + 1) = v83;
          v143 = &unk_1F2CFA908;
          v145 = 0u;
          v144 = 0u;
          quasar::Bitmap::~Bitmap(&v143);
        }
      }

      else
      {
        v62 = *(v7 + 8) + 48 * a4;
        v63 = *(v62 + 20);
        v64 = *(v62 + 24);
        v65 = *(v62 + 8) + 4 * DWORD2(v162);
        v66 = *(v62 + 28) - DWORD2(v162);
        v67 = *(v62 + 32);
        DWORD2(v144) = *(v126 + *(*v7 - 24));
        *&v150 = v65;
        *(&v150 + 1) = __PAIR64__(v63, DWORD2(v144));
        *&v151 = __PAIR64__(v66, v64);
        *(&v151 + 1) = v67;
        v143 = &unk_1F2CFA908;
        v145 = 0uLL;
        v144 = 0uLL;
        quasar::Bitmap::~Bitmap(&v143);
        v68 = *(v7 + 8) + 48 * a4;
        v69 = *(v68 + 8);
        v70 = *(v68 + 20);
        v71 = *(v68 + 24);
        v72 = *(v68 + 28);
        v73 = *(v68 + 32);
        DWORD2(v144) = *(v7 + 176);
        *&v147 = v69;
        *(&v147 + 1) = __PAIR64__(v70, DWORD2(v144));
        *&v148 = __PAIR64__(v72, v71);
        *(&v148 + 1) = v73;
        v143 = &unk_1F2CFA908;
        v145 = 0u;
        v144 = 0u;
        quasar::Bitmap::~Bitmap(&v143);
        v37 = a4;
      }

      v84 = *(v19 + 24);
      v85 = *(v19 + 8) + 4 * (v84 * v22);
      v86 = *(v19 + 28) - v84 * v22;
      v87 = *(v19 + 32);
      DWORD2(v144) = *(v19 + 16);
      HIDWORD(v144) = v9;
      *&v145 = __PAIR64__(v86, v84);
      *(&v145 + 1) = v87;
      v143 = &unk_1F2CFA908;
      *&v144 = v85;
      v88 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(v7);
      kaldi::CuMatrixBase<float>::AddMatMat(&v143, &v149, 111, v88, 112);
      v143 = &unk_1F2CFA908;
      v144 = 0u;
      v145 = 0u;
      quasar::Bitmap::~Bitmap(&v143);
      if (*(v7 + 208) == 1)
      {
        v89 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v7);
        v90 = *(v89 + 16);
        v91 = *(v89 + 32);
        *&v144 = *(v89 + 8);
        v143 = &unk_1F2CFCA48;
        *(&v144 + 1) = v90;
        *&v145 = v91;
        LODWORD(v92) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v161, &v146, 111, &v143, v92, 1.0);
        v93 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v7);
        v94 = *(v93 + 16);
        v95 = *(v93 + 32);
        *&v144 = *(v93 + 8) + 4 * *(v93 + 24);
        v143 = &unk_1F2CFCA48;
        *(&v144 + 1) = v94;
        *&v145 = v95;
        LODWORD(v96) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v158, &v146, 111, &v143, v96, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v161, &v161);
      kaldi::CuMatrixBase<float>::Sigmoid(&v158, &v158);
      kaldi::CuMatrixBase<float>::ApplyTanh(&v155);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v152, &v161, 111, &v155, 111, 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v152, &v158, 111, &v146, 111, 1.0, 1.0);
      v97 = *(v7 + 476);
      if (v97 > 0.0)
      {
        kaldi::CuMatrixBase<float>::ApplyCeiling(&v152, v97);
        kaldi::CuMatrixBase<float>::ApplyFloor(&v152, -*(v7 + 476));
      }

      v98 = *(v7 + 176);
      v99 = *(v19 + 24);
      v100 = *(v19 + 8) + 4 * (v99 * v22) + 8 * v98;
      v101 = *(v19 + 28) - (v99 * v22 + 2 * v98);
      v102 = *(v19 + 32);
      DWORD2(v144) = *(v7 + 176);
      HIDWORD(v144) = v9;
      *&v145 = __PAIR64__(v101, v99);
      *(&v145 + 1) = v102;
      v143 = &unk_1F2CFA908;
      *&v144 = v100;
      if (*(v7 + 208) == 1)
      {
        v103 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v7);
        v104 = *(v103 + 16);
        v105 = *(v103 + 32);
        *&v141 = *(v103 + 8) + 8 * *(v103 + 24);
        v140 = &unk_1F2CFCA48;
        *(&v141 + 1) = v104;
        *&v142 = v105;
        LODWORD(v106) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v143, &v152, 111, &v140, v106, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v143, &v143);
      v107 = *(v7 + 296) + 48 * v37;
      v108 = *(v107 + 16);
      v109 = *(v107 + 24);
      v110 = *(v107 + 8) + 4 * (v109 * v22);
      v111 = *(v107 + 28) - v109 * v22;
      v112 = *(v107 + 32);
      *(&v141 + 1) = __PAIR64__(v133, v108);
      *&v142 = __PAIR64__(v111, v109);
      *(&v142 + 1) = v112;
      v140 = &unk_1F2CFA908;
      *&v141 = v110;
      kaldi::CuMatrixBase<float>::Tanh(&v140, &v152);
      v113 = *(v7 + 320) + 48 * v37;
      v114 = *(v113 + 16);
      v115 = *(v113 + 24);
      v116 = *(v113 + 8) + 4 * (v115 * v22);
      v117 = *(v113 + 28) - v115 * v22;
      v118 = *(v113 + 32);
      *(&v138 + 1) = __PAIR64__(v133, v114);
      *&v139 = __PAIR64__(v117, v115);
      *(&v139 + 1) = v118;
      v137 = &unk_1F2CFA908;
      *&v138 = v116;
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v137, &v143, 111, &v140, 111, 1.0, 0.0);
      v119 = *(v131 + 24);
      v120 = *(v131 + 8) + 4 * (v119 * v22);
      v121 = *(v131 + 28) - v119 * v22;
      v122 = *(v131 + 32);
      if (*(v7 + 224) == 1)
      {
        DWORD2(v135) = *(v131 + 16);
        HIDWORD(v135) = v133;
        *&v136 = __PAIR64__(v121, v119);
        *(&v136 + 1) = v122;
        v134 = &unk_1F2CFA908;
        *&v135 = v120;
        v123 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(v7);
        kaldi::CuMatrixBase<float>::AddMatMat(&v134, &v137, 111, v123, 112);
      }

      else
      {
        DWORD2(v135) = *(v131 + 16);
        HIDWORD(v135) = v133;
        *&v136 = __PAIR64__(v121, v119);
        *(&v136 + 1) = v122;
        v134 = &unk_1F2CFA908;
        *&v135 = v120;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v134, &v137, 111);
      }

      v134 = &unk_1F2CFA908;
      v135 = 0u;
      v136 = 0u;
      quasar::Bitmap::~Bitmap(&v134);
      v137 = &unk_1F2CFA908;
      v138 = 0u;
      v139 = 0u;
      quasar::Bitmap::~Bitmap(&v137);
      v140 = &unk_1F2CFA908;
      v141 = 0u;
      v142 = 0u;
      quasar::Bitmap::~Bitmap(&v140);
      v143 = &unk_1F2CFA908;
      v144 = 0u;
      v145 = 0u;
      quasar::Bitmap::~Bitmap(&v143);
      v146 = &unk_1F2CFA908;
      v147 = 0u;
      v148 = 0u;
      quasar::Bitmap::~Bitmap(&v146);
      v149 = &unk_1F2CFA908;
      v150 = 0u;
      v151 = 0u;
      quasar::Bitmap::~Bitmap(&v149);
      v152 = &unk_1F2CFA908;
      v153 = 0u;
      v154 = 0u;
      quasar::Bitmap::~Bitmap(&v152);
      v155 = &unk_1F2CFA908;
      v156 = 0u;
      v157 = 0u;
      quasar::Bitmap::~Bitmap(&v155);
      v158 = &unk_1F2CFA908;
      v159 = 0u;
      v160 = 0u;
      quasar::Bitmap::~Bitmap(&v158);
      v161.__locale_ = &unk_1F2CFA908;
      v162 = 0u;
      v163 = 0u;
      quasar::Bitmap::~Bitmap(&v161);
      v24 = v132 + 1;
      v23 += v128;
      v22 += v129;
      LODWORD(v9) = v133;
      v7 = v127;
    }

    while (v130 != v132 + 1);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v131, 111);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(v7, a4);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating forward buffers for batch ", 37);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1B8C84C00](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 248) + 48 * a2), a3, (4 * *(a1 + 176)), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 272) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 296) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 320) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 344) + 48 * a2), a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  *(*(a1 + 248) + 48 * a2 + 32) = a4;
  *(*(a1 + 272) + 48 * a2 + 32) = a4;
  *(*(a1 + 296) + 48 * a2 + 32) = a4;
  *(*(a1 + 320) + 48 * a2 + 32) = a4;
  *(*(a1 + 344) + 48 * a2 + 32) = a4;
}

void sub_1B53C29A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(uint64_t a1, uint64_t a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v27, 3);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Saving last output and cell state for batch ", 44);
    MEMORY[0x1B8C84C00](v4, a2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v27);
  }

  v5 = *(a1 + 272) + 48 * a2;
  v6 = *(a1 + 96);
  v7 = *(v5 + 20) - v6;
  v8 = *(a1 + 8) + 48 * a2;
  v9 = *(a1 + 176);
  v10 = *(v8 + 28);
  v11 = *(v8 + 32);
  v28[0] = *(v8 + 8);
  LODWORD(v28[1]) = v9;
  *(&v28[1] + 4) = *(v8 + 20);
  HIDWORD(v28[2]) = v10;
  v28[3] = v11;
  v27.__locale_ = &unk_1F2CFA908;
  LODWORD(v8) = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 8) + 4 * (v12 * v7);
  v14 = *(v5 + 28) - v12 * v7;
  v15 = *(v5 + 32);
  *(&v25 + 1) = __PAIR64__(v6, v8);
  *&v26 = __PAIR64__(v14, v12);
  *(&v26 + 1) = v15;
  v24 = &unk_1F2CFA908;
  *&v25 = v13;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
  v16 = *(a1 + 8) + 48 * a2;
  v17 = *(a1 + 176);
  v18 = *(a1 + *(*a1 - 24) + 12);
  v19 = *(v16 + 8) + 4 * v17;
  LODWORD(v17) = *(v16 + 28) - v17;
  v20 = *(v16 + 32);
  v28[0] = v19;
  LODWORD(v28[1]) = v18;
  *(&v28[1] + 4) = *(v16 + 20);
  HIDWORD(v28[2]) = v17;
  v28[3] = v20;
  v27.__locale_ = &unk_1F2CFA908;
  v21 = *(a1 + 344) + 48 * a2;
  LODWORD(v17) = *(v21 + 16);
  LODWORD(v19) = *(v21 + 24);
  v22 = *(v21 + 8) + 4 * (v19 * v7);
  LODWORD(v20) = *(v21 + 28) - v19 * v7;
  v23 = *(v21 + 32);
  *(&v25 + 1) = __PAIR64__(*(a1 + 96), v17);
  *&v26 = __PAIR64__(v20, v19);
  *(&v26 + 1) = v23;
  v24 = &unk_1F2CFA908;
  *&v25 = v22;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
}

void sub_1B53C2C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a1 + 88))(a1);
  v6 = a3[3];
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(a1, 0, 1, v6);
  v7 = *(a1 + 104);
  if (*(a1 + 112) != v7 && *(v7 + 16) >= 1)
  {
    v8 = *(a1 + 128);
    v8[4] = v6;
    kaldi::CuMatrix<float>::Resize(v8, 1, *(*(a1 + 8) + 16), 1, 0);
  }

  v9 = *(a1 + 248);
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v10 = *(v9 + 8);
  v66 = &unk_1F2CFCA48;
  v67 = v10;
  LODWORD(v68) = *(v9 + 16);
  v69 = *(v9 + 32);
  v11 = *(a1 + 344);
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v12 = *(v11 + 8);
  v62 = &unk_1F2CFCA48;
  v63 = v12;
  LODWORD(v64) = *(v11 + 16);
  v65 = *(v11 + 32);
  v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec(&v66, v13, 111, a2);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  LODWORD(v14) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(v14, 1.0);
  v15 = *(a1 + 176);
  v60[3] = v69;
  v61[0] = &unk_1F2CFCA48;
  v61[1] = v67;
  v61[2] = v15;
  v61[3] = v69;
  v60[0] = &unk_1F2CFCA48;
  v60[1] = v67 + 4 * v15;
  v60[2] = v15;
  v58 = 0;
  v59[0] = &unk_1F2CFCA48;
  v59[1] = v67 + 12 * v15;
  v59[2] = v15;
  v59[3] = v69;
  v16 = *(a1 + 272);
  v56 = 0;
  v57 = 0;
  v17 = *(v16 + 8);
  v55 = &unk_1F2CFCA48;
  v56 = v17;
  LODWORD(v57) = *(v16 + 16);
  v58 = *(v16 + 32);
  v18 = *(a1 + 8);
  v19 = *(v18 + 16);
  v20 = *(v18 + 32);
  v51 = *(v18 + 8);
  v50 = &unk_1F2CFCA48;
  v52 = v19;
  v53 = v20;
  v21 = *(a1 + *(*a1 - 24) + 12);
  v54[0] = &unk_1F2CFCA48;
  v54[1] = v51 + 4 * v15;
  v54[2] = v21;
  v54[3] = v20;
  v51 = *(v18 + 8);
  v50 = &unk_1F2CFCA48;
  v52 = v15;
  v53 = v20;
  v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec(&v66, v22, 111, v54);
  if (*(a1 + 208) == 1)
  {
    v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v24 = *(v23 + 16);
    v25 = *(v23 + 32);
    v47 = *(v23 + 8);
    v46 = &unk_1F2CFCA48;
    v48 = v24;
    v49 = v25;
    kaldi::CuVectorBase<float>::AddVecVec();
    v26 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v27 = *(v26 + 16);
    v28 = *(v26 + 32);
    v47 = *(v26 + 8) + 4 * *(v26 + 24);
    v46 = &unk_1F2CFCA48;
    v48 = v27;
    v49 = v28;
    kaldi::CuVectorBase<float>::AddVecVec();
  }

  kaldi::CuVectorBase<float>::Sigmoid(v61, v61);
  kaldi::CuVectorBase<float>::Sigmoid(v60, v60);
  kaldi::CuVectorBase<float>::ApplyTanh(v59);
  kaldi::CuVectorBase<float>::AddVecVec();
  kaldi::CuVectorBase<float>::AddVecVec();
  v29 = *(a1 + 476);
  if (v29 > 0.0)
  {
    kaldi::CuVectorBase<float>::ApplyCeiling(&v55, v29);
    kaldi::CuVectorBase<float>::ApplyFloor(&v55, -*(a1 + 476));
  }

  v30 = *(a1 + 176);
  v46 = &unk_1F2CFCA48;
  v47 = v67 + 8 * v30;
  v48 = v30;
  v49 = v69;
  if (*(a1 + 208) == 1)
  {
    v31 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v32 = *(v31 + 16);
    v33 = *(v31 + 32);
    v43 = *(v31 + 8) + 8 * *(v31 + 24);
    v42 = &unk_1F2CFCA48;
    v44 = v32;
    v45 = v33;
    kaldi::CuVectorBase<float>::AddVecVec();
  }

  kaldi::CuVectorBase<float>::Sigmoid(&v46, &v46);
  v34 = *(a1 + 296);
  v44 = 0;
  v35 = *(v34 + 8);
  v42 = &unk_1F2CFCA48;
  v43 = v35;
  LODWORD(v44) = *(v34 + 16);
  v45 = *(v34 + 32);
  kaldi::CuVectorBase<float>::Tanh(&v42, &v55);
  v36 = *(a1 + 320);
  v40 = 0;
  v37 = *(v36 + 8);
  v39[0] = &unk_1F2CFCA48;
  v39[1] = v37;
  LODWORD(v40) = *(v36 + 16);
  v41 = *(v36 + 32);
  kaldi::CuVectorBase<float>::AddVecVec();
  if (*(a1 + 224) == 1)
  {
    v38 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuVectorBase<float>::AddMatVec(&v62, v38, 111, v39);
  }

  else
  {
    kaldi::CuVectorBase<float>::CopyFromVec(&v62, v39);
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a3, &v62);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(a1, 0);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc()
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc();
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc();
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 20);
  v10 = *(a1 + 96);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(a1);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v188, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v188, "Running backward propagation for batch size = ", 46);
    v12 = MEMORY[0x1B8C84C00](v11, v9);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1B8C84C00](v13, (v9 / v10));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1B8C84C00](v15, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v188);
  }

  v130 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(v17 + 32);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateBackwardBuffers(a1, a6, v9, v18);
  v19 = a6;
  v20 = 3 * a6;
  v21 = *(a1 + 248) + 48 * a6;
  v22 = *(a1 + 440) + 16 * v20;
  v131 = (*(a1 + 368) + 16 * v20);
  v141 = *(a1 + 416);
  v23 = *(a1 + 104);
  v137 = v19;
  v139 = (v9 / v10);
  if (*(a1 + 112) == v23 || *(v23 + 32 * v19 + 16) < 1)
  {
    v136 = 0;
    v24 = a1;
  }

  else
  {
    v24 = a1;
    v25 = (*(a1 + 128) + 48 * v19);
    v25[4] = v18;
    v136 = 1;
    kaldi::CuMatrix<float>::Resize(v25, v10, *(v22 + 16), 1, 0);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v131, a4, 111);
  v26 = *(v24 + 176);
  v27 = *(v21 + 20);
  v28 = *(v21 + 24);
  v29 = *(v21 + 28);
  v30 = *(v21 + 32);
  *&v189 = *(v21 + 8);
  *(&v189 + 1) = __PAIR64__(v27, v26);
  *&v190 = __PAIR64__(v29, v28);
  *(&v190 + 1) = v30;
  v188.__locale_ = &unk_1F2CFA908;
  *&v186 = v189 + 4 * v26;
  *(&v186 + 1) = __PAIR64__(v27, v26);
  LODWORD(v187) = v28;
  DWORD1(v187) = v29 - v26;
  *(&v187 + 1) = v30;
  v185 = &unk_1F2CFA908;
  v31 = *(v21 + 20);
  v32 = *(v21 + 24);
  v33 = *(v21 + 28) - 2 * v26;
  v34 = *(v21 + 32);
  *&v183 = *(v21 + 8) + 8 * v26;
  *(&v183 + 1) = __PAIR64__(v31, v26);
  *&v184 = __PAIR64__(v33, v32);
  *(&v184 + 1) = v34;
  v182 = &unk_1F2CFA908;
  v35 = *(v21 + 28) - 3 * v26;
  *&v180 = *(v21 + 8) + 12 * v26;
  *(&v180 + 1) = __PAIR64__(v31, v26);
  *&v181 = __PAIR64__(v35, v32);
  *(&v181 + 1) = v34;
  v179 = &unk_1F2CFA908;
  v36 = *(v22 + 20);
  v37 = *(v22 + 24);
  v38 = *(v22 + 28);
  v39 = *(v22 + 32);
  *&v177 = *(v22 + 8);
  *(&v177 + 1) = __PAIR64__(v36, v26);
  *&v178 = __PAIR64__(v38, v37);
  *(&v178 + 1) = v39;
  v176 = &unk_1F2CFA908;
  *&v174 = v177 + 4 * v26;
  *(&v174 + 1) = __PAIR64__(v36, v26);
  LODWORD(v175) = v37;
  DWORD1(v175) = v38 - v26;
  *(&v175 + 1) = v39;
  v173 = &unk_1F2CFA908;
  v40 = *(v22 + 20);
  v41 = *(v22 + 24);
  v42 = *(v22 + 28) - 2 * v26;
  v43 = *(v22 + 32);
  *&v171 = *(v22 + 8) + 8 * v26;
  *(&v171 + 1) = __PAIR64__(v40, v26);
  *&v172 = __PAIR64__(v42, v41);
  *(&v172 + 1) = v43;
  v170 = &unk_1F2CFA908;
  v44 = *(v22 + 28) - 3 * v26;
  *&v168 = *(v22 + 8) + 12 * v26;
  *(&v168 + 1) = __PAIR64__(v40, v26);
  *&v169 = __PAIR64__(v44, v41);
  *(&v169 + 1) = v43;
  v167 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v176, &v188, &v179);
  *&v166[0] = v174 + 4 * v175 * v10;
  DWORD2(v166[0]) = DWORD2(v174);
  HIDWORD(v166[0]) = v9 - v10;
  LODWORD(v166[1]) = v175;
  DWORD1(v166[1]) = DWORD1(v175) - v175 * v10;
  *(&v166[1] + 1) = *(&v175 + 1);
  v165 = &unk_1F2CFA908;
  *&v163 = v186 + 4 * v187 * v10;
  DWORD2(v163) = DWORD2(v186);
  HIDWORD(v163) = v9 - v10;
  LODWORD(v164) = v187;
  DWORD1(v164) = DWORD1(v187) - v187 * v10;
  *(&v164 + 1) = *(&v187 + 1);
  v162 = &unk_1F2CFA908;
  v45 = *(v24 + 272) + 48 * v137;
  v46 = *(v45 + 16);
  v47 = *(v45 + 32);
  *&v160 = *(v45 + 8);
  DWORD2(v160) = v46;
  HIDWORD(v160) = v9 - v10;
  *&v161 = *(v45 + 24);
  *(&v161 + 1) = v47;
  v159 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v165, &v162, &v159);
  v159 = &unk_1F2CFA908;
  v160 = 0u;
  v161 = 0u;
  quasar::Bitmap::~Bitmap(&v159);
  v162 = &unk_1F2CFA908;
  v163 = 0u;
  v164 = 0u;
  quasar::Bitmap::~Bitmap(&v162);
  v165 = &unk_1F2CFA908;
  memset(v166, 0, sizeof(v166));
  quasar::Bitmap::~Bitmap(&v165);
  *&v166[0] = v174;
  *(&v166[0] + 1) = __PAIR64__(v10, DWORD2(v174));
  v166[1] = v175;
  v165 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::SetZero(&v165);
  v165 = &unk_1F2CFA908;
  memset(v166, 0, sizeof(v166));
  quasar::Bitmap::~Bitmap(&v165);
  v48 = v137;
  v49 = a1;
  v133 = v22;
  if (v136)
  {
    v50 = *(a1 + 128) + 48 * v137;
    v51 = *(a1 + 176);
    v52 = *(v50 + 28);
    v53 = *(v50 + 32);
    *&v166[0] = *(v50 + 8);
    DWORD2(v166[0]) = v51;
    *(v166 + 12) = *(v50 + 20);
    DWORD1(v166[1]) = v52;
    *(&v166[1] + 1) = v53;
    v165 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::SetZero(&v165);
    v54 = v139 - 1;
    v55 = v10;
    v56 = 4 * v10;
    do
    {
      *(&v163 + 1) = __PAIR64__(v10, DWORD2(v174));
      LODWORD(v164) = v175;
      DWORD1(v164) = DWORD1(v175) - v175 * v55;
      *(&v164 + 1) = *(&v175 + 1);
      *&v163 = v174 + 4 * v175 * v55;
      v162 = &unk_1F2CFA908;
      v57 = *(a1 + 104) + 32 * v137;
      *(&v160 + 1) = 0;
      v159 = &unk_1F2CFCA48;
      *&v160 = *(v57 + 8) + v56;
      DWORD2(v160) = v10;
      *&v161 = *(v57 + 24);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v162, &v165, &v159, 0);
      v162 = &unk_1F2CFA908;
      v163 = 0u;
      v164 = 0u;
      quasar::Bitmap::~Bitmap(&v162);
      v56 += 4 * v10;
      v55 += v10;
      --v54;
    }

    while (v54);
    v165 = &unk_1F2CFA908;
    memset(v166, 0, sizeof(v166));
    quasar::Bitmap::~Bitmap(&v165);
    v48 = v137;
    v49 = a1;
  }

  kaldi::CuMatrixBase<float>::DiffSigmoid(&v170, &v182, *(v49 + 296) + 48 * v48);
  kaldi::CuMatrixBase<float>::DiffTanh(&v167, &v179, &v188);
  v58 = v141 + 16 * v20;
  kaldi::CuMatrixBase<float>::DiffTanh(v58, *(v49 + 296) + 48 * v48, &v182);
  v59 = 0;
  v135 = v10 * (v139 - 1);
  v140 = 0;
  v142 = (v139 - 1);
  v134 = 4 * (v10 + v10 * v142);
  v132 = v10 * v139;
  v60 = v131;
  do
  {
    v61 = v135 + v59;
    v62 = v60[6];
    v63 = *(v60 + 1) + 4 * v62 * (v135 + v59);
    v64 = v60[7] - v62 * (v135 + v59);
    v65 = *(v60 + 4);
    DWORD2(v166[0]) = v60[4];
    HIDWORD(v166[0]) = v10;
    *&v166[1] = __PAIR64__(v64, v62);
    *(&v166[1] + 1) = v65;
    *&v166[0] = v63;
    v165 = &unk_1F2CFA908;
    v66 = *(v49 + 392) + 48 * v48;
    LODWORD(v63) = *(v66 + 16);
    v67 = *(v66 + 24);
    v68 = v67 * (v135 + v59);
    v69 = *(v66 + 8) + 4 * v68;
    LODWORD(v65) = *(v66 + 28) - v68;
    v70 = *(v66 + 32);
    *(&v163 + 1) = __PAIR64__(v10, v63);
    *&v164 = __PAIR64__(v65, v67);
    *(&v164 + 1) = v70;
    *&v163 = v69;
    v162 = &unk_1F2CFA908;
    if (*(v49 + 224) == 1)
    {
      v71 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(v49);
      kaldi::CuMatrixBase<float>::AddMatMat(&v162, &v165, 111, v71, 111);
    }

    else
    {
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v162, &v165, 111);
    }

    *&v160 = v171 + 4 * v172 * v61;
    *(&v160 + 1) = __PAIR64__(v10, DWORD2(v171));
    LODWORD(v161) = v172;
    DWORD1(v161) = DWORD1(v172) - v172 * v61;
    *(&v161 + 1) = *(&v172 + 1);
    v159 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::MulElements(&v159, &v162);
    v72 = *(v58 + 24);
    v73 = *(v58 + 8) + 4 * (v72 * v61);
    v74 = *(v58 + 28) - v72 * v61;
    v75 = *(v58 + 32);
    DWORD2(v157) = *(v58 + 16);
    HIDWORD(v157) = v10;
    *&v158 = __PAIR64__(v74, v72);
    *(&v158 + 1) = v75;
    v156 = &unk_1F2CFA908;
    *&v157 = v73;
    kaldi::CuMatrixBase<float>::MulElements(&v156, &v162);
    if (*(v49 + 208) == 1)
    {
      v76 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v49);
      v77 = *(v76 + 16);
      v78 = *(v76 + 32);
      v155[0] = *(v76 + 8) + 8 * *(v76 + 24);
      v154 = &unk_1F2CFCA48;
      v155[1] = v77;
      v155[2] = v78;
      LODWORD(v79) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatDiagVec(&v156, &v159, 111, &v154, v79, 1.0);
    }

    if (v142 < v139 - 1)
    {
      v80 = v132 + v59;
      v81 = *(v58 + 24);
      v82 = *(v58 + 8) + 4 * (v81 * (v132 + v59));
      v83 = *(v58 + 28) - v81 * (v132 + v59);
      v84 = *(v58 + 32);
      LODWORD(v155[1]) = *(v58 + 16);
      HIDWORD(v155[1]) = v10;
      v155[2] = __PAIR64__(v83, v81);
      v155[3] = v84;
      v154 = &unk_1F2CFA908;
      v155[0] = v82;
      v153[0] = v186 + 4 * v187 * (v132 + v59);
      v153[1] = __PAIR64__(v10, DWORD2(v186));
      LODWORD(v153[2]) = v187;
      HIDWORD(v153[2]) = DWORD1(v187) - v187 * (v132 + v59);
      v153[3] = *(&v187 + 1);
      v152 = &unk_1F2CFA908;
      if (v136)
      {
        v85 = *(v49 + 128) + 48 * v137;
        v86 = *(v49 + 176);
        v87 = *(v85 + 28);
        v88 = *(v85 + 32);
        v151[0] = *(v85 + 8);
        LODWORD(v151[1]) = v86;
        *(&v151[1] + 4) = *(v85 + 20);
        HIDWORD(v151[2]) = v87;
        v151[3] = v88;
        v150 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v150);
        v89 = *(v49 + 104) + 32 * v137;
        v149[1] = 0;
        v148 = &unk_1F2CFCA48;
        v149[0] = *(v89 + 8) + v134 + v140;
        LODWORD(v149[1]) = v10;
        v149[2] = *(v89 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v150, &v154, &v148, 1);
        *&v155[1] = *&v151[1];
        v155[0] = v151[0];
        v155[3] = v151[3];
        v90 = *(v49 + 128) + 48 * v137;
        v91 = *(v49 + 176);
        v92 = *(v90 + 28) - v91;
        v93 = *(v90 + 32);
        v149[0] = *(v90 + 8) + 4 * v91;
        LODWORD(v149[1]) = v91;
        *(&v149[1] + 4) = *(v90 + 20);
        HIDWORD(v149[2]) = v92;
        v149[3] = v93;
        v148 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v148);
        v94 = *(v49 + 104) + 32 * v137;
        v147[2] = 0;
        v147[0] = &unk_1F2CFCA48;
        v147[1] = *(v94 + 8) + v134 + v140;
        LODWORD(v147[2]) = v10;
        v147[3] = *(v94 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v148, &v152, v147, 1);
        v153[0] = v149[0];
        *&v153[1] = *&v149[1];
        v153[3] = v149[3];
        v148 = &unk_1F2CFA908;
        memset(v149, 0, sizeof(v149));
        quasar::Bitmap::~Bitmap(&v148);
        v150 = &unk_1F2CFA908;
        memset(v151, 0, sizeof(v151));
        quasar::Bitmap::~Bitmap(&v150);
        v49 = a1;
        v60 = v131;
      }

      if (*(v49 + 208) == 1)
      {
        v151[0] = v174 + 4 * v175 * v80;
        v151[1] = __PAIR64__(v10, DWORD2(v174));
        LODWORD(v151[2]) = v175;
        HIDWORD(v151[2]) = DWORD1(v175) - v175 * v80;
        v151[3] = *(&v175 + 1);
        v149[1] = __PAIR64__(v10, DWORD2(v177));
        LODWORD(v149[2]) = v178;
        HIDWORD(v149[2]) = DWORD1(v178) - v178 * v80;
        v149[3] = *(&v178 + 1);
        v150 = &unk_1F2CFA908;
        v148 = &unk_1F2CFA908;
        v149[0] = v177 + 4 * v178 * v80;
        if (v136)
        {
          v95 = *(a1 + 128) + 48 * v137;
          v96 = *(a1 + 176);
          v97 = *(v95 + 28) - 2 * v96;
          v98 = *(v95 + 32);
          v147[1] = *(v95 + 8) + 8 * v96;
          LODWORD(v147[2]) = v96;
          *(&v147[2] + 4) = *(v95 + 20);
          HIDWORD(v147[3]) = v97;
          v147[4] = v98;
          v147[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v147);
          v99 = *(a1 + 104) + 32 * v137;
          v146[2] = 0;
          v146[0] = &unk_1F2CFCA48;
          v146[1] = *(v99 + 8) + v134 + v140;
          LODWORD(v146[2]) = v10;
          v146[3] = *(v99 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v147, &v150, v146, 1);
          *&v151[1] = *&v147[2];
          v151[0] = v147[1];
          v151[3] = v147[4];
          v100 = *(a1 + 128) + 48 * v137;
          v101 = *(a1 + 176);
          v102 = *(v100 + 28) - 3 * v101;
          v103 = *(v100 + 32);
          v146[1] = *(v100 + 8) + 12 * v101;
          LODWORD(v146[2]) = v101;
          *(&v146[2] + 4) = *(v100 + 20);
          HIDWORD(v146[3]) = v102;
          v146[4] = v103;
          v146[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v146);
          v104 = *(a1 + 104) + 32 * v137;
          v144 = 0;
          v143[0] = &unk_1F2CFCA48;
          v143[1] = *(v104 + 8) + v134 + v140;
          LODWORD(v144) = v10;
          v145 = *(v104 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v146, &v148, v143, 1);
          v149[0] = v146[1];
          *&v149[1] = *&v146[2];
          v149[3] = v146[4];
          v146[0] = &unk_1F2CFA908;
          memset(&v146[1], 0, 32);
          quasar::Bitmap::~Bitmap(v146);
          v147[0] = &unk_1F2CFA908;
          memset(&v147[1], 0, 32);
          quasar::Bitmap::~Bitmap(v147);
          v60 = v131;
        }

        v105 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        v106 = *(v105 + 16);
        v107 = *(v105 + 32);
        v147[1] = *(v105 + 8) + 4 * *(v105 + 24);
        v147[0] = &unk_1F2CFCA48;
        v147[2] = v106;
        v147[3] = v107;
        LODWORD(v108) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v156, &v150, 111, v147, v108, 1.0);
        v109 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        v110 = *(v109 + 16);
        v111 = *(v109 + 32);
        v147[1] = *(v109 + 8);
        v147[0] = &unk_1F2CFCA48;
        v147[2] = v110;
        v147[3] = v111;
        LODWORD(v112) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v156, &v148, 111, v147, v112, 1.0);
        v148 = &unk_1F2CFA908;
        memset(v149, 0, sizeof(v149));
        quasar::Bitmap::~Bitmap(&v148);
        v150 = &unk_1F2CFA908;
        memset(v151, 0, sizeof(v151));
        quasar::Bitmap::~Bitmap(&v150);
        v49 = a1;
      }

      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v156, &v154, 111, &v152, 111, 1.0, 1.0);
      v152 = &unk_1F2CFA908;
      memset(v153, 0, sizeof(v153));
      quasar::Bitmap::~Bitmap(&v152);
      v154 = &unk_1F2CFA908;
      memset(v155, 0, sizeof(v155));
      quasar::Bitmap::~Bitmap(&v154);
      v48 = v137;
    }

    v155[1] = __PAIR64__(v10, DWORD2(v177));
    LODWORD(v155[2]) = v178;
    HIDWORD(v155[2]) = DWORD1(v178) - v178 * v61;
    v155[3] = *(&v178 + 1);
    v154 = &unk_1F2CFA908;
    v155[0] = v177 + 4 * v178 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v154, &v156);
    v154 = &unk_1F2CFA908;
    memset(v155, 0, sizeof(v155));
    quasar::Bitmap::~Bitmap(&v154);
    v155[1] = __PAIR64__(v10, DWORD2(v168));
    LODWORD(v155[2]) = v169;
    HIDWORD(v155[2]) = DWORD1(v169) - v169 * v61;
    v155[3] = *(&v169 + 1);
    v154 = &unk_1F2CFA908;
    v155[0] = v168 + 4 * v169 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v154, &v156);
    v154 = &unk_1F2CFA908;
    memset(v155, 0, sizeof(v155));
    quasar::Bitmap::~Bitmap(&v154);
    if (v142)
    {
      v155[1] = __PAIR64__(v10, DWORD2(v174));
      LODWORD(v155[2]) = v175;
      HIDWORD(v155[2]) = DWORD1(v175) - v175 * v61;
      v155[3] = *(&v175 + 1);
      v154 = &unk_1F2CFA908;
      v155[0] = v174 + 4 * v175 * v61;
      kaldi::CuMatrixBase<float>::MulElements(&v154, &v156);
      v154 = &unk_1F2CFA908;
      memset(v155, 0, sizeof(v155));
      quasar::Bitmap::~Bitmap(&v154);
      v113 = *(v133 + 16);
      v114 = *(v133 + 24);
      v115 = *(v133 + 8) + 4 * (v114 * v61);
      v116 = *(v133 + 28) - v114 * v61;
      v117 = *(v133 + 32);
      v155[1] = __PAIR64__(v10, v113);
      v155[2] = __PAIR64__(v116, v114);
      v155[3] = v117;
      v154 = &unk_1F2CFA908;
      v155[0] = v115;
      if (v136)
      {
        v118 = *(v49 + 128) + 48 * v48;
        v119 = *(v118 + 28);
        v120 = *(v118 + 32);
        v153[0] = *(v118 + 8);
        LODWORD(v153[1]) = v113;
        *(&v153[1] + 4) = *(v118 + 20);
        HIDWORD(v153[2]) = v119;
        v153[3] = v120;
        v152 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v152);
        v121 = *(v49 + 104) + 32 * v48;
        v151[1] = 0;
        v150 = &unk_1F2CFCA48;
        v151[0] = *(v121 + 8) + 4 * v10 * (v139 - 1) + v140;
        LODWORD(v151[1]) = v10;
        v151[2] = *(v121 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v152, &v154, &v150, 1);
        *&v155[1] = *&v153[1];
        v155[0] = v153[0];
        v155[3] = v153[3];
        v152 = &unk_1F2CFA908;
        memset(v153, 0, sizeof(v153));
        quasar::Bitmap::~Bitmap(&v152);
      }

      v122 = v60[6];
      v123 = v122 * (v10 * (v139 - 2) + v59);
      v124 = *(v60 + 1) + 4 * v123;
      v125 = v60[7] - v123;
      v126 = *(v60 + 4);
      LODWORD(v153[1]) = v60[4];
      HIDWORD(v153[1]) = v10;
      v153[2] = __PAIR64__(v125, v122);
      v153[3] = v126;
      v152 = &unk_1F2CFA908;
      v153[0] = v124;
      v127 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(v49);
      kaldi::CuMatrixBase<float>::AddMatMat(&v152, &v154, 111, v127, 111);
      v152 = &unk_1F2CFA908;
      memset(v153, 0, sizeof(v153));
      quasar::Bitmap::~Bitmap(&v152);
      v154 = &unk_1F2CFA908;
      memset(v155, 0, sizeof(v155));
      quasar::Bitmap::~Bitmap(&v154);
    }

    v156 = &unk_1F2CFA908;
    v157 = 0u;
    v158 = 0u;
    quasar::Bitmap::~Bitmap(&v156);
    v159 = &unk_1F2CFA908;
    v160 = 0u;
    v161 = 0u;
    quasar::Bitmap::~Bitmap(&v159);
    v162 = &unk_1F2CFA908;
    v163 = 0u;
    v164 = 0u;
    quasar::Bitmap::~Bitmap(&v162);
    v165 = &unk_1F2CFA908;
    memset(v166, 0, sizeof(v166));
    quasar::Bitmap::~Bitmap(&v165);
    v128 = v142;
    v140 -= 4 * v10;
    --v142;
    v59 -= v10;
  }

  while (v128 > 0);
  if (v130)
  {
    v129 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(v49);
    kaldi::CuMatrixBase<float>::AddMatMat(v130, v133, 111, v129, 111);
  }

  v167 = &unk_1F2CFA908;
  v168 = 0u;
  v169 = 0u;
  quasar::Bitmap::~Bitmap(&v167);
  v170 = &unk_1F2CFA908;
  v171 = 0u;
  v172 = 0u;
  quasar::Bitmap::~Bitmap(&v170);
  v173 = &unk_1F2CFA908;
  v174 = 0u;
  v175 = 0u;
  quasar::Bitmap::~Bitmap(&v173);
  v176 = &unk_1F2CFA908;
  v177 = 0u;
  v178 = 0u;
  quasar::Bitmap::~Bitmap(&v176);
  v179 = &unk_1F2CFA908;
  v180 = 0u;
  v181 = 0u;
  quasar::Bitmap::~Bitmap(&v179);
  v182 = &unk_1F2CFA908;
  v183 = 0u;
  v184 = 0u;
  quasar::Bitmap::~Bitmap(&v182);
  v185 = &unk_1F2CFA908;
  v186 = 0u;
  v187 = 0u;
  quasar::Bitmap::~Bitmap(&v185);
  v188.__locale_ = &unk_1F2CFA908;
  v189 = 0u;
  v190 = 0u;
  quasar::Bitmap::~Bitmap(&v188);
}

void sub_1B53C4B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17)
{
  STACK[0x270] = v17;
  *&STACK[0x278] = 0u;
  *&STACK[0x288] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x270]);
  STACK[0x298] = a10;
  *&STACK[0x2A0] = 0u;
  *&STACK[0x2B0] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x298]);
  STACK[0x2C0] = a11;
  *&STACK[0x2C8] = 0u;
  *&STACK[0x2D8] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x2C0]);
  STACK[0x2E8] = a12;
  *&STACK[0x2F0] = 0u;
  *&STACK[0x300] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x2E8]);
  STACK[0x310] = a13;
  *&STACK[0x318] = 0u;
  *&STACK[0x328] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x310]);
  STACK[0x338] = a14;
  *&STACK[0x340] = 0u;
  *&STACK[0x350] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x338]);
  STACK[0x360] = a15;
  *&STACK[0x368] = 0u;
  *&STACK[0x378] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x360]);
  STACK[0x388] = a16;
  *&STACK[0x390] = 0u;
  *&STACK[0x3A0] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x388]);
  STACK[0x3B0] = a17;
  *&STACK[0x3B8] = 0u;
  *&STACK[0x3C8] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(void *result)
{
  if ((*(result + 241) & 1) == 0)
  {
    v1 = result;
    std::vector<kaldi::CuMatrix<float>>::resize(result + 46, *(result + 20));
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 49, *(v1 + 20));
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 52, *(v1 + 20));
    result = std::vector<kaldi::CuMatrix<float>>::resize(v1 + 55, *(v1 + 20));
    *(v1 + 241) = 1;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateBackwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating backward buffers for batch ", 38);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1B8C84C00](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 368) + 48 * a2), a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 392) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 416) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 440) + 48 * a2), a3, (4 * *(a1 + 176)), 0, 0);
  *(*(a1 + 368) + 48 * a2 + 32) = a4;
  *(*(a1 + 392) + 48 * a2 + 32) = a4;
  *(*(a1 + 416) + 48 * a2 + 32) = a4;
  *(*(a1 + 440) + 48 * a2 + 32) = a4;
}

void sub_1B53C5104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 96);
  v10 = *(a2 + 20);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v65, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Accumulating gradients for batch id = ", 38);
    v12 = MEMORY[0x1B8C84C00](v11, a5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1B8C84C00](v13, (v10 / v9));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1B8C84C00](v15, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v65);
  }

  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  v50 = *(a1 + 272);
  v17 = *(a1 + 440) + 48 * a5;
  v18 = *(a1 + 60);
  *(*(a1 + 480) + 4 * a5) = v10;
  v19 = *(v17 + 8);
  v20 = *(v17 + 20);
  v21 = *(v17 + 24);
  v22 = *(v17 + 28);
  v23 = *(v17 + 32);
  DWORD2(v66) = *(a1 + 176);
  HIDWORD(v66) = v20;
  *&v67 = __PAIR64__(v22, v21);
  *(&v67 + 1) = v23;
  v65.__locale_ = &unk_1F2CFA908;
  *&v66 = v19;
  *(&v63 + 1) = __PAIR64__(v20, DWORD2(v66));
  LODWORD(v64) = v21;
  DWORD1(v64) = v22 - DWORD2(v66);
  *(&v64 + 1) = v23;
  v62 = &unk_1F2CFA908;
  *&v63 = v19 + 4 * SDWORD2(v66);
  v24 = *(v17 + 28) - 2 * DWORD2(v66);
  v25 = *(v17 + 32);
  v61[1] = *(v17 + 8) + 8 * DWORD2(v66);
  LODWORD(v61[2]) = DWORD2(v66);
  *(&v61[2] + 4) = *(v17 + 20);
  HIDWORD(v61[3]) = v24;
  v61[4] = v25;
  v61[0] = &unk_1F2CFA908;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a5) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a5) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a5) + 24) = a4;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a5) + 32) = a4;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a5) + 32) = a4;
  }

  v26 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a5);
  kaldi::CuMatrixBase<float>::AddMatMat(v26, v17, 112, a2, 111);
  v27 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a5);
  v28 = *(v17 + 24);
  v29 = *(v17 + 8) + 4 * (v28 * v9);
  v30 = *(v17 + 28) - v28 * v9;
  v31 = *(v17 + 32);
  DWORD2(v59) = *(v17 + 16);
  HIDWORD(v59) = v10 - v9;
  *&v60 = __PAIR64__(v30, v28);
  *(&v60 + 1) = v31;
  v58 = &unk_1F2CFA908;
  *&v59 = v29;
  v32 = *(a1 + 344) + 48 * a5;
  LODWORD(v29) = *(v32 + 16);
  v33 = *(v32 + 32);
  *&v56 = *(v32 + 8);
  DWORD2(v56) = v29;
  HIDWORD(v56) = v10 - v9;
  *&v57 = *(v32 + 24);
  *(&v57 + 1) = v33;
  v55 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::AddMatMat(v27, &v58, 112, &v55, 111);
  v55 = &unk_1F2CFA908;
  v56 = 0u;
  v57 = 0u;
  quasar::Bitmap::~Bitmap(&v55);
  v58 = &unk_1F2CFA908;
  v59 = 0u;
  v60 = 0u;
  quasar::Bitmap::~Bitmap(&v58);
  v34 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a5);
  kaldi::CuVectorBase<float>::AddRowSumMat(v34, v17);
  if (*(a1 + 208) == 1)
  {
    v35 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a5);
    v36 = v50 + 48 * a5;
    v37 = *(v35 + 16);
    v38 = *(v35 + 32);
    v52 = *(v35 + 8);
    v51 = &unk_1F2CFCA48;
    v53 = v37;
    v54 = v38;
    DWORD2(v59) = DWORD2(v66);
    HIDWORD(v59) = v10 - v9;
    LODWORD(v60) = v67;
    DWORD1(v60) = DWORD1(v67) - v67 * v9;
    *(&v60 + 1) = *(&v67 + 1);
    v58 = &unk_1F2CFA908;
    *&v59 = v66 + 4 * v67 * v9;
    v39 = *(v36 + 16);
    v40 = *(v36 + 32);
    *&v56 = *(v36 + 8);
    DWORD2(v56) = v39;
    HIDWORD(v56) = v10 - v9;
    *&v57 = *(v36 + 24);
    *(&v57 + 1) = v40;
    v55 = &unk_1F2CFA908;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v51, &v58, 112, &v55, 111, 1.0, v18);
    v55 = &unk_1F2CFA908;
    v56 = 0u;
    v57 = 0u;
    quasar::Bitmap::~Bitmap(&v55);
    v58 = &unk_1F2CFA908;
    v59 = 0u;
    v60 = 0u;
    quasar::Bitmap::~Bitmap(&v58);
    v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a5);
    v42 = *(v41 + 16);
    v43 = *(v41 + 32);
    v52 = *(v41 + 8) + 4 * *(v41 + 24);
    v51 = &unk_1F2CFCA48;
    v53 = v42;
    v54 = v43;
    DWORD2(v59) = DWORD2(v63);
    HIDWORD(v59) = v10 - v9;
    LODWORD(v60) = v64;
    DWORD1(v60) = DWORD1(v64) - v64 * v9;
    *(&v60 + 1) = *(&v64 + 1);
    v58 = &unk_1F2CFA908;
    *&v59 = v63 + 4 * v64 * v9;
    v44 = *(v36 + 16);
    v45 = *(v36 + 32);
    *&v56 = *(v36 + 8);
    DWORD2(v56) = v44;
    HIDWORD(v56) = v10 - v9;
    *&v57 = *(v36 + 24);
    *(&v57 + 1) = v45;
    v55 = &unk_1F2CFA908;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v51, &v58, 112, &v55, 111, 1.0, v18);
    v55 = &unk_1F2CFA908;
    v56 = 0u;
    v57 = 0u;
    quasar::Bitmap::~Bitmap(&v55);
    v58 = &unk_1F2CFA908;
    v59 = 0u;
    v60 = 0u;
    quasar::Bitmap::~Bitmap(&v58);
    v46 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a5);
    v47 = *(v46 + 16);
    v48 = *(v46 + 32);
    *&v59 = *(v46 + 8) + 8 * *(v46 + 24);
    v58 = &unk_1F2CFCA48;
    *(&v59 + 1) = v47;
    *&v60 = v48;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v58, v61, 112, v36, 111, 1.0, v18);
  }

  if (*(a1 + 224) == 1)
  {
    v49 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMat(v49, *(a1 + 368) + 48 * a5, 112, *(a1 + 320) + 48 * a5, 111);
  }

  v61[0] = &unk_1F2CFA908;
  memset(&v61[1], 0, 32);
  quasar::Bitmap::~Bitmap(v61);
  v62 = &unk_1F2CFA908;
  v63 = 0u;
  v64 = 0u;
  quasar::Bitmap::~Bitmap(&v62);
  v65.__locale_ = &unk_1F2CFA908;
  v66 = 0u;
  v67 = 0u;
  quasar::Bitmap::~Bitmap(&v65);
}

void sub_1B53C584C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, __int128 a31, uint64_t a32, __int128 a33, __int128 a34, uint64_t a35, __int128 a36, __int128 a37)
{
  a29 = a12;
  a30 = 0u;
  a31 = 0u;
  quasar::Bitmap::~Bitmap(&a29);
  a32 = a13;
  a33 = 0u;
  a34 = 0u;
  quasar::Bitmap::~Bitmap(&a32);
  a35 = a14;
  a36 = 0u;
  a37 = 0u;
  quasar::Bitmap::~Bitmap(&a35);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(uint64_t a1)
{
  if (*(a1 + 528))
  {
    return;
  }

  v2 = *(a1 + 80);
  if (v2 > 1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "input_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 568) != *(a1 + 560))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "recurrent_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 616) != *(a1 + 608))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "bias_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 208) == 1 && *(a1 + 592) != *(a1 + 584))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "peephole_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 224) == 1 && *(a1 + 640) != *(a1 + 632))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "projection_weights_gradient_.size() == 0");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 536), v3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 560), v3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 608), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 656), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 680), v3);
  std::vector<kaldi::CuVector<float>>::resize((a1 + 728), v3);
  if (v3 >= 1)
  {
    operator new();
  }

  if (*(a1 + 208))
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 584), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 704), v3);
  }

  if (*(a1 + 224) == 1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 632), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 752), v3);
  }

  *(a1 + 528) = 1;
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, 2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocated memory for the gradients: ", 36);
    (*(*a1 + 272))(__p, a1);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetInternalBoundary(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 104);
  v6 = (a1 + 104);
  if (v5 == *(a1 + 112))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 104), *(a1 + 80));
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 128), *(a1 + 80));
    v5 = *(a1 + 104);
  }

  kaldi::CuVector<float>::Resize(v5 + 32 * a3, *(a2 + 16), 1);
  v8 = (*v6 + 32 * a3);

  return kaldi::CuVectorBase<float>::CopyFromVec(v8, a2);
}