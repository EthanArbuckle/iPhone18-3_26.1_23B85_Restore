int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t **a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = **a6;
  v9 = *(v8 + 4 * *a2);
  v10 = *a3;
  v11 = *(v8 + 4 * *a3);
  if (v9 >= *(v8 + 4 * *result))
  {
    if (v11 >= v9)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(v8 + 4 * v13) >= *(v8 + 4 * v14))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 >= v9)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(v8 + 4 * *a3) < *(v8 + 4 * v7))
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(v8 + 4 * v15) < *(v8 + 4 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(v8 + 4 * v16) < *(v8 + 4 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(v8 + 4 * v18) < *(v8 + 4 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(v8 + 4 * v20) < *(v8 + 4 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(v8 + 4 * v22) < *(v8 + 4 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(v8 + 4 * v24) < *(v8 + 4 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(v8 + 4 * v26) < *(v8 + 4 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *>(int *a1, int *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = **a3;
      v9 = *(v8 + 4 * v7);
      v10 = *(a2 - 1);
      v11 = *(v8 + 4 * v10);
      if (v9 >= *(v8 + 4 * *a1))
      {
        if (v11 < v9)
        {
          a1[1] = v10;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v45 = *(a2 - 1);
        if (*(v8 + 4 * v45) >= *(v8 + 4 * v6))
        {
          return 1;
        }

        a1[1] = v45;
      }

      else
      {
        *a1 = v10;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::Concatenate::jvp(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = **a3;
    v29 = *(v28 + 4 * v24);
    v30 = *a1;
    v31 = v26;
    v32 = *(v28 + 4 * v26);
    if (v29 >= *(v28 + 4 * v30))
    {
      if (v32 < v29)
      {
        *v23 = v26;
        *v25 = v24;
        v30 = v24;
        v33 = a1;
        v34 = a1 + 1;
        v31 = v24;
        if (*(v28 + 4 * v26) >= *(v28 + 4 * v27))
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v32 < v29)
      {
        v33 = a1;
        v34 = a1 + 2;
        v24 = *a1;
LABEL_44:
        *v33 = v26;
        *v34 = v27;
        v31 = v30;
LABEL_46:
        v46 = *(a2 - 1);
        if (*(v28 + 4 * v46) < *(v28 + 4 * v31))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          if (*(v28 + 4 * v47) < *(v28 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v49 = *a1;
            if (*(v28 + 4 * v47) < *(v28 + 4 * v49))
            {
              *a1 = v47;
              a1[1] = v49;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v27;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v24 = v27;
      if (*(v28 + 4 * v26) < *(v28 + 4 * v27))
      {
        goto LABEL_44;
      }
    }

    v24 = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(**a3 + 4 * v4) < *(**a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v13 = a1[2];
  v14 = a1[1];
  v15 = **a3;
  v16 = *(v15 + 4 * v14);
  v17 = *a1;
  v18 = *(v15 + 4 * v13);
  if (v16 >= *(v15 + 4 * *a1))
  {
    if (v18 >= v16)
    {
      goto LABEL_26;
    }

    a1[1] = v13;
    *v12 = v14;
    v21 = *(v15 + 4 * v13);
    v22 = *(v15 + 4 * v17);
    v19 = a1;
    v20 = a1 + 1;
LABEL_24:
    if (v21 >= v22)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v19 = a1;
  v20 = a1 + 2;
  if (v18 >= v16)
  {
    *a1 = v14;
    a1[1] = v17;
    v21 = *(v15 + 4 * v13);
    v22 = *(v15 + 4 * v17);
    v19 = a1 + 1;
    v20 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v19 = v13;
  *v20 = v17;
LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v12;
    if (*(v15 + 4 * *v37) < *(v15 + 4 * v41))
    {
      v42 = i;
      while (1)
      {
        *(a1 + v42) = v41;
        v43 = v42 - 4;
        if (v42 == 4)
        {
          break;
        }

        v41 = *(a1 + v42 - 8);
        v42 -= 4;
        if (*(v15 + 4 * v40) >= *(v15 + 4 * v41))
        {
          v44 = (a1 + v43);
          goto LABEL_34;
        }
      }

      v44 = a1;
LABEL_34:
      *v44 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v12 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A334924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A334998(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void mlx::core::anonymous namespace::vmap_ternary_op(std::vector<mlx::core::array> const&,std::vector<int> const&,mlx::core::Stream const&)::$_0::operator()<mlx::core::array>(uint64_t a1@<X0>, uint64_t **a2@<X1>, const void ***a3@<X8>)
{
  v6 = *a2;
  memset(&v13, 0, sizeof(v13));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7.__i_ = v13.__begin_;
  v8 = *(a1 + 12) - (v13.__end_ - v13.__begin_);
  __x = 1;
  std::vector<int>::insert(&v13, v7, v8, &__x);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v13.__begin_, v13.__end_, v13.__end_ - v13.__begin_);
  mlx::core::reshape(a2, &__p, *a1, *(a1 + 8) | 0x100000000, a3);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v13.__begin_)
  {
    v13.__end_ = v13.__begin_;
    operator delete(v13.__begin_);
  }
}

void sub_25A334CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::tuple<mlx::core::array,mlx::core::array,mlx::core::array,int>::~tuple(uint64_t a1)
{
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));

  mlx::core::array::~array(a1);
}

__n128 std::__split_buffer<mlx::core::array>::emplace_back<mlx::core::array>(__int128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(v9, v8);
    }

    v6 = (v5 - *a1 + 1 + ((v5 - *a1 + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<mlx::core::array *,mlx::core::array *,mlx::core::array *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    a1[1] -= v6;
    a1[2] = v7;
  }

  result = *a2;
  *v4 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[2];
  return result;
}

uint64_t std::__shared_ptr_emplace<mlx::core::Broadcast>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int> &,std::allocator<mlx::core::Broadcast>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3CE8;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_286BF7988;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::BroadcastAxes>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int> &,std::allocator<mlx::core::BroadcastAxes>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3D38;
  std::construct_at[abi:ne200100]<mlx::core::BroadcastAxes,mlx::core::Stream,std::vector<int> &,mlx::core::BroadcastAxes*>((a1 + 3), a2, a3);
  return a1;
}

uint64_t std::__shared_ptr_emplace<mlx::core::FFT>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<unsigned long> &,BOOL &,BOOL &,std::allocator<mlx::core::FFT>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4, char *a5)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE79D8;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *a4;
  v9 = *a5;
  *(a1 + 48) = 0;
  v10 = a1 + 48;
  *(v10 - 8) = v7;
  *(v10 - 24) = &unk_286BFF1E8;
  *(v10 - 16) = v6;
  *(v10 + 8) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v10, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 72) = v8;
  *(a1 + 73) = v9;
  return a1;
}

uint64_t std::__shared_ptr_emplace<mlx::core::RandomBits>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int> &,int &,std::allocator<mlx::core::RandomBits>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE8E28;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a4;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 24) = &unk_286BF7F40;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = v7;
  return a1;
}

uint64_t std::__shared_ptr_emplace<mlx::core::Scatter>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,mlx::core::Scatter::ReduceType &,std::vector<int> &,std::allocator<mlx::core::Scatter>,0>(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE4FA8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 4) = v7;
  *(v8 - 24) = &unk_286BF6138;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::NumberOfElements>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int> &,BOOL &,mlx::core::Dtype &,std::allocator<mlx::core::NumberOfElements>,0>(void *a1, uint64_t *a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE5368;
  std::construct_at[abi:ne200100]<mlx::core::NumberOfElements,mlx::core::Stream const&,std::vector<int> &,BOOL &,mlx::core::Dtype &,mlx::core::NumberOfElements*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::NumberOfElements,mlx::core::Stream const&,std::vector<int> &,BOOL &,mlx::core::Dtype &,mlx::core::NumberOfElements*>(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v14 = 0;
  v13 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, *a3, a3[1], (a3[1] - *a3) >> 2);
  v10 = *a4;
  v11 = *a5;
  *(a1 + 16) = v9;
  *a1 = &unk_286BF7E30;
  *(a1 + 8) = v8;
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v10;
  *(a1 + 52) = v11;
  return a1;
}

mlx::core *mlx::core::to_stream(mlx::core *result, uint64_t a2)
{
  if (HIDWORD(a2) != 2)
  {
    if (HIDWORD(a2) == 1)
    {
      return result;
    }

    if (HIDWORD(a2))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    result = *mlx::core::default_device(result);
  }

  return mlx::core::default_stream(result);
}

uint64_t mlx::core::to_stream(uint64_t result, uint64_t a2, mlx::core::metal *a3)
{
  if (HIDWORD(a2))
  {
    if (HIDWORD(a2) == 1)
    {
      return result;
    }

    a3 = result;
    if (HIDWORD(a2) != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  return mlx::core::default_stream(a3);
}

void mlx::core::abort_with_exception(mlx::core *this, const std::exception *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v13);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Terminating due to uncaught exception: ", 39);
  v4 = (*(*this + 16))(this);
  v5 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
  if ((v16 & 0x10) != 0)
  {
    v7 = v15;
    if (v15 < v14)
    {
      v15 = v14;
      v7 = v14;
    }

    v8 = v13[6];
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v6 = 0;
      *(&v12.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    v8 = v13[3];
    v7 = v13[5];
  }

  v6 = v7 - v8;
  if ((v7 - v8) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&v12.__r_.__value_.__s + 23) = v7 - v8;
  if (v6)
  {
    memmove(&v12, v8, v6);
  }

LABEL_15:
  v12.__r_.__value_.__s.__data_[v6] = 0;
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], v9, size);
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v11);
  std::string::~string(&v12);
  abort();
}

void sub_25A33575C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x277D82828];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
  a16 = MEMORY[0x277D82878] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&a32);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::result_type(uint64_t **a1)
{
  result = 0x100000000;
  v10 = 0x100000000;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      v3 += 2;
      v6 = *(v5 + 56);
      v8 = v6;
      v9 = BYTE4(v6);
      v7 = mlx::core::promote_types(&v10, &v8);
      LODWORD(v10) = v7;
      BYTE4(v10) = BYTE4(v7);
    }

    while (v3 != v4);
    return v10;
  }

  return result;
}

void *mlx::core::broadcast_shapes@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1] - *a1;
  v6 = v5 >> 2;
  v7 = a2[1] - *a2;
  v8 = v7 >> 2;
  v9 = (v5 >> 2) - (v7 >> 2);
  if ((v5 >> 2) <= (v7 >> 2))
  {
    v10 = v7 >> 2;
  }

  else
  {
    v10 = v5 >> 2;
  }

  if ((v5 >> 2) <= (v7 >> 2))
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  if (((v5 >> 2) - (v7 >> 2)) >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = (v7 >> 2) - (v5 >> 2);
  }

  result = std::vector<int>::vector[abi:ne200100](a3, v10);
  if (v10 > v12)
  {
    v14 = (v7 >> 2);
    if (v14 <= v6)
    {
      v14 = (v5 >> 2);
    }

    v15 = *a3 - 4;
    v16 = *v11 - 4;
    do
    {
      v17 = *(v16 + 4 * v14);
      if (v6 <= v8)
      {
        v18 = a1;
      }

      else
      {
        v18 = a2;
      }

      v19 = *(*v18 + 4 * ~v12 + 4 * v14);
      if (v19 != v17)
      {
        if (v17 != 1 && v19 != 1)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v33);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "[broadcast_shapes] Shapes ", 26);
          v27 = mlx::core::operator<<(v26, a1);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " and ", 5);
          v29 = mlx::core::operator<<(v28, a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " cannot be broadcast.", 21);
          exception = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](v33, &v32);
          std::logic_error::logic_error(exception, &v32);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
        }

        v17 *= v19;
      }

      *(v15 + 4 * v14--) = v17;
    }

    while (v14 > v12);
  }

  if (v6 != v8)
  {
    if (v9 >= 0)
    {
      v21 = (v5 >> 2) - (v7 >> 2);
    }

    else
    {
      v21 = (v7 >> 2) - (v5 >> 2);
    }

    v22 = (*v11 + 4 * (v21 - 1));
    v23 = (*a3 + 4 * (v21 - 1));
    v24 = v21 + 1;
    do
    {
      v25 = *v22--;
      *v23-- = v25;
      --v24;
    }

    while (v24 > 1);
  }

  return result;
}

void sub_25A335AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      v19 = *a9;
      if (*a9)
      {
        *(a9 + 8) = v19;
        operator delete(v19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *mlx::core::operator<<(void *a1, uint64_t *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x25F851360](a1, *(v4 + 4 * v5));
      v7 = ((a2[1] - *a2) >> 2) - 1;
      if (v5 == v7)
      {
        v8 = "";
      }

      else
      {
        v8 = ",";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v5++ != v7);
      v4 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ")", 1);
  return a1;
}

{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x25F8513B0](a1, *(v4 + 8 * v5));
      v7 = ((a2[1] - *a2) >> 3) - 1;
      if (v5 == v7)
      {
        v8 = "";
      }

      else
      {
        v8 = ",";
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v5++ != v7);
      v4 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 3);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ")", 1);
  return a1;
}

uint64_t mlx::core::normalize_axis_index(int a1, uint64_t a2, uint64_t a3)
{
  if (-a2 > a1 || a1 >= a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    if (v7 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = *(a3 + 8);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Axis ", 5);
    v12 = MEMORY[0x25F851360](v11, a1);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " is out of bounds for array with ", 33);
    v14 = MEMORY[0x25F851360](v13, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v18, &v17);
    std::logic_error::logic_error(exception, &v17);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  return (a2 & (a1 >> 31)) + a1;
}

void sub_25A335D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void *mlx::core::operator<<(void *a1, _DWORD *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Device(", 7);
  if (!*a2)
  {
    v4 = "cpu";
    goto LABEL_5;
  }

  if (*a2 == 1)
  {
    v4 = "gpu";
LABEL_5:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, 3);
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v6 = MEMORY[0x25F851360](v5, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ")", 1);
  return a1;
}

void *mlx::core::operator<<(void *a1, unsigned int *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Stream(", 7);
  v4 = mlx::core::operator<<(a1, a2 + 1);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v6 = MEMORY[0x25F851360](v5, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ")", 1);
  return a1;
}

uint64_t mlx::core::operator<<(uint64_t a1)
{
  MEMORY[0x25F851360]();
  return a1;
}

{
  MEMORY[0x25F851370]();
  return a1;
}

void *mlx::core::operator<<(void *a1, void *a2)
{
  v3 = mlx::core::dtype_to_string(*a2);
  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

void *mlx::core::operator<<(void *result, unsigned int *a2)
{
  v2 = *a2;
  if (v2 <= 5)
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, (&off_2799215E0)[v2], 1);
  }

  return result;
}

void *mlx::core::operator<<(void *a1, mlx::core::array *this)
{
  mlx::core::array::eval(this);
  switch(*(*this + 56))
  {
    case 0:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) != **this)
      {
        goto LABEL_58;
      }

      v11 = **(*this + 152);
      if (mlx::core::get_global_formatter(void)::formatter != 1)
      {
        MEMORY[0x25F851330](a1, v11);
        goto LABEL_58;
      }

      _ZF = v11 == 0;
      if (**(*this + 152))
      {
        v13 = "True";
      }

      else
      {
        v13 = "False";
      }

      if (_ZF)
      {
        v14 = 5;
      }

      else
      {
        v14 = 4;
      }

      v15 = a1;
      goto LABEL_52;
    case 1:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) != **this)
      {
        goto LABEL_58;
      }

      v10 = **(*this + 152);
      goto LABEL_47;
    case 2:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        MEMORY[0x25F8513A0](a1, **(*this + 152));
      }

      else
      {
      }

      goto LABEL_58;
    case 3:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        MEMORY[0x25F851370](a1, **(*this + 152));
      }

      else
      {
      }

      goto LABEL_58;
    case 4:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        MEMORY[0x25F8513C0](a1, **(*this + 152));
      }

      else
      {
      }

      goto LABEL_58;
    case 5:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) != **this)
      {
        goto LABEL_58;
      }

      v10 = **(*this + 152);
      goto LABEL_47;
    case 6:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        MEMORY[0x25F851390](a1, **(*this + 152));
      }

      else
      {
      }

      goto LABEL_58;
    case 7:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        v10 = **(*this + 152);
LABEL_47:
        MEMORY[0x25F851360](a1, v10);
      }

      else
      {
      }

      goto LABEL_58;
    case 8:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        MEMORY[0x25F8513B0](a1, **(*this + 152));
      }

      else
      {
      }

      goto LABEL_58;
    case 9:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) != **this)
      {
        goto LABEL_58;
      }

      _H0 = **(*this + 152);
      __asm { FCVT            S0, H0 }

      goto LABEL_55;
    case 0xA:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) != **this)
      {
        goto LABEL_58;
      }

      v21 = **(*this + 152);
      goto LABEL_55;
    case 0xB:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        MEMORY[0x25F851340](a1, **(*this + 152));
      }

      else
      {
      }

      goto LABEL_58;
    case 0xC:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        v4 = **(*this + 152) << 16;
LABEL_55:
        std::ostream::operator<<();
      }

      else
      {
      }

LABEL_58:
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", dtype=", 8);
      v23 = *(*this + 56);
      LODWORD(v26) = v23;
      BYTE4(v26) = BYTE4(v23);
      v24 = mlx::core::operator<<(v22, &v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ")", 1);
      *(a1 + *(*a1 - 24) + 8) &= ~1u;
      return a1;
    case 0xD:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "array(", 6);
      if (*(*this + 8) == **this)
      {
        v16 = *(*this + 152);
        v17 = *v16;
        v18 = v16[1];
        v19 = std::ostream::operator<<();
        if (v18 < 0.0)
        {
          v20 = "";
        }

        else
        {
          v20 = "+";
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v18 >= 0.0);
        v15 = std::ostream::operator<<();
        v13 = "j";
        v14 = 1;
LABEL_52:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v13, v14);
      }

      else
      {
      }

      goto LABEL_58;
    default:
      return a1;
  }
}

const char *mlx::core::env::get_var(mlx::core::env *this, const char *a2)
{
  v3 = getenv(this);
  if (!v3)
  {
    return a2;
  }

  return atoi(v3);
}

uint64_t mlx::core::finfo::finfo(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  *a1 = a2;
  if ((mlx::core::issubdtype(&v11, &mlx::core::inexact) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v10);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "[finfo] dtype ", 14);
    v7 = mlx::core::operator<<(v6, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " is not inexact.", 16);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v10, &v9);
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v3 = xmmword_25A9BF610;
  if (v11 <= 10)
  {
    if (v11 == 9)
    {
      v3 = xmmword_25A9BF640;
      v4 = 0x3F50000000000000;
      goto LABEL_13;
    }

    if (v11 == 10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    switch(v11)
    {
      case 0xB:
        v3 = xmmword_25A9BF620;
        v4 = 0x3CB0000000000000;
        goto LABEL_13;
      case 0xC:
        v3 = xmmword_25A9BF630;
        v4 = 0x3F80000000000000;
        goto LABEL_13;
      case 0xD:
        *(a1 + 4) = 4;
        *a1 = 10;
LABEL_9:
        v4 = 0x3E80000000000000;
LABEL_13:
        *(a1 + 8) = v3;
        *(a1 + 24) = v4;
        break;
    }
  }

  return a1;
}

void sub_25A3369E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *mlx::core::iinfo::iinfo(void *result, uint64_t a2)
{
  v2 = a2;
  *result = a2;
  v3 = a2 - 1;
  if ((a2 - 1) >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8[0] = mlx::core::dtype_to_string(v2);
    v8[1] = 0;
    v8[2] = "[iinfo]";
    v8[3] = 0;
    fmt::v10::vformat("Unhandled dtype %s for %s", 25, 0xCCuLL, v8, &v7);
    std::logic_error::logic_error(exception, &v7);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v4 = qword_25A9C04B0[v3];
  v5 = qword_25A9C04F0[v3];
  result[1] = v4;
  result[2] = v5;
  return result;
}

void sub_25A336B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void mlx::core::anonymous namespace::print_subarray<unsigned char>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F851360](a1, *((*a2)[19] + a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A336DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<unsigned short>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F8513A0](a1, *((*a2)[19] + 2 * a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A337058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<unsigned int>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F851370](a1, *((*a2)[19] + 4 * a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A3372CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<unsigned long long>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F8513C0](a1, *((*a2)[19] + 8 * a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A337540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<signed char>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F851360](a1, *((*a2)[19] + a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A3377B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<short>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F851390](a1, *((*a2)[19] + 2 * a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A337A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<int>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F851360](a1, *((*a2)[19] + 4 * a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A337C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<long long>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F8513B0](a1, *((*a2)[19] + 8 * a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A337F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<half>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v22 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v22 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v23 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v23, "");
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v23;
      }

      else
      {
        v13 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v22 == a4)
      {
        _H0 = *((*a2)[19] + 2 * a3);
        __asm { FCVT            S0, H0 }

        std::ostream::operator<<();
      }

      else
      {
      }

      if (i == v11)
      {
        v21 = "";
      }

      else
      {
        v21 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v21, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A338188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<float>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v17 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v17 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v18, "");
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v18;
      }

      else
      {
        v13 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v17 == a4)
      {
        v15 = *((*a2)[19] + 4 * a3);
        std::ostream::operator<<();
      }

      else
      {
      }

      if (i == v11)
      {
        v16 = "";
      }

      else
      {
        v16 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v16, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A3383FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<double>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v16 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v16 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v17, "");
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v16 == a4)
      {
        MEMORY[0x25F851340](a1, *((*a2)[19] + 8 * a3));
      }

      else
      {
      }

      if (i == v11)
      {
        v15 = "";
      }

      else
      {
        v15 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v15, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A338670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<mlx::core::_MLX_BFloat16>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v17 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v17 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v18, "");
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v18;
      }

      else
      {
        v13 = v18.__r_.__value_.__r.__words[0];
      }

      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v18.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v17 == a4)
      {
        v15 = *((*a2)[19] + 2 * a3) << 16;
        std::ostream::operator<<();
      }

      else
      {
      }

      if (i == v11)
      {
        v16 = "";
      }

      else
      {
        v16 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v16, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A3388EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<BOOL>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v20 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v20 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v21 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v21, "");
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v21;
      }

      else
      {
        v13 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v20 == a4)
      {
        v15 = *((*a2)[19] + a3);
        if (mlx::core::get_global_formatter(void)::formatter == 1)
        {
          v16 = v15 == 0;
          if (*((*a2)[19] + a3))
          {
            v17 = "True";
          }

          else
          {
            v17 = "False";
          }

          if (v16)
          {
            v18 = 5;
          }

          else
          {
            v18 = 4;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v17, v18);
        }

        else
        {
          MEMORY[0x25F851330](a1, v15);
        }
      }

      else
      {
      }

      if (i == v11)
      {
        v19 = "";
      }

      else
      {
        v19 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v19, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A338B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::anonymous namespace::print_subarray<mlx::core::complex64_t>(void *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v8 = mlx::core::array::shape(a2, a4);
  v9 = *((*a2)[3] + 8 * a4);
  v22 = (((*a2)[1] - **a2) >> 2) - 1;
  if (v22 == a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v10 = ", ";
  }

  else
  {
    std::string::basic_string[abi:ne200100](&__p, a4 + 7, 32);
    v10 = ",\n";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v11 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (i)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v23 = __p;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v23, "");
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v23;
      }

      else
      {
        v13 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (i == 3 && v8 >= 7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "...", 3);
        a3 += v9 * (v8 - 7);
        i = v8 - 4;
      }

      else if (v22 == a4)
      {
        v15 = (*a2)[19] + 8 * a3;
        v16 = *v15;
        v17 = *(v15 + 4);
        v18 = std::ostream::operator<<();
        if (v17 < 0.0)
        {
          v19 = "";
        }

        else
        {
          v19 = "+";
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v17 >= 0.0);
        v20 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "j", 1);
      }

      else
      {
      }

      if (i == v11)
      {
        v21 = "";
      }

      else
      {
        v21 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v21, 2 * (i != v11));
      a3 += v9;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A338E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fmt::v10::vformat(const char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned int *a4@<X3>, _BYTE *a5@<X8>)
{
  v10[63] = *MEMORY[0x277D85DE8];
  v7 = &unk_286BF19A0;
  __p = v10;
  v9 = xmmword_25A9BF650;
  fmt::v10::detail::vformat_to<char>(&v7, a1, a2, a3, a4, 0);
  fmt::v10::to_string<char,500ul>(&v7, a5);
  if (__p != v10)
  {
    operator delete(__p);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A338F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p != v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *fmt::v10::detail::vformat_to<char>(char *a1, const char *__s, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  v6 = __s;
  if (a3 == 2 && *__s == 32123)
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      if (a4 <= 0 || (v16 = a5[4]) == 0)
      {
LABEL_44:
        fmt::v10::detail::throw_format_error("argument not found", __s);
      }
    }

    else
    {
      v16 = a4 & 0xF;
      if ((a4 & 0xF) == 0)
      {
        goto LABEL_44;
      }
    }

    v17 = *a5;
    v18 = a5[1];
    v19 = *(a5 + 1);
    v27[0] = a1;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    switch(v16)
    {
      case 1:
        result = fmt::v10::detail::write<char,fmt::v10::appender,int,0>(a1, v17, 2, a4);
        break;
      case 2:
        result = fmt::v10::detail::write<char,fmt::v10::appender,unsigned int,0>(a1, v17, 2, a4);
        break;
      case 3:
        result = fmt::v10::detail::write<char,fmt::v10::appender,long long,0>(a1, v17 | (v18 << 32), 2, a4);
        break;
      case 4:
        result = fmt::v10::detail::write<char,fmt::v10::appender,unsigned long long,0>(a1, v17 | (v18 << 32), 2, a4);
        break;
      case 5:
        result = fmt::v10::detail::write<char,fmt::v10::appender,__int128,0>(a1, v17 | (v18 << 32), v19);
        break;
      case 6:
        result = fmt::v10::detail::write<char,fmt::v10::appender,unsigned __int128,0>(a1, v17 | (v18 << 32), v19);
        break;
      case 7:
        result = fmt::v10::detail::default_arg_formatter<char>::operator()<BOOL>(v27, v17 & 1);
        break;
      case 8:
        LOBYTE(v20) = v17;
        result = fmt::v10::detail::buffer<char>::push_back(a1, &v20);
        break;
      case 9:
        result = fmt::v10::detail::write<char,fmt::v10::appender,float,0>(a1, v17, 2, a4, *&v17);
        break;
      case 10:
      case 11:
        result = fmt::v10::detail::write<char,fmt::v10::appender,double,0>(a1, v17, 2, a4, COERCE_DOUBLE(v17 | (v18 << 32)));
        break;
      case 12:
        result = fmt::v10::detail::write<char,fmt::v10::appender>(a1, (v17 | (v18 << 32)));
        break;
      case 13:
        result = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>((v17 | (v18 << 32)), &v19[v17 | (v18 << 32)], a1, a4);
        break;
      case 14:
        result = fmt::v10::detail::default_arg_formatter<char>::operator()<void const*>(v27, v17 | (v18 << 32));
        break;
      case 15:
        v28[0] = 0;
        v28[1] = 0;
        v29 = 0;
        v20 = a1;
        v21 = a4;
        v22 = a5;
        v23 = a6;
        result = (v19)(v17 | (v18 << 32), v28, &v20);
        break;
      default:
        fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xE5E, "", a4);
    }

    return result;
  }

  v20 = __s;
  v21 = a3;
  LODWORD(v22) = 0;
  v23 = a1;
  v24 = a4;
  v7 = &__s[a3];
  v25 = a5;
  v26 = a6;
  if (a3 > 31)
  {
    v27[0] = &v20;
    while (1)
    {
      v14 = v6;
      if (*v6 != 123)
      {
        if (v7 - (v6 + 1) < 0)
        {
          fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
        }

        v14 = memchr(v6 + 1, 123, v7 - (v6 + 1));
        if (!v14)
        {
          break;
        }
      }

      fmt::v10::detail::parse_format_string<false,char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler>(fmt::v10::basic_string_view<char>,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &&)::writer::operator()(v27, v6, v14, a4);
      result = fmt::v10::detail::parse_replacement_field<char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &>(v14, v7, &v20, v15);
      v6 = result;
      if (result == v7)
      {
        return result;
      }
    }

    return fmt::v10::detail::parse_format_string<false,char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler>(fmt::v10::basic_string_view<char>,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &&)::writer::operator()(v27, v6, v7, a4);
  }

  else
  {
    if (a3)
    {
      v8 = __s;
      v9 = __s;
      do
      {
        v11 = *v9++;
        v10 = v11;
        if (v11 == 125)
        {
          if (v9 == v7 || *v9 != 125)
          {
            fmt::v10::detail::throw_format_error("unmatched '}' in format string", __s);
          }

          fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_text(&v20, v6, v9, a4);
          v9 = v8 + 2;
          v6 = v8 + 2;
        }

        else if (v10 == 123)
        {
          fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_text(&v20, v6, v8, a4);
          v9 = fmt::v10::detail::parse_replacement_field<char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &>(v8, v7, &v20, v12);
          v6 = v9;
        }

        v8 = v9;
      }

      while (v9 != v7);
    }

    return fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_text(&v20, v6, v7, a4);
  }
}

void *fmt::v10::to_string<char,500ul>@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  a2[v3] = 0;
  return result;
}

void fmt::v10::basic_memory_buffer<char,500ul,std::allocator<char>>::grow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) + (*(a1 + 24) >> 1) > a2)
  {
    v2 = *(a1 + 24) + (*(a1 + 24) >> 1);
  }

  v3 = *(a1 + 8);
  operator new();
}

__n128 fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get@<Q0>(unint64_t *a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  a3[1].n128_u32[0] = 0;
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if (v3 > a2)
    {
      v6 = (a1[1] + 32 * a2);
      result = *v6;
      *a3 = *v6;
      a3[1].n128_u32[0] = v6[1].n128_u32[0];
    }
  }

  else if (a2 <= 14)
  {
    v4 = (v3 >> (4 * a2)) & 0xF;
    a3[1].n128_u32[0] = v4;
    if (v4)
    {
      result = *(a1[1] + 16 * a2);
      *a3 = result;
    }
  }

  return result;
}

void fmt::v10::detail::throw_format_error(fmt::v10::detail *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  _ZN3fmt3v1012format_errorCI1St13runtime_errorEPKc(exception, this);
}

std::runtime_error *_ZN3fmt3v1012format_errorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_286BF19F8;
  return result;
}

void fmt::v10::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x25F851760);
}

uint64_t fmt::v10::detail::default_arg_formatter<char>::operator()<BOOL>(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v4 = 0xFFFFFFFF00000000;
  v5 = 0;
  v6 = 0;
  v7 = 32;
  v8 = 1;
  return fmt::v10::detail::write<char,fmt::v10::appender,BOOL,0>(v2, a2, &v4);
}

void *fmt::v10::detail::default_arg_formatter<char>::operator()<void const*>(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v4 = 0xFFFFFFFF00000000;
  v5 = 0;
  v6 = 0;
  v7 = 32;
  v8 = 1;
  return fmt::v10::detail::write_ptr<char,fmt::v10::appender,unsigned long>(v2, a2, &v4);
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,int,0>(void *a1, int a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = fmt::v10::detail::do_count_digits::table[__clz(v5 | 1) ^ 0x1F] + v5;
  v7 = HIDWORD(v6);
  v8 = a1[2];
  v9 = v8 + (a2 >> 31) + (v6 >> 32);
  if (a1[3] >= v9 && (a1[2] = v9, (v10 = a1[1]) != 0))
  {
    v11 = (v10 + v8);
    if (a2 < 0)
    {
      *v11++ = 45;
    }

    fmt::v10::detail::format_decimal<char,unsigned int>(v11, v5, v7, a4);
  }

  else
  {
    if (a2 < 0)
    {
      LOBYTE(v16) = 45;
      fmt::v10::detail::buffer<char>::push_back(a1, &v16);
    }

    v17 = 0;
    v16 = 0;
    fmt::v10::detail::format_decimal<char,unsigned int>(&v16, v5, v7, a4);
    v4 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v16, v12, v4, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t fmt::v10::detail::format_decimal<char,unsigned int>(uint64_t a1, unsigned int a2, int a3, const char *a4)
{
  if (((fmt::v10::detail::do_count_digits::table[__clz(a2 | 1) ^ 0x1F] + a2) >> 32) > a3)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0x51E, "invalid digit count", a4);
  }

  v4 = a2;
  if (a2 < 0x64)
  {
    v5 = a1 + a3;
    v6 = a2;
  }

  else
  {
    v5 = a1 + a3;
    do
    {
      v6 = v4 / 0x64;
      *(v5 - 2) = *&a00010203040506[2 * (v4 % 0x64)];
      v5 -= 2;
      v7 = v4 >> 4;
      v4 /= 0x64u;
    }

    while (v7 > 0x270);
  }

  if (v6 > 9)
  {
    *(v5 - 2) = *&a00010203040506[2 * v6];
    return v5 - 2;
  }

  else
  {
    *(v5 - 1) = v6 | 0x30;
    return v5 - 1;
  }
}

uint64_t fmt::v10::detail::buffer<char>::push_back(uint64_t result, char *a2)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = v4 + 1;
  if (*(result + 24) < (v4 + 1))
  {
    result = (**result)(result);
    v4 = *(v3 + 16);
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *(v3 + 8);
  *(v3 + 16) = v5;
  *(v7 + v4) = v6;
  return result;
}

uint64_t fmt::v10::detail::buffer<char>::append<char>(uint64_t result, char *a2, char *a3, const char *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = result;
    do
    {
      v7 = a3 - v5;
      if (a3 - v5 < 0)
      {
        fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v8 < v9 + v7)
      {
        result = (**v6)(v6);
        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
      }

      v10 = v8 - v9;
      if (v10 >= v7)
      {
        v10 = a3 - v5;
      }

      if (v10)
      {
        v11 = (*(v6 + 8) + v9);
        v12 = v10;
        v13 = v5;
        do
        {
          v14 = *v13++;
          *v11++ = v14;
          --v12;
        }

        while (v12);
        v9 = *(v6 + 16);
      }

      *(v6 + 16) = v9 + v10;
      v5 += v10;
    }

    while (v5 != a3);
  }

  return result;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,unsigned int,0>(void *a1, unsigned int a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  v16 = *MEMORY[0x277D85DE8];
  v5 = fmt::v10::detail::do_count_digits::table[__clz(a2 | 1) ^ 0x1F] + a2;
  v6 = HIDWORD(v5);
  v7 = a1[2];
  v8 = v7 + (v5 >> 32);
  if (a1[3] >= v8 && (a1[2] = v8, (v9 = a1[1]) != 0))
  {
    fmt::v10::detail::format_decimal<char,unsigned int>(v9 + v7, a2, v6, a4);
  }

  else
  {
    v15 = 0;
    v14 = 0;
    fmt::v10::detail::format_decimal<char,unsigned int>(&v14, a2, v6, a4);
    v4 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v14, v10, v4, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,long long,0>(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = fmt::v10::detail::do_count_digits(unsigned long long)::bsr2log10[__clz(v5 | 1) ^ 0x3F];
  v7 = (__PAIR128__(v6, v5) - fmt::v10::detail::do_count_digits(unsigned long long)::zero_or_powers_of_10[v6]) >> 64;
  v8 = a1[2];
  v9 = v8 + (a2 >> 63) + v7;
  if (a1[3] >= v9 && (a1[2] = v9, (v10 = a1[1]) != 0))
  {
    v11 = (v10 + v8);
    if (a2 < 0)
    {
      *v11++ = 45;
    }

    fmt::v10::detail::format_decimal<char,unsigned long long>(v11, v5, v7, a4);
  }

  else
  {
    if (a2 < 0)
    {
      LOBYTE(v16[0]) = 45;
      fmt::v10::detail::buffer<char>::push_back(a1, v16);
    }

    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    fmt::v10::detail::format_decimal<char,unsigned long long>(v16, v5, v7, a4);
    v4 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v16, v12, v4, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t fmt::v10::detail::format_decimal<char,unsigned long long>(uint64_t a1, unint64_t a2, signed int a3, const char *a4)
{
  v4 = fmt::v10::detail::do_count_digits(unsigned long long)::bsr2log10[__clz(a2 | 1) ^ 0x3F];
  if ((v4 - (fmt::v10::detail::do_count_digits(unsigned long long)::zero_or_powers_of_10[v4] > a2)) > a3)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0x51E, "invalid digit count", a4);
  }

  v5 = a2;
  if (a2 < 0x64)
  {
    v6 = a1 + a3;
    v7 = a2;
  }

  else
  {
    v6 = a1 + a3;
    do
    {
      v7 = v5 / 0x64;
      *(v6 - 2) = *&a00010203040506[2 * (v5 % 0x64)];
      v6 -= 2;
      v8 = v5 >> 4;
      v5 /= 0x64uLL;
    }

    while (v8 > 0x270);
  }

  if (v7 > 9)
  {
    *(v6 - 2) = *&a00010203040506[2 * v7];
    return v6 - 2;
  }

  else
  {
    *(v6 - 1) = v7 | 0x30;
    return v6 - 1;
  }
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,unsigned long long,0>(void *a1, unint64_t a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  v15 = *MEMORY[0x277D85DE8];
  v5 = fmt::v10::detail::do_count_digits(unsigned long long)::bsr2log10[__clz(a2 | 1) ^ 0x3F];
  v6 = (__PAIR128__(v5, a2) - fmt::v10::detail::do_count_digits(unsigned long long)::zero_or_powers_of_10[v5]) >> 64;
  v7 = a1[2];
  if (a1[3] >= (v7 + v6) && (a1[2] = v7 + v6, (v8 = a1[1]) != 0))
  {
    fmt::v10::detail::format_decimal<char,unsigned long long>(v8 + v7, a2, v6, a4);
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    fmt::v10::detail::format_decimal<char,unsigned long long>(v13, a2, v6, a4);
    v4 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v13, v9, v4, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void *fmt::v10::detail::write<char,fmt::v10::appender,__int128,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
  if (__PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63) >= 0xA)
  {
    v6 = 4;
    v9 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    v8 = v9 >> 64;
    v7 = v9;
    while (1)
    {
      if (v7 <= 0x63)
      {
        v6 = (v6 - 2);
        goto LABEL_11;
      }

      if (v7 <= 0x3E7)
      {
        break;
      }

      *(&v10 + 1) = v8;
      *&v10 = v7;
      if (v10 >> 4 < 0x271)
      {
        goto LABEL_11;
      }

      *(&v11 + 1) = v8;
      *&v11 = v7;
      v6 = (v6 + 4);
      v7 = __udivti3();
      v8 = v12;
      if ((v11 >> 5) <= 0xC34)
      {
        v6 = (v6 - 3);
        goto LABEL_11;
      }
    }

    v6 = (v6 - 1);
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  v13 = a1[2];
  v14 = (a3 >> 63) + v6 + v13;
  if (a1[3] >= v14 && (a1[2] = v14, (v15 = a1[1]) != 0))
  {
    v16 = (v15 + v13);
    if (a3 < 0)
    {
      *v16++ = 45;
    }

    fmt::v10::detail::format_decimal<char,unsigned __int128>(v16, v5, *(&v5 + 1), v6);
  }

  else
  {
    if (a3 < 0)
    {
      v21[0] = 45;
      fmt::v10::detail::buffer<char>::push_back(a1, v21);
    }

    memset(v21, 0, sizeof(v21));
    fmt::v10::detail::format_decimal<char,unsigned __int128>(v21, v5, *(&v5 + 1), v6);
    a1 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v21, v17, a1, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t fmt::v10::detail::format_decimal<char,unsigned __int128>(uint64_t a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  if (__PAIR128__(a3, a2) >= 0xA)
  {
    v8 = 4;
    v9 = a2;
    v10 = a3;
    while (1)
    {
      if (v9 <= 0x63)
      {
        v8 -= 2;
        goto LABEL_11;
      }

      if (v9 <= 0x3E7)
      {
        break;
      }

      *(&v11 + 1) = v10;
      *&v11 = v9;
      if (v11 >> 4 < 0x271)
      {
        goto LABEL_11;
      }

      *(&v12 + 1) = v10;
      *&v12 = v9;
      v8 += 4;
      v9 = __udivti3();
      v10 = v13;
      if ((v12 >> 5) <= 0xC34)
      {
        v8 -= 3;
        goto LABEL_11;
      }
    }

    --v8;
  }

  else
  {
    v8 = 1;
  }

LABEL_11:
  if (v8 > v4)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0x51E, "invalid digit count", a4);
  }

  v14 = a1 + v4;
  if (__PAIR128__(v5, v6) < 0x64)
  {
    v15 = v14;
    v16 = v6;
  }

  else
  {
    v15 = v14;
    do
    {
      v16 = __udivti3();
      *(v15 - 2) = *&a00010203040506[2 * (v6 - 100 * v16)];
      v15 -= 2;
      *(&v17 + 1) = v5;
      *&v17 = v6;
      v6 = v16;
      v5 = v18;
    }

    while ((v17 >> 4) > 0x270);
  }

  if (v16 > 9)
  {
    *(v15 - 2) = *&a00010203040506[2 * v16];
    return v15 - 2;
  }

  else
  {
    *(v15 - 1) = v16 | 0x30;
    return v15 - 1;
  }
}

void *fmt::v10::detail::write<char,fmt::v10::appender,unsigned __int128,0>(void *a1, unint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (__PAIR128__(a3, a2) >= 0xA)
  {
    v6 = 4;
    v7 = a2;
    v8 = a3;
    while (1)
    {
      if (v7 <= 0x63)
      {
        v6 = (v6 - 2);
        goto LABEL_11;
      }

      if (v7 <= 0x3E7)
      {
        break;
      }

      *(&v9 + 1) = v8;
      *&v9 = v7;
      if (v9 >> 4 < 0x271)
      {
        goto LABEL_11;
      }

      *(&v10 + 1) = v8;
      *&v10 = v7;
      v6 = (v6 + 4);
      v7 = __udivti3();
      v8 = v11;
      if ((v10 >> 5) <= 0xC34)
      {
        v6 = (v6 - 3);
        goto LABEL_11;
      }
    }

    v6 = (v6 - 1);
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  v12 = a1[2];
  v13 = v12 + v6;
  if (a1[3] >= v13 && (a1[2] = v13, (v14 = a1[1]) != 0))
  {
    fmt::v10::detail::format_decimal<char,unsigned __int128>(v14 + v12, a2, a3, v6);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    fmt::v10::detail::format_decimal<char,unsigned __int128>(v19, a2, a3, v6);
    a1 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v19, v15, a1, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,BOOL,0>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a1;
  v15 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 8) | 0x10) == 0x10)
  {
    if (a2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    v7 = "true";
    if (!a2)
    {
      v7 = "false";
    }

    v12 = v7;
    v13 = v6;
    v8 = fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_bytes<(fmt::v10::align::type)1,char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, a3, v6, v6, &v12);
    goto LABEL_12;
  }

  v9 = *(a3 + 9);
  if ((v9 & 0x100) == 0)
  {
LABEL_11:
    v8 = fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned int>(v5, (a2 | (dword_25A9BF6E0[(v9 >> 4) & 7] << 32)), a3, 0);
LABEL_12:
    v5 = v8;
    goto LABEL_13;
  }

  v14 = 1;
  v12 = a2;
  v13 = 0;
  if ((fmt::v10::detail::write_loc(a1, &v12, a3, 0) & 1) == 0)
  {
    v9 = *(a3 + 9);
    goto LABEL_11;
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t fmt::v10::detail::write_loc(uint64_t a1, uint64_t a2, uint64_t a3, std::locale *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    std::locale::locale(&v13, a4);
  }

  else
  {
    MEMORY[0x25F8515F0](&v13);
  }

  if (std::locale::has_facet(&v13, &fmt::v10::format_facet<std::locale>::id))
  {
    v7 = std::locale::use_facet(&v13, &fmt::v10::format_facet<std::locale>::id);
    v8 = *(a2 + 16);
    v14 = *a2;
    *v15 = v8;
    v9 = (v7->__vftable[1].~facet)(v7, a1, &v14, a3);
  }

  else
  {
    fmt::v10::format_facet<std::locale>::format_facet(&v14, &v13);
    v10 = *(a2 + 16);
    v21[0] = *a2;
    v21[1] = v10;
    v9 = (v14.__vftable[1].~__shared_count)(&v14, a1, v21, a3);
    v14.__vftable = &unk_286BF1A20;
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    std::__shared_count::~__shared_count(&v14);
  }

  std::locale::~locale(&v13);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_25A33A46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, std::__shared_count a11)
{
  fmt::v10::format_facet<std::locale>::~format_facet(&a11);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void *fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned int>(uint64_t a1, const char *a2, uint64_t a3, const char *a4)
{
  v5 = a2;
  v6 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a2 >> 32;
  v9 = *(a3 + 8);
  if (v9 <= 2)
  {
    if (v9 < 2)
    {
      v15 = fmt::v10::detail::do_count_digits::table[__clz(a2 | 1) ^ 0x1F] + a2;
      v16 = HIDWORD(v15);
      if ((*(a3 + 4) + 1) | *a3)
      {
        v17 = a2;
        v18 = v15 & 0xFFFFFFFF00000000;
        fmt::v10::detail::write_int_data<char>::write_int_data(&v51, SHIDWORD(v15), HIDWORD(a2), a3);
        LODWORD(v52[0]) = v8;
        *(v52 + 8) = v51;
        *(&v52[1] + 1) = v18 | v17;
        v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(v6, a3, v51, v51, v52);
        goto LABEL_72;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
      }

      if (v8)
      {
        v34 = HIDWORD(a2) & 0xFFFFFF;
        if ((HIDWORD(a2) & 0xFFFFFF) != 0)
        {
          do
          {
            LOBYTE(v52[0]) = v34;
            fmt::v10::detail::buffer<char>::push_back(v6, v52);
            v29 = v34 > 0xFF;
            v34 >>= 8;
          }

          while (v29);
        }
      }

      WORD4(v52[0]) = 0;
      *&v52[0] = 0;
      fmt::v10::detail::format_decimal<char,unsigned int>(v52, v7, v16, a4);
LABEL_71:
      v14 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v52, v35, v6, a4);
      goto LABEL_72;
    }

    if (v9 != 2)
    {
      goto LABEL_84;
    }

    v22 = __clz(a2 | 1) ^ 0x1F;
    v23 = ((86 * v22) >> 8) + 1;
    if (v8)
    {
      v24 = 12288;
    }

    else
    {
      v24 = 48;
    }

    v25 = (v24 | HIDWORD(a2)) + 0x1000000;
    v26 = *(a3 + 4);
    if (v26 > v23 || a2 == 0)
    {
      v25 = HIDWORD(a2);
    }

    if ((*(a3 + 9) & 0x80) != 0)
    {
      LODWORD(v8) = v25;
    }

    if ((v26 + 1) | *a3)
    {
      fmt::v10::detail::write_int_data<char>::write_int_data(&v51, ((86 * v22) >> 8) + 1, v8, a3);
      LODWORD(v52[0]) = v8;
      *(v52 + 8) = v51;
      *(&v52[1] + 1) = v5 | (v23 << 32);
      v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(v6, a3, v51, v51, v52);
      goto LABEL_72;
    }

    v46 = v8 & 0xFFFFFF;
    if ((v8 & 0xFFFFFF) != 0)
    {
      do
      {
        LOBYTE(v52[0]) = v46;
        fmt::v10::detail::buffer<char>::push_back(v6, v52);
        v29 = v46 > 0xFF;
        v46 >>= 8;
      }

      while (v29);
    }

    v47 = v6[2];
    if (v6[3] < (v47 + v23) || (v6[2] = v47 + v23, (v48 = v6[1]) == 0))
    {
      *(v52 + 7) = 0;
      *&v52[0] = 0;
      v50 = (v22 * 0x5555555555555556uLL) >> 64;
      do
      {
        *(v52 + v50--) = v7 & 7 | 0x30;
        v29 = v7 > 7;
        v7 >>= 3;
      }

      while (v29);
      v35 = v52 + v23;
      goto LABEL_71;
    }

    v49 = (v48 + v47 + ((v22 * 0x5555555555555556uLL) >> 64));
    do
    {
      *v49-- = v7 & 7 | 0x30;
      v33 = v7 >= 8;
      v7 >>= 3;
    }

    while (v33);
  }

  else
  {
    if (v9 - 3 >= 2)
    {
      if (v9 - 5 < 2)
      {
        if (v9 == 6)
        {
          v10 = 16944;
        }

        else
        {
          v10 = 25136;
        }

        if (v8)
        {
          v10 <<= 8;
        }

        v11 = (v10 | HIDWORD(a2)) + 0x2000000;
        if ((*(a3 + 9) & 0x80) != 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = HIDWORD(a2);
        }

        v13 = 32 - __clz(a2 | 1);
        if ((*(a3 + 4) + 1) | *a3)
        {
          fmt::v10::detail::write_int_data<char>::write_int_data(&v51, v13, v12, a3);
          LODWORD(v52[0]) = v12;
          *(v52 + 8) = v51;
          *(&v52[1] + 1) = v5 | (v13 << 32);
          v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(v6, a3, v51, v51, v52);
LABEL_72:
          v6 = v14;
          goto LABEL_73;
        }

        v28 = v12 & 0xFFFFFF;
        if ((v12 & 0xFFFFFF) != 0)
        {
          do
          {
            LOBYTE(v52[0]) = v28;
            fmt::v10::detail::buffer<char>::push_back(v6, v52);
            v29 = v28 > 0xFF;
            v28 >>= 8;
          }

          while (v29);
        }

        v30 = v6[2];
        if (v6[3] >= (v30 + v13))
        {
          v6[2] = v30 + v13;
          v31 = v6[1];
          if (v31)
          {
            v32 = (v30 + v13 + v31 - 1);
            do
            {
              *v32-- = v7 & 1 | 0x30;
              v33 = v7 >= 2;
              v7 >>= 1;
            }

            while (v33);
            goto LABEL_73;
          }
        }

        v53 = 0;
        memset(v52, 0, sizeof(v52));
        v41 = v13 - 1;
        do
        {
          *(v52 + v41--) = v7 & 1 | 0x30;
          v29 = v7 > 1;
          v7 >>= 1;
        }

        while (v29);
        goto LABEL_70;
      }

      if (v9 == 15)
      {
        LOBYTE(v52[0]) = 0;
        BYTE1(v52[0]) = a2;
        v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_char<char,fmt::v10::appender>(fmt::v10::appender,char,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, a3, 1, 1, v52);
        goto LABEL_72;
      }

LABEL_84:
      fmt::v10::detail::throw_format_error("invalid format specifier", a2);
    }

    if (v9 == 4)
    {
      v19 = 22576;
    }

    else
    {
      v19 = 30768;
    }

    if (v8)
    {
      v19 <<= 8;
    }

    v20 = (v19 | HIDWORD(a2)) + 0x2000000;
    if ((*(a3 + 9) & 0x80) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = HIDWORD(a2);
    }

    v13 = 8 - (__clz(a2 | 1) >> 2);
    if ((*(a3 + 4) + 1) | *a3)
    {
      fmt::v10::detail::write_int_data<char>::write_int_data(&v51, v13, v21, a3);
      LODWORD(v52[0]) = v21;
      *(v52 + 8) = v51;
      *(&v52[1] + 1) = v5 | (v13 << 32);
      v53 = v9 == 4;
      v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(v6, a3, v51, v51, v52);
      goto LABEL_72;
    }

    v36 = v21 & 0xFFFFFF;
    if ((v21 & 0xFFFFFF) != 0)
    {
      do
      {
        LOBYTE(v52[0]) = v36;
        fmt::v10::detail::buffer<char>::push_back(v6, v52);
        v29 = v36 > 0xFF;
        v36 >>= 8;
      }

      while (v29);
    }

    v37 = v6[2];
    if (v6[3] < (v37 + v13) || (v6[2] = v37 + v13, (v38 = v6[1]) == 0))
    {
      BYTE8(v52[0]) = 0;
      *&v52[0] = 0;
      v42 = "0123456789abcdef";
      if (v9 == 4)
      {
        v42 = "0123456789ABCDEF";
      }

      v43 = v13 - 1;
      do
      {
        *(v52 + v43--) = v42[v7 & 0xF];
        v29 = v7 > 0xF;
        v7 >>= 4;
      }

      while (v29);
LABEL_70:
      v35 = v52 + v13;
      goto LABEL_71;
    }

    v39 = "0123456789abcdef";
    if (v9 == 4)
    {
      v39 = "0123456789ABCDEF";
    }

    v40 = (v37 + v13 + v38 - 1);
    do
    {
      *v40-- = v39[v7 & 0xF];
      v33 = v7 >= 0x10;
      v7 >>= 4;
    }

    while (v33);
  }

LABEL_73:
  v44 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t fmt::v10::format_facet<std::locale>::format_facet(uint64_t a1, std::locale *this)
{
  *a1 = &unk_286BF1A20;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0u;
  v3 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v4 = std::locale::use_facet(this, MEMORY[0x277D826C0]);
  (v4->__vftable[1].__on_zero_shared)(&v7);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  if ((*(a1 + 63) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 48))
    {
      return a1;
    }
  }

  else if (!*(a1 + 63))
  {
    return a1;
  }

  v5 = (v4->__vftable[1].~facet_0)(v4);
  if (*(a1 + 39) < 0)
  {
    operator delete(*v3);
  }

  *(a1 + 16) = v5;
  *(a1 + 39) = 1;
  return a1;
}

void sub_25A33ABD8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  std::__shared_count::~__shared_count(v1);
  _Unwind_Resume(a1);
}

void fmt::v10::format_facet<std::locale>::~format_facet(std::__shared_count *this)
{
  this->__vftable = &unk_286BF1A20;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__shared_owners_) < 0)
  {
    operator delete(this[2].__shared_owners_);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x25F851760);
}

{
  this->__vftable = &unk_286BF1A20;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__shared_owners_) < 0)
  {
    operator delete(this[2].__shared_owners_);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::__shared_count::~__shared_count(this);
}

uint64_t fmt::v10::format_facet<std::locale>::do_put(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[1] = a4;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v10 = *(a1 + 40);
  }

  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    __p = *(a1 + 64);
  }

  v6 = fmt::v10::loc_value::visit<fmt::v10::detail::loc_writer<char>>(a3, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_25A33ADB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::loc_value::visit<fmt::v10::detail::loc_writer<char>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      return fmt::v10::detail::loc_writer<char>::operator()<unsigned long long,0>(a2, *a1);
    }

    if (v2 != 5)
    {
      if (v2 == 6)
      {
        return fmt::v10::detail::loc_writer<char>::operator()<unsigned __int128,0>(a2, *a1, *(a1 + 8));
      }

      return 0;
    }

    return fmt::v10::detail::loc_writer<char>::operator()<__int128,0>(a2, *a1, *(a1 + 8));
  }

  else
  {
    if (v2 == 1)
    {
      return fmt::v10::detail::loc_writer<char>::operator()<int,0>(a2, *a1);
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return fmt::v10::detail::loc_writer<char>::operator()<long long,0>(a2, *a1);
      }

      return 0;
    }

    return fmt::v10::detail::loc_writer<char>::operator()<unsigned int,0>(a2, *a1);
  }
}

uint64_t fmt::v10::detail::loc_writer<char>::operator()<int,0>(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0)
  {
    v2 = -a2;
    v5 = 16777261;
  }

  else
  {
    v5 = dword_25A9BF6E0[(*(v4 + 9) >> 4) & 7];
  }

  v6 = *a1;
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v9 = *(a1 + 40);
  }

  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  __p = v8;
  memset(&v8, 0, sizeof(v8));
  fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(v6, v2, v5, v4, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_25A33AFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::loc_writer<char>::operator()<unsigned int,0>(uint64_t a1, unsigned int a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = dword_25A9BF6E0[(*(v4 + 9) >> 4) & 7];
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v9 = *(a1 + 40);
  }

  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  __p = v8;
  memset(&v8, 0, sizeof(v8));
  fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(v5, a2, v6, v4, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_25A33B14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::loc_writer<char>::operator()<long long,0>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    v2 = -a2;
    v5 = 16777261;
  }

  else
  {
    v5 = dword_25A9BF6E0[(*(v4 + 9) >> 4) & 7];
  }

  v6 = *a1;
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v9 = *(a1 + 40);
  }

  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  __p = v8;
  memset(&v8, 0, sizeof(v8));
  fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(v6, v2, v5, v4, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_25A33B2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::loc_writer<char>::operator()<unsigned long long,0>(uint64_t a1, unint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = dword_25A9BF6E0[(*(v4 + 9) >> 4) & 7];
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v9 = *(a1 + 40);
  }

  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v10 = v9;
  memset(&v9, 0, sizeof(v9));
  __p = v8;
  memset(&v8, 0, sizeof(v8));
  fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(v5, a2, v6, v4, &v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_25A33B43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::loc_writer<char>::operator()<__int128,0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 8);
  if ((a3 & 0x8000000000000000) != 0)
  {
    v4 = -a2;
    v3 = -__PAIR128__(a3, a2) >> 64;
    v7 = 16777261;
  }

  else
  {
    v7 = dword_25A9BF6E0[(*(v6 + 9) >> 4) & 7];
  }

  v8 = *a1;
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v11 = *(a1 + 40);
  }

  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v12 = v11;
  memset(&v11, 0, sizeof(v11));
  __p = v10;
  memset(&v10, 0, sizeof(v10));
  fmt::v10::detail::write_int<fmt::v10::appender,unsigned __int128,char>(v8, v4, v3, v7, v6, &v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_25A33B5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::loc_writer<char>::operator()<unsigned __int128,0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = dword_25A9BF6E0[(*(v6 + 9) >> 4) & 7];
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v11 = *(a1 + 40);
  }

  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v12 = v11;
  memset(&v11, 0, sizeof(v11));
  __p = v10;
  memset(&v10, 0, sizeof(v10));
  fmt::v10::detail::write_int<fmt::v10::appender,unsigned __int128,char>(v7, a2, a3, v8, v6, &v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_25A33B740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, char *a5)
{
  v7 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v38 = &unk_286BF19A0;
  __p = v41;
  v40 = xmmword_25A9BF650;
  v9 = *(a4 + 8);
  if (v9 > 2)
  {
    if (v9 - 3 < 2)
    {
      if ((*(a4 + 9) & 0x80) != 0)
      {
        if (v9 == 4)
        {
          v20 = 22576;
        }

        else
        {
          v20 = 30768;
        }

        if (a3)
        {
          v20 <<= 8;
        }

        v7 = (v20 | a3) + 0x2000000;
        v37 = v7;
      }

      v21 = &v40 + 15;
      v22 = -1;
      v23 = a2;
      do
      {
        ++v21;
        ++v22;
        v14 = v23 > 0xF;
        v23 >>= 4;
      }

      while (v14);
      v15 = v22 + 1;
      if (v22 <= 0x1F3)
      {
        *&v40 = v22 + 1;
        if (v9 == 4)
        {
          v32 = "0123456789ABCDEF";
        }

        else
        {
          v32 = "0123456789abcdef";
        }

        do
        {
          *v21-- = v32[a2 & 0xF];
          v31 = a2 >= 0x10;
          a2 >>= 4;
        }

        while (v31);
      }

      else
      {
        memset(v42, 0, 17);
        v24 = v42 + v22;
        if (v9 == 4)
        {
          v25 = "0123456789ABCDEF";
        }

        else
        {
          v25 = "0123456789abcdef";
        }

        do
        {
          *(v42 + v22--) = v25[a2 & 0xF];
          v14 = a2 > 0xF;
          a2 >>= 4;
        }

        while (v14);
        fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v42, v24 + 1, &v38, a4);
      }

      goto LABEL_60;
    }

    if (v9 - 5 < 2)
    {
      if ((*(a4 + 9) & 0x80) != 0)
      {
        if (v9 == 6)
        {
          v10 = 16944;
        }

        else
        {
          v10 = 25136;
        }

        if (a3)
        {
          v10 <<= 8;
        }

        v7 = (v10 | a3) + 0x2000000;
        v37 = v7;
      }

      v11 = &v40 + 15;
      v12 = -1;
      v13 = a2;
      do
      {
        ++v11;
        ++v12;
        v14 = v13 > 1;
        v13 >>= 1;
      }

      while (v14);
      v15 = v12 + 1;
      if (v12 <= 0x1F3)
      {
        *&v40 = v12 + 1;
        do
        {
          *v11-- = a2 & 1 | 0x30;
          v31 = a2 >= 2;
          a2 >>= 1;
        }

        while (v31);
        goto LABEL_60;
      }

      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      memset(v42, 0, sizeof(v42));
      v16 = v42 + v12;
      do
      {
        *(v42 + v12--) = a2 & 1 | 0x30;
        v14 = a2 > 1;
        a2 >>= 1;
      }

      while (v14);
      goto LABEL_16;
    }

    if (v9 == 15)
    {
      LOBYTE(v42[0]) = 0;
      BYTE1(v42[0]) = a2;
      v26 = fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_char<char,fmt::v10::appender>(fmt::v10::appender,char,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, a4, 1, 1, v42);
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  if (v9 >= 2)
  {
    if (v9 == 2)
    {
      v27 = &v40 + 15;
      v28 = -1;
      v29 = a2;
      do
      {
        ++v27;
        ++v28;
        v14 = v29 > 7;
        v29 >>= 3;
      }

      while (v14);
      v15 = v28 + 1;
      if ((*(a4 + 9) & 0x80) != 0 && a2 && *(a4 + 4) <= v15)
      {
        if (a3)
        {
          v30 = 12288;
        }

        else
        {
          v30 = 48;
        }

        v7 = (v30 | a3) + 0x1000000;
        v37 = v7;
      }

      if (v28 <= 0x1F3)
      {
        *&v40 = v28 + 1;
        do
        {
          *v27-- = a2 & 7 | 0x30;
          v31 = a2 >= 8;
          a2 >>= 3;
        }

        while (v31);
        goto LABEL_60;
      }

      v42[0] = 0;
      v42[1] = 0;
      *(&v42[1] + 6) = 0;
      v16 = v42 + v28;
      do
      {
        *(v42 + v28--) = a2 & 7 | 0x30;
        v14 = a2 > 7;
        a2 >>= 3;
      }

      while (v14);
LABEL_16:
      fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v42, v16 + 1, &v38, a4);
      goto LABEL_60;
    }

LABEL_67:
    fmt::v10::detail::throw_format_error("invalid format specifier", a2);
  }

  v17 = fmt::v10::detail::do_count_digits(unsigned long long)::bsr2log10[__clz(a2 | 1) ^ 0x3F];
  v15 = v17 - (fmt::v10::detail::do_count_digits(unsigned long long)::zero_or_powers_of_10[v17] > a2);
  memset(v42, 0, 20);
  fmt::v10::detail::format_decimal<char,unsigned long long>(v42, a2, v15, a4);
  fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v42, v18, &v38, v19);
LABEL_60:
  if (v15 < 0 || (v33 = fmt::v10::detail::digit_grouping<char>::count_separators(a5, v15), v33 < 0))
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v42[0] = &v37;
  v42[1] = a5;
  v42[2] = &v38;
  v26 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(fmt::v10::appender,unsigned long long,unsigned int,fmt::v10::format_specs<char> const&,fmt::v10::detail::digit_grouping<char> const&)::{lambda(fmt::v10::appender)#1}>(a1, a4, v15 + HIBYTE(v7) + v33, (v15 + HIBYTE(v7) + v33), v42);
LABEL_63:
  v34 = v26;
  if (__p != v41)
  {
    operator delete(__p);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

void sub_25A33BC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p != v11)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::digit_grouping<char>::~digit_grouping(uint64_t a1)
{
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

uint64_t fmt::v10::detail::digit_grouping<char>::count_separators(char *a1, int a2)
{
  v4 = a1;
  if (a1[23] < 0)
  {
    v4 = *a1;
  }

  v7 = v4;
  v8 = 0;
  LODWORD(v5) = -1;
  do
  {
    v5 = (v5 + 1);
  }

  while (fmt::v10::detail::digit_grouping<char>::next(a1, &v7) < a2);
  return v5;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(fmt::v10::appender,unsigned long long,unsigned int,fmt::v10::format_specs<char> const&,fmt::v10::detail::digit_grouping<char> const&)::{lambda(fmt::v10::appender)#1}>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  v14 = **a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      v18 = v14;
      fmt::v10::detail::buffer<char>::push_back(v8, &v18);
      v15 = v14 > 0xFF;
      v14 >>= 8;
    }

    while (v15);
  }

  result = fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(*(a5 + 8), v8, *(*(a5 + 16) + 8), *(*(a5 + 16) + 16));
  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v17);
  }

  return result;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_char<char,fmt::v10::appender>(fmt::v10::appender,char,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, _BYTE *a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BF942[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (*a5 == 1)
  {
    v8 = fmt::v10::detail::write_escaped_char<char,fmt::v10::appender>(v8, a5[1]);
  }

  else
  {
    fmt::v10::detail::buffer<char>::push_back(v8, a5 + 1);
  }

  if (v11 == v13)
  {
    return v8;
  }

  return fmt::v10::detail::fill<fmt::v10::appender,char>(v8, v11 - v13, a2 + 11, v14);
}

uint64_t fmt::v10::detail::fill<fmt::v10::appender,char>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = a2;
  v7 = *(a3 + 4);
  if (v7 == 1)
  {
    if (a2)
    {
      do
      {
        fmt::v10::detail::buffer<char>::push_back(a1, a3);
        --v5;
      }

      while (v5);
    }
  }

  else if (a2)
  {
    do
    {
      fmt::v10::detail::buffer<char>::append<char>(a1, a3, (a3 + v7), a4);
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t fmt::v10::detail::write_escaped_char<char,fmt::v10::appender>(uint64_t a1, fmt::v10::detail *a2)
{
  v3 = a1;
  v11 = a2;
  v10 = a2;
  LOBYTE(v8[0]) = 39;
  fmt::v10::detail::buffer<char>::push_back(a1, v8);
  LOBYTE(v6) = 1;
  if (a2 >= 0x20 && a2 != 34 && a2 != 92 && a2 != 127)
  {
    v6 = fmt::v10::detail::is_printable(a2) ^ 1;
  }

  if (a2 == 34)
  {
    LOBYTE(v6) = 0;
  }

  if ((v6 & 1) != 0 || a2 == 39)
  {
    v8[0] = &v10;
    v8[1] = &v11;
    v9 = a2;
    v3 = fmt::v10::detail::write_escaped_cp<fmt::v10::appender,char>(v3, v8, v4, v5);
  }

  else
  {
    fmt::v10::detail::buffer<char>::push_back(v3, &v11);
  }

  LOBYTE(v8[0]) = 39;
  fmt::v10::detail::buffer<char>::push_back(v3, v8);
  return v3;
}

uint64_t fmt::v10::detail::write_escaped_cp<fmt::v10::appender,char>(uint64_t a1, unsigned __int8 **a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  v5 = *(a2 + 4);
  v15 = v5;
  if (v5 > 33)
  {
    if (v5 == 34 || v5 == 39 || v5 == 92)
    {
      v11 = 92;
      fmt::v10::detail::buffer<char>::push_back(a1, &v11);
LABEL_17:
      fmt::v10::detail::buffer<char>::push_back(v4, &v15);
      return v4;
    }
  }

  else
  {
    switch(v5)
    {
      case 9u:
        v12 = 92;
        fmt::v10::detail::buffer<char>::push_back(a1, &v12);
        v6 = 116;
        goto LABEL_16;
      case 0xAu:
        v14 = 92;
        fmt::v10::detail::buffer<char>::push_back(a1, &v14);
        v6 = 110;
        goto LABEL_16;
      case 0xDu:
        v13 = 92;
        fmt::v10::detail::buffer<char>::push_back(a1, &v13);
        v6 = 114;
LABEL_16:
        v15 = v6;
        goto LABEL_17;
    }
  }

  if (v5 > 0xFF)
  {
    if (HIWORD(v5))
    {
      if (HIWORD(v5) > 0x10u)
      {
        v8 = *a2;
        v9 = a2[1];
        if (v9 - *a2 < 0)
        {
          fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
        }

        while (v8 != v9)
        {
          v10 = *v8++;
          v4 = fmt::v10::detail::write_codepoint<2ul,char,fmt::v10::appender>(v4, 120, v10);
        }

        return v4;
      }

      return fmt::v10::detail::write_codepoint<8ul,char,fmt::v10::appender>(a1, 85, v5);
    }

    else
    {

      return fmt::v10::detail::write_codepoint<4ul,char,fmt::v10::appender>(a1, 117, v5);
    }
  }

  else
  {

    return fmt::v10::detail::write_codepoint<2ul,char,fmt::v10::appender>(a1, 120, v5);
  }
}

uint64_t fmt::v10::detail::is_printable(fmt::v10::detail *this)
{
  if (!(this >> 16))
  {
    LODWORD(v1) = 0;
    v2 = 0;
    v3 = this >> 8;
    while (1)
    {
      v4 = &fmt::v10::detail::is_printable::singletons0 + 2 * v2;
      v5 = *v4;
      v6 = v3 == v5;
      if (v3 < v5)
      {
LABEL_12:
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = fmt::v10::detail::is_printable::normal0[v10];
          if (fmt::v10::detail::is_printable::normal0[v10] < 0)
          {
            v12 = fmt::v10::detail::is_printable::normal0[++v10] | ((v12 & 0x7F) << 8);
          }

          LODWORD(this) = this - v12;
          if (this < 0)
          {
            break;
          }

          v11 ^= 1u;
          ++v10;
        }

        while (v10 < 0x135);
        return v11 & 1;
      }

      v7 = v4[1];
      v8 = (v1 + v7);
      if (v6 && v7 != 0)
      {
        break;
      }

LABEL_11:
      ++v2;
      LODWORD(v1) = v8;
      if (v2 == 41)
      {
        goto LABEL_12;
      }
    }

    v1 = v1;
    while (fmt::v10::detail::is_printable::singletons0_lower[v1] != this)
    {
      if (++v1 >= v8)
      {
        goto LABEL_11;
      }
    }

LABEL_35:
    v11 = 0;
    return v11 & 1;
  }

  if (!(this >> 17))
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = this;
    while (1)
    {
      v16 = &fmt::v10::detail::is_printable::singletons1 + 2 * v14;
      v17 = *v16;
      v18 = BYTE1(this) == v17;
      if (BYTE1(this) < v17)
      {
LABEL_29:
        v22 = 0;
        v11 = 1;
        do
        {
          v23 = fmt::v10::detail::is_printable::normal1[v22];
          if (fmt::v10::detail::is_printable::normal1[v22] < 0)
          {
            v23 = fmt::v10::detail::is_printable::normal1[++v22] | ((v23 & 0x7F) << 8);
          }

          v15 -= v23;
          if (v15 < 0)
          {
            break;
          }

          v11 ^= 1u;
          ++v22;
        }

        while (v22 < 0x1A3);
        return v11 & 1;
      }

      v19 = v16[1];
      v20 = (v13 + v19);
      if (v18 && v19 != 0)
      {
        break;
      }

LABEL_28:
      ++v14;
      LODWORD(v13) = v20;
      if (v14 == 38)
      {
        goto LABEL_29;
      }
    }

    v13 = v13;
    while (fmt::v10::detail::is_printable::singletons1_lower[v13] != this)
    {
      if (++v13 >= v20)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_35;
  }

  v11 = ((this - 196608) < 0xFFFFFA1E) & ~vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_25A9BF670, vaddq_s32(vdupq_n_s32(this), xmmword_25A9BF660))));
  if ((this - 917760) >= 0xFFF5124B || (this - 1114112) >= 0xFFFD01F0)
  {
    v11 = 0;
  }

  if (this >> 1 == 89103)
  {
    v11 = 0;
  }

  if (this >= 0x110000)
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t fmt::v10::detail::write_codepoint<2ul,char,fmt::v10::appender>(uint64_t a1, char a2, unsigned int a3)
{
  v12 = 92;
  fmt::v10::detail::buffer<char>::push_back(a1, &v12);
  v11 = a2;
  fmt::v10::detail::buffer<char>::push_back(a1, &v11);
  v10 = 12336;
  v7 = 1;
  do
  {
    *(&v10 + v7--) = a0123456789abcd_0[a3 & 0xF];
    v8 = a3 > 0xF;
    a3 >>= 4;
  }

  while (v8);
  fmt::v10::detail::buffer<char>::append<char>(a1, &v10, &v11, v6);
  return a1;
}

uint64_t fmt::v10::detail::write_codepoint<4ul,char,fmt::v10::appender>(uint64_t a1, char a2, unsigned int a3)
{
  v13 = 92;
  fmt::v10::detail::buffer<char>::push_back(a1, &v13);
  v12 = a2;
  fmt::v10::detail::buffer<char>::push_back(a1, &v12);
  v10 = 808464432;
  v7 = 3;
  do
  {
    v11[v7-- - 4] = a0123456789abcd_0[a3 & 0xF];
    v8 = a3 > 0xF;
    a3 >>= 4;
  }

  while (v8);
  fmt::v10::detail::buffer<char>::append<char>(a1, &v10, v11, v6);
  return a1;
}

uint64_t fmt::v10::detail::write_codepoint<8ul,char,fmt::v10::appender>(uint64_t a1, char a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  LOBYTE(v11) = 92;
  fmt::v10::detail::buffer<char>::push_back(a1, &v11);
  LOBYTE(v11) = a2;
  fmt::v10::detail::buffer<char>::push_back(a1, &v11);
  v11 = 0x3030303030303030;
  v7 = 7;
  do
  {
    *(&v11 + v7--) = a0123456789abcd_0[a3 & 0xF];
    v8 = a3 > 0xF;
    a3 >>= 4;
  }

  while (v8);
  fmt::v10::detail::buffer<char>::append<char>(a1, &v11, &v12, v6);
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t fmt::v10::detail::digit_grouping<char>::next(uint64_t *a1, char **a2)
{
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (!a1[4])
    {
      return 0x7FFFFFFFLL;
    }
  }

  else if (!*(a1 + 47))
  {
    return 0x7FFFFFFFLL;
  }

  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = a1[1];
    v3 = *a2;
    if (*a2 == (*a1 + v2))
    {
      a1 = *a1;
LABEL_13:
      v3 = a1 + v2 - 1;
      goto LABEL_14;
    }
  }

  else
  {
    v3 = *a2;
    if (*a2 == a1 + v2)
    {
      goto LABEL_13;
    }
  }

  if (*v3 - 127 < 0xFFFFFF82)
  {
    return 0x7FFFFFFFLL;
  }

  *a2 = v3 + 1;
LABEL_14:
  result = (*(a2 + 2) + *v3);
  *(a2 + 2) = result;
  return result;
}

uint64_t fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v19 = &unk_286BF1A68;
  __p = v22;
  v21 = xmmword_25A9BF650;
  LODWORD(v17) = 0;
  fmt::v10::detail::buffer<int>::push_back(&v19, &v17);
  v8 = a1;
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  v17 = v8;
  v18 = 0;
  while (1)
  {
    v9 = fmt::v10::detail::digit_grouping<char>::next(a1, &v17);
    v16 = v9;
    if (!v9 || v9 >= a4)
    {
      break;
    }

    fmt::v10::detail::buffer<int>::push_back(&v19, &v16);
  }

  if (a4 >= 1)
  {
    v11 = v21 - 1;
    v12 = a4 & 0x7FFFFFFF;
    do
    {
      if (a4 == *(__p + v11))
      {
        v13 = *(a1 + 47);
        if (v13 < 0)
        {
          v14 = *(a1 + 24);
          v13 = *(a1 + 32);
        }

        else
        {
          v14 = (a1 + 24);
        }

        fmt::v10::detail::buffer<char>::append<char>(a2, v14, &v14[v13], v10);
        --v11;
      }

      LOBYTE(v16) = *a3;
      fmt::v10::detail::buffer<char>::push_back(a2, &v16);
      --a4;
      ++a3;
      --v12;
    }

    while (v12);
  }

  if (__p != v22)
  {
    operator delete(__p);
  }

  return a2;
}

void sub_25A33C7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p != v14)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::buffer<int>::push_back(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = v4 + 1;
  if (*(result + 24) < (v4 + 1))
  {
    result = (**result)(result);
    v4 = *(v3 + 16);
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *(v3 + 8);
  *(v3 + 16) = v5;
  *(v7 + 4 * v4) = v6;
  return result;
}

void fmt::v10::basic_memory_buffer<int,500ul,std::allocator<int>>::grow(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24) + (*(a1 + 24) >> 1);
  v3 = 0x3FFFFFFFFFFFFFFFLL;
  if (a2 > 0x3FFFFFFFFFFFFFFFLL)
  {
    v3 = a2;
  }

  if (!(v2 >> 62))
  {
    v3 = *(a1 + 24) + (*(a1 + 24) >> 1);
  }

  if (v2 >= a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2;
  }

  if (!(v4 >> 62))
  {
    v5 = *(a1 + 8);
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fmt::v10::detail::write_int<fmt::v10::appender,unsigned __int128,char>(uint64_t a1, unint64_t a2, unint64_t a3, const char *a4, uint64_t a5, char *a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v70 = *MEMORY[0x277D85DE8];
  v57 = a4;
  v58 = &unk_286BF19A0;
  __p = v61;
  v60 = xmmword_25A9BF650;
  v12 = *(a5 + 8);
  if (v12 <= 2)
  {
    if (v12 < 2)
    {
      if (__PAIR128__(a3, a2) >= 0xA)
      {
        v20 = 4;
        v41 = a2;
        v42 = a3;
        while (1)
        {
          if (v41 <= 0x63)
          {
            v20 = (v20 - 2);
            goto LABEL_76;
          }

          if (v41 <= 0x3E7)
          {
            break;
          }

          *(&v43 + 1) = v42;
          *&v43 = v41;
          if (v43 >> 4 < 0x271)
          {
            goto LABEL_76;
          }

          *(&v44 + 1) = v42;
          *&v44 = v41;
          v20 = (v20 + 4);
          v41 = __udivti3();
          v42 = v45;
          if ((v44 >> 5) <= 0xC34)
          {
            v20 = (v20 - 3);
            goto LABEL_76;
          }
        }

        v20 = (v20 - 1);
LABEL_76:
        v11 = a1;
        v6 = a6;
      }

      else
      {
        v20 = 1;
      }

      v62 = 0u;
      memset(v63, 0, 23);
      fmt::v10::detail::format_decimal<char,unsigned __int128>(&v62, v10, v9, v20);
      fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v62, v49, &v58, v50);
      goto LABEL_78;
    }

    if (v12 == 2)
    {
      v33 = &v60 + 15;
      v34 = -1;
      v35 = a2;
      v36 = a3;
      do
      {
        v18 = v35 <= 7;
        *(&v37 + 1) = v36;
        *&v37 = v35;
        v35 = v37 >> 3;
        v36 >>= 3;
        ++v33;
        ++v34;
      }

      while (!v18);
      LODWORD(v20) = v34 + 1;
      if ((*(a5 + 9) & 0x80) != 0 && a2 | a3 && *(a5 + 4) <= v20)
      {
        if (a4)
        {
          v38 = 12288;
        }

        else
        {
          v38 = 48;
        }

        v8 = (v38 | a4) + 0x1000000;
        v57 = v8;
      }

      if (v34 <= 0x1F3)
      {
        *&v60 = v34 + 1;
        do
        {
          *v33-- = v10 & 7 | 0x30;
          v18 = v10 >= 8;
          *(&v48 + 1) = v9;
          *&v48 = v10;
          v10 = v48 >> 3;
          v18 = v9 >= !v18;
          v9 >>= 3;
        }

        while (v18);
        goto LABEL_78;
      }

      v62 = 0u;
      memset(v63, 0, 27);
      v21 = &v63[-2] + v34;
      do
      {
        *(&v63[-2] + v34) = v10 & 7 | 0x30;
        *(&v39 + 1) = v9;
        *&v39 = v10;
        v18 = v10 <= 7;
        v9 >>= 3;
        --v34;
        v10 = v39 >> 3;
      }

      while (!v18);
      goto LABEL_18;
    }

LABEL_85:
    fmt::v10::detail::throw_format_error("invalid format specifier", a2);
  }

  if (v12 - 3 < 2)
  {
    if ((*(a5 + 9) & 0x80) != 0)
    {
      if (v12 == 4)
      {
        v23 = 22576;
      }

      else
      {
        v23 = 30768;
      }

      if (a4)
      {
        v23 <<= 8;
      }

      v8 = (v23 | a4) + 0x2000000;
      v57 = v8;
    }

    v24 = &v60 + 15;
    v25 = -1;
    v26 = a2;
    v27 = a3;
    do
    {
      v18 = v26 <= 0xF;
      *(&v28 + 1) = v27;
      *&v28 = v26;
      v26 = v28 >> 4;
      v27 >>= 4;
      ++v24;
      ++v25;
    }

    while (!v18);
    LODWORD(v20) = v25 + 1;
    if (v25 <= 0x1F3)
    {
      *&v60 = v25 + 1;
      if (v12 == 4)
      {
        v46 = "0123456789ABCDEF";
      }

      else
      {
        v46 = "0123456789abcdef";
      }

      do
      {
        *v24-- = v46[v10 & 0xF];
        v18 = v10 >= 0x10;
        *(&v47 + 1) = v9;
        *&v47 = v10;
        v10 = v47 >> 4;
        v18 = v9 >= !v18;
        v9 >>= 4;
      }

      while (v18);
    }

    else
    {
      v62 = 0u;
      memset(v63, 0, 17);
      v29 = &v63[-2] + v25;
      if (v12 == 4)
      {
        v30 = "0123456789ABCDEF";
      }

      else
      {
        v30 = "0123456789abcdef";
      }

      do
      {
        *(&v63[-2] + v25) = v30[v10 & 0xF];
        *(&v31 + 1) = v9;
        *&v31 = v10;
        v18 = v10 <= 0xF;
        v9 >>= 4;
        --v25;
        v10 = v31 >> 4;
      }

      while (!v18);
      fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v62, v29 + 1, &v58, a4);
    }

    goto LABEL_78;
  }

  if (v12 - 5 >= 2)
  {
    if (v12 == 15)
    {
      LOBYTE(v62) = 0;
      BYTE1(v62) = a2;
      v32 = fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_char<char,fmt::v10::appender>(fmt::v10::appender,char,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, a5, 1, 1, &v62);
      goto LABEL_81;
    }

    goto LABEL_85;
  }

  if ((*(a5 + 9) & 0x80) != 0)
  {
    if (v12 == 6)
    {
      v13 = 16944;
    }

    else
    {
      v13 = 25136;
    }

    if (a4)
    {
      v13 <<= 8;
    }

    v8 = (v13 | a4) + 0x2000000;
    v57 = v8;
  }

  v14 = &v60 + 15;
  v15 = -1;
  v16 = a2;
  v17 = a3;
  do
  {
    v18 = v16 <= 1;
    *(&v19 + 1) = v17;
    *&v19 = v16;
    v16 = v19 >> 1;
    v17 >>= 1;
    ++v14;
    ++v15;
  }

  while (!v18);
  LODWORD(v20) = v15 + 1;
  if (v15 <= 0x1F3)
  {
    *&v60 = v15 + 1;
    do
    {
      *v14-- = v10 & 1 | 0x30;
      v18 = v10 >= 2;
      *(&v40 + 1) = v9;
      *&v40 = v10;
      v10 = v40 >> 1;
      v18 = v9 >= !v18;
      v9 >>= 1;
    }

    while (v18);
    goto LABEL_78;
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v21 = &v63[-2] + v15;
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  do
  {
    *(&v63[-2] + v15) = v10 & 1 | 0x30;
    *(&v22 + 1) = v9;
    *&v22 = v10;
    v18 = v10 <= 1;
    v9 >>= 1;
    --v15;
    v10 = v22 >> 1;
  }

  while (!v18);
LABEL_18:
  fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v62, v21 + 1, &v58, a4);
LABEL_78:
  if ((v20 & 0x80000000) != 0 || (v51 = fmt::v10::detail::digit_grouping<char>::count_separators(v6, v20), v51 < 0))
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  *&v62 = &v57;
  *(&v62 + 1) = v6;
  v63[0] = &v58;
  v32 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<fmt::v10::appender,unsigned long long,char>(fmt::v10::appender,unsigned long long,unsigned int,fmt::v10::format_specs<char> const&,fmt::v10::detail::digit_grouping<char> const&)::{lambda(fmt::v10::appender)#1}>(v11, a5, v20 + HIBYTE(v8) + v51, (v20 + HIBYTE(v8) + v51), &v62);
LABEL_81:
  v52 = v32;
  if (__p != v61)
  {
    operator delete(__p);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v52;
}

void sub_25A33CEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p != v15)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::loc_writer<char>::~loc_writer(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *fmt::v10::detail::write_int_data<char>::write_int_data(void *result, signed int a2, unsigned int a3, unsigned int *a4)
{
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  v4 = HIBYTE(a3) + a2;
  *result = v4;
  result[1] = 0;
  if ((*(a4 + 9) & 0xF) != 4)
  {
    v6 = a4[1];
    if (v6 <= a2)
    {
      return result;
    }

    *result = v6 + HIBYTE(a3);
    v7 = (v6 - a2);
    if (v7 >= 0)
    {
      result[1] = v7;
      return result;
    }

LABEL_10:
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v5 = *a4;
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  if (v4 < v5)
  {
    *result = v5;
    result[1] = v5 - v4;
  }

  return result;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v23) = v14;
      fmt::v10::detail::buffer<char>::push_back(v8, &v23);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v23) = 48; v15; --v15)
  {
    fmt::v10::detail::buffer<char>::push_back(v8, &v23);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 28);
  v24 = 0;
  v23 = 0;
  fmt::v10::detail::format_decimal<char,unsigned int>(&v23, v16, v17, a4);
  result = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v23, v18, v8, v19);
  if (v11 != v13)
  {
    result = fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v21) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, &v21);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v21) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, &v21);
  }

  v9 = *(a1 + 28);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = a2[2];
  if (a2[3] >= (v12 + v9) && (a2[2] = v12 + v9, (v13 = a2[1]) != 0))
  {
    v14 = "0123456789abcdef";
    if (v11)
    {
      v14 = "0123456789ABCDEF";
    }

    v15 = (v12 + v9 + v13 - 1);
    do
    {
      *v15-- = v14[v10 & 0xF];
      v7 = v10 >= 0x10;
      v10 >>= 4;
    }

    while (v7);
  }

  else
  {
    v22 = 0;
    v21 = 0;
    if (v11)
    {
      v16 = "0123456789ABCDEF";
    }

    else
    {
      v16 = "0123456789abcdef";
    }

    v17 = v9 - 1;
    do
    {
      *(&v21 + v17--) = v16[v10 & 0xF];
      v18 = v10 > 0xF;
      v10 >>= 4;
    }

    while (v18);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v21, &v21 + v9, a2, a4);
  }

  v19 = *MEMORY[0x277D85DE8];
  return a2;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v18[0]) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, v18);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v18[0]) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, v18);
  }

  v9 = *(a1 + 28);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v10 = *(a1 + 24);
  v11 = a2[2];
  if (a2[3] >= (v11 + v9) && (a2[2] = v11 + v9, (v12 = a2[1]) != 0))
  {
    v13 = (v11 + v9 + v12 - 1);
    do
    {
      *v13-- = v10 & 1 | 0x30;
      v7 = v10 >= 2;
      v10 >>= 1;
    }

    while (v7);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v14 = v9 - 1;
    do
    {
      *(v18 + v14--) = v10 & 1 | 0x30;
      v15 = v10 > 1;
      v10 >>= 1;
    }

    while (v15);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v18, v18 + v9, a2, a4);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a2;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned int>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned int>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned int)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v18[0]) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, v18);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v18[0]) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, v18);
  }

  v9 = *(a1 + 28);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v10 = *(a1 + 24);
  v11 = a2[2];
  if (a2[3] >= (v11 + v9) && (a2[2] = v11 + v9, (v12 = a2[1]) != 0))
  {
    v13 = (v11 + v9 + v12 - 1);
    do
    {
      *v13-- = v10 & 7 | 0x30;
      v7 = v10 >= 8;
      v10 >>= 3;
    }

    while (v7);
  }

  else
  {
    memset(v18, 0, 11);
    v14 = v9 - 1;
    do
    {
      *(v18 + v14--) = v10 & 7 | 0x30;
      v15 = v10 > 7;
      v10 >>= 3;
    }

    while (v15);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v18, v18 + v9, a2, a4);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_bytes<(fmt::v10::align::type)1,char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BF942[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  fmt::v10::detail::buffer<char>::append<char>(v8, *a5, (*a5 + *(a5 + 8)), a4);
  if (v11 == v13)
  {
    return v8;
  }

  return fmt::v10::detail::fill<fmt::v10::appender,char>(v8, v11 - v13, a2 + 11, v14);
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,float,0>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, float a5)
{
  v9 = 0;
  if ((LODWORD(a5) & 0x80000000) != 0)
  {
    HIDWORD(v9) = 256;
    a5 = -a5;
  }

  v8 = xmmword_25A9BF6D0;
  if ((LODWORD(a5) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    return fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(a1, 0, 0xFFFFFFFF00000000, 0x100000020000000, &v9);
  }

  v7 = fmt::v10::detail::dragonbox::to_decimal<float>(a5, a1, a2, a3, a4);
  return fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(a1, &v7, &v8, v9, 0);
}

uint64_t fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v12 = a4;
  v5 = *(a5 + 4);
  if ((a4 & 0xFF000000FF000000) == 0x100000030000000)
  {
    BYTE3(v12) = 32;
  }

  v6 = "NAN";
  if ((v5 & 0x10000) == 0)
  {
    v6 = "nan";
  }

  v7 = "INF";
  if ((v5 & 0x10000) == 0)
  {
    v7 = "inf";
  }

  if (!a2)
  {
    v6 = v7;
  }

  if (BYTE1(v5))
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  LOBYTE(v10[0]) = BYTE1(v5);
  v10[1] = v6;
  return fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(fmt::v10::appender,BOOL,fmt::v10::format_specs<char>,fmt::v10::detail::float_specs const&)::{lambda(fmt::v10::appender)#1} &>(a1, &v11, v8, v8, v10);
}

unint64_t fmt::v10::detail::dragonbox::to_decimal<float>(float a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = LODWORD(a1) & 0x7FFFFF;
  if ((LODWORD(a1) >> 23))
  {
    v6 = (LODWORD(a1) >> 23) - 150;
    if (!v5)
    {
      v28 = 631305 * v6 - 261663;
      v7 = (v28 >> 21);
      v29 = fmt::v10::detail::dragonbox::cache_accessor<float>::get_cached_power(int)::pow10_significands[31 - (v28 >> 21)];
      v30 = 40 - ((LODWORD(a1) >> 23) + 106 + ((-1741647 * v7) >> 19));
      v31 = (v29 + (v29 >> 24)) >> v30;
      if ((v6 & 0xFFFFFFFE) == 2)
      {
        v32 = (v29 - (v29 >> 25)) >> v30;
      }

      else
      {
        v32 = ((v29 - (v29 >> 25)) >> v30) + 1;
      }

      v33 = v31 / 0xA;
      if (10 * (v31 / 0xA) < v32)
      {
        v34 = ((v29 >> (39 - ((LODWORD(a1) >> 23) + 106 + ((-1741647 * v7) >> 19)))) + 1) >> 1;
        if ((LODWORD(a1) >> 23) == 115)
        {
          v22 = v34 & 0x7FFFFFFE;
        }

        else if (v34 >= v32)
        {
          v22 = ((v29 >> (39 - ((LODWORD(a1) >> 23) + 106 + ((-1741647 * v7) >> 19)))) + 1) >> 1;
        }

        else
        {
          v22 = v34 + 1;
        }

        return v22 | (v7 << 32);
      }

      if (v31 >= 0xA)
      {
        v16 = v7 - 1;
        do
        {
          v35 = v33;
          HIDWORD(v36) = -1030792151 * v33;
          LODWORD(v36) = -1030792151 * v33;
          v33 = v36 >> 2;
          v16 += 2;
        }

        while (v33 <= 0x28F5C28);
        HIDWORD(v38) = -858993459 * v35;
        LODWORD(v38) = -858993459 * v35;
        v37 = v38 >> 1;
        v21 = v37 >= 0x1999999A;
        if (v37 >= 0x1999999A)
        {
          v22 = v35;
        }

        else
        {
          v22 = v37;
        }

        goto LABEL_36;
      }

LABEL_44:
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x472, "", a5);
    }

    v5 |= 0x800000u;
  }

  else
  {
    if (!v5)
    {
      v7 = 0;
      v22 = 0;
      return v22 | (v7 << 32);
    }

    v6 = -149;
  }

  v7 = ((315653 * v6) >> 20);
  v40 = fmt::v10::detail::dragonbox::cache_accessor<float>::get_cached_power(int)::pow10_significands[32 - ((315653 * v6) >> 20)];
  v8 = 1741647 - 1741647 * v7;
  v9 = v6 + (v8 >> 19);
  v10 = v40 >> ~(v6 + (v8 >> 19));
  v11 = 2 * v5;
  v12 = (((((2 * (v5 & 0xFFFFFF)) | 1u) << (v6 + (v8 >> 19))) << 32) * v40) >> 64;
  v13 = ((((((2 * (v5 & 0xFFFFFF)) | 1u) << (v6 + (v8 >> 19))) << 32) * v40) >> 96) / 0x64;
  v14 = ((((((2 * (v5 & 0xFFFFFF)) | 1u) << (v6 + (v8 >> 19))) << 32) * v40) >> 96) % 0x64;
  if (v14 >= v10)
  {
    if (v14 > v10)
    {
      goto LABEL_19;
    }

    v15 = fmt::v10::detail::dragonbox::cache_accessor<float>::compute_mul_parity(v11 - 1, &v40, v9, a5);
    if ((((v15 >> 8) & ~v5 | v15) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    if (v12 >> 34 >= 0x19)
    {
      v16 = v7 - 1;
      do
      {
        v17 = v13;
        HIDWORD(v18) = -1030792151 * v13;
        LODWORD(v18) = -1030792151 * v13;
        v13 = v18 >> 2;
        v16 += 2;
      }

      while (v13 <= 0x28F5C28);
      HIDWORD(v20) = -858993459 * v17;
      LODWORD(v20) = -858993459 * v17;
      v19 = v20 >> 1;
      v21 = v19 >= 0x1999999A;
      if (v19 >= 0x1999999A)
      {
        v22 = v17;
      }

      else
      {
        v22 = v19;
      }

LABEL_36:
      if (v21)
      {
        v7 = v16;
      }

      else
      {
        v7 = v16 + 1;
      }

      return v22 | (v7 << 32);
    }

    goto LABEL_44;
  }

  if (v14 || (LOBYTE(a1) & 1) == 0 || v12)
  {
    goto LABEL_13;
  }

  --v13;
  v14 = 100;
LABEL_19:
  v23 = v14 - (v10 >> 1);
  v24 = v23 + 5;
  if (v23 + 5 >= 0x65)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0xDD, "n is too large", a5);
  }

  v25 = 6554 * v24;
  v22 = 10 * v13 + ((6554 * v24) >> 16);
  if (((6554 * v24) >> 1) <= 0xCCCu)
  {
    v26 = v23 & 1;
    v27 = fmt::v10::detail::dragonbox::cache_accessor<float>::compute_mul_parity(v11, &v40, v9, a5);
    if (v26 == (v27 & 1))
    {
      v22 -= BYTE2(v25) & HIBYTE(v27) & 1;
    }

    else
    {
      --v22;
    }
  }

  return v22 | (v7 << 32);
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(fmt::v10::appender,BOOL,fmt::v10::format_specs<char>,fmt::v10::detail::float_specs const&)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, char **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BF942[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (*a5)
  {
    v16 = byte_25A9BFEED[*a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v16);
  }

  fmt::v10::detail::buffer<char>::append<char>(v8, a5[1], a5[1] + 3, a4);
  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v8, v11 - v13, a2 + 11, v14);
  }

  return v8;
}

unint64_t fmt::v10::detail::dragonbox::cache_accessor<float>::compute_mul_parity(unsigned int a1, void *a2, int a3, const char *a4)
{
  if (a3 <= 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x13E, "", a4);
  }

  if (a3 >= 0x40)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x13F, "", a4);
  }

  return ((*a2 * a1) >> -a3) & 1 | ((((*a2 * a1) >> (32 - a3)) == 0) << 8);
}

uint64_t fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, unsigned int *a2, unsigned int *a3, const char *a4, std::locale *a5)
{
  v64 = a4;
  v5 = *a2;
  v63 = v5;
  v6 = fmt::v10::detail::do_count_digits::table[__clz(v5 | 1) ^ 0x1F];
  v61 = 48;
  v60 = BYTE5(a4);
  v8 = v6 + v5;
  v7 = v8 < 0;
  v9 = HIDWORD(v8);
  v62 = v9;
  if (v7)
  {
    goto LABEL_74;
  }

  v15 = a4 >> 32;
  if (BYTE5(a4))
  {
    v16 = v9 + 1;
  }

  else
  {
    v16 = v9;
  }

  if ((HIDWORD(a4) & 0x20000) != 0)
  {
    if (a5)
    {
      std::locale::locale(&v44, a5);
    }

    else
    {
      MEMORY[0x25F8515F0](&v44);
    }

    v18 = std::locale::use_facet(&v44, MEMORY[0x277D826C0]);
    v17 = (v18->__vftable[1].~facet)(v18);
    std::locale::~locale(&v44);
    LODWORD(v9) = v62;
  }

  else
  {
    v17 = 46;
  }

  v59 = v17;
  v19 = a2[1];
  v20 = v9 + v19;
  if (BYTE4(a4) == 1 || !BYTE4(a4) && (v20 < -3 || (a4 <= 0 ? (v21 = 16) : (v21 = a4), v20 > v21)))
  {
    v22 = v20 - 1;
    if ((v15 & 0x80000) != 0)
    {
      v23 = (a4 - v9) & ~((a4 - v9) >> 31);
      v16 += v23;
    }

    else if (v9 == 1)
    {
      v17 = 0;
      LODWORD(v23) = 0;
      v59 = 0;
    }

    else
    {
      LODWORD(v23) = 0;
    }

    if ((v15 & 0x10000) != 0)
    {
      v33 = 69;
    }

    else
    {
      v33 = 101;
    }

    LOBYTE(v44.__locale_) = v60;
    HIDWORD(v44.__locale_) = v63;
    LODWORD(v45) = v9;
    BYTE4(v45) = v17;
    LODWORD(v46) = v23;
    BYTE4(v46) = 48;
    BYTE5(v46) = v33;
    LODWORD(v47) = v20 - 1;
    if (*a3 < 1)
    {
      return fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}::operator()(&v44, a1, a3, a4);
    }

    v34 = 2;
    if (v17)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    if (v20 < 1)
    {
      v22 = 1 - v20;
    }

    v36 = 3;
    if (v22 > 999)
    {
      v36 = 4;
    }

    if (v22 > 99)
    {
      v34 = v36;
    }

    return fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1} &>(a1, a3, v16 + v34 + v35, (v16 + v34 + v35), &v44);
  }

  v58 = v9 + v19;
  if ((v19 & 0x80000000) == 0)
  {
    v24 = v16 + v19;
    v25 = a4 - v20;
    v57 = a4 - v20;
    if ((v15 & 0x80000) != 0)
    {
      if (v25 > 0 || v15 == 2)
      {
        v27 = v25 < 1;
        v28 = v24 + 1 + v25;
        if (v27)
        {
          ++v24;
        }

        else
        {
          v24 = v28;
        }
      }

      else
      {
        v57 = 0;
        ++v24;
      }
    }

    fmt::v10::detail::digit_grouping<char>::digit_grouping(v53, a5, (v15 >> 17) & 1);
    v38 = fmt::v10::detail::digit_grouping<char>::count_separators(v53, v20);
    if ((v38 & 0x80000000) == 0)
    {
      v44.__locale_ = &v60;
      v45 = &v63;
      v46 = &v62;
      v47 = a2;
      v48 = v53;
      v49 = &v64;
      v50 = &v59;
      v51 = &v57;
      v52 = &v61;
      v32 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2} &>(a1, a3, v24 + v38, (v24 + v38), &v44);
      goto LABEL_53;
    }

LABEL_74:
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  if (v20 < 1)
  {
    if (a4 >= -v20)
    {
      v40 = -v20;
    }

    else
    {
      v40 = a4;
    }

    if (a4 <= -1 || v9 != 0)
    {
      v40 = -v20;
    }

    LODWORD(v53[0]) = v40;
    if (v40 | v9)
    {
      LOBYTE(v57) = 1;
      if (v40 < 0)
      {
        goto LABEL_74;
      }

      v42 = 2;
    }

    else
    {
      LOBYTE(v57) = (v15 & 0x80000) >> 19;
      if ((v15 & 0x80000) != 0)
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }
    }

    v44.__locale_ = &v60;
    v45 = &v61;
    v46 = &v57;
    v47 = &v59;
    v48 = v53;
    v49 = &v63;
    v50 = &v62;
    return fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4} &>(a1, a3, v16 + (v42 + v40), (v16 + (v42 + v40)), &v44);
  }

  v29 = (a4 - v9) & ((v15 << 12) >> 31);
  v57 = v29;
  fmt::v10::detail::digit_grouping<char>::digit_grouping(v53, a5, (v15 >> 17) & 1);
  v30 = fmt::v10::detail::digit_grouping<char>::count_separators(v53, v20);
  if ((v30 & 0x80000000) != 0)
  {
    goto LABEL_74;
  }

  v44.__locale_ = &v60;
  v45 = &v63;
  v46 = &v62;
  v47 = &v58;
  v31 = (v16 + (v29 & ~(v29 >> 31)) + 1 + v30);
  v48 = &v59;
  v49 = v53;
  v50 = &v57;
  v51 = &v61;
  v32 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3} &>(a1, a3, v31, v31, &v44);
LABEL_53:
  v39 = v32;
  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  return v39;
}

uint64_t fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}::operator()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v22[0] = byte_25A9BFEED[*a1];
    fmt::v10::detail::buffer<char>::push_back(a2, v22);
  }

  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = a1[12];
  if (v8)
  {
    v9 = &v22[v7 + 1];
    v10 = v7 - 1;
    if (v7 < 3)
    {
      v13 = *(a1 + 1);
      v12 = &v22[v7 + 1];
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = (v10 >> 1) + 1;
      v12 = &v22[v7 + 1];
      do
      {
        v13 = v6 / 0x64;
        *(v12 - 1) = *&a00010203040506[2 * (v6 % 0x64)];
        v12 -= 2;
        --v11;
        v6 /= 0x64u;
      }

      while (v11 > 1);
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *--v12 = (v13 % 0xA) | 0x30;
    v13 /= 0xAu;
LABEL_9:
    *(v12 - 1) = v8;
    fmt::v10::detail::format_decimal<char,unsigned int>((v12 - 2), v13, 1, a4);
    goto LABEL_11;
  }

  fmt::v10::detail::format_decimal<char,unsigned int>(v22, v6, v7, a4);
  v9 = v15;
LABEL_11:
  v16 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v22, v9, a2, v14);
  v17 = *(a1 + 4);
  if (v17 >= 1)
  {
    do
    {
      fmt::v10::detail::buffer<char>::push_back(v16, a1 + 20);
      --v17;
    }

    while (v17);
  }

  v22[0] = a1[21];
  fmt::v10::detail::buffer<char>::push_back(v16, v22);
  result = fmt::v10::detail::write_exponent<char,fmt::v10::appender>(*(a1 + 6), v16, v18, v19);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 *a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

uint64_t fmt::v10::detail::write_exponent<char,fmt::v10::appender>(unsigned int a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a1 + 9999 >= 0x4E1F)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0x63D, "exponent out of range", a4);
  }

  v5 = a1;
  if ((a1 & 0x80000000) != 0)
  {
    v14 = 45;
    fmt::v10::detail::buffer<char>::push_back(a2, &v14);
    v5 = -v5;
  }

  else
  {
    v13 = 43;
    fmt::v10::detail::buffer<char>::push_back(a2, &v13);
  }

  if (v5 >= 0x64)
  {
    v6 = &a00010203040506[2 * (v5 / 0x64u)];
    if (v5 >= 0x3E8)
    {
      v12 = *v6;
      fmt::v10::detail::buffer<char>::push_back(a2, &v12);
    }

    v11 = v6[1];
    fmt::v10::detail::buffer<char>::push_back(a2, &v11);
    v5 = v5 % 0x64u;
  }

  v7 = &a00010203040506[2 * v5];
  v10 = *v7;
  fmt::v10::detail::buffer<char>::push_back(a2, &v10);
  v9 = v7[1];
  fmt::v10::detail::buffer<char>::push_back(a2, &v9);
  return a2;
}

uint64_t fmt::v10::detail::digit_grouping<char>::digit_grouping(uint64_t a1, std::locale *a2, int a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a3)
  {
    fmt::v10::detail::thousands_sep_impl<char>(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      __c = v8;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v5 = __p;
      __c = v8;
    }

    std::string::operator=(a1, &v5);
    if (__c)
    {
      std::string::assign((a1 + 24), 1uLL, __c);
    }

    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_25A33E7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 47) < 0)
  {
    operator delete(*(v21 + 24));
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

double fmt::v10::detail::thousands_sep_impl<char>@<D0>(std::locale *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    std::locale::locale(v7, a1);
  }

  else
  {
    MEMORY[0x25F8515F0](v7);
  }

  v3 = std::locale::use_facet(v7, MEMORY[0x277D826C0]);
  std::locale::~locale(v7);
  (v3->__vftable[1].__on_zero_shared)(v7, v3);
  locale = HIBYTE(v8);
  if (v8 < 0)
  {
    locale = v7[1].__locale_;
  }

  if (locale)
  {
    v5 = (v3->__vftable[1].~facet_0)(v3);
  }

  else
  {
    v5 = 0;
  }

  result = *&v7[0].__locale_;
  *a2 = *&v7[0].__locale_;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  return result;
}

void sub_25A33E91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (**a5)
  {
    v20 = byte_25A9BFEED[**a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v20);
  }

  v14 = fmt::v10::detail::write_significand<char,fmt::v10::appender,unsigned int,fmt::v10::detail::digit_grouping<char>>(v8, *a5[1], *a5[2], *(a5[3] + 1), a5[4]);
  v16 = v14;
  if ((a5[5][6] & 8) != 0)
  {
    fmt::v10::detail::buffer<char>::push_back(v14, a5[6]);
    v17 = *a5[7];
    if (v17 >= 1)
    {
      v18 = a5[8];
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v16, v18);
        --v17;
      }

      while (v17);
    }
  }

  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v16, v11 - v13, a2 + 11, v15);
  }

  return v16;
}

uint64_t fmt::v10::detail::write_significand<char,fmt::v10::appender,unsigned int,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, unsigned int a2, int a3, const char *a4, uint64_t a5)
{
  v5 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 47);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 32);
  }

  if (v7)
  {
    v16 = &unk_286BF19A0;
    __p = v19;
    v18 = xmmword_25A9BF650;
    v21 = 0;
    v20 = 0;
    fmt::v10::detail::format_decimal<char,unsigned int>(&v20, a2, a3, a4);
    fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v20, v9, &v16, v10);
    LOBYTE(v20) = 48;
    if (v5 >= 1)
    {
      do
      {
        fmt::v10::detail::buffer<char>::push_back(&v16, &v20);
        --v5;
      }

      while (v5);
    }

    v11 = fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(a5, a1, __p, v18);
    if (__p != v19)
    {
      operator delete(__p);
    }
  }

  else
  {
    LOWORD(__p) = 0;
    v16 = 0;
    fmt::v10::detail::format_decimal<char,unsigned int>(&v16, a2, a3, a4);
    v11 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v16, v12, a1, v13);
    LOBYTE(v16) = 48;
    if (v5 >= 1)
    {
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v11, &v16);
        --v5;
      }

      while (v5);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A33EBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p != v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (**a5)
  {
    v19 = byte_25A9BFEED[**a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v19);
  }

  v15 = fmt::v10::detail::write_significand<fmt::v10::appender,char,unsigned int,fmt::v10::detail::digit_grouping<char>>(v8, *a5[1], *a5[2], *a5[3], *a5[4], a5[5]);
  v16 = *a5[6];
  if (v16 >= 1)
  {
    v17 = a5[7];
    do
    {
      fmt::v10::detail::buffer<char>::push_back(v15, v17);
      --v16;
    }

    while (v16);
  }

  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v15, v11 - v13, a2 + 11, v14);
  }

  return v15;
}

uint64_t fmt::v10::detail::write_significand<fmt::v10::appender,char,unsigned int,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, unsigned int a2, int a3, const char *a4, int a5, uint64_t a6)
{
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = *(a6 + 47);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a6 + 32);
  }

  if (!v8)
  {
    if (!a5)
    {
      fmt::v10::detail::format_decimal<char,unsigned int>(&v29, a2, a3, a4);
      v16 = v26;
      goto LABEL_25;
    }

    v16 = &v29 + a3 + 1;
    v17 = a3 - a4;
    if (a3 - a4 < 2)
    {
      v20 = a2;
      v19 = &v29 + a3 + 1;
      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = (v17 >> 1) + 1;
      v19 = &v29 + a3 + 1;
      do
      {
        v20 = a2 / 0x64;
        *(v19 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
        v19 -= 2;
        --v18;
        a2 /= 0x64u;
      }

      while (v18 > 1);
      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    *--v19 = (v20 % 0xA) | 0x30;
    v20 /= 0xAu;
LABEL_17:
    *(v19 - 1) = a5;
    fmt::v10::detail::format_decimal<char,unsigned int>(&v19[-a4 - 1], v20, a4, a4);
LABEL_25:
    v25 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v29, v16, a1, v21);
    goto LABEL_26;
  }

  v29 = &unk_286BF19A0;
  __p = v32;
  v31 = xmmword_25A9BF650;
  if (!a5)
  {
    fmt::v10::detail::format_decimal<char,unsigned int>(v33, a2, a3, a4);
    v10 = v22;
    goto LABEL_19;
  }

  v10 = &v33[a3 + 1];
  v11 = a3 - a4;
  if (a3 - a4 < 2)
  {
    v14 = a2;
    v13 = &v33[a3 + 1];
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = (v11 >> 1) + 1;
    v13 = &v33[a3 + 1];
    do
    {
      v14 = a2 / 0x64;
      *(v13 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
      v13 -= 2;
      --v12;
      a2 /= 0x64u;
    }

    while (v12 > 1);
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  *--v13 = (v14 % 0xA) | 0x30;
  v14 /= 0xAu;
LABEL_10:
  *(v13 - 1) = a5;
  fmt::v10::detail::format_decimal<char,unsigned int>(&v13[-a4 - 1], v14, a4, a4);
LABEL_19:
  fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v33, v10, &v29, v15);
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v23);
  }

  fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(a6, a1, __p, v6);
  v25 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(__p + v6, __p + v31, a1, v24);
  if (__p != v32)
  {
    operator delete(__p);
  }

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}::operator()(a5, v8);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

uint64_t fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<float> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}::operator()(unsigned __int8 **a1, uint64_t a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (**a1)
  {
    LOBYTE(v13) = byte_25A9BFEED[**a1];
    fmt::v10::detail::buffer<char>::push_back(a2, &v13);
  }

  fmt::v10::detail::buffer<char>::push_back(v2, a1[1]);
  if (*a1[2] == 1)
  {
    fmt::v10::detail::buffer<char>::push_back(v2, a1[3]);
    v5 = *a1[4];
    if (v5 >= 1)
    {
      v6 = a1[1];
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v2, v6);
        --v5;
      }

      while (v5);
    }

    v7 = *a1[5];
    v8 = *a1[6];
    v14 = 0;
    v13 = 0;
    fmt::v10::detail::format_decimal<char,unsigned int>(&v13, v7, v8, v4);
    v2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v13, v9, v2, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,double,0>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, double a5)
{
  v10 = 0;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    HIDWORD(v10) = 256;
    a5 = -a5;
  }

  v9 = xmmword_25A9BF6D0;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(a1, 0, 0xFFFFFFFF00000000, 0x100000020000000, &v10);
  }

  v8[0] = fmt::v10::detail::dragonbox::to_decimal<double>(a5, a1, a2, a3, a4);
  v8[1] = v7;
  return fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(a1, v8, &v9, v10, 0);
}

unint64_t fmt::v10::detail::dragonbox::to_decimal<double>(double a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *&a1 & 0xFFFFFFFFFFFFFLL;
  v6 = (*&a1 >> 52) & 0x7FFLL;
  if (v6)
  {
    v7 = v6 - 1075;
    if (!v5)
    {
      v36 = (631305 * v7 - 261663) >> 21;
      v37 = v7 + ((-1741647 * v36) >> 19);
      fmt::v10::detail::dragonbox::cache_accessor<double>::get_cached_power(-v36, a3, a4, a5);
      v39 = (v38 + (v38 >> 53)) >> (11 - v37);
      if ((v7 & 0xFFFFFFFE) == 2)
      {
        v40 = (v38 - (v38 >> 54)) >> (11 - v37);
      }

      else
      {
        v40 = ((v38 - (v38 >> 54)) >> (11 - v37)) + 1;
      }

      v41 = v39 / 0xA;
      if (10 * (v39 / 0xA) < v40)
      {
        v42 = ((v38 >> (10 - v37)) + 1) >> 1;
        if (v7 == -77)
        {
          return v42 & 0x7FFFFFFFFFFFFFFELL;
        }

        if (v42 >= v40)
        {
          return ((v38 >> (10 - v37)) + 1) >> 1;
        }

        return v42 + 1;
      }

      if (v39 > 9)
      {
        if (0xABCC77118461CEFDLL * v41 >= 0xABCC77118461CEFDLL || (((v41 * 0xABCC77118461CEFDLL) >> 64) & 0x3FFFFFF) != 0)
        {
          v48 = -2;
          do
          {
            v49 = v41;
            *(&v50 + 1) = v41;
            *&v50 = 0x8F5C28F5C28F5C29 * v41;
            v41 = v50 >> 2;
            v48 += 2;
          }

          while (v41 <= 0x28F5C28F5C28F5CLL);
          *(&v52 + 1) = v49;
          *&v52 = 0xCCCCCCCCCCCCCCCDLL * v49;
          v51 = v52 >> 1;
          if (v51 >= 0x199999999999999ALL)
          {
            return v49;
          }

          else
          {
            return v51;
          }
        }

        v53 = v41 / 0x5F5E100;
        if ((v41 / 0x5F5E100))
        {
          v54 = 6;
          do
          {
            v45 = v53;
            HIDWORD(v55) = -1030792151 * v53;
            LODWORD(v55) = -1030792151 * v53;
            LODWORD(v53) = v55 >> 2;
            v54 += 2;
          }

          while (v53 <= 0x28F5C28);
          goto LABEL_62;
        }

LABEL_68:
        fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x472, "", v9);
      }

LABEL_66:
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x487, "", v9);
    }

    v5 |= 0x10000000000000uLL;
  }

  else
  {
    if (!v5)
    {
      return 0;
    }

    v7 = -1074;
  }

  *&v59 = fmt::v10::detail::dragonbox::cache_accessor<double>::get_cached_power(2 - ((315653 * v7) >> 20), a3, a4, a5);
  *(&v59 + 1) = v8;
  v10 = v7 + ((1741647 * (2 - ((315653 * v7) >> 20))) >> 19);
  v11 = v8 >> ~v10;
  v12 = 2 * v5;
  v13 = ((2 * (v5 & 0x1FFFFFFFFFFFFFLL)) | 1) << v10;
  v14 = v13 * v8;
  v15 = (v13 * v8) >> 64;
  v16 = (v13 * v59) >> 64;
  v17 = __CFADD__(v14, v16);
  v18 = v14 + v16;
  if (v17)
  {
    v19 = v15 + 1;
  }

  else
  {
    v19 = v15;
  }

  v20 = ((v19 * 0x20C49BA5E353F7CFuLL) >> 64) >> 7;
  v21 = v19 - 1000 * v20;
  if (v11 <= v21)
  {
    if (v11 < v21)
    {
      goto LABEL_30;
    }

    v24 = fmt::v10::detail::dragonbox::cache_accessor<double>::compute_mul_parity(v12 - 1, &v59, v10, v9);
    if ((((v24 >> 8) & ~v5 | v24) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    if (v20)
    {
      if (0xABCC77118461CEFDLL * v20 >= 0xABCC77118461CEFDLL || (((v20 * 0xABCC77118461CEFDLL) >> 64) & 0x3FFFFFF) != 0)
      {
        v26 = -2;
        do
        {
          v27 = v20;
          *(&v28 + 1) = v20;
          *&v28 = 0x8F5C28F5C28F5C29 * v20;
          v20 = v28 >> 2;
          v26 += 2;
        }

        while (v20 <= 0x28F5C28F5C28F5CLL);
        *(&v30 + 1) = v27;
        *&v30 = 0xCCCCCCCCCCCCCCCDLL * v27;
        v29 = v30 >> 1;
        if (v29 >= 0x199999999999999ALL)
        {
          return v27;
        }

        else
        {
          return v29;
        }
      }

      v43 = v20 / 0x5F5E100;
      if ((v20 / 0x5F5E100))
      {
        v44 = 6;
        do
        {
          v45 = v43;
          HIDWORD(v46) = -1030792151 * v43;
          LODWORD(v46) = -1030792151 * v43;
          LODWORD(v43) = v46 >> 2;
          v44 += 2;
        }

        while (v43 <= 0x28F5C28);
LABEL_62:
        HIDWORD(v57) = -858993459 * v45;
        LODWORD(v57) = -858993459 * v45;
        v56 = v57 >> 1;
        if (v56 >= 0x1999999A)
        {
          return v45;
        }

        else
        {
          return v56;
        }
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18 == 0;
  }

  if (!v22 || (v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  --v20;
  v21 = 1000;
LABEL_30:
  v32 = v21 - (v11 >> 1);
  if (v32 + 50 >= 0x3E9)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0xDD, "n is too large", v9);
  }

  v33 = (656 * (v32 + 50)) >> 16;
  v31 = v33 + 10 * v20;
  if ((656 * (v32 + 50)) <= 0x28Fu)
  {
    v34 = v32 & 1;
    v35 = fmt::v10::detail::dragonbox::cache_accessor<double>::compute_mul_parity(v12, &v59, v10, v9);
    if (v34 == (v35 & 1))
    {
      v31 += -(v33 & HIBYTE(v35) & 1);
    }

    else
    {
      --v31;
    }
  }

  return v31;
}

unint64_t fmt::v10::detail::dragonbox::cache_accessor<double>::get_cached_power(int a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((a1 + 292) >= 0x27A)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x163, "k is out of range", a4);
  }

  v5 = (((a1 + 292 - ((12137 * (a1 + 292)) >> 16)) >> 1) + ((12137 * (a1 + 292)) >> 16)) >> 4;
  v6 = (27 * v5) - 292;
  v7 = (&fmt::v10::detail::dragonbox::cache_accessor<double>::get_cached_power(int)::pow10_significands + 16 * v5);
  result = *v7;
  v9 = v7[1];
  v10 = a1 - v6;
  if (a1 != v6)
  {
    v11 = ((1741647 * a1) >> 19) - (v10 + ((1741647 * v6) >> 19));
    if ((v11 - 1) >= 0x3F)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x418, "shifting error detected", a4);
    }

    v12 = ((2 * ((__PAIR128__(v9, result) * fmt::v10::detail::dragonbox::cache_accessor<double>::get_cached_power(int)::powers_of_5_64[v10]) >> 64)) << ~v11) | ((fmt::v10::detail::dragonbox::cache_accessor<double>::get_cached_power(int)::powers_of_5_64[v10] * result) >> v11);
    if (v12 == -1)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x427, "", a4);
    }

    return v12 + 1;
  }

  return result;
}

unint64_t fmt::v10::detail::dragonbox::cache_accessor<double>::compute_mul_parity(uint64_t a1, _OWORD *a2, int a3, const char *a4)
{
  if (a3 <= 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x445, "", a4);
  }

  if (a3 >= 0x40)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format-inl.h", 0x446, "", a4);
  }

  return ((*a2 * a1) >> 64 >> -a3) & 1 | (((((*a2 * a1) >> 64 << a3) | ((*a2 * a1) >> 1 >> ~a3)) == 0) << 8);
}

uint64_t fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, int *a2, unsigned int *a3, const char *a4, std::locale *a5)
{
  v59 = *a2;
  v60 = a4;
  v5 = fmt::v10::detail::do_count_digits(unsigned long long)::bsr2log10[__clz(v59 | 1) ^ 0x3F];
  v6 = fmt::v10::detail::do_count_digits(unsigned long long)::zero_or_powers_of_10[v5] > v59;
  v57 = 48;
  v56 = BYTE5(a4);
  v7 = v5 - v6;
  v58 = v7;
  if (v7 < 0)
  {
    goto LABEL_74;
  }

  v13 = a4 >> 32;
  if (BYTE5(a4))
  {
    v14 = (v7 + 1);
  }

  else
  {
    v14 = v7;
  }

  if ((HIDWORD(a4) & 0x20000) != 0)
  {
    if (a5)
    {
      std::locale::locale(&v40, a5);
    }

    else
    {
      MEMORY[0x25F8515F0](&v40);
    }

    v16 = std::locale::use_facet(&v40, MEMORY[0x277D826C0]);
    v15 = (v16->__vftable[1].~facet)(v16);
    std::locale::~locale(&v40);
    v7 = v58;
  }

  else
  {
    v15 = 46;
  }

  v55 = v15;
  v17 = a2[2];
  v18 = v7 + v17;
  if (BYTE4(a4) == 1 || !BYTE4(a4) && (v18 < -3 || (a4 <= 0 ? (v19 = 16) : (v19 = a4), v18 > v19)))
  {
    v20 = v18 - 1;
    if ((v13 & 0x80000) != 0)
    {
      v21 = (a4 - v7) & ~((a4 - v7) >> 31);
      v14 = (v21 + v14);
    }

    else if (v7 == 1)
    {
      v15 = 0;
      v21 = 0;
      v55 = 0;
    }

    else
    {
      v21 = 0;
    }

    if ((v13 & 0x10000) != 0)
    {
      v29 = 69;
    }

    else
    {
      v29 = 101;
    }

    LOBYTE(v40.__locale_) = v56;
    v41 = v59;
    LODWORD(v42) = v7;
    BYTE4(v42) = v15;
    LODWORD(v43) = v21;
    BYTE4(v43) = 48;
    BYTE5(v43) = v29;
    LODWORD(v44) = v18 - 1;
    if (*a3 < 1)
    {
      return fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}::operator()(&v40, a1, a3, a4);
    }

    v30 = 2;
    if (v15)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    if (v18 < 1)
    {
      v20 = 1 - v18;
    }

    v32 = 3;
    if (v20 > 999)
    {
      v32 = 4;
    }

    if (v20 > 99)
    {
      v30 = v32;
    }

    return fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1} &>(a1, a3, v14 + v30 + v31, (v14 + v30 + v31), &v40);
  }

  v54 = v7 + v17;
  if ((v17 & 0x80000000) == 0)
  {
    v22 = (v17 + v14);
    v23 = a4 - v18;
    v53 = a4 - v18;
    if ((v13 & 0x80000) != 0)
    {
      if (v23 > 0 || v13 == 2)
      {
        if (v23 < 1)
        {
          ++v22;
        }

        else
        {
          v22 += 1 + v23;
        }
      }

      else
      {
        v53 = 0;
        ++v22;
      }
    }

    fmt::v10::detail::digit_grouping<char>::digit_grouping(v49, a5, (v13 >> 17) & 1);
    v34 = fmt::v10::detail::digit_grouping<char>::count_separators(v49, v18);
    if ((v34 & 0x80000000) == 0)
    {
      v40.__locale_ = &v56;
      v41 = &v59;
      v42 = &v58;
      v43 = a2;
      v44 = v49;
      v45 = &v60;
      v46 = &v55;
      v47 = &v53;
      v48 = &v57;
      v28 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2} &>(a1, a3, v22 + v34, (v22 + v34), &v40);
      goto LABEL_53;
    }

LABEL_74:
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  if (v18 < 1)
  {
    if (a4 >= -v18)
    {
      v36 = -v18;
    }

    else
    {
      v36 = a4;
    }

    if (a4 <= -1 || v7 != 0)
    {
      v36 = -v18;
    }

    LODWORD(v49[0]) = v36;
    if (v36 | v7)
    {
      LOBYTE(v53) = 1;
      if (v36 < 0)
      {
        goto LABEL_74;
      }

      v38 = 2;
    }

    else
    {
      LOBYTE(v53) = (v13 & 0x80000) >> 19;
      if ((v13 & 0x80000) != 0)
      {
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }
    }

    v40.__locale_ = &v56;
    v41 = &v57;
    v42 = &v53;
    v43 = &v55;
    v44 = v49;
    v45 = &v59;
    v46 = &v58;
    return fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4} &>(a1, a3, (v38 + v36) + v14, ((v38 + v36) + v14), &v40);
  }

  v25 = (a4 - v7) & ((v13 << 12) >> 31);
  v53 = v25;
  fmt::v10::detail::digit_grouping<char>::digit_grouping(v49, a5, (v13 >> 17) & 1);
  v26 = fmt::v10::detail::digit_grouping<char>::count_separators(v49, v18);
  if ((v26 & 0x80000000) != 0)
  {
    goto LABEL_74;
  }

  v40.__locale_ = &v56;
  v41 = &v59;
  v42 = &v58;
  v43 = &v54;
  v27 = ((v25 & ~(v25 >> 31)) + 1 + v14 + v26);
  v44 = &v55;
  v45 = v49;
  v46 = &v53;
  v47 = &v57;
  v28 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3} &>(a1, a3, v27, v27, &v40);
LABEL_53:
  v35 = v28;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  return v35;
}

uint64_t fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}::operator()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v22[0] = byte_25A9BFEED[*a1];
    fmt::v10::detail::buffer<char>::push_back(a2, v22);
  }

  v6 = *(a1 + 1);
  v7 = *(a1 + 4);
  v8 = a1[20];
  if (v8)
  {
    v9 = &v22[v7 + 1];
    v10 = v7 - 1;
    if (v7 < 3)
    {
      v13 = *(a1 + 1);
      v12 = &v22[v7 + 1];
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = (v10 >> 1) + 1;
      v12 = &v22[v7 + 1];
      do
      {
        v13 = v6 / 0x64;
        *(v12 - 1) = *&a00010203040506[2 * (v6 % 0x64)];
        v12 -= 2;
        --v11;
        v6 /= 0x64uLL;
      }

      while (v11 > 1);
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *--v12 = (v13 % 0xA) | 0x30;
    v13 /= 0xAuLL;
LABEL_9:
    *(v12 - 1) = v8;
    fmt::v10::detail::format_decimal<char,unsigned long long>((v12 - 2), v13, 1, a4);
    goto LABEL_11;
  }

  fmt::v10::detail::format_decimal<char,unsigned long long>(v22, *(a1 + 1), v7, a4);
  v9 = v15;
LABEL_11:
  v16 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v22, v9, a2, v14);
  v17 = *(a1 + 6);
  if (v17 >= 1)
  {
    do
    {
      fmt::v10::detail::buffer<char>::push_back(v16, a1 + 28);
      --v17;
    }

    while (v17);
  }

  v22[0] = a1[29];
  fmt::v10::detail::buffer<char>::push_back(v16, v22);
  result = fmt::v10::detail::write_exponent<char,fmt::v10::appender>(*(a1 + 8), v16, v18, v19);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 *a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (**a5)
  {
    v20 = byte_25A9BFEED[**a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v20);
  }

  v14 = fmt::v10::detail::write_significand<char,fmt::v10::appender,unsigned long long,fmt::v10::detail::digit_grouping<char>>(v8, *a5[1], *a5[2], *(a5[3] + 2), a5[4]);
  v16 = v14;
  if ((a5[5][6] & 8) != 0)
  {
    fmt::v10::detail::buffer<char>::push_back(v14, a5[6]);
    v17 = *a5[7];
    if (v17 >= 1)
    {
      v18 = a5[8];
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v16, v18);
        --v17;
      }

      while (v17);
    }
  }

  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v16, v11 - v13, a2 + 11, v15);
  }

  return v16;
}

uint64_t fmt::v10::detail::write_significand<char,fmt::v10::appender,unsigned long long,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, unint64_t a2, signed int a3, const char *a4, uint64_t a5)
{
  v5 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 47);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 32);
  }

  if (v7)
  {
    v16 = &unk_286BF19A0;
    __p = v19;
    v18 = xmmword_25A9BF650;
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    fmt::v10::detail::format_decimal<char,unsigned long long>(v20, a2, a3, a4);
    fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v20, v9, &v16, v10);
    LOBYTE(v20[0]) = 48;
    if (v5 >= 1)
    {
      do
      {
        fmt::v10::detail::buffer<char>::push_back(&v16, v20);
        --v5;
      }

      while (v5);
    }

    v11 = fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(a5, a1, __p, v18);
    if (__p != v19)
    {
      operator delete(__p);
    }
  }

  else
  {
    v16 = 0;
    __p = 0;
    LODWORD(v18) = 0;
    fmt::v10::detail::format_decimal<char,unsigned long long>(&v16, a2, a3, a4);
    v11 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v16, v12, a1, v13);
    LOBYTE(v16) = 48;
    if (v5 >= 1)
    {
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v11, &v16);
        --v5;
      }

      while (v5);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_25A340238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p != v11)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (**a5)
  {
    v19 = byte_25A9BFEED[**a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v19);
  }

  v15 = fmt::v10::detail::write_significand<fmt::v10::appender,char,unsigned long long,fmt::v10::detail::digit_grouping<char>>(v8, *a5[1], *a5[2], *a5[3], *a5[4], a5[5]);
  v16 = *a5[6];
  if (v16 >= 1)
  {
    v17 = a5[7];
    do
    {
      fmt::v10::detail::buffer<char>::push_back(v15, v17);
      --v16;
    }

    while (v16);
  }

  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v15, v11 - v13, a2 + 11, v14);
  }

  return v15;
}

uint64_t fmt::v10::detail::write_significand<fmt::v10::appender,char,unsigned long long,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, unint64_t a2, signed int a3, const char *a4, int a5, uint64_t a6)
{
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = *(a6 + 47);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a6 + 32);
  }

  if (!v8)
  {
    if (!a5)
    {
      fmt::v10::detail::format_decimal<char,unsigned long long>(&v29, a2, a3, a4);
      v16 = v26;
      goto LABEL_25;
    }

    v16 = &v29 + a3 + 1;
    v17 = a3 - a4;
    if (a3 - a4 < 2)
    {
      v20 = a2;
      v19 = &v29 + a3 + 1;
      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = (v17 >> 1) + 1;
      v19 = &v29 + a3 + 1;
      do
      {
        v20 = a2 / 0x64;
        *(v19 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
        v19 -= 2;
        --v18;
        a2 /= 0x64uLL;
      }

      while (v18 > 1);
      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    *--v19 = (v20 % 0xA) | 0x30;
    v20 /= 0xAuLL;
LABEL_17:
    *(v19 - 1) = a5;
    fmt::v10::detail::format_decimal<char,unsigned long long>(&v19[-a4 - 1], v20, a4, a4);
LABEL_25:
    v25 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v29, v16, a1, v21);
    goto LABEL_26;
  }

  v29 = &unk_286BF19A0;
  __p = v32;
  v31 = xmmword_25A9BF650;
  if (!a5)
  {
    fmt::v10::detail::format_decimal<char,unsigned long long>(v33, a2, a3, a4);
    v10 = v22;
    goto LABEL_19;
  }

  v10 = &v33[a3 + 1];
  v11 = a3 - a4;
  if (a3 - a4 < 2)
  {
    v14 = a2;
    v13 = &v33[a3 + 1];
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = (v11 >> 1) + 1;
    v13 = &v33[a3 + 1];
    do
    {
      v14 = a2 / 0x64;
      *(v13 - 1) = *&a00010203040506[2 * (a2 % 0x64)];
      v13 -= 2;
      --v12;
      a2 /= 0x64uLL;
    }

    while (v12 > 1);
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  *--v13 = (v14 % 0xA) | 0x30;
  v14 /= 0xAuLL;
LABEL_10:
  *(v13 - 1) = a5;
  fmt::v10::detail::format_decimal<char,unsigned long long>(&v13[-a4 - 1], v14, a4, a4);
LABEL_19:
  fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v33, v10, &v29, v15);
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v23);
  }

  fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(a6, a1, __p, v6);
  v25 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(__p + v6, __p + v31, a1, v24);
  if (__p != v32)
  {
    operator delete(__p);
  }

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}::operator()(a5, v8);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

uint64_t fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double>,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::dragonbox::decimal_fp<double> const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}::operator()(unsigned __int8 **a1, uint64_t a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (**a1)
  {
    LOBYTE(v13[0]) = byte_25A9BFEED[**a1];
    fmt::v10::detail::buffer<char>::push_back(a2, v13);
  }

  fmt::v10::detail::buffer<char>::push_back(v2, a1[1]);
  if (*a1[2] == 1)
  {
    fmt::v10::detail::buffer<char>::push_back(v2, a1[3]);
    v5 = *a1[4];
    if (v5 >= 1)
    {
      v6 = a1[1];
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v2, v6);
        --v5;
      }

      while (v5);
    }

    v7 = *a1[5];
    v8 = *a1[6];
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    fmt::v10::detail::format_decimal<char,unsigned long long>(v13, v7, v8, v4);
    v2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v13, v9, v2, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender>(uint64_t a1, char *__s)
{
  if (!__s)
  {
    fmt::v10::detail::throw_format_error("string pointer is null", 0);
  }

  v4 = &__s[strlen(__s)];

  return fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(__s, v4, a1, v5);
}

void *fmt::v10::detail::write_ptr<char,fmt::v10::appender,unsigned long>(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  do
  {
    ++v5;
    v7 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v7);
  v17 = a2;
  v18 = v5;
  if (a3)
  {
    v8 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_ptr<char,fmt::v10::appender,unsigned long>(fmt::v10::appender,unsigned long,fmt::v10::format_specs<char> const*)::{lambda(fmt::v10::appender)#1} &>(a1, a3, v5 + 2, (v5 + 2), &v17);
LABEL_13:
    v4 = v8;
    goto LABEL_14;
  }

  LOBYTE(v19[0]) = 48;
  fmt::v10::detail::buffer<char>::push_back(a1, v19);
  LOBYTE(v19[0]) = 120;
  fmt::v10::detail::buffer<char>::push_back(v4, v19);
  v10 = v4[2];
  if (v4[3] < (v10 + v5) || (v4[2] = v10 + v5, (v11 = v4[1]) == 0))
  {
    v14 = v5 - 1;
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    do
    {
      *(v19 + v14--) = a0123456789abcd_0[v3 & 0xF];
      v7 = v3 > 0xF;
      v3 >>= 4;
    }

    while (v7);
    v8 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v19, v19 + v5, v4, v9);
    goto LABEL_13;
  }

  v12 = (v11 + v10 + v5 - 1);
  do
  {
    *v12-- = a0123456789abcd_0[v3 & 0xF];
    v13 = v3 >= 0x10;
    v3 >>= 4;
  }

  while (v13);
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_ptr<char,fmt::v10::appender,unsigned long>(fmt::v10::appender,unsigned long,fmt::v10::format_specs<char> const*)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  LOBYTE(v23[0]) = 48;
  fmt::v10::detail::buffer<char>::push_back(v8, v23);
  LOBYTE(v23[0]) = 120;
  fmt::v10::detail::buffer<char>::push_back(v8, v23);
  v14 = *(a5 + 8);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_19:
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v15 = *a5;
  v16 = v8[2];
  if (v8[3] >= (v16 + v14) && (v8[2] = v16 + v14, (v17 = v8[1]) != 0))
  {
    v18 = (v16 + v14 + v17 - 1);
    do
    {
      *v18-- = a0123456789abcd_0[v15 & 0xF];
      v9 = v15 >= 0x10;
      v15 >>= 4;
    }

    while (v9);
  }

  else
  {
    v23[0] = 0;
    v23[1] = 0;
    v19 = v14 - 1;
    v24 = 0;
    do
    {
      *(v23 + v19--) = a0123456789abcd_0[v15 & 0xF];
      v20 = v15 > 0xF;
      v15 >>= 4;
    }

    while (v20);
    v8 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v23, v23 + v14, v8, a4);
  }

  if (v11 != v13)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(v8, v11 - v13, a2 + 11, a4);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_text(uint64_t a1, char *a2, char *a3, const char *a4)
{
  if (a3 - a2 < 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  result = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(a2, a3, *(a1 + 24), a4);
  *(a1 + 24) = result;
  return result;
}

char *fmt::v10::detail::parse_replacement_field<char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &>(uint64_t a1, char *a2, uint64_t a3, const char *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 1);
  if ((a1 + 1) == a2)
  {
    fmt::v10::detail::throw_format_error("invalid format string", a2);
  }

  v6 = *v4;
  if (v6 == 123)
  {
    *(a3 + 24) = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>((a1 + 1), (a1 + 2), *(a3 + 24), a4);
    goto LABEL_38;
  }

  if (v6 == 125)
  {
    a2 = *(a3 + 16);
    if ((a2 & 0x80000000) == 0)
    {
      *(a3 + 16) = a2 + 1;
      fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,int>(a3 + 24, a2, &v31);
      v10 = *(a3 + 24);
      switch(v32)
      {
        case 1:
          goto LABEL_16;
        case 2:
          goto LABEL_26;
        case 3:
          goto LABEL_23;
        case 4:
          goto LABEL_25;
        case 5:
          goto LABEL_21;
        case 6:
          goto LABEL_29;
        case 7:
          v26 = 0xFFFFFFFF00000000;
          LOBYTE(v27) = 0;
          *(&v27 + 1) = 0;
          *(&v27 + 3) = 32;
          BYTE7(v27) = 1;
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,BOOL,0>(v10, v31.n128_u8[0], &v26);
          goto LABEL_36;
        case 8:
          goto LABEL_27;
        case 9:
          goto LABEL_28;
        case 10:
        case 11:
          goto LABEL_24;
        case 12:
          goto LABEL_22;
        case 13:
          goto LABEL_20;
        case 14:
          v26 = 0xFFFFFFFF00000000;
          LOBYTE(v27) = 0;
          *(&v27 + 1) = 0;
          *(&v27 + 3) = 32;
          BYTE7(v27) = 1;
          v11 = fmt::v10::detail::write_ptr<char,fmt::v10::appender,unsigned long>(v10, v31.n128_u64[0], &v26);
          goto LABEL_36;
        case 15:
          v18 = *(a3 + 48);
          v23 = 0;
          *&v24 = 0;
          DWORD2(v24) = 0;
          v26 = v10;
          v27 = *(a3 + 32);
          v28 = v18;
          (v31.n128_u64[1])(v31.n128_u64[0], &v23, &v26);
          goto LABEL_33;
        default:
          goto LABEL_42;
      }
    }

LABEL_40:
    fmt::v10::detail::throw_format_error("cannot switch from manual to automatic argument indexing", a2);
  }

  v12 = a2;
  v21 = a3;
  v22 = 0;
  if (v6 == 58)
  {
    v13 = *(a3 + 16);
    if (v13 < 0)
    {
      goto LABEL_40;
    }

    *(a3 + 16) = v13 + 1;
    v22 = v13;
  }

  else
  {
    v4 = fmt::v10::detail::do_parse_arg_id<char,char const* fmt::v10::detail::parse_replacement_field<char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &>(char const*,char const*,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &)::id_adapter &>((a1 + 1), a2, &v21, a4);
  }

  if (v4 == v12)
  {
    goto LABEL_41;
  }

  v14 = *v4;
  if (v14 != 58)
  {
    if (v14 == 125)
    {
      fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,int>(a3 + 24, v22, &v31);
      v10 = *(a3 + 24);
      v23 = v10;
      v24 = *(a3 + 32);
      v15 = *(a3 + 48);
      v25 = v15;
      switch(v32)
      {
        case 1:
LABEL_16:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,int,0>(v10, v31.n128_i32[0], v8, v9);
          goto LABEL_36;
        case 2:
LABEL_26:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,unsigned int,0>(v10, v31.n128_u32[0], v8, v9);
          goto LABEL_36;
        case 3:
LABEL_23:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,long long,0>(v10, v31.n128_i64[0], v8, v9);
          goto LABEL_36;
        case 4:
LABEL_25:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,unsigned long long,0>(v10, v31.n128_u64[0], v8, v9);
          goto LABEL_36;
        case 5:
LABEL_21:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,__int128,0>(v10, v31.n128_i64[0], v31.n128_i64[1]);
          goto LABEL_36;
        case 6:
LABEL_29:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,unsigned __int128,0>(v10, v31.n128_u64[0], v31.n128_u64[1]);
          goto LABEL_36;
        case 7:
          v11 = fmt::v10::detail::default_arg_formatter<char>::operator()<BOOL>(&v23, v31.n128_u8[0]);
          goto LABEL_36;
        case 8:
LABEL_27:
          LOBYTE(v26) = v31.n128_u8[0];
          fmt::v10::detail::buffer<char>::push_back(v10, &v26);
          break;
        case 9:
LABEL_28:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,float,0>(v10, v7, v8, v9, v31.n128_f32[0]);
          goto LABEL_36;
        case 10:
        case 11:
LABEL_24:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender,double,0>(v10, v7, v8, v9, v31.n128_f64[0]);
          goto LABEL_36;
        case 12:
LABEL_22:
          v11 = fmt::v10::detail::write<char,fmt::v10::appender>(v10, v31.n128_u64[0]);
          goto LABEL_36;
        case 13:
LABEL_20:
          v11 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v31.n128_u64[0], (v31.n128_u64[0] + v31.n128_u64[1]), v10, v9);
          goto LABEL_36;
        case 14:
          v11 = fmt::v10::detail::default_arg_formatter<char>::operator()<void const*>(&v23, v31.n128_u64[0]);
LABEL_36:
          v10 = v11;
          break;
        case 15:
          v29[0] = 0;
          v29[1] = 0;
          v30 = 0;
          v26 = v10;
          v27 = v24;
          v28 = v15;
          (v31.n128_u64[1])(v31.n128_u64[0], v29, &v26);
LABEL_33:
          v10 = v26;
          break;
        default:
LABEL_42:
          fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xE5E, "", v9);
      }

      *(a3 + 24) = v10;
      goto LABEL_38;
    }

LABEL_41:
    fmt::v10::detail::throw_format_error("missing '}' in format string", a2);
  }

  v16 = fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_format_specs(a3, v22, v4 + 1, v12);
  if (v16 == v12 || (v4 = v16, *v16 != 125))
  {
    fmt::v10::detail::throw_format_error("unknown format specifier", v17);
  }

LABEL_38:
  v19 = *MEMORY[0x277D85DE8];
  return v4 + 1;
}

uint64_t *fmt::v10::detail::parse_format_string<false,char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler>(fmt::v10::basic_string_view<char>,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &&)::writer::operator()(uint64_t *result, char *__s, char *a3, const char *a4)
{
  if (__s != a3)
  {
    v5 = __s;
    v6 = a3 - __s;
    if (v6 < 0)
    {
LABEL_8:
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }

    v7 = result;
    while (1)
    {
      v8 = memchr(v5, 125, v6);
      if (!v8)
      {
        break;
      }

      v11 = v8;
      v12 = v8 + 1;
      if (v8 + 1 == a3 || *v12 != 125)
      {
        fmt::v10::detail::throw_format_error("unmatched '}' in format string", v9);
      }

      fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_text(*v7, v5, v12, v10);
      v5 = v11 + 2;
      v6 = a3 - (v11 + 2);
      if (v6 < 0)
      {
        goto LABEL_8;
      }
    }

    v13 = *v7;

    return fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_text(v13, v5, a3, v10);
  }

  return result;
}

char *fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler::on_format_specs(uint64_t a1, int a2, char *a3, char *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,int>(a1 + 24, a2, &__s);
  v10 = v59;
  if (v59 == 15)
  {
    v11 = &a3[-*a1];
    if (v11 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v8);
    }

    v12 = *(a1 + 8);
    *a1;
    *a1 = a3;
    *(a1 + 8) = v12 - v11;
    (__s.n128_u64[1])(__s.n128_u64[0], a1, a1 + 24, v9);
    a3 = *a1;
    goto LABEL_150;
  }

  v56 = 0u;
  memset(v57, 0, sizeof(v57));
  DWORD1(v56) = -1;
  *(&v56 + 9) = 0;
  BYTE11(v56) = 32;
  BYTE13(v56) = 0;
  HIBYTE(v56) = 1;
  DWORD2(v57[0]) = 0;
  LODWORD(v57[2]) = 0;
  if (a4 - a3 < 2)
  {
    if (a3 == a4)
    {
      goto LABEL_105;
    }

    goto LABEL_9;
  }

  v13 = a3[1] - 60;
  if (v13 > 0x22 || ((1 << v13) & 0x400000005) == 0)
  {
LABEL_9:
    v14 = *a3;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:
  v15 = 0;
  v16 = (v59 - 1);
  v17 = 1 << v59;
  v18 = (1 << v59) & 0x3E00;
  v19 = (1 << v59) & 0xE2A;
  while (2)
  {
    switch(v14)
    {
      case ' ':
      case '+':
      case '-':
        if (!v10)
        {
          goto LABEL_105;
        }

        if (!v19 || v15 >= 2)
        {
          goto LABEL_154;
        }

        switch(v14)
        {
          case ' ':
            v20 = 48;
            break;
          case '+':
            v20 = 32;
            break;
          case '-':
            v20 = 16;
            break;
          default:
            goto LABEL_59;
        }

        *(&v56 + 9) = *(&v56 + 9) & 0xFF8F | v20;
LABEL_59:
        ++a3;
        v15 = 2;
        goto LABEL_64;
      case '#':
        if (!v10)
        {
          goto LABEL_105;
        }

        if (v16 > 0xA || v15 >= 3)
        {
          goto LABEL_154;
        }

        *(&v56 + 9) |= 0x80u;
        ++a3;
        v15 = 3;
        goto LABEL_64;
      case '.':
        if (!v10)
        {
          goto LABEL_105;
        }

        if (!v18 || v15 >= 6)
        {
          goto LABEL_154;
        }

        a3 = fmt::v10::detail::parse_precision<char>(a3, a4, &v56 + 1, &v57[1] + 8, a1);
        v15 = 6;
        goto LABEL_64;
      case '0':
        if (v15 >= 4)
        {
          goto LABEL_154;
        }

        if (v16 < 0xB)
        {
          if ((BYTE9(v56) & 0xF) == 0)
          {
            *(&v56 + 9) |= 4u;
            BYTE11(v56) = 48;
          }

          ++a3;
          v15 = 4;
LABEL_64:
          if (a3 == a4)
          {
            goto LABEL_105;
          }

          v14 = *a3;
          continue;
        }

        if (v10)
        {
          fmt::v10::detail::throw_format_error("format specifier requires numeric argument", v7);
        }

LABEL_105:
        v60 = v57[0];
        v61 = *&v57[1];
        fmt::v10::detail::handle_dynamic_spec<fmt::v10::detail::width_checker,fmt::v10::basic_format_context<fmt::v10::appender,char>>(&v56, &v60, a1 + 24);
        v60 = *(&v57[1] + 8);
        v61 = *(&v57[2] + 1);
        fmt::v10::detail::handle_dynamic_spec<fmt::v10::detail::precision_checker,fmt::v10::basic_format_context<fmt::v10::appender,char>>(&v56 + 4, &v60, a1 + 24);
        if (a3 == a4 || *a3 != 125)
        {
          fmt::v10::detail::throw_format_error("missing '}' in format string", v32);
        }

        v34 = *(a1 + 24);
        v35 = *(a1 + 48);
        switch(v59)
        {
          case 1:
            v36 = __s.n128_u32[0];
            if ((*(&v56 + 9) & 0x100) != 0)
            {
              LODWORD(v61) = 1;
              v60 = __s.n128_u32[0];
              if (fmt::v10::detail::write_loc(v34, &v60, &v56, v35))
              {
                goto LABEL_149;
              }
            }

            if ((v36 & 0x80000000) != 0)
            {
              v36 = -v36;
              v37 = 0x100002D00000000;
            }

            else
            {
              v37 = dword_25A9BF6E0[(*(&v56 + 9) >> 4) & 7] << 32;
            }

            v45 = (v37 | v36);
            goto LABEL_147;
          case 2:
            v43 = __s.n128_u32[0];
            v44 = *(&v56 + 9);
            if ((*(&v56 + 9) & 0x100) == 0)
            {
              goto LABEL_123;
            }

            LODWORD(v61) = 2;
            v60 = __s.n128_u32[0];
            if (fmt::v10::detail::write_loc(v34, &v60, &v56, v35))
            {
              goto LABEL_149;
            }

            v44 = *(&v56 + 9);
LABEL_123:
            v45 = (v43 | (dword_25A9BF6E0[(v44 >> 4) & 7] << 32));
LABEL_147:
            v38 = fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned int>(v34, v45, &v56, v35);
            goto LABEL_148;
          case 3:
            v39 = __s.n128_u64[0];
            if ((*(&v56 + 9) & 0x100) != 0)
            {
              LODWORD(v61) = 3;
              v60 = __s.n128_u64[0];
              if (fmt::v10::detail::write_loc(v34, &v60, &v56, v35))
              {
                goto LABEL_149;
              }
            }

            if ((v39 & 0x8000000000000000) != 0)
            {
              v39 = -v39;
              v41 = 16777261;
            }

            else
            {
              v41 = dword_25A9BF6E0[(*(&v56 + 9) >> 4) & 7];
            }

            goto LABEL_144;
          case 4:
            v39 = __s.n128_u64[0];
            v40 = *(&v56 + 9);
            if ((*(&v56 + 9) & 0x100) == 0)
            {
              goto LABEL_117;
            }

            LODWORD(v61) = 4;
            v60 = __s.n128_u64[0];
            if (fmt::v10::detail::write_loc(v34, &v60, &v56, v35))
            {
              goto LABEL_149;
            }

            v40 = *(&v56 + 9);
LABEL_117:
            v41 = dword_25A9BF6E0[(v40 >> 4) & 7];
LABEL_144:
            v38 = fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned long long>(v34, v39, v41, &v56);
            goto LABEL_148;
          case 5:
            v47 = __s.n128_u64[1];
            v48 = __s.n128_u64[0];
            v49 = *(&v56 + 9);
            if ((*(&v56 + 9) & 0x100) == 0)
            {
              goto LABEL_132;
            }

            LODWORD(v61) = 5;
            v60 = __s;
            if (fmt::v10::detail::write_loc(v34, &v60, &v56, v35))
            {
              goto LABEL_149;
            }

            v49 = *(&v56 + 9);
LABEL_132:
            if ((v47 & 0x8000000000000000) != 0)
            {
              v55 = v48 == 0;
              v48 = -v48;
              v47 = -(v47 + !v55);
              v52 = 16777261;
            }

            else
            {
              v50 = (v49 >> 4) & 7;
LABEL_139:
              v52 = dword_25A9BF6E0[v50];
            }

            v60.n128_u64[0] = v48;
            v60.n128_u64[1] = v47;
            LODWORD(v61) = v52;
            v38 = fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned __int128>(v34, &v60, &v56, v35);
LABEL_148:
            v34 = v38;
LABEL_149:
            *(a1 + 24) = v34;
            break;
          case 6:
            v47 = __s.n128_u64[1];
            v48 = __s.n128_u64[0];
            v51 = *(&v56 + 9);
            if ((*(&v56 + 9) & 0x100) == 0)
            {
              goto LABEL_138;
            }

            LODWORD(v61) = 6;
            v60 = __s;
            if (fmt::v10::detail::write_loc(v34, &v60, &v56, v35))
            {
              goto LABEL_149;
            }

            v51 = *(&v56 + 9);
LABEL_138:
            v50 = (v51 >> 4) & 7;
            goto LABEL_139;
          case 7:
            v46 = *(a1 + 48);
            v38 = fmt::v10::detail::write<char,fmt::v10::appender,BOOL,0>(*(a1 + 24), __s.n128_u8[0], &v56);
            goto LABEL_148;
          case 8:
            v38 = fmt::v10::detail::write<char,fmt::v10::appender>(*(a1 + 24), __s.n128_i8[0], &v56, *(a1 + 48));
            goto LABEL_148;
          case 9:
            v38 = fmt::v10::detail::write<char,fmt::v10::appender,float,0>(*(a1 + 24), v56, *(&v56 + 1), *(a1 + 48), __s.n128_f32[0]);
            goto LABEL_148;
          case 10:
            v38 = fmt::v10::detail::write<char,fmt::v10::appender,double,0>(*(a1 + 24), v56, *(&v56 + 1), *(a1 + 48), __s.n128_f64[0]);
            goto LABEL_148;
          case 11:
            v38 = fmt::v10::detail::write<char,fmt::v10::appender,long double,0>(*(a1 + 24), v56, *(&v56 + 1), *(a1 + 48), __s.n128_f64[0]);
            goto LABEL_148;
          case 12:
            v42 = *(a1 + 48);
            v38 = fmt::v10::detail::write<char,fmt::v10::appender>(*(a1 + 24), __s.n128_u64[0], &v56);
            goto LABEL_148;
          case 13:
            v38 = fmt::v10::detail::write<char,fmt::v10::appender>(*(a1 + 24), __s.n128_u64[0], __s.n128_u64[1], &v56);
            goto LABEL_148;
          case 14:
            v38 = fmt::v10::detail::write_ptr<char,fmt::v10::appender,unsigned long>(*(a1 + 24), __s.n128_u64[0], &v56);
            goto LABEL_148;
          case 15:
            goto LABEL_149;
          default:
            fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xE5E, "", v33);
        }

LABEL_150:
        v53 = *MEMORY[0x277D85DE8];
        return a3;
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '{':
        if (v15 >= 5)
        {
          goto LABEL_154;
        }

        a3 = fmt::v10::detail::parse_dynamic_spec<char>(a3, a4, &v56, v57, a1);
        v15 = 5;
        goto LABEL_64;
      case '<':
      case '>':
      case '^':
        if (v15)
        {
          goto LABEL_154;
        }

        if (v14 == 62)
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        if (v14 == 94)
        {
          v22 = 3;
        }

        else
        {
          v22 = v21;
        }

        if (v14 == 60)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        *(&v56 + 9) = *(&v56 + 9) & 0xFFF0 | v23;
        ++a3;
        v15 = 1;
        goto LABEL_64;
      case '?':
        if ((v17 & 0x3100) == 0)
        {
          goto LABEL_104;
        }

        v31 = 18;
        goto LABEL_103;
      case 'A':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 8;
        goto LABEL_103;
      case 'B':
        if ((v17 & 0x1FE) == 0)
        {
          goto LABEL_104;
        }

        v31 = 6;
        goto LABEL_103;
      case 'E':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 10;
        goto LABEL_103;
      case 'F':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 12;
        goto LABEL_103;
      case 'G':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 14;
        goto LABEL_103;
      case 'L':
        if (!v10)
        {
          goto LABEL_105;
        }

        if (v16 > 0xA || v15 >= 7)
        {
          goto LABEL_154;
        }

        *(&v56 + 9) |= 0x100u;
        ++a3;
        v15 = 7;
        goto LABEL_64;
      case 'X':
        if ((v17 & 0x1FE) == 0)
        {
          goto LABEL_104;
        }

        v31 = 4;
        goto LABEL_103;
      case 'a':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 7;
        goto LABEL_103;
      case 'b':
        if ((v17 & 0x1FE) == 0)
        {
          goto LABEL_104;
        }

        v31 = 5;
        goto LABEL_103;
      case 'c':
        if (v10 == 7)
        {
          goto LABEL_154;
        }

        if ((v17 & 0x1FE) != 0)
        {
          v31 = 15;
LABEL_103:
          BYTE8(v56) = v31;
          ++a3;
        }

        else
        {
LABEL_104:
          if (v10)
          {
LABEL_154:
            fmt::v10::detail::throw_format_error("invalid format specifier", v7);
          }
        }

        goto LABEL_105;
      case 'd':
        if ((v17 & 0x1FE) == 0)
        {
          goto LABEL_104;
        }

        v31 = 1;
        goto LABEL_103;
      case 'e':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 9;
        goto LABEL_103;
      case 'f':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 11;
        goto LABEL_103;
      case 'g':
        if ((v17 & 0xE00) == 0)
        {
          goto LABEL_104;
        }

        v31 = 13;
        goto LABEL_103;
      case 'o':
        if ((v17 & 0x1FE) == 0)
        {
          goto LABEL_104;
        }

        v31 = 2;
        goto LABEL_103;
      case 'p':
        if ((v17 & 0x5000) == 0)
        {
          goto LABEL_104;
        }

        v31 = 17;
        goto LABEL_103;
      case 's':
        if ((v17 & 0x3080) == 0)
        {
          goto LABEL_104;
        }

        v31 = 16;
        goto LABEL_103;
      case 'x':
        if ((v17 & 0x1FE) == 0)
        {
          goto LABEL_104;
        }

        v31 = 3;
        goto LABEL_103;
      case '}':
        goto LABEL_105;
      default:
        v24 = *a3;
        if (v24 == 125)
        {
          goto LABEL_105;
        }

        v25 = ((0x3A55000000000000uLL >> ((*a3 >> 2) & 0x3E)) & 3) + 1;
        v26 = &a3[v25];
        if (a4 - &a3[v25] <= 0)
        {
          goto LABEL_154;
        }

        if (v24 == 123)
        {
          fmt::v10::detail::throw_format_error("invalid fill character '{'", v7);
        }

        v27 = v16;
        v28 = *v26;
        v29 = v18;
        switch(v28)
        {
          case '<':
            v30 = 1;
            break;
          case '^':
            v30 = 3;
            break;
          case '>':
            v30 = 2;
            break;
          default:
            goto LABEL_154;
        }

        if (v15)
        {
          goto LABEL_154;
        }

        fmt::v10::detail::fill_t<char>::operator=((&v56 | 0xB), a3, v25, v8);
        *(&v56 + 9) = *(&v56 + 9) & 0xFFF0 | v30;
        a3 = v26 + 1;
        v15 = 1;
        v18 = v29;
        v16 = v27;
        goto LABEL_64;
    }
  }
}