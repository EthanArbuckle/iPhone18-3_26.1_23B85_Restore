@interface VCPVideoFacePoseFilter
- (int)eulerAnglesToRotation:(float)a3[3] R:(float)a4[3][3];
- (int)filteringPose:(id *)a3;
- (int)kalmanFiltering:(float)a3[3] T:(float)a4[3];
- (int)rotationToEulerAngles:(float)a3[3][3] angles:(float)a4[3];
@end

@implementation VCPVideoFacePoseFilter

- (int)rotationToEulerAngles:(float)a3[3][3] angles:(float)a4[3]
{
  a4[2] = 0.0;
  *a4 = 0;
  v6 = asinf((*a3)[6]);
  a4[1] = -v6;
  v7 = cosf(v6);
  if (v7 == 0.0)
  {
    a4[2] = 0.0;
    v9 = (*a3)[1];
    if ((*a3)[6] >= 0.0)
    {
      v9 = -v9;
      v10 = -(*a3)[5];
    }

    else
    {
      v10 = (*a3)[5];
    }

    *a4 = atan2f(v9, v10);
  }

  else
  {
    v8 = v7;
    *a4 = atan2f((*a3)[7] / v7, (*a3)[8] / v7);
    a4[2] = atan2f((*a3)[3] / v8, (*a3)[0] / v8);
  }

  return 0;
}

- (int)eulerAnglesToRotation:(float)a3[3] R:(float)a4[3][3]
{
  v25 = *MEMORY[0x1E69E9840];
  v22[1] = 16;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v6 = memptr[0];
  v22[0] = memptr[0];
  v22[2] = 0x300000003;
  *(memptr[0] + 12) = 0;
  *(v6 + 4) = 0;
  *(v6 + 20) = 0;
  *(v6 + 28) = 0x3F80000000000000;
  *v6 = 1065353216;
  *(v6 + 4) = 1065353216;
  v21[1] = 16;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v7 = memptr[0];
  v21[0] = memptr[0];
  v21[2] = 0x300000003;
  *(memptr[0] + 12) = 0;
  *(v7 + 4) = 0;
  *(v7 + 20) = 0;
  *(v7 + 28) = 0x3F80000000000000;
  *v7 = 1065353216;
  *(v7 + 4) = 1065353216;
  v19[1] = 16;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v8 = memptr[0];
  v19[0] = memptr[0];
  v20 = 0x300000003;
  *(memptr[0] + 12) = 0;
  *(v8 + 4) = 0;
  *(v8 + 20) = 0;
  *(v8 + 28) = 0x3F80000000000000;
  *v8 = 1065353216;
  *(v8 + 4) = 1065353216;
  *(v6 + 4) = cosf(*a3);
  *(v6 + 7) = -sinf(*a3);
  *(v6 + 5) = sinf(*a3);
  *(v6 + 8) = cosf(*a3);
  *v7 = cosf(a3[1]);
  *(v7 + 6) = sinf(a3[1]);
  *(v7 + 2) = -sinf(a3[1]);
  *(v7 + 8) = cosf(a3[1]);
  *v8 = cosf(a3[2]);
  *(v8 + 3) = -sinf(a3[2]);
  *(v8 + 1) = sinf(a3[2]);
  *(v8 + 4) = cosf(a3[2]);
  v15[0] = v19;
  v15[1] = v21;
  v16[1] = 16;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v16[0] = memptr[0];
  v17 = v20;
  v18 = 3;
  memptr[1] = v15;
  memptr[2] = v22;
  v24 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>(v16, memptr);
  v9 = 0;
  v10 = v17;
  v11 = v16[0];
  do
  {
    v12 = 0;
    for (i = 0; i != 3; ++i)
    {
      (*a4)[i] = v11[v9 + v12];
      v12 += v10;
    }

    ++v9;
    ++a4;
  }

  while (v9 != 3);
  free(v11);
  free(v19[0]);
  free(v21[0]);
  free(v22[0]);
  return 0;
}

- (int)kalmanFiltering:(float)a3[3] T:(float)a4[3]
{
  v111 = *MEMORY[0x1E69E9840];
  v86 = *a4;
  v87 = *(a4 + 2);
  v88 = *a3;
  v89 = *(a3 + 2);
  v84[1] = 144;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 0x240uLL, 0xE1AC2527uLL);
  v7 = memptr;
  v84[0] = memptr;
  v85 = 0xC0000000CLL;
  bzero(memptr, 0x240uLL);
  for (i = 0; i != 156; i += 13)
  {
    v7[i] = 1065353216;
  }

  v7[36] = 1022739087;
  v7[114] = 1022739087;
  v7[49] = 1022739087;
  v7[127] = 1022739087;
  v7[62] = 1022739087;
  v7[140] = 1022739087;
  v82[1] = 72;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 0x120uLL, 0xE1AC2527uLL);
  v9 = memptr;
  v82[0] = memptr;
  v83 = 0xC00000006;
  *(memptr + 20) = 0u;
  *(v9 + 36) = 0u;
  *(v9 + 52) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 100) = 0u;
  *(v9 + 116) = 0u;
  *(v9 + 132) = 0u;
  *(v9 + 148) = 0u;
  *(v9 + 164) = 0u;
  *(v9 + 180) = 0u;
  *(v9 + 196) = 0u;
  *(v9 + 212) = 0u;
  *(v9 + 228) = 0u;
  *(v9 + 244) = 0u;
  v9[17] = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 260) = 0u;
  *v9 = 1065353216;
  *(v9 + 39) = 1065353216;
  *(v9 + 7) = 1065353216;
  *(v9 + 46) = 1065353216;
  *(v9 + 14) = 1065353216;
  *(v9 + 53) = 1065353216;
  if (!self->_previousStateIsValid)
  {
    self->_previousState.m_data[0] = *a4;
    self->_previousState.m_data[1] = a4[1];
    self->_previousState.m_data[2] = a4[2];
    self->_previousState.m_data[6] = *a3;
    self->_previousState.m_data[7] = a3[1];
    self->_previousState.m_data[8] = a3[2];
    bzero(&self->_previousCovar, 0x240uLL);
  }

  v10 = (4 * v85 + 31) & 0x7FFFFFFE0;
  v79[1] = (v10 >> 2);
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
  v79[0] = memptr;
  v80 = v85;
  v81 = 1;
  v101 = v84;
  p_previousState = &self->_previousState;
  LODWORD(v103) = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,12u,1u,false>>(v79, &memptr);
  v78[1] = 144;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 0x240uLL, 0xE1AC2527uLL);
  v11 = memptr;
  v78[0] = memptr;
  v78[2] = 0xC0000000CLL;
  bzero(memptr, 0x240uLL);
  for (j = 0; j != 624; j += 52)
  {
    *&v11[j] = 1065353216;
  }

  v90 = v84;
  p_previousCovar = &self->_previousCovar;
  v107 = v84;
  v13 = (4 * (v85 * v85) + 31) & 0x7FFFFFFE0;
  p_previousState = (v13 >> 2);
  v95 = 0;
  malloc_type_posix_memalign(&v95, 0x20uLL, v13, 0xE1AC2527uLL);
  v101 = v95;
  v14 = *(v107 + 4);
  LODWORD(v103) = *(v90 + 4);
  HIDWORD(v103) = v14;
  v96 = &v90;
  v97 = &v107;
  v98 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,12u,12u,false>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>(&v101, &v95);
  v104 = v78;
  v15 = (4 * (HIDWORD(v103) * v103) + 31) & 0x7FFFFFFE0;
  v76[1] = (v15 >> 2);
  v95 = 0;
  malloc_type_posix_memalign(&v95, 0x20uLL, v15, 0xE1AC2527uLL);
  v16 = v95;
  v76[0] = v95;
  v77 = v103;
  v17 = (HIDWORD(v103) * v103);
  if (v17)
  {
    v18 = v101;
    v19 = *v104;
    v20 = 4 * v17;
    do
    {
      v21 = *v18++;
      v22 = v21;
      v23 = *v19;
      v19 = (v19 + 4);
      *v16++ = v22 + v23;
      v20 -= 4;
    }

    while (v20);
  }

  free(v101);
  v75[1] = 40;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 0xA0uLL, 0xE1AC2527uLL);
  v24 = memptr;
  v75[0] = memptr;
  v75[2] = 0x600000006;
  *(memptr + 2) = 0u;
  v24[3] = 0u;
  v24[4] = 0u;
  v24[5] = 0u;
  v24[6] = 0u;
  v24[7] = 0u;
  v24[8] = 0u;
  *v24 = 0u;
  v24[1] = 0u;
  v25 = xmmword_1C9F609E0;
  v26 = vdupq_n_s64(2uLL);
  v27 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v25)).u8[0])
    {
      *v24 = 1065353216;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v25)).i32[1])
    {
      *(v24 + 7) = 1065353216;
    }

    v25 = vaddq_s64(v25, v26);
    v24 = (v24 + 56);
    v27 -= 2;
  }

  while (v27);
  v90 = v82;
  p_previousCovar = v76;
  v72[0] = v82;
  v107 = v75;
  BYTE4(v108) = 0;
  LODWORD(v108) = 0x40000000;
  v28 = (4 * (v83 * v83) + 31) & 0x7FFFFFFE0;
  p_previousState = (v28 >> 2);
  v95 = 0;
  malloc_type_posix_memalign(&v95, 0x20uLL, v28, 0xE1AC2527uLL);
  v101 = v95;
  LODWORD(v103) = *(v90 + 4);
  HIDWORD(v103) = v83;
  v96 = &v90;
  v97 = v72;
  v98 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>(&v101, &v95);
  v104 = &v107;
  v29 = (4 * (HIDWORD(v103) * v103) + 31) & 0x7FFFFFFE0;
  v74[0] = 0;
  v74[1] = (v29 >> 2);
  v95 = 0;
  malloc_type_posix_memalign(&v95, 0x20uLL, v29, 0xE1AC2527uLL);
  v30 = v95;
  v74[0] = v95;
  v74[2] = v103;
  v31 = (HIDWORD(v103) * v103);
  if (v31)
  {
    v32 = v104;
    v33 = v101;
    v34 = **v104;
    v35 = 4 * v31;
    do
    {
      v36 = *v33++;
      v37 = v36;
      v38 = *v34++;
      *v30++ = v37 + (v38 * *(v32 + 2));
      v35 -= 4;
    }

    while (v35);
  }

  free(v101);
  v39 = cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(&memptr, v74, 3, 0);
  if (v106)
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse(v39, &[VCPVideoFacePoseFilter kalmanFiltering:T:]::kThreshold, v72);
    v107 = v82;
    v90 = v76;
    p_previousCovar = &v107;
    v40 = (4 * (v73 * v77) + 31) & 0x7FFFFFFE0;
    v69[1] = (v40 >> 2);
    v95 = 0;
    malloc_type_posix_memalign(&v95, 0x20uLL, v40, 0xE1AC2527uLL);
    v69[0] = v95;
    v70 = *(v90 + 4);
    v71 = v73;
    v96 = &v90;
    v97 = v72;
    v98 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(v69, &v95);
    v41 = (4 * (v81 * v83) + 31) & 0x7FFFFFFE0;
    v90 = &v86;
    v92 = (v41 >> 2);
    v107 = 0;
    malloc_type_posix_memalign(&v107, 0x20uLL, v41, 0xE1AC2527uLL);
    p_previousCovar = v107;
    v93 = v83;
    v94 = v81;
    v108 = v82;
    v109 = v79;
    v110 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(&p_previousCovar, &v107);
    v42 = (4 * v70 + 31) & 0x7FFFFFFE0;
    v95 = v79;
    v97 = (v42 >> 2);
    v107 = 0;
    malloc_type_posix_memalign(&v107, 0x20uLL, v42, 0xE1AC2527uLL);
    v96 = v107;
    v98 = v70;
    v108 = v69;
    v109 = &v90;
    v110 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::Matrix<float,6u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>,cva::detail::SubOp>>(&v96, &v107);
    v43 = 4 * (*(v95 + 5) * *(v95 + 4)) + 31;
    v107 = 0;
    malloc_type_posix_memalign(&v107, 0x20uLL, v43 & 0x7FFFFFFE0, 0xE1AC2527uLL);
    v44 = v107;
    v45 = (*(v95 + 5) * *(v95 + 4));
    if (v45)
    {
      v46 = v96;
      v47 = *v95;
      v48 = 4 * v45;
      v49 = v107;
      do
      {
        v50 = *v47++;
        v51 = v50;
        v52 = *v46++;
        *v49++ = v51 + v52;
        v48 -= 4;
      }

      while (v48);
    }

    free(v96);
    free(p_previousCovar);
    v107 = v69;
    v108 = v82;
    v53 = (4 * HIDWORD(v77) * v70 + 31) & 0x7FFFFFFE0;
    v95 = v76;
    v97 = (v53 >> 2);
    v90 = 0;
    malloc_type_posix_memalign(&v90, 0x20uLL, v53, 0xE1AC2527uLL);
    v96 = v90;
    v98 = v70;
    v99 = HIDWORD(v77);
    p_previousCovar = &v107;
    v92 = v76;
    v93 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>(&v96, &v90);
    v54 = 4 * (*(v95 + 5) * *(v95 + 4)) + 31;
    v90 = 0;
    malloc_type_posix_memalign(&v90, 0x20uLL, v54 & 0x7FFFFFFE0, 0xE1AC2527uLL);
    v55 = v90;
    v56 = (*(v95 + 5) * *(v95 + 4));
    if (v56)
    {
      v57 = v96;
      v58 = *v95;
      v59 = 4 * v56;
      v60 = v90;
      do
      {
        v61 = *v58++;
        v62 = v61;
        v63 = *v57++;
        *v60++ = v62 - v63;
        v59 -= 4;
      }

      while (v59);
    }

    free(v96);
    for (k = 0; k != 3; ++k)
    {
      a4[k] = *&v44[k * 4];
      a3[k] = *&v44[k * 4 + 24];
    }

    for (m = 0; m != 12; ++m)
    {
      self->_previousState.m_data[m] = *&v44[m * 4];
    }

    for (n = 0; n != 144; ++n)
    {
      self->_previousCovar.m_data[n] = *&v55[n * 4];
    }

    self->_previousStateIsValid = 1;
    free(v55);
    free(v44);
    free(v69[0]);
    free(v72[0]);
    v67 = 0;
  }

  else
  {
    v67 = -18;
  }

  free(v105);
  free(v103);
  free(memptr);
  free(v74[0]);
  free(v75[0]);
  free(v76[0]);
  free(v78[0]);
  free(v79[0]);
  free(v82[0]);
  free(v84[0]);
  return v67;
}

- (int)filteringPose:(id *)a3
{
  v5 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 3);
  v7 = v19;
  do
  {
    v8 = 0;
    v16 = v6;
    v9 = *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
    do
    {
      *&v7[4 * v8] = *(a3 + 4 * v8 + (v5 & 3));
      ++v8;
    }

    while (v8 != 3);
    v18[v5++] = v9;
    v7 += 12;
  }

  while (v5 != 3);
  result = [(VCPVideoFacePoseFilter *)self rotationToEulerAngles:v19 angles:v17, v16];
  if (!result)
  {
    result = [(VCPVideoFacePoseFilter *)self kalmanFiltering:v17 T:v18];
    if (!result)
    {
      result = [(VCPVideoFacePoseFilter *)self eulerAnglesToRotation:v17 R:v19];
      if (!result)
      {
        v11 = 0;
        *(a3 + 2) = 0u;
        *(a3 + 3) = 0u;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        v12 = v19;
        do
        {
          v13 = 0;
          v14 = v18[v11];
          v15 = a3 + 4 * (v11 & 3);
          do
          {
            *&v15[16 * v13] = *&v12[4 * v13];
            *(v15 + 12) = v14;
            ++v13;
          }

          while (v13 != 3);
          ++v11;
          v12 += 12;
        }

        while (v11 != 3);
        return 0;
      }
    }
  }

  return result;
}

@end