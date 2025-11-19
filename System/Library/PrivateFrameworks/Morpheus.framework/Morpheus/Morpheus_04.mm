void mlx::core::deserialize_primitive<mlx::core::Equal>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 1);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::ExpandDims>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A29A0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::FFT>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  v7 = *(a2 + 48);
  __p = 0;
  v9 = 0;
  v10 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, v4, v5, (v5 - v4) >> 3);
  mlx::core::serialize<std::vector<unsigned long long>>(a1, &__p);
  v11 = v7;
  (*(*a1 + 32))(a1, &v11, 1);
  v11 = HIBYTE(v7);
  (*(*a1 + 32))(a1, &v11, 1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_25A29A2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29A35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize_primitive<mlx::core::Flatten>(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(*(a2 + 20));
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

void mlx::core::serialize_primitive<mlx::core::Gather>(uint64_t a1, uint64_t a2)
{
  std::pair<std::vector<int>,std::vector<int>>::pair[abi:ne200100]<true,0>(v3, (a2 + 24), (a2 + 48));
  v5 = a1;
  mlx::core::serialize<std::pair<std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::pair<std::vector<int>,std::vector<int>>)::{lambda(std::pair<std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>>(&v5, v3, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A29A650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void sub_25A29A6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::serialize_primitive<mlx::core::GatherMM>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 21);
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 1);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 1);
}

void mlx::core::deserialize_primitive<mlx::core::Hadamard>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 4);
  operator new();
}

void mlx::core::deserialize_primitive<mlx::core::Log>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 4);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::Reshape>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A29B4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Reshape>(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a3;
  mlx::core::deserialize<std::vector<int>>(a1, &__p);
  std::allocate_shared[abi:ne200100]<mlx::core::Reshape,std::allocator<mlx::core::Reshape>,mlx::core::Stream &,std::vector<int>,0>();
}

void sub_25A29B530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::NumberOfElements>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v7 = *(a2 + 48);
  v8 = *(a2 + 52);
  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v4, v5, (v5 - v4) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  LOBYTE(v12) = v7;
  (*(*a1 + 32))(a1, &v12, 1);
  v12 = v8;
  (*(*a1 + 32))(a1, &v12, 4);
  LOBYTE(v12) = BYTE4(v8);
  (*(*a1 + 32))(a1, &v12, 1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_25A29B698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29B78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::Pad>(uint64_t a1, uint64_t *a2)
{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_S6_EEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_S6_EJEJEJRKS6_SA_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(v3, a2 + 3, a2 + 6, a2 + 9);
  v6 = a1;
  mlx::core::serialize<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>)::{lambda(std::tuple<std::vector<int>,std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>,std::vector<int>>(&v6, v3, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A29B8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>::~tuple(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::serialize_primitive<mlx::core::Partition>(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(*(a2 + 20));
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

uint64_t mlx::core::serialize_primitive<mlx::core::QuantizedMatmul>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = *(a2 + 28);
  v6 = v3;
  (*(*a1 + 32))(a1, &v6, 4);
  v7 = HIDWORD(v3);
  (*(*a1 + 32))(a1, &v7, 4);
  v8 = v4;
  return (*(*a1 + 32))(a1, &v8, 1);
}

uint64_t mlx::core::serialize_primitive<mlx::core::GatherQMM>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = *(a2 + 28);
  v5 = *(a2 + 29);
  v6 = *(a2 + 30);
  v8 = v3;
  (*(*a1 + 32))(a1, &v8, 4);
  v9 = HIDWORD(v3);
  (*(*a1 + 32))(a1, &v9, 4);
  v10 = v4;
  (*(*a1 + 32))(a1, &v10, 1);
  v11 = v5;
  (*(*a1 + 32))(a1, &v11, 1);
  v12 = v6;
  return (*(*a1 + 32))(a1, &v12, 1);
}

void mlx::core::serialize_primitive<mlx::core::RandomBits>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v7 = *(a2 + 48);
  mlx::core::serialize<std::pair<std::vector<int>,int>>(a1, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A29BEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29BF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::Reduce>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v5 = 0;
  v6 = 0;
  v4 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  LODWORD(__p) = v3;
  (*(*a1 + 32))(a1, &__p, 4);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v4, v5, (v5 - v4) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_25A29C16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29C214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize_primitive<mlx::core::Scan>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = *(a2 + 28);
  v5 = *(a2 + 29);
  v7 = v3;
  (*(*a1 + 32))(a1, &v7, 4);
  v8 = HIDWORD(v3);
  (*(*a1 + 32))(a1, &v8, 4);
  v9 = v4;
  (*(*a1 + 32))(a1, &v9, 1);
  v10 = v5;
  return (*(*a1 + 32))(a1, &v10, 1);
}

void mlx::core::serialize_primitive<mlx::core::Scatter>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v5 = 0;
  v6 = 0;
  v4 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  LODWORD(__p) = v3;
  (*(*a1 + 32))(a1, &__p, 4);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v4, v5, (v5 - v4) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_25A29C55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29C604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::Slice>(uint64_t a1, uint64_t *a2)
{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_S6_EEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_S6_EJEJEJRKS6_SA_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(v3, a2 + 3, a2 + 6, a2 + 9);
  v6 = a1;
  mlx::core::serialize<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>)::{lambda(std::tuple<std::vector<int>,std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>,std::vector<int>>(&v6, v3, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A29CA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::serialize_primitive<mlx::core::SliceUpdate>(uint64_t a1, uint64_t *a2)
{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_S6_EEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_S6_EJEJEJRKS6_SA_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(v3, a2 + 3, a2 + 6, a2 + 9);
  v6 = a1;
  mlx::core::serialize<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>)::{lambda(std::tuple<std::vector<int>,std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>,std::vector<int>>(&v6, v3, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A29CB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::deserialize_primitive<mlx::core::Softmax>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 1);
  operator new();
}

void mlx::core::deserialize_primitive<mlx::core::Sort>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 4);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::Split>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v7 = *(a2 + 48);
  mlx::core::serialize<std::pair<std::vector<int>,int>>(a1, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A29CE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29CED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::Squeeze>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A29CFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29D0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Sqrt>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 1);
  operator new();
}

uint64_t mlx::core::serialize_primitive<mlx::core::View>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v5 = v3;
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = BYTE4(v3);
  return (*(*a1 + 32))(a1, &v6, 1);
}

void mlx::core::serialize_primitive<mlx::core::Transpose>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A29D5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Transpose>(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a3;
  mlx::core::deserialize<std::vector<int>>(a1, &__p);
  std::allocate_shared[abi:ne200100]<mlx::core::Transpose,std::allocator<mlx::core::Transpose>,mlx::core::Stream &,std::vector<int>,0>();
}

void sub_25A29D654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::Unflatten>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v5 = 0;
  v6 = 0;
  v4 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  LODWORD(__p) = v3;
  (*(*a1 + 32))(a1, &__p, 4);
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v4, v5, (v5 - v4) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_25A29D744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29D82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::SVD>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 1);
  operator new();
}

uint64_t mlx::core::serialize_primitive<mlx::core::Inverse>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 21);
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 1);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 1);
}

void mlx::core::deserialize_primitive<mlx::core::Cholesky>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 1);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::Eigh>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
  }

  v5 = *(a2 + 48);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = __p;
  }

  mlx::core::serialize<std::string>(a1, &v6);
  v7 = v5;
  (*(*a1 + 32))(a1, &v7, 1);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25A29DD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A29DE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize_primitive<mlx::core::fast::AffineQuantize>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 92);
  v4 = *(a2 + 96);
  v6 = *(a2 + 88);
  (*(*a1 + 32))(a1, &v6, 4);
  v7 = v3;
  (*(*a1 + 32))(a1, &v7, 4);
  v8 = v4;
  return (*(*a1 + 32))(a1, &v8, 1);
}

void mlx::core::deserialize_primitive<mlx::core::fast::RMSNorm>(uint64_t a1)
{
  LODWORD(v2) = 0;
  (*(*a1 + 32))(a1, &v2, 4);
  v1 = v2;
  v2 = 0;
  v3 = v1;
  std::allocate_shared[abi:ne200100]<mlx::core::fast::RMSNorm,std::allocator<mlx::core::fast::RMSNorm>,mlx::core::Stream const&,decltype(nullptr),float,0>();
}

void mlx::core::deserialize_primitive<mlx::core::fast::RMSNormVJP>(uint64_t a1)
{
  LODWORD(v2) = 0;
  (*(*a1 + 32))(a1, &v2, 4);
  v1 = v2;
  v2 = 0;
  v3 = v1;
  std::allocate_shared[abi:ne200100]<mlx::core::fast::RMSNormVJP,std::allocator<mlx::core::fast::RMSNormVJP>,mlx::core::Stream const&,decltype(nullptr),float,0>();
}

void mlx::core::deserialize_primitive<mlx::core::fast::LayerNorm>(uint64_t a1)
{
  LODWORD(v2) = 0;
  (*(*a1 + 32))(a1, &v2, 4);
  v1 = v2;
  v2 = 0;
  v3 = v1;
  std::allocate_shared[abi:ne200100]<mlx::core::fast::LayerNorm,std::allocator<mlx::core::fast::LayerNorm>,mlx::core::Stream const&,decltype(nullptr),float,0>();
}

void mlx::core::deserialize_primitive<mlx::core::fast::LayerNormVJP>(uint64_t a1)
{
  LODWORD(v2) = 0;
  (*(*a1 + 32))(a1, &v2, 4);
  v1 = v2;
  v2 = 0;
  v3 = v1;
  std::allocate_shared[abi:ne200100]<mlx::core::fast::LayerNormVJP,std::allocator<mlx::core::fast::LayerNormVJP>,mlx::core::Stream const&,decltype(nullptr),float,0>();
}

uint64_t mlx::core::serialize_primitive<mlx::core::fast::RoPE>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 92);
  v4 = *(a2 + 96);
  v5 = *(a2 + 100);
  v6 = *(a2 + 104);
  v8 = *(a2 + 88);
  (*(*a1 + 32))(a1, &v8, 4);
  v9 = v3;
  (*(*a1 + 32))(a1, &v9, 1);
  v10 = v4;
  (*(*a1 + 32))(a1, &v10, 4);
  v11 = v5;
  (*(*a1 + 32))(a1, &v11, 4);
  v12 = v6;
  return (*(*a1 + 32))(a1, &v12, 1);
}

uint64_t mlx::core::serialize_primitive<mlx::core::fast::ScaledDotProductAttention>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 92);
  v5 = *(a2 + 88);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 1);
}

uint64_t std::pair<std::string const,mlx::core::PrimitiveSerializer>::~pair(uint64_t a1)
{
  v3 = (a1 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void mlx::core::PrimitiveSerializer::~PrimitiveSerializer(mlx::core::PrimitiveSerializer *this)
{
  v2 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](this + 32);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](this);
}

uint64_t std::__function::__func<void (*)(mlx::core::io::FileWriter &,mlx::core::Primitive const&),std::allocator<void (*)(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>,void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6158;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(mlx::core::io::FileWriter &,mlx::core::Primitive const&),std::allocator<void (*)(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>,void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Abs> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Abs> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6208;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Abs> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Abs> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Abs> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Abs> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

std::string *std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](&this[1], a3);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](&this[2].__r_.__value_.__l.__size_, a3 + 32);
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[3].__r_.__value_.__r.__words[2], *(a3 + 64), *(a3 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 72) - *(a3 + 64)) >> 3));
  return this;
}

void sub_25A29EA44(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1 + 56);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Add> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Add> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE62B8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Add> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Add> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Add> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Add> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float mlx::core::deserialize_tuple<std::pair<float,float>,0ul,1ul>(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 32))(a1, &v4, 4);
  v2 = v4;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  return v2;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::AddMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AddMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6358;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::AddMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AddMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::AddMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AddMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::deserialize_tuple<std::tuple<double,double,double>,0ul,1ul,2ul>(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 32))(a1, &v4, 8);
  v2 = v4;
  v4 = 0.0;
  (*(*a1 + 32))(a1, &v4, 8);
  v4 = 0.0;
  (*(*a1 + 32))(a1, &v4, 8);
  return v2;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Arange> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Arange> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE63F8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Arange> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Arange> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Arange> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Arange> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcCos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcCos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6498;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArcCos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcCos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcCos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcCos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcCosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcCosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6538;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArcCosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcCosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcCosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcCosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcSin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcSin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE65D8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArcSin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcSin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcSin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcSin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcSinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcSinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6678;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArcSinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcSinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcSinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcSinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcTan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6718;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArcTan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcTan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcTan2> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTan2> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE67B8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArcTan2> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTan2> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcTan2> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTan2> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcTanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6858;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArcTanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArcTanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArcTanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t mlx::core::deserialize_tuple<std::pair<int,int>,0ul,1ul>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 4);
  v2 = v4;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  return v2 | (v5 << 32);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArgPartition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgPartition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE68F8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArgPartition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgPartition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArgPartition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgPartition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArgReduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgReduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6998;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArgReduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgReduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArgReduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgReduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArgSort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgSort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6A38;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ArgSort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgSort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ArgSort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ArgSort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::AsType> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AsType> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6AD8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::AsType> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AsType> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::AsType> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AsType> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::serialize<std::tuple<std::vector<int>,std::vector<long long>,unsigned long>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<long long>,unsigned long>)::{lambda(std::tuple<std::vector<int>,std::vector<long long>,unsigned long> &)#1}::operator()<std::vector<int>,std::vector<long long>,unsigned long>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::serialize<std::vector<int>>(v7, &v13);
  v8 = *a1;
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, *a3, a3[1], (a3[1] - *a3) >> 3);
  mlx::core::serialize<std::vector<unsigned long long>>(v8, &__p);
  v9 = *a1;
  v16 = *a4;
  (*(*v9 + 32))(v9, &v16, 8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_25A29FF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEENS3_IxNS4_IxEEEEmEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S8_mEJEJEJRKS6_RKS8_RKmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = *a4;
  return a1;
}

void sub_25A2A0030(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double mlx::core::deserialize_tuple<std::tuple<std::vector<int>,std::vector<long long>,unsigned long>,0ul,1ul,2ul>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v8);
  mlx::core::deserialize<std::vector<long long>>(a1, &v6);
  v9 = 0;
  (*(*a1 + 32))(a1, &v9, 8);
  v4 = v9;
  *a2 = v8;
  result = *&v6;
  *(a2 + 24) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v4;
  return result;
}

void sub_25A2A00E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void mlx::core::deserialize<std::vector<long long>>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v15 = 0;
  (*(*a1 + 32))(a1, &v15, 8);
  v4 = v15;
  std::vector<long long>::reserve(a2, v15);
  for (; v4; --v4)
  {
    v15 = 0;
    (*(*a1 + 32))(a1, &v15, 8);
    v6 = a2[1];
    v5 = a2[2];
    if (v6 >= v5)
    {
      v8 = *a2;
      v9 = v6 - *a2;
      v10 = v9 >> 3;
      v11 = (v9 >> 3) + 1;
      if (v11 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = v5 - v8;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a2, v13);
      }

      *(8 * v10) = v15;
      v7 = 8 * v10 + 8;
      memcpy(0, v8, v9);
      v14 = *a2;
      *a2 = 0;
      a2[1] = v7;
      a2[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v6 = v15;
      v7 = (v6 + 8);
    }

    a2[1] = v7;
  }
}

void sub_25A2A02A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::AsStrided> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AsStrided> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6B78;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::AsStrided> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AsStrided> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::AsStrided> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::AsStrided> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::BitwiseBinary> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BitwiseBinary> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6C18;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::BitwiseBinary> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BitwiseBinary> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::BitwiseBinary> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BitwiseBinary> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A2A06C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
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

uint64_t std::__function::__func<std::shared_ptr<mlx::core::BlockMaskedMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BlockMaskedMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6CB8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::BlockMaskedMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BlockMaskedMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::BlockMaskedMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BlockMaskedMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_emplace<mlx::core::Broadcast>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream &,std::vector<int>,std::allocator<mlx::core::Broadcast>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Broadcast> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Broadcast> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6D58;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Broadcast> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Broadcast> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Broadcast> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Broadcast> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::BroadcastAxes> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BroadcastAxes> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6DF8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::BroadcastAxes> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BroadcastAxes> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::BroadcastAxes> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::BroadcastAxes> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Ceil> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Ceil> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6E98;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Ceil> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Ceil> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Ceil> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Ceil> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Concatenate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Concatenate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6F38;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Concatenate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Concatenate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Concatenate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Concatenate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Conjugate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Conjugate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE6FD8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Conjugate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Conjugate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Conjugate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Conjugate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void mlx::core::serialize<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>)::{lambda(std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL> &)#1}::operator()<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int *a6, _BYTE *a7)
{
  v13 = *a1;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::serialize<std::vector<int>>(v13, &v28);
  v14 = *a1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v25, *a3, a3[1], (a3[1] - *a3) >> 2);
  mlx::core::serialize<std::vector<int>>(v14, &v25);
  v15 = *a1;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, *a4, a4[1], (a4[1] - *a4) >> 2);
  mlx::core::serialize<std::vector<int>>(v15, &v22);
  v16 = *a1;
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a5, a5[1], (a5[1] - *a5) >> 2);
  mlx::core::serialize<std::vector<int>>(v16, &__p);
  v17 = *a1;
  v31 = *a6;
  (*(*v17 + 32))(v17, &v31, 4);
  v18 = *a1;
  LOBYTE(v31) = *a7;
  (*(*v18 + 32))(v18, &v31, 1);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

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

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_25A2A1208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_S6_S6_ibEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJS6_S6_S6_S6_ibEJEJEJRKS6_SA_SA_SA_RKiRKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, _DWORD *a6, _BYTE *a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 48, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 96) = *a6;
  *(a1 + 100) = *a7;
  return a1;
}

void sub_25A2A1344(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

double mlx::core::deserialize_tuple<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>,0ul,1ul,2ul,3ul,4ul,5ul>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v10);
  mlx::core::deserialize<std::vector<int>>(a1, &v9);
  mlx::core::deserialize<std::vector<int>>(a1, &v8);
  mlx::core::deserialize<std::vector<int>>(a1, &v7);
  v11 = 0;
  (*(*a1 + 32))(a1, &v11, 4);
  v4 = v11;
  LOBYTE(v11) = 0;
  (*(*a1 + 32))(a1, &v11, 1);
  v5 = v11;
  *a2 = v10;
  *(a2 + 24) = v9;
  *(a2 + 48) = v8;
  result = *&v7.__begin_;
  *(a2 + 72) = v7;
  *(a2 + 96) = v4;
  *(a2 + 100) = v5;
  return result;
}

void sub_25A2A14A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 64);
  if (v20)
  {
    *(v18 - 56) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<mlx::core::Convolution>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL,std::allocator<mlx::core::Convolution>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int *a7, char *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE5138;
  mlx::core::Convolution::Convolution((a1 + 3), *a2, *(a2 + 8), a3, a4, a5, a6, *a7, *a8);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Convolution> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Convolution> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7078;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Convolution> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Convolution> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Convolution> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Convolution> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Copy> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Copy> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7118;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Copy> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Copy> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Copy> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Copy> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Cos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE71B8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Cos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Cos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cos> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Cosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7258;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Cosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Cosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cosh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Depends> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Depends> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE72F8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Depends> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Depends> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Depends> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Depends> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Divide> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Divide> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7398;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Divide> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Divide> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Divide> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Divide> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::DivMod> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DivMod> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7438;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::DivMod> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DivMod> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::DivMod> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DivMod> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::serialize<std::pair<std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::pair<std::vector<int>,std::vector<int>>)::{lambda(std::pair<std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v10, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::serialize<std::vector<int>>(v5, &v10);
  v6 = *a1;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  mlx::core::serialize<std::vector<int>>(v6, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_25A2A1F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void *std::pair<std::vector<int>,std::vector<int>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_25A2A2008(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double mlx::core::deserialize_tuple<std::pair<std::vector<int>,std::vector<int>>,0ul,1ul>@<D0>(uint64_t a1@<X0>, std::vector<int> *a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v6);
  mlx::core::deserialize<std::vector<int>>(a1, &v5);
  *a2 = v6;
  result = *&v5.__begin_;
  a2[1] = v5;
  return result;
}

void sub_25A2A2084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::DynamicSlice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DynamicSlice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE74D8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::DynamicSlice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DynamicSlice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::DynamicSlice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DynamicSlice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::DynamicSliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DynamicSliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7578;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::DynamicSliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DynamicSliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::DynamicSliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::DynamicSliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Equal> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Equal> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7618;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Equal> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Equal> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Equal> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Equal> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Erf> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Erf> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE76B8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Erf> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Erf> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Erf> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Erf> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ErfInv> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ErfInv> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7758;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ErfInv> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ErfInv> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ErfInv> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ErfInv> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Exp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Exp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE77F8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Exp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Exp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Exp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Exp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Expm1> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Expm1> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7898;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Expm1> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Expm1> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Expm1> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Expm1> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ExpandDims> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ExpandDims> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7938;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::ExpandDims> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ExpandDims> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::ExpandDims> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::ExpandDims> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A2A2B24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double mlx::core::deserialize_tuple<std::tuple<std::vector<unsigned long>,BOOL,BOOL>,0ul,1ul,2ul>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlx::core::deserialize<std::vector<long long>>(a1, &v7);
  v9 = 0;
  (*(*a1 + 32))(a1, &v9, 1);
  v4 = v9;
  v9 = 0;
  (*(*a1 + 32))(a1, &v9, 1);
  v5 = v9;
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
  return result;
}

void sub_25A2A2C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<mlx::core::FFT>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<unsigned long>,BOOL,BOOL,std::allocator<mlx::core::FFT>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4, char *a5)
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

void std::__shared_ptr_emplace<mlx::core::FFT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE79D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::FFT> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::FFT> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7A28;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::FFT> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::FFT> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::FFT> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::FFT> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Flatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Flatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7AC8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Flatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Flatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Flatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Flatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Floor> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Floor> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7B68;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Floor> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Floor> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Floor> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Floor> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Full> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Full> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7C08;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Full> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Full> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Full> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Full> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__shared_ptr_emplace<mlx::core::Gather>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int>,std::vector<int>,std::allocator<mlx::core::Gather>,0>(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE4EB8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a3 + 2);
  v8 = *a3;
  *(a3 + 2) = 0;
  *a3 = 0u;
  v9 = *(a4 + 2);
  v10 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0u;
  *(a1 + 40) = v6;
  *(a1 + 24) = &unk_286BF6028;
  *(a1 + 32) = v5;
  *(a1 + 48) = v8;
  *(a1 + 64) = v7;
  *(a1 + 72) = v10;
  *(a1 + 88) = v9;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Gather> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Gather> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7CA8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Gather> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Gather> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Gather> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Gather> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::deserialize_tuple<std::pair<BOOL,BOOL>,0ul,1ul>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 1);
  v2 = v4;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 1);
  return v2 | (v5 << 8);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::GatherMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GatherMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7D48;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::GatherMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GatherMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::GatherMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GatherMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Greater> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Greater> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7DE8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Greater> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Greater> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Greater> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Greater> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::GreaterEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GreaterEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7E88;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::GreaterEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GreaterEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::GreaterEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GreaterEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Hadamard> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Hadamard> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7F28;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Hadamard> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Hadamard> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Hadamard> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Hadamard> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Imag> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Imag> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE7FC8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Imag> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Imag> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Imag> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Imag> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Less> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Less> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8068;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Less> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Less> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Less> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Less> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LessEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LessEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8108;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::LessEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LessEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LessEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LessEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Log> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Log> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE81A8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Log> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Log> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Log> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Log> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Log1p> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Log1p> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8248;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Log1p> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Log1p> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Log1p> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Log1p> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogicalNot> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalNot> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE82E8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::LogicalNot> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalNot> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogicalNot> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalNot> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogicalAnd> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalAnd> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8388;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::LogicalAnd> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalAnd> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogicalAnd> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalAnd> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogicalOr> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalOr> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8428;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::LogicalOr> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalOr> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogicalOr> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogicalOr> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogAddExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogAddExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE84C8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::LogAddExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogAddExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogAddExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogAddExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogSumExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogSumExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8568;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::LogSumExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogSumExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::LogSumExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::LogSumExp> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Matmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Matmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8608;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Matmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Matmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Matmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Matmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Maximum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Maximum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE86A8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Maximum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Maximum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Maximum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Maximum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Minimum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Minimum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8748;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Minimum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Minimum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Minimum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Minimum> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Multiply> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Multiply> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE87E8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Multiply> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Multiply> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Multiply> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Multiply> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Negative> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Negative> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8888;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Negative> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Negative> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Negative> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Negative> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::NotEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::NotEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8928;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::NotEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::NotEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::NotEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::NotEqual> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_emplace<mlx::core::Reshape>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream &,std::vector<int>,std::allocator<mlx::core::Reshape>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3888;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_286BF7FC8;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Reshape> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Reshape> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE89C8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Reshape> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Reshape> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Reshape> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Reshape> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::deserialize_tuple<std::tuple<std::vector<int>,BOOL,mlx::core::Dtype>,0ul,1ul,2ul>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v7);
  v8 = 0;
  (*(*a1 + 32))(a1, &v8, 1);
  v4 = v8;
  v5 = mlx::core::deserialize<mlx::core::Dtype>(a1);
  result = *&v7.__begin_;
  *a2 = v7;
  *(a2 + 24) = v4;
  *(a2 + 28) = v5 & 0xFFFFFFFFFFLL;
  return result;
}

void sub_25A2A5098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::NumberOfElements> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::NumberOfElements> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8A68;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::NumberOfElements> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::NumberOfElements> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::NumberOfElements> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::NumberOfElements> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void mlx::core::serialize<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>)::{lambda(std::tuple<std::vector<int>,std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>,std::vector<int>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v16, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::serialize<std::vector<int>>(v7, &v16);
  v8 = *a1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, *a3, a3[1], (a3[1] - *a3) >> 2);
  mlx::core::serialize<std::vector<int>>(v8, &v13);
  v9 = *a1;
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
  mlx::core::serialize<std::vector<int>>(v9, &__p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A2A5330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_S6_EEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_S6_EJEJEJRKS6_SA_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_25A2A5408(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

double mlx::core::deserialize_tuple<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>>,0ul,1ul,2ul>@<D0>(uint64_t a1@<X0>, std::vector<int> *a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v7);
  mlx::core::deserialize<std::vector<int>>(a1, &v6);
  mlx::core::deserialize<std::vector<int>>(a1, &v5);
  *a2 = v7;
  a2[1] = v6;
  result = *&v5.__begin_;
  a2[2] = v5;
  return result;
}

void sub_25A2A54B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *(v14 - 48);
  if (v16)
  {
    *(v14 - 40) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<mlx::core::Pad>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int>,std::vector<int>,std::vector<int>,std::allocator<mlx::core::Pad>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3C48;
  mlx::core::Pad::Pad((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Pad> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Pad> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8B08;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Pad> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Pad> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Pad> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Pad> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Partition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Partition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8BA8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Partition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Partition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Partition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Partition> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Power> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Power> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8C48;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Power> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Power> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Power> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Power> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::deserialize_tuple<std::tuple<int,int,BOOL>,0ul,1ul,2ul>(uint64_t a1)
{
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  v2 = v5;
  v6 = 0;
  (*(*a1 + 32))(a1, &v6, 4);
  v3 = v6;
  v7 = 0;
  (*(*a1 + 32))(a1, &v7, 1);
  return v2 | (v3 << 32);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::QuantizedMatmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::QuantizedMatmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8CE8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::QuantizedMatmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::QuantizedMatmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::QuantizedMatmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::QuantizedMatmul> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::deserialize_tuple<std::tuple<int,int,BOOL,BOOL,BOOL>,0ul,1ul,2ul,3ul,4ul>(uint64_t a1)
{
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  v2 = v5;
  v6 = 0;
  (*(*a1 + 32))(a1, &v6, 4);
  v3 = v6;
  v7 = 0;
  (*(*a1 + 32))(a1, &v7, 1);
  v8 = 0;
  (*(*a1 + 32))(a1, &v8, 1);
  v9 = 0;
  (*(*a1 + 32))(a1, &v9, 1);
  return v2 | (v3 << 32);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::GatherQMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GatherQMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8D88;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::GatherQMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GatherQMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::GatherQMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::GatherQMM> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::serialize<std::pair<std::vector<int>,int>>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  v7 = *(a2 + 24);
  (*(*a1 + 32))(a1, &v7, 4);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A2A5EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double mlx::core::deserialize_tuple<std::pair<std::vector<int>,int>,0ul,1ul>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v6);
  v7 = 0;
  (*(*a1 + 32))(a1, &v7, 4);
  v4 = v7;
  result = *&v6.__begin_;
  *a2 = v6;
  *(a2 + 24) = v4;
  return result;
}

void sub_25A2A5F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<mlx::core::RandomBits>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int>,int,std::allocator<mlx::core::RandomBits>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
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

void std::__shared_ptr_emplace<mlx::core::RandomBits>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE8E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::RandomBits> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::RandomBits> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8E78;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::RandomBits> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::RandomBits> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::RandomBits> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::RandomBits> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Real> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Real> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8F18;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Real> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Real> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Real> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Real> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Remainder> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Remainder> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE8FB8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Remainder> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Remainder> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Remainder> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Remainder> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::deserialize_tuple<std::pair<mlx::core::Reduce::ReduceType,std::vector<int>>,0ul,1ul>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v6.__begin_) = 0;
  (*(*a1 + 32))(a1, &v6, 4);
  begin = v6.__begin_;
  mlx::core::deserialize<std::vector<int>>(a1, &v6);
  *a2 = begin;
  result = *&v6.__begin_;
  *(a2 + 8) = v6;
  return result;
}

uint64_t std::__shared_ptr_emplace<mlx::core::Reduce>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,mlx::core::Reduce::ReduceType,std::vector<int>,std::allocator<mlx::core::Reduce>,0>(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3FB8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 4) = v7;
  *(v8 - 24) = &unk_286C04000;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Reduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Reduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9058;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Reduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Reduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Reduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Reduce> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Round> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Round> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE90F8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Round> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Round> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Round> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Round> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::deserialize_tuple<std::tuple<mlx::core::Scan::ReduceType,int,BOOL,BOOL>,0ul,1ul,2ul,3ul>(uint64_t a1)
{
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  v2 = v5;
  v6 = 0;
  (*(*a1 + 32))(a1, &v6, 4);
  v3 = v6;
  v7 = 0;
  (*(*a1 + 32))(a1, &v7, 1);
  v8 = 0;
  (*(*a1 + 32))(a1, &v8, 1);
  return v2 | (v3 << 32);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Scan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Scan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9198;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Scan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Scan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Scan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Scan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_emplace<mlx::core::Scatter>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,mlx::core::Scatter::ReduceType,std::vector<int>,std::allocator<mlx::core::Scatter>,0>(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
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

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Scatter> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Scatter> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9238;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Scatter> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Scatter> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Scatter> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Scatter> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Select> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Select> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE92D8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Select> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Select> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Select> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Select> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sigmoid> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sigmoid> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9378;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Sigmoid> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sigmoid> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sigmoid> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sigmoid> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sign> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sign> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9418;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Sign> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sign> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sign> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sign> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE94B8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Sin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sin> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9558;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Sinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sinh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::Slice>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int>,std::vector<int>,std::vector<int>,std::allocator<mlx::core::Slice>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3A68;
  mlx::core::Slice::Slice((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Slice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Slice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE95F8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Slice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Slice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Slice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Slice> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::SliceUpdate>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int>,std::vector<int>,std::vector<int>,std::allocator<mlx::core::SliceUpdate>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3B08;
  mlx::core::SliceUpdate::SliceUpdate((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::SliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::SliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9698;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::SliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::SliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::SliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::SliceUpdate> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Softmax> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Softmax> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9738;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Softmax> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Softmax> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Softmax> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Softmax> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE97D8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Sort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sort> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_emplace<mlx::core::Split>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<int>,int,std::allocator<mlx::core::Split>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3BA8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a4;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 24) = &unk_286BF8270;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = v7;
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Split> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Split> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9878;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Split> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Split> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Split> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Split> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Square> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Square> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9918;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Square> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Square> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Square> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Square> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Squeeze> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Squeeze> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE99B8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Squeeze> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Squeeze> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Squeeze> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Squeeze> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sqrt> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sqrt> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9A58;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Sqrt> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sqrt> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Sqrt> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Sqrt> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::StopGradient> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::StopGradient> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9AF8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::StopGradient> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::StopGradient> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::StopGradient> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::StopGradient> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Subtract> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Subtract> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9B98;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Subtract> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Subtract> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Subtract> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Subtract> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Tan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Tan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9C38;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Tan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Tan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Tan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Tan> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Tanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Tanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9CD8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Tanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Tanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Tanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Tanh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::View> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::View> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9D78;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::View> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::View> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::View> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::View> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_emplace<mlx::core::Transpose>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream &,std::vector<int>,std::allocator<mlx::core::Transpose>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3C98;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_286BF8508;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Transpose> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Transpose> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9E18;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Transpose> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Transpose> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Transpose> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Transpose> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Unflatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Unflatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9EB8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Unflatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Unflatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Unflatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Unflatten> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::QRF> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::QRF> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9F58;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::QRF> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::QRF> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::QRF> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::QRF> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::SVD> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::SVD> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE9FF8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::SVD> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::SVD> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::SVD> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::SVD> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Inverse> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Inverse> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA098;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Inverse> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Inverse> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Inverse> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Inverse> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Cholesky> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cholesky> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA138;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Cholesky> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cholesky> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Cholesky> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Cholesky> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::deserialize_tuple<std::pair<std::string,BOOL>,0ul,1ul>@<D0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  mlx::core::deserialize<std::string>(a1, &v6);
  v7 = 0;
  (*(*a1 + 32))(a1, &v7, 1);
  v4 = v7;
  result = *&v6.__r_.__value_.__l.__data_;
  *a2 = v6;
  a2[1].__r_.__value_.__s.__data_[0] = v4;
  return result;
}

void sub_25A2A8F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Eigh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Eigh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA1D8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::Eigh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Eigh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::Eigh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::Eigh> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::deserialize_tuple<std::tuple<decltype(nullptr),int,int,BOOL>,0ul,1ul,2ul,3ul>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  (*(*a1 + 32))(a1, &v8, 4);
  v4 = v8;
  v9 = 0;
  (*(*a1 + 32))(a1, &v9, 4);
  v5 = v9;
  v10 = 0;
  result = (*(*a1 + 32))(a1, &v10, 1);
  v7 = v10;
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v7;
  return result;
}

void *std::__shared_ptr_emplace<mlx::core::fast::AffineQuantize>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,decltype(nullptr),int,int,BOOL,std::allocator<mlx::core::fast::AffineQuantize>,0>(void *a1, uint64_t a2, uint64_t a3, int *a4, int *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEA278;
  std::construct_at[abi:ne200100]<mlx::core::fast::AffineQuantize,mlx::core::Stream const&,decltype(nullptr),int,int,BOOL,mlx::core::fast::AffineQuantize*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::AffineQuantize>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::AffineQuantize,mlx::core::Stream const&,decltype(nullptr),int,int,BOOL,mlx::core::fast::AffineQuantize*>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5, char *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(a2 + 8);
  v12 = 0;
  mlx::core::fast::AffineQuantize::AffineQuantize(a1, v7, v8, v11, *a4, *a5, *a6);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v11);
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2A938C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::AffineQuantize::AffineQuantize(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, char a7)
{
  v16 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v15, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_286BF21A8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](a1 + 24, v15);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v15);
  *a1 = &unk_286BF6BB8;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  *(a1 + 92) = a6;
  *(a1 + 96) = a7;
  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2A9484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::AffineQuantize> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::AffineQuantize> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA2C8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::fast::AffineQuantize> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::AffineQuantize> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::AffineQuantize> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::AffineQuantize> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::fast::RMSNorm>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,decltype(nullptr),float,std::allocator<mlx::core::fast::RMSNorm>,0>(void *a1, uint64_t a2, uint64_t a3, float *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEA368;
  std::construct_at[abi:ne200100]<mlx::core::fast::RMSNorm,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::RMSNorm*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::RMSNorm>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::RMSNorm,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::RMSNorm*>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = 0;
  mlx::core::fast::RMSNorm::RMSNorm(a1, v5, v6, v9, *a4);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2A98E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::RMSNorm::RMSNorm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v12 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v11, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_286BF21A8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](a1 + 24, v11);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v11);
  *a1 = &unk_286C09EE0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2A99D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::RMSNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RMSNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA3B8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::fast::RMSNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RMSNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::RMSNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RMSNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::fast::RMSNormVJP>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,decltype(nullptr),float,std::allocator<mlx::core::fast::RMSNormVJP>,0>(void *a1, uint64_t a2, uint64_t a3, float *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEA458;
  std::construct_at[abi:ne200100]<mlx::core::fast::RMSNormVJP,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::RMSNormVJP*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::RMSNormVJP>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::RMSNormVJP,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::RMSNormVJP*>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = 0;
  mlx::core::fast::RMSNormVJP::RMSNormVJP(a1, v5, v6, v9, *a4);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2A9D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::RMSNormVJP::RMSNormVJP(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v12 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v11, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_286BF21A8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](a1 + 24, v11);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v11);
  *a1 = &unk_286C09F58;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2A9E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::RMSNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RMSNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA4A8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::fast::RMSNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RMSNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::RMSNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RMSNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::fast::LayerNorm>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,decltype(nullptr),float,std::allocator<mlx::core::fast::LayerNorm>,0>(void *a1, uint64_t a2, uint64_t a3, float *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEA548;
  std::construct_at[abi:ne200100]<mlx::core::fast::LayerNorm,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::LayerNorm*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::LayerNorm>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::LayerNorm,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::LayerNorm*>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = 0;
  mlx::core::fast::LayerNorm::LayerNorm(a1, v5, v6, v9, *a4);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AA14C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::LayerNorm::LayerNorm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v12 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v11, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_286BF21A8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](a1 + 24, v11);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v11);
  *a1 = &unk_286C09FD0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AA238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::LayerNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::LayerNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA598;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::fast::LayerNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::LayerNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::LayerNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::LayerNorm> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::fast::LayerNormVJP>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,decltype(nullptr),float,std::allocator<mlx::core::fast::LayerNormVJP>,0>(void *a1, uint64_t a2, uint64_t a3, float *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEA638;
  std::construct_at[abi:ne200100]<mlx::core::fast::LayerNormVJP,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::LayerNormVJP*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::LayerNormVJP>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::LayerNormVJP,mlx::core::Stream const&,decltype(nullptr),float,mlx::core::fast::LayerNormVJP*>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = 0;
  mlx::core::fast::LayerNormVJP::LayerNormVJP(a1, v5, v6, v9, *a4);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AA580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::LayerNormVJP::LayerNormVJP(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v12 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v11, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_286BF21A8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](a1 + 24, v11);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v11);
  *a1 = &unk_286C0A048;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AA66C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::LayerNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::LayerNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA688;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::fast::LayerNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::LayerNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::LayerNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::LayerNormVJP> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::deserialize_tuple<std::tuple<decltype(nullptr),int,BOOL,float,float,BOOL>,0ul,1ul,2ul,3ul,4ul,5ul>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  (*(*a1 + 32))(a1, &v10, 4);
  v4 = v10;
  v11 = 0;
  (*(*a1 + 32))(a1, &v11, 1);
  v5 = v11;
  v12 = 0;
  (*(*a1 + 32))(a1, &v12, 4);
  v6 = v12;
  v13 = 0;
  (*(*a1 + 32))(a1, &v13, 4);
  v7 = v13;
  v14 = 0;
  result = (*(*a1 + 32))(a1, &v14, 1);
  v9 = v14;
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v9;
  return result;
}

void *std::__shared_ptr_emplace<mlx::core::fast::RoPE>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,decltype(nullptr),int,BOOL,float,float,BOOL,std::allocator<mlx::core::fast::RoPE>,0>(void *a1, uint64_t a2, uint64_t a3, int *a4, char *a5, float *a6, float *a7, char *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEA728;
  std::construct_at[abi:ne200100]<mlx::core::fast::RoPE,mlx::core::Stream const&,decltype(nullptr),int,BOOL,float,float,BOOL,mlx::core::fast::RoPE*>((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::RoPE>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::RoPE,mlx::core::Stream const&,decltype(nullptr),int,BOOL,float,float,BOOL,mlx::core::fast::RoPE*>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, char *a5, float *a6, float *a7, char *a8)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(a2 + 8);
  v14 = 0;
  mlx::core::fast::RoPE::RoPE(a1, v9, v10, v13, *a4, *a5, *a8, *a6, *a7);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v13);
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AAB60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::RoPE::RoPE(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, char a6, char a7, float a8, float a9)
{
  v20 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v19, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_286BF21A8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](a1 + 24, v19);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v19);
  *a1 = &unk_286C0A0C0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  *(a1 + 92) = a6;
  *(a1 + 96) = a8;
  *(a1 + 100) = a9;
  *(a1 + 104) = a7;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AAC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::RoPE> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RoPE> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA778;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::fast::RoPE> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RoPE> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::RoPE> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::RoPE> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::deserialize_tuple<std::tuple<decltype(nullptr),float,BOOL>,0ul,1ul,2ul>(uint64_t a1)
{
  v3 = 0;
  (*(*a1 + 32))(a1, &v3, 4);
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 1);
  return 0;
}

void *std::__shared_ptr_emplace<mlx::core::fast::ScaledDotProductAttention>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,decltype(nullptr),float,BOOL,std::allocator<mlx::core::fast::ScaledDotProductAttention>,0>(void *a1, uint64_t a2, uint64_t a3, float *a4, char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEA818;
  std::construct_at[abi:ne200100]<mlx::core::fast::ScaledDotProductAttention,mlx::core::Stream const&,decltype(nullptr),float,BOOL,mlx::core::fast::ScaledDotProductAttention*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::fast::ScaledDotProductAttention>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::fast::ScaledDotProductAttention,mlx::core::Stream const&,decltype(nullptr),float,BOOL,mlx::core::fast::ScaledDotProductAttention*>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, char *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a2 + 8);
  v11 = 0;
  mlx::core::fast::ScaledDotProductAttention::ScaledDotProductAttention(a1, v6, v7, v10, *a5, *a4);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v10);
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AB060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::fast::ScaledDotProductAttention::ScaledDotProductAttention(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, float a6)
{
  v14 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](v13, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_286BF21A8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::__value_func[abi:ne200100](a1 + 24, v13);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](v13);
  *a1 = &unk_286BF2220;
  *(a1 + 80) = 0;
  *(a1 + 88) = a6;
  *(a1 + 92) = a5;
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A2AB154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::ScaledDotProductAttention> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::ScaledDotProductAttention> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BEA868;
  a2[1] = v2;
  return result;
}

double std::__function::__func<std::shared_ptr<mlx::core::fast::ScaledDotProductAttention> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::ScaledDotProductAttention> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a1 + 8))(&v6, a2, *a3, *(a3 + 8));
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlx::core::fast::ScaledDotProductAttention> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream),std::allocator<std::shared_ptr<mlx::core::fast::ScaledDotProductAttention> (*)(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>,std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,mlx::core::PrimitiveSerializer>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 112 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlx::core::PrimitiveSerializer> const&>(a1, a2);
      a2 += 14;
      v5 -= 112;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlx::core::PrimitiveSerializer> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>>>::__construct_node_hash<std::pair<std::string const,mlx::core::PrimitiveSerializer> const&>();
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

void sub_25A2AB55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A2AB5FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

std::string *std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](&this[1], a2 + 24);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](&this[2].__r_.__value_.__l.__size_, a2 + 56);
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[3].__r_.__value_.__r.__words[2], *(a2 + 11), *(a2 + 12), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 12) - *(a2 + 11)) >> 3));
  return this;
}

void sub_25A2ABBCC(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1 + 56);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 104);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](a2 + 72);
    std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](a2 + 40);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::PrimitiveSerializer>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,mlx::core::PrimitiveSerializer>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_25A2AC05C(_Unwind_Exception *a1, uint64_t a2, ...)
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
    if (v12 == v6)
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

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A2AC400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype*,mlx::core::Dtype*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlx::core::Dtype>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A2AC534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::pair<mlx::core::array,int>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<std::pair<mlx::core::array,int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        mlx::core::array::~array((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void mlx::core::deserialize<std::vector<std::string>>(uint64_t a1@<X0>, std::vector<std::string> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  __n.__first_ = 0;
  (*(*a1 + 32))(a1, &__n, 8);
  first = __n.__first_;
  std::vector<std::string>::reserve(a2, __n.__first_);
  for (; first; first = (first - 1))
  {
    mlx::core::deserialize<std::string>(a1, &__p);
    end = a2->__end_;
    value = a2->__end_cap_.__value_;
    if (end >= value)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((end - a2->__begin_) >> 3);
      v9 = v8 + 1;
      if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((value - a2->__begin_) >> 3);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v9;
      }

      __n.__end_cap_.__value_ = a2;
      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v11);
      }

      v12 = 24 * v8;
      v13 = *&__p.__r_.__value_.__l.__data_;
      *(v12 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v12 = v13;
      memset(&__p, 0, sizeof(__p));
      v14 = 24 * v8 + 24;
      v15 = a2->__end_ - a2->__begin_;
      v16 = (24 * v8 - v15);
      memcpy((v12 - v15), a2->__begin_, v15);
      begin = a2->__begin_;
      a2->__begin_ = v16;
      a2->__end_ = v14;
      v18 = a2->__end_cap_.__value_;
      a2->__end_cap_.__value_ = 0;
      __n.__end_ = begin;
      __n.__end_cap_.__value_ = v18;
      __n.__first_ = begin;
      __n.__begin_ = begin;
      std::__split_buffer<std::string>::~__split_buffer(&__n);
      v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      a2->__end_ = v14;
      if (v19 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v7 = *&__p.__r_.__value_.__l.__data_;
      end->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
      *&end->__r_.__value_.__l.__data_ = v7;
      a2->__end_ = end + 1;
    }
  }
}

void mlx::core::deserialize<std::vector<unsigned long long>>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = 0;
  (*(*a1 + 32))(a1, &v6, 8);
  v4 = v6;
  std::vector<long long>::reserve(a2, v6);
  for (; v4; --v4)
  {
    v6 = 0;
    (*(*a1 + 32))(a1, &v6, 8);
    v5 = v6;
    std::vector<unsigned long long>::push_back[abi:ne200100](a2, &v5);
  }
}

void sub_25A2AC9A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize<std::vector<mlx::core::array>>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = 0;
  (*(*a1 + 32))(a1, &v6, 8);
  v4 = v6;
  std::vector<mlx::core::array>::reserve(a2, v6);
  for (; v4; --v4)
  {
    mlx::core::deserialize<mlx::core::array>(a1, v5);
    std::vector<mlx::core::array>::push_back[abi:ne200100](a2, v5);
    mlx::core::array::~array(v5);
  }
}

void sub_25A2ACA6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::PrimitiveFactory::load(mlx::core::PrimitiveFactory *this, mlx::core::io::ParallelFileReader *a2)
{
  v4 = mlx::core::deserialize<mlx::core::Stream>(a2);
  v6 = v5;
  v14 = v4;
  v15 = v5;
  if (v4 != mlx::core::get_stream(v4))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[import_function] Invalid stream encountered ", 45);
    v9 = mlx::core::operator<<(v8, &v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__p, &v12);
    std::logic_error::logic_error(exception, &v12);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::deserialize<std::string>(a2, __p);
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this, &__p[0].__r_.__value_.__l.__data_);
  if (!v7)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::logic_error::logic_error(v11, &v12);
    v11->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v11, off_279921408, MEMORY[0x277D82610]);
  }

  std::function<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()((v7 + 9), a2, v4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }
}

void sub_25A2ACC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void mlx::core::deserialize<std::vector<std::vector<int>>>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = 0;
  (*(*a1 + 32))(a1, &v6, 8);
  v4 = v6;
  std::vector<std::vector<int>>::reserve(a2, v6);
  for (; v4; --v4)
  {
    mlx::core::deserialize<std::vector<int>>(a1, &__p);
    std::vector<std::vector<int>>::push_back[abi:ne200100](a2, &__p);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }
  }
}

void mlx::core::deserialize<std::vector<mlx::core::Dtype>>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = 0;
  (*(*a1 + 32))(a1, &v6, 8);
  v4 = v6;
  std::vector<mlx::core::Dtype>::reserve(a2, v6);
  for (; v4; --v4)
  {
    v5 = mlx::core::deserialize<mlx::core::Dtype>(a1);
    LODWORD(v6) = v5;
    BYTE4(v6) = BYTE4(v5);
    std::vector<mlx::core::Dtype>::push_back[abi:ne200100](a2, &v6);
  }
}

void sub_25A2ACE74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::FunctionTable::insert(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a3[1] - *a3) >> 4;
  v6 = 0;
  v7 = v3;
  v4 = 0;
  v5 = 0;
  std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::__emplace_unique_impl<unsigned long,std::vector<mlx::core::FunctionTable::Function>>();
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,mlx::core::array>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,mlx::core::array>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,mlx::core::array>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,mlx::core::array&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_25A2AD2A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a3;
  v7 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, a2, &v6);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::array,std::vector<int>,mlx::core::Dtype &,std::shared_ptr<mlx::core::Primitive>,std::vector<mlx::core::array>,mlx::core::array*>(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  v6 = *a2;
  v13 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = *a3;
  v11 = *a4;
  *__p = v6;
  *a4 = 0;
  *(a4 + 1) = 0;
  v9 = *a5;
  v10 = *(a5 + 2);
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  mlx::core::array::array(a1, __p, v7, &v11, &v9);
  v14 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25A2AD3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 24) = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v17 - 24));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::vector<int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void *std::vector<mlx::core::Dtype>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<mlx::core::Load>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::shared_ptr<mlx::core::io::ParallelFileReader> &,unsigned long &,std::allocator<mlx::core::Load>,0>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_286BEA908;
  v4 = *a2;
  v5 = *(a2 + 2);
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  *(result + 40) = v5;
  *(result + 24) = &unk_286BF3000;
  *(result + 32) = v4;
  *(result + 48) = v7;
  *(result + 56) = v6;
  *(result + 64) = v8;
  *(result + 72) = 0;
  return result;
}

void std::__shared_ptr_emplace<mlx::core::Load>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<mlx::core::FunctionTable::Function>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t std::vector<mlx::core::FunctionTable::Function>::__emplace_back_slow_path<std::vector<std::string>,std::vector<mlx::core::array>,std::vector<mlx::core::array>,std::vector<mlx::core::array>>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v9 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>>(a1, v9);
  }

  v16 = 0;
  v17 = 96 * v5;
  std::construct_at[abi:ne200100]<mlx::core::FunctionTable::Function,std::vector<std::string>,std::vector<mlx::core::array>,std::vector<mlx::core::array>,std::vector<mlx::core::array>,mlx::core::FunctionTable::Function*>(96 * v5, a2, a3, a4, a5);
  v18 = 96 * v5 + 96;
  v10 = *(a1 + 8);
  v11 = (96 * v5 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(&v16);
  return v15;
}

void sub_25A2ADAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::FunctionTable::Function,std::vector<std::string>,std::vector<mlx::core::array>,std::vector<mlx::core::array>,std::vector<mlx::core::array>,mlx::core::FunctionTable::Function*>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v6 = *(a2 + 2);
  v7 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v8 = *(a3 + 2);
  v9 = *a3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v10 = *(a4 + 2);
  v11 = *a4;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  v12 = *(a5 + 2);
  v13 = *a5;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  *a1 = v7;
  *(a1 + 16) = v6;
  v18[0] = 0;
  v18[1] = 0;
  *(a1 + 24) = v9;
  *(a1 + 40) = v8;
  memset(v17, 0, sizeof(v17));
  *(a1 + 48) = v11;
  *(a1 + 64) = v10;
  memset(v16, 0, sizeof(v16));
  *(a1 + 72) = v13;
  *(a1 + 88) = v12;
  memset(v15, 0, sizeof(v15));
  v18[2] = 0;
  v19 = v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v19);
  v19 = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v19);
  v19 = v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v19);
  v19 = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  return a1;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::find<std::string>(void *a1, const void **a2)
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

void *std::map<std::string,mlx::core::array>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *> *>>>(void *a1, uint64_t *a2, uint64_t *a3)
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
      std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlx::core::array> const&>(a1, v4, v6 + 2);
      v6 = *v6;
    }

    while (v6 != a3);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlx::core::array> const&>(void *a1, uint64_t a2, void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__construct_node<std::pair<std::string const,mlx::core::array> const&>();
  }

  return v3;
}

void **std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
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
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
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

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__find_equal<std::string>(a1, a3, a5);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,mlx::core::array>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,mlx::core::array>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

std::string *std::pair<std::string const,mlx::core::array>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

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

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return this;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,mlx::core::array>,0>(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::pair<std::string const,mlx::core::array>::~pair(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,mlx::core::array>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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
      if (*(result + 4) == v3)
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<mlx::core::FunctionTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEA958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<mlx::core::FunctionTable::Function>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,mlx::core::array>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__n128 std::__function::__func<mlx::core::FunctionExporter::export_function(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)::$_0,std::allocator<mlx::core::FunctionExporter::export_function(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEA9A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::FunctionExporter::export_function(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)::$_0,std::allocator<mlx::core::FunctionExporter::export_function(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = a2[1] + 0x5555555555555550 * ((*(*(a1 + 16) + 8) - **(a1 + 16)) >> 3);
  memset(v16, 0, sizeof(v16));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v16, v4, v6, (v6 - v4) >> 4);
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v7 = *(a1 + 16);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 != v9)
  {
    v10 = (a2[1] + 0x5555555555555550 * ((v9 - v8) >> 3));
    do
    {
      std::pair<std::string const,mlx::core::array>::pair[abi:ne200100]<std::string&,mlx::core::array const&,0>(&__p, v8, v10);
      std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlx::core::array>>(v14, &__p.__r_.__value_.__l.__data_);
      mlx::core::array::~array(&v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 += 2;
      v8 = (v8 + 24);
    }

    while (v8 != v9);
  }

  v11 = *(v5 + 64);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, v16, v14);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(v14);
  *&v14[0] = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v14);
}

void sub_25A2AE890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(&a15);
  a15 = (v15 - 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::FunctionExporter::export_function(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)::$_0,std::allocator<mlx::core::FunctionExporter::export_function(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlx::core::array>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlx::core::array>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__construct_node_hash<std::pair<std::string const,mlx::core::array>>();
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

void sub_25A2AEBF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,mlx::core::array>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,mlx::core::array>::pair[abi:ne200100]<std::string&,mlx::core::array const&,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::unordered_set<unsigned long>::unordered_set<std::__wrap_iter<unsigned long long *>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_impl<unsigned long long &>();
  }

  return result;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t *a2)
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

void *std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BEAA28;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BEAA28;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BEAAB8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BEAAB8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::unordered_map<std::string,mlx::core::array>::unordered_map(v6, a3);
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, v6);
  return std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(v6);
}

void sub_25A2AF5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0,std::allocator<mlx::core::exporter(std::string const&,std::function<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)> const&,BOOL)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,mlx::core::array>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlx::core::array> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mlx::core::array> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__construct_node_hash<std::pair<std::string const,mlx::core::array> const&>();
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

void sub_25A2AF8C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<mlx::core::io::ParallelFileReader>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<mlx::core::io::ParallelFileReader>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEAB38;
  std::construct_at[abi:ne200100]<mlx::core::io::ParallelFileReader,std::string const&,mlx::core::io::ParallelFileReader*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::io::ParallelFileReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEAB38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::io::ParallelFileReader,std::string const&,mlx::core::io::ParallelFileReader*>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a2, *(a2 + 8));
  }

  else
  {
    v5 = *a2;
  }

  *a1 = &unk_286BF1458;
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  *(a1 + 8) = open(v3, 0, v5.__r_.__value_.__r.__words[0]);
  *(a1 + 16) = v5;
  return a1;
}

void sub_25A2AFBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::random::KeySequence::KeySequence(mlx::core::random::KeySequence *this, mlx::core::random *a2)
{
  mlx::core::random::key(a2, this);
}

{
  mlx::core::random::key(a2, this);
}

void mlx::core::random::key(mlx::core::random *this@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = __ROR8__(this, 32);
  v3 = mlx::core::TypeToDtype<unsigned int>::operator mlx::core::Dtype();
  mlx::core::array::array<unsigned int>(a2, v4, 2, (v3 & 0xFFFFFFFFFFLL));
}

void mlx::core::random::KeySequence::next(mlx::core::random::KeySequence *this@<X0>, mlx::core *a2@<X1>, void *a3@<X8>)
{
  mlx::core::random::split(this, a2, 0, &v9);
  v5 = v9;
  if (*this != v9)
  {
    v6 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(this + 1);
    *this = v5;
    *(this + 1) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v8 = v10[1];
  *a3 = v10[0];
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::array::~array(v10);
  mlx::core::array::~array(&v9);
}

void mlx::core::random::split(void *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = mlx::core::to_stream(a2, a3);
  v8 = v7 | 0x100000000;
  mlx::core::random::split(a1, 2, v6, v8);
  mlx::core::split(&v22, 2, v6, v8, v23);
  mlx::core::array::~array(&v22);
  v9 = v23[0];
  v18 = 2;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v19, &v18, &v19, 1uLL);
  mlx::core::reshape(v9, &v19, v6, v8, &v22);
  v10 = v23[0];
  v13 = 2;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v13, &__p, 1uLL);
  mlx::core::reshape(v10 + 16, &__p, v6, v8, &v17);
  v11 = v22;
  v22 = 0uLL;
  v12 = v17;
  *a4 = v11;
  a4[1] = v12;
  v17 = 0uLL;
  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(&v22);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  *&v22 = v23;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_25A2AFF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  if (a16)
  {
    operator delete(a16);
  }

  a19 = v19 - 72;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void mlx::core::random::seed(mlx::core::random *this)
{
  v2 = mlx::core::random::KeySequence::default_(this);

  mlx::core::random::KeySequence::seed(v2, this);
}

void *mlx::core::random::KeySequence::default_(mlx::core::random::KeySequence *this)
{
  {
    v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    mlx::core::random::key((v2.__d_.__rep_ / 1000), &mlx::core::random::KeySequence::default_(void)::ks);
  }

  return &mlx::core::random::KeySequence::default_(void)::ks;
}

void mlx::core::random::bits(uint64_t *a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = a2;
  if (*(a3 + 16) == 1)
  {
    v10 = *a3;
    v9 = *(a3 + 8);
    v31[0] = *a3;
    v31[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = mlx::core::random::KeySequence::default_(a1);
    mlx::core::random::KeySequence::next(v11, v12, v31);
    v10 = v31[0];
  }

  if (*(v10 + 14) != 3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "[bits] Expected key type uint32 but received ", 45);
    v19 = v31[0][7];
    LODWORD(v35.__r_.__value_.__l.__data_) = v19;
    v35.__r_.__value_.__s.__data_[4] = BYTE4(v19);
    v20 = mlx::core::operator<<(v18, &v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v33, &v35);
    std::logic_error::logic_error(exception, &v35);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  LODWORD(v35.__r_.__value_.__l.__data_) = 2;
  v34 = 0;
  v33 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v33, &v35, v35.__r_.__value_.__r.__words + 4, 1uLL);
  v13 = *v10;
  v14 = v10[1] - *v10;
  v15 = v33;
  if (v14 == *(&v33 + 1) - v33)
  {
    v16 = memcmp(v13, v33, v14) == 0;
    if (!v15)
    {
LABEL_11:
      if (v16)
      {
        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *a1, a1[1], (a1[1] - *a1) >> 2);
        if (a2 != 1 && a2 != 4 && a2 != 2)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "[bits] Bit width must be in {1, 2, 4} but got ", 46);
          v26 = MEMORY[0x25F851360](v25, a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ".", 1);
          v27 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v33, &v35);
          std::logic_error::logic_error(v27, &v35);
          v27->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v27, off_279921408, MEMORY[0x277D82610]);
        }

        v28 = mlx::core::to_stream(a4, a5);
        v29 = v17;
        std::allocate_shared[abi:ne200100]<mlx::core::RandomBits,std::allocator<mlx::core::RandomBits>,mlx::core::Stream,std::vector<int> const&,int &,0>();
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "[bits] Expected key shape (2) but received ", 43);
      v23 = mlx::core::operator<<(v22, v31[0]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ".", 1);
      v24 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](&v33, &v35);
      std::logic_error::logic_error(v24, &v35);
      v24->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v24, off_279921408, MEMORY[0x277D82610]);
    }
  }

  else
  {
    v16 = 0;
    if (!v33)
    {
      goto LABEL_11;
    }
  }

  *(&v33 + 1) = v15;
  operator delete(v15);
  goto LABEL_11;
}

void sub_25A2B04E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a23);
      if (__p)
      {
        operator delete(__p);
      }

      mlx::core::array::~array(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::random::split(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = 2;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, v14, &v15, 2uLL);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = 1;
  mlx::core::random::bits(&__p, 4, v9, a3, a4);
  mlx::core::array::~array(v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_25A2B06E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  mlx::core::array::~array(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::random::above_minus_one_with_default(int a1)
{
  if (a1 != 12)
  {
    if (a1 == 9)
    {

      mlx::core::array::array<half>();
    }

    nextafterf(-1.0, 0.0);

    mlx::core::array::array<float>();
  }

  mlx::core::array::array<mlx::core::_MLX_BFloat16>();
}

void mlx::core::random::uniform(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, mlx::core *a6, uint64_t a7)
{
  v21 = a4;
  if (mlx::core::issubdtype(&v21, &mlx::core::floating))
  {
    v12 = mlx::core::to_stream(a6, a7);
    v13 = a1[1];
    v19[0] = *a1;
    v19[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    v14 = v11 | 0x100000000;
    mlx::core::astype(v19, v21, v12, v14, v20);
    mlx::core::array::~array(v19);
    v15 = a2[1];
    v17[0] = *a2;
    v17[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v17, v21, v12, v14, v18);
    mlx::core::array::~array(v17);
    mlx::core::subtract(v18, v20, v12, v14);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[uniform] Can only generate uniform numbers with real floating point type.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A2B0C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a18);
      v22 = *(v20 - 192);
      if (v22)
      {
        *(v20 - 184) = v22;
        operator delete(v22);
      }

      mlx::core::array::~array((v20 - 168));
      mlx::core::array::~array((v20 - 136));
      mlx::core::array::~array((v20 - 104));
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_25A2B0DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A2B0FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(v3);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

void mlx::core::random::multivariate_normal(uint64_t **a1, uint64_t **a2, uint64_t *a3, int a4, uint64_t a5, mlx::core *a6, uint64_t a7)
{
  v11 = mlx::core::to_stream(a6, a7);
  if (a4 == 10)
  {
    v13 = v12;
    v14 = **a1;
    v15 = (*a1)[1];
    v16 = **a1;
    if (v15 == v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[multivariate_normal] mean must have at least one dimension.");
    }

    else if (((*a2)[1] - **a2) <= 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[multivariate_normal] cov must have at least two dimensions.");
    }

    else
    {
      v17 = *((*a2)[1] - 4);
      if (v17 == *((*a2)[1] - 8))
      {
        v18 = *(v15 - 4);
        if (v18 == v17)
        {
          v19 = v11;
          memset(v43, 0, 24);
          std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v43, v16, v15 - 4, (v15 - 4 - v16) >> 2);
          v20 = **a2;
          v21 = (*a2)[1] - 8;
          memset(v42, 0, sizeof(v42));
          std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v42, v20, v21, (v21 - v20) >> 2);
          mlx::core::broadcast_shapes(v42, v43, &__p);
          mlx::core::broadcast_shapes(&__p, a3, &v36);
          if (__p)
          {
            v40 = __p;
            operator delete(__p);
          }

          v22 = v36;
          v23 = v37;
          __p = v36;
          v40 = v37;
          v41 = v38;
          if (v37 >= v38)
          {
            v25 = v37 - v36;
            v26 = (v37 - v36) >> 2;
            v27 = v26 + 1;
            if ((v26 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v28 = v38 - v36;
            if ((v38 - v36) >> 1 > v27)
            {
              v27 = v28 >> 1;
            }

            v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
            v30 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v29)
            {
              v30 = v27;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v30);
            }

            *(4 * v26) = v18;
            v24 = 4 * v26 + 4;
            memcpy(0, v22, v25);
            v31 = __p;
            __p = 0;
            v40 = v24;
            v41 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v37 = v18;
            v24 = (v23 + 1);
          }

          v40 = v24;
          v32 = a2[1];
          v34[0] = *a2;
          v34[1] = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(v32 + 1, 1uLL, memory_order_relaxed);
          }

          mlx::core::astype(v34, 10, v19, v13 | 0x100000000, v35);
          mlx::core::array::~array(v34);
          mlx::core::linalg::svd(v35, 1, v19, v13 | 0x100000000);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[multivariate_normal] mean and cov must have compatible shapes.");
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[multivariate_normal] last two dimensions of cov must be equal.");
      }
    }
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[multivariate_normal] dtype must be float32.");
  }

  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::random::randint(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, mlx::core *a6, uint64_t a7)
{
  v14 = a4;
  if (!mlx::core::issubdtype(&v14, &mlx::core::inexact))
  {
    mlx::core::random::uniform(a1, a2, a3, 0x40000000ALL, a5, a6, a7);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[randint] randint only accepts integer dtypes and BOOL.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::random::bernoulli(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v3 = v1;
  v4 = BYTE4(v1);
  if (mlx::core::issubdtype(&v3, &mlx::core::floating))
  {
    nextafterf(4295000000.0, 3.4028e38);
    mlx::core::array::array<float>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

{
  v1 = *a1;
  mlx::core::random::bernoulli(a1);
}

void sub_25A2B1A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::random::truncated_normal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  if (mlx::core::issubdtype(&v5, &mlx::core::floating))
  {
    mlx::core::array::array<double>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[trunc_normal] trunc_normal only accepts floating point dtypes.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A2B1DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A2B1E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a9);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::random::get_valid_axis(mlx::core::random *this, uint64_t a2)
{
  result = (a2 & (this >> 31)) + this;
  if (result < 0 || result >= a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v11);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[categorical] Invalid axis ", 27);
    v6 = MEMORY[0x25F851360](v5, this);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " for logits with ", 17);
    v8 = MEMORY[0x25F851360](v7, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v11, &v10);
    std::logic_error::logic_error(exception, &v10);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_25A2B1FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void mlx::core::random::categorical_impl(uint64_t **a1, int a2, uint64_t *a3)
{
  memset(&v14, 0, sizeof(v14));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v14, *a3, a3[1], (a3[1] - *a3) >> 2);
  v7 = *a3;
  v6 = a3[1];
  v8 = **a1;
  v9 = (*a1)[1];
  begin = v14.__begin_;
  v11 = mlx::core::array::shape(a1, a2);
  v12.__i_ = &begin[((v6 - v7) >> 2) + a2 - ((v9 - v8) >> 2) + 1];
  __x[0] = v11;
  std::vector<int>::insert(&v14, v12, __x);
  mlx::core::random::gumbel();
}

void sub_25A2B2160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::value_type *__x)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int const&>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
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
    }

    *i = *__x;
  }

  return i;
}

void sub_25A2B2328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::random::categorical(uint64_t **a1, mlx::core::random *this, uint64_t *a3)
{
  valid_axis = mlx::core::random::get_valid_axis(this, ((*a1)[1] - **a1) >> 2);
  v6 = *a1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = v19 + 4 * valid_axis;
  v8 = v20 - (v7 + 4);
  if (v20 != v7 + 4)
  {
    memmove((v19 + 4 * valid_axis), (v7 + 4), v20 - (v7 + 4));
  }

  v20 = v7 + v8;
  mlx::core::broadcast_shapes(a3, &v19, &v17);
  v9 = v17;
  if (v18 - v17 == a3[1] - *a3)
  {
    v10 = memcmp(v17, *a3, v18 - v17) == 0;
    if (!v9)
    {
LABEL_8:
      if (v10)
      {
        mlx::core::random::categorical_impl(a1, valid_axis, a3);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "[categorical] Requested shape ", 30);
      v12 = mlx::core::operator<<(v11, a3);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " is not broadcast compatable with reduced logits shape", 54);
      v14 = mlx::core::operator<<(v13, &v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](&v17, &v16);
      std::logic_error::logic_error(exception, &v16);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  else
  {
    v10 = 0;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v18 = v9;
  operator delete(v9);
  goto LABEL_8;
}

void sub_25A2B2564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      v20 = *(v18 - 104);
      if (v20)
      {
        *(v18 - 96) = v20;
        operator delete(v20);
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

void mlx::core::random::categorical(uint64_t **a1, mlx::core::random *this)
{
  mlx::core::random::get_valid_axis(this, ((*a1)[1] - **a1) >> 2);
  mlx::core::expand_dims(a1, -1, v3, 0);
}

{
  valid_axis = mlx::core::random::get_valid_axis(this, ((*a1)[1] - **a1) >> 2);
  v4 = *a1;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
  v5 = __p + 4 * valid_axis;
  v6 = v8 - (v5 + 4);
  if (v8 != v5 + 4)
  {
    memmove(__p + 4 * valid_axis, v5 + 4, v8 - (v5 + 4));
  }

  v8 = &v5[v6];
  mlx::core::random::categorical_impl(a1, valid_axis, &__p);
}

void sub_25A2B26D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void sub_25A2B27EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A2B2A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(v9);
  mlx::core::array::~array(va1);
  mlx::core::array::~array((v10 - 96));
  _Unwind_Resume(a1);
}

void mlx::core::random::permutation(int a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v7 = a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v7, __p, 1uLL);
  mlx::core::random::bits(__p, 4, a2, a3, a4);
}

void sub_25A2B2C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25A2B2CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<unsigned int *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2B2FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A2B3094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<unsigned short *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2B33B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::array::array<unsigned int>(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v4, __p, 1uLL);
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

void sub_25A2B3480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<unsigned int const*>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2B37A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<mlx::core::RandomBits>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> const&,int &,std::allocator<mlx::core::RandomBits>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
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

void sub_25A2B3984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<half *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2B3CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A2B3DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<mlx::core::_MLX_BFloat16 *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2B4134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **mlx::core::fft::fft_impl@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, mlx::core *a6@<X5>, uint64_t a7@<X6>, uint64_t **a8@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v87 = a4;
  v86 = a5;
  if ((*result)[1] == **result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[fftn] Requires array with at least one dimension.");
    goto LABEL_71;
  }

  v9 = *a3;
  v10 = a3[1];
  if ((a2[1] - *a2) != (v10 - *a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[fftn] Shape and axes have different sizes.");
LABEL_71:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v11 = result;
  if (v9 != v10)
  {
    v12 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    while (1)
    {
      v13 = *v9;
      if ((v13 & 0x80000000) != 0)
      {
        v13 += ((*v11)[1] - **v11) >> 2;
      }

      if (v12 >= v85)
      {
        v14 = v83;
        v15 = v12 - v83;
        v16 = (v12 - v83) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v85 - v83;
        if ((v85 - v83) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(&v83, v19);
        }

        v20 = v16;
        v21 = (8 * v16);
        v22 = &v21[-v20];
        *v21 = v13;
        v12 = (v21 + 1);
        memcpy(v22, v14, v15);
        v23 = v83;
        v83 = v22;
        v84 = v12;
        v85 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v12 = v13;
        v12 += 8;
      }

      v84 = v12;
      if (++v9 == v10)
      {
        std::set<int>::set[abi:ne200100]<std::__wrap_iter<unsigned long *>>(&v81, v83, v12);
        if (v82[1] == (a3[1] - *a3) >> 2)
        {
          if ((*(v81 + 28) & 0x80000000) == 0)
          {
            v24 = v82[0];
            if (v82[0])
            {
              do
              {
                v25 = v24;
                v24 = *(v24 + 8);
              }

              while (v24);
            }

            else
            {
              v27 = v82;
              do
              {
                v25 = v27[2];
                v28 = *v25 == v27;
                v27 = v25;
              }

              while (v28);
            }

            v29 = *(v25 + 28);
            v30 = *v11;
            if (v29 < ((*v11)[1] - **v11) >> 2)
            {
              for (i = *a2; i != a2[1]; ++i)
              {
                if (*i <= 0)
                {
                  std::ostringstream::basic_ostringstream[abi:ne200100](&v78);
                  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "[fftn] Invalid FFT output size requested ", 41);
                  mlx::core::operator<<(v59, a2);
                  v60 = __cxa_allocate_exception(0x10uLL);
                  std::ostringstream::str[abi:ne200100](&v78, &v77);
                  std::logic_error::logic_error(v60, &v77);
                  v60->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v60, off_279921408, MEMORY[0x277D82610]);
                }
              }

              v78 = 0;
              v79 = 0;
              v80 = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v78, *v30, v30[1], (v30[1] - *v30) >> 2);
              v33 = v83;
              v32 = v84;
              if (v84 != v83)
              {
                v34 = (v84 - v83) >> 3;
                v35 = *a2;
                v36 = v78;
                if (v34 <= 1)
                {
                  v34 = 1;
                }

                do
                {
                  v38 = *v35++;
                  v37 = v38;
                  v39 = *v33;
                  v33 += 8;
                  v36[v39] = v37;
                  --v34;
                }

                while (v34);
              }

              if (v87)
              {
                v40 = v78;
                if (v86 == 1)
                {
                  *(v78 + *(v32 - 1)) = *(a2[1] - 4) / 2 + 1;
                }
              }

              else
              {
                v40 = v78;
              }

              v41 = *v11;
              if (v79 == v40)
              {
                v43 = 0;
                v42 = 0;
              }

              else
              {
                v42 = 0;
                v43 = 0;
                v44 = (v79 - v40) >> 2;
                v45 = *v41;
                if (v44 <= 1)
                {
                  v44 = 1;
                }

                do
                {
                  v47 = *v40;
                  v40 += 4;
                  v46 = v47;
                  v48 = *v45++;
                  v42 |= v46 > v48;
                  v43 |= v46 < v48;
                  --v44;
                }

                while (v44);
              }

              v49 = v11[1];
              *&v76 = *v11;
              *(&v76 + 1) = v49;
              if (v49)
              {
                atomic_fetch_add_explicit(v49 + 1, 1uLL, memory_order_relaxed);
              }

              if (v43)
              {
                v50 = (v41[1] - *v41) >> 2;
                LODWORD(v71) = 0;
                std::vector<int>::vector[abi:ne200100](v75, v50);
                __p = 0;
                v73 = 0;
                v74 = 0;
                std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v78, v79, (v79 - v78) >> 2);
                mlx::core::slice(&v76, v75, &__p, a6, a7, &v77);
                v51 = *&v77.__r_.__value_.__l.__data_;
                *&v77.__r_.__value_.__l.__data_ = 0uLL;
                v52 = *(&v76 + 1);
                v76 = v51;
                if (v52)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                }

                mlx::core::array::~array(&v77);
                if (__p)
                {
                  v73 = __p;
                  operator delete(__p);
                }

                if (v75[0])
                {
                  v75[1] = v75[0];
                  operator delete(v75[0]);
                }
              }

              if (v42)
              {
                v53 = (*v11)[7] & 0xFFFFFFFFFFLL;
                mlx::core::zeros(&v78);
              }

              memset(&v77, 0, sizeof(v77));
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v77, v78, v79, (v79 - v78) >> 2);
              if (v87)
              {
                v54 = *(v84 - 1);
                v55 = v77.__r_.__value_.__r.__words[0];
                if (v86 == 1)
                {
                  *(v77.__r_.__value_.__r.__words[0] + 4 * v54) = *(a2[1] - 4);
                  v56 = &mlx::core::float32;
                }

                else
                {
                  *(v77.__r_.__value_.__r.__words[0] + 4 * v54) = *(v77.__r_.__value_.__r.__words[0] + 4 * v54) / 2 + 1;
                  v56 = &mlx::core::complex64;
                }
              }

              else
              {
                v56 = &mlx::core::complex64;
                v55 = v77.__r_.__value_.__r.__words[0];
              }

              v57 = *v56;
              memset(v70, 0, sizeof(v70));
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v70, v55, v77.__r_.__value_.__l.__size_, (v77.__r_.__value_.__l.__size_ - v55) >> 2);
              mlx::core::to_stream(a6, a7);
              std::allocate_shared[abi:ne200100]<mlx::core::FFT,std::allocator<mlx::core::FFT>,mlx::core::Stream,std::vector<unsigned long> &,BOOL &,BOOL &,0>();
            }
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&v78);
          v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "[fftn] Invalid axis received for array with ", 44);
          v62 = MEMORY[0x25F851380](v61, ((*v11)[1] - **v11) >> 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " dimensions.", 12);
          v63 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v78, &v77);
          std::logic_error::logic_error(v63, &v77);
          v63->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v63, off_279921408, MEMORY[0x277D82610]);
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v78);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "[fftn] Duplicated axis received ", 32);
        mlx::core::operator<<(v65, a3);
        v66 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](&v78, &v77);
        std::logic_error::logic_error(v66, &v77);
        v66->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v66, off_279921408, MEMORY[0x277D82610]);
      }
    }
  }

  v26 = result[1];
  *a8 = *result;
  a8[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  v58 = *MEMORY[0x277D85DE8];
  return result;
}