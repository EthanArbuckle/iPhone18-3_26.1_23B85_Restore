void sub_241BA4DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_241BA5478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_241BA579C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
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
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
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

void std::vector<PatchInfo>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PatchInfo>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_241BA5F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_241BA5FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_241BA6070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_241BA6104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEEC2B8ne200100EmRKS1_(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_241BA629C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D0F798, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ControlPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InstanceInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ControlPoint>::__init_with_size[abi:ne200100]<ControlPoint const*,ControlPoint const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ControlPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241BA652C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ControlPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ControlPoint>>(a1, a2);
  }

  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

char *std::vector<ControlPoint>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ControlPoint*>,std::__wrap_iter<ControlPoint*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ControlPoint>>(a1, v15);
    }

    v36 = 16 * (v13 >> 4);
    v37 = 48 * a5;
    v38 = v36;
    do
    {
      v39 = *v7;
      v40 = v7[2];
      v38[1] = v7[1];
      v38[2] = v40;
      *v38 = v39;
      v38 += 3;
      v7 += 3;
      v37 -= 48;
    }

    while (v37);
    memcpy((v36 + 48 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 48 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v36;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 4)) >= a5)
  {
    v30 = 3 * a5;
    v31 = &__dst[48 * a5];
    v32 = (v10 - 48 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[2];
      v33[1] = v32[1];
      v33[2] = v35;
      *v33 = v34;
      v33 += 3;
      v32 += 3;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[48 * a5], __dst, v10 - v31);
    }

    v29 = 16 * v30;
    v27 = v5;
    v28 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[48 * a5];
    v21 = v10 + v18;
    if (&v19[-48 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -48 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 32);
        v24[1] = *(v23 - v7 + 16);
        v24[2] = v26;
        *v24 = v25;
        v23 += 48;
        v22 += 48;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[48 * a5], v5, v19 - v20);
    }

    v27 = v5;
    v28 = v7;
    v29 = v10 - v5;
LABEL_28:
    memmove(v27, v28, v29);
  }

  return v5;
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241BA687C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - v5;
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

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
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
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t std::vector<PatchInfo>::__init_with_size[abi:ne200100]<PatchInfo const*,PatchInfo const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PatchInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241BA6B90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PatchInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PatchInfo>>(a1, a2);
  }

  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PatchInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<PatchInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PatchInfo*>,std::__wrap_iter<PatchInfo*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PatchInfo>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
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

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
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
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
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

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241BA6EBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<simd_float4x4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ControlPoint>::__init_with_size[abi:ne200100]<ControlPoint*,ControlPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ControlPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241BA6F80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PatchInfo>::__init_with_size[abi:ne200100]<PatchInfo*,PatchInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PatchInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241BA6FFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<InstanceInfo>::__init_with_size[abi:ne200100]<InstanceInfo*,InstanceInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<InstanceInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241BA7078(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<InstanceInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<InstanceInfo>>(a1, a2);
  }

  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

char *std::vector<InstanceInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<InstanceInfo*>,std::__wrap_iter<InstanceInfo*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 4);
    if (v12 > 0x333333333333333)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = __dst - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x199999999999999)
    {
      v15 = 0x333333333333333;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InstanceInfo>>(a1, v15);
    }

    v38 = 16 * (v13 >> 4);
    v39 = 80 * a5;
    v40 = v38;
    do
    {
      *v40 = *v7;
      v41 = v7[1];
      v42 = v7[2];
      v43 = v7[4];
      v40[3] = v7[3];
      v40[4] = v43;
      v40[1] = v41;
      v40[2] = v42;
      v40 += 5;
      v7 += 5;
      v39 -= 80;
    }

    while (v39);
    memcpy((v38 + 80 * a5), v5, *(a1 + 8) - v5);
    v44 = *a1;
    v45 = v38 + 80 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v46 = v5 - v44;
    v47 = (v38 - (v5 - v44));
    memcpy(v47, v44, v46);
    v48 = *a1;
    *a1 = v47;
    *(a1 + 8) = v45;
    *(a1 + 16) = 0;
    if (v48)
    {
      operator delete(v48);
    }

    return v38;
  }

  v16 = v10 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst) >> 4)) >= a5)
  {
    v31 = 5 * a5;
    v32 = &__dst[80 * a5];
    v33 = (v10 - 80 * a5);
    v34 = *(a1 + 8);
    while (v33 < v10)
    {
      *v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[4];
      v34[3] = v33[3];
      v34[4] = v37;
      v34[1] = v35;
      v34[2] = v36;
      v33 += 5;
      v34 += 5;
    }

    *(a1 + 8) = v34;
    if (v10 != v32)
    {
      memmove(&__dst[80 * a5], __dst, v10 - v32);
    }

    v30 = 16 * v31;
    v28 = v5;
    v29 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[80 * a5];
    v21 = v10 + v18;
    if (&v19[-80 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -80 * a5];
      do
      {
        v24 = (v22 - v7);
        *v24 = *(v23 - v7);
        v25 = *(v23 - v7 + 16);
        v26 = *(v23 - v7 + 32);
        v27 = *(v23 - v7 + 64);
        v24[3] = *(v23 - v7 + 48);
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
        v23 += 80;
        v22 += 80;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[80 * a5], v5, v19 - v20);
    }

    v28 = v5;
    v29 = v7;
    v30 = v10 - v5;
LABEL_28:
    memmove(v28, v29, v30);
  }

  return v5;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_241BA947C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<ControlPoint>::__assign_with_size[abi:ne200100]<ControlPoint*,ControlPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ControlPoint>::__vallocate[abi:ne200100](v6, v11);
    }

    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
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

double vector_lerp(float32x4_t a1, float32x4_t a2, float a3)
{
  *&result = vmlaq_n_f32(vmulq_n_f32(a2, a3), a1, 1.0 - a3).u64[0];
  return result;
}

{
  *&result = vmlaq_n_f32(vmulq_n_f32(a2, a3), a1, 1.0 - a3).u64[0];
  return result;
}

__n64 matrix3x3_from_quaternion(float32x4_t a1)
{
  v1 = vmuls_lane_f32(a1.f32[0], *a1.f32, 1);
  v2 = vmuls_lane_f32(a1.f32[2], a1, 3);
  result.n64_f32[0] = ((vmuls_lane_f32(a1.f32[1], *a1.f32, 1) + vmuls_lane_f32(a1.f32[2], a1, 2)) * -2.0) + 1.0;
  result.n64_f32[1] = (v1 + v2) + (v1 + v2);
  return result;
}

double matrix3x3_rotation(float a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v8 = vmulq_n_f32(a2, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v4 = __sincosf_stret(a1);
  v5 = v8;
  *&v6 = v4.__cosval + (vmulq_f32(v5, v5).f32[0] * (1.0 - v4.__cosval));
  *(&v6 + 1) = vmuls_lane_f32(v4.__sinval, v8, 2) + (vmuls_lane_f32(v5.f32[0], *v5.f32, 1) * (1.0 - v4.__cosval));
  return v6;
}

double matrix3x3_rotation(float a1, float32x4_t a2, float32_t a3, float32_t a4)
{
  a2.f32[1] = a3;
  a2.f32[2] = a4;
  return matrix3x3_rotation(a1, a2);
}

double matrix_inverse_transpose(simd_float3x3 a1)
{
  v1 = vzip1q_s32(a1.columns[0], a1.columns[2]);
  a1.columns[2] = vzip2q_s32(a1.columns[0], a1.columns[2]);
  a1.columns[0] = vzip1q_s32(v1, a1.columns[1]);
  a1.columns[2] = vzip1q_s32(a1.columns[2], vdupq_laneq_s32(a1.columns[1], 2));
  a1.columns[1] = vzip2q_s32(v1, vdupq_lane_s32(*a1.columns[1].f32, 1));
  *&result = __invert_f3(a1);
  return result;
}

__n64 matrix4x4_from_quaternion(float32x4_t a1)
{
  v1 = vmuls_lane_f32(a1.f32[0], *a1.f32, 1);
  v2 = vmuls_lane_f32(a1.f32[1], *a1.f32, 1);
  v3 = vmuls_lane_f32(a1.f32[2], a1, 2);
  v4 = vmuls_lane_f32(a1.f32[2], a1, 3);
  v5 = (v1 + v4) + (v1 + v4);
  result.n64_f32[0] = ((v2 + v3) * -2.0) + 1.0;
  result.n64_f32[1] = v5;
  return result;
}

__n64 matrix4x4_rotation(float a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v7 = vmulq_n_f32(a2, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v4 = __sincosf_stret(a1);
  v5 = v7;
  result.n64_f32[0] = v4.__cosval + (vmulq_f32(v5, v5).f32[0] * (1.0 - v4.__cosval));
  result.n64_f32[1] = vmuls_lane_f32(v4.__sinval, v7, 2) + (vmuls_lane_f32(v5.f32[0], *v5.f32, 1) * (1.0 - v4.__cosval));
  return result;
}

__n64 matrix4x4_rotation(float a1, float32x4_t a2, float32_t a3, float32_t a4)
{
  a2.f32[1] = a3;
  a2.f32[2] = a4;
  return matrix4x4_rotation(a1, a2);
}

double matrix4x4_translation(float a1, float a2, float a3)
{
  __asm { FMOV            V3.4S, #1.0 }

  return *&_PromotedConst;
}

__n64 matrix_look_at(float32x4_t a1, float32_t a2, float32_t a3, float32x4_t a4, float32_t a5, float32_t a6, float32x4_t a7, float32_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int32 a17)
{
  a1.f32[1] = a2;
  a1.f32[2] = a3;
  a4.f32[1] = a5;
  a4.f32[2] = a6;
  a7.f32[1] = a8;
  a7.i32[2] = a17;
  v17 = vsubq_f32(a1, a4);
  v18 = vmulq_f32(v17, v17);
  *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(v19);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
  v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
  v22 = vmlaq_f32(vmulq_f32(v21, vnegq_f32(a7)), v20, vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL));
  v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
  v24 = vmulq_f32(v22, v22);
  *&v25 = v24.f32[1] + (v24.f32[2] + v24.f32[0]);
  *v24.f32 = vrsqrte_f32(v25);
  *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
  v26 = vmulq_n_f32(v23, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
  result.n64_u32[0] = v26.i32[0];
  result.n64_u32[1] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*&v26, *&v26), *&v26, 0xCuLL), vnegq_f32(v20)), v26, v21).u32[2];
  __asm { FMOV            V3.4S, #1.0 }

  return result;
}

double matrix_inverse_transpose(simd_float4x4 a1)
{
  v1 = vzip1q_s32(a1.columns[0], a1.columns[2]);
  v2 = vzip2q_s32(a1.columns[0], a1.columns[2]);
  a1.columns[2] = vzip1q_s32(a1.columns[1], a1.columns[3]);
  a1.columns[3] = vzip2q_s32(a1.columns[1], a1.columns[3]);
  a1.columns[0] = vzip1q_s32(v1, a1.columns[2]);
  a1.columns[1] = vzip2q_s32(v1, a1.columns[2]);
  a1.columns[2] = vzip1q_s32(v2, a1.columns[3]);
  a1.columns[3] = vzip2q_s32(v2, a1.columns[3]);
  *&result = __invert_f4(a1);
  return result;
}

double quaternion(simd_float3x3 a1)
{
  v1 = vdup_lane_s32(*a1.columns[0].f32, 0);
  __asm { FMOV            V4.2S, #1.0 }

  *a1.columns[0].f32 = vadd_f32(*a1.columns[0].f32, _D4);
  v7 = vsub_f32(_D4, v1);
  v8 = vext_s8(v7, *a1.columns[0].f32, 4uLL);
  a1.columns[0].i32[1] = v7.i32[1];
  *&a1.columns[0].u32[2] = v8;
  a1.columns[1] = vdupq_lane_s32(*a1.columns[1].f32, 1);
  a1.columns[0] = vtrn2q_s32(vrev64q_s32(vsubq_f32(a1.columns[0], a1.columns[1])), vaddq_f32(a1.columns[0], a1.columns[1]));
  a1.columns[1] = vdupq_laneq_s32(a1.columns[2], 2);
  a1.columns[2].i64[0] = vsubq_f32(a1.columns[0], a1.columns[1]).u64[0];
  a1.columns[2].i64[1] = vaddq_f32(*&a1, *(&a1 + 16)).i64[1];
  a1.columns[1].i64[0] = 0x3F0000003F000000;
  a1.columns[1].i64[1] = 0x3F0000003F000000;
  a1.columns[0].i64[0] = vmulq_f32(vsqrtq_f32(a1.columns[2]), a1.columns[1]).u64[0];
  return *a1.columns[0].i64;
}

double quaternion(simd_float4x4 a1)
{
  *a1.columns[3].f32 = vdup_lane_s32(*a1.columns[0].f32, 0);
  __asm { FMOV            V4.2S, #1.0 }

  *a1.columns[0].f32 = vadd_f32(*a1.columns[0].f32, _D4);
  *a1.columns[3].f32 = vsub_f32(_D4, *a1.columns[3].f32);
  v6 = vext_s8(*a1.columns[3].f32, *a1.columns[0].f32, 4uLL);
  a1.columns[0].i32[1] = a1.columns[3].i32[1];
  *&a1.columns[0].u32[2] = v6;
  a1.columns[1] = vdupq_lane_s32(*a1.columns[1].f32, 1);
  a1.columns[0] = vtrn2q_s32(vrev64q_s32(vsubq_f32(a1.columns[0], a1.columns[1])), vaddq_f32(a1.columns[0], a1.columns[1]));
  a1.columns[1] = vdupq_laneq_s32(a1.columns[2], 2);
  a1.columns[2].i64[0] = vsubq_f32(a1.columns[0], a1.columns[1]).u64[0];
  a1.columns[2].i64[1] = vaddq_f32(*&a1, *(&a1 + 16)).i64[1];
  a1.columns[1].i64[0] = 0x3F0000003F000000;
  a1.columns[1].i64[1] = 0x3F0000003F000000;
  a1.columns[0].i64[0] = vmulq_f32(vsqrtq_f32(a1.columns[2]), a1.columns[1]).u64[0];
  return *a1.columns[0].i64;
}

double quaternion_axis(float32x4_t a1, double a2, double a3)
{
  LODWORD(a3) = a1.i32[3];
  if (a1.f32[3] > 1.0)
  {
    v3 = vmulq_f32(a1, a1);
    *v3.i8 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
    v3.i32[0] = vadd_f32(*v3.i8, vdup_lane_s32(*v3.i8, 1)).u32[0];
    v4 = vrsqrte_f32(v3.u32[0]);
    v5 = vmul_f32(v4, vrsqrts_f32(v3.u32[0], vmul_f32(v4, v4)));
    a3 = COERCE_DOUBLE(vmul_f32(v5, vrsqrts_f32(v3.u32[0], vmul_f32(v5, v5))));
    a1 = vmulq_n_f32(a1, *&a3);
    LODWORD(a3) = a1.i32[3];
  }

  *&a3 = sqrtf(1.0 - (*&a3 * *&a3));
  if (*&a3 >= 0.00001)
  {
    v6 = vdiv_f32(*a1.f32, vdup_lane_s32(*&a3, 0));
  }

  else
  {
    v6 = 1065353216;
  }

  return *&v6;
}

double quaternion_normalize(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *v1.i8 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  v1.i32[0] = vadd_f32(*v1.i8, vdup_lane_s32(*v1.i8, 1)).u32[0];
  v2 = vrsqrte_f32(v1.u32[0]);
  v3 = vmul_f32(v2, vrsqrts_f32(v1.u32[0], vmul_f32(v2, v2)));
  *&result = vmulq_n_f32(a1, vmul_f32(v3, vrsqrts_f32(v1.u32[0], vmul_f32(v3, v3))).f32[0]).u64[0];
  return result;
}

double quaternion_inverse(float32x4_t a1)
{
  v1 = vnegq_f32(a1);
  v1.i32[3] = a1.i32[3];
  v2 = vmulq_f32(a1, a1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  *&result = vdivq_f32(v1, vdupq_lane_s32(vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)), 0)).u64[0];
  return result;
}

double quaternion_multiply(int8x16_t a1, float32x4_t a2)
{
  v2 = -*&a1.i32[3];
  *&v3 = -*&a1.i32[2];
  v4 = a2;
  v4.i32[0] = a2.i32[1];
  v5 = vextq_s8(a1, a1, 0xCuLL);
  v5.f32[0] = -*&a1.i32[1];
  v5.f32[3] = -*&a1.i32[1];
  v6 = vrev64q_s32(vmulq_f32(v4, v5));
  v7 = vdupq_lane_s32(*a1.i8, 0);
  v7.i32[0] = a1.i32[1];
  v8 = a2;
  v8.i32[1] = a2.i32[0];
  v9 = vmlaq_f32(v6, v8, v7);
  v10 = vextq_s8(a1, a1, 8uLL);
  v11 = v10;
  v11.i32[1] = v3;
  *v10.i32 = v2;
  v12 = vrev64q_s32(v10);
  v13 = vrev64q_s32(vmlaq_f32(vrev64q_s32(vmlaq_f32(vextq_s8(v9, vrev64q_s32(v9), 8uLL), a2, vzip1q_s32(v11, vrev64q_s32(v11)))), a2, vzip1q_s32(v12, v12)));
  *&result = vextq_s8(v13, v13, 0xCuLL).u64[0];
  return result;
}

double quaternion_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v4 = vmulq_f32(a1, a2);
  v5 = vaddv_f32(vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL)));
  if ((1.0 - v5) >= 0.00001)
  {
    v18 = fminf(fmaxf(v5, -1.0), 1.0);
    v21 = a1;
    v11 = acosf(v18);
    v12 = vmlaq_n_f32(a2, v21, v18);
    v13 = vmulq_f32(v12, v12);
    v14 = v12;
    *v13.i8 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v15 = v11 * a3;
    v13.i32[0] = vadd_f32(*v13.i8, vdup_lane_s32(*v13.i8, 1)).u32[0];
    *v12.f32 = vrsqrte_f32(v13.u32[0]);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v12.f32, *v12.f32)));
    v20 = vmulq_n_f32(v14, vmul_f32(*v12.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v12.f32, *v12.f32))).f32[0]);
    v16 = __sincosf_stret(v15);
    *&result = vmlaq_n_f32(vmulq_n_f32(v20, v16.__sinval), v21, v16.__cosval).u64[0];
  }

  else
  {
    v6 = vmlaq_n_f32(vmulq_n_f32(a2, a3), a1, 1.0 - a3);
    v7 = vmulq_f32(v6, v6);
    *v7.i8 = vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
    v7.i32[0] = vadd_f32(*v7.i8, vdup_lane_s32(*v7.i8, 1)).u32[0];
    v8 = vrsqrte_f32(v7.u32[0]);
    v9 = vmul_f32(v8, vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)));
    *&result = vmulq_n_f32(v6, vmul_f32(v9, vrsqrts_f32(v7.u32[0], vmul_f32(v9, v9))).f32[0]).u64[0];
  }

  return result;
}

double quaternion_rotate_vector(float32x4_t _Q0, float32x4_t a2)
{
  _S3 = _Q0.f32[3];
  _Q2 = vmulq_f32(a2, _Q0);
  v4 = vaddv_f32(*_Q2.f32);
  __asm { FMLA            S2, S3, V0.S[3] }

  v9 = vmlaq_n_f32(vmulq_n_f32(a2, _Q2.f32[0]), _Q0, (_Q2.f32[2] + v4) + (_Q2.f32[2] + v4));
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(_Q0)), a2, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  *&result = vmlaq_n_f32(v9, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), _S3 + _S3).u64[0];
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}