void CoreOptimization::BFGS::UpdateHessian(uint64_t a1, const double **a2, uint64_t a3, const double **a4)
{
  v7 = *(a3 + 8) - *a3;
  v8 = cblas_ddot(v7 >> 3, *a3, 1, *a4, 1);
  if (v8 < 1.0e-30)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "DAMN DAMN, a_ys = ", 18);
    v10 = MEMORY[0x24C19B420](v9, v8);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v19);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v7 << 29)
  {
    if (((v7 << 29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  cblas_dgemv(CblasColMajor, CblasNoTrans, v7 >> 3, v7 >> 3, 1.0, *a2, v7 >> 3, *a4, 1, 0.0, 0, 1);
  v12 = cblas_ddot(v7 >> 3, *a4, 1, 0, 1);
  if (v12 < 1.0e-30)
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "DAMN DAMN, a_sbs = ", 19);
    v14 = MEMORY[0x24C19B420](v13, v12);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v19);
    std::ostream::put();
    std::ostream::flush();
  }

  cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, v7 >> 3, v7 >> 3, 1, 1.0 / v8, *a3, v7 >> 3, *a3, 1, 1.0, *a2, v7 >> 3);
  cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, v7 >> 3, v7 >> 3, 1, -1.0 / v12, 0, v7 >> 3, 0, 1, 1.0, *a2, v7 >> 3);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Hessian in UpdateHessian: ", 26);
  v17 = operator<<(v16, a2);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v19);
  std::ostream::put();
  std::ostream::flush();
}

void sub_2461B1A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t std::valarray<double>::~valarray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

void CoreOptimization::BFGS::UpdateHessianInv(uint64_t a1, const double **a2, uint64_t a3, const double **a4)
{
  v7 = *(a3 + 8) - *a3;
  v8 = cblas_ddot(v7 >> 3, *a3, 1, *a4, 1);
  if (v8 < 1.0e-30)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "DAMN DAMN, a_ys = ", 18);
    v10 = MEMORY[0x24C19B420](v9, v8);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "y = ", 4);
    v13 = operator<<(v12, a3);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "s = ", 4);
    v16 = operator<<(v15, a4);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v7 << 29)
  {
    if (((v7 << 29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  cblas_dgemv(CblasColMajor, CblasNoTrans, v7 >> 3, v7 >> 3, 1.0, *a2, v7 >> 3, *a3, 1, 0.0, 0, 1);
  v18 = cblas_ddot(v7 >> 3, *a3, 1, 0, 1);
  if (v18 < 1.0e-30)
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "DAMN DAMN, a_yby = ", 19);
    v20 = MEMORY[0x24C19B420](v19, v18);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, v7 >> 3, v7 >> 3, 1, (v8 + v18) / (v8 * v8), *a4, v7 >> 3, *a4, 1, 1.0, *a2, v7 >> 3);
  v22 = -1.0 / v8;
  cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, v7 >> 3, v7 >> 3, 1, v22, 0, v7 >> 3, *a4, 1, 1.0, *a2, v7 >> 3);
  cblas_dgemm(CblasColMajor, CblasNoTrans, CblasNoTrans, v7 >> 3, v7 >> 3, 1, v22, *a4, v7 >> 3, 0, 1, 1.0, *a2, v7 >> 3);
}

void sub_2461B2018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void CoreOptimization::BFGS::Solve(uint64_t a1, double **a2, double **a3, double **a4, char a5)
{
  v37 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v8 = (a3[1] - *a3) >> 3;
  __lda = v8;
  std::valarray<double>::valarray(&v40, a2);
  v9 = v40;
  if (v41 == v40)
  {
    v9 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
    LODWORD(v8) = __lda;
  }

  v10 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  __info = 0;
  v11 = dgetrf_(&__lda, &__lda, v9, &__lda, v10, &__info);
  if (__info)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "dgetrf failed", 13);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "error = ", 8);
    v15 = MEMORY[0x24C19B430](v14, __info);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "matrix[] is:", 12);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    v19 = 0;
    v20 = MEMORY[0x277D82678];
    v21 = MEMORY[0x277D82680];
    do
    {
      v22 = MEMORY[0x24C19B420](v20, v9[v19]);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v43, v21);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v43);
      std::ostream::put();
      v11 = std::ostream::flush();
      ++v19;
    }

    while (v19 != 4);
  }

  LODWORD(v43.__locale_) = 1;
  MEMORY[0x28223BE20](v11);
  v25 = (&v36 - ((v24 + 15) & 0xFFFFFFFF0));
  v26 = __lda;
  if (__lda >= 1)
  {
    v27 = *a3;
    v28 = v25;
    do
    {
      v29 = *v27++;
      *v28++ = v29;
      --v26;
    }

    while (v26);
  }

  __info = 0;
  __trans = 78;
  dgetrs_(&__trans, &__lda, &v43, v9, &__lda, v10, v25, &__lda, &__info);
  v30 = v37;
  if (__info)
  {
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "dgetrs failed", 13);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v35);
    printf("No.%d value is illegal\n", -__info);
    exit(1);
  }

  v31 = __lda;
  if (__lda >= 1)
  {
    v32 = *v37;
    do
    {
      v33 = *v25++;
      *v32++ = -v33;
      --v31;
    }

    while (v31);
  }

  if (a5)
  {
    printf("H=(%lf, %lf, %lf, %lf), g=(%lf, %lf), p=(%lf, %lf)\n", **a2, (*a2)[1], (*a2)[2], (*a2)[3], **a3, (*a3)[1], **v30, (*v30)[1]);
  }

  if (v10)
  {
    free(v10);
  }

  if (v9)
  {
    free(v9);
  }

  if (v40)
  {
    if (v41 != v40)
    {
      v41 = (v41 + ((v40 - v41 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v40);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_2461B256C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    v4 = *(v1 - 112);
    if (v4 != v3)
    {
      *(v1 - 112) = &v4[(v3 - v4 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CoreOptimization::BFGS::Optimize(CoreOptimization::BFGS *this)
{
  v2 = *(this + 2) - *(this + 1);
  v62 = 0;
  v63 = 0;
  if (v2 << 29)
  {
    if (((v2 << 29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v60 = 0;
  v61 = 0;
  __p = 0;
  v59 = 0;
  v3 = v2 >> 3;
  __A = 0;
  v57 = 0;
  std::valarray<double>::resize(&__A, (v3 * v3));
  if (*this >= 3)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "B_inv = \n", 9);
    v5 = operator<<(v4, &__A);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v54);
    std::ostream::put();
    std::ostream::flush();
  }

  v7 = __A;
  if (v57 - __A >= 1)
  {
    bzero(__A, v57 - __A);
  }

  if (v3 >= 1)
  {
    v8 = 0;
    v9 = (v3 + 1) & 0xFFFFFFFE;
    v10 = vdupq_n_s64(((v2 >> 3) & 0x7FFFFFFF) - 1);
    v11 = xmmword_2461B5760;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v10, v11));
      if (v13.i8[0])
      {
        *(v7 + (v8 >> 29)) = 1.0;
      }

      if (v13.i8[4])
      {
        *(v7 + ((v8 + 0x100000000) >> 29)) = 1.0;
      }

      v11 = vaddq_s64(v11, v12);
      v8 += 0x200000000;
      v9 -= 2;
    }

    while (v9);
  }

  v14 = 0;
  do
  {
    CoreOptimization::gradient_t::gradient_t(&v54, v3);
    (*(this + 6))(this + 24, *(this + 8), &v54);
    HIDWORD(v15) = -858993459 * v14;
    LODWORD(v15) = HIDWORD(v15);
    if ((v15 >> 1) <= 0x19999999 && *this >= 2)
    {
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "BFGS round ", 11);
      v17 = MEMORY[0x24C19B430](v16, v14);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": beta = ", 9);
      v19 = operator<<(v18, this + 24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " value = ", 9);
      (*(this + 5))(this + 24, *(this + 8));
      v21 = MEMORY[0x24C19B420](v20);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " gradient = ", 12);
      v23 = operator<<(v22, &v54);
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(&v52, MEMORY[0x277D82680]);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
    }

    v25 = norm(&v54);
    if (v25 >= 0.00001)
    {
      if (v3 >= 1)
      {
        locale = v54.__locale_;
        v36 = (v2 >> 3) & 0x7FFFFFFF;
        do
        {
          *locale = -*locale;
          locale = (locale + 8);
          --v36;
        }

        while (v36);
      }

      __Y = v60;
      if (v61 - v60 >= 1)
      {
        bzero(v60, v61 - v60);
      }

      cblas_dgemv(CblasColMajor, CblasNoTrans, v3, v3, -1.0, __A, v3, v54.__locale_, 1, 0.0, __Y, 1);
      CoreOptimization::BFGS::GoldenSectionSearch(this, this + 24, &v60);
      if (v3 >= 1)
      {
        v39 = v60;
        v40 = v62;
        v41 = (v2 >> 3) & 0x7FFFFFFF;
        v42 = *(this + 3);
        do
        {
          v43 = *v39++;
          *v40++ = v38 * v43;
          *v42 = v38 * v43 + *v42;
          ++v42;
          --v41;
        }

        while (v41);
      }

      CoreOptimization::gradient_t::gradient_t(&v52, v3);
      v44 = (*(this + 6))(this + 24, *(this + 8), &v52);
      if (v3 >= 1)
      {
        v45 = v52.__locale_;
        v46 = v54.__locale_;
        v47 = (v2 >> 3) & 0x7FFFFFFF;
        v48 = __p;
        do
        {
          v49 = -*v45;
          *v45 = v49;
          v45 = (v45 + 8);
          v50 = *v46;
          v46 = (v46 + 8);
          *v48++ = v49 - v50;
          --v47;
        }

        while (v47);
      }

      CoreOptimization::BFGS::UpdateHessianInv(v44, &__A, &__p, &v62);
      if (v52.__locale_)
      {
        if (v53 != v52.__locale_)
        {
          v53 = (v53 + ((v52.__locale_ - v53 + 7) & 0xFFFFFFFFFFFFFFF8));
        }

        operator delete(v52.__locale_);
      }
    }

    else if (*this >= 2)
    {
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "BFGS (last) round ", 18);
      v27 = MEMORY[0x24C19B430](v26, v14);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": beta = ", 9);
      v29 = operator<<(v28, this + 24);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " value = ", 9);
      (*(this + 5))(this + 24, *(this + 8));
      v31 = MEMORY[0x24C19B420](v30);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " gradient = ", 12);
      v33 = operator<<(v32, &v54);
      std::ios_base::getloc((v33 + *(*v33 - 24)));
      v34 = std::locale::use_facet(&v52, MEMORY[0x277D82680]);
      (v34->__vftable[2].~facet_0)(v34, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v54.__locale_)
    {
      if (v55 != v54.__locale_)
      {
        v55 = (v55 + ((v54.__locale_ - v55 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v54.__locale_);
    }

    v14 = (v14 + 1);
  }

  while (v25 >= 0.00001 && v14 != 10000);
  if (__A)
  {
    if (v57 != __A)
    {
      v57 = (v57 + ((__A - v57 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(__A);
  }

  if (__p)
  {
    if (v59 != __p)
    {
      v59 += (__p - v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  if (v60)
  {
    if (v61 != v60)
    {
      v61 += (v60 - v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v60);
  }

  if (v62)
  {
    if (v63 != v62)
    {
      v63 += (v62 - v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v62);
  }
}

void sub_2461B2CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *__p, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void std::valarray<double>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

void CoreOptimization::BFGS::GoldenSectionSearch(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 1.0e-30;
  v6 = 100;
  do
  {
    v16 = v16 + v16;
    v7 = (a3[1] - *a3) >> 3;
    v20 = &v16;
    v21 = v7;
    v19 = a3;
    v18 = a2;
    std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::operator std::valarray<double>(&v17, &__p);
    v8 = (*(a1 + 40))(&__p, *(a1 + 64));
    if (__p)
    {
      if (v15 != __p)
      {
        v15 += (__p - v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }
  }

  while (0.000001 - (*(a1 + 40))(a2, *(a1 + 64)) >= -v8 && v6-- != 0);
  if (*a1 >= 3)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "search direction: ", 18);
    v11 = operator<<(v10, a3);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
  }

  CoreOptimization::BFGS::GoldenSectionSearch_r(a1, a2, a3, 0.0, v16 * 0.25, v16 * 0.5, 0.01);
  v13 = *MEMORY[0x277D85DE8];
}

void CoreOptimization::BFGS::Optimize0(CoreOptimization::BFGS *this)
{
  v2 = *(this + 2) - *(this + 1);
  v55[0] = 0;
  v55[1] = 0;
  if (v2 << 29)
  {
    if (((v2 << 29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v3 = v2 >> 3;
  if ((v2 >> 3) >= 1)
  {
    v4 = *(this + 1);
    v5 = v51;
    v6 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      v7 = *v4++;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  __p = 0;
  v49 = 0;
  std::valarray<double>::resize(&__p, (v3 * v3));
  v8 = operator<<(MEMORY[0x277D82678], &__p);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v46, MEMORY[0x277D82680]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v10 = __p;
  if (v49 - __p >= 1)
  {
    bzero(__p, v49 - __p);
  }

  if (v3 >= 1)
  {
    v11 = 0;
    v12 = (v3 + 1) & 0xFFFFFFFE;
    v13 = vdupq_n_s64(((v2 >> 3) & 0x7FFFFFFF) - 1);
    v14 = xmmword_2461B5760;
    v15 = vdupq_n_s64(2uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v13, v14));
      if (v16.i8[0])
      {
        *&v10[v11 >> 29] = 0x3FF0000000000000;
      }

      if (v16.i8[4])
      {
        *&v10[(v11 + 0x100000000) >> 29] = 0x3FF0000000000000;
      }

      v14 = vaddq_s64(v14, v15);
      v11 += 0x200000000;
      v12 -= 2;
    }

    while (v12);
  }

  v17 = 0;
  v18 = MEMORY[0x277D82680];
  while (1)
  {
    CoreOptimization::gradient_t::gradient_t(&v46, v3);
    (*(this + 6))(&v51, *(this + 8), &v46);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "BFGS round ", 11);
    v20 = MEMORY[0x24C19B430](v19, v17);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": beta = ", 9);
    v22 = operator<<(v21, &v51);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " value = ", 9);
    (*(this + 5))(&v51, *(this + 8));
    v24 = MEMORY[0x24C19B420](v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " gradient = ", 12);
    v26 = operator<<(v25, &v46);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(&v44, v18);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&v44);
    std::ostream::put();
    std::ostream::flush();
    if (norm(&v46) < 0.00001)
    {
      break;
    }

    if (v3 >= 1)
    {
      locale = v46.__locale_;
      v30 = (v2 >> 3) & 0x7FFFFFFF;
      do
      {
        *locale = -*locale;
        locale = (locale + 8);
        --v30;
      }

      while (v30);
    }

    CoreOptimization::BFGS::Solve(v28, &__p, &v46, &v53, 0);
    CoreOptimization::BFGS::GoldenSectionSearch(this, &v51, &v53);
    if (v3 >= 1)
    {
      v32 = v53;
      v33 = v51;
      v34 = (v2 >> 3) & 0x7FFFFFFF;
      v35 = 0;
      do
      {
        v36 = *v32++;
        *v35++ = v31 * v36;
        *v33 = v31 * v36 + *v33;
        ++v33;
        --v34;
      }

      while (v34);
    }

    CoreOptimization::gradient_t::gradient_t(&v44, v3);
    v37 = (*(this + 6))(&v51, *(this + 8), &v44);
    if (v3 >= 1)
    {
      v39 = 0;
      v38 = v44.__locale_;
      v40 = v46.__locale_;
      v41 = (v2 >> 3) & 0x7FFFFFFF;
      do
      {
        v42 = -*v38;
        *v38 = v42;
        v38 = (v38 + 8);
        v43 = *v40;
        v40 = (v40 + 8);
        *v39++ = v42 - v43;
        --v41;
      }

      while (v41);
    }

    CoreOptimization::BFGS::UpdateHessian(v37, &__p, v50, v55);
    if (v44.__locale_)
    {
      if (v45 != v44.__locale_)
      {
        v45 = (v45 + ((v44.__locale_ - v45 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v44.__locale_);
    }

    if (v46.__locale_)
    {
      if (v47 != v46.__locale_)
      {
        v47 = (v47 + ((v46.__locale_ - v47 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v46.__locale_);
    }

    v17 = (v17 + 1);
    if (v17 == 10000)
    {
      goto LABEL_41;
    }
  }

  if (v46.__locale_)
  {
    if (v47 != v46.__locale_)
    {
      v47 = (v47 + ((v46.__locale_ - v47 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v46.__locale_);
  }

LABEL_41:
  if (__p)
  {
    if (v49 != __p)
    {
      v49 += (__p - v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  if (v51)
  {
    if (v52 != v51)
    {
      v52 += (v51 - v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v51);
  }

  if (v53)
  {
    if (v54 != v53)
    {
      v54 += (v53 - v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v53);
  }
}

void sub_2461B382C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, std::locale a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

double CoreOptimization::BFGS::GoldenSectionSearch_r(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a6 - a5 <= a5 - a4)
  {
    v10 = a5 + (a5 - a4) * -0.381966011;
  }

  else
  {
    v10 = a5 + (a6 - a5) * 0.381966011;
  }

  v37 = v10;
  v38 = a5;
  if (vabdd_f64(a6, a4) >= (fabs(a5) + fabs(v10)) * a7)
  {
    v15 = (a3[1] - *a3) >> 3;
    v47 = &v37;
    v48 = v15;
    v46 = a3;
    v45 = a2;
    std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::operator std::valarray<double>(&v44, &v35);
    v16 = (*(a1 + 40))(&v35, *(a1 + 64));
    v17 = (a3[1] - *a3) >> 3;
    v42 = &v38;
    v43 = v17;
    v41 = a3;
    v40 = a2;
    std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::operator std::valarray<double>(v39, &__p);
    v18 = (*(a1 + 40))(&__p, *(a1 + 64));
    if (__p)
    {
      if (v34 != __p)
      {
        v34 += (__p - v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }

    if (v35)
    {
      if (v36 != v35)
      {
        v36 += (v35 - v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(v35);
    }

    if (v16 == v18)
    {
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Bang!", 5);
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v44, MEMORY[0x277D82680]);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "returning ", 10);
      v11 = (a4 + a6) * 0.5;
      v22 = MEMORY[0x24C19B420](v21, v11);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v44, MEMORY[0x277D82680]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
    }

    else
    {
      v24 = (a3[1] - *a3) >> 3;
      v47 = &v37;
      v48 = v24;
      v46 = a3;
      v45 = a2;
      std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::operator std::valarray<double>(&v44, &v35);
      v25 = (*(a1 + 40))(&v35, *(a1 + 64));
      v26 = (a3[1] - *a3) >> 3;
      v42 = &v38;
      v43 = v26;
      v41 = a3;
      v40 = a2;
      std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::operator std::valarray<double>(v39, &__p);
      v27 = (*(a1 + 40))(&__p, *(a1 + 64));
      if (__p)
      {
        if (v34 != __p)
        {
          v34 += (__p - v34 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(__p);
      }

      if (v35)
      {
        if (v36 != v35)
        {
          v36 += (v35 - v36 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        operator delete(v35);
      }

      v28 = a6 - v38;
      v29 = v38 - a4;
      if (v25 <= v27)
      {
        if (v28 <= v29)
        {
          v30 = CoreOptimization::BFGS::GoldenSectionSearch_r(a1, a2, a3, v37, v38, a6, a7);
        }

        else
        {
          v30 = CoreOptimization::BFGS::GoldenSectionSearch_r(a1, a2, a3, a4, v38, v37, a7);
        }
      }

      else if (v28 <= v29)
      {
        v30 = CoreOptimization::BFGS::GoldenSectionSearch_r(a1, a2, a3, a4, v37, v38, a7);
      }

      else
      {
        v30 = CoreOptimization::BFGS::GoldenSectionSearch_r(a1, a2, a3, v38, v37, a6, a7);
      }

      v11 = v30;
    }
  }

  else
  {
    v11 = (a4 + a6) * 0.5;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2461B3E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22)
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

uint64_t std::__val_expr<std::_BinaryOp<std::plus<double>,std::valarray<double>,std::__val_expr<std::_BinaryOp<std::multiplies<double>,std::valarray<double>,std::__scalar_expr<double>>>>>::operator std::valarray<double>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = **(a1 + 8);
  v3 = *(*(a1 + 8) + 8);
  result = v3 - v2;
  if (v3 != v2)
  {
    if (!((result >> 3) >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

double CoreOptimization::BFGS::GoldenSectionSearch0(uint64_t a1, double **a2, double **a3, int a4)
{
  v8 = *a2;
  v7 = a2[1];
  if (a4)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "searchDirection = ", 18);
    v10 = operator<<(v9, a3);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v46, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v46);
    std::ostream::put();
    std::ostream::flush();
  }

  v12 = 0;
  v13 = v7 - v8;
  v14 = (v7 - v8) >> 3;
  v15 = v13 << 29;
  v42 = (v13 >> 3) & 0x7FFFFFFF;
  v16 = 0.2;
  v17 = 0.01;
  do
  {
    v46.__locale_ = 0;
    v47 = 0;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = 0;
    __p = 0;
    v45 = 0;
    v19 = (v16 - v17) / 1.61803399;
    v20 = v17 + v19;
    v21 = v16 - v19;
    if (v14 >= 1)
    {
      v22 = *a2;
      v23 = v42;
      v24 = *a3;
      locale = v46.__locale_;
      do
      {
        *locale = *v22 + v21 * *v24;
        locale = (locale + 8);
        v26 = *v22++;
        v27 = v26;
        v28 = *v24++;
        *v18++ = v27 + v20 * v28;
        --v23;
      }

      while (v23);
    }

    if (a4)
    {
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\tx=", 3);
      v30 = operator<<(v29, a2);
      std::ios_base::getloc((v30 + *(*v30 - 24)));
      v31 = std::locale::use_facet(&v48, MEMORY[0x277D82680]);
      (v31->__vftable[2].~facet_0)(v31, 10);
      std::locale::~locale(&v48);
      std::ostream::put();
      std::ostream::flush();
      printf("\t[lo, up]=[%lf, %lf], [nlo, nup]=[%lf, %lf]\n", v17, v16, v21, v20);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t[xlo, xhi]=[", 13);
      v33 = operator<<(v32, &v46);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", ", 2);
      v35 = operator<<(v34, &__p);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "]", 1);
      std::ios_base::getloc((v36 + *(*v36 - 24)));
      v37 = std::locale::use_facet(&v48, MEMORY[0x277D82680]);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v48);
      std::ostream::put();
      std::ostream::flush();
      v38 = (*(a1 + 40))(&v46, *(a1 + 64));
      v39 = (*(a1 + 40))(&__p, *(a1 + 64));
      printf("\t(vlo, vhi)=(%lf, %lf)\n", -v38, -v39);
    }

    v40 = (*(a1 + 40))(&v46, *(a1 + 64));
    if (v40 <= (*(a1 + 40))(&__p, *(a1 + 64)))
    {
      v17 = v21;
    }

    else
    {
      v16 = v20;
    }

    if (a4)
    {
      printf("range: (%lf, %lf)\n", v17, v16);
    }

    if (__p)
    {
      if (v45 != __p)
      {
        v45 += (__p - v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      operator delete(__p);
    }

    if (v46.__locale_)
    {
      if (v47 != v46.__locale_)
      {
        v47 = (v47 + ((v46.__locale_ - v47 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v46.__locale_);
    }

    ++v12;
  }

  while (v12 != 20);
  return (v16 + v17) * 0.5;
}

CoreOptimization::gradient_t *CoreOptimization::gradient_t::gradient_t(CoreOptimization::gradient_t *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  std::valarray<double>::resize(this, a2);
  return this;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::valarray<double>::valarray(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C19B400](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C19B410](v13);
  return a1;
}

void sub_2461B46D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C19B410](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2461B46B8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2461B490C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E9C7E8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void GradientDescent(uint64_t *a1, uint64_t a2, int a3)
{
  if (a3 >= 2)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], " ======= Start of Gradient Descent method ======= ", 50);
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v7 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "f(beta=", 7);
    v9 = operator<<(v8, a1);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") = ", 4);
    (*a2)(a1, *(a2 + 24));
    v11 = MEMORY[0x24C19B420](v10);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
  }

  CoreOptimization::gradient_t::gradient_t(&v37, 15);
  (*(a2 + 8))(a1, *(a2 + 24), &v37);
  if (a3 >= 2)
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "g(beta=", 7);
    v14 = operator<<(v13, a1);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")' = ", 5);
    v16 = operator<<(v15, &v37);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
  }

  v18 = 0;
  v19 = MEMORY[0x277D82678];
  v20 = MEMORY[0x277D82680];
  while (1)
  {
    CoreOptimization::gradient_t::gradient_t(&v35, 15);
    (*(a2 + 8))(a1, *(a2 + 24), &v37);
    v21 = 0;
    locale = v37.__locale_;
    v23 = *a1;
    do
    {
      *(v23 + v21) = *(v23 + v21) + *(locale + v21) * 0.001;
      v21 += 8;
    }

    while (v21 != 120);
    if (norm(&v37) <= 0.00001)
    {
      break;
    }

    if (a3 >= 2 && !(v18 % 0x3E8))
    {
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "beta = ", 7);
      v25 = operator<<(v24, a1);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v39, v20);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v39);
      std::ostream::put();
      std::ostream::flush();
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "f() = ", 6);
      (*a2)(a1, *(a2 + 24));
      v28 = MEMORY[0x24C19B420](v27);
      std::ios_base::getloc((v28 + *(*v28 - 24)));
      v29 = std::locale::use_facet(&v39, v20);
      (v29->__vftable[2].~facet_0)(v29, 10);
      std::locale::~locale(&v39);
      std::ostream::put();
      std::ostream::flush();
      (*(a2 + 8))(a1, *(a2 + 24), &v37);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "g() = ", 6);
      v31 = operator<<(v30, &v37);
      std::ios_base::getloc((v31 + *(*v31 - 24)));
      v32 = std::locale::use_facet(&v39, v20);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v39);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v35.__locale_)
    {
      if (v36 != v35.__locale_)
      {
        v36 = (v36 + ((v35.__locale_ - v36 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      operator delete(v35.__locale_);
    }

    if (++v18 == 100000)
    {
      goto LABEL_22;
    }
  }

  if (v35.__locale_)
  {
    if (v36 != v35.__locale_)
    {
      v36 = (v36 + ((v35.__locale_ - v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v35.__locale_);
  }

LABEL_22:
  if (a3 >= 2)
  {
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], " ======= End of Gradient Descent method ======= ", 48);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&v35, MEMORY[0x277D82680]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v37.__locale_)
  {
    if (v38 != v37.__locale_)
    {
      v38 = (v38 + ((v37.__locale_ - v38 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v37.__locale_);
  }
}

void sub_2461B5024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, _BYTE *__p, _BYTE *a14, uint64_t a15, std::locale a16)
{
  std::locale::~locale(&a10);
  if (__p)
  {
    if (a14 != __p)
    {
      a14 += (__p - a14 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double norm(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if (v2)
  {
    v3 = v2 >> 3;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = 0.0;
    do
    {
      v5 = *v1++;
      v4 = v4 + v5 * v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0.0;
  }

  return sqrt(v4);
}

void *operator<<(void *a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 8) == *a2)
  {
    v7 = "Empty";
    v8 = 5;
  }

  else
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
    MEMORY[0x24C19B420](v4, **a2);
    if (*(a2 + 8) - *a2 >= 9uLL)
    {
      v5 = 1;
      do
      {
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, ", ", 2);
        MEMORY[0x24C19B420](v6, *(*a2 + 8 * v5++));
      }

      while (v5 < (*(a2 + 8) - *a2) >> 3);
    }

    v7 = ")";
    a1 = v2;
    v8 = 1;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, v8);
  return v2;
}

{
  v2 = a1;
  if (*(a2 + 8) == *a2)
  {
    v7 = "Empty";
    v8 = 5;
  }

  else
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
    MEMORY[0x24C19B420](v4, **a2);
    if (*(a2 + 8) - *a2 >= 9uLL)
    {
      v5 = 1;
      do
      {
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, ", ", 2);
        MEMORY[0x24C19B420](v6, *(*a2 + 8 * v5++));
      }

      while (v5 < (*(a2 + 8) - *a2) >> 3);
    }

    v7 = ")";
    a1 = v2;
    v8 = 1;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, v8);
  return v2;
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *operator<<(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = (v2 - *a2) >> 3;
  v4 = sqrt(v3);
  if ((v4 + 1) * (v4 + 1) == v3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 * v5 != v3)
  {
    v16 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82678], "A Hessian is supposed to be a square matrix");
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v16);
    exit(1);
  }

  if (v2 == *a2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Empty", 5);
  }

  else if (v5 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x277D82680];
    do
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v17, v10);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v17);
      std::ostream::put();
      std::ostream::flush();
      v12 = v5;
      v13 = v8;
      do
      {
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\t", 1);
        MEMORY[0x24C19B420](v14, *(*a2 + v13));
        v13 += 8 * v5;
        --v12;
      }

      while (v12);
      ++v9;
      v8 += 8;
    }

    while (v9 != v5);
  }

  return a1;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
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