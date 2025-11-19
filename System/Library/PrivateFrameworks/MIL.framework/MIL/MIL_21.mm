void MIL::ValueInference::Tensor<short>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = 0;
  v8 = a1[1] - *a1;
  if (v8)
  {
    v9 = v8 >> 6;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v6 + 8);
    do
    {
      v11 = *v10;
      v10 += 8;
      v7 += *(v11 + 8 * a2);
      --v9;
    }

    while (v9);
  }

  v30 = 0;
  v31 = 0;
  v29 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v29, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  v12 = v29;
  v13 = v30;
  *(v29 + a2) = v7;
  v28 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v12, v13, (v13 - v12) >> 3);
  MIL::ValueInference::Tensor<short>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v14 = *a1;
  v15 = a1[1];
  if (v15 != *a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v14 + (v16 << 6) + 40) - *(v14 + (v16 << 6) + 32);
      if (v18)
      {
        v19 = 0;
        if ((v18 >> 1) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18 >> 1;
        }

        do
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v22, v25, v26, (v26 - v25) >> 3);
          *(v22 + a2) += v17;
          v21 = *a1 + (v16 << 6);
          if (v22)
          {
            v23 = v22;
            operator delete(v22);
          }

          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          ++v19;
        }

        while (v20 != v19);
        v14 = *a1;
        v15 = a1[1];
      }

      v17 += *(*(v14 + (v16++ << 6) + 8) + 8 * a2);
    }

    while (v16 < (v15 - v14) >> 6);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_2180FE554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<short>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  v11 = *a1;
  if (v9 != (a1[1] - *a1) >> 6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v50);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "The number of tensors (", 23);
    v37 = MEMORY[0x21CEAFB40](v36, (a1[1] - *a1) >> 6);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") is not the same as the number of blocks (", 43);
    v39 = MEMORY[0x21CEAFB80](v38, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v49);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v51 = 0;
  v52 = 0;
  v50 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v50, *(v11 + 8), *(v11 + 16), (*(v11 + 16) - *(v11 + 8)) >> 3);
  memset(&v49, 0, sizeof(v49));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v49, v50, v51, (v51 - v50) >> 3);
  v12 = *a2;
  v13 = v49.__r_.__value_.__r.__words[0];
  v14 = *(a2 + 8) - *a2;
  if (v14)
  {
    v15 = v14 >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = v49.__r_.__value_.__r.__words[0];
    do
    {
      v17 = *v12++;
      *v16++ *= v17;
      --v15;
    }

    while (v15);
  }

  __p = 0uLL;
  v48 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v13, v49.__r_.__value_.__l.__size_, (v49.__r_.__value_.__l.__size_ - v13) >> 3);
  MIL::ValueInference::Tensor<short>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v19 = *a1 + (i << 6);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16) - v20;
      if (v21 != v51 - v50 || memcmp(v20, v50, v21))
      {
        v35 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v35, "All tensors must have the same shape so they can be merged.");
        __cxa_throw(v35, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v22 = *(*a1 + (i << 6) + 40) - *(*a1 + (i << 6) + 32);
      if (v22)
      {
        v23 = 0;
        v24 = v22 >> 1;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        do
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v41, v44, v45, (v45 - v44) >> 3);
          v26 = *(a2 + 8) - *a2;
          if (v26)
          {
            v27 = v26 >> 3;
            v28 = v50;
            v29 = v46[0];
            v30 = v41;
            if (v27 <= 1)
            {
              v27 = 1;
            }

            do
            {
              v32 = *v28++;
              v31 = v32;
              v33 = *v29++;
              *v30++ += v33 * v31;
              --v27;
            }

            while (v27);
          }

          v34 = *a1 + (i << 6);
          if (v41)
          {
            v42 = v41;
            operator delete(v41);
          }

          if (v44)
          {
            v45 = v44;
            operator delete(v44);
          }

          ++v23;
        }

        while (v23 != v25);
      }

      if (v46[0])
      {
        v46[1] = v46[0];
        operator delete(v46[0]);
      }
    }
  }

  if (v49.__r_.__value_.__r.__words[0])
  {
    v49.__r_.__value_.__l.__size_ = v49.__r_.__value_.__r.__words[0];
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_2180FE958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t MIL::ValueInference::Tensor<short>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1 + 1;
  v43 = a1[1];
  v7 = a1[2];
  v8 = (v7 - v43) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v60, *a2, a2[1]);
  for (i = v61; i; i = *i)
  {
    v10 = i[2];
    if (v10 >= v8)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v57);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "axis(", 5);
      v32 = MEMORY[0x21CEAFB80](v31, v10);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") must be smaller than the number of input dimensions(", 54);
      v34 = MEMORY[0x21CEAFB80](v33, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v56);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  memset(&v56, 0, sizeof(v56));
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v7 == v43)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (v8 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v7 - v43) >> 3;
    }

    do
    {
      v50[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, v50))
      {
        if (a3)
        {
          v50[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v57, v50);
        }

        v14 = &v53;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v57, (*v6 + v11));
        v14 = &v56;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v14->__r_.__value_.__l.__data_, (*v6 + v11));
      ++v12;
      v11 += 8;
    }

    while (v13 != v12);
    v15 = v57;
    v16 = v58;
  }

  __p = 0uLL;
  v52 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v15, v16, (v16 - v15) >> 3);
  MIL::ValueInference::Tensor<short>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v17 = 0;
  v18 = *(a5 + 40);
  v19 = (v18 - *(a5 + 32)) >> 1;
  if (v8 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v7 - v43) >> 3;
  }

  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = (v18 - *(a5 + 32)) >> 1;
  }

  v36 = v21;
  v37 = v19;
  v38 = (a1[5] - a1[4]) >> 1;
  v22 = v38 / v19;
  do
  {
    v40 = v17;
    LOWORD(v8) = v8 & 0xFF00;
    if (v37 <= v38)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        if (v7 != v43)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          do
          {
            v44 = v25;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, &v44))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v48 + v26++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v50[0] + v27++);
            }

            ++v25;
          }

          while (v20 != v25);
        }

        v29 = a1[4];
        if (v24)
        {
          LOWORD(v8) = std::function<short ()(short,short)>::operator()(a4, v8, *(v29 + 2 * v28));
        }

        else
        {
          LOWORD(v8) = *(v29 + 2 * v28);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        ++v23;
        v24 = 1;
      }

      while (v23 < v22);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v50[0])
    {
      v50[1] = v50[0];
      operator delete(v50[0]);
    }

    v17 = v40 + 1;
  }

  while (v40 + 1 != v36);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56.__r_.__value_.__r.__words[0])
  {
    v56.__r_.__value_.__l.__size_ = v56.__r_.__value_.__r.__words[0];
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v60);
}

void sub_2180FEE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 128);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v40);
  goto LABEL_6;
}

uint64_t std::function<short ()(short,short)>::operator()(uint64_t a1, __int16 a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::Tensor<short>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<short>::Zeros(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_2180FF040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<int>(&v12, *a1);
  if ((v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get data view.");
    v7 = MEMORY[0x277D82760];
    v8 = MEMORY[0x277D82600];
    goto LABEL_10;
  }

  v4 = (*(**a1 + 32))();
  if ((*(*v4 + 88))(v4) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "It is not supported to convert a tensor of string dtype.");
    v7 = off_278235F80;
    v8 = MEMORY[0x277D82610];
LABEL_10:
    __cxa_throw(exception, v7, v8);
  }

  MIL::GetTensorShapeWithDimensionsAllKnown(v4, v5, &v11);
  v10 = 0;
  __p = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, v13, v13 + 4 * v14, v14);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void MIL::ValueInference::Tensor<int>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 11, __p);
}

void sub_2180FF2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<int>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9BE8;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = a2->n128_u64[1];
  v7 = a2->n128_u64[0];
  if (a2->n128_u64[0] == v6)
  {
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
    v8 = a3->n128_u64[0] != v11;
  }

  else
  {
    v8 = 1;
    do
    {
      v9 = *v7++;
      v8 *= v9;
    }

    while (v7 != v6);
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
  }

  if (v8 != (v11 - v10) >> 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "data size and shape dismatch.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::vector<float>::__move_assign(v5, a2);
  std::vector<float>::__move_assign(a1 + 32, a3);
  *(a1 + 56) = v8;
  return a1;
}

void sub_2180FF404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = v10[4];
  if (v12)
  {
    v10[5] = v12;
    operator delete(v12);
  }

  v13 = *a10;
  if (*a10)
  {
    v10[2] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

double MIL::ValueInference::Tensor<int>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9BE8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void MIL::ValueInference::Tensor<int>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<int>::vector[abi:ne200100](&v11, (a1[5] - a1[4]) >> 2);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<int ()(int)>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<int ()(int)>::operator()(v12, *v7++);
  }

  std::__function::__value_func<int ()(int)>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<int>::Tensor(a3, &__p, &v11);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_2180FF584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<int>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<int>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 1;
  if (v6 != v7)
  {
    v9 = v6;
    do
    {
      v10 = *v9++;
      v8 *= v10;
    }

    while (v9 != v7);
  }

  if (a1[7] != v8)
  {
    v13 = a2;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Tensor is not able to be reshaped since the number of elements in the newShape [ ", 81);
    v14 = *v13;
    v15 = v13[1];
    if (*v13 != v15)
    {
      do
      {
        v16 = MEMORY[0x21CEAFB80](&v22, *v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
        ++v14;
      }

      while (v14 != v15);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "] is not the same as the number of elements in the tensor shape [ ", 66);
    v17 = a1[1];
    for (i = a1[2]; v17 != i; ++v17)
    {
      v19 = MEMORY[0x21CEAFB80](&v22, *v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "].", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &__p);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v22 = 0uLL;
  v23 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v22, v6, v7, (v7 - v6) >> 3);
  v11 = a1[4];
  v12 = a1[5];
  memset(&__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&__p, v11, v12, (v12 - v11) >> 2);
  MIL::ValueInference::Tensor<int>::Tensor(a3, &v22, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22.n128_u64[0])
  {
    v22.n128_u64[1] = v22.n128_u64[0];
    operator delete(v22.n128_u64[0]);
  }
}

void sub_2180FF858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void MIL::ValueInference::Tensor<int>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(*(a1 + 32) + 4 * i))
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v3 = *(a1 + 56);
      }
    }
  }
}

void MIL::ValueInference::Tensor<int>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v5 = (a2[1] - *a2) >> 4;
  v6 = a1 + 1;
  if (v5 != (a1[2] - a1[1]) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Indices does not match the rank of the tensor.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<unsigned long long>::reserve(&v37, v5);
  v8 = a1[1];
  if (a1[2] != v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (*a2)[v9];
      v12 = (*a2)[v9 + 1];
      v13 = v12 >= v11;
      v14 = (v12 - v11);
      if (!v13)
      {
        break;
      }

      if (v12 > *(v8 + 8 * v10))
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v25, "Indices end is out of the bound for the tensor dimension.");
        v26 = MEMORY[0x277D825F8];
        v27 = off_278235F78;
        v28 = MEMORY[0x277D828E8] + 16;
LABEL_27:
        v25->__vftable = v28;
        __cxa_throw(v25, v27, v26);
      }

      v33 = v14;
      std::vector<unsigned long long>::push_back[abi:ne200100](&v37, &v33);
      ++v10;
      v8 = a1[1];
      v9 += 2;
      if (v10 >= (a1[2] - v8) >> 3)
      {
        goto LABEL_8;
      }
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v25, "Indices end must not be smaller than the indices begin.");
    v26 = MEMORY[0x277D82610];
    v27 = off_278235F80;
    v28 = MEMORY[0x277D828F8] + 16;
    goto LABEL_27;
  }

LABEL_8:
  __p = 0uLL;
  v36 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v37, v38, (v38 - v37) >> 3);
  MIL::ValueInference::Tensor<int>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v15 = a3[5] - a3[4];
  if (v15)
  {
    v16 = 0;
    v17 = v15 >> 2;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v30, v33, v34, (v34 - v33) >> 3);
      v19 = a1[2] - a1[1];
      if (v19)
      {
        v20 = v19 >> 3;
        v21 = *a2;
        v22 = v30;
        if (v20 <= 1)
        {
          v20 = 1;
        }

        do
        {
          v23 = *v21;
          v21 += 2;
          *v22++ += v23;
          --v20;
        }

        while (v20);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      ++v16;
    }

    while (v16 != v18);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void MIL::ValueInference::Tensor<int>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<int>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<int>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180FFD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = 0;
  v8 = a1[1] - *a1;
  if (v8)
  {
    v9 = v8 >> 6;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v6 + 8);
    do
    {
      v11 = *v10;
      v10 += 8;
      v7 += *(v11 + 8 * a2);
      --v9;
    }

    while (v9);
  }

  v30 = 0;
  v31 = 0;
  v29 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v29, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  v12 = v29;
  v13 = v30;
  *(v29 + a2) = v7;
  v28 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v12, v13, (v13 - v12) >> 3);
  MIL::ValueInference::Tensor<int>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v14 = *a1;
  v15 = a1[1];
  if (v15 != *a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v14 + (v16 << 6) + 40) - *(v14 + (v16 << 6) + 32);
      if (v18)
      {
        v19 = 0;
        if ((v18 >> 2) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18 >> 2;
        }

        do
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v22, v25, v26, (v26 - v25) >> 3);
          *(v22 + a2) += v17;
          v21 = *a1 + (v16 << 6);
          if (v22)
          {
            v23 = v22;
            operator delete(v22);
          }

          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          ++v19;
        }

        while (v20 != v19);
        v14 = *a1;
        v15 = a1[1];
      }

      v17 += *(*(v14 + (v16++ << 6) + 8) + 8 * a2);
    }

    while (v16 < (v15 - v14) >> 6);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_2180FFF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<int>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  v11 = *a1;
  if (v9 != (a1[1] - *a1) >> 6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v50);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "The number of tensors (", 23);
    v37 = MEMORY[0x21CEAFB40](v36, (a1[1] - *a1) >> 6);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") is not the same as the number of blocks (", 43);
    v39 = MEMORY[0x21CEAFB80](v38, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v49);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v51 = 0;
  v52 = 0;
  v50 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v50, *(v11 + 8), *(v11 + 16), (*(v11 + 16) - *(v11 + 8)) >> 3);
  memset(&v49, 0, sizeof(v49));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v49, v50, v51, (v51 - v50) >> 3);
  v12 = *a2;
  v13 = v49.__r_.__value_.__r.__words[0];
  v14 = *(a2 + 8) - *a2;
  if (v14)
  {
    v15 = v14 >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = v49.__r_.__value_.__r.__words[0];
    do
    {
      v17 = *v12++;
      *v16++ *= v17;
      --v15;
    }

    while (v15);
  }

  __p = 0uLL;
  v48 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v13, v49.__r_.__value_.__l.__size_, (v49.__r_.__value_.__l.__size_ - v13) >> 3);
  MIL::ValueInference::Tensor<int>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v19 = *a1 + (i << 6);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16) - v20;
      if (v21 != v51 - v50 || memcmp(v20, v50, v21))
      {
        v35 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v35, "All tensors must have the same shape so they can be merged.");
        __cxa_throw(v35, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v22 = *(*a1 + (i << 6) + 40) - *(*a1 + (i << 6) + 32);
      if (v22)
      {
        v23 = 0;
        v24 = v22 >> 2;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        do
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v41, v44, v45, (v45 - v44) >> 3);
          v26 = *(a2 + 8) - *a2;
          if (v26)
          {
            v27 = v26 >> 3;
            v28 = v50;
            v29 = v46[0];
            v30 = v41;
            if (v27 <= 1)
            {
              v27 = 1;
            }

            do
            {
              v32 = *v28++;
              v31 = v32;
              v33 = *v29++;
              *v30++ += v33 * v31;
              --v27;
            }

            while (v27);
          }

          v34 = *a1 + (i << 6);
          if (v41)
          {
            v42 = v41;
            operator delete(v41);
          }

          if (v44)
          {
            v45 = v44;
            operator delete(v44);
          }

          ++v23;
        }

        while (v23 != v25);
      }

      if (v46[0])
      {
        v46[1] = v46[0];
        operator delete(v46[0]);
      }
    }
  }

  if (v49.__r_.__value_.__r.__words[0])
  {
    v49.__r_.__value_.__l.__size_ = v49.__r_.__value_.__r.__words[0];
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_218100370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t MIL::ValueInference::Tensor<int>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1 + 1;
  v43 = a1[1];
  v7 = a1[2];
  v8 = (v7 - v43) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v60, *a2, a2[1]);
  for (i = v61; i; i = *i)
  {
    v10 = i[2];
    if (v10 >= v8)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v57);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "axis(", 5);
      v32 = MEMORY[0x21CEAFB80](v31, v10);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") must be smaller than the number of input dimensions(", 54);
      v34 = MEMORY[0x21CEAFB80](v33, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v56);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  memset(&v56, 0, sizeof(v56));
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v7 == v43)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (v8 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v7 - v43) >> 3;
    }

    do
    {
      v50[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, v50))
      {
        if (a3)
        {
          v50[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v57, v50);
        }

        v14 = &v53;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v57, (*v6 + v11));
        v14 = &v56;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v14->__r_.__value_.__l.__data_, (*v6 + v11));
      ++v12;
      v11 += 8;
    }

    while (v13 != v12);
    v15 = v57;
    v16 = v58;
  }

  __p = 0uLL;
  v52 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v15, v16, (v16 - v15) >> 3);
  MIL::ValueInference::Tensor<int>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v17 = 0;
  v18 = *(a5 + 40);
  v19 = (v18 - *(a5 + 32)) >> 2;
  if (v8 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v7 - v43) >> 3;
  }

  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = (v18 - *(a5 + 32)) >> 2;
  }

  v36 = v21;
  v37 = v19;
  v38 = (a1[5] - a1[4]) >> 2;
  v22 = v38 / v19;
  do
  {
    v40 = v17;
    LODWORD(v8) = v8 & 0xFFFFFF00;
    if (v37 <= v38)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        if (v7 != v43)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          do
          {
            v44 = v25;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, &v44))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v48 + v26++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v50[0] + v27++);
            }

            ++v25;
          }

          while (v20 != v25);
        }

        v29 = a1[4];
        if (v24)
        {
          LODWORD(v8) = std::function<int ()(int,int)>::operator()(a4, v8, *(v29 + 4 * v28));
        }

        else
        {
          LODWORD(v8) = *(v29 + 4 * v28);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        ++v23;
        v24 = 1;
      }

      while (v23 < v22);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v50[0])
    {
      v50[1] = v50[0];
      operator delete(v50[0]);
    }

    v17 = v40 + 1;
  }

  while (v40 + 1 != v36);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56.__r_.__value_.__r.__words[0])
  {
    v56.__r_.__value_.__l.__size_ = v56.__r_.__value_.__r.__words[0];
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v60);
}

void sub_218100874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 128);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v40);
  goto LABEL_6;
}

uint64_t std::function<int ()(int,int)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::Tensor<int>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<int>::Zeros(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_218100A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<long long>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<long long>(&v12, *a1);
  if ((v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get data view.");
    v7 = MEMORY[0x277D82760];
    v8 = MEMORY[0x277D82600];
    goto LABEL_10;
  }

  v4 = (*(**a1 + 32))();
  if ((*(*v4 + 88))(v4) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "It is not supported to convert a tensor of string dtype.");
    v7 = off_278235F80;
    v8 = MEMORY[0x277D82610];
LABEL_10:
    __cxa_throw(exception, v7, v8);
  }

  MIL::GetTensorShapeWithDimensionsAllKnown(v4, v5, &v11);
  v10 = 0;
  __p = 0uLL;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, v13, v13 + 8 * v14, v14);
  MIL::ValueInference::Tensor<long long>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void MIL::ValueInference::Tensor<long long>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 12, __p);
}

void sub_218100CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<long long>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9D08;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = a2->n128_u64[1];
  v7 = a2->n128_u64[0];
  if (a2->n128_u64[0] == v6)
  {
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
    v8 = a3->n128_u64[0] != v11;
  }

  else
  {
    v8 = 1;
    do
    {
      v9 = *v7++;
      v8 *= v9;
    }

    while (v7 != v6);
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
  }

  if (v8 != (v11 - v10) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "data size and shape dismatch.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::vector<float>::__move_assign(v5, a2);
  std::vector<float>::__move_assign(a1 + 32, a3);
  *(a1 + 56) = v8;
  return a1;
}

void sub_218100E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = v10[4];
  if (v12)
  {
    v10[5] = v12;
    operator delete(v12);
  }

  v13 = *a10;
  if (*a10)
  {
    v10[2] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

double MIL::ValueInference::Tensor<long long>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9D08;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void MIL::ValueInference::Tensor<long long>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<long long>::vector[abi:ne200100](&v11, (a1[5] - a1[4]) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<long long ()(long long)>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<long long ()(long long)>::operator()(v12, *v7++);
  }

  std::__function::__value_func<long long ()(long long)>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<long long>::Tensor(a3, &__p, &v11);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_218100FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<long long>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<long long>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 1;
  if (v6 != v7)
  {
    v9 = v6;
    do
    {
      v10 = *v9++;
      v8 *= v10;
    }

    while (v9 != v7);
  }

  if (a1[7] != v8)
  {
    v13 = a2;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Tensor is not able to be reshaped since the number of elements in the newShape [ ", 81);
    v14 = *v13;
    v15 = v13[1];
    if (*v13 != v15)
    {
      do
      {
        v16 = MEMORY[0x21CEAFB80](&v22, *v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
        ++v14;
      }

      while (v14 != v15);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "] is not the same as the number of elements in the tensor shape [ ", 66);
    v17 = a1[1];
    for (i = a1[2]; v17 != i; ++v17)
    {
      v19 = MEMORY[0x21CEAFB80](&v22, *v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "].", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &__p);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v22 = 0uLL;
  v23 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v22, v6, v7, (v7 - v6) >> 3);
  v11 = a1[4];
  v12 = a1[5];
  memset(&__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(&__p, v11, v12, (v12 - v11) >> 3);
  MIL::ValueInference::Tensor<long long>::Tensor(a3, &v22, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22.n128_u64[0])
  {
    v22.n128_u64[1] = v22.n128_u64[0];
    operator delete(v22.n128_u64[0]);
  }
}

void sub_218101274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void MIL::ValueInference::Tensor<long long>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(*(a1 + 32) + 8 * i))
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v3 = *(a1 + 56);
      }
    }
  }
}

void MIL::ValueInference::Tensor<long long>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v5 = (a2[1] - *a2) >> 4;
  v6 = a1 + 1;
  if (v5 != (a1[2] - a1[1]) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Indices does not match the rank of the tensor.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<unsigned long long>::reserve(&v37, v5);
  v8 = a1[1];
  if (a1[2] != v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (*a2)[v9];
      v12 = (*a2)[v9 + 1];
      v13 = v12 >= v11;
      v14 = (v12 - v11);
      if (!v13)
      {
        break;
      }

      if (v12 > *(v8 + 8 * v10))
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v25, "Indices end is out of the bound for the tensor dimension.");
        v26 = MEMORY[0x277D825F8];
        v27 = off_278235F78;
        v28 = MEMORY[0x277D828E8] + 16;
LABEL_27:
        v25->__vftable = v28;
        __cxa_throw(v25, v27, v26);
      }

      v33 = v14;
      std::vector<unsigned long long>::push_back[abi:ne200100](&v37, &v33);
      ++v10;
      v8 = a1[1];
      v9 += 2;
      if (v10 >= (a1[2] - v8) >> 3)
      {
        goto LABEL_8;
      }
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v25, "Indices end must not be smaller than the indices begin.");
    v26 = MEMORY[0x277D82610];
    v27 = off_278235F80;
    v28 = MEMORY[0x277D828F8] + 16;
    goto LABEL_27;
  }

LABEL_8:
  __p = 0uLL;
  v36 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v37, v38, (v38 - v37) >> 3);
  MIL::ValueInference::Tensor<long long>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v15 = a3[5] - a3[4];
  if (v15)
  {
    v16 = 0;
    v17 = v15 >> 3;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v30, v33, v34, (v34 - v33) >> 3);
      v19 = a1[2] - a1[1];
      if (v19)
      {
        v20 = v19 >> 3;
        v21 = *a2;
        v22 = v30;
        if (v20 <= 1)
        {
          v20 = 1;
        }

        do
        {
          v23 = *v21;
          v21 += 2;
          *v22++ += v23;
          --v20;
        }

        while (v20);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      ++v16;
    }

    while (v16 != v18);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void MIL::ValueInference::Tensor<long long>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<long long>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<long long>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_218101790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<long long>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = 0;
  v8 = a1[1] - *a1;
  if (v8)
  {
    v9 = v8 >> 6;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v6 + 8);
    do
    {
      v11 = *v10;
      v10 += 8;
      v7 += *(v11 + 8 * a2);
      --v9;
    }

    while (v9);
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v30, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  v12 = v30;
  v13 = v31;
  *(v30 + a2) = v7;
  v29 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v12, v13, (v13 - v12) >> 3);
  MIL::ValueInference::Tensor<long long>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v14 = *a1;
  v15 = a1[1];
  if (v15 != *a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v14 + (v16 << 6) + 40) - *(v14 + (v16 << 6) + 32);
      if (v18)
      {
        v19 = 0;
        if ((v18 >> 3) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18 >> 3;
        }

        do
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v23, v26, v27, (v27 - v26) >> 3);
          *(v23 + a2) += v17;
          v21 = *a1 + (v16 << 6);
          if (v23)
          {
            v24 = v23;
            operator delete(v23);
          }

          if (v26)
          {
            v27 = v26;
            operator delete(v26);
          }

          ++v19;
        }

        while (v20 != v19);
        v14 = *a1;
        v15 = a1[1];
      }

      v17 += *(*(v14 + (v16++ << 6) + 8) + 8 * a2);
    }

    while (v16 < (v15 - v14) >> 6);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_21810198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<long long>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  v11 = *a1;
  if (v9 != (a1[1] - *a1) >> 6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v51);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "The number of tensors (", 23);
    v38 = MEMORY[0x21CEAFB40](v37, (a1[1] - *a1) >> 6);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ") is not the same as the number of blocks (", 43);
    v40 = MEMORY[0x21CEAFB80](v39, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v50);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v52 = 0;
  v53 = 0;
  v51 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v51, *(v11 + 8), *(v11 + 16), (*(v11 + 16) - *(v11 + 8)) >> 3);
  memset(&v50, 0, sizeof(v50));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v50, v51, v52, (v52 - v51) >> 3);
  v12 = *a2;
  v13 = v50.__r_.__value_.__r.__words[0];
  v14 = *(a2 + 8) - *a2;
  if (v14)
  {
    v15 = v14 >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = v50.__r_.__value_.__r.__words[0];
    do
    {
      v17 = *v12++;
      *v16++ *= v17;
      --v15;
    }

    while (v15);
  }

  __p = 0uLL;
  v49 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v13, v50.__r_.__value_.__l.__size_, (v50.__r_.__value_.__l.__size_ - v13) >> 3);
  MIL::ValueInference::Tensor<long long>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v19 = *a1 + (i << 6);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16) - v20;
      if (v21 != v52 - v51 || memcmp(v20, v51, v21))
      {
        v36 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v36, "All tensors must have the same shape so they can be merged.");
        __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v22 = *(*a1 + (i << 6) + 40) - *(*a1 + (i << 6) + 32);
      if (v22)
      {
        v23 = 0;
        v24 = v22 >> 3;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        do
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v42, v45, v46, (v46 - v45) >> 3);
          v26 = *(a2 + 8) - *a2;
          if (v26)
          {
            v27 = v26 >> 3;
            v28 = v51;
            v29 = v47[0];
            v30 = v42;
            if (v27 <= 1)
            {
              v27 = 1;
            }

            do
            {
              v32 = *v28++;
              v31 = v32;
              v33 = *v29++;
              *v30++ += v33 * v31;
              --v27;
            }

            while (v27);
          }

          v34 = *a1 + (i << 6);
          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          if (v45)
          {
            v46 = v45;
            operator delete(v45);
          }

          ++v23;
        }

        while (v23 != v25);
      }

      if (v47[0])
      {
        v47[1] = v47[0];
        operator delete(v47[0]);
      }
    }
  }

  if (v50.__r_.__value_.__r.__words[0])
  {
    v50.__r_.__value_.__l.__size_ = v50.__r_.__value_.__r.__words[0];
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }
}

void sub_218101D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t MIL::ValueInference::Tensor<long long>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1 + 1;
  v43 = a1[1];
  v7 = a1[2];
  v8 = (v7 - v43) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v60, *a2, a2[1]);
  for (i = v61; i; i = *i)
  {
    v10 = i[2];
    if (v10 >= v8)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v57);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "axis(", 5);
      v32 = MEMORY[0x21CEAFB80](v31, v10);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") must be smaller than the number of input dimensions(", 54);
      v34 = MEMORY[0x21CEAFB80](v33, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v56);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  memset(&v56, 0, sizeof(v56));
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v7 == v43)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (v8 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v7 - v43) >> 3;
    }

    do
    {
      v50[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, v50))
      {
        if (a3)
        {
          v50[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v57, v50);
        }

        v14 = &v53;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v57, (*v6 + v11));
        v14 = &v56;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v14->__r_.__value_.__l.__data_, (*v6 + v11));
      ++v12;
      v11 += 8;
    }

    while (v13 != v12);
    v15 = v57;
    v16 = v58;
  }

  __p = 0uLL;
  v52 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v15, v16, (v16 - v15) >> 3);
  MIL::ValueInference::Tensor<long long>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v17 = 0;
  v18 = *(a5 + 40);
  v19 = (v18 - *(a5 + 32)) >> 3;
  if (v8 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v7 - v43) >> 3;
  }

  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = (v18 - *(a5 + 32)) >> 3;
  }

  v36 = v21;
  v37 = v19;
  v38 = (a1[5] - a1[4]) >> 3;
  v22 = v38 / v19;
  do
  {
    v40 = v17;
    v8 &= 0xFFFFFFFFFFFFFF00;
    if (v37 <= v38)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        if (v7 != v43)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          do
          {
            v44 = v25;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, &v44))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v48 + v26++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v50[0] + v27++);
            }

            ++v25;
          }

          while (v20 != v25);
        }

        v29 = a1[4];
        if (v24)
        {
          v8 = std::function<long long ()(long long,long long)>::operator()(a4, v8, *(v29 + 8 * v28));
        }

        else
        {
          v8 = *(v29 + 8 * v28);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        ++v23;
        v24 = 1;
      }

      while (v23 < v22);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v50[0])
    {
      v50[1] = v50[0];
      operator delete(v50[0]);
    }

    v17 = v40 + 1;
  }

  while (v40 + 1 != v36);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56.__r_.__value_.__r.__words[0])
  {
    v56.__r_.__value_.__l.__size_ = v56.__r_.__value_.__r.__words[0];
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v60);
}

void sub_218102294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 128);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v40);
  goto LABEL_6;
}

uint64_t std::function<long long ()(long long,long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::Tensor<long long>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<long long>::Zeros(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_218102474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<BOOL>(&v12, *a1);
  if ((v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get data view.");
    v7 = MEMORY[0x277D82760];
    v8 = MEMORY[0x277D82600];
    goto LABEL_10;
  }

  v4 = (*(**a1 + 32))();
  if ((*(*v4 + 88))(v4) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "It is not supported to convert a tensor of string dtype.");
    v7 = off_278235F80;
    v8 = MEMORY[0x277D82610];
LABEL_10:
    __cxa_throw(exception, v7, v8);
  }

  MIL::GetTensorShapeWithDimensionsAllKnown(v4, v5, &v11);
  v10 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<BOOL const*,BOOL const*>(&__p, v13, v13 + v14, v14);
  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void MIL::ValueInference::Tensor<BOOL>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 2, __p);
}

void sub_2181026F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<BOOL>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9C18;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = a2->n128_u64[1];
  v7 = a2->n128_u64[0];
  if (a2->n128_u64[0] == v6)
  {
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
    v8 = a3->n128_u64[0] != v11;
  }

  else
  {
    v8 = 1;
    do
    {
      v9 = *v7++;
      v8 *= v9;
    }

    while (v7 != v6);
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
  }

  if (v8 != v11 - v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "data size and shape dismatch.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::vector<float>::__move_assign(v5, a2);
  std::vector<float>::__move_assign(a1 + 32, a3);
  *(a1 + 56) = v8;
  return a1;
}

void sub_218102834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = v10[4];
  if (v12)
  {
    v10[5] = v12;
    operator delete(v12);
  }

  v13 = *a10;
  if (*a10)
  {
    v10[2] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

double MIL::ValueInference::Tensor<BOOL>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9C18;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void MIL::ValueInference::Tensor<BOOL>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<unsigned char>::vector[abi:ne200100](&v11, a1[5] - a1[4]);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<unsigned char ()(unsigned char)>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<unsigned char ()(unsigned char)>::operator()(v12, *v7++);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<BOOL>::Tensor(a3, &__p, &v11);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_2181029B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<BOOL>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<BOOL>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 1;
  if (v6 != v7)
  {
    v9 = v6;
    do
    {
      v10 = *v9++;
      v8 *= v10;
    }

    while (v9 != v7);
  }

  if (a1[7] != v8)
  {
    v13 = a2;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Tensor is not able to be reshaped since the number of elements in the newShape [ ", 81);
    v14 = *v13;
    v15 = v13[1];
    if (*v13 != v15)
    {
      do
      {
        v16 = MEMORY[0x21CEAFB80](&v22, *v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
        ++v14;
      }

      while (v14 != v15);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "] is not the same as the number of elements in the tensor shape [ ", 66);
    v17 = a1[1];
    for (i = a1[2]; v17 != i; ++v17)
    {
      v19 = MEMORY[0x21CEAFB80](&v22, *v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "].", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &__p);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v22 = 0uLL;
  v23 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v22, v6, v7, (v7 - v6) >> 3);
  v11 = a1[4];
  v12 = a1[5];
  memset(&__p, 0, sizeof(__p));
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v11, v12, v12 - v11);
  MIL::ValueInference::Tensor<BOOL>::Tensor(a3, &v22, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22.n128_u64[0])
  {
    v22.n128_u64[1] = v22.n128_u64[0];
    operator delete(v22.n128_u64[0]);
  }
}

void sub_218102C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void MIL::ValueInference::Tensor<BOOL>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(*(a1 + 32) + i))
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v3 = *(a1 + 56);
      }
    }
  }
}

void MIL::ValueInference::Tensor<BOOL>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v5 = (a2[1] - *a2) >> 4;
  v6 = a1 + 1;
  if (v5 != (a1[2] - a1[1]) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Indices does not match the rank of the tensor.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::vector<unsigned long long>::reserve(&v36, v5);
  v8 = a1[1];
  if (a1[2] != v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (*a2)[v9];
      v12 = (*a2)[v9 + 1];
      v13 = v12 >= v11;
      v14 = (v12 - v11);
      if (!v13)
      {
        break;
      }

      if (v12 > *(v8 + 8 * v10))
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v24, "Indices end is out of the bound for the tensor dimension.");
        v25 = MEMORY[0x277D825F8];
        v26 = off_278235F78;
        v27 = MEMORY[0x277D828E8] + 16;
LABEL_27:
        v24->__vftable = v27;
        __cxa_throw(v24, v26, v25);
      }

      v32 = v14;
      std::vector<unsigned long long>::push_back[abi:ne200100](&v36, &v32);
      ++v10;
      v8 = a1[1];
      v9 += 2;
      if (v10 >= (a1[2] - v8) >> 3)
      {
        goto LABEL_8;
      }
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v24, "Indices end must not be smaller than the indices begin.");
    v25 = MEMORY[0x277D82610];
    v26 = off_278235F80;
    v27 = MEMORY[0x277D828F8] + 16;
    goto LABEL_27;
  }

LABEL_8:
  __p = 0uLL;
  v35 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v36, v37, (v37 - v36) >> 3);
  MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v15 = a3[5] - a3[4];
  if (v15)
  {
    v16 = 0;
    if (v15 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a3[5] - a3[4];
    }

    do
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v29, v32, v33, (v33 - v32) >> 3);
      v18 = a1[2] - a1[1];
      if (v18)
      {
        v19 = v18 >> 3;
        v20 = *a2;
        v21 = v29;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        do
        {
          v22 = *v20;
          v20 += 2;
          *v21++ += v22;
          --v19;
        }

        while (v19);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      ++v16;
    }

    while (v16 != v17);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void MIL::ValueInference::Tensor<BOOL>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<unsigned char>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_218103198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = 0;
  v8 = a1[1] - *a1;
  if (v8)
  {
    v9 = v8 >> 6;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v6 + 8);
    do
    {
      v11 = *v10;
      v10 += 8;
      v7 += *(v11 + 8 * a2);
      --v9;
    }

    while (v9);
  }

  v30 = 0;
  v31 = 0;
  v29 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v29, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  v12 = v29;
  v13 = v30;
  *(v29 + a2) = v7;
  v28 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v12, v13, (v13 - v12) >> 3);
  MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v14 = *a1;
  v15 = a1[1];
  if (v15 != *a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v14 + (v16 << 6) + 40) - *(v14 + (v16 << 6) + 32);
      if (v18)
      {
        v19 = 0;
        if (v18 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = *(v14 + (v16 << 6) + 40) - *(v14 + (v16 << 6) + 32);
        }

        do
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v22, v25, v26, (v26 - v25) >> 3);
          *(v22 + a2) += v17;
          v21 = *a1 + (v16 << 6);
          if (v22)
          {
            v23 = v22;
            operator delete(v22);
          }

          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          ++v19;
        }

        while (v20 != v19);
        v14 = *a1;
        v15 = a1[1];
      }

      v17 += *(*(v14 + (v16++ << 6) + 8) + 8 * a2);
    }

    while (v16 < (v15 - v14) >> 6);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_21810338C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<BOOL>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  v11 = *a1;
  if (v9 != (a1[1] - *a1) >> 6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v49);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "The number of tensors (", 23);
    v36 = MEMORY[0x21CEAFB40](v35, (a1[1] - *a1) >> 6);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ") is not the same as the number of blocks (", 43);
    v38 = MEMORY[0x21CEAFB80](v37, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v48);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v50 = 0;
  v51 = 0;
  v49 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v49, *(v11 + 8), *(v11 + 16), (*(v11 + 16) - *(v11 + 8)) >> 3);
  memset(&v48, 0, sizeof(v48));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v48, v49, v50, (v50 - v49) >> 3);
  v12 = *a2;
  v13 = v48.__r_.__value_.__r.__words[0];
  v14 = *(a2 + 8) - *a2;
  if (v14)
  {
    v15 = v14 >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = v48.__r_.__value_.__r.__words[0];
    do
    {
      v17 = *v12++;
      *v16++ *= v17;
      --v15;
    }

    while (v15);
  }

  __p = 0uLL;
  v47 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v13, v48.__r_.__value_.__l.__size_, (v48.__r_.__value_.__l.__size_ - v13) >> 3);
  MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v19 = *a1 + (i << 6);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16) - v20;
      if (v21 != v50 - v49 || memcmp(v20, v49, v21))
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v34, "All tensors must have the same shape so they can be merged.");
        __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v22 = *(*a1 + (i << 6) + 40) - *(*a1 + (i << 6) + 32);
      if (v22)
      {
        v23 = 0;
        if (v22 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = *(*a1 + (i << 6) + 40) - *(*a1 + (i << 6) + 32);
        }

        do
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v40, v43, v44, (v44 - v43) >> 3);
          v25 = *(a2 + 8) - *a2;
          if (v25)
          {
            v26 = v25 >> 3;
            v27 = v49;
            v28 = v45[0];
            v29 = v40;
            if (v26 <= 1)
            {
              v26 = 1;
            }

            do
            {
              v31 = *v27++;
              v30 = v31;
              v32 = *v28++;
              *v29++ += v32 * v30;
              --v26;
            }

            while (v26);
          }

          v33 = *a1 + (i << 6);
          if (v40)
          {
            v41 = v40;
            operator delete(v40);
          }

          if (v43)
          {
            v44 = v43;
            operator delete(v43);
          }

          ++v23;
        }

        while (v23 != v24);
      }

      if (v45[0])
      {
        v45[1] = v45[0];
        operator delete(v45[0]);
      }
    }
  }

  if (v48.__r_.__value_.__r.__words[0])
  {
    v48.__r_.__value_.__l.__size_ = v48.__r_.__value_.__r.__words[0];
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_21810378C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t MIL::ValueInference::Tensor<BOOL>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1 + 1;
  v43 = a1[1];
  v7 = a1[2];
  v8 = (v7 - v43) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v60, *a2, a2[1]);
  for (i = v61; i; i = *i)
  {
    v10 = i[2];
    if (v10 >= v8)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v57);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "axis(", 5);
      v32 = MEMORY[0x21CEAFB80](v31, v10);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") must be smaller than the number of input dimensions(", 54);
      v34 = MEMORY[0x21CEAFB80](v33, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v56);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  memset(&v56, 0, sizeof(v56));
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v7 == v43)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (v8 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v7 - v43) >> 3;
    }

    do
    {
      v50[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, v50))
      {
        if (a3)
        {
          v50[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v57, v50);
        }

        v14 = &v53;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v57, (*v6 + v11));
        v14 = &v56;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v14->__r_.__value_.__l.__data_, (*v6 + v11));
      ++v12;
      v11 += 8;
    }

    while (v13 != v12);
    v15 = v57;
    v16 = v58;
  }

  __p = 0uLL;
  v52 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v15, v16, (v16 - v15) >> 3);
  MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v17 = 0;
  v18 = *(a5 + 40);
  v19 = v18 - *(a5 + 32);
  if (v8 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v7 - v43) >> 3;
  }

  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18 - *(a5 + 32);
  }

  v36 = v21;
  v37 = v19;
  v38 = a1[5] - a1[4];
  v22 = v38 / v19;
  do
  {
    v40 = v17;
    if (v37 <= v38)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      do
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        if (v7 != v43)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          do
          {
            v44 = v26;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v60, &v44))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v48 + v27++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v45, v50[0] + v28++);
            }

            ++v26;
          }

          while (v20 != v26);
        }

        if (v25)
        {
          v23 = std::function<unsigned char ()(unsigned char,unsigned char)>::operator()(a4, v23, *(a1[4] + v29) != 0) != 0;
        }

        else
        {
          v23 = *(a1[4] + v29) != 0;
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        ++v24;
        v25 = 1;
      }

      while (v24 < v22);
    }

    else
    {
      v23 = 0;
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v50[0])
    {
      v50[1] = v50[0];
      operator delete(v50[0]);
    }

    v17 = v40 + 1;
  }

  while (v40 + 1 != v36);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56.__r_.__value_.__r.__words[0])
  {
    v56.__r_.__value_.__l.__size_ = v56.__r_.__value_.__r.__words[0];
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v60);
}

void sub_218103CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 128);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v40);
  goto LABEL_6;
}

void MIL::ValueInference::Tensor<BOOL>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<BOOL>::Zeros(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_218103E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Bf16>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<MIL::Bf16>(&v12, *a1);
  if ((v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get data view.");
    v7 = MEMORY[0x277D82760];
    v8 = MEMORY[0x277D82600];
    goto LABEL_10;
  }

  v4 = (*(**a1 + 32))();
  if ((*(*v4 + 88))(v4) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "It is not supported to convert a tensor of string dtype.");
    v7 = off_278235F80;
    v8 = MEMORY[0x277D82610];
LABEL_10:
    __cxa_throw(exception, v7, v8);
  }

  MIL::GetTensorShapeWithDimensionsAllKnown(v4, v5, &v11);
  v10 = 0;
  __p = 0uLL;
  std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<MIL::Bf16 const*,MIL::Bf16 const*>(&__p, v13, v13 + 2 * v14, v14);
  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void MIL::ValueInference::Tensor<MIL::Bf16>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 7, __p);
}

void sub_2181040B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9BB8;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = a2->n128_u64[1];
  v7 = a2->n128_u64[0];
  if (a2->n128_u64[0] == v6)
  {
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
    v8 = a3->n128_u64[0] != v11;
  }

  else
  {
    v8 = 1;
    do
    {
      v9 = *v7++;
      v8 *= v9;
    }

    while (v7 != v6);
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
  }

  if (v8 != (v11 - v10) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "data size and shape dismatch.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::vector<float>::__move_assign(v5, a2);
  std::vector<float>::__move_assign(a1 + 32, a3);
  *(a1 + 56) = v8;
  return a1;
}

void sub_2181041F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = v10[4];
  if (v12)
  {
    v10[5] = v12;
    operator delete(v12);
  }

  v13 = *a10;
  if (*a10)
  {
    v10[2] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

double MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9BB8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<MIL::Bf16>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 1;
  if (v6 != v7)
  {
    v9 = v6;
    do
    {
      v10 = *v9++;
      v8 *= v10;
    }

    while (v9 != v7);
  }

  if (a1[7] != v8)
  {
    v13 = a2;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Tensor is not able to be reshaped since the number of elements in the newShape [ ", 81);
    v14 = *v13;
    v15 = v13[1];
    if (*v13 != v15)
    {
      do
      {
        v16 = MEMORY[0x21CEAFB80](&v22, *v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
        ++v14;
      }

      while (v14 != v15);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "] is not the same as the number of elements in the tensor shape [ ", 66);
    v17 = a1[1];
    for (i = a1[2]; v17 != i; ++v17)
    {
      v19 = MEMORY[0x21CEAFB80](&v22, *v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "].", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &__p);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v22 = 0uLL;
  v23 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v22, v6, v7, (v7 - v6) >> 3);
  v11 = a1[4];
  v12 = a1[5];
  memset(&__p, 0, sizeof(__p));
  std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::Bf16 const*>,std::__wrap_iter<MIL::Bf16 const*>>(&__p, v11, v12, (v12 - v11) >> 1);
  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a3, &v22, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22.n128_u64[0])
  {
    v22.n128_u64[1] = v22.n128_u64[0];
    operator delete(v22.n128_u64[0]);
  }
}

void sub_2181044E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void MIL::ValueInference::Tensor<MIL::Bf16>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 56))
  {
    v4 = 0;
    do
    {
      v6 = *(*(a1 + 32) + 2 * v4);
      if (MIL::Bf16::GetFloat(&v6) != 0.0)
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      ++v4;
    }

    while (v4 < *(a1 + 56));
  }
}

void MIL::ValueInference::Tensor<MIL::Bf16>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v5 = (a2[1] - *a2) >> 4;
  v6 = a1 + 1;
  if (v5 != (a1[2] - a1[1]) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Indices does not match the rank of the tensor.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::vector<unsigned long long>::reserve(&v38, v5);
  v8 = a1[1];
  if (a1[2] != v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (*a2)[v9];
      v12 = (*a2)[v9 + 1];
      v13 = v12 >= v11;
      v14 = (v12 - v11);
      if (!v13)
      {
        break;
      }

      if (v12 > *(v8 + 8 * v10))
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v26, "Indices end is out of the bound for the tensor dimension.");
        v27 = MEMORY[0x277D825F8];
        v28 = off_278235F78;
        v29 = MEMORY[0x277D828E8] + 16;
LABEL_27:
        v26->__vftable = v29;
        __cxa_throw(v26, v28, v27);
      }

      v34 = v14;
      std::vector<unsigned long long>::push_back[abi:ne200100](&v38, &v34);
      ++v10;
      v8 = a1[1];
      v9 += 2;
      if (v10 >= (a1[2] - v8) >> 3)
      {
        goto LABEL_8;
      }
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "Indices end must not be smaller than the indices begin.");
    v27 = MEMORY[0x277D82610];
    v28 = off_278235F80;
    v29 = MEMORY[0x277D828F8] + 16;
    goto LABEL_27;
  }

LABEL_8:
  __p = 0uLL;
  v37 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v38, v39, (v39 - v38) >> 3);
  MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v15 = a3[5] - a3[4];
  if (v15)
  {
    v16 = 0;
    v17 = v15 >> 1;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v31, v34, v35, (v35 - v34) >> 3);
      v19 = a1[2] - a1[1];
      if (v19)
      {
        v20 = v19 >> 3;
        v21 = *a2;
        v22 = v31;
        if (v20 <= 1)
        {
          v20 = 1;
        }

        do
        {
          v23 = *v21;
          v21 += 2;
          *v22++ += v23;
          --v20;
        }

        while (v20);
      }

      v25 = a1[4];
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      ++v16;
    }

    while (v16 != v18);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<MIL::Bf16>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_218104A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Bf16>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = 0;
  v8 = a1[1] - *a1;
  if (v8)
  {
    v9 = v8 >> 6;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v6 + 8);
    do
    {
      v11 = *v10;
      v10 += 8;
      v7 += *(v11 + 8 * a2);
      --v9;
    }

    while (v9);
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v31, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  v12 = v31;
  v13 = v32;
  *(v31 + a2) = v7;
  v30 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v12, v13, (v13 - v12) >> 3);
  MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v14 = *a1;
  v15 = a1[1];
  if (v15 != *a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v14 + (v16 << 6) + 40) - *(v14 + (v16 << 6) + 32);
      if (v18)
      {
        v19 = 0;
        if ((v18 >> 1) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18 >> 1;
        }

        do
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v27, v28, (v28 - v27) >> 3);
          *(v24 + a2) += v17;
          v21 = *a1 + (v16 << 6);
          v23 = *(v21 + 32);
          if (v24)
          {
            v25 = v24;
            operator delete(v24);
          }

          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }

          ++v19;
        }

        while (v20 != v19);
        v14 = *a1;
        v15 = a1[1];
      }

      v17 += *(*(v14 + (v16++ << 6) + 8) + 8 * a2);
    }

    while (v16 < (v15 - v14) >> 6);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218104C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Bf16>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  v11 = *a1;
  if (v9 != (a1[1] - *a1) >> 6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v52);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "The number of tensors (", 23);
    v39 = MEMORY[0x21CEAFB40](v38, (a1[1] - *a1) >> 6);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ") is not the same as the number of blocks (", 43);
    v41 = MEMORY[0x21CEAFB80](v40, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v51);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v53 = 0;
  v54 = 0;
  v52 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v52, *(v11 + 8), *(v11 + 16), (*(v11 + 16) - *(v11 + 8)) >> 3);
  memset(&v51, 0, sizeof(v51));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v51, v52, v53, (v53 - v52) >> 3);
  v12 = *a2;
  v13 = v51.__r_.__value_.__r.__words[0];
  v14 = *(a2 + 8) - *a2;
  if (v14)
  {
    v15 = v14 >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = v51.__r_.__value_.__r.__words[0];
    do
    {
      v17 = *v12++;
      *v16++ *= v17;
      --v15;
    }

    while (v15);
  }

  __p = 0uLL;
  v50 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v13, v51.__r_.__value_.__l.__size_, (v51.__r_.__value_.__l.__size_ - v13) >> 3);
  MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v19 = *a1 + (i << 6);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16) - v20;
      if (v21 != v53 - v52 || memcmp(v20, v52, v21))
      {
        v37 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v37, "All tensors must have the same shape so they can be merged.");
        __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v22 = *(*a1 + (i << 6) + 40) - *(*a1 + (i << 6) + 32);
      if (v22)
      {
        v23 = 0;
        v24 = v22 >> 1;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        do
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v43, v46, v47, (v47 - v46) >> 3);
          v26 = *(a2 + 8) - *a2;
          if (v26)
          {
            v27 = v26 >> 3;
            v28 = v52;
            v29 = v48[0];
            v30 = v43;
            if (v27 <= 1)
            {
              v27 = 1;
            }

            do
            {
              v32 = *v28++;
              v31 = v32;
              v33 = *v29++;
              *v30++ += v33 * v31;
              --v27;
            }

            while (v27);
          }

          v34 = *a1 + (i << 6);
          v36 = *(v34 + 32);
          if (v43)
          {
            v44 = v43;
            operator delete(v43);
          }

          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          ++v23;
        }

        while (v23 != v25);
      }

      if (v48[0])
      {
        v48[1] = v48[0];
        operator delete(v48[0]);
      }
    }
  }

  if (v51.__r_.__value_.__r.__words[0])
  {
    v51.__r_.__value_.__l.__size_ = v51.__r_.__value_.__r.__words[0];
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_218105028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t MIL::ValueInference::Tensor<MIL::Bf16>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1 + 1;
  v41 = a1[1];
  v8 = a1[2];
  v9 = (v8 - v41) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v58, *a2, a2[1]);
  for (i = v59; i; i = *i)
  {
    v5 = i[2];
    if (v5 >= v9)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v55);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "axis(", 5);
      v30 = MEMORY[0x21CEAFB80](v29, v5);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") must be smaller than the number of input dimensions(", 54);
      v32 = MEMORY[0x21CEAFB80](v31, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v54);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  memset(&v54, 0, sizeof(v54));
  v51 = 0;
  v52 = 0;
  v53 = 0;
  if (v8 == v41)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = (v8 - v41) >> 3;
    }

    do
    {
      v48[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v58, v48))
      {
        if (a3)
        {
          v48[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v55, v48);
        }

        v13 = &v51;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v55, (*v7 + v11));
        v13 = &v54;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v13->__r_.__value_.__l.__data_, (*v7 + v11));
      ++v12;
      v11 += 8;
    }

    while (v5 != v12);
    v14 = v55;
    v15 = v56;
  }

  __p = 0uLL;
  v50 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v14, v15, (v15 - v14) >> 3);
  MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v16 = 0;
  v17 = *(a5 + 40);
  v18 = (v17 - *(a5 + 32)) >> 1;
  if (v9 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = (v8 - v41) >> 3;
  }

  if (v18 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v17 - *(a5 + 32)) >> 1;
  }

  v34 = v20;
  v35 = v18;
  v36 = (a1[5] - a1[4]) >> 1;
  v21 = v36 / v18;
  do
  {
    v38 = v16;
    v22 = v5 & 0xFF00;
    if (v35 <= v36)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        if (v8 != v41)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          do
          {
            v42 = v25;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v58, &v42))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v43, v46 + v26++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v43, v48[0] + v27++);
            }

            ++v25;
          }

          while (v19 != v25);
        }

        if (v24)
        {
          LOWORD(v5) = std::function<MIL::Bf16 ()(MIL::Bf16,MIL::Bf16)>::operator()(a4, v22, v5);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        ++v23;
        v24 = 1;
        v22 = v5;
      }

      while (v23 < v21);
    }

    else
    {
      LOWORD(v5) = v5 & 0xFF00;
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v48[0])
    {
      v48[1] = v48[0];
      operator delete(v48[0]);
    }

    v16 = v38 + 1;
  }

  while (v38 + 1 != v34);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54.__r_.__value_.__r.__words[0])
  {
    v54.__r_.__value_.__l.__size_ = v54.__r_.__value_.__r.__words[0];
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v58);
}

void sub_218105534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 128);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v40);
  goto LABEL_6;
}

uint64_t std::function<MIL::Bf16 ()(MIL::Bf16,MIL::Bf16)>::operator()(uint64_t a1, __int16 a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_218105718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Fp16>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<MIL::Fp16>(&v12, *a1);
  if ((v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get data view.");
    v7 = MEMORY[0x277D82760];
    v8 = MEMORY[0x277D82600];
    goto LABEL_10;
  }

  v4 = (*(**a1 + 32))();
  if ((*(*v4 + 88))(v4) == 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "It is not supported to convert a tensor of string dtype.");
    v7 = off_278235F80;
    v8 = MEMORY[0x277D82610];
LABEL_10:
    __cxa_throw(exception, v7, v8);
  }

  MIL::GetTensorShapeWithDimensionsAllKnown(v4, v5, &v11);
  v10 = 0;
  __p = 0uLL;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&__p, v13, v13 + 2 * v14, v14);
  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void MIL::ValueInference::Tensor<MIL::Fp16>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 4, __p);
}

void sub_2181059A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E5E30;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = a2->n128_u64[1];
  v7 = a2->n128_u64[0];
  if (a2->n128_u64[0] == v6)
  {
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
    v8 = a3->n128_u64[0] != v11;
  }

  else
  {
    v8 = 1;
    do
    {
      v9 = *v7++;
      v8 *= v9;
    }

    while (v7 != v6);
    v10 = a3->n128_u64[0];
    v11 = a3->n128_u64[1];
  }

  if (v8 != (v11 - v10) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "data size and shape dismatch.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  std::vector<float>::__move_assign(v5, a2);
  std::vector<float>::__move_assign(a1 + 32, a3);
  *(a1 + 56) = v8;
  return a1;
}

void sub_218105AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = v10[4];
  if (v12)
  {
    v10[5] = v12;
    operator delete(v12);
  }

  v13 = *a10;
  if (*a10)
  {
    v10[2] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

double MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E5E30;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<MIL::Fp16>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 1;
  if (v6 != v7)
  {
    v9 = v6;
    do
    {
      v10 = *v9++;
      v8 *= v10;
    }

    while (v9 != v7);
  }

  if (a1[7] != v8)
  {
    v13 = a2;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Tensor is not able to be reshaped since the number of elements in the newShape [ ", 81);
    v14 = *v13;
    v15 = v13[1];
    if (*v13 != v15)
    {
      do
      {
        v16 = MEMORY[0x21CEAFB80](&v22, *v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
        ++v14;
      }

      while (v14 != v15);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "] is not the same as the number of elements in the tensor shape [ ", 66);
    v17 = a1[1];
    for (i = a1[2]; v17 != i; ++v17)
    {
      v19 = MEMORY[0x21CEAFB80](&v22, *v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "].", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &__p);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v22 = 0uLL;
  v23 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v22, v6, v7, (v7 - v6) >> 3);
  v11 = a1[4];
  v12 = a1[5];
  memset(&__p, 0, sizeof(__p));
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::Fp16 const*>,std::__wrap_iter<MIL::Fp16 const*>>(&__p, v11, v12, (v12 - v11) >> 1);
  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a3, &v22, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22.n128_u64[0])
  {
    v22.n128_u64[1] = v22.n128_u64[0];
    operator delete(v22.n128_u64[0]);
  }
}

void sub_218105DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void MIL::ValueInference::Tensor<MIL::Fp16>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 56))
  {
    v4 = 0;
    do
    {
      v6 = *(*(a1 + 32) + 2 * v4);
      if (MIL::Fp16::GetFloat(&v6) != 0.0)
      {
        std::vector<std::vector<unsigned long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      ++v4;
    }

    while (v4 < *(a1 + 56));
  }
}

void MIL::ValueInference::Tensor<MIL::Fp16>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v5 = (a2[1] - *a2) >> 4;
  v6 = a1 + 1;
  if (v5 != (a1[2] - a1[1]) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Indices does not match the rank of the tensor.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::vector<unsigned long long>::reserve(&v38, v5);
  v8 = a1[1];
  if (a1[2] != v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (*a2)[v9];
      v12 = (*a2)[v9 + 1];
      v13 = v12 >= v11;
      v14 = (v12 - v11);
      if (!v13)
      {
        break;
      }

      if (v12 > *(v8 + 8 * v10))
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v26, "Indices end is out of the bound for the tensor dimension.");
        v27 = MEMORY[0x277D825F8];
        v28 = off_278235F78;
        v29 = MEMORY[0x277D828E8] + 16;
LABEL_27:
        v26->__vftable = v29;
        __cxa_throw(v26, v28, v27);
      }

      v34 = v14;
      std::vector<unsigned long long>::push_back[abi:ne200100](&v38, &v34);
      ++v10;
      v8 = a1[1];
      v9 += 2;
      if (v10 >= (a1[2] - v8) >> 3)
      {
        goto LABEL_8;
      }
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "Indices end must not be smaller than the indices begin.");
    v27 = MEMORY[0x277D82610];
    v28 = off_278235F80;
    v29 = MEMORY[0x277D828F8] + 16;
    goto LABEL_27;
  }

LABEL_8:
  __p = 0uLL;
  v37 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v38, v39, (v39 - v38) >> 3);
  MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v15 = a3[5] - a3[4];
  if (v15)
  {
    v16 = 0;
    v17 = v15 >> 1;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v31, v34, v35, (v35 - v34) >> 3);
      v19 = a1[2] - a1[1];
      if (v19)
      {
        v20 = v19 >> 3;
        v21 = *a2;
        v22 = v31;
        if (v20 <= 1)
        {
          v20 = 1;
        }

        do
        {
          v23 = *v21;
          v21 += 2;
          *v22++ += v23;
          --v20;
        }

        while (v20);
      }

      v25 = a1[4];
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      ++v16;
    }

    while (v16 != v18);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<MIL::Fp16>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_21810630C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Fp16>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = 0;
  v8 = a1[1] - *a1;
  if (v8)
  {
    v9 = v8 >> 6;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v6 + 8);
    do
    {
      v11 = *v10;
      v10 += 8;
      v7 += *(v11 + 8 * a2);
      --v9;
    }

    while (v9);
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v31, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  v12 = v31;
  v13 = v32;
  *(v31 + a2) = v7;
  v30 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v12, v13, (v13 - v12) >> 3);
  MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v14 = *a1;
  v15 = a1[1];
  if (v15 != *a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(v14 + (v16 << 6) + 40) - *(v14 + (v16 << 6) + 32);
      if (v18)
      {
        v19 = 0;
        if ((v18 >> 1) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18 >> 1;
        }

        do
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v27, v28, (v28 - v27) >> 3);
          *(v24 + a2) += v17;
          v21 = *a1 + (v16 << 6);
          v23 = *(v21 + 32);
          if (v24)
          {
            v25 = v24;
            operator delete(v24);
          }

          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }

          ++v19;
        }

        while (v20 != v19);
        v14 = *a1;
        v15 = a1[1];
      }

      v17 += *(*(v14 + (v16++ << 6) + 8) + 8 * a2);
    }

    while (v16 < (v15 - v14) >> 6);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_218106510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Fp16>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  v11 = *a1;
  if (v9 != (a1[1] - *a1) >> 6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v52);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "The number of tensors (", 23);
    v39 = MEMORY[0x21CEAFB40](v38, (a1[1] - *a1) >> 6);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ") is not the same as the number of blocks (", 43);
    v41 = MEMORY[0x21CEAFB80](v40, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v51);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v53 = 0;
  v54 = 0;
  v52 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v52, *(v11 + 8), *(v11 + 16), (*(v11 + 16) - *(v11 + 8)) >> 3);
  memset(&v51, 0, sizeof(v51));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v51, v52, v53, (v53 - v52) >> 3);
  v12 = *a2;
  v13 = v51.__r_.__value_.__r.__words[0];
  v14 = *(a2 + 8) - *a2;
  if (v14)
  {
    v15 = v14 >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = v51.__r_.__value_.__r.__words[0];
    do
    {
      v17 = *v12++;
      *v16++ *= v17;
      --v15;
    }

    while (v15);
  }

  __p = 0uLL;
  v50 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v13, v51.__r_.__value_.__l.__size_, (v51.__r_.__value_.__l.__size_ - v13) >> 3);
  MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(&__p, a3);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v19 = *a1 + (i << 6);
      v20 = *(v19 + 8);
      v21 = *(v19 + 16) - v20;
      if (v21 != v53 - v52 || memcmp(v20, v52, v21))
      {
        v37 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v37, "All tensors must have the same shape so they can be merged.");
        __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v22 = *(*a1 + (i << 6) + 40) - *(*a1 + (i << 6) + 32);
      if (v22)
      {
        v23 = 0;
        v24 = v22 >> 1;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        do
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v43, v46, v47, (v47 - v46) >> 3);
          v26 = *(a2 + 8) - *a2;
          if (v26)
          {
            v27 = v26 >> 3;
            v28 = v52;
            v29 = v48[0];
            v30 = v43;
            if (v27 <= 1)
            {
              v27 = 1;
            }

            do
            {
              v32 = *v28++;
              v31 = v32;
              v33 = *v29++;
              *v30++ += v33 * v31;
              --v27;
            }

            while (v27);
          }

          v34 = *a1 + (i << 6);
          v36 = *(v34 + 32);
          if (v43)
          {
            v44 = v43;
            operator delete(v43);
          }

          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          ++v23;
        }

        while (v23 != v25);
      }

      if (v48[0])
      {
        v48[1] = v48[0];
        operator delete(v48[0]);
      }
    }
  }

  if (v51.__r_.__value_.__r.__words[0])
  {
    v51.__r_.__value_.__l.__size_ = v51.__r_.__value_.__r.__words[0];
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_218106918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t MIL::ValueInference::Tensor<MIL::Fp16>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1 + 1;
  v41 = a1[1];
  v8 = a1[2];
  v9 = (v8 - v41) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v58, *a2, a2[1]);
  for (i = v59; i; i = *i)
  {
    v5 = i[2];
    if (v5 >= v9)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v55);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "axis(", 5);
      v30 = MEMORY[0x21CEAFB80](v29, v5);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") must be smaller than the number of input dimensions(", 54);
      v32 = MEMORY[0x21CEAFB80](v31, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v54);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  memset(&v54, 0, sizeof(v54));
  v51 = 0;
  v52 = 0;
  v53 = 0;
  if (v8 == v41)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = (v8 - v41) >> 3;
    }

    do
    {
      v48[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v58, v48))
      {
        if (a3)
        {
          v48[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v55, v48);
        }

        v13 = &v51;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v55, (*v7 + v11));
        v13 = &v54;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v13->__r_.__value_.__l.__data_, (*v7 + v11));
      ++v12;
      v11 += 8;
    }

    while (v5 != v12);
    v14 = v55;
    v15 = v56;
  }

  __p = 0uLL;
  v50 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v14, v15, (v15 - v14) >> 3);
  MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v16 = 0;
  v17 = *(a5 + 40);
  v18 = (v17 - *(a5 + 32)) >> 1;
  if (v9 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = (v8 - v41) >> 3;
  }

  if (v18 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (v17 - *(a5 + 32)) >> 1;
  }

  v34 = v20;
  v35 = v18;
  v36 = (a1[5] - a1[4]) >> 1;
  v21 = v36 / v18;
  do
  {
    v38 = v16;
    v22 = v5 & 0xFF00;
    if (v35 <= v36)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        if (v8 != v41)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          do
          {
            v42 = v25;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v58, &v42))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v43, v46 + v26++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v43, v48[0] + v27++);
            }

            ++v25;
          }

          while (v19 != v25);
        }

        if (v24)
        {
          LOWORD(v5) = std::function<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::operator()(a4, v22, v5);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        ++v23;
        v24 = 1;
        v22 = v5;
      }

      while (v23 < v21);
    }

    else
    {
      LOWORD(v5) = v5 & 0xFF00;
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v48[0])
    {
      v48[1] = v48[0];
      operator delete(v48[0]);
    }

    v16 = v38 + 1;
  }

  while (v38 + 1 != v34);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54.__r_.__value_.__r.__words[0])
  {
    v54.__r_.__value_.__l.__size_ = v54.__r_.__value_.__r.__words[0];
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v58);
}

void sub_218106E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 128);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v40);
  goto LABEL_6;
}

uint64_t std::function<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::operator()(uint64_t a1, __int16 a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(__p, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_218107008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::BinaryOp<float,float>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<float>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<float>::GetScalarData(a2);
    std::function<float ()(float,float)>::operator()(a3, ScalarData, v23);
    v38 = 0uLL;
    v39 = 0;
    LODWORD(v32[0]) = v24;
    v37 = 0;
    v36 = 0uLL;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v36, v32, v32 + 4, 1uLL);
    MIL::ValueInference::Tensor<float>::Tensor(a5, &v38, &v36);
  }

  else
  {
    __p = 0uLL;
    v35 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<float>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v36.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v38, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v32[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v36, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v32, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v28 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v32[0];
      if (v32[1] - v32[0] == v31 - v17 && !memcmp(v32[0], v17, v32[1] - v32[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<float>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<float>::GetScalarData(a2);
      }

      else
      {
      }

      std::function<float ()(float,float)>::operator()(a3, v19, v20);
      v26 = 0;
      v27 = 0;
      v25 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v25, v32[0], v32[1], (v32[1] - v32[0]) >> 3);
      if (v32[0])
      {
        v32[1] = v32[0];
        operator delete(v32[0]);
      }

      *v32 = v28;
      v33 = v29;
      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v31 = v17;
      operator delete(v17);
      v18 = v32[0];
    }

    if (v18)
    {
      v32[1] = v18;
      operator delete(v18);
    }
  }

  if (v36.n128_u64[0])
  {
    v36.n128_u64[1] = v36.n128_u64[0];
    operator delete(v36.n128_u64[0]);
  }

  if (v38.n128_u64[0])
  {
    v38.n128_u64[1] = v38.n128_u64[0];
    operator delete(v38.n128_u64[0]);
  }
}

void sub_218107334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::GetInputIndexFromOutputIndex(uint64_t result, void *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    if ((v5 - v4) > a2[1] - *a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "inShape has more elements than outShape.");
    }

    else
    {
      v6 = a4[1];
      if (v5 - v4 == v6 - *a4)
      {
        v7 = (v6 - 8);
        v8 = (*(result + 8) - 8);
        do
        {
          v10 = *(v5 - 8);
          v5 -= 8;
          v9 = v10;
          v11 = *v8--;
          *v7-- = v11 % v9;
        }

        while (v5 != v4);
        return result;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "Size of inIndex is not equal to size of inShape.");
    }

    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  return result;
}

__n128 anonymous namespace::FetchNextIndex@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 - *a2;
  v7 = *a1;
  v8 = v5 - 8;
  v9 = v6 + *a1 - 8;
  v10 = -(v6 >> 3);
  v11 = 1 - (v6 >> 3);
  for (i = v9; ; --i)
  {
    if (v11 == v3)
    {
      v13 = *v7;
      if (*v7 < *v4)
      {
        break;
      }
    }

    v13 = *(v9 + 8 * v3);
    if (v13 < *(v8 + 8 * v3) - 1)
    {
      goto LABEL_8;
    }

    *(v9 + 8 * v3--) = 0;
    if (v10 == v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "The next index cannot be found.");
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  i = v7;
LABEL_8:
  *i = v13 + 1;
  *a3 = v7;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return result;
}

void MIL::ValueInference::BinaryOp<MIL::Fp16,MIL::Fp16>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LOWORD(v31[0]) = std::function<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v35, v31, v31 + 2, 1);
    MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<MIL::Fp16>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<MIL::Fp16 ()(MIL::Fp16,MIL::Fp16)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_2181078DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::BinaryOp<MIL::Bf16,MIL::Bf16>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LOWORD(v31[0]) = std::function<MIL::Bf16 ()(MIL::Bf16,MIL::Bf16)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<MIL::Bf16 const*,MIL::Bf16 const*>(&v35, v31, v31 + 2, 1);
    MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<MIL::Bf16>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<MIL::Bf16 ()(MIL::Bf16,MIL::Bf16)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_218107CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::BinaryOp<int,int>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<int>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<int>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LODWORD(v31[0]) = std::function<int ()(int,int)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v35, v31, v31 + 4, 1uLL);
    MIL::ValueInference::Tensor<int>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<int>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<int>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<int>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<int ()(int,int)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_21810808C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::BinaryOp<BOOL,BOOL>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<BOOL>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<BOOL>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LOBYTE(v31[0]) = std::function<unsigned char ()(unsigned char,unsigned char)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v35, v31, v31 + 1, 1);
    MIL::ValueInference::Tensor<BOOL>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<BOOL>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<BOOL>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<unsigned char ()(unsigned char,unsigned char)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_218108460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::BinaryOp<float,BOOL>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<float>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<float>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LOBYTE(v31[0]) = std::function<unsigned char ()(float,float)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v35, v31, v31 + 1, 1);
    MIL::ValueInference::Tensor<BOOL>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<float>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<float>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<unsigned char ()(float,float)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_21810883C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<unsigned char ()(float,float)>::operator()(uint64_t a1, float a2, float a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::BinaryOp<int,BOOL>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<int>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<int>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LOBYTE(v31[0]) = std::function<unsigned char ()(int,int)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v35, v31, v31 + 1, 1);
    MIL::ValueInference::Tensor<BOOL>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<int>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<int>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<unsigned char ()(int,int)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_218108C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<unsigned char ()(int,int)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::BinaryOp<MIL::Fp16,BOOL>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LOBYTE(v31[0]) = std::function<unsigned char ()(MIL::Fp16,MIL::Fp16)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v35, v31, v31 + 1, 1);
    MIL::ValueInference::Tensor<BOOL>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<MIL::Fp16>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<unsigned char ()(MIL::Fp16,MIL::Fp16)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_21810909C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<unsigned char ()(MIL::Fp16,MIL::Fp16)>::operator()(uint64_t a1, __int16 a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::BinaryOp<MIL::Bf16,BOOL>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = v10 - *a4;
  if (v10 == *a4)
  {
    ScalarData = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a1);
    v23 = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a2);
    v37 = 0uLL;
    v38 = 0;
    LOBYTE(v31[0]) = std::function<unsigned char ()(MIL::Bf16,MIL::Bf16)>::operator()(a3, ScalarData, v23);
    v36 = 0;
    v35 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v35, v31, v31 + 1, 1);
    MIL::ValueInference::Tensor<BOOL>::Tensor(a5, &v37, &v35);
  }

  else
  {
    __p = 0uLL;
    v34 = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v9, v10, v11 >> 3);
    MIL::ValueInference::Tensor<BOOL>::Zeros(&__p, a5);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v13 = (a1[2] - a1[1]) >> 3;
    v35.n128_u64[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v37, v13);
    v14 = (a2[2] - a2[1]) >> 3;
    v31[0] = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&v35, v14);
    v15 = (a4[1] - *a4) >> 3;
    __s2 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](v31, v15);
    v16 = (a4[1] - *a4) >> 3;
    *&v27 = 0;
    std::vector<unsigned long long>::vector[abi:ne200100](&__s2, v16);
    v17 = __s2;
    *__s2 = **a4;
    while (1)
    {
      v18 = v31[0];
      if (v31[1] - v31[0] == v30 - v17 && !memcmp(v31[0], v17, v31[1] - v31[0]))
      {
        break;
      }

      if (a1[1] == a1[2])
      {
        v19 = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a1);
      }

      else
      {
      }

      if (a2[1] == a2[2])
      {
        v20 = MIL::ValueInference::Tensor<MIL::Bf16>::GetScalarData(a2);
      }

      else
      {
      }

      v21 = std::function<unsigned char ()(MIL::Bf16,MIL::Bf16)>::operator()(a3, v19, v20);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v24, v31[0], v31[1], (v31[1] - v31[0]) >> 3);
      if (v31[0])
      {
        v31[1] = v31[0];
        operator delete(v31[0]);
      }

      *v31 = v27;
      v32 = v28;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v17 = __s2;
    }

    if (v17)
    {
      v30 = v17;
      operator delete(v17);
      v18 = v31[0];
    }

    if (v18)
    {
      v31[1] = v18;
      operator delete(v18);
    }
  }

  if (v35.n128_u64[0])
  {
    v35.n128_u64[1] = v35.n128_u64[0];
    operator delete(v35.n128_u64[0]);
  }

  if (v37.n128_u64[0])
  {
    v37.n128_u64[1] = v37.n128_u64[0];
    operator delete(v37.n128_u64[0]);
  }
}

void sub_2181094CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 104);
  if (v28)
  {
    *(v26 - 96) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<unsigned char ()(MIL::Bf16,MIL::Bf16)>::operator()(uint64_t a1, __int16 a2, __int16 a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void MIL::ValueInference::Tensor<MIL::Bf16>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0uLL;
  v14 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&v13, (a1[5] - a1[4]) >> 1);
  if (a1[5] != a1[4])
  {
    v7 = 0;
    do
    {
      __p.n128_u16[0] = MIL::Bf16::FromFloat(v6, 0.0);
      std::vector<short>::push_back[abi:ne200100](&v13, &__p);
      ++v7;
    }

    while (v7 < (a1[5] - a1[4]) >> 1);
  }

  __p = 0uLL;
  v12 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v9 = a1[4];
  v8 = a1[5];
  v10 = v13.n128_u64[0];
  std::__function::__value_func<MIL::Bf16 ()(MIL::Bf16)>::__value_func[abi:ne200100](v15, a2);
  while (v9 != v8)
  {
    *v10++ = std::function<MIL::Bf16 ()(MIL::Bf16)>::operator()(v15, *v9++);
  }

  std::__function::__value_func<MIL::Bf16 ()(MIL::Bf16)>::~__value_func[abi:ne200100](v15);
  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a3, &__p, &v13);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_218109750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Fp16>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0uLL;
  v14 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&v13, (a1[5] - a1[4]) >> 1);
  if (a1[5] != a1[4])
  {
    v7 = 0;
    do
    {
      __p.n128_u16[0] = MIL::Fp16::FromFloat(v6, 0.0);
      std::vector<short>::push_back[abi:ne200100](&v13, &__p);
      ++v7;
    }

    while (v7 < (a1[5] - a1[4]) >> 1);
  }

  __p = 0uLL;
  v12 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v9 = a1[4];
  v8 = a1[5];
  v10 = v13.n128_u64[0];
  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::__value_func[abi:ne200100](v15, a2);
  while (v9 != v8)
  {
    *v10++ = std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(v15, *v9++);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](v15);
  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a3, &__p, &v13);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_2181098E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  std::vector<unsigned char>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Bf16::GetFloat((v6 + v7)) != 0.0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_218109A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::Bf16 const*>,std::__wrap_iter<MIL::Bf16 const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_218109AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v15 = 0;
  v14 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v14, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v13 = 0;
  std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Fp16::GetFloat((v6 + v7));
      v11 = MIL::Bf16::FromFloat(v10, Float);
      std::vector<short>::push_back[abi:ne200100](&__p, &v11);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v14, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v14.n128_u64[0])
  {
    v14.n128_u64[1] = v14.n128_u64[0];
    operator delete(v14.n128_u64[0]);
  }
}

void sub_218109BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<float>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 2);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Bf16::FromFloat(v6, *(v7 + 4 * v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < (a1[5] - v7) >> 2);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_218109D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<int>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 2);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Bf16::FromFloat(v6, *(v7 + 4 * v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < (a1[5] - v7) >> 2);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_218109E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<short>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Bf16::FromFloat(v6, *(v7 + 2 * v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < (a1[5] - v7) >> 1);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_218109F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v14 = 0;
  v13 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v13, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v12 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v8 = a1[4];
  if (a1[5] != v8)
  {
    v9 = 0;
    do
    {
      LOWORD(v7) = *(v8 + 2 * v9);
      v10 = MIL::Bf16::FromFloat(v6, v7);
      std::vector<short>::push_back[abi:ne200100](&__p, &v10);
      ++v9;
      v8 = a1[4];
    }

    while (v9 < (a1[5] - v8) >> 1);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v13, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_21810A024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<signed char>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, a1[5] - a1[4]);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Bf16::FromFloat(v6, *(v7 + v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < a1[5] - v7);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_21810A12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v14 = 0;
  v13 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v13, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v12 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, a1[5] - a1[4]);
  v8 = a1[4];
  if (a1[5] != v8)
  {
    v9 = 0;
    do
    {
      LOBYTE(v7) = *(v8 + v9);
      v10 = MIL::Bf16::FromFloat(v6, v7);
      std::vector<short>::push_back[abi:ne200100](&__p, &v10);
      ++v9;
      v8 = a1[4];
    }

    while (v9 < a1[5] - v8);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v13, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_21810A234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<BOOL>::Cast<MIL::Bf16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v14 = 0;
  v13 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v13, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v12 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, a1[5] - a1[4]);
  v8 = a1[4];
  if (a1[5] != v8)
  {
    v9 = 0;
    do
    {
      LOBYTE(v7) = *(v8 + v9);
      v10 = MIL::Bf16::FromFloat(v6, v7);
      std::vector<short>::push_back[abi:ne200100](&__p, &v10);
      ++v9;
      v8 = a1[4];
    }

    while (v9 < a1[5] - v8);
  }

  MIL::ValueInference::Tensor<MIL::Bf16>::Tensor(a2, &v13, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_21810A33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  std::vector<unsigned char>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Fp16::GetFloat((v6 + v7)) != 0.0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_21810A454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v15 = 0;
  v14 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v14, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v13 = 0;
  std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Bf16::GetFloat((v6 + v7));
      v11 = MIL::Fp16::FromFloat(v10, Float);
      std::vector<short>::push_back[abi:ne200100](&__p, &v11);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v14, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v14.n128_u64[0])
  {
    v14.n128_u64[1] = v14.n128_u64[0];
    operator delete(v14.n128_u64[0]);
  }
}

void sub_21810A568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = 0;
  v10 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v10, v4, v5, (v5 - v4) >> 3);
  v6 = a1[4];
  v7 = a1[5];
  v9 = 0;
  __p = 0uLL;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::Fp16 const*>,std::__wrap_iter<MIL::Fp16 const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v10, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v10.n128_u64[0])
  {
    v10.n128_u64[1] = v10.n128_u64[0];
    operator delete(v10.n128_u64[0]);
  }
}

void sub_21810A62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<float>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 2);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Fp16::FromFloat(v6, *(v7 + 4 * v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < (a1[5] - v7) >> 2);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_21810A738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<int>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 2);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Fp16::FromFloat(v6, *(v7 + 4 * v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < (a1[5] - v7) >> 2);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_21810A844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<short>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Fp16::FromFloat(v6, *(v7 + 2 * v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < (a1[5] - v7) >> 1);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_21810A950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v14 = 0;
  v13 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v13, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v12 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v8 = a1[4];
  if (a1[5] != v8)
  {
    v9 = 0;
    do
    {
      LOWORD(v7) = *(v8 + 2 * v9);
      v10 = MIL::Fp16::FromFloat(v6, v7);
      std::vector<short>::push_back[abi:ne200100](&__p, &v10);
      ++v9;
      v8 = a1[4];
    }

    while (v9 < (a1[5] - v8) >> 1);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v13, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_21810AA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v14 = 0;
  v13 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v13, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v12 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, a1[5] - a1[4]);
  v8 = a1[4];
  if (a1[5] != v8)
  {
    v9 = 0;
    do
    {
      LOBYTE(v7) = *(v8 + v9);
      v10 = MIL::Fp16::FromFloat(v6, v7);
      std::vector<short>::push_back[abi:ne200100](&__p, &v10);
      ++v9;
      v8 = a1[4];
    }

    while (v9 < a1[5] - v8);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v13, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_21810AB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<signed char>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, a1[5] - a1[4]);
  v7 = a1[4];
  if (a1[5] != v7)
  {
    v8 = 0;
    do
    {
      v9 = MIL::Fp16::FromFloat(v6, *(v7 + v8));
      std::vector<short>::push_back[abi:ne200100](&__p, &v9);
      ++v8;
      v7 = a1[4];
    }

    while (v8 < a1[5] - v7);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v12, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v12.n128_u64[0])
  {
    v12.n128_u64[1] = v12.n128_u64[0];
    operator delete(v12.n128_u64[0]);
  }
}

void sub_21810AC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<BOOL>::Cast<MIL::Fp16>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v14 = 0;
  v13 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v13, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v12 = 0;
  v6 = std::vector<MIL::Fp16>::reserve(&__p, a1[5] - a1[4]);
  v8 = a1[4];
  if (a1[5] != v8)
  {
    v9 = 0;
    do
    {
      LOBYTE(v7) = *(v8 + v9);
      v10 = MIL::Fp16::FromFloat(v6, v7);
      std::vector<short>::push_back[abi:ne200100](&__p, &v10);
      ++v9;
      v8 = a1[4];
    }

    while (v9 < a1[5] - v8);
  }

  MIL::ValueInference::Tensor<MIL::Fp16>::Tensor(a2, &v13, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v13.n128_u64[0])
  {
    v13.n128_u64[1] = v13.n128_u64[0];
    operator delete(v13.n128_u64[0]);
  }
}

void sub_21810AD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<float>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  v11 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v11, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned char>::reserve(&__p, (a1[5] - a1[4]) >> 2);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 4 * v7) != 0.0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v8);
      ++v7;
      v6 = a1[4];
    }

    while (v7 < (a1[5] - v6) >> 2);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_21810AE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<int>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  v11 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v11, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned char>::reserve(&__p, (a1[5] - a1[4]) >> 2);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 4 * v7) != 0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v8);
      ++v7;
      v6 = a1[4];
    }

    while (v7 < (a1[5] - v6) >> 2);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_21810AF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<short>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  v11 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v11, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned char>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 2 * v7) != 0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v8);
      ++v7;
      v6 = a1[4];
    }

    while (v7 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_21810B098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  v11 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v11, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned char>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 2 * v7) != 0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v8);
      ++v7;
      v6 = a1[4];
    }

    while (v7 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_21810B1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<signed char>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  v11 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v11, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned char>::reserve(&__p, a1[5] - a1[4]);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + v7) != 0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v8);
      ++v7;
      v6 = a1[4];
    }

    while (v7 < a1[5] - v6);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_21810B2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  v11 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v11, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned char>::reserve(&__p, a1[5] - a1[4]);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + v7) != 0;
      std::vector<char>::push_back[abi:ne200100](&__p, &v8);
      ++v7;
      v6 = a1[4];
    }

    while (v7 < a1[5] - v6);
  }

  MIL::ValueInference::Tensor<BOOL>::Tensor(a2, &v11, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v11.n128_u64[0])
  {
    v11.n128_u64[1] = v11.n128_u64[0];
    operator delete(v11.n128_u64[0]);
  }
}

void sub_21810B3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<double>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<double>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::ValueInference::Tensor<unsigned int>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<unsigned int>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::ValueInference::Tensor<unsigned long long>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<unsigned long long>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::ValueInference::Tensor<long long>::~Tensor(void *a1)
{
  MIL::ValueInference::Tensor<long long>::~Tensor(a1);

  JUMPOUT(0x21CEAFEA0);
}

void *MIL::ValueInference::Tensor<double>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9CA8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void *MIL::ValueInference::Tensor<unsigned int>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9CC8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void *MIL::ValueInference::Tensor<unsigned long long>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9CE8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void *MIL::ValueInference::Tensor<long long>::~Tensor(void *a1)
{
  *a1 = &unk_2829E9D08;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::function<MIL::Bf16 ()(MIL::Bf16)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<MIL::Bf16 ()(MIL::Bf16)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<MIL::Bf16 ()(MIL::Bf16)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810B974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810B9EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BA64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BADC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BB50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BBC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BC3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BCB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BD24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BD98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BE0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BE84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BEF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BF6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810BFE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C054(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C0C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C13C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C1B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C228(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C29C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C310(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C3F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C470(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C4E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C558(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C5CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C640(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C6B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C72C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C7A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C814(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::Bf16>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::Bf16 const*>,std::__wrap_iter<MIL::Bf16 const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21810C8FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}