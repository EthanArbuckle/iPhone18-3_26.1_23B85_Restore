__n128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, __int8 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v8, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, v8, a5))
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = v8[1].n128_u64[0];
          *v14 = *v8;
          v14[1].n128_u64[0] = v17;
          *v8 = v16;
          v8[1].n128_u64[0] = v15;
          a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v8, a4, v10, v8);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v30 = v8;
      do
      {
        v31 = v7;
        v19 = 0;
        v32 = *v8;
        v33 = v8[1].n128_u64[0];
        v20 = v8;
        do
        {
          v21 = v20 + 24 * v19;
          v22 = (v21 + 24);
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = (v21 + 48);
            if ((*a4)((v21 + 24), v21 + 48))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          v26 = *v22;
          v20[1].n128_u64[0] = v22[1].n128_u64[0];
          *v20 = v26;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = (v31 - 24);
        if (v22 == &v31[-2].n128_i8[8])
        {
          v22[1].n128_u64[0] = v33;
          *v22 = v32;
          v8 = v30;
        }

        else
        {
          v27 = *v7;
          v22[1].n128_u64[0] = v31[-1].n128_u64[1];
          *v22 = v27;
          *v7 = v32;
          v31[-1].n128_u64[1] = v33;
          v8 = v30;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v30, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i64[1] - v30) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, unsigned int (**a2)(uint64_t, __int8 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 24 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 24 * v12, &v13[1].n128_i8[8]))
      {
        v13 = (v13 + 24);
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        do
        {
          v16 = v13;
          v17 = *v13;
          v7[1].n128_u64[0] = v13[1].n128_u64[0];
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = (a1 + 24 * v18);
          v19 = 2 * v12 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 24 * v18, &v13[1].n128_i8[8]))
            {
              v13 = (v13 + 24);
              v18 = v19;
            }
          }

          v7 = v16;
          v12 = v18;
        }

        while (!(*a2)(v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    if ((*a3)(v10, (a2 - 24)))
    {
      v15 = *v11;
      v16 = *(v11 + 2);
      do
      {
        v13 = v10;
        v14 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 24 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v15) & 1) != 0);
      result = *&v15;
      *v13 = v15;
      *(v13 + 2) = v16;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,geo::math::Matrix<double,3,1>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<unsigned int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049620)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049640)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1E3049620)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1E3049640)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<unsigned long>::push_back[abi:nn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(uint64_t a1, uint64_t *a2)
{
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](&v14, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      geo::math::polygon_detail::GetNonRedundantIndices((v3 + v4), &v12);
      v6 = (v14 + v4);
      v7 = *(v14 + v4);
      if (v7)
      {
        v6[1] = v7;
        operator delete(v7);
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
      }

      *v6 = v12;
      v6[2] = v13;
      ++v5;
      v3 = *a2;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](a2);
  v9 = v14;
  v8 = v15;
  if (v15 != v14)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (*(v9 + v10 + 8) - *(v9 + v10) >= 0x11uLL)
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](a2, (v9 + v10));
        v9 = v14;
        v8 = v15;
      }

      ++v11;
      v10 += 24;
    }

    while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3));
  }

  *&v12 = &v14;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v12);
}

void *std::vector<std::vector<unsigned long>>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void geo::math::polygon_detail::GetNonRedundantIndices(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v21 = 0;
  v22 = 0;
  v3 = a1[1] - *a1;
  v4 = v3 >> 3;
  v5 = (v3 >> 3) - 2;
  if ((v3 >> 3) >= 2)
  {
    v23 = 0;
    std::vector<unsigned long>::resize(&__p, v3 >> 3, &v23);
    v7 = __p;
    *__p = 0;
    v8 = *a1;
    if (v4 != 1)
    {
      v9 = 0;
      v10 = v8 + 1;
      v11 = v7 + 8;
      v12 = v4 - 1;
      do
      {
        if (*(v10 - 1) != *v10)
        {
          ++v9;
        }

        *v11++ = v9;
        ++v10;
        --v12;
      }

      while (v12);
      if (v4 != 2 && v8[v4 - 1] == *v8)
      {
        v13 = &v7[8 * v4 - 8];
        do
        {
          *v13 = 0;
          v13 -= 8;
          if (v5 < 2)
          {
            break;
          }

          v14 = v8[v5--];
        }

        while (v14 == *v8);
      }
    }

    std::vector<unsigned long>::push_back[abi:nn200100](a2, v8);
    v16 = *a1;
    v15 = a1[1];
    if ((v15 - *a1) >= 9)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = *(__p + v18);
        if (v19 != *(__p + v17 * 8) && v19 != *__p)
        {
          std::vector<unsigned long>::push_back[abi:nn200100](a2, &v16[v17 + 1]);
          v16 = *a1;
          v15 = a1[1];
        }

        ++v18;
        ++v17;
      }

      while (v18 < (v15 - v16) >> 3);
    }
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

uint64_t std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, v11);
    }

    v12 = 24 * v8;
    std::vector<unsigned long>::vector[abi:nn200100](v12, a2);
    v7 = v12 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 24;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v17);
  }

  else
  {
    result = std::vector<unsigned long>::vector[abi:nn200100](v4, a2);
    v7 = result + 24;
  }

  *(a1 + 8) = v7;
  return result;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1E3049620)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
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

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1E3049620)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::__unordered_map_hasher<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,std::equal_to<geo::math::Matrix<double,3,1>>,true>,std::__unordered_map_equal<geo::math::Matrix<double,3,1>,std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>,std::equal_to<geo::math::Matrix<double,3,1>>,geo::math::VectorHasher<geo::math::Matrix<double,3,1>>,true>,std::allocator<std::__hash_value_type<geo::math::Matrix<double,3,1>,unsigned int>>>::__emplace_unique_key_args<geo::math::Matrix<double,3,1>,std::pair<geo::math::Matrix<double,3,1>,unsigned long>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 3; ++i)
  {
    v4 = *&a2[i];
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    v2 ^= *&v4;
  }

  v5 = v2 + 2654435769;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_29;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v2 + 2654435769;
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
LABEL_29:
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
      goto LABEL_29;
    }

LABEL_28:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_29;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1] || v10[4] != a2[2])
  {
    goto LABEL_28;
  }

  return v10;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::Merge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, uint64_t a2, unsigned int a3, uint64_t a4, std::vector<unsigned int>::value_type a5, uint64_t a6)
{
  v10 = *(a4 + 20);
  *(a6 + 16) = *(a2 + 16);
  *(a6 + 20) = v10;
  v27 = 0;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetLowestCommonTangent(a1, a2, a3, a4, a5, &v27 + 1, &v27);
  *a6 = *a2;
  *(a6 + 8) = *(a4 + 8);
  v12 = v27;
  v11 = HIDWORD(v27);
  if (HIDWORD(v27) == *(a2 + 16))
  {
    *a6 = HIDWORD(v27) | (v27 << 32);
  }

  if (v12 == *(a4 + 20))
  {
    *(a6 + 8) = v11 | (v12 << 32);
  }

  LeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(a1, a2, a4, v11, v12);
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(a1, a2, a4, HIDWORD(v27), v27);
  v15 = result;
  v17 = v27;
  v16 = HIDWORD(v27);
  v18 = result != v27;
  v19 = LeftCandidate != HIDWORD(v27);
  if (__PAIR64__(LeftCandidate, result) != v27)
  {
    do
    {
      v20 = a1;
      if (v19)
      {
        if (!v18)
        {
          v24 = LeftCandidate;
          v25 = v17;
LABEL_14:
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(v20, v24, v25, v16, v16);
          HIDWORD(v27) = LeftCandidate;
          goto LABEL_15;
        }

        if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(a1, v16, v17, LeftCandidate, v15) != 2)
        {
          v25 = v27;
          v16 = HIDWORD(v27);
          v20 = a1;
          v24 = LeftCandidate;
          goto LABEL_14;
        }

        v22 = v27;
        v21 = HIDWORD(v27);
        v20 = a1;
        v23 = v15;
        v17 = v27;
      }

      else
      {
        v21 = v16;
        v23 = v15;
        v22 = v17;
      }

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(v20, v21, v23, v22, v17);
      LODWORD(v27) = v15;
LABEL_15:
      LeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(a1, a2, a4, HIDWORD(v27), v27);
      result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(a1, a2, a4, HIDWORD(v27), v27);
      v15 = result;
      v17 = v27;
      v16 = HIDWORD(v27);
      v18 = result != v27;
      v19 = LeftCandidate != HIDWORD(v27);
    }

    while (LeftCandidate != HIDWORD(v27) || result != v27);
  }

  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitTriangle(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, uint64_t a3)
{
  v6 = a2 + 1;
  v7 = a2 + 2;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, a2 + 1);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, a2);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, v7);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, v6);
  *(a3 + 16) = a2;
  *(a3 + 20) = v7;
  v8 = *(a1 + 1);
  v9 = (v8 + 24 * a2);
  v10 = (*(v8 + 24 * v6) - *v9) * (*(v8 + 24 * v7 + 8) - v9[1]) - (*(v8 + 24 * v6 + 8) - v9[1]) * (*(v8 + 24 * v7) - *v9);
  v11 = v10 <= 0.0;
  if (v10 < 0.0)
  {
    v11 = 2;
  }

  if (v11 == 2)
  {
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, v7);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, a2);
    v12 = a2 | (v7 << 32);
    *a3 = v12;
    *(a3 + 8) = v12;
  }

  else
  {
    if (!v11)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, v7);
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v7, a2);
    }

    *a3 = a2 | (v6 << 32);
    *(a3 + 8) = v6 | (v7 << 32);
  }
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitSegment(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, unsigned int a2, uint64_t a3)
{
  v6 = a2 + 1;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, a2, a2 + 1);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(a1, v6, a2);
  *(a3 + 16) = a2;
  *(a3 + 20) = v6;
  v7 = a2 | (v6 << 32);
  *a3 = v7;
  *(a3 + 8) = v7;
}

std::__wrap_iter<unsigned int *>::iterator_type geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetLowestCommonTangent(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, unsigned int a3, unsigned int *a4, std::vector<unsigned int>::value_type a5, unsigned int *a6, std::vector<unsigned int>::value_type *a7)
{
  v9 = a5;
  if (*(a2 + 8) == a3)
  {
    v11 = *(a2 + 12);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (*a4 == a5)
  {
    v12 = a4[1];
  }

  else
  {
    v12 = *a4;
  }

LABEL_7:
  v13 = *(this + 1);
  v14 = (v13 + 24 * a3);
  v15 = *v14;
  v16 = v14[1];
  v17 = (v13 + 24 * v11);
  v18 = *v17 - v15;
  v19 = -(v17[1] - v16);
  while (1)
  {
    v20 = (v13 + 24 * v9);
    v21 = v20[1];
    if ((*v20 - v15) * v19 + v18 * (v21 - v16) > 0.0)
    {
      PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, v11, a3);
      a3 = v11;
      v11 = PreviousEdge;
      goto LABEL_7;
    }

    if ((*(v13 + 24 * v12) - *v20) * (v16 - v21) - (*(v13 + 24 * v12 + 8) - v21) * (v15 - *v20) >= 0.0)
    {
      break;
    }

    v22 = *(*(this + 21) + 24 * v12);
    v23 = (*(*(this + 21) + 24 * v12 + 8) - v22) >> 2;
    if (*(*(this + 21) + 24 * v12 + 8) == v22)
    {
      v26 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      while (*(v22 + 4 * v24) != v9)
      {
        v24 = ++v25;
        if (v23 <= v25)
        {
          v25 = -1;
          break;
        }
      }

      v26 = v25 + 1;
    }

    v9 = v12;
    v12 = *(v22 + 4 * (v26 % v23));
  }

  *a6 = a3;
  *a7 = v9;
  v28 = *a6;

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, v28, v9, v11, v12);
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindLeftCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  v9 = *(*(this + 21) + 24 * a4);
  v10 = (*(*(this + 21) + 24 * a4 + 8) - v9) >> 2;
  if (*(*(this + 21) + 24 * a4 + 8) == v9)
  {
    v16 = 0;
    v15 = *v9;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    while (v9[v11] != a5)
    {
      v11 = ++v12;
      if (v10 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = v9[(v12 + 1) % v10];
    while (v9[v13] != v15)
    {
      v13 = ++v14;
      if (v10 <= v14)
      {
        v14 = -1;
        break;
      }
    }

    v16 = v14 + 1;
  }

  v17 = *(a2 + 16);
  if (v15 >= v17)
  {
    v18 = a4;
    v19 = &v9[v16 % v10];
    do
    {
      v21 = *(a2 + 20);
      if (v15 > v21)
      {
        break;
      }

      v22 = *v19;
      v23 = *(this + 1);
      v24 = (v23 + 24 * v18);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 24 * a5);
      v28 = (v23 + 24 * v15);
      v29 = *v27 - v25;
      v30 = v27[1] - v26;
      v31 = *v28 - v25;
      v32 = v28[1] - v26;
      v33 = v29 * v32 - v30 * v31;
      v34 = v33 <= 0.0;
      if (v33 < 0.0)
      {
        v34 = 2;
      }

      if (v34 == 1)
      {
        if (v30 * v32 + v29 * v31 <= 0.0)
        {
          return v6;
        }
      }

      else if (v34 == 2)
      {
        return v6;
      }

      if (v22 < v17 || v22 > v21 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v6, a5, v15, v22) != 2)
      {
        return v15;
      }

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v6, v15);
      v35 = *(*(this + 21) + 24 * v18);
      v36 = (*(*(this + 21) + 24 * v18 + 8) - v35) >> 2;
      if (*(*(this + 21) + 24 * v18 + 8) == v35)
      {
        v39 = 0;
      }

      else
      {
        v37 = 0;
        v38 = 0;
        while (*(v35 + 4 * v37) != v22)
        {
          v37 = ++v38;
          if (v36 <= v38)
          {
            v38 = -1;
            break;
          }
        }

        v39 = v38 + 1;
      }

      v19 = (v35 + 4 * (v39 % v36));
      v17 = *(a2 + 16);
      v15 = v22;
    }

    while (v22 >= v17);
  }

  return v6;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindRightCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a5;
  PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, a5, a4);
  v10 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, v5, PreviousEdge);
  v11 = *(a3 + 16);
  if (PreviousEdge >= v11)
  {
    v12 = v10;
    do
    {
      v13 = *(a3 + 20);
      if (PreviousEdge > v13)
      {
        break;
      }

      v14 = *(a1 + 1);
      v15 = (v14 + 24 * v5);
      v16 = *v15;
      v17 = v15[1];
      v18 = (v14 + 24 * a4);
      v19 = (v14 + 24 * PreviousEdge);
      v20 = *v18 - v16;
      v21 = v18[1] - v17;
      v22 = *v19 - v16;
      v23 = v19[1] - v17;
      v24 = v20 * v23 - v21 * v22;
      v25 = v24 <= 0.0;
      if (v24 < 0.0)
      {
        v25 = 2;
      }

      if (v25 == 1)
      {
        if (v21 * v23 + v20 * v22 <= 0.0)
        {
          return v5;
        }
      }

      else if (!v25)
      {
        return v5;
      }

      if (v12 < v11 || v12 > v13 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(a1, a4, v5, PreviousEdge, v12) != 2)
      {
        return PreviousEdge;
      }

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(a1, v5, PreviousEdge);
      v26 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(a1, v5, v12);
      PreviousEdge = v12;
      v11 = *(a3 + 16);
      v27 = v12 >= v11;
      v12 = v26;
    }

    while (v27);
  }

  return v5;
}

std::__wrap_iter<unsigned int *>::iterator_type geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::value_type a3, int a4, int a5)
{
  __x = a3;
  v27 = a2;
  v7 = (*(this + 21) + 24 * a2);
  begin = v7->__begin_;
  end = v7->__end_;
  v10 = end - v7->__begin_;
  if (end == v7->__begin_)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 2;
    while (begin[v11] != a4)
    {
      v11 = ++v12;
      if (v13 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v14 = v12;
  }

  v15.__i_ = &begin[v14 + 1];
  std::vector<unsigned int>::insert(v7, v15, &__x);
  v16 = (*(this + 21) + 24 * __x);
  v17 = v16->__begin_;
  v18 = v16->__end_;
  v19 = v18 - v16->__begin_;
  if (v18 == v16->__begin_)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = v19 >> 2;
    while (v17[v20] != a5)
    {
      v20 = ++v21;
      if (v22 <= v21)
      {
        v21 = -1;
        break;
      }
    }

    v23 = v21;
  }

  v24.__i_ = &v17[v23];
  return std::vector<unsigned int>::insert(v16, v24, &v27).__i_;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(this + 1);
  v6 = (v5 + 24 * a2);
  v7 = *v6;
  v8 = v6[1];
  v9 = (v5 + 24 * a3);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v5 + 24 * a4);
  v13 = (v5 + 24 * a5);
  v14 = v13[1];
  v15 = v7 - *v13;
  v16 = v10 - *v13;
  v17 = v11 - v14;
  v18 = *v12 - *v13;
  v19 = v12[1] - v14;
  v20 = v15 * (v17 * (v18 * v18 + 0.0 + v19 * v19) - v19 * (v16 * v16 + 0.0 + v17 * v17)) - (v8 - v14) * (v16 * (v18 * v18 + 0.0 + v19 * v19) - (v16 * v16 + 0.0 + v17 * v17) * v18) + (v15 * v15 + 0.0 + (v8 - v14) * (v8 - v14)) * (v16 * v19 - v17 * v18);
  if (v20 <= 0.0)
  {
    return v20 >= 0.0;
  }

  else
  {
    return 2;
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 21) + 24 * a2);
  v4 = (*(*(this + 21) + 24 * a2 + 8) - v3) >> 2;
  if (*(*(this + 21) + 24 * a2 + 8) == v3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 0;
    while (*(v3 + 4 * v5) != a3)
    {
      LODWORD(v6) = v6 + 1;
      v5 = v6;
      if (v4 <= v6)
      {
        LODWORD(v6) = -1;
        break;
      }
    }

    v6 = v6;
  }

  return *(v3 + 4 * ((v4 + v6 - 1) % v4));
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(void *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = this[21];
  v7 = (v6 + 24 * a2);
  v9 = *v7;
  v8 = v7[1];
  if (v8 == *v7)
  {
    v12 = 0x3FFFFFFFCLL;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (*&v9[4 * v10] != a3)
    {
      v10 = ++v11;
      if (&v8[-*v7] >> 2 <= v11)
      {
        v11 = -1;
        break;
      }
    }

    v12 = 4 * v11;
  }

  v13 = &v9[v12];
  v14 = &v9[v12 + 4];
  v15 = v8 - v14;
  if (v8 != v14)
  {
    this = memmove(&v9[v12], v14, v8 - v14);
    v6 = v5[21];
  }

  v7[1] = &v13[v15];
  v16 = (v6 + 24 * a3);
  v18 = *v16;
  v17 = v16[1];
  if (v17 == *v16)
  {
    v21 = 0x3FFFFFFFCLL;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    while (*&v18[4 * v19] != a2)
    {
      v19 = ++v20;
      if (&v17[-*v16] >> 2 <= v20)
      {
        v20 = -1;
        break;
      }
    }

    v21 = 4 * v20;
  }

  v22 = &v18[v21];
  v23 = &v18[v21 + 4];
  v24 = v17 - v23;
  if (v17 != v23)
  {
    this = memmove(&v18[v21], v23, v17 - v23);
  }

  v16[1] = &v22[v24];
  return this;
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::const_reference __x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(&v26, __x);
    v16.__i_ = v27;
    memcpy(v28, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v27;
    *&v28 = v28 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
      v9 = this->__end_;
    }

    v23 = v9 <= __x || i > __x;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *i = __x[v24];
  }

  return i;
}

void *std::__split_buffer<unsigned int>::emplace_back<unsigned int const&>(void *result, _DWORD *a2)
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
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, std::vector<unsigned int>::value_type a3)
{
  __x = a3;
  v5 = *(this + 21) + 24 * a2;
  v6.__i_ = *v5;
  v7 = *(v5 + 8);
  v8 = v7 - *v5;
  if (v7 == *v5)
  {
    v25 = *(v5 + 16);
    if (v7 >= v25)
    {
      v26 = v25 - v6.__i_;
      v27 = v26 >> 1;
      if ((v26 >> 1) <= 1)
      {
        v27 = 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v5, v28);
    }
  }

  else
  {
    v9 = v8 >> 2;
    v10 = *(this + 1);
    v11 = (v10 + 24 * a2);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v10 + 24 * *v6.__i_);
    v15 = *v14;
    v16 = v14[1];
    v17 = (v10 + 24 * a3);
    v18 = v15 - v12;
    v19 = v16 - v13;
    v20 = *v17 - v12;
    v21 = v17[1] - v13;
    v22 = v18 * v21 - v19 * v20;
    if (v22 >= 0.0)
    {
      v23 = v22 <= 0.0;
    }

    else
    {
      v23 = 2;
    }

    if (v8 == 4)
    {
      if (v23)
      {
        v24 = v5;
LABEL_33:
        std::vector<unsigned int>::insert(v24, v6, &__x);
        return;
      }

      v38 = *(v5 + 16);
      if (v7 >= v38)
      {
        v40 = v38 - v6.__i_;
        if (v40 >> 1 <= v9 + 1)
        {
          v41 = v9 + 1;
        }

        else
        {
          v41 = v40 >> 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v42 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v5, v42);
      }
    }

    else
    {
      if (v9 >= 2)
      {
        v29 = v6.__i_ + 1;
        v30 = 1;
        while (1)
        {
          v31 = (v10 + 24 * v6.__i_[v30]);
          v32 = (*v31 - v12) * v21 - (v31[1] - v13) * v20;
          if (!v23 && v32 < 0.0)
          {
            break;
          }

          v23 = v32 <= 0.0;
          if (v32 < 0.0)
          {
            v23 = 2;
          }

          ++v30;
          ++v29;
          if (v9 == v30)
          {
            goto LABEL_22;
          }
        }

        v24 = v5;
        v6.__i_ = v29;
        goto LABEL_33;
      }

LABEL_22:
      v33 = *(v5 + 16);
      if (v7 >= v33)
      {
        v34 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v35 = v33 - v6.__i_;
        if (v35 >> 1 > v34)
        {
          v34 = v35 >> 1;
        }

        v36 = v35 >= 0x7FFFFFFFFFFFFFFCLL;
        v37 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v36)
        {
          v37 = v34;
        }

        if (v37)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v5, v37);
        }

        *(4 * v9) = a3;
        v39 = 4 * v9 + 4;
        memcpy(0, v6.__i_, v8);
        v43 = *v5;
        *v5 = 0;
        *(v5 + 8) = v39;
        *(v5 + 16) = 0;
        if (v43)
        {
          operator delete(v43);
        }

        goto LABEL_43;
      }
    }
  }

  *v7 = a3;
  v39 = (v7 + 1);
LABEL_43:
  *(v5 + 8) = v39;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(void *a1, uint64_t *a2, void *a3)
{
  memset(v34, 0, sizeof(v34));
  v7 = *a2;
  v6 = a2[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
  std::vector<std::vector<unsigned long>>::resize(v34, v8);
  if (v6 == v7)
  {
    std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(a3, v8);
    v9 = 1;
  }

  else
  {
    v33 = a3;
    v9 = 0;
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    while (1)
    {
      v12 = (*a2 + 24 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = (v14 - *v12) >> 3;
      v16 = (v34[0] + 24 * v10);
      std::vector<unsigned int>::resize(v16, v15);
      if (v14 != v13)
      {
        break;
      }

LABEL_12:
      v9 = ++v10 >= v8;
      if (v10 == v11)
      {
        std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(v33, v8);
        v24 = 0;
        v9 = 1;
        do
        {
          v25 = (*(v34[0] + 24 * v24 + 8) - *(v34[0] + 24 * v24)) >> 2;
          v26 = (*v33 + 24 * v24);
          std::vector<geo::math::Matrix<unsigned int,2,1>>::resize(v26, v25);
          v27 = v25 - 1;
          if (v27)
          {
            v28 = 0;
            do
            {
              v29 = v28 + 1;
              v30 = *(*(v34[0] + 24 * v24) + 4 * v28);
              *(*v26 + 8 * v28) = v30;
              geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(v30, a1 + 44);
              v28 = v29;
            }

            while (v27 != v29);
          }

          v31 = *(*(v34[0] + 24 * v24) + 4 * v27) | (**(v34[0] + 24 * v24) << 32);
          *(*v26 + 8 * v27) = v31;
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(v31, a1 + 44);
          ++v24;
        }

        while (v24 != v11);
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18 = *(*a2 + 24 * v10);
    v19 = a1[7];
    v20 = (a1[8] - v19) >> 2;
    if (v15 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v15;
    }

    while (1)
    {
      v22 = *(v18 + 8 * v17);
      if (v20 <= v22)
      {
        break;
      }

      v23 = *(v19 + 4 * v22);
      if (v23 == -1)
      {
        break;
      }

      v16->__begin_[v17++] = v23;
      if (v21 == v17)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_20:
  v35 = v34;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v35);
  return v9;
}

void std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<geo::math::Matrix<unsigned int,2,1>>::resize(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      *(a1 + 8) = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<geo::math::Matrix<unsigned int,2,1>>::__append(a1, a2 - v2);
  }
}

void std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<geo::math::Matrix<unsigned int,2,1>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 3)
  {
    a1[1] = &v5[8 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (8 * v9 + 8 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(uint64_t a1, void *a2)
{
  v4 = a1;
  if (a1 < HIDWORD(a1))
  {
    return std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(a2, &v4);
  }

  v3[0] = HIDWORD(a1);
  v3[1] = a1;
  return std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(a2, v3);
}

void *std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(void *a1, _DWORD *a2)
{
  v2 = (a2[1] ^ *a2) + 2654435769;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = (a2[1] ^ *a2) + 2654435769;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, uint64_t a3)
{
  v6 = *(*(this + 21) + 24 * a2);
  v7 = *(*(this + 21) + 24 * a2 + 8) - v6;
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = v7 >> 2;
  v10 = 1;
  while (*(v6 + 4 * v8) != a3)
  {
    v8 = v10;
    if (v9 <= v10++)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
LABEL_7:
    result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ApplyConstraint(this, a2, a3);
    if (!result)
    {
      return result;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AdjustByConstraint(this, a2, a3);
  }

  return 1;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ApplyConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, std::vector<unsigned int>::value_type a3)
{
  v6 = *(this + 2) - *(this + 1);
  if (!v6)
  {
LABEL_13:
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(this, a2, a3);
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(this, a3, a2);
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v10 = *(this + 21);
  while (1)
  {
    v11 = *(v10 + 24 * v7);
    if (*(v10 + 24 * v7 + 8) != v11)
    {
      break;
    }

LABEL_12:
    v7 = ++v8;
    if (v9 <= v8)
    {
      goto LABEL_13;
    }
  }

  v12 = 0;
  v13 = v7 << 32;
  while (1)
  {
    v14 = *(v11 + 4 * v12);
    if (!geo::math::ConstrainedDelaunayTriangulationMesherDetails::IsIntersect(this, v8, *(v11 + 4 * v12), a2, a3))
    {
      ++v12;
      goto LABEL_11;
    }

    v15 = v13 | v14;
    v16 = __ROR8__(v13 | v14, 32);
    if (v8 < v14)
    {
      v15 = v16;
    }

    v18 = v15;
    if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v18))
    {
      return 0;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v8, v14);
LABEL_11:
    v10 = *(this + 21);
    v11 = *(v10 + 24 * v7);
    if (v12 >= (*(v10 + 24 * v7 + 8) - v11) >> 2)
    {
      goto LABEL_12;
    }
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AdjustByConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  ConstrainedLeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, a2, a3);
  ConstrainedRightCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v4, v3);
  v8 = ConstrainedLeftCandidate != v4;
  v9 = ConstrainedRightCandidate != v3;
  v10 = ConstrainedRightCandidate != v3 || ConstrainedLeftCandidate != v4;
  if (v10 && ConstrainedLeftCandidate != ConstrainedRightCandidate)
  {
    v12 = ConstrainedRightCandidate;
    v13 = v4;
    v14 = v3;
    do
    {
      if (!v8 || v9 && geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v13, v14, ConstrainedLeftCandidate, v12) == 2)
      {
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, v13, v12, v14, v14);
      }

      else
      {
        geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, ConstrainedLeftCandidate, v14, v13, v13);
        v12 = v14;
        v13 = ConstrainedLeftCandidate;
      }

      ConstrainedLeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v13, v12);
      v15 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v13, v12);
      v8 = ConstrainedLeftCandidate != v13;
      v9 = v15 != v12;
      v16 = v15 != v12 || ConstrainedLeftCandidate != v13;
      v17 = !v16 || ConstrainedLeftCandidate == v15;
      v14 = v12;
      v12 = v15;
    }

    while (!v17);
  }

  v18 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v3, v4);
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v3, v4);
  v20 = result != v4;
  v21 = v18 != v3;
  if (v18 != v3 || result != v4)
  {
    v23 = result;
    if (result != v18)
    {
      do
      {
        if (!v20 || v21 && geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v4, v23, v3, v18) == 2)
        {
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(this, v4, v18, v3, v3);
        }

        else
        {
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(this, v23, v3, v4, v4);
          v18 = v3;
          v4 = v23;
        }

        v24 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v18, v4);
        result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v18, v4);
        v23 = result;
        v20 = result != v4;
        v21 = v24 != v18;
        v25 = v24 != v18 || result != v4;
        v26 = !v25 || result == v24;
        v3 = v18;
        v18 = v24;
      }

      while (!v26);
    }
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::IsIntersect(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  result = 0;
  if (a3 != a5 && a3 != a4 && a2 != a4 && a2 != a5)
  {
    v7 = *(this + 1);
    v8 = (v7 + 24 * a4);
    v9 = *v8;
    v10 = v8[1];
    v11 = (v7 + 24 * a5);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v7 + 24 * a2);
    v15 = v14[1];
    v16 = (v7 + 24 * a3);
    v17 = *v16;
    v18 = v16[1];
    v19 = *v16 - *v14;
    v20 = v19 * (v10 - v15) - (v18 - v15) * (v9 - *v14);
    v21 = v19 * (v13 - v15) - (v18 - v15) * (v12 - *v14);
    v22 = (v21 <= 0.0) ^ (v20 > 0.0);
    if (v21 < 0.0)
    {
      v22 = 0;
    }

    v23 = v12 - v9;
    v24 = v13 - v10;
    v25 = v23 * (v15 - v10) - v24 * (*v14 - v9);
    v26 = v23 * (v18 - v10) - v24 * (v17 - v9);
    if (v20 < 0.0)
    {
      v22 = v21 < 0.0;
    }

    v27 = v26 < 0.0;
    if (v25 >= 0.0)
    {
      v27 = (v26 >= 0.0) & ((v25 > 0.0) ^ (v26 <= 0.0));
    }

    return (v27 | v22) ^ 1u;
  }

  return result;
}

void *std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = (a2[1] ^ *a2) + 2654435769;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = (a2[1] ^ *a2) + 2654435769;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v6 = a2;
  v7 = *(*(this + 21) + 24 * a2);
  v8 = (*(*(this + 21) + 24 * a2 + 8) - v7) >> 2;
  v9 = 0;
  if (*(*(this + 21) + 24 * a2 + 8) == v7)
  {
    v13 = *v7;
  }

  else
  {
    v10 = 0;
    while (v7[v9] != a3)
    {
      v9 = ++v10;
      if (v8 <= v10)
      {
        v10 = -1;
        break;
      }
    }

    v11 = 0;
    v12 = 0;
    v13 = v7[(v10 + 1) % v8];
    while (v7[v11] != v13)
    {
      v11 = ++v12;
      if (v8 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v9 = v12 + 1;
  }

  v14 = &v7[v9 % v8];
  v16 = a2 << 32;
  while (1)
  {
    v17 = *(this + 1);
    v18 = (v17 + 24 * v6);
    if ((*(v17 + 24 * a3) - *v18) * (*(v17 + 24 * v13 + 8) - v18[1]) - (*(v17 + 24 * a3 + 8) - v18[1]) * (*(v17 + 24 * v13) - *v18) <= 0.0)
    {
      return v4;
    }

    v19 = *v14;
    v20 = v16 | v13;
    v21 = __ROR8__(v20, 32);
    if (v13 > v4)
    {
      v20 = v21;
    }

    v30 = v20;
    if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v30))
    {
      return v13;
    }

    v22 = *(this + 1);
    v23 = (v22 + 24 * v6);
    if ((*(v22 + 24 * a3) - *v23) * (*(v22 + 24 * v19 + 8) - v23[1]) - (*(v22 + 24 * a3 + 8) - v23[1]) * (*(v22 + 24 * v19) - *v23) <= 0.0 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v4, a3, v13, v19) != 2)
    {
      return v13;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v4, v13);
    v24 = *(*(this + 21) + 24 * v6);
    v25 = (*(*(this + 21) + 24 * v6 + 8) - v24) >> 2;
    if (*(*(this + 21) + 24 * v6 + 8) == v24)
    {
      v28 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      while (*(v24 + 4 * v26) != v19)
      {
        v26 = ++v27;
        if (v25 <= v27)
        {
          v27 = -1;
          break;
        }
      }

      v28 = v27 + 1;
    }

    v14 = (v24 + 4 * (v28 % v25));
    v13 = v19;
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, a3, a2);
  for (i = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, v3, PreviousEdge); ; i = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, v3, i))
  {
    v8 = *(this + 1);
    v9 = (v8 + 24 * v3);
    if ((*(v8 + 24 * a2) - *v9) * (*(v8 + 24 * PreviousEdge + 8) - v9[1]) - (*(v8 + 24 * a2 + 8) - v9[1]) * (*(v8 + 24 * PreviousEdge) - *v9) >= 0.0)
    {
      break;
    }

    v10 = (v3 << 32) | PreviousEdge;
    v11 = __ROR8__(v10, 32);
    if (PreviousEdge > v3)
    {
      v10 = v11;
    }

    v15 = v10;
    if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v15))
    {
      return PreviousEdge;
    }

    v12 = *(this + 1);
    v13 = (v12 + 24 * v3);
    if ((*(v12 + 24 * a2) - *v13) * (*(v12 + 24 * i + 8) - v13[1]) - (*(v12 + 24 * a2 + 8) - v13[1]) * (*(v12 + 24 * i) - *v13) >= 0.0 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, a2, v3, PreviousEdge, i) != 2)
    {
      return PreviousEdge;
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v3, PreviousEdge);
    PreviousEdge = i;
  }

  return v3;
}

std::__wrap_iter<unsigned int *>::iterator_type geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::value_type a3, int a4, int a5)
{
  __x = a3;
  v27 = a2;
  v7 = (*(this + 21) + 24 * a2);
  begin = v7->__begin_;
  end = v7->__end_;
  v10 = end - v7->__begin_;
  if (end == v7->__begin_)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 2;
    while (begin[v11] != a4)
    {
      v11 = ++v12;
      if (v13 <= v12)
      {
        v12 = -1;
        break;
      }
    }

    v14 = v12;
  }

  v15.__i_ = &begin[v14];
  std::vector<unsigned int>::insert(v7, v15, &__x);
  v16 = (*(this + 21) + 24 * __x);
  v17 = v16->__begin_;
  v18 = v16->__end_;
  v19 = v18 - v16->__begin_;
  if (v18 == v16->__begin_)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = v19 >> 2;
    while (v17[v20] != a5)
    {
      v20 = ++v21;
      if (v22 <= v21)
      {
        v21 = -1;
        break;
      }
    }

    v23 = v21;
  }

  v24.__i_ = &v17[v23 + 1];
  return std::vector<unsigned int>::insert(v16, v24, &v27).__i_;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, void *a2)
{
  v3 = *a2;
  v2 = a2[1];
  __src = 0;
  v72 = 0;
  v73 = 0;
  v4 = v2 - v3;
  if (!v4)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v5 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v4 >> 3;
  v12 = 0xAAAAAAAAAAAAAAABLL * v11;
  if (0xAAAAAAAAAAAAAAABLL * v11 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * v11;
  }

  while (1)
  {
    v14 = *(*v5 + 24 * v10);
    v15 = *(*v5 + 24 * v10 + 8);
    v16 = v15 - v14;
    if (v15 != v14)
    {
      break;
    }

LABEL_51:
    v9 = ++v10 >= v12;
    if (v10 == v13)
    {
      goto LABEL_59;
    }
  }

  v17 = 0;
  if ((v16 >> 3) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 >> 3;
  }

  while (2)
  {
    v19 = *(*v5 + 24 * v10);
    v20 = (v19 + 8 * v17);
    v21 = *v20;
    v22 = (v19 + v16);
    if (v17)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v24 = (*(this + 21) + 24 * v21);
    v25 = *v24;
    v26 = v24[1] - *v24;
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(v23 - 2);
      v30 = v26 >> 2;
      while (*(v25 + 4 * v27) != HIDWORD(v21))
      {
        v27 = ++v28;
        if (v30 <= v28)
        {
          goto LABEL_53;
        }
      }

      if (v28 != -1)
      {
        v31 = 0;
        v32 = 1;
        while (*(v25 + 4 * v31) != v29)
        {
          v31 = v32;
          if (v30 <= v32++)
          {
            goto LABEL_56;
          }
        }

        if (!v32)
        {
LABEL_56:
          if (*this != 1)
          {
            goto LABEL_59;
          }

          v57 = MEMORY[0x1E69E5300];
          v58 = "ClearSpaceByConstraints failed: cannot locate previous edge!";
          v59 = 60;
          goto LABEL_58;
        }

        v66 = v18;
        v67 = v17;
        v69 = v12;
        v70 = v16;
        v68 = v13;
        v34 = v26 >> 2;
        if (v28 >= v32 - 1)
        {
          LODWORD(v34) = 0;
        }

        v35 = v34 + v28;
        v72 = v8;
        if (v32 < v35)
        {
          v63 = v10;
          v64 = v5;
          v65 = v9;
          v36 = v21 << 32;
          v37 = v32;
          do
          {
            v38 = v37 % v30;
            v39 = *(*(*(this + 21) + 24 * v21) + 4 * (v37 % v30));
            v40 = __ROR8__(v36 | v39, 32);
            if (v39 <= v21)
            {
              v41 = (v36 | v39);
            }

            else
            {
              v41 = v40;
            }

            v74.__locale_ = v41;
            if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 44, &v74))
            {
              v42 = *(*(this + 21) + 24 * v21);
              v43 = v72;
              if (v72 >= v73)
              {
                v45 = __src;
                v46 = v72 - __src;
                v47 = (v72 - __src) >> 2;
                v48 = v47 + 1;
                if ((v47 + 1) >> 62)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v49 = v73 - __src;
                if ((v73 - __src) >> 1 > v48)
                {
                  v48 = v49 >> 1;
                }

                v50 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
                v51 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v50)
                {
                  v51 = v48;
                }

                if (v51)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&__src, v51);
                }

                v52 = (4 * v47);
                v53 = *(v42 + 4 * v38);
                v54 = &v52[-((v72 - __src) >> 2)];
                *v52 = v53;
                v44 = (v52 + 1);
                memcpy(v54, v45, v46);
                v55 = __src;
                __src = v54;
                v72 = v44;
                v73 = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v72 = *(v42 + 4 * v38);
                v44 = v43 + 4;
              }

              v36 = v21 << 32;
              v72 = v44;
            }

            ++v37;
          }

          while (v35 != v37);
          v7 = __src;
          v8 = v72;
          v9 = v65;
          v10 = v63;
          v5 = v64;
        }

        if (v8 == v7)
        {
          v16 = v70;
        }

        else
        {
          v56 = 0;
          v16 = v70;
          do
          {
            geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v21, *&v7[4 * v56++]);
            v7 = __src;
          }

          while (v56 < (v72 - __src) >> 2);
        }

        v18 = v66;
        v17 = v67 + 1;
        v8 = v7;
        v13 = v68;
        v12 = v69;
        if (v67 + 1 != v66)
        {
          continue;
        }

        goto LABEL_51;
      }
    }

    break;
  }

LABEL_53:
  if (*this == 1)
  {
    v57 = MEMORY[0x1E69E5300];
    v58 = "ClearSpaceByConstraints failed: cannot locate current edge!";
    v59 = 59;
LABEL_58:
    v60 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, v58, v59);
    std::ios_base::getloc((v60 + *(*v60 - 24)));
    v61 = std::locale::use_facet(&v74, MEMORY[0x1E69E5318]);
    (v61->__vftable[2].~facet_0)(v61, 10);
    std::locale::~locale(&v74);
    std::ostream::put();
    std::ostream::flush();
    v7 = __src;
  }

LABEL_59:
  if (v7)
  {
    v72 = v7;
    operator delete(v7);
  }

  return v9;
}

unint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetEdgeCount(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v2 = *(this + 21);
  v1 = *(this + 22);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = (v2 + 8);
  do
  {
    v4 += (*v6 - *(v6 - 1)) >> 2;
    v6 += 3;
    --v5;
  }

  while (v5);
  return v4 >> 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::RebaseMesh(void *a1, void *a2, char **a3)
{
  a2[1] = *a2;
  v4 = a1[1];
  v3 = a1[2];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
  v6 = (a1[5] - a1[4]) >> 2;
  if (v5 == v6)
  {
    v11 = a1[13];
    v10 = a1[14];
    memset_pattern16(&__b, &unk_1E30A0CB0, 0x18uLL);
    std::vector<geo::math::Matrix<double,3,1>>::resize(a2, v5 + ((v10 - v11) >> 5), &__b);
    if (v3 != v4)
    {
      v12 = 0;
      v13 = 0;
      if (v5 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
      }

      do
      {
        v15 = (a1[1] + v12);
        v16 = *a2 + 24 * *(a1[4] + 4 * v13);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 2);
        *v16 = v17;
        ++v13;
        v12 += 24;
      }

      while (v14 != v13);
    }

    v18 = a1[13];
    if (a1[14] != v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v18 + v19;
        v22 = *a2 + 24 * *v21;
        v23 = *(v21 + 8);
        *(v22 + 16) = *(v21 + 24);
        *v22 = v23;
        ++v20;
        v18 = a1[13];
        v19 += 32;
      }

      while (v20 < (a1[14] - v18) >> 5);
    }

    __b = 0uLL;
    v47 = 0;
    v25 = a1[32];
    v24 = a1[33];
    if (v24 != v25)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        if (*(v25 + v26 + 8) - *(v25 + v26) == 24)
        {
          std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](&__b, (v25 + v26));
          v25 = a1[32];
          v24 = a1[33];
        }

        ++v27;
        v26 += 24;
      }

      while (v27 < 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3));
    }

    a3[1] = *a3;
    v29 = a1[24];
    v28 = a1[25];
    if (v28 != v29)
    {
      v30 = 0;
      do
      {
        v31 = (v29 + 12 * v30);
        v32 = a1[4];
        v33 = *(v32 + 4 * *v31);
        v34 = *(v32 + 4 * v31[1]);
        v35 = *(v32 + 4 * v31[2]);
        p_b = __PAIR64__(v34, v33);
        v45 = v35;
        if (*(&__b + 1) == __b)
        {
LABEL_36:
          std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](a3, &p_b);
          v29 = a1[24];
          v28 = a1[25];
        }

        else
        {
          v36 = 0;
          v37 = 0xAAAAAAAAAAAAAAABLL * ((*(&__b + 1) - __b) >> 3);
          if (v37 <= 1)
          {
            v37 = 1;
          }

          while (1)
          {
            v38 = __b + 24 * v36;
            v39 = *v38;
            v40 = *(v38 + 8);
            if (v39 != v40)
            {
              v41 = v39;
              while (*v41 != v33)
              {
                if (++v41 == v40)
                {
                  goto LABEL_35;
                }
              }

              if (v41 != v40)
              {
                v42 = v39;
                while (*v42 != v34)
                {
                  if (++v42 == v40)
                  {
                    goto LABEL_35;
                  }
                }

                if (v42 != v40)
                {
                  while (*v39 != v35)
                  {
                    if (++v39 == v40)
                    {
                      goto LABEL_35;
                    }
                  }

                  if (v39 != v40)
                  {
                    break;
                  }
                }
              }
            }

LABEL_35:
            if (++v36 == v37)
            {
              goto LABEL_36;
            }
          }
        }

        ++v30;
      }

      while (v30 < 0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 2));
    }

    if (a1 + 24 != a3)
    {
      std::vector<geo::math::Matrix<unsigned int,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<unsigned int,3,1>*,geo::math::Matrix<unsigned int,3,1>*>(a1 + 24, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
    }

    p_b = &__b;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&p_b);
  }

  return v5 == v6;
}

uint64_t *std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::find<geo::math::Matrix<unsigned int,3,1>>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == *a2 && *(result + 6) == a2[2])
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,3,1>,geo::math::Matrix<unsigned int,3,1> const&>(void *a1, _DWORD *a2)
{
  v2 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
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

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || *(v7 + 6) != a2[2])
  {
    goto LABEL_21;
  }

  return v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<geo::math::Matrix<double,3,1>>::resize(void *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__append(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void std::vector<geo::math::Matrix<double,3,1>>::__append(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
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

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, v10);
    }

    v14 = 24 * v7;
    v15 = 3 * a2;
    v16 = 24 * v7 + 24 * a2;
    v17 = 8 * v15;
    v18 = 24 * v7;
    do
    {
      v19 = *a3;
      *(v18 + 16) = *(a3 + 2);
      *v18 = v19;
      v18 += 24;
      v17 -= 24;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v14 - v20;
    memcpy((v14 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void *std::vector<geo::math::Matrix<unsigned int,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<unsigned int,3,1>*,geo::math::Matrix<unsigned int,3,1>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<geo::math::Matrix<unsigned int,3,1>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<geo::math::Matrix<unsigned int,3,1>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::vector<geo::math::Matrix<unsigned int,3,1>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 352);
  v8 = (this + 328);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 304);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 280);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 256);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 216);
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v8 = (this + 168);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 128);
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

void re::simplifyAcousticMesh(uint64_t a1@<X0>, uint64_t a2@<X1>, re::GeomMesh *a3@<X8>)
{
  v4 = a1;
  v103 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 40);
  if (v6)
  {
    if (re::internal::GeomAttributeManager::attributeByName((a1 + 64), v6))
    {
      v7 = *(a2 + 40);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *&v8 = *(a2 + 4);
  v9 = 0.3 * *&v8;
  v87 = 0.3 * *&v8;
  v10 = *(a2 + 52);
  v11 = *(a2 + 28);
  v83 = *(a2 + 24);
  v84 = v8;
  *(&v8 + 1) = v10;
  v88 = v8;
  v89 = *(a2 + 60);
  v90 = v7;
  v85 = v11;
  v86 = v7;
  v81[0] = 1092616192;
  v81[1] = *(a2 + 16);
  *&v81[2] = (v9 * v9) * 0.5;
  v81[3] = 0;
  v82 = v7;
  re::GeomMesh::GeomMesh(a3, 0);
  bzero(&v66, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v68, 1uLL);
  ++v70;
  re::internal::GeomAttributeManager::GeomAttributeManager(v72);
  re::internal::GeomAttributeManager::addAttribute(v72, "vertexPosition", 1, 7);
  if (v7)
  {
    v65 = re::internal::GeomAttributeManager::attributeByName((v4 + 64), v7);
  }

  else
  {
    v65 = 0;
  }

  v67 = *(v4 + 16);
  v73 = v67;
  if (v74)
  {
    v13 = v75;
    v14 = 8 * v74;
    do
    {
      v15 = *v13++;
      (*(*v15 + 80))(v15, v73);
      v14 -= 8;
    }

    while (v14);
  }

  v16 = *(v4 + 40);
  v17 = v16;
  if (v69 > v16)
  {
    v18 = v80;
    if (v80)
    {
      v19 = 0;
      do
      {
        v20 = re::internal::GeomAttributeContainer::attributeByIndex(v79, v19);
        re::internal::accessFaceVaryingAttributeSubmesh(v20, v21);
        ++v19;
      }

      while (v18 != v19);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(v68, v16);
  v76 = v16;
  if (v77)
  {
    v22 = v78;
    v17 = 8 * v77;
    do
    {
      v23 = *v22++;
      (*(*v23 + 80))(v23, v76);
      v17 -= 8;
    }

    while (v17);
  }

  v24 = *(v4 + 40);
  if (v24)
  {
    v25 = 0;
    v26 = &v66;
    while (v24 > v25)
    {
      v27 = *(v4 + 56) + 16 * v25;
      v28 = *v27;
      v30 = *(v27 + 8);
      v29 = *(v27 + 12);
      v17 = v69;
      if (v29 == -1)
      {
        if (v69 <= v25)
        {
          goto LABEL_85;
        }

        v39 = (v71 + 16 * v25);
        v40 = *v39;
        v41 = v39[3];
        if (v40 != -1 && v41 == -1)
        {
          v43 = v80;
          if (v80)
          {
            v44 = 0;
            do
            {
              v45 = re::internal::GeomAttributeContainer::attributeByIndex(v79, v44);
              re::internal::accessFaceVaryingAttributeSubmesh(v45, v46);
              ++v44;
            }

            while (v43 != v44);
            v17 = v69;
          }
        }

        if (v17 <= v25)
        {
          goto LABEL_86;
        }

        v29 = -1;
      }

      else
      {
        if (v69 <= v25)
        {
          goto LABEL_81;
        }

        v31 = (v71 + 16 * v25);
        v32 = *v31;
        v33 = v31[3];
        if (v32 != -1 && v33 != -1)
        {
          v35 = v80;
          if (v80)
          {
            v36 = 0;
            do
            {
              v37 = re::internal::GeomAttributeContainer::attributeByIndex(v79, v36);
              re::internal::accessFaceVaryingAttributeSubmesh(v37, v38);
              ++v36;
            }

            while (v35 != v36);
            v17 = v69;
          }
        }

        if (v17 <= v25)
        {
          goto LABEL_82;
        }
      }

      v47 = v71 + 16 * v25;
      *v47 = v28;
      *(v47 + 8) = v30;
      *(v47 + 12) = v29;
      ++v25;
      v24 = *(v4 + 40);
      if (v25 >= v24)
      {
        goto LABEL_47;
      }
    }

    v91 = 0;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v92 = 136315906;
    *&v92[4] = "operator[]";
    *v93 = 1024;
    *&v93[2] = 797;
    v94 = 2048;
    v95 = v25;
    v96 = 2048;
    v97 = v24;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_79;
  }

LABEL_47:
  v48 = re::GeomMesh::operator=(a3, &v67);
  re::GeomMesh::setName(v48, v66);
  re::GeomMesh::freeName(&v66);
  v17 = re::GeomMesh::accessVertexPositions(v4);
  LODWORD(v25) = v49;
  v50 = re::GeomMesh::modifyVertexPositions(a3);
  if (*(v4 + 16))
  {
    v52 = 0;
    v25 = v25;
    v26 = v51;
    while (v25 != v52)
    {
      if (v51 == v52)
      {
        goto LABEL_80;
      }

      v53 = *v17;
      v17 += 16;
      *v50++ = v53;
      if (++v52 >= *(v4 + 16))
      {
        goto LABEL_52;
      }
    }

LABEL_79:
    v91 = 0;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v92 = 136315906;
    *&v92[4] = "operator[]";
    *v93 = 1024;
    *&v93[2] = 613;
    v94 = 2048;
    v95 = v25;
    v96 = 2048;
    v97 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v91 = 0;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v92 = 136315906;
    *&v92[4] = "operator[]";
    *v93 = 1024;
    *&v93[2] = 621;
    v94 = 2048;
    v95 = v26;
    v96 = 2048;
    v97 = v26;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_81:
    v91 = 0;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v92 = 136315906;
    *&v92[4] = "operator[]";
    *v93 = 1024;
    *&v93[2] = 797;
    v94 = 2048;
    v95 = v25;
    v96 = 2048;
    v97 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_82:
    v91 = 0;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v92 = 136315906;
    *&v92[4] = "operator[]";
    *v93 = 1024;
    *&v93[2] = 789;
    v94 = 2048;
    v95 = v25;
    v96 = 2048;
    v97 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_83;
  }

LABEL_52:
  if (v65)
  {
    v25 = re::GeomMesh::addAttribute(a3, v7, 2, 2);
    v54 = re::GeomAttribute::accessValues<int>(v65);
    v56 = v55;
    v57 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
    v59 = *(v4 + 40);
    if (*(v4 + 40))
    {
      v4 = v56;
      v17 = v58;
      v60 = v4;
      v61 = v58;
      while (v60)
      {
        if (!v61)
        {
          goto LABEL_84;
        }

        v62 = *v54++;
        *v57++ = v62;
        --v61;
        --v60;
        if (!--v59)
        {
          goto LABEL_58;
        }
      }

LABEL_83:
      v91 = 0;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v92 = 136315906;
      *&v92[4] = "operator[]";
      *v93 = 1024;
      *&v93[2] = 613;
      v94 = 2048;
      v95 = v4;
      v96 = 2048;
      v97 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_84:
      v91 = 0;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v92 = 136315906;
      *&v92[4] = "operator[]";
      *v93 = 1024;
      *&v93[2] = 621;
      v94 = 2048;
      v95 = v17;
      v96 = 2048;
      v97 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_85:
      v91 = 0;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v92 = 136315906;
      *&v92[4] = "operator[]";
      *v93 = 1024;
      *&v93[2] = 797;
      v94 = 2048;
      v95 = v25;
      v96 = 2048;
      v97 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_86:
      v91 = 0;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v92 = 136315906;
      *&v92[4] = "operator[]";
      *v93 = 1024;
      *&v93[2] = 789;
      v94 = 2048;
      v95 = v25;
      v96 = 2048;
      v97 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_58:
  re::GeomMesh::freeName(&v66);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v72);
  if (v68[0] && v71)
  {
    (*(*v68[0] + 40))();
  }

  re::GeomMesh::GeomMesh(&v66, 0);
  if (*(a2 + 20) == 1)
  {
    re::internal::substituteProxies(a3);
    re::GeomMesh::operator=(a3, &v98);
    re::GeomMesh::~GeomMesh(&v98);
  }

  if (*a2 == 1)
  {
    re::internal::removeSmallAndThinFeatures(&v66);
    re::GeomMesh::operator=(a3, &v98);
    re::GeomMesh::~GeomMesh(&v98);
  }

  if (*(a2 + 12) == 1)
  {
    v92[8] = 0;
    *v92 = 0;
    *v93 = 1065353216;
    *&v93[4] = 0;
    v95 = 0;
    LOBYTE(v96) = 1;
    *(&v97 + 2) = *(a2 + 16);
    BYTE6(v97) = 1;
    re::GeomMesh::operator=(a3, &v98);
    re::GeomMesh::~GeomMesh(&v98);
  }

  if (*(a2 + 32) == 1)
  {
    re::GeomMesh::operator=(a3, &v98);
    re::GeomMesh::~GeomMesh(&v98);
  }

  if (*(a2 + 33) == 1)
  {
    re::internal::simplifyPlanarRegions(a3, v81, &v98);
    re::GeomMesh::operator=(a3, &v98);
    re::GeomMesh::~GeomMesh(&v98);
  }

  if (v70)
  {
    bzero(&v98, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v99, 1uLL);
    ++DWORD2(v100);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v101 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v101 + 8), "vertexPosition", 1, 7);
    re::GeomMeshBuilder::appendMesh(&v98, &v66);
    if (*(a3 + 10))
    {
      re::GeomMeshBuilder::appendMesh(&v98, a3);
    }

    v64 = re::GeomMesh::operator=(a3, &v98 + 2);
    re::GeomMesh::setName(v64, v98);
    re::GeomMesh::freeName(&v98);
    re::GeomMesh::freeName(&v98);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v101 + 8));
    if (v99 && v101)
    {
      (*(*v99 + 40))();
    }
  }

  re::GeomMesh::~GeomMesh(&v66);
}

void re::anonymous namespace::decimateSlivers(unsigned int *a1, _DWORD *a2, char *a3, __int128 *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2[2] == a2[10])
  {
    re::GeomMesh::GeomMesh(a1, 0);
    re::internal::TriangleDecimator::TriangleDecimator(v27);
    re::internal::TriangleDecimator::setMesh(v27, a2);
    v9 = a4[1];
    v28 = *a4;
    v29[0] = v9;
    *(v29 + 13) = *(a4 + 29);
    re::internal::TriangleDecimator::decimateTo(v27, 0);
    if (a3 && (v10 = re::internal::GeomAttributeManager::attributeByName((a2 + 16), a3)) != 0)
    {
      v11 = v10;
      v26 = 0;
      v23[1] = 0;
      v24 = 0;
      v23[0] = 0;
      v25 = 0;
      re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v27, a1, v23);
      v12 = re::GeomAttribute::accessValues<int>(v11);
      v14 = v13;
      v15 = re::GeomMesh::addAttribute(a1, a3, 2, 2);
      v16 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v15);
      v18 = a1[10];
      if (a1[10])
      {
        v19 = 0;
        v20 = v24;
        v21 = v26;
        v22 = v17;
        while (v20 != v19)
        {
          v4 = *(v21 + 4 * v19);
          if (v4 >= v14)
          {
            goto LABEL_18;
          }

          if (v17 == v19)
          {
            goto LABEL_19;
          }

          *(v16 + 4 * v19++) = *(v12 + 4 * v4);
          if (v18 == v19)
          {
            goto LABEL_10;
          }
        }

        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        v34 = 789;
        v35 = 2048;
        v36 = v20;
        v37 = 2048;
        v38 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_18:
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        v34 = 613;
        v35 = 2048;
        v36 = v4;
        v37 = 2048;
        v38 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_19:
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        v34 = 621;
        v35 = 2048;
        v36 = v22;
        v37 = 2048;
        v38 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_10:
      if (v23[0])
      {
        if (v26)
        {
          (*(*v23[0] + 40))();
        }
      }
    }

    else
    {
      re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v27, a1);
    }

    re::internal::TriangleDecimator::~TriangleDecimator(v27);
  }

  else
  {
    re::GeomMesh::GeomMesh(v27, 0);
    re::GeomMesh::~GeomMesh(v27);
  }
}

void re::anonymous namespace::decimatePreservingArea(re::_anonymous_namespace_ *this, const re::GeomMesh *a2, char *a3, float a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 10);
  if (v7)
  {
    if (*(a2 + 2) == v7)
    {
      re::internal::TriangleDecimator::TriangleDecimator(v28);
      v29 = 0;
      v28[75] = 0;
      v30 = 1065353216;
      v31 = 256;
      v32 = 1036831949;
      v33 = a4 * a4;
      v34 = 0;
      v35 = 2139095040;
      v36 = 1;
      re::internal::TriangleDecimator::setMesh(v28, a2);
      LODWORD(v10) = *(a2 + 10);
      re::internal::TriangleDecimator::decimateTo(v28, (v10 * 0.1));
      re::GeomMesh::GeomMesh(this, 0);
      if (a3 && (v11 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), a3)) != 0)
      {
        v12 = v11;
        v27 = 0;
        v24[1] = 0;
        v25 = 0;
        v24[0] = 0;
        v26 = 0;
        re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v28, this, v24);
        v13 = re::GeomAttribute::accessValues<int>(v12);
        v15 = v14;
        v16 = re::GeomMesh::addAttribute(this, a3, 2, 2);
        v17 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
        v19 = *(this + 10);
        if (*(this + 10))
        {
          v20 = 0;
          v21 = v25;
          v22 = v27;
          v23 = v18;
          while (v21 != v20)
          {
            v4 = *(v22 + 4 * v20);
            if (v4 >= v15)
            {
              goto LABEL_21;
            }

            if (v18 == v20)
            {
              goto LABEL_22;
            }

            *(v17 + 4 * v20++) = *(v13 + 4 * v4);
            if (v19 == v20)
            {
              goto LABEL_11;
            }
          }

          v37 = 0;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v38 = 136315906;
          v39 = "operator[]";
          v40 = 1024;
          v41 = 789;
          v42 = 2048;
          v43 = v21;
          v44 = 2048;
          v45 = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_21:
          v37 = 0;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v38 = 136315906;
          v39 = "operator[]";
          v40 = 1024;
          v41 = 613;
          v42 = 2048;
          v43 = v4;
          v44 = 2048;
          v45 = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_22:
          v37 = 0;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v38 = 136315906;
          v39 = "operator[]";
          v40 = 1024;
          v41 = 621;
          v42 = 2048;
          v43 = v23;
          v44 = 2048;
          v45 = v23;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_11:
        if (v24[0])
        {
          if (v27)
          {
            (*(*v24[0] + 40))();
          }
        }
      }

      else
      {
        re::internal::TriangleDecimator::convertCombinatorialMapToMesh(v28, this);
      }

      re::internal::TriangleDecimator::~TriangleDecimator(v28);
    }

    else
    {
      re::GeomMesh::GeomMesh(v28, 0);
      re::GeomMesh::~GeomMesh(v28);
    }
  }

  else
  {
    *this = 0;
    *(this + 2) = 0;
    bzero(this + 16, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((this + 16));
    *(this + 91) = 0;

    re::GeomMesh::copy(a2, this);
  }
}

re::internal::TriangleDecimator *re::internal::TriangleDecimator::TriangleDecimator(re::internal::TriangleDecimator *this)
{
  v2 = re::GeomConnectivityManifold::GeomConnectivityManifold(this);
  *(v2 + 82) = 0;
  *(v2 + 40) = 0;
  *(v2 + 19) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 92) = 0;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 102) = 0;
  *(v2 + 26) = 0u;
  *(v2 + 27) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 57) = 0;
  *(v2 + 29) = 0u;
  *(v2 + 120) = 1;
  *(v2 + 488) = 0u;
  *(v2 + 74) = 0;
  *(v2 + 71) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 33) = 0u;
  *(v2 + 136) = 1;
  *(v2 + 72) = 0;
  *(v2 + 146) = 1;
  re::DynamicArray<unsigned int>::resize(v2 + 70, 0, &re::kInvalidMeshIndex);
  *(this + 608) = 0;
  *(this + 75) = 0;
  *(this + 153) = 1065353216;
  *(this + 308) = 0;
  *(this + 628) = 0;
  *(this + 158) = 2139095040;
  *(this + 636) = 1;
  *(this + 644) = 0;
  *(this + 82) = 0;
  *(this + 84) = 0;
  *(this + 83) = 0;
  *(this + 170) = 0;
  *(this + 101) = 0;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 180) = 0;
  *(this + 190) = 0;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 200) = 0;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  return this;
}

void re::internal::TriangleDecimator::~TriangleDecimator(re::internal::TriangleDecimator *this)
{
  v2 = *(this + 97);
  if (v2)
  {
    if (*(this + 101))
    {
      (*(*v2 + 40))(v2);
    }

    *(this + 101) = 0;
    *(this + 98) = 0;
    *(this + 99) = 0;
    *(this + 97) = 0;
    ++*(this + 200);
  }

  re::DynamicArray<unsigned long>::deinit(this + 736);
  re::DynamicArray<unsigned long>::deinit(this + 696);
  re::DynamicArray<unsigned long>::deinit(this + 656);
  re::DynamicArray<unsigned long>::deinit(this + 560);
  v3 = *(this + 65);
  if (v3)
  {
    if (*(this + 69))
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 69) = 0;
    *(this + 66) = 0;
    *(this + 67) = 0;
    *(this + 65) = 0;
    ++*(this + 136);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 464);
  v4 = *(this + 53);
  if (v4)
  {
    if (*(this + 57))
    {
      (*(*v4 + 40))(v4);
    }

    *(this + 57) = 0;
    *(this + 54) = 0;
    *(this + 55) = 0;
    *(this + 53) = 0;
    ++*(this + 112);
  }

  re::DynamicArray<unsigned long>::deinit(this + 384);
  v5 = *(this + 43);
  if (v5)
  {
    if (*(this + 47))
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 47) = 0;
    *(this + 44) = 0;
    *(this + 45) = 0;
    *(this + 43) = 0;
    ++*(this + 92);
  }

  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  v6 = *(this + 6);
  if (v6)
  {
    if (*(this + 10))
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 10) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 6) = 0;
    ++*(this + 18);
  }

  re::DynamicArray<unsigned long>::deinit(this + 8);
}

void re::internal::fillFaces(uint64_t a1, int a2, unint64_t a3)
{
  re::DynamicArray<float>::resize(a1, a3);
  if (a3)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = 1;
    do
    {
      if (v7 <= v6)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(v8 + 4 * v6) = a2 + v9 - 1;
      v6 = v9++;
    }

    while (v6 < a3);
  }
}

uint64_t re::internal::makeSubmesh(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9 = 0;
  v6[1] = a3;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v5[1] = 0;
  v6[0] = a4;
  v5[0] = 0;
  re::makeMeshFromFaces(a2, v6, v5, v10, v7, a1);
  if (v7[0] && v9)
  {
    (*(*v7[0] + 40))();
  }

  result = v10[0];
  if (v10[0])
  {
    if (v12)
    {
      return (*(*v10[0] + 40))(v10[0]);
    }
  }

  return result;
}

void re::internal::capBoundary(unsigned int *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *(a2 + 16);
  v12 = *a1;
  v13 = *(a1 + 3);
  v14 = v12 + v11 + 1;
  *a1 = v14;
  v82 = v14;
  a1[40] = v14;
  v15 = *(a1 + 23);
  if (v15)
  {
    v16 = *(a1 + 25);
    v17 = 8 * v15;
    do
    {
      v18 = *v16++;
      (*(*v18 + 80))(v18, a1[40]);
      v17 -= 8;
    }

    while (v17);
  }

  re::DynamicArray<re::GeomCell4>::resize(a1 + 1, (v13 + v11));
  a1[68] = v13 + v11;
  v19 = *(a1 + 37);
  if (v19)
  {
    v20 = *(a1 + 39);
    v21 = 8 * v19;
    do
    {
      v22 = *v20++;
      (*(*v22 + 80))(v22, a1[68]);
      v21 -= 8;
    }

    while (v21);
  }

  v23 = re::internal::GeomAttributeManager::attributeByName((a1 + 12), "vertexPosition");
  v24 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v23);
  if (v12 >= v25)
  {
    goto LABEL_76;
  }

  v26 = 0uLL;
  *(v24 + 16 * v12) = 0u;
  if (v11)
  {
    v85 = a5;
    v27 = 0;
    while (1)
    {
      v28 = (v13 + v27);
      if (*(a1 + 3) <= v28)
      {
        break;
      }

      v29 = v12 + v27 + 1;
      if (v11 - 1 == v27)
      {
        v30 = v12;
      }

      else
      {
        v30 = v12 + v27 + 1;
      }

      v31 = (*(a1 + 5) + 16 * v28);
      *v31 = v12;
      v31[1] = v29;
      v31[2] = v30 + 1;
      v31[3] = -1;
      if (*(a2 + 16) <= v27)
      {
        goto LABEL_65;
      }

      v32 = *(*(a2 + 32) + 4 * v27);
      if (v32 >= v25)
      {
        goto LABEL_66;
      }

      if (v25 + ~v12 == v27)
      {
        goto LABEL_67;
      }

      *(v24 + 16 * v29) = *(v24 + 16 * v32);
      v33 = vaddq_f32(*(v24 + 16 * v12), *(v24 + 16 * v29));
      *(v24 + 16 * v12) = v33;
      if (v11 == ++v27)
      {
        v34 = v11;
        v35 = vmulq_n_f32(v33, 1.0 / v11);
        *(v24 + 16 * v12) = v35;
        if (a4)
        {
          v36 = 0;
          v37 = *(a2 + 16);
          v38 = *(a2 + 32);
          v26 = 0uLL;
          do
          {
            if (v37 == v36)
            {
              goto LABEL_69;
            }

            if (v11 - 1 == v36)
            {
              v39 = 0;
            }

            else
            {
              v39 = v36 + 1;
            }

            if (v37 <= v39)
            {
              goto LABEL_70;
            }

            v40 = *(v38 + 4 * v36);
            if (v40 >= v25)
            {
              goto LABEL_71;
            }

            v41 = *(v38 + 4 * v39);
            if (v41 >= v25)
            {
              goto LABEL_72;
            }

            ++v36;
            v42 = vsubq_f32(*(v24 + 16 * v40), v35);
            v43 = vsubq_f32(*(v24 + 16 * v41), v35);
            v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), vnegq_f32(v42)), v43, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
            v26 = vaddq_f32(v26, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
          }

          while (v11 != v36);
          v45 = v11 + 1;
LABEL_31:
          v47 = vmulq_f32(v26, v26);
          *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
          *v47.f32 = vrsqrte_f32(v48);
          *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
          v83 = vmulq_n_f32(v26, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
          v49 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
          LODWORD(v51) = v50 - v12;
          if (v50 >= v12)
          {
            v51 = v51;
          }

          else
          {
            v51 = 0;
          }

          v52 = v12;
          do
          {
            if (!v51)
            {
              goto LABEL_68;
            }

            *(v49 + 16 * v52) = v83;
            --v51;
            ++v52;
            --v45;
          }

          while (v45);
          if (v85)
          {
            if (a6)
            {
              v53 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v85);
              v55 = v54;
              v56 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a6);
              if (v12 < v82)
              {
                v58 = a3;
                v59.i64[1] = v83.i64[1];
                v60 = vmulq_f32(v83, xmmword_1E3047680);
                v60.f32[0] = v60.f32[2] + vaddv_f32(*v60.f32);
                v59.i64[0] = 0;
                v61 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v60, v59), 0), xmmword_1E306DD20, xmmword_1E30476A0);
                if (v12 <= v55)
                {
                  v62 = v55;
                }

                else
                {
                  v62 = v12;
                }

                if (v12 <= v57)
                {
                  v63 = v57;
                }

                else
                {
                  v63 = v12;
                }

                v64 = (v56 + 16 * v12);
                v65 = v82 - v12;
                v66 = (v53 + 16 * v12);
                v67 = v63 - v12;
                v68 = v62 - v12;
                do
                {
                  if (!v68)
                  {
                    goto LABEL_74;
                  }

                  *v66 = xmmword_1E3047670;
                  if (!v67)
                  {
                    goto LABEL_75;
                  }

                  *v64++ = v61;
                  ++v66;
                  --v67;
                  --v68;
                  --v65;
                }

                while (v65);
                a3 = v58;
              }
            }
          }

          if (!a3)
          {
            return;
          }
        }

        else if (!a3)
        {
          return;
        }

        v69 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
        v71 = v70;
        if (v11)
        {
          v72 = (v12 + 1);
          v73 = 1;
          __asm { FMOV            V9.2S, #1.0 }

          v79 = 6.2832 / v34;
          while (v72 < v71)
          {
            v80 = __sincosf_stret(v79 * (v73 - 1));
            *(v69 + 8 * v72) = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v80.__sinval), LODWORD(v80.__cosval)), _D9), 0x3F0000003F000000);
            ++v73;
            ++v72;
            if (v73 > v11)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_73;
        }

LABEL_61:
        if (v12 < v71)
        {
          *(v69 + 8 * v12) = 0x3F0000003F000000;
          return;
        }

LABEL_77:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_66:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_67:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_68:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_69:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_70:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_71:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_72:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_73:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_74:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_75:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_76:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_77;
  }

  v46.i64[0] = 0x3F0000003FLL;
  v46.i64[1] = 0x3F0000003FLL;
  *(v24 + 16 * v12) = vnegq_f32(v46);
  if (a4)
  {
    v85 = a5;
    v34 = 0.0;
    v45 = 1;
    goto LABEL_31;
  }

  if (a3)
  {
    v69 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
    v71 = v81;
    goto LABEL_61;
  }
}

uint64_t re::buildCone(uint64_t a1, unsigned __int16 *a2)
{
  v130 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v103);
  v8 = *a2;
  if (v8 < 3 || (v9 = a2[1]) == 0)
  {
    re::internal::GeomAttributeManager::addAttribute(v107, "vertexPosition", 1, 7);
    if (*(a2 + 13) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v107, "vertexUV", 1, 6);
    }

    if (*(a2 + 14) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v107, "vertexNormal", 1, 7);
    }

    if (*(a2 + 13) == 1 && *(a2 + 14) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v107, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v107, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v103);
    goto LABEL_15;
  }

  v79 = a1;
  v81 = v8 + 1;
  v10 = &v103;
  v103 = v8 + (v8 + 1) * v9;
  v108 = v103;
  if (v109)
  {
    v11 = v110;
    v12 = 8 * v109;
    do
    {
      v13 = *v11++;
      (*(*v13 + 80))(v13, v108);
      v12 -= 8;
    }

    while (v12);
    v9 = a2[1];
    v14 = *a2;
  }

  else
  {
    v14 = v8;
  }

  v16 = v14 * v9;
  re::DynamicArray<re::GeomCell4>::resize(&v104, (v14 * v9));
  v111 = v16;
  if (v112)
  {
    v17 = v113;
    v18 = 8 * v112;
    do
    {
      v19 = *v17++;
      (*(*v19 + 80))(v19, v111);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = re::internal::GeomAttributeManager::addAttribute(v107, "vertexPosition", 1, 7);
  v21 = *(a2 + 13);
  v22 = *(a2 + 14);
  v23 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v20);
  v86 = v25;
  v87 = v23;
  if (*(a2 + 14) == 1)
  {
    v26 = re::internal::GeomAttributeManager::addAttribute(v107, "vertexNormal", 1, 7);
    v91 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
  }

  else
  {
    v91 = 0;
    v27 = -1;
  }

  v83 = v27;
  v100 = v21 & v22;
  if (*(a2 + 13) == 1)
  {
    v28 = re::internal::GeomAttributeManager::addAttribute(v107, "vertexUV", 1, 6);
    v88 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v28);
    v30 = v29;
  }

  else
  {
    v88 = 0;
    v30 = 0xFFFFFFFFLL;
  }

  v96 = v30;
  v31 = v87;
  if (v100)
  {
    v5 = re::internal::GeomAttributeManager::addAttribute(v107, "vertexTangent", 1, 7);
    v2 = re::internal::GeomAttributeManager::addAttribute(v107, "vertexBitangent", 1, 7);
    v90 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v5);
    v85 = v32;
    v89 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v2);
    v84 = v33;
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v84 = -1;
    v85 = -1;
  }

  v82 = v8;
  v80 = a2[1];
  if (!a2[1])
  {
    v37 = 0;
    goto LABEL_53;
  }

  v34 = 0;
  v35 = 0;
  v36 = v8 + 1;
  v93 = v84;
  LOWORD(v37) = a2[1];
  v94 = v85;
  v95 = v83;
  do
  {
    v2 = 0;
    v92 = v35;
    v38 = v35 / v37;
    *v24.i32 = v38 * 0.5;
    *&v24.i32[1] = v38;
    v98 = v24;
    v99 = v38;
    v10 = v34;
    v39 = v89 + 16 * v34;
    v4 = v90 + 16 * v34;
    v3 = v88 + 8 * v34;
    *v24.i32 = 1.0 - v38;
    v97 = COERCE_UNSIGNED_INT(1.0 - v38);
    if (v86 >= v34)
    {
      v5 = v86 - v34;
    }

    else
    {
      v5 = 0;
    }

    v40 = v91 + 16 * v34;
    v41 = v31 + 16 * v34;
    do
    {
      v24.i16[0] = *a2;
      v42 = *(a2 + 2);
      v101 = v2 / v24.u32[0];
      v102 = *(a2 + 1);
      v44 = __sincosf_stret(v101 * 6.2832);
      if (v5 == v2)
      {
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *v115 = 136315906;
        *&v115[18] = 2048;
        *&v115[20] = (v10 + v2);
        v116 = 2048;
        *v117 = v86;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_99:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 789;
        *&v115[18] = 2048;
        *&v115[20] = v39;
        v116 = 2048;
        *v117 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_100:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10 + v2;
        v116 = 2048;
        *v117 = v95;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_101:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10 + v2;
        v116 = 2048;
        *v117 = v96;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_102:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10 + v2;
        v116 = 2048;
        *v117 = v94;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_103:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10 + v2;
        v116 = 2048;
        *v117 = v93;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_104:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v4;
        v116 = 2048;
        *v117 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_105:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 789;
        *&v115[18] = 2048;
        *&v115[20] = v39;
        v116 = 2048;
        *v117 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_106:
        v114 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v118 = 136315906;
        *&v118[4] = "operator[]";
        v119 = 1024;
        v120 = 789;
        v121 = 2048;
        v122 = v36;
        v123 = 2048;
        v124 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_107:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10;
        v116 = 2048;
        *v117 = v96;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_108:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *v115 = 136315906;
        *&v115[18] = 2048;
        *&v115[20] = (~v40 + v10);
        v116 = 2048;
        *v117 = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_109:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *v115 = 136315906;
        *&v115[18] = 2048;
        *&v115[20] = (~v40 + v10);
        v116 = 2048;
        *v117 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_110:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10;
        v116 = 2048;
        *v117 = v39;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_111:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10;
        v116 = 2048;
        *v117 = v36;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_112:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v5;
        v116 = 2048;
        *v117 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_113:
        *v118 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        *&v115[18] = 2048;
        *&v115[20] = v10;
        v116 = 2048;
        *v117 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v45 = v10 + v2;
      v46.i32[1] = 0;
      v46.i32[3] = 0;
      v46.f32[0] = -v44.__sinval;
      v46.f32[2] = -v44.__cosval;
      v43.f32[0] = (0.0 - v42) * v44.__cosval;
      v43.f32[1] = v102;
      v43.f32[2] = -(v44.__sinval * (0.0 - v42));
      v47 = vmulq_f32(v46, v46);
      *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v49 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
      v50 = vmulq_f32(v43, v43);
      *&v51 = v50.f32[2] + vaddv_f32(*v50.f32);
      *v50.f32 = vrsqrte_f32(v51);
      *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
      v52 = vmulq_n_f32(v43, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
      v53 = v42 + (v99 * (0.0 - v42));
      *v24.i32 = v44.__cosval * v53;
      v50.f32[0] = (v99 * v102) + v102 * -0.5;
      v24.i32[1] = v50.i32[0];
      *&v24.i32[2] = -(v53 * v44.__sinval);
      *(v41 + 16 * v2) = v24;
      if (*(a2 + 14) == 1)
      {
        if (v45 >= v83)
        {
          goto LABEL_100;
        }

        v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), vnegq_f32(v49)), v52, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
        *(v40 + 16 * v2) = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
      }

      if (*(a2 + 13) == 1)
      {
        if (v96 <= v45)
        {
          goto LABEL_101;
        }

        v24 = v98;
        *(v3 + 8 * v2) = vadd_f32(*v98.i8, vmul_n_f32(v97, v101));
      }

      if (v100)
      {
        if (v45 >= v85)
        {
          goto LABEL_102;
        }

        *(v4 + 16 * v2) = v49;
        if (v45 >= v84)
        {
          goto LABEL_103;
        }

        *(v39 + 16 * v2) = v52;
      }

      ++v2;
    }

    while (v36 != v2);
    v34 = v10 + v2;
    v35 = v92 + 1;
    v37 = a2[1];
    v31 = v87;
  }

  while (v92 + 1 < v37);
LABEL_53:
  v54 = (v81 * v80);
  v55 = *a2;
  if (*a2)
  {
    LODWORD(v56) = 0;
    *(&v56 + 1) = 0;
    v2 = v84;
    *(&v56 + 1) = *(a2 + 1) * 0.5;
    v57 = (v54 + v55);
    v36 = v85;
    v40 = v82;
    v39 = v83;
    v3 = v86;
    if (v54 <= v86)
    {
      v4 = v86;
    }

    else
    {
      v4 = (v81 * v80);
    }

    v58 = (v89 + 16 * v54);
    v59 = (v90 + 16 * v54);
    v60 = (v91 + 16 * v54);
    v10 = (v81 * v80);
    do
    {
      if (v4 == v10)
      {
        goto LABEL_104;
      }

      *(v31 + 16 * v10) = v56;
      if (*(a2 + 13) == 1)
      {
        if (v96 <= v10)
        {
          goto LABEL_107;
        }

        *(v88 + 8 * v10) = 0x3F8000003F000000;
      }

      v61 = -v82 - 1 + v10;
      if (*(a2 + 14) == 1)
      {
        if (v83 <= v61)
        {
          goto LABEL_108;
        }

        if (v10 >= v83)
        {
          goto LABEL_110;
        }

        *v60 = *(v91 + 16 * v61);
      }

      if (v100)
      {
        if (v85 <= v61)
        {
          goto LABEL_109;
        }

        if (v10 >= v85)
        {
          goto LABEL_111;
        }

        v5 = v61;
        *v59 = *(v90 + 16 * v61);
        if (v84 <= v61)
        {
          goto LABEL_112;
        }

        if (v10 >= v84)
        {
          goto LABEL_113;
        }

        *v58 = *(v89 + 16 * v61);
      }

      ++v10;
      ++v58;
      ++v59;
      ++v60;
    }

    while (v10 < v57);
    v37 = a2[1];
    v55 = *a2;
  }

  else
  {
    v40 = v82;
  }

  v62 = v37 - 1;
  if (v37 == 1)
  {
    v64 = 0;
    if (!v55)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  v63 = 0;
  v64 = 0;
  v36 = v105;
  do
  {
    if (v55)
    {
      v65 = v63 * v81;
      v66 = v63 * v81 + v81;
      v67 = v106;
      v68 = v64 + v55;
      v69 = v55;
      do
      {
        v39 = v64;
        if (v36 <= v64)
        {
          goto LABEL_99;
        }

        v70 = (v67 + 16 * v64);
        v70[3] = v66++;
        *v70 = v65++;
        v70[1] = v65;
        v70[2] = v66;
        v64 = v39 + 1;
        --v69;
      }

      while (v69);
      v64 = v68;
    }

    ++v63;
  }

  while (v63 != v62);
  if (v55)
  {
LABEL_86:
    v36 = v105;
    v71 = v106;
    v72 = v54 - v40;
    do
    {
      v39 = v64;
      if (v36 <= v64)
      {
        goto LABEL_105;
      }

      v73 = (v71 + 16 * v64);
      *v73 = v72 - 1;
      v73[1] = v72;
      v73[2] = v54;
      v73[3] = -1;
      ++v64;
      LODWORD(v54) = v54 + 1;
      ++v72;
    }

    while (--v55);
  }

LABEL_89:
  if (a2[6])
  {
    v74 = re::internal::GeomAttributeManager::attributeByName(v107, "vertexUV");
    v39 = re::internal::GeomAttributeManager::attributeByName(v107, "vertexNormal");
    v10 = re::internal::GeomAttributeManager::attributeByName(v107, "vertexTangent");
    v2 = re::internal::GeomAttributeManager::attributeByName(v107, "vertexBitangent");
    *&v117[2] = 0;
    memset(v115, 0, sizeof(v115));
    re::DynamicArray<float>::resize(v115, v40);
    v36 = *&v115[16];
    v75 = *&v117[2];
    v76 = *&v115[16];
    do
    {
      if (!v76)
      {
        goto LABEL_106;
      }

      *v75++ = v40;
      --v76;
      --v40;
    }

    while (v40);
    re::internal::capBoundary(&v103, v115, v74, v39, v10, v2);
    if (*v115 && *&v117[2])
    {
      (*(**v115 + 40))();
    }
  }

  v77 = re::GeomMesh::operator=(v79, &v103);
  if (*(a2 + 15) == 1)
  {
    re::internal::mergeVertexPositions(v77, v78);
  }

LABEL_15:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v107);
  result = v104;
  if (v104)
  {
    if (v106)
    {
      return (*(*v104 + 40))();
    }
  }

  return result;
}

void re::buildCone(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v29 = *MEMORY[0x1E69E9840];
  if (*(a2 + 15) == 1)
  {
    v12[0] = *a2;
    HIBYTE(v12[0]) = 0;
    re::buildCone(a1, v12);
    return;
  }

  re::GeomMesh::GeomMesh(v12, 0);
  re::buildCone(v12, v2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  if (*(v2 + 12))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  re::DynamicArray<re::GeomMesh>::resize(a1, v4);
  v5 = *v2;
  if (v5 >= 3)
  {
    v6 = v2[1];
    if (v2[1])
    {
      v11 = 0;
      v8[1] = 0;
      v9 = 0;
      v8[0] = 0;
      v10 = 0;
      re::internal::fillFaces(v8, 0, v6 * v5);
      re::internal::makeSubmesh(&v14, v12, v9, v11);
      if (*(a1 + 16))
      {
        re::GeomMesh::operator=(*(a1 + 32), &v14);
        re::GeomMesh::~GeomMesh(&v14);
        if (*(v2 + 12) != 1)
        {
          goto LABEL_13;
        }

        if (*(a1 + 16))
        {
          re::internal::fillFaces(v8, *(*(a1 + 32) + 40), *v2);
          re::internal::makeSubmesh(&v14, v12, v9, v11);
          v2 = *(a1 + 16);
          if (v2 > 1)
          {
            re::GeomMesh::operator=((*(a1 + 32) + 736), &v14);
            re::GeomMesh::~GeomMesh(&v14);
LABEL_13:
            if (v8[0])
            {
              if (v11)
              {
                (*(*v8[0] + 40))();
              }
            }

            goto LABEL_21;
          }

LABEL_28:
          v13 = 0;
          v27 = 0u;
          v28 = 0u;
          memset(v26, 0, sizeof(v26));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v19 = 136315906;
          *&v19[4] = "operator[]";
          v20 = 1024;
          v21 = 789;
          v22 = 2048;
          v23 = 1;
          v24 = 2048;
          v25 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_27:
        *v19 = 0;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26[0] = 136315906;
        *&v26[1] = "operator[]";
        LOWORD(v26[3]) = 1024;
        *(&v26[3] + 2) = 789;
        HIWORD(v26[4]) = 2048;
        *&v26[5] = 0;
        LOWORD(v26[7]) = 2048;
        *(&v26[7] + 2) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      v13 = 0;
      v27 = 0u;
      v28 = 0u;
      memset(v26, 0, sizeof(v26));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      v20 = 1024;
      v21 = 789;
      v22 = 2048;
      v23 = 0;
      v24 = 2048;
      v25 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_27;
    }
  }

  if (!*(a1 + 16))
  {
    v8[0] = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26[0] = 136315906;
    *&v26[1] = "operator[]";
    LOWORD(v26[3]) = 1024;
    *(&v26[3] + 2) = 789;
    HIWORD(v26[4]) = 2048;
    *&v26[5] = 0;
    LOWORD(v26[7]) = 2048;
    *(&v26[7] + 2) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  re::GeomMesh::operator=(*(a1 + 32), v12);
  if (*(v2 + 12) == 1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      if (v7 != 1)
      {
        re::GeomMesh::copy(*(a1 + 32), (*(a1 + 32) + 736));
        goto LABEL_21;
      }

LABEL_25:
      v8[0] = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26[0] = 136315906;
      *&v26[1] = "operator[]";
      LOWORD(v26[3]) = 1024;
      *(&v26[3] + 2) = 789;
      HIWORD(v26[4]) = 2048;
      *&v26[5] = 1;
      LOWORD(v26[7]) = 2048;
      *(&v26[7] + 2) = 1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    v8[0] = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26[0] = 136315906;
    *&v26[1] = "operator[]";
    LOWORD(v26[3]) = 1024;
    *(&v26[3] + 2) = 789;
    HIWORD(v26[4]) = 2048;
    *&v26[5] = 0;
    LOWORD(v26[7]) = 2048;
    *(&v26[7] + 2) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  re::GeomMesh::~GeomMesh(v12);
}

uint64_t (***re::buildCylinder(uint64_t a1, unsigned __int16 *a2))(void)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*a2 >= 3u && a2[1])
  {
    v41[3] = re::globalAllocators(a1)[2];
    v41[0] = &unk_1F5D02F48;
    v41[1] = a2;
    v41[4] = v41;
    v4 = *a2;
    v5 = a2[1];
    v30 = 0;
    *&v33[1] = 0;
    v34 = v4;
    v35 = v5;
    v31 = *(a2 + 18);
    v32 = *(a2 + 19);
    *v33 = (v31 & v32);
    re::buildParametricSurface(a1, v41, &v30);
    v7 = *a2;
    if ((a2[8] & 1) != 0 || *(a2 + 17) == 1)
    {
      v36 = *(a1 + 16);
      re::DynamicArray<re::GeomCell4>::DynamicArray(v37, (a1 + 24));
      if (!v37[1])
      {
        re::DynamicArray<re::BlendNode>::setCapacity(v37, 1uLL);
      }

      re::internal::GeomAttributeManager::GeomAttributeManager(v39, (a1 + 64));
      if (*(a2 + 17) == 1)
      {
        v8 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexUV");
        v9 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexNormal");
        v10 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexTangent");
        v11 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexBitangent");
        v29 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v28 = 0;
        re::DynamicArray<float>::resize(&v25, v7);
        if (v7)
        {
          v12 = v27;
          v13 = v29;
          v14 = v27;
          v15 = v7;
          while (v14)
          {
            *v13++ = v15;
            --v14;
            if (!--v15)
            {
              goto LABEL_12;
            }
          }

          v40 = 0;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v42 = 136315906;
          v43 = "operator[]";
          v44 = 1024;
          v45 = 789;
          v46 = 2048;
          v47 = v12;
          v48 = 2048;
          v49 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_41:
          v40 = 0;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v42 = 136315906;
          v43 = "operator[]";
          v44 = 1024;
          v45 = 789;
          v46 = 2048;
          v47 = v12;
          v48 = 2048;
          v49 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_12:
        re::internal::capBoundary(&v36, &v25, v8, v9, v10, v11);
        if (v25 && v29)
        {
          (*(*v25 + 40))();
        }
      }

      if (*(a2 + 16) == 1)
      {
        v16 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexUV");
        v17 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexNormal");
        v18 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexTangent");
        v19 = re::internal::GeomAttributeManager::attributeByName(v39, "vertexBitangent");
        v20 = a2[1];
        v29 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v28 = 0;
        re::DynamicArray<float>::resize(&v25, v7);
        if (v7)
        {
          v21 = (v7 + 1) * v20;
          v12 = v27;
          v22 = v29;
          v23 = v27;
          while (v23)
          {
            *v22++ = v21++;
            --v23;
            if (!--v7)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_41;
        }

LABEL_20:
        re::internal::capBoundary(&v36, &v25, v16, v17, v18, v19);
        if (v25 && v29)
        {
          (*(*v25 + 40))();
        }
      }

      re::GeomMesh::operator=(a1, &v36);
      re::internal::GeomAttributeManager::~GeomAttributeManager(v39);
      if (v37[0])
      {
        v6 = v38;
        if (v38)
        {
          (*(*v37[0] + 40))();
        }
      }
    }

    if (*(a2 + 20) == 1)
    {
      re::internal::mergeVertexPositions(a1, v6);
    }

    return re::FunctionBase<24ul,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::destroyCallable(v41);
  }

  else
  {
    re::internal::GeomBaseMesh::GeomBaseMesh(&v36);
    re::internal::GeomAttributeManager::addAttribute(v39, "vertexPosition", 1, 7);
    if (*(a2 + 18) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v39, "vertexUV", 1, 6);
    }

    if (*(a2 + 19) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v39, "vertexNormal", 1, 7);
    }

    if (*(a2 + 18) == 1 && *(a2 + 19) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v39, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v39, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v36);
    re::internal::GeomAttributeManager::~GeomAttributeManager(v39);
    result = v37[0];
    if (v37[0] && v38)
    {
      return (*(*v37[0] + 40))();
    }
  }

  return result;
}

void re::buildCylinder(uint64_t a1, unsigned __int16 *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a2 + 20) == 1)
  {
    v21 = *(a2 + 2);
    v20 = *a2;
    BYTE4(v21) = 0;
    re::buildCylinder(a1, &v20);
    return;
  }

  v5 = &v23;
  re::GeomMesh::GeomMesh(&v20, 0);
  re::buildCylinder(&v20, a2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::resize(a1, *(a2 + 16) + *(a2 + 17) + 1);
  v6 = a2[1];
  if (a2[1])
  {
    v7 = *a2;
    if (v7 >= 3)
    {
      v19 = 0;
      v16[1] = 0;
      v17 = 0;
      v16[0] = 0;
      v18 = 0;
      re::internal::fillFaces(v16, 0, v7 * v6);
      re::internal::makeSubmesh(&v23, &v20, v17, v19);
      if (*(a1 + 16))
      {
        re::GeomMesh::operator=(*(a1 + 32), &v23);
        re::GeomMesh::~GeomMesh(&v23);
        if (*(a2 + 16) != 1)
        {
          LODWORD(v2) = 0;
          v10 = 0;
LABEL_21:
          if (*(a2 + 17) != 1)
          {
            goto LABEL_25;
          }

          v13 = v10;
          v14 = *(a1 + 16);
          if (v14 > v10)
          {
            v5 = (v10 + 1);
            re::internal::fillFaces(v16, v2 + *(*(a1 + 32) + 736 * v10 + 40), *a2);
            re::internal::makeSubmesh(&v23, &v20, v17, v19);
            v12 = *(a1 + 16);
            if (v12 > v5)
            {
              re::GeomMesh::operator=((*(a1 + 32) + 736 * v5), &v23);
              re::GeomMesh::~GeomMesh(&v23);
LABEL_25:
              if (v16[0])
              {
                if (v19)
                {
                  (*(*v16[0] + 40))();
                }
              }

              goto LABEL_28;
            }

LABEL_39:
            v22 = 0;
            v36 = 0u;
            v37 = 0u;
            memset(v35, 0, sizeof(v35));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v28 = 136315906;
            *&v28[4] = "operator[]";
            v29 = 1024;
            v30 = 789;
            v31 = 2048;
            v32 = v5;
            v33 = 2048;
            v34 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          goto LABEL_35;
        }

        if (*(a1 + 16))
        {
          v8 = *(a1 + 32);
          v2 = *(v8 + 40);
          re::internal::fillFaces(v16, *(v8 + 40), *a2);
          re::internal::makeSubmesh(&v23, &v20, v17, v19);
          v9 = *(a1 + 16);
          if (v9 <= 1)
          {
LABEL_37:
            v22 = 0;
            v36 = 0u;
            v37 = 0u;
            memset(v35, 0, sizeof(v35));
            v12 = v9;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v28 = 136315906;
            *&v28[4] = "operator[]";
            v29 = 1024;
            v30 = 789;
            v31 = 2048;
            v32 = 1;
            v33 = 2048;
            v34 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_38;
          }

          re::GeomMesh::operator=((*(a1 + 32) + 736), &v23);
          re::GeomMesh::~GeomMesh(&v23);
          v10 = 1;
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  if (!*(a1 + 16))
  {
    v16[0] = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35[0] = 136315906;
    *&v35[1] = "operator[]";
    LOWORD(v35[3]) = 1024;
    *(&v35[3] + 2) = 789;
    HIWORD(v35[4]) = 2048;
    *&v35[5] = 0;
    LOWORD(v35[7]) = 2048;
    *(&v35[7] + 2) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v22 = 0;
    v36 = 0u;
    v37 = 0u;
    memset(v35, 0, sizeof(v35));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v28 = 136315906;
    *&v28[4] = "operator[]";
    v29 = 1024;
    v30 = 789;
    v31 = 2048;
    v32 = 0;
    v33 = 2048;
    v34 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  re::GeomMesh::operator=(*(a1 + 32), &v20);
  if (*(a2 + 16) == 1)
  {
    v11 = *(a1 + 16);
    if (!v11)
    {
LABEL_32:
      v16[0] = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35[0] = 136315906;
      *&v35[1] = "operator[]";
      LOWORD(v35[3]) = 1024;
      *(&v35[3] + 2) = 789;
      HIWORD(v35[4]) = 2048;
      *&v35[5] = 0;
      LOWORD(v35[7]) = 2048;
      *(&v35[7] + 2) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_33:
      *v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35[0] = 136315906;
      *&v35[1] = "operator[]";
      LOWORD(v35[3]) = 1024;
      *(&v35[3] + 2) = 789;
      HIWORD(v35[4]) = 2048;
      *&v35[5] = 0;
      LOWORD(v35[7]) = 2048;
      *(&v35[7] + 2) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_34;
    }

    if (v11 == 1)
    {
LABEL_36:
      v16[0] = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35[0] = 136315906;
      *&v35[1] = "operator[]";
      LOWORD(v35[3]) = 1024;
      *(&v35[3] + 2) = 789;
      HIWORD(v35[4]) = 2048;
      *&v35[5] = 1;
      LOWORD(v35[7]) = 2048;
      *(&v35[7] + 2) = 1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_37;
    }

    re::GeomMesh::copy(*(a1 + 32), (*(a1 + 32) + 736));
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(a2 + 17) == 1)
  {
    v12 = *(a1 + 16);
    if (!v12)
    {
LABEL_34:
      v16[0] = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35[0] = 136315906;
      *&v35[1] = "operator[]";
      LOWORD(v35[3]) = 1024;
      *(&v35[3] + 2) = 789;
      HIWORD(v35[4]) = 2048;
      *&v35[5] = 0;
      LOWORD(v35[7]) = 2048;
      *(&v35[7] + 2) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      v15 = v13;
      v2 = v14;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35[0] = 136315906;
      *&v35[1] = "operator[]";
      LOWORD(v35[3]) = 1024;
      *(&v35[3] + 2) = 789;
      HIWORD(v35[4]) = 2048;
      *&v35[5] = v15;
      LOWORD(v35[7]) = 2048;
      *(&v35[7] + 2) = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_36;
    }

    if (v12 <= v2)
    {
LABEL_38:
      v16[0] = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35[0] = 136315906;
      *&v35[1] = "operator[]";
      LOWORD(v35[3]) = 1024;
      *(&v35[3] + 2) = 789;
      HIWORD(v35[4]) = 2048;
      *&v35[5] = v2;
      LOWORD(v35[7]) = 2048;
      *(&v35[7] + 2) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

    re::GeomMesh::copy(*(a1 + 32), (*(a1 + 32) + 736 * v2));
  }

LABEL_28:
  re::GeomMesh::~GeomMesh(&v20);
}

uint64_t re::buildSphere(unint64_t a1, unsigned __int16 *a2)
{
  v150 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v126);
  v4 = *a2;
  v5 = *(a2 + 9) & a2[4];
  if (v4 <= 2)
  {
    re::internal::GeomAttributeManager::addAttribute(v129, "vertexPosition", 1, 7);
    if (*(a2 + 8) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v129, "vertexUV", 1, 6);
    }

    if (*(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v129, "vertexNormal", 1, 7);
    }

    if (v5)
    {
      re::internal::GeomAttributeManager::addAttribute(v129, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v129, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v126);
    goto LABEL_89;
  }

  v6 = (v4 - 1) * (v4 + 1);
  v126 = v6 + 2 * v4;
  v130 = v126;
  v7 = v4;
  if (v131)
  {
    v8 = v132;
    v9 = 8 * v131;
    do
    {
      v10 = *v8++;
      (*(*v10 + 80))(v10, v130);
      v9 -= 8;
    }

    while (v9);
    v7 = *a2;
  }

  v11 = v7 * v7;
  re::DynamicArray<re::GeomCell4>::resize(v127, (v7 * v7));
  v133 = v11;
  if (v134)
  {
    v12 = v135;
    v13 = 8 * v134;
    do
    {
      v14 = *v12++;
      (*(*v14 + 80))(v14, v133);
      v13 -= 8;
    }

    while (v13);
  }

  v15 = (v6 + v4);
  v16 = re::internal::GeomAttributeManager::addAttribute(v129, "vertexPosition", 1, 7);
  v17 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
  v116 = v18;
  v113 = v4 + 1;
  if (v5)
  {
    v19 = re::internal::GeomAttributeManager::addAttribute(v129, "vertexTangent", 1, 7);
    v20 = re::internal::GeomAttributeManager::addAttribute(v129, "vertexBitangent", 1, 7);
    v21 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    v23 = v22;
    v24 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v20);
  }

  else
  {
    v24 = 0;
    v21 = 0;
    v25 = -1;
    v23 = -1;
  }

  v26 = 0;
  v122 = v25;
  v123 = v23;
  v27 = v116;
  if (v116 >= v15)
  {
    v28 = v116 - v15;
  }

  else
  {
    v28 = 0;
  }

  v120 = v24;
  v121 = v21;
  v124 = v24 + 16 * v15;
  v29 = v21 + 16 * v15;
  v30 = xmmword_1E30476B0;
  v31 = xmmword_1E3047680;
  v119 = v15;
  v32 = v17 + 16 * v15;
  do
  {
    if (v116 == v26)
    {
      goto LABEL_98;
    }

    *(v17 + 16 * v26) = v30;
    if (v28 == v26)
    {
      goto LABEL_99;
    }

    *(v32 + 16 * v26) = v31;
    if (v5)
    {
      LOWORD(v31) = *a2;
      v34 = __sincos_stret(v26 * 6.28318531 / v31);
      v33.f64[0] = v34.__sinval;
      v35 = v123;
      if (v26 >= v123)
      {
        goto LABEL_102;
      }

      v33.f64[1] = v34.__cosval;
      *&v33.f64[0] = vcvt_f32_f64(v33);
      v36 = vnegq_f32(vzip1q_s32(v33, v33));
      v36.i32[1] = 0;
      *(v121 + 16 * v26) = v36;
      if (v119 + v26 >= v123)
      {
        goto LABEL_103;
      }

      *(v29 + 16 * v26) = v36;
      v37 = v122;
      if (v26 >= v122)
      {
        goto LABEL_104;
      }

      v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v121 + 16 * v26), *(v121 + 16 * v26)), *(v121 + 16 * v26), 0xCuLL), vnegq_f32(*(v17 + 16 * v26))), *(v121 + 16 * v26), vextq_s8(vuzp1q_s32(*(v17 + 16 * v26), *(v17 + 16 * v26)), *(v17 + 16 * v26), 0xCuLL));
      *(v120 + 16 * v26) = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
      if (v119 + v26 >= v122)
      {
        goto LABEL_105;
      }

      v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v29 + 16 * v26), *(v29 + 16 * v26)), *(v29 + 16 * v26), 0xCuLL), vnegq_f32(*(v32 + 16 * v26))), *(v29 + 16 * v26), vextq_s8(vuzp1q_s32(*(v32 + 16 * v26), *(v32 + 16 * v26)), *(v32 + 16 * v26), 0xCuLL));
      *(v124 + 16 * v26) = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
      v31 = xmmword_1E3047680;
      v30 = xmmword_1E30476B0;
    }

    ++v26;
  }

  while (v4 != v26);
  v118 = v17;
  v112 = a1;
  v40 = *a2;
  v41 = v120;
  v42 = v121;
  if (v40 < 2)
  {
    goto LABEL_53;
  }

  v43 = 1;
  LODWORD(a1) = v4;
  v115 = v116;
  do
  {
    v26 = a1;
    v117 = v43;
    v45 = __sincos_stret(v43 * 3.14159265 / v40 + -1.57079633);
    *v44.i64 = v45.__cosval;
    v28 = 0;
    sinval = v45.__sinval;
    v125 = sinval;
    v47 = v41 + 16 * a1;
    if (a1 <= v27)
    {
      v48 = v27;
    }

    else
    {
      v48 = a1;
    }

    v17 = v42 + 16 * a1;
    v49 = &v118[a1];
    v114 = v48;
    a1 = a1 - v48;
    do
    {
      v27 = a1 + v28;
      v44.i16[0] = *a2;
      v52 = __sincos_stret(v28 * 6.28318531 / v44.u64[0]);
      *v44.i64 = v52.__cosval;
      v50.f64[0] = v52.__sinval;
      if (!(a1 + v28))
      {
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v114;
        v143 = 2048;
        v144 = v116;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_94:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 789;
        v141 = 2048;
        v142 = a1;
        v143 = 2048;
        v144 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_95:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v137 = 136315906;
        v141 = 2048;
        v142 = (v17 + v28);
        v143 = 2048;
        v144 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_96:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v103 = v54;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v26 + v28;
        v143 = 2048;
        v144 = v103;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_97:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v26 + v28;
        v143 = 2048;
        v144 = v122;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_98:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v27;
        v143 = 2048;
        v144 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_99:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v137 = 136315906;
        v141 = 2048;
        v142 = (v119 + v26);
        v143 = 2048;
        v144 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_100:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 789;
        v141 = 2048;
        v142 = v17;
        v143 = 2048;
        v144 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_101:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 789;
        v141 = 2048;
        v142 = a1;
        v143 = 2048;
        v144 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_102:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v104 = v35;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v26;
        v143 = 2048;
        v144 = v104;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_103:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v105 = v35;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v119 + v26;
        v143 = 2048;
        v144 = v105;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_104:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v106 = v37;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v26;
        v143 = 2048;
        v144 = v106;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_105:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v107 = v37;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v119 + v26;
        v143 = 2048;
        v144 = v107;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_106:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = a1;
        v143 = 2048;
        v144 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_107:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        v108 = v65;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v108;
        v143 = 2048;
        v144 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_108:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v27;
        v143 = 2048;
        v144 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_109:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v137 = 136315906;
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v141 = 2048;
        v142 = v26;
        v143 = 2048;
        v144 = v115;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_110:
        v136 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v145 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v138 = "operator[]";
        v139 = 1024;
        v140 = 621;
        v137 = 136315906;
        v141 = 2048;
        v142 = (v26 + v28);
        v143 = 2048;
        v144 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_111;
      }

      v51.f32[0] = v45.__cosval * v52.__cosval;
      v53 = v52.__sinval * -v45.__cosval;
      v51.f32[1] = v125;
      v51.f32[2] = v53;
      v49[v28] = v51;
      if (v5)
      {
        v54 = v123;
        if (v26 + v28 >= v123)
        {
          goto LABEL_96;
        }

        v50.f64[1] = v52.__cosval;
        *&v50.f64[0] = vcvt_f32_f64(v50);
        v55 = vnegq_f32(vzip1q_s32(v50, v50));
        v55.i32[1] = 0;
        *(v17 + 16 * v28) = v55;
        if (v26 + v28 >= v122)
        {
          goto LABEL_97;
        }

        v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v49[v28])), v55, vextq_s8(vuzp1q_s32(v49[v28], v49[v28]), v49[v28], 0xCuLL));
        *(v47 + 16 * v28) = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
      }

      ++v28;
    }

    while (v4 != v28);
    if (v26 >= v116)
    {
      goto LABEL_109;
    }

    v56 = v26 + v28;
    v27 = v116;
    if (v26 + v28 >= v116)
    {
      goto LABEL_110;
    }

    v118[v56] = v118[v26];
    v57 = v123;
    v41 = v120;
    v42 = v121;
    if ((v5 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v123 <= v26)
    {
      goto LABEL_113;
    }

    a1 = v56;
    if (v123 <= v56)
    {
LABEL_114:
      v136 = 0;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v145 = 0u;
      v110 = v57;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v137 = 136315906;
      v138 = "operator[]";
      v139 = 1024;
      v140 = 621;
      v141 = 2048;
      v142 = a1;
      v143 = 2048;
      v144 = v110;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v136 = 0;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v145 = 0u;
      v111 = v58;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v137 = 136315906;
      v138 = "operator[]";
      v139 = 1024;
      v140 = 621;
      v141 = 2048;
      v142 = v26;
      v143 = 2048;
      v144 = v111;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v136 = 0;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v145 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v137 = 136315906;
      v138 = "operator[]";
      v139 = 1024;
      v140 = 621;
      v141 = 2048;
      v142 = a1;
      v143 = 2048;
      v144 = v122;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(v121 + 16 * v56) = *(v121 + 16 * v26);
    v58 = v122;
    if (v122 <= v26)
    {
      goto LABEL_115;
    }

    if (v122 <= v56)
    {
      goto LABEL_116;
    }

    *(v120 + 16 * v56) = *(v120 + 16 * v26);
LABEL_52:
    a1 = (v26 + v28 + 1);
    v43 = v117 + 1;
    v40 = *a2;
  }

  while (v117 + 1 < v40);
LABEL_53:
  v26 = (v4 - 1);
  if (a2[4])
  {
    v59 = re::internal::GeomAttributeManager::addAttribute(v129, "vertexUV", 1, 6);
    v60 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v59);
    v63 = 0;
    LOWORD(v64) = *a2;
    a1 = v61;
    v65 = v119;
    v66 = v61 - v119;
    if (v61 < v119)
    {
      v66 = 0;
    }

    do
    {
      if (v61 == v63)
      {
        goto LABEL_106;
      }

      LOWORD(v62) = *a2;
      *&v67 = (0.5 / v64) + (v63 / LODWORD(v62));
      HIWORD(v62) = WORD1(v67);
      *(v60 + 8 * v63) = v67;
      if (v66 == v63)
      {
        goto LABEL_107;
      }

      HIDWORD(v67) = 1.0;
      *(v60 + 8 * v65) = v67;
      ++v63;
      ++v65;
    }

    while (v4 != v63);
    v68 = 0;
    v69 = v4;
    do
    {
      v28 = 0;
      LOWORD(v67) = *a2;
      v70 = 1.0 - ((v26 - v68) / v67);
      v17 = v69;
      v71 = v61 - v69;
      if (v61 < v69)
      {
        v71 = 0;
      }

      v72 = v60 + 8 * v69;
      do
      {
        if (v71 == v28)
        {
          goto LABEL_95;
        }

        LOWORD(v62) = *a2;
        v62 = LODWORD(v62);
        *&v67 = v28 / v62;
        *(&v67 + 1) = v70;
        *(v72 + 8 * v28++) = v67;
      }

      while (v4 + 1 != v28);
      v69 = v17 + v28;
      ++v68;
    }

    while (v68 != v26);
  }

  v73 = v118;
  if (*(a2 + 9) != 1)
  {
LABEL_72:
    v84 = v126;
    if (!v126)
    {
      goto LABEL_76;
    }

    v85 = v27;
    while (v85)
    {
      *v73 = vmulq_n_f32(*v73, *(a2 + 1));
      ++v73;
      --v85;
      if (!--v84)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_108;
  }

  v74 = re::internal::GeomAttributeManager::addAttribute(v129, "vertexNormal", 1, 7);
  v75 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v74);
  v77 = v126;
  if (v126)
  {
    a1 = v76;
    v78 = v27;
    v79 = v76;
    v80 = v118;
    while (v78)
    {
      if (!v79)
      {
        goto LABEL_112;
      }

      v81 = *v80++;
      v82 = vmulq_f32(v81, v81);
      *&v83 = v82.f32[2] + vaddv_f32(*v82.f32);
      *v82.f32 = vrsqrte_f32(v83);
      *v82.f32 = vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32)));
      *v75++ = vmulq_n_f32(v81, vmul_f32(*v82.f32, vrsqrts_f32(v83, vmul_f32(*v82.f32, *v82.f32))).f32[0]);
      --v79;
      --v78;
      if (!--v77)
      {
        goto LABEL_72;
      }
    }

LABEL_111:
    v136 = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v137 = 136315906;
    v138 = "operator[]";
    v139 = 1024;
    v140 = 621;
    v141 = 2048;
    v142 = v27;
    v143 = 2048;
    v144 = v27;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_112:
    v136 = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v137 = 136315906;
    v138 = "operator[]";
    v139 = 1024;
    v140 = 621;
    v141 = 2048;
    v142 = a1;
    v143 = 2048;
    v144 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v136 = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    v109 = v57;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v137 = 136315906;
    v138 = "operator[]";
    v139 = 1024;
    v140 = 621;
    v141 = 2048;
    v142 = v26;
    v143 = 2048;
    v144 = v109;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

LABEL_76:
  v86 = 0;
  v17 = v127[2];
  v87 = (v128 + 8);
  v88 = (v4 - 1) * (v4 + 1);
  do
  {
    if (v17 == v86)
    {
      goto LABEL_100;
    }

    *(v87 - 2) = v86;
    *(v87 - 1) = v4 + v86 + 1;
    *v87 = v4 + v86;
    v87[1] = -1;
    v87 += 4;
    ++v86;
  }

  while (v4 != v86);
  v89 = (*a2 - 1) * v4;
  v90 = v128;
  v91 = v4;
  do
  {
    a1 = v89;
    if (v17 <= v89)
    {
      goto LABEL_101;
    }

    v92 = (v90 + 16 * v89);
    *v92 = v88 - 1;
    v92[1] = v88;
    v92[2] = v4 + v88;
    v92[3] = -1;
    ++v89;
    ++v88;
    --v91;
  }

  while (v91);
  v93 = 0;
  v94 = 2 * v4;
  v95 = v4;
  v96 = v4;
  do
  {
    v97 = 0;
    v98 = v128;
    do
    {
      a1 = (v96 + v97);
      if (v17 <= a1)
      {
        goto LABEL_94;
      }

      v99 = (v98 + 16 * a1);
      *v99 = v95 + v97;
      v99[1] = v95 + v97 + 1;
      v99[2] = v94 + v97 + 2;
      v99[3] = v94 + v97++ + 1;
    }

    while (v4 != v97);
    ++v93;
    v94 += v113;
    v95 += v113;
    v96 += v97;
  }

  while (v93 != v4 - 2);
  v100 = re::GeomMesh::operator=(v112, &v126);
  if (*(a2 + 10) == 1)
  {
    re::internal::mergeVertexPositions(v100, v101);
  }

LABEL_89:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v129);
  result = v127[0];
  if (v127[0])
  {
    if (v128)
    {
      return (*(*v127[0] + 40))();
    }
  }

  return result;
}

void re::buildSphere(uint64_t a1, unsigned __int16 *a2)
{
  re::GeomMesh::GeomMesh(v4, 0);
  re::buildSphere(v4, a2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::add(a1, v4);
  re::GeomMesh::~GeomMesh(v4);
}

uint64_t re::internal::Callable<re::buildCylinder(re::GeomMesh &,re::GeomBuildCylinderOptions const&)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::operator()(uint64_t a1, float *a2, float *a3, float32x4_t *a4, float32x4_t *a5)
{
  v7 = *a3;
  v8 = *(a1 + 8);
  v25 = v8[1];
  v9 = v8[2];
  v10 = v8[3];
  v11 = v9 - v10;
  v12 = v10 + (*a3 * (v9 - v10));
  v13 = __sincosf_stret(*a2 * 6.2832);
  *&v14 = v13.__cosval * v12;
  v15 = (v7 * v25) + v25 * -0.5;
  *(&v14 + 1) = v15;
  v16.i32[1] = 0;
  v16.i32[3] = 0;
  v16.f32[0] = -v13.__sinval;
  v16.f32[2] = -v13.__cosval;
  v17.f32[0] = v13.__cosval * v11;
  v17.f32[1] = v25;
  v17.f32[2] = -(v13.__sinval * v11);
  v18 = vmulq_f32(v16, v16);
  *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  v20 = vrsqrte_f32(v19);
  v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(v16, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(v17, v17);
  v18.f32[0] = v23.f32[2] + vaddv_f32(*v23.f32);
  *v23.f32 = vrsqrte_f32(v18.u32[0]);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v23.f32, *v23.f32)));
  *a4 = v22;
  *a5 = vmulq_n_f32(v17, vmul_f32(*v23.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  return v14;
}

void *re::internal::Callable<re::buildCylinder(re::GeomMesh &,re::GeomBuildCylinderOptions const&)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02F48;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::buildCylinder(re::GeomMesh &,re::GeomBuildCylinderOptions const&)::$_0,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D02F48;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,re::Vector3<float> ()(float,float,re::Vector3<float>&,re::Vector3<float>&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::anonymous namespace::getOrAddVector3Attribute(uint64_t a1, char *a2, int a3)
{
  result = re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  if (!result)
  {

    return re::GeomMesh::addAttribute(a1, a2, a3, 7);
  }

  return result;
}

void *re::anonymous namespace::accessVector3Attribute(uint64_t a1, const char *a2)
{
  result = re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  if (result)
  {
    return re::GeomAttribute::accessValues<int>(result);
  }

  return result;
}

void *re::computeSmoothVertexNormals(re *this, re::GeomMesh *a2)
{
  v4 = this;
  v43 = *MEMORY[0x1E69E9840];
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexNormal");
  {
    v6 = result;
    v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(result);
    v9 = v8;
    v10 = re::GeomMesh::accessVertexPositions(v4);
    v12 = v11;
    v13 = *(v4 + 16);
    if (v13)
    {
      v14 = v9;
      v15 = *(v4 + 16);
      v16 = v7;
      while (v14)
      {
        *v16++ = 0uLL;
        --v14;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      *&v29 = 0;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v9;
      v36 = 2048;
      v37 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_28;
    }

LABEL_7:
    v27 = v6;
    v28 = v9;
    v17 = *(v4 + 40);
    if (*(v4 + 40))
    {
      v2 = 0;
      while (1)
      {
        v6 = *(v4 + 40);
        if (v6 <= v2)
        {
          break;
        }

        v29 = *(*(v4 + 56) + 16 * v2);
        v3 = HIDWORD(v29);
        if (HIDWORD(v29) == -1)
        {
          v3 = v29;
          if (v29 >= v9)
          {
            goto LABEL_30;
          }

          v20.i64[0] = v18;
          v20.i64[1] = v19;
          v7[v29] = vaddq_f32(v7[v29], v20);
          v3 = DWORD1(v29);
          if (DWORD1(v29) >= v9)
          {
            goto LABEL_32;
          }

          v7[DWORD1(v29)] = vaddq_f32(v7[DWORD1(v29)], v20);
          v3 = DWORD2(v29);
          if (DWORD2(v29) >= v9)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v23 = v29;
          if (v29 >= v9)
          {
            goto LABEL_31;
          }

          v20.i64[0] = v21;
          v20.i64[1] = v22;
          v7[v29] = vaddq_f32(v7[v29], v20);
          v6 = DWORD1(v29);
          if (DWORD1(v29) >= v9)
          {
            goto LABEL_33;
          }

          v7[DWORD1(v29)] = vaddq_f32(v7[DWORD1(v29)], v20);
          v6 = DWORD2(v29);
          if (DWORD2(v29) >= v9)
          {
            goto LABEL_34;
          }

          v7[DWORD2(v29)] = vaddq_f32(v7[DWORD2(v29)], v20);
          if (v3 >= v9)
          {
            goto LABEL_36;
          }
        }

        v7[v3] = vaddq_f32(v20, v7[v3]);
        if (++v2 == v17)
        {
          goto LABEL_20;
        }
      }

LABEL_29:
      *&v29 = 0;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 797;
      v34 = 2048;
      v35 = v2;
      v36 = 2048;
      v37 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v3;
      v36 = 2048;
      v37 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v23;
      v36 = 2048;
      v37 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v6 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v3;
      v36 = 2048;
      v37 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_34:
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v3;
      v36 = 2048;
      v37 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v3;
      v36 = 2048;
      v37 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_20:
    if (v13)
    {
      result = v27;
      v4 = v9;
      for (i = v9; i; --i)
      {
        v25 = vmulq_f32(*v7, *v7);
        *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
        *v25.f32 = vrsqrte_f32(v26);
        *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
        *v7 = vmulq_n_f32(*v7, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
        ++v7;
        if (!--v13)
        {
          return result;
        }
      }

LABEL_28:
      *&v29 = 0;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      v33 = 621;
      v34 = 2048;
      v35 = v4;
      v36 = 2048;
      v37 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_29;
    }

    return v27;
  }

  return result;
}

void *re::computeSmoothFaceVaryingNormals(re *this, re::GeomMesh *a2, float a3)
{
  v7 = this;
  v155 = *MEMORY[0x1E69E9840];
  if (re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexNormal"))
  {
    re::internal::GeomAttributeManager::deleteAttribute((v7 + 64), "vertexNormal");
  }

  v8 = &v118;
  v98 = 0;
  v9 = &v103;
  v95 = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v97 = 0;
  v90[1] = 0;
  v91 = 0;
  v90[0] = 0;
  v92 = 0;
  re::DynamicArray<re::GeomCell4>::resize(v90, *(v7 + 40));
  v10 = *(v7 + 40);
  if (*(v7 + 40))
  {
    v11 = v91;
    v12 = (v93 + 12);
    v13 = v91;
    do
    {
      if (!v13)
      {
        goto LABEL_197;
      }

      *v12 = -1;
      v12 += 4;
      v13 = (v13 - 1);
      --v10;
    }

    while (v10);
  }

  v14 = (v7 + 16);
  v15 = (*(v7 + 16) * 1.3);
  if (v95 < v15)
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(&v94, v15);
  }

  v119 = v7;
  v120[0] = 0;
  v120[1] = 0;
  v121 = 0;
  v129 = 0u;
  v130 = 0u;
  v132 = 0u;
  v133 = 0u;
  v123 = 0u;
  v124 = 0u;
  v122 = 0;
  v125 = 0;
  v126 = 0u;
  v127 = 0u;
  v131 = 0;
  v128 = 0;
  v135 = 0u;
  v136 = 0u;
  v134 = 0;
  v137 = 0;
  v139 = 0;
  v138 = 0;
  v140 = 0;
  v141 = 1;
  v143 = 0;
  v142 = 0;
  v144 = 0;
  v118 = cosf(a3);
  re::internal::GeomVertexConnectivity::buildVertexConnectivity((v7 + 16), &v103);
  re::DynamicArray<re::RigComponentConstraint>::operator=(&v126 + 8, &v103);
  re::DynamicArray<re::RigComponentConstraint>::operator=(&v129 + 8, &v108 + 8);
  v17 = *(&v132 + 1);
  if (*(&v132 + 1) && *(&v111 + 1) && *(&v132 + 1) != *(&v111 + 1))
  {
LABEL_214:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
  }

  *(&v132 + 1) = *(&v111 + 1);
  *(&v111 + 1) = v17;
  v18 = v133;
  v133 = v112;
  v112 = v18;
  v19 = v135;
  *&v135 = v114;
  *&v114 = v19;
  v20 = ++v113;
  ++v134;
  if (v17)
  {
    if (v19)
    {
      (*(*v17 + 40))(v17);
      v20 = v113;
    }

    *&v114 = 0;
    v112 = 0uLL;
    *(&v111 + 1) = 0;
    v113 = v20 + 1;
  }

  if (*(&v108 + 1))
  {
    if (v111)
    {
      (*(**(&v108 + 1) + 40))();
    }

    *&v111 = 0;
    v109 = 0uLL;
    *(&v108 + 1) = 0;
    ++v110;
  }

  v88 = v7;
  if (v103 && v108)
  {
    (*(*v103 + 40))();
  }

  v21 = *(v119 + 10);
  re::DynamicArray<re::Vector3<float>>::resize(&v123 + 8, v21);
  re::DynamicArray<re::Vector3<float>>::resize(v120, v21);
  v22 = re::GeomMesh::accessVertexPositions(v119);
  if (v21)
  {
    v7 = v22;
    v3 = v23;
    v24 = 0;
    v11 = 0;
    while (1)
    {
      v4 = *(v119 + 5);
      if (v4 <= v11)
      {
        goto LABEL_198;
      }

      *v100 = *(*(v119 + 7) + v24);
      v4 = v121;
      if (v121 <= v11)
      {
        break;
      }

      v4 = *(&v124 + 1);
      if (*(&v124 + 1) <= v11)
      {
        goto LABEL_200;
      }

      v25 = v123;
      v4 = v126;
      if (*&v100[12] == -1)
      {
      }

      else
      {
      }

      v28 = (v25 + 16 * v11);
      v29.i64[0] = v26;
      v29.i64[1] = v27;
      *v28 = v26;
      v28[1] = v27;
      v30 = vmulq_f32(v29, v29);
      v31 = v30.f32[2] + vaddv_f32(*v30.f32);
      if (v31 <= 0.0)
      {
        v35 = 0;
        v36 = 0;
      }

      else
      {
        v32 = v31;
        v33 = vrsqrte_f32(LODWORD(v31));
        v34 = vmul_f32(v33, vrsqrts_f32(LODWORD(v32), vmul_f32(v33, v33)));
        v37 = vmulq_n_f32(v29, vmul_f32(v34, vrsqrts_f32(LODWORD(v32), vmul_f32(v34, v34))).f32[0]);
        v36 = v37.i64[1];
        v35 = v37.i64[0];
      }

      v38 = (v4 + 16 * v11);
      *v38 = v35;
      v38[1] = v36;
      ++v11;
      v24 += 16;
      if (v21 == v11)
      {
        goto LABEL_35;
      }
    }

LABEL_199:
    *v145 = 0;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v152[0].n128_u32[0] = 136315906;
    *(v152[0].n128_u64 + 4) = "operator[]";
    v152[0].n128_u16[6] = 1024;
    *(&v152[0].n128_u32[3] + 2) = 789;
    v152[1].n128_u16[1] = 2048;
    *(v152[1].n128_u64 + 4) = v11;
    v152[1].n128_u16[6] = 2048;
    *(&v152[1].n128_u64[1] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_200:
    *v145 = 0;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v152[0].n128_u32[0] = 136315906;
    *(v152[0].n128_u64 + 4) = "operator[]";
    v152[0].n128_u16[6] = 1024;
    *(&v152[0].n128_u32[3] + 2) = 789;
    v152[1].n128_u16[1] = 2048;
    *(v152[1].n128_u64 + 4) = v11;
    v152[1].n128_u16[6] = 2048;
    *(&v152[1].n128_u64[1] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_201:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v11;
    v101 = 2048;
    *v102 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_202:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v11;
    v101 = 2048;
    *v102 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_203:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v7;
    v101 = 2048;
    *v102 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_204:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v7;
    v101 = 2048;
    *v102 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_205:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v7;
    v101 = 2048;
    *v102 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_206:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v11;
    v101 = 2048;
    *v102 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_207:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v7;
    v101 = 2048;
    *v102 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_208:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v9;
    v101 = 2048;
    *v102 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_209:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v3;
    v101 = 2048;
    *v102 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_210;
  }

LABEL_35:
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v117 = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0;
  v110 = 0;
  v111 = 0u;
  v112 = 0u;
  v114 = 0u;
  v115 = 0u;
  v113 = 0;
  v116 = 0;
  if (*v14)
  {
    for (i = 0; i < *v14; ++i)
    {
      ++v106;
      ++v110;
      ++v113;
      v105 = 0;
      *(&v109 + 1) = 0;
      *(&v112 + 1) = 0;
      *(&v115 + 1) = 0;
      ++v116;
      v11 = *(&v127 + 1);
      if (*(&v127 + 1) <= i)
      {
        goto LABEL_213;
      }

      v3 = *(v129 + 4 * i);
      re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(&v135 + 1, v3);
      if (v3)
      {
        v7 = 0;
        while (1)
        {
          v40 = re::internal::GeomVertexConnectivity::faceVertex((&v126 + 8), i, v7);
          v11 = *(&v136 + 1);
          if (*(&v136 + 1) <= v7)
          {
            break;
          }

          v41 = v138 + 8 * v7;
          *v41 = v40;
          *(v41 + 4) = BYTE4(v40);
          if (++v7 == v3)
          {
            goto LABEL_42;
          }
        }

LABEL_194:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 789;
        *&v100[18] = 2048;
        *&v100[20] = v7;
        v101 = 2048;
        *v102 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_195:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 797;
        *&v100[18] = 2048;
        *&v100[20] = v11;
        v101 = 2048;
        *v102 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_196:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        v8 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 797;
        *&v100[18] = 2048;
        *&v100[20] = v9;
        v101 = 2048;
        *v102 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_197:
        v152[0].n128_u64[0] = 0;
        *(v8 + 3) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 1) = 0u;
        *(v8 + 2) = 0u;
        *v8 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v103) = 136315906;
        *(v9 + 4) = "operator[]";
        WORD2(v104) = 1024;
        *(v9 + 14) = 789;
        WORD1(v105) = 2048;
        *(v9 + 20) = v11;
        v107 = 2048;
        *(v9 + 30) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_198:
        *v100 = 0;
        *(v9 + 48) = 0u;
        *(v9 + 64) = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 32) = 0u;
        *v9 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v152[0].n128_u32[0] = 136315906;
        *(v152[0].n128_u64 + 4) = "operator[]";
        v152[0].n128_u16[6] = 1024;
        *(&v152[0].n128_u32[3] + 2) = 797;
        v152[1].n128_u16[1] = 2048;
        *(v152[1].n128_u64 + 4) = v11;
        v152[1].n128_u16[6] = 2048;
        *(&v152[1].n128_u64[1] + 6) = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_199;
      }

LABEL_42:
      v42 = v144;
      v3 = DWORD2(v136);
      if ((BYTE8(v136) & 0x3F) != 0)
      {
        v43 = (DWORD2(v136) >> 6) + 1;
      }

      else
      {
        v43 = DWORD2(v136) >> 6;
      }

      v144 = DWORD2(v136);
      v152[0].n128_u64[0] = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v139, v43, v152);
      if (v3 && v42 > v3)
      {
        v44 = v144 & 0x3F;
        if ((v144 & 0x3F) != 0)
        {
          v45 = v44 == 63;
          v46 = -1 << v44;
          if (v45)
          {
            v47 = 63;
          }

          else
          {
            v47 = ~v46;
          }
        }

        else
        {
          v47 = 63;
        }

        v49 = &v142;
        if ((v141 & 1) == 0)
        {
          v49 = v143;
        }

        *&v49[v140 - 1] &= v47;
      }

      else if (!v3)
      {
        v48 = 1;
        goto LABEL_60;
      }

      for (j = 0; j != v3; ++j)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v139, j);
      }

      v48 = 0;
LABEL_60:
      if (v140)
      {
        v51 = v143;
        if (v141)
        {
          v51 = &v142;
        }

        v52 = &v51[v140];
        do
        {
          v53 = 0;
          do
          {
            v54 = *v51++;
            v55 = vcnt_s8(v54);
            v55.i16[0] = vaddlv_u8(v55);
            v53 += v55.u32[0];
          }

          while (v51 != v52);
          if (!v53)
          {
            break;
          }

          if (v48)
          {
            v7 = 0xFFFFFFFFLL;
          }

          else
          {
            v56 = 0;
            v7 = 0;
            v57 = -1.0;
            v11 = 0xFFFFFFFFLL;
            do
            {
              if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v139, v7))
              {
                v4 = *(&v136 + 1);
                if (*(&v136 + 1) <= v7)
                {
                  goto LABEL_189;
                }

                v4 = v121;
                v9 = *(v138 + v56);
                if (v121 <= v9)
                {
                  goto LABEL_190;
                }

                v58 = vmulq_f32(*(v123 + 16 * v9), *(v123 + 16 * v9));
                v59 = vaddv_f32(*v58.f32);
                if ((v58.f32[2] + v59) <= v57)
                {
                  v11 = v11;
                }

                else
                {
                  v57 = v58.f32[2] + v59;
                  v11 = v7;
                }
              }

              ++v7;
              v56 += 8;
            }

            while (v3 != v7);
            v7 = v11;
          }

          re::DynamicBitset<unsigned long long,64ul>::clearBit(&v139, v7);
          v11 = *(&v136 + 1);
          if (*(&v136 + 1) <= v7)
          {
            goto LABEL_203;
          }

          re::DynamicArray<int>::add(&v111 + 1, (v138 + 8 * v7));
          v11 = *(&v136 + 1);
          if (*(&v136 + 1) <= v7)
          {
            goto LABEL_204;
          }

          re::DynamicArray<unsigned char>::add(&v114 + 1, (v138 + 8 * v7 + 4));
          v11 = *(&v136 + 1);
          if (*(&v136 + 1) <= v7)
          {
            goto LABEL_205;
          }

          v60 = 8 * v7;
          v7 = v121;
          v11 = *(v138 + v60);
          if (v121 <= v11)
          {
            goto LABEL_206;
          }

          v89 = *(v123 + 16 * v11);
          if ((v48 & 1) == 0)
          {
            v4 = 0;
            v7 = 0;
            v61 = 1;
            while (1)
            {
              if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v139, v7))
              {
                v9 = *(&v136 + 1);
                if (*(&v136 + 1) <= v7)
                {
                  goto LABEL_191;
                }

                v5 = v121;
                v9 = *(v138 + v4);
                LODWORD(v99) = *(v138 + v4);
                if (v121 <= v11)
                {
                  goto LABEL_192;
                }

                v62 = vmulq_f32(*(v123 + 16 * v11), *(v123 + 16 * v11));
                if ((v62.f32[2] + vaddv_f32(*v62.f32)) > 0.0)
                {
                  if (v121 <= v9)
                  {
                    goto LABEL_193;
                  }

                  v63 = vmulq_f32(*(v123 + 16 * v9), *(v123 + 16 * v9));
                  if ((v63.f32[2] + vaddv_f32(*v63.f32)) > 0.0)
                  {
                    v5 = *(&v124 + 1);
                    if (*(&v124 + 1) <= v11)
                    {
                      goto LABEL_195;
                    }

                    if (*(&v124 + 1) <= v9)
                    {
                      goto LABEL_196;
                    }

                    v64 = vmulq_f32(*(v126 + 16 * v11), *(v126 + 16 * v9));
                    if ((v64.f32[2] + vaddv_f32(*v64.f32)) >= v118)
                    {
                      v5 = &v103;
                      re::DynamicArray<int>::add(&v111 + 1, &v99);
                      v9 = *(&v136 + 1);
                      if (*(&v136 + 1) <= v7)
                      {
                        goto LABEL_207;
                      }

                      re::DynamicArray<unsigned char>::add(&v114 + 1, (v138 + v4 + 4));
                      v9 = v99;
                      v5 = v121;
                      if (v121 <= v99)
                      {
                        goto LABEL_208;
                      }

                      v89 = vaddq_f32(v89, *(v123 + 16 * v99));
                      re::DynamicBitset<unsigned long long,64ul>::clearBit(&v139, v7);
                      ++v61;
                    }
                  }
                }
              }

              ++v7;
              v4 += 8;
              if (v3 == v7)
              {
                goto LABEL_98;
              }
            }
          }

          v61 = 1;
LABEL_98:
          v65 = DWORD2(v109);
          if (DWORD2(v109))
          {
            v11 = (DWORD2(v109) - 1);
            v7 = v105;
            if (v105 <= v11)
            {
              goto LABEL_212;
            }

            v65 = *(v108 + 4 * v11);
          }

          v152[0].n128_u32[0] = v65 + v61;
          re::DynamicArray<int>::add(&v103, v152);
          v66 = vmulq_f32(v89, v89);
          *&v67 = v66.f32[2] + vaddv_f32(*v66.f32);
          *v66.f32 = vrsqrte_f32(v67);
          *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32)));
          v152[0] = vmulq_n_f32(v89, vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32))).f32[0]);
          re::DynamicArray<re::Vector3<float>>::add((&v108 + 8), v152);
          v51 = v143;
          if (v141)
          {
            v51 = &v142;
          }

          v52 = &v51[v140];
        }

        while (v140);
      }

      v7 = *(&v109 + 1);
      if (DWORD2(v109))
      {
        v11 = 0;
        while (1)
        {
          if (v7 <= v11)
          {
            goto LABEL_201;
          }

          v68 = v96;
          re::DynamicArray<re::Vector3<float>>::add(&v94, (v111 + 16 * v11));
          v7 = v105;
          if (v11)
          {
            v3 = v11 - 1;
            if (v105 <= v11 - 1)
            {
              goto LABEL_209;
            }

            v69 = *(v108 + 4 * v3);
          }

          else
          {
            v69 = 0;
          }

          if (v105 <= v11)
          {
            goto LABEL_202;
          }

          v70 = *(v108 + 4 * v11);
          if (v69 < v70)
          {
            break;
          }

LABEL_124:
          ++v11;
          v7 = *(&v109 + 1);
          if (v11 >= DWORD2(v109))
          {
            goto LABEL_125;
          }
        }

        v7 = *(&v112 + 1);
        v3 = *(&v115 + 1);
        if (*(&v112 + 1) <= v69)
        {
          v4 = v69;
        }

        else
        {
          v4 = *(&v112 + 1);
        }

        if (*(&v115 + 1) <= v69)
        {
          v71 = v69;
        }

        else
        {
          v71 = *(&v115 + 1);
        }

        v72 = (v114 + 4 * v69);
        v9 = v91;
        v73 = v93;
        v74 = (v117 + v69);
        v75 = v70 - v69;
        v76 = v71 - v69;
        v77 = v4 - v69;
        while (v77)
        {
          if (!v76)
          {
            goto LABEL_187;
          }

          v5 = *v72;
          if (v9 <= v5)
          {
            goto LABEL_188;
          }

          v78 = *v74++;
          *(v73 + 16 * v5 + 4 * v78) = v68;
          ++v72;
          --v76;
          --v77;
          if (!--v75)
          {
            goto LABEL_124;
          }
        }

        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 789;
        *&v100[18] = 2048;
        *&v100[20] = v4;
        v101 = 2048;
        *v102 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_187:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 789;
        *&v100[18] = 2048;
        *&v100[20] = v71;
        v101 = 2048;
        *v102 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_188:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 789;
        *&v100[18] = 2048;
        *&v100[20] = v5;
        v101 = 2048;
        *v102 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_189:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 789;
        *&v100[18] = 2048;
        *&v100[20] = v7;
        v101 = 2048;
        *v102 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_190:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 789;
        *&v100[18] = 2048;
        *&v100[20] = v9;
        v101 = 2048;
        *v102 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_191:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 789;
        *&v100[18] = 2048;
        *&v100[20] = v7;
        v101 = 2048;
        *v102 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_192:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 797;
        *&v100[18] = 2048;
        *&v100[20] = v11;
        v101 = 2048;
        *v102 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_193:
        *v145 = 0;
        v153 = 0u;
        v154 = 0u;
        memset(v152, 0, sizeof(v152));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v100 = 136315906;
        *&v100[4] = "operator[]";
        *&v100[12] = 1024;
        *&v100[14] = 797;
        *&v100[18] = 2048;
        *&v100[20] = v9;
        v101 = 2048;
        *v102 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_194;
      }

LABEL_125:
      ;
    }
  }

  *&v102[2] = 0;
  memset(v100, 0, sizeof(v100));
  re::DynamicArray<float>::resize(v100, *(v88 + 40));
  v79 = *(v88 + 40);
  if (*(v88 + 40))
  {
    v80 = 0;
    v11 = *&v100[16];
    v81 = *&v102[2];
    while (v11 != v80)
    {
      *(v81 + 4 * v80) = v80;
      if (v79 == ++v80)
      {
        goto LABEL_130;
      }
    }

LABEL_210:
    v99 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    v146 = 1024;
    v147 = 789;
    v148 = 2048;
    v149 = v11;
    v150 = 2048;
    v151 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_211:
    v99 = 0;
    i = v145;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v145 = 136315906;
    *&v145[4] = "operator[]";
    v146 = 1024;
    v147 = 621;
    v148 = 2048;
    v149 = v11;
    v150 = 2048;
    v151 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_212:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 789;
    *&v100[18] = 2048;
    *&v100[20] = v11;
    v101 = 2048;
    *v102 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_213:
    *v145 = 0;
    v153 = 0u;
    v154 = 0u;
    memset(v152, 0, sizeof(v152));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    *&v100[12] = 1024;
    *&v100[14] = 797;
    *&v100[18] = 2048;
    *&v100[20] = i;
    v101 = 2048;
    *v102 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_214;
  }

LABEL_130:
  v82 = re::GeomMesh::addFaceVaryingAttribute(v88, "vertexNormal", 7, v96, v90, v100);
  v83 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v82);
  if (v96)
  {
    v85 = 0;
    v11 = v84;
    while (v85 != v84)
    {
      *(v83 + 16 * v85) = *(v98 + 16 * v85);
      if (v96 <= ++v85)
      {
        goto LABEL_134;
      }
    }

    goto LABEL_211;
  }

LABEL_134:
  if (*v100 && *&v102[2])
  {
    (*(**v100 + 40))();
  }

  if (*(&v114 + 1))
  {
    if (v117)
    {
      (*(**(&v114 + 1) + 40))();
    }

    v117 = 0;
    v115 = 0uLL;
    *(&v114 + 1) = 0;
    ++v116;
  }

  if (*(&v111 + 1))
  {
    if (v114)
    {
      (*(**(&v111 + 1) + 40))();
    }

    *&v114 = 0;
    v112 = 0uLL;
    *(&v111 + 1) = 0;
    ++v113;
  }

  if (*(&v108 + 1))
  {
    if (v111)
    {
      (*(**(&v108 + 1) + 40))();
    }

    *&v111 = 0;
    v109 = 0uLL;
    *(&v108 + 1) = 0;
    ++v110;
  }

  if (v103 && v108)
  {
    (*(*v103 + 40))();
  }

  if (v139)
  {
    v86 = v141;
    if ((v141 & 1) == 0)
    {
      (*(*v139 + 40))();
      v86 = v141;
    }

    v139 = 0;
    v140 = 0;
    v141 = (v86 | 1) + 2;
  }

  if (*(&v135 + 1))
  {
    if (v138)
    {
      (*(**(&v135 + 1) + 40))();
    }

    v138 = 0;
    v136 = 0uLL;
    *(&v135 + 1) = 0;
    ++v137;
  }

  if (*(&v132 + 1))
  {
    if (v135)
    {
      (*(**(&v132 + 1) + 40))();
    }

    *&v135 = 0;
    v133 = 0uLL;
    *(&v132 + 1) = 0;
    ++v134;
  }

  if (*(&v129 + 1))
  {
    if (v132)
    {
      (*(**(&v129 + 1) + 40))();
    }

    *&v132 = 0;
    v130 = 0uLL;
    *(&v129 + 1) = 0;
    ++v131;
  }

  if (*(&v126 + 1))
  {
    if (v129)
    {
      (*(**(&v126 + 1) + 40))();
    }

    *&v129 = 0;
    v127 = 0uLL;
    *(&v126 + 1) = 0;
    ++v128;
  }

  if (*(&v123 + 1))
  {
    if (v126)
    {
      (*(**(&v123 + 1) + 40))();
    }

    *&v126 = 0;
    v124 = 0uLL;
    *(&v123 + 1) = 0;
    ++v125;
  }

  if (v120[0] && v123)
  {
    (*(*v120[0] + 40))();
  }

  if (v90[0] && v93)
  {
    (*(*v90[0] + 40))();
  }

  if (v94 && v98)
  {
    (*(*v94 + 40))();
  }

  return v82;
}

uint64_t re::computeVertexTangentsAndBitangentsInternal(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float32x4_t *a5, int *a6)
{
  v207 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v11 = a2;
    v12 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
    v14 = v13;
    v15 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a5);
    a5 = v15;
    v17 = v16;
    if (*(a1 + 16))
    {
      v18 = 0;
      v19 = v14;
      v6 = v16;
      while (v14 != v18)
      {
        v20 = &v12[v18];
        v20->i64[0] = 0;
        v20->i64[1] = 0;
        if (v16 == v18)
        {
          goto LABEL_182;
        }

        v21 = (v15 + 16 * v18);
        *v21 = 0;
        v21[1] = 0;
        if (++v18 >= *(a1 + 16))
        {
          goto LABEL_7;
        }
      }

      goto LABEL_181;
    }

LABEL_7:
    v22 = 0;
    if (a3 && (a6[1] & 1) != 0)
    {
      v22 = *(a3 + 16) == 1;
    }

    v167 = v22;
    v23 = re::GeomMesh::accessVertexPositions(a1);
    v172 = v24;
    v11 = re::GeomAttribute::accessValues<int>(v11);
    v171 = v25;
    *&v193[32] = 0;
    memset(v193, 0, 28);
    v26 = *(a1 + 16);
    v202.i32[0] = 0;
    re::DynamicArray<float>::resize(v193, v26, &v202, v27);
    v6 = *(a1 + 40);
    if (!v6)
    {
LABEL_35:
      v69 = *(a1 + 16);
      if (v69)
      {
        v70 = 0;
        v11 = v17;
        v6 = v14;
        v7 = *&v193[16];
        while (v7 != v70)
        {
          v71 = *(*&v193[32] + 4 * v70);
          if (v71 > 0.0)
          {
            if (v70 >= v14)
            {
              goto LABEL_191;
            }

            v72 = 1.0 / v71;
            v12[v70] = vmulq_n_f32(v12[v70], v72);
            if (v70 >= v17)
            {
              goto LABEL_192;
            }

            a5[v70] = vmulq_n_f32(a5[v70], v72);
            v69 = *(a1 + 16);
          }

          if (++v70 >= v69)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_183;
      }

LABEL_43:
      v73 = *a6;
      if (*a6 != 2)
      {
        if (v167)
        {
          v123 = re::GeomAttribute::accessValues<int>(a3);
          v125 = *(a1 + 16);
          if (v125)
          {
            v82 = v14;
            v11 = v124;
            v6 = v17;
            v126 = v14;
            v127 = v124;
            v128 = v12;
            v129 = v17;
            v130 = a5;
            while (v126)
            {
              if (!v127)
              {
                goto LABEL_201;
              }

              v131 = vmulq_f32(*v128, *v123);
              *v128 = vsubq_f32(*v128, vmulq_n_f32(*v123, v131.f32[2] + vaddv_f32(*v131.f32)));
              if (!v129)
              {
                goto LABEL_202;
              }

              v132 = *v123++;
              v133 = vmulq_f32(*v130, v132);
              *v130 = vsubq_f32(*v130, vmulq_n_f32(v132, v133.f32[2] + vaddv_f32(*v133.f32)));
              ++v130;
              --v129;
              ++v128;
              --v127;
              --v126;
              if (!--v125)
              {
                goto LABEL_147;
              }
            }

            goto LABEL_199;
          }

LABEL_147:
          v73 = *a6;
        }

        if (v73 == 1)
        {
          v134 = *(a1 + 16);
          if (v134)
          {
            v82 = v14;
            v17 = v17;
            v135 = v14;
            v136 = v17;
            while (v135)
            {
              v137 = *v12;
              v138 = vmulq_f32(v137, v137);
              v139 = v138.f32[2] + vaddv_f32(*v138.f32);
              if (fabsf(v139) < 1.0e-10)
              {
                v143 = 0;
                v144 = 0;
              }

              else
              {
                v140 = v139;
                v141 = vrsqrte_f32(LODWORD(v139));
                v142 = vmul_f32(v141, vrsqrts_f32(LODWORD(v140), vmul_f32(v141, v141)));
                v145 = vmulq_n_f32(v137, vmul_f32(v142, vrsqrts_f32(LODWORD(v140), vmul_f32(v142, v142))).f32[0]);
                v144 = v145.i64[1];
                v143 = v145.i64[0];
              }

              v12->i64[0] = v143;
              v12->i64[1] = v144;
              if (!v136)
              {
                goto LABEL_200;
              }

              v146 = *a5;
              v147 = vmulq_f32(v146, v146);
              v148 = v147.f32[2] + vaddv_f32(*v147.f32);
              if (fabsf(v148) < 1.0e-10)
              {
                v152 = 0;
                v153 = 0;
              }

              else
              {
                v149 = v148;
                v150 = vrsqrte_f32(LODWORD(v148));
                v151 = vmul_f32(v150, vrsqrts_f32(LODWORD(v149), vmul_f32(v150, v150)));
                v154 = vmulq_n_f32(v146, vmul_f32(v151, vrsqrts_f32(LODWORD(v149), vmul_f32(v151, v151))).f32[0]);
                v153 = v154.i64[1];
                v152 = v154.i64[0];
              }

              a5->i64[0] = v152;
              a5->i64[1] = v153;
              ++a5;
              --v136;
              ++v12;
              --v135;
              if (!--v134)
              {
                goto LABEL_175;
              }
            }

            goto LABEL_198;
          }
        }

LABEL_175:
        v120 = *v193;
        if (!*v193)
        {
          return 1;
        }

        v121 = *&v193[32];
        if (!*&v193[32])
        {
          return 1;
        }

        goto LABEL_177;
      }

      if (a3)
      {
        v75 = re::GeomAttribute::accessValues<int>(a3);
        goto LABEL_165;
      }

LABEL_164:
      v75 = 0;
      v74 = -1;
LABEL_165:
      if (v74 == v14)
      {
        if (v14)
        {
          v14 = v14;
          v82 = v17;
          v17 = v17;
          while (v17)
          {
            --v17;
            if (!--v14)
            {
              goto LABEL_175;
            }
          }

          goto LABEL_196;
        }
      }

      else if (v14)
      {
        v155 = v14;
        v82 = v17;
        v17 = v17;
        while (v17)
        {
          v14 = &v12[1];
          v11 = &a5[1];
          v156 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a5, *a5), *a5, 0xCuLL), vnegq_f32(*v12)), *a5, vextq_s8(vuzp1q_s32(*v12, *v12), *v12, 0xCuLL));
          v157 = vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL);
          v158 = vmulq_f32(v156, v156);
          *&v159 = v158.f32[1] + (v158.f32[2] + v158.f32[0]);
          *v158.f32 = vrsqrte_f32(v159);
          *v158.f32 = vmul_f32(*v158.f32, vrsqrts_f32(v159, vmul_f32(*v158.f32, *v158.f32)));
          v202 = vmulq_n_f32(v157, vmul_f32(*v158.f32, vrsqrts_f32(v159, vmul_f32(*v158.f32, *v158.f32))).f32[0]);
          --v17;
          ++v12;
          ++a5;
          if (!--v155)
          {
            goto LABEL_175;
          }
        }

        goto LABEL_197;
      }

      goto LABEL_175;
    }

    v28 = v23;
    v29 = 0;
LABEL_12:
    if (v6 <= v29)
    {
      goto LABEL_184;
    }

    v186 = *(*(a1 + 56) + 16 * v29);
    v30 = v186;
    v31 = v172;
    if (v186 >= v172)
    {
      goto LABEL_185;
    }

    v6 = DWORD1(v186);
    if (DWORD1(v186) >= v172)
    {
      goto LABEL_186;
    }

    v7 = DWORD2(v186);
    if (DWORD2(v186) >= v172)
    {
      goto LABEL_187;
    }

    v32 = v171;
    if (v186 >= v171)
    {
      goto LABEL_188;
    }

    if (DWORD1(v186) >= v171)
    {
      goto LABEL_189;
    }

    if (DWORD2(v186) >= v171)
    {
      goto LABEL_190;
    }

    v8 = HIDWORD(v186);
    if (HIDWORD(v186) == -1)
    {
      v54 = *(v28 + 16 * v186);
      v55 = vsubq_f32(*(v28 + 16 * DWORD1(v186)), v54);
      v56 = vsubq_f32(*(v28 + 16 * DWORD2(v186)), v54);
      v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vnegq_f32(v55)), v56, vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL));
      v58 = vmulq_f32(v57, v57);
      v62 = *(v11 + 8 * DWORD1(v186));
      v59 = *(v11 + 8 * v186);
      v42 = sqrtf(v58.f32[1] + (v58.f32[2] + v58.f32[0]));
      v60 = vsub_f32(v62, v59);
      v61 = vsub_f32(*(v11 + 8 * DWORD2(v186)), v59);
      v62.f32[0] = (-v60.f32[1] * v61.f32[0]) + (v60.f32[0] * v61.f32[1]);
      if ((v62.f32[0] * v62.f32[0]) > 0.0)
      {
        v63 = vdupq_lane_s32(v62, 0);
        v51 = vdivq_f32(vsubq_f32(vmulq_lane_f32(v55, v61, 1), vmulq_lane_f32(v56, v60, 1)), v63);
        v52 = vdivq_f32(vsubq_f32(vmulq_n_f32(v56, v60.f32[0]), vmulq_n_f32(v55, v61.f32[0])), v63);
        v53 = 3;
        goto LABEL_29;
      }

      v52 = 0uLL;
      v53 = 3;
    }

    else
    {
      if (HIDWORD(v186) >= v172)
      {
        goto LABEL_193;
      }

      if (HIDWORD(v186) >= v171)
      {
        goto LABEL_194;
      }

      v33 = *(v28 + 16 * HIDWORD(v186));
      v34 = *(v28 + 16 * DWORD1(v186));
      v35 = *(v28 + 16 * DWORD2(v186));
      v36 = *(v28 + 16 * v186);
      v37 = vsubq_f32(v33, v34);
      v38 = vsubq_f32(v35, v36);
      v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
      v40 = vmulq_f32(v39, v39);
      v41 = *(v11 + 8 * v186);
      v47 = *(v11 + 8 * DWORD1(v186));
      v42 = sqrtf(v40.f32[1] + (v40.f32[2] + v40.f32[0]));
      v43 = *(v11 + 8 * DWORD2(v186));
      v44 = *(v11 + 8 * HIDWORD(v186));
      v45 = vsub_f32(vadd_f32(vsub_f32(v47, v41), v43), v44);
      v46 = vsub_f32(vadd_f32(v43, vsub_f32(v44, v41)), v47);
      v47.f32[0] = (-v45.f32[1] * v46.f32[0]) + (v45.f32[0] * v46.f32[1]);
      if ((v47.f32[0] * v47.f32[0]) > 0.0)
      {
        v48 = vsubq_f32(vaddq_f32(v35, vsubq_f32(v33, v36)), v34);
        v49 = vsubq_f32(vaddq_f32(v35, vsubq_f32(v34, v36)), v33);
        v50 = vdupq_lane_s32(v47, 0);
        v51 = vdivq_f32(vsubq_f32(vmulq_lane_f32(v49, v46, 1), vmulq_lane_f32(v48, v45, 1)), v50);
        v52 = vdivq_f32(vsubq_f32(vmulq_n_f32(v48, v45.f32[0]), vmulq_n_f32(v49, v46.f32[0])), v50);
        v53 = 4;
        goto LABEL_29;
      }

      v52 = 0uLL;
      v53 = 4;
    }

    v51 = 0uLL;
LABEL_29:
    v64 = 0;
    v65 = v42 * 0.5;
    v66 = vmulq_n_f32(v51, v65);
    v67 = vmulq_n_f32(v52, v65);
    v7 = *&v193[16];
    v68 = 4 * v53;
    while (1)
    {
      v6 = *(&v186 + v64);
      if (v7 <= v6)
      {
        break;
      }

      *(*&v193[32] + 4 * v6) = v65 + *(*&v193[32] + 4 * v6);
      if (v6 >= v14)
      {
        goto LABEL_162;
      }

      v12[v6] = vaddq_f32(v66, v12[v6]);
      if (v6 >= v17)
      {
        goto LABEL_163;
      }

      a5[v6] = vaddq_f32(v67, a5[v6]);
      v64 += 4;
      if (v68 == v64)
      {
        ++v29;
        v6 = *(a1 + 40);
        if (v29 >= v6)
        {
          goto LABEL_35;
        }

        goto LABEL_12;
      }
    }

    v178[0] = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    *&v190[14] = 789;
    *&v190[18] = 2048;
    *&v190[20] = v6;
    v191 = 2048;
    *v192 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_162:
    v178[0] = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    *&v190[14] = 621;
    *&v190[18] = 2048;
    *&v190[20] = v6;
    v191 = 2048;
    *v192 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_163:
    v178[0] = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    *&v190[14] = 621;
    *&v190[18] = 2048;
    *&v190[20] = v6;
    v191 = 2048;
    *v192 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_164;
  }

  if (!a3 || *(a3 + 16) != 1)
  {
    return 0;
  }

  *v193 = 0;
  *&v193[8] = 0;
  *&v193[16] = 1;
  *&v193[24] = 0;
  *&v193[32] = 0;
  v76 = *(a1 + 16);
  if ((v76 & 0x3F) != 0)
  {
    v77 = (v76 >> 6) + 1;
  }

  else
  {
    v77 = v76 >> 6;
  }

  v194 = *(a1 + 16);
  v202.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v193, v77, &v202);
  v78 = a1;
  if (*(a1 + 16))
  {
    v79 = 0;
    do
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v193, v79);
      v78 = a1;
      ++v79;
    }

    while (v79 < *(a1 + 16));
  }

  *&v192[2] = 0;
  memset(v190, 0, sizeof(v190));
  v189 = 0;
  v187 = 0;
  v186 = 0uLL;
  v188 = 0;
  v80 = v78;
  re::computeVertexFaceConnectivity(v78, v190, &v186);
  v181 = 0;
  v178[1] = 0;
  v179 = 0;
  v178[0] = 0;
  v180 = 0;
  re::DynamicArray<float>::resize(v178, *(v80 + 16));
  v177 = 0;
  v174[1] = 0;
  v175 = 0;
  v174[0] = 0;
  v176 = 0;
  v81 = *&v193[8];
  if ((*&v193[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v82 = &v193[24];
    v83 = *&v193[32];
    if (v193[16])
    {
      v83 = &v193[24];
    }

    v6 = 2139095040;
    do
    {
      v84 = 0;
      while (1)
      {
        v86 = *v83;
        v83 += 8;
        v85 = v86;
        if (v86)
        {
          break;
        }

        v84 -= 64;
        if (!--v81)
        {
          goto LABEL_97;
        }
      }

      v87 = __clz(__rbit64(v85));
      if (v87 + 1 == v84)
      {
        break;
      }

      v14 = v87 - v84;
      v17 = 0xFFFFFFFFLL;
      v88 = -1;
      do
      {
        v11 = v14;
        v7 = v187;
        if (v187 <= v14)
        {
          goto LABEL_195;
        }

        if (v14)
        {
          v8 = (v14 - 1);
          if (v187 <= v8)
          {
            goto LABEL_207;
          }

          v89 = *(v189 + 4 * v8);
        }

        else
        {
          v89 = 0;
        }

        v90 = *(v189 + 4 * v14) - v89;
        if (v90)
        {
          if (v17 == -1 || v90 < v88)
          {
            v88 = v90;
            v17 = v14;
          }

          else
          {
            v17 = v17;
          }
        }

        else
        {
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v193, v14);
        }

        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v193, v14 + 1);
        v14 = FirstBitSet;
      }

      while (v88 >= 2 && FirstBitSet != -1);
      if (v17 == -1)
      {
        break;
      }

      re::DynamicBitset<unsigned long long,64ul>::clearBit(v193, v17);
      v202.i64[0] = *&v192[2];
      v202.i64[1] = *&v190[16];
      *v183 = v189;
      *&v183[8] = v187;
      re::computeManhattanDistanceToVertex(a1, v17, &v202, v183, v174, v95);
      v14 = v175;
      if (v175)
      {
        v17 = 0;
        v96 = 1;
        v97 = v177;
        do
        {
          if (*(v97 + 4 * v17) != INFINITY)
          {
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v193, v17);
            v14 = v175;
            if (v175 <= v17)
            {
              goto LABEL_209;
            }

            v11 = v179;
            if (v179 <= v17)
            {
LABEL_210:
              *v195 = 0;
              v205 = 0u;
              v206 = 0u;
              v203 = 0u;
              v204 = 0u;
              v202 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v183 = 136315906;
              *&v183[4] = "operator[]";
              *&v183[12] = 1024;
              *&v183[14] = 789;
              *&v183[18] = 2048;
              *&v183[20] = v17;
              v184 = 2048;
              *v185 = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v97 = v177;
            *(v181 + 4 * v17) = *(v177 + 4 * v17);
          }

          v17 = v96;
        }

        while (v14 > v96++);
      }

      v83 = (v193[16] & 1) != 0 ? &v193[24] : *&v193[32];
      v81 = *&v193[8];
    }

    while ((*&v193[8] & 0x3FFFFFFFFFFFFFFLL) != 0);
  }

LABEL_97:
  *&v185[2] = 0;
  memset(v183, 0, sizeof(v183));
  v202.i64[0] = v181;
  v202.i64[1] = v179;
  re::computeGradientField(a1, &v202, v183);
  v99 = re::GeomAttribute::accessValues<int>(a3);
  LODWORD(v17) = v100;
  v101 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
  LODWORD(v14) = v102;
  v103 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a5);
  if (*(a1 + 16))
  {
    a5 = 0;
    v17 = v17;
    v14 = v14;
    v11 = v104;
    while (1)
    {
      if (a5 == v17)
      {
        goto LABEL_203;
      }

      if (a5 == v14)
      {
        goto LABEL_204;
      }

      if (a5 == v104)
      {
        goto LABEL_205;
      }

      v105 = (v101 + 16 * a5);
      *v105 = 0;
      v105[1] = 0;
      v6 = v187;
      if (a5)
      {
        v7 = &a5[-1].u64[1] + 7;
        if (v187 <= &a5[-1].u64[1] + 7)
        {
          goto LABEL_208;
        }

        v7 = *(v189 + 4 * v7);
      }

      else
      {
        v7 = 0;
      }

      if (v187 <= a5)
      {
        goto LABEL_206;
      }

      v106 = *(v189 + 4 * a5);
      v107 = 0uLL;
      if (v7 < v106)
      {
        while (1)
        {
          v6 = *&v190[16];
          if (*&v190[16] <= v7)
          {
            break;
          }

          v6 = *(*&v192[2] + 4 * v7);
          v8 = *&v183[16];
          if (*&v183[16] <= v6)
          {
            goto LABEL_180;
          }

          v107 = vaddq_f32(v107, *(*&v185[2] + 16 * v6));
          *(v101 + 16 * a5) = v107;
          if (v106 == ++v7)
          {
            goto LABEL_111;
          }
        }

        v182 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        v196 = 1024;
        v197 = 789;
        v198 = 2048;
        v199 = v7;
        v200 = 2048;
        v201 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_180:
        v182 = 0;
        v19 = &v186;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        v196 = 1024;
        v197 = 789;
        v198 = 2048;
        v199 = v6;
        v200 = 2048;
        v201 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_181:
        *v190 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v193 = 136315906;
        *&v193[4] = "operator[]";
        *&v193[12] = 1024;
        *&v193[14] = 621;
        *&v193[18] = 2048;
        *&v193[20] = v19;
        *&v193[28] = 2048;
        *&v193[30] = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_182:
        *v190 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v193 = 136315906;
        *&v193[4] = "operator[]";
        *&v193[12] = 1024;
        *&v193[14] = 621;
        *&v193[18] = 2048;
        *&v193[20] = v6;
        *&v193[28] = 2048;
        *&v193[30] = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_183:
        *&v186 = 0;
        v29 = &v186;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 789;
        *&v190[18] = 2048;
        *&v190[20] = v7;
        v191 = 2048;
        *v192 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_184:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 797;
        *&v190[18] = 2048;
        *&v190[20] = v29;
        v191 = 2048;
        *v192 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_185:
        v178[0] = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v160 = v31;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v30;
        v191 = 2048;
        *v192 = v160;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_186:
        v178[0] = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v161 = v31;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v6;
        v191 = 2048;
        *v192 = v161;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_187:
        v178[0] = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v162 = v31;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v7;
        v191 = 2048;
        *v192 = v162;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_188:
        v178[0] = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        a5 = v32;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v30;
        v191 = 2048;
        *v192 = a5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_189:
        v178[0] = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v163 = v32;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v6;
        v191 = 2048;
        *v192 = v163;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_190:
        v178[0] = 0;
        v70 = &v186;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v164 = v32;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v7;
        v191 = 2048;
        *v192 = v164;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_191:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v70;
        v191 = 2048;
        *v192 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_192:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v70;
        v191 = 2048;
        *v192 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_193:
        v178[0] = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v165 = v31;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v8;
        v191 = 2048;
        *v192 = v165;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_194:
        v178[0] = 0;
        v82 = &v186;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        v166 = v32;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v8;
        v191 = 2048;
        *v192 = v166;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_195:
        *v195 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v183 = 136315906;
        *&v183[4] = "operator[]";
        *&v183[12] = 1024;
        *&v183[14] = 789;
        *&v183[18] = 2048;
        *&v183[20] = v11;
        v184 = 2048;
        *v185 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_196:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v82;
        v191 = 2048;
        *v192 = v82;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_197:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v82;
        v191 = 2048;
        *v192 = v82;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_198:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v82;
        v191 = 2048;
        *v192 = v82;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_199:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v82;
        v191 = 2048;
        *v192 = v82;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_200:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v17;
        v191 = 2048;
        *v192 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_201:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 613;
        *&v190[18] = 2048;
        *&v190[20] = v11;
        v191 = 2048;
        *v192 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_202:
        *&v186 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v190 = 136315906;
        *&v190[4] = "operator[]";
        *&v190[12] = 1024;
        *&v190[14] = 621;
        *&v190[18] = 2048;
        *&v190[20] = v6;
        v191 = 2048;
        *v192 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_203:
        v182 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        v196 = 1024;
        v197 = 613;
        v198 = 2048;
        v199 = v17;
        v200 = 2048;
        v201 = v17;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_204:
        v182 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        v196 = 1024;
        v197 = 621;
        v198 = 2048;
        v199 = v14;
        v200 = 2048;
        v201 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_205:
        v182 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        v196 = 1024;
        v197 = 621;
        v198 = 2048;
        v199 = v11;
        v200 = 2048;
        v201 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_206:
        v182 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        v196 = 1024;
        v197 = 789;
        v198 = 2048;
        v199 = a5;
        v200 = 2048;
        v201 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_207:
        *v195 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v183 = 136315906;
        *&v183[4] = "operator[]";
        *&v183[12] = 1024;
        *&v183[14] = 789;
        *&v183[18] = 2048;
        *&v183[20] = v8;
        v184 = 2048;
        *v185 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_208:
        v182 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        v196 = 1024;
        v197 = 789;
        v198 = 2048;
        v199 = v7;
        v200 = 2048;
        v201 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_209:
        *v195 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v202 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v183 = 136315906;
        *&v183[4] = "operator[]";
        *&v183[12] = 1024;
        *&v183[14] = 789;
        *&v183[18] = 2048;
        *&v183[20] = v17;
        v184 = 2048;
        *v185 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_210;
      }

LABEL_111:
      v108 = *(v99 + 16 * a5);
      v109 = vmulq_f32(v107, v108);
      v110 = vsubq_f32(v107, vmulq_n_f32(v108, v109.f32[2] + vaddv_f32(*v109.f32)));
      *(v101 + 16 * a5) = v110;
      v111 = vmulq_f32(v110, v110);
      v112 = sqrtf(v111.f32[2] + vaddv_f32(*v111.f32));
      if (v112 > 0.00001)
      {
        break;
      }

      v114 = *(v99 + 16 * a5);
      v115 = vmulq_f32(v114, v114);
      if ((v115.f32[2] + vaddv_f32(*v115.f32)) > 0.0)
      {
        if (fabsf(v114.f32[2]) >= 0.00001)
        {
          v116.i32[0] = 0;
          v116.f32[1] = -v114.f32[2];
          v116.i64[1] = v114.u32[1];
        }

        else
        {
          v116 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v114.f32[1]), v114);
        }

        v117 = vmulq_f32(v116, v116);
        *&v118 = v117.f32[2] + vaddv_f32(*v117.f32);
        *v117.f32 = vrsqrte_f32(v118);
        *v117.f32 = vmul_f32(*v117.f32, vrsqrts_f32(v118, vmul_f32(*v117.f32, *v117.f32)));
        v113 = vmulq_n_f32(v116, vmul_f32(*v117.f32, vrsqrts_f32(v118, vmul_f32(*v117.f32, *v117.f32))).f32[0]);
        goto LABEL_119;
      }

      *v105 = 0;
      v105[1] = 0;
      v113 = 0uLL;
LABEL_120:
      v119 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL), vnegq_f32(*(v99 + 16 * a5))), v113, vextq_s8(vuzp1q_s32(*(v99 + 16 * a5), *(v99 + 16 * a5)), *(v99 + 16 * a5), 0xCuLL));
      *(v103 + 16 * a5) = vextq_s8(vuzp1q_s32(v119, v119), v119, 0xCuLL);
      a5 = (a5 + 1);
      if (a5 >= *(a1 + 16))
      {
        goto LABEL_121;
      }
    }

    v113 = vmulq_n_f32(v110, 1.0 / v112);
LABEL_119:
    *(v101 + 16 * a5) = v113;
    goto LABEL_120;
  }

LABEL_121:
  if (*v183 && *&v185[2])
  {
    (*(**v183 + 40))();
  }

  if (v174[0] && v177)
  {
    (*(*v174[0] + 40))();
  }

  if (v178[0] && v181)
  {
    (*(*v178[0] + 40))();
  }

  if (v186 && v189)
  {
    (*(*v186 + 40))();
  }

  if (*v190 && *&v192[2])
  {
    (*(**v190 + 40))();
  }

  v120 = *v193;
  if (!*v193 || (v193[16] & 1) != 0)
  {
    return 1;
  }

  v121 = *&v193[32];
LABEL_177:
  (*(*v120 + 40))(v120, v121);
  return 1;
}