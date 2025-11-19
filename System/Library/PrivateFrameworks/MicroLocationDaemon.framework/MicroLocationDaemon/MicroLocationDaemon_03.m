void LBFGSpp::BKLDLT<float>::compress_permutation(uint64_t a1)
{
  v1 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      if (*(a1 + 72) <= v3)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v4 = *(*(a1 + 56) + 8 * v3);
      v5 = v4 ^ (v4 >> 63);
      if (v3 != v5)
      {
        v7 = *(a1 + 88);
        v6 = *(a1 + 96);
        if (v7 >= v6)
        {
          v9 = *(a1 + 80);
          v10 = v7 - v9;
          v11 = (v7 - v9) >> 4;
          v12 = v11 + 1;
          if ((v11 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v13 = v6 - v9;
          if (v13 >> 3 > v12)
          {
            v12 = v13 >> 3;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(a1 + 80, v14);
          }

          v15 = v11;
          v16 = (16 * v11);
          *v16 = v3;
          v16[1] = v5;
          v8 = 16 * v11 + 16;
          v17 = &v16[-2 * v15];
          memcpy(v17, v9, v10);
          v18 = *(a1 + 80);
          *(a1 + 80) = v17;
          *(a1 + 88) = v8;
          *(a1 + 96) = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v7 = v3;
          *(v7 + 1) = v5;
          v8 = (v7 + 16);
        }

        *(a1 + 88) = v8;
        v1 = *a1;
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void cva::MatrixData<long,0ul,0ul,false>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      *a1 = 0;

      cva::MatrixData<long,0ul,0ul,false>::allocate(a1, a2);
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t cva::MatrixData<long,0ul,0ul,false>::allocate(void **a1, uint64_t a2)
{
  if (*a1)
  {
    cva::MatrixData<float,0ul,0ul,false>::allocate();
  }

  v3 = (8 * a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  a1[1] = (v3 >> 3);
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v3, 0xE1AC2527uLL);
  v5 = memptr;
  *a1 = memptr;
  if (!v5)
  {
    cva::MatrixData<float,0ul,0ul,false>::allocate();
  }

  return result;
}

void *std::vector<float *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t LBFGSpp::BKLDLT<float>::find_lambda(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 32);
  v4 = *(v3 + 8 * a2);
  v5 = *(v3 + 8 * (a2 + 1));
  *a3 = a2 + 1;
  v6 = fabsf(*(v4 + 4));
  if (v4 + 8 < v5)
  {
    v7 = 8;
    do
    {
      v8 = fabsf(*(v4 + v7));
      if (v6 < v8)
      {
        *a3 = a2 + (v7 >> 2);
        v6 = v8;
      }

      v7 += 4;
    }

    while (v4 + v7 < v5);
  }

  return result;
}

void *LBFGSpp::BKLDLT<float>::find_sigma(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = result;
  v8 = -1.0;
  if (*result - 1 > a3)
  {
    result = LBFGSpp::BKLDLT<float>::find_lambda(result, a3, a4);
  }

  v9 = a3 - a2;
  if (a3 > a2)
  {
    v10 = v7[4];
    do
    {
      v11 = fabsf(*(*(v10 + 8 * a2) + 4 * v9));
      if (v8 < v11)
      {
        *a4 = a2;
        v8 = v11;
      }

      ++a2;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t LBFGSpp::BKLDLT<float>::pivoting_1x1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 == a2)
  {
    a3 = a2;
    if (*(result + 72) <= a2)
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
    }
  }

  else
  {
    v3 = *(result + 32);
    v4 = *(v3 + 8 * a2);
    v5 = *(v3 + 8 * a3);
    v6 = *v4;
    *v4 = *v5;
    *v5 = v6;
    v7 = &v4[a3 - a2 + 1];
    v8 = *(v3 + 8 * (a2 + 1));
    if (v7 != v8)
    {
      v9 = v5 + 1;
      do
      {
        v10 = *v7;
        *v7++ = *v9;
        *v9++ = v10;
      }

      while (v7 != v8);
    }

    if (a2 + 1 < a3)
    {
      v11 = ~a2 + a3;
      v12 = (v3 + 8 * a2 + 8);
      v13 = v4 + 1;
      do
      {
        v14 = *v12++;
        v15 = *v13;
        *v13++ = *(v14 + 4 * v11);
        *(v14 + 4 * v11--) = v15;
      }

      while (v11);
    }

    if (*(result + 72) <= a2)
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
    }
  }

  *(*(result + 56) + 8 * a2) = a3;
  return result;
}

uint64_t LBFGSpp::BKLDLT<float>::pivoting_2x2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LBFGSpp::BKLDLT<float>::pivoting_1x1(a1, a2, a4);
  v7 = a2 + 1;
  result = LBFGSpp::BKLDLT<float>::pivoting_1x1(a1, a2 + 1, a3);
  v9 = *(*(a1 + 32) + 8 * a2);
  v10 = *(v9 + 4);
  *(v9 + 4) = *(v9 + 4 * (a3 - a2));
  *(v9 + 4 * (a3 - a2)) = v10;
  v11 = *(a1 + 72);
  if (v11 <= a2)
  {
    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
  }

  v12 = *(a1 + 56);
  *(v12 + 8 * a2) = ~*(v12 + 8 * a2);
  if (v11 <= v7)
  {
    LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
  }

  *(v12 + 8 * v7) = ~*(v12 + 8 * v7);
  return result;
}

void cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::detail::AssignSubOp<float,float const>>(unsigned int *a1, float *a2)
{
  v4 = *(a1 + 1);
  v5 = *a2;
  if ((*(*a2 + 8) - 4 * *(*a2 + 20)) == &v4[-a1[5]])
  {
    v11 = *v5;
    v27[0] = 0;
    v27[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v27, v11);
    v12 = *a2;
    v13 = **a2;
    v28 = v13;
    v14 = v27[0];
    if (v13)
    {
      v15 = *(v12 + 1);
      v16 = 4 * v13;
      v17 = v27[0];
      do
      {
        v18 = *v15++;
        *v17++ = v18 * a2[2];
        v16 -= 4;
      }

      while (v16);
    }

    if (*a1 != v13)
    {
      cva::Logger::instance(v14);
      v19 = *MEMORY[0x277CFD380];
      v25 = *a1;
      cva::Logger::logInCategory();
      v13 = *a1;
      if (v13 != v28)
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v14 = v27[0];
    }

    if (v13)
    {
      v20 = *(a1 + 1);
      v21 = 4 * v13;
      v22 = v14;
      do
      {
        v23 = *v22++;
        *v20 = *v20 - v23;
        ++v20;
        v21 -= 4;
      }

      while (v21);
    }

    free(v14);
  }

  else
  {
    v6 = *a1;
    if (*a1 != *v5)
    {
      cva::Logger::instance(a1);
      v7 = *MEMORY[0x277CFD380];
      v26 = **a2;
      v24 = *a1;
      cva::Logger::logInCategory();
      v6 = *a1;
      v5 = *a2;
      if (*a1 != **a2)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v6)
    {
      v8 = *(v5 + 1);
      v9 = 4 * v6;
      do
      {
        v10 = *v8++;
        *v4 = *v4 - (v10 * a2[2]);
        ++v4;
        v9 -= 4;
      }

      while (v9);
    }
  }
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>>(unsigned int *a1, float **a2)
{
  v4 = *(a1 + 1);
  v5 = &v4[-a1[5]];
  v6 = *a2;
  v7 = **a2;
  if ((*(v7 + 8) - 4 * *(v7 + 20)) != v5 && (*(*a2[1] + 8) - 4 * *(*a2[1] + 20)) != v5)
  {
    v8 = *a1;
    if (*a1 != *v7)
    {
      cva::Logger::instance(a1);
      v9 = *MEMORY[0x277CFD380];
      v40 = ***a2;
      v38 = *a1;
      cva::Logger::logInCategory();
      v8 = *a1;
      v6 = *a2;
      v7 = **a2;
      if (*a1 != *v7)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v8)
    {
      v10 = v8;
      v11 = a2[1];
      v12 = *(*v11 + 8);
      v13 = *(v7 + 8);
      v14 = 4 * v10;
      do
      {
        v15 = *v13++;
        v16 = v15 * v6[2];
        v17 = *v12++;
        *v4++ = v16 + (v17 * v11[2]);
        v14 -= 4;
      }

      while (v14);
    }

    return a1;
  }

  v18 = *a1;
  v42[0] = 0;
  v42[1] = 0;
  v19 = cva::MatrixData<float,0ul,0ul,false>::allocate(v42, v18);
  v43 = v18;
  v20 = *a2;
  v21 = **a2;
  if (v18 != *v21)
  {
    cva::Logger::instance(v19);
    v22 = *MEMORY[0x277CFD380];
    v41 = ***a2;
    cva::Logger::logInCategory();
    v18 = v43;
    v20 = *a2;
    v21 = **a2;
    if (v43 != *v21)
    {
      goto LABEL_23;
    }
  }

  v23 = v42[0];
  if (v18)
  {
    v24 = a2[1];
    v25 = *(*v24 + 8);
    v26 = *(v21 + 8);
    v27 = 4 * v18;
    v28 = v42[0];
    do
    {
      v29 = *v26++;
      v30 = v29 * v20[2];
      v31 = *v25++;
      *v28++ = v30 + (v31 * v24[2]);
      v27 -= 4;
    }

    while (v27);
  }

  if (*a1 == v18)
  {
    goto LABEL_18;
  }

  cva::Logger::instance(v23);
  v32 = *MEMORY[0x277CFD380];
  v39 = *a1;
  cva::Logger::logInCategory();
  v18 = *a1;
  if (v18 != v43)
  {
LABEL_23:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v23 = v42[0];
LABEL_18:
  if (v18)
  {
    v33 = *(a1 + 1);
    v34 = 4 * v18;
    v35 = v23;
    do
    {
      v36 = *v35;
      v35 = (v35 + 4);
      *v33++ = v36;
      v34 -= 4;
    }

    while (v34);
  }

  free(v23);
  return a1;
}

void cva::assignOp<cva::MatrixRef<float,0u,1u,false>,cva::MatrixBinaryExpr<cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::MatrixScalarExpr<cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>,cva::detail::AddOp>,cva::detail::AssignSubOp<float,float const>>(unsigned int *a1, float **a2)
{
  v4 = *(a1 + 1);
  v5 = &v4[-a1[5]];
  v6 = *a2;
  v7 = **a2;
  if ((*(v7 + 1) - 4 * v7[5]) == v5 || (*(*a2[1] + 8) - 4 * *(*a2[1] + 20)) == v5)
  {
    v18 = *v7;
    v39[0] = 0;
    v39[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v39, v18);
    v19 = *a2;
    v20 = **a2;
    v21 = *v20;
    v40 = v21;
    v22 = v39[0];
    if (v21)
    {
      v23 = a2[1];
      v24 = *(*v23 + 8);
      v25 = *(v20 + 1);
      v26 = 4 * v21;
      v27 = v39[0];
      do
      {
        v28 = *v25++;
        v29 = v28 * v19[2];
        v30 = *v24++;
        *v27++ = v29 + (v30 * v23[2]);
        v26 -= 4;
      }

      while (v26);
    }

    if (*a1 != v21)
    {
      cva::Logger::instance(v22);
      v31 = *MEMORY[0x277CFD380];
      v37 = *a1;
      cva::Logger::logInCategory();
      v21 = *a1;
      if (v21 != v40)
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v22 = v39[0];
    }

    if (v21)
    {
      v32 = *(a1 + 1);
      v33 = 4 * v21;
      v34 = v22;
      do
      {
        v35 = *v34++;
        *v32 = *v32 - v35;
        ++v32;
        v33 -= 4;
      }

      while (v33);
    }

    free(v22);
  }

  else
  {
    v8 = *a1;
    if (*a1 != *v7)
    {
      cva::Logger::instance(a1);
      v9 = *MEMORY[0x277CFD380];
      v38 = ***a2;
      v36 = *a1;
      cva::Logger::logInCategory();
      v8 = *a1;
      v6 = *a2;
      v7 = **a2;
      if (*a1 != *v7)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v8)
    {
      v10 = v8;
      v11 = a2[1];
      v12 = *(*v11 + 8);
      v13 = *(v7 + 1);
      v14 = 4 * v10;
      do
      {
        v15 = *v13++;
        v16 = v15 * v6[2];
        v17 = *v12++;
        *v4 = *v4 - (v16 + (v17 * v11[2]));
        ++v4;
        v14 -= 4;
      }

      while (v14);
    }
  }
}

uint64_t LBFGSpp::BFGSMat<float,true>::Wb@<X0>(uint64_t a1@<X0>, int **a2@<X1>, void **a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1] - *a2;
  v7 = v6 >> 2;
  v8 = 2 * *(a1 + 104);
  *a3 = 0;
  a3[1] = 0;
  result = cva::MatrixData<float,0ul,0ul,false>::allocate(a3, v8 * (v6 >> 2));
  *(a3 + 4) = v6 >> 2;
  *(a3 + 5) = v8;
  v10 = *(a1 + 104);
  if (v10 >= 1)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = 0;
      v13 = *a3;
      v14 = *(a1 + 52);
      while (v12 != v14)
      {
        v15 = *(a1 + 24);
        if (!v15 || v12 >= *(a1 + 28))
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
        }

        if (v7 >= 1)
        {
          v16 = *(a1 + 32) + 4 * (v11 * v12);
          v17 = *(a1 + 8) + 4 * (v15 * v12);
          result = (v6 >> 2) & 0x7FFFFFFF;
          v18 = v5;
          v19 = v13;
          do
          {
            v20 = *v18++;
            *v19 = *(v16 + 4 * v20);
            v19[v10 * v7] = *(v17 + 4 * v20);
            ++v19;
            --result;
          }

          while (result);
        }

        ++v12;
        v13 += 4 * (v6 >> 2);
        if (v12 == v10)
        {
          return result;
        }
      }
    }

    __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
  }

  return result;
}

void LBFGSpp::BFGSMat<float,true>::compute_FtBAb(uint64_t a1, uint64_t a2, unsigned int **a3, unsigned int **a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v89 = *MEMORY[0x277D85DE8];
  v14 = a4[1] - *a4;
  v15 = v14 >> 2;
  v16 = *(a2 + 16);
  *(a7 + 16) = v16;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a7, v16);
  v17 = *(a1 + 104);
  if (v16 >= 1 && v17 >= 1 && v15 > 0)
  {
    v75 = a7;
    v23 = a2;
    v24 = a1;
    v25 = a5;
    v26 = 2 * v17;
    v79 = 0;
    v80 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v79, 2 * v17);
    v81 = v26;
    if (v16 >= v15)
    {
      v85 = 0;
      v86 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v85, v16);
      LODWORD(v87) = v16;
      v39 = *a4;
      v40 = *(a6 + 4);
      v41 = *a6;
      v42 = (v14 >> 2) & 0x7FFFFFFF;
      v43 = v85;
      v33 = v24;
      v34 = v23;
      v35 = v75;
      do
      {
        v45 = *v39++;
        v44 = v45;
        if (v40 <= v45)
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
        }

        *v43++ = *(v41 + 4 * v44);
        --v42;
      }

      while (v42);
      LBFGSpp::BFGSMat<float,true>::apply_WtPv(v33, a4, &v85, &v79, 0);
      v46 = v85;
      goto LABEL_46;
    }

    v77[0] = 0;
    v77[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v77, v16);
    v78 = v16;
    v27 = *a3;
    v28 = *(a6 + 4);
    v29 = *a6;
    v30 = v16;
    v31 = v77[0];
    v32 = v25;
    v33 = v24;
    v34 = v23;
    v35 = v75;
    do
    {
      v37 = *v27++;
      v36 = v37;
      if (v28 <= v37)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      *v31++ = *(v29 + 4 * v36);
      --v30;
    }

    while (v30);
    v76 = v34;
    if (*(v34 + 16) == v16)
    {
      v38 = *(v34 + 20);
      if (v38 == v81)
      {
        v86 = &v76;
        v87 = v77;
        goto LABEL_27;
      }

      if (*v34 == v79 || v77[0] == v79)
      {
        v82 = 0;
        v83 = 0;
        cva::MatrixData<float,0ul,0ul,false>::allocate(&v82, v38);
        v84 = *(v76 + 20);
        v86 = &v76;
        v87 = v77;
        if (*(v76 + 16) != v78)
        {
          __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }

        v88 = 1065353216;
        cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,1u,false>>(&v82, &v85);
        v49 = v79;
        v50 = v80;
        v79 = v82;
        v80 = v83;
        v82 = v49;
        v83 = v50;
        v81 = v84;
        v84 = 0;
        free(v49);
LABEL_30:
        v51 = *(v33 + 104);
        v52 = v81;
        if (v81 < v51)
        {
          __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
        }

        if (v51)
        {
          v53 = *(v33 + 4);
          v54 = (v79 + 4 * (v81 - v51));
          v55 = 4 * v51;
          do
          {
            *v54 = v53 * *v54;
            ++v54;
            v55 -= 4;
          }

          while (v55);
        }

        if (*(v32 + 16) == v52)
        {
          v56 = v81;
          if (v52 != v81)
          {
            v85 = 0;
            v86 = 0;
            cva::MatrixData<float,0ul,0ul,false>::allocate(&v85, v52);
            v57 = *(v32 + 16);
            v58 = v85;
            if (v57)
            {
              v59 = v79;
              v60 = *v32;
              v61 = 4 * v57;
              do
              {
                v62 = *v60++;
                v63 = v62;
                v64 = *v59++;
                *v58++ = v63 - v64;
                v61 -= 4;
              }

              while (v61);
              v58 = v85;
            }

            v65 = v79;
            v66 = v80;
            v79 = v58;
            v80 = v86;
            v85 = v65;
            v86 = v66;
            v81 = v57;
            LODWORD(v87) = 0;
            free(v65);
LABEL_45:
            v46 = v77[0];
LABEL_46:
            free(v46);
            LODWORD(v85) = -1082130432;
            LBFGSpp::BFGSMat<float,true>::apply_PtWMv(v33, v34, &v79, v35, &v85);
            free(v79);
            goto LABEL_47;
          }
        }

        else
        {
          cva::Logger::instance(v48);
          v67 = *MEMORY[0x277CFD380];
          v74 = *(v32 + 16);
          cva::Logger::logInCategory();
          v56 = *(v32 + 16);
          if (v56 != v81)
          {
            __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
          }
        }

        if (v56)
        {
          v68 = v79;
          v69 = v56;
          v70 = *v32;
          v71 = 4 * v69;
          do
          {
            v72 = *v70++;
            *v68 = v72 - *v68;
            ++v68;
            v71 -= 4;
          }

          while (v71);
        }

        goto LABEL_45;
      }

      v81 = *(v34 + 20);
      cva::MatrixData<float,0ul,0ul,false>::reserve(&v79, v38);
      v47 = *(v76 + 16);
      v86 = &v76;
      v87 = v77;
      if (v47 == v78)
      {
LABEL_27:
        v88 = 1065353216;
        cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,1u,false>>(&v79, &v85);
        goto LABEL_30;
      }
    }

    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v20 = *(a7 + 16);
  if (!v20)
  {
LABEL_47:
    v73 = *MEMORY[0x277D85DE8];
    return;
  }

  v21 = *a7;
  v22 = *MEMORY[0x277D85DE8];

  bzero(v21, 4 * v20);
}

void sub_25902488C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  free(a22);
  free(a16);
  free(a19);
  _Unwind_Resume(a1);
}

void LBFGSpp::BFGSMat<float,true>::solve_PtBP(unsigned int *a1, void **a2, unint64_t a3, uint64_t a4)
{
  v158 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 4);
  *(a4 + 16) = v8;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v8);
  v9 = a1[26];
  if (v8 >= 1 && v9 > 0)
  {
    v19 = 2 * v9;
    v138[0] = 0;
    v138[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v138, (v19 * v19));
    v122 = a3;
    LODWORD(v139) = v19;
    HIDWORD(v139) = v19;
    v20 = a1[26];
    if (v20 >= 1)
    {
      v21 = 0;
      for (i = 0; i < v20; ++i)
      {
        if (a1[33] <= i)
        {
          __assert_rtn("column", "matrixmixin.h", 1118, "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)");
        }

        v23 = a1[32];
        if (v20 > v23)
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
        }

        v24 = v20 + v21;
        v25 = *(a1 + 14);
        LODWORD(v134) = v24;
        v135 = (v25 + 4 * (i + i * v23));
        v136 = v23;
        v137 = i + i * v23;
        if (v24 > v23)
        {
          __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
        }

        v26 = *(a2 + 4);
        if (v8 > v26 || (v27 = *(a2 + 5), v20 > v27))
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
        }

        v28 = *a2;
        v129 = v8;
        v130 = v20 + v21;
        v29 = &v28[4 * v26 * i];
        v131 = v29;
        v132 = v26;
        v133 = v26 * i;
        v124[0] = &v129;
        if (v27 <= i)
        {
          __assert_rtn("column", "matrixmixin.h", 1118, "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)");
        }

        LODWORD(v125) = v26;
        v126 = v29;
        v127 = v26;
        v128 = v26 * i;
        if (v8 != v26)
        {
          __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }

        v146 = 0;
        v147 = 0;
        cva::MatrixData<float,0ul,0ul,false>::allocate(&v146, v24);
        v148 = *(v124[0] + 1);
        v141 = v124;
        v142 = &v125;
        if (*v124[0] != v125)
        {
          __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
        }

        v143 = 1065353216;
        cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>(&v146, &v140);
        LODWORD(v149) = a1[1];
        if (v134 != v148)
        {
          cva::Logger::instance(v30);
          v31 = *MEMORY[0x277CFD380];
          cva::Logger::logInCategory();
          if (v134 != v148)
          {
            __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
          }
        }

        v154 = &v134;
        v155 = &v145;
        if (HIDWORD(v139) <= i)
        {
          __assert_rtn("column", "matrixmixin.h", 1091, "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)");
        }

        v32 = a1[26];
        if (v32 > v139)
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
        }

        LODWORD(v140) = v21 + v32;
        v141 = v138[0] + 4 * i + 4 * i * v139;
        LODWORD(v142) = v139;
        HIDWORD(v142) = i + i * v139;
        if (v21 + v32 > v139)
        {
          __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
        }

        cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,1u,false>,cva::MatrixScalarExpr<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>,cva::detail::DivOp>,cva::detail::SubOp>>(&v140, &v154);
        free(v146);
        v20 = a1[26];
        --v21;
      }
    }

    v33 = *a1;
    v34 = a1[32];
    if (v33 + v20 > v34 || v20 > a1[33])
    {
      v112 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
      v113 = 2252;
      v114 = "matrixmixin.h";
      v115 = "assert_in_bounds";
    }

    else
    {
      v35 = *(a1 + 14);
      LODWORD(v140) = v20;
      HIDWORD(v140) = v20;
      v141 = (v35 + 4 * v33);
      v142 = __PAIR64__(v33, v34);
      if (v20 <= v34)
      {
        v36 = *(a2 + 4);
        v37 = *(a2 + 5);
        v154 = __PAIR64__(v20, v36);
        v124[0] = &v154;
        v38 = v37 >= v20;
        v39 = v37 - v20;
        v40 = *a2;
        v41 = v36 * v39;
        v155 = (*a2 + 4 * v41);
        v156 = __PAIR64__(v41, v36);
        if (!v38)
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
        }

        v134 = __PAIR64__(v20, v36);
        v135 = v40;
        v136 = v36;
        v137 = 0;
        v125 = v124;
        v126 = &v134;
        cva::operator-<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>>(&v140, &v125, &v145);
        v42 = a1[26];
        v43 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
        v44 = 2252;
        v45 = "matrixmixin.h";
        v46 = "assert_in_bounds";
        if (v139 >= 2 * v42 && v42 <= HIDWORD(v139))
        {
          v129 = a1[26];
          v130 = v42;
          v131 = (v138[0] + 4 * v42);
          v132 = v139;
          v133 = v42;
          if (v42 <= v139)
          {
            cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>,cva::detail::SubOp>>(&v129, &v145);
            free(v146);
            v47 = a1[26];
            if (v47 >= 1)
            {
              v48 = 0;
              v49 = 0;
              v50 = "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)";
              v121 = "matrixmixin.h";
              v51 = "column";
              while (1)
              {
                v52 = v49 + *a1;
                if (a1[33] <= v52)
                {
                  v111 = 1118;
                  goto LABEL_105;
                }

                v53 = a1[32];
                if (*a1 + v47 > v53)
                {
                  break;
                }

                v54 = *(a1 + 14);
                v55 = v52 + v52 * v53;
                LODWORD(v140) = v47 + v48;
                v141 = (v54 + 4 * v55);
                v142 = __PAIR64__(v55, v53);
                if (v47 + v48 > v53)
                {
                  v111 = 428;
                  v51 = "MatrixRef";
                  v121 = "matrixref.h";
                  v50 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
LABEL_105:
                  __assert_rtn(v51, v121, v111, v50);
                }

                v56 = *(a2 + 5);
                v57 = *a2;
                LODWORD(v154) = *(a2 + 4);
                HIDWORD(v154) = v47 + v48;
                v155 = &v57[4 * v154 * (v49 + v56 - v47)];
                LODWORD(v156) = v154;
                HIDWORD(v156) = v154 * (v49 + v56 - v47);
                v123 = &v154;
                v58 = v47 + v49;
                if (v56 <= v58)
                {
                  __assert_rtn("column", "matrixmixin.h", 1118, "(column < mixed().columns()) || cva::detail::assertMessage(Index out of bounds.)");
                }

                v59 = v154 * v58;
                LODWORD(v134) = v154;
                v135 = &v57[4 * v59];
                v136 = v154;
                v137 = v59;
                v124[0] = &v123;
                v124[1] = &v134;
                cva::operator-<cva::MatrixRef<float const,0u,1u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>>(&v140, v124, &v145);
                v60 = a1[1];
                v125 = &v145;
                BYTE4(v126) = 0;
                LODWORD(v126) = v60;
                v61 = a1[26];
                if (HIDWORD(v139) <= v49 + v61)
                {
                  v110 = 1091;
                  goto LABEL_102;
                }

                if (v139 < 2 * v61)
                {
                  v110 = 2252;
                  v51 = "assert_in_bounds";
                  v50 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
                  goto LABEL_102;
                }

                v129 = v48 + v61;
                v131 = (v138[0] + 4 * v49 + 4 * v61 + 4 * (v49 + v61) * v139);
                v132 = v139;
                v133 = v49 + v61 + (v49 + v61) * v139;
                if (v48 + v61 > v139)
                {
                  v110 = 428;
                  v51 = "MatrixRef";
                  v121 = "matrixref.h";
                  v50 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
LABEL_102:
                  __assert_rtn(v51, v121, v110, v50);
                }

                cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixScalarExpr<cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,1u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>,cva::detail::SubOp>,cva::detail::MulOp>>(&v129, &v125);
                free(v146);
                ++v49;
                v47 = a1[26];
                --v48;
                if (v49 >= v47)
                {
                  goto LABEL_48;
                }
              }

              v111 = 2252;
              v51 = "assert_in_bounds";
              v50 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
              goto LABEL_105;
            }

LABEL_48:
            v140 = v139;
            v141 = v138[0];
            v142 = v139;
            LODWORD(v154) = 0;
            LBFGSpp::BKLDLT<float>::BKLDLT(&v145, &v140, 1, &v154);
            v154 = a2;
            if (*(a2 + 4) != *(v122 + 16))
            {
              __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
            }

            v62 = *(a2 + 5);
            v134 = 0;
            v135 = 0;
            cva::MatrixData<float,0ul,0ul,false>::allocate(&v134, v62);
            v136 = *(v154 + 5);
            v141 = &v154;
            v142 = v122;
            if (*(v154 + 4) != *(v122 + 16))
            {
              __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
            }

            v143 = 1065353216;
            cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,1u,false>>(&v134, &v140);
            v63 = a1[26];
            v64 = v136;
            if (v136 < v63)
            {
              __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
            }

            v65 = v134;
            if (v63)
            {
              v66 = *(a1 + 1);
              v67 = (v134 + 4 * (v136 - v63));
              v68 = 4 * v63;
              do
              {
                *v67 = v66 * *v67;
                ++v67;
                v68 -= 4;
              }

              while (v68);
            }

            LODWORD(v140) = v64;
            v141 = v65;
            v142 = v64;
            LBFGSpp::BKLDLT<float>::solve_inplace(&v145, &v140);
            v69 = a1[26];
            v70 = v136;
            if (v136 < v69)
            {
              __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
            }

            v71 = *(a1 + 1);
            if (v69)
            {
              v72 = (v134 + 4 * (v136 - v69));
              v73 = 4 * v69;
              do
              {
                *v72 = v71 * *v72;
                ++v72;
                v73 -= 4;
              }

              while (v73);
              v71 = *(a1 + 1);
            }

            if (*(a2 + 5) != v70)
            {
              __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
            }

            v74 = *(a2 + 4);
            v141 = 0;
            v142 = 0;
            cva::MatrixData<float,0ul,0ul,false>::allocate(&v141, v74);
            v75 = *(a2 + 5);
            v143 = *(a2 + 4);
            v155 = a2;
            v156 = &v134;
            if (v75 != v136)
            {
              __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
            }

            v157 = 1065353216;
            cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v141, &v154);
            v144 = v71 * v71;
            v77 = *(v122 + 16);
            if (v77 == v143 || (cva::Logger::instance(v76), v78 = *MEMORY[0x277CFD380], v117 = *(v122 + 16), cva::Logger::logInCategory(), v77 = *(v122 + 16), v77 == v143))
            {
              if (v77 == *(a4 + 16))
              {
                goto LABEL_67;
              }

              if (*v122 == *a4)
              {
                v154 = 0;
                v155 = 0;
                cva::MatrixData<float,0ul,0ul,false>::allocate(&v154, v77);
                v98 = *(v122 + 16);
                v99 = v154;
                if (v98)
                {
                  v100 = v141;
                  v101 = *v122;
                  v102 = 4 * v98;
                  do
                  {
                    v103 = *v101++;
                    v104 = v103 / v71;
                    v105 = *v100++;
                    *v99++ = v104 + (v105 / v144);
                    v102 -= 4;
                  }

                  while (v102);
                  v99 = v154;
                }

                v106 = *a4;
                v107 = *(a4 + 8);
                v108 = v155;
                *a4 = v99;
                *(a4 + 8) = v108;
                v154 = v106;
                v155 = v107;
                *(a4 + 16) = v98;
                LODWORD(v156) = 0;
                free(v106);
                goto LABEL_80;
              }

              *(a4 + 16) = v77;
              cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v77);
              v77 = *(v122 + 16);
              if (*(a4 + 16) == v77 || (cva::Logger::instance(v79), v80 = *MEMORY[0x277CFD380], v120 = *(v122 + 16), v118 = *(a4 + 16), cva::Logger::logInCategory(), v77 = *(a4 + 16), v77 == *(v122 + 16)))
              {
LABEL_67:
                if (v77)
                {
                  v81 = *a4;
                  v82 = v77;
                  v83 = v141;
                  v84 = *v122;
                  v85 = 4 * v82;
                  do
                  {
                    v86 = *v84++;
                    v87 = v86 / v71;
                    v88 = *v83++;
                    *v81++ = v87 + (v88 / v144);
                    v85 -= 4;
                  }

                  while (v85);
                }

LABEL_80:
                free(v141);
                free(v134);
                if (__p)
                {
                  v153 = __p;
                  operator delete(__p);
                }

                free(v151);
                if (v149)
                {
                  v150 = v149;
                  operator delete(v149);
                }

                free(v146);
                v95 = v138[0];
LABEL_85:
                free(v95);
                goto LABEL_86;
              }
            }

            __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
          }

          v43 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
          v44 = 428;
          v45 = "matrixref.h";
          v46 = "MatrixRef";
        }

        __assert_rtn(v46, v45, v44, v43);
      }

      v112 = "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)";
      v113 = 428;
      v114 = "matrixref.h";
      v115 = "MatrixRef";
    }

    __assert_rtn(v115, v114, v113, v112);
  }

  v11 = *(a1 + 1);
  v12 = *(a3 + 16);
  if (v12 != *(a4 + 16))
  {
    if (*a3 == *a4)
    {
      v145 = 0;
      v146 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v145, v12);
      v89 = *(a3 + 16);
      v90 = v145;
      if (v89)
      {
        v91 = *a3;
        v92 = 4 * v89;
        v93 = v145;
        do
        {
          v94 = *v91++;
          *v93++ = v94 / v11;
          v92 -= 4;
        }

        while (v92);
      }

      v95 = *a4;
      v96 = *(a4 + 8);
      v97 = v146;
      *a4 = v90;
      *(a4 + 8) = v97;
      v145 = v95;
      v146 = v96;
      *(a4 + 16) = v89;
      LODWORD(v147) = 0;
      goto LABEL_85;
    }

    *(a4 + 16) = v12;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v12);
    LODWORD(v12) = *(a3 + 16);
    if (*(a4 + 16) != v12)
    {
      cva::Logger::instance(v13);
      v14 = *MEMORY[0x277CFD380];
      v119 = *(a3 + 16);
      v116 = *(a4 + 16);
      cva::Logger::logInCategory();
      LODWORD(v12) = *(a4 + 16);
      if (v12 != *(a3 + 16))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }
  }

  if (v12)
  {
    v15 = *a4;
    v16 = *a3;
    v17 = 4 * v12;
    do
    {
      v18 = *v16++;
      *v15++ = v18 / v11;
      v17 -= 4;
    }

    while (v17);
  }

LABEL_86:
  v109 = *MEMORY[0x277D85DE8];
}

void sub_2590255E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, void *a40)
{
  free(a28);
  LBFGSpp::BKLDLT<float>::~BKLDLT(&a39);
  free(a31);
  _Unwind_Resume(a1);
}

BOOL LBFGSpp::SubspaceMin<float>::in_bounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 < 1)
  {
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(a2 + 16) == v4)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v6 = *(*a1 + 4 * v4);
      if (v6 < *(*a2 + 4 * v4))
      {
        break;
      }

      if (*(a3 + 16) == v4)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      if (v6 > *(*a3 + 4 * v4))
      {
        break;
      }

      v5 = ++v4 >= v3;
    }

    while (v3 != v4);
  }

  return v5;
}

float LBFGSpp::SubspaceMin<float>::subvec_assign(uint64_t *a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if ((v4 >> 2) >= 1)
  {
    v5 = *(a3 + 16);
    v6 = *(a1 + 4);
    v7 = *a3;
    v8 = (v4 >> 2) & 0x7FFFFFFF;
    v9 = *a1;
    do
    {
      if (!v5)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v10 = *v3;
      if (v6 <= v10)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v11 = *v7++;
      result = v11;
      *(v9 + 4 * v10) = v11;
      --v5;
      v3 += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

float LBFGSpp::SubspaceMin<float>::subvec@<S0>(uint64_t *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[1] - *a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(a3, (v6 >> 2));
  *(a3 + 16) = v6 >> 2;
  if ((v6 >> 2) >= 1)
  {
    v8 = *a2;
    v9 = *(a1 + 4);
    v10 = *a1;
    v11 = (v6 >> 2) & 0x7FFFFFFF;
    v12 = *a3;
    do
    {
      v14 = *v8++;
      v13 = v14;
      if (v9 <= v14)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      result = *(v10 + 4 * v13);
      *v12++ = result;
      --v11;
    }

    while (v11);
  }

  return result;
}

BOOL LBFGSpp::BFGSMat<float,true>::apply_PtBQv(uint64_t a1, uint64_t a2, void *a3, _DWORD **a4, uint64_t a5, int a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 16);
  v13 = (a3[1] - *a3) >> 2;
  *(a5 + 16) = v12;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a5, v12);
  if (v12 >= 1 && *(a1 + 104) >= 1 && v13 > 0)
  {
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0;
    v18 = LBFGSpp::BFGSMat<float,true>::apply_WtPv(a1, a3, a4, v35, a6);
    v17 = v18;
    if (!v18)
    {
      v30 = *(a5 + 16);
      if (v30)
      {
        bzero(*a5, 4 * v30);
      }

      goto LABEL_31;
    }

    v33[0] = 0;
    v33[1] = 0;
    v34 = 0;
    LBFGSpp::BFGSMat<float,true>::apply_Mv(a1, v35, v33);
    v19 = *(a1 + 104);
    v20 = v34;
    if (v34 < v19)
    {
      __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
    }

    v21 = v33[0];
    if (v19)
    {
      v22 = *(a1 + 4);
      v23 = (v33[0] + 4 * (v34 - v19));
      v24 = 4 * v19;
      do
      {
        *v23 = v22 * *v23;
        ++v23;
        v24 -= 4;
      }

      while (v24);
    }

    v40[0] = a2;
    if (*(a2 + 20) == v20)
    {
      v25 = *(a2 + 16);
      if (v25 != *(a5 + 16))
      {
        if (*a2 == *a5 || v21 == *a5)
        {
          v37 = 0;
          v38 = 0;
          cva::MatrixData<float,0ul,0ul,false>::allocate(&v37, v25);
          v39 = *(v40[0] + 16);
          v42 = v40;
          v43 = v33;
          if (*(v40[0] + 20) != v34)
          {
            __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
          }

          v44 = 1065353216;
          cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixUnaryExpr<cva::Matrix<float,0u,0u,false>,cva::detail::NegOp>,cva::Matrix<float,0u,1u,false>>(&v37, v41);
          v27 = *a5;
          v28 = *(a5 + 8);
          v29 = v38;
          *a5 = v37;
          *(a5 + 8) = v29;
          v37 = v27;
          v38 = v28;
          *(a5 + 16) = v39;
          v39 = 0;
          free(v27);
          goto LABEL_30;
        }

        *(a5 + 16) = v25;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a5, v25);
        v20 = *(v40[0] + 20);
      }

      v42 = v40;
      v43 = v33;
      if (v20 == v34)
      {
        v44 = 1065353216;
        cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixUnaryExpr<cva::Matrix<float,0u,0u,false>,cva::detail::NegOp>,cva::Matrix<float,0u,1u,false>>(a5, v41);
LABEL_30:
        free(v33[0]);
LABEL_31:
        free(v35[0]);
        goto LABEL_32;
      }
    }

    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v16 = *(a5 + 16);
  if (v16)
  {
    bzero(*a5, 4 * v16);
  }

  v17 = 0;
LABEL_32:
  v31 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_259025B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  free(a15);
  free(a9);
  free(a12);
  _Unwind_Resume(a1);
}

BOOL LBFGSpp::BFGSMat<float,true>::apply_WtPv(uint64_t a1, uint64_t a2, _DWORD **a3, uint64_t a4, int a5)
{
  v7 = *a3;
  begin = *a2;
  v9 = *(a2 + 8) - *a2;
  v10 = v9 >> 2;
  memset(&v43, 0, sizeof(v43));
  __p = 0;
  v41 = 0;
  v42 = 0;
  if (a5)
  {
    std::vector<int>::reserve(&v43, (v9 >> 2));
    if (v10 >= 1)
    {
      v11 = (v9 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v7 != 0.0)
        {
          std::vector<int>::push_back[abi:ne200100](&v43.__begin_, begin);
          std::vector<float>::push_back[abi:ne200100](&__p, v7);
        }

        ++begin;
        ++v7;
        --v11;
      }

      while (v11);
    }

    v7 = __p;
    begin = v43.__begin_;
    v10 = (v43.__end_ - v43.__begin_) >> 2;
  }

  v12 = (2 * *(a1 + 104));
  *(a4 + 16) = v12;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v12);
  v13 = *(a1 + 104);
  v15 = v13 > 0 && v10 > 0;
  if (v15)
  {
    v16 = *(a1 + 48);
    if (!v16)
    {
LABEL_42:
      __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
    }

    v17 = 0;
    v18 = *a4;
    v19 = *(a4 + 16);
    if (v19 >= v13)
    {
      v20 = (v19 - v13);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 52);
    v22 = "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    do
    {
      if (v17 == v21)
      {
        goto LABEL_42;
      }

      v23 = *(a1 + 24);
      if (!v23 || v17 >= *(a1 + 28))
      {
        v39 = 2269;
        goto LABEL_41;
      }

      v24 = *(a1 + 8) + 4 * (v23 * v17);
      v25 = 0.0;
      v26 = v10;
      v27 = begin;
      v28 = v7;
      v29 = 0.0;
      do
      {
        v31 = *v27++;
        v30 = v31;
        v32 = *(*(a1 + 32) + 4 * (v16 * v17) + 4 * v31);
        LODWORD(v31) = *v28++;
        v29 = v29 + (v32 * *&v31);
        v25 = v25 + (*(v24 + 4 * v30) * *&v31);
        --v26;
      }

      while (v26);
      if (v17 == v19 || (v18[v17] = v29, v17 == v20))
      {
        v39 = 2283;
        v22 = "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)";
LABEL_41:
        __assert_rtn("assert_in_bounds", "matrixmixin.h", v39, v22);
      }

      v18[v13 + v17++] = v25;
    }

    while (v17 != v13);
    v33 = *(a4 + 16);
    if (v33 < v13)
    {
      __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
    }

    v34 = *(a1 + 4);
    v35 = (*a4 + 4 * (v33 - v13));
    v36 = 4 * v13;
    do
    {
      *v35 = v34 * *v35;
      ++v35;
      v36 -= 4;
    }

    while (v36);
  }

  else
  {
    v37 = *(a4 + 16);
    if (v37)
    {
      bzero(*a4, 4 * v37);
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43.__begin_)
  {
    v43.__end_ = v43.__begin_;
    operator delete(v43.__begin_);
  }

  return v15;
}

void sub_259025DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

BOOL LBFGSpp::BFGSMat<float,true>::apply_PtWMv(uint64_t a1, int **a2, char **a3, uint64_t a4, float *a5)
{
  v10 = a2[1] - *a2;
  *(a4 + 16) = v10 >> 2;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a4, (v10 >> 2));
  v11 = *(a4 + 16);
  if (v11)
  {
    bzero(*a4, 4 * v11);
  }

  v13 = (v10 >> 2) > 0 && *(a1 + 104) > 0;
  if (v13)
  {
    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
    LBFGSpp::BFGSMat<float,true>::apply_Mv(a1, a3, v38);
    v14 = *(a1 + 104);
    if (v39 < v14)
    {
      __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
    }

    v15 = v38[0];
    if (v14)
    {
      v16 = *(a1 + 4);
      v17 = v39 - v14;
      v18 = (v38[0] + 4 * v17);
      v19 = 4 * v14;
      do
      {
        *v18 = v16 * *v18;
        ++v18;
        v19 -= 4;
      }

      while (v19);
      v20 = *(a4 + 16);
      if (v14 >= 1)
      {
        v21 = *(a1 + 48);
        if (v21)
        {
          v22 = 0;
          v23 = *(a1 + 52);
          while (v22 != v23)
          {
            v24 = *(a1 + 24);
            if (!v24 || v22 >= *(a1 + 28))
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
            }

            if (v22 == v17)
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
            }

            v25 = *(a1 + 32) + 4 * (v21 * v22);
            v26 = *(a1 + 8) + 4 * (v24 * v22);
            v27 = v15[v22];
            v28 = v15[v14 + v22];
            v29 = *a2;
            v30 = *a4;
            v31 = (v10 >> 2) & 0x7FFFFFFF;
            v32 = v20;
            do
            {
              if (!v32)
              {
                __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
              }

              v33 = *v29++;
              *v30 = ((v28 * *(v26 + 4 * v33)) + (v27 * *(v25 + 4 * v33))) + *v30;
              ++v30;
              --v32;
              --v31;
            }

            while (v31);
            if (++v22 == v14)
            {
              goto LABEL_25;
            }
          }
        }

        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
      }

LABEL_25:
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      LODWORD(v20) = *(a4 + 16);
      if (!v20)
      {
LABEL_30:
        free(v15);
        return v13;
      }
    }

    v34 = *a5;
    v35 = *a4;
    v36 = 4 * v20;
    do
    {
      *v35 = v34 * *v35;
      ++v35;
      v36 -= 4;
    }

    while (v36);
    goto LABEL_30;
  }

  return v13;
}

BOOL LBFGSpp::SubspaceMin<float>::L_converged(void *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  if ((v2 >> 2) < 1)
  {
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v6 = *(*a1 + 4 * v3);
      if (*(a2 + 16) <= v6)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      if (*(*a2 + 4 * v6) < 0.0)
      {
        break;
      }

      v4 = ++v3 >= v5;
    }

    while (v5 != v3);
  }

  return v4;
}

BOOL LBFGSpp::SubspaceMin<float>::P_converged(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1] - *a1;
  if ((v5 >> 2) < 1)
  {
    return 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = (v5 >> 2) & 0x7FFFFFFF;
    do
    {
      v9 = *(v4 + 4 * v6);
      if (*(a2 + 16) <= v9)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      if (*(a3 + 16) <= v9)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      v10 = *(*a2 + 4 * v9);
      if (v10 < *(*a3 + 4 * v9))
      {
        break;
      }

      if (*(a4 + 16) <= v9)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::minimize<EndpointMinimizerFunc>();
      }

      if (v10 > *(*a4 + 4 * v9))
      {
        break;
      }

      v7 = ++v6 >= v8;
    }

    while (v8 != v6);
  }

  return v7;
}

uint64_t LBFGSpp::BFGSMat<float,true>::apply_PtWMv(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, int *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 16);
  *(a4 + 16) = v10;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v10);
  v11 = v10 <= 0 || *(a1 + 104) <= 0;
  v12 = !v11;
  if (!v11)
  {
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    LBFGSpp::BFGSMat<float,true>::apply_Mv(a1, a3, v26);
    v13 = *(a1 + 104);
    v14 = v27;
    if (v27 < v13)
    {
      __assert_rtn("MatrixRef", "matrixref.h", 428, "(m_stride >= MatrixRef::rows()) || cva::detail::assertMessage(Invalid stride size, the columns overlap!)");
    }

    v15 = v26[0];
    if (v13)
    {
      v16 = *(a1 + 4);
      v17 = (v26[0] + 4 * (v27 - v13));
      v18 = 4 * v13;
      do
      {
        *v17 = v16 * *v17;
        ++v17;
        v18 -= 4;
      }

      while (v18);
    }

    if (*(a2 + 20) != v14)
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v32 = a2;
    v33 = v26;
    v34 = *a5;
    v19 = *(a2 + 16);
    if (v19 != *(a4 + 16))
    {
      if (*a2 == *a4 || v15 == *a4)
      {
        v28 = 0;
        v29 = 0;
        cva::MatrixData<float,0ul,0ul,false>::allocate(&v28, v19);
        v30 = *(v32 + 16);
        cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v28, v31);
        v21 = *a4;
        v22 = *(a4 + 8);
        v23 = v29;
        *a4 = v28;
        *(a4 + 8) = v23;
        v28 = v21;
        v29 = v22;
        *(a4 + 16) = v30;
        v30 = 0;
        free(v21);
        goto LABEL_21;
      }

      *(a4 + 16) = v19;
      cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v19);
    }

    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(a4, v31);
LABEL_21:
    free(v26[0]);
    goto LABEL_22;
  }

  v20 = *(a4 + 16);
  if (v20)
  {
    bzero(*a4, 4 * v20);
  }

LABEL_22:
  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_25902640C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  free(a13);
  free(a10);
  _Unwind_Resume(a1);
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,1u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = **(a2 + 8);
  if (*v4 == *a1 || **(a2 + 16) == *a1)
  {
    v12 = *(v4 + 5);
    v19 = 0;
    v20 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v19, v12);
    v21 = *(**(a2 + 8) + 20);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,1u,false>>(&v19, a2);
    v13 = *a1;
    v14 = a1[1];
    v15 = v20;
    *a1 = v19;
    a1[1] = v15;
    v19 = v13;
    v20 = v14;
    *(a1 + 4) = v21;
    v21 = 0;
    free(v13);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 5))
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v18 = *(**(a2 + 8) + 20);
      v17 = *(a1 + 4);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = **(a2 + 8);
      if (v5 != *(v4 + 5))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    if (*(v4 + 4) * v5)
    {
      v7 = *(a2 + 16);
      if (*(v7 + 4))
      {
        v8 = *(a2 + 24);
        v9 = *v4;
        v10 = *v7;
        v11 = *a1;
        cva::VecLib<float>::gemv();
      }
    }

    if (v5)
    {
      v16 = *a1;

      bzero(v16, 4 * v5);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1 || **(a2 + 16) == *a1)
  {
    v12 = *(v4 + 4);
    v20 = 0;
    v21 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v20, v12);
    v22 = *(*(a2 + 8) + 16);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v20, a2);
    v13 = *a1;
    v14 = a1[1];
    v15 = v21;
    *a1 = v20;
    a1[1] = v15;
    v20 = v13;
    v21 = v14;
    *(a1 + 4) = v22;
    v22 = 0;
    free(v13);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 4))
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v19 = *(*(a2 + 8) + 16);
      v18 = *(a1 + 4);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    if (*(v4 + 5) * v5)
    {
      v7 = *(a2 + 16);
      if (*(v7 + 4))
      {
        v8 = *(a2 + 24);
        v9 = *v4;
        v10 = *v7;
        v11 = *a1;
        cva::VecLib<float>::gemv();
      }
    }

    if (v5)
    {
      v16 = *a1;
      v17 = 4 * v5;

      bzero(v16, v17);
    }
  }
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,1u,false>,cva::MatrixScalarExpr<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>,cva::detail::DivOp>,cva::detail::SubOp>>(unsigned int *a1, unsigned int **a2)
{
  v4 = *(a1 + 1);
  v5 = *a2;
  if ((*(*a2 + 1) - 4 * (*a2)[5]) != &v4[-a1[5]])
  {
    v6 = *a1;
    if (*a1 != *v5)
    {
      cva::Logger::instance(a1);
      v7 = *MEMORY[0x277CFD380];
      v37 = **a2;
      v35 = *a1;
      cva::Logger::logInCategory();
      v6 = *a1;
      v5 = *a2;
      if (*a1 != **a2)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v6)
    {
      v8 = v6;
      v9 = a2[1];
      v10 = *(v9 + 1);
      v11 = *(v5 + 1);
      v12 = 4 * v8;
      do
      {
        v13 = *v11++;
        v14 = v13;
        v15 = *v10++;
        *v4++ = v14 - (v15 / *(v9 + 8));
        v12 -= 4;
      }

      while (v12);
    }

    return a1;
  }

  v16 = *a1;
  v39[0] = 0;
  v39[1] = 0;
  v17 = cva::MatrixData<float,0ul,0ul,false>::allocate(v39, v16);
  v40 = v16;
  v18 = *a2;
  if (v16 != **a2)
  {
    cva::Logger::instance(v17);
    v19 = *MEMORY[0x277CFD380];
    v38 = **a2;
    cva::Logger::logInCategory();
    v16 = v40;
    v18 = *a2;
    if (v40 != **a2)
    {
      goto LABEL_22;
    }
  }

  v20 = v39[0];
  if (v16)
  {
    v21 = a2[1];
    v22 = *(v21 + 1);
    v23 = *(v18 + 1);
    v24 = 4 * v16;
    v25 = v39[0];
    do
    {
      v26 = *v23++;
      v27 = v26;
      v28 = *v22++;
      *v25++ = v27 - (v28 / *(v21 + 8));
      v24 -= 4;
    }

    while (v24);
  }

  if (*a1 == v16)
  {
    goto LABEL_17;
  }

  cva::Logger::instance(v20);
  v29 = *MEMORY[0x277CFD380];
  v36 = *a1;
  cva::Logger::logInCategory();
  v16 = *a1;
  if (v16 != v40)
  {
LABEL_22:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v20 = v39[0];
LABEL_17:
  if (v16)
  {
    v30 = *(a1 + 1);
    v31 = 4 * v16;
    v32 = v20;
    do
    {
      v33 = *v32;
      v32 = (v32 + 4);
      *v30++ = v33;
      v31 -= 4;
    }

    while (v31);
  }

  free(v20);
  return a1;
}

void cva::operator-<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>>(unsigned int *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1 != *(**a2 + 4) || (v7 = a1[1], v7 != *(a2[1] + 1)))
  {
    cva::Logger::instance(a1);
    v8 = *MEMORY[0x277CFD380];
    v16 = *(**a2 + 4);
    v17 = *(a2[1] + 1);
    v14 = *a1;
    v15 = a1[1];
    cva::Logger::logInCategory();
    v6 = *a1;
    if (*a1 != *(**a2 + 4) || (v7 = a1[1], v7 != *(a2[1] + 1)))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
    }
  }

  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate((a3 + 8), v7 * v6);
  v9 = *a2;
  v10 = a2[1];
  v11 = **a2;
  *(a3 + 24) = v11[1];
  v12 = *v10;
  *(a3 + 28) = v10[1];
  v19 = v9;
  v20 = v10;
  if (*v11 != v12)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v21 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>((a3 + 8), v18);
  v13 = *MEMORY[0x277D85DE8];
}

unsigned int *cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>,cva::detail::SubOp>>(unsigned int *a1, unsigned int **a2)
{
  if (*(*a2 + 1) - 4 * (*a2)[5] == *(a1 + 1) - 4 * a1[5])
  {
    v4 = *a1;
    v5 = a1[1];
    v23[0] = 0;
    v23[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v23, v5 * v4);
    v24 = v4;
    v25 = v5;
    v6 = cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>,cva::detail::SubOp>>(v23, a2);
    v7 = *a1;
    if (*a1 != v24 || (v8 = a1[1], v8 != v25))
    {
      cva::Logger::instance(v6);
      v9 = *MEMORY[0x277CFD380];
      v21 = *a1;
      v22 = a1[1];
      cva::Logger::logInCategory();
      v7 = *a1;
      if (*a1 != v24 || (v8 = a1[1], v8 != v25))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v10 = a1[4];
    v11 = v7 * v8 == 0;
    if (v7 * v8)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 1) + 4 * v10 * v8;
    if (v11)
    {
      v13 = 0;
    }

    v14 = v23[0];
    if (v12 != v13)
    {
      v15 = 0;
      v16 = v10 - v7;
      v17 = v23[0];
      do
      {
        v18 = *v17++;
        *v12 = v18;
        if (v15 + 1 >= v7)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v12 += v19 + 1;
        if (v15 + 1 < v7)
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
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>,cva::detail::SubOp>>(a1, a2);
  }

  return a1;
}

void cva::operator-<cva::MatrixRef<float const,0u,1u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>>(cva::Logger *a1@<X0>, int ***a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1 != (**a2)[1])
  {
    cva::Logger::instance(a1);
    v7 = *MEMORY[0x277CFD380];
    v13 = (**a2)[1];
    v12 = *a1;
    cva::Logger::logInCategory();
    v6 = *a1;
    if (*a1 != (**a2)[1])
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
    }
  }

  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate((a3 + 8), v6);
  v8 = *a2;
  v9 = a2[1];
  v10 = ***a2;
  *(a3 + 24) = (**a2)[1];
  v15 = v8;
  v16 = v9;
  if (v10 != *v9)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v17 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>((a3 + 8), v14);
  v11 = *MEMORY[0x277D85DE8];
}

unsigned int *cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixScalarExpr<cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,1u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>,cva::detail::SubOp>,cva::detail::MulOp>>(unsigned int *a1, float *a2)
{
  v4 = *(a1 + 1);
  v5 = *a2;
  v6 = **a2;
  if ((*(v6 + 8) - 4 * *(v6 + 20)) != &v4[-a1[5]])
  {
    v7 = *a1;
    if (*a1 != *v6)
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v36 = ***a2;
      v34 = *a1;
      cva::Logger::logInCategory();
      v7 = *a1;
      v5 = *a2;
      v6 = **a2;
      if (*a1 != *v6)
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }

      v4 = *(a1 + 1);
    }

    if (v7)
    {
      v9 = v5[1];
      v10 = *(v6 + 8);
      v11 = 4 * v7;
      do
      {
        v12 = *v10++;
        v13 = v12;
        v14 = *v9++;
        *v4++ = (v13 - v14) * a2[2];
        v11 -= 4;
      }

      while (v11);
    }

    return a1;
  }

  v15 = *a1;
  v38[0] = 0;
  v38[1] = 0;
  v16 = cva::MatrixData<float,0ul,0ul,false>::allocate(v38, v15);
  v39 = v15;
  v17 = *a2;
  v18 = **a2;
  if (v15 != *v18)
  {
    cva::Logger::instance(v16);
    v19 = *MEMORY[0x277CFD380];
    v37 = ***a2;
    cva::Logger::logInCategory();
    v15 = v39;
    v17 = *a2;
    v18 = **a2;
    if (v39 != *v18)
    {
      goto LABEL_22;
    }
  }

  v20 = v38[0];
  if (v15)
  {
    v21 = v17[1];
    v22 = *(v18 + 8);
    v23 = 4 * v15;
    v24 = v38[0];
    do
    {
      v25 = *v22++;
      v26 = v25;
      v27 = *v21++;
      *v24++ = (v26 - v27) * a2[2];
      v23 -= 4;
    }

    while (v23);
  }

  if (*a1 == v15)
  {
    goto LABEL_17;
  }

  cva::Logger::instance(v20);
  v28 = *MEMORY[0x277CFD380];
  v35 = *a1;
  cva::Logger::logInCategory();
  v15 = *a1;
  if (v15 != v39)
  {
LABEL_22:
    __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v20 = v38[0];
LABEL_17:
  if (v15)
  {
    v29 = *(a1 + 1);
    v30 = 4 * v15;
    v31 = v20;
    do
    {
      v32 = *v31;
      v31 = (v31 + 4);
      *v29++ = v32;
      v30 -= 4;
    }

    while (v30);
  }

  free(v20);
  return a1;
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = **(a2 + 8);
  if (*(v4 + 8) - 4 * *(v4 + 20) == *a1 || *(*(a2 + 16) + 8) - 4 * *(*(a2 + 16) + 20) == *a1)
  {
    v13 = *(v4 + 4);
    v20 = 0;
    v21 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v20, v13);
    v22 = *(**(a2 + 8) + 4);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,1u,false>>(&v20, a2);
    v14 = *a1;
    v15 = a1[1];
    v16 = v21;
    *a1 = v20;
    a1[1] = v16;
    v20 = v14;
    v21 = v15;
    *(a1 + 4) = v22;
    v22 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 4);
    if (v5 != *(v4 + 4))
    {
      cva::Logger::instance(a1);
      v6 = *MEMORY[0x277CFD380];
      v19 = *(**(a2 + 8) + 4);
      v18 = *(a1 + 4);
      cva::Logger::logInCategory();
      v5 = *(a1 + 4);
      v4 = **(a2 + 8);
      if (v5 != *(v4 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    if (*v4 * v5)
    {
      v7 = *(a2 + 16);
      if (*v7)
      {
        v8 = *(a2 + 24);
        v9 = *(v4 + 8);
        v10 = *(v4 + 16);
        v11 = *(v7 + 8);
        v12 = *a1;
        cva::VecLib<float>::gemv();
      }
    }

    if (v5)
    {
      v17 = *a1;

      bzero(v17, 4 * v5);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = **(a2 + 8);
  if (*(v5 + 8) - 4 * *(v5 + 20) == *a1 || *(v4 + 8) - 4 * *(v4 + 20) == *a1)
  {
    v13 = (*(v4 + 4) * *(v5 + 4));
    v25 = 0;
    v26 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v25, v13);
    v14 = *(*(a2 + 16) + 4);
    LODWORD(v27) = *(**(a2 + 8) + 4);
    HIDWORD(v27) = v14;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>(&v25, a2);
    v15 = *a1;
    v16 = a1[1];
    v17 = v26;
    *a1 = v25;
    a1[1] = v17;
    v25 = v15;
    v26 = v16;
    a1[2] = v27;
    v27 = 0;
    free(v15);
  }

  else
  {
    v6 = *(a1 + 4);
    if (v6 != *(v5 + 4) || (v7 = *(a1 + 5), v7 != *(v4 + 4)))
    {
      cva::Logger::instance(a1);
      v8 = *MEMORY[0x277CFD380];
      v23 = *(**(a2 + 8) + 4);
      v24 = *(*(a2 + 16) + 4);
      v19 = *(a1 + 4);
      v21 = *(a1 + 5);
      cva::Logger::logInCategory();
      v6 = *(a1 + 4);
      v5 = **(a2 + 8);
      if (v6 != *(v5 + 4) || (v4 = *(a2 + 16), v7 = *(v4 + 4), *(a1 + 5) != v7))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    if (*v5 * v6 && v7 * *v4)
    {
      v9 = *(a2 + 24);
      v10 = *(v5 + 8);
      v11 = *(v5 + 16);
      v12 = *(v4 + 8);
      v22 = *a1;
      v20 = *(v4 + 16);
      cva::VecLib<float>::gemm();
    }

    if (v6 * v7)
    {
      v18 = *a1;

      bzero(v18, 4 * (v6 * v7));
    }
  }
}

cva::Logger *cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>,cva::detail::SubOp>>(cva::Logger *result, unsigned int **a2)
{
  v3 = result;
  v4 = *(result + 4);
  v5 = *a2;
  if (v4 != **a2 || (v6 = *(result + 5), v6 != *(v5 + 4)))
  {
    cva::Logger::instance(result);
    v7 = *MEMORY[0x277CFD380];
    v20 = **a2;
    v21 = (*a2)[1];
    v18 = *(v3 + 4);
    v19 = *(v3 + 5);
    result = cva::Logger::logInCategory();
    v4 = *(v3 + 4);
    v5 = *a2;
    if (v4 != **a2 || (v6 = *(v3 + 5), v6 != *(v5 + 4)))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
    }
  }

  v8 = (v6 * v4);
  if (v8)
  {
    v9 = 0;
    v10 = *(v5 + 16) - v4;
    v11 = *v3;
    v12 = a2[1];
    v13 = *(v5 + 8);
    v14 = 4 * v8;
    do
    {
      v15 = *v12++;
      *v11++ = *v13 - v15;
      if (v9 + 1 >= v4)
      {
        v16 = v10;
      }

      else
      {
        v16 = 0;
      }

      v17 = &v13[v16];
      if (v9 + 1 < v4)
      {
        ++v9;
      }

      else
      {
        v9 = 0;
      }

      v13 = v17 + 1;
      v14 -= 4;
    }

    while (v14);
  }

  return result;
}

cva::Logger *cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixRef<float const,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::MatrixRef<float const,0u,0u,false>>,cva::MatrixRef<float const,0u,0u,false>>,cva::detail::SubOp>>(cva::Logger *result, unsigned int **a2)
{
  v3 = result;
  v4 = *result;
  v5 = *a2;
  if (*result != **a2 || (v6 = *(result + 1), v6 != *(v5 + 4)))
  {
    cva::Logger::instance(result);
    v7 = *MEMORY[0x277CFD380];
    v23 = **a2;
    v24 = (*a2)[1];
    v21 = *v3;
    v22 = *(v3 + 1);
    result = cva::Logger::logInCategory();
    v4 = *v3;
    v5 = *a2;
    if (*v3 != **a2 || (v6 = *(v3 + 1), v6 != *(v5 + 4)))
    {
      LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
    }
  }

  v8 = v6 * v4;
  v9 = *(v3 + 4);
  if (v6 * v4)
  {
    v10 = *(v3 + 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v3 + 1) + 4 * v9 * v6;
  if (!v8)
  {
    v11 = 0;
  }

  if (v10 != v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(v5 + 16) - v4;
    v15 = v9 - v4;
    v16 = a2[1];
    v17 = *(v5 + 8);
    if (!v8)
    {
      v17 = 0;
    }

    do
    {
      v18 = *v16++;
      *v10 = *v17 - v18;
      if (v12 + 1 >= v4)
      {
        v19 = v14;
      }

      else
      {
        v19 = 0;
      }

      v17 += v19 + 1;
      if (v12 + 1 < v4)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }

      if (v13 + 1 >= v4)
      {
        v20 = v15;
      }

      else
      {
        v20 = 0;
      }

      v10 += v20 + 1;
      if (v13 + 1 < v4)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t LBFGSpp::BKLDLT<float>::BKLDLT(uint64_t a1, unsigned int *a2, int a3, float *a4)
{
  v5 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 80) = 0;
  *a1 = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  LBFGSpp::BKLDLT<float>::compute(a1, a2, a3, a4);
  return a1;
}

void sub_2590276D0(_Unwind_Exception *a1)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  free(*(v1 + 56));
  v7 = *(v1 + 32);
  if (v7)
  {
    *(v1 + 40) = v7;
    operator delete(v7);
  }

  free(*v3);
  _Unwind_Resume(a1);
}

void cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixUnaryExpr<cva::Matrix<float,0u,0u,false>,cva::detail::NegOp>,cva::Matrix<float,0u,1u,false>>(float **a1, uint64_t a2)
{
  if (**(a2 + 16) == *a1)
  {
    v20 = *(**(a2 + 8) + 16);
    v26 = 0;
    v27 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v26, v20);
    v28 = *(**(a2 + 8) + 16);
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::MatrixUnaryExpr<cva::Matrix<float,0u,0u,false>,cva::detail::NegOp>,cva::Matrix<float,0u,1u,false>>(&v26, a2);
    v21 = *a1;
    v22 = a1[1];
    v23 = v27;
    *a1 = v26;
    a1[1] = v23;
    v26 = v21;
    v27 = v22;
    *(a1 + 4) = v28;
    v28 = 0;
    free(v21);
  }

  else
  {
    v4 = *(a1 + 4);
    v5 = *(a2 + 8);
    v6 = *v5;
    if (v4 != *(*v5 + 4))
    {
      cva::Logger::instance(a1);
      v7 = *MEMORY[0x277CFD380];
      v25 = *(**(a2 + 8) + 16);
      v24 = *(a1 + 4);
      cva::Logger::logInCategory();
      v4 = *(a1 + 4);
      v5 = *(a2 + 8);
      v6 = *v5;
      if (v4 != *(*v5 + 4))
      {
        LBFGSpp::LBFGSBSolver<float,LBFGSpp::LineSearchMoreThuente>::proj_grad_norm();
      }
    }

    v8 = *(v6 + 5) * v4;
    if (v8 && *(*(a2 + 16) + 16))
    {
      v26 = 0;
      v27 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v26, v8);
      v9 = *v5;
      v10 = *(*v5 + 5);
      v28 = *(*v5 + 4);
      v29 = v10;
      v11 = (v28 * v10);
      if (v11)
      {
        v12 = *v9;
        v13 = 4 * v11;
        v14 = v26;
        do
        {
          v15 = *v12++;
          *v14++ = -v15;
          v13 -= 4;
        }

        while (v13);
      }

      v16 = *(a2 + 24);
      v17 = **(a2 + 16);
      v18 = *a1;
      cva::VecLib<float>::gemv();
    }

    if (v4)
    {
      v19 = *a1;

      bzero(v19, 4 * v4);
    }
  }
}

unint64_t *CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate<std::vector<ULFingerprintPlacement>,double (*)(ULFingerprintPlacement const&,ULFingerprintPlacement const&)>(uint64_t *a1, void *a2, double (*a3)(__int128 *, uint64_t), int16x4_t a4)
{
  v6 = a1;
  v26 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v8 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 2);
  *a1 = v8;
  LODWORD(v24) = 0;
  std::vector<float>::resize(a1 + 1, (v8 + v8 * v8) >> 1, &v24, a4);
  v9 = *v6;
  if (*v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 2;
    do
    {
      v13 = (*a2 + 44 * v11);
      v14 = *(v13 + 28);
      v15 = v13[1];
      v24 = *v13;
      v25[0] = v15;
      *(v25 + 12) = v14;
      if (v11)
      {
        v16 = 0;
        v17 = (2 * v10) & 0xFFFFFFFFFFFFFFFCLL;
        v18 = v11 + 1;
        v19 = v11;
        do
        {
          v20 = a3(&v24, *a2 + v16);
          *(*v7 + v17) = v20;
          v16 += 44;
          v17 += 4;
          --v19;
        }

        while (v19);
        v6 = a1;
        v9 = *a1;
      }

      else
      {
        v18 = 1;
      }

      ++v11;
      v10 += v12;
      v12 += 2;
    }

    while (v18 < v9);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_259027A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(a10 + 16) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void ULHomeSlamMapper::generateModel(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  if (*a1 == a1[1])
  {
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
  }

  else
  {
    ULSegmentGenerator::generateSegments(a1, a2, &v69);
  }

  v14 = *(a4 + 24);
  if (!v14)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (!(*(*v14 + 48))(v14))
  {
    v33 = 0x4EC4EC4EC4EC4EC5 * ((*(&v69 + 1) - v69) >> 3);
    v34 = a3;
    if (a6)
    {
      if ((a5 + 24) != &v69)
      {
        std::vector<ULSegment>::__assign_with_size[abi:ne200100]<ULSegment*,ULSegment*>(a5 + 24, v69, *(&v69 + 1), v33);
      }

      if ((&v70 + 8) != a5)
      {
        std::vector<ULStaticIntervalObject>::__assign_with_size[abi:ne200100]<ULStaticIntervalObject*,ULStaticIntervalObject*>(a5, *(&v70 + 1), v71, 0xF0F0F0F0F0F0F0F1 * ((v71 - *(&v70 + 1)) >> 3));
      }
    }

    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(v66, a3);
    v67 = *(a3 + 40);
    v68 = 0;
    ULHomeSlamMapper::clusterEndpoints(&v69, a2, v66, a1, a5, a6, v65);
    v15 = *(a4 + 24);
    if (!v15)
    {
      goto LABEL_75;
    }

    if ((*(*v15 + 48))(v15))
    {
LABEL_16:
      *a7 = 0;
      a7[208] = 0;
LABEL_17:
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v65);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v66);
      goto LABEL_18;
    }

    ULHomeSlamMapper::filterSegmentsAndFingerprintsInPlace(v65, &v69);
    v16 = *(a4 + 24);
    if (!v16)
    {
LABEL_75:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v16 + 48))(v16))
    {
      goto LABEL_16;
    }

    if ((a6 & 1) != 0 && (a5 + 48) != &v69)
    {
      std::vector<ULSegment>::__assign_with_size[abi:ne200100]<ULSegment*,ULSegment*>(a5 + 48, v69, *(&v69 + 1), 0x4EC4EC4EC4EC4EC5 * ((*(&v69 + 1) - v69) >> 3));
    }

    ULRFGroupGenerator::placeRFClusters(v65, &v69, &v63);
    v17 = *(a4 + 24);
    if (!v17)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v17 + 48))(v17))
    {
      *a7 = 0;
      a7[208] = 0;
LABEL_72:
      if (v63)
      {
        *(&v63 + 1) = v63;
        operator delete(v63);
      }

      goto LABEL_17;
    }

    ULEndpointPlacementGenerator::placeEndpoints(&v63, &v69, v65, &v61);
    v18 = *(a4 + 24);
    if (!v18)
    {
      goto LABEL_77;
    }

    if ((*(*v18 + 48))(v18))
    {
LABEL_31:
      *a7 = 0;
      a7[208] = 0;
      goto LABEL_70;
    }

    if (a6)
    {
      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a5 + 72, v65);
    }

    ULEndpointPlacementGenerator::spatialClusterFingperprintPlacements(&v61, v19);
    v20 = *(a4 + 24);
    if (!v20)
    {
LABEL_77:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v20 + 48))(v20))
    {
      goto LABEL_31;
    }

    ULWalkwayGenerator::createWalkways(&v61, a1, &v69, v60);
    if (std::function<BOOL ()(void)>::operator()(a4))
    {
      *a7 = 0;
      a7[208] = 0;
LABEL_69:
      std::optional<ULTrajectoryPointCloud>::~optional(v60);
LABEL_70:
      if (v61)
      {
        *(&v61 + 1) = v61;
        operator delete(v61);
      }

      goto LABEL_72;
    }

    ULHomeSlamMapper::createModelROIs(a2, &v61, &v58);
    if (a6)
    {
      v21 = *(a5 + 136);
      if (v21)
      {
        *(a5 + 144) = v21;
        operator delete(v21);
        *(a5 + 136) = 0;
        *(a5 + 144) = 0;
        *(a5 + 152) = 0;
      }

      *(a5 + 136) = v61;
      *(a5 + 152) = v62;
      v62 = 0;
      v61 = 0uLL;
    }

    if (std::function<BOOL ()(void)>::operator()(a4))
    {
      goto LABEL_43;
    }

    if (!ULHomeSlamModel::isGeoWorkMode(v60, &v58))
    {
      ULHomeSlamMapper::createFallbackROIs(a2, &v70 + 1, a1, a5, a6, v66, &v36);
      std::vector<ULROI>::__vdeallocate(&v58);
      v58 = v36;
      v59 = v37;
      v37 = 0;
      v36 = 0uLL;
      __p[0] = &v36;
      std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](__p);
      if (a6)
      {
        std::vector<ULFingerprintPlacement>::__assign_with_size[abi:ne200100]<ULFingerprintPlacement const*,ULFingerprintPlacement const*>((a5 + 136), 0, 0, 0);
      }
    }

    if (std::function<BOOL ()(void)>::operator()(a4))
    {
LABEL_43:
      *a7 = 0;
      a7[208] = 0;
LABEL_68:
      *&v36 = &v58;
      std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v36);
      goto LABEL_69;
    }

    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = &v56;
    v52 = &v53;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v49 = &v50;
    v32 = *(&v58 + 1);
    v22 = v58;
    if (v58 == *(&v58 + 1))
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      do
      {
        v24 = *v22;
        v25 = v22[1];
        while (v24 != v25)
        {
          v26 = *(v24 + 32);
          if (v26)
          {
            while (1)
            {
              v27 = *(v26 + 6);
              if (v27 == 1)
              {
                v28 = &v55;
                goto LABEL_55;
              }

              if (v27 == 5)
              {
                break;
              }

              if (v27 == 6)
              {
                v28 = &v49;
LABEL_55:
                std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>(v28, (v26 + 4));
              }

              v26 = *v26;
              if (!v26)
              {
                goto LABEL_57;
              }
            }

            v28 = &v52;
            goto LABEL_55;
          }

LABEL_57:
          ++v23;
          v24 += 240;
        }

        v22 += 4;
      }

      while (v22 != v32);
    }

    ULSettings::get<ULSettings::Version>(__p);
    v29 = a2[3];
    v40 = 4;
    v41 = v29;
    v42 = v23;
    v43 = -991146299 * ((*(&v69 + 1) - v69) >> 3);
    v30 = (a1[1] - *a1) >> 6;
    v44 = v33;
    v45 = v30;
    v46 = v57;
    v47 = v54;
    v48 = v51;
    memset(v35, 0, sizeof(v35));
    ULHomeSlamModel::ULHomeSlamModel(&v36, v60, &v58, v34, __p, v35);
    v72 = v35;
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v72);
    if (a6)
    {
      v31 = *(a5 + 112);
      if (v31)
      {
        *(a5 + 120) = v31;
        operator delete(v31);
        *(a5 + 112) = 0;
        *(a5 + 120) = 0;
        *(a5 + 128) = 0;
      }

      *(a5 + 112) = v63;
      *(a5 + 128) = v64;
      v64 = 0;
      v63 = 0uLL;
      std::optional<ULHomeSlamModel>::operator=[abi:ne200100]<ULHomeSlamModel&,void>(a5 + 160, &v36);
    }

    _ZNSt3__127__optional_move_assign_baseI15ULHomeSlamModelLb0EECI2NS_24__optional_destruct_baseIS1_Lb0EEEIJS1_EEENS_10in_place_tEDpOT_(a7, &v36);
    ULHomeSlamModel::~ULHomeSlamModel(&v36);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v49, v50);
    std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v52, v53);
    std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v55, v56);
    goto LABEL_68;
  }

  *a7 = 0;
  a7[208] = 0;
LABEL_18:
  *&v36 = &v70 + 8;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&v36);
  *&v36 = &v69;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&v36);
}

void sub_259028604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  *(v74 - 104) = v73;
  std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100]((v74 - 104));
  if (a47 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&a53, a54);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&a56, a57);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&a59, a60);
  a15 = &a62;
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::optional<ULTrajectoryPointCloud>::~optional(&a65);
  if (a70)
  {
    a71 = a70;
    operator delete(a70);
  }

  if (a72)
  {
    a73 = a72;
    operator delete(a72);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x208]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v74 - 224);
  ULSegmentGenerator::SegmentsAndStaticIntervals::~SegmentsAndStaticIntervals((v74 - 160));
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void ULHomeSlamMapper::clusterEndpoints(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*a1 == a1[1])
  {
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 1065353216;
  }

  else
  {
    ULHomeSlamMapper::filterRelevantFingerprintsFromSegments(a1, a2, v16);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULHomeSlamMapper::clusterEndpoints();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a2[3];
      *buf = 134218240;
      *&buf[4] = v14;
      v18 = 2048;
      v19 = 0x6DB6DB6DB6DB6DB7 * ((v16[1] - v16[0]) >> 5);
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "#HomeSlam, num fingerprint: %zu, num fingerprints in segments for RF clustering: %zu", buf, 0x16u);
    }

    ULEndpointClusteringAlgorithm::clusterEndpoints(v16, a3, a4, a5, a6, a7);
    *buf = v16;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2590288C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ULHomeSlamMapper::filterSegmentsAndFingerprintsInPlace(void *a1, uint64_t *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v4 = 0uLL;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    do
    {
      v8 = *(v5 + 32);
      v7 = *(v5 + 40);
      while (v7 != v8)
      {
        v7 -= 2;
        if (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v7))
        {
          v8 = v7 + 2;
          break;
        }
      }

      if (v8 != *(v5 + 32))
      {
        v9 = *(v5 + 56);
        v10 = *(v5 + 64);
        if (v9 != v10)
        {
          while (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v9))
          {
            v9 += 2;
            if (v9 == v10)
            {
              v9 = v10;
              break;
            }
          }

          v10 = *(v5 + 64);
        }

        if (v9 != v10)
        {
          *v29 = *v5;
          *&v29[16] = *(v5 + 16);
          *&v29[24] = *(v5 + 24);
          v41 = *(v8 - 1);
          v30[1] = 0;
          v31 = 0;
          v30[0] = 0;
          std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(v30, &v41, v42, 1uLL);
          v43 = *v9;
          v32[1] = 0;
          v33 = 0;
          v32[0] = 0;
          std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(v32, &v43, &v44, 1uLL);
          __p[0] = 0;
          __p[1] = 0;
          v35 = 0;
          std::vector<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>>::__init_with_size[abi:ne200100]<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*,std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*>(__p, *(v5 + 80), *(v5 + 88), (*(v5 + 88) - *(v5 + 80)) >> 4);
          v11 = *(&v39 + 1);
          if (*(&v39 + 1) >= v40)
          {
            *(&v39 + 1) = std::vector<ULSegment>::__emplace_back_slow_path<ULSegment>(&v39, v29);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v12 = *v29;
            *(*(&v39 + 1) + 12) = *&v29[12];
            *v11 = v12;
            *(v11 + 32) = 0;
            *(v11 + 40) = 0;
            *(v11 + 48) = 0;
            *(v11 + 56) = 0;
            *(v11 + 32) = *v30;
            *(v11 + 48) = v31;
            v30[0] = 0;
            v30[1] = 0;
            *(v11 + 64) = 0;
            *(v11 + 72) = 0;
            *(v11 + 56) = *v32;
            *(v11 + 72) = v33;
            *(v11 + 80) = 0;
            v31 = 0;
            v32[0] = 0;
            v32[1] = 0;
            v33 = 0;
            *(v11 + 88) = 0;
            *(v11 + 96) = 0;
            *(v11 + 80) = *__p;
            *(v11 + 96) = v35;
            __p[0] = 0;
            __p[1] = 0;
            v35 = 0;
            *(&v39 + 1) = v11 + 104;
          }

          if (v32[0])
          {
            v32[1] = v32[0];
            operator delete(v32[0]);
          }

          if (v30[0])
          {
            v30[1] = v30[0];
            operator delete(v30[0]);
          }

          v13 = v8 - 2;
          v14 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v13);
          if (!v14 || (*&v41 = v14 + 8, v15 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v36, v14 + 8), std::vector<boost::uuids::uuid>::push_back[abi:ne200100]((v15 + 3), v13), (v16 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, v9)) == 0))
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          *&v41 = v16 + 8;
          v17 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v36, v16 + 8);
          std::vector<boost::uuids::uuid>::push_back[abi:ne200100]((v17 + 3), v9);
        }
      }

      v5 += 104;
    }

    while (v5 != v6);
    v5 = *a2;
    v6 = a2[1];
    v4 = v39;
    v18 = v40;
    v19 = v37;
  }

  *a2 = v4;
  *&v39 = v5;
  *(&v39 + 1) = v6;
  v20 = a2[2];
  a2[2] = v18;
  v40 = v20;
  memset(v29, 0, 24);
  for (; v19; v19 = *v19)
  {
    std::vector<std::vector<boost::uuids::uuid>>::push_back[abi:ne200100](v29, v19 + 3);
  }

  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::clear(&v36);
  v21 = *v29;
  if (*&v29[8] != *v29)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      LODWORD(v41) = v23;
      *&v43 = &v41;
      v24 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v36, &v41) + 3;
      if ((v21 + v22) != v24)
      {
        std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v24, *(v21 + v22), *(v21 + v22 + 8), (*(v21 + v22 + 8) - *(v21 + v22)) >> 4);
      }

      ++v23;
      v21 = *v29;
      v22 += 24;
    }

    while (v23 < 0xAAAAAAAAAAAAAAABLL * ((*&v29[8] - *v29) >> 3));
  }

  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::clear(a1);
  for (i = v37; i; i = *i)
  {
    v26 = i[3];
    v27 = i[4];
    while (v26 != v27)
    {
      v41 = *v26;
      v42[0] = *(i + 4);
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,int>>(a1, &v41);
      ++v26;
    }
  }

  *&v41 = v29;
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v41);
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v36);
  *v29 = &v39;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](v29);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_259028D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  ULSegment::~ULSegment(&a9);
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::~__hash_table(&a23);
  a9 = &a29;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t ULHomeSlamMapper::createModelROIs@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v25[3] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (*(v4 + 32) == 1)
      {
        v16 = (v4 + 28);
        v7 = std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v13, (v4 + 28));
        v8 = *v4;
        LODWORD(v18) = *(v4 + 8);
        v17 = v8;
        v9 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, (v4 + 12));
        if (!v9)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        CLMicroLocationFingerprint::CLMicroLocationFingerprint(&v19, (v9 + 4));
        std::vector<ULROIPoint>::push_back[abi:ne200100]((v7 + 3), &v17);
        v16 = v25;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v16);
        if (__p)
        {
          v24 = __p;
          operator delete(__p);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v22);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v21);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v19);
      }

      v4 += 44;
    }

    while (v4 != v5);
    for (i = v14; i; i = *i)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      std::vector<ULROIPoint>::__init_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(&v17, i[3], i[4], 0xEEEEEEEEEEEEEEEFLL * ((i[4] - i[3]) >> 4));
      v20 = *(i + 4);
      std::vector<ULROI>::push_back[abi:ne200100](a3, &v17);
      v16 = &v17;
      std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v16);
    }
  }

  result = std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::~__hash_table(&v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259028F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  ULROIPoint::~ULROIPoint(&a16);
  std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::~__hash_table(&a9);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ULHomeSlamMapper::createFallbackROIs(uint64_t a1@<X0>, double **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v55[4] = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamMapper::createFallbackROIs();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a3;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 24)];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xF0F0F0F0F0F0F0F1 * (a2[1] - *a2)];
    *buf = 138412546;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "[ULHomeSlamMapper]: creating fallback ROIs with fingerprints: %@, staticIntervals: %@", buf, 0x16u);

    a4 = v18;
    a5 = v17;
    a6 = v16;
    a3 = v15;
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  if (*(a1 + 24) && *a2 != a2[1])
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      do
      {
        v22 = *a2;
        v23 = a2[1];
        if (*a2 != v23)
        {
          while (v21[22] < *v22 || v21[23] > v22[1])
          {
            v22 += 17;
            if (v22 == v23)
            {
              goto LABEL_14;
            }
          }

          std::vector<CLMicroLocationFingerprint>::push_back[abi:ne200100](&v45, (v21 + 4));
        }

LABEL_14:
        v21 = *v21;
      }

      while (v21);
      v24 = v45;
      v25 = v46;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v25 - v24) >> 5));
    if (v25 == v24)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    std::__introsort<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,false>(v24, v25, v27, 1);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULHomeSlamMapper::clusterEndpoints();
    }

    v28 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((v46 - v45) >> 5)];
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_DEFAULT, "[ULHomeSlamMapper]: performing fallback clustering with staticFingerprints: %@", buf, 0xCu);
    }

    if (v45 != v46)
    {
      ULEndpointClusteringAlgorithm::clusterEndpoints(&v45, a6, a3, a4, a5, v44);
      v41 = 0u;
      v42 = 0u;
      v43 = 1065353216;
      v31 = v45;
      v30 = v46;
      if (v45 != v46)
      {
        v40 = *MEMORY[0x277D28830];
        v32 = *(MEMORY[0x277D28830] + 8);
        do
        {
          v33 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v44, v31 + 5);
          if (v33)
          {
            v48 = (v33 + 4);
            v34 = std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v41, v33 + 8);
            *buf = v40;
            *&buf[8] = v32;
            CLMicroLocationFingerprint::CLMicroLocationFingerprint(&buf[16], v31);
            std::vector<ULROIPoint>::push_back[abi:ne200100]((v34 + 3), buf);
            v48 = v55;
            std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v48);
            if (__p)
            {
              v54 = __p;
              operator delete(__p);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v52);
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v51);
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&buf[16]);
          }

          v31 = (v31 + 224);
        }

        while (v31 != v30);
        for (i = v42; i; i = *i)
        {
          *buf = *(i + 3);
          *&buf[16] = i[5];
          i[4] = 0;
          i[5] = 0;
          i[3] = 0;
          v50 = *(i + 4);
          std::vector<ULROI>::push_back[abi:ne200100](a7, buf);
          v48 = buf;
          std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v48);
        }
      }

      v36 = a7[1];
      v37 = 126 - 2 * __clz((v36 - *a7) >> 5);
      if (v36 == *a7)
      {
        v38 = 0;
      }

      else
      {
        v38 = v37;
      }

      std::__introsort<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_1 &,ULROI *,false>(*a7, v36, v38, 1);
      if (a5)
      {
        std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a4 + 72, v44);
      }

      std::__hash_table<std::__hash_value_type<int,std::vector<ULROIPoint>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<ULROIPoint>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<ULROIPoint>>>>::~__hash_table(&v41);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v44);
    }

    *buf = &v45;
    std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_259029448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a22;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&a27);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void ULSettings::get<ULSettings::Version>(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v8 = [v2 defaultsDictionary];

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULVersion"];
  v4 = [v8 objectForKey:v3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v4, v9);
    *a1 = *v9;
    *(a1 + 16) = *&v9[16];
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(@"4.0.26", v9);
    *&v10[7] = *&v9[15];
    *v10 = *&v9[8];
    v5 = v9[23];
    v6 = *&v9[8];
    *a1 = *v9;
    *(a1 + 8) = v6;
    *(a1 + 15) = *&v10[7];
    *(a1 + 23) = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v8 = [v2 defaultsDictionary];

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULVersion"];
  v4 = [v8 objectForKey:v3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v4, v9);
    *a1 = *v9;
    *(a1 + 16) = *&v9[16];
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(@"4.0.26", v9);
    *&v10[7] = *&v9[15];
    *v10 = *&v9[8];
    v5 = v9[23];
    v6 = *&v9[8];
    *a1 = *v9;
    *(a1 + 8) = v6;
    *(a1 + 15) = *&v10[7];
    *(a1 + 23) = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t std::optional<ULHomeSlamModel>::operator=[abi:ne200100]<ULHomeSlamModel&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208) == 1)
  {
    std::__optional_storage_base<ULTrajectoryPointCloud,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULTrajectoryPointCloud,false> const&>(a1, a2);
    if (a1 == a2)
    {
      *(a1 + 104) = *(a2 + 104);
      std::string::operator=((a1 + 120), (a2 + 120));
      v6 = *(a2 + 176);
      v7 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v7;
      *(a1 + 176) = v6;
    }

    else
    {
      std::vector<ULROI>::__assign_with_size[abi:ne200100]<ULROI*,ULROI*>(a1 + 40, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 5);
      *(a1 + 96) = *(a2 + 96);
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a1 + 64), *(a2 + 80), 0);
      *(a1 + 104) = *(a2 + 104);
      std::string::operator=((a1 + 120), (a2 + 120));
      v4 = *(a2 + 176);
      v5 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v5;
      *(a1 + 176) = v4;
      std::vector<ULPositionedImage>::__assign_with_size[abi:ne200100]<ULPositionedImage*,ULPositionedImage*>((a1 + 184), *(a2 + 184), *(a2 + 192), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 192) - *(a2 + 184)) >> 4));
    }
  }

  else
  {
    ULHomeSlamModel::ULHomeSlamModel(a1, a2);
    *(a1 + 208) = 1;
  }

  return a1;
}

void ULHomeSlamModel::~ULHomeSlamModel(ULHomeSlamModel *this)
{
  v2 = (this + 184);
  std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 64);
  v2 = (this + 40);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 32) == 1)
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](this + 3, 0);
    v2 = this;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v2);
  }
}

uint64_t std::optional<ULTrajectoryPointCloud>::~optional(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100]((a1 + 24), 0);
    v3 = a1;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

uint64_t ULHomeSlamMapper::filterRelevantFingerprintsFromSegments@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v7 = v4[4];
      v8 = v4[5];
      while (v7 != v8)
      {
        if (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v20, v7))
        {
          if (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v7))
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              goto LABEL_45;
            }

            while (1)
            {
              v15 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
              {
                operator new();
              }

              if (onceToken_MicroLocation_Default != -1)
              {
                ULHomeSlamMapper::clusterEndpoints();
              }

              v16 = logObject_MicroLocation_Default;
              if (os_signpost_enabled(v16))
              {
                operator new();
              }

              if (onceToken_MicroLocation_Default != -1)
              {
                ULHomeSlamMapper::clusterEndpoints();
              }

              v17 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                operator new();
              }

LABEL_29:

              abort_report_np();
              __break(1u);
LABEL_45:
              ULHomeSlamMapper::clusterEndpoints();
            }
          }

          v9 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v7);
          if (!v9)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::vector<CLMicroLocationFingerprint>::push_back[abi:ne200100](a3, (v9 + 4));
          std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v20, v7);
        }

        v7 += 2;
      }

      v10 = v4[7];
      v11 = v4[8];
      while (v10 != v11)
      {
        if (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v20, v10))
        {
          if (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v10))
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              ULHomeSlamMapper::clusterEndpoints();
            }

            v18 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              operator new();
            }

            if (onceToken_MicroLocation_Default != -1)
            {
              ULHomeSlamMapper::clusterEndpoints();
            }

            v19 = logObject_MicroLocation_Default;
            if (os_signpost_enabled(v19))
            {
              operator new();
            }

            if (onceToken_MicroLocation_Default != -1)
            {
              ULHomeSlamMapper::clusterEndpoints();
            }

            v17 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              operator new();
            }

            goto LABEL_29;
          }

          v12 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v10);
          if (!v12)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          std::vector<CLMicroLocationFingerprint>::push_back[abi:ne200100](a3, (v12 + 4));
          std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v20, v10);
        }

        v10 += 2;
      }

      v4 += 13;
    }

    while (v4 != v5);
  }

  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v20);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259029EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<CLMicroLocationFingerprint>::push_back[abi:ne200100](uint64_t *a1, const CLMicroLocationFingerprint *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint const&>(a1, a2);
  }

  else
  {
    CLMicroLocationFingerprint::CLMicroLocationFingerprint(a1[1], a2);
    result = v3 + 224;
    a1[1] = v3 + 224;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ULROIPoint>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ULROIPoint>::__emplace_back_slow_path<ULROIPoint>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<ULROIPoint>>::construct[abi:ne200100]<ULROIPoint,ULROIPoint,void,0>(a1, *(a1 + 8), a2);
    result = v3 + 240;
    *(a1 + 8) = v3 + 240;
  }

  *(a1 + 8) = result;
  return result;
}

void ULROIPoint::~ULROIPoint(ULROIPoint *this)
{
  v3 = (this + 216);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 80);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(this + 16);
}

uint64_t std::vector<ULROI>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ULROI>::__emplace_back_slow_path<ULROI>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ULROI>::__emplace_back_slow_path<ULROI const&>(a1, a2);
  }

  else
  {
    std::vector<ULROI>::__construct_one_at_end[abi:ne200100]<ULROI const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<boost::uuids::uuid>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(a1, v10);
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

void std::vector<ULSegment>::__assign_with_size[abi:ne200100]<ULSegment*,ULSegment*>(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<ULSegment>::__vdeallocate(a1);
    if (a4 <= 0x276276276276276)
    {
      v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v10 = 0x276276276276276;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ULSegment>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<ULSegment *,ULSegment *,ULSegment *>(&v14, a2, a3, v8);
    std::vector<ULSegment>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ULSegment *,ULSegment *,ULSegment *>(&v13, a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULSegment>,ULSegment*,ULSegment*,ULSegment*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<ULSegment>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<ULSegment>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULSegment>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULSegment>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULSegment>,ULSegment*,ULSegment*,ULSegment*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 12) = *(v6 + 12);
      *v4 = v7;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v4 + 32, *(v6 + 4), *(v6 + 5), (*(v6 + 5) - *(v6 + 4)) >> 4);
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v4 + 56, *(v6 + 7), *(v6 + 8), (*(v6 + 8) - *(v6 + 7)) >> 4);
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      std::vector<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>>::__init_with_size[abi:ne200100]<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*,std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*>(v4 + 80, *(v6 + 10), *(v6 + 11), (*(v6 + 11) - *(v6 + 10)) >> 4);
      v6 = (v6 + 104);
      v4 = v12 + 104;
      v12 += 104;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULSegment>,ULSegment*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULSegment>,ULSegment*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULSegment>,ULSegment*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULSegment>,ULSegment*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 13;
      std::allocator_traits<std::allocator<ULSegment>>::destroy[abi:ne200100]<ULSegment,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

void std::allocator_traits<std::allocator<ULSegment>>::destroy[abi:ne200100]<ULSegment,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    a2[11] = v3;
    operator delete(v3);
  }

  v4 = a2[7];
  if (v4)
  {
    a2[8] = v4;
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ULSegment *,ULSegment *,ULSegment *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    v10 = *(a2 + v7);
    *(v8 + 12) = *(a2 + v7 + 12);
    *v8 = v10;
    if (a2 != a4)
    {
      std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v8 + 32), *(v9 + 32), *(v9 + 40), (*(v9 + 40) - *(v9 + 32)) >> 4);
      std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((v8 + 56), *(v9 + 56), *(v9 + 64), (*(v9 + 64) - *(v9 + 56)) >> 4);
      std::vector<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>>::__assign_with_size[abi:ne200100]<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*,std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*>((v8 + 80), *(v9 + 80), *(v9 + 88), (*(v9 + 88) - *(v9 + 80)) >> 4);
    }

    v7 += 104;
  }

  while (a2 + v7 != v6);
  return v6;
}

char *std::vector<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>>::__assign_with_size[abi:ne200100]<std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*,std::pair<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5++ + 1);
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5++ + 1);
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11;
      do
      {
        v14 = *v12++;
        *v11 = v14;
        v11 += 16;
        v13 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

void std::vector<ULSegment>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ULSegment>>::destroy[abi:ne200100]<ULSegment,void,0>(a1, i))
  {
    i -= 13;
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULSegment>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ULStaticIntervalObject>::__assign_with_size[abi:ne200100]<ULStaticIntervalObject*,ULStaticIntervalObject*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<ULStaticIntervalObject>::__vdeallocate(a1);
    if (a4 <= 0x1E1E1E1E1E1E1E1)
    {
      v9 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
      {
        v10 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ULStaticIntervalObject>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xF0F0F0F0F0F0F0F1 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<ULStaticIntervalObject *,ULStaticIntervalObject *,ULStaticIntervalObject *>(&v14, a2, a3, v8);
    std::vector<ULStaticIntervalObject>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ULStaticIntervalObject *,ULStaticIntervalObject *,ULStaticIntervalObject *>(&v13, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULStaticIntervalObject>,ULStaticIntervalObject*,ULStaticIntervalObject*,ULStaticIntervalObject*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<ULStaticIntervalObject>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULStaticIntervalObject>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULStaticIntervalObject>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULStaticIntervalObject>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULStaticIntervalObject>,ULStaticIntervalObject*,ULStaticIntervalObject*,ULStaticIntervalObject*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[2];
      *(v4 + 16) = v6[1];
      *(v4 + 32) = v8;
      *v4 = v7;
      *(v4 + 48) = *(v6 + 6);
      v9 = *(v6 + 65);
      v10 = *(v6 + 56);
      *(v4 + 88) = 0;
      *(v4 + 56) = v10;
      *(v4 + 65) = v9;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v4 + 88, *(v6 + 11), *(v6 + 12), (*(v6 + 12) - *(v6 + 11)) >> 4);
      *(v4 + 112) = 0;
      *(v4 + 120) = 0;
      *(v4 + 128) = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v4 + 112, *(v6 + 14), *(v6 + 15), (*(v6 + 15) - *(v6 + 14)) >> 4);
      v6 = (v6 + 136);
      v4 = v15 + 136;
      v15 += 136;
    }

    while (v6 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULStaticIntervalObject>,ULStaticIntervalObject*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULStaticIntervalObject>,ULStaticIntervalObject*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ULStaticIntervalObject>,std::reverse_iterator<ULStaticIntervalObject*>,std::reverse_iterator<ULStaticIntervalObject*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ULStaticIntervalObject>,std::reverse_iterator<ULStaticIntervalObject*>,std::reverse_iterator<ULStaticIntervalObject*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 24);
      if (v7)
      {
        *(v6 - 16) = v7;
        operator delete(v7);
      }

      v8 = *(v6 - 48);
      if (v8)
      {
        *(v6 - 40) = v8;
        operator delete(v8);
      }

      v6 -= 136;
    }

    while (v6 != a5);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<ULStaticIntervalObject *,ULStaticIntervalObject *,ULStaticIntervalObject *>(uint64_t a1, char **a2, char **a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 15;
  do
  {
    v7 = v6 - 15;
    v8 = *(v6 - 15);
    v9 = *(v6 - 11);
    *(a4 + 16) = *(v6 - 13);
    *(a4 + 32) = v9;
    *a4 = v8;
    objc_storeStrong((a4 + 48), *(v6 - 9));
    v10 = *(v6 - 4);
    *(a4 + 65) = *(v6 - 55);
    *(a4 + 56) = v10;
    if (a4 != v6 - 15)
    {
      std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((a4 + 88), *(v6 - 4), *(v6 - 3), (*(v6 - 3) - *(v6 - 4)) >> 4);
      std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>((a4 + 112), *(v6 - 1), *v6, (*v6 - *(v6 - 1)) >> 4);
    }

    a4 += 136;
    v6 += 17;
  }

  while (v7 + 17 != v5);
  return v5;
}

void std::vector<ULStaticIntervalObject>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 136)
  {
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      *(i - 40) = v6;
      operator delete(v6);
    }
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULStaticIntervalObject>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ULROI>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 4;
        v5 = v3;
        std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        v6 = v4;
        std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *std::vector<ULFingerprintPlacement>::__assign_with_size[abi:ne200100]<ULFingerprintPlacement const*,ULFingerprintPlacement const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x5D1745D1745D174)
    {
      v9 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2E8BA2E8BA2E8BALL)
      {
        v11 = 0x5D1745D1745D174;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ULFingerprintPlacement>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x2E8BA2E8BA2E8BA3 * ((v12 - v8) >> 2) >= a4)
  {
    v20 = a3 - __src;
    if (v20)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v8[v20];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 1);
        *(v16 + 28) = *(v14 + 28);
        *v16 = v17;
        v16[1] = v18;
        v14 += 44;
        v16 = (v16 + 44);
        v15 += 44;
      }

      while (v14 != a3);
    }

    v19 = v15;
  }

  v6[1] = v19;
  return result;
}

void std::vector<ULFingerprintPlacement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5D1745D1745D175)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULFingerprintPlacement>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULPositionedImage>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<ULPositionedImage>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 240)
  {
    v6 = (i - 24);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 56);
    if (v5)
    {
      *(i - 48) = v5;
      operator delete(v5);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(i - 120);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(i - 160);
    result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(i - 224);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__optional_storage_base<ULTrajectoryPointCloud,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULTrajectoryPointCloud,false> const&>(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 32) == a2[32])
  {
    if (*(a1 + 32))
    {

      ULTrajectoryPointCloud::operator=(a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100]((a1 + 24), 0);
    v3 = a1;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
    *(a1 + 32) = 0;
  }

  else
  {
    ULTrajectoryPointCloud::ULTrajectoryPointCloud(a1, a2);
    *(a1 + 32) = 1;
  }
}

ULTrajectoryPointCloud *ULTrajectoryPointCloud::operator=(ULTrajectoryPointCloud *result, ULTrajectoryPointCloud *this)
{
  if (result != this)
  {
    ULTrajectoryPointCloud::getBoundary(this, &v4);
    ULTrajectoryPointCloud::getMinimumBox(this, &v3);
    ULTrajectoryPointCloud::getCapacity(this);
    operator new();
  }

  return result;
}

void sub_25902B378(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 80);
    std::vector<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (v2 + 56);
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x259CA1F90](v2, 0x1020C40B3163EAALL);
  }

  return result;
}

void std::vector<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 8;
        std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ULTrajectoryPointCloud::~ULTrajectoryPointCloud(ULTrajectoryPointCloud *this)
{
  std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](this + 3, 0);
  v2 = this;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<ULROI>::__assign_with_size[abi:ne200100]<ULROI*,ULROI*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    std::vector<ULROI>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ULROI>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<ULROI *,ULROI *,ULROI *>(&v17, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        v15 -= 4;
        v18 = v15;
        std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v18);
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ULROI *,ULROI *,ULROI *>(&v16, a2, a2 + v12, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULROI>,ULROI*,ULROI*,ULROI*>(a1, a2 + v12, a3, *(a1 + 8));
  }
}

void std::vector<ULROI>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULROI>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULROI>,ULROI*,ULROI*,ULROI*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<ULROIPoint>::__init_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(v4, *v6, *(v6 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(v6 + 8) - *v6) >> 4));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULROI>,ULROI*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULROI>,ULROI*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULROI>,ULROI*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULROI>,ULROI*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    v3 = v1;
    std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ULROI *,ULROI *,ULROI *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<ULROIPoint>::__assign_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(a4, *v5, *(v5 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(v5 + 8) - *v5) >> 4));
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<ULROIPoint>::__assign_with_size[abi:ne200100]<ULROIPoint*,ULROIPoint*>(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<ULROIPoint>::__vdeallocate(a1);
    if (a4 <= 0x111111111111111)
    {
      v9 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
      {
        v10 = 0x111111111111111;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ULROIPoint>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - v8) >> 4) >= a4)
  {
    while (v6 != a3)
    {
      v15 = *v6;
      *(v8 + 8) = *(v6 + 8);
      *v8 = v15;
      CLMicroLocationFingerprint::operator=(v8 + 16, v6 + 16);
      v8 += 240;
      v6 += 240;
    }

    return std::vector<ULROIPoint>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    v12 = (a2 + v11 - v8);
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        *(v8 + 8) = *(v6 + 8);
        *v8 = v13;
        CLMicroLocationFingerprint::operator=(v8 + 16, v6 + 16);
        v6 += 240;
        v8 += 240;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULROIPoint>,ULROIPoint*,ULROIPoint*,ULROIPoint*>(a1, v12, a3, v11);
    a1[1] = result;
  }

  return result;
}

void std::vector<ULROIPoint>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULROIPoint>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULROIPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULROIPoint>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULROIPoint>,ULROIPoint*,ULROIPoint*,ULROIPoint*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 8) = *(v6 + 2);
      *v4 = v7;
      CLMicroLocationFingerprint::CLMicroLocationFingerprint((v4 + 16), (v6 + 2));
      v6 += 30;
      v4 = v12 + 240;
      v12 += 240;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULROIPoint>,ULROIPoint*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULROIPoint>,ULROIPoint*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULROIPoint>,ULROIPoint*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<ULROIPoint>,ULROIPoint*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 240;
      result = std::allocator_traits<std::allocator<ULROIPoint>>::destroy[abi:ne200100]<ULROIPoint,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<ULROIPoint>>::destroy[abi:ne200100]<ULROIPoint,void,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 216);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a2 + 184);
  if (v3)
  {
    *(a2 + 192) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 120);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 80);
  return std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(a2 + 16);
}

uint64_t std::vector<ULROIPoint>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<ULROIPoint>>::destroy[abi:ne200100]<ULROIPoint,void,0>(v3, i))
  {
    i -= 240;
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULROIPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULROI>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        *(v8 + 1) = *(a2 + 1);
        v9 = *(a2 + 2);
        *(v8 + 12) = *(a2 + 12);
        *(v8 + 2) = v9;
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_multi<std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance> const&>();
  }
}

void sub_25902BDB8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = 0;
  for (i = 16; i != 32; ++i)
  {
    v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + *(a2 + i);
  }

  a2[1] = v4;
  inserted = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__node_insert_multi_prepare(a1, v4, a2 + 2);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = v16[2] == *a3 && v16[3] == a3[1];
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_25902C278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULPositionedImage>::__assign_with_size[abi:ne200100]<ULPositionedImage*,ULPositionedImage*>(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<ULPositionedImage>::__vdeallocate(a1);
    if (a4 <= 0x111111111111111)
    {
      v9 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
      {
        v10 = 0x111111111111111;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ULROIPoint>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - v8) >> 4) >= a4)
  {
    while (v6 != a3)
    {
      v15 = *v6;
      *(v8 + 8) = *(v6 + 8);
      *v8 = v15;
      CLMicroLocationFingerprint::operator=(v8 + 16, v6 + 16);
      v8 += 240;
      v6 += 240;
    }

    return std::vector<ULPositionedImage>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    v12 = (a2 + v11 - v8);
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        *(v8 + 8) = *(v6 + 8);
        *v8 = v13;
        CLMicroLocationFingerprint::operator=(v8 + 16, v6 + 16);
        v6 += 240;
        v8 += 240;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPositionedImage>,ULPositionedImage*,ULPositionedImage*,ULPositionedImage*>(a1, v12, a3, v11);
    a1[1] = result;
  }

  return result;
}

void std::vector<ULPositionedImage>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULPositionedImage>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPositionedImage>,ULPositionedImage*,ULPositionedImage*,ULPositionedImage*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 8) = *(v6 + 2);
      *v4 = v7;
      CLMicroLocationFingerprint::CLMicroLocationFingerprint((v4 + 16), (v6 + 2));
      v6 += 30;
      v4 = v12 + 240;
      v12 += 240;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPositionedImage>,ULPositionedImage*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPositionedImage>,ULPositionedImage*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ULPositionedImage>,std::reverse_iterator<ULPositionedImage*>,std::reverse_iterator<ULPositionedImage*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ULPositionedImage>,std::reverse_iterator<ULPositionedImage*>,std::reverse_iterator<ULPositionedImage*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[5] = v5;
    v10[6] = v6;
    v8 = a3;
    do
    {
      v10[0] = (v8 - 24);
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v10);
      v9 = *(v8 - 56);
      if (v9)
      {
        *(v8 - 48) = v9;
        operator delete(v9);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v8 - 120);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v8 - 160);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v8 - 224);
      v8 -= 240;
    }

    while (v8 != a5);
  }
}

void ULHomeSlamModel::ULHomeSlamModel(ULHomeSlamModel *this, const ULHomeSlamModel *a2)
{
  v4 = std::__optional_copy_base<ULTrajectoryPointCloud,false>::__optional_copy_base[abi:ne200100](this, a2);
  *(v4 + 5) = 0;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  std::vector<ULROI>::__init_with_size[abi:ne200100]<ULROI*,ULROI*>(v4 + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 5);
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(this + 64, a2 + 64);
  *(this + 104) = *(a2 + 104);
  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v5;
  }

  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v8 = *(a2 + 44);
  *(this + 23) = 0;
  *(this + 44) = v8;
  *(this + 10) = v7;
  *(this + 9) = v6;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<ULPositionedImage>::__init_with_size[abi:ne200100]<ULPositionedImage*,ULPositionedImage*>(this + 184, *(a2 + 23), *(a2 + 24), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 24) - *(a2 + 23)) >> 4));
}

void sub_25902C78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v2 + 64);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<ULTrajectoryPointCloud>::~optional(v2);
  _Unwind_Resume(a1);
}

ULTrajectoryPointCloud *std::__optional_copy_base<ULTrajectoryPointCloud,false>::__optional_copy_base[abi:ne200100](ULTrajectoryPointCloud *a1, const ULTrajectoryPointCloud *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    ULTrajectoryPointCloud::ULTrajectoryPointCloud(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_25902C824(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    ULTrajectoryPointCloud::~ULTrajectoryPointCloud(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULROI>::__init_with_size[abi:ne200100]<ULROI*,ULROI*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULROI>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25902C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULPositionedImage>::__init_with_size[abi:ne200100]<ULPositionedImage*,ULPositionedImage*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULROIPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25902C934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__127__optional_move_assign_baseI15ULHomeSlamModelLb0EECI2NS_24__optional_destruct_baseIS1_Lb0EEEIJS1_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t a2)
{
  v4 = std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100](a1, a2);
  *(v4 + 5) = 0;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 7) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(v4 + 64, a2 + 64);
  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v5;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  v6 = *(a2 + 144);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = 1;
  return a1;
}

void sub_25902CA18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<ULTrajectoryPointCloud>::~optional(v2);
  _Unwind_Resume(a1);
}

ULTrajectoryPointCloud *std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100](ULTrajectoryPointCloud *a1, const ULTrajectoryPointCloud *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    ULTrajectoryPointCloud::ULTrajectoryPointCloud(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_25902CA80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    ULTrajectoryPointCloud::~ULTrajectoryPointCloud(v1);
  }

  _Unwind_Resume(exception_object);
}

void ULSegmentGenerator::SegmentsAndStaticIntervals::~SegmentsAndStaticIntervals(void **this)
{
  v2 = this + 3;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULStaticIntervalObject>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_5()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::destroy[abi:ne200100]<CLMicroLocationFingerprint,void,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 200);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a2 + 168);
  if (v3)
  {
    *(a2 + 176) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 104);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 64);
  return std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(a2);
}

uint64_t std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint const&>(uint64_t *a1, const CLMicroLocationFingerprint *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  CLMicroLocationFingerprint::CLMicroLocationFingerprint((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<CLMicroLocationFingerprint>::~__split_buffer(&v13);
  return v12;
}

void sub_25902CD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CLMicroLocationFingerprint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
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
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v4, v8);
      v9 = *(v8 + 40);
      *(v4 + 56) = *(v8 + 56);
      *(v4 + 40) = v9;
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v4 + 64, (v8 + 64));
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v4 + 104, (v8 + 104));
      v10 = *(v8 + 144);
      *(v4 + 160) = *(v8 + 160);
      *(v4 + 144) = v10;
      *(v4 + 176) = 0;
      *(v4 + 184) = 0;
      *(v4 + 168) = 0;
      *(v4 + 168) = *(v8 + 168);
      *(v4 + 184) = *(v8 + 184);
      *(v8 + 176) = 0;
      *(v8 + 184) = 0;
      *(v8 + 168) = 0;
      *(v4 + 192) = *(v8 + 192);
      *(v4 + 208) = 0;
      *(v4 + 216) = 0;
      *(v4 + 200) = 0;
      *(v4 + 200) = *(v8 + 200);
      *(v4 + 216) = *(v8 + 216);
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      v8 += 224;
      v4 = v15 + 224;
      v15 += 224;
    }

    while (v8 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::destroy[abi:ne200100]<CLMicroLocationFingerprint,void,0>(a1, v6);
      v6 += 224;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__split_buffer<CLMicroLocationFingerprint>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<CLMicroLocationFingerprint>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<CLMicroLocationFingerprint>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 224;
    result = std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::destroy[abi:ne200100]<CLMicroLocationFingerprint,void,0>(v5, v4 - 224);
  }

  return result;
}

uint64_t std::__introsort<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,false>(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v5 = result;
  v182 = *MEMORY[0x277D85DE8];
LABEL_2:
  v6 = a2;
  v155 = a2 - 38;
  v156 = (a2 - 28);
  v154 = a2 - 66;
  v7 = v5;
  while (1)
  {
    v5 = v7;
    v8 = v6 - v7;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 5);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        goto LABEL_208;
      }

      v6 = a2;
      if (v9 == 2)
      {
        if (*(a2 - 10) >= *(v5 + 144))
        {
          goto LABEL_208;
        }

LABEL_120:
        v78 = v5;
LABEL_121:
        v79 = (a2 - 28);
LABEL_122:
        result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v78, v79);
        goto LABEL_208;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      result = std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,0>(v5, v5 + 224, v5 + 448, v156);
      goto LABEL_208;
    }

    if (v9 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,0>(v5, v5 + 224, v5 + 448, v5 + 672);
      if (*(v6 - 10) >= *(v5 + 816))
      {
        goto LABEL_208;
      }

      result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v5 + 672, v156);
      if (*(v5 + 816) >= *(v5 + 592))
      {
        goto LABEL_208;
      }

      result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v5 + 448, v5 + 672);
      if (*(v5 + 592) >= *(v5 + 368))
      {
        goto LABEL_208;
      }

      v74 = v5 + 224;
      v75 = v5 + 448;
      goto LABEL_191;
    }

LABEL_10:
    if (v8 <= 5375)
    {
      if (a4)
      {
        if (v5 != v6)
        {
          v80 = (v5 + 224);
          if ((v5 + 224) != a2)
          {
            v81 = 0;
            v82 = v5;
            do
            {
              v83 = v80;
              if (*(v82 + 368) < *(v82 + 144))
              {
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v172, v80);
                v173 = *(v82 + 264);
                v174 = *(v82 + 280);
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v175, (v82 + 288));
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v176, (v82 + 328));
                v177 = *(v82 + 368);
                v178 = *(v82 + 384);
                *__p = *(v82 + 392);
                __p[2] = *(v82 + 408);
                *(v82 + 400) = 0;
                *(v82 + 408) = 0;
                *(v82 + 392) = 0;
                v180 = *(v82 + 416);
                *v181 = *(v82 + 424);
                *&v181[16] = *(v82 + 440);
                *(v82 + 424) = 0;
                *(v82 + 432) = 0;
                *(v82 + 440) = 0;
                v84 = v81;
                while (1)
                {
                  v85 = v5 + v84;
                  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v5 + v84 + 224, (v5 + v84));
                  *(v85 + 264) = *(v85 + 40);
                  *(v85 + 280) = *(v85 + 56);
                  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v85 + 288, (v85 + 64));
                  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v85 + 328, (v85 + 104));
                  *(v85 + 368) = *(v85 + 144);
                  *(v85 + 384) = *(v85 + 160);
                  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v85 + 392, (v85 + 168));
                  *(v85 + 416) = *(v85 + 192);
                  std::vector<ULPhotoFeaturesDO>::__vdeallocate((v5 + v84 + 424));
                  *(v85 + 424) = *(v85 + 200);
                  *(v85 + 440) = *(v85 + 216);
                  *(v85 + 208) = 0;
                  *(v85 + 216) = 0;
                  *(v85 + 200) = 0;
                  if (!v84)
                  {
                    break;
                  }

                  v84 -= 224;
                  if (v177.n128_f64[0] >= *(v85 - 80))
                  {
                    v86 = v5 + v84 + 224;
                    goto LABEL_134;
                  }
                }

                v86 = v5;
LABEL_134:
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v86, v172);
                v87 = v173;
                *(v85 + 56) = v174;
                *(v85 + 40) = v87;
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v85 + 64, v175);
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v85 + 104, v176);
                v88 = v177;
                v91 = *(v85 + 168);
                v90 = (v85 + 168);
                v89 = v91;
                *(v90 - 2) = v178;
                *(v90 - 3) = v88;
                if (v91)
                {
                  *(v86 + 176) = v89;
                  operator delete(v89);
                  *v90 = 0;
                  v90[1] = 0;
                  v90[2] = 0;
                }

                *v90 = __p[0];
                *(v86 + 176) = *&__p[1];
                memset(__p, 0, sizeof(__p));
                *(v86 + 192) = v180;
                std::vector<ULPhotoFeaturesDO>::__vdeallocate(v90 + 4);
                v90[4] = *v181;
                *(v86 + 208) = *&v181[8];
                memset(v181, 0, sizeof(v181));
                v160[0] = v181;
                std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v160);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v176);
                std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v175);
                result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v172);
              }

              v80 = v83 + 28;
              v81 += 224;
              v82 = v83;
            }

            while (v83 + 28 != a2);
          }
        }
      }

      else if (v5 != v6)
      {
        v144 = (v5 + 224);
        if ((v5 + 224) != a2)
        {
          v145 = (v5 + 440);
          do
          {
            v146 = v144;
            if (*(v5 + 368) < *(v5 + 144))
            {
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v172, v144);
              v173 = *(v5 + 264);
              v174 = *(v5 + 280);
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v175, (v5 + 288));
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v176, (v5 + 328));
              v177 = *(v5 + 368);
              v178 = *(v5 + 384);
              *__p = *(v5 + 392);
              __p[2] = *(v5 + 408);
              *(v5 + 400) = 0;
              *(v5 + 408) = 0;
              *(v5 + 392) = 0;
              v180 = *(v5 + 416);
              *v181 = *(v5 + 424);
              *&v181[16] = *(v5 + 440);
              *(v5 + 424) = 0;
              *(v5 + 432) = 0;
              *(v5 + 440) = 0;
              v147 = v145;
              do
              {
                v148 = v147;
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(&v147[-14].n128_i64[1], &v147[-28].n128_i64[1]);
                v147[-11] = v147[-25];
                v147[-10].n128_u64[0] = v147[-24].n128_u64[0];
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(&v147[-10].n128_i64[1], &v147[-24].n128_i64[1]);
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(&v147[-7], &v147[-21]);
                *(v147 - 72) = *(v147 - 296);
                v147[-4].n128_u32[2] = v147[-18].n128_u32[2];
                std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(&v147[-3], v147 - 17);
                v147[-2].n128_u8[8] = v147[-16].n128_u8[8];
                std::vector<ULPhotoFeaturesDO>::__vdeallocate(&v147[-1]);
                v147[-1] = v147[-15];
                v149 = v147[-14].n128_u64[0];
                v147 -= 14;
                *v148 = v149;
                *(v148 - 30) = 0.0;
                *(v148 - 29) = 0.0;
                v147->n128_u64[0] = 0;
              }

              while (v177.n128_f64[0] < *(v148 - 65));
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(&v147[-14].n128_i64[1], v172);
              v150 = v173;
              v147[-10].n128_u64[0] = v174;
              v147[-11] = v150;
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(&v147[-10].n128_i64[1], v175);
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(&v147[-7], v176);
              v151 = v177;
              v152 = v147[-3].n128_u64[0];
              v147[-4].n128_u32[2] = v178;
              *(v147 - 72) = v151;
              if (v152)
              {
                v147[-3].n128_u64[1] = v152;
                operator delete(v152);
                v147[-3].n128_u64[0] = 0;
                v147[-3].n128_u64[1] = 0;
                v147[-2].n128_u64[0] = 0;
              }

              v147[-3] = *__p;
              v147[-2].n128_u64[0] = __p[2];
              memset(__p, 0, sizeof(__p));
              v147[-2].n128_u8[8] = v180;
              std::vector<ULPhotoFeaturesDO>::__vdeallocate(&v147[-1]);
              v147[-1] = *v181;
              v147->n128_u64[0] = *&v181[16];
              memset(v181, 0, sizeof(v181));
              v160[0] = v181;
              std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v160);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v176);
              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v175);
              result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v172);
            }

            v144 = v146 + 28;
            v145 += 14;
            v5 = v146;
          }

          while (v146 + 28 != a2);
        }
      }

      goto LABEL_208;
    }

    if (!a3)
    {
      if (v5 != v6)
      {
        v92 = v10 >> 1;
        v93 = v10 >> 1;
        do
        {
          v94 = v93;
          if (v92 >= v93)
          {
            v95 = (2 * v93) | 1;
            v96 = v5 + 224 * v95;
            if (2 * v93 + 2 < v9 && *(v96 + 144) < *(v96 + 368))
            {
              v96 += 224;
              v95 = 2 * v93 + 2;
            }

            v97 = v5 + 224 * v93;
            if (*(v96 + 144) >= *(v97 + 144))
            {
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v172, (v5 + 224 * v93));
              v98 = *(v97 + 40);
              v174 = *(v97 + 56);
              v173 = v98;
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v175, (v97 + 64));
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v176, (v97 + 104));
              v99 = *(v97 + 144);
              v178 = *(v97 + 160);
              v177 = v99;
              *__p = *(v97 + 168);
              __p[2] = *(v97 + 184);
              *(v97 + 176) = 0;
              *(v97 + 184) = 0;
              *(v97 + 168) = 0;
              v180 = *(v97 + 192);
              *v181 = *(v97 + 200);
              *&v181[16] = *(v97 + 216);
              *(v97 + 200) = 0;
              *(v97 + 208) = 0;
              *(v97 + 216) = 0;
              do
              {
                v100 = v96;
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v97, v96);
                v101 = *(v96 + 40);
                *(v97 + 56) = *(v96 + 56);
                *(v97 + 40) = v101;
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v97 + 64, (v96 + 64));
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v97 + 104, (v96 + 104));
                v102 = *(v96 + 144);
                *(v97 + 160) = *(v96 + 160);
                *(v97 + 144) = v102;
                std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v97 + 168, (v96 + 168));
                *(v97 + 192) = *(v96 + 192);
                std::vector<ULPhotoFeaturesDO>::__vdeallocate((v97 + 200));
                v103 = (v96 + 200);
                *(v97 + 200) = *(v96 + 200);
                *(v97 + 216) = *(v96 + 216);
                *(v96 + 200) = 0;
                *(v96 + 208) = 0;
                *(v96 + 216) = 0;
                if (v92 < v95)
                {
                  break;
                }

                v104 = 2 * v95;
                v95 = (2 * v95) | 1;
                v96 = v5 + 224 * v95;
                v105 = v104 + 2;
                if (v105 < v9 && *(v96 + 144) < *(v96 + 368))
                {
                  v96 += 224;
                  v95 = v105;
                }

                v97 = v100;
              }

              while (*(v96 + 144) >= v177.n128_f64[0]);
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v100, v172);
              v106 = v173;
              *(v100 + 56) = v174;
              *(v100 + 40) = v106;
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v100 + 64, v175);
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v100 + 104, v176);
              v107 = v177;
              *(v100 + 160) = v178;
              *(v100 + 144) = v107;
              v108 = *(v100 + 168);
              if (v108)
              {
                *(v100 + 176) = v108;
                operator delete(v108);
                *(v100 + 168) = 0;
                *(v100 + 176) = 0;
                *(v100 + 184) = 0;
              }

              *(v100 + 168) = *__p;
              *(v100 + 184) = __p[2];
              memset(__p, 0, sizeof(__p));
              *(v100 + 192) = v180;
              std::vector<ULPhotoFeaturesDO>::__vdeallocate(v103);
              *(v100 + 200) = *v181;
              *(v100 + 216) = *&v181[16];
              memset(v181, 0, sizeof(v181));
              v160[0] = v181;
              std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v160);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v176);
              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v175);
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v172);
            }
          }

          v93 = v94 - 1;
        }

        while (v94);
        v109 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 5);
        do
        {
          v110 = a2;
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v160, v5);
          v111 = *(v5 + 40);
          v162 = *(v5 + 56);
          v161 = v111;
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v163, (v5 + 64));
          std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v164, (v5 + 104));
          v112 = 0;
          v113 = *(v5 + 144);
          v166 = *(v5 + 160);
          v165 = v113;
          v167 = *(v5 + 168);
          v168 = *(v5 + 184);
          *(v5 + 176) = 0;
          *(v5 + 184) = 0;
          *(v5 + 168) = 0;
          v169 = *(v5 + 192);
          v170 = *(v5 + 200);
          v171 = *(v5 + 216);
          *(v5 + 200) = 0;
          *(v5 + 208) = 0;
          v114 = v5;
          *(v5 + 216) = 0;
          do
          {
            v115 = v114 + 224 * v112;
            v116 = v115 + 224;
            if (2 * v112 + 2 >= v109)
            {
              v112 = (2 * v112) | 1;
            }

            else
            {
              v117 = *(v115 + 368);
              v118 = *(v115 + 592);
              v119 = v115 + 448;
              if (v117 >= v118)
              {
                v112 = (2 * v112) | 1;
              }

              else
              {
                v116 = v119;
                v112 = 2 * v112 + 2;
              }
            }

            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v114, v116);
            v120 = *(v116 + 40);
            *(v114 + 56) = *(v116 + 56);
            *(v114 + 40) = v120;
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v114 + 64, (v116 + 64));
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v114 + 104, (v116 + 104));
            v121 = *(v116 + 144);
            *(v114 + 160) = *(v116 + 160);
            *(v114 + 144) = v121;
            std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v114 + 168, (v116 + 168));
            *(v114 + 192) = *(v116 + 192);
            std::vector<ULPhotoFeaturesDO>::__vdeallocate((v114 + 200));
            *(v114 + 200) = *(v116 + 200);
            *(v114 + 216) = *(v116 + 216);
            *(v116 + 200) = 0;
            *(v116 + 208) = 0;
            *(v116 + 216) = 0;
            v114 = v116;
          }

          while (v112 <= ((v109 - 2) >> 1));
          a2 -= 28;
          if (v116 == v110 - 28)
          {
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v116, v160);
            v140 = v161;
            *(v116 + 56) = v162;
            *(v116 + 40) = v140;
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v116 + 64, v163);
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v116 + 104, v164);
            v141 = v165;
            *(v116 + 160) = v166;
            *(v116 + 144) = v141;
            v142 = *(v116 + 168);
            if (v142)
            {
              *(v116 + 176) = v142;
              operator delete(v142);
              *(v116 + 168) = 0;
              *(v116 + 176) = 0;
              *(v116 + 184) = 0;
            }

            *(v116 + 168) = v167;
            *(v116 + 184) = v168;
            v167 = 0uLL;
            v168 = 0;
            *(v116 + 192) = v169;
            std::vector<ULPhotoFeaturesDO>::__vdeallocate((v116 + 200));
            *(v116 + 200) = v170;
            *(v116 + 216) = v171;
            v170 = 0uLL;
            v171 = 0;
          }

          else
          {
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v116, v110 - 28);
            v122 = *(v110 - 23);
            *(v116 + 56) = *(v110 - 21);
            *(v116 + 40) = v122;
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v116 + 64, v110 - 20);
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v116 + 104, v110 - 15);
            v123 = *(v110 - 5);
            *(v116 + 160) = *(v110 - 16);
            *(v116 + 144) = v123;
            std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v116 + 168, (v110 - 7));
            *(v116 + 192) = *(v110 - 32);
            std::vector<ULPhotoFeaturesDO>::__vdeallocate((v116 + 200));
            v124 = v110 - 3;
            *(v116 + 200) = *(v110 - 3);
            *(v116 + 216) = *(v110 - 1);
            *v124 = 0.0;
            v124[1] = 0.0;
            v124[2] = 0.0;
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign((v110 - 28), v160);
            v125 = v161;
            *(v110 - 21) = v162;
            *(v110 - 23) = v125;
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v110 - 20), v163);
            std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v110 - 15), v164);
            v126 = v165;
            *(v110 - 16) = v166;
            *(v110 - 5) = v126;
            v127 = *(v110 - 7);
            if (v127)
            {
              *(v110 - 6) = v127;
              operator delete(v127);
            }

            *(v110 - 7) = v167;
            *(v110 - 5) = v168;
            v167 = 0uLL;
            v168 = 0;
            *(v110 - 32) = v169;
            std::vector<ULPhotoFeaturesDO>::__vdeallocate(v110 - 3);
            *(v110 - 3) = v170;
            *(v110 - 1) = v171;
            v170 = 0uLL;
            v171 = 0;
            v128 = v116 + 224 - v5;
            if (v128 >= 225)
            {
              v129 = (0x6DB6DB6DB6DB6DB7 * (v128 >> 5) - 2) >> 1;
              v130 = v5 + 224 * v129;
              if (*(v130 + 144) < *(v116 + 144))
              {
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v172, v116);
                v131 = *(v116 + 40);
                v174 = *(v116 + 56);
                v173 = v131;
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v175, (v116 + 64));
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v176, (v116 + 104));
                v132 = *(v116 + 144);
                v178 = *(v116 + 160);
                v177 = v132;
                *__p = *(v116 + 168);
                __p[2] = *(v116 + 184);
                *(v116 + 176) = 0;
                *(v116 + 184) = 0;
                *(v116 + 168) = 0;
                v180 = *(v116 + 192);
                *v181 = *(v116 + 200);
                *&v181[16] = *(v116 + 216);
                *(v116 + 200) = 0;
                *(v116 + 208) = 0;
                *(v116 + 216) = 0;
                do
                {
                  v133 = v130;
                  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v116, v130);
                  v134 = *(v130 + 40);
                  *(v116 + 56) = *(v130 + 56);
                  *(v116 + 40) = v134;
                  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v116 + 64, (v130 + 64));
                  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v116 + 104, (v130 + 104));
                  v135 = *(v130 + 144);
                  *(v116 + 160) = *(v130 + 160);
                  *(v116 + 144) = v135;
                  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v116 + 168, (v130 + 168));
                  *(v116 + 192) = *(v130 + 192);
                  std::vector<ULPhotoFeaturesDO>::__vdeallocate((v116 + 200));
                  v136 = (v130 + 200);
                  *(v116 + 200) = *(v130 + 200);
                  *(v116 + 216) = *(v130 + 216);
                  *(v130 + 200) = 0;
                  *(v130 + 208) = 0;
                  *(v130 + 216) = 0;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v5 + 224 * v129;
                  v116 = v133;
                }

                while (*(v130 + 144) < v177.n128_f64[0]);
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v133, v172);
                v137 = v173;
                *(v133 + 56) = v174;
                *(v133 + 40) = v137;
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v133 + 64, v175);
                std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v133 + 104, v176);
                v138 = v177;
                *(v133 + 160) = v178;
                *(v133 + 144) = v138;
                v139 = *(v133 + 168);
                if (v139)
                {
                  *(v133 + 176) = v139;
                  operator delete(v139);
                }

                *(v133 + 168) = *__p;
                *(v133 + 184) = __p[2];
                memset(__p, 0, sizeof(__p));
                *(v133 + 192) = v180;
                std::vector<ULPhotoFeaturesDO>::__vdeallocate(v136);
                *(v133 + 200) = *v181;
                *(v133 + 216) = *&v181[16];
                memset(v181, 0, sizeof(v181));
                v159 = v181;
                std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v159);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v176);
                std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v175);
                std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v172);
              }
            }
          }

          v172[0] = &v170;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v172);
          if (v167)
          {
            *(&v167 + 1) = v167;
            operator delete(v167);
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v164);
          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v163);
          result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v160);
        }

        while (v109-- > 2);
      }

      goto LABEL_208;
    }

    v11 = v9 >> 1;
    v12 = v5 + 224 * (v9 >> 1);
    v13 = *(v6 - 10);
    if (v8 > 0x7000)
    {
      v14 = *(v12 + 144);
      if (v14 >= *(v5 + 144))
      {
        if (v13 < v14)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v12, v156);
          if (*(v12 + 144) < *(v5 + 144))
          {
            v15 = v5;
            v16 = v12;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = v5;
        if (v13 < v14)
        {
          goto LABEL_17;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v5, v12);
        if (*(v6 - 10) < *(v12 + 144))
        {
          v15 = v12;
LABEL_17:
          v16 = (a2 - 28);
LABEL_26:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v15, v16);
        }
      }

      v20 = v5 + 224 * v11;
      v21 = v20 - 224;
      v22 = *(v20 - 80);
      v23 = *v155;
      if (v22 >= *(v5 + 368))
      {
        if (v23 < v22)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v21, (a2 - 56));
          if (*(v21 + 144) < *(v5 + 368))
          {
            v24 = v5 + 224;
            v25 = v21;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v24 = v5 + 224;
        if (v23 < v22)
        {
          goto LABEL_31;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v24, v21);
        if (*v155 < *(v21 + 144))
        {
          v24 = v21;
LABEL_31:
          v25 = (a2 - 56);
LABEL_38:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v24, v25);
        }
      }

      v26 = v5 + 224 * v11;
      v27 = *(v26 + 368);
      v28 = *v154;
      if (v27 >= *(v5 + 592))
      {
        if (v28 < v27)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v26 + 224, (a2 - 84));
          if (*(v26 + 368) < *(v5 + 592))
          {
            v29 = v5 + 448;
            v30 = v26 + 224;
            goto LABEL_47;
          }
        }
      }

      else
      {
        v29 = v5 + 448;
        if (v28 < v27)
        {
          goto LABEL_43;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v29, v26 + 224);
        if (*v154 < *(v26 + 368))
        {
          v29 = v26 + 224;
LABEL_43:
          v30 = (a2 - 84);
LABEL_47:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v29, v30);
        }
      }

      v31 = *(v12 + 144);
      v32 = *(v26 + 368);
      if (v31 >= *(v21 + 144))
      {
        if (v32 < v31)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v12, v26 + 224);
          if (*(v12 + 144) < *(v21 + 144))
          {
            v34 = v21;
            v33 = v12;
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v33 = v26 + 224;
          v34 = v21;
          goto LABEL_56;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v21, v12);
        if (*(v26 + 368) < *(v12 + 144))
        {
          v33 = v26 + 224;
          v34 = v12;
LABEL_56:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v34, v33);
        }
      }

      v18 = v5;
      v19 = v12;
      goto LABEL_58;
    }

    v17 = *(v5 + 144);
    if (v17 >= *(v12 + 144))
    {
      if (v13 >= v17)
      {
        goto LABEL_59;
      }

      std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v5, v156);
      if (*(v5 + 144) >= *(v12 + 144))
      {
        goto LABEL_59;
      }

      v18 = v12;
      v19 = v5;
    }

    else
    {
      v18 = v12;
      if (v13 >= v17)
      {
        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v12, v5);
        if (*(v6 - 10) >= *(v5 + 144))
        {
          goto LABEL_59;
        }

        v18 = v5;
      }

      v19 = (a2 - 28);
    }

LABEL_58:
    std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v18, v19);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(v5 - 80) < *(v5 + 144))
    {
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v172, v5);
      v35 = *(v5 + 40);
      v174 = *(v5 + 56);
      v173 = v35;
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v175, (v5 + 64));
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v176, (v5 + 104));
      v36 = 0;
      v37 = *(v5 + 200);
      v38 = *(v5 + 144);
      v39 = *(v5 + 160);
      *__p = *(v5 + 168);
      v178 = v39;
      __p[2] = *(v5 + 184);
      *(v5 + 176) = 0;
      *(v5 + 184) = 0;
      *(v5 + 168) = 0;
      v180 = *(v5 + 192);
      *&v181[16] = *(v5 + 216);
      v177 = v38;
      *v181 = v37;
      *(v5 + 200) = 0;
      *(v5 + 208) = 0;
      *(v5 + 216) = 0;
      do
      {
        v40 = *(v5 + v36 + 368);
        v36 += 224;
      }

      while (v40 < v177.n128_f64[0]);
      v41 = (v5 + v36);
      v42 = v6;
      if (v36 == 224)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = (v45 - 28);
          v46 = *(v45 - 10);
          v45 -= 28;
          if (v46 < v177.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = (v42 - 28);
          v44 = *(v42 - 10);
          v42 -= 28;
        }

        while (v44 >= v177.n128_f64[0]);
      }

LABEL_71:
      v7 = v41;
      if (v41 < v43)
      {
        v47 = v43;
        do
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v7, v47);
          do
          {
            v48 = v7[46];
            v7 += 28;
          }

          while (v48 < v177.n128_f64[0]);
          do
          {
            v49 = *(v47 - 80);
            v47 -= 224;
          }

          while (v49 >= v177.n128_f64[0]);
        }

        while (v7 < v47);
      }

      if (v7 - 28 != v5)
      {
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v5, v7 - 28);
        v50 = *(v7 - 23);
        *(v5 + 56) = *(v7 - 21);
        *(v5 + 40) = v50;
        std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v5 + 64, v7 - 20);
        std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v5 + 104, v7 - 15);
        v51 = *(v7 - 5);
        *(v5 + 160) = *(v7 - 16);
        *(v5 + 144) = v51;
        std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v5 + 168, (v7 - 7));
        *(v5 + 192) = *(v7 - 32);
        std::vector<ULPhotoFeaturesDO>::__vdeallocate((v5 + 200));
        *(v5 + 200) = *(v7 - 3);
        *(v5 + 216) = *(v7 - 1);
        *(v7 - 3) = 0.0;
        *(v7 - 2) = 0.0;
        *(v7 - 1) = 0.0;
      }

      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign((v7 - 28), v172);
      v52 = v173;
      *(v7 - 21) = v174;
      *(v7 - 23) = v52;
      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v7 - 20), v175);
      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v7 - 15), v176);
      v53 = v177;
      v54 = *(v7 - 7);
      *(v7 - 16) = v178;
      *(v7 - 5) = v53;
      if (v54)
      {
        *(v7 - 6) = v54;
        operator delete(v54);
        *(v7 - 7) = 0.0;
        *(v7 - 6) = 0.0;
        *(v7 - 5) = 0.0;
      }

      *(v7 - 7) = *__p;
      *(v7 - 5) = *&__p[2];
      memset(__p, 0, sizeof(__p));
      *(v7 - 32) = v180;
      std::vector<ULPhotoFeaturesDO>::__vdeallocate(v7 - 3);
      *(v7 - 3) = *v181;
      *(v7 - 1) = *&v181[16];
      memset(v181, 0, sizeof(v181));
      v160[0] = v181;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v160);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v176);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v175);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v172);
      v55 = v41 >= v43;
      v6 = a2;
      if (!v55)
      {
        goto LABEL_87;
      }

      v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*>(v5, v7 - 28);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*>(v7, a2);
      if (result)
      {
        a2 = v7 - 28;
        if (!v56)
        {
          goto LABEL_2;
        }

        goto LABEL_208;
      }

      if (!v56)
      {
LABEL_87:
        result = std::__introsort<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,false>(v5, v7 - 28, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v172, v5);
      v57 = *(v5 + 40);
      v174 = *(v5 + 56);
      v173 = v57;
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v175, (v5 + 64));
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v176, (v5 + 104));
      v58 = *(v5 + 200);
      v59 = *(v5 + 160);
      v177 = *(v5 + 144);
      v60 = *(v5 + 168);
      v178 = v59;
      *__p = v60;
      __p[2] = *(v5 + 184);
      *(v5 + 176) = 0;
      *(v5 + 184) = 0;
      *(v5 + 168) = 0;
      v180 = *(v5 + 192);
      *v181 = v58;
      *&v181[16] = *(v5 + 216);
      *(v5 + 208) = 0;
      *(v5 + 216) = 0;
      *(v5 + 200) = 0;
      if (v177.n128_f64[0] >= *(v6 - 10))
      {
        v63 = (v5 + 224);
        do
        {
          v7 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 += 28;
        }

        while (v177.n128_f64[0] >= v7[18]);
      }

      else
      {
        v61 = v5;
        do
        {
          v7 = (v61 + 224);
          v62 = *(v61 + 368);
          v61 += 224;
        }

        while (v177.n128_f64[0] >= v62);
      }

      v64 = a2;
      if (v7 < a2)
      {
        v65 = a2;
        do
        {
          v64 = (v65 - 28);
          v66 = *(v65 - 10);
          v65 -= 28;
        }

        while (v177.n128_f64[0] < v66);
      }

      while (v7 < v64)
      {
        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v7, v64);
        do
        {
          v67 = v7[46];
          v7 += 28;
        }

        while (v177.n128_f64[0] >= v67);
        do
        {
          v68 = *(v64 - 80);
          v64 -= 224;
        }

        while (v177.n128_f64[0] < v68);
      }

      if (v7 - 28 != v5)
      {
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v5, v7 - 28);
        v69 = *(v7 - 23);
        *(v5 + 56) = *(v7 - 21);
        *(v5 + 40) = v69;
        std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v5 + 64, v7 - 20);
        std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v5 + 104, v7 - 15);
        v70 = *(v7 - 5);
        *(v5 + 160) = *(v7 - 16);
        *(v5 + 144) = v70;
        std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v5 + 168, (v7 - 7));
        *(v5 + 192) = *(v7 - 32);
        std::vector<ULPhotoFeaturesDO>::__vdeallocate((v5 + 200));
        *(v5 + 200) = *(v7 - 3);
        *(v5 + 216) = *(v7 - 1);
        *(v7 - 3) = 0.0;
        *(v7 - 2) = 0.0;
        *(v7 - 1) = 0.0;
      }

      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign((v7 - 28), v172);
      v71 = v173;
      *(v7 - 21) = v174;
      *(v7 - 23) = v71;
      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v7 - 20), v175);
      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v7 - 15), v176);
      v72 = v177;
      v73 = *(v7 - 7);
      *(v7 - 16) = v178;
      *(v7 - 5) = v72;
      if (v73)
      {
        *(v7 - 6) = v73;
        operator delete(v73);
        *(v7 - 7) = 0.0;
        *(v7 - 6) = 0.0;
        *(v7 - 5) = 0.0;
      }

      *(v7 - 7) = *__p;
      *(v7 - 5) = *&__p[2];
      memset(__p, 0, sizeof(__p));
      *(v7 - 32) = v180;
      std::vector<ULPhotoFeaturesDO>::__vdeallocate(v7 - 3);
      *(v7 - 3) = *v181;
      *(v7 - 1) = *&v181[16];
      memset(v181, 0, sizeof(v181));
      v160[0] = v181;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v160);
      v6 = a2;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v176);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v175);
      result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v172);
      a4 = 0;
    }
  }

  v76 = *(v5 + 368);
  v77 = *(v6 - 10);
  if (v76 < *(v5 + 144))
  {
    if (v77 < v76)
    {
      goto LABEL_120;
    }

    result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v5, v5 + 224);
    if (*(v6 - 10) < *(v5 + 368))
    {
      v78 = v5 + 224;
      goto LABEL_121;
    }

    goto LABEL_208;
  }

  if (v77 >= v76)
  {
    goto LABEL_208;
  }

  v74 = v5 + 224;
  v75 = (a2 - 28);
LABEL_191:
  result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v74, v75);
  if (*(v5 + 368) < *(v5 + 144))
  {
    v79 = v5 + 224;
    v78 = v5;
    goto LABEL_122;
  }

LABEL_208:
  v153 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 144);
  v9 = *(a3 + 144);
  if (v8 >= *(result + 144))
  {
    if (v9 < v8)
    {
      result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, a2, a3);
      if (*(a2 + 144) < *(v7 + 144))
      {
        v10 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = result;
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v10, v11);
      goto LABEL_10;
    }

    result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, result, a2);
    if (*(a3 + 144) < *(a2 + 144))
    {
      v10 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 144) < *(a3 + 144))
  {
    result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, a3, a4);
    if (*(a3 + 144) < *(a2 + 144))
    {
      result = std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, a2, a3);
      if (*(a2 + 144) < *(v7 + 144))
      {

        return std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v7, a2);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*>(double *a1, double *a2)
{
  v2 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[46];
        v9 = *(a2 - 10);
        if (v8 < a1[18])
        {
          if (v9 >= v8)
          {
            std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, a1, (a1 + 28));
            if (*(v2 - 10) >= a1[46])
            {
              goto LABEL_50;
            }

            v10 = (a1 + 28);
          }

          else
          {
            v10 = a1;
          }

          v5 = (v2 - 28);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
LABEL_50:
          result = 1;
          goto LABEL_51;
        }

        v6 = (a1 + 28);
        v7 = (v2 - 28);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,0>(a1, (a1 + 28), (a1 + 56), (a2 - 28));
        goto LABEL_50;
      case 5:
        std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_0 &,CLMicroLocationFingerprint*,0>(a1, (a1 + 28), (a1 + 56), (a1 + 84));
        if (*(v2 - 10) >= a1[102])
        {
          goto LABEL_50;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, (a1 + 84), (v2 - 28));
        if (a1[102] >= a1[74])
        {
          goto LABEL_50;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, (a1 + 56), (a1 + 84));
        if (a1[74] >= a1[46])
        {
          goto LABEL_50;
        }

        v6 = (a1 + 28);
        v7 = (a1 + 56);
        break;
      default:
        goto LABEL_16;
    }

    std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v6, v7);
    if (a1[46] < a1[18])
    {
      v5 = (a1 + 28);
      goto LABEL_24;
    }

    goto LABEL_50;
  }

  if (v4 < 2)
  {
    goto LABEL_50;
  }

  if (v4 == 2)
  {
    if (*(a2 - 10) < a1[18])
    {
      v5 = (a2 - 28);
LABEL_24:
      v10 = a1;
LABEL_31:
      std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v10, v5);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

LABEL_16:
  v11 = a1 + 56;
  v12 = a1[46];
  v13 = a1[74];
  if (v12 < a1[18])
  {
    if (v13 >= v12)
    {
      std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, a1, (a1 + 28));
      if (a1[74] >= a1[46])
      {
        goto LABEL_36;
      }

      v14 = (a1 + 28);
    }

    else
    {
      v14 = a1;
    }

    v15 = (a1 + 56);
    goto LABEL_35;
  }

  if (v13 < v12)
  {
    std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, (a1 + 28), (a1 + 56));
    if (a1[46] < a1[18])
    {
      v15 = (a1 + 28);
      v14 = a1;
LABEL_35:
      std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(&std::ranges::__cpo::swap, v14, v15);
    }
  }

LABEL_36:
  v16 = a1 + 84;
  if (a1 + 84 == v2)
  {
    goto LABEL_50;
  }

  v17 = 0;
  v18 = 0;
  v27 = v2;
  while (1)
  {
    if (v16[18] < v11[18])
    {
      v28 = v18;
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v30, v16);
      v31 = *(v16 + 5);
      v32 = *(v16 + 7);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v33, v16 + 8);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v34, v16 + 13);
      v35 = *(v16 + 9);
      v36 = *(v16 + 40);
      *__p = *(v16 + 21);
      __p[2] = *(v16 + 23);
      v16[21] = 0.0;
      v16[22] = 0.0;
      v16[23] = 0.0;
      v38 = *(v16 + 192);
      *v39 = *(v16 + 25);
      *&v39[16] = v16[27];
      v16[25] = 0.0;
      v16[26] = 0.0;
      v19 = v17;
      v16[27] = 0.0;
      while (1)
      {
        v20 = a1 + v19;
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(a1 + v19 + 672, (a1 + v19 + 448));
        *(v20 + 712) = *(v20 + 488);
        *(v20 + 91) = *(v20 + 63);
        std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v20 + 736), v20 + 64);
        std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v20 + 776), v20 + 69);
        *(v20 + 51) = *(v20 + 37);
        *(v20 + 208) = *(v20 + 152);
        v21 = (a1 + v19 + 616);
        std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign((v20 + 840), (v20 + 616));
        v20[864] = v20[640];
        v22 = (a1 + v19 + 648);
        std::vector<ULPhotoFeaturesDO>::__vdeallocate((a1 + v19 + 872));
        *(v20 + 872) = *v22;
        *(v20 + 111) = *(v20 + 83);
        *(v20 + 83) = 0;
        *v22 = 0u;
        if (v19 == -448)
        {
          break;
        }

        v19 -= 224;
        if (*&v35 >= *(v20 + 46))
        {
          v23 = a1 + v19 + 672;
          goto LABEL_44;
        }
      }

      v23 = a1;
LABEL_44:
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v23, v30);
      *(v20 + 488) = v31;
      *(v20 + 63) = v32;
      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v20 + 512), v33);
      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign((v20 + 552), v34);
      *(v20 + 37) = v35;
      *(v20 + 152) = v36;
      v24 = *(v20 + 77);
      if (v24)
      {
        *(v23 + 176) = v24;
        operator delete(v24);
        *v21 = 0;
        *(v20 + 78) = 0;
        *(v20 + 79) = 0;
      }

      *v21 = __p[0];
      *(v23 + 176) = *&__p[1];
      memset(__p, 0, sizeof(__p));
      *(v23 + 192) = v38;
      std::vector<ULPhotoFeaturesDO>::__vdeallocate(v20 + 81);
      *v22 = *v39;
      *(v23 + 208) = *&v39[8];
      memset(v39, 0, sizeof(v39));
      v29 = v39;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v29);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v18 = v28 + 1;
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v34);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v33);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v30);
      v2 = v27;
      if (v28 == 7)
      {
        break;
      }
    }

    v11 = v16;
    v17 += 224;
    v16 += 28;
    if (v16 == v2)
    {
      goto LABEL_50;
    }
  }

  result = v16 + 28 == v27;
LABEL_51:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::ranges::__swap::__fn::operator()[abi:ne200100]<CLMicroLocationFingerprint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v11, a2);
  v12 = *(a2 + 40);
  v13 = *(a2 + 56);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v14, (a2 + 64));
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(v15, (a2 + 104));
  v16 = *(a2 + 144);
  v17 = *(a2 + 160);
  __p = *(a2 + 168);
  v19 = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v20 = *(a2 + 192);
  v21 = *(a2 + 200);
  v22 = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(a2, a3);
  v5 = *(a3 + 40);
  *(a2 + 56) = *(a3 + 56);
  *(a2 + 40) = v5;
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a2 + 64, (a3 + 64));
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a2 + 104, (a3 + 104));
  v6 = *(a3 + 144);
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 144) = v6;
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a2 + 168, (a3 + 168));
  *(a2 + 192) = *(a3 + 192);
  std::vector<ULPhotoFeaturesDO>::__vdeallocate((a2 + 200));
  *(a2 + 200) = *(a3 + 200);
  *(a2 + 216) = *(a3 + 216);
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(a3, v11);
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a3 + 64, v14);
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a3 + 104, v15);
  *(a3 + 144) = v16;
  *(a3 + 160) = v17;
  v7 = *(a3 + 168);
  if (v7)
  {
    *(a3 + 176) = v7;
    operator delete(v7);
  }

  *(a3 + 168) = __p;
  *(a3 + 184) = v19;
  v19 = 0;
  __p = 0uLL;
  *(a3 + 192) = v20;
  std::vector<ULPhotoFeaturesDO>::__vdeallocate((a3 + 200));
  *(a3 + 200) = v21;
  *(a3 + 216) = v22;
  v22 = 0;
  v21 = 0uLL;
  v10 = &v21;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v15);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v14);
  result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v11);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

__n128 std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::vector<ULROIPoint>::__emplace_back_slow_path<ULROIPoint>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULROIPoint>>(a1, v6);
  }

  v13 = 0;
  v14 = 240 * v2;
  std::allocator_traits<std::allocator<ULROIPoint>>::construct[abi:ne200100]<ULROIPoint,ULROIPoint,void,0>(a1, 240 * v2, a2);
  v15 = 240 * v2 + 240;
  v7 = *(a1 + 8);
  v8 = 240 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULROIPoint>,ULROIPoint*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ULROIPoint>::~__split_buffer(&v13);
  return v12;
}

void sub_25902F4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULROIPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<ULROIPoint>>::construct[abi:ne200100]<ULROIPoint,ULROIPoint,void,0>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v5;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a2 + 16, a3 + 2);
  v6 = *(a3 + 7);
  *(a2 + 72) = a3[9];
  *(a2 + 56) = v6;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a2 + 80, a3 + 10);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a2 + 120, a3 + 15);
  v7 = *(a3 + 10);
  *(a2 + 176) = *(a3 + 44);
  *(a2 + 160) = v7;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = 0;
  *(a2 + 184) = *(a3 + 23);
  *(a2 + 200) = a3[25];
  a3[24] = 0;
  a3[25] = 0;
  a3[23] = 0;
  *(a2 + 208) = *(a3 + 208);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 216) = 0;
  result = *(a3 + 27);
  *(a2 + 216) = result;
  *(a2 + 232) = a3[29];
  a3[27] = 0;
  a3[28] = 0;
  a3[29] = 0;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULROIPoint>,ULROIPoint*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<ULROIPoint>>::construct[abi:ne200100]<ULROIPoint,ULROIPoint,void,0>(a1, a4, v7);
      v7 += 30;
      a4 = v12 + 240;
      v12 += 240;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ULROIPoint>>::destroy[abi:ne200100]<ULROIPoint,void,0>(a1, v5);
      v5 += 240;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULROIPoint>,ULROIPoint*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<ULROIPoint>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULROIPoint>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<ULROIPoint>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 240;
    result = std::allocator_traits<std::allocator<ULROIPoint>>::destroy[abi:ne200100]<ULROIPoint,void,0>(v5, v4 - 240);
  }

  return result;
}

uint64_t std::vector<ULROI>::__emplace_back_slow_path<ULROI>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULROI>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v17 = 32 * v2 + 32;
  v9 = *(a1 + 8);
  v10 = 32 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULROI>,ULROI*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULROI>::~__split_buffer(&v15);
  return v14;
}

void sub_25902F828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULROI>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULROI>,ULROI*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 4;
      a4 += 32;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 4;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULROI>,ULROI*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void **std::__split_buffer<ULROI>::~__split_buffer(void **a1)
{
  std::__split_buffer<ULROI>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULROI>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULROIPoint>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double std::__introsort<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_1 &,ULROI *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v114 = a2 - 4;
  v115 = a2 - 2;
  v113 = a2 - 6;
  v7 = a1;
  v118 = a2;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 5;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        if (*(a2 - 2) >= *(v7 + 24))
        {
          return result;
        }

LABEL_112:
        v64 = v7;
LABEL_113:
        v65 = v115;
LABEL_114:
        *&result = std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v64, v65).n128_u64[0];
        return result;
      }

      goto LABEL_9;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      return std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_1 &,ULROI *,0>(v7, v7 + 32, v7 + 64, v115);
    }

    if (v8 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_1 &,ULROI *,0>(v7, v7 + 32, v7 + 64, v7 + 96);
      if (*(a2 - 2) >= *(v7 + 120))
      {
        return result;
      }

      *&result = std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, (v7 + 96), v115).n128_u64[0];
      if (*(v7 + 120) >= *(v7 + 88))
      {
        return result;
      }

      *&result = std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, (v7 + 64), (v7 + 96)).n128_u64[0];
      if (*(v7 + 88) >= *(v7 + 56))
      {
        return result;
      }

      v60 = (v7 + 32);
      v61 = (v7 + 64);
      goto LABEL_167;
    }

LABEL_9:
    if (v8 <= 23)
    {
      if (a4)
      {
        if (v7 != a2)
        {
          v66 = v7 + 32;
          if ((v7 + 32) != a2)
          {
            v67 = 0;
            v68 = v7;
            do
            {
              v69 = v66;
              v70 = *(v68 + 56);
              if (v70 < *(v68 + 24))
              {
                v123 = *v69;
                v124 = *(v68 + 48);
                *v69 = 0;
                *(v69 + 8) = 0;
                *(v69 + 16) = 0;
                v125 = v70;
                v71 = v67;
                while (1)
                {
                  v72 = v7 + v71;
                  std::vector<ULROIPoint>::__vdeallocate((v7 + v71 + 32));
                  *(v72 + 32) = *v72;
                  *(v72 + 48) = *(v72 + 16);
                  *(v72 + 8) = 0;
                  *(v72 + 16) = 0;
                  *v72 = 0;
                  *(v72 + 56) = *(v72 + 24);
                  if (!v71)
                  {
                    break;
                  }

                  v71 -= 32;
                  if (v125 >= *(v72 - 8))
                  {
                    v73 = v7 + v71 + 32;
                    goto LABEL_126;
                  }
                }

                v73 = v7;
LABEL_126:
                std::vector<ULROIPoint>::__vdeallocate(v73);
                *v73 = v123;
                *(v73 + 16) = v124;
                v123 = 0uLL;
                v124 = 0;
                *(v73 + 24) = v125;
                *&v119 = &v123;
                std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v119);
              }

              v66 = v69 + 32;
              v67 += 32;
              v68 = v69;
            }

            while ((v69 + 32) != a2);
          }
        }
      }

      else if (v7 != a2)
      {
        v106 = v7 + 32;
        if ((v7 + 32) != a2)
        {
          v107 = (v7 + 56);
          do
          {
            v108 = v106;
            v109 = *(a1 + 56);
            if (v109 < *(a1 + 24))
            {
              v123 = *v108;
              v124 = *(a1 + 48);
              *v108 = 0;
              *(v108 + 8) = 0;
              *(v108 + 16) = 0;
              v125 = v109;
              v110 = v107;
              do
              {
                v111 = v110;
                std::vector<ULROIPoint>::__vdeallocate(v110 - 3);
                *(v110 - 6) = *(v110 - 14);
                *(v110 - 1) = *(v110 - 5);
                *(v110 - 6) = 0;
                *(v110 - 5) = 0;
                *(v110 - 7) = 0;
                v112 = *(v110 - 8);
                v110 -= 8;
                *v111 = v112;
              }

              while (v125 < *(v111 - 16));
              std::vector<ULROIPoint>::__vdeallocate(v110 - 3);
              *(v110 - 6) = v123;
              *(v110 - 1) = v124;
              v123 = 0uLL;
              v124 = 0;
              *v110 = v125;
              *&v119 = &v123;
              std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v119);
            }

            v106 = v108 + 32;
            v107 += 8;
            a1 = v108;
          }

          while ((v108 + 32) != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v74 = v9 >> 1;
        v75 = v9 >> 1;
        do
        {
          v76 = v75;
          if (v74 >= v75)
          {
            v77 = (2 * v75) | 1;
            v78 = a1 + 32 * v77;
            if (2 * v76 + 2 < v8)
            {
              v79 = *(v78 + 24);
              v80 = *(v78 + 56);
              v78 += 32 * (v79 < v80);
              if (v79 < v80)
              {
                v77 = 2 * v76 + 2;
              }
            }

            v81 = a1 + 32 * v76;
            v82 = *(v81 + 24);
            if (*(v78 + 24) >= v82)
            {
              v123 = *v81;
              v124 = *(v81 + 16);
              *v81 = 0;
              *(v81 + 8) = 0;
              *(v81 + 16) = 0;
              v125 = v82;
              while (1)
              {
                v83 = v78;
                std::vector<ULROIPoint>::__vdeallocate(v81);
                *v81 = *v83;
                *(v81 + 16) = *(v83 + 16);
                *v83 = 0;
                *(v83 + 8) = 0;
                *(v83 + 16) = 0;
                *(v81 + 24) = *(v83 + 24);
                if (v74 < v77)
                {
                  break;
                }

                v84 = (2 * v77) | 1;
                v78 = a1 + 32 * v84;
                if (2 * v77 + 2 < v8)
                {
                  v85 = *(v78 + 24);
                  v86 = *(v78 + 56);
                  v78 += 32 * (v85 < v86);
                  if (v85 < v86)
                  {
                    v84 = 2 * v77 + 2;
                  }
                }

                v87 = v125;
                v81 = v83;
                v77 = v84;
                if (*(v78 + 24) < v125)
                {
                  goto LABEL_144;
                }
              }

              v87 = v125;
LABEL_144:
              std::vector<ULROIPoint>::__vdeallocate(v83);
              *v83 = v123;
              *(v83 + 16) = v124;
              v123 = 0uLL;
              v124 = 0;
              *(v83 + 24) = v87;
              *&v119 = &v123;
              std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v119);
            }
          }

          v75 = v76 - 1;
        }

        while (v76);
        v88 = v118;
        do
        {
          v89 = 0;
          v90 = v88;
          v119 = *a1;
          v120 = *(a1 + 16);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v121 = *(a1 + 24);
          v91 = a1;
          do
          {
            v92 = v91 + 32 * v89;
            v93 = v92 + 32;
            if (2 * v89 + 2 >= v8)
            {
              v89 = (2 * v89) | 1;
            }

            else
            {
              v94 = *(v92 + 56);
              v95 = *(v92 + 88);
              v96 = v92 + 64;
              if (v94 >= v95)
              {
                v89 = (2 * v89) | 1;
              }

              else
              {
                v93 = v96;
                v89 = 2 * v89 + 2;
              }
            }

            std::vector<ULROIPoint>::__vdeallocate(v91);
            *v91 = *v93;
            *(v91 + 16) = *(v93 + 16);
            *v93 = 0;
            *(v93 + 8) = 0;
            *(v93 + 16) = 0;
            *(v91 + 24) = *(v93 + 24);
            v91 = v93;
          }

          while (v89 <= ((v8 - 2) >> 1));
          v88 -= 4;
          std::vector<ULROIPoint>::__vdeallocate(v93);
          if (v93 == v90 - 4)
          {
            *v93 = v119;
            *(v93 + 16) = v120;
            v119 = 0uLL;
            v120 = 0;
            *(v93 + 24) = v121;
          }

          else
          {
            *v93 = *(v90 - 2);
            *(v93 + 16) = *(v90 - 2);
            *v88 = 0;
            *(v90 - 3) = 0;
            *(v90 - 2) = 0;
            *(v93 + 24) = *(v90 - 2);
            std::vector<ULROIPoint>::__vdeallocate(v90 - 4);
            *(v90 - 2) = v119;
            *(v90 - 2) = v120;
            v119 = 0uLL;
            v120 = 0;
            *(v90 - 2) = v121;
            v97 = (v93 - a1 + 32) >> 5;
            v98 = v97 < 2;
            v99 = v97 - 2;
            if (!v98)
            {
              v100 = v99 >> 1;
              v101 = a1 + 32 * (v99 >> 1);
              v102 = *(v93 + 24);
              if (*(v101 + 24) < v102)
              {
                v103 = v90 - 4;
                v123 = *v93;
                v124 = *(v93 + 16);
                *v93 = 0;
                *(v93 + 8) = 0;
                *(v93 + 16) = 0;
                v125 = v102;
                do
                {
                  v104 = v101;
                  std::vector<ULROIPoint>::__vdeallocate(v93);
                  *v93 = *v104;
                  *(v93 + 16) = *(v104 + 16);
                  *v104 = 0;
                  *(v104 + 8) = 0;
                  *(v104 + 16) = 0;
                  *(v93 + 24) = *(v104 + 24);
                  v105 = v125;
                  if (!v100)
                  {
                    break;
                  }

                  v100 = (v100 - 1) >> 1;
                  v101 = a1 + 32 * v100;
                  v93 = v104;
                }

                while (*(v101 + 24) < v125);
                std::vector<ULROIPoint>::__vdeallocate(v104);
                *v104 = v123;
                *(v104 + 16) = v124;
                v123 = 0uLL;
                v124 = 0;
                *(v104 + 24) = v105;
                v122 = &v123;
                std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v122);
                v88 = v103;
              }
            }
          }

          *&v123 = &v119;
          std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v123);
          v98 = v8-- <= 2;
        }

        while (!v98);
      }

      return result;
    }

    v10 = v7 + 32 * (v8 >> 1);
    v11 = *(a2 - 2);
    if (v8 >= 0x81)
    {
      v12 = *(v10 + 24);
      if (v12 >= *(a1 + 24))
      {
        if (v11 < v12)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, (a1 + 32 * (v8 >> 1)), v115);
          if (*(v10 + 24) < *(a1 + 24))
          {
            v13 = a1;
            v14 = (a1 + 32 * (v8 >> 1));
            goto LABEL_25;
          }
        }
      }

      else
      {
        v13 = a1;
        if (v11 < v12)
        {
          goto LABEL_16;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, a1, (a1 + 32 * (v8 >> 1)));
        if (*(a2 - 2) < *(v10 + 24))
        {
          v13 = (a1 + 32 * (v8 >> 1));
LABEL_16:
          v14 = v115;
LABEL_25:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v13, v14);
        }
      }

      v18 = *(v10 - 8);
      v19 = *(a2 - 10);
      if (v18 >= *(a1 + 56))
      {
        if (v19 < v18)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, (v10 - 32), v114);
          if (*(v10 - 8) < *(a1 + 56))
          {
            v20 = (a1 + 32);
            v21 = (v10 - 32);
            goto LABEL_37;
          }
        }
      }

      else
      {
        v20 = (a1 + 32);
        if (v19 < v18)
        {
          goto LABEL_30;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v20, (v10 - 32));
        if (*(a2 - 10) < *(v10 - 8))
        {
          v20 = (v10 - 32);
LABEL_30:
          v21 = v114;
LABEL_37:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v20, v21);
        }
      }

      v22 = *(v10 + 56);
      v23 = *(a2 - 18);
      if (v22 >= *(a1 + 88))
      {
        if (v23 < v22)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, (v10 + 32), v113);
          if (*(v10 + 56) < *(a1 + 88))
          {
            v24 = (a1 + 64);
            v25 = (v10 + 32);
            goto LABEL_46;
          }
        }
      }

      else
      {
        v24 = (a1 + 64);
        if (v23 < v22)
        {
          goto LABEL_42;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v24, (v10 + 32));
        if (*(a2 - 18) < *(v10 + 56))
        {
          v24 = (v10 + 32);
LABEL_42:
          v25 = v113;
LABEL_46:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v24, v25);
        }
      }

      v26 = *(v10 + 24);
      v27 = *(v10 + 56);
      if (v26 >= *(v10 - 8))
      {
        if (v27 < v26)
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, (a1 + 32 * (v8 >> 1)), (v10 + 32));
          if (*(v10 + 24) < *(v10 - 8))
          {
            v29 = (v10 - 32);
            v28 = (a1 + 32 * (v8 >> 1));
            goto LABEL_55;
          }
        }
      }

      else
      {
        if (v27 < v26)
        {
          v28 = (v10 + 32);
          v29 = (v10 - 32);
          goto LABEL_55;
        }

        std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, (v10 - 32), (a1 + 32 * (v8 >> 1)));
        if (*(v10 + 56) < *(v10 + 24))
        {
          v28 = (v10 + 32);
          v29 = (a1 + 32 * (v8 >> 1));
LABEL_55:
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v29, v28);
        }
      }

      v16 = a1;
      v17 = (a1 + 32 * (v8 >> 1));
      goto LABEL_57;
    }

    v15 = *(a1 + 24);
    if (v15 >= *(v10 + 24))
    {
      if (v11 >= v15)
      {
        goto LABEL_58;
      }

      std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, a1, v115);
      if (*(a1 + 24) >= *(v10 + 24))
      {
        goto LABEL_58;
      }

      v16 = (a1 + 32 * (v8 >> 1));
      v17 = a1;
      goto LABEL_57;
    }

    v16 = (a1 + 32 * (v8 >> 1));
    if (v11 < v15)
    {
      goto LABEL_21;
    }

    std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v16, a1);
    if (*(a2 - 2) < *(a1 + 24))
    {
      v16 = a1;
LABEL_21:
      v17 = v115;
LABEL_57:
      std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v16, v17);
    }

LABEL_58:
    v117 = --a3;
    if (a4)
    {
      v30 = *(a1 + 24);
LABEL_61:
      v31 = 0;
      v33 = *a1;
      v32 = *(a1 + 8);
      *&v123 = *a1;
      *(&v123 + 1) = v32;
      v34 = *(a1 + 16);
      v124 = v34;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v125 = v30;
      do
      {
        v35 = *(a1 + v31 + 56);
        v31 += 32;
      }

      while (v35 < v30);
      v36 = a1 + v31;
      v37 = v118;
      if (v31 == 32)
      {
        v40 = v118;
        while (v36 < v40)
        {
          v38 = (v40 - 32);
          v41 = *(v40 - 8);
          v40 -= 32;
          if (v41 < v30)
          {
            goto LABEL_71;
          }
        }

        v38 = v40;
      }

      else
      {
        do
        {
          v38 = (v37 - 32);
          v39 = *(v37 - 8);
          v37 -= 32;
        }

        while (v39 >= v30);
      }

LABEL_71:
      v7 = v36;
      if (v36 < v38)
      {
        v42 = v38;
        do
        {
          std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v7, v42);
          do
          {
            v43 = *(v7 + 56);
            v7 += 32;
          }

          while (v43 < v30);
          do
          {
            v44 = *(v42 - 2);
            v42 -= 2;
          }

          while (v44 >= v30);
        }

        while (v7 < v42);
      }

      if (v7 - 32 != a1)
      {
        std::vector<ULROIPoint>::__vdeallocate(a1);
        *a1 = *(v7 - 32);
        *(a1 + 16) = *(v7 - 16);
        *(v7 - 32) = 0;
        *(v7 - 24) = 0;
        *(v7 - 16) = 0;
        *(a1 + 24) = *(v7 - 8);
      }

      std::vector<ULROIPoint>::__vdeallocate((v7 - 32));
      *(v7 - 32) = v33;
      *(v7 - 24) = v32;
      *(v7 - 16) = v34;
      v123 = 0uLL;
      v124 = 0;
      *(v7 - 8) = v30;
      *&v119 = &v123;
      std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v119);
      v45 = v36 >= v38;
      a3 = v117;
      a2 = v118;
      if (!v45)
      {
        goto LABEL_83;
      }

      v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_1 &,ULROI *>(a1, v7 - 32);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_1 &,ULROI *>(v7, v118))
      {
        a2 = (v7 - 32);
        if ((v46 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v46 & 1) == 0)
      {
LABEL_83:
        std::__introsort<std::_RangeAlgPolicy,ULHomeSlamMapper::createFallbackROIs(std::unordered_map<boost::uuids::uuid,CLMicroLocationFingerprint> const&,std::vector<ULStaticIntervalObject> const&,std::vector<ULOdometryDO> const&,std::optional<std::reference_wrapper<ULHomeSlamMapperIntermediateOutputs>>,ULHomeSlamMapperClusteringSettings const&)::$_1 &,ULROI *,false>(a1, v7 - 32, v117, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v30 = *(a1 + 24);
      if (*(a1 - 8) < v30)
      {
        goto LABEL_61;
      }

      v48 = *a1;
      v49 = *(a1 + 8);
      *&v123 = *a1;
      *(&v123 + 1) = v49;
      v50 = *(a1 + 16);
      v124 = v50;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v125 = v30;
      if (v30 >= *(a2 - 2))
      {
        v53 = a1 + 32;
        do
        {
          v7 = v53;
          if (v53 >= a2)
          {
            break;
          }

          v54 = *(v53 + 24);
          v53 += 32;
        }

        while (v30 >= v54);
      }

      else
      {
        v51 = a1;
        do
        {
          v7 = v51 + 32;
          v52 = *(v51 + 56);
          v51 += 32;
        }

        while (v30 >= v52);
      }

      v55 = a2;
      if (v7 < a2)
      {
        v56 = v118;
        do
        {
          v55 = (v56 - 32);
          v57 = *(v56 - 8);
          v56 -= 32;
        }

        while (v30 < v57);
      }

      while (v7 < v55)
      {
        std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v7, v55);
        do
        {
          v58 = *(v7 + 56);
          v7 += 32;
        }

        while (v30 >= v58);
        do
        {
          v59 = *(v55 - 2);
          v55 -= 2;
        }

        while (v30 < v59);
      }

      if (v7 - 32 != a1)
      {
        std::vector<ULROIPoint>::__vdeallocate(a1);
        *a1 = *(v7 - 32);
        *(a1 + 16) = *(v7 - 16);
        *(v7 - 32) = 0;
        *(v7 - 24) = 0;
        *(v7 - 16) = 0;
        *(a1 + 24) = *(v7 - 8);
      }

      std::vector<ULROIPoint>::__vdeallocate((v7 - 32));
      *(v7 - 32) = v48;
      *(v7 - 24) = v49;
      *(v7 - 16) = v50;
      v123 = 0uLL;
      v124 = 0;
      *(v7 - 8) = v30;
      *&v119 = &v123;
      std::vector<ULROIPoint>::__destroy_vector::operator()[abi:ne200100](&v119);
      a4 = 0;
      a2 = v118;
    }
  }

  v62 = *(v7 + 56);
  v63 = *(a2 - 2);
  if (v62 < *(v7 + 24))
  {
    if (v63 < v62)
    {
      goto LABEL_112;
    }

    *&result = std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v7, (v7 + 32)).n128_u64[0];
    if (*(a2 - 2) < *(v7 + 56))
    {
      v64 = (v7 + 32);
      goto LABEL_113;
    }

    return result;
  }

  if (v63 >= v62)
  {
    return result;
  }

  v60 = (v7 + 32);
  v61 = v115;
LABEL_167:
  *&result = std::ranges::__swap::__fn::operator()[abi:ne200100]<ULROI>(&std::ranges::__cpo::swap, v60, v61).n128_u64[0];
  if (*(v7 + 56) < *(v7 + 24))
  {
    v65 = (v7 + 32);
    v64 = v7;
    goto LABEL_114;
  }

  return result;
}