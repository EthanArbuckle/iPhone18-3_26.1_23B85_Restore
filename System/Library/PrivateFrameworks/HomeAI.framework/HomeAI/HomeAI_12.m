_OWORD *cv::transpose_32sC8(_OWORD *result, uint64_t a2, _OWORD *a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  v10 = 2 * a2;
  if (v5 >= 4)
  {
    v11 = 0;
    v73 = *a5;
    v12 = (v5 - 4);
    v13 = 4 * a4;
    v14 = a2 + 96;
    v15 = v10 + 96;
    v16 = a3 + 3 * a4;
    v17 = a3 + a4;
    v18 = result;
    v19 = a3;
    v20 = a3 + 2 * a4;
    do
    {
      if (v6 >= 4)
      {
        v22 = 0;
        v23 = v18;
        v24 = v19;
        do
        {
          v25 = v23[1];
          *v24 = *v23;
          v24[1] = v25;
          v26 = *(v23 + v14 - 80);
          v24[2] = *(v23 + a2);
          v24[3] = v26;
          v27 = *(v23 + v15 - 80);
          v24[4] = *(v23 + 2 * a2);
          v24[5] = v27;
          v28 = *(v23 + v9 + 16);
          v24[6] = *(v23 + 3 * a2);
          v24[7] = v28;
          v29 = (v24 + a4);
          v30 = v23[3];
          *v29 = v23[2];
          v29[1] = v30;
          v31 = *(v23 + v14 - 48);
          v29[2] = *(v23 + v14 - 64);
          v29[3] = v31;
          v32 = *(v23 + v15 - 48);
          v29[4] = *(v23 + v15 - 64);
          v29[5] = v32;
          v33 = *(v23 + v9 + 48);
          v29[6] = *(v23 + v9 + 32);
          v29[7] = v33;
          v34 = (v24 + a4 + a4);
          v35 = v23[5];
          *v34 = v23[4];
          v34[1] = v35;
          v36 = *(v23 + v14 - 16);
          v34[2] = *(v23 + v14 - 32);
          v34[3] = v36;
          v37 = *(v23 + v15 - 16);
          v34[4] = *(v23 + v15 - 32);
          v34[5] = v37;
          v38 = *(v23 + v9 + 80);
          v34[6] = *(v23 + v9 + 64);
          v34[7] = v38;
          v39 = (v34 + a4);
          v40 = v23[7];
          *v39 = v23[6];
          v39[1] = v40;
          v41 = *(v23 + v14 + 16);
          v39[2] = *(v23 + v14);
          v39[3] = v41;
          v42 = *(v23 + v15 + 16);
          v39[4] = *(v23 + v15);
          v39[5] = v42;
          v43 = *(v23 + v9 + 112);
          v39[6] = *(v23 + v9 + 96);
          v39[7] = v43;
          v22 += 4;
          v24 += 8;
          v23 = (v23 + v8);
        }

        while (v22 <= v6 - 4);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < v7)
      {
        v44 = v6 - v21;
        v45 = 32 * v21;
        v46 = a2 * v21;
        v47 = v19;
        v48 = v17;
        v49 = v20;
        v50 = v16;
        do
        {
          v51 = &v47[v45 / 0x10];
          v52 = *(v18 + v46 + 16);
          *v51 = *(v18 + v46);
          v51[1] = v52;
          v53 = (v48 + v45);
          v54 = *(v18 + v46 + 48);
          *v53 = *(v18 + v46 + 32);
          v53[1] = v54;
          v55 = (v49 + v45);
          v56 = *(v18 + v46 + 80);
          *v55 = *(v18 + v46 + 64);
          v55[1] = v56;
          v57 = (v50 + v45);
          v58 = *(v18 + v46 + 112);
          v50 += 32;
          v49 += 32;
          *v57 = *(v18 + v46 + 96);
          v57[1] = v58;
          v48 += 32;
          v47 += 2;
          v46 += a2;
          --v44;
        }

        while (v44);
      }

      v11 += 4;
      v19 = (v19 + v13);
      v18 += 8;
      v16 += v13;
      v20 += v13;
      v17 += v13;
    }

    while (v11 <= v12);
    v5 = v73;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 < v5)
  {
    v11 = v11;
    v59 = &result[2 * v11];
    v60 = a3 + a4 * v11;
    result = (v60 + 64);
    do
    {
      if (v6 >= 4)
      {
        v62 = 0;
        v63 = result;
        v64 = v59;
        do
        {
          v65 = v64[1];
          *(v63 - 4) = *v64;
          *(v63 - 3) = v65;
          v66 = *(v64 + a2 + 16);
          *(v63 - 2) = *(v64 + a2);
          *(v63 - 1) = v66;
          v67 = *(v64 + v10 + 16);
          *v63 = *(v64 + 2 * a2);
          v63[1] = v67;
          v68 = *(v64 + v9 + 16);
          v63[2] = *(v64 + 3 * a2);
          v63[3] = v68;
          v62 += 4;
          v64 = (v64 + v8);
          v63 += 8;
        }

        while (v62 <= v6 - 4);
        v61 = v62;
      }

      else
      {
        v61 = 0;
      }

      if (v61 < v7)
      {
        v69 = v6 - v61;
        v70 = (v60 + 32 * v61);
        v71 = a2 * v61;
        do
        {
          v72 = *(v59 + v71 + 16);
          *v70 = *(v59 + v71);
          v70[1] = v72;
          v70 += 2;
          v71 += a2;
          --v69;
        }

        while (v69);
      }

      ++v11;
      v59 += 2;
      result = (result + a4);
      v60 += a4;
    }

    while (v11 != v5);
  }

  return result;
}

uint64_t std::vector<cv::Mat>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 96 * a2;
      v11 = 96 * a2;
      v12 = (v5 + 80);
      do
      {
        *(v12 - 2) = v12 - 9;
        *(v12 - 1) = v12;
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 20) = 1124007936;
        *(v12 - 76) = 0uLL;
        *(v12 - 60) = 0uLL;
        *(v12 - 44) = 0uLL;
        *(v12 - 2) = 0uLL;
        v12 += 12;
        v11 -= 96;
      }

      while (v11);
    }

    else
    {
      v10 = *(result + 8);
    }

    *(result + 8) = v10;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Mat>>(result, v9);
    }

    v13 = 96 * v6;
    v20 = 0;
    v21 = 96 * v6;
    *(&v22 + 1) = 0;
    v14 = 96 * a2;
    v15 = (96 * v6 + 80);
    do
    {
      *(v15 - 2) = v15 - 9;
      *(v15 - 1) = v15;
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 20) = 1124007936;
      *(v15 - 76) = 0uLL;
      *(v15 - 60) = 0uLL;
      *(v15 - 44) = 0uLL;
      *(v15 - 2) = 0uLL;
      v15 += 12;
      v14 -= 96;
    }

    while (v14);
    *&v22 = v13 + 96 * a2;
    v16 = *(result + 8);
    v17 = (v13 + *result - v16);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cv::Mat>,cv::Mat*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<cv::Mat>::~__split_buffer(&v20);
  }

  return result;
}

void sub_22D26E3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cv::Mat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cv::Mat>,cv::Mat*>(uint64_t a1, cv::Mat *a2, cv::Mat *a3, cv::Mat *this)
{
  v14 = this;
  v15 = this;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a1;
    v7 = a2;
    do
    {
      *this = *v7;
      *(this + 2) = *(v7 + 2);
      v8 = *(v7 + 24);
      *(this + 24) = v8;
      *(this + 40) = *(v7 + 40);
      *(this + 7) = *(v7 + 7);
      *(this + 8) = this + 8;
      *(this + 10) = 0;
      *(this + 9) = this + 80;
      *(this + 11) = 0;
      if (v8)
      {
        atomic_fetch_add(v8, 1u);
      }

      if (*(v7 + 1) > 2)
      {
        *(this + 1) = 0;
        cv::Mat::copySize(this, v7);
      }

      else
      {
        v9 = *(v7 + 9);
        v10 = *(this + 9);
        *v10 = *v9;
        v10[1] = v9[1];
      }

      v7 = (v7 + 96);
      this = (v15 + 96);
      v15 = (v15 + 96);
    }

    while (v7 != a3);
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<cv::Mat>>::destroy[abi:ne200100]<cv::Mat,0>(v6, v5);
      v5 = (v5 + 96);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<cv::Mat>,cv::Mat*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<cv::Mat>>::destroy[abi:ne200100]<cv::Mat,0>(int a1, cv::Mat *this)
{
  v3 = *(this + 3);
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(this);
  }

  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  if (*(this + 1) >= 1)
  {
    v4 = 0;
    v5 = *(this + 8);
    do
    {
      *(v5 + 4 * v4++) = 0;
    }

    while (v4 < *(this + 1));
  }

  *(this + 3) = 0;
  v6 = *(this + 9);
  if (v6)
  {
    v7 = v6 == this + 80;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {

    free(v6);
  }
}

uint64_t std::__split_buffer<cv::Mat>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<cv::Mat>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<cv::Mat>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<cv::Mat>>::destroy[abi:ne200100]<cv::Mat,0>(v5, (v4 - 96));
  }
}

void std::vector<cv::Mat>::__base_destruct_at_end[abi:ne200100](uint64_t a1, cv::Mat *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<cv::Mat>>::destroy[abi:ne200100]<cv::Mat,0>(a1, i))
  {
    i = (i - 96);
  }

  *(a1 + 8) = a2;
}

cv::Mat *std::__copy_impl::operator()[abi:ne200100]<cv::Mat const*,cv::Mat const*,cv::Mat*>(int a1, cv::Mat *a2, cv::Mat *a3, cv::Mat *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    while (this == v5)
    {
LABEL_18:
      v5 = (v5 + 96);
      this = (this + 96);
      if (v5 == a3)
      {
        return a3;
      }
    }

    v7 = *(v5 + 3);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }

    v8 = *(this + 3);
    if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(this);
    }

    *(this + 2) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    if (*(this + 1) <= 0)
    {
      *(this + 3) = 0;
      *this = *v5;
    }

    else
    {
      v9 = 0;
      v10 = *(this + 8);
      do
      {
        *(v10 + 4 * v9++) = 0;
        v11 = *(this + 1);
      }

      while (v9 < v11);
      *(this + 3) = 0;
      *this = *v5;
      if (v11 > 2)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v5 + 1);
    if (v12 <= 2)
    {
      *(this + 1) = v12;
      *(this + 1) = *(v5 + 1);
      v13 = *(v5 + 9);
      v14 = *(this + 9);
      *v14 = *v13;
      v14[1] = v13[1];
LABEL_17:
      *(this + 2) = *(v5 + 2);
      *(this + 6) = *(v5 + 6);
      *(this + 1) = *(v5 + 1);
      *(this + 7) = *(v5 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(this, v5);
    goto LABEL_17;
  }

  return v5;
}

void std::vector<std::vector<unsigned char>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long long>>>(a1, v9);
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
    std::__split_buffer<std::vector<long long>>::~__split_buffer(v18);
  }
}

void std::vector<cv::Vec<unsigned char,2>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    if ((a2 + (v6 >> 1)) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = v6 >> 1;
    v8 = v4 - *a1;
    if (v8 <= a2 + (v6 >> 1))
    {
      v9 = a2 + (v6 >> 1);
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<unsigned char,2>>>(a1, v10);
    }

    __p = 0;
    v12 = 2 * v7;
    v14 = 0;
    bzero((2 * v7), 2 * a2);
    v13 = 2 * v7 + 2 * a2;
    std::vector<cv::Vec<unsigned char,2>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 1) & 0xFFFFFFFFFFFFFFFELL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26EA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cv::Vec<unsigned char,2>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = *v2;
      v5[1] = v2[1];
      v2 += 2;
      v5 += 2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v6 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v6;
  v7 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<unsigned char,2>>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<unsigned char,3>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * (v4 - v5) >= a2)
  {
    if (a2)
    {
      v10 = 3 * ((3 * a2 - 3) / 3) + 3;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 - *a1);
    v7 = v6 + a2;
    if (v6 + a2 >= 0x5555555555555556)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<unsigned char,3>>>(a1, v9);
    }

    __p = 0;
    v13 = 3 * v6;
    v15 = 0;
    v11 = 3 * ((3 * a2 - 3) / 3) + 3;
    bzero((3 * v6), v11);
    v14 = 3 * v6 + v11;
    std::vector<cv::Vec<unsigned char,3>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 3) % 3 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26ECEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<unsigned char,3>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *(v5 + i) = *(v2 + i);
      }

      v2 += 3;
      v5 += 3;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<unsigned char,3>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<short,3>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 1) >= a2)
  {
    if (a2)
    {
      v10 = 6 * ((6 * a2 - 6) / 6) + 6;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 1);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1555555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<short,3>>>(a1, v9);
    }

    __p = 0;
    v13 = 6 * v6;
    v15 = 0;
    v11 = 6 * ((6 * a2 - 6) / 6) + 6;
    bzero((6 * v6), v11);
    v14 = 6 * v6 + v11;
    std::vector<cv::Vec<short,3>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 6) % 6 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26EF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<short,3>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 6; i += 2)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 6;
      v6 += 6;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<short,3>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,2>>::__append(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v10);
    }

    __p = 0;
    v12 = 8 * v8;
    v14 = 0;
    bzero((8 * v8), 8 * a2);
    v13 = 8 * v8 + 8 * a2;
    std::vector<cv::Vec<int,2>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26F1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<cv::Vec<int,2>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::vector<cv::Vec<int,3>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,3>>>(a1, v9);
    }

    __p = 0;
    v13 = 12 * v6;
    v15 = 0;
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero((12 * v6), v11);
    v14 = 12 * v6 + v11;
    std::vector<cv::Vec<int,3>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xC + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26F414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,3>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 12;
      v6 += 12;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,3>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,4>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    std::vector<cv::Vec<int,4>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26F650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,4>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 16; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 16;
      v6 += 16;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::vector<cv::Vec<int,6>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,6>>>(a1, v9);
    }

    __p = 0;
    v13 = 24 * v6;
    v15 = 0;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v14 = 24 * v6 + v11;
    std::vector<cv::Vec<int,6>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 24) % 0x18 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26F898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,6>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 24; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 24;
      v6 += 24;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,6>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,8>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,8>>>(a1, v10);
    }

    __p = 0;
    v12 = 32 * v8;
    v14 = 0;
    bzero((32 * v8), 32 * a2);
    v13 = 32 * v8 + 32 * a2;
    std::vector<cv::Vec<int,8>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26FAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,8>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 32; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 32;
      v6 += 32;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,8>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,9>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 36 * ((36 * a2 - 36) / 0x24) + 36;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 2);
    if (v6 + a2 > 0x71C71C71C71C71CLL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v9 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v9 = v8;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,9>>>(a1, v9);
    }

    __p = 0;
    v13 = 36 * v6;
    v15 = 0;
    v11 = 36 * ((36 * a2 - 36) / 0x24) + 36;
    bzero((36 * v6), v11);
    v14 = 36 * v6 + v11;
    std::vector<cv::Vec<int,9>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = v14 - 36 * ((v14 - v13 - 36) / 0x24) - 36;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D26FD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,9>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 36; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 36;
      v6 += 36;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,9>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,12>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,12>>>(a1, v9);
    }

    __p = 0;
    v13 = 48 * v6;
    v15 = 0;
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero((48 * v6), v11);
    v14 = 48 * v6 + v11;
    std::vector<cv::Vec<int,12>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 48) % 0x30 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D270040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,12>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 48; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 48;
      v6 += 48;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,12>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,16>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 6;
    v9 = v4 - *a1;
    if (v9 >> 5 > v7)
    {
      v7 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,16>>>(a1, v10);
    }

    __p = 0;
    v12 = v8 << 6;
    v14 = 0;
    bzero((v8 << 6), a2 << 6);
    v13 = (v8 << 6) + (a2 << 6);
    std::vector<cv::Vec<int,16>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D27027C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,16>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 64; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 64;
      v6 += 64;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,16>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,32>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 7)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 7);
      v5 += a2 << 7;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 7);
    if (v7 >> 57)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 7;
    v9 = v4 - *a1;
    if (v9 >> 6 > v7)
    {
      v7 = v9 >> 6;
    }

    if (v9 >= 0x7FFFFFFFFFFFFF80)
    {
      v10 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,32>>>(a1, v10);
    }

    __p = 0;
    v12 = v8 << 7;
    v14 = 0;
    bzero((v8 << 7), a2 << 7);
    v13 = (v8 << 7) + (a2 << 7);
    std::vector<cv::Vec<int,32>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 127) & 0xFFFFFFFFFFFFFF80;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D270490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,32>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 128; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 128;
      v6 += 128;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,32>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,64>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 8)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 8);
      v5 += a2 << 8;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 8);
    if (HIBYTE(v7))
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 8;
    v9 = v4 - *a1;
    if (v9 >> 7 > v7)
    {
      v7 = v9 >> 7;
    }

    if (v9 >= 0x7FFFFFFFFFFFFF00)
    {
      v10 = 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,64>>>(a1, v10);
    }

    __p = 0;
    v12 = v8 << 8;
    v14 = 0;
    bzero((v8 << 8), a2 << 8);
    v13 = (v8 << 8) + (a2 << 8);
    std::vector<cv::Vec<int,64>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 255) & 0xFFFFFFFFFFFFFF00;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D2706A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,64>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 256; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 256;
      v6 += 256;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,64>>>(uint64_t a1, unint64_t a2)
{
  if (!HIBYTE(a2))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<cv::Vec<int,128>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 9)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 9);
      v5 += a2 << 9;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 9);
    if (v7 >> 55)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 9;
    v9 = v4 - *a1;
    if (v9 >> 8 > v7)
    {
      v7 = v9 >> 8;
    }

    if (v9 >= 0x7FFFFFFFFFFFFE00)
    {
      v10 = 0x7FFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,128>>>(a1, v10);
    }

    __p = 0;
    v12 = v8 << 9;
    v14 = 0;
    bzero((v8 << 9), a2 << 9);
    v13 = (v8 << 9) + (a2 << 9);
    std::vector<cv::Vec<int,128>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 511) & 0xFFFFFFFFFFFFFE00;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D2708B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<cv::Vec<int,128>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 512; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 512;
      v6 += 512;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Vec<int,128>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 55))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _GLOBAL__sub_I_matrix_cpp()
{
  dword_28106D790 = 0;
  qword_28106D798 = 0;
  unk_28106D7A0 = 0;
  cv::_none = &unk_2840567A8;
}

cv::Exception *cv::Exception::Exception(cv::Exception *this, int a2, __int128 *a3, __int128 *a4, __int128 *a5, int a6)
{
  *this = &unk_284056A98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(this + 7) = *(a3 + 2);
    *(this + 40) = v10;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(this + 10) = *(a4 + 2);
    *(this + 4) = v11;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(this + 13) = *(a5 + 2);
    *(this + 88) = v12;
  }

  *(this + 28) = a6;
  cv::Exception::formatMessage(this);
  return this;
}

void sub_22D270ADC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

double cv::Exception::formatMessage(void **this)
{
  std::string::basic_string[abi:ne200100]<0>(&v3, "N/A");
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  result = *&v3;
  *(this + 1) = v3;
  this[3] = v4;
  return result;
}

void cv::Exception::~Exception(std::exception *this)
{
  this->__vftable = &unk_284056A98;
  if (SHIBYTE(this[13].__vftable) < 0)
  {
    operator delete(this[11].__vftable);
  }

  if (SHIBYTE(this[10].__vftable) < 0)
  {
    operator delete(this[8].__vftable);
  }

  if (SHIBYTE(this[7].__vftable) < 0)
  {
    operator delete(this[5].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  cv::Exception::~Exception(this);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::Exception::what(cv::Exception *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void cv::error(cv *this, const cv::Exception *a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 32);
  if (cv::customErrorCallback)
  {
    if (*(v2 + 87) >= 0)
    {
      v7 = v2 + 64;
    }

    else
    {
      v7 = *(v2 + 64);
    }

    if (*(v2 + 63) >= 0)
    {
      v8 = v2 + 40;
    }

    else
    {
      v8 = *(v2 + 40);
    }

    if (*(v2 + 111) >= 0)
    {
      v9 = v2 + 88;
    }

    else
    {
      v9 = *(v2 + 88);
    }

    cv::customErrorCallback(v3, v7, v8, v9, *(v2 + 112), cv::customErrorCallbackData);
  }

  else
  {
    v4 = cvErrorStr(v3);
    v5 = *(v2 + 40);
    if (*(v2 + 63) >= 0)
    {
      v5 = (v2 + 40);
    }

    if (*(v2 + 87) < 0)
    {
      if (*(v2 + 72))
      {
        v6 = *(v2 + 64);
      }

      else
      {
        v6 = "unknown function";
      }
    }

    else
    {
      v6 = (v2 + 64);
      if (!*(v2 + 87))
      {
        v6 = "unknown function";
      }
    }

    v10 = *(v2 + 88);
    if (*(v2 + 111) >= 0)
    {
      v10 = (v2 + 88);
    }

    sprintf(v13, "OpenCV Error: %s (%s) in %s, file %s, line %d", v4, v5, v6, v10, *(v2 + 112));
    v11 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
    fflush(*v11);
  }

  if (cv::breakOnError == 1)
  {
    MEMORY[0] = 0;
  }

  exception = __cxa_allocate_exception(0x78uLL);
  cv::Exception::Exception(exception, v2);
}

const char *cvErrorStr(int a1)
{
  switch(a1)
  {
    case -219:
      v1 = "OpenGL API call";
      break;
    case -218:
      v1 = "No OpenGL support";
      break;
    case -217:
      v1 = "Gpu API call";
      break;
    case -216:
      v1 = "No GPU support";
      break;
    case -215:
      v1 = "Assertion failed";
      break;
    case -214:
      v1 = "Memory block has been corrupted";
      break;
    case -213:
      v1 = "The function/feature is not implemented";
      break;
    case -212:
      v1 = "Parsing error";
      break;
    case -211:
      v1 = "One of arguments' values is out of range";
      break;
    case -210:
      v1 = "Unsupported format or combination of formats";
      break;
    case -209:
      v1 = "Sizes of input arguments do not match";
      break;
    case -208:
      v1 = "Bad type of mask argument";
      break;
    case -207:
      v1 = "Bad parameter of type CvPoint";
      break;
    case -206:
      v1 = "Bad flag (parameter or structure field)";
      break;
    case -205:
      v1 = "Formats of input arguments do not match";
      break;
    case -204:
      v1 = "Requested object was not found";
      break;
    case -203:
      v1 = "Inplace operation is not supported";
      break;
    case -202:
      v1 = "Division by zero occured";
      break;
    case -201:
      v1 = "Incorrect size of input array";
      break;
    default:
      v1 = "No Error";
      switch(a1)
      {
        case -27:
          v1 = "Null pointer";
          break;
        case -24:
          v1 = "Input COI is not supported";
          break;
        case -17:
          v1 = "Input image depth is not supported by function";
          break;
        case -15:
          v1 = "Bad number of channels";
          break;
        case -13:
          v1 = "Image step is wrong";
          break;
        case -8:
          v1 = "Autotrace call";
          break;
        case -7:
          v1 = "Iterations do not converge";
          break;
        case -5:
          v1 = "Bad argument";
          break;
        case -4:
          v1 = "Insufficient memory";
          break;
        case -3:
          v1 = "Internal error";
          break;
        case -2:
          v1 = "Unspecified error";
          break;
        case -1:
          v1 = "Backtrace";
          break;
        case 0:
          return v1;
        default:
          v2 = "error";
          if (a1 >= 0)
          {
            v2 = "status";
          }

          v1 = cvErrorStr::buf;
          sprintf(cvErrorStr::buf, "Unknown %s code %d", v2, a1);
          break;
      }

      break;
  }

  return v1;
}

uint64_t cvRegisterModule(uint64_t a1)
{
  if (!a1 || (v2 = *(a1 + 8)) == 0 || (v3 = *(a1 + 16)) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "module != 0 && module->name != 0 && module->version != 0");
    std::string::basic_string[abi:ne200100]<0>(&v14, "cvRegisterModule");
    std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/system.cpp");
    cv::Exception::Exception(v16, -215, &v15, &v14, &v13, 782);
    cv::error(v16, v12);
  }

  v4 = strlen(v2);
  v5 = strlen(v3);
  v6 = malloc_type_malloc(v4 + v5 + 34, 0x70040575C39D0uLL);
  v7 = *(a1 + 16);
  *v6 = *a1;
  v6[1] = v7;
  v8 = v4 + 1;
  v9 = v6 + v4 + 33;
  *(v6 + 1) = v6 + 2;
  *(v6 + 2) = v9;
  memcpy(v6 + 2, *(a1 + 8), v8);
  memcpy(v9, *(a1 + 16), v5 + 1);
  *v6 = 0;
  v10 = &CvModule::first;
  if (CvModule::first)
  {
    v10 = CvModule::last;
  }

  *v10 = v6;
  CvModule::last = v6;
  return 0;
}

void sub_22D2711D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

cv::Exception *cv::Exception::Exception(cv::Exception *this, const cv::Exception *a2)
{
  *this = &unk_284056A98;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  *(this + 8) = *(a2 + 8);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v7;
  }

  *(this + 28) = *(a2 + 28);
  return this;
}

void sub_22D271334(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t _GLOBAL__sub_I_system_cpp()
{
  dword_28106D778 = 0;
  xmmword_28106D758 = 0u;
  unk_28106D768 = 0u;
  xmmword_28106D738 = 0u;
  unk_28106D748 = 0u;
  xmmword_28106D718 = 0u;
  unk_28106D728 = 0u;
  xmmword_28106D6F8 = 0u;
  unk_28106D708 = 0u;
  xmmword_28106D6D8 = 0u;
  unk_28106D6E8 = 0u;
  xmmword_28106D6B8 = 0u;
  unk_28106D6C8 = 0u;
  xmmword_28106D698 = 0u;
  unk_28106D6A8 = 0u;
  cv::featuresEnabled = 0u;
  unk_28106D688 = 0u;
  dword_28106D674 = 0;
  xmmword_28106D654 = 0u;
  unk_28106D664 = 0u;
  xmmword_28106D634 = 0u;
  unk_28106D644 = 0u;
  xmmword_28106D614 = 0u;
  unk_28106D624 = 0u;
  xmmword_28106D5F4 = 0u;
  unk_28106D604 = 0u;
  xmmword_28106D5D4 = 0u;
  unk_28106D5E4 = 0u;
  xmmword_28106D5B4 = 0u;
  unk_28106D5C4 = 0u;
  xmmword_28106D594 = 0u;
  unk_28106D5A4 = 0u;
  cv::featuresDisabled = 0u;
  unk_28106D584 = 0u;
  cv::USE_SSE2 = 0;
  cv::USE_SSE4_2 = 0;
  cv::USE_AVX = 0;
  result = cvRegisterModule(&cxcore_info);
  cxcore_module = CvModule::last;
  return result;
}

uint64_t cv::gpu::GpuMat::GpuMat(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = v2;
  v3 = *(a2 + 32);
  *(result + 32) = v3;
  *(result + 48) = *(a2 + 48);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  return result;
}

void cv::gpu::GpuMat::create(cv::gpu::GpuMat *this, int a2, int a3, unsigned int a4)
{
  v8 = a4 & 0xFFF;
  if (*(this + 1) != a2 || *(this + 2) != a3 || (*this & 0xFFF) != v8 || !*(this + 3))
  {
    if (*(this + 3))
    {
      cv::gpu::GpuMat::release(this);
    }

    if (a2 >= 1 && a3 >= 1)
    {
      *this = v8 | 0x42FF0000;
      *(this + 1) = a2;
      *(this + 2) = a3;
      v9 = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3);
      (*(gpuFuncTable(void)::stub + 7))();
      v10 = *(this + 1);
      v11 = *(this + 2);
      if (v10 == 1)
      {
        v12 = v11 * v9;
        *(this + 2) = v12;
      }

      else
      {
        v12 = *(this + 2);
        if (v11 * v9 != v12)
        {
LABEL_13:
          *(this + 3) = 0;
          *(this + 5) = 0;
          *(this + 6) = v12 * v10;
          v13 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
          *(this + 4) = v13;
          *v13 = 1;
          return;
        }
      }

      *this |= 0x4000u;
      goto LABEL_13;
    }
  }
}

double cv::gpu::GpuMat::release(cv::gpu::GpuMat *this)
{
  v2 = *(this + 4);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    free(*(this + 4));
    (*(gpuFuncTable(void)::stub + 8))();
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  return result;
}

void EmptyFuncTable::copy(EmptyFuncTable *this, const cv::Mat *a2, cv::gpu::GpuMat *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v5, "copy");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v7, 4294967080, v6, v5, __p, 115);
  cv::error(v7, v3);
}

void sub_22D271710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void EmptyFuncTable::copy(EmptyFuncTable *this, const cv::gpu::GpuMat *a2, cv::Mat *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v5, "copy");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v7, 4294967080, v6, v5, __p, 116);
  cv::error(v7, v3);
}

void sub_22D27181C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void EmptyFuncTable::copy(EmptyFuncTable *this, const cv::gpu::GpuMat *a2, cv::gpu::GpuMat *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v5, "copy");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v7, 4294967080, v6, v5, __p, 117);
  cv::error(v7, v3);
}

void sub_22D271928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void EmptyFuncTable::copyWithMask(EmptyFuncTable *this, const cv::gpu::GpuMat *a2, cv::gpu::GpuMat *a3, const cv::gpu::GpuMat *a4)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v6, "copyWithMask");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v8, 4294967080, v7, v6, __p, 119);
  cv::error(v8, v4);
}

void sub_22D271A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void EmptyFuncTable::convert(EmptyFuncTable *this, const cv::gpu::GpuMat *a2, cv::gpu::GpuMat *a3, double a4, double a5, void *a6)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v8, "convert");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v10, 4294967080, v9, v8, __p, 122);
  cv::error(v10, v6);
}

void sub_22D271B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void EmptyFuncTable::convert(EmptyFuncTable *this, const cv::gpu::GpuMat *a2, cv::gpu::GpuMat *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v5, "convert");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v7, 4294967080, v6, v5, __p, 121);
  cv::error(v7, v3);
}

void sub_22D271C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void EmptyFuncTable::setTo()
{
  std::string::basic_string[abi:ne200100]<0>(v3, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v2, "setTo");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v4, 4294967080, v3, v2, __p, 124);
  cv::error(v4, v0);
}

void sub_22D271D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void EmptyFuncTable::mallocPitch(EmptyFuncTable *this, void **a2, unint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "The library is compiled without CUDA support");
  std::string::basic_string[abi:ne200100]<0>(v5, "mallocPitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/include/opencv2/dynamicuda/dynamicuda.hpp");
  cv::Exception::Exception(v7, 4294967080, v6, v5, __p, 126);
  cv::error(v7, v3);
}

void sub_22D271E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void cv::parallel_for_(uint64_t *a1, uint64_t a2, double a3)
{
  {
    v4 = *a1;
    context[0] = a2;
    context[1] = v4;
    v5 = 1.0;
    if (a3 >= 1.0)
    {
      v5 = a3;
    }

    if (v5 > (HIDWORD(v4) - v4))
    {
      v5 = (HIDWORD(v4) - v4);
    }

    if (a3 <= 0.0)
    {
      v6 = (HIDWORD(v4) - v4);
    }

    else
    {
      v6 = v5;
    }

    v10 = rint(v6);
    global_queue = dispatch_get_global_queue(0, 0);
  }

  else
  {
    v8 = *(*a2 + 16);

    v8(a2, a1);
  }
}

uint64_t anonymous namespace::block_function(_anonymous_namespace_ *this, void *a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = *(this + 4);
  v5 = (v4 + (v4 >> 31)) >> 1;
  v7[0] = v2 + (v5 + a2 * (v3 - v2)) / v4;
  if (a2 + 1 < v4)
  {
    v3 = v2 + (v5 + (v3 - v2) * (a2 + 1)) / v4;
  }

  v7[1] = v3;
  return (*(**this + 16))(*this, v7);
}

void cv::goodFeaturesToTrack(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3, void (***a4)(uint64_t *__return_ptr, void, uint64_t), double a5, double a6, const cv::_InputArray *a7, int a8, double a9)
{
  v15 = a3;
  (**this)(&v38);
  (**a4)(&v33, a4, 0xFFFFFFFFLL);
  if (v15 < 0 || a5 <= 0.0 || a6 < 0.0)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "qualityLevel > 0 && minDistance >= 0 && maxCorners >= 0");
    std::string::basic_string[abi:ne200100]<0>(v23, "goodFeaturesToTrack");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/featureselect.cpp");
    cv::Exception::Exception(v29, 4294967081, v25, v23, &__p, 62);
    cv::error(v29, v16);
  }

  if (v36)
  {
    v17 = HIDWORD(v33);
    if (SHIDWORD(v33) >= 3)
    {
      v19 = v37;
      v18 = 1;
      do
      {
        v20 = *v19++;
        v18 *= v20;
        --v17;
      }

      while (v17);
    }

    else
    {
      v18 = v35 * v34;
    }

    if (v18)
    {
      if ((v33 & 0xFFF) != 0 || (v37[1] == v39[1] ? (v21 = *v37 == *v39) : (v21 = 0), !v21))
      {
        std::string::basic_string[abi:ne200100]<0>(v25, "mask.empty() || (mask.type() == CV_8UC1 && mask.size() == image.size())");
        std::string::basic_string[abi:ne200100]<0>(v23, "goodFeaturesToTrack");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/featureselect.cpp");
        cv::Exception::Exception(v29, 4294967081, v25, v23, &__p, 63);
        cv::error(v29, v22);
      }
    }
  }

  v30 = &v29[2];
  v31 = v32;
  v32[0] = 0;
  v32[1] = 0;
  v29[0] = 1124007936;
  memset(&v29[1], 0, 60);
  v26 = &v25[2];
  v27 = v28;
  v28[0] = 0;
  v28[1] = 0;
  v25[0] = 1124007936;
  memset(&v25[1], 0, 60);
  if (a8)
  {
    cv::_InputArray::_InputArray(v23, &v38);
    cv::_OutputArray::_OutputArray(&__p, v29);
    cv::cornerHarris(v23, &__p, a7, 3, a9);
  }

  cv::_InputArray::_InputArray(v23, &v38);
  cv::_OutputArray::_OutputArray(&__p, v29);
  cv::cornerMinEigenVal(v23, &__p, a7, 3);
}

void sub_22D272C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  cv::Exception::~Exception(&a69);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  cv::Mat::~Mat(&STACK[0x210]);
  cv::Mat::~Mat((v69 - 224));
  _Unwind_Resume(a1);
}

uint64_t cv::sort<float const*,cv::greaterThanPtr<float>>(uint64_t result)
{
  v70[96] = *MEMORY[0x277D85DE8];
  v1 = *result;
  v2 = *(result + 8) - *result;
  if (v2 >= 9)
  {
    LODWORD(v3) = 0;
    v70[0] = *result;
    v70[1] = v1 + v2 - 8;
    do
    {
      v4 = &v70[2 * v3];
      LODWORD(v3) = v3 - 1;
      v6 = *v4;
      v5 = v4[1];
      for (i = (v5 - v6) >> 3; i >= 7; i = (v5 - v6) >> 3)
      {
        v8 = &v6[(i + 1) >> 1];
        if (i <= 0x27)
        {
          v13 = *v6;
          v23 = **v6;
          v27 = **v8;
          v10 = v6;
          v29 = v5;
        }

        else
        {
          v9 = (i + 1) >> 3;
          v10 = &v6[v9];
          v11 = (2 * v9);
          v12 = &v6[v11];
          v13 = *v6;
          v14 = **v6;
          v15 = **v10;
          v16 = **v12;
          if (v14 <= v16)
          {
            v17 = **v12;
          }

          else
          {
            v17 = **v6;
          }

          if (v14 <= v16)
          {
            v18 = &v6[v11];
          }

          else
          {
            v18 = v6;
          }

          if (v16 > v15)
          {
            v17 = **v10;
            v18 = &v6[v9];
          }

          if (v14 <= v16)
          {
            v19 = **v6;
          }

          else
          {
            v19 = **v12;
          }

          if (v14 <= v16)
          {
            v12 = v6;
          }

          v20 = v15 <= v16;
          if (v15 <= v16)
          {
            v21 = v19;
          }

          else
          {
            v21 = **v10;
          }

          if (v20)
          {
            v10 = v12;
          }

          v22 = v14 <= v15;
          if (v14 > v15)
          {
            v23 = v21;
          }

          else
          {
            v23 = v17;
          }

          if (v22)
          {
            v10 = v18;
          }

          v24 = &v8[-v9];
          v25 = &v8[v9];
          v26 = **v24;
          v27 = **v8;
          v28 = **v25;
          if (v26 <= v27)
          {
            if (v28 <= v27)
            {
              if (v26 <= v28)
              {
                v27 = **v25;
              }

              else
              {
                v27 = **v24;
              }

              if (v26 <= v28)
              {
                v8 += v9;
              }

              else
              {
                v8 -= v9;
              }
            }
          }

          else if (v27 <= v28)
          {
            if (v26 <= v28)
            {
              v27 = **v24;
            }

            else
            {
              v27 = **v25;
            }

            if (v26 <= v28)
            {
              v8 -= v9;
            }

            else
            {
              v8 += v9;
            }
          }

          v57 = &v5[-8 * v11];
          v29 = &v5[-8 * v9];
          v58 = **v57;
          v59 = **v29;
          v60 = **v5;
          if (v58 <= v59)
          {
            if (v60 <= v59)
            {
              if (v58 <= v60)
              {
                v29 = v5;
              }

              else
              {
                v29 = v57;
              }
            }
          }

          else if (v59 <= v60)
          {
            if (v58 <= v60)
            {
              v29 = v57;
            }

            else
            {
              v29 = v5;
            }
          }
        }

        v30 = **v29;
        if (v23 <= v27)
        {
          if (v30 <= v27)
          {
            if (v23 <= v30)
            {
              v8 = v29;
            }

            else
            {
              v8 = v10;
            }
          }
        }

        else if (v27 <= v30)
        {
          if (v23 <= v30)
          {
            v8 = v10;
          }

          else
          {
            v8 = v29;
          }
        }

        if (v8 != v6)
        {
          v31 = *v8;
          *v8 = v13;
          *v6 = v31;
          v8 = v6;
        }

        result = 0;
        v32 = v6 + 1;
        v33 = v5;
        v34 = (v6 + 1);
        v35 = v5;
LABEL_51:
        while (v32 <= v33)
        {
          v36 = **v8;
          v37 = **v32;
          if (v36 > v37)
          {
            break;
          }

          if (v37 <= v36)
          {
            if (v32 > v34)
            {
              v38 = *v34;
              *v34 = *v32;
              *v32 = v38;
            }

            v34 += 8;
            result = 1;
          }

          ++v32;
        }

        while (v32 <= v33)
        {
          v40 = *v33;
          v41 = **v33;
          v42 = **v8;
          if (v41 > v42)
          {
            v43 = *v32;
            *v32++ = v40;
            *v33-- = v43;
            result = 1;
            goto LABEL_51;
          }

          if (v42 <= v41)
          {
            if (v33 < v35)
            {
              v39 = *v35;
              *v35 = v40;
              *v33 = v39;
            }

            v35 -= 8;
            result = 1;
          }

          --v33;
        }

        if (!result)
        {
          break;
        }

        v44 = (v34 - v6) >> 3;
        v45 = v32 - v34;
        v46 = (v32 - v34) >> 3;
        if (v46 < v44)
        {
          LODWORD(v44) = v46;
        }

        if (v44 >= 1)
        {
          v47 = -v44;
          v48 = v6;
          do
          {
            v49 = *v48;
            *v48++ = v32[v47];
            v32[v47] = v49;
          }

          while (!__CFADD__(v47++, 1));
        }

        result = (v5 - v35) >> 3;
        v51 = v35 - v33;
        v52 = v51 >> 3;
        if ((v51 >> 3) >= result)
        {
          v53 = result;
        }

        else
        {
          v53 = v51 >> 3;
        }

        if (v53 >= 1)
        {
          LODWORD(result) = 1 - v53;
          v54 = 8 * v53;
          do
          {
            v55 = *v32;
            *v32++ = *&v5[8 * result];
            *&v5[8 * result] = v55;
            result = (result + 1);
            v54 -= 8;
          }

          while (v54);
        }

        if (v46 <= 1)
        {
          if (v52 < 2)
          {
            goto LABEL_111;
          }

          v6 = &v5[-(v51 & 0x3FFFFFFF8) + 8];
        }

        else if (v52 < 2)
        {
          v5 = v6 + (v45 & 0x3FFFFFFF8) - 8;
        }

        else if (v46 <= v52)
        {
          v61 = &v5[-(v51 & 0x3FFFFFFF8) + 8];
          v3 = v3 + 1;
          v62 = &v70[2 * v3];
          *v62 = v61;
          v62[1] = v5;
          v5 = v6 + (v45 & 0x3FFFFFFF8) - 8;
        }

        else
        {
          v3 = v3 + 1;
          v56 = &v70[2 * v3];
          *v56 = v6;
          v56[1] = (v6 + (v45 & 0x3FFFFFFF8) - 8);
          v6 = &v5[-(v51 & 0x3FFFFFFF8) + 8];
        }
      }

      for (j = v6 + 1; j <= v5; ++j)
      {
        if (j > v6)
        {
          v64 = *j;
          v65 = **j;
          v66 = j;
          v67 = j;
          do
          {
            v69 = *--v67;
            v68 = v69;
            if (v65 <= *v69)
            {
              break;
            }

            *(v66 - 1) = v64;
            *v66 = v68;
            v66 = v67;
          }

          while (v67 > v6);
        }
      }

LABEL_111:
      ;
    }

    while ((v3 & 0x80000000) == 0);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::vector<cv::Point_<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<cv::Point_<float>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<cv::Point_<float>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<cv::Point_<float>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<cv::Point_<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<cv::Point_<float>>::__emplace_back_slow_path<cv::Point_<float>>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  std::vector<cv::Point_<int>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_22D273490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *cvCreateMat(int a1, int a2, unsigned int a3)
{
  MatHeader = cvCreateMatHeader(a1, a2, a3);
  cvCreateData(MatHeader);
  return MatHeader;
}

_DWORD *cvCreateMatHeader(int a1, int a2, unsigned int a3)
{
  v3 = a3;
  if (a1 < 0 || a2 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "Non-positive width or height");
    std::string::basic_string[abi:ne200100]<0>(v11, "cvCreateMatHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v13, 4294967095, v12, v11, __p, 113);
    cv::error(v13, v6);
  }

  v7 = ((((a3 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a3 & 7))) & 3)) * a2;
  if (v7 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "Invalid matrix type");
    std::string::basic_string[abi:ne200100]<0>(v11, "cvCreateMatHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v13, 4294967086, v12, v11, __p, 117);
    cv::error(v13, v8);
  }

  result = malloc_type_malloc(0x28uLL, 0x1092040CA42499DuLL);
  *result = v3 & 0xFFF | 0x42424000;
  result[1] = v7;
  result[8] = a1;
  result[9] = a2;
  *(result + 3) = 0;
  *(result + 1) = 0;
  result[4] = 1;
  if (v7 * a1 >= 0x80000000)
  {
    *result = v3 & 0xFFF | 0x42420000;
  }

  return result;
}

void sub_22D2736D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

int *cvCreateData(int *result)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v1 = result;
  v2 = *result;
  v3 = *result & 0xFFFF0000;
  if (v3 != 1111621632)
  {
    if (v2 == 144)
    {
      if (*(result + 11))
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "Data is already allocated");
        std::string::basic_string[abi:ne200100]<0>(v20, "cvCreateData");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
        cv::Exception::Exception(v22, 4294967294, v21, v20, __p, 825);
        cv::error(v22, v9);
      }

      v10 = CvIPL;
      if (CvIPL)
      {
        v11 = result[4];
        v12 = result[10];
        if (v11 == 64 || v11 == 32)
        {
          if (v11 == 32)
          {
            v13 = 2;
          }

          else
          {
            v13 = 3;
          }

          result[10] = v12 << v13;
          result[4] = 8;
        }

        result = (v10)(result, 0, 0);
        v1[10] = v12;
        v1[4] = v11;
      }

      else
      {
        result = malloc_type_malloc(result[20], 0x100004077774924uLL);
        *(v1 + 17) = result;
        *(v1 + 11) = result;
      }

      return result;
    }

    if (v3 == 1111687168)
    {
      if (!result[8])
      {
        return result;
      }

      if (*(result + 3))
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "Data is already allocated");
        std::string::basic_string[abi:ne200100]<0>(v20, "cvCreateData");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
        cv::Exception::Exception(v22, 4294967294, v21, v20, __p, 859);
        cv::error(v22, v14);
      }

      v8 = (((v2 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v2 & 7))) & 3);
      if ((*result & 0x4000) != 0)
      {
        if (result[9])
        {
          v8 = result[9];
        }

        v8 *= result[8];
      }

      else
      {
        v16 = result[1];
        if (v16 >= 1)
        {
          v17 = v16 + 1;
          v18 = &result[2 * v16 + 7];
          do
          {
            if (v8 <= *(v18 - 1) * *v18)
            {
              v8 = *(v18 - 1) * *v18;
            }

            --v17;
            v18 -= 2;
          }

          while (v17 > 1);
        }
      }

      goto LABEL_39;
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(v21, "unrecognized or unsupported array type");
    std::string::basic_string[abi:ne200100]<0>(v20, "cvCreateData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v22, 4294967291, v21, v20, __p, 883);
    cv::error(v22, v15);
  }

  v4 = result[9];
  if (v4 < 0)
  {
    goto LABEL_27;
  }

  v5 = result[8];
  if (v5 < 0)
  {
    goto LABEL_27;
  }

  if (v4 && v5)
  {
    v6 = result[1];
    if (*(result + 3))
    {
      std::string::basic_string[abi:ne200100]<0>(v21, "Data is already allocated");
      std::string::basic_string[abi:ne200100]<0>(v20, "cvCreateData");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v22, 4294967294, v21, v20, __p, 807);
      cv::error(v22, v7);
    }

    if (!v6)
    {
      v6 = ((((*result >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*result & 7))) & 3)) * result[9];
    }

    v8 = result[8] * v6;
LABEL_39:
    result = malloc_type_malloc(v8 + 20, 0x100004052888210uLL);
    *(v1 + 1) = result;
    *(v1 + 3) = (result + 19) & 0xFFFFFFFFFFFFFFF0;
    *result = 1;
  }

  return result;
}

void sub_22D273B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvInitMatHeader(uint64_t result, int a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  v6 = a6;
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "");
    std::string::basic_string[abi:ne200100]<0>(v15, "cvInitMatHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v17, 4294967269, v16, v15, __p, 140);
    cv::error(v17, v7);
  }

  if (a2 < 0 || a3 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "Non-positive cols or rows");
    std::string::basic_string[abi:ne200100]<0>(v15, "cvInitMatHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v17, 4294967095, v16, v15, __p, 146);
    cv::error(v17, v8);
  }

  v9 = a4 & 0xFFF | 0x42420000;
  *result = v9;
  *(result + 32) = a2;
  *(result + 36) = a3;
  *(result + 24) = a5;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v10 = ((((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3)) * a3;
  if (a6 && a6 != 0x7FFFFFFF)
  {
    if (v10 > a6)
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "");
      std::string::basic_string[abi:ne200100]<0>(v15, "cvInitMatHeader");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v17, 4294967283, v16, v15, __p, 162);
      cv::error(v17, v13);
    }
  }

  else
  {
    v6 = ((((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3)) * a3;
  }

  if (v6 == v10 || a2 == 1)
  {
    v12 = 0x4000;
  }

  else
  {
    v12 = 0;
  }

  if (v6 * a2 > 0x7FFFFFFF)
  {
    v12 = 0;
  }

  *result = v9 | v12;
  *(result + 4) = v6;
  return result;
}

void sub_22D273E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void cvReleaseMat(void **a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvReleaseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v12, 4294967287, v11, v10, __p, 183);
    cv::error(v12, v1);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    v4 = *v2 & 0xFFFF0000;
    if (v4 != 1111687168 && (v4 != 1111621632 || (v2[9] & 0x80000000) != 0 || (v2[8] & 0x80000000) != 0))
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "");
      std::string::basic_string[abi:ne200100]<0>(v10, "cvReleaseMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v12, 4294967090, v11, v10, __p, 190);
      cv::error(v12, v5);
    }

    *a1 = 0;
    v6 = v3 & 0xFFFF0000;
    if ((v6 == 1111687168 || v6 == 1111621632 && v2[9] >= 1 && v2[8] >= 1) && *(v2 + 3))
    {
      v7 = *(v2 + 1);
      *(v2 + 3) = 0;
      if (v7)
      {
        if ((*v7)-- == 1)
        {
          cvFree_(v7);
        }
      }

      *(v2 + 1) = 0;
    }

    cvFree_(v2);
  }
}

void sub_22D274104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvCloneMat(uint64_t a1)
{
  if (!a1 || (v2 = *a1, HIWORD(*a1) != 16962) || (v3 = *(a1 + 36), v3 < 1) || (v4 = *(a1 + 32), v4 <= 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "Bad CvMat header");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvCloneMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v12, 4294967291, v11, v10, __p, 205);
    cv::error(v12, v5);
  }

  MatHeader = cvCreateMatHeader(v4, v3, v2);
  v7 = MatHeader;
  if (*(a1 + 24))
  {
    cvCreateData(MatHeader);
    cvCopy(a1, v7, 0);
  }

  return v7;
}

void sub_22D274284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvInitMatNDHeader(uint64_t result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "NULL matrix header pointer");
    std::string::basic_string[abi:ne200100]<0>(v17, "cvInitMatNDHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v19, 4294967269, v18, v17, __p, 231);
    cv::error(v19, v5);
  }

  if (!a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "NULL <sizes> pointer");
    std::string::basic_string[abi:ne200100]<0>(v17, "cvInitMatNDHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v19, 4294967269, v18, v17, __p, 237);
    cv::error(v19, v6);
  }

  v7 = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  if (a2 - 33 <= 0xFFFFFFDF)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "non-positive or too large number of dimensions");
    std::string::basic_string[abi:ne200100]<0>(v17, "cvInitMatNDHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v19, 4294967085, v18, v17, __p, 241);
    cv::error(v19, v8);
  }

  v9 = a2 + 1;
  v10 = (result + 8 * a2 + 28);
  v11 = (a3 + 4 * a2 - 4);
  do
  {
    if (*v11 < 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "one of dimesion sizes is non-positive");
      std::string::basic_string[abi:ne200100]<0>(v17, "cvInitMatNDHeader");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v19, 4294967095, v18, v17, __p, 246);
      cv::error(v19, v12);
    }

    *(v10 - 1) = *v11;
    if (v7 >= 0x80000000)
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "The array is too big");
      std::string::basic_string[abi:ne200100]<0>(v17, "cvInitMatNDHeader");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v19, 4294967085, v18, v17, __p, 249);
      cv::error(v19, v13);
    }

    *v10 = v7;
    v10 -= 2;
    v14 = *v11--;
    v7 *= v14;
    --v9;
  }

  while (v9 > 1);
  if (v7 >= 0x80000000)
  {
    v15 = 1111687168;
  }

  else
  {
    v15 = 1111703552;
  }

  *result = v15 & 0xFFFFF000 | a4 & 0xFFF;
  *(result + 4) = a2;
  *(result + 24) = a5;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_22D2746D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  cv::Exception::~Exception(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

int *cvCreateMatND(unsigned int a1, uint64_t a2, unsigned int a3)
{
  MatNDHeader = cvCreateMatNDHeader(a1, a2, a3);
  cvCreateData(MatNDHeader);
  return MatNDHeader;
}

uint64_t cvCreateMatNDHeader(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if (a1 - 33 <= 0xFFFFFFDF)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "non-positive or too large number of dimensions");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvCreateMatNDHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v12, 4294967085, v11, v10, __p, 280);
    cv::error(v12, v6);
  }

  v7 = malloc_type_malloc(0x120uLL, 0x1092040C55096E7uLL);
  result = cvInitMatNDHeader(v7, a1, a2, a3, 0);
  *(result + 16) = 1;
  return result;
}

void sub_22D27489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

int *cvCloneMatND(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a1 || *(a1 + 2) != 16963)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "Bad CvMatND header");
    std::string::basic_string[abi:ne200100]<0>(v35, "cvCloneMatND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    v2 = cv::Exception::Exception(v43, 4294967291, v25, v35, __p, 295);
    cv::error(v2, v3);
  }

  v4 = *(a1 + 4);
  if (v4 >= 33)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "src->dims <= CV_MAX_DIM");
    std::string::basic_string[abi:ne200100]<0>(v35, "cvCloneMatND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    v5 = cv::Exception::Exception(v43, 4294967081, v25, v35, __p, 297);
    cv::error(v5, v6);
  }

  if (v4 >= 1)
  {
    v7 = (a1 + 32);
    v8 = v4;
    v9 = v43;
    do
    {
      v10 = *v7;
      v7 += 2;
      *v9++ = v10;
      --v8;
    }

    while (v8);
  }

  MatNDHeader = cvCreateMatNDHeader(v4, v43, *a1);
  v12 = MatNDHeader;
  if (*(a1 + 24))
  {
    cvCreateData(MatNDHeader);
    cv::Mat::Mat(v35, a1, 0);
    cv::Mat::Mat(__p, v12, 0);
    v13 = *(v12 + 3);
    cv::_OutputArray::_OutputArray(v25, __p);
    cv::Mat::copyTo(v35, v25);
    if (v27 != v13)
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "_dst.data == data0");
      std::string::basic_string[abi:ne200100]<0>(v23, "cvCloneMatND");
      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v25, 4294967081, v24, v23, v22, 311);
      cv::error(v25, v14);
    }

    if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(__p);
    }

    v27 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (SHIDWORD(__p[0]) >= 1)
    {
      v15 = 0;
      v16 = v32;
      do
      {
        *(v16 + 4 * v15++) = 0;
      }

      while (v15 < SHIDWORD(__p[0]));
    }

    v28 = 0;
    if (v33)
    {
      v17 = v33 == &v34;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      free(v33);
    }

    if (v36 && atomic_fetch_add(v36, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v35);
    }

    v35[2] = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    if (SHIDWORD(v35[0]) >= 1)
    {
      v18 = 0;
      v19 = v40;
      do
      {
        *(v19 + 4 * v18++) = 0;
      }

      while (v18 < SHIDWORD(v35[0]));
    }

    v36 = 0;
    if (v41)
    {
      v20 = v41 == &v42;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      free(v41);
    }
  }

  return v12;
}

void sub_22D274C8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t cvInitNArrayIterator(unsigned int a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a4;
  v9 = a2;
  if (a1 - 11 <= 0xFFFFFFF5)
  {
    std::string::basic_string[abi:ne200100]<0>(v64, "Incorrect number of arrays");
    std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v65, 4294967085, v64, v63, __p, 386);
    cv::error(v65, v10);
  }

  if (!a2 || !a4)
  {
    std::string::basic_string[abi:ne200100]<0>(v64, "Some of required array pointers is NULL");
    std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v65, 4294967269, v64, v63, __p, 389);
    cv::error(v65, v11);
  }

  if (!a5)
  {
    std::string::basic_string[abi:ne200100]<0>(v64, "Iterator pointer is NULL");
    std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v65, 4294967269, v64, v63, __p, 392);
    cv::error(v65, v12);
  }

  if ((a1 & 0x80000000) != 0)
  {
    v14 = 0;
    v17 = -1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = a5 + 224;
    v16 = a6 & 3;
    v59 = a5 + 16;
    v60 = a1;
    v57 = a5 + 224;
    v58 = a1 + 1;
    v17 = -1;
    v56 = v16;
    do
    {
      v18 = v14;
      if (v13 >= v60)
      {
        MatND = a3;
        if (!a3)
        {
          break;
        }
      }

      else
      {
        MatND = *(v9 + 8 * v13);
        if (!MatND)
        {
          std::string::basic_string[abi:ne200100]<0>(v64, "Some of required array pointers is NULL");
          std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(v65, 4294967269, v64, v63, __p, 402);
          cv::error(v65, v41);
        }
      }

      if (*(MatND + 1) != 16963 || !*(MatND + 3))
      {
        v61 = 0;
        MatND = cvGetMatND(MatND, v7 + 288 * v13, &v61);
        if (v61)
        {
          std::string::basic_string[abi:ne200100]<0>(v64, "COI set is not allowed here");
          std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(v65, 4294967272, v64, v63, __p, 413);
          cv::error(v65, v20);
        }
      }

      *(v15 + 8 * v13) = MatND;
      v14 = MatND;
      if (v13)
      {
        if (MatND[1] != v18[1])
        {
          std::string::basic_string[abi:ne200100]<0>(v64, "Number of dimensions is the same for all arrays");
          std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(v65, 4294967087, v64, v63, __p, 422);
          cv::error(v65, v21);
        }

        if (v13 >= v60)
        {
          if ((*MatND & 0xFFE) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v64, "Mask should have 8uC1 or 8sC1 data type");
            std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
            cv::Exception::Exception(v65, 4294967088, v64, v63, __p, 448);
            cv::error(v65, v23);
          }
        }

        else if (v16 > 1)
        {
          if (v16 == 2 && ((*v18 ^ *MatND) & 0xFF8) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v64, "Depth is not the same for all arrays");
            std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
            cv::Exception::Exception(v65, 4294967091, v64, v63, __p, 441);
            cv::error(v65, v24);
          }
        }

        else if (v16)
        {
          if (((*v18 ^ *MatND) & 0xFF8) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v64, "Number of channels is not the same for all arrays");
            std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
            cv::Exception::Exception(v65, 4294967091, v64, v63, __p, 436);
            cv::error(v65, v25);
          }
        }

        else if (((*v18 ^ *MatND) & 0xFFF) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v64, "Data type is not the same for all arrays");
          std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(v65, 4294967091, v64, v63, __p, 431);
          cv::error(v65, v22);
        }

        if ((v6 & 4) != 0 || (v26 = MatND[1], v26 < 1))
        {
          v14 = v18;
        }

        else
        {
          v27 = v9;
          v28 = a3;
          v29 = v7;
          v30 = v6;
          v31 = 0;
          v32 = 8;
          do
          {
            if (MatND[v32] != v18[v32])
            {
              std::string::basic_string[abi:ne200100]<0>(v64, "Dimension sizes are the same for all arrays");
              std::string::basic_string[abi:ne200100]<0>(v63, "cvInitNArrayIterator");
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
              cv::Exception::Exception(v65, 4294967087, v64, v63, __p, 456);
              cv::error(v65, v33);
            }

            ++v31;
            v32 += 2;
          }

          while (v31 < v26);
          v14 = v18;
          v6 = v30;
          v7 = v29;
          a3 = v28;
          v9 = v27;
          v15 = v57;
          v16 = v56;
        }
      }

      v34 = MatND[1];
      v35 = (((*MatND >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*MatND & 7))) & 3);
      LODWORD(v36) = v34 - 1;
      if (v34 - 1 > v17)
      {
        v36 = v34 - 1;
        v37 = &MatND[2 * v36 + 8];
        if (v35 == v37[1])
        {
          v38 = v34 - 2;
          while (1)
          {
            v35 *= *v37;
            if (v38 <= v17)
            {
              break;
            }

            v39 = *(v37 - 1);
            --v34;
            --v38;
            v37 -= 2;
            if (v35 != v39)
            {
              LODWORD(v36) = v34 - 1;
              goto LABEL_48;
            }
          }

          v34 = v17 + 1;
          LODWORD(v36) = v17;
        }
      }

LABEL_48:
      if (v35 <= 0x7FFFFFFF || v36 != v17)
      {
        v34 = v36;
      }

      *(v15 + 8 * v13) = MatND;
      if (v34 > v17)
      {
        v17 = v34;
      }

      *(v59 + 8 * v13++) = *(MatND + 3);
    }

    while (v13 != v58);
  }

  v42 = v14[1];
  if (v42 - 1 <= v17)
  {
    v48 = 0x100000001;
    v45 = a5;
    v46 = a1;
  }

  else
  {
    v43 = v42 - 1;
    v44 = &v14[2 * v42 + 6];
    LODWORD(v42) = 1;
    v45 = a5;
    v46 = a1;
    do
    {
      v47 = *v44;
      v44 -= 2;
      v42 = (v47 * v42);
      --v43;
    }

    while (v43 > v17);
    v48 = v42 | 0x100000000;
  }

  result = (v17 + 1);
  *v45 = v46;
  *(v45 + 4) = result;
  *(v45 + 8) = v48;
  if ((v17 & 0x80000000) == 0)
  {
    v50 = v14 + 8;
    v51 = (v45 + 96);
    v52 = (v17 + 1);
    do
    {
      v53 = *v50;
      v50 += 2;
      *v51++ = v53;
      --v52;
    }

    while (v52);
  }

  return result;
}

void sub_22D275668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  cv::Exception::~Exception(&a36);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

_DWORD *cvGetMatND(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  if (a3)
  {
    *a3 = 0;
  }

  if (!a1 || !a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "NULL array pointer is passed");
    std::string::basic_string[abi:ne200100]<0>(v17, "cvGetMatND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v18, 4294967269, v15, v17, __p, 328);
    cv::error(v18, v5);
  }

  v6 = *a1;
  if (HIWORD(*a1) == 16963)
  {
    if (!*(a1 + 24))
    {
      std::string::basic_string[abi:ne200100]<0>(v15, "The matrix has NULL data pointer");
      std::string::basic_string[abi:ne200100]<0>(v17, "cvGetMatND");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v18, 4294967269, v15, v17, __p, 333);
      cv::error(v18, v7);
    }

    return v4;
  }

  if (v6 == 144)
  {
    Mat = cvGetMat(a1, v15, a3, 0);
    v4 = Mat;
    if (!Mat)
    {
      goto LABEL_15;
    }

    v6 = *Mat;
  }

  if (HIWORD(v6) != 16962 || v4[9] < 1 || v4[8] <= 0)
  {
LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(v17, "Unrecognized or unsupported array type");
    std::string::basic_string[abi:ne200100]<0>(__p, "cvGetMatND");
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v18, 4294967291, v17, __p, v14, 345);
    cv::error(v18, v9);
  }

  v10 = *(v4 + 3);
  if (!v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "Input array has NULL data pointer");
    std::string::basic_string[abi:ne200100]<0>(__p, "cvGetMatND");
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v18, 4294967269, v17, __p, v14, 348);
    cv::error(v18, v11);
  }

  *(a2 + 24) = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v12 = *v4;
  *a2 = *v4;
  *(a2 + 4) = 2;
  *(a2 + 32) = v4[8];
  *(a2 + 36) = v4[1];
  *(a2 + 40) = v4[9];
  *(a2 + 44) = (((v12 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v12 & 7))) & 3);
  return a2;
}

void sub_22D275AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  cv::Exception::~Exception(&a36);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

BOOL cvNextNArraySlice(_DWORD *a1)
{
  if (!a1)
  {
    cvNextNArraySlice_cold_1();
  }

  v1 = a1[1];
  if (v1 < 1)
  {
    return 0;
  }

  v2 = a1 + 24;
  v5 = *a1;
  v3 = a1 + 56;
  v4 = v5;
  do
  {
    v6 = v1 - 1;
    if (v4 >= 1)
    {
      v7 = v4;
      v8 = v3;
      do
      {
        *(v8 - 26) += *(*v8 + 8 * v6 + 36);
        ++v8;
        --v7;
      }

      while (v7);
    }

    v9 = v2[v6];
    v2[v6] = v9 - 1;
    if (v9 > 1)
    {
      break;
    }

    v10 = *(*v3 + 8 * v6 + 32);
    if (v4 >= 1)
    {
      v11 = v4;
      v12 = v3;
      do
      {
        *(v12 - 26) -= v10 * *(*v12 + 8 * v6 + 36);
        ++v12;
        --v11;
      }

      while (v11);
    }

    v2[v6] = v10;
  }

  while (v1-- > 1);
  return v9 > 1;
}

_DWORD *cvCreateSparseMat(int a1, int *a2, unsigned int a3)
{
  v6 = (0x88442211 >> (4 * (a3 & 7))) & 0xF;
  if (!v6)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "invalid array data type");
    std::string::basic_string[abi:ne200100]<0>(v23, "cvCreateSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v25, 4294967086, v24, v23, __p, 538);
    cv::error(v25, v7);
  }

  if ((a1 - 1025) <= 0xFFFFFBFF)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "bad number of dimensions");
    std::string::basic_string[abi:ne200100]<0>(v23, "cvCreateSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v25, 4294967085, v24, v23, __p, 541);
    cv::error(v25, v8);
  }

  if (!a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "NULL <sizes> pointer");
    std::string::basic_string[abi:ne200100]<0>(v23, "cvCreateSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v25, 4294967269, v24, v23, __p, 544);
    cv::error(v25, v9);
  }

  if (a1 >= 1)
  {
    v10 = a1;
    v11 = a2;
    do
    {
      v12 = *v11++;
      if (v12 <= 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v24, "one of dimesion sizes is non-positive");
        std::string::basic_string[abi:ne200100]<0>(v23, "cvCreateSparseMat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
        cv::Exception::Exception(v25, 4294967095, v24, v23, __p, 549);
        cv::error(v25, v13);
      }

      --v10;
    }

    while (v10);
  }

  if (a1 <= 32)
  {
    v14 = 32;
  }

  else
  {
    v14 = a1;
  }

  v15 = malloc_type_malloc(4 * (v14 - 32) + 184, 0x10B0040B031E2F5uLL);
  *v15 = a3 & 0xFFF | 0x42440000;
  v15[1] = a1;
  *(v15 + 1) = 0;
  v15[4] = 1;
  v16 = 4 * a1;
  memcpy(v15 + 13, a2, v16);
  if ((v6 & (v6 - 1)) != 0)
  {
    cvCreateMemStorage_cold_1();
  }

  v17 = (v6 + v6 * ((a3 >> 3) & 0x1FF) + ((v6 + 15) & -v6) + 3) & 0xFFFC;
  v15[11] = (v6 + 15) & -v6;
  v15[12] = v17;
  v18 = v16 + v17 + 15;
  MemStorage = cvCreateMemStorage(4096);
  *(v15 + 3) = cvCreateSet(0, 112, v18 & 0xFFFFFFF0, MemStorage);
  v15[10] = 1024;
  v20 = malloc_type_malloc(0x2000uLL, 0x80040B8603338uLL);
  *(v15 + 4) = v20;
  bzero(v20, 0x2000uLL);
  return v15;
}

void sub_22D276020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void cvReleaseSparseMat(uint64_t *a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "");
    std::string::basic_string[abi:ne200100]<0>(v5, "cvReleaseSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v7, 4294967287, v6, v5, __p, 582);
    cv::error(v7, v1);
  }

  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 2) != 16964)
    {
      std::string::basic_string[abi:ne200100]<0>(v6, "");
      std::string::basic_string[abi:ne200100]<0>(v5, "cvReleaseSparseMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v7, 4294967090, v6, v5, __p, 589);
      cv::error(v7, v3);
    }

    *a1 = 0;
    v7[0] = *(*(v2 + 24) + 72);
    cvReleaseMemStorage(v7);
    cvFree_(*(v2 + 32));
    *(v2 + 32) = 0;
    cvFree_(v2);
  }
}

void sub_22D276234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

_DWORD *cvCloneSparseMat(uint64_t a1)
{
  if (!a1 || HIWORD(*a1) != 16964)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "Invalid sparse array header");
    std::string::basic_string[abi:ne200100]<0>(v6, "cvCloneSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v8, 4294967291, v7, v6, __p, 606);
    cv::error(v8, v2);
  }

  SparseMat = cvCreateSparseMat(*(a1 + 4), (a1 + 52), *a1);
  cvCopy(a1, SparseMat, 0);
  return SparseMat;
}

void sub_22D276390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvInitSparseMatIterator(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + 2) != 16964)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "Invalid sparse matrix header");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvInitSparseMatIterator");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v11, 4294967291, v10, v9, __p, 621);
    cv::error(v11, v3);
  }

  if (!a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "NULL iterator pointer");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvInitSparseMatIterator");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v11, 4294967269, v10, v9, __p, 624);
    cv::error(v11, v4);
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  v5 = *(a1 + 40);
  if (v5 < 1)
  {
    LODWORD(v6) = 0;
    result = 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      result = *(*(a1 + 32) + 8 * v6);
      if (result)
      {
        break;
      }

      if (v5 == ++v6)
      {
        result = 0;
        LODWORD(v6) = *(a1 + 40);
        goto LABEL_13;
      }
    }

    *(a2 + 8) = result;
  }

LABEL_13:
  *(a2 + 16) = v6;
  return result;
}

void sub_22D27659C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void cvReleaseData(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = *a1 & 0xFFFF0000;
  if (v2 == 1111687168)
  {
    goto LABEL_6;
  }

  if (v2 == 1111621632)
  {
    if (*(a1 + 36) >= 1 && *(a1 + 32) >= 1)
    {
LABEL_6:
      if (*(a1 + 24))
      {
        v4 = (a1 + 8);
        v3 = *(a1 + 8);
        v4[2] = 0;
        if (v3)
        {
          if ((*v3)-- == 1)
          {
            cvFree_(v3);
          }
        }

        *v4 = 0;
      }

      return;
    }

LABEL_17:
    std::string::basic_string[abi:ne200100]<0>(v11, "unrecognized or unsupported array type");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvReleaseData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v12, 4294967291, v11, v10, __p, 996);
    cv::error(v12, v7);
  }

  if (*a1 != 144)
  {
    goto LABEL_17;
  }

  v6 = CvIPL;
  if (CvIPL)
  {

    v6();
  }

  else
  {
    v8 = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 88) = 0;

    cvFree_(v8);
  }
}

void sub_22D276790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvPtr2D(uint64_t a1, unsigned int a2, unsigned int a3, int *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_30;
  }

  v4 = *a1;
  v5 = *a1 & 0xFFFF0000;
  if (v5 == 1111621632)
  {
    v6 = *(a1 + 36);
    if (v6 >= 1)
    {
      v7 = *(a1 + 32);
      if (v7 >= 1)
      {
        if (*(a1 + 24))
        {
          if (v6 <= a3 || v7 <= a2)
          {
            std::string::basic_string[abi:ne200100]<0>(v28, "index is out of range");
            std::string::basic_string[abi:ne200100]<0>(v27, "cvPtr2D");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
            cv::Exception::Exception(__src, 4294967085, v28, v27, __p, 1754);
            cv::error(__src, v8);
          }

          if (a4)
          {
            *a4 = *a1 & 0xFFF;
          }

          return *(a1 + 24) + *(a1 + 4) * a2 + (((((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3)) * a3);
        }
      }
    }

LABEL_30:
    std::string::basic_string[abi:ne200100]<0>(v28, "unrecognized or unsupported array type");
    std::string::basic_string[abi:ne200100]<0>(v27, "cvPtr2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(__src, 4294967291, v28, v27, __p, 1830);
    cv::error(__src, v21);
  }

  if (v4 == 144)
  {
    v10 = *(a1 + 88);
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = *(a1 + 16) >> 3;
    v12 = *(a1 + 28);
    if (!v12)
    {
      v11 *= *(a1 + 8);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = v13[3];
      v15 = v13[4];
      v10 += *(a1 + 96) * v13[2] + v13[1] * v11;
      if (v12)
      {
        v16 = *v13;
        if (!v16)
        {
          std::string::basic_string[abi:ne200100]<0>(v28, "COI must be non-null in case of planar images");
          std::string::basic_string[abi:ne200100]<0>(v27, "cvPtr2D");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(__src, 4294967272, v28, v27, __p, 1785);
          cv::error(__src, v17);
        }

        v10 += *(a1 + 80) * (v16 - 1);
      }
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 44);
    }

    if (v15 <= a2 || v14 <= a3)
    {
      std::string::basic_string[abi:ne200100]<0>(v28, "index is out of range");
      std::string::basic_string[abi:ne200100]<0>(v27, "cvPtr2D");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(__src, 4294967085, v28, v27, __p, 1797);
      cv::error(__src, v23);
    }

    v9 = v10 + (v11 * a3 + *(a1 + 96) * a2);
    if (a4)
    {
      v24 = *(a1 + 8);
      if ((v24 - 5) <= 0xFFFFFFFB)
      {
        std::string::basic_string[abi:ne200100]<0>(v28, "");
        std::string::basic_string[abi:ne200100]<0>(v27, "cvPtr2D");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
        cv::Exception::Exception(__src, 4294967086, v28, v27, __p, 1805);
        cv::error(__src, v25);
      }

      v20 = ((0x43160520u >> (((*(a1 + 16) >> 2) & 0x3C) + ((*(a1 + 16) >> 31) & 0x14))) & 7 | (8 * v24)) - 8;
      goto LABEL_41;
    }
  }

  else
  {
    if (v5 == 1111752704)
    {
      __src[0] = a2;
      __src[1] = a3;
      return icvGetNodePtr(a1, __src, a4, 1, 0);
    }

    if (v5 != 1111687168)
    {
      goto LABEL_30;
    }

    v18 = *(a1 + 24);
    if (!v18)
    {
      goto LABEL_30;
    }

    if (*(a1 + 4) != 2 || *(a1 + 32) <= a2 || *(a1 + 40) <= a3)
    {
      std::string::basic_string[abi:ne200100]<0>(v28, "index is out of range");
      std::string::basic_string[abi:ne200100]<0>(v27, "cvPtr2D");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(__src, 4294967085, v28, v27, __p, 1817);
      cv::error(__src, v19);
    }

    v9 = v18 + *(a1 + 36) * a2 + *(a1 + 44) * a3;
    if (a4)
    {
      v20 = *a1 & 0xFFF;
LABEL_41:
      *a4 = v20;
    }
  }

  return v9;
}

void sub_22D276DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
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

  _Unwind_Resume(a1);
}

uint64_t cvGetElemType(int *a1)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v1 = *a1;
  v2 = *a1 & 0xFFFF0000;
  if (v2 == 1111752704 || v2 == 1111687168)
  {
    return v1 & 0xFFF;
  }

  if (v2 == 1111621632)
  {
    if (a1[9] < 1 || a1[8] < 1)
    {
      goto LABEL_15;
    }

    return v1 & 0xFFF;
  }

  if (v1 != 144 || !*(a1 + 11))
  {
LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(v8, "unrecognized or unsupported array type");
    std::string::basic_string[abi:ne200100]<0>(v7, "cvGetElemType");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v9, 4294967291, v8, v7, __p, 1086);
    cv::error(v9, v5);
  }

  return ((0x43160520u >> (((a1[4] >> 2) & 0x3C) + ((a1[4] >> 31) & 0x14))) & 7 | (8 * a1[2])) - 8;
}

void sub_22D276FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvGetDims(uint64_t a1, int *__dst)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  v2 = __dst;
  v3 = *a1 & 0xFFFF0000;
  if (v3 == 1111621632)
  {
    if (*(a1 + 36) >= 1)
    {
      v4 = *(a1 + 32);
      if (v4 >= 1)
      {
        if (__dst)
        {
          *__dst = v4;
          v5 = *(a1 + 36);
LABEL_11:
          __dst[1] = v5;
          return 2;
        }

        return 2;
      }
    }

    goto LABEL_20;
  }

  if (*a1 == 144)
  {
    if (*(a1 + 88))
    {
      if (__dst)
      {
        *__dst = *(a1 + 44);
        v5 = *(a1 + 40);
        goto LABEL_11;
      }

      return 2;
    }

LABEL_20:
    std::string::basic_string[abi:ne200100]<0>(v14, "unrecognized or unsupported array type");
    std::string::basic_string[abi:ne200100]<0>(v13, "cvGetDims");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v15, 4294967291, v14, v13, __p, 1140);
    cv::error(v15, v10);
  }

  if (v3 == 1111752704)
  {
    v6 = *(a1 + 4);
    if (__dst)
    {
      memcpy(__dst, (a1 + 52), 4 * v6);
    }
  }

  else
  {
    if (v3 != 1111687168)
    {
      goto LABEL_20;
    }

    v6 = *(a1 + 4);
    if (__dst && v6 >= 1)
    {
      v7 = (a1 + 32);
      v8 = *(a1 + 4);
      do
      {
        v9 = *v7;
        v7 += 2;
        *v2++ = v9;
        --v8;
      }

      while (v8);
    }
  }

  return v6;
}

void sub_22D277190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

unint64_t cvGetSize(uint64_t a1)
{
  if (!a1)
  {
LABEL_11:
    std::string::basic_string[abi:ne200100]<0>(v10, "Array should be CvMat or IplImage");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvGetSize");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v11, 4294967291, v10, v9, __p, 1238);
    cv::error(v11, v6);
  }

  if (HIWORD(*a1) == 16962)
  {
    v1 = *(a1 + 36);
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    v2 = *(a1 + 32);
    if ((v2 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*a1 != 144)
    {
      goto LABEL_11;
    }

    v3 = *(a1 + 48);
    v4 = (v3 + 16);
    if (v3)
    {
      v5 = (v3 + 12);
    }

    else
    {
      v4 = (a1 + 44);
      v5 = (a1 + 40);
    }

    v1 = *v5;
    v2 = *v4;
  }

  return v1 | (v2 << 32);
}

void sub_22D277308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvGetMat(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v6 = a1;
  if (!a1 || !a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "NULL array pointer is passed");
    std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v40, 4294967269, v39, v38, __p, 2382);
    cv::error(v40, v7);
  }

  v8 = *a1;
  v9 = *a1 & 0xFFFF0000;
  if (v9 != 1111621632)
  {
    if (v8 == 144)
    {
      if (!*(a1 + 88))
      {
        std::string::basic_string[abi:ne200100]<0>(v39, "The image has NULL data pointer");
        std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
        cv::Exception::Exception(v40, 4294967269, v39, v38, __p, 2397);
        cv::error(v40, v12);
      }

      v13 = (0x43160520u >> (((*(a1 + 16) >> 2) & 0x3C) + ((*(a1 + 16) >> 31) & 0x14))) & 7;
      v14 = *(a1 + 8);
      if (v14 <= 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(a1 + 28);
      }

      v16 = *(a1 + 48);
      if (v16)
      {
        if (v15 != 1)
        {
          v11 = *v16;
          if (v14 >= 513)
          {
            std::string::basic_string[abi:ne200100]<0>(v39, "The image is interleaved and has over CV_CN_MAX channels");
            std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
            cv::Exception::Exception(v40, 4294967281, v39, v38, __p, 2429);
            cv::error(v40, v35);
          }

          cvInitMatHeader(a2, v16[4], v16[3], v13 | (8 * v14 - 8), *(a1 + 88) + *(a1 + 96) * v16[2] + v16[1] * (((((8 * v14 - 8) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * v13)) & 3)), *(a1 + 96));
LABEL_48:
          v6 = a2;
          if (!a3)
          {
            return v6;
          }

LABEL_49:
          *a3 = v11;
          return v6;
        }

        if (!*v16)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "Images with planar data layout should be used with COI selected");
          std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(v40, 4294967090, v39, v38, __p, 2413);
          cv::error(v40, v17);
        }

        v19 = v16[3];
        v18 = v16[4];
        v20 = *(a1 + 96);
        v21 = *(a1 + 88) + (*v16 - 1) * *(a1 + 80) + v20 * v16[2] + (v16[1] << ((0xFA50u >> (2 * v13)) & 3));
        v22 = a2;
        v23 = v13;
      }

      else
      {
        if (v15)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "Pixel order should be used with coi == 0");
          std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(v40, 4294967090, v39, v38, __p, 2443);
          cv::error(v40, v34);
        }

        v23 = (v13 | (8 * v14)) - 8;
        v19 = *(a1 + 40);
        v18 = *(a1 + 44);
        v21 = *(a1 + 88);
        v20 = *(a1 + 96);
        v22 = a2;
      }

      cvInitMatHeader(v22, v18, v19, v23, v21, v20);
LABEL_44:
      v11 = 0;
      goto LABEL_48;
    }

LABEL_22:
    if (!a4 || v9 != 1111687168)
    {
      std::string::basic_string[abi:ne200100]<0>(v39, "Unrecognized or unsupported array type");
      std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v40, 4294967090, v39, v38, __p, 2482);
      cv::error(v40, v25);
    }

    v24 = *(a1 + 32);
    if (!*(a1 + 24))
    {
      std::string::basic_string[abi:ne200100]<0>(v39, "Input array has NULL data pointer");
      std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v40, 4294967269, v39, v38, __p, 2458);
      cv::error(v40, v26);
    }

    if ((v8 & 0x4000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v39, "Only continuous nD arrays are supported here");
      std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
      cv::Exception::Exception(v40, 4294967291, v39, v38, __p, 2461);
      cv::error(v40, v27);
    }

    v28 = *(a1 + 4);
    if (v28 < 3)
    {
      if (v28 != 1)
      {
        LODWORD(v28) = *(a1 + 40);
      }
    }

    else
    {
      v29 = (a1 + 40);
      v30 = v28 - 1;
      LODWORD(v28) = 1;
      do
      {
        v31 = *v29;
        v29 += 2;
        LODWORD(v28) = v31 * v28;
        --v30;
      }

      while (v30);
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 32) = v24;
    *(a2 + 36) = v28;
    v32 = *a1;
    v33 = ((((v32 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v32 & 7))) & 3)) * v28;
    if (v24 <= 1)
    {
      v33 = 0;
    }

    *a2 = *a1 & 0xFFF | 0x42424000;
    *(a2 + 4) = v33;
    if (v24 * v33 >= 0x80000000)
    {
      v11 = 0;
      *a2 = v32 & 0xFFF | 0x42420000;
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (*(a1 + 36) < 1 || *(a1 + 32) < 1)
  {
    goto LABEL_22;
  }

  if (!*(a1 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(v39, "The matrix has NULL data pointer");
    std::string::basic_string[abi:ne200100]<0>(v38, "cvGetMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v40, 4294967269, v39, v38, __p, 2387);
    cv::error(v40, v10);
  }

  v11 = 0;
  if (a3)
  {
    goto LABEL_49;
  }

  return v6;
}

void sub_22D277B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t icvGetNodePtr(uint64_t a1, _DWORD *__src, int *a3, int a4, int *a5)
{
  if (*(a1 + 2) != 16964)
  {
    icvGetNodePtr();
  }

  if (a5)
  {
    v7 = *a5;
  }

  else
  {
    v8 = *(a1 + 4);
    if (v8 < 1)
    {
      v7 = 0;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      do
      {
        v10 = __src[v9];
        if (v10 >= *(a1 + 52 + 4 * v9))
        {
          std::string::basic_string[abi:ne200100]<0>(v38, "One of indices is out of range");
          std::string::basic_string[abi:ne200100]<0>(v37, "icvGetNodePtr");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
          cv::Exception::Exception(&v39, 4294967085, v38, v37, __p, 658);
          cv::error(&v39, v11);
        }

        v7 = v10 + 1540483477 * v7;
        ++v9;
      }

      while (v9 < v8);
    }
  }

  v12 = *(a1 + 40);
  v13 = (v12 - 1) & v7;
  v14 = v7 & 0x7FFFFFFF;
  if (a4 < -1 || (v15 = *(*(a1 + 32) + 8 * v13)) == 0)
  {
LABEL_22:
    v18 = 0;
    if (!a4)
    {
      goto LABEL_46;
    }

    goto LABEL_25;
  }

  while (1)
  {
    if (*v15 == v14)
    {
      v16 = *(a1 + 4);
      if (v16 < 1)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        v17 = 0;
        while (__src[v17] == *(v15 + *(a1 + 48) + 4 * v17))
        {
          if (v16 == ++v17)
          {
            goto LABEL_24;
          }
        }
      }

      if (v17 == v16)
      {
        break;
      }
    }

    v15 = *(v15 + 8);
    if (!v15)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  v18 = v15 + *(a1 + 44);
  if (a4)
  {
LABEL_25:
    if (!v18)
    {
      v19 = *(a1 + 24);
      if (*(v19 + 104) >= 3 * v12)
      {
        if (v12 >= 512)
        {
          v20 = 2 * v12;
        }

        else
        {
          v20 = 1024;
        }

        v21 = v20 - 1;
        if ((v20 & (v20 - 1)) != 0)
        {
          icvGetNodePtr();
        }

        v22 = malloc_type_malloc(8 * v20, 0x80040B8603338uLL);
        bzero(v22, 8 * v20);
        inited = cvInitSparseMatIterator(a1, &v39);
        if (inited)
        {
          v24 = v41;
          for (i = v40; ; inited = i)
          {
            i = *(i + 8);
            if (!i)
            {
              v27 = v24 + 1;
              v28 = *(v39 + 40);
              if (v24 + 1 >= v28)
              {
LABEL_39:
                v41 = v27;
                v30 = *inited & v21;
                *(inited + 8) = *(v22 + v30);
                *(v22 + v30) = inited;
                break;
              }

              v29 = (*(v39 + 32) + 8 * v24++ + 8);
              while (1)
              {
                i = *v29;
                if (*v29)
                {
                  break;
                }

                ++v24;
                ++v29;
                if (v28 == v24)
                {
                  goto LABEL_39;
                }
              }
            }

            v40 = i;
            v26 = *inited & v21;
            *(inited + 8) = *(v22 + v26);
            *(v22 + v26) = inited;
          }
        }

        cvFree_(*(a1 + 32));
        *(a1 + 32) = v22;
        *(a1 + 40) = v20;
        v13 = v21 & v14;
        v19 = *(a1 + 24);
      }

      v31 = *(v19 + 96);
      v39 = v31;
      if (v31)
      {
        *(v19 + 96) = *(v31 + 8);
        *v31 &= 0x3FFFFFFu;
        ++*(v19 + 104);
      }

      else
      {
        cvSetAdd(v19, 0, &v39);
        v31 = v39;
      }

      *v31 = v14;
      v32 = *(a1 + 32);
      *(v31 + 8) = *(v32 + 8 * v13);
      *(v32 + 8 * v13) = v31;
      memcpy((v31 + *(a1 + 48)), __src, 4 * *(a1 + 4));
      v18 = v31 + *(a1 + 44);
      if (a4 >= 1)
      {
        bzero((v31 + *(a1 + 44)), (((*a1 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*a1 & 7))) & 3));
      }
    }
  }

LABEL_46:
  if (a3)
  {
    *a3 = *a1 & 0xFFF;
  }

  return v18;
}

void sub_22D277FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cvPtrND(uint64_t a1, unsigned int *__src, int *a3, int a4, int *a5)
{
  if (!__src)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "NULL pointer to indices");
    std::string::basic_string[abi:ne200100]<0>(v18, "cvPtrND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v20, 4294967269, v19, v18, __p, 1879);
    cv::error(v20, v5);
  }

  if (!a1)
  {
    goto LABEL_22;
  }

  v6 = *a1 & 0xFFFF0000;
  if (v6 == 1111621632)
  {
    if (*(a1 + 36) >= 1 && *(a1 + 32) > 0)
    {
      return cvPtr2D(a1, *__src, __src[1], a3);
    }

    goto LABEL_22;
  }

  if (v6 != 1111687168)
  {
    if (v6 == 1111752704)
    {
      return icvGetNodePtr(a1, __src, a3, a4, a5);
    }

    if (*a1 == 144)
    {
      return cvPtr2D(a1, *__src, __src[1], a3);
    }

LABEL_22:
    std::string::basic_string[abi:ne200100]<0>(v19, "unrecognized or unsupported array type");
    std::string::basic_string[abi:ne200100]<0>(v18, "cvPtrND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v20, 4294967291, v19, v18, __p, 1903);
    cv::error(v20, v15);
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = *(a1 + 4);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 36);
    do
    {
      v12 = __src[v10];
      if (v12 >= *(v11 - 1))
      {
        std::string::basic_string[abi:ne200100]<0>(v19, "index is out of range");
        std::string::basic_string[abi:ne200100]<0>(v18, "cvPtrND");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
        cv::Exception::Exception(v20, 4294967085, v19, v18, __p, 1893);
        cv::error(v20, v13);
      }

      v14 = *v11;
      v11 += 2;
      v8 += v14 * v12;
      ++v10;
    }

    while (v10 < v9);
  }

  if (a3)
  {
    *a3 = *a1 & 0xFFF;
  }

  return v8;
}

void sub_22D278310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvInitImageHeader(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "null pointer to header");
    std::string::basic_string[abi:ne200100]<0>(v31, "cvInitImageHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v33, 4294967287, v32, v31, __p, 2908);
    cv::error(v33, v12);
  }

  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 144;
  if ((a4 - 1) > 3)
  {
    v14 = "";
    v15 = "";
  }

  else
  {
    v13 = &icvGetColorModel(int,char const**,char const**)::tab[2 * (a4 - 1)];
    v14 = *v13;
    v15 = v13[1];
  }

  strncpy((a1 + 20), v14, 4uLL);
  strncpy((a1 + 24), v15, 4uLL);
  if ((a2 & 0x8000000080000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "Bad input roi");
    std::string::basic_string[abi:ne200100]<0>(v31, "cvInitImageHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v33, 4294967271, v32, v31, __p, 2918);
    cv::error(v33, v16);
  }

  v17 = a3 & 0x7FFFFFFF;
  v22 = a3 != 1 && v17 != 8 && v17 != 16 && v17 != 32 && a3 != 64;
  if (a4 < 0 || v22)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "Unsupported format");
    std::string::basic_string[abi:ne200100]<0>(v31, "cvInitImageHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v33, 4294967279, v32, v31, __p, 2925);
    cv::error(v33, v23);
  }

  if (a5 >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "Bad input origin");
    std::string::basic_string[abi:ne200100]<0>(v31, "cvInitImageHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v33, 4294967276, v32, v31, __p, 2927);
    cv::error(v33, v24);
  }

  if (a6 != 4 && a6 != 8)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "Bad input align");
    std::string::basic_string[abi:ne200100]<0>(v31, "cvInitImageHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v33, 4294967275, v32, v31, __p, 2930);
    cv::error(v33, v25);
  }

  *(a1 + 40) = a2;
  v26 = *(a1 + 48);
  if (v26)
  {
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 12) = a2;
  }

  if (a4 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = a4;
  }

  *(a1 + 8) = v27;
  *(a1 + 16) = a3;
  v28 = (a6 + ((v17 * a2 * v27 + 7) >> 3) - 1) & -a6;
  *(a1 + 96) = v28;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  *(a1 + 80) = v28 * HIDWORD(a2);
  return a1;
}

void sub_22D2787B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvCreateImageHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (CvIPL)
  {
    if ((a3 - 1) > 3)
    {
      v7 = "";
      v8 = "";
    }

    else
    {
      v6 = &icvGetColorModel(int,char const**,char const**)::tab[2 * (a3 - 1)];
      v7 = *v6;
      v8 = v6[1];
    }

    return CvIPL(a3, 0, a2, v7, v8, 0, 0, 4, a1, 0, 0, 0, 0);
  }

  else
  {
    v9 = malloc_type_malloc(0x90uLL, 0x10B0040E584B0E7uLL);

    return cvInitImageHeader(v9, a1, v4, v3, 0, 4);
  }
}

int *cvCreateImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ImageHeader = cvCreateImageHeader(a1, a2, a3);
  if (!ImageHeader)
  {
    cvCreateImage_cold_1();
  }

  v4 = ImageHeader;
  cvCreateData(ImageHeader);
  return v4;
}

void cvReleaseImageHeader(void ***a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "");
    std::string::basic_string[abi:ne200100]<0>(v4, "cvReleaseImageHeader");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v6, 4294967269, v5, v4, __p, 2959);
    cv::error(v6, v1);
  }

  v2 = *a1;
  if (*a1)
  {
    *a1 = 0;
    if (CvIPL)
    {
      CvIPL(v2, 5);
    }

    else
    {
      cvFree_(v2[6]);
      v2[6] = 0;
      cvFree_(v2);
    }
  }
}

void sub_22D278A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void cvReleaseImage(void ***a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "");
    std::string::basic_string[abi:ne200100]<0>(v5, "cvReleaseImage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v7, 4294967269, v6, v5, __p, 2983);
    cv::error(v7, v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v7[0] = *a1;
    *a1 = 0;
    cvReleaseData(v3);
    cvReleaseImageHeader(v7);
  }
}

void sub_22D278B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

_DWORD *cvSetImageROI(_DWORD *result, unint64_t a2, unint64_t a3)
{
  v3 = result;
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "");
    std::string::basic_string[abi:ne200100]<0>(v16, "cvSetImageROI");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v18, 4294967287, v17, v16, __p, 3000);
    cv::error(v18, v4);
  }

  v5 = HIDWORD(a2);
  if ((a3 & 0x8000000080000000) != 0 || (v6 = result[10], v6 <= a2) || (v7 = result[11], v7 <= SHIDWORD(a2)) || (v8 = a2 + a3, a2 + a3 < (a3 != 0)) || HIDWORD(a2) + HIDWORD(a3) < (HIDWORD(a3) != 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "rect.width >= 0 && rect.height >= 0 && rect.x < image->width && rect.y < image->height && rect.x + rect.width >= (int)(rect.width > 0) && rect.y + rect.height >= (int)(rect.height > 0)");
    std::string::basic_string[abi:ne200100]<0>(v16, "cvSetImageROI");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v18, 4294967081, v17, v16, __p, 3006);
    cv::error(v18, v9);
  }

  v10 = a2 & ~(a2 >> 31);
  v11 = v5 & ~(v5 >> 31);
  if (v6 >= v8)
  {
    v6 = v8;
  }

  if (v7 >= v5 + HIDWORD(a3))
  {
    v7 = v5 + HIDWORD(a3);
  }

  v12 = v6 - v10;
  v13 = v7 - v11;
  v14 = *(result + 6);
  if (v14)
  {
    v14[1] = v10;
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v13;
  }

  else
  {
    result = icvCreateROI(0, v10, v11, v12, v13);
    *(v3 + 6) = result;
  }

  return result;
}

void sub_22D278DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

_DWORD *icvCreateROI(int a1, int a2, int a3, int a4, int a5)
{
  v10 = CvIPL;
  if (CvIPL)
  {

    return v10();
  }

  else
  {
    result = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
    *result = a1;
    result[1] = a2;
    result[2] = a3;
    result[3] = a4;
    result[4] = a5;
  }

  return result;
}

_DWORD *cvSetImageCOI(_DWORD *result, unsigned int a2)
{
  v2 = result;
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "");
    std::string::basic_string[abi:ne200100]<0>(v7, "cvSetImageCOI");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v9, 4294967287, v8, v7, __p, 3073);
    cv::error(v9, v3);
  }

  if (result[2] < a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "");
    std::string::basic_string[abi:ne200100]<0>(v7, "cvSetImageCOI");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v9, 4294967272, v8, v7, __p, 3076);
    cv::error(v9, v4);
  }

  v5 = *(result + 6);
  if (a2 || v5)
  {
    if (v5)
    {
      *v5 = a2;
    }

    else
    {
      result = icvCreateROI(a2, 0, 0, result[10], result[11]);
      *(v2 + 6) = result;
    }
  }

  return result;
}

void sub_22D279088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvGetImageCOI(uint64_t a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "");
    std::string::basic_string[abi:ne200100]<0>(v5, "cvGetImageCOI");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v7, 4294967287, v6, v5, __p, 3096);
    cv::error(v7, v1);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

void sub_22D2791C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

uint64_t cvCloneImage(__int128 *a1)
{
  if (!a1 || *a1 != 144)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "Bad image header");
    std::string::basic_string[abi:ne200100]<0>(v15, "cvCloneImage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/array.cpp");
    cv::Exception::Exception(v17, 4294967291, v16, v15, __p, 3108);
    cv::error(v17, v2);
  }

  if (CvIPL)
  {
    return CvIPL(a1);
  }

  v3 = malloc_type_malloc(0x90uLL, 0x10B0040E584B0E7uLL);
  v4 = *(a1 + 16);
  v6 = a1[6];
  v5 = a1[7];
  *(v3 + 5) = a1[5];
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[4];
  *(v3 + 3) = a1[3];
  *(v3 + 6) = v6;
  *(v3 + 7) = v5;
  *(v3 + 16) = v4;
  v10 = *a1;
  *(v3 + 4) = v9;
  *(v3 + 1) = v7;
  *(v3 + 2) = v8;
  *v3 = v10;
  *(v3 + 17) = 0;
  *(v3 + 11) = 0;
  *(v3 + 6) = 0;
  v11 = *(a1 + 6);
  if (v11)
  {
    *(v3 + 6) = icvCreateROI(*v11, v11[1], v11[2], v11[3], v11[4]);
  }

  if (*(a1 + 11))
  {
    v12 = *(a1 + 20);
    cvCreateData(v3);
    memcpy(*(v3 + 11), *(a1 + 11), v12);
  }

  return v3;
}

void sub_22D2793A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void icvGetNodePtr()
{
  __assert_rtn("icvGetNodePtr", "array.cpp", 650, "CV_IS_SPARSE_MAT( mat)");
}

{
  __assert_rtn("icvGetNodePtr", "array.cpp", 699, "(newsize & (newsize - 1)) == 0");
}

void cv::getMorphologyRowFilter(cv *this, uint64_t a2)
{
  v2 = a2 & 7;
  if (this < 2)
  {
    if (this)
    {
      if ((a2 & 7u) <= 2)
      {
        if ((a2 & 7) == 0)
        {
          operator new();
        }

        if (v2 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v2)
        {
          case 3:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }
    }

    else if ((a2 & 7u) <= 2)
    {
      if ((a2 & 7) == 0)
      {
        operator new();
      }

      if (v2 == 2)
      {
        operator new();
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
      }
    }

    cv::format(v7, a2);
    std::string::basic_string[abi:ne200100]<0>(v6, "getMorphologyRowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(v8, 4294967083, v7, v6, __p, 886);
    cv::error(v8, v4);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "op == MORPH_ERODE || op == MORPH_DILATE");
  std::string::basic_string[abi:ne200100]<0>(v6, "getMorphologyRowFilter");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
  cv::Exception::Exception(v8, 4294967081, v7, v6, __p, 848);
  cv::error(v8, v3);
}

void cv::getMorphologyColumnFilter(cv *this, uint64_t a2)
{
  v2 = a2 & 7;
  if (this < 2)
  {
    if (this)
    {
      if ((a2 & 7u) <= 2)
      {
        if ((a2 & 7) == 0)
        {
          operator new();
        }

        if (v2 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v2)
        {
          case 3:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }
    }

    else if ((a2 & 7u) <= 2)
    {
      if ((a2 & 7) == 0)
      {
        operator new();
      }

      if (v2 == 2)
      {
        operator new();
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
      }
    }

    cv::format(v7, a2);
    std::string::basic_string[abi:ne200100]<0>(v6, "getMorphologyColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(v8, 4294967083, v7, v6, __p, 933);
    cv::error(v8, v4);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "op == MORPH_ERODE || op == MORPH_DILATE");
  std::string::basic_string[abi:ne200100]<0>(v6, "getMorphologyColumnFilter");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
  cv::Exception::Exception(v8, 4294967081, v7, v6, __p, 895);
  cv::error(v8, v3);
}

void cv::getMorphologyFilter(unsigned int a1, uint64_t a2, void (***a3)(void *__return_ptr, void, uint64_t), void **a4)
{
  (**a3)(v14, a3, 0xFFFFFFFFLL);
  v12[0] = *a4;
  v11[0] = vrev64_s32(*v14[8]);
  cv::normalizeAnchor(v12, v11, v13);
  v7 = a2 & 7;
  *a4 = *v13;
  if (a1 < 2)
  {
    if (a1)
    {
      if ((a2 & 7u) <= 2)
      {
        if ((a2 & 7) == 0)
        {
          operator new();
        }

        if (v7 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }
    }

    else if ((a2 & 7u) <= 2)
    {
      if ((a2 & 7) == 0)
      {
        operator new();
      }

      if (v7 == 2)
      {
        operator new();
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
      }
    }

    cv::format(v12, a2);
    std::string::basic_string[abi:ne200100]<0>(v11, "getMorphologyFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(v13, 4294967083, v12, v11, __p, 971);
    cv::error(v13, v9);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "op == MORPH_ERODE || op == MORPH_DILATE");
  std::string::basic_string[abi:ne200100]<0>(v11, "getMorphologyFilter");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
  cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 943);
  cv::error(v13, v8);
}

void sub_22D27A4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  MEMORY[0x2318CB1A0](v29, 0x10A1C407469E563);
  cv::Mat::~Mat((v30 - 144));
  _Unwind_Resume(a1);
}

void sub_22D27A6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
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

  _Unwind_Resume(a1);
}

void cv::createMorphologyFilter(cv *a1, uint64_t a2, void (***a3)(uint64_t *__return_ptr, void, uint64_t), void **a4)
{
  (**a3)(&v18, a3, 0xFFFFFFFFLL);
  v11[0] = *a4;
  v9[0] = vrev64_s32(*v21);
  cv::normalizeAnchor(v11, v9, &v10);
  *a4 = v10;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  cv::_InputArray::_InputArray(&v10, &v18);
  v8 = cv::countNonZero(&v10, v7);
  if (v8 == v20 * v19)
  {
    cv::getMorphologyRowFilter(a1, a2);
  }

  cv::_InputArray::_InputArray(&v10, &v18);
  v9[0] = *a4;
  cv::getMorphologyFilter(a1, a2, &v10, v9);
}

void sub_22D27ADB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  cv::Ptr<cv::BaseFilter>::~Ptr((v29 - 224));
  cv::Ptr<cv::BaseColumnFilter>::~Ptr((v29 - 208));
  cv::Ptr<cv::BaseRowFilter>::~Ptr((v29 - 192));
  cv::Mat::~Mat((v29 - 176));
  _Unwind_Resume(a1);
}

void cv::getStructuringElement(unsigned int a1@<W0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "shape == MORPH_RECT || shape == MORPH_CROSS || shape == MORPH_ELLIPSE");
    std::string::basic_string[abi:ne200100]<0>(v26, "getStructuringElement");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(v28, 4294967081, v27, v26, __p, 1026);
    cv::error(v28, v7);
  }

  v27[0] = *a3;
  v26[0] = *a2;
  cv::normalizeAnchor(v27, v26, v28);
  *a3 = *v28;
  v8 = *a2;
  v9 = a2[1];
  if (v9 == 1 && v8 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  v12 = 0.0;
  if (v11 == 2)
  {
    v13 = v9 / 2;
    v23 = v8 / 2;
    if ((v9 + 1) >= 3)
    {
      v12 = 1.0 / (v13 * v13);
    }
  }

  else
  {
    v13 = 0;
    v23 = 0;
  }

  *(a4 + 80) = 0;
  *(a4 + 64) = a4 + 8;
  *(a4 + 72) = a4 + 80;
  *(a4 + 88) = 0;
  *a4 = 1124007936;
  *(a4 + 4) = 0u;
  *(a4 + 20) = 0u;
  *(a4 + 36) = 0u;
  *(a4 + 48) = 0u;
  v28[0] = v9;
  v28[1] = v8;
  cv::Mat::create(a4, 2, v28, 0);
  if (a2[1] >= 1)
  {
    v14 = 0;
    v22 = v23 + 1;
    while (1)
    {
      v15 = *(a4 + 16);
      v16 = *(a4 + 80);
      if (!v11)
      {
        goto LABEL_18;
      }

      if (v11 == 1)
      {
        break;
      }

      v19 = v14 - v13;
      if (v14 - v13 < 0)
      {
        v19 = v13 - v14;
      }

      if (v19 <= v13)
      {
        v20 = rint(sqrt(v12 * ((v13 - v14 + v13) * v14)) * v23);
        v17 = (v23 - v20) & ~((v23 - v20) >> 31);
        if (*a2 >= (v22 + v20))
        {
          v18 = v22 + v20;
        }

        else
        {
          v18 = *a2;
        }

LABEL_27:
        if (v17 < 1)
        {
          v17 = 0;
        }

        else
        {
          bzero((v15 + v16 * v14), v17);
        }

        goto LABEL_30;
      }

      v18 = 0;
LABEL_33:
      if (v18 < *a2)
      {
        v21 = (v15 + v16 * v14 + v18);
        do
        {
          *v21++ = 0;
          ++v18;
        }

        while (*a2 > v18);
      }

      if (++v14 >= a2[1])
      {
        return;
      }
    }

    if (v14 != a3[1])
    {
      v17 = *a3;
      v18 = *a3 + 1;
      goto LABEL_27;
    }

LABEL_18:
    v17 = 0;
    v18 = *a2;
LABEL_30:
    if (v17 >= v18)
    {
      v18 = v17;
    }

    else
    {
      memset((v15 + v16 * v14 + v17), 1, (v18 + ~v17) + 1);
    }

    goto LABEL_33;
  }
}

void sub_22D27B1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::morphOp(int a1, void (***a2)(void **__return_ptr, void, uint64_t), uint64_t a3, void (***a4)(__int128 *__return_ptr, void, uint64_t), uint64_t a5, int a6, int a7, uint64_t *a8)
{
  (**a4)(&v116, a4, 0xFFFFFFFFLL);
  if (v117)
  {
    v15 = *v121;
  }

  else
  {
    v15 = 0x300000003;
  }

  v107[0] = *a5;
  v64 = vrev64_s32(v15);
  __p[0] = v64;
  cv::normalizeAnchor(v107, __p, &v89);
  *v16.i8 = v89;
  *a5 = v89;
  v16.i64[1] = v16.i64[0];
  v17.i64[0] = v64;
  v17.i64[1] = -1;
  v18.i32[0] = vmovn_s32(vcgtq_s32(v17, v16)).u32[0];
  v18.i32[1] = vmovn_s32(vcgtq_s32(v16, v17)).i32[1];
  if ((vminv_u16(v18) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v107, "anchor.inside(Rect(0, 0, ksize.width, ksize.height))");
    std::string::basic_string[abi:ne200100]<0>(__p, "morphOp");
    std::string::basic_string[abi:ne200100]<0>(&v115, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v89, 4294967081, v107, __p, &v115, 1298);
    cv::error(&v89, v19);
  }

  (**a2)(v107, a2, 0xFFFFFFFFLL);
  v89 = vrev64_s32(*v112);
  (*(*a3 + 128))(a3, &v89, v107[0] & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a3)(__p, a3, 0xFFFFFFFFLL);
  if (!a6 || HIDWORD(v116) * DWORD2(v116) == 1)
  {
    cv::_OutputArray::_OutputArray(&v89, __p);
    cv::Mat::copyTo(v107, &v89);
    goto LABEL_9;
  }

  v63 = a8;
  if (!v117)
  {
    v115.i32[0] = (2 * a6) | 1;
    v115.i32[1] = v115.i32[0];
    v98 = -1;
    cv::getStructuringElement(0, &v115, &v98, &v89);
    if (v92)
    {
      atomic_fetch_add(v92, 1u);
    }

    if (v118 && atomic_fetch_add(v118, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v116);
    }

    v117 = 0;
    *(&v118 + 1) = 0;
    v119 = 0uLL;
    if (v116 <= 0)
    {
      *&v118 = 0;
      LODWORD(v116) = v89.i32[0];
    }

    else
    {
      v36 = 0;
      v37 = v121;
      do
      {
        v37->i32[v36++] = 0;
      }

      while (v36 < SDWORD1(v116));
      *&v118 = 0;
      LODWORD(v116) = v89.i32[0];
      if (SDWORD1(v116) > 2)
      {
        goto LABEL_70;
      }
    }

    if (v89.i32[1] <= 2)
    {
      DWORD1(v116) = v89.i32[1];
      *(&v116 + 1) = v90;
      v38 = v96;
      v39 = v122;
      *v122 = *v96;
      v39[1] = v38[1];
      goto LABEL_71;
    }

LABEL_70:
    cv::Mat::copySize(&v116, &v89);
LABEL_71:
    v119 = v93;
    v118 = v92;
    v117 = v91;
    v120 = v94;
    if (v92 && atomic_fetch_add(v92, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v89);
    }

    v91 = 0;
    v93 = 0uLL;
    *(&v92 + 1) = 0;
    if (v89.i32[1] >= 1)
    {
      v40 = 0;
      v41 = v95;
      do
      {
        *(v41 + 4 * v40++) = 0;
      }

      while (v40 < v89.i32[1]);
    }

    *&v92 = 0;
    if (v96)
    {
      v42 = v96 == v97;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      free(v96);
    }

    v35 = a1;
    *a5 = a6;
    *(a5 + 4) = a6;
    goto LABEL_83;
  }

  if (a6 >= 2)
  {
    cv::_InputArray::_InputArray(&v89, &v116);
    v30 = cv::countNonZero(&v89, v29);
    if (v30 == HIDWORD(v116) * DWORD2(v116))
    {
      v31 = *a5 * a6;
      v32 = *(a5 + 4) * a6;
      *a5 = v31;
      *(a5 + 4) = v32;
      v115 = vmla_s32(v64, vadd_s32(v64, -1), vdup_n_s32(a6 - 1));
      v98 = __PAIR64__(v32, v31);
      cv::getStructuringElement(0, &v115, &v98, &v89);
      if (v92)
      {
        atomic_fetch_add(v92, 1u);
      }

      if (v118 && atomic_fetch_add(v118, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v116);
      }

      v117 = 0;
      *(&v118 + 1) = 0;
      v119 = 0uLL;
      if (v116 <= 0)
      {
        *&v118 = 0;
        LODWORD(v116) = v89.i32[0];
      }

      else
      {
        v33 = 0;
        v34 = v121;
        do
        {
          v34->i32[v33++] = 0;
        }

        while (v33 < SDWORD1(v116));
        *&v118 = 0;
        LODWORD(v116) = v89.i32[0];
        if (SDWORD1(v116) > 2)
        {
          goto LABEL_135;
        }
      }

      if (v89.i32[1] <= 2)
      {
        DWORD1(v116) = v89.i32[1];
        *(&v116 + 1) = v90;
        v58 = v96;
        v59 = v122;
        *v122 = *v96;
        v59[1] = v58[1];
        goto LABEL_136;
      }

LABEL_135:
      cv::Mat::copySize(&v116, &v89);
LABEL_136:
      v119 = v93;
      v118 = v92;
      v117 = v91;
      v120 = v94;
      if (v92 && atomic_fetch_add(v92, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v89);
      }

      v91 = 0;
      v93 = 0uLL;
      *(&v92 + 1) = 0;
      if (v89.i32[1] >= 1)
      {
        v60 = 0;
        v61 = v95;
        do
        {
          *(v61 + 4 * v60++) = 0;
        }

        while (v60 < v89.i32[1]);
      }

      v35 = a1;
      *&v92 = 0;
      if (v96)
      {
        v62 = v96 == v97;
      }

      else
      {
        v62 = 1;
      }

      if (!v62)
      {
        free(v96);
      }

LABEL_83:
      a6 = 1;
      goto LABEL_84;
    }
  }

  v35 = a1;
LABEL_84:
  v115 = 0x100000000;
  v81 = *v107;
  v83 = v109;
  v84 = v110;
  v82 = v108;
  v85 = v111;
  v86 = &v81 + 8;
  v87 = v88;
  v88[0] = 0;
  v88[1] = 0;
  if (v109)
  {
    atomic_fetch_add(v109, 1u);
  }

  if (SHIDWORD(v107[0]) > 2)
  {
    DWORD1(v81) = 0;
    cv::Mat::copySize(&v81, v107);
  }

  else
  {
    v43 = v113;
    v44 = v87;
    *v87 = *v113;
    v44[1] = v43[1];
  }

  v74 = v100;
  v73 = *__p;
  v75 = v101;
  v76 = v102;
  v77 = v103;
  v78 = &v73 + 8;
  v80[0] = 0;
  v80[1] = 0;
  v79 = v80;
  if (v101)
  {
    atomic_fetch_add(v101, 1u);
  }

  if (SHIDWORD(__p[0]) > 2)
  {
    DWORD1(v73) = 0;
    cv::Mat::copySize(&v73, __p);
  }

  else
  {
    v45 = v105;
    v46 = v79;
    *v79 = *v105;
    v46[1] = v45[1];
  }

  v66 = v117;
  v65 = v116;
  v67 = v118;
  v68 = v119;
  v69 = v120;
  v70 = &v65 + 8;
  v72[0] = 0;
  v72[1] = 0;
  v71 = v72;
  if (v118)
  {
    atomic_fetch_add(v118, 1u);
  }

  if (SDWORD1(v116) > 2)
  {
    DWORD1(v65) = 0;
    cv::Mat::copySize(&v65, &v116);
  }

  else
  {
    v47 = v122;
    v48 = v71;
    *v71 = *v122;
    v48[1] = v47[1];
  }

  v98 = *a5;
  cv::MorphologyRunner::MorphologyRunner(&v89, &v81, &v73, 1, a6, v35, &v65, &v98, a7, a7, v63);
  cv::parallel_for_(&v115, &v89, -1.0);
  cv::MorphologyRunner::~MorphologyRunner(&v89);
  if (v67 && atomic_fetch_add(v67, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v65);
  }

  v66 = 0;
  v68 = 0uLL;
  *(&v67 + 1) = 0;
  if (SDWORD1(v65) >= 1)
  {
    v49 = 0;
    v50 = v70;
    do
    {
      *&v50[4 * v49++] = 0;
    }

    while (v49 < SDWORD1(v65));
  }

  *&v67 = 0;
  if (v71)
  {
    v51 = v71 == v72;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
    free(v71);
  }

  if (v75 && atomic_fetch_add(v75, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v73);
  }

  v74 = 0;
  v76 = 0uLL;
  *(&v75 + 1) = 0;
  if (SDWORD1(v73) >= 1)
  {
    v52 = 0;
    v53 = v78;
    do
    {
      *&v53[4 * v52++] = 0;
    }

    while (v52 < SDWORD1(v73));
  }

  *&v75 = 0;
  if (v79)
  {
    v54 = v79 == v80;
  }

  else
  {
    v54 = 1;
  }

  if (!v54)
  {
    free(v79);
  }

  if (v83 && atomic_fetch_add(v83, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v81);
  }

  v82 = 0;
  v84 = 0uLL;
  *(&v83 + 1) = 0;
  if (SDWORD1(v81) >= 1)
  {
    v55 = 0;
    v56 = v86;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < SDWORD1(v81));
  }

  *&v83 = 0;
  if (v87)
  {
    v57 = v87 == v88;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    free(v87);
  }

LABEL_9:
  if (v101 && atomic_fetch_add(v101, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(__p);
  }

  v100 = 0;
  *(&v101 + 1) = 0;
  v102 = 0uLL;
  if (SHIDWORD(__p[0]) >= 1)
  {
    v20 = 0;
    v21 = v104;
    do
    {
      *(v21 + 4 * v20++) = 0;
    }

    while (v20 < SHIDWORD(__p[0]));
  }

  *&v101 = 0;
  if (v105)
  {
    v22 = v105 == &v106;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    free(v105);
  }

  if (v109 && atomic_fetch_add(v109, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v107);
  }

  v108 = 0;
  *(&v109 + 1) = 0;
  v110 = 0uLL;
  if (SHIDWORD(v107[0]) >= 1)
  {
    v23 = 0;
    v24 = v112;
    do
    {
      v24->i32[v23++] = 0;
    }

    while (v23 < SHIDWORD(v107[0]));
  }

  *&v109 = 0;
  if (v113)
  {
    v25 = v113 == &v114;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    free(v113);
  }

  if (v118 && atomic_fetch_add(v118, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v116);
  }

  v117 = 0;
  *(&v118 + 1) = 0;
  v119 = 0uLL;
  if (SDWORD1(v116) >= 1)
  {
    v26 = 0;
    v27 = v121;
    do
    {
      v27->i32[v26++] = 0;
    }

    while (v26 < SDWORD1(v116));
  }

  *&v118 = 0;
  if (v122)
  {
    v28 = v122 == &v123;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    free(v122);
  }
}

void sub_22D27BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  cv::Mat::~Mat(&a51);
  cv::Mat::~Mat(&STACK[0x2C0]);
  cv::Mat::~Mat(&STACK[0x320]);
  cv::Mat::~Mat((v51 - 192));
  _Unwind_Resume(a1);
}

uint64_t cv::MorphologyRunner::MorphologyRunner(uint64_t a1, cv::Mat *a2, cv::Mat *a3, int a4, int a5, int a6, cv::Mat *a7, void *a8, int a9, int a10, uint64_t *a11)
{
  *a1 = &unk_284056B78;
  *(a1 + 8) = 1124007936;
  v16 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 12) = 0u;
  v17 = (a1 + 12);
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 1124007936;
  v18 = (a1 + 104);
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 108) = 0u;
  v19 = (a1 + 108);
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 220) = 0u;
  v20 = (a1 + 220);
  *(a1 + 216) = 1124007936;
  v21 = (a1 + 216);
  *(a1 + 280) = a1 + 224;
  *(a1 + 296) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 304) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  v22 = 41;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  do
  {
    v23 = *a11++;
    *(a1 + 8 * v22++) = v23;
  }

  while (v22 != 45);
  if (v16 != a2)
  {
    v24 = *(a2 + 3);
    if (v24)
    {
      atomic_fetch_add(v24, 1u);
      v25 = *(a1 + 32);
      if (v25)
      {
        if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 8));
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (*(a1 + 12) <= 0)
    {
      *(a1 + 32) = 0;
      *(a1 + 8) = *a2;
    }

    else
    {
      v26 = 0;
      v27 = *(a1 + 72);
      do
      {
        *(v27 + 4 * v26++) = 0;
        v28 = *v17;
      }

      while (v26 < v28);
      *(a1 + 32) = 0;
      *(a1 + 8) = *a2;
      if (v28 > 2)
      {
        goto LABEL_16;
      }
    }

    v29 = *(a2 + 1);
    if (v29 <= 2)
    {
      *(a1 + 12) = v29;
      *(a1 + 16) = *(a2 + 1);
      v30 = *(a2 + 9);
      v31 = *(a1 + 80);
      *v31 = *v30;
      v31[1] = v30[1];
LABEL_17:
      *(a1 + 40) = *(a2 + 2);
      *(a1 + 56) = *(a2 + 6);
      *(a1 + 24) = *(a2 + 1);
      *(a1 + 64) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v16, a2);
    goto LABEL_17;
  }

LABEL_18:
  if (v18 == a3)
  {
    goto LABEL_34;
  }

  v32 = *(a3 + 3);
  if (v32)
  {
    atomic_fetch_add(v32, 1u);
  }

  v33 = *(a1 + 128);
  if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v18);
  }

  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  if (*(a1 + 108) <= 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 104) = *a3;
  }

  else
  {
    v34 = 0;
    v35 = *(a1 + 168);
    do
    {
      *(v35 + 4 * v34++) = 0;
      v36 = *v19;
    }

    while (v34 < v36);
    *(a1 + 128) = 0;
    *(a1 + 104) = *a3;
    if (v36 > 2)
    {
      goto LABEL_32;
    }
  }

  v37 = *(a3 + 1);
  if (v37 > 2)
  {
LABEL_32:
    cv::Mat::copySize(v18, a3);
    goto LABEL_33;
  }

  *(a1 + 108) = v37;
  *(a1 + 112) = *(a3 + 1);
  v38 = *(a3 + 9);
  v39 = *(a1 + 176);
  *v39 = *v38;
  v39[1] = v38[1];
LABEL_33:
  *(a1 + 136) = *(a3 + 2);
  *(a1 + 152) = *(a3 + 6);
  *(a1 + 120) = *(a3 + 1);
  *(a1 + 160) = *(a3 + 7);
LABEL_34:
  *(a1 + 200) = a4;
  *(a1 + 204) = a5;
  *(a1 + 208) = a6;
  if (v21 != a7)
  {
    v40 = *(a7 + 3);
    if (v40)
    {
      atomic_fetch_add(v40, 1u);
    }

    v41 = *(a1 + 240);
    if (v41 && atomic_fetch_add(v41, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v21);
    }

    *(a1 + 232) = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 248) = 0;
    if (*(a1 + 220) <= 0)
    {
      *(a1 + 240) = 0;
      *(a1 + 216) = *a7;
    }

    else
    {
      v42 = 0;
      v43 = *(a1 + 280);
      do
      {
        *(v43 + 4 * v42++) = 0;
        v44 = *v20;
      }

      while (v42 < v44);
      *(a1 + 240) = 0;
      *(a1 + 216) = *a7;
      if (v44 > 2)
      {
        goto LABEL_48;
      }
    }

    v45 = *(a7 + 1);
    if (v45 <= 2)
    {
      *(a1 + 220) = v45;
      *(a1 + 224) = *(a7 + 1);
      v46 = *(a7 + 9);
      v47 = *(a1 + 288);
      *v47 = *v46;
      v47[1] = v46[1];
LABEL_49:
      *(a1 + 248) = *(a7 + 2);
      *(a1 + 264) = *(a7 + 6);
      *(a1 + 232) = *(a7 + 1);
      *(a1 + 272) = *(a7 + 7);
      goto LABEL_50;
    }

LABEL_48:
    cv::Mat::copySize(v21, a7);
    goto LABEL_49;
  }

LABEL_50:
  *(a1 + 312) = *a8;
  *(a1 + 320) = a9;
  *(a1 + 324) = a10;
  return a1;
}

void sub_22D27C25C(_Unwind_Exception *a1)
{
  cv::Mat::~Mat(v4);
  cv::Mat::~Mat(v3);
  cv::Mat::~Mat(v2);
  cv::BaseRowFilter::~BaseRowFilter(v1);
  _Unwind_Resume(a1);
}

void cv::MorphologyRunner::~MorphologyRunner(cv::MorphologyRunner *this)
{
  cv::MorphologyRunner::~MorphologyRunner(this);

  JUMPOUT(0x2318CB1A0);
}

{
  *this = &unk_284056B78;
  v2 = *(this + 30);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 216));
  }

  *(this + 29) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  if (*(this + 55) >= 1)
  {
    v3 = 0;
    v4 = *(this + 35);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(this + 55));
  }

  *(this + 30) = 0;
  v5 = *(this + 36);
  if (v5)
  {
    v6 = v5 == this + 296;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  v7 = *(this + 16);
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 104));
  }

  *(this + 15) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  if (*(this + 27) >= 1)
  {
    v8 = 0;
    v9 = *(this + 21);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(this + 27));
  }

  *(this + 16) = 0;
  v10 = *(this + 22);
  if (v10)
  {
    v11 = v10 == this + 184;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v10);
  }

  v12 = *(this + 4);
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 8));
  }

  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  if (*(this + 3) >= 1)
  {
    v13 = 0;
    v14 = *(this + 9);
    do
    {
      *(v14 + 4 * v13++) = 0;
    }

    while (v13 < *(this + 3));
  }

  *(this + 4) = 0;
  v15 = *(this + 10);
  if (v15)
  {
    v16 = v15 == this + 88;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    free(v15);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

void cv::MorphologyRunner::operator()(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 200);
  v5 = rint((v3 * *a2 / v4));
  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = rint((a2[1] * v3 / v4));
  if (v3 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v14[0] = v6;
  v14[1] = v8;
  *&v12[0] = 0x7FFFFFFF80000000;
  cv::Mat::Mat(v15, a1 + 8, v14, v12);
  *&v12[0] = __PAIR64__(v8, v6);
  v13 = 0x7FFFFFFF80000000;
  cv::Mat::Mat(v14, a1 + 104, v12, &v13);
  v9 = *(a1 + 208);
  v10 = *(a1 + 8);
  cv::_InputArray::_InputArray(v12, (a1 + 216));
  v11 = *(a1 + 312);
  cv::createMorphologyFilter(v9, v10 & 0xFFF, v12, &v11);
}

void sub_22D27C5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  cv::Ptr<cv::FilterEngine>::~Ptr(va);
  cv::Mat::~Mat(va1);
  cv::Mat::~Mat((v9 - 144));
  _Unwind_Resume(a1);
}

void cv::MorphRowFilter<cv::MinOp<unsigned char>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

unsigned __int8 *cv::MorphRowFilter<cv::MinOp<unsigned char>,cv::MorphRowNoVec>::operator()(unsigned __int8 *result, char *a2, _BYTE *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        v12 = 0;
        result = v11;
        do
        {
          v13 = &a2[v12];
          v14 = a2[v12 + a5];
          v15 = 2 * a5;
          if (v9 < v5)
          {
            v16 = result;
            do
            {
              v14 -= icvSaturate8u_cv[(v14 | 0x100) - *v16];
              v16 += a5;
              v15 += a5;
            }

            while (v5 > v15);
          }

          v17 = v14 | 0x100;
          a3[v12] = v14 - icvSaturate8u_cv[v17 - *v13];
          a3[v12 + a5] = v14 - icvSaturate8u_cv[v17 - v13[v15]];
          v12 += v9;
          result += v9;
        }

        while (v10 >= v12);
      }

      if (v12 < v6)
      {
        v12 = v12;
        result = &a2[a5];
        do
        {
          v18 = a2[v12];
          if (v5 > a5)
          {
            v19 = 0;
            do
            {
              v18 -= icvSaturate8u_cv[(v18 | 0x100) - result[v12 + v19]];
              v19 += a5;
            }

            while (v5 > (a5 + v19));
          }

          a3[v12] = v18;
          v12 += a5;
        }

        while (v12 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MinOp<unsigned short>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

__int16 *cv::MorphRowFilter<cv::MinOp<unsigned short>,cv::MorphRowNoVec>::operator()(__int16 *result, __int16 *a2, _WORD *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 2 * a5;
    result = &a2[v12 / 2];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              if (*v18 >= v16)
              {
                v16 = v16;
              }

              else
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (v19 >= v16)
          {
            LOWORD(v19) = v16;
          }

          a3[v13] = v19;
          v20 = v15[v17];
          if (v20 >= v16)
          {
            LOWORD(v20) = v16;
          }

          a3[v13 + a5] = v20;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v21 = v13;
        v22 = &result[v13];
        do
        {
          v23 = a2[v21];
          if (v5 > a5)
          {
            v24 = a5;
            v25 = v22;
            do
            {
              if (*v25 < v23)
              {
                v23 = *v25;
              }

              v25 = (v25 + v12);
              v24 += a5;
            }

            while (v5 > v24);
          }

          a3[v21] = v23;
          v21 += a5;
          v22 = (v22 + v12);
        }

        while (v21 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MinOp<short>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

__int16 *cv::MorphRowFilter<cv::MinOp<short>,cv::MorphRowNoVec>::operator()(__int16 *result, __int16 *a2, _WORD *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 2 * a5;
    result = &a2[v12 / 2];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              if (*v18 < v16)
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (v19 >= v16)
          {
            LOWORD(v19) = v16;
          }

          a3[v13] = v19;
          v20 = v15[v17];
          if (v20 >= v16)
          {
            LOWORD(v20) = v16;
          }

          a3[v13 + a5] = v20;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v21 = v13;
        v22 = &result[v13];
        do
        {
          v23 = a2[v21];
          if (v5 > a5)
          {
            v24 = a5;
            v25 = v22;
            do
            {
              if (*v25 < v23)
              {
                v23 = *v25;
              }

              v25 = (v25 + v12);
              v24 += a5;
            }

            while (v5 > v24);
          }

          a3[v21] = v23;
          v21 += a5;
          v22 = (v22 + v12);
        }

        while (v21 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MinOp<float>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

int *cv::MorphRowFilter<cv::MinOp<float>,cv::MorphRowNoVec>::operator()(int *result, int *a2, _DWORD *a3, int a4, unsigned int a5)
{
  v5 = result[2] * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 4 * a5;
    result = &a2[v12 / 4];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              if (*v18 < v16)
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (*v15 >= v16)
          {
            v19 = v16;
          }

          *&a3[v13] = v19;
          if (v15[v17] < v16)
          {
            v16 = v15[v17];
          }

          *&a3[v13 + a5] = v16;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v20 = v13;
        v21 = &result[v13];
        do
        {
          v22 = *&a2[v20];
          if (v5 > a5)
          {
            v23 = a5;
            v24 = v21;
            do
            {
              if (*v24 < v22)
              {
                v22 = *v24;
              }

              v24 = (v24 + v12);
              v23 += a5;
            }

            while (v5 > v23);
          }

          *&a3[v20] = v22;
          v20 += a5;
          v21 = (v21 + v12);
        }

        while (v20 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MinOp<double>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t *cv::MorphRowFilter<cv::MinOp<double>,cv::MorphRowNoVec>::operator()(uint64_t *result, uint64_t *a2, void *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 8 * a5;
    result = &a2[v12 / 8];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              if (*v18 < v16)
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (*v15 >= v16)
          {
            v19 = v16;
          }

          *&a3[v13] = v19;
          if (v15[v17] < v16)
          {
            v16 = v15[v17];
          }

          *&a3[v13 + a5] = v16;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v20 = v13;
        v21 = &result[v13];
        do
        {
          v22 = *&a2[v20];
          if (v5 > a5)
          {
            v23 = a5;
            v24 = v21;
            do
            {
              if (*v24 < v22)
              {
                v22 = *v24;
              }

              v24 = (v24 + v12);
              v23 += a5;
            }

            while (v5 > v23);
          }

          *&a3[v20] = v22;
          v20 += a5;
          v21 = (v21 + v12);
        }

        while (v20 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MaxOp<unsigned char>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

unsigned __int8 *cv::MorphRowFilter<cv::MaxOp<unsigned char>,cv::MorphRowNoVec>::operator()(unsigned __int8 *result, char *a2, _BYTE *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        v12 = 0;
        result = v11;
        do
        {
          v13 = &a2[v12];
          v14 = a2[v12 + a5];
          v15 = 2 * a5;
          if (v9 < v5)
          {
            v16 = result;
            do
            {
              v14 += icvSaturate8u_cv[*v16 - v14 + 256];
              v16 += a5;
              v15 += a5;
            }

            while (v5 > v15);
          }

          v17 = &icvSaturate8u_cv[-v14];
          a3[v12] = v17[*v13 + 256] + v14;
          a3[v12 + a5] = v17[v13[v15] + 256] + v14;
          v12 += v9;
          result += v9;
        }

        while (v10 >= v12);
      }

      if (v12 < v6)
      {
        v12 = v12;
        result = &a2[a5];
        do
        {
          v18 = a2[v12];
          if (v5 > a5)
          {
            v19 = 0;
            do
            {
              v18 += icvSaturate8u_cv[result[v12 + v19] - v18 + 256];
              v19 += a5;
            }

            while (v5 > (a5 + v19));
          }

          a3[v12] = v18;
          v12 += a5;
        }

        while (v12 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MaxOp<unsigned short>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

__int16 *cv::MorphRowFilter<cv::MaxOp<unsigned short>,cv::MorphRowNoVec>::operator()(__int16 *result, __int16 *a2, _WORD *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 2 * a5;
    result = &a2[v12 / 2];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              v16 = v16;
              if (v16 <= *v18)
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (v16 > v19)
          {
            LOWORD(v19) = v16;
          }

          a3[v13] = v19;
          v20 = v15[v17];
          if (v16 > v20)
          {
            LOWORD(v20) = v16;
          }

          a3[v13 + a5] = v20;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v21 = v13;
        v22 = &result[v13];
        do
        {
          v23 = a2[v21];
          if (v5 > a5)
          {
            v24 = a5;
            v25 = v22;
            do
            {
              if (v23 <= *v25)
              {
                v23 = *v25;
              }

              v25 = (v25 + v12);
              v24 += a5;
            }

            while (v5 > v24);
          }

          a3[v21] = v23;
          v21 += a5;
          v22 = (v22 + v12);
        }

        while (v21 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MaxOp<short>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

__int16 *cv::MorphRowFilter<cv::MaxOp<short>,cv::MorphRowNoVec>::operator()(__int16 *result, __int16 *a2, _WORD *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 2 * a5;
    result = &a2[v12 / 2];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              if (v16 <= *v18)
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (v16 > v19)
          {
            LOWORD(v19) = v16;
          }

          a3[v13] = v19;
          v20 = v15[v17];
          if (v16 > v20)
          {
            LOWORD(v20) = v16;
          }

          a3[v13 + a5] = v20;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v21 = v13;
        v22 = &result[v13];
        do
        {
          v23 = a2[v21];
          if (v5 > a5)
          {
            v24 = a5;
            v25 = v22;
            do
            {
              if (v23 <= *v25)
              {
                v23 = *v25;
              }

              v25 = (v25 + v12);
              v24 += a5;
            }

            while (v5 > v24);
          }

          a3[v21] = v23;
          v21 += a5;
          v22 = (v22 + v12);
        }

        while (v21 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MaxOp<float>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

int *cv::MorphRowFilter<cv::MaxOp<float>,cv::MorphRowNoVec>::operator()(int *result, int *a2, _DWORD *a3, int a4, unsigned int a5)
{
  v5 = result[2] * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 4 * a5;
    result = &a2[v12 / 4];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              if (v16 < *v18)
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (v16 >= *v15)
          {
            v19 = v16;
          }

          *&a3[v13] = v19;
          if (v16 < v15[v17])
          {
            v16 = v15[v17];
          }

          *&a3[v13 + a5] = v16;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v20 = v13;
        v21 = &result[v13];
        do
        {
          v22 = *&a2[v20];
          if (v5 > a5)
          {
            v23 = a5;
            v24 = v21;
            do
            {
              if (v22 < *v24)
              {
                v22 = *v24;
              }

              v24 = (v24 + v12);
              v23 += a5;
            }

            while (v5 > v23);
          }

          *&a3[v20] = v22;
          v20 += a5;
          v21 = (v21 + v12);
        }

        while (v20 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphRowFilter<cv::MaxOp<double>,cv::MorphRowNoVec>::~MorphRowFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t *cv::MorphRowFilter<cv::MaxOp<double>,cv::MorphRowNoVec>::operator()(uint64_t *result, uint64_t *a2, void *a3, int a4, unsigned int a5)
{
  v5 = *(result + 2) * a5;
  v6 = a5 * a4;
  if (v5 == a5)
  {
    if (v6 >= 1)
    {
      do
      {
        v7 = *a2++;
        *a3++ = v7;
        --v6;
      }

      while (v6);
    }
  }

  else if (a5 >= 1)
  {
    v8 = 0;
    v9 = 2 * a5;
    v10 = v6 - 2 * a5;
    v11 = &a2[v9];
    v12 = 8 * a5;
    result = &a2[v12 / 8];
    do
    {
      if (v10 < 0)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = &a2[v13];
          v16 = v15[a5];
          v17 = 2 * a5;
          if (v9 < v5)
          {
            v18 = v14;
            do
            {
              if (v16 < *v18)
              {
                v16 = *v18;
              }

              v18 = (v18 + v12);
              v17 += a5;
            }

            while (v5 > v17);
          }

          v19 = *v15;
          if (v16 >= *v15)
          {
            v19 = v16;
          }

          *&a3[v13] = v19;
          if (v16 < v15[v17])
          {
            v16 = v15[v17];
          }

          *&a3[v13 + a5] = v16;
          v13 += v9;
          v14 += 2 * a5;
        }

        while (v10 >= v13);
      }

      if (v13 < v6)
      {
        v20 = v13;
        v21 = &result[v13];
        do
        {
          v22 = *&a2[v20];
          if (v5 > a5)
          {
            v23 = a5;
            v24 = v21;
            do
            {
              if (v22 < *v24)
              {
                v22 = *v24;
              }

              v24 = (v24 + v12);
              v23 += a5;
            }

            while (v5 > v23);
          }

          *&a3[v20] = v22;
          v20 += a5;
          v21 = (v21 + v12);
        }

        while (v20 < v6);
      }

      ++v8;
      ++a2;
      ++a3;
      ++v11;
      ++result;
    }

    while (v8 != a5);
  }

  return result;
}

void cv::MorphColumnFilter<cv::MinOp<unsigned char>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MinOp<unsigned char>,cv::MorphColumnNoVec>::operator()(uint64_t result, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        do
        {
          v12 = (a2[1] + v11);
          v13 = *v12;
          v14 = v12[1];
          v15 = v12[2];
          v16 = v12[3];
          if (v6 < 3)
          {
            v19 = 2;
          }

          else
          {
            v17 = 16;
            do
            {
              v18 = (a2[v17 / 8] + v11);
              v13 -= icvSaturate8u_cv[(v13 | 0x100) - *v18];
              v14 -= icvSaturate8u_cv[(v14 | 0x100) - v18[1]];
              v15 -= icvSaturate8u_cv[(v15 | 0x100) - v18[2]];
              v16 -= icvSaturate8u_cv[(v16 | 0x100) - v18[3]];
              v17 += 8;
            }

            while (v10 != v17);
            v19 = v6;
          }

          v20 = (*a2 + v11);
          v21 = v13 | 0x100;
          v22 = (a3 + v11);
          *v22 = v13 - icvSaturate8u_cv[v21 - *v20];
          v23 = v14 | 0x100;
          v22[1] = v14 - icvSaturate8u_cv[v23 - v20[1]];
          v24 = v15 | 0x100;
          v22[2] = v15 - icvSaturate8u_cv[v24 - v20[2]];
          v25 = v16 | 0x100;
          v22[3] = v16 - icvSaturate8u_cv[v25 - v20[3]];
          v26 = (a2[v19] + v11);
          v27 = (a3 + v11 + v7);
          *v27 = v13 - icvSaturate8u_cv[v21 - *v26];
          v27[1] = v14 - icvSaturate8u_cv[v23 - v26[1]];
          result = icvSaturate8u_cv[v24 - v26[2]];
          v27[2] = v15 - result;
          v27[3] = v16 - icvSaturate8u_cv[v25 - v26[3]];
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        do
        {
          v28 = *(a2[1] + v11);
          if (v6 < 3)
          {
            v30 = 2;
          }

          else
          {
            v29 = 16;
            do
            {
              v28 -= icvSaturate8u_cv[(v28 | 0x100) - *(a2[v29 / 8] + v11)];
              v29 += 8;
            }

            while (v10 != v29);
            v30 = v6;
          }

          v31 = v28 | 0x100;
          result = v28 - icvSaturate8u_cv[v31 - *(*a2 + v11)];
          *(a3 + v11) = v28 - icvSaturate8u_cv[v31 - *(*a2 + v11)];
          *(a3 + v11 + v7) = v28 - icvSaturate8u_cv[v31 - *(a2[v30] + v11)];
          ++v11;
        }

        while (v11 != a6);
      }

      v9 = a5 - 2;
      a3 += 2 * v7;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v32 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v33 = 0;
        do
        {
          v34 = (*a2 + v33);
          v35 = *v34;
          v36 = v34[1];
          result = v34[2];
          v37 = v34[3];
          if (v6 >= 2)
          {
            v38 = 8;
            do
            {
              v39 = (a2[v38 / 8] + v33);
              v35 -= icvSaturate8u_cv[(v35 | 0x100) - *v39];
              v36 -= icvSaturate8u_cv[(v36 | 0x100) - v39[1]];
              result = result - icvSaturate8u_cv[(result | 0x100) - v39[2]];
              v37 -= icvSaturate8u_cv[(v37 | 0x100) - v39[3]];
              v38 += 8;
            }

            while (v32 != v38);
          }

          v40 = (a3 + v33);
          *v40 = v35;
          v40[1] = v36;
          v40[2] = result;
          v40[3] = v37;
          v33 += 4;
        }

        while (v33 <= a6 - 4);
        v33 = v33;
      }

      else
      {
        v33 = 0;
      }

      if (v33 < a6)
      {
        do
        {
          v41 = *(*a2 + v33);
          if (v6 >= 2)
          {
            v42 = 8;
            do
            {
              result = icvSaturate8u_cv[(v41 | 0x100) - *(a2[v42 / 8] + v33)];
              v41 -= result;
              v42 += 8;
            }

            while (v32 != v42);
          }

          *(a3 + v33++) = v41;
        }

        while (v33 != a6);
      }

      a3 += v7;
      ++a2;
      v43 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v43 | (v9 == 0)));
  }

  return result;
}