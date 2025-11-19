void std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::unique_ptr<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<std::string>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<std::string>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t *a2)
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
        std::default_delete<std::string>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1C68D4E80);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<std::string>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<std::string>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
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
      std::default_delete<std::string>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::pair<std::string const,int> const&>();
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

void sub_1BFC18A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BFC18AD8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::string>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::string>::__construct_at_end_with_size<std::__wrap_iter<std::string*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v4;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::emplace_back<google::protobuf::util::converter::DefaultValueObjectWriter::Node * const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>::emplace_back<google::protobuf::util::converter::DefaultValueObjectWriter::Node **&>(a1, &v10);
}

void sub_1BFC19274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>::emplace_back<google::protobuf::util::converter::DefaultValueObjectWriter::Node **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>::emplace_front<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>::emplace_back<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>::emplace_front<google::protobuf::util::converter::DefaultValueObjectWriter::Node **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

void google::protobuf::util::converter::DataPiece::ToInt32(google::protobuf::util::converter::DataPiece *this@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 2);
  switch(v4)
  {
    case 5:
      break;
    case 6:
      break;
    case 9:
      google::protobuf::util::converter::DataPiece::StringToNumber<int>(this, google::protobuf::safe_strto32, a4);
      break;
    default:
      google::protobuf::util::converter::DataPiece::GenericConvert<int>(this, a2, a3, a4);
      break;
  }
}

void google::protobuf::util::converter::DataPiece::StringToNumber<int>(uint64_t a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = *(a1 + 16);
    if (*v7 == 32)
    {
      goto LABEL_5;
    }

    if (google::protobuf::internal::StringPiecePod::operator[]((a1 + 16), v6 - 1) == 32)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_5:
      v27 = "";
      v28 = 1;
      v25 = v7;
      v26 = v6;
      v23 = "";
      v24 = 1;
      google::protobuf::StrCat(&v27, &v25, &v23, &v19);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v19, v8);
      google::protobuf::util::Status::Status(&v20, 3, __dst, v15);
      google::protobuf::util::StatusOr<int>::StatusOr(a3, &v20);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v19.__r_.__value_.__r.__words[0];
LABEL_23:
        operator delete(v9);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v6 = *(a1 + 24);
  }

  v18 = 0;
  if (v6 < 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  if (a2(*(a1 + 16)))
  {
    google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(a3, &google::protobuf::util::Status::OK);
    *(a3 + 32) = v18;
  }

  else
  {
    v27 = "";
    v28 = 1;
    std::string::basic_string[abi:ne200100](&__dst, *(a1 + 16), *(a1 + 24));
    v10 = v16;
    p_dst = __dst;
    if (v16 >= 0)
    {
      p_dst = &__dst;
    }

    if (v16 < 0)
    {
      v10 = v15;
    }

    v25 = p_dst;
    v26 = v10;
    v23 = "";
    v24 = 1;
    google::protobuf::StrCat(&v27, &v25, &v23, &v19);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, &v19, v12);
    google::protobuf::util::Status::Status(&v20, 3, v17[0], v17[1]);
    google::protobuf::util::StatusOr<int>::StatusOr(a3, &v20);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v9 = __dst;
      goto LABEL_23;
    }
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BFC199F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::safe_strto32(void *a1, size_t a2, int *a3)
{
  if (a1)
  {
    std::string::basic_string[abi:ne200100](__p, a1, a2);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
  }

  v4 = google::protobuf::safe_strto32(__p, a3);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1BFC19AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::GenericConvert<int>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      LODWORD(v6) = *(a1 + 16);
      v11 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v11, &google::protobuf::util::Status::OK);
      goto LABEL_19;
    }

    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v6 = *(a1 + 16);
        if (v6 < 1)
        {
          v7 = -1;
        }

        else
        {
          v7 = 1;
        }

        if (!v6)
        {
          v7 = 0;
        }

        if (v7 == (v6 != 0))
        {
          v8 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
LABEL_19:
          *(a4 + 32) = v6;
LABEL_48:
          v23 = *MEMORY[0x1E69E9840];
          return;
        }

        __src = v30;
        __p = (google::protobuf::FastUInt32ToBufferLeft(v6, v30, a3) - v30);
        std::string::basic_string[abi:ne200100](v24, v30, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v24, v21);
        google::protobuf::util::Status::Status(&v26, 3, __src, __p);
        google::protobuf::util::StatusOr<int>::StatusOr(a4, &v26);
        goto LABEL_42;
      }

LABEL_27:
      google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(a1, "Wrong type. Bool, Enum, String and Cord not supported in GenericConvert.", 0x48, &v26);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v24, &v26, v14);
      google::protobuf::util::Status::Status(&__src, 3, v24[0], v24[1]);
      google::protobuf::util::StatusOr<int>::StatusOr(a4, &__src);
      if ((v30[15] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v15 = v26.__r_.__value_.__r.__words[0];
LABEL_46:
      operator delete(v15);
      goto LABEL_48;
    }

    v12 = *(a1 + 16);
    if (v12 != v12)
    {
      goto LABEL_36;
    }

    v16 = (v12 < 1) ^ (v12 > 0);
    if (!v12)
    {
      v16 = 0;
    }

    if (v12 && !v16)
    {
LABEL_36:
      __src = v30;
      __p = (google::protobuf::FastInt64ToBufferLeft(v12, v30, a3) - v30);
      std::string::basic_string[abi:ne200100](v24, v30, __p);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v24, v17);
      google::protobuf::util::Status::Status(&v26, 3, __src, __p);
      google::protobuf::util::StatusOr<int>::StatusOr(a4, &v26);
LABEL_42:
      if (v27 < 0)
      {
        operator delete(v26.__r_.__value_.__l.__size_);
      }

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v15 = v24[0];
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  switch(v5)
  {
    case 4:
      v12 = *(a1 + 16);
      if (v12 != v12)
      {
        goto LABEL_40;
      }

      v13 = -1;
      if (v12 >= 1)
      {
        v13 = 1;
      }

      if (!v12)
      {
        v13 = 0;
      }

      if (v13 != (v12 != 0))
      {
LABEL_40:
        __src = v30;
        __p = (google::protobuf::FastUInt64ToBufferLeft(v12, v30, a3) - v30);
        std::string::basic_string[abi:ne200100](v24, v30, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v24, v20);
        google::protobuf::util::Status::Status(&v26, 3, __src, __p);
        google::protobuf::util::StatusOr<int>::StatusOr(a4, &v26);
        goto LABEL_42;
      }

LABEL_47:
      v22 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v22, &google::protobuf::util::Status::OK);
      *(a4 + 32) = v12;
      goto LABEL_48;
    case 5:
      v18 = *(a1 + 16);
      v19 = *MEMORY[0x1E69E9840];

      break;
    case 6:
      v9 = *(a1 + 16);
      v10 = *MEMORY[0x1E69E9840];

      break;
    default:
      goto LABEL_27;
  }
}

void sub_1BFC19E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 + 31) < 0)
  {
    operator delete(*(v31 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToUint32(google::protobuf::util::converter::DataPiece *this@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 2);
  switch(v4)
  {
    case 5:
      break;
    case 6:
      break;
    case 9:
      google::protobuf::util::converter::DataPiece::StringToNumber<unsigned int>(this, google::protobuf::safe_strtou32, a4);
      break;
    default:
      google::protobuf::util::converter::DataPiece::GenericConvert<unsigned int>(this, a2, a3, a4);
      break;
  }
}

void google::protobuf::util::converter::DataPiece::StringToNumber<unsigned int>(uint64_t a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = *(a1 + 16);
    if (*v7 == 32)
    {
      goto LABEL_5;
    }

    if (google::protobuf::internal::StringPiecePod::operator[]((a1 + 16), v6 - 1) == 32)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_5:
      v27 = "";
      v28 = 1;
      v25 = v7;
      v26 = v6;
      v23 = "";
      v24 = 1;
      google::protobuf::StrCat(&v27, &v25, &v23, &v19);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v19, v8);
      google::protobuf::util::Status::Status(&v20, 3, __dst, v15);
      google::protobuf::util::StatusOr<unsigned int>::StatusOr(a3, &v20);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v19.__r_.__value_.__r.__words[0];
LABEL_23:
        operator delete(v9);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v6 = *(a1 + 24);
  }

  v18 = 0;
  if (v6 < 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  if (a2(*(a1 + 16)))
  {
    google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(a3, &google::protobuf::util::Status::OK);
    *(a3 + 32) = v18;
  }

  else
  {
    v27 = "";
    v28 = 1;
    std::string::basic_string[abi:ne200100](&__dst, *(a1 + 16), *(a1 + 24));
    v10 = v16;
    p_dst = __dst;
    if (v16 >= 0)
    {
      p_dst = &__dst;
    }

    if (v16 < 0)
    {
      v10 = v15;
    }

    v25 = p_dst;
    v26 = v10;
    v23 = "";
    v24 = 1;
    google::protobuf::StrCat(&v27, &v25, &v23, &v19);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, &v19, v12);
    google::protobuf::util::Status::Status(&v20, 3, v17[0], v17[1]);
    google::protobuf::util::StatusOr<unsigned int>::StatusOr(a3, &v20);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v9 = __dst;
      goto LABEL_23;
    }
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1A184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::safe_strtou32(void *a1, size_t a2, unsigned int *a3)
{
  if (a1)
  {
    std::string::basic_string[abi:ne200100](__p, a1, a2);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
  }

  v4 = google::protobuf::safe_strtou32(__p, a3);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1BFC1A280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::GenericConvert<unsigned int>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v6 = *(a1 + 16);
        if (v6 < 1)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        if (!v6)
        {
          v10 = 0;
        }

        if (v10 == (v6 != 0))
        {
          v11 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v11, &google::protobuf::util::Status::OK);
          goto LABEL_19;
        }

        __src = v28;
        __p = (google::protobuf::FastInt32ToBufferLeft(v6, v28, a3) - v28);
        std::string::basic_string[abi:ne200100](v22, v28, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v22, v20);
        google::protobuf::util::Status::Status(&v24, 3, __src, __p);
        google::protobuf::util::StatusOr<unsigned int>::StatusOr(a4, &v24);
        break;
      case 2:
        v12 = *(a1 + 16);
        if (!HIDWORD(v12) && (v12 != 0) != (v12 == 0))
        {
LABEL_29:
          v15 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v15, &google::protobuf::util::Status::OK);
          *(a4 + 32) = v12;
          goto LABEL_41;
        }

        __src = v28;
        __p = (google::protobuf::FastInt64ToBufferLeft(v12, v28, a3) - v28);
        std::string::basic_string[abi:ne200100](v22, v28, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v22, v19);
        google::protobuf::util::Status::Status(&v24, 3, __src, __p);
        google::protobuf::util::StatusOr<unsigned int>::StatusOr(a4, &v24);
        break;
      case 3:
        LODWORD(v6) = *(a1 + 16);
        v7 = google::protobuf::util::Status::Status(a4);
        google::protobuf::util::Status::operator=(v7, &google::protobuf::util::Status::OK);
LABEL_19:
        *(a4 + 32) = v6;
LABEL_41:
        v21 = *MEMORY[0x1E69E9840];
        return;
      default:
        goto LABEL_23;
    }

LABEL_36:
    if (v25 < 0)
    {
      operator delete(v24.__r_.__value_.__l.__size_);
    }

    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v14 = v22[0];
LABEL_40:
    operator delete(v14);
    goto LABEL_41;
  }

  switch(v5)
  {
    case 4:
      v12 = *(a1 + 16);
      if (!HIDWORD(v12) && (v12 != 0) != (v12 == 0))
      {
        goto LABEL_29;
      }

      __src = v28;
      __p = (google::protobuf::FastUInt64ToBufferLeft(v12, v28, a3) - v28);
      std::string::basic_string[abi:ne200100](v22, v28, __p);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v22, v18);
      google::protobuf::util::Status::Status(&v24, 3, __src, __p);
      google::protobuf::util::StatusOr<unsigned int>::StatusOr(a4, &v24);
      goto LABEL_36;
    case 5:
      v16 = *(a1 + 16);
      v17 = *MEMORY[0x1E69E9840];

      break;
    case 6:
      v8 = *(a1 + 16);
      v9 = *MEMORY[0x1E69E9840];

      break;
    default:
LABEL_23:
      google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(a1, "Wrong type. Bool, Enum, String and Cord not supported in GenericConvert.", 0x48, &v24);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v22, &v24, v13);
      google::protobuf::util::Status::Status(&__src, 3, v22[0], v22[1]);
      google::protobuf::util::StatusOr<unsigned int>::StatusOr(a4, &__src);
      if ((v28[15] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      v14 = v24.__r_.__value_.__r.__words[0];
      goto LABEL_40;
  }
}

void sub_1BFC1A61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 + 31) < 0)
  {
    operator delete(*(v31 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToInt64(google::protobuf::util::converter::DataPiece *this@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 2);
  switch(v4)
  {
    case 5:
      break;
    case 6:
      break;
    case 9:
      google::protobuf::util::converter::DataPiece::StringToNumber<long long>(this, google::protobuf::safe_strto64, a4);
      break;
    default:
      google::protobuf::util::converter::DataPiece::GenericConvert<long long>(this, a2, a3, a4);
      break;
  }
}

void google::protobuf::util::converter::DataPiece::StringToNumber<long long>(uint64_t a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = *(a1 + 16);
    if (*v7 == 32)
    {
      goto LABEL_5;
    }

    if (google::protobuf::internal::StringPiecePod::operator[]((a1 + 16), v6 - 1) == 32)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_5:
      v27 = "";
      v28 = 1;
      v25 = v7;
      v26 = v6;
      v23 = "";
      v24 = 1;
      google::protobuf::StrCat(&v27, &v25, &v23, &v19);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v19, v8);
      google::protobuf::util::Status::Status(&v20, 3, __dst, v15);
      google::protobuf::util::StatusOr<long long>::StatusOr(a3, &v20);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v19.__r_.__value_.__r.__words[0];
LABEL_23:
        operator delete(v9);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v6 = *(a1 + 24);
  }

  v18 = 0;
  if (v6 < 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  if (a2(*(a1 + 16)))
  {
    google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(a3, &google::protobuf::util::Status::OK);
    *(a3 + 32) = v18;
  }

  else
  {
    v27 = "";
    v28 = 1;
    std::string::basic_string[abi:ne200100](&__dst, *(a1 + 16), *(a1 + 24));
    v10 = v16;
    p_dst = __dst;
    if (v16 >= 0)
    {
      p_dst = &__dst;
    }

    if (v16 < 0)
    {
      v10 = v15;
    }

    v25 = p_dst;
    v26 = v10;
    v23 = "";
    v24 = 1;
    google::protobuf::StrCat(&v27, &v25, &v23, &v19);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, &v19, v12);
    google::protobuf::util::Status::Status(&v20, 3, v17[0], v17[1]);
    google::protobuf::util::StatusOr<long long>::StatusOr(a3, &v20);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v9 = __dst;
      goto LABEL_23;
    }
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1A904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::safe_strto64(void *a1, size_t a2, int64_t *a3)
{
  if (a1)
  {
    std::string::basic_string[abi:ne200100](__p, a1, a2);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
  }

  v4 = google::protobuf::safe_strto64(__p, a3);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1BFC1AA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::GenericConvert<long long>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v6 = *(a1 + 16);
        v10 = google::protobuf::util::Status::Status(a4);
        google::protobuf::util::Status::operator=(v10, &google::protobuf::util::Status::OK);
        goto LABEL_24;
      case 2:
        v6 = *(a1 + 16);
        v15 = google::protobuf::util::Status::Status(a4);
        google::protobuf::util::Status::operator=(v15, &google::protobuf::util::Status::OK);
        goto LABEL_24;
      case 3:
        v6 = *(a1 + 16);
        v7 = google::protobuf::util::Status::Status(a4);
        google::protobuf::util::Status::operator=(v7, &google::protobuf::util::Status::OK);
LABEL_24:
        *(a4 + 32) = v6;
LABEL_25:
        v16 = *MEMORY[0x1E69E9840];
        return;
    }

    goto LABEL_19;
  }

  switch(v5)
  {
    case 4:
      v6 = *(a1 + 16);
      v11 = -1;
      if (v6 >= 1)
      {
        v11 = 1;
      }

      if (!v6)
      {
        v11 = 0;
      }

      if (v11 == (v6 != 0))
      {
        v12 = google::protobuf::util::Status::Status(a4);
        google::protobuf::util::Status::operator=(v12, &google::protobuf::util::Status::OK);
        goto LABEL_24;
      }

      __src = v26;
      __p = (google::protobuf::FastUInt64ToBufferLeft(v6, v26, a3) - v26);
      std::string::basic_string[abi:ne200100](v20, v26, __p);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v20, v19);
      google::protobuf::util::Status::Status(&v22, 3, __src, __p);
      google::protobuf::util::StatusOr<long long>::StatusOr(a4, &v22);
      if (v23 < 0)
      {
        operator delete(v22.__r_.__value_.__l.__size_);
      }

      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v14 = v20[0];
LABEL_33:
      operator delete(v14);
      goto LABEL_25;
    case 5:
      v17 = *(a1 + 16);
      v18 = *MEMORY[0x1E69E9840];

      break;
    case 6:
      v8 = *(a1 + 16);
      v9 = *MEMORY[0x1E69E9840];

      break;
    default:
LABEL_19:
      google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(a1, "Wrong type. Bool, Enum, String and Cord not supported in GenericConvert.", 0x48, &v22);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v20, &v22, v13);
      google::protobuf::util::Status::Status(&__src, 3, v20[0], v20[1]);
      google::protobuf::util::StatusOr<long long>::StatusOr(a4, &__src);
      if ((v26[15] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v14 = v22.__r_.__value_.__r.__words[0];
      goto LABEL_33;
  }
}

void sub_1BFC1ACA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToUint64(google::protobuf::util::converter::DataPiece *this@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 2);
  switch(v4)
  {
    case 5:
      break;
    case 6:
      break;
    case 9:
      google::protobuf::util::converter::DataPiece::StringToNumber<unsigned long long>(this, google::protobuf::safe_strtou64, a4);
      break;
    default:
      google::protobuf::util::converter::DataPiece::GenericConvert<unsigned long long>(this, a2, a3, a4);
      break;
  }
}

void google::protobuf::util::converter::DataPiece::StringToNumber<unsigned long long>(uint64_t a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = *(a1 + 16);
    if (*v7 == 32)
    {
      goto LABEL_5;
    }

    if (google::protobuf::internal::StringPiecePod::operator[]((a1 + 16), v6 - 1) == 32)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_5:
      v27 = "";
      v28 = 1;
      v25 = v7;
      v26 = v6;
      v23 = "";
      v24 = 1;
      google::protobuf::StrCat(&v27, &v25, &v23, &v19);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v19, v8);
      google::protobuf::util::Status::Status(&v20, 3, __dst, v15);
      google::protobuf::util::StatusOr<unsigned long long>::StatusOr(a3, &v20);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v19.__r_.__value_.__r.__words[0];
LABEL_23:
        operator delete(v9);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v6 = *(a1 + 24);
  }

  v18 = 0;
  if (v6 < 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  if (a2(*(a1 + 16)))
  {
    google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(a3, &google::protobuf::util::Status::OK);
    *(a3 + 32) = v18;
  }

  else
  {
    v27 = "";
    v28 = 1;
    std::string::basic_string[abi:ne200100](&__dst, *(a1 + 16), *(a1 + 24));
    v10 = v16;
    p_dst = __dst;
    if (v16 >= 0)
    {
      p_dst = &__dst;
    }

    if (v16 < 0)
    {
      v10 = v15;
    }

    v25 = p_dst;
    v26 = v10;
    v23 = "";
    v24 = 1;
    google::protobuf::StrCat(&v27, &v25, &v23, &v19);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, &v19, v12);
    google::protobuf::util::Status::Status(&v20, 3, v17[0], v17[1]);
    google::protobuf::util::StatusOr<unsigned long long>::StatusOr(a3, &v20);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v9 = __dst;
      goto LABEL_23;
    }
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1AF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::safe_strtou64(void *a1, size_t a2, unint64_t *a3)
{
  if (a1)
  {
    std::string::basic_string[abi:ne200100](__p, a1, a2);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
  }

  v4 = google::protobuf::safe_strtou64(__p, a3);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1BFC1B07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::GenericConvert<unsigned long long>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v6 = *(a1 + 16);
        v10 = -1;
        if (v6 >= 1)
        {
          v10 = 1;
        }

        if (!v6)
        {
          v10 = 0;
        }

        if (v10 == (*(a1 + 16) != 0))
        {
          goto LABEL_29;
        }

        __src = v28;
        __p = (google::protobuf::FastInt32ToBufferLeft(v6, v28, a3) - v28);
        std::string::basic_string[abi:ne200100](v22, v28, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v22, v20);
        google::protobuf::util::Status::Status(&v24, 3, __src, __p);
        google::protobuf::util::StatusOr<unsigned long long>::StatusOr(a4, &v24);
        break;
      case 2:
        v6 = *(a1 + 16);
        v14 = -1;
        if (v6 >= 1)
        {
          v14 = 1;
        }

        if (v6)
        {
          v15 = 1;
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        if (v14 == v15)
        {
LABEL_29:
          v16 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v16, &google::protobuf::util::Status::OK);
          goto LABEL_30;
        }

        __src = v28;
        __p = (google::protobuf::FastInt64ToBufferLeft(v6, v28, a3) - v28);
        std::string::basic_string[abi:ne200100](v22, v28, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, v22, v21);
        google::protobuf::util::Status::Status(&v24, 3, __src, __p);
        google::protobuf::util::StatusOr<unsigned long long>::StatusOr(a4, &v24);
        break;
      case 3:
        v6 = *(a1 + 16);
        v7 = google::protobuf::util::Status::Status(a4);
        google::protobuf::util::Status::operator=(v7, &google::protobuf::util::Status::OK);
LABEL_30:
        *(a4 + 32) = v6;
LABEL_31:
        v17 = *MEMORY[0x1E69E9840];
        return;
      default:
        goto LABEL_19;
    }

    if (v25 < 0)
    {
      operator delete(v24.__r_.__value_.__l.__size_);
    }

    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v13 = v22[0];
LABEL_41:
    operator delete(v13);
    goto LABEL_31;
  }

  switch(v5)
  {
    case 4:
      v6 = *(a1 + 16);
      v11 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v11, &google::protobuf::util::Status::OK);
      goto LABEL_30;
    case 5:
      v18 = *(a1 + 16);
      v19 = *MEMORY[0x1E69E9840];

      break;
    case 6:
      v8 = *(a1 + 16);
      v9 = *MEMORY[0x1E69E9840];

      break;
    default:
LABEL_19:
      google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(a1, "Wrong type. Bool, Enum, String and Cord not supported in GenericConvert.", 0x48, &v24);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v22, &v24, v12);
      google::protobuf::util::Status::Status(&__src, 3, v22[0], v22[1]);
      google::protobuf::util::StatusOr<unsigned long long>::StatusOr(a4, &__src);
      if ((v28[15] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      v13 = v24.__r_.__value_.__r.__words[0];
      goto LABEL_41;
  }
}

void sub_1BFC1B3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToDouble(google::protobuf::util::converter::DataPiece *this@<X0>, char *a2@<X1>, char *a3@<X2>, google::protobuf::util::Status *a4@<X8>)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  if (v6 == 9)
  {
    if (google::protobuf::internal::StringPiecePod::operator==(this + 16, "Infinity"))
    {
      v9 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v9, &google::protobuf::util::Status::OK);
      v10 = 0x7FF0000000000000;
    }

    else if (google::protobuf::internal::StringPiecePod::operator==(this + 16, "-Infinity"))
    {
      v12 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v12, &google::protobuf::util::Status::OK);
      v10 = 0xFFF0000000000000;
    }

    else
    {
      if (!google::protobuf::internal::StringPiecePod::operator==(this + 16, "NaN"))
      {
        google::protobuf::util::converter::DataPiece::StringToNumber<double>(this, google::protobuf::safe_strtod, &v22);
        if (v22 || (v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          google::protobuf::util::Status::Status(a4, &v22);
          *(a4 + 4) = v25;
        }

        else
        {
          v28[0] = "";
          v28[1] = 1;
          v15 = *(this + 3);
          v27[0] = *(this + 2);
          v27[1] = v15;
          v26[0] = "";
          v26[1] = 1;
          google::protobuf::StrCat(v28, v27, v26, &v17);
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v18, &v17, v16);
          google::protobuf::util::Status::Status(&v19, 3, v18[0], v18[1]);
          google::protobuf::util::StatusOr<double>::StatusOr(a4, &v19);
          if (v21 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }

        goto LABEL_14;
      }

      v13 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v13, &google::protobuf::util::Status::OK);
      v10 = 0x7FF8000000000000;
    }

    *(a4 + 4) = v10;
LABEL_14:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v6 == 6)
  {
    v7 = *(this + 4);
    v8 = google::protobuf::util::Status::Status(a4);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a4 + 4) = v7;
    goto LABEL_14;
  }

  v11 = *MEMORY[0x1E69E9840];

  google::protobuf::util::converter::DataPiece::GenericConvert<double>(this, a2, a3, a4);
}

void sub_1BFC1B684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::StringPiecePod::operator==(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x8000000000000000) != 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  v3 = *a1;
  google::protobuf::StringPiece::StringPiece(__s2, a2);
  if (v2 != __s2[1])
  {
    return 0;
  }

  result = 1;
  if (v2)
  {
    if (__s2[0] != v3)
    {
      return memcmp(v3, __s2[0], v2) == 0;
    }
  }

  return result;
}

void google::protobuf::util::converter::DataPiece::StringToNumber<double>(uint64_t a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = *(a1 + 16);
    if (*v7 == 32)
    {
      goto LABEL_5;
    }

    if (google::protobuf::internal::StringPiecePod::operator[]((a1 + 16), v6 - 1) == 32)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_5:
      v27 = "";
      v28 = 1;
      v25 = v7;
      v26 = v6;
      v23 = "";
      v24 = 1;
      google::protobuf::StrCat(&v27, &v25, &v23, &v19);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v19, v8);
      google::protobuf::util::Status::Status(&v20, 3, __dst, v15);
      google::protobuf::util::StatusOr<double>::StatusOr(a3, &v20);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v19.__r_.__value_.__r.__words[0];
LABEL_23:
        operator delete(v9);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v6 = *(a1 + 24);
  }

  v18 = 0;
  if (v6 < 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  if (a2(*(a1 + 16)))
  {
    google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(a3, &google::protobuf::util::Status::OK);
    *(a3 + 32) = v18;
  }

  else
  {
    v27 = "";
    v28 = 1;
    std::string::basic_string[abi:ne200100](&__dst, *(a1 + 16), *(a1 + 24));
    v10 = v16;
    p_dst = __dst;
    if (v16 >= 0)
    {
      p_dst = &__dst;
    }

    if (v16 < 0)
    {
      v10 = v15;
    }

    v25 = p_dst;
    v26 = v10;
    v23 = "";
    v24 = 1;
    google::protobuf::StrCat(&v27, &v25, &v23, &v19);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, &v19, v12);
    google::protobuf::util::Status::Status(&v20, 3, v17[0], v17[1]);
    google::protobuf::util::StatusOr<double>::StatusOr(a3, &v20);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v9 = __dst;
      goto LABEL_23;
    }
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1B978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

BOOL google::protobuf::safe_strtod(void *a1, size_t a2, double *a3)
{
  if (a1)
  {
    std::string::basic_string[abi:ne200100](__p, a1, a2);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v4 = __p;
    v8 = 0;
  }

  v5 = google::protobuf::safe_strtod(v4, a3, a3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1BFC1BA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::GenericConvert<double>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v17 = *(a1 + 16);
        if (v17 < 1)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

        if (!v17)
        {
          v18 = 0;
        }

        v19 = -1.0;
        if (v17 > 0)
        {
          v19 = 1.0;
        }

        if (!v17)
        {
          v19 = 0.0;
        }

        if (v19 == v18)
        {
          v20 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v20, &google::protobuf::util::Status::OK);
          v10 = v17;
          goto LABEL_54;
        }

        __src = v45;
        __p = (google::protobuf::FastInt32ToBufferLeft(v17, v45, a3) - v45);
        std::string::basic_string[abi:ne200100](&v38, v45, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v38, v33);
        google::protobuf::util::Status::Status(&v41, 3, __src, __p);
        google::protobuf::util::StatusOr<double>::StatusOr(a4, &v41);
LABEL_66:
        if (v42 < 0)
        {
          operator delete(v41.__r_.__value_.__l.__size_);
        }

        if (v40 < 0)
        {
          v32 = v38;
          goto LABEL_70;
        }

        goto LABEL_71;
      case 2:
        v26 = *(a1 + 16);
        v27 = -1;
        if (v26 >= 1)
        {
          v27 = 1;
        }

        if (!v26)
        {
          v27 = 0;
        }

        v28 = -1.0;
        if (v26 > 0)
        {
          v28 = 1.0;
        }

        if (!v26)
        {
          v28 = 0.0;
        }

        if (v28 == v27)
        {
          v29 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v29, &google::protobuf::util::Status::OK);
          v10 = v26;
          goto LABEL_54;
        }

        __src = v45;
        __p = (google::protobuf::FastInt64ToBufferLeft(v26, v45, a3) - v45);
        std::string::basic_string[abi:ne200100](&v38, v45, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v38, v36);
        google::protobuf::util::Status::Status(&v41, 3, __src, __p);
        google::protobuf::util::StatusOr<double>::StatusOr(a4, &v41);
        goto LABEL_66;
      case 3:
        v6 = *(a1 + 16);
        v7 = 0.0;
        if (v6)
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        if (v6)
        {
          v7 = 1.0;
        }

        if (v7 == v8)
        {
          v9 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v9, &google::protobuf::util::Status::OK);
          v10 = v6;
LABEL_54:
          *(a4 + 32) = v10;
          goto LABEL_71;
        }

        __src = v45;
        __p = (google::protobuf::FastUInt32ToBufferLeft(v6, v45, a3) - v45);
        std::string::basic_string[abi:ne200100](&v38, v45, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v38, v35);
        google::protobuf::util::Status::Status(&v41, 3, __src, __p);
        google::protobuf::util::StatusOr<double>::StatusOr(a4, &v41);
        goto LABEL_66;
    }

    goto LABEL_43;
  }

  if (v5 == 4)
  {
    v21 = *(a1 + 16);
    v22 = 0.0;
    if (v21)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.0;
    }

    if (v21)
    {
      v22 = 1.0;
    }

    if (v22 == v23)
    {
      v24 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v24, &google::protobuf::util::Status::OK);
      v10 = v21;
      goto LABEL_54;
    }

    __src = v45;
    __p = (google::protobuf::FastUInt64ToBufferLeft(v21, v45, a3) - v45);
    std::string::basic_string[abi:ne200100](&v38, v45, __p);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v38, v34);
    google::protobuf::util::Status::Status(&v41, 3, __src, __p);
    google::protobuf::util::StatusOr<double>::StatusOr(a4, &v41);
    goto LABEL_66;
  }

  if (v5 == 5)
  {
    v12 = *(a1 + 16);
    v30 = google::protobuf::util::Status::Status(a4);
    google::protobuf::util::Status::operator=(v30, &google::protobuf::util::Status::OK);
    goto LABEL_56;
  }

  if (v5 != 6)
  {
LABEL_43:
    google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(a1, "Wrong type. Bool, Enum, String and Cord not supported in GenericConvert.", 0x48, &v41);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v38, &v41, v25);
    google::protobuf::util::Status::Status(&__src, 3, v38, v39);
    google::protobuf::util::StatusOr<double>::StatusOr(a4, &__src);
    goto LABEL_58;
  }

  v11 = *(a1 + 16);
  v12 = v11;
  v13 = -1.0;
  if (v11 > 0.0)
  {
    v13 = 1.0;
  }

  if (v11 == 0.0)
  {
    v13 = *(a1 + 16);
  }

  v14 = v13;
  v15 = -1.0;
  if (v11 > 0.0)
  {
    v15 = 1.0;
  }

  if (v11 == 0.0)
  {
    v15 = v11;
  }

  if (v15 == v14)
  {
    v16 = google::protobuf::util::Status::Status(a4);
    google::protobuf::util::Status::operator=(v16, &google::protobuf::util::Status::OK);
LABEL_56:
    *(a4 + 32) = v12;
    goto LABEL_71;
  }

  google::protobuf::util::converter::FloatAsString(v11, a2, &v41);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v38, &v41, v31);
  google::protobuf::util::Status::Status(&__src, 3, v38, v39);
  google::protobuf::util::StatusOr<double>::StatusOr(a4, &__src);
LABEL_58:
  if ((v45[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    v32 = v41.__r_.__value_.__r.__words[0];
LABEL_70:
    operator delete(v32);
  }

LABEL_71:
  v37 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1BEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToFloat(google::protobuf::util::converter::DataPiece *this@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(this + 2);
  if (v6 != 9)
  {
    if (v6 == 5)
    {
      v7 = *(this + 2);
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || fabs(v7) <= 3.40282347e38)
      {
        v13 = google::protobuf::util::Status::Status(a4);
        google::protobuf::util::Status::operator=(v13, &google::protobuf::util::Status::OK);
        v14 = v7;
        *(a4 + 32) = v14;
      }

      else
      {
        google::protobuf::util::converter::DoubleAsString(*(this + 2), a2, v15);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, v15, v11);
        google::protobuf::util::Status::Status(&v18, 3, v17[0], v17[1]);
        google::protobuf::util::StatusOr<float>::StatusOr(a4, &v18);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15[0]);
        }
      }
    }

    else
    {

      google::protobuf::util::converter::DataPiece::GenericConvert<float>(this, a2, a3, a4);
    }

    return;
  }

  if (google::protobuf::internal::StringPiecePod::operator==(this + 16, "Infinity"))
  {
    v8 = google::protobuf::util::Status::Status(a4);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    v9 = 2139095040;
LABEL_19:
    *(a4 + 32) = v9;
    return;
  }

  if (google::protobuf::internal::StringPiecePod::operator==(this + 16, "-Infinity"))
  {
    v10 = google::protobuf::util::Status::Status(a4);
    google::protobuf::util::Status::operator=(v10, &google::protobuf::util::Status::OK);
    v9 = -8388608;
    goto LABEL_19;
  }

  if (google::protobuf::internal::StringPiecePod::operator==(this + 16, "NaN"))
  {
    v12 = google::protobuf::util::Status::Status(a4);
    google::protobuf::util::Status::operator=(v12, &google::protobuf::util::Status::OK);
    v9 = 2143289344;
    goto LABEL_19;
  }

  google::protobuf::util::converter::DataPiece::StringToNumber<float>(this, google::protobuf::util::converter::SafeStrToFloat, a4);
}

void sub_1BFC1C1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::StringToNumber<float>(uint64_t a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = *(a1 + 16);
    if (*v7 == 32)
    {
      goto LABEL_5;
    }

    if (google::protobuf::internal::StringPiecePod::operator[]((a1 + 16), v6 - 1) == 32)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_5:
      v27 = "";
      v28 = 1;
      v25 = v7;
      v26 = v6;
      v23 = "";
      v24 = 1;
      google::protobuf::StrCat(&v27, &v25, &v23, &v19);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v19, v8);
      google::protobuf::util::Status::Status(&v20, 3, __dst, v15);
      google::protobuf::util::StatusOr<float>::StatusOr(a3, &v20);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v19.__r_.__value_.__r.__words[0];
LABEL_23:
        operator delete(v9);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v6 = *(a1 + 24);
  }

  v18 = 0;
  if (v6 < 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  if (a2(*(a1 + 16)))
  {
    google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(a3, &google::protobuf::util::Status::OK);
    *(a3 + 32) = v18;
  }

  else
  {
    v27 = "";
    v28 = 1;
    std::string::basic_string[abi:ne200100](&__dst, *(a1 + 16), *(a1 + 24));
    v10 = v16;
    p_dst = __dst;
    if (v16 >= 0)
    {
      p_dst = &__dst;
    }

    if (v16 < 0)
    {
      v10 = v15;
    }

    v25 = p_dst;
    v26 = v10;
    v23 = "";
    v24 = 1;
    google::protobuf::StrCat(&v27, &v25, &v23, &v19);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, &v19, v12);
    google::protobuf::util::Status::Status(&v20, 3, v17[0], v17[1]);
    google::protobuf::util::StatusOr<float>::StatusOr(a3, &v20);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v9 = __dst;
      goto LABEL_23;
    }
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1C420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::util::converter::DataPiece::GenericConvert<float>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v13 = *(a1 + 16);
        if (v13 < 1)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }

        if (!v13)
        {
          v14 = 0;
        }

        v15 = -1.0;
        if (v13 > 0)
        {
          v15 = 1.0;
        }

        if (!v13)
        {
          v15 = 0.0;
        }

        if (v15 == v14)
        {
          v16 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v16, &google::protobuf::util::Status::OK);
          v10 = v13;
          goto LABEL_45;
        }

        __src = v44;
        __p = (google::protobuf::FastInt32ToBufferLeft(v13, v44, a3) - v44);
        std::string::basic_string[abi:ne200100](&v37, v44, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v37, v32);
        google::protobuf::util::Status::Status(&v40, 3, __src, __p);
        google::protobuf::util::StatusOr<float>::StatusOr(a4, &v40);
LABEL_67:
        if (v41 < 0)
        {
          operator delete(v40.__r_.__value_.__l.__size_);
        }

        if (v39 < 0)
        {
          v31 = v37;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 2:
        v22 = *(a1 + 16);
        v23 = -1;
        if (v22 >= 1)
        {
          v23 = 1;
        }

        if (!v22)
        {
          v23 = 0;
        }

        v24 = -1.0;
        if (v22 > 0)
        {
          v24 = 1.0;
        }

        if (!v22)
        {
          v24 = 0.0;
        }

        if (v24 == v23)
        {
          v25 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v25, &google::protobuf::util::Status::OK);
          v10 = v22;
          goto LABEL_45;
        }

        __src = v44;
        __p = (google::protobuf::FastInt64ToBufferLeft(v22, v44, a3) - v44);
        std::string::basic_string[abi:ne200100](&v37, v44, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v37, v35);
        google::protobuf::util::Status::Status(&v40, 3, __src, __p);
        google::protobuf::util::StatusOr<float>::StatusOr(a4, &v40);
        goto LABEL_67;
      case 3:
        v6 = *(a1 + 16);
        v7 = 0.0;
        if (v6)
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }

        if (v6)
        {
          v7 = 1.0;
        }

        if (v7 == v8)
        {
          v9 = google::protobuf::util::Status::Status(a4);
          google::protobuf::util::Status::operator=(v9, &google::protobuf::util::Status::OK);
          v10 = v6;
LABEL_45:
          *(a4 + 32) = v10;
          goto LABEL_72;
        }

        __src = v44;
        __p = (google::protobuf::FastUInt32ToBufferLeft(v6, v44, a3) - v44);
        std::string::basic_string[abi:ne200100](&v37, v44, __p);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v37, v34);
        google::protobuf::util::Status::Status(&v40, 3, __src, __p);
        google::protobuf::util::StatusOr<float>::StatusOr(a4, &v40);
        goto LABEL_67;
    }

    goto LABEL_34;
  }

  if (v5 == 4)
  {
    v17 = *(a1 + 16);
    v18 = 0.0;
    if (v17)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    if (v17)
    {
      v18 = 1.0;
    }

    if (v18 == v19)
    {
      v20 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v20, &google::protobuf::util::Status::OK);
      v10 = v17;
      goto LABEL_45;
    }

    __src = v44;
    __p = (google::protobuf::FastUInt64ToBufferLeft(v17, v44, a3) - v44);
    std::string::basic_string[abi:ne200100](&v37, v44, __p);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__src, &v37, v33);
    google::protobuf::util::Status::Status(&v40, 3, __src, __p);
    google::protobuf::util::StatusOr<float>::StatusOr(a4, &v40);
    goto LABEL_67;
  }

  if (v5 != 5)
  {
    if (v5 != 6)
    {
LABEL_34:
      google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(a1, "Wrong type. Bool, Enum, String and Cord not supported in GenericConvert.", 0x48, &v40);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v37, &v40, v21);
      google::protobuf::util::Status::Status(&__src, 3, v37, v38);
      google::protobuf::util::StatusOr<float>::StatusOr(a4, &__src);
      goto LABEL_59;
    }

    v11 = *(a1 + 16);
    v12 = google::protobuf::util::Status::Status(a4);
    google::protobuf::util::Status::operator=(v12, &google::protobuf::util::Status::OK);
LABEL_57:
    *(a4 + 32) = v11;
    goto LABEL_72;
  }

  v26 = *(a1 + 16);
  v11 = v26;
  if (v26 == v11)
  {
    v27 = -1.0;
    if (v26 > 0.0)
    {
      v27 = 1.0;
    }

    if (v26 == 0.0)
    {
      v27 = *(a1 + 16);
    }

    v28 = -1.0;
    if (v11 > 0.0)
    {
      v28 = 1.0;
    }

    if (v11 == 0.0)
    {
      v28 = v26;
    }

    if (v27 == v28)
    {
      v29 = google::protobuf::util::Status::Status(a4);
      google::protobuf::util::Status::operator=(v29, &google::protobuf::util::Status::OK);
      goto LABEL_57;
    }
  }

  google::protobuf::util::converter::DoubleAsString(v26, a2, &v40);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v37, &v40, v30);
  google::protobuf::util::Status::Status(&__src, 3, v37, v38);
  google::protobuf::util::StatusOr<float>::StatusOr(a4, &__src);
LABEL_59:
  if ((v44[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    v31 = v40.__r_.__value_.__r.__words[0];
LABEL_71:
    operator delete(v31);
  }

LABEL_72:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1C908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToBool(google::protobuf::util::converter::DataPiece *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 == 9)
  {

    google::protobuf::util::converter::DataPiece::StringToNumber<BOOL>(this, google::protobuf::safe_strtob, a2);
  }

  else if (v4 == 7)
  {
    v5 = google::protobuf::util::Status::Status(a2);
    google::protobuf::util::Status::operator=(v5, &google::protobuf::util::Status::OK);
    *(a2 + 32) = *(this + 16);
  }

  else
  {
    google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(this, "Wrong type. Cannot convert to Bool.", 0x23, &v7);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v8, &v7, v6);
    google::protobuf::util::Status::Status(&v9, 3, v8[0], v8[1]);
    google::protobuf::util::StatusOr<BOOL>::StatusOr(a2, &v9);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BFC1CAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::StringToNumber<BOOL>(uint64_t a1@<X0>, unsigned int (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = *(a1 + 16);
    if (*v7 == 32)
    {
      goto LABEL_5;
    }

    if (google::protobuf::internal::StringPiecePod::operator[]((a1 + 16), v6 - 1) == 32)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_5:
      v27 = "";
      v28 = 1;
      v25 = v7;
      v26 = v6;
      v23 = "";
      v24 = 1;
      google::protobuf::StrCat(&v27, &v25, &v23, &v19);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v19, v8);
      google::protobuf::util::Status::Status(&v20, 3, __dst, v15);
      google::protobuf::util::StatusOr<BOOL>::StatusOr(a3, &v20);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = v19.__r_.__value_.__r.__words[0];
LABEL_23:
        operator delete(v9);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v6 = *(a1 + 24);
  }

  v18 = 0;
  if (v6 < 0)
  {
    google::protobuf::util::converter::DataPiece::StringToNumber<int>();
  }

  if (a2(*(a1 + 16)))
  {
    google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(a3, &google::protobuf::util::Status::OK);
    *(a3 + 32) = v18;
  }

  else
  {
    v27 = "";
    v28 = 1;
    std::string::basic_string[abi:ne200100](&__dst, *(a1 + 16), *(a1 + 24));
    v10 = v16;
    p_dst = __dst;
    if (v16 >= 0)
    {
      p_dst = &__dst;
    }

    if (v16 < 0)
    {
      v10 = v15;
    }

    v25 = p_dst;
    v26 = v10;
    v23 = "";
    v24 = 1;
    google::protobuf::StrCat(&v27, &v25, &v23, &v19);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v17, &v19, v12);
    google::protobuf::util::Status::Status(&v20, 3, v17[0], v17[1]);
    google::protobuf::util::StatusOr<BOOL>::StatusOr(a3, &v20);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v9 = __dst;
      goto LABEL_23;
    }
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BFC1CCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v15 = *(a1 + 16);
        v31 = v33;
        v32 = google::protobuf::FastUInt32ToBufferLeft(v15, v33, a3) - v33;
        std::string::basic_string[abi:ne200100](a4, v33, v32);
      }

      else
      {
        if (v5 != 4)
        {
          v6 = *(a1 + 16);
          v7 = *MEMORY[0x1E69E9840];

          google::protobuf::util::converter::DoubleAsString(v6, a2, a4);
          return;
        }

        v18 = *(a1 + 16);
        v31 = v33;
        v32 = google::protobuf::FastUInt64ToBufferLeft(v18, v33, a3) - v33;
        std::string::basic_string[abi:ne200100](a4, v33, v32);
      }

LABEL_49:
      v23 = *MEMORY[0x1E69E9840];
      return;
    }

    if (v5 == 1)
    {
      v12 = *(a1 + 16);
      v31 = v33;
      v32 = google::protobuf::FastInt32ToBufferLeft(v12, v33, a3) - v33;
      std::string::basic_string[abi:ne200100](a4, v33, v32);
      goto LABEL_49;
    }

    if (v5 == 2)
    {
      v10 = *(a1 + 16);
      v31 = v33;
      v32 = google::protobuf::FastInt64ToBufferLeft(v10, v33, a3) - v33;
      std::string::basic_string[abi:ne200100](a4, v33, v32);
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  if (v5 > 8)
  {
    switch(v5)
    {
      case 9:
        v31 = "";
        v32 = 1;
        std::string::basic_string[abi:ne200100](&__p, *(a1 + 16), *(a1 + 24));
        v16 = SHIBYTE(v26);
        p_p = __p;
        if (v26 >= 0)
        {
          p_p = &__p;
        }

        if (v26 < 0)
        {
          v16 = v25;
        }

        v29 = p_p;
        v30 = v16;
        v27 = "";
        v28 = 1;
        google::protobuf::StrCat(&v31, &v29, &v27, a4);
        break;
      case 10:
        __p = 0;
        v25 = 0;
        v26 = 0;
        v19 = *(a1 + 24);
        if ((v19 & 0x8000000000000000) != 0)
        {
          __assert_rtn("StringPiece", "stringpiece.h", 230, "len >= 0");
        }

        google::protobuf::WebSafeBase64Escape(*(a1 + 16), v19, &__p);
        v20 = SHIBYTE(v26);
        v21 = __p;
        if (v26 >= 0)
        {
          v21 = &__p;
        }

        v31 = "";
        v32 = 1;
        if (v26 < 0)
        {
          v20 = v25;
        }

        v29 = v21;
        v30 = v20;
        v27 = "";
        v28 = 1;
        google::protobuf::StrCat(&v31, &v29, &v27, a4);
        break;
      case 11:
        v8 = *MEMORY[0x1E69E9840];
        v9 = "null";
LABEL_22:

        std::string::basic_string[abi:ne200100]<0>(a4, v9);
        return;
      default:
        goto LABEL_44;
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_49;
  }

  if (v5 == 6)
  {
    v13 = *(a1 + 16);
    v14 = *MEMORY[0x1E69E9840];

    google::protobuf::util::converter::FloatAsString(v13, a2, a4);
    return;
  }

  if (v5 == 7)
  {
    if (*(a1 + 16))
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    v11 = *MEMORY[0x1E69E9840];
    goto LABEL_22;
  }

LABEL_44:
  if (!a2)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_49;
  }

  v22 = *MEMORY[0x1E69E9840];

  std::string::basic_string[abi:ne200100](a4, a2, a3);
}

void sub_1BFC1D160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToString(google::protobuf::util::converter::DataPiece *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 == 10)
  {
    memset(&__str, 0, sizeof(__str));
    v4 = *(this + 3);
    if ((v4 & 0x8000000000000000) != 0)
    {
      __assert_rtn("StringPiece", "stringpiece.h", 230, "len >= 0");
    }

    google::protobuf::Base64Escape(*(this + 2), v4, &__str);
    google::protobuf::util::Status::Status(a2);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    google::protobuf::util::Status::operator=(a2, &google::protobuf::util::Status::OK);
    std::string::operator=((a2 + 32), &__str);
    goto LABEL_6;
  }

  if (v3 == 9)
  {
    std::string::basic_string[abi:ne200100](&__str, *(this + 2), *(this + 3));
    google::protobuf::util::Status::Status(a2);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    google::protobuf::util::Status::operator=(a2, &google::protobuf::util::Status::OK);
    std::string::operator=((a2 + 32), &__str);
LABEL_6:
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v5 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_12;
  }

  google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(this, "Cannot convert to string.", 0x19, &__p);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v8, &__p, v6);
  google::protobuf::util::Status::Status(&__str, 3, v8[0], v8[1]);
  google::protobuf::util::StatusOr<std::string>::StatusOr(a2, &__str);
  if (v10 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = __p.__r_.__value_.__r.__words[0];
LABEL_12:
    operator delete(v5);
  }
}

void sub_1BFC1D2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_objecta, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, void *__p, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::DataPiece::ToBytes(google::protobuf::util::converter::DataPiece *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 == 9)
  {
    memset(&v14, 0, sizeof(v14));
    v6 = *(this + 3);
    if ((v6 & 0x8000000000000000) != 0)
    {
      __assert_rtn("StringPiece", "stringpiece.h", 230, "len >= 0");
    }

    if ((google::protobuf::util::converter::DataPiece::DecodeBase64(this, *(this + 2), v6, &v14) & 1) == 0)
    {
      google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(this, "Invalid data in input.", 0x16, &__p);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v11, &__p, v9);
      google::protobuf::util::Status::Status(&__str, 3, v11[0], v11[1]);
      google::protobuf::util::StatusOr<std::string>::StatusOr(a2, &__str);
      if (v13 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__size_);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      size = __p.__r_.__value_.__r.__words[0];
      goto LABEL_14;
    }

    google::protobuf::util::Status::Status(a2);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    google::protobuf::util::Status::operator=(a2, &google::protobuf::util::Status::OK);
    std::string::operator=((a2 + 32), &v14);
  }

  else
  {
    if (v4 == 10)
    {
      std::string::basic_string[abi:ne200100](&__str, *(this + 2), *(this + 3));
      google::protobuf::util::Status::Status(a2);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      google::protobuf::util::Status::operator=(a2, &google::protobuf::util::Status::OK);
      std::string::operator=((a2 + 32), &__str);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v5 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }

    google::protobuf::util::converter::DataPiece::ValueAsStringOrDefault(this, "Wrong type. Only String or Bytes can be converted to Bytes.", 0x3B, &v14);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__p, &v14, v7);
    google::protobuf::util::Status::Status(&__str, 3, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_);
    google::protobuf::util::StatusOr<std::string>::StatusOr(a2, &__str);
    if (v13 < 0)
    {
      size = __str.__r_.__value_.__l.__size_;
LABEL_14:
      operator delete(size);
    }
  }

LABEL_15:
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

  v5 = v14.__r_.__value_.__r.__words[0];
LABEL_17:
  operator delete(v5);
}

void sub_1BFC1D56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::DataPiece::DecodeBase64(uint64_t a1, google::protobuf *a2, const char *a3, std::string *a4)
{
  v4 = a4;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  if (!google::protobuf::WebSafeBase64Unescape(a2, a3, a4))
  {
    if (!google::protobuf::Base64Unescape(a2, a3, v4))
    {
      return 0;
    }

    if (*(a1 + 32) != 1)
    {
      return 1;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    size = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v10 = v4;
      v4 = v4->__r_.__value_.__r.__words[0];
      size = v10->__r_.__value_.__l.__size_;
    }

    google::protobuf::Base64Escape(v4, size, &v42, 0);
    v41 = v45;
    if (v45)
    {
      std::string::basic_string[abi:ne200100](&__s1, v45, *(&v45 + 1));
    }

    else
    {
      __s1 = 0;
      __n = 0;
      v40 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "=");
    if (v40 >= 0)
    {
      v19 = HIBYTE(v40);
    }

    else
    {
      v19 = __n;
    }

    if ((v37 & 0x80u) == 0)
    {
      v20 = v37;
    }

    else
    {
      v20 = v36;
    }

    v14 = v19 >= v20;
    v21 = v19 - v20;
    if (!v14)
    {
      goto LABEL_37;
    }

    if (v40 < 0)
    {
      if (v20 != -1 && __n >= v21)
      {
        if (__n - v21 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = __n - v21;
        }

        p_s1 = __s1;
LABEL_68:
        if ((v37 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v32 = memcmp(&p_s1[v21], p_p, v23);
        if (v23 == v20 && !v32)
        {
          v22 = google::protobuf::StringPiece::find_last_not_of(&v45, 0x3Du, 0xFFFFFFFFFFFFFFFFLL) + 1;
          goto LABEL_74;
        }

LABEL_37:
        v22 = *(&v45 + 1);
LABEL_74:
        v28 = google::protobuf::StringPiece::substr(&v41, 0, v22);
        v30 = v33;
        if (v37 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(__s1);
        }

        goto LABEL_78;
      }
    }

    else if (v20 != -1 && HIBYTE(v40) >= v21)
    {
      if (HIBYTE(v40) - v21 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = HIBYTE(v40) - v21;
      }

      p_s1 = &__s1;
      goto LABEL_68;
    }

    std::basic_string<char32_t>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(a1 + 32) != 1)
  {
    return 1;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__s1, v4, v8);
  google::protobuf::WebSafeBase64Escape(__s1, __n, &v42);
  v41 = v45;
  if (v45)
  {
    std::string::basic_string[abi:ne200100](&__s1, v45, *(&v45 + 1));
  }

  else
  {
    __s1 = 0;
    __n = 0;
    v40 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "=");
  if (v40 >= 0)
  {
    v12 = HIBYTE(v40);
  }

  else
  {
    v12 = __n;
  }

  if ((v37 & 0x80u) == 0)
  {
    v13 = v37;
  }

  else
  {
    v13 = v36;
  }

  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (!v14)
  {
    goto LABEL_21;
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    if (v13 != -1 && HIBYTE(v40) >= v15)
    {
      if (HIBYTE(v40) - v15 >= v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = HIBYTE(v40) - v15;
      }

      v18 = &__s1;
      goto LABEL_51;
    }

LABEL_86:
    std::basic_string<char32_t>::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 == -1 || __n < v15)
  {
    goto LABEL_86;
  }

  if (__n - v15 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = __n - v15;
  }

  v18 = __s1;
LABEL_51:
  if ((v37 & 0x80u) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p;
  }

  v26 = memcmp(&v18[v15], v25, v17);
  if (v17 == v13 && !v26)
  {
    v16 = google::protobuf::StringPiece::find_last_not_of(&v45, 0x3Du, 0xFFFFFFFFFFFFFFFFLL) + 1;
    goto LABEL_57;
  }

LABEL_21:
  v16 = *(&v45 + 1);
LABEL_57:
  v28 = google::protobuf::StringPiece::substr(&v41, 0, v16);
  v30 = v29;
  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__s1);
  }

LABEL_78:
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__s1, &v42, v27);
  if (__n == v30)
  {
    v11 = 1;
    if (__s1 != v28 && __n >= 1)
    {
      v11 = memcmp(__s1, v28, __n) == 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  return v11;
}

void sub_1BFC1D9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 google::protobuf::util::converter::DataPiece::InternalCopy(__n128 *this, __n128 *a2)
{
  v2 = a2->n128_u32[2];
  this->n128_u32[2] = v2;
  this[2].n128_u8[0] = a2[2].n128_u8[0];
  if (v2 - 1 <= 0xA)
  {
    result = a2[1];
    this[1] = result;
  }

  return result;
}

uint64_t google::protobuf::util::StatusOr<float>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC1DAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::StringPiecePod::operator[](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::StringPiecePod::operator[]();
  }

  if (a1[1] <= a2)
  {
    google::protobuf::internal::StringPiecePod::operator[]();
  }

  return *(*a1 + a2);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<int,double>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a1 != a4)
  {
    goto LABEL_13;
  }

  v6 = -1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  if (a1 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (!a1)
  {
    v7 = 0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_13:
    google::protobuf::util::converter::DoubleAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<int>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1DC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<int,float>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  if (a1 != a4)
  {
    goto LABEL_13;
  }

  v6 = -1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  if (a1 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (!a1)
  {
    v7 = 0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_13:
    google::protobuf::util::converter::FloatAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<int>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1DD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<unsigned int,double>(unsigned int a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a1 != a4)
  {
    goto LABEL_10;
  }

  v6 = -1.0;
  v7 = 1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  if (!a1)
  {
    v7 = 0.0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_10:
    google::protobuf::util::converter::DoubleAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<unsigned int>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1DE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<unsigned int,float>(unsigned int a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  if (a1 != a4)
  {
    goto LABEL_10;
  }

  v6 = -1.0;
  v7 = 1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  if (!a1)
  {
    v7 = 0.0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_10:
    google::protobuf::util::converter::FloatAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<unsigned int>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1DF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<long long>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC1E048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<long long,double>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a1 != a4)
  {
    goto LABEL_12;
  }

  v6 = -1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  v7 = -1;
  if (a1 >= 1)
  {
    v7 = 1;
  }

  if (!a1)
  {
    v7 = 0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_12:
    google::protobuf::util::converter::DoubleAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<long long>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1E15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<long long,float>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  if (a1 != a4)
  {
    goto LABEL_12;
  }

  v6 = -1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  v7 = -1;
  if (a1 >= 1)
  {
    v7 = 1;
  }

  if (!a1)
  {
    v7 = 0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_12:
    google::protobuf::util::converter::FloatAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<long long>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1E280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<unsigned long long>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC1E348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<unsigned long long,double>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a1 != a4)
  {
    goto LABEL_10;
  }

  v6 = -1.0;
  v7 = 1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  if (!a1)
  {
    v7 = 0.0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_10:
    google::protobuf::util::converter::DoubleAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<unsigned long long>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1E450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::anonymous namespace::ValidateNumberConversion<unsigned long long,float>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  if (a1 != a4)
  {
    goto LABEL_10;
  }

  v6 = -1.0;
  v7 = 1.0;
  if (a4 > 0.0)
  {
    v6 = 1.0;
  }

  if (a4 == 0.0)
  {
    v6 = a4;
  }

  if (!a1)
  {
    v7 = 0.0;
  }

  if (v6 == v7)
  {
    v8 = google::protobuf::util::Status::Status(a3);
    google::protobuf::util::Status::operator=(v8, &google::protobuf::util::Status::OK);
    *(a3 + 32) = a1;
  }

  else
  {
LABEL_10:
    google::protobuf::util::converter::FloatAsString(a4, a2, v10);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v12, v10, v9);
    google::protobuf::util::Status::Status(&v13, 3, v12[0], v12[1]);
    google::protobuf::util::StatusOr<unsigned long long>::StatusOr(a3, &v13);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1BFC1E568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 31) < 0)
  {
    operator delete(*(v24 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<double>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC1E630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<BOOL>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC1E6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<int>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC1E7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::Tokenizer(uint64_t a1, uint64_t a2, uint64_t a3, double a4, __n128 a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0;
  a5.n128_u64[0] = 0;
  *(a1 + 24) = a5;
  *(a1 + 64) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = -1;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 40) = 0;
  *a1 = 0;
  google::protobuf::io::Tokenizer::Refresh(a1);
  return a1;
}

void sub_1BFC1E86C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::Refresh(uint64_t this)
{
  v1 = this;
  if (*(this + 136) == 1)
  {
    *(this + 112) = 0;
  }

  else
  {
    v2 = *(this + 152);
    if (v2)
    {
      v3 = *(v1 + 160);
      v4 = *(v1 + 128);
      if (v4 > v3)
      {
        std::string::append(v2, (*(v1 + 120) + v3), v4 - v3);
        *(v1 + 160) = 0;
      }
    }

    v7 = 0;
    *(v1 + 120) = 0;
    *(v1 + 132) = 0;
    while (1)
    {
      this = (*(**(v1 + 96) + 16))(*(v1 + 96), &v7, v1 + 128);
      if ((this & 1) == 0)
      {
        break;
      }

      if (*(v1 + 128))
      {
        v5 = v7;
        *(v1 + 120) = v7;
        v6 = *v5;
        goto LABEL_11;
      }
    }

    v6 = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 1;
LABEL_11:
    *(v1 + 112) = v6;
  }

  return this;
}

void google::protobuf::io::Tokenizer::~Tokenizer(google::protobuf::io::Tokenizer *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  if (v2 > v3)
  {
    (*(**(this + 12) + 24))(*(this + 12), (v2 - v3));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t google::protobuf::io::Tokenizer::NextChar(uint64_t this)
{
  v1 = *(this + 112);
  if (v1 == 9)
  {
    v2 = *(this + 144);
    if (v2 <= 0)
    {
      v3 = -(-v2 & 7);
    }

    else
    {
      v3 = *(this + 144) & 7;
    }

    v4 = v2 - v3 + 8;
  }

  else
  {
    if (v1 == 10)
    {
      *(this + 140) = (*(this + 140) + 1);
      goto LABEL_10;
    }

    v4 = *(this + 144) + 1;
  }

  *(this + 144) = v4;
LABEL_10:
  v5 = *(this + 128);
  v6 = *(this + 132) + 1;
  *(this + 132) = v6;
  if (v6 >= v5)
  {
    return google::protobuf::io::Tokenizer::Refresh(this);
  }

  *(this + 112) = *(*(this + 120) + v6);
  return this;
}

void google::protobuf::io::Tokenizer::ConsumeString(google::protobuf::io::Tokenizer *this, unsigned __int8 a2)
{
  v3 = a2;
  while (1)
  {
    v4 = *(this + 112);
    if (v4 == 10)
    {
      break;
    }

    if (v4 == 92)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v5 = *(this + 112);
      v6 = (v5 - 97) > 0x15 || ((1 << (v5 - 97)) & 0x2A2023) == 0;
      if (!v6 || (v5 - 34) <= 0x3A && ((1 << (v5 - 34)) & 0x400000020000021) != 0 || (v5 & 0xF8) == 0x30)
      {
        goto LABEL_23;
      }

      switch(v5)
      {
        case 'U':
          google::protobuf::io::Tokenizer::NextChar(this);
          if (*(this + 112) != 48)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if (*(this + 112) != 48)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) & 0xFE) != 0x30)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu)
          {
            v12 = *(this + 112) - 65;
            if (v12 > 0x25 || ((1 << v12) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_55;
            }
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu)
          {
            v13 = *(this + 112) - 65;
            if (v13 > 0x25 || ((1 << v13) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_55;
            }
          }

          if ((google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v14 = *(this + 112) - 65, v14 > 0x25) || ((1 << v14) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v15 = *(this + 112) - 65, v15 > 0x25) || ((1 << v15) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v16 = *(this + 112) - 65, v16 > 0x25) || ((1 << v16) & 0x3F0000003FLL) == 0))
          {
LABEL_55:
            std::string::basic_string[abi:ne200100]<0>(__p, "Expected eight hex digits up to 10ffff for \\U escape sequence");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_57;
          }

          goto LABEL_23;
        case 'u':
          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu && ((v8 = *(this + 112) - 65, v8 > 0x25) || ((1 << v8) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v9 = *(this + 112) - 65, v9 > 0x25) || ((1 << v9) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v10 = *(this + 112) - 65, v10 > 0x25) || ((1 << v10) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v11 = *(this + 112) - 65, v11 > 0x25) || ((1 << v11) & 0x3F0000003FLL) == 0))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "Expected four hex digits for \\u escape sequence.");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_57;
          }

LABEL_23:
          google::protobuf::io::Tokenizer::NextChar(this);
          break;
        case 'x':
          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) < 0xAu)
          {
            goto LABEL_23;
          }

          v7 = *(this + 112) - 65;
          if (v7 <= 0x25 && ((1 << v7) & 0x3F0000003FLL) != 0)
          {
            goto LABEL_23;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "Expected hex digits for escape sequence.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
LABEL_57:
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          break;
        default:
          std::string::basic_string[abi:ne200100]<0>(__p, "Invalid escape sequence in string literal.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          goto LABEL_57;
      }
    }

    else
    {
      if (!*(this + 112))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Unexpected end of string.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        goto LABEL_61;
      }

      google::protobuf::io::Tokenizer::NextChar(this);
      if (v4 == v3)
      {
        return;
      }
    }
  }

  if (*(this + 173))
  {
    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "String literals cannot cross line boundaries.");
  (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
LABEL_61:
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BFC1EFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::ConsumeNumber(google::protobuf::io::Tokenizer *this, int a2, int a3)
{
  if (a2)
  {
    v4 = *(this + 112);
    if ((v4 | 0x20) == 0x78)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      if ((*(this + 112) - 48) > 9u && ((v5 = *(this + 112) - 65, v18 = v5 > 0x25, v6 = (1 << v5) & 0x3F0000003FLL, !v18) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "0x must be followed by hex digits.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        do
        {
          do
          {
            google::protobuf::io::Tokenizer::NextChar(this);
          }

          while ((*(this + 112) - 48) < 0xAu);
          v8 = *(this + 112) - 65;
          v18 = v8 > 0x25;
          v9 = (1 << v8) & 0x3F0000003FLL;
        }

        while (!v18 && v9 != 0);
      }

LABEL_14:
      v11 = 0;
      goto LABEL_49;
    }

    if ((v4 - 48) <= 9)
    {
      if ((v4 & 0x38) != 0x30)
      {
        goto LABEL_21;
      }

      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v12 = *(this + 112);
      }

      while ((v12 & 0xF8) == 0x30);
      if ((v12 - 48) <= 9)
      {
LABEL_21:
        std::string::basic_string[abi:ne200100]<0>(__p, "Numbers starting with leading zero must be in octal.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(this + 112) - 48 <= 9)
        {
          do
          {
            google::protobuf::io::Tokenizer::NextChar(this);
            v11 = 0;
          }

          while (*(this + 112) - 48 < 0xA);
          goto LABEL_49;
        }
      }

      goto LABEL_14;
    }
  }

  v13 = *(this + 112);
  v14 = v13 - 48;
  if (a3)
  {
    if (v14 <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  else
  {
    if (v14 <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }

    if (v13 != 46)
    {
      v11 = 0;
      goto LABEL_35;
    }

    google::protobuf::io::Tokenizer::NextChar(this);
    v13 = *(this + 112);
    if ((v13 - 48) <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  v11 = 1;
LABEL_35:
  if ((v13 | 0x20) == 0x65)
  {
    google::protobuf::io::Tokenizer::NextChar(this);
    v15 = *(this + 112);
    if (v15 == 45 || v15 == 43)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
    }

    if (*(this + 112) - 48 > 9)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "e must be followed by exponent.");
      (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
      }

      while (*(this + 112) - 48 < 0xA);
    }

    v11 = 1;
  }

  if (*(this + 164) == 1)
  {
    v16 = *(this + 112);
    if (v16 == 70 || v16 == 102)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v11 = 1;
    }
  }

LABEL_49:
  v17 = *(this + 112);
  v18 = v17 != 95 && (v17 & 0xFFFFFFDF) - 65 > 0x19;
  if (v18 || *(this + 172) != 1)
  {
    if (v17 != 46)
    {
      goto LABEL_62;
    }

    if (v11)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Already saw decimal point or exponent; can't have another one.");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Hex and octal numbers must be integers.");
    }

    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Need space between number and identifier.");
    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  if (v11)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void sub_1BFC1F424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::ConsumeLineComment(uint64_t this, uint64_t a2)
{
  v3 = this;
  if (a2)
  {
    *(this + 152) = a2;
    *(this + 160) = *(this + 132);
  }

  while (*(v3 + 112))
  {
    if (*(v3 + 112) == 10)
    {
      this = google::protobuf::io::Tokenizer::NextChar(v3);
      break;
    }

    this = google::protobuf::io::Tokenizer::NextChar(v3);
  }

  if (a2)
  {
    v4 = *(v3 + 132);
    v5 = *(v3 + 160);
    if (v4 != v5)
    {
      this = std::string::append(*(v3 + 152), (*(v3 + 120) + v5), v4 - v5);
    }

    *(v3 + 152) = 0;
    *(v3 + 160) = -1;
  }

  return this;
}

void google::protobuf::io::Tokenizer::ConsumeBlockComment(google::protobuf::io::Tokenizer *this, uint64_t a2)
{
  v4 = *(this + 35);
  v5 = (*(this + 36) - 2);
  if (a2)
  {
    *(this + 19) = a2;
    *(this + 40) = *(this + 33);
  }

  while (1)
  {
    while (1)
    {
      v6 = *(this + 112);
      if (v6 > 0x29)
      {
        break;
      }

      if (*(this + 112))
      {
        if (v6 != 10)
        {
          goto LABEL_22;
        }

        google::protobuf::io::Tokenizer::NextChar(this);
        if (a2)
        {
          v7 = *(this + 33);
          v8 = *(this + 40);
          if (v7 != v8)
          {
            std::string::append(*(this + 19), (*(this + 15) + v8), v7 - v8);
          }

          *(this + 19) = 0;
          *(this + 40) = -1;
        }

        while (1)
        {
          v9 = *(this + 112);
          if (v9 > 0x2A)
          {
            break;
          }

          if (((1 << v9) & 0x100003A00) == 0)
          {
            if (v9 == 42)
            {
              google::protobuf::io::Tokenizer::NextChar(this);
              if (*(this + 112) == 47)
              {
                google::protobuf::io::Tokenizer::NextChar(this);
                return;
              }
            }

            break;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
        }

        if (a2)
        {
          *(this + 19) = a2;
          *(this + 40) = *(this + 33);
        }
      }

      else
      {
LABEL_24:
        if (!v6)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "End-of-file inside block comment.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          v10 = *(this + 13);
          std::string::basic_string[abi:ne200100]<0>(__p, "  Comment started here.");
          (*(*v10 + 16))(v10, v4, v5, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (a2)
          {
            v11 = *(this + 33);
            v12 = *(this + 40);
            if (v11 != v12)
            {
              std::string::append(*(this + 19), (*(this + 15) + v12), v11 - v12);
            }

            *(this + 19) = 0;
            *(this + 40) = -1;
          }

          return;
        }
      }
    }

    if (v6 == 42)
    {
      break;
    }

    if (v6 == 47)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v6 = *(this + 112);
      if (v6 != 42)
      {
        goto LABEL_24;
      }