void benchmarkStatsUpdated(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>)
{
  v9 = a3;
  v10 = CACurrentMediaTime();
  v11 = a2 / 1000.0 / 1000.0 / 1000.0;
  v12 = *a1 + a2;
  *a1 = v12;
  v13 = *(a1 + 8) + 1;
  v14 = *(a1 + 32);
  *(a1 + 8) = v13;
  *(a1 + 32) = fmax(v14, v11);
  v15 = v12 / 1000.0 / 1000.0 / 1000.0 / v13;
  v16 = fmax(*(a1 + 48), v11);
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  if (v10 - *(a1 + 16) > a5)
  {
    v17 = *(a1 + 24);
    *(a1 + 24) = v17 + 1;
    if (v17)
    {
      v15 = *(a1 + 56) + (v15 - *(a1 + 56)) / (v17 + 1);
    }

    *(a1 + 56) = v15;
    v18 = v9[2];
    v19 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v19;
    v20 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v20;
    v18(v9, v23);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v10;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v21 = *(a1 + 16);
  *a4 = *a1;
  a4[1] = v21;
  v22 = *(a1 + 48);
  a4[2] = *(a1 + 32);
  a4[3] = v22;
}

uint64_t MeasureUnitsGetSystemDefault()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 usesMetricSystem];

  return v1;
}

__n128 computeTriangulation(uint64_t a1, uint64_t a2)
{
  v4 = a2 >> 2;
  v20[0] = 0;
  v20[1] = 0;
  cva::MatrixData<double,0ul,0ul,false>::allocate(v20, a2 & 0xFFFFFFFC);
  v21 = v4;
  v22 = 4;
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = 1;
    v7 = v20[0];
    do
    {
      if (v4 <= (v6 - 1) >> 2)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v7[((v6 - 1) >> 2) + ((v6 - 1) & 3) * v4] = *(a1 + 8 * v5);
      v5 = v6++;
    }

    while (v5 < a2);
  }

  cva::SVD<cva::Matrix<double,0u,0u,false>,true>::SVD<cva::Matrix<double,0u,0u,false>>(&v14, v20, 3, 0);
  v8 = (HIDWORD(v16) * v16);
  v18[0] = 0;
  v18[1] = 0;
  cva::MatrixData<double,0ul,0ul,false>::allocate(v18, v8);
  if (v8)
  {
    memcpy(v18[0], __src, 8 * v8);
  }

  v19 = v16;
  free(v17);
  free(__src);
  free(v14);
  if (v19 < 4 || HIDWORD(v19) < 4)
  {
    __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
  }

  v9.f64[0] = *(v18[0] + 3);
  v10 = 2 * v19 + 3;
  v11.f64[0] = *(v18[0] + v10);
  v11.f64[1] = *(v18[0] + v10 + v19);
  v9.f64[1] = *(v18[0] + (v19 + 3));
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v11);
  free(v18[0]);
  free(v20[0]);
  return v13;
}

void sub_258378B10(_Unwind_Exception *a1)
{
  free(*(v1 - 80));
  free(*(v1 - 56));
  _Unwind_Resume(a1);
}

void **cva::SVD<cva::Matrix<double,0u,0u,false>,true>::~SVD(void **a1)
{
  free(a1[6]);
  free(a1[3]);
  free(*a1);
  return a1;
}

uint64_t cva::MatrixData<double,0ul,0ul,false>::allocate(void **a1, uint64_t a2)
{
  if (*a1)
  {
    cva::MatrixData<double,0ul,0ul,false>::allocate();
  }

  v3 = (8 * a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  a1[1] = (v3 >> 3);
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v3, 0xE1AC2527uLL);
  v5 = memptr;
  *a1 = memptr;
  if (!v5)
  {
    cva::MatrixData<double,0ul,0ul,false>::allocate();
  }

  return result;
}

uint64_t cva::SVD<cva::Matrix<double,0u,0u,false>,true>::SVD<cva::Matrix<double,0u,0u,false>>(uint64_t a1, _DWORD *a2, char a3, int a4)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decompose<cva::Matrix<double,0u,0u,false> const&>(a1, a2, a3, a4);
  return a1;
}

void sub_258378C34(_Unwind_Exception *a1)
{
  free(v1[6]);
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

void cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decompose<cva::Matrix<double,0u,0u,false> const&>(uint64_t a1, _DWORD *a2, char a3, int a4)
{
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 72) = v5;
  *(a1 + 76) = v6;
  if (!(v5 | v6))
  {
    *(a1 + 80) = 1;
LABEL_8:
    v7 = *(a1 + 48);
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    free(v7);
    v8 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v8);
    v9 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;

    free(v9);
    return;
  }

  if (a4 && fabsf((v5 - v6)) >= ((v6 + v5) * 0.1))
  {
    cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>(a1, a2, a3);
  }

  else
  {
    cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<cva::Matrix<double,0u,0u,false>>(a1, a2, a3);
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    goto LABEL_8;
  }
}

void cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<cva::Matrix<double,0u,0u,false>>(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (*(a2 + 20) * *(a2 + 16));
  __dst[0] = 0;
  __dst[1] = 0;
  cva::MatrixData<double,0ul,0ul,false>::allocate(__dst, v6);
  if (v6)
  {
    memcpy(__dst[0], *a2, 8 * v6);
  }

  __dst[2] = *(a2 + 16);
  cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, __dst, a3);
  free(__dst[0]);
}

void cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = a3;
  v47 = *MEMORY[0x277D85DE8];
  if (a2[5] >= a2[4])
  {
    v40 = a2;
    v43 = a2;
    v44 = &v40;
    cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>>>(a1, &v43, a3 != 0);
    if (*(a1 + 80) != 1)
    {
      return;
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      v13 = *(a1 + 48);
      v14 = 8 * v12;
      do
      {
        *v13 = sqrt(*v13);
        ++v13;
        v14 -= 8;
      }

      while (v14);
    }

    if ((v3 & 2) == 0)
    {
      return;
    }

    v33 = cva::SVD<cva::Matrix<double,0u,0u,false>,true>::S(a1);
    v34 = v15;
    v35 = &v33;
    v36 = 0x3E112E0BE826D695;
    v37 = a1;
    if (*(a1 + 20) != v33)
    {
      cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>();
    }

    v38 = &v35;
    v39 = &v37;
    if (*(a1 + 16) != a2[4])
    {
      cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>();
    }

    v16 = HIDWORD(v33);
    if (__PAIR64__(a2[5], HIDWORD(v33)) == *(a1 + 40))
    {
      v44 = &v38;
      v45 = a2;
LABEL_30:
      v46 = 0x3FF0000000000000;
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>>,cva::Matrix<double,0u,0u,false>>(a1 + 24, &v43);
      return;
    }

    v20 = *(a1 + 24);
    if (*v15 == v20)
    {
      v21 = a2[5];
    }

    else
    {
      v21 = a2[5];
      if (*a1 != v20 && *a2 != v20)
      {
        *(a1 + 40) = HIDWORD(v33);
        *(a1 + 44) = v21;
        cva::MatrixData<double,0ul,0ul,false>::reserve(a1 + 24, (v21 * v16));
        v22 = a2[4];
        v23 = *(*v39 + 4);
        v44 = &v38;
        v45 = a2;
        if (v23 != v22)
        {
          cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>();
        }

        goto LABEL_30;
      }
    }

    v40 = 0;
    v41 = 0;
    cva::MatrixData<double,0ul,0ul,false>::allocate(&v40, (v21 * HIDWORD(v33)));
    v30 = a2[4];
    v29 = a2[5];
    LODWORD(v42) = *(*v38 + 1);
    HIDWORD(v42) = v29;
    v44 = &v38;
    v45 = a2;
    if (*(*v39 + 4) != v30)
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v46 = 0x3FF0000000000000;
    cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>>,cva::Matrix<double,0u,0u,false>>(&v40, &v43);
    v26 = *(a1 + 24);
    v31 = *(a1 + 32);
    v32 = v41;
    *(a1 + 24) = v40;
    *(a1 + 32) = v32;
    v40 = v26;
    v41 = v31;
    *(a1 + 40) = v42;
LABEL_36:
    v42 = 0;
    free(v26);
    return;
  }

  v40 = a2;
  v43 = &v40;
  v44 = a2;
  cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>>(a1, &v43, 2 * (a3 != 0));
  if (*(a1 + 80) == 1)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = 8 * v6;
      do
      {
        *v7 = sqrt(*v7);
        ++v7;
        v8 -= 8;
      }

      while (v8);
    }

    if (v3)
    {
      v37 = a1 + 24;
      v9 = cva::SVD<cva::Matrix<double,0u,0u,false>,true>::S(a1);
      v33 = v9;
      v34 = v10;
      v35 = &v33;
      v36 = 0x3E112E0BE826D695;
      if (*(a1 + 40) != HIDWORD(v9))
      {
        cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>();
      }

      v38 = &v37;
      v39 = &v35;
      if (a2[5] != *(a1 + 44))
      {
        cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>();
      }

      v11 = a2[4];
      if (v11 == *(a1 + 16) && *(a1 + 20) == v9)
      {
        v44 = a2;
        v45 = &v38;
LABEL_25:
        v46 = 0x3FF0000000000000;
        cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>>(a1, &v43);
        return;
      }

      v17 = *a1;
      if (*a2 != *a1 && *(a1 + 24) != v17 && *v10 != v17)
      {
        *(a1 + 16) = v11;
        *(a1 + 20) = v9;
        cva::MatrixData<double,0ul,0ul,false>::reserve(a1, (v11 * v9));
        v18 = a2[5];
        v19 = *(*v38 + 5);
        v44 = a2;
        v45 = &v38;
        if (v18 != v19)
        {
          cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<double,0u,0u,false>>();
        }

        goto LABEL_25;
      }

      v40 = 0;
      v41 = 0;
      cva::MatrixData<double,0ul,0ul,false>::allocate(&v40, (v11 * v9));
      v24 = **v39;
      v25 = a2[5];
      LODWORD(v42) = a2[4];
      HIDWORD(v42) = v24;
      v44 = a2;
      v45 = &v38;
      if (v25 != *(*v38 + 5))
      {
        __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v46 = 0x3FF0000000000000;
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>>(&v40, &v43);
      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = v41;
      *a1 = v40;
      *(a1 + 8) = v28;
      v40 = v26;
      v41 = v27;
      *(a1 + 16) = v42;
      goto LABEL_36;
    }
  }
}

void cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<0u,0u>(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  *(a1 + 64) = v7;
  cva::MatrixData<double,0ul,0ul,false>::reserve(a1 + 48, v7);
  if (a3)
  {
    *(a1 + 16) = v5;
    *(a1 + 20) = v7;
    cva::MatrixData<double,0ul,0ul,false>::reserve(a1, v7 * v5);
    if ((a3 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v8);
    if ((a3 & 2) != 0)
    {
LABEL_6:
      *(a1 + 40) = v7;
      *(a1 + 44) = v6;
      cva::MatrixData<double,0ul,0ul,false>::reserve(a1 + 24, v7 * v6);
      goto LABEL_9;
    }
  }

  v9 = *(a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  free(v9);
LABEL_9:
  v14 = 0;
  v13 = 0;
  cva::vecLib::gesvd<double>();
  v11[0] = 0;
  v11[1] = 0;
  cva::MatrixData<double,0ul,0ul,false>::allocate(v11, 0.0);
  v12 = 0.0;
  v10 = cva::vecLib::gesvd<double>();
  if (v13 < 0)
  {
    __assert_rtn("decomposeDirect", "matrixsvd.h", 439, "(info >= 0) || cva::detail::assertMessage(gesvd() compute SVD failed!)");
  }

  if (v13)
  {
    cva::Logger::instance(v10);
    cva::Logger::logInCategory();
  }

  free(v11[0]);
  *(a1 + 80) = v13 == 0;
}

void cva::MatrixData<double,0ul,0ul,false>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      *a1 = 0;

      cva::MatrixData<double,0ul,0ul,false>::allocate(a1, a2);
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>>(uint64_t a1, uint64_t **a2, char a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = (a2 + 1);
  v7 = (*(a2[1] + 5) * *(**a2 + 20));
  v12[0] = 0;
  v12[1] = 0;
  cva::MatrixData<double,0ul,0ul,false>::allocate(v12, v7);
  v8 = *a2;
  v9 = **a2;
  v10 = *v6;
  v13 = *(v9 + 20);
  v11 = *(v10 + 16);
  v14 = *(v10 + 20);
  v16 = v8;
  v17 = v10;
  if (*(v9 + 16) != v11)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v18 = 0x3FF0000000000000;
  cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>(v12, v15);
  cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, v12, a3);
  free(v12[0]);
}

uint64_t cva::SVD<cva::Matrix<double,0u,0u,false>,true>::S(_DWORD *a1)
{
  v2 = a1[18];
  LODWORD(v1) = a1[19];
  if (v1 >= v2)
  {
    v1 = v2;
  }

  else
  {
    v1 = v1;
  }

  if (v1 > a1[16])
  {
    cva::SVD<cva::Matrix<double,0u,0u,false>,true>::S();
  }

  return v1 | (v1 << 32);
}

void cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>>>(uint64_t a1, void **a2, char a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2 + 1;
  v7 = (*(*a2[1] + 16) * *(*a2 + 4));
  v12[0] = 0;
  v12[1] = 0;
  cva::MatrixData<double,0ul,0ul,false>::allocate(v12, v7);
  v8 = *a2;
  v9 = *v6;
  v10 = **v6;
  v14 = *(v10 + 16);
  v11 = v8[5];
  v13 = v8[4];
  v16 = v8;
  v17 = v9;
  if (v11 != *(v10 + 20))
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v18 = 0x3FF0000000000000;
  cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>>(v12, v15);
  cva::SVD<cva::Matrix<double,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, v12, a3);
  free(v12[0]);
}

void cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = **(a2 + 8);
  if (*v5 == *a1 || *v4 == *a1)
  {
    v8 = (*(v4 + 20) * *(v5 + 20));
    v14 = 0;
    v15 = 0;
    cva::MatrixData<double,0ul,0ul,false>::allocate(&v14, v8);
    v9 = *(*(a2 + 16) + 20);
    LODWORD(v16) = *(**(a2 + 8) + 20);
    HIDWORD(v16) = v9;
    cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>(&v14, a2);
    v10 = *a1;
    v11 = *(a1 + 8);
    v12 = v15;
    *a1 = v14;
    *(a1 + 8) = v12;
    v14 = v10;
    v15 = v11;
    *(a1 + 16) = v16;
    v16 = 0;
    free(v10);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v6 != *(v5 + 20) || (v7 = *(a1 + 20), v7 != *(v4 + 20)))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v6 = *(a1 + 16);
      v5 = **(a2 + 8);
      if (v6 != *(v5 + 20) || (v4 = *(a2 + 16), v7 = *(v4 + 20), *(a1 + 20) != v7))
      {
        cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
      }
    }

    if (*(v5 + 16) * v6 && v7 * *(v4 + 16))
    {
      cva::VecLib<double>::gemm();
    }

    if (v6 * v7)
    {
      v13 = *a1;

      bzero(v13, 8 * (v6 * v7));
    }
  }
}

void cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1)
  {
    v12 = (***(*(a2 + 16) + 8) * *(v4 + 16));
    v17 = 0;
    v18 = 0;
    cva::MatrixData<double,0ul,0ul,false>::allocate(&v17, v12);
    v13 = ***(*(a2 + 16) + 8);
    LODWORD(v19) = *(*(a2 + 8) + 16);
    HIDWORD(v19) = v13;
    cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>>(&v17, a2);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = v18;
    *a1 = v17;
    *(a1 + 8) = v16;
    v17 = v14;
    v18 = v15;
    *(a1 + 16) = v19;
    v19 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 16);
    if (v5 != *(v4 + 16) || (v6 = *(a1 + 20), v7 = *(a2 + 16), v6 != **v7[1]))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 16) || (v7 = *(a2 + 16), v6 = **v7[1], *(a1 + 20) != v6))
      {
        cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v5)
    {
      v8 = (v6 * *(**v7 + 20));
      if (v8)
      {
        v17 = 0;
        v18 = 0;
        cva::MatrixData<double,0ul,0ul,false>::allocate(&v17, v8);
        v9 = **v7[1];
        LODWORD(v19) = *(**v7 + 20);
        HIDWORD(v19) = v9;
        cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>(&v17, v7);
        cva::VecLib<double>::gemm();
      }
    }

    v10 = v5 * v6;
    if (v10)
    {
      v11 = *a1;

      bzero(v11, 8 * v10);
    }
  }
}

void cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>(cva::Logger *a1, uint64_t **a2)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != *(v6 + 20) || (v7 = *(a1 + 5), v8 = a2[1], v9 = *v8, v7 != **v8))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != *(v6 + 20) || (v8 = a2[1], v9 = *v8, v7 = **v8, *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
    }
  }

  v31 = v8;
  if (v7 >= v9[1])
  {
    v7 = v9[1];
  }

  if (v7 > *(v6 + 16))
  {
    cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>();
  }

  v28[0] = v4;
  v28[1] = v7;
  v29 = v5;
  v30 = 0;
  v23 = &v31;
  v27 = &v23;
  v32[0] = v28;
  v32[1] = &v24;
  v10 = *a1;
  v25 = v4;
  v26 = v7;
  v19[0] = v4;
  v19[1] = v7;
  v20 = v10;
  v21 = v4;
  v22 = 0;
  cva::MatrixRef<double,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v19, v32);
  v11 = *(*v5 + 16);
  v12 = *(a1 + 5) - v11;
  if (*(a1 + 5) > v11)
  {
    v13 = *(a1 + 4);
    v14 = *a1 + 8 * v13 * v11;
    v15 = v13 * v12;
    v16 = v15 == 0;
    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    v18 = (v14 + 8 * v15);
    if (v16)
    {
      v18 = 0;
    }

    if (v17 != v18)
    {
      bzero(v17, ((v18 - v17 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    }
  }
}

uint64_t cva::MatrixRef<double,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) - 8 * *(a1 + 20);
  if (***(*a2 + 8) == v4 || **(****(a2[1] + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = *(a1 + 4);
    v21[0] = 0;
    v21[1] = 0;
    cva::MatrixData<double,0ul,0ul,false>::allocate(v21, (v6 * v5));
    v22 = v5;
    v23 = v6;
    cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v21, a2);
    v8 = *a1;
    if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
    {
      cva::Logger::instance(v7);
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v10 = *(a1 + 16);
    v11 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 8) + 8 * (v10 * v9);
    if (v11)
    {
      v13 = 0;
    }

    v14 = v21[0];
    if (v12 != v13)
    {
      v15 = 0;
      v16 = v10 - v8;
      v17 = v21[0];
      do
      {
        v18 = *v17++;
        *v12 = v18;
        if (v15 + 1 >= v8)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v12 += v19 + 1;
        if (v15 + 1 < v8)
        {
          ++v15;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v12 != v13);
    }

    free(v14);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(cva::Logger *a1, void *a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2[1];
    v11 = *a1;
    v12 = 8 * v7;
    do
    {
      if (v4 <= v9 || v5[1] <= HIDWORD(v9))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v13 = v5[5] + HIDWORD(v9);
      v14 = **(v5 + 1);
      v15 = *(v14 + 16);
      if (v15 <= v13 || (v16 = v5[4] + v9, v16 >= *(v14 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v17 = *(*v14 + 8 * (v13 + v15 * v16));
      *v11++ = v17 * cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(v10, v8, HIDWORD(v8));
      v18 = (v9 + 1);
      v4 = *v5;
      if (*v5 <= v18)
      {
        v9 = (v9 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFF00000000 | v18;
      }

      v19 = (v8 + 1);
      if (*(v10 + 4) <= v19)
      {
        v8 = (v8 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v8 = v8 & 0xFFFFFFFF00000000 | v19;
      }

      v12 -= 8;
    }

    while (v12);
  }
}

void cva::detail::assignNoAlias<cva::MatrixRef<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *a1;
    v5 = *a2;
    if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  v8 = *(a1 + 16);
  if (v6 * v4)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 8) + 8 * (v8 * v6);
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2[1];
    v16 = v8 - v4;
    v17 = v4;
    do
    {
      if (v17 <= v13 || v5[1] <= HIDWORD(v13))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v18 = v5[5] + HIDWORD(v13);
      v19 = **(v5 + 1);
      v20 = *(v19 + 16);
      if (v20 <= v18 || (v21 = v5[4] + v13, v21 >= *(v19 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v22 = *(*v19 + 8 * (v18 + v20 * v21));
      *v9 = v22 * cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(v15, v12, HIDWORD(v12));
      v23 = (v13 + 1);
      v17 = *v5;
      if (*v5 <= v23)
      {
        v13 = (v13 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v13 = v13 & 0xFFFFFFFF00000000 | v23;
      }

      v24 = (v12 + 1);
      if (*(v15 + 4) <= v24)
      {
        v12 = (v12 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFF00000000 | v24;
      }

      if (v14 + 1 >= v4)
      {
        v25 = v16;
      }

      else
      {
        v25 = 0;
      }

      v9 += v25 + 1;
      if (v14 + 1 < v4)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }

    while (v9 != v11);
  }
}

double cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 4) <= a2 || *(a1 + 8) <= a3)
  {
    cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v3 = ***(a1 + 16);
  v4 = *(*v3 + 4);
  if (**v3 < v4)
  {
    v4 = **v3;
  }

  v5 = a3 % v4;
  v6 = *(*v3 + 8);
  if (*(v6 + 16) <= v5)
  {
    cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v7 = *(*v6 + 8 * v5);
  v8 = fabs(v7);
  result = 1.0 / v7;
  if (v8 < v3[1])
  {
    return 0.0;
  }

  return result;
}

void cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = **(a2 + 16);
  if (*v4 == *a1 || *v5 == *a1)
  {
    v8 = (*(v5 + 16) * *(v4 + 16));
    v14 = 0;
    v15 = 0;
    cva::MatrixData<double,0ul,0ul,false>::allocate(&v14, v8);
    v9 = *(**(a2 + 16) + 16);
    LODWORD(v16) = *(*(a2 + 8) + 16);
    HIDWORD(v16) = v9;
    cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>>(&v14, a2);
    v10 = *a1;
    v11 = *(a1 + 8);
    v12 = v15;
    *a1 = v14;
    *(a1 + 8) = v12;
    v14 = v10;
    v15 = v11;
    *(a1 + 16) = v16;
    v16 = 0;
    free(v10);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v6 != *(v4 + 16) || (v7 = *(a1 + 20), v7 != *(v5 + 16)))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v6 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v6 != *(v4 + 16) || (v5 = **(a2 + 16), v7 = *(v5 + 16), *(a1 + 20) != v7))
      {
        cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v6 && v7 * *(v5 + 20))
    {
      cva::VecLib<double>::gemm();
    }

    if (v6 * v7)
    {
      v13 = *a1;

      bzero(v13, 8 * (v6 * v7));
    }
  }
}

void cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>>,cva::Matrix<double,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*v4 == *a1)
  {
    v12 = (*(v4 + 20) * *(***(a2 + 8) + 4));
    v17 = 0;
    v18 = 0;
    cva::MatrixData<double,0ul,0ul,false>::allocate(&v17, v12);
    v13 = *(*(a2 + 16) + 20);
    LODWORD(v19) = *(***(a2 + 8) + 4);
    HIDWORD(v19) = v13;
    cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>>,cva::Matrix<double,0u,0u,false>>(&v17, a2);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = v18;
    *a1 = v17;
    *(a1 + 8) = v16;
    v17 = v14;
    v18 = v15;
    *(a1 + 16) = v19;
    v19 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 8);
    if (v5 != *(**v6 + 4) || (v7 = *(a1 + 20), v7 != *(v4 + 20)))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *(a1 + 16);
      v6 = *(a2 + 8);
      if (v5 != *(**v6 + 4) || (v4 = *(a2 + 16), v7 = *(v4 + 20), *(a1 + 20) != v7))
      {
        cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
      }
    }

    v8 = (*(*v6[1] + 16) * v5);
    if (v8 && v7 * *(v4 + 16))
    {
      v17 = 0;
      v18 = 0;
      cva::MatrixData<double,0ul,0ul,false>::allocate(&v17, v8);
      v9 = *(*v6[1] + 16);
      LODWORD(v19) = *(**v6 + 4);
      HIDWORD(v19) = v9;
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>>(&v17, v6);
      cva::VecLib<double>::gemm();
    }

    v10 = v5 * v7;
    if (v10)
    {
      v11 = *a1;

      bzero(v11, 8 * v10);
    }
  }
}

uint64_t cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>>(cva::Logger *a1, uint64_t a2)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != v6[1] || (v7 = *(a1 + 5), v8 = *(a2 + 8), v9 = *v8, v7 != *(*v8 + 16)))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != v6[1] || (v8 = *(a2 + 8), v9 = *v8, v7 = *(*v8 + 16), *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
    }
  }

  v34 = v5;
  v10 = *v6;
  if (*v6 >= v4)
  {
    v10 = v4;
  }

  if (v10 > *(v9 + 20))
  {
    cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>>>();
  }

  v31[0] = v10;
  v31[1] = v7;
  v32 = v8;
  v33 = 0;
  v28 = v10;
  v29 = v7;
  v30 = &v34;
  v35[0] = v31;
  v35[1] = &v27;
  v11 = *a1;
  v23[0] = v10;
  v23[1] = v7;
  v24 = v11;
  v25 = v4;
  v26 = 0;
  result = cva::MatrixRef<double,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(v23, v35);
  v13 = *(*v8 + 20);
  v14 = *(a1 + 4);
  if (v14 > v13)
  {
    v15 = v14 - v13;
    v16 = *(a1 + 5);
    v17 = v16 * (v14 - v13);
    v18 = v17 == 0;
    if (v17)
    {
      v19 = (*a1 + 8 * v13);
    }

    else
    {
      v19 = 0;
    }

    v20 = *a1 + 8 * v13 + 8 * v16 * v14;
    if (v18)
    {
      v20 = 0;
    }

    if (v19 != v20)
    {
      v21 = 0;
      do
      {
        *v19 = 0;
        if (v21 + 1 >= v15)
        {
          v22 = v13;
        }

        else
        {
          v22 = 0;
        }

        v19 += v22 + 1;
        if (v21 + 1 < v15)
        {
          ++v21;
        }

        else
        {
          v21 = 0;
        }
      }

      while (v19 != v20);
    }
  }

  return result;
}

uint64_t cva::MatrixRef<double,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) - 8 * *(a1 + 20);
  if (***(*a2 + 8) == v4 || **(***(a2[1] + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = *(a1 + 4);
    v21[0] = 0;
    v21[1] = 0;
    cva::MatrixData<double,0ul,0ul,false>::allocate(v21, (v6 * v5));
    v22 = v5;
    v23 = v6;
    cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(v21, a2);
    v8 = *a1;
    if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
    {
      cva::Logger::instance(v7);
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v10 = *(a1 + 16);
    v11 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 8) + 8 * (v10 * v9);
    if (v11)
    {
      v13 = 0;
    }

    v14 = v21[0];
    if (v12 != v13)
    {
      v15 = 0;
      v16 = v10 - v8;
      v17 = v21[0];
      do
      {
        v18 = *v17++;
        *v12 = v18;
        if (v15 + 1 >= v8)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v12 += v19 + 1;
        if (v15 + 1 < v8)
        {
          ++v15;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v12 != v13);
    }

    free(v14);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(cva::Logger *a1, void *a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2[1];
    v11 = *a1;
    v12 = 8 * v7;
    do
    {
      if (v4 <= v9 || v5[1] <= HIDWORD(v9))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v13 = v5[5] + HIDWORD(v9);
      v14 = **(v5 + 1);
      v15 = *(v14 + 16);
      if (v15 <= v13 || (v16 = v5[4] + v9, v16 >= *(v14 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v17 = *(*v14 + 8 * (v13 + v15 * v16));
      *v11++ = v17 * cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(v10, v8, HIDWORD(v8));
      v18 = (v9 + 1);
      v4 = *v5;
      if (*v5 <= v18)
      {
        v9 = (v9 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFF00000000 | v18;
      }

      v19 = (v8 + 1);
      if (*(v10 + 4) <= v19)
      {
        v8 = (v8 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v8 = v8 & 0xFFFFFFFF00000000 | v19;
      }

      v12 -= 8;
    }

    while (v12);
  }
}

void cva::detail::assignNoAlias<cva::MatrixRef<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *a1;
    v5 = *a2;
    if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<double,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false> const>,cva::Matrix<double,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  v8 = *(a1 + 16);
  if (v6 * v4)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 8) + 8 * (v8 * v6);
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2[1];
    v16 = v8 - v4;
    v17 = v4;
    do
    {
      if (v17 <= v13 || v5[1] <= HIDWORD(v13))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v18 = v5[5] + HIDWORD(v13);
      v19 = **(v5 + 1);
      v20 = *(v19 + 16);
      if (v20 <= v18 || (v21 = v5[4] + v13, v21 >= *(v19 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v22 = *(*v19 + 8 * (v18 + v20 * v21));
      *v9 = v22 * cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(v15, v12, HIDWORD(v12));
      v23 = (v13 + 1);
      v17 = *v5;
      if (*v5 <= v23)
      {
        v13 = (v13 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v13 = v13 & 0xFFFFFFFF00000000 | v23;
      }

      v24 = (v12 + 1);
      if (*(v15 + 4) <= v24)
      {
        v12 = (v12 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFF00000000 | v24;
      }

      if (v14 + 1 >= v4)
      {
        v25 = v16;
      }

      else
      {
        v25 = 0;
      }

      v9 += v25 + 1;
      if (v14 + 1 < v4)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }

    while (v9 != v11);
  }
}

double cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 4) <= a2 || *(a1 + 8) <= a3)
  {
    cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v3 = **(a1 + 16);
  v4 = *(*v3 + 4);
  if (**v3 < v4)
  {
    v4 = **v3;
  }

  v5 = a2 % v4;
  v6 = *(*v3 + 8);
  if (*(v6 + 16) <= v5)
  {
    cva::detail::assignNoAlias<cva::Matrix<double,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<double,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<double,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v7 = *(*v6 + 8 * v5);
  v8 = fabs(v7);
  result = 1.0 / v7;
  if (v8 < v3[1])
  {
    return 0.0;
  }

  return result;
}

uint64_t zip<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v69 = a3;
  v70 = a4;
  v65 = a1;
  v66 = a2;
  v71 = a9;
  v74 = a8;
  v68 = *(a8 - 8);
  v75 = a12;
  v76 = a13;
  (MEMORY[0x28223BE20])();
  v67 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = (MEMORY[0x28223BE20])();
  v64 = v49 - v18;
  v63 = *(a7 - 8);
  MEMORY[0x28223BE20](v17);
  v62 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a7;
  v72 = swift_getAssociatedTypeWitness();
  v20 = MEMORY[0x28223BE20](v72);
  v61 = v49 - v21;
  v60 = *(a6 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a11;
  v49[0] = a6;
  v23 = swift_getAssociatedTypeWitness();
  v24 = MEMORY[0x28223BE20](v23);
  v58 = v49 - v25;
  v57 = *(a5 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[1] = a10;
  v28 = a5;
  v29 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v29);
  v50 = v49 - v30;
  v32 = v31;
  v55 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = AssociatedConformanceWitness;
  v34 = v23;
  v56 = v23;
  v35 = swift_getAssociatedConformanceWitness();
  v53 = v35;
  v36 = v72;
  v37 = swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v39 = swift_getAssociatedConformanceWitness();
  v77 = v32;
  v78 = v34;
  v79 = v36;
  v80 = v38;
  v81 = AssociatedConformanceWitness;
  v82 = v35;
  v83 = v37;
  v84 = v39;
  v40 = type metadata accessor for Zip4Generator();
  MEMORY[0x28223BE20](v40);
  v42 = v49 - v41;
  (*(v57 + 16))(v27, v65, v28);
  v43 = v50;
  sub_258428790();
  (*(v60 + 16))(v59, v66, v49[0]);
  v44 = v58;
  sub_258428790();
  (*(v63 + 16))(v62, v69, v51);
  v45 = v61;
  sub_258428790();
  (*(v68 + 16))(v67, v70, v74);
  v46 = v64;
  sub_258428790();
  Zip4Generator.init(_:_:_:_:)(v43, v44, v45, v46, v55, v56, v72, AssociatedTypeWitness, v42);
  WitnessTable = swift_getWitnessTable();
  return MEMORY[0x259C7E9F0](v42, v40, WitnessTable);
}

uint64_t Zip4Generator.init(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = type metadata accessor for Zip4Generator();
  *(a9 + v18[24]) = 0;
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  (*(*(a6 - 8) + 32))(a9 + v18[21], a2, a6);
  (*(*(a7 - 8) + 32))(a9 + v18[22], a3, a7);
  return (*(*(a8 - 8) + 32))(a9 + v18[23], a4, a8);
}

uint64_t Zip4Generator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = a1[5];
  v63 = a1[9];
  v62 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = sub_258428DA0();
  v56 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v64 = &v54 - v6;
  v79 = AssociatedTypeWitness;
  v71 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v5);
  v57 = &v54 - v7;
  v8 = a1[8];
  v67 = a1[4];
  v68 = v8;
  v9 = swift_getAssociatedTypeWitness();
  v60 = sub_258428DA0();
  v59 = *(v60 - 8);
  v10 = MEMORY[0x28223BE20](v60);
  v69 = &v54 - v11;
  v77 = v9;
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v54 - v12;
  v13 = a1[7];
  v74 = a1[3];
  v75 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_258428DA0();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v76 = &v54 - v17;
  v73 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v72 = &v54 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = sub_258428DA0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v54 - v25;
  v28 = v27;
  sub_258428DC0();
  if ((*(v28 + 48))(v24, 1, v19) == 1)
  {
    (*(v21 + 8))(v24, v20);
LABEL_6:
    v34 = v79;
    v42 = v77;
    goto LABEL_7;
  }

  v29 = *(v28 + 32);
  v29(v26, v24, v19);
  v30 = v76;
  sub_258428DC0();
  v31 = v73;
  v32 = (*(v73 + 48))(v30, 1, v14) == 1;
  v33 = v26;
  if (v32)
  {
    (*(v28 + 8))(v26, v19);
    (*(v65 + 8))(v30, v66);
    goto LABEL_6;
  }

  v37 = v28;
  v74 = v19;
  v75 = v33;
  v38 = *(v31 + 32);
  v39 = v72;
  v65 = v31 + 32;
  v66 = v29;
  v55 = v38;
  v38(v72, v30, v14);
  v40 = v69;
  sub_258428DC0();
  v41 = v70;
  v42 = v77;
  v43 = (*(v70 + 48))(v40, 1, v77);
  v34 = v79;
  if (v43 == 1)
  {
    (*(v31 + 8))(v39, v14);
    v19 = v74;
    (*(v37 + 8))(v75, v74);
    (*(v59 + 8))(v40, v60);
  }

  else
  {
    v76 = v14;
    v44 = v61;
    v69 = *(v41 + 32);
    (v69)(v61, v40, v42);
    v45 = v42;
    v46 = v64;
    sub_258428DC0();
    v47 = v71;
    if ((*(v71 + 48))(v46, 1, v34) != 1)
    {
      v48 = *(v47 + 32);
      v71 = v47 + 32;
      v49 = v57;
      v48(v57, v46, v34);
      v50 = v74;
      v81 = v74;
      v82 = v76;
      v83 = v45;
      v84 = v34;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v52 = TupleTypeMetadata[12];
      v73 = TupleTypeMetadata[16];
      v80 = TupleTypeMetadata[20];
      v53 = v78;
      v66(v78, v75, v50);
      v55(v53 + v52, v72, v76);
      (v69)(v53 + v73, v44, v45);
      v48((v53 + v80), v49, v79);
      return (*(*(TupleTypeMetadata - 1) + 56))(v53, 0, 1, TupleTypeMetadata);
    }

    (*(v41 + 8))(v44, v45);
    v14 = v76;
    (*(v31 + 8))(v72, v76);
    v19 = v74;
    (*(v37 + 8))(v75, v74);
    (*(v56 + 8))(v46, v58);
    v42 = v45;
  }

LABEL_7:
  v81 = v19;
  v82 = v14;
  v83 = v42;
  v84 = v34;
  v35 = swift_getTupleTypeMetadata();
  return (*(*(v35 - 8) + 56))(v78, 1, 1, v35);
}

uint64_t variable initialization expression of WorldPerson.timeSuggested@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2584283A0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of UncertainValue._confidence@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21[1] = v21 - v6;
  v7 = *(a1 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v21[0] = v21 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v21 - v16;
  sub_258429140();
  sub_258429140();
  swift_getAssociatedConformanceWitness();
  sub_258429360();
  sub_258429300();
  v18 = v21[0];
  sub_258429120();
  v19 = *(v7 + 8);
  v19(v10, a1);
  v19(v13, a1);
  return Clamped.init(min:max:)(v17, v18, a1, v22);
}

_DWORD *variable initialization expression of Synchronized.lock()
{
  result = swift_slowAlloc();
  *result = 0;
  return result;
}

uint64_t sub_25837C440@<X0>(uint64_t a1@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v3(a1, 1, 1, TupleTypeMetadata2);
}

double variable initialization expression of Transformer.$__lazy_storage_$_clipToView@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

unint64_t variable initialization expression of ImageProcessor.bufferOptions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842BFA0;
  *(inited + 32) = sub_258428660();
  *(inited + 40) = v1;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = sub_258428660();
  *(inited + 64) = v2;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v3 = sub_258389488(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927B78);
  swift_arrayDestroy();
  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of LocalPlaneDetector.planeSolver()
{
  type metadata accessor for PlaneSolver();
  swift_allocObject();
  return sub_2583D4520();
}

double variable initialization expression of LocalPlaneDetector.localPlane@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  return result;
}

uint64_t variable initialization expression of MeasureObject.id()
{
  v0 = sub_2584283F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v4 = sub_2584283B0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t variable initialization expression of DepthProcessor.debugOptions()
{
  if (qword_27F927A60 != -1)
  {
    swift_once();
  }

  return qword_27F92F230;
}

double variable initialization expression of PatchTracker.$__lazy_storage_$_embossBuffer@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double variable initialization expression of PatchTracker.threePointOffsets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F927B80);
  v0 = swift_allocObject();
  v0[1] = xmmword_25842BFB0;
  v0[2] = xmmword_25842BFC0;
  result = -15.0;
  __asm { FMOV            V1.2D, #15.0 }

  v0[3] = xmmword_25842BFD0;
  v0[4] = _Q1;
  return result;
}

uint64_t variable initialization expression of PatchTracker.debugOptions()
{
  if (qword_27F927A78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static PatchTracker.DebugOptions.default;
}

double variable initialization expression of PatchTracker.debugger@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of PatchTracker.Keyframe.$__lazy_storage_$_weightedImage@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 256;
  return result;
}

unint64_t variable initialization expression of PlaneSelector.patchTrackingMode()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_258428630();
  v2 = [v0 integerForKey_];

  result = _s17MeasureFoundation18RecordReplayOptionO8rawValueACSgSi_tcfC_0(v2);
  if (result == 5)
  {
    __break(1u);
  }

  return result;
}

unint64_t variable initialization expression of PlaneSelector.adTestMode()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_258428630();
  v2 = [v0 integerForKey_];

  result = _s17MeasureFoundation0A12UnitDetailedO8rawValueACSgSi_tcfC_0(v2);
  if (result == 4)
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaneSelector._planeSelectionStats@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *variable initialization expression of PlaneSolver.indices()
{
  result = sub_2584288E0();
  result[2] = 3;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  return result;
}

uint64_t variable initialization expression of Ransac.randomInliners()
{
  swift_getAssociatedTypeWitness();

  return sub_2584288D0();
}

uint64_t variable initialization expression of MetalScene.rootNode()
{
  type metadata accessor for MetalNode();
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 32) = 257;
  *(result + 34) = 1;
  v2 = qword_27F927FE8;
  *(result + 16) = qword_27F927FE8;
  *(result + 24) = v1;
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    qword_27F927FE8 = v2 + 1;
  }

  return result;
}

_DWORD *variable initialization expression of MeasureCore.allPlanesLock()
{
  result = swift_slowAlloc();
  *result = 0;
  return result;
}

id variable initialization expression of MeasureCore.drawDebugPlanes()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id variable initialization expression of SegmentationProcessor.lock()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC60]);

  return [v0 init];
}

double variable initialization expression of ADProcessor.cameraToWorld@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  return result;
}

id variable initialization expression of ADProcessor.isGuidedFilterEnabled()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_258428630();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t variable initialization expression of ADProcessor.device()
{
  if (qword_27F9279B8 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

double variable initialization expression of GuideSegments.primary@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double variable initialization expression of WorldLineGuide.segments@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  return result;
}

double variable initialization expression of WorldPlaneContext.lastHitTestResult@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

BOOL sub_25837D9FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_25837DAF8()
{
  sub_2584293C0();
  swift_getWitnessTable();
  sub_258428420();
  return sub_2584293F0();
}

uint64_t sub_25837DB8C()
{
  v0 = sub_258428660();
  v1 = MEMORY[0x259C7E060](v0);

  return v1;
}

uint64_t sub_25837DBC8()
{
  sub_258428660();
  sub_2584286C0();
}

uint64_t sub_25837DC1C()
{
  sub_258428660();
  sub_2584293C0();
  sub_2584286C0();
  v0 = sub_2584293F0();

  return v0;
}

uint64_t sub_25837DC90(uint64_t a1, id *a2)
{
  result = sub_258428640();
  *a2 = 0;
  return result;
}

uint64_t sub_25837DD08(uint64_t a1, id *a2)
{
  v3 = sub_258428650();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25837DD88@<X0>(uint64_t *a1@<X8>)
{
  sub_258428660();
  v2 = sub_258428630();

  *a1 = v2;
  return result;
}

uint64_t sub_25837DDD8()
{
  swift_getWitnessTable();

  return sub_258428410();
}

void *sub_25837DE44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_25837DE7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25837DEA8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_25837DF70()
{
  v0 = sub_258428660();
  v2 = v1;
  if (v0 == sub_258428660() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258429310();
  }

  return v5 & 1;
}

uint64_t sub_25837DFF8(uint64_t a1)
{
  v2 = sub_25837EFD0(&qword_27F927DA0, type metadata accessor for FileAttributeKey);
  v3 = sub_25837EFD0(&qword_27F927DA8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25837E0B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2583B8D44();

  *a1 = v2;
  return result;
}

uint64_t sub_25837E0F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258428660();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25837E124(uint64_t a1)
{
  v2 = sub_25837EFD0(&qword_27F927D50, type metadata accessor for URLResourceKey);
  v3 = sub_25837EFD0(&qword_27F927D58, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25837E1E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_258428630();

  *a1 = v2;
  return result;
}

uint64_t sub_25837E228(uint64_t a1)
{
  v2 = sub_25837EFD0(&qword_27F927DB0, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_25837EFD0(&qword_27F927DB8, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25837E2F8(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 8) = 0u;
  result = a1 + 8;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  return result;
}

uint64_t sub_25837E358()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25837E424(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  v9 = *(a3[4] - 8);
  if (v8 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v9 + 84);
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = a3[5];
  v14 = *(v13 - 8);
  v15 = *(v7 + 80);
  v16 = *(*(a3[3] - 8) + 64);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v14 + 80);
  if (*(v14 + 84) <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(*(a3[2] - 8) + 64) + v15;
  if (v20 < a2)
  {
    v22 = ((*(*(v13 - 8) + 64) + ((v18 + v19 + ((v16 + v17 + (v21 & ~v15)) & ~v17)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v23 = a2 - v20;
    v24 = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = v23 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    v27 = v25 >= 2 ? v26 : 0;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v22);
        if (v28)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v28 = *(a1 + v22);
        if (v28)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v27)
    {
      v28 = *(a1 + v22);
      if (v28)
      {
LABEL_26:
        v29 = v28 - 1;
        if (v24)
        {
          v29 = 0;
          v30 = *a1;
        }

        else
        {
          v30 = 0;
        }

        return v20 + (v30 | v29) + 1;
      }
    }

    if (!v20)
    {
      return 0;
    }
  }

  if (v6 == v20)
  {
    v31 = *(v5 + 48);

    return v31();
  }

  else
  {
    v33 = (a1 + v21) & ~v15;
    if (v8 == v20)
    {
      v34 = *(v7 + 48);
      v35 = *(v7 + 84);
      v36 = a3[3];
    }

    else
    {
      v33 = (v33 + v16 + v17) & ~v17;
      if (v11 == v20)
      {
        v34 = *(*(a3[4] - 8) + 48);
        v35 = v11;
        v36 = a3[4];
      }

      else
      {
        v37 = ~v19;
        v38 = v33 + v18 + v19;
        v34 = *(v14 + 48);
        v33 = v38 & v37;
        v35 = *(v14 + 84);
        v36 = a3[5];
      }
    }

    return v34(v33, v35, v36);
  }
}

unsigned int *sub_25837E790(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = a4[4];
  v7 = *(v5 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v6 - 8) + 64);
  v20 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v14 + 84);
  }

  v22 = v15 + v16;
  v23 = ((*(v14 + 64) + ((v19 + v20 + ((v17 + v18 + ((v15 + v16) & ~v16)) & ~v18)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 >= a3)
  {
    v27 = 0;
    v28 = a2 - v21;
    if (a2 <= v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = a3 - v21;
    if (v23)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = a2 - v21;
    if (a2 <= v21)
    {
LABEL_23:
      if (v27 > 1)
      {
        if (v27 != 2)
        {
          *(result + v23) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_39;
        }

        *(result + v23) = 0;
      }

      else if (v27)
      {
        *(result + v23) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_39:
        if (v7 == v21)
        {
          v32 = *(v5 + 56);

          return v32();
        }

        else
        {
          v33 = (result + v22) & ~v16;
          if (v9 == v21)
          {
            v34 = *(v8 + 56);
          }

          else
          {
            v33 = (v33 + v17 + v18) & ~v18;
            if (v12 == v21)
            {
              v34 = *(v11 + 56);
            }

            else
            {
              v35 = v33 + v19 + v20;
              v34 = *(v14 + 56);
              v33 = v35 & ~v20;
            }
          }

          return v34(v33);
        }
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_39;
    }
  }

  if (v23)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  if (v23)
  {
    v30 = ~v21 + a2;
    v31 = result;
    bzero(result, v23);
    result = v31;
    *v31 = v30;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      *(result + v23) = v29;
    }

    else
    {
      *(result + v23) = v29;
    }
  }

  else if (v27)
  {
    *(result + v23) = v29;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25837EB88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25837EBA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25837EC38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25837EC58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_25837ECC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25837ECE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25837ED48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25837ED68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25837EE00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25837EE20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25837EE7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25837EE9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_25837EFD0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25837F238(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_25837F58C()
{
  v0 = sub_258428330();
  __swift_allocate_value_buffer(v0, qword_27F92F150);
  v1 = __swift_project_value_buffer(v0, qword_27F92F150);
  return sub_25837F674(v1);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_25837F674@<X0>(uint64_t a1@<X8>)
{
  v20[15] = *MEMORY[0x277D85DE8];
  v2 = sub_258428330();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584282D0();
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_258428300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842BFA0;
  v9 = *MEMORY[0x277CCA160];
  *(inited + 32) = *MEMORY[0x277CCA160];
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  v11 = *MEMORY[0x277CCA120];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 104) = v10;
  *(inited + 80) = 0x656C69626F6DLL;
  *(inited + 88) = 0xE600000000000000;
  v12 = v9;
  v13 = v11;
  sub_258388AE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927EE8);
  swift_arrayDestroy();
  type metadata accessor for FileAttributeKey(0);
  sub_25837F950();
  v14 = sub_258428500();

  v20[0] = 0;
  v15 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v14 error:v20];

  v19 = v20[0];
  if (v15)
  {
    (*(v3 + 32))(a1, v5, v2);
    v16 = v19;

    return v16;
  }

  else
  {
    v18 = v19;
    sub_2584282A0();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_25837F950()
{
  result = qword_27F927DA0;
  if (!qword_27F927DA0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F927DA0);
  }

  return result;
}

float ARCamera.gravityOffsetAngle.getter()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 orientation];

  [v0 eulerAngles];
  result = v3;
  if (v2 <= 2)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return v3 + -1.5708;
      }

      return result;
    }

    return v3 + 1.5708;
  }

  if (v2 == 5)
  {
    return v3 + 1.5708;
  }

  if (v2 == 3)
  {
    return v3 + 3.1416;
  }

  return result;
}

Swift::Float __swiftcall ARCamera.gravityOffsetAngle(for:)(UIDeviceOrientation a1)
{
  [v1 eulerAngles];
  result = v3;
  if (a1 <= UIDeviceOrientationPortraitUpsideDown)
  {
    if (a1 != UIDeviceOrientationPortrait)
    {
      if (a1 == UIDeviceOrientationPortraitUpsideDown)
      {
        return v3 + -1.5708;
      }

      return result;
    }

    return v3 + 1.5708;
  }

  if (a1 == UIDeviceOrientationFaceUp)
  {
    return v3 + 1.5708;
  }

  if (a1 == UIDeviceOrientationLandscapeLeft)
  {
    return v3 + 3.1416;
  }

  return result;
}

uint64_t ARCamera.TrackingState.description.getter()
{
  v1 = v0;
  v2 = sub_258428D30();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_258428D40();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25837FE34(v1, v11);
  v12 = (*(v3 + 48))(v11, 2, v2);
  if (v12)
  {
    if (v12 == 1)
    {
      return 0x6961764120746F4ELL;
    }

    else
    {
      return 0x6C616D726F4ELL;
    }
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    v14 = (*(v3 + 88))(v6, v2);
    if (v14 == *MEMORY[0x277D82D90])
    {
      goto LABEL_5;
    }

    if (v14 == *MEMORY[0x277D82DA0])
    {
      (*(v3 + 8))(v8, v2);
      return 0xD000000000000021;
    }

    if (v14 == *MEMORY[0x277D82DA8])
    {
      (*(v3 + 8))(v8, v2);
      return 0xD000000000000026;
    }

    if (v14 == *MEMORY[0x277D82D98])
    {
LABEL_5:
      (*(v3 + 8))(v8, v2);
      return 0xD00000000000001DLL;
    }

    result = sub_258429100();
    __break(1u);
  }

  return result;
}

uint64_t sub_25837FE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_258428D40();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ARCamera.TrackingState.analyticsDescription.getter()
{
  v1 = v0;
  v2 = sub_258428D30();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_258428D40();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25837FE34(v1, v11);
  v12 = (*(v3 + 48))(v11, 2, v2);
  if (!v12)
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    v14 = (*(v3 + 88))(v6, v2);
    if (v14 == *MEMORY[0x277D82D90])
    {
      (*(v3 + 8))(v8, v2);
      v15 = 0x616974696E69;
    }

    else
    {
      if (v14 == *MEMORY[0x277D82DA0])
      {
        (*(v3 + 8))(v8, v2);
        return 0x7669737365637865;
      }

      if (v14 == *MEMORY[0x277D82DA8])
      {
        (*(v3 + 8))(v8, v2);
        return 0xD000000000000014;
      }

      if (v14 != *MEMORY[0x277D82D98])
      {
        result = sub_258429100();
        __break(1u);
        return result;
      }

      (*(v3 + 8))(v8, v2);
      v15 = 0x61636F6C6572;
    }

    return v15 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
  }

  if (v12 == 1)
  {
    return 0x6C69617641746F6ELL;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

void sub_2583801F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript_];

  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v2 setFormat_];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript_];

  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v4 setOffset_];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript_];

  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v6 setBufferIndex_];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v8 setFormat_];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v10 setOffset_];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v12 setBufferIndex_];

  v13 = [v0 layouts];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v14 setStride_];

  v15 = [v0 layouts];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v16 setStepRate_];

  v17 = [v0 layouts];
  v18 = [v17 objectAtIndexedSubscript_];

  if (v18)
  {
    [v18 setStepFunction_];

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t *ADTransformer.adImagePlaneVertexDescriptor.unsafeMutableAddressor()
{
  if (qword_27F9279A8 != -1)
  {
    swift_once();
  }

  return &static ADTransformer.adImagePlaneVertexDescriptor;
}

id static ADTransformer.adImagePlaneVertexDescriptor.getter()
{
  if (qword_27F9279A8 != -1)
  {
    swift_once();
  }

  v1 = static ADTransformer.adImagePlaneVertexDescriptor;

  return v1;
}

CGAffineTransform *ADTransformer.viewToPortraitCamera.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 1136))
  {
    v4 = *(v1 + 40);
    v3 = *(v1 + 48);
    CGAffineTransformMakeScale(&t1, 1.0 / *(v1 + 16), 1.0 / *(v1 + 24));
    tx = t1.tx;
    ty = t1.ty;
    v19 = *&t1.c;
    v21 = *&t1.a;
    ARViewToCameraImageTransform();
    v7 = *&t1.a;
    v8 = *&t1.c;
    v9 = *&t1.tx;
    *&t1.a = v21;
    *&t1.c = v19;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v7;
    *&t2.c = v8;
    *&t2.tx = v9;
    CGAffineTransformConcat(&v23, &t1, &t2);
    v10 = v23.tx;
    v11 = v23.ty;
    v20 = *&v23.c;
    v22 = *&v23.a;
    CGAffineTransformMakeScale(&t1, v3, v4);
    v12 = *&t1.a;
    v13 = *&t1.c;
    v14 = *&t1.tx;
    *&t1.a = v22;
    *&t1.c = v20;
    t1.tx = v10;
    t1.ty = v11;
    *&t2.a = v12;
    *&t2.c = v13;
    *&t2.tx = v14;
    result = CGAffineTransformConcat(&v23, &t1, &t2);
    v17 = *&v23.a;
    v16 = *&v23.c;
    v18 = *&v23.tx;
    *(v1 + 1088) = *&v23.a;
    *(v1 + 1104) = v16;
    *(v1 + 1120) = v18;
    *(v1 + 1136) = 0;
  }

  else
  {
    v18 = *(v1 + 1120);
    v16 = *(v1 + 1104);
    v17 = *(v1 + 1088);
  }

  *a1 = v17;
  a1[1] = v16;
  a1[2] = v18;
  return result;
}

double ADTransformer.cameraCropRect.getter()
{
  if ((*(v0 + 1176) & 1) == 0)
  {
    return *(v0 + 1144);
  }

  sub_2583807AC(v0);
  *(v0 + 1144) = result;
  *(v0 + 1152) = v2;
  *(v0 + 1160) = v3;
  *(v0 + 1168) = v4;
  *(v0 + 1176) = 0;
  return result;
}

void sub_2583807AC(double *a1)
{
  v2 = a1[128];
  v3 = a1[129];
  v4 = a1[130];
  v5 = a1[131];
  IsPortrait = UIInterfaceOrientationIsPortrait(*(a1 + 134));
  if (IsPortrait)
  {
    ADTransformer.viewToPortraitCamera.getter(&v10);
  }

  else
  {
    Transformer.viewToCamera.getter(&v10);
  }

  v9 = v10;
  v11.origin.x = v2;
  v11.origin.y = v3;
  v11.size.width = v4;
  v11.size.height = v5;
  v12 = CGRectApplyAffineTransform(v11, &v9);
  v13 = CGRectIntegral(v12);
  v7 = 5;
  if (IsPortrait)
  {
    v8 = 6;
  }

  else
  {
    v8 = 5;
  }

  if (!IsPortrait)
  {
    v7 = 6;
  }

  v14.size.height = a1[v7];
  v14.size.width = a1[v8];
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  CGRectIntersection(v13, v14);
}

void ADTransformer.cameraToADScale.getter()
{
  if (*(v0 + 1200))
  {
    v3.origin.x = ADTransformer.cameraCropRect.getter();
    v1 = 256.0 / CGRectGetWidth(v3);
    v2 = 192.0 / CGRectGetHeight(*(v0 + 1144));
    if (vabdd_f64(v1, v2) >= 0.0001)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 1184) = v1;
      *(v0 + 1192) = v2;
      *(v0 + 1200) = 0;
    }
  }
}

void ADTransformer.viewToAD.getter(_OWORD *a1@<X8>)
{
  v3 = (v1 + 1208);
  if (*(v1 + 1256))
  {
    sub_258380970(v7);
    v5 = v7[0];
    v4 = v7[1];
    v6 = v7[2];
    *v3 = v7[0];
    *(v1 + 1224) = v4;
    *(v1 + 1240) = v6;
    *(v1 + 1256) = 0;
  }

  else
  {
    v4 = *(v1 + 1224);
    v6 = *(v1 + 1240);
    v5 = *v3;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
}

CGFloat sub_258380970@<D0>(_OWORD *a1@<X8>)
{
  if (UIInterfaceOrientationIsPortrait(*(v1 + 1072)))
  {
    ADTransformer.viewToPortraitCamera.getter(&v27);
  }

  else
  {
    Transformer.viewToCamera.getter(&v27);
  }

  v4 = v28;
  v3 = v29;
  v6 = v30;
  v5 = v31;
  v7 = v27;
  if (ADTransformer.cameraCropRect.getter() == 0.0)
  {
    if ((*(v1 + 1152) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      ADTransformer.cameraToADScale.getter();
      CGAffineTransformMakeScale(&t1, v18, *(v1 + 1192));
      v15 = *&t1.a;
      v16 = *&t1.c;
      v17 = *&t1.tx;
      *&t1.a = v7;
      t1.c = v4;
      t1.d = v3;
      t1.tx = v6;
      t1.ty = v5;
      goto LABEL_10;
    }

    v8 = *(v1 + 1152);
  }

  else
  {
    v8 = *(v1 + 1152);
  }

  CGAffineTransformMakeTranslation(&t1, -*(v1 + 1144), -v8);
  v9 = *&t1.a;
  v10 = *&t1.c;
  v11 = *&t1.tx;
  *&t1.a = v7;
  t1.c = v4;
  t1.d = v3;
  t1.tx = v6;
  t1.ty = v5;
  *&t2.a = v9;
  *&t2.c = v10;
  *&t2.tx = v11;
  CGAffineTransformConcat(&v24, &t1, &t2);
  tx = v24.tx;
  ty = v24.ty;
  v22 = *&v24.c;
  v23 = *&v24.a;
  ADTransformer.cameraToADScale.getter();
  CGAffineTransformMakeScale(&t1, v14, *(v1 + 1192));
  v15 = *&t1.a;
  v16 = *&t1.c;
  v17 = *&t1.tx;
  *&t1.a = v23;
  *&t1.c = v22;
  t1.tx = tx;
  t1.ty = ty;
LABEL_10:
  *&t2.a = v15;
  *&t2.c = v16;
  *&t2.tx = v17;
  CGAffineTransformConcat(&v24, &t1, &t2);
  result = v24.a;
  v20 = *&v24.c;
  v21 = *&v24.tx;
  *a1 = *&v24.a;
  a1[1] = v20;
  a1[2] = v21;
  return result;
}

CGAffineTransform *ADTransformer.adToView.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 1312))
  {
    ADTransformer.viewToAD.getter(&v9);
    v8 = v9;
    result = CGAffineTransformInvert(&v7, &v8);
    v5 = *&v7.a;
    v4 = *&v7.c;
    v6 = *&v7.tx;
    *(v1 + 1264) = *&v7.a;
    *(v1 + 1280) = v4;
    *(v1 + 1296) = v6;
    *(v1 + 1312) = 0;
  }

  else
  {
    v6 = *(v1 + 1296);
    v4 = *(v1 + 1280);
    v5 = *(v1 + 1264);
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  return result;
}

CGAffineTransform *ADTransformer.adToClip.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 1320);
  if (*(v1 + 1368))
  {
    ADTransformer.adToView.getter(v13);
    v4 = v14;
    v5 = v15;
    Transformer.viewToClip.getter(&v16);
    *&t1.a = v13[0];
    *&t1.c = v13[1];
    t1.tx = v4;
    t1.ty = v5;
    t2 = v16;
    result = CGAffineTransformConcat(&v10, &t1, &t2);
    v8 = *&v10.a;
    v7 = *&v10.c;
    v9 = *&v10.tx;
    *v3 = *&v10.a;
    *(v1 + 1336) = v7;
    *(v1 + 1352) = v9;
    *(v1 + 1368) = 0;
  }

  else
  {
    v7 = *(v1 + 1336);
    v9 = *(v1 + 1352);
    v8 = *v3;
  }

  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  return result;
}

CGAffineTransform *ADTransformer.clipToAD.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 1424))
  {
    ADTransformer.adToClip.getter(&v9);
    v8 = v9;
    result = CGAffineTransformInvert(&v7, &v8);
    v5 = *&v7.a;
    v4 = *&v7.c;
    v6 = *&v7.tx;
    *(v1 + 1376) = *&v7.a;
    *(v1 + 1392) = v4;
    *(v1 + 1408) = v6;
    *(v1 + 1424) = 0;
  }

  else
  {
    v6 = *(v1 + 1408);
    v4 = *(v1 + 1392);
    v5 = *(v1 + 1376);
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  return result;
}

CGAffineTransform *ADTransformer.adToCamera.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + 1432);
  if (*(v1 + 1480))
  {
    ADTransformer.adToView.getter(v13);
    v4 = v14;
    v5 = v15;
    Transformer.viewToCamera.getter(&v16);
    *&t1.a = v13[0];
    *&t1.c = v13[1];
    t1.tx = v4;
    t1.ty = v5;
    t2 = v16;
    result = CGAffineTransformConcat(&v10, &t1, &t2);
    v8 = *&v10.a;
    v7 = *&v10.c;
    v9 = *&v10.tx;
    *v3 = *&v10.a;
    *(v1 + 1448) = v7;
    *(v1 + 1464) = v9;
    *(v1 + 1480) = 0;
  }

  else
  {
    v7 = *(v1 + 1448);
    v9 = *(v1 + 1464);
    v8 = *v3;
  }

  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  return result;
}

CGAffineTransform *ADTransformer.cameraToAD.getter@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 1536))
  {
    ADTransformer.adToCamera.getter(&v9);
    v8 = v9;
    result = CGAffineTransformInvert(&v7, &v8);
    v5 = *&v7.a;
    v4 = *&v7.c;
    v6 = *&v7.tx;
    *(v1 + 1488) = *&v7.a;
    *(v1 + 1504) = v4;
    *(v1 + 1520) = v6;
    *(v1 + 1536) = 0;
  }

  else
  {
    v6 = *(v1 + 1520);
    v4 = *(v1 + 1504);
    v5 = *(v1 + 1488);
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  return result;
}

uint64_t sub_258380DAC()
{
}

uint64_t ADTransformer.deinit()
{

  return v0;
}

uint64_t ADTransformer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_258380E94@<D0>(_OWORD *a1@<X8>)
{
  ADTransformer.viewToPortraitCamera.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_258380ED8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 1088) = *a1;
  *(v2 + 1104) = v3;
  result = *(a1 + 32);
  *(v2 + 1120) = result;
  *(v2 + 1136) = 0;
  return result;
}

void sub_258380EF8(uint64_t a1@<X8>)
{
  *a1 = ADTransformer.cameraCropRect.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_258380F28(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = (*a2 + 1144);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  *(v2 + 1176) = 0;
  return result;
}

void sub_258380F40(void *a1@<X8>)
{
  ADTransformer.cameraToADScale.getter();
  *a1 = v2;
  a1[1] = v3;
}

__n128 sub_258380F6C(__n128 *a1, __n128 **a2)
{
  v2 = *a2;
  result = *a1;
  v2[74] = *a1;
  v2[75].n128_u8[0] = 0;
  return result;
}

double sub_258380F80@<D0>(_OWORD *a1@<X8>)
{
  ADTransformer.viewToAD.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_258380FC4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 1208;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v2 + 1256) = 0;
  return result;
}

double sub_258380FE4@<D0>(_OWORD *a1@<X8>)
{
  ADTransformer.adToView.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_258381028(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 1264) = *a1;
  *(v2 + 1280) = v3;
  result = *(a1 + 32);
  *(v2 + 1296) = result;
  *(v2 + 1312) = 0;
  return result;
}

double sub_258381048@<D0>(_OWORD *a1@<X8>)
{
  ADTransformer.adToClip.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_25838108C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 1320;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v2 + 1368) = 0;
  return result;
}

double sub_2583810AC@<D0>(_OWORD *a1@<X8>)
{
  ADTransformer.clipToAD.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583810F0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 1376) = *a1;
  *(v2 + 1392) = v3;
  result = *(a1 + 32);
  *(v2 + 1408) = result;
  *(v2 + 1424) = 0;
  return result;
}

double sub_258381110@<D0>(_OWORD *a1@<X8>)
{
  ADTransformer.adToCamera.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_258381154(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 1432;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v2 + 1480) = 0;
  return result;
}

double sub_258381174@<D0>(_OWORD *a1@<X8>)
{
  ADTransformer.cameraToAD.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

__n128 sub_2583811B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 1488) = *a1;
  *(v2 + 1504) = v3;
  result = *(a1 + 32);
  *(v2 + 1520) = result;
  *(v2 + 1536) = 0;
  return result;
}

uint64_t sub_2583811FC(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 1000) = &unk_28697E240;
  *(v3 + 1008) = &unk_28697E280;
  *(v3 + 1088) = 0u;
  *(v3 + 1104) = 0u;
  *(v3 + 1120) = 0u;
  *(v3 + 1136) = 1;
  *(v3 + 1144) = 0u;
  *(v3 + 1160) = 0u;
  *(v3 + 1176) = 1;
  *(v3 + 1184) = 0u;
  *(v3 + 1200) = 1;
  *(v3 + 1208) = 0u;
  *(v3 + 1224) = 0u;
  *(v3 + 1240) = 0u;
  *(v3 + 1256) = 1;
  *(v3 + 1296) = 0u;
  *(v3 + 1280) = 0u;
  *(v3 + 1264) = 0u;
  *(v3 + 1312) = 1;
  *(v3 + 1320) = 0u;
  *(v3 + 1336) = 0u;
  *(v3 + 1352) = 0u;
  *(v3 + 1368) = 1;
  *(v3 + 1376) = 0u;
  *(v3 + 1392) = 0u;
  *(v3 + 1408) = 0u;
  *(v3 + 1424) = 1;
  *(v3 + 1432) = 0u;
  *(v3 + 1448) = 0u;
  *(v3 + 1464) = 0u;
  *(v3 + 1480) = 1;
  *(v3 + 1488) = 0u;
  *(v3 + 1504) = 0u;
  *(v3 + 1520) = 0u;
  *(v3 + 1536) = 1;
  *(v3 + 1016) = a3;

  v21.origin.x = _s17MeasureFoundation15ADConfigurationC12viewCropRectSo6CGRectVvg_0();
  *(v3 + 1024) = v21;
  *(v3 + 1056) = xmmword_25842CAF0;
  *(v3 + 1072) = 3;
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  Width = CGRectGetWidth(v21);
  v10 = v7;
  v11 = Width / v10;
  Height = CGRectGetHeight(*(v3 + 1024));
  v13 = v8;
  v14 = Height / v13;
  IsLandscape = UIInterfaceOrientationIsLandscape(*(v3 + 1072));
  v16 = 1000;
  if (IsLandscape)
  {
    v16 = 1008;
  }

  v17 = *(v3 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
  result = swift_allocObject();
  *(result + 16) = xmmword_25842CB00;
  *(result + 32) = -v11;
  *(result + 36) = -v14;
  v19 = *(v17 + 16);
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(result + 40) = *(v17 + 32);
  if (v19 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(result + 44) = *(v17 + 36);
  *(result + 48) = v11;
  *(result + 52) = -v14;
  if (v19 < 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(result + 56) = *(v17 + 40);
  if (v19 == 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(result + 60) = *(v17 + 44);
  *(result + 64) = -v11;
  *(result + 68) = v14;
  if (v19 < 5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(result + 72) = *(v17 + 48);
  if (v19 == 5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(result + 76) = *(v17 + 52);
  *(result + 80) = v11;
  *(result + 84) = v14;
  if (v19 < 7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(result + 88) = *(v17 + 56);
  if (v19 == 7)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *(result + 92) = *(v17 + 60);
  *(v3 + 1080) = result;
  *(v3 + 848) = 0u;
  *(v3 + 864) = 0u;
  *(v3 + 880) = 0u;
  *(v3 + 896) = 0u;
  *(v3 + 912) = 1;
  *(v3 + 928) = 0u;
  *(v3 + 944) = 0u;
  *(v3 + 960) = 0u;
  *(v3 + 976) = 0u;
  *(v3 + 992) = 1;

  return sub_2583A6EB4(a1, a2, v7, v8);
}

__n128 ARFrame.getHitRay(cameraPoint:)()
{
  v1 = [v0 camera];
  v6 = 1;
  memset(v4, 0, sizeof(v4));
  v5 = 1;
  v3 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v1, v4);

  return v3;
}

__n128 ARFrame.getHitRay()()
{
  v1 = [v0 camera];
  v6 = 1;
  memset(v4, 0, sizeof(v4));
  v5 = 1;
  v3 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v1, v4);

  return v3;
}

double ARFrame.viewToCamera(screenPoint:sceneView:orientation:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v8 = [v4 camera];
  ObjectType = swift_getObjectType();
  v10 = (*(a4 + 24))(ObjectType, a4, a1, a2);
  v12 = v11;
  (*(a4 + 8))(ObjectType, a4);
  [v8 imageResolution];
  ARViewToCameraImageTransform();
  v16.x = v10;
  v16.y = v12;
  *&v13 = *&CGPointApplyAffineTransform(v16, &v15);

  return v13;
}

void static ARFrame.viewToCamera(screenPoint:sceneView:camera:orientation:)(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a4 + 24))(ObjectType, a4, a1, a2);
  v12 = v11;
  (*(a4 + 8))(ObjectType, a4);
  [a5 imageResolution];
  ARViewToCameraImageTransform();
  v14.x = v10;
  v14.y = v12;
  CGPointApplyAffineTransform(v14, &v13);
}

Swift::Bool __swiftcall ARFrame.isVIOTrackingUnacceptable()()
{
  v1 = [v0 worldTrackingState];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 vioTrackingState];

  return v3 != 0;
}

__n128 _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(void *a1, uint64_t a2)
{
  v11 = *(a2 + 48);
  [a1 projectionMatrix];
  if (*(a2 + 64))
  {
    v9 = v4.columns[1];
    v10 = v4.columns[0];
    v7 = v4.columns[3];
    v8 = v4.columns[2];
    [a1 transform];
    v4.columns[0] = v10;
    v4.columns[1] = v9;
    v4.columns[2] = v8;
    v11 = v5;
    v4.columns[3] = v7;
  }

  __invert_f4(v4);
  return v11;
}

Swift::Void __swiftcall simd_float3x3.copy(from:)(CGAffineTransform *from)
{
  a = from->a;
  *&v3 = a;
  c = from->c;
  *(&v3 + 1) = c;
  *&v5 = from->tx;
  *(&v3 + 1) = v5;
  *&v6 = from->b;
  *&v7 = from->d;
  *&v8 = from->ty;
  *&v9 = __PAIR64__(v7, v6);
  *(&v9 + 1) = v8;
  *v1 = v3;
  v1[1] = v9;
  v1[2] = xmmword_25842CBC0;
}

float32x2_t convertToDisplayCoordinates(_:forKeyFrame:viewSize:)(void *a1, uint64_t a2, CGFloat a3, double a4, float64_t a5, float64_t a6)
{
  v7 = 1.0 - a4;
  [a1 displayTransformForOrientation:a2 viewportSize:{a5, a6}];
  v14.x = a3;
  v14.y = v7;
  v8 = CGPointApplyAffineTransform(v14, &v13);
  v9.f64[0] = a5;
  v9.f64[1] = a6;
  return vcvt_f32_f64(vmulq_f64(v8, v9));
}

uint64_t sub_258381A74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258381ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void DepthTransformer.jasperToARKitCamera.getter()
{
  if (v0[57].i8[0])
  {
    sub_258381F24(&unk_28697E2C0);
    v16 = v1;
    sub_258381F24(&unk_28697E2F0);
    v15 = v2;
    sub_258381F24(&unk_28697E320);
    v13 = v3;
    sub_258381F24(&unk_28697E350);
    v14 = v4;
    v5 = ARCameraToDisplayRotation() * 0.017453;
    if (qword_27F9279F8 != -1)
    {
      swift_once();
    }

    v12 = static SIMD3<>.forward;
    v6 = __sincosf_stret(v5 * 0.5);
    v7 = vmulq_n_f32(v12, v6.__sinval);
    v7.n128_u32[3] = LODWORD(v6.__cosval);
    *v8.i64 = MEMORY[0x259C7E590](v7);
    v0[53] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v8.f32[0]), v15, *v8.f32, 1), v13, v8, 2), v14, v8, 3);
    v0[54] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v9.f32[0]), v15, *v9.f32, 1), v13, v9, 2), v14, v9, 3);
    v0[55] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v10.f32[0]), v15, *v10.f32, 1), v13, v10, 2), v14, v10, 3);
    v0[56] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v11.f32[0]), v15, *v11.f32, 1), v13, v11, 2), v14, v11, 3);
    v0[57].i8[0] = 0;
  }
}

__n128 DepthTransformer.arkitToJasperCamera.getter()
{
  if (*(v0 + 992))
  {
    DepthTransformer.jasperToARKitCamera.getter();
    v3 = __invert_f4(v2);
    *(v0 + 928) = v3;
    *(v0 + 992) = 0;
  }

  else
  {
    v3.columns[0] = *(v0 + 928);
  }

  return v3.columns[0];
}

float32x2_t sub_258381CB4(uint64_t a1, CGFloat a2, CGFloat a3, float a4)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  Transformer.viewToCamera.getter(&v23);
  v22 = v23;
  v24.x = a2;
  v24.y = a3;
  v14 = CGPointApplyAffineTransform(v24, &v22);
  if (*(a1 + 48))
  {
    v15 = v4[7];
    v16 = v4[8];
    v17 = v4[9];
  }

  else
  {
    v15.i64[0] = v9;
    v15.i64[1] = v8;
    v16.i64[0] = v11;
    v16.i64[1] = v10;
    v17.i64[0] = v13;
    v17.i64[1] = v12;
  }

  y = v14.y;
  x = v14.x;
  return vmul_n_f32(*&vaddq_f32(v17, vmlaq_n_f32(vmulq_n_f32(v15, x), v16, y)), a4);
}

double DepthTransformer.worldPoint(screenPoint:depth:cameraToWorld:cameraIntrinsicsInversed:)(uint64_t a1, CGFloat a2, CGFloat a3, float a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  *v8.f32 = sub_258381CB4(a1, a2, a3, a4);
  v16 = v8;
  DepthTransformer.jasperToARKitCamera.getter();
  v13 = vaddq_f32(v12, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v16.f32[0]), v10, *v16.f32, 1), v11, v16, 2));
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, v13.f32[0]), a6, *v13.f32, 1), a7, v13, 2), a8, v13, 3);
  *&result = vdivq_f32(v14, vdupq_laneq_s32(v14, 3)).u64[0];
  return result;
}

double DepthTransformer.worldPoint(localPoint:cameraToWorld:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  DepthTransformer.jasperToARKitCamera.getter();
  v9 = vaddq_f32(v8, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, a1.f32[0]), v6, *a1.f32, 1), v7, a1, 2));
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v9.f32[0]), a3, *v9.f32, 1), a4, v9, 2), a5, v9, 3);
  *&result = vdivq_f32(v10, vdupq_laneq_s32(v10, 3)).u64[0];
  return result;
}

double DepthTransformer.worldPoint(jasperPoint:cameraToWorld:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v12 = 0.001 * a1.f32[0];
  v13 = vmuls_lane_f32(0.001, *a1.f32, 1);
  v14 = vmuls_lane_f32(0.001, a1, 2);
  DepthTransformer.jasperToARKitCamera.getter();
  v9 = vaddq_f32(v8, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v12), v6, v13), v7, v14));
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v9.f32[0]), a3, *v9.f32, 1), a4, v9, 2), a5, v9, 3);
  *&result = vdivq_f32(v10, vdupq_laneq_s32(v10, 3)).u64[0];
  return result;
}

uint64_t sub_258381F24(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

__n128 sub_258381F98(uint64_t a1, uint64_t *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *a2;
  *(v6 + 848) = *a1;
  *(v6 + 864) = v3;
  *(v6 + 880) = v4;
  *(v6 + 896) = v5;
  *(v6 + 912) = 0;
  return result;
}

void keypath_getTm(double (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  *&v3 = a1();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

__n128 sub_258382008(uint64_t a1, uint64_t *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *a2;
  *(v6 + 928) = *a1;
  *(v6 + 944) = v3;
  *(v6 + 960) = v4;
  *(v6 + 976) = v5;
  *(v6 + 992) = 0;
  return result;
}

id KernelSimpleSobel.__allocating_init(coder:device:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithCoder:a1 device:a2];

  swift_unknownObjectRelease();
  return v4;
}

id KernelSimpleSobel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_258382254(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC17MeasureFoundation17KernelSimpleSobel_textureCache] = 0;
  if (qword_27F9279C0 != -1)
  {
    swift_once();
  }

  v4 = static MetalBundle.library;
  v5 = sub_258428630();
  v6 = [v4 newFunctionWithName_];

  if (!v6)
  {
    __break(1u);
  }

  v13[0] = 0;
  v7 = [a1 newComputePipelineStateWithFunction:v6 error:v13];
  swift_unknownObjectRelease();
  v8 = v13[0];
  if (v7)
  {
    *&v1[OBJC_IVAR____TtC17MeasureFoundation17KernelSimpleSobel_computePipeline] = v7;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v9 = v8;
    return objc_msgSendSuper2(&v12, sel_initWithDevice_, a1);
  }

  else
  {
    v11 = v13[0];
    sub_2584282A0();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t Clamped.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_258428DA0();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v2 + *(a1 + 40));
  v10 = *(v5 - 8);
  result = (*(v10 + 48))(v8, 1, v5);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v8, v5);
  }

  __break(1u);
  return result;
}

uint64_t Clamped.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_258382A9C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*Clamped.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Clamped.wrappedValue.getter(a2, v11);
  return sub_258382708;
}

void sub_258382708(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_258382A9C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_258382A9C((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Clamped.init(min:max:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Clamped();
  v12 = *(a3 - 8);
  (*(v12 + 56))(a4 + *(v8 + 40), 1, 1, a3);
  v11 = *(v12 + 32);
  v11(a4, a1, a3);
  v9 = a4 + *(v8 + 36);

  return (v11)(v9, a2, a3);
}

uint64_t Clamped.init(wrappedValue:min:max:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Clamped();
  v11 = *(v10 + 40);
  v12 = *(a4 - 8);
  v16 = *(v12 + 56);
  v16(a5 + v11, 1, 1, a4);
  v13 = *(v12 + 32);
  v13(a5, a2, a4);
  v13(a5 + *(v10 + 36), a3, a4);
  v14 = sub_258428DA0();
  (*(*(v14 - 8) + 8))(a5 + v11, v14);
  v13(a5 + v11, a1, a4);

  return (v16)(a5 + v11, 0, 1, a4);
}

uint64_t sub_258382A9C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_258428DA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  clamp<A>(_:min:max:)(a1, v2, v2 + *(a2 + 36), v5, &v11 - v8);
  (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
  return (*(v7 + 40))(v2 + *(a2 + 40), v9, v6);
}

uint64_t sub_258382BF8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_258428DA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_258382C84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v9 = v7 + ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80));
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_258382DE4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + *(v5 + 80) + ((v7 + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80);
  if (!v6)
  {
    ++v7;
  }

  v9 = v7 + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_41:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t benchmarkResult<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v7 = sub_258428DA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(a4 - 8);
  (*(v14 + 56))(v12, 1, 1, a4);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = v11;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_25838341C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258383428;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  v17 = benchmarkBlock(v16);
  _Block_release(v16);
  swift_beginAccess();
  (*(v8 + 16))(v10, v13, v7);
  result = (*(v14 + 48))(v10, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v20, v10, a4);

    return v17;
  }

  return result;
}

uint64_t sub_258383298(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = sub_258428DA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = swift_projectBox();
  a2();
  (*(*(a4 - 8) + 56))(v9, 0, 1, a4);
  swift_beginAccess();
  return (*(v7 + 40))(v10, v9, v6);
}

uint64_t sub_2583833DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_258383428(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::String __swiftcall benchmarkFormat(seconds:)(Swift::Double seconds)
{
  if (seconds >= 1.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25842CCB0;
    v5 = MEMORY[0x277D83A80];
    *(v4 + 56) = MEMORY[0x277D839F8];
    *(v4 + 64) = v5;
    if (seconds >= 60.0)
    {
      *(v4 + 32) = seconds / 60.0;
    }

    else
    {
      *(v4 + 32) = seconds;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_25842CCB0;
    v3 = MEMORY[0x277D83A80];
    *(v2 + 56) = MEMORY[0x277D839F8];
    *(v2 + 64) = v3;
    *(v2 + 32) = seconds * 1000.0;
  }

  v6 = sub_258428670();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall BenchmarkStats.prettyPrint(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_27F927B50 != -1)
  {
    swift_once();
  }

  v6 = qword_27F92F400;
  v5 = *algn_27F92F408;
  sub_258428FC0();

  v57 = countAndFlagsBits;
  MEMORY[0x259C7DFF0](0x676172657641093ALL, 0xEC000000202D2065);
  v7 = *(v1 + 40);
  v8 = benchmarkFormat(seconds:)(v7)._countAndFlagsBits;
  MEMORY[0x259C7DFF0](v8);

  v9 = countAndFlagsBits;
  sub_258428C50();
  v10 = qword_27F927A30;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = off_27F928850;
  if (*(off_27F928850 + 2) && (v13 = sub_258384364(v6, v5), (v14 & 1) != 0))
  {
    v15 = *(v12[7] + 8 * v13);
    swift_endAccess();
    v16 = v15;
  }

  else
  {
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v17 = sub_258428D90();
    swift_beginAccess();
    v16 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v16, v6, v5, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v58;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25842CCB0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  v56 = sub_258385D08();
  *(v19 + 64) = v56;
  *(v19 + 32) = v9;
  *(v19 + 40) = object;

  sub_258428440();

  MEMORY[0x259C7DFF0](0x202D2078614D093ALL, 0xE800000000000000);
  v20 = benchmarkFormat(seconds:)(*(v2 + 32))._countAndFlagsBits;
  MEMORY[0x259C7DFF0](v20);

  sub_258428C50();

  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v21 = off_27F928850;
  if (*(off_27F928850 + 2) && (v22 = sub_258384364(v6, v5), (v23 & 1) != 0))
  {
    v24 = *(v21[7] + 8 * v22);
    swift_endAccess();
    v25 = v24;
  }

  else
  {
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v26 = sub_258428D90();
    swift_beginAccess();
    v25 = v26;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v59 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v25, v6, v5, v27);

    off_27F928850 = v59;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25842CCB0;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = v56;
  *(v28 + 32) = v57;
  *(v28 + 40) = object;

  sub_258428440();

  sub_258428FC0();

  MEMORY[0x259C7DFF0](0xD000000000000013, 0x8000000258434050);
  v29 = benchmarkFormat(seconds:)(v7)._countAndFlagsBits;
  MEMORY[0x259C7DFF0](v29);

  sub_258428C50();

  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v30 = off_27F928850;
  if (*(off_27F928850 + 2) && (v31 = sub_258384364(v6, v5), (v32 & 1) != 0))
  {
    v33 = *(v30[7] + 8 * v31);
    swift_endAccess();
    v34 = v33;
  }

  else
  {
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v35 = sub_258428D90();
    swift_beginAccess();
    v34 = v35;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v60 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v34, v6, v5, v36);

    off_27F928850 = v60;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_25842CCB0;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = v56;
  *(v37 + 32) = v57;
  *(v37 + 40) = object;

  sub_258428440();

  sub_258428FC0();

  MEMORY[0x259C7DFF0](0x6C61626F6C47093ALL, 0xEF202D2078614D20);
  v38 = benchmarkFormat(seconds:)(*(v2 + 48))._countAndFlagsBits;
  MEMORY[0x259C7DFF0](v38);

  sub_258428C50();

  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v39 = off_27F928850;
  if (*(off_27F928850 + 2) && (v40 = sub_258384364(v6, v5), (v41 & 1) != 0))
  {
    v42 = *(v39[7] + 8 * v40);
    swift_endAccess();
    v43 = v42;
  }

  else
  {
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v44 = sub_258428D90();
    swift_beginAccess();
    v43 = v44;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v61 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v43, v6, v5, v45);

    off_27F928850 = v61;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_25842CCB0;
  *(v46 + 56) = MEMORY[0x277D837D0];
  *(v46 + 64) = v56;
  *(v46 + 32) = v57;
  *(v46 + 40) = object;

  sub_258428440();

  sub_258428FC0();

  MEMORY[0x259C7DFF0](0xD000000000000011, 0x8000000258434070);
  sub_258385D5C();
  v47 = sub_258428E10();
  MEMORY[0x259C7DFF0](v47);

  sub_258428C50();

  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v48 = off_27F928850;
  if (*(off_27F928850 + 2) && (v49 = sub_258384364(v6, v5), (v50 & 1) != 0))
  {
    v51 = *(v48[7] + 8 * v49);
    swift_endAccess();
    v52 = v51;
  }

  else
  {
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v53 = sub_258428D90();
    swift_beginAccess();
    v52 = v53;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v62 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v52, v6, v5, v54);

    off_27F928850 = v62;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_25842CCB0;
  *(v55 + 56) = MEMORY[0x277D837D0];
  *(v55 + 64) = v56;
  *(v55 + 32) = v57;
  *(v55 + 40) = object;

  sub_258428440();
}

unint64_t sub_258384260(uint64_t a1)
{
  sub_2584283F0();
  sub_258385DF8(&qword_27F927FC8, MEMORY[0x277CC95F0]);
  v2 = sub_258428580();

  return sub_2583845F4(a1, v2);
}

unint64_t sub_2583842F8(unsigned __int8 a1)
{
  sub_2584293C0();
  sub_2584293E0();
  v2 = sub_2584293F0();

  return sub_2583847B4(a1, v2);
}

unint64_t sub_258384364(uint64_t a1, uint64_t a2)
{
  sub_2584293C0();
  sub_2584286C0();
  v4 = sub_2584293F0();

  return sub_258384824(a1, a2, v4);
}

unint64_t sub_2583843DC(uint64_t a1)
{
  sub_2584293C0();
  type metadata accessor for CFString(0);
  sub_258385DF8(&qword_27F927FC0, type metadata accessor for CFString);
  sub_258428420();
  v2 = sub_2584293F0();

  return sub_2583848DC(a1, v2);
}

unint64_t sub_258384490(double a1)
{
  v2 = sub_2584293B0();

  return sub_2583849E8(v2, a1);
}

unint64_t sub_2583844DC(uint64_t a1)
{
  v2 = sub_2584293B0();

  return sub_258384A50(a1, v2);
}

unint64_t sub_258384520(uint64_t a1)
{
  v2 = sub_258428D60();

  return sub_258384ABC(a1, v2);
}

unint64_t sub_258384564(uint64_t a1)
{
  sub_258428660();
  sub_2584293C0();
  sub_2584286C0();
  v2 = sub_2584293F0();

  return sub_258384B90(a1, v2);
}

unint64_t sub_2583845F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2584283F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_258385DF8(&qword_27F927FD0, MEMORY[0x277CC95F0]);
      v15 = sub_258428600();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2583847B4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_258384824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_258429310())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2583848DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_258385DF8(&qword_27F927FC0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_258428410();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2583849E8(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_258384A50(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_258384ABC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_258385DB0(0, &qword_27F927FB8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_258428D70();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_258384B90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_258428660();
      v8 = v7;
      if (v6 == sub_258428660() && v8 == v9)
      {
        break;
      }

      v11 = sub_258429310();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_258384C94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_258384364(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25839554C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2583930D8(v16, a4 & 1);
    v11 = sub_258384364(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_258429390();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_2583E883C(v11, a2, a3, a1, v21);
}

uint64_t sub_258384DD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_258384364(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_25839585C();
      result = v19;
      goto LABEL_8;
    }

    sub_258393634(v16, a4 & 1);
    result = sub_258384364(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_258429390();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_2583E883C(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_258384F08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_258384364(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2583959C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2583938D4(v16, a4 & 1);
    v11 = sub_258384364(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_258429390();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_2583E883C(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_258385050(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v39 = *a1;
  v7 = *(a1 + 3);
  v40 = *(a1 + 2);
  v8 = *(a1 + 32);
  v41 = a1[3];
  v42 = a1[4];
  v9 = *(a1 + 12);
  v43 = a1[5];
  v44 = a1[7];
  v45 = a1[8];
  v10 = *(a1 + 18);
  v12 = *(a1 + 38);
  v11 = *(a1 + 39);
  v13 = *(a1 + 40);
  v14 = *(a1 + 21);
  v15 = *(a1 + 22);
  v64 = v8;
  v16 = *v3;
  v17 = sub_2583844DC(a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 >= v22 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    v25 = v17;
    sub_258395DB4();
    v17 = v25;
    goto LABEL_8;
  }

  sub_258393F28(v22, a3 & 1);
  v17 = sub_2583844DC(a2);
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_12:
    result = sub_258429390();
    __break(1u);
    return result;
  }

LABEL_8:
  if (v23)
  {
    v27 = *(*v4 + 56) + 192 * v17;
    v28 = *(v27 + 48);
    v30 = *v27;
    v29 = *(v27 + 16);
    v46[2] = *(v27 + 32);
    v46[3] = v28;
    v46[0] = v30;
    v46[1] = v29;
    v31 = *(v27 + 112);
    v33 = *(v27 + 64);
    v32 = *(v27 + 80);
    v46[6] = *(v27 + 96);
    v46[7] = v31;
    v46[4] = v33;
    v46[5] = v32;
    v35 = *(v27 + 144);
    v34 = *(v27 + 160);
    v36 = *(v27 + 128);
    v47 = *(v27 + 176);
    v46[9] = v35;
    v46[10] = v34;
    v46[8] = v36;
    *v27 = v39;
    *(v27 + 16) = v40;
    *(v27 + 24) = v7;
    *(v27 + 32) = v64;
    *(v27 + 48) = v41;
    *(v27 + 64) = v42;
    *(v27 + 80) = v43;
    *(v27 + 96) = v9;
    *(v27 + 112) = v44;
    *(v27 + 128) = v45;
    *(v27 + 144) = v10;
    *(v27 + 152) = v12;
    *(v27 + 156) = v11;
    *(v27 + 160) = v13;
    *(v27 + 168) = v14;
    *(v27 + 176) = v15;
    return sub_258385E40(v46, &qword_27F927FE0);
  }

  else
  {
    v38 = *v4;
    v48 = v39;
    v49 = v40;
    v50 = v7;
    v51 = v8;
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v55 = v9;
    v56 = v44;
    v57 = v45;
    v58 = v10;
    v59 = v12;
    v60 = v11;
    v61 = v13;
    v62 = v14;
    v63 = v15;
    return sub_2583E893C(v17, a2, &v48, v38);
  }
}

unint64_t sub_258385280(char a1, char a2, float a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2583842F8(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_258395FB8();
      result = v17;
      goto LABEL_8;
    }

    sub_2583942F4(v14, a2 & 1);
    result = sub_2583842F8(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_258429390();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a3;
  }

  else
  {

    return sub_2583E89E4(result, a1, v19, a3);
  }

  return result;
}

id sub_258385394(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *v3;
  v15 = sub_258384520(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_258396104();
      v15 = v23;
      goto LABEL_8;
    }

    sub_258394578(v20, a3 & 1);
    v15 = sub_258384520(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      sub_258385DB0(0, &qword_27F927FB8);
      result = sub_258429390();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v21)
  {
    v25 = *(*v4 + 56) + (v15 << 6);
    v27 = *(v25 + 16);
    v26 = *(v25 + 32);
    v28 = *v25;
    *&v33[12] = *(v25 + 44);
    v32[1] = v27;
    *v33 = v26;
    v32[0] = v28;
    *v25 = v7;
    *(v25 + 8) = v6;
    *(v25 + 16) = v8;
    *(v25 + 24) = v9;
    *(v25 + 32) = v11;
    *(v25 + 40) = v10;
    *(v25 + 48) = v12;
    *(v25 + 56) = v13;
    return sub_258385E40(v32, &qword_27F927FB0);
  }

  else
  {
    v30 = *v4;
    v34[0] = v7;
    v34[1] = v6;
    v34[2] = v8;
    v35 = v9;
    v36 = v11;
    v37 = v10;
    v38 = v12;
    v39 = v13;
    sub_2583E8A28(v15, a2, v34, v30);

    return a2;
  }
}

unint64_t sub_258385560(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2583842F8(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2583962C8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25839488C(v14, a3 & 1);
    v9 = sub_2583842F8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_258429390();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_2583E8A9C(v9, a2, a1, v19);
  }
}

uint64_t sub_258385684(char a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = sub_2584283F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_258384260(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v15;
    v21 = v14[3];
    if (v21 >= result && (a3 & 1) != 0)
    {
LABEL_7:
      v22 = *v5;
      if (v20)
      {
LABEL_8:
        v23 = v22[7] + 8 * v16;
        *v23 = a1;
        *(v23 + 4) = a4;
        return result;
      }

      goto LABEL_11;
    }

    if (v21 >= result && (a3 & 1) == 0)
    {
      result = sub_258396424();
      goto LABEL_7;
    }

    sub_258394B1C(result, a3 & 1);
    result = sub_258384260(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = result;
      v22 = *v5;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v11 + 16))(v13, a2, v10);
      return sub_2583E8AE0(v16, v13, a1, v22, a4);
    }
  }

  result = sub_258429390();
  __break(1u);
  return result;
}

unint64_t sub_258385838(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 16);
  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  v31 = *(a1 + 64);
  v32 = *(a1 + 80);
  v33 = *(a1 + 96);
  v34 = *(a1 + 112);
  v35 = *(a1 + 128);
  v36 = *(a1 + 144);
  v37 = *(a1 + 160);
  v38 = *(a1 + 176);
  v39 = *(a1 + 192);
  v40 = *(a1 + 208);
  v41 = *(a1 + 224);
  v42 = *(a1 + 240);
  v43 = *(a1 + 256);
  v44 = *(a1 + 272);
  v10 = *(a1 + 288);
  v9 = *(a1 + 296);
  v12 = *(a1 + 304);
  v11 = *(a1 + 312);
  v45 = *(a1 + 320);
  v46 = *(a1 + 336);
  v47 = *(a1 + 352);
  v48 = *(a1 + 368);
  v13 = *(a1 + 384);
  v14 = *(a1 + 388);
  v53 = *(a1 + 432);
  v54 = *(a1 + 448);
  v15 = *v3;
  v49 = *(a1 + 400);
  v50 = *(a1 + 464);
  v51 = *(a1 + 416);
  v52 = *(a1 + 480);
  v16 = sub_258384490(a3);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 >= v21 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v23 >= v21 && (a2 & 1) == 0)
  {
    v24 = v16;
    sub_2583966B0();
    v16 = v24;
    goto LABEL_8;
  }

  sub_258394ECC(v21, a2 & 1);
  v16 = sub_258384490(a3);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_12:
    result = sub_258429390();
    __break(1u);
    return result;
  }

LABEL_8:
  if (v22)
  {
    v26 = (*(*v4 + 56) + 496 * v16);
    memcpy(__dst, v26, sizeof(__dst));
    v26[2] = v8;
    *v26 = v7;
    *(v26 + 2) = v29;
    *(v26 + 3) = v30;
    *(v26 + 4) = v31;
    *(v26 + 5) = v32;
    *(v26 + 6) = v33;
    *(v26 + 7) = v34;
    *(v26 + 8) = v35;
    *(v26 + 9) = v36;
    *(v26 + 10) = v37;
    *(v26 + 11) = v38;
    *(v26 + 12) = v39;
    *(v26 + 13) = v40;
    *(v26 + 14) = v41;
    *(v26 + 15) = v42;
    *(v26 + 16) = v43;
    *(v26 + 17) = v44;
    v26[36] = v10;
    v26[37] = v9;
    v26[38] = v12;
    v26[39] = v11;
    *(v26 + 20) = v45;
    *(v26 + 21) = v46;
    *(v26 + 22) = v47;
    *(v26 + 23) = v48;
    *(v26 + 96) = v13;
    *(v26 + 97) = v14;
    *(v26 + 25) = v49;
    *(v26 + 26) = v51;
    *(v26 + 27) = v53;
    *(v26 + 28) = v54;
    *(v26 + 29) = v50;
    *(v26 + 30) = v52;
    return sub_258385E40(__dst, &qword_27F927FD8);
  }

  else
  {
    v56[2] = v8;
    v28 = *v4;
    v56[0] = v7;
    v57 = v29;
    v58 = v30;
    v59 = v31;
    v60 = v32;
    v61 = v33;
    v62 = v34;
    v63 = v35;
    v64 = v36;
    v65 = v37;
    v66 = v38;
    v67 = v39;
    v68 = v40;
    v69 = v41;
    v70 = v42;
    v71 = v43;
    v72 = v44;
    v73 = v10;
    v74 = v9;
    v75 = v12;
    v76 = v11;
    v77 = v45;
    v78 = v46;
    v79 = v47;
    v80 = v48;
    v81 = v13;
    v82 = v14;
    v83 = v49;
    v84 = v51;
    v85 = v53;
    v86 = v54;
    v87 = v50;
    v88 = v52;
    return sub_2583E8BAC(v16, v56, v28, a3);
  }
}

uint64_t sub_258385B3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2584283F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_258384260(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_258395B34();
      goto LABEL_7;
    }

    sub_258393B7C(v17, a3 & 1);
    v22 = sub_258384260(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2583E8884(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_258429390();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_258385D08()
{
  result = qword_27F927FA0;
  if (!qword_27F927FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F927FA0);
  }

  return result;
}

unint64_t sub_258385D5C()
{
  result = qword_27F927FA8;
  if (!qword_27F927FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F927FA8);
  }

  return result;
}

uint64_t sub_258385DB0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_258385DF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258385E40(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MetalNode.shouldUpdate.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t MetalNode.shouldDraw.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

uint64_t MetalNode.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 32) = 257;
  *(result + 34) = 1;
  v2 = qword_27F927FE8;
  *(result + 16) = qword_27F927FE8;
  *(result + 24) = v1;
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    qword_27F927FE8 = v2 + 1;
  }

  return result;
}

uint64_t MetalNode.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = 257;
  *(v0 + 34) = 1;
  v2 = qword_27F927FE8;
  *(v0 + 16) = qword_27F927FE8;
  *(v0 + 24) = v1;
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    qword_27F927FE8 = v2 + 1;
    return v0;
  }

  return result;
}

uint64_t MetalNode.isActive.setter(char a1)
{
  swift_beginAccess();
  v1[32] = a1;
  swift_beginAccess();
  v1[33] = a1;
  result = swift_beginAccess();
  v1[34] = a1;
  return result;
}

void (*MetalNode.isActive.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  swift_beginAccess();
  *(v4 + 128) = *(v1 + 34);
  return sub_258386228;
}

void sub_258386228(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 120);
  v3 = *(*a1 + 128);
  swift_beginAccess();
  *(v2 + 32) = v3;
  swift_beginAccess();
  *(v2 + 33) = v3;
  *(v1[15] + 34) = v3;

  free(v1);
}

uint64_t MetalNode.addChild(_:at:)(unint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v12[2] = &v13;
  v13 = a1;

  v8 = sub_258386A68(sub_258386C18, v12, v7);

  if (v8)
  {
    return (v8 & 1) == 0;
  }

  if (a3)
  {
    swift_beginAccess();

    MEMORY[0x259C7E150](v9);
    if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2584288B0();
    }

    sub_258428900();
    swift_endAccess();
    return (v8 & 1) == 0;
  }

  swift_beginAccess();
  v10 = *(v3 + 24);
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a2)
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_258428F10();
  if (result < a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((a2 & 0x8000000000000000) == 0)
  {

    sub_258386D54(a2, a2, a1);
    swift_endAccess();

    return (v8 & 1) == 0;
  }

LABEL_13:
  __break(1u);
  return result;
}

BOOL MetalNode.removeChild(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_258428F10();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return v4 != v5;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C7E900](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    swift_beginAccess();
    v7 = *(v6 + 16);

    if (v7 == *(a1 + 16))
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  sub_258386664(v5, sub_2583A7C70);
  swift_endAccess();

  return v4 != v5;
}

BOOL static MetalNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  return v4 == *(a2 + 16);
}

uint64_t sub_258386664(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

Swift::Void __swiftcall MetalNode.didUpdate(frame:)(ARFrame frame)
{
  swift_beginAccess();
  if (*(v1 + 32) == 1)
  {
    swift_beginAccess();
    v3 = *(v1 + 24);
    if (v3 >> 62)
    {
      v4 = sub_258428F10();
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C7E900](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        swift_beginAccess();
        if (v6[32] == 1)
        {
          (*(*v6 + 264))(frame.super.isa);
        }
      }
    }
  }
}

uint64_t MetalNode.draw(commandBuffer:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 33) == 1)
  {
    result = swift_beginAccess();
    v4 = *(v1 + 24);
    if (v4 >> 62)
    {
      result = sub_258428F10();
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        return result;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C7E900](i, v4);
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        swift_beginAccess();
        if (v7[33] == 1)
        {
          (*(*v7 + 272))(a1);
        }
      }
    }
  }

  return result;
}

uint64_t MetalNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL sub_258386A04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  return v4 == *(v3 + 16);
}

uint64_t sub_258386A68(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x259C7E900](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_258428F10();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

BOOL sub_258386BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  return v4 == *(v3 + 16);
}

uint64_t sub_258386C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for MetalNode();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_258428F10();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_258428F10();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_258386D54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_258428F10();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_258428F10();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_2583C7AF0(result, 1);

  return sub_258386C38(v6, v5, 1, v3);
}

uint64_t sub_258386E40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_258386E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

unint64_t sub_258386EF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_258386FF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2583870C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_258387198(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_258387270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for PatchTracker.Keyframe();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_258428F10();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_258428F10();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_258387370(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_258428F10();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_258428F10();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2583C7AF0(result, 1);

  return sub_258387270(v4, v2, 0);
}

Swift::Void __swiftcall CALayer.pauseAnimations()()
{
  [v0 speed];
  if (v1 != 0.0)
  {
    [v0 convertTime:0 fromLayer:CACurrentMediaTime()];
    v3 = v2;
    [v0 setSpeed_];

    [v0 setTimeOffset_];
  }
}

Swift::Void __swiftcall CALayer.resumeAnimations()()
{
  [v0 speed];
  if (v1 == 0.0)
  {
    [v0 timeOffset];
    v3 = v2;
    LODWORD(v2) = 1.0;
    [v0 setSpeed_];
    [v0 setTimeOffset_];
    [v0 setBeginTime_];
    [v0 convertTime:0 fromLayer:CACurrentMediaTime()];
    v5 = v4 - v3;

    [v0 setBeginTime_];
  }
}

float64_t CGPoint.floats.getter(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  *&a1.f64[0] = vcvt_f32_f64(a1);
  return a1.f64[0];
}

CGPoint __swiftcall CGPoint.add(_:)(CGPoint a1)
{
  v3 = a1.x + v1;
  v4 = a1.y + v2;
  result.y = v4;
  result.x = v3;
  return result;
}

CGPoint __swiftcall CGPoint.subtract(_:)(CGPoint a1)
{
  v3 = v1 - a1.x;
  v4 = v2 - a1.y;
  result.y = v4;
  result.x = v3;
  return result;
}

CGPoint __swiftcall CGPoint.multiply(by:)(Swift::Float by)
{
  v3 = by;
  v4 = by * v1;
  v5 = v3 * v2;
  result.y = v5;
  result.x = v4;
  return result;
}

CGPoint __swiftcall CGPoint.divide(by:)(Swift::Float by)
{
  v3 = by;
  v4 = v1 / by;
  v5 = v2 / v3;
  result.y = v5;
  result.x = v4;
  return result;
}

float64x2_t static CGPoint.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  *a1 = result;
  return result;
}

float static CGPoint.dot(_:_:)(double a1, double a2, double a3, double a4)
{
  v4 = a1 * a3;
  v5 = a2 * a4;
  return v4 + v5;
}

float static CGPoint.distanceSq(_:_:)(double a1, double a2, double a3, double a4)
{
  v4 = (a3 - a1) * (a3 - a1);
  v5 = (a4 - a2) * (a4 - a2);
  return v4 + v5;
}

float static CGPoint.distance(_:_:)(double a1, double a2, double a3, double a4)
{
  v4 = (a3 - a1) * (a3 - a1);
  v5 = (a4 - a2) * (a4 - a2);
  return sqrtf(v4 + v5);
}

Swift::Float __swiftcall CGPoint.length()()
{
  v2 = v0 * v0;
  v3 = v1 * v1;
  return sqrtf(v2 + v3);
}

double static CGPoint.rotatePoint(target:aroundOrigin:byRadians:)(double a1, double a2, double a3, double a4, double a5)
{
  v7 = a1 - a3;
  v8 = sqrt(v7 * v7 + (a2 - a4) * (a2 - a4));
  v9 = atan2(a2 - a4, v7);
  return v8 * __sincos_stret(v9 + a5).__cosval + a3;
}

CGPoint __swiftcall CGPoint.normalized()()
{
  v2 = v0 * v0;
  v3 = v1 * v1;
  v4 = sqrtf(v2 + v3);
  v5 = 0.0;
  v6 = 0.0;
  if (v4 > 0.0)
  {
    v5 = v0 / v4;
    v6 = v1 / v4;
  }

  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

Swift::Float __swiftcall CGPoint.lengthSq()()
{
  v2 = v0 * v0;
  v3 = v1 * v1;
  return v2 + v3;
}

CGPoint __swiftcall CGPoint.round()()
{
  v2 = round(v0);
  v3 = round(v1);
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint __swiftcall CGPoint.ceil()()
{
  v2 = ceil(v0);
  v3 = ceil(v1);
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint __swiftcall CGPoint.floor()()
{
  v2 = floor(v0);
  v3 = floor(v1);
  result.y = v3;
  result.x = v2;
  return result;
}

double CGPoint.lerped<A>(newValue:t:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v18 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  (*(v11 + 16))(&v18 - v15, a1, a2);
  sub_258387AE4();
  sub_2584284F0();
  v16 = v20 * a3;
  swift_getAssociatedConformanceWitness();
  sub_258429350();
  sub_2584292E0();
  sub_258429130();
  (*(v11 + 8))(v14, a2);
  sub_2584284F0();
  return v16 + v19 * a5;
}

unint64_t sub_258387AE4()
{
  result = qword_27F927FF0;
  if (!qword_27F927FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F927FF0);
  }

  return result;
}

__C::CGRect __swiftcall CGRect.init(centerPoint:size:)(CGPoint centerPoint, CGSize size)
{
  v2 = centerPoint.x - size.width * 0.5;
  v3 = centerPoint.y - size.height * 0.5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__C::CGRect __swiftcall CGRect.init(p1:p2:)(CGPoint p1, CGPoint p2)
{
  if (p2.x >= p1.x)
  {
    x = p1.x;
  }

  else
  {
    x = p2.x;
  }

  if (p2.y >= p1.y)
  {
    y = p1.y;
  }

  else
  {
    y = p2.y;
  }

  v4 = vabdd_f64(p1.x, p2.x);
  v5 = vabdd_f64(p1.y, p2.y);
  v6 = x;
  v7 = y;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

void CGRect.ints.getter(double a1, double a2, CGFloat a3, CGFloat a4)
{
  v4 = round(a1);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = round(a2);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = round(CGRectGetWidth(*&a1));
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  v11 = round(CGRectGetHeight(v12));
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
  }
}

double CGRect.floats.getter(float64x2_t a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = a1.f64[0];
  a1.f64[1] = a2;
  v12 = vcvt_f32_f64(a1);
  Width = CGRectGetWidth(*a1.f64);
  v13.origin.x = v9;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  Height = CGRectGetHeight(v13);
  v7.f64[0] = Width;
  v7.f64[1] = Height;
  *&result = vcvt_hight_f32_f64(v12, v7).u64[0];
  return result;
}

__C::CGRect __swiftcall CGRect.round()()
{
  v4 = round(v0);
  v5 = round(v1);
  v6 = round(v2);
  v7 = round(v3);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

__C::CGRect __swiftcall CGRect.ceil()()
{
  v4 = ceil(v0);
  v5 = ceil(v1);
  v6 = ceil(v2);
  v7 = ceil(v3);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

void CGRect.rotated(byRadians:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  MidY = CGRectGetMidY(v15);
  CGAffineTransformMakeTranslation(&v13, MidX, MidY);
  CGAffineTransformRotate(&v12, &v13, a1);
  v13 = v12;
  CGAffineTransformTranslate(&v12, &v13, -MidX, -MidY);
  v13 = v12;
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectApplyAffineTransform(v16, &v13);
}

uint64_t makeIOSurfaceTexture(device:width:height:pixelFormat:usage:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v12 setTextureType_];
  [v12 setPixelFormat_];
  [v12 setWidth_];
  [v12 setHeight_];
  if (a6)
  {
    v13 = 3;
  }

  else
  {
    v13 = a5;
  }

  [v12 setUsage_];
  [v12 setSampleCount_];
  v14 = bytesPerPixel(of:)(a4);
  result = a2 * v14;
  if ((a2 * v14) >> 64 != (a2 * v14) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_25842CDA0;
  v17 = *MEMORY[0x277CD2B88];
  *(result + 32) = *MEMORY[0x277CD2B88];
  v18 = *MEMORY[0x277CD2A28];
  v19 = MEMORY[0x277CD2968];
  *(result + 40) = a2;
  *(result + 48) = v18;
  v20 = *v19;
  *(result + 56) = a3;
  *(result + 64) = v20;
  v21 = *MEMORY[0x277CD2948];
  *(result + 72) = AlignedBytesPerRow;
  *(result + 80) = v21;
  v22 = AlignedBytesPerRow * a3;
  if ((AlignedBytesPerRow * a3) >> 64 != (AlignedBytesPerRow * a3) >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = *MEMORY[0x277CD2960];
  *(result + 88) = v22;
  *(result + 96) = v23;
  *(result + 104) = v14;
  v24 = result;
  v25 = v17;
  v26 = v18;
  v27 = v20;
  v28 = v21;
  v29 = v23;
  sub_2583890FC(v24);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v30 = sub_258428500();

  v31 = IOSurfaceCreate(v30);
  if (v31)
  {
    v32 = v31;
    v33 = [a1 newTextureWithDescriptor:v12 iosurface:v31 plane:0];
  }

  else
  {

    return 0;
  }

  return v33;
}

uint64_t bytesPerPixel(of:)(uint64_t a1)
{
  if (a1 > 54)
  {
    if (a1 <= 104)
    {
      if (a1 == 55 || a1 == 80)
      {
        return 4;
      }
    }

    else
    {
      if (a1 == 125)
      {
        return 16;
      }

      if (a1 == 115 || a1 == 105)
      {
        return 8;
      }
    }
  }

  else if ((a1 - 10) < 5 || a1 == 1)
  {
    return 1;
  }

  sub_258428FC0();
  MEMORY[0x259C7DFF0](0x6620776F6E6B6E55, 0xEF203A74616D726FLL);
  type metadata accessor for MTLPixelFormat(0);
  sub_2584290D0();
  result = sub_258429100();
  __break(1u);
  return result;
}

id makeIOSurfaceTexture(device:width:height:pixelFormat:iosurface:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v10 setTextureType_];
  [v10 setPixelFormat_];
  [v10 setWidth_];
  [v10 setHeight_];
  [v10 setUsage_];
  [v10 setSampleCount_];
  v11 = [a1 newTextureWithDescriptor:v10 iosurface:a5 plane:0];

  return v11;
}

CVMetalTextureRef makeCacheTexture(cache:pixelBuffer:pixelFormat:planeIndex:)(__CVMetalTextureCache *a1, CVPixelBufferRef pixelBuffer, MTLPixelFormat a3, size_t planeIndex)
{
  image[1] = *MEMORY[0x277D85DE8];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, planeIndex);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, planeIndex);
  image[0] = 0;
  TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, a1, pixelBuffer, 0, a3, WidthOfPlane, HeightOfPlane, planeIndex, image);
  result = image[0];
  if (TextureFromImage)
  {
    v12 = 0;
LABEL_5:

    return v12;
  }

  if (image[0])
  {
    v12 = CVMetalTextureGetTexture(image[0]);
    result = image[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

CVBufferRef_optional __swiftcall makePixelBuffer(width:height:pixelFormat:)(Swift::Int width, Swift::Int height, Swift::UInt32 pixelFormat)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, pixelFormat, 0, v4);
  return v4[0];
}

CVBufferRef_optional __swiftcall makePixelBuffer(from:)(IOSurface from)
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], from.super.isa, 0, v2);
  return v2[0];
}

IOSurface_optional __swiftcall makeIOSurfaceOfFirstPlane(from:)(CVBufferRef from)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(from, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(from, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(from, 0);
  inited = CVPixelBufferGetWidthOfPlane(from, 0);
  if (!inited)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = inited;
  if (BytesPerRowOfPlane == 0x8000000000000000 && inited == -1)
  {
    goto LABEL_8;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(from);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9287D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842CDA0;
  v10 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v11 = *MEMORY[0x277CD2A28];
  v12 = MEMORY[0x277CD2968];
  *(inited + 40) = WidthOfPlane;
  *(inited + 48) = v11;
  v13 = *v12;
  *(inited + 56) = HeightOfPlane;
  *(inited + 64) = v13;
  v14 = *MEMORY[0x277CD2948];
  *(inited + 72) = BytesPerRow;
  *(inited + 80) = v14;
  v15 = BytesPerRow * HeightOfPlane;
  if ((BytesPerRow * HeightOfPlane) >> 64 != (BytesPerRow * HeightOfPlane) >> 63)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = *MEMORY[0x277CD2960];
  *(inited + 88) = v15;
  *(inited + 96) = v16;
  *(inited + 104) = BytesPerRowOfPlane / v8;
  v17 = inited;
  v18 = v10;
  v19 = v11;
  v20 = v13;
  v21 = v14;
  v22 = v16;
  sub_2583890FC(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927FF8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2583891E8();
  v23 = sub_258428500();

  v24 = IOSurfaceCreate(v23);

  inited = v24;
LABEL_9:
  result.value._impl = v6;
  result.value.super.isa = inited;
  result.is_nil = v7;
  return result;
}

CGContextRef_optional __swiftcall makeCGContext(ioSurface:bitsPerComponent:)(IOSurface ioSurface, Swift::Int bitsPerComponent)
{
  impl = ioSurface._impl;
  isa = ioSurface.super.isa;
  BytesPerRow = IOSurfaceGetBytesPerRow(ioSurface.super.isa);
  BaseAddress = IOSurfaceGetBaseAddress(isa);
  v6 = [(__IOSurface *)isa width];
  v7 = [(__IOSurface *)isa height];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = __CGBitmapContextCreate(BaseAddress, v6, v7, impl, BytesPerRow, DeviceRGB);

  return v9;
}

Swift::Int __swiftcall fillIOSurface(_:with:at:)(IOSurface _, CVBufferRef with, Swift::Int at)
{
  impl = _._impl;
  isa = _.super.isa;
  CVPixelBufferLockBaseAddress(_._impl, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(impl);
  BytesPerRow = CVPixelBufferGetBytesPerRow(impl);
  result = CVPixelBufferGetHeight(impl);
  v9 = BytesPerRow * result;
  if ((BytesPerRow * result) >> 64 != (BytesPerRow * result) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = IOSurfaceGetBytesPerElement(isa);
  v10 = result * with;
  if ((result * with) >> 64 != (result * with) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = IOSurfaceGetBytesPerRow(isa);
  result = IOSurfaceGetHeight(isa);
  if ((v11 * result) >> 64 != (v11 * result) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(v10, v9))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v11 * result >= v10 + v9)
  {
    v12 = IOSurfaceGetBaseAddress(isa);
    memcpy(&v12[v10], BaseAddress, v9);
  }

  else
  {
    v9 = 0;
  }

  CVPixelBufferUnlockBaseAddress(impl, 1uLL);
  return v9;
}

Swift::Int __swiftcall fillIOSurface(_:with:fromPlaneIndex:)(IOSurface _, CVBufferRef with, Swift::Int fromPlaneIndex)
{
  impl = _._impl;
  isa = _.super.isa;
  CVPixelBufferLockBaseAddress(_._impl, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(impl);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(impl, with);
  result = CVPixelBufferGetHeight(impl);
  v9 = BytesPerRowOfPlane * result;
  if ((BytesPerRowOfPlane * result) >> 64 != (BytesPerRowOfPlane * result) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  BytesPerRow = IOSurfaceGetBytesPerRow(isa);
  result = IOSurfaceGetHeight(isa);
  if ((BytesPerRow * result) >> 64 != (BytesPerRow * result) >> 63)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (BytesPerRow * result >= v9)
  {
    v11 = IOSurfaceGetBaseAddress(isa);
    memcpy(v11, BaseAddress, v9);
  }

  else
  {
    v9 = 0;
  }

  CVPixelBufferUnlockBaseAddress(impl, 1uLL);
  return v9;
}

Swift::Int __swiftcall fillIOSurface(_:with:at:)(IOSurface _, IOSurface with, Swift::Int at)
{
  isa = with.super.isa;
  impl = _._impl;
  v5 = _.super.isa;
  BaseAddress = IOSurfaceGetBaseAddress(_._impl);
  BytesPerRow = IOSurfaceGetBytesPerRow(impl);
  result = IOSurfaceGetHeight(impl);
  v9 = BytesPerRow * result;
  if ((BytesPerRow * result) >> 64 != (BytesPerRow * result) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = IOSurfaceGetBytesPerElement(v5);
  v10 = result * isa;
  if ((result * isa) >> 64 != (result * isa) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = IOSurfaceGetBytesPerRow(v5);
  result = IOSurfaceGetHeight(v5);
  if ((v11 * result) >> 64 != (v11 * result) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(v10, v9))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v11 * result < v10 + v9)
  {
    return 0;
  }

  v12 = IOSurfaceGetBaseAddress(v5);
  memcpy(&v12[v10], BaseAddress, v9);
  return v9;
}

unint64_t sub_258388AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928080);
    v3 = sub_2584291C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_258389808(v4, &v11, &qword_27F927EE8);
      v5 = v11;
      result = sub_258385EA0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2583897F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258388C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928030);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928038);
    v7 = sub_2584291C0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_258389808(v9, v5, &qword_27F928030);
      result = sub_258384260(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2584283F0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 8 * v13;
      v17 = *(v8 + 1);
      *v16 = *v8;
      *(v16 + 4) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_258388E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928028);
  v3 = sub_2584291C0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_2583842F8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_2583842F8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_258388F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928018);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928020);
    v7 = sub_2584291C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_258389808(v9, v5, &qword_27F928018);
      result = sub_258384260(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2584283F0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2583890FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928088);
    v3 = sub_2584291C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2583843DC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2583891E8()
{
  result = qword_27F9287E0;
  if (!qword_27F9287E0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9287E0);
  }

  return result;
}

unint64_t sub_258389248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928070);
    v3 = sub_2584291C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_258389808(v4, &v13, &qword_27F928078);
      v5 = v13;
      v6 = v14;
      result = sub_258384364(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2583897F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258389378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928058);
    v3 = sub_2584291C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_258384364(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258389488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928068);
    v3 = sub_2584291C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_258384364(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2583895DC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_2584291C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_258384364(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2583896D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928000);
    v3 = sub_2584291C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_258389808(v4, &v11, &qword_27F928008);
      v5 = v11;
      result = sub_2583843DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2583897F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_2583897F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_258389808(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

CGSize __swiftcall CGSize.round()()
{
  v2 = round(v0);
  v3 = round(v1);
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize __swiftcall CGSize.ceil()()
{
  v2 = ceil(v0);
  v3 = ceil(v1);
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize __swiftcall CGSize.multiply(by:)(CGSize by)
{
  v3 = by.width * v1;
  v4 = by.height * v2;
  result.height = v4;
  result.width = v3;
  return result;
}

float64x2_t static CGSize.*= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vmulq_f64(*a1, a2);
  *a1 = result;
  return result;
}

CGSize __swiftcall CGSize.divide(by:)(CGSize by)
{
  v3 = v1 / by.width;
  v4 = v2 / by.height;
  result.height = v4;
  result.width = v3;
  return result;
}

CGSize __swiftcall CGSize.divide(by:)(Swift::Int by)
{
  v3 = v1 / by;
  v4 = v2 / by;
  result.height = v4;
  result.width = v3;
  return result;
}

float64x2_t static CGSize./= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vdivq_f64(*a1, vdupq_lane_s64(*&a2, 0));
  *a1 = result;
  return result;
}

CGSize __swiftcall CGSize.add(_:)(CGSize a1)
{
  v3 = a1.width + v1;
  v4 = a1.height + v2;
  result.height = v4;
  result.width = v3;
  return result;
}

float64x2_t static CGSize.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  *a1 = result;
  return result;
}

CGSize __swiftcall CGSize.subtract(_:)(CGSize a1)
{
  v3 = v1 - a1.width;
  v4 = v2 - a1.height;
  result.height = v4;
  result.width = v3;
  return result;
}

float64x2_t static CGSize.-= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vsubq_f64(*a1, a2);
  *a1 = result;
  return result;
}

BOOL Optional.exists.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(*(*(a1 + 16) - 8) + 48))(v4, 1);
  if (v5 != 1)
  {
    (*(v2 + 8))(v4, a1);
  }

  return v5 != 1;
}

id KernelReprojection.__allocating_init(coder:device:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithCoder:a1 device:a2];

  swift_unknownObjectRelease();
  return v4;
}

id KernelReprojection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_258389CA0(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  if (qword_27F9279C0 != -1)
  {
    swift_once();
  }

  v4 = static MetalBundle.library;
  v5 = sub_258428630();
  v6 = [v4 newFunctionWithName_];

  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19[0] = 0;
  v7 = [a1 newComputePipelineStateWithFunction:v6 error:v19];
  swift_unknownObjectRelease();
  v8 = v19[0];
  if (!v7)
  {
    v16 = v19[0];
    sub_2584282A0();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_13;
  }

  *&v1[OBJC_IVAR____TtC17MeasureFoundation18KernelReprojection_preprojectionPipeline] = v7;
  v9 = v8;
  v10 = sub_258428630();
  v11 = [v4 newFunctionWithName_];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19[0] = 0;
  v12 = [a1 newComputePipelineStateWithFunction:v11 error:v19];
  swift_unknownObjectRelease();
  v4 = v19[0];
  if (v12)
  {
    *&v1[OBJC_IVAR____TtC17MeasureFoundation18KernelReprojection_reprojectionPipeline] = v12;
    v13 = v4;
    v14 = [a1 newBufferWithLength:352 options:0];
    if (v14)
    {
      *&v1[OBJC_IVAR____TtC17MeasureFoundation18KernelReprojection_uniformsBuffer] = v14;
      v18.receiver = v1;
      v18.super_class = ObjectType;
      return objc_msgSendSuper2(&v18, sel_initWithDevice_, a1);
    }

LABEL_11:
    __break(1u);
  }

LABEL_13:
  v17 = v4;
  sub_2584282A0();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall CVBufferRef.copy(from:)(IOSurface from)
{
  isa = from.super.isa;
  if (CVPixelBufferLockBaseAddress(v1, 1uLL))
  {
    LOBYTE(Height) = 0;
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(v1);
    v5 = BaseAddress != 0;
    if (BaseAddress)
    {
      v6 = BaseAddress;
      v7 = IOSurfaceGetBaseAddress(isa);
      BytesPerRow = IOSurfaceGetBytesPerRow(isa);
      Height = IOSurfaceGetHeight(isa);
      if ((BytesPerRow * Height) >> 64 != (BytesPerRow * Height) >> 63)
      {
        __break(1u);
        return Height;
      }

      memcpy(v6, v7, BytesPerRow * Height);
    }

    CVPixelBufferUnlockBaseAddress(v1, 1uLL);
    LOBYTE(Height) = v5;
  }

  return Height;
}

Swift::Bool __swiftcall CVBufferRef.copy(to:)(IOSurface to)
{
  isa = to.super.isa;
  if (CVPixelBufferLockBaseAddress(v1, 1uLL))
  {
    LOBYTE(Height) = 0;
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(v1);
    v5 = BaseAddress != 0;
    if (BaseAddress)
    {
      v6 = BaseAddress;
      v7 = IOSurfaceGetBaseAddress(isa);
      BytesPerRow = IOSurfaceGetBytesPerRow(isa);
      Height = IOSurfaceGetHeight(isa);
      if ((BytesPerRow * Height) >> 64 != (BytesPerRow * Height) >> 63)
      {
        __break(1u);
        return Height;
      }

      memcpy(v7, v6, BytesPerRow * Height);
    }

    CVPixelBufferUnlockBaseAddress(v1, 1uLL);
    LOBYTE(Height) = v5;
  }

  return Height;
}

CVBufferRef_optional __swiftcall CVBufferRef.clone()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(v0);
  Height = CVPixelBufferGetHeight(v0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v0);
  v19[0] = 0;
  CVPixelBufferCreate(0, Width, Height, PixelFormatType, 0, v19);
  v4 = v19[0];
  if (v19[0])
  {
    v5 = v19[0];
    CVPixelBufferLockBaseAddress(v0, 1uLL);
    CVPixelBufferLockBaseAddress(v5, 0);
    PlaneCount = CVPixelBufferGetPlaneCount(v0);
    if (PlaneCount >= 1)
    {
      v7 = PlaneCount;
      v8 = 0;
      while (1)
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v0, v8);
        v10 = CVPixelBufferGetBaseAddressOfPlane(v5, v8);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v0, v8);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v0, v8);
        if ((HeightOfPlane * BytesPerRowOfPlane) >> 64 != (HeightOfPlane * BytesPerRowOfPlane) >> 63)
        {
          break;
        }

        ++v8;
        memcpy(v10, BaseAddressOfPlane, HeightOfPlane * BytesPerRowOfPlane);
        if (v7 == v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    BaseAddress = CVPixelBufferGetBaseAddress(v0);
    v15 = CVPixelBufferGetBaseAddress(v5);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v0);
    if ((Height * BytesPerRow) >> 64 != (Height * BytesPerRow) >> 63)
    {
      goto LABEL_13;
    }

    memcpy(v15, BaseAddress, Height * BytesPerRow);
LABEL_10:
    v17 = v5;
    CVPixelBufferUnlockBaseAddress(v0, 1uLL);
    CVPixelBufferUnlockBaseAddress(v17, 0);

    v13 = v19[0];
  }

  else
  {
    v13 = 0;
  }

  return v4;
}

CVBufferRef_optional __swiftcall CVBufferRef.copiedPlane(_:with:format:)(Swift::Int _, Swift::tuple_width_Int_height_Int with, Swift::UInt32 format)
{
  height = with.height;
  width = with.width;
  v28[1] = *MEMORY[0x277D85DE8];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v3, _);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v3, _);
  if (width + 0x4000000000000000 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = __OFSUB__(WidthOfPlane, 2 * width);
  v11 = WidthOfPlane - 2 * width;
  if (v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (height + 0x4000000000000000 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = HeightOfPlane - 2 * height;
  if (__OFSUB__(HeightOfPlane, 2 * height))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v11, v12, format, 0, v28);
  v13 = v28[0];
  if (!v28[0])
  {
    return 0;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v3, _);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v13);
  CVPixelBufferLockBaseAddress(v3, 1uLL);
  CVPixelBufferLockBaseAddress(v13, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v3, _);
  if (BaseAddressOfPlane && (v17 = BaseAddressOfPlane, (BaseAddress = CVPixelBufferGetBaseAddress(v13)) != 0))
  {
    v19 = BytesPerRowOfPlane * height;
    if ((BytesPerRowOfPlane * height) >> 64 != (BytesPerRowOfPlane * height) >> 63)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }

    if (v12)
    {
      v20 = BaseAddress;
      v21 = 0;
      v22 = v17 + v19 + width;
      while (1)
      {
        v23 = v21 * BytesPerRow;
        if ((v21 * BytesPerRow) >> 64 != (v21 * BytesPerRow) >> 63)
        {
          break;
        }

        v24 = BytesPerRowOfPlane * v21;
        if ((BytesPerRowOfPlane * v21) >> 64 != (BytesPerRowOfPlane * v21) >> 63)
        {
          goto LABEL_21;
        }

        ++v21;
        memcpy(&v20[v23], (v22 + v24), v11);
        if (v12 == v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_15:
    v25 = v13;
    v26.value = v13;
  }

  else
  {
    v26.value = 0;
  }

  CVPixelBufferUnlockBaseAddress(v3, 1uLL);
  CVPixelBufferUnlockBaseAddress(v13, 0);

  return v26;
}

Swift::Void __swiftcall logCVError(_:label:)(Swift::Int32 _, Swift::String label)
{
  if (_)
  {
    object = label._object;
    countAndFlagsBits = label._countAndFlagsBits;
    if (qword_27F927B38 != -1)
    {
      swift_once();
    }

    v5 = qword_27F92F3B8;
    v4 = unk_27F92F3C0;
    sub_258428FC0();

    MEMORY[0x259C7DFF0](0xD00000000000001DLL, 0x8000000258434200);
    v6 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v6);

    v7 = countAndFlagsBits;
    sub_258428C50();
    v8 = qword_27F927A30;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F928848;
    os_unfair_lock_lock(qword_27F928848);
    if (qword_27F927A38 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = off_27F928850;
    if (*(off_27F928850 + 2) && (v11 = sub_258384364(v5, v4), (v12 & 1) != 0))
    {
      v13 = *(v10[7] + 8 * v11);
      swift_endAccess();
      v14 = v13;
    }

    else
    {
      swift_endAccess();
      sub_25838AB14();
      if (qword_27F927A28 != -1)
      {
        swift_once();
      }

      v15 = sub_258428D90();
      swift_beginAccess();
      v14 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = off_27F928850;
      off_27F928850 = 0x8000000000000000;
      sub_258384C94(v14, v5, v4, isUniquelyReferenced_nonNull_native);

      off_27F928850 = v18;
      swift_endAccess();
    }

    os_unfair_lock_unlock(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_25842CCB0;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_258385D08();
    *(v17 + 32) = v7;
    *(v17 + 40) = object;

    sub_258428440();
  }
}

Swift::Bool __swiftcall checkCVSuccess(_:label:)(Swift::Int32 _, Swift::String label)
{
  if (_)
  {
    object = label._object;
    countAndFlagsBits = label._countAndFlagsBits;
    if (qword_27F927B38 != -1)
    {
      swift_once();
    }

    v6 = qword_27F92F3B8;
    v5 = unk_27F92F3C0;
    sub_258428FC0();

    MEMORY[0x259C7DFF0](0xD00000000000001DLL, 0x8000000258434200);
    v7 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v7);

    sub_258428C50();
    v8 = qword_27F927A30;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F928848;
    os_unfair_lock_lock(qword_27F928848);
    if (qword_27F927A38 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = off_27F928850;
    if (*(off_27F928850 + 2) && (v11 = sub_258384364(v6, v5), (v12 & 1) != 0))
    {
      v13 = *(v10[7] + 8 * v11);
      swift_endAccess();
      v14 = v13;
    }

    else
    {
      swift_endAccess();
      sub_25838AB14();
      if (qword_27F927A28 != -1)
      {
        swift_once();
      }

      v15 = sub_258428D90();
      swift_beginAccess();
      v14 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = off_27F928850;
      off_27F928850 = 0x8000000000000000;
      sub_258384C94(v14, v6, v5, isUniquelyReferenced_nonNull_native);

      off_27F928850 = v19;
      swift_endAccess();
    }

    os_unfair_lock_unlock(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_25842CCB0;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_258385D08();
    *(v17 + 32) = countAndFlagsBits;
    *(v17 + 40) = object;

    sub_258428440();
  }

  return _ == 0;
}