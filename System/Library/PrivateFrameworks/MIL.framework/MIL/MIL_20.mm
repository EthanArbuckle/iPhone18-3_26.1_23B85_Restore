void sub_2180EFEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v10, &__p);
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

void sub_2180EFFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v10, &__p);
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

void sub_2180F0088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v10, &__p);
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

void sub_2180F0150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v10, &__p);
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

void sub_2180F0218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v10, &__p);
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

void sub_2180F02E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned short>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&__p, v6, v7, (v7 - v6) >> 1);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v10, &__p);
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

void sub_2180F03A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<signed char>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v10, &__p);
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

void sub_2180F046C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<signed char>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v10, &__p);
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

void sub_2180F0530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<signed char>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v10, &__p);
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

void sub_2180F05F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<signed char>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v10, &__p);
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

void sub_2180F06B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<signed char>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v10, &__p);
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

void sub_2180F077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<signed char>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v10, &__p);
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

void sub_2180F0840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v10, &__p);
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

void sub_2180F0904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v10, &__p);
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

void sub_2180F09C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<int>::Tensor(a2, &v10, &__p);
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

void sub_2180F0A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v10, &__p);
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

void sub_2180F0B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v10, &__p);
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

void sub_2180F0C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<unsigned char>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
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
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v6, v7, v7 - v6);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v10, &__p);
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

void sub_2180F0CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&__p, v4, v5, (v5 - v4) >> 3);
  memset(&v10, 0, sizeof(v10));
  std::vector<int>::reserve(&v10, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Bf16::GetFloat((v6 + v7));
      std::vector<float>::push_back[abi:ne200100](&v10.__begin_, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<float>::Tensor(a2, &__p, &v10);
  if (v10.__begin_)
  {
    v10.__end_ = v10.__begin_;
    operator delete(v10.__begin_);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F0DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&__p, v4, v5, (v5 - v4) >> 3);
  memset(&v10, 0, sizeof(v10));
  std::vector<int>::reserve(&v10, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Bf16::GetFloat((v6 + v7));
      std::vector<int>::push_back[abi:ne200100](&v10.__begin_, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<int>::Tensor(a2, &__p, &v10);
  if (v10.__begin_)
  {
    v10.__end_ = v10.__begin_;
    operator delete(v10.__begin_);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F0FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Bf16::GetFloat((v6 + v7));
      std::vector<short>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<short>::Tensor(a2, &v12, &__p);
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

void sub_2180F10F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void std::vector<short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Bf16::GetFloat((v6 + v7));
      std::vector<short>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v12, &__p);
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

void sub_2180F12E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
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
      Float = MIL::Bf16::GetFloat((v6 + v7));
      std::vector<char>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v12, &__p);
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

void sub_2180F13F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Bf16>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
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
      Float = MIL::Bf16::GetFloat((v6 + v7));
      std::vector<char>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v12, &__p);
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

void sub_2180F150C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<float>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&__p, v4, v5, (v5 - v4) >> 3);
  memset(&v10, 0, sizeof(v10));
  std::vector<int>::reserve(&v10, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Fp16::GetFloat((v6 + v7));
      std::vector<float>::push_back[abi:ne200100](&v10.__begin_, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<float>::Tensor(a2, &__p, &v10);
  if (v10.__begin_)
  {
    v10.__end_ = v10.__begin_;
    operator delete(v10.__begin_);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F161C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v12 = 0;
  __p = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&__p, v4, v5, (v5 - v4) >> 3);
  memset(&v10, 0, sizeof(v10));
  std::vector<int>::reserve(&v10, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Fp16::GetFloat((v6 + v7));
      std::vector<int>::push_back[abi:ne200100](&v10.__begin_, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<int>::Tensor(a2, &__p, &v10);
  if (v10.__begin_)
  {
    v10.__end_ = v10.__begin_;
    operator delete(v10.__begin_);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F1730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<unsigned short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Fp16::GetFloat((v6 + v7));
      std::vector<short>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v12, &__p);
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

void sub_2180F1844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<short>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v13 = 0;
  v12 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v12, v4, v5, (v5 - v4) >> 3);
  __p = 0uLL;
  v11 = 0;
  std::vector<MIL::Fp16>::reserve(&__p, (a1[5] - a1[4]) >> 1);
  v6 = a1[4];
  if (a1[5] != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      Float = MIL::Fp16::GetFloat((v6 + v7));
      std::vector<short>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<short>::Tensor(a2, &v12, &__p);
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

void sub_2180F1958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<unsigned char>(void *a1@<X0>, uint64_t a2@<X8>)
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
      Float = MIL::Fp16::GetFloat((v6 + v7));
      std::vector<char>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v12, &__p);
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

void sub_2180F1A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<MIL::Fp16>::Cast<signed char>(void *a1@<X0>, uint64_t a2@<X8>)
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
      Float = MIL::Fp16::GetFloat((v6 + v7));
      std::vector<char>::push_back[abi:ne200100](&__p, &Float);
      ++v8;
      v6 = a1[4];
      v7 += 2;
    }

    while (v8 < (a1[5] - v6) >> 1);
  }

  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v12, &__p);
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

void sub_2180F1B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void MIL::ValueInference::Tensor<float>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<float>(&v12, *a1);
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
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, v13, v13 + 4 * v14, v14);
  MIL::ValueInference::Tensor<float>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<float>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 5, __p);
}

void sub_2180F1E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<float>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E5E60;
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

void sub_2180F1F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<float>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E5E60;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t MIL::ValueInference::Tensor<float>::GetDataView(uint64_t a1)
{
  if (*(a1 + 40) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

unint64_t anonymous namespace::FlattenIndices(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - *a2;
  if (v4 != a1[1] - *a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "indices must have the same length as the shape.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (v2 == v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = v4 >> 3;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  do
  {
    v9 = *(v3 + 8 * v6);
    v10 = *(*a1 + 8 * v6);
    if (v9 >= v10)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v19);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "index ", 6);
      v14 = MEMORY[0x21CEAFB80](v13, *(*a2 + 8 * v6));
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " cannnot be out of the range of dimension ", 42);
      MEMORY[0x21CEAFB80](v15, *(*a1 + 8 * v6));
      v16 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v16, &v18);
      v16->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v16, off_278235F78, MEMORY[0x277D825F8]);
    }

    v7 = v9 + v10 * v7;
    ++v6;
  }

  while (v8 != v6);
  return v7;
}

void MIL::ValueInference::Tensor<float>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  std::vector<float>::vector[abi:ne200100](&v12, (a1[5] - a1[4]) >> 2);
  __p = 0uLL;
  v11 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v12.n128_u64[0];
  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v13, a2);
  while (v7 != v6)
  {
    std::function<float ()(float)>::operator()(v13, *v7);
    *v8++ = v9;
    ++v7;
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v13);
  MIL::ValueInference::Tensor<float>::Tensor(a3, &__p, &v12);
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

void sub_2180F22EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float MIL::ValueInference::Tensor<float>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<float>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v11, v12, (v12 - v11) >> 2);
  MIL::ValueInference::Tensor<float>::Tensor(a3, &v22, &__p);
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

void sub_2180F25C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<float>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(*(a1 + 32) + 4 * i) != 0.0)
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

void *anonymous namespace::UnflattenIndex@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = a1[1];
  v6 = 1;
  if (*a1 != v5)
  {
    v7 = *a1;
    do
    {
      v8 = *v7++;
      v6 *= v8;
    }

    while (v7 != v5);
  }

  if (v6 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "flattened index must be smaller than the number of elements.");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a3, v5 - *a1);
  v10 = result[1] - *result;
  if (v10)
  {
    v11 = v10 >> 3;
    if ((v10 >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 >> 3;
    }

    v13 = 8 * v11 - 8;
    v14 = (*result + v13);
    v15 = (*a1 + v13);
    do
    {
      *v14-- = v3 % *v15;
      v16 = *v15--;
      v3 /= v16;
      --v12;
    }

    while (v12);
  }

  return result;
}

void MIL::ValueInference::Tensor<float>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<float>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<float>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<float>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<float>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F2BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<float>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<float>::Zeros(&__p, a3);
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

void sub_2180F2DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void MIL::ValueInference::Tensor<float>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<float>::Zeros(&__p, a3);
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

void sub_2180F31E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
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

uint64_t MIL::ValueInference::Tensor<float>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1 + 1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = (v9 - v8) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v62, *a2, a2[1]);
  for (i = v63; i; i = *i)
  {
    v12 = i[2];
    if (v12 >= v10)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v59);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "axis(", 5);
      v35 = MEMORY[0x21CEAFB80](v34, v12);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ") must be smaller than the number of input dimensions(", 54);
      v37 = MEMORY[0x21CEAFB80](v36, (v9 - v8) >> 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v58);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  memset(&v58, 0, sizeof(v58));
  v55 = 0;
  v56 = 0;
  v57 = 0;
  if (v9 == v8)
  {
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (v10 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v9 - v8) >> 3;
    }

    do
    {
      v52[0] = v14;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v62, v52))
      {
        if (a3)
        {
          v52[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v59, v52);
        }

        v16 = &v55;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v59, (*v7 + v13));
        v16 = &v58;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v16->__r_.__value_.__l.__data_, (*v7 + v13));
      ++v14;
      v13 += 8;
    }

    while (v15 != v14);
    v17 = v59;
    v18 = v60;
  }

  __p = 0uLL;
  v54 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v17, v18, (v18 - v17) >> 3);
  MIL::ValueInference::Tensor<float>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v19 = 0;
  v20 = *(a5 + 40);
  v21 = (v20 - *(a5 + 32)) >> 2;
  if (v10 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = (v9 - v8) >> 3;
  }

  if (v21 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v20 - *(a5 + 32)) >> 2;
  }

  v39 = v23;
  v40 = v21;
  v41 = (a1[5] - a1[4]) >> 2;
  v24 = v41 / v21;
  do
  {
    v43 = v19;
    LODWORD(v5) &= 0xFFFFFF00;
    if (v40 <= v41)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        if (v9 != v8)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          do
          {
            v46 = v27;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v62, &v46))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v47, v50 + v28++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v47, v52[0] + v29++);
            }

            ++v27;
          }

          while (v22 != v27);
        }

        v31 = a1[4];
        if (v26)
        {
          std::function<float ()(float,float)>::operator()(a4, v5, *(v31 + 4 * v30));
          v5 = v32;
        }

        else
        {
          v5 = *(v31 + 4 * v30);
        }

        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        ++v25;
        v26 = 1;
      }

      while (v25 < v24);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    v19 = v43 + 1;
  }

  while (v43 + 1 != v39);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58.__r_.__value_.__r.__words[0])
  {
    v58.__r_.__value_.__l.__size_ = v58.__r_.__value_.__r.__words[0];
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v62);
}

void sub_2180F36F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 144);
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

uint64_t std::function<float ()(float,float)>::operator()(uint64_t a1, float a2, float a3)
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

void MIL::ValueInference::Tensor<float>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<float>::Zeros(__p, a3);
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

void sub_2180F38D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void MIL::ValueInference::Tensor<double>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<double>(&v12, *a1);
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
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, v13, v13 + 8 * v14, v14);
  MIL::ValueInference::Tensor<double>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<double>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 6, __p);
}

void sub_2180F3B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<double>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9CA8;
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

void sub_2180F3C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<double>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9CA8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t MIL::ValueInference::Tensor<double>::GetDataView(uint64_t a1)
{
  if (*(a1 + 40) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

void MIL::ValueInference::Tensor<double>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  std::vector<double>::vector[abi:ne200100](&v12, (a1[5] - a1[4]) >> 3);
  __p = 0uLL;
  v11 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v12.n128_u64[0];
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v13, a2);
  while (v7 != v6)
  {
    std::function<double ()(double)>::operator()(v13, *v7);
    *v8++ = v9;
    ++v7;
  }

  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13);
  MIL::ValueInference::Tensor<double>::Tensor(a3, &__p, &v12);
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

void sub_2180F3E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double MIL::ValueInference::Tensor<double>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<double>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(&__p, v11, v12, (v12 - v11) >> 3);
  MIL::ValueInference::Tensor<double>::Tensor(a3, &v22, &__p);
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

void sub_2180F4134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<double>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(*(a1 + 32) + 8 * i) != 0.0)
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

void MIL::ValueInference::Tensor<double>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<double>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<double>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<double>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<double>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F4654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<double>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<double>::Zeros(&__p, a3);
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

void sub_2180F4858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void MIL::ValueInference::Tensor<double>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<double>::Zeros(&__p, a3);
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

void sub_2180F4C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
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

uint64_t MIL::ValueInference::Tensor<double>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1 + 1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = (v9 - v8) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v62, *a2, a2[1]);
  for (i = v63; i; i = *i)
  {
    v12 = i[2];
    if (v12 >= v10)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v59);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, "axis(", 5);
      v35 = MEMORY[0x21CEAFB80](v34, v12);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ") must be smaller than the number of input dimensions(", 54);
      v37 = MEMORY[0x21CEAFB80](v36, (v9 - v8) >> 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v58);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  memset(&v58, 0, sizeof(v58));
  v55 = 0;
  v56 = 0;
  v57 = 0;
  if (v9 == v8)
  {
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (v10 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v9 - v8) >> 3;
    }

    do
    {
      v52[0] = v14;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v62, v52))
      {
        if (a3)
        {
          v52[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v59, v52);
        }

        v16 = &v55;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v59, (*v7 + v13));
        v16 = &v58;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v16->__r_.__value_.__l.__data_, (*v7 + v13));
      ++v14;
      v13 += 8;
    }

    while (v15 != v14);
    v17 = v59;
    v18 = v60;
  }

  __p = 0uLL;
  v54 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v17, v18, (v18 - v17) >> 3);
  MIL::ValueInference::Tensor<double>::Zeros(&__p, a5);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v19 = 0;
  v20 = *(a5 + 40);
  v21 = (v20 - *(a5 + 32)) >> 3;
  if (v10 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = (v9 - v8) >> 3;
  }

  if (v21 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v20 - *(a5 + 32)) >> 3;
  }

  v39 = v23;
  v40 = v21;
  v41 = (a1[5] - a1[4]) >> 3;
  v24 = v41 / v21;
  do
  {
    v43 = v19;
    *&v5 &= 0xFFFFFFFFFFFFFF00;
    if (v40 <= v41)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        if (v9 != v8)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          do
          {
            v46 = v27;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v62, &v46))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v47, v50 + v28++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v47, v52[0] + v29++);
            }

            ++v27;
          }

          while (v22 != v27);
        }

        v31 = a1[4];
        if (v26)
        {
          std::function<double ()(double,double)>::operator()(a4, v5, *(v31 + 8 * v30));
          v5 = v32;
        }

        else
        {
          v5 = *(v31 + 8 * v30);
        }

        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        ++v25;
        v26 = 1;
      }

      while (v25 < v24);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    v19 = v43 + 1;
  }

  while (v43 + 1 != v39);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58.__r_.__value_.__r.__words[0])
  {
    v58.__r_.__value_.__l.__size_ = v58.__r_.__value_.__r.__words[0];
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v62);
}

void sub_2180F5170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v41 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a39);
      std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v42 - 144);
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

uint64_t std::function<double ()(double,double)>::operator()(uint64_t a1, double a2, double a3)
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

void MIL::ValueInference::Tensor<double>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<double>::Zeros(__p, a3);
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

void sub_2180F5350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void MIL::ValueInference::Tensor<unsigned char>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<unsigned char>(&v12, *a1);
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
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v13, v13 + v14, v14);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<unsigned char>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 14, __p);
}

void sub_2180F55D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned char>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E5F20;
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

void sub_2180F5710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<unsigned char>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E5F20;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t MIL::ValueInference::Tensor<unsigned char>::GetDataView(uint64_t a1)
{
  if (*(a1 + 40) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

void MIL::ValueInference::Tensor<unsigned char>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a3, &__p, &v11);
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

void sub_2180F58CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned char>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<unsigned char>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a3, &v22, &__p);
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

void sub_2180F5B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<unsigned char>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
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

void MIL::ValueInference::Tensor<unsigned char>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned char>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<unsigned char>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<unsigned char>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<unsigned char>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F60B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<unsigned char>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned char>::Zeros(&__p, a3);
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

void sub_2180F62A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void MIL::ValueInference::Tensor<unsigned char>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned char>::Zeros(&__p, a3);
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

void sub_2180F66A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
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

uint64_t MIL::ValueInference::Tensor<unsigned char>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1 + 1;
  v44 = a1[1];
  v7 = a1[2];
  v8 = (v7 - v44) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v61, *a2, a2[1]);
  for (i = v62; i; i = *i)
  {
    v10 = i[2];
    if (v10 >= v8)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "axis(", 5);
      v33 = MEMORY[0x21CEAFB80](v32, v10);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") must be smaller than the number of input dimensions(", 54);
      v35 = MEMORY[0x21CEAFB80](v34, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v57);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  memset(&v57, 0, sizeof(v57));
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (v7 == v44)
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
      v13 = (v7 - v44) >> 3;
    }

    do
    {
      v51[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v61, v51))
      {
        if (a3)
        {
          v51[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v58, v51);
        }

        v14 = &v54;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v58, (*v6 + v11));
        v14 = &v57;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v14->__r_.__value_.__l.__data_, (*v6 + v11));
      ++v12;
      v11 += 8;
    }

    while (v13 != v12);
    v15 = v58;
    v16 = v59;
  }

  __p = 0uLL;
  v53 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v15, v16, (v16 - v15) >> 3);
  MIL::ValueInference::Tensor<unsigned char>::Zeros(&__p, a5);
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
    v20 = (v7 - v44) >> 3;
  }

  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18 - *(a5 + 32);
  }

  v37 = v21;
  v38 = v19;
  v39 = a1[5] - a1[4];
  v22 = v39 / v19;
  do
  {
    v41 = v17;
    if (v38 <= v39)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      do
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        if (v7 != v44)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          do
          {
            v45 = v26;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v61, &v45))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v46, v49 + v27++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v46, v51[0] + v28++);
            }

            ++v26;
          }

          while (v20 != v26);
        }

        v30 = a1[4];
        if (v25)
        {
          v23 = std::function<unsigned char ()(unsigned char,unsigned char)>::operator()(a4, v23, *(v30 + v29));
        }

        else
        {
          v23 = *(v30 + v29);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
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

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v51[0])
    {
      v51[1] = v51[0];
      operator delete(v51[0]);
    }

    v17 = v41 + 1;
  }

  while (v41 + 1 != v37);
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v57.__r_.__value_.__r.__words[0])
  {
    v57.__r_.__value_.__l.__size_ = v57.__r_.__value_.__r.__words[0];
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v61);
}

void sub_2180F6BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
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

uint64_t std::function<unsigned char ()(unsigned char,unsigned char)>::operator()(uint64_t a1, char a2, char a3)
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

void MIL::ValueInference::Tensor<unsigned char>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<unsigned char>::Zeros(__p, a3);
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

void sub_2180F6D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void MIL::ValueInference::Tensor<unsigned short>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<unsigned short>(&v12, *a1);
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
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, v13, v13 + 2 * v14, v14);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<unsigned short>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 15, __p);
}

void sub_2180F7018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned short>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9C48;
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

void sub_2180F7154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<unsigned short>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9C48;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t MIL::ValueInference::Tensor<unsigned short>::GetDataView(uint64_t a1)
{
  if (*(a1 + 40) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

void MIL::ValueInference::Tensor<unsigned short>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<unsigned short>::vector[abi:ne200100](&v11, (a1[5] - a1[4]) >> 1);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<unsigned short ()(unsigned short)>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<unsigned short ()(unsigned short)>::operator()(v12, *v7++);
  }

  std::__function::__value_func<unsigned short ()(unsigned short)>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a3, &__p, &v11);
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

void sub_2180F7318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned short>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<unsigned short>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&__p, v11, v12, (v12 - v11) >> 1);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a3, &v22, &__p);
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

void sub_2180F75EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<unsigned short>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(*(a1 + 32) + 2 * i))
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

void MIL::ValueInference::Tensor<unsigned short>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned short>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<unsigned short>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<unsigned short>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<unsigned short>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F7B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<unsigned short>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned short>::Zeros(&__p, a3);
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

void sub_2180F7D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void MIL::ValueInference::Tensor<unsigned short>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned short>::Zeros(&__p, a3);
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

void sub_2180F8104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
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

uint64_t MIL::ValueInference::Tensor<unsigned short>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  MIL::ValueInference::Tensor<unsigned short>::Zeros(&__p, a5);
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
          LOWORD(v8) = std::function<unsigned short ()(unsigned short,unsigned short)>::operator()(a4, v8, *(v29 + 2 * v28));
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

void sub_2180F8608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
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

uint64_t std::function<unsigned short ()(unsigned short,unsigned short)>::operator()(uint64_t a1, __int16 a2, __int16 a3)
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

void MIL::ValueInference::Tensor<unsigned short>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<unsigned short>::Zeros(__p, a3);
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

void sub_2180F87EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void MIL::ValueInference::Tensor<unsigned int>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<unsigned int>(&v12, *a1);
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
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, v13, v13 + 4 * v14, v14);
  MIL::ValueInference::Tensor<unsigned int>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<unsigned int>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 16, __p);
}

void sub_2180F8A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned int>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9CC8;
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

void sub_2180F8BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<unsigned int>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9CC8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void MIL::ValueInference::Tensor<unsigned int>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<unsigned int>::vector[abi:ne200100](&v11, (a1[5] - a1[4]) >> 2);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<unsigned int ()>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<unsigned int ()>::operator()(v12, *v7++);
  }

  std::__function::__value_func<unsigned int ()>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<unsigned int>::Tensor(a3, &__p, &v11);
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

void sub_2180F8D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned int>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<unsigned int>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(&__p, v11, v12, (v12 - v11) >> 2);
  MIL::ValueInference::Tensor<unsigned int>::Tensor(a3, &v22, &__p);
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

void sub_2180F9008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<unsigned int>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
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

void MIL::ValueInference::Tensor<unsigned int>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned int>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<unsigned int>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<unsigned int>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<unsigned int>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180F9524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<unsigned int>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned int>::Zeros(&__p, a3);
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

void sub_2180F9720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void MIL::ValueInference::Tensor<unsigned int>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned int>::Zeros(&__p, a3);
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

void sub_2180F9B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
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

uint64_t MIL::ValueInference::Tensor<unsigned int>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  MIL::ValueInference::Tensor<unsigned int>::Zeros(&__p, a5);
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
          LODWORD(v8) = std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(a4, v8, *(v29 + 4 * v28));
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

void sub_2180FA028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
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

uint64_t std::function<unsigned int ()(unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3)
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

void MIL::ValueInference::Tensor<unsigned int>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<unsigned int>::Zeros(__p, a3);
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

void sub_2180FA20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void MIL::ValueInference::Tensor<unsigned long long>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<unsigned long long>(&v12, *a1);
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
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, v13, v13 + 8 * v14, v14);
  MIL::ValueInference::Tensor<unsigned long long>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<unsigned long long>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 17, __p);
}

void sub_2180FA498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned long long>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9CE8;
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

void sub_2180FA5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<unsigned long long>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9CE8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void MIL::ValueInference::Tensor<unsigned long long>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<unsigned long long>::vector[abi:ne200100](&v11, (a1[5] - a1[4]) >> 3);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<unsigned long long ()(unsigned long long)>::operator()(v12, *v7++);
  }

  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<unsigned long long>::Tensor(a3, &__p, &v11);
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

void sub_2180FA754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<unsigned long long>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<unsigned long long>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&__p, v11, v12, (v12 - v11) >> 3);
  MIL::ValueInference::Tensor<unsigned long long>::Tensor(a3, &v22, &__p);
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

void sub_2180FAA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<unsigned long long>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
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

void MIL::ValueInference::Tensor<unsigned long long>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned long long>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<unsigned long long>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<unsigned long long>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<unsigned long long>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180FAF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<unsigned long long>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned long long>::Zeros(&__p, a3);
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

void sub_2180FB140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void MIL::ValueInference::Tensor<unsigned long long>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<unsigned long long>::Zeros(&__p, a3);
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

void sub_2180FB544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
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

uint64_t MIL::ValueInference::Tensor<unsigned long long>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  MIL::ValueInference::Tensor<unsigned long long>::Zeros(&__p, a5);
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
          v8 = std::function<unsigned long long ()(unsigned long long,unsigned long long)>::operator()(a4, v8, *(v29 + 8 * v28));
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

void sub_2180FBA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
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

uint64_t std::function<unsigned long long ()(unsigned long long,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
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

void MIL::ValueInference::Tensor<unsigned long long>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<unsigned long long>::Zeros(__p, a3);
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

void sub_2180FBC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void MIL::ValueInference::Tensor<signed char>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<signed char>(&v12, *a1);
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
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&__p, v13, v13 + v14, v14);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<signed char>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 9, __p);
}

void sub_2180FBEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<signed char>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E5F50;
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

void sub_2180FBFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<signed char>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E5F50;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void MIL::ValueInference::Tensor<signed char>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<signed char>::vector[abi:ne200100](&v11, a1[5] - a1[4]);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<signed char ()(signed char)>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<signed char ()(signed char)>::operator()(v12, *v7++);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<signed char>::Tensor(a3, &__p, &v11);
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

void sub_2180FC164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<signed char>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<signed char>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  std::vector<signed char>::__init_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(&__p, v11, v12, v12 - v11);
  MIL::ValueInference::Tensor<signed char>::Tensor(a3, &v22, &__p);
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

void sub_2180FC434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<signed char>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
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

void MIL::ValueInference::Tensor<signed char>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<signed char>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<signed char>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<signed char>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<signed char>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180FC94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ValueInference::Tensor<signed char>::Concat(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<signed char>::Zeros(&__p, a3);
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

void sub_2180FCB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void MIL::ValueInference::Tensor<signed char>::BlockwiseMerge(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  MIL::ValueInference::Tensor<signed char>::Zeros(&__p, a3);
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

void sub_2180FCF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
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

uint64_t MIL::ValueInference::Tensor<signed char>::Reduce@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1 + 1;
  v44 = a1[1];
  v7 = a1[2];
  v8 = (v7 - v44) >> 3;
  std::unordered_set<unsigned long long>::unordered_set<std::__wrap_iter<unsigned long long const*>>(v61, *a2, a2[1]);
  for (i = v62; i; i = *i)
  {
    v10 = i[2];
    if (v10 >= v8)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "axis(", 5);
      v33 = MEMORY[0x21CEAFB80](v32, v10);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ") must be smaller than the number of input dimensions(", 54);
      v35 = MEMORY[0x21CEAFB80](v34, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ").", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v57);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
    }
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  memset(&v57, 0, sizeof(v57));
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (v7 == v44)
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
      v13 = (v7 - v44) >> 3;
    }

    do
    {
      v51[0] = v12;
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v61, v51))
      {
        if (a3)
        {
          v51[0] = 1;
          std::vector<unsigned long long>::push_back[abi:ne200100](&v58, v51);
        }

        v14 = &v54;
      }

      else
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v58, (*v6 + v11));
        v14 = &v57;
      }

      std::vector<unsigned long long>::push_back[abi:ne200100](&v14->__r_.__value_.__l.__data_, (*v6 + v11));
      ++v12;
      v11 += 8;
    }

    while (v13 != v12);
    v15 = v58;
    v16 = v59;
  }

  __p = 0uLL;
  v53 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v15, v16, (v16 - v15) >> 3);
  MIL::ValueInference::Tensor<signed char>::Zeros(&__p, a5);
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
    v20 = (v7 - v44) >> 3;
  }

  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18 - *(a5 + 32);
  }

  v37 = v21;
  v38 = v19;
  v39 = a1[5] - a1[4];
  v22 = v39 / v19;
  do
  {
    v41 = v17;
    if (v38 <= v39)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      do
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        if (v7 != v44)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          do
          {
            v45 = v26;
            if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v61, &v45))
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v46, v49 + v27++);
            }

            else
            {
              std::vector<unsigned long long>::push_back[abi:ne200100](&v46, v51[0] + v28++);
            }

            ++v26;
          }

          while (v20 != v26);
        }

        v30 = a1[4];
        if (v25)
        {
          v23 = std::function<signed char ()(signed char,signed char)>::operator()(a4, v23, *(v30 + v29));
        }

        else
        {
          v23 = *(v30 + v29);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
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

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v51[0])
    {
      v51[1] = v51[0];
      operator delete(v51[0]);
    }

    v17 = v41 + 1;
  }

  while (v41 + 1 != v37);
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v57.__r_.__value_.__r.__words[0])
  {
    v57.__r_.__value_.__l.__size_ = v57.__r_.__value_.__r.__words[0];
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(v61);
}

void sub_2180FD444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
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

uint64_t std::function<signed char ()(signed char,signed char)>::operator()(uint64_t a1, char a2, char a3)
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

void MIL::ValueInference::Tensor<signed char>::Zeros(MIL *a1@<X0>, const MIL::IRTensorValueType *a2@<X1>, uint64_t a3@<X8>)
{
  MIL::GetTensorShapeWithDimensionsAllKnown(a1, a2, v6);
  *__p = *v6;
  v5 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  MIL::ValueInference::Tensor<signed char>::Zeros(__p, a3);
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

void sub_2180FD628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

void MIL::ValueInference::Tensor<short>::FromIRTensorValue(void *a1@<X0>, uint64_t a2@<X8>)
{
  MIL::IRTensorValue::TryGetDataView<short>(&v12, *a1);
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
  std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(&__p, v13, v13 + 2 * v14, v14);
  MIL::ValueInference::Tensor<short>::Tensor(a2, &v11, &__p);
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

void MIL::ValueInference::Tensor<short>::ToIRTensorValue(uint64_t a1, MIL::IRConstantDimension *a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(__p, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
  MIL::IRTensorValueType::Make(a2, 10, __p);
}

void sub_2180FD8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<short>::Tensor(uint64_t a1, __n128 *a2, __n128 *a3)
{
  *a1 = &unk_2829E9C78;
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

void sub_2180FD9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
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

double MIL::ValueInference::Tensor<short>::Tensor(uint64_t a1)
{
  *a1 = &unk_2829E9C78;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void MIL::ValueInference::Tensor<short>::ForEach(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::vector<short>::vector[abi:ne200100](&v11, (a1[5] - a1[4]) >> 1);
  __p = 0uLL;
  v10 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
  v7 = a1[4];
  v6 = a1[5];
  v8 = v11.n128_u64[0];
  std::__function::__value_func<short ()(short)>::__value_func[abi:ne200100](v12, a2);
  while (v7 != v6)
  {
    *v8++ = std::function<short ()(short)>::operator()(v12, *v7++);
  }

  std::__function::__value_func<short ()(short)>::~__value_func[abi:ne200100](v12);
  MIL::ValueInference::Tensor<short>::Tensor(a3, &__p, &v11);
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

void sub_2180FDB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ValueInference::Tensor<short>::GetScalarData(void *a1)
{
  if (a1[1] != a1[2] || (v1 = a1[4], a1[5] - v1 != 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Tensor is not a scalar.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return *v1;
}

void MIL::ValueInference::Tensor<short>::Reshape(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
  std::vector<short>::__init_with_size[abi:ne200100]<std::__wrap_iter<short const*>,std::__wrap_iter<short const*>>(&__p, v11, v12, (v12 - v11) >> 1);
  MIL::ValueInference::Tensor<short>::Tensor(a3, &v22, &__p);
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

void sub_2180FDE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
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

void MIL::ValueInference::Tensor<short>::NonZero(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(*(a1 + 32) + 2 * i))
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

void MIL::ValueInference::Tensor<short>::SubTensor(void *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
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
  MIL::ValueInference::Tensor<short>::Zeros(&__p, a3);
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

void MIL::ValueInference::Tensor<short>::Zeros(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_u64[0];
  v5 = 1;
  while (v4 != a1->n128_u64[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  std::vector<short>::vector[abi:ne200100](&__p, v5);
  MIL::ValueInference::Tensor<short>::Tensor(a2, a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_2180FE35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}