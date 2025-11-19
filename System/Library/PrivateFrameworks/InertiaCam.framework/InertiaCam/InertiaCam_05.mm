int *sub_254B78098(unsigned int a1, unsigned int a2)
{
  __n = a2;
  __lda = a1;
  v4 = malloc_type_malloc(0x50uLL, 0x4739AF0uLL);
  v5 = v4;
  *v4 = a1;
  v4[1] = a2;
  if (a1 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v4[4] = v6;
  *(v4 + 1) = malloc_type_malloc(4 * v6, 0x4739AF0uLL);
  v5[8] = a1;
  v7 = a2 * a1;
  if (a2 * a1 <= 1)
  {
    v7 = 1;
  }

  *(v5 + 3) = malloc_type_malloc(4 * v7, 0x4739AF0uLL);
  v5[12] = a2;
  *(v5 + 5) = malloc_type_malloc(4 * a2 * a2, 0x4739AF0uLL);
  *(v5 + 7) = malloc_type_malloc(4uLL, 0x4739AF0uLL);
  v5[16] = -1;
  __iwork = malloc_type_malloc(32 * v5[4], 0x4739AF0uLL);
  *(v5 + 9) = __iwork;
  v12 = 0;
  sgesdd_("S", &__lda, &__n, 0, &__lda, *(v5 + 1), *(v5 + 3), v5 + 8, *(v5 + 5), v5 + 12, *(v5 + 7), v5 + 16, __iwork, &v12);
  if (v12)
  {
    free(*(v5 + 1));
    free(*(v5 + 3));
    free(*(v5 + 5));
    free(*(v5 + 7));
    free(*(v5 + 9));
    free(v5);
    return 0;
  }

  else
  {
    v9 = *(v5 + 7);
    v10 = *v9;
    v5[16] = v10;
    *(v5 + 7) = malloc_type_realloc(v9, 4 * v10, 0x7AC8349uLL);
  }

  return v5;
}

void sub_254B78234(void **a1)
{
  free(a1[1]);
  free(a1[3]);
  free(a1[5]);
  free(a1[7]);
  free(a1[9]);

  free(a1);
}

uint64_t sub_254B78290(uint64_t result, uint64_t a2, uint64_t a3, float *a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    do
    {
      v6 = 4 * v5;
      v7 = *(a2 + v6);
      v8 = *(a2 + 4 * (v5 + 1));
      v9 = *(a3 + v6);
      v10 = *(a3 + 4 * (v5 + 1));
      v11 = *a4++;
      *(result + v6) = v11 * 0.0;
      LODWORD(v6) = 2 * a5 + v5;
      *(result + 4 * v6) = v11 * 0.0;
      v12 = 4 * a5 + v5;
      *(result + 4 * v12) = v11 * 0.0;
      v13 = 6 * a5 + v5;
      *(result + 4 * v13) = -(v7 * v11);
      v14 = 8 * a5 + v5;
      *(result + 4 * v14) = -(v8 * v11);
      v15 = 10 * a5 + v5;
      *(result + 4 * v15) = -v11;
      v16 = 12 * a5 + v5;
      *(result + 4 * v16) = (v7 * v10) * v11;
      v17 = 14 * a5 + v5;
      *(result + 4 * v17) = (v8 * v10) * v11;
      v18 = 16 * a5 + v5;
      *(result + 4 * v18) = v10 * v11;
      *(result + 4 * (v5 + 1)) = v7 * v11;
      *(result + 4 * (v6 + 1)) = v8 * v11;
      *(result + 4 * (v12 + 1)) = v11;
      *(result + 4 * (v13 + 1)) = v11 * 0.0;
      *(result + 4 * (v14 + 1)) = v11 * 0.0;
      *(result + 4 * (v15 + 1)) = v11 * 0.0;
      *(result + 4 * (v16 + 1)) = -(v9 * v7) * v11;
      *(result + 4 * (v17 + 1)) = -(v9 * v8) * v11;
      *(result + 4 * (v18 + 1)) = -(v9 * v11);
      v5 += 2;
    }

    while (2 * a5 != v5);
  }

  return result;
}

BOOL sub_254B783D4(uint64_t a1, __CLPK_real *a2, unsigned int a3, unsigned int a4)
{
  __lda = a3;
  __n = a4;
  if (a3 >= a4)
  {
    v8 = 83;
  }

  else
  {
    v8 = 65;
  }

  __jobz = v8;
  if (*a1 >= a3 && *(a1 + 4) >= a4)
  {
    __work = *(a1 + 56);
  }

  else
  {
    *a1 = a3;
    *(a1 + 4) = a4;
    if (a3 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    *(a1 + 32) = a3;
    *(a1 + 16) = v9;
    *(a1 + 48) = a4;
    *(a1 + 8) = malloc_type_realloc(*(a1 + 8), 4 * v9, 0x7AC8349uLL);
    v10 = a4 * a3;
    if (a4 * a3 <= 1)
    {
      v10 = 1;
    }

    *(a1 + 24) = malloc_type_realloc(*(a1 + 24), 4 * v10, 0x7AC8349uLL);
    *(a1 + 40) = malloc_type_realloc(*(a1 + 40), 4 * a4 * a4, 0x7AC8349uLL);
    __iwork = malloc_type_realloc(*(a1 + 72), 32 * *(a1 + 16), 0x7AC8349uLL);
    *(a1 + 64) = -1;
    *(a1 + 72) = __iwork;
    v16 = 0;
    sgesdd_(&__jobz, &__lda, &__n, a2, &__lda, *(a1 + 8), *(a1 + 24), (a1 + 32), *(a1 + 40), (a1 + 48), *(a1 + 56), (a1 + 64), __iwork, &v16);
    if (v16)
    {
      return 0;
    }

    v13 = *(a1 + 56);
    v14 = *v13;
    *(a1 + 64) = v14;
    __work = malloc_type_realloc(v13, 4 * v14, 0x7AC8349uLL);
    *(a1 + 56) = __work;
  }

  v16 = 0;
  sgesdd_(&__jobz, &__lda, &__n, a2, &__lda, *(a1 + 8), *(a1 + 24), &__lda, *(a1 + 40), &__n, __work, (a1 + 64), *(a1 + 72), &v16);
  return v16 == 0;
}

float sub_254B785BC(uint64_t a1, __CLPK_real *a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (sub_254B783D4(a1, a2, a3, a4) && a4)
  {
    v9 = *(a1 + 40);
    v10 = a4;
    v11 = a4 - 1;
    do
    {
      result = *(v9 + 4 * v11);
      *a5++ = result;
      v11 += a4;
      --v10;
    }

    while (v10);
  }

  return result;
}

BOOL sub_254B78618(double *a1, double *a2, double *a3)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a2[6];
  v17 = a2[7];
  v18 = v6 * (v11 - v15) + v14 * (v7 - v11) + v10 * (v15 - v7);
  v19 = *a1 * v18;
  v20 = v3 * v18;
  v21 = (v11 - v3) * v14 + *a1 * (v15 - v11) + v10 * (v3 - v15);
  v22 = v6 * v21;
  v23 = v7 * v21;
  v24 = v6 * (v15 - v3) + *a1 * (v7 - v15) + v14 * (v3 - v7);
  v25 = v10 * v24;
  v26 = v11 * v24;
  v27 = v26 * v26 + v25 * v25 + v24 * v24 + v23 * v23 + v22 * v22 + v21 * v21 + v20 * v20 + v19 * v19 + v18 * v18;
  v28 = 0.0;
  v29 = 0.0;
  if (v27 >= 1.0e-15)
  {
    v29 = 1.0 / sqrt(v27);
  }

  v30 = v19 * v29;
  v31 = v20 * v29;
  v32 = v18 * v29;
  v33 = v22 * v29;
  v34 = v23 * v29;
  v35 = v21 * v29;
  v36 = v25 * v29;
  v37 = v26 * v29;
  v38 = v24 * v29;
  v39 = v9 * (v13 - v17) + v16 * (v8 - v13) + v12 * (v17 - v8);
  v40 = v4 * v39;
  v41 = v5 * v39;
  v42 = (v13 - v5) * v16 + v4 * (v17 - v13) + v12 * (v5 - v17);
  v43 = v9 * v42;
  v44 = v8 * v42;
  v45 = v9 * (v17 - v5) + v4 * (v8 - v17) + v16 * (v5 - v8);
  v46 = v12 * v45;
  v47 = v13 * v45;
  v48 = v47 * v47 + v46 * v46 + v45 * v45 + v44 * v44 + v43 * v43 + v42 * v42 + v41 * v41 + v40 * v40 + v39 * v39;
  if (v48 >= 1.0e-15)
  {
    v28 = 1.0 / sqrt(v48);
  }

  v49 = v40 * v28;
  v50 = v41 * v28;
  v51 = v39 * v28;
  v52 = v43 * v28;
  v53 = v44 * v28;
  v54 = v42 * v28;
  v55 = v46 * v28;
  v56 = v47 * v28;
  v57 = v45 * v28;
  v58 = v34 * v38 - v35 * v37;
  v59 = v35 * v36 - v33 * v38;
  v60 = v33 * v37 - v34 * v36;
  v61 = v37 * v32 - v38 * v31;
  v62 = v38 * v30 - v36 * v32;
  v63 = v36 * v31 - v37 * v30;
  v64 = v31 * v35 - v32 * v34;
  v65 = v32 * v33 - v30 * v35;
  v66 = v30 * v34 - v31 * v33;
  v67 = v58 * v50;
  v68 = v58 * v51 + v61 * v54;
  v69 = v64 * v55 + v58 * v49 + v61 * v52;
  v70 = v64 * v56 + v67 + v61 * v53;
  v71 = v64 * v57 + v68;
  v72 = v59 * v50;
  v73 = v59 * v51 + v62 * v54;
  v74 = v65 * v55 + v59 * v49 + v62 * v52;
  v75 = v65 * v56 + v72 + v62 * v53;
  v76 = v65 * v57 + v73;
  v77 = v60 * v50;
  v78 = v66 * v57;
  v79 = v66 * v55 + v60 * v49 + v63 * v52;
  v80 = v66 * v56 + v77 + v63 * v53;
  v81 = v78 + v60 * v51 + v63 * v54;
  v82 = v80 * v80 + v79 * v79 + v81 * v81 + v70 * v70 + v69 * v69 + v71 * v71 + v75 * v75 + v74 * v74 + v76 * v76;
  v83 = 0.0;
  if (v82 >= 1.0e-15)
  {
    v83 = 1.0 / sqrt(v82);
  }

  *a3 = v69 * v83;
  a3[1] = v70 * v83;
  a3[2] = v71 * v83;
  a3[3] = v74 * v83;
  a3[4] = v75 * v83;
  a3[5] = v76 * v83;
  a3[6] = v79 * v83;
  a3[7] = v80 * v83;
  a3[8] = v81 * v83;
  return fabs(v81 * v83) > 1.0e-10;
}

uint64_t *sub_254B78A00(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_254B6D358(v2);
    MEMORY[0x259C24E00](v3, 0x10F1C40D3EDF7B4);
  }

  return a1;
}

uint64_t *sub_254B78A48(uint64_t *result, int a2, int a3)
{
  v3 = *result;
  *(v3 + 40) = a2;
  *(v3 + 44) = a3;
  return result;
}

uint64_t *sub_254B78A60(uint64_t *result, int a2, uint64_t a3)
{
  v3 = *result;
  *(v3 + 236) = a2;
  *(v3 + 240) = a3;
  return result;
}

float sub_254B78A90(float *a1, float *a2, float *a3, float *a4, float a5)
{
  v6 = *a1 * a5;
  v7 = a1[1] * a5;
  v8 = a3[2] + ((v7 * a3[1]) + (*a3 * v6));
  v9 = a3[5] + ((v7 * a3[4]) + (a3[3] * v6));
  v10 = a3[8] + ((v7 * a3[7]) + (a3[6] * v6));
  v11 = v8 / v10;
  v12 = v9 / v10;
  v13 = v11 - (*a2 * a5);
  v14 = v12 - (a2[1] * a5);
  *a4 = v13;
  a4[1] = v14;
  v15 = a3[7];
  v16 = a3[8];
  v17 = a3[4];
  v18 = a3[5];
  v19 = a3[6];
  v20 = (v17 * v16) - (v15 * v18);
  v22 = *a3;
  v21 = a3[1];
  v24 = a3[2];
  v23 = a3[3];
  v25 = (v15 * v24) - (v21 * v16);
  v26 = (v21 * v18) - (v17 * v24);
  v27 = ((v25 * v23) + (*a3 * v20)) + (v19 * v26);
  v28 = fabsf(v27);
  v29 = 2.2204e-16;
  if (v28 >= 2.2204e-16)
  {
    v20 = v20 / v27;
    v25 = v25 / v27;
    v26 = v26 / v27;
    v29 = ((v19 * v18) - (v23 * v16)) / v27;
    v28 = ((v23 * v15) - (v19 * v17)) / v27;
    v5 = ((v22 * v16) - (v19 * v24)) / v27;
    v16 = ((v23 * v24) - (v22 * v18)) / v27;
    v15 = ((v19 * v21) - (v22 * v15)) / v27;
    v17 = ((v22 * v17) - (v23 * v21)) / v27;
  }

  v30 = a2[1] * a5;
  v31 = *a2 * a5;
  v32 = (v14 * v14) + (v13 * v13);
  v33 = v26 + ((v30 * v25) + (v20 * v31));
  v34 = v16 + ((v30 * v5) + (v29 * v31));
  v35 = v17 + ((v30 * v15) + (v28 * v31));
  result = (((v34 / v35) - (a1[1] * a5)) * ((v34 / v35) - (a1[1] * a5))) + (((v33 / v35) - (*a1 * a5)) * ((v33 / v35) - (*a1 * a5)));
  if (v32 >= result)
  {
    return v32;
  }

  return result;
}

float sub_254B78BF0(uint64_t *a1, uint64_t a2, float result)
{
  if (a1[1] != *a1)
  {
    std::__sort<std::__less<float,float> &,float *>();
    v5 = *a1;
    v6 = a1[1];
    *(a2 + 28) = *(v6 - 4);
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_254B33784(&v16, v5, v6, (v6 - v5) >> 2);
    v7 = v16;
    v8 = v17;
    v9 = (v17 - v16) >> 2;
    if (v17 == v16)
    {
      v15 = 0.0 / v9;
      *(a2 + 20) = v15;
      if (!v8)
      {
LABEL_11:
        result = *(*a1 + (((a1[1] - *a1) >> 1) & 0xFFFFFFFFFFFFFFFCLL));
        *(a2 + 24) = result;
        return result;
      }
    }

    else
    {
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v17 - v16) >> 2;
      }

      v11 = 0.0;
      v12 = v16;
      do
      {
        v13 = *v12++;
        v11 = v11 + v13;
        --v10;
      }

      while (v10);
      v14 = v11 / v9;
      *(a2 + 20) = v14;
    }

    v17 = v7;
    operator delete(v7);
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_254B78CD4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 272);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 280) - v2) >> 4) <= a2)
  {
LABEL_23:
    sub_254B32C08();
  }

  v4 = *(v2 + 48 * a2 + 40);
  if (v4 > 0)
  {
    return a2;
  }

  v7 = sub_254B78EAC((a1 + 32), a2);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(a1 + 48);
  if (a2)
  {
    v11 = a2 - 1;
    v12 = 48 * a2 - 8;
    v13 = 6.25;
    v5 = a2;
    do
    {
      v14 = sub_254B78EAC((a1 + 32), v11);
      v15 = v9 - v14[1];
      if ((v15 * v15) >= v13)
      {
        break;
      }

      v16 = ((v8 - *v14) * (v8 - *v14)) + (v15 * v15);
      if (v16 < v13)
      {
        v17 = *(a1 + 272);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 280) - v17) >> 4) <= v11)
        {
          goto LABEL_23;
        }

        if (*(v17 + v12) > v4)
        {
          v13 = v16;
          v5 = v11;
        }
      }

      --v11;
      v12 -= 48;
    }

    while (v11 != -1);
  }

  else
  {
    v5 = 0;
    v13 = 6.25;
  }

  if (v10 - 1 > a2)
  {
    v18 = a2 + 1;
    v19 = 48 * a2 + 88;
    do
    {
      v20 = sub_254B78EAC((a1 + 32), v18);
      v21 = v9 - v20[1];
      if ((v21 * v21) >= v13)
      {
        break;
      }

      v22 = ((v8 - *v20) * (v8 - *v20)) + (v21 * v21);
      if (v22 < v13)
      {
        v23 = *(a1 + 272);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 280) - v23) >> 4) <= v18)
        {
          goto LABEL_23;
        }

        if (*(v23 + v19) > v4)
        {
          v13 = v22;
          v5 = v18;
        }
      }

      ++v18;
      v19 += 48;
    }

    while (v10 != v18);
  }

  return v5;
}

uint64_t sub_254B78EAC(void *a1, unint64_t a2)
{
  if (a1[2] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254B32C7C(exception, "idx");
    __cxa_throw(exception, off_2797A9980, MEMORY[0x277D825F8]);
  }

  return *a1 + 8 * a2;
}

uint64_t sub_254B78F28(uint64_t a1)
{
  __src = 0;
  v28 = 0;
  v29 = 0;
  sub_254B4E130(&__src, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 280) - *(a1 + 272)) >> 4));
  v2 = *(a1 + 272);
  v3 = *(a1 + 280);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = sub_254B78CD4(a1, v4);
      v6 = v28;
      if (v28 >= v29)
      {
        v8 = __src;
        v9 = v28 - __src;
        v10 = (v28 - __src) >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          sub_254B32E20();
        }

        v12 = v29 - __src;
        if ((v29 - __src) >> 2 > v11)
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
          sub_254B35448(&__src, v13);
        }

        *(8 * v10) = v5;
        v7 = 8 * v10 + 8;
        memcpy(0, v8, v9);
        v14 = __src;
        __src = 0;
        v28 = v7;
        v29 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v28 = v5;
        v7 = (v6 + 8);
      }

      v28 = v7;
      ++v4;
      v2 = *(a1 + 272);
      v3 = *(a1 + 280);
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 4));
  }

  v15 = __src;
  if (v3 != v2)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 4);
    do
    {
      v20 = *&v15[8 * v17];
      if (v17 != v20)
      {
        if (v19 <= v20)
        {
          sub_254B32C08();
        }

        v21 = (v2 + 48 * v20);
        v22 = (v2 + v16);
        v23 = *v21;
        v24 = v21[2];
        v22[1] = v21[1];
        v22[2] = v24;
        *v22 = v23;
        v18 = (v18 + 1);
        v2 = *(a1 + 272);
        v3 = *(a1 + 280);
      }

      ++v17;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 4);
      v16 += 48;
    }

    while (v17 < v19);
    goto LABEL_24;
  }

  v18 = 0;
  v25 = 0;
  if (__src)
  {
LABEL_24:
    v28 = v15;
    operator delete(v15);
    return v18;
  }

  return v25;
}

void sub_254B79130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B79158(uint64_t result)
{
  v1 = *result;
  if (*(*result + 20) * *(*result + 24))
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      result = sub_254B78F28(*(v1 + 56) + v3);
      ++v4;
      v1 = *v2;
      v3 += 296;
    }

    while (v4 < (*(*v2 + 20) * *(*v2 + 24)));
  }

  return result;
}

void sub_254B791C0(void *a1, void *a2)
{
  sub_254B49E04(a2, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4), 0);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 + 1;
    v8 = *a2;
    do
    {
      *v8 &= ~(1 << v6);
      v8 += v6 == 63;
      if (v6 == 63)
      {
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      --v7;
    }

    while (v7 > 1);
  }

  v9 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  if (v9 >= 2)
  {
    v10 = (*a1 + 96);
    for (i = 1; i != v9; ++i)
    {
      if (*(v10 - 21) == *(v10 - 1) && *(v10 - 20) == *v10)
      {
        *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << i;
      }

      v10 += 20;
    }
  }
}

void sub_254B792B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, float a8)
{
  v14 = 0;
  v86 = *MEMORY[0x277D85DE8];
  v15 = *(*a3 + 16);
  do
  {
    v16 = *(a5 + 8 * v14);
    v85[v14++] = v16;
  }

  while (v14 != 9);
  __p = 0;
  v83 = 0;
  v84 = 0;
  sub_254B47D40(&__p, 0x2EEuLL);
  v69 = a2;
  v70 = a7;
  v71 = (*(*a4 + 20) * *(*a4 + 24));
  if (v71 < 1)
  {
    v73 = 0;
    v78 = 0;
    v19 = 0;
    *&v75 = v17;
    goto LABEL_53;
  }

  v18 = 0;
  v78 = 0;
  v19 = 0;
  v73 = 0;
  v76 = 0;
  v20 = a8 * a8;
  LODWORD(v17) = 1.0;
  v75 = v17;
  do
  {
    v21 = (*(*a3 + 56) + 296 * v18);
    v22 = v21[6];
    if (!v22)
    {
      goto LABEL_50;
    }

    for (i = 0; i < v22; ++i)
    {
      v24 = *a6;
      v25 = a6[1] - *a6;
      if (!v25)
      {
        goto LABEL_30;
      }

      v26 = 0;
      v27 = 0xCCCCCCCCCCCCCCCDLL * (v25 >> 4);
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      v29 = (v24 + 8);
      v30 = 1;
      do
      {
        if (v18 == *(v29 - 2) && i == *v29)
        {
          if (!v30)
          {
            goto LABEL_30;
          }

LABEL_18:
          v31 = v21[34];
          if (0xAAAAAAAAAAAAAAABLL * ((v21[35] - v31) >> 4) > i)
          {
            v32 = v31 + 48 * i;
            *(v32 + 42) = 0;
            *&v80[32] = *(v32 + 32);
            *v80 = *v32;
            *&v80[16] = *(v32 + 16);
            if (*&v80[40] <= 4094)
            {
              ++*&v80[40];
            }

            *v80 *= 2;
            v33 = *&v80[24];
            *&v80[16] = *&v80[8];
            *&v80[32] = v33;
            v34 = sub_254B78A90((v24 + 80 * v26 + 12), (v24 + 80 * v26 + 20), v85, &v80[8], 1.0 / v15);
            v35 = v80[0];
            if (v34 <= v20)
            {
              v35 = v80[0] | 1;
              *v80 |= 1uLL;
              LODWORD(v78) = v78 + 1;
            }

            v36 = v35 & 2;
            if ((v35 & 2) != 0)
            {
              v37 = v35 & 1;
            }

            else
            {
              v37 = 0;
            }

            if (*&v80[40] >= 2)
            {
              v38 = v35 & 3;
              if (v38 > 1)
              {
                if (v38 == 2)
                {
                  ++HIDWORD(v73);
                }
              }

              else if (v38)
              {
                LODWORD(v73) = v73 + 1;
              }
            }

            *v32 = *v80;
            *(v32 + 16) = *&v80[16];
            *(v32 + 32) = *&v80[32];
            if (v34 <= v20)
            {
              v44 = (*a6 + 80 * v26);
              v81 = sqrtf(((v44[4] - v44[6]) * (v44[4] - v44[6])) + ((v44[3] - v44[5]) * (v44[3] - v44[5])));
              sub_254B798A8(&__p, &v81);
              sub_254B79988(a1, (*a6 + 80 * v26 + 12));
              v46 = *(*a6 + 80 * v26 + 12);
              if (v76)
              {
                v47 = vbsl_s8(vcgt_f32(v8, v46), v46, v8);
                v48 = v75;
                v49 = vcgt_f32(v46, *&v75);
                if (v49.i8[0])
                {
                  v49.i32[0] = *(*a6 + 80 * v26 + 12);
                }

                else
                {
                  v49.i32[0] = v75;
                }

                LODWORD(v48) = v49.i32[0];
                v46.i32[0] = v49.i32[0];
                if (v49.i8[4])
                {
                  v50 = -1;
                }

                else
                {
                  v50 = 0;
                }

                *&v48 = vbsl_s8(vdup_n_s32(v50), v46, *&v48);
                v75 = v48;
                v46 = v47;
              }

              else
              {
                *&v45 = *(*a6 + 80 * v26 + 12);
                v75 = v45;
              }

              v76 = 1;
              v8 = v46;
            }

            v51 = v21[34];
            if (0xAAAAAAAAAAAAAAABLL * ((v21[35] - v51) >> 4) <= i)
            {
              sub_254B32C08();
            }

            HIDWORD(v78) += v37;
            v19 += v36 >> 1;
            v52 = (v51 + 48 * i);
            v53 = (*a6 + 80 * v26);
            v54 = *v52;
            v55 = v52[2];
            v53[3] = v52[1];
            v53[4] = v55;
            v53[2] = v54;
            v22 = v21[6];
            goto LABEL_49;
          }

LABEL_68:
          sub_254B32C08();
        }

        v30 = v27 > ++v26;
        v29 += 20;
      }

      while (v28 != v26);
      if (v27 > v26)
      {
        LODWORD(v26) = 0;
        goto LABEL_18;
      }

LABEL_30:
      v39 = v21[34];
      if (0xAAAAAAAAAAAAAAABLL * ((v21[35] - v39) >> 4) <= i)
      {
        goto LABEL_68;
      }

      v40 = v39 + 48 * i;
      v43 = *(v40 + 42);
      v41 = (v40 + 42);
      v42 = v43;
      if (v43 <= 4094)
      {
        *v41 = v42 + 1;
      }

LABEL_49:
      ;
    }

LABEL_50:
    ++v18;
  }

  while (v18 != v71);
LABEL_53:
  if (v70)
  {
    if (*v70 != v70[1])
    {
      v70[1] = *v70;
    }

    v56 = *a6;
    if (a6[1] != *a6)
    {
      v57 = 0;
      v58 = 1;
      __asm { FMOV            V0.2D, #0.5 }

      v77 = _Q0;
      do
      {
        v64 = v56 + 80 * v57;
        *v80 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(*(v64 + 12)), v77)), vcvtq_s64_f64(vaddq_f64(vcvt_hight_f64_f32(*(v64 + 12)), v77))));
        v65 = *(v64 + 32);
        v66 = *(v64 + 48);
        *&v80[40] = *(v64 + 64);
        *&v80[24] = v66;
        *&v80[8] = v65;
        sub_254B79A5C(v70, v80);
        v57 = v58;
        v56 = *a6;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 4) > v58++);
    }
  }

  v68 = a3[1];
  v79[0] = *a3;
  v79[1] = v68;
  if (v68)
  {
    atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_254B79158(v79);
  if (v68)
  {
    sub_254B4186C(v68);
  }

  if (v69)
  {
    *v69 = -858993459 * ((a6[1] - *a6) >> 4);
    *(v69 + 4) = v78;
    *(v69 + 8) = v19;
    *(v69 + 12) = HIDWORD(v78);
    *(v69 + 40) = v8;
    *(v69 + 48) = v75;
    *(v69 + 32) = v73;
    sub_254B78BF0(&__p, v69, *&v75);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }
}

void sub_254B79864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B798A8(const void **a1, _DWORD *a2)
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
      sub_254B32E20();
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
      sub_254B3383C(a1, v12);
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

void sub_254B79988(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_254B32E20();
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
      sub_254B35448(a1, v10);
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

void sub_254B79A5C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      sub_254B32E20();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_254B7F2F4(a1, v13);
    }

    v14 = 56 * v10;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v9 = 56 * v10 + 56;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = v4 + 56;
  }

  *(a1 + 8) = v9;
}

void sub_254B79B8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, float a8)
{
  v15 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v16 = *(*a3 + 16);
  do
  {
    v17 = *(a5 + 8 * v15);
    v69[v15++] = v17;
  }

  while (v15 != 9);
  memset(v68, 0, sizeof(v68));
  sub_254B791C0(a6, v68);
  __p = 0;
  v66 = 0;
  v67 = 0;
  sub_254B47D40(&__p, 0x2EEuLL);
  v19 = *a6;
  v20 = a6[1];
  if (v20 == *a6)
  {
    v46 = 0;
    v47 = 0;
    v60 = 0;
    v61 = 0;
    *&v58 = v18;
    if (!a7)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v55 = a2;
  v21 = 0;
  v60 = 0;
  v61 = 0;
  v56 = 0;
  v59 = 0;
  v22 = a8 * a8;
  LODWORD(v18) = 1.0;
  v23 = 32;
  v24 = 1.0 / v16;
  v58 = v18;
  do
  {
    v25 = *(v19 + v23 - 32);
    v26 = *(v19 + v23 - 24);
    v27 = *(*(*a4 + 56) + 296 * v25 + 272);
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(*a4 + 56) + 296 * v25 + 280) - v27) >> 4) <= v26)
    {
      sub_254B32C08();
    }

    v28 = *(v19 + v23 - 28);
    v29 = (v27 + 48 * v26);
    *&v63[32] = v29[2];
    *v63 = *v29;
    *&v63[16] = v29[1];
    if (*&v63[40] <= 4094)
    {
      ++*&v63[40];
    }

    *v63 *= 2;
    v30 = *&v63[24];
    *&v63[16] = *&v63[8];
    *&v63[32] = v30;
    v31 = sub_254B78A90((v19 + v23 - 20), (v19 + v23 - 12), v69, &v63[8], v24);
    if (v31 <= v22)
    {
      *v63 |= 1uLL;
    }

    v32 = *(*(*a3 + 56) + 296 * v25 + 272);
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(*a3 + 56) + 296 * v25 + 280) - v32) >> 4) <= v28)
    {
      sub_254B32C08();
    }

    v33 = (v32 + 48 * v28);
    v34 = *v63;
    *v33 = *v63;
    v35 = *&v63[16];
    v33[1] = *&v63[16];
    v36 = *&v63[32];
    v33[2] = *&v63[32];
    v37 = (*a6 + v23);
    *v37 = v34;
    v37[1] = v35;
    v37[2] = v36;
    if (((*(v68[0] + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      if ((v63[0] & 2) != 0)
      {
        v38 = v63[0] & 1;
      }

      else
      {
        v38 = 0;
      }

      if (*&v63[40] > 1)
      {
        if ((v63[0] & 3u) > 1uLL)
        {
          if ((v63[0] & 3) == 2)
          {
            ++HIDWORD(v56);
          }
        }

        else if ((v63[0] & 3) != 0)
        {
          LODWORD(v56) = v56 + 1;
        }
      }

      if (v63[0])
      {
        v39 = *a6 + v23;
        v64 = sqrtf(((*(v39 - 16) - *(v39 - 8)) * (*(v39 - 16) - *(v39 - 8))) + ((*(v39 - 20) - *(v39 - 12)) * (*(v39 - 20) - *(v39 - 12))));
        sub_254B798A8(&__p, &v64);
        sub_254B79988(a1, (*a6 + v23 - 20));
        v41 = *(*a6 + v23 - 20);
        if (v59)
        {
          v42 = vbsl_s8(vcgt_f32(v8, v41), v41, v8);
          v43 = v58;
          v44 = vcgt_f32(v41, *&v58);
          if (v44.i8[0])
          {
            v44.i32[0] = *(*a6 + v23 - 20);
          }

          else
          {
            v44.i32[0] = v58;
          }

          LODWORD(v43) = v44.i32[0];
          v41.i32[0] = v44.i32[0];
          if (v44.i8[4])
          {
            v45 = -1;
          }

          else
          {
            v45 = 0;
          }

          *&v43 = vbsl_s8(vdup_n_s32(v45), v41, *&v43);
          v58 = v43;
          v41 = v42;
        }

        else
        {
          *&v40 = *(*a6 + v23 - 20);
          v58 = v40;
        }

        v8 = v41;
      }

      LODWORD(v60) = v60 + 1;
      HIDWORD(v60) += v63[0] & 1;
      HIDWORD(v61) += v38;
      LODWORD(v61) = v61 + ((v63[0] & 2) >> 1);
      if (v31 <= v22)
      {
        v59 = 1;
      }
    }

    ++v21;
    v19 = *a6;
    v20 = a6[1];
    v23 += 80;
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((v20 - *a6) >> 4) > v21);
  a2 = v55;
  v47 = v56;
  v46 = HIDWORD(v56);
  if (a7)
  {
LABEL_38:
    a7[1] = *a7;
    if (v20 != v19)
    {
      v48 = 0;
      v49 = 0;
      do
      {
        if (((*(v68[0] + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          v50 = v19 + v48;
          *v63 = vmovn_s32(vcvtq_s32_f32(*(v50 + 12)));
          v51 = *(v50 + 32);
          v52 = *(v50 + 48);
          *&v63[40] = *(v50 + 64);
          *&v63[24] = v52;
          *&v63[8] = v51;
          sub_254B79A5C(a7, v63);
          v19 = *a6;
          v20 = a6[1];
        }

        ++v49;
        v48 += 80;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((v20 - v19) >> 4) > v49);
    }
  }

LABEL_43:
  v53 = a3[1];
  v62[0] = *a3;
  v62[1] = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_254B79158(v62);
  if (v53)
  {
    sub_254B4186C(v53);
  }

  if (a2)
  {
    v54 = *(*a3 + 12);
    *a2 = v60;
    *(a2 + 8) = v61;
    *(a2 + 16) = v54;
    *(a2 + 32) = v47;
    *(a2 + 36) = v46;
    *(a2 + 40) = v8;
    *(a2 + 48) = v58;
    sub_254B78BF0(&__p, a2, *&v58);
  }

  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  if (v68[0])
  {
    operator delete(v68[0]);
  }
}

void sub_254B7A0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33)
{
  if (v33)
  {
    sub_254B4186C(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254B7A108(uint64_t *a1, const void **a2)
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_254B47D40(&__p, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v6 = 0;
    do
    {
      v7 = 0;
      v8 = 1;
      while ((v8 & *(v5 + 80 * v6 + 32)) != 0)
      {
        ++v7;
        v8 *= 2;
        if (v7 == 64)
        {
          goto LABEL_8;
        }
      }

      if (!v7)
      {
        goto LABEL_9;
      }

LABEL_8:
      v20 = v7;
      sub_254B3A90C(&__p, &v20);
      v5 = *a1;
      v4 = a1[1];
LABEL_9:
      ++v6;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) > v6);
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v9 = __p;
  if (v22 == __p)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(__p + (((v22 - __p) >> 1) & 0xFFFFFFFFFFFFFFFCLL));
  }

  v12 = *a1;
  v11 = a1[1];
  if (v11 != *a1)
  {
    v13 = 0;
    do
    {
      v14 = 0;
      v15 = 1;
      do
      {
        if ((v15 & *(v12 + 80 * v13 + 32)) == 0)
        {
          break;
        }

        ++v14;
        v15 *= 2;
      }

      while (v14 != 64);
      if (v14 >= v10)
      {
        v20 = v13;
        sub_254B3A90C(a2, &v20);
        v12 = *a1;
        v11 = a1[1];
      }

      ++v13;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 4) > v13);
    v9 = __p;
  }

  v18 = a2;
  v16 = *a2;
  v17 = v18[1];
  if (v9)
  {
    v22 = v9;
    operator delete(v9);
  }

  return (v17 - v16) >> 2;
}

void sub_254B7A2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_254B7A2C8(uint64_t a1, uint64_t a2)
{
  v2 = byte_254B8BE38[*(a1 + 32)];
  v3 = byte_254B8BE38[*(a2 + 32)];
  if (v2 != v3)
  {
    return v2 > v3;
  }

  v4 = *(a1 + 72);
  v5 = *(a2 + 72);
  if (v4 != v5)
  {
    return v4 > v5;
  }

  v6 = (*(a1 + 44) * *(a1 + 44)) + (*(a1 + 40) * *(a1 + 40));
  v7 = (*(a2 + 44) * *(a2 + 44)) + (*(a2 + 40) * *(a2 + 40));
  v8 = v6 < v7;
  if (v6 == v7)
  {
    v9 = *(a1 + 28);
    v10 = *(a2 + 28);
    return v9 == v10 || v9 < v10;
  }

  return v8;
}

void sub_254B7A358(void *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v4 = a1;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_254B81A70(__p, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  v6 = *v4;
  v5 = v4[1];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *v4) >> 4);
  if (v5 == *v4)
  {
    v32 = 0;
  }

  else
  {
    v8 = 0;
    v32 = 0;
    v9 = a3 * a3;
    v10 = 80;
    v11 = 1;
    v31 = v4;
    do
    {
      v12 = v6 + 80 * v8;
      v13 = *(v12 + 20);
      v14 = *(v12 + 24);
      v33 = v5;
      if (v8)
      {
        v15 = __p[0];
        v16 = v11;
        while (1)
        {
          v17 = v6 + 80 * (v16 - 2);
          v18 = *(v17 + 24);
          if (v18 < (v14 - a3))
          {
LABEL_10:
            v19 = v8;
            goto LABEL_11;
          }

          if (!v15[(v16 - 2)] && (((v14 - v18) * (v14 - v18)) + ((v13 - *(v17 + 20)) * (v13 - *(v17 + 20)))) < v9 && sub_254B7A2C8(v17, v12))
          {
            break;
          }

          if (--v16 <= 1)
          {
            goto LABEL_10;
          }
        }

        v19 = v16 - 2;
LABEL_11:
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v8 + 1;
      if (v20 == v8 && v7 > v21)
      {
        v22 = __p[0];
        v23 = v6 + v10;
        for (i = v11; v7 != i; ++i)
        {
          v25 = *(v23 + 24);
          if (v25 > (v14 + a3))
          {
            break;
          }

          if (!v22[i] && (((v14 - v25) * (v14 - v25)) + ((v13 - *(v23 + 20)) * (v13 - *(v23 + 20)))) < v9 && sub_254B7A2C8(v23, v12))
          {
            v20 = i;
            break;
          }

          v23 += 80;
        }

        v4 = v31;
        v21 = v8 + 1;
      }

      if (v8 == v20)
      {
        v5 = v33;
      }

      else
      {
        *(__p[0] + v8) = 1;
        ++v32;
        v6 = *v4;
        v5 = v4[1];
      }

      v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 4);
      ++v11;
      v10 += 80;
      v8 = v21;
    }

    while (v7 > v21);
  }

  sub_254B7A648(a2, v7 - v32);
  v26 = *v4;
  v27 = v4[1];
  if (v27 != *v4)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      if (!*(__p[0] + v29))
      {
        sub_254B7A708(a2, (v26 + v28));
        v26 = *v4;
        v27 = v4[1];
      }

      ++v29;
      v28 += 80;
    }

    while (v29 < 0xCCCCCCCCCCCCCCCDLL * ((v27 - v26) >> 4));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_254B7A608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B7A648(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      sub_254B81B40(result, a2);
    }

    sub_254B32E20();
  }

  return result;
}

void sub_254B7A708(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x333333333333333)
    {
      sub_254B32E20();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_254B81B40(a1, v13);
    }

    v14 = 80 * v10;
    *v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[4];
    *(v14 + 48) = a2[3];
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v9 = 80 * v10 + 80;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[4];
    v4[3] = a2[3];
    v4[4] = v8;
    v4[1] = v6;
    v4[2] = v7;
    v9 = (v4 + 5);
  }

  *(a1 + 8) = v9;
}

unint64_t sub_254B7A820(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, int *a9)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a2[2])
  {
    a2[2] = 0;
  }

  if (a3[1] != *a3)
  {
    a3[1] = *a3;
  }

  if (*(a4 + 8) != *a4)
  {
    *(a4 + 8) = *a4;
  }

  sub_254B81B98(__p, a1[2]);
  v16 = a1[2];
  if (a8 > a7)
  {
    bzero(v46, 0x400uLL);
    if (v16)
    {
      for (i = 0; i < v16; ++i)
      {
        v18 = a1[1];
        v19 = (*a1 + a1[3] * i);
        if (v18)
        {
          v20 = (v19 & 3) == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          LODWORD(j) = 0;
          v23 = 0;
        }

        else
        {
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = *(v19 + v22);
            if (v24 >= a7)
            {
              if (v23 <= v24)
              {
                v23 = *(v19 + v22);
              }

              ++v46[v24];
            }

            v25 = v22 + 1;
            if (v18 <= v22 + 1)
            {
              break;
            }

            v26 = v19 + 1 + v22++;
          }

          while ((v26 & 3) != 0);
          v19 = (v19 + v25);
          LODWORD(j) = v25;
        }

        for (; v18 - 4 > j; LODWORD(j) = j + 4)
        {
          v28 = *v19++;
          v27 = v28;
          if (v28)
          {
            do
            {
              if (v27 >= a7)
              {
                if (v27 >= v23)
                {
                  v23 = v27;
                }

                ++v46[v27];
              }

              v29 = v27 >= 0x100;
              v27 >>= 8;
            }

            while (v29);
          }
        }

        for (j = j; v18 > j; ++j)
        {
          v31 = *v19;
          v19 = (v19 + 1);
          v30 = v31;
          if (v31 >= a7)
          {
            if (v23 <= v30)
            {
              v23 = v30;
            }

            ++v46[v30];
          }
        }

        *(__p[0] + i) = v23;
        v16 = a1[2];
      }
    }

    v32 = 0;
    v33 = 257;
    v34 = 255;
    do
    {
      v35 = v32;
      v32 += v46[v34];
      --v33;
      if (v34 <= a7)
      {
        break;
      }

      if ((v34 + 1) < 2)
      {
        break;
      }

      --v34;
    }

    while (v32 < a5);
    a8 = v33 - 1;
    v37 = v32 > a6;
    v36 = v32 - a6;
    if (v37)
    {
      v37 = v36 <= (a5 - v35) || (a5 - v35) <= 0;
      if (!v37)
      {
        a8 = v33;
      }
    }
  }

  if (v16)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      if (a8 <= *(__p[0] + v38))
      {
        v40 = a1[1];
        if (v40)
        {
          for (k = 0; k < v40; ++k)
          {
            v42 = *(*a1 + v38 * a1[3] + k);
            if (a8 <= v42)
            {
              ++v39;
              if (a2[2] < a2[1])
              {
                sub_254B7AB90(a2, k, v38);
                v46[0] = v42;
                sub_254B3A90C(a4, v46);
                v40 = a1[1];
              }
            }
          }

          v16 = a1[2];
        }
      }

      ++v38;
    }

    while (v16 > v38);
    v43 = a2[1];
    if (v39 > v43)
    {
      printf("count : %d > keypoints.capacity() : %d (maxFeatures: %d, minFeatures: %d)\n", v39, v43, a6, a5);
    }
  }

  else
  {
    v39 = 0;
  }

  *a9 = a8;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v39;
}

void *sub_254B7AB90(void *result, float a2, float a3)
{
  v3 = result[2];
  if (v3 >= result[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254B32C7C(exception, "_count");
    __cxa_throw(exception, off_2797A9980, MEMORY[0x277D825F8]);
  }

  v4 = (*result + 8 * v3);
  *v4 = a2;
  v4[1] = a3;
  result[2] = v3 + 1;
  return result;
}

double sub_254B7AC18(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *a1 = a4;
  *(a1 + 112) = 0;
  v4 = a2[1];
  *(a1 + 304) = *a2;
  *(a1 + 312) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  *(a1 + 320) = *a3;
  *(a1 + 328) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 336) = *a2 + 56;
  *(a1 + 344) = *a3 + 56;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 268) = vrev64_s32(*(*a2 + 20));
  *(a1 + 296) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 100) = result;
  *(a1 + 108) = -1082130432;
  *(a1 + 264) = 0;
  *(a1 + 128) = -1;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_254B7ACC4(uint64_t a1)
{
  v1 = 0;
  v64 = *MEMORY[0x277D85DE8];
  v57 = xmmword_254B8BF38;
  v59 = xmmword_254B8BDD0;
  v60 = xmmword_254B8AAD0;
  v61 = xmmword_254B8BDE0;
  v62 = xmmword_254B8BDF0;
  v58 = 0x3FF0000000000000;
  v63 = 0x3FF0000000000000;
  v2 = (a1 + 256);
  v3 = (a1 + 248);
  v4 = (a1 + 240);
  v5 = (a1 + 232);
  v6 = (a1 + 224);
  v7 = (a1 + 216);
  v8 = (a1 + 208);
  v9 = (a1 + 200);
  v10 = vld1q_dup_f64(v9);
  v11 = (a1 + 192);
  v12 = vld1q_dup_f64(v11);
  v13 = vld1q_dup_f64(v8);
  v14 = vld1q_dup_f64(v6);
  v15 = vld1q_dup_f64(v7);
  v16 = vld1q_dup_f64(v5);
  v17 = vld1q_dup_f64(v3);
  v18 = vld1q_dup_f64(v4);
  __asm { FMOV            V18.2D, #1.0 }

  v23 = vld1q_dup_f64(v2);
  do
  {
    v24 = (&v57 + v1 * 8);
    v65 = vld3q_f64(v24);
    v25 = vmlaq_f64(vmlaq_f64(vmulq_f64(v65.val[1], v17), v65.val[0], v18), v65.val[2], v23);
    v26 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v10, v65.val[1]), v65.val[0], v12), v65.val[2], v13), v25);
    v27 = vdivq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v65.val[1], v14), v65.val[0], v15), v65.val[2], v16), v25);
    v28 = &v55[v1 + 4];
    vst3q_f64(v28, *(&_Q18 - 2));
    v1 += 6;
  }

  while (v1 != 12);
  v29 = 0;
  v30 = 1;
  do
  {
    v31 = &v57 + 3 * v29;
    v32 = *v31;
    v33 = v31[1];
    v34 = 0.0;
    v35 = &v56;
    v36 = 4;
    v37 = 1.0e11;
    do
    {
      v38 = v29 + v36;
      v39 = sqrt((v33 - *v35) * (v33 - *v35) + (v32 - *(v35 - 1)) * (v32 - *(v35 - 1)));
      if (v37 >= v39 && v38 != 4)
      {
        v37 = v39;
      }

      if (v38 == 4)
      {
        v34 = v39;
      }

      v35 += 3;
      --v36;
    }

    while (v36);
    v55[v29] = v34;
    if (v37 < v34)
    {
      break;
    }

    v30 = v29++ < 3;
  }

  while (v29 != 4);
  v41 = 0;
  v42 = 0;
  do
  {
    v42 |= v55[v41++] > 324.0;
  }

  while (v41 != 4);
  v43 = 0;
  v44 = v55[0];
  for (i = 1; i != 4; ++i)
  {
    v46 = v55[i];
    if (v46 > v44)
    {
      v43 = i;
      v47 = v46;
      v44 = v47;
    }
  }

  v48 = 0;
  v49 = 8 * v43;
  v50 = 0.0;
  do
  {
    if (v49 != v48)
    {
      v50 = v55[v48 / 8] + v50;
    }

    v48 += 8;
  }

  while (v48 != 32);
  v51 = (v30 | v42) ^ 1;
  v52 = v44 <= 384.0;
  if (v44 <= v50)
  {
    v52 = 1;
  }

  v53 = v52 & v51;
  *(a1 + 264) = v53;
  return v53;
}

double sub_254B7AF64(void *a1, float a2)
{
  sub_254B7A358(a1 + 44, &v5, a2);
  v3 = a1[47];
  if (v3)
  {
    a1[48] = v3;
    operator delete(v3);
  }

  result = *&v5;
  *(a1 + 47) = v5;
  a1[49] = v6;
  return result;
}

double sub_254B7AFC0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 <= *(a1 + 116))
  {
    v2 = *(a1 + 116);
  }

  *(a1 + 360) = *(a1 + 352);
  sub_254B7B060(a1, a1 + 352, *(a1 + 80), *(a1 + 84), *(a1 + 88) * v2);
  v4 = *(a1 + 352);
  v5 = *(a1 + 360);
  v6 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 4));
  v9 = sub_254B7A0F4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *&result = sub_254B7F350(v4, v5, &v9, v7, 1, v3).n128_u64[0];
  return result;
}

void sub_254B7B060(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v10 = (*(a1 + 272) * *(a1 + 268));
  v20 = 0;
  v21 = &v20;
  v22 = 0x4002000000;
  v23 = sub_254B7BB14;
  v24 = sub_254B7BB38;
  memset(v25, 0, sizeof(v25));
  sub_254B7BB64(v25, v10);
  v11 = qos_class_self();
  v12 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], v11, 0);
  v13 = dispatch_queue_create("feature match queue", v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_254B7BC0C;
  block[3] = &unk_2797A9CD0;
  block[4] = &v20;
  block[5] = a1;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  dispatch_apply(v10, v13, block);
  dispatch_release(v13);
  if (v10)
  {
    v14 = 0;
    v15 = 24 * v10;
    do
    {
      sub_254B81E6C(a2, *(a2 + 8), *(v21[5] + v14), *(v21[5] + v14 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v21[5] + v14 + 8) - *(v21[5] + v14)) >> 4));
      v14 += 24;
    }

    while (v15 != v14);
  }

  _Block_object_dispose(&v20, 8);
  v26 = v25;
  sub_254B35B8C(&v26);
}

void sub_254B7B210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  *(v11 - 88) = v10;
  sub_254B35B8C((v11 - 88));
  _Unwind_Resume(a1);
}

void sub_254B7B23C(int a1, uint64_t *a2, float *a3)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v30 = 0;
  v31 = 0;
  bzero(a3, 0x14uLL);
  sub_254B4E130(&v32, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v5 + v6);
      v9 = sqrtf(((v8[4] - v8[6]) * (v8[4] - v8[6])) + ((v8[3] - v8[5]) * (v8[3] - v8[5])));
      v28 = v9;
      sub_254B46D0C(&v32, &v28);
      v5 = *a2;
      if ((*(*a2 + v6 + 32) & 3) != 0)
      {
        v28 = v9;
        sub_254B46D0C(&__p, &v28);
        v5 = *a2;
      }

      ++v7;
      v6 += 80;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - v5) >> 4) > v7);
  }

  v10 = v32;
  if (v33 != v32)
  {
    std::__sort<std::__less<double,double> &,double *>();
    v10 = v32;
    v11 = v33;
    v12 = *v32;
    *a3 = v12;
    v13 = *(v11 - 1);
    a3[3] = v13;
    v14 = 0.0;
    v15 = 0.0;
    v16 = v11 - v10;
    if (v11 != v10)
    {
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v11 - v10;
      }

      v18 = v10;
      do
      {
        v19 = *v18++;
        v15 = v15 + v19;
        --v17;
      }

      while (v17);
    }

    v20 = v16;
    v21 = v15 / v16;
    a3[1] = v21;
    v22 = *(v10 + ((4 * v16) & 0xFFFFFFFFFFFFFFF8));
    a3[2] = v22;
    if (v11 != v10)
    {
      v23 = v21;
      if (v16 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v11 - v10;
      }

      v14 = 0.0;
      v25 = v10;
      do
      {
        v26 = *v25++;
        v14 = v14 + (v26 - v23) * (v26 - v23);
        --v24;
      }

      while (v24);
    }

    v27 = sqrt(v14 / v20);
    a3[4] = v27;
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
    v10 = v32;
  }

  if (v10)
  {
    v33 = v10;
    operator delete(v10);
  }
}

void sub_254B7B43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

float sub_254B7B474(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  *(a1 + 264) = 0;
  sub_254B7B68C(a1);
  sub_254B7B75C(a1, (a1 + 376), *(*(a1 + 304) + 16), *(*(a1 + 320) + 16));
  if (*(a1 + 264) == 1 && (v4 = sub_254B7ACC4(a1), *(a1 + 264) = v4, (v4 & 1) != 0))
  {
    for (i = 0; i != 72; i += 8)
    {
      *(a2 + i) = *(a1 + 192 + i);
    }
  }

  else
  {
    *(a1 + 192) = 0x3FF0000000000000;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0x3FF0000000000000;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0x3FF0000000000000;
  }

  if (*(a1 + 112) == 1)
  {
    v6 = *(a1 + 312);
    v15[0] = *(a1 + 304);
    v15[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 328);
    v14[0] = *(a1 + 320);
    v14[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 100) + (*(a1 + 284) * *(a1 + 104));
    if (*(a1 + 108) < v8)
    {
      v8 = *(a1 + 108);
    }

    sub_254B792B8(&__p, a1 + 136, v15, v14, a1 + 192, (a1 + 352), *(a1 + 296), v8);
  }

  else
  {
    v6 = *(a1 + 312);
    v13[0] = *(a1 + 304);
    v13[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 328);
    v12[0] = *(a1 + 320);
    v12[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 100) + (*(a1 + 284) * *(a1 + 104));
    if (*(a1 + 108) < v9)
    {
      v9 = *(a1 + 108);
    }

    sub_254B79B8C(&__p, a1 + 136, v13, v12, a1 + 192, (a1 + 352), *(a1 + 296), v9);
  }

  if (v7)
  {
    sub_254B4186C(v7);
  }

  if (v6)
  {
    sub_254B4186C(v6);
  }

  v10 = sub_254B7BA58(a1);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_254B7B64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (v20)
  {
    sub_254B4186C(v20);
  }

  if (v19)
  {
    sub_254B4186C(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B7B68C(uint64_t a1)
{
  sub_254B7BFEC(a1);
  sub_254B7AF64(a1, *(a1 + 92));
  sub_254B7B23C(v2, (a1 + 376), (a1 + 276));
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = *(a1 + 376);
    v6 = *(a1 + 384);
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 4);
    if (v7 > v4)
    {
      v8 = 126 - 2 * __clz(v7);
      if (v6 == v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      sub_254B8211C(v5, v6, &v11, v9, 1, v3);
      v10 = *(a1 + 376) + 80 * *(a1 + 96);
      if (v10 != *(a1 + 384))
      {
        *(a1 + 384) = v10;
      }
    }
  }
}

BOOL sub_254B7B75C(uint64_t a1, uint64_t *a2, float a3, float a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2 + 1;
  sub_254B81C0C(v30, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  sub_254B59FC8(v29, 0x999999999999999ALL * ((*v8 - *a2) >> 4));
  sub_254B59FC8(v28, 0x999999999999999ALL * ((a2[1] - *a2) >> 4));
  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = v29[0];
    v13 = v28[0];
    v14 = v30[0];
    do
    {
      v15 = v9 + v10;
      v16 = *(v15 + 20);
      v12[v11] = vmul_n_f32(*(v15 + 12), 1.0 / a3);
      v13[v11] = vmul_n_f32(v16, 1.0 / a4);
      v17 = *(v15 + 32);
      v18 = *(v15 + 64);
      v14[1] = *(v15 + 48);
      v14[2] = v18;
      *v14 = v17;
      v14 += 3;
      ++v11;
      v9 = *a2;
      v10 += 80;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4) > v11);
  }

  sub_254B78A48(*a1, *(a1 + 116), *(a1 + 120));
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_254B47D40(&__p, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4));
  v19 = sub_254B7A108((a1 + 376), &__p);
  sub_254B78A54(*a1, v30[0]);
  sub_254B78A60(*a1, v19, __p);
  sub_254B78A70(*a1, 1600);
  v20 = *(a1 + 100) + (*(a1 + 284) * *(a1 + 104));
  if (*(a1 + 108) < v20)
  {
    v20 = *(a1 + 108);
  }

  sub_254B78A7C(*a1, v20);
  v21 = sub_254B78A88(*a1, v29[0], v28[0], -858993459 * ((a2[1] - *a2) >> 4), v31);
  v22 = v21;
  if (v21)
  {
    for (i = 0; i != 9; ++i)
    {
      *(a1 + 192 + 8 * i) = v31[i];
    }
  }

  *(a1 + 264) = v21;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return v22;
}

void sub_254B7B9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

float sub_254B7BA58(uint64_t a1)
{
  v1 = *(a1 + 148);
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(a1 + 304) == 1;
  }

  if (v2 && **(a1 + 320) == 0)
  {
    v6 = *(a1 + 140);
    v7 = v6 * -0.01;
    v5 = (v6 / *(a1 + 136)) * (1.0 - __exp10f(v7));
  }

  else
  {
    v4 = v1 * -0.01;
    v5 = (1.0 - __exp10f(v4)) * (v1 / (*(a1 + 144) + 1));
  }

  return sqrtf(v5);
}

__n128 sub_254B7BB14(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_254B7BB64(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_254B81CA8(a1, v6);
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

void sub_254B7BC0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = **(v2 + 336);
  v4 = 296 * a2;
  v5 = v3 + 296 * a2;
  if (*(v5 + 216))
  {
    v6 = **(v2 + 344);
    v7 = v6 + v4;
    if (*(v6 + v4 + 216))
    {
      v8 = a2;
      v9 = a1;
      v42 = *(a1 + 40);
      v10 = *(*(*(a1 + 32) + 8) + 40);
      v48 = 0;
      v49 = 0;
      v50 = 0;
      __p = 0;
      v46 = 0;
      v47 = 0;
      sub_254B5981C((v5 + 200), (v7 + 200), (v3 + 296 * a2 + 32), (v6 + 296 * a2 + 32), *(a1 + 52), &v48, *(a1 + 48));
      sub_254B59ABC((v5 + 200), (v7 + 200), (**(v42 + 336) + 296 * v8 + 32), (**(v42 + 344) + 296 * v8 + 32), v9[12], v9[13], &v48, &__p);
      v11 = __p;
      if (v46 != __p)
      {
        v12 = 0;
        v13 = 0;
        v14 = v10 + 24 * v8;
        v15 = (v46 - __p) >> 4;
        if (v15 <= 1)
        {
          v15 = 1;
        }

        v43 = v15;
        v41 = v8;
        v16 = v42;
        do
        {
          if (v13 >= (v46 - __p) >> 4)
          {
            sub_254B32C08();
          }

          v17 = *(__p + v12);
          v18 = *(__p + v12 + 4);
          v19 = v17;
          v20 = *(__p + v12 + 12);
          v21 = v9[14];
          if (v21 < 0.0)
          {
            goto LABEL_20;
          }

          v22 = *(**(v16 + 336) + 296 * v8 + 176);
          v23 = 0.0;
          v24 = 0.0;
          v25 = *(**(v16 + 336) + 296 * v8 + 184) - v22;
          if (v25)
          {
            if (v17 >= (v25 >> 2))
            {
              goto LABEL_42;
            }

            v24 = *(v22 + 4 * v17);
          }

          v26 = *(**(v16 + 344) + 296 * v8 + 176);
          v27 = *(**(v16 + 344) + 296 * v8 + 184) - v26;
          if (v27)
          {
            if (v18 >= (v27 >> 2))
            {
LABEL_42:
              sub_254B32C08();
            }

            v23 = *(v26 + 4 * v18);
          }

          v28 = v24 - v23;
          if (v28 < 0.0)
          {
            v28 = -v28;
          }

          if (v28 > 180.0)
          {
            v28 = 360.0 - v28;
          }

          if (v28 <= v21)
          {
LABEL_20:
            v29 = *(v14 + 8);
            v30 = *(v14 + 16);
            v44 = *(__p + v12);
            if (v29 >= v30)
            {
              v32 = v9;
              v33 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v14) >> 4);
              v34 = v33 + 1;
              if (v33 + 1 > 0x333333333333333)
              {
                sub_254B32E20();
              }

              v35 = 0xCCCCCCCCCCCCCCCDLL * ((v30 - *v14) >> 4);
              if (2 * v35 > v34)
              {
                v34 = 2 * v35;
              }

              if (v35 >= 0x199999999999999)
              {
                v36 = 0x333333333333333;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                sub_254B81B40(v14, v36);
              }

              v37 = 80 * v33;
              *(v37 + 48) = 0u;
              *(v37 + 64) = 0u;
              *(v37 + 16) = 0u;
              *(v37 + 32) = 0u;
              *v37 = 0u;
              v31 = 80 * v33 + 80;
              v38 = *(v14 + 8) - *v14;
              v39 = 80 * v33 - v38;
              memcpy((v37 - v38), *v14, v38);
              v40 = *v14;
              *v14 = v39;
              *(v14 + 8) = v31;
              *(v14 + 16) = 0;
              if (v40)
              {
                operator delete(v40);
              }

              v9 = v32;
              v8 = v41;
              v16 = v42;
            }

            else
            {
              v29[3] = 0u;
              v29[4] = 0u;
              v29[1] = 0u;
              v29[2] = 0u;
              v31 = (v29 + 5);
              *v29 = 0u;
            }

            *(v14 + 8) = v31;
            *(v31 - 68) = *sub_254B78EAC((**(v16 + 336) + 296 * v8 + 32), v19);
            *(v31 - 60) = *sub_254B78EAC((**(v16 + 344) + 296 * v8 + 32), v18);
            *(v31 - 52) = v20;
            bzero((v31 - 48), 0x30uLL);
            *(v31 - 76) = v44;
            *(v31 - 72) = v18;
            *(v31 - 80) = v8;
          }

          ++v13;
          v12 += 16;
        }

        while (v43 != v13);
        v11 = __p;
      }

      if (v11)
      {
        v46 = v11;
        operator delete(v11);
      }

      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }
    }
  }
}

void sub_254B7BFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_254B7BFEC(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (*(a1 + 360) != v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (v1 + v2);
      v5 = v4[2];
      v6 = *(**(a1 + 344) + 296 * *v4 + 272);
      if (0xAAAAAAAAAAAAAAABLL * ((*(**(a1 + 344) + 296 * *v4 + 280) - v6) >> 4) <= v5)
      {
        sub_254B32C08();
      }

      v7 = v6 + 48 * v5;
      result = *v7;
      v9 = *(v7 + 32);
      *(v4 + 3) = *(v7 + 16);
      *(v4 + 4) = v9;
      *(v4 + 2) = result;
      ++v3;
      v1 = *(a1 + 352);
      v2 += 80;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 360) - v1) >> 4) > v3);
  }

  return result;
}

__n128 sub_254B7C0A0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 136);
  v3 = *(a1 + 152);
  v4 = *(a1 + 168);
  *(a2 + 48) = *(a1 + 184);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

void sub_254B7C0C0(uint64_t a1@<X0>, int a2@<W1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v36 = a3[1];
  if (a2)
  {
    v9 = sub_254B53684(a4, *(a1 + 8), *(a1 + 16));
    v10 = v9[6];
    if (v10)
    {
      CVPixelBufferLockBaseAddress(v10, 0);
      atomic_fetch_add(v9 + 14, 1u);
      *v9 = v9[5] + CVPixelBufferGetBaseAddressOfPlane(v9[6], 0);
    }

    v11 = v6[6];
    if (v11)
    {
      CVPixelBufferLockBaseAddress(v11, 0);
      atomic_fetch_add(v6 + 14, 1u);
      v12 = v6[5] + CVPixelBufferGetBaseAddressOfPlane(v6[6], 0);
      *v6 = v12;
    }

    else
    {
      v12 = *v6;
    }

    v13 = 0;
    divisor = 0;
    *&v37.height = vextq_s8(*(v6 + 1), *(v6 + 1), 8uLL);
    v15 = v6[3];
    v37.data = v12;
    v37.rowBytes = v15;
    v16 = vextq_s8(*(v9 + 1), *(v9 + 1), 8uLL);
    v17 = v9[3];
    dest.data = *v9;
    dest.rowBytes = v17;
    *&dest.height = v16;
    *kernel = xmmword_254B8BF50;
    kernel[8] = 3;
    do
    {
      divisor += kernel[v13++];
    }

    while (v13 != 9);
    vImageConvolve_Planar8(&v37, &dest, 0, 0, 0, kernel, 3u, 3u, divisor, 0, 8u);
    v18 = v6[6];
    if (v18)
    {
      CVPixelBufferUnlockBaseAddress(v18, 0);
      if (atomic_fetch_add(v6 + 14, 0xFFFFFFFF) == 1)
      {
        *v6 = 0;
      }
    }

    v19 = v9[6];
    if (v19)
    {
      CVPixelBufferUnlockBaseAddress(v19, 0);
      if (atomic_fetch_add(v9 + 14, 0xFFFFFFFF) == 1)
      {
        *v9 = 0;
      }
    }

    v6 = v9;
  }

  v35[5] = v8;
  v20 = (v36 * v8);
  v37.data = 0;
  v37.height = &v37;
  v37.width = 0x4002000000;
  v37.rowBytes = sub_254B7CB0C;
  v38 = sub_254B7CB30;
  memset(v39, 0, sizeof(v39));
  v35[3] = v39;
  sub_254B7CB5C(v39, v20);
  v35[2] = v35;
  MEMORY[0x28223BE20](v21);
  v22 = &v35[-4 * v20];
  sub_254B56660(v22, v20, a3[2], v23, v24, v6[1], v6[2]);
  if (v20)
  {
    v25 = 0;
    do
    {
      v26 = (*(v37.height + 40) + v25);
      v27 = *v22;
      v28 = *(v22 + 1);
      v22 += 4;
      *v26 = v27;
      v26[1] = v28;
      v25 += 296;
    }

    while (296 * v20 != v25);
  }

  v29 = v6[6];
  if (v29)
  {
    Attachment = CVBufferGetAttachment(v29, @"metalOpHandle", 0);
    if (!Attachment || (v31 = sub_254B45300(Attachment), CVBufferRemoveAttachment(v6[6], @"metalOpHandle"), v31))
    {
      v32 = CVBufferGetAttachment(v6[6], @"fast9", 0);
      if (v32)
      {
        sub_254B6F1CC(v32);
        CVBufferRemoveAttachment(v6[6], @"fast9");
      }
    }
  }

  v35[4] = a3;
  v35[1] = a5;
  v33 = qos_class_self();
  v34 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], v33, 0);
  dispatch_queue_create("feature match queue", v34);
  operator new();
}

void sub_254B7CA44(_Unwind_Exception *a1)
{
  v5 = *(v2 + 8);
  if (v5)
  {
    sub_254B4186C(v5);
  }

  _Block_object_dispose((v1 + 248), 8);
  *(v3 - 168) = *(v1 + 24);
  sub_254B33CE0((v3 - 168));
  _Unwind_Resume(a1);
}

__n128 sub_254B7CB0C(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_254B7CB5C(void *a1, unint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_254B84590(a1, v4);
  }

  else if (!v3)
  {
    sub_254B7F23C(a1, (*a1 + 296 * a2));
  }
}

void sub_254B7CBA0(dispatch_queue_t queue, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_254B7D8B0;
  block[3] = &unk_2797A9D60;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  block[4] = a5;
  block[5] = (v7 + 7) >> 3;
  dispatch_apply(8uLL, queue, block);
  bzero(*a4, *(a4 + 24) * a2);
  bzero((*a4 + (*(a4 + 16) - a2) * *(a4 + 24)), *(a4 + 24) * a2);
}

void sub_254B7CCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v17 = a2;
  v18 = a7;
  v16 = a1;
  v27 = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 36);
  v19 = *(a5 + 32);
  v20 = a6;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  if (*a4 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = *a4;
  }

  v12 = *(a3 + 16);
  v21 = *(a3 + 8);
  if (v9 <= 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = v9;
  }

  memset(v25, 0, sizeof(v25));
  sub_254B47D40(v25, 2 * (v7 / a6));
  v14 = v12 - 3;
  if (v12 - 3 >= v10)
  {
    v14 = v10;
  }

  v15 = v21 - 3;
  if (v21 - 3 >= v8)
  {
    v15 = v8;
  }

  v22 = v15 - v11;
  v23 = v14 - v13;
  v24 = 1;
  v26 = 40;
  operator new();
}

void sub_254B7D628(_Unwind_Exception *a1)
{
  v4 = *(v2 - 248);
  if (v4)
  {
    *(v2 - 240) = v4;
    operator delete(v4);
  }

  v5 = v1[6];
  v6 = v1[10];
  if (v6)
  {
    operator delete(v6);
  }

  sub_254B33BA4(v2 - 176);
  (*(*v5 + 8))(v5);
  v7 = v1[21];
  if (v7)
  {
    v1[22] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

double sub_254B7D85C(uint64_t a1)
{
  *a1 = 0x400000005;
  *(a1 + 8) = 60;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0x3E00000000000000;
  *(a1 + 24) = 1119879168;
  *(a1 + 28) = 0x7D000000320;
  *(a1 + 36) = 2500;
  result = 0.0437499957;
  *(a1 + 40) = xmmword_254B8BE00;
  return result;
}

uint64_t sub_254B7D8B0(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  if (v3 * a2 <= v4)
  {
    v6 = a1[6];
  }

  else
  {
    v6 = v3 * a2;
  }

  v7 = v6 - v4;
  v8 = v3 + v4 + v3 * a2;
  v9 = v5[3];
  if (v5[2] < v8)
  {
    v8 = v5[2];
  }

  v10 = a1[8];
  v11 = v10[3];
  v12 = v5[1];
  v13 = *v10 + v11 * v7;
  v16[0] = *v5 + v9 * v7;
  v16[1] = v12;
  v16[2] = v8 - v7;
  v16[3] = v9;
  v15[0] = v13;
  v15[1] = v12;
  v15[2] = v8 - v7;
  v15[3] = v11;
  return (*(v2 + 16))(v2, v16, v15);
}

uint64_t sub_254B7D93C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 24) == 1 && *a1)
    {
      MEMORY[0x259C24DE0]();
    }

    if (*(a1 + 56))
    {
      v4 = *(a1 + 64);
      if (v4)
      {
        sub_254B33A94(a1 + 32, v4);
      }
    }

    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 24) = *(a2 + 24);
    sub_254B7DBAC((a1 + 32), a2 + 32);
    *(a1 + 64) = *(a2 + 64);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
    sub_254B7DF1C(a2 + 32);
    *(a2 + 64) = 0;
  }

  return a1;
}

void *sub_254B7D9F4(void *result, int a2)
{
  v2 = result[2];
  if (v2 >= result[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254B32C7C(exception, "_count");
    __cxa_throw(exception, off_2797A9980, MEMORY[0x277D825F8]);
  }

  *(*result + 4 * v2) = a2;
  result[2] = v2 + 1;
  return result;
}

uint64_t sub_254B7DA78(void *a1, unint64_t a2)
{
  if (a1[2] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_254B32C7C(exception, "idx");
    __cxa_throw(exception, off_2797A9980, MEMORY[0x277D825F8]);
  }

  return *a1 + 4 * a2;
}

uint64_t sub_254B7DAF4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 24) == 1 && *a1)
    {
      MEMORY[0x259C24DE0]();
    }

    if (*(a1 + 56))
    {
      v4 = *(a1 + 64);
      if (v4)
      {
        sub_254B33A94(a1 + 32, v4);
      }
    }

    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 24) = *(a2 + 24);
    sub_254B7DBAC((a1 + 32), a2 + 32);
    *(a1 + 64) = *(a2 + 64);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
    sub_254B7DF1C(a2 + 32);
    *(a2 + 64) = 0;
  }

  return a1;
}

void *sub_254B7DBAC(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  sub_254B7DC20(v4, a2);
  sub_254B7DCB8(v4, a1);
  sub_254B33684(v4);
  return a1;
}

uint64_t sub_254B7DC20(uint64_t a1, uint64_t a2)
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

void *sub_254B7DCB8(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_254B7DF10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_254B32E0C(a1);
}

uint64_t sub_254B7DF1C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

int *sub_254B7DFA0(int *result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v9;
        if (*(*a3 + 8 * v70 + 4) < *(*a3 + 8 * v71 + 4))
        {
          *v9 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v72 = v9 + 1;
      v73 = v9[1];
      v74 = v9 + 2;
      v75 = v9[2];
      v76 = *v9;
      v77 = *a3;
      v78 = *(*a3 + 8 * v73 + 4);
      v79 = *(*a3 + 8 * *v9 + 4);
      v80 = v75;
      v81 = *(*a3 + 8 * v75 + 4);
      if (v78 >= v79)
      {
        if (v81 < v78)
        {
          v82 = v73;
          *v72 = v75;
          *v74 = v73;
          v83 = v9;
          v84 = v9 + 1;
          v80 = v73;
          if (v81 < v79)
          {
            goto LABEL_104;
          }

LABEL_106:
          v88 = *(a2 - 1);
          if (*(v77 + 8 * v88 + 4) < *(v77 + 8 * v80 + 4))
          {
            *v74 = v88;
            *(a2 - 1) = v73;
            v89 = *v74;
            v90 = *v72;
            v91 = *(v77 + 8 * v89 + 4);
            if (v91 < *(v77 + 8 * v90 + 4))
            {
              v9[1] = v89;
              v9[2] = v90;
              v92 = *v9;
              if (v91 < *(v77 + 8 * v92 + 4))
              {
                *v9 = v89;
                v9[1] = v92;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v82 = v76;
        if (v81 < v78)
        {
          v83 = v9;
          v84 = v9 + 2;
          v73 = *v9;
          goto LABEL_104;
        }

        *v9 = v73;
        v9[1] = v76;
        v83 = v9 + 1;
        v84 = v9 + 2;
        v73 = v76;
        if (v81 < v79)
        {
LABEL_104:
          *v83 = v75;
          *v84 = v76;
          v80 = v82;
          goto LABEL_106;
        }
      }

      v73 = v75;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return sub_254B7E6E8(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_254B7E8C8(v9, a2, a3);
      }

      else
      {

        return sub_254B7E958(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_254B7EF08(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 8 * v16 + 4);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 8 * v18 + 4);
      v21 = *(v15 + 8 * v19 + 4);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 8 * v26 + 4) < *(v15 + 8 * v27 + 4))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 8 * v30 + 4) < v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v9[1];
      v34 = *(v15 + 8 * v32 + 4);
      v35 = *(v15 + 8 * v33 + 4);
      v36 = *(a2 - 2);
      v37 = *(v15 + 8 * v36 + 4);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 8 * v38 + 4) < *(v15 + 8 * v39 + 4))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 8 * v41 + 4) < v35)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v9[2];
      v46 = *(v15 + 8 * v44 + 4);
      v47 = *(v15 + 8 * v45 + 4);
      v48 = *(a2 - 3);
      v49 = *(v15 + 8 * v48 + 4);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 8 * v50 + 4) < *(v15 + 8 * v51 + 4))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 8 * v52 + 4) < v47)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 8 * v53 + 4);
      v56 = *(v15 + 8 * v54 + 4);
      v57 = *v42;
      v58 = *(v15 + 8 * v57 + 4);
      if (v55 >= v56)
      {
        if (v58 < v55)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          LODWORD(v53) = v54;
          if (v58 < v56)
          {
            goto LABEL_59;
          }

          LODWORD(v53) = v57;
        }
      }

      else
      {
        if (v58 >= v55)
        {
          *v31 = v53;
          *v14 = v54;
          v31 = v14;
          LODWORD(v53) = v57;
          if (v58 >= v56)
          {
            LODWORD(v53) = v54;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v54;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v15 + 8 * v22 + 4);
    v25 = *(v15 + 8 * v23 + 4);
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 8 * v40 + 4) < v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 8 * v28 + 4) >= *(v15 + 8 * v29 + 4))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 8 * *(v9 - 1) + 4) >= *(v15 + 8 * *v9 + 4))
    {
      result = sub_254B7E9C4(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = sub_254B7EAB0(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = sub_254B7EB9C(v9, v60, a3);
    v9 = v60 + 1;
    result = sub_254B7EB9C(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = sub_254B7DFA0(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = v9[1];
  v65 = *a3;
  v66 = *(*a3 + 8 * v64 + 4);
  v67 = *(*a3 + 8 * v63 + 4);
  v68 = *(a2 - 1);
  v69 = *(*a3 + 8 * v68 + 4);
  if (v66 >= v67)
  {
    if (v69 < v66)
    {
      v9[1] = v68;
      *(a2 - 1) = v64;
      v86 = *v9;
      v85 = v9[1];
      if (*(v65 + 8 * v85 + 4) < *(v65 + 8 * v86 + 4))
      {
        *v9 = v85;
        v9[1] = v86;
      }
    }
  }

  else
  {
    if (v69 >= v66)
    {
      *v9 = v64;
      v9[1] = v63;
      v87 = *(a2 - 1);
      if (*(v65 + 8 * v87 + 4) >= v67)
      {
        return result;
      }

      v9[1] = v87;
    }

    else
    {
      *v9 = v68;
    }

    *(a2 - 1) = v63;
  }

  return result;
}

int *sub_254B7E6E8(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 8 * *a2 + 4);
  v10 = *(*a6 + 8 * *result + 4);
  v11 = *a3;
  v12 = *(*a6 + 8 * *a3 + 4);
  if (v9 >= v10)
  {
    if (v12 >= v9)
    {
      v13 = v11;
      goto LABEL_13;
    }

    *a2 = v11;
    *a3 = v6;
    v14 = *a2;
    v15 = *result;
    if (*(v8 + 8 * v14 + 4) >= *(v8 + 8 * v15 + 4))
    {
      v13 = v6;
      v11 = v6;
      goto LABEL_13;
    }

    *result = v14;
    *a2 = v15;
    v11 = *a3;
    goto LABEL_11;
  }

  v13 = v7;
  if (v12 >= v9)
  {
    *result = v6;
    *a2 = v7;
    v11 = *a3;
    if (*(v8 + 8 * *a3 + 4) < v10)
    {
      *a2 = v11;
      goto LABEL_9;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_13;
  }

  *result = v11;
LABEL_9:
  *a3 = v7;
  v11 = v7;
LABEL_13:
  v16 = *a4;
  if (*(v8 + 8 * v16 + 4) < *(v8 + 8 * v13 + 4))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 8 * v17 + 4) < *(v8 + 8 * v18 + 4))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 8 * v19 + 4) < *(v8 + 8 * v20 + 4))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 8 * v21 + 4) < *(v8 + 8 * v22 + 4))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 8 * v23 + 4) < *(v8 + 8 * v24 + 4))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 8 * v25 + 4) < *(v8 + 8 * v26 + 4))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 8 * v27 + 4) < *(v8 + 8 * v28 + 4))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

int *sub_254B7E8C8(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = *(v5 + 8 * v7 + 4);
        if (v9 < *(v5 + 8 * v8 + 4))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 4) = v8;
            if (!v10)
            {
              break;
            }

            v8 = *(result + v10 - 4);
            v10 -= 4;
            if (v9 >= *(v5 + 8 * v8 + 4))
            {
              v11 = (result + v10 + 4);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *sub_254B7E958(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = *(v4 + 8 * v5 + 4);
        if (v7 < *(v4 + 8 * v6 + 4))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 < *(v4 + 8 * v6 + 4));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

int *sub_254B7E9C4(int *a1, int *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 8 * v3 + 4);
  if (v5 >= *(*a3 + 8 * *(a2 - 1) + 4))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + 8 * *v6 + 4));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 8 * v7 + 4));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 8 * v9 + 4));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 8 * v12 + 4));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 8 * v13 + 4));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

int *sub_254B7EAB0(int *a1, int *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 8 * v4 + 4);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 8 * v7 + 4) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 8 * v11 + 4) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 8 * v10 + 4) >= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = v7;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v12;
      *v15 = v13;
      do
      {
        v16 = v14[1];
        ++v14;
        v13 = v16;
      }

      while (*(v5 + 8 * v16 + 4) < v6);
      do
      {
        v17 = *--v15;
        v12 = v17;
      }

      while (*(v5 + 8 * v17 + 4) >= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL sub_254B7EB9C(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 8 * v7 + 4);
      v10 = *(*a3 + 8 * v6 + 4);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 8 * v11 + 4);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v37 = *a1;
          v36 = a1[1];
          if (*(v8 + 8 * v36 + 4) < *(v8 + 8 * v37 + 4))
          {
            *a1 = v36;
            a1[1] = v37;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v8 + 8 * v47 + 4) >= v10)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_254B7E6E8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = *a3;
    v29 = *(*a3 + 8 * v24 + 4);
    v30 = *(*a3 + 8 * *a1 + 4);
    v31 = v26;
    v32 = *(*a3 + 8 * v26 + 4);
    if (v29 >= v30)
    {
      if (v32 < v29)
      {
        v33 = v24;
        *v23 = v26;
        *v25 = v24;
        v34 = a1;
        v35 = a1 + 1;
        v31 = v24;
        if (v32 >= v30)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v33 = v27;
      if (v32 < v29)
      {
        v34 = a1;
        v35 = a1 + 2;
        v24 = *a1;
LABEL_44:
        *v34 = v26;
        *v35 = v27;
        v31 = v33;
LABEL_46:
        v48 = *(a2 - 1);
        if (*(v28 + 8 * v48 + 4) < *(v28 + 8 * v31 + 4))
        {
          *v25 = v48;
          *(a2 - 1) = v24;
          v49 = *v25;
          v50 = *v23;
          v51 = *(v28 + 8 * v49 + 4);
          if (v51 < *(v28 + 8 * v50 + 4))
          {
            a1[1] = v49;
            a1[2] = v50;
            v52 = *a1;
            if (v51 < *(v28 + 8 * v52 + 4))
            {
              *a1 = v49;
              a1[1] = v52;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v27;
      v34 = a1 + 1;
      v35 = a1 + 2;
      v24 = v27;
      if (v32 < v30)
      {
        goto LABEL_44;
      }
    }

    v24 = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 8 * v4 + 4) < *(*a3 + 8 * v5 + 4))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a1;
  v17 = *a3;
  v18 = *(*a3 + 8 * v15 + 4);
  v19 = *(*a3 + 8 * v16 + 4);
  v20 = *(*a3 + 8 * v13 + 4);
  if (v18 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v18)
    {
      *a1 = v15;
      a1[1] = v16;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v13;
    *v22 = v16;
    goto LABEL_26;
  }

  if (v20 < v18)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v38 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v39 = 0;
  for (i = 12; ; i += 4)
  {
    v41 = *v38;
    v42 = *v14;
    v43 = *(v17 + 8 * v41 + 4);
    if (v43 < *(v17 + 8 * v42 + 4))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v42 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v43 >= *(v17 + 8 * v42 + 4))
        {
          v46 = (a1 + v45);
          goto LABEL_34;
        }
      }

      v46 = a1;
LABEL_34:
      *v46 = v41;
      if (++v39 == 8)
      {
        break;
      }
    }

    v14 = v38++;
    if (v38 == a2)
    {
      return 1;
    }
  }

  return v38 + 1 == a2;
}

int *sub_254B7EF08(int *a1, int *a2, int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_254B7F05C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 8 * v13 + 4) < *(*a4 + 8 * v14 + 4))
        {
          *v12 = v14;
          *a1 = v13;
          sub_254B7F05C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = sub_254B7F158(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          sub_254B7F1D0(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_254B7F05C(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 + 1;
      v7 = (result + 4 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && *(v9 + 8 * *v7 + 4) < *(v9 + 8 * v7[1] + 4))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 8 * v11 + 4);
      if (*(v9 + 8 * v10 + 4) >= v12)
      {
        do
        {
          v13 = v7;
          *a4 = v10;
          if (v4 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 8 * *v7 + 4) < *(v9 + 8 * v7[1] + 4))
          {
            ++v7;
            v6 = v15;
          }

          v10 = *v7;
          a4 = v13;
        }

        while (*(v9 + 8 * v10 + 4) >= v12);
        *v13 = v11;
      }
    }
  }

  return result;
}

_DWORD *sub_254B7F158(_DWORD *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v10 = v6[2];
      v9 = v6 + 2;
      if (*(v4 + 8 * *(v9 - 1) + 4) < *(v4 + 8 * v10 + 4))
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_254B7F1D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v6 = *v5;
    v9 = *(a2 - 4);
    v7 = (a2 - 4);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 8 * v9 + 4);
    if (*(*a3 + 8 * v6 + 4) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 8 * v6 + 4) < v11);
      *v12 = v8;
    }
  }

  return result;
}

uint64_t sub_254B7F23C(uint64_t result, void *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_254B7F290(v3, i))
  {
    i -= 37;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_254B7F290(uint64_t a1, void *a2)
{
  v3 = a2[34];
  if (v3)
  {
    a2[35] = v3;
    operator delete(v3);
  }

  sub_254B33A24((a2 + 25));
  v4 = a2[22];
  if (v4)
  {
    a2[23] = v4;
    operator delete(v4);
  }

  sub_254B33B34((a2 + 13));

  return sub_254B33BA4((a2 + 4));
}

void sub_254B7F2F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_254B32F20();
}

__n128 sub_254B7F350(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 5;
  v10 = &a2[-10];
  v11 = &a2[-15];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 4);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        if ((*a3)(a2 - 5, v12))
        {
          goto LABEL_75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v120 = (*a3)(v12 + 5, v12);
      v121 = (*a3)(v12 + 10, v12 + 5);
      if (v120)
      {
        if (v121)
        {
          v177 = *v12;
          v282 = v12[3];
          v317 = v12[4];
          v212 = v12[1];
          v247 = v12[2];
          v122 = v12[14];
          v12[3] = v12[13];
          v12[4] = v122;
          v123 = v12[12];
          v12[1] = v12[11];
          v12[2] = v123;
          *v12 = v12[10];
          v124 = v212;
          v12[13] = v282;
          v12[14] = v317;
          v12[12] = v247;
          v12[10] = v177;
          goto LABEL_97;
        }

        v181 = *v12;
        v286 = v12[3];
        v321 = v12[4];
        v216 = v12[1];
        v251 = v12[2];
        v134 = v12[9];
        v12[3] = v12[8];
        v12[4] = v134;
        v135 = v12[7];
        v12[1] = v12[6];
        v12[2] = v135;
        *v12 = v12[5];
        v12[8] = v286;
        v12[9] = v321;
        v12[6] = v216;
        v12[7] = v251;
        v12[5] = v181;
        if ((*a3)(v12 + 10, v12 + 5))
        {
          v252 = v12[7];
          v287 = v12[8];
          v136 = v12[10];
          v322 = v12[9];
          v182 = v12[5];
          v217 = v12[6];
          v137 = v12[11];
          v138 = v12[13];
          v139 = v12[14];
          v12[7] = v12[12];
          v12[8] = v138;
          v12[5] = v136;
          v12[6] = v137;
          v124 = v217;
          v12[9] = v139;
          v12[10] = v182;
          v12[13] = v287;
          v12[14] = v322;
          v12[12] = v252;
LABEL_97:
          v12[11] = v124;
        }
      }

      else if (v121)
      {
        v249 = v12[7];
        v284 = v12[8];
        v128 = v12[10];
        v319 = v12[9];
        v179 = v12[5];
        v214 = v12[6];
        v129 = v12[11];
        v130 = v12[13];
        v131 = v12[14];
        v12[7] = v12[12];
        v12[8] = v130;
        v12[5] = v128;
        v12[6] = v129;
        v12[9] = v131;
        v12[10] = v179;
        v12[13] = v284;
        v12[14] = v319;
        v12[11] = v214;
        v12[12] = v249;
        if ((*a3)(v12 + 5, v12))
        {
          v180 = *v12;
          v285 = v12[3];
          v320 = v12[4];
          v215 = v12[1];
          v250 = v12[2];
          v132 = v12[9];
          v12[3] = v12[8];
          v12[4] = v132;
          v133 = v12[7];
          v12[1] = v12[6];
          v12[2] = v133;
          *v12 = v12[5];
          v12[8] = v285;
          v12[9] = v320;
          v12[6] = v215;
          v12[7] = v250;
          v12[5] = v180;
        }
      }

      if (!(*a3)(v9, v12 + 10))
      {
        return result;
      }

      v253 = v12[12];
      v288 = v12[13];
      v323 = v12[14];
      v183 = v12[10];
      v218 = v12[11];
      v12[10] = *v9;
      v140 = v9[4];
      v142 = v9[1];
      v141 = v9[2];
      v12[13] = v9[3];
      v12[14] = v140;
      v12[11] = v142;
      v12[12] = v141;
      *v9 = v183;
      v9[4] = v323;
      v9[3] = v288;
      v9[2] = v253;
      v9[1] = v218;
      if (!(*a3)(v12 + 10, v12 + 5))
      {
        return result;
      }

      v254 = v12[7];
      v289 = v12[8];
      v143 = v12[10];
      v324 = v12[9];
      v184 = v12[5];
      v219 = v12[6];
      v144 = v12[11];
      v145 = v12[13];
      v146 = v12[14];
      v12[7] = v12[12];
      v12[8] = v145;
      v12[5] = v143;
      v12[6] = v144;
      v12[9] = v146;
      v12[10] = v184;
      v12[13] = v289;
      v12[14] = v324;
      v12[11] = v219;
      v12[12] = v254;
LABEL_101:
      if ((*a3)(v12 + 5, v12))
      {
        v185 = *v12;
        v290 = v12[3];
        v325 = v12[4];
        v220 = v12[1];
        v255 = v12[2];
        v147 = v12[9];
        v12[3] = v12[8];
        v12[4] = v147;
        v148 = v12[7];
        v12[1] = v12[6];
        v12[2] = v148;
        *v12 = v12[5];
        result = v185;
        v12[8] = v290;
        v12[9] = v325;
        v12[6] = v220;
        v12[7] = v255;
        v12[5] = v185;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = sub_254B80434(v12, v12 + 5, v12 + 10, v12 + 15, a2 - 5, a3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 1919)
    {
      if (a5)
      {

        sub_254B808BC(v12, a2, a3);
      }

      else
      {

        sub_254B809C0(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_254B81574(v12, a2, a2, a3, result);
      }

      return result;
    }

    v150 = v14;
    v17 = v16 >> 1;
    v18 = &v12[5 * (v16 >> 1)];
    v19 = *a3;
    if (v15 >= 0x2801)
    {
      v20 = v19(v18, v12);
      v21 = (*a3)(a2 - 5, v18);
      if (v20)
      {
        if (v21)
        {
          v151 = *a1;
          v256 = a1[3];
          v291 = a1[4];
          v186 = a1[1];
          v221 = a1[2];
          v22 = a2[-1];
          v24 = a2[-4];
          v23 = a2[-3];
          a1[3] = a2[-2];
          a1[4] = v22;
          a1[1] = v24;
          a1[2] = v23;
          *a1 = *v9;
          goto LABEL_27;
        }

        v157 = *a1;
        v262 = a1[3];
        v297 = a1[4];
        v192 = a1[1];
        v227 = a1[2];
        v43 = v18[4];
        v45 = v18[1];
        v44 = v18[2];
        a1[3] = v18[3];
        a1[4] = v43;
        a1[1] = v45;
        a1[2] = v44;
        *a1 = *v18;
        v18[3] = v262;
        v18[4] = v297;
        v18[1] = v192;
        v18[2] = v227;
        *v18 = v157;
        if ((*a3)(a2 - 5, v18))
        {
          v151 = *v18;
          v256 = v18[3];
          v291 = v18[4];
          v186 = v18[1];
          v221 = v18[2];
          v46 = a2[-1];
          v48 = a2[-4];
          v47 = a2[-3];
          v18[3] = a2[-2];
          v18[4] = v46;
          v18[1] = v48;
          v18[2] = v47;
          *v18 = *v9;
LABEL_27:
          a2[-4] = v186;
          a2[-3] = v221;
          a2[-2] = v256;
          a2[-1] = v291;
          *v9 = v151;
        }
      }

      else if (v21)
      {
        v153 = *v18;
        v258 = v18[3];
        v293 = v18[4];
        v188 = v18[1];
        v223 = v18[2];
        v31 = a2[-1];
        v33 = a2[-4];
        v32 = a2[-3];
        v18[3] = a2[-2];
        v18[4] = v31;
        v18[1] = v33;
        v18[2] = v32;
        *v18 = *v9;
        a2[-4] = v188;
        a2[-3] = v223;
        a2[-2] = v258;
        a2[-1] = v293;
        *v9 = v153;
        if ((*a3)(v18, a1))
        {
          v154 = *a1;
          v259 = a1[3];
          v294 = a1[4];
          v189 = a1[1];
          v224 = a1[2];
          v34 = v18[4];
          v36 = v18[1];
          v35 = v18[2];
          a1[3] = v18[3];
          a1[4] = v34;
          a1[1] = v36;
          a1[2] = v35;
          *a1 = *v18;
          v18[3] = v259;
          v18[4] = v294;
          v18[1] = v189;
          v18[2] = v224;
          *v18 = v154;
        }
      }

      v49 = &a1[5 * v17 - 5];
      v50 = (*a3)(v49, a1 + 5);
      v51 = (*a3)(a2 - 10, v49);
      if (v50)
      {
        if (v51)
        {
          v228 = a1[7];
          v263 = a1[8];
          v298 = a1[9];
          v158 = a1[5];
          v193 = a1[6];
          a1[5] = *v10;
          v52 = a2[-6];
          v54 = a2[-9];
          v53 = a2[-8];
          a1[8] = a2[-7];
          a1[9] = v52;
          a1[6] = v54;
          a1[7] = v53;
          *v10 = v158;
          a2[-6] = v298;
          a2[-7] = v263;
          a2[-8] = v228;
          a2[-9] = v193;
        }

        else
        {
          v232 = a1[7];
          v267 = a1[8];
          v302 = a1[9];
          v162 = a1[5];
          v197 = a1[6];
          v68 = a1[5 * v17 - 4];
          v67 = a1[5 * v17 - 3];
          v69 = a1[5 * v17 - 1];
          a1[8] = a1[5 * v17 - 2];
          a1[9] = v69;
          a1[6] = v68;
          a1[7] = v67;
          a1[5] = *v49;
          *v49 = v162;
          a1[5 * v17 - 2] = v267;
          a1[5 * v17 - 1] = v302;
          a1[5 * v17 - 4] = v197;
          a1[5 * v17 - 3] = v232;
          if ((*a3)(a2 - 10, &a1[5 * v17 - 5]))
          {
            v163 = *v49;
            v268 = a1[5 * v17 - 2];
            v303 = a1[5 * v17 - 1];
            v198 = a1[5 * v17 - 4];
            v233 = a1[5 * v17 - 3];
            v70 = a2[-6];
            v72 = a2[-9];
            v71 = a2[-8];
            a1[5 * v17 - 2] = a2[-7];
            a1[5 * v17 - 1] = v70;
            a1[5 * v17 - 4] = v72;
            a1[5 * v17 - 3] = v71;
            *v49 = *v10;
            a2[-9] = v198;
            a2[-8] = v233;
            a2[-7] = v268;
            a2[-6] = v303;
            *v10 = v163;
          }
        }
      }

      else if (v51)
      {
        v159 = *v49;
        v264 = a1[5 * v17 - 2];
        v299 = a1[5 * v17 - 1];
        v194 = a1[5 * v17 - 4];
        v229 = a1[5 * v17 - 3];
        v55 = a2[-6];
        v57 = a2[-9];
        v56 = a2[-8];
        a1[5 * v17 - 2] = a2[-7];
        a1[5 * v17 - 1] = v55;
        a1[5 * v17 - 4] = v57;
        a1[5 * v17 - 3] = v56;
        *v49 = *v10;
        a2[-9] = v194;
        a2[-8] = v229;
        a2[-7] = v264;
        a2[-6] = v299;
        *v10 = v159;
        if ((*a3)(&a1[5 * v17 - 5], a1 + 5))
        {
          v230 = a1[7];
          v265 = a1[8];
          v300 = a1[9];
          v160 = a1[5];
          v195 = a1[6];
          v59 = a1[5 * v17 - 4];
          v58 = a1[5 * v17 - 3];
          v60 = a1[5 * v17 - 1];
          a1[8] = a1[5 * v17 - 2];
          a1[9] = v60;
          a1[6] = v59;
          a1[7] = v58;
          a1[5] = *v49;
          *v49 = v160;
          a1[5 * v17 - 2] = v265;
          a1[5 * v17 - 1] = v300;
          a1[5 * v17 - 4] = v195;
          a1[5 * v17 - 3] = v230;
        }
      }

      v73 = &a1[5 * v17];
      v74 = (*a3)(v73 + 5, a1 + 10);
      v75 = (*a3)(a2 - 15, v73 + 5);
      if (v74)
      {
        if (v75)
        {
          v234 = a1[12];
          v269 = a1[13];
          v304 = a1[14];
          v164 = a1[10];
          v199 = a1[11];
          a1[10] = *v11;
          v76 = a2[-11];
          v78 = a2[-14];
          v77 = a2[-13];
          a1[13] = a2[-12];
          a1[14] = v76;
          a1[11] = v78;
          a1[12] = v77;
          *v11 = v164;
          a2[-11] = v304;
          a2[-12] = v269;
          a2[-13] = v234;
          a2[-14] = v199;
        }

        else
        {
          v237 = a1[12];
          v272 = a1[13];
          v307 = a1[14];
          v167 = a1[10];
          v202 = a1[11];
          v86 = v73[6];
          v85 = v73[7];
          v87 = v73[9];
          a1[13] = v73[8];
          a1[14] = v87;
          a1[11] = v86;
          a1[12] = v85;
          a1[10] = v73[5];
          v73[5] = v167;
          v73[8] = v272;
          v73[9] = v307;
          v73[6] = v202;
          v73[7] = v237;
          if ((*a3)(a2 - 15, v73 + 5))
          {
            v168 = v73[5];
            v273 = v73[8];
            v308 = v73[9];
            v203 = v73[6];
            v238 = v73[7];
            v88 = a2[-11];
            v90 = a2[-14];
            v89 = a2[-13];
            v73[8] = a2[-12];
            v73[9] = v88;
            v73[6] = v90;
            v73[7] = v89;
            v73[5] = *v11;
            a2[-14] = v203;
            a2[-13] = v238;
            a2[-12] = v273;
            a2[-11] = v308;
            *v11 = v168;
          }
        }
      }

      else if (v75)
      {
        v165 = v73[5];
        v270 = v73[8];
        v305 = v73[9];
        v200 = v73[6];
        v235 = v73[7];
        v79 = a2[-11];
        v81 = a2[-14];
        v80 = a2[-13];
        v73[8] = a2[-12];
        v73[9] = v79;
        v73[6] = v81;
        v73[7] = v80;
        v73[5] = *v11;
        a2[-14] = v200;
        a2[-13] = v235;
        a2[-12] = v270;
        a2[-11] = v305;
        *v11 = v165;
        if ((*a3)(v73 + 5, a1 + 10))
        {
          v236 = a1[12];
          v271 = a1[13];
          v306 = a1[14];
          v166 = a1[10];
          v201 = a1[11];
          v83 = v73[6];
          v82 = v73[7];
          v84 = v73[9];
          a1[13] = v73[8];
          a1[14] = v84;
          a1[11] = v83;
          a1[12] = v82;
          a1[10] = v73[5];
          v73[5] = v166;
          v73[8] = v271;
          v73[9] = v306;
          v73[6] = v201;
          v73[7] = v236;
        }
      }

      v91 = (*a3)(v18, v49);
      v92 = (*a3)(v73 + 5, v18);
      if (v91)
      {
        if (v92)
        {
          v169 = *v49;
          v274 = v49[3];
          v309 = v49[4];
          v204 = v49[1];
          v239 = v49[2];
          v93 = v73[9];
          v49[3] = v73[8];
          v49[4] = v93;
          v94 = v73[7];
          v49[1] = v73[6];
          v49[2] = v94;
          *v49 = v73[5];
          goto LABEL_55;
        }

        v172 = *v49;
        v277 = v49[3];
        v312 = v49[4];
        v207 = v49[1];
        v242 = v49[2];
        v99 = v18[4];
        v49[3] = v18[3];
        v49[4] = v99;
        v100 = v18[2];
        v49[1] = v18[1];
        v49[2] = v100;
        *v49 = *v18;
        *v18 = v172;
        v18[3] = v277;
        v18[4] = v312;
        v18[1] = v207;
        v18[2] = v242;
        if ((*a3)(v73 + 5, v18))
        {
          v169 = *v18;
          v274 = v18[3];
          v309 = v18[4];
          v204 = v18[1];
          v239 = v18[2];
          v101 = v73[9];
          v18[3] = v73[8];
          v18[4] = v101;
          v102 = v73[7];
          v18[1] = v73[6];
          v18[2] = v102;
          *v18 = v73[5];
LABEL_55:
          v73[5] = v169;
          v73[8] = v274;
          v73[9] = v309;
          v73[6] = v204;
          v73[7] = v239;
        }
      }

      else if (v92)
      {
        v170 = *v18;
        v275 = v18[3];
        v310 = v18[4];
        v205 = v18[1];
        v240 = v18[2];
        v95 = v73[9];
        v18[3] = v73[8];
        v18[4] = v95;
        v96 = v73[7];
        v18[1] = v73[6];
        v18[2] = v96;
        *v18 = v73[5];
        v73[5] = v170;
        v73[8] = v275;
        v73[9] = v310;
        v73[6] = v205;
        v73[7] = v240;
        if ((*a3)(v18, v49))
        {
          v171 = *v49;
          v276 = v49[3];
          v311 = v49[4];
          v206 = v49[1];
          v241 = v49[2];
          v97 = v18[4];
          v49[3] = v18[3];
          v49[4] = v97;
          v98 = v18[2];
          v49[1] = v18[1];
          v49[2] = v98;
          *v49 = *v18;
          *v18 = v171;
          v18[3] = v276;
          v18[4] = v311;
          v18[1] = v206;
          v18[2] = v241;
        }
      }

      v173 = *a1;
      v278 = a1[3];
      v313 = a1[4];
      v208 = a1[1];
      v243 = a1[2];
      v103 = v18[4];
      v105 = v18[1];
      v104 = v18[2];
      a1[3] = v18[3];
      a1[4] = v103;
      a1[1] = v105;
      a1[2] = v104;
      *a1 = *v18;
      v18[3] = v278;
      v18[4] = v313;
      v18[1] = v208;
      v18[2] = v243;
      *v18 = v173;
      v27 = v150;
      goto LABEL_57;
    }

    v25 = v19(v12, v18);
    v26 = (*a3)(a2 - 5, a1);
    if (v25)
    {
      v27 = v150;
      if (v26)
      {
        v152 = *v18;
        v257 = v18[3];
        v292 = v18[4];
        v187 = v18[1];
        v222 = v18[2];
        v28 = a2[-1];
        v30 = a2[-4];
        v29 = a2[-3];
        v18[3] = a2[-2];
        v18[4] = v28;
        v18[1] = v30;
        v18[2] = v29;
        *v18 = *v9;
LABEL_36:
        a2[-4] = v187;
        a2[-3] = v222;
        a2[-2] = v257;
        a2[-1] = v292;
        *v9 = v152;
        goto LABEL_57;
      }

      v161 = *v18;
      v266 = v18[3];
      v301 = v18[4];
      v196 = v18[1];
      v231 = v18[2];
      v61 = a1[4];
      v63 = a1[1];
      v62 = a1[2];
      v18[3] = a1[3];
      v18[4] = v61;
      v18[1] = v63;
      v18[2] = v62;
      *v18 = *a1;
      a1[3] = v266;
      a1[4] = v301;
      a1[1] = v196;
      a1[2] = v231;
      *a1 = v161;
      if ((*a3)(a2 - 5, a1))
      {
        v152 = *a1;
        v257 = a1[3];
        v292 = a1[4];
        v187 = a1[1];
        v222 = a1[2];
        v64 = a2[-1];
        v66 = a2[-4];
        v65 = a2[-3];
        a1[3] = a2[-2];
        a1[4] = v64;
        a1[1] = v66;
        a1[2] = v65;
        *a1 = *v9;
        goto LABEL_36;
      }
    }

    else
    {
      v27 = v150;
      if (v26)
      {
        v155 = *a1;
        v260 = a1[3];
        v295 = a1[4];
        v190 = a1[1];
        v225 = a1[2];
        v37 = a2[-1];
        v39 = a2[-4];
        v38 = a2[-3];
        a1[3] = a2[-2];
        a1[4] = v37;
        a1[1] = v39;
        a1[2] = v38;
        *a1 = *v9;
        a2[-4] = v190;
        a2[-3] = v225;
        a2[-2] = v260;
        a2[-1] = v295;
        *v9 = v155;
        if ((*a3)(a1, v18))
        {
          v156 = *v18;
          v261 = v18[3];
          v296 = v18[4];
          v191 = v18[1];
          v226 = v18[2];
          v40 = a1[4];
          v42 = a1[1];
          v41 = a1[2];
          v18[3] = a1[3];
          v18[4] = v40;
          v18[1] = v42;
          v18[2] = v41;
          *v18 = *a1;
          a1[3] = v261;
          a1[4] = v296;
          a1[1] = v191;
          a1[2] = v226;
          *a1 = v156;
        }
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 5, a1) & 1) == 0)
    {
      v12 = sub_254B80AA8(a1, a2, a3);
      goto LABEL_64;
    }

    v106 = sub_254B80C38(a1, a2, a3);
    if ((v107 & 1) == 0)
    {
      goto LABEL_62;
    }

    v108 = sub_254B80DD0(a1, v106, a3);
    v12 = &v106[5];
    if (sub_254B80DD0(v106 + 5, a2, a3))
    {
      a4 = -v27;
      a2 = v106;
      if (v108)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v27 + 1;
    if (!v108)
    {
LABEL_62:
      sub_254B7F350(a1, v106, a3, -v27, a5 & 1);
      v12 = &v106[5];
LABEL_64:
      a5 = 0;
      a4 = -v27;
      goto LABEL_2;
    }
  }

  v109 = (*a3)(v12 + 5, v12);
  v110 = (*a3)(v9, v12 + 5);
  if ((v109 & 1) == 0)
  {
    if (!v110)
    {
      return result;
    }

    v248 = v12[7];
    v283 = v12[8];
    v318 = v12[9];
    v178 = v12[5];
    v213 = v12[6];
    v12[5] = *v9;
    v125 = v9[4];
    v127 = v9[1];
    v126 = v9[2];
    v12[8] = v9[3];
    v12[9] = v125;
    v12[6] = v127;
    v12[7] = v126;
    *v9 = v178;
    v9[4] = v318;
    v9[3] = v283;
    v9[2] = v248;
    v9[1] = v213;
    goto LABEL_101;
  }

  if (v110)
  {
LABEL_75:
    v176 = *v12;
    v281 = v12[3];
    v316 = v12[4];
    v211 = v12[1];
    v246 = v12[2];
    v117 = v9[4];
    v119 = v9[1];
    v118 = v9[2];
    v12[3] = v9[3];
    v12[4] = v117;
    v12[1] = v119;
    v12[2] = v118;
    *v12 = *v9;
    v9[1] = v211;
    v9[2] = v246;
    v9[3] = v281;
    v9[4] = v316;
    result = v176;
    *v9 = v176;
    return result;
  }

  v174 = *v12;
  v279 = v12[3];
  v314 = v12[4];
  v209 = v12[1];
  v244 = v12[2];
  v111 = v12[9];
  v12[3] = v12[8];
  v12[4] = v111;
  v112 = v12[7];
  v12[1] = v12[6];
  v12[2] = v112;
  *v12 = v12[5];
  v12[8] = v279;
  v12[9] = v314;
  v12[6] = v209;
  v12[7] = v244;
  v12[5] = v174;
  if ((*a3)(v9, v12 + 5))
  {
    v245 = v12[7];
    v280 = v12[8];
    v315 = v12[9];
    v175 = v12[5];
    v210 = v12[6];
    v12[5] = *v9;
    v113 = v9[4];
    v115 = v9[1];
    v114 = v9[2];
    v12[8] = v9[3];
    v12[9] = v113;
    v12[6] = v115;
    v12[7] = v114;
    *v9 = v175;
    v9[4] = v315;
    v9[3] = v280;
    v9[2] = v245;
    result = v210;
    v9[1] = v210;
  }

  return result;
}

__n128 sub_254B80434(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v73 = a1[2];
      v84 = a1[3];
      v95 = a1[4];
      v51 = *a1;
      v62 = a1[1];
      *a1 = *a3;
      v14 = a3[4];
      v16 = a3[1];
      v15 = a3[2];
      a1[3] = a3[3];
      a1[4] = v14;
      a1[1] = v16;
      a1[2] = v15;
LABEL_9:
      a3[3] = v84;
      a3[4] = v95;
      a3[1] = v62;
      a3[2] = v73;
      *a3 = v51;
      goto LABEL_10;
    }

    v76 = a1[2];
    v87 = a1[3];
    v98 = a1[4];
    v54 = *a1;
    v65 = a1[1];
    *a1 = *a2;
    v23 = a2[4];
    v25 = a2[1];
    v24 = a2[2];
    a1[3] = a2[3];
    a1[4] = v23;
    a1[1] = v25;
    a1[2] = v24;
    a2[3] = v87;
    a2[4] = v98;
    a2[1] = v65;
    a2[2] = v76;
    *a2 = v54;
    if ((*a6)(a3, a2))
    {
      v73 = a2[2];
      v84 = a2[3];
      v95 = a2[4];
      v51 = *a2;
      v62 = a2[1];
      *a2 = *a3;
      v26 = a3[4];
      v28 = a3[1];
      v27 = a3[2];
      a2[3] = a3[3];
      a2[4] = v26;
      a2[1] = v28;
      a2[2] = v27;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v74 = a2[2];
    v85 = a2[3];
    v96 = a2[4];
    v52 = *a2;
    v63 = a2[1];
    *a2 = *a3;
    v17 = a3[4];
    v19 = a3[1];
    v18 = a3[2];
    a2[3] = a3[3];
    a2[4] = v17;
    a2[1] = v19;
    a2[2] = v18;
    a3[3] = v85;
    a3[4] = v96;
    a3[1] = v63;
    a3[2] = v74;
    *a3 = v52;
    if ((*a6)(a2, a1))
    {
      v75 = a1[2];
      v86 = a1[3];
      v97 = a1[4];
      v53 = *a1;
      v64 = a1[1];
      *a1 = *a2;
      v20 = a2[4];
      v22 = a2[1];
      v21 = a2[2];
      a1[3] = a2[3];
      a1[4] = v20;
      a1[1] = v22;
      a1[2] = v21;
      a2[3] = v86;
      a2[4] = v97;
      a2[1] = v64;
      a2[2] = v75;
      *a2 = v53;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v77 = a3[2];
    v88 = a3[3];
    v99 = a3[4];
    v55 = *a3;
    v66 = a3[1];
    *a3 = *a4;
    v29 = a4[4];
    v31 = a4[1];
    v30 = a4[2];
    a3[3] = a4[3];
    a3[4] = v29;
    a3[1] = v31;
    a3[2] = v30;
    a4[3] = v88;
    a4[4] = v99;
    a4[1] = v66;
    a4[2] = v77;
    *a4 = v55;
    if ((*a6)(a3, a2))
    {
      v78 = a2[2];
      v89 = a2[3];
      v100 = a2[4];
      v56 = *a2;
      v67 = a2[1];
      *a2 = *a3;
      v32 = a3[4];
      v34 = a3[1];
      v33 = a3[2];
      a2[3] = a3[3];
      a2[4] = v32;
      a2[1] = v34;
      a2[2] = v33;
      a3[3] = v89;
      a3[4] = v100;
      a3[1] = v67;
      a3[2] = v78;
      *a3 = v56;
      if ((*a6)(a2, a1))
      {
        v79 = a1[2];
        v90 = a1[3];
        v101 = a1[4];
        v57 = *a1;
        v68 = a1[1];
        *a1 = *a2;
        v35 = a2[4];
        v37 = a2[1];
        v36 = a2[2];
        a1[3] = a2[3];
        a1[4] = v35;
        a1[1] = v37;
        a1[2] = v36;
        a2[3] = v90;
        a2[4] = v101;
        a2[1] = v68;
        a2[2] = v79;
        *a2 = v57;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v80 = a4[2];
    v91 = a4[3];
    v102 = a4[4];
    v58 = *a4;
    v69 = a4[1];
    *a4 = *a5;
    v39 = a5[4];
    v41 = a5[1];
    v40 = a5[2];
    a4[3] = a5[3];
    a4[4] = v39;
    a4[1] = v41;
    a4[2] = v40;
    a5[3] = v91;
    a5[4] = v102;
    a5[1] = v69;
    a5[2] = v80;
    *a5 = v58;
    if ((*a6)(a4, a3))
    {
      v81 = a3[2];
      v92 = a3[3];
      v103 = a3[4];
      v59 = *a3;
      v70 = a3[1];
      *a3 = *a4;
      v42 = a4[4];
      v44 = a4[1];
      v43 = a4[2];
      a3[3] = a4[3];
      a3[4] = v42;
      a3[1] = v44;
      a3[2] = v43;
      a4[3] = v92;
      a4[4] = v103;
      a4[1] = v70;
      a4[2] = v81;
      *a4 = v59;
      if ((*a6)(a3, a2))
      {
        v82 = a2[2];
        v93 = a2[3];
        v104 = a2[4];
        v60 = *a2;
        v71 = a2[1];
        *a2 = *a3;
        v45 = a3[4];
        v47 = a3[1];
        v46 = a3[2];
        a2[3] = a3[3];
        a2[4] = v45;
        a2[1] = v47;
        a2[2] = v46;
        a3[3] = v93;
        a3[4] = v104;
        a3[1] = v71;
        a3[2] = v82;
        *a3 = v60;
        if ((*a6)(a2, a1))
        {
          v83 = a1[2];
          v94 = a1[3];
          v105 = a1[4];
          v61 = *a1;
          v72 = a1[1];
          *a1 = *a2;
          v48 = a2[4];
          v50 = a2[1];
          v49 = a2[2];
          a1[3] = a2[3];
          a1[4] = v48;
          a1[1] = v50;
          a1[2] = v49;
          a2[3] = v94;
          a2[4] = v105;
          a2[1] = v72;
          a2[2] = v83;
          result = v61;
          *a2 = v61;
        }
      }
    }
  }

  return result;
}

uint64_t sub_254B808BC(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v26 = v3;
    v27 = v4;
    v6 = result;
    v7 = (result + 80);
    if ((result + 80) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v12 = v10[3];
          v23 = v10[2];
          v24 = v12;
          v25 = v10[4];
          v13 = v10[1];
          v21 = *v10;
          v22 = v13;
          v14 = v9;
          while (1)
          {
            v15 = (v6 + v14);
            v16 = *(v6 + v14 + 48);
            v15[7] = *(v6 + v14 + 32);
            v15[8] = v16;
            v15[9] = *(v6 + v14 + 64);
            v17 = *(v6 + v14 + 16);
            v15[5] = *(v6 + v14);
            v15[6] = v17;
            if (!v14)
            {
              break;
            }

            v14 -= 80;
            result = (*a3)(&v21, v6 + v14);
            if ((result & 1) == 0)
            {
              v18 = (v6 + v14 + 80);
              goto LABEL_10;
            }
          }

          v18 = v6;
LABEL_10:
          v19 = v24;
          v18[2] = v23;
          v18[3] = v19;
          v18[4] = v25;
          v20 = v22;
          *v18 = v21;
          v18[1] = v20;
        }

        v7 = v10 + 5;
        v9 += 80;
      }

      while (v10 + 5 != a2);
    }
  }

  return result;
}

uint64_t sub_254B809C0(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (result != a2)
  {
    v23 = v3;
    v24 = v4;
    v6 = result;
    v7 = (result + 80);
    if ((result + 80) != a2)
    {
      v9 = (result - 80);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v11 = v6[3];
          v20 = v6[2];
          v21 = v11;
          v22 = v6[4];
          v12 = v6[1];
          v18 = *v6;
          v19 = v12;
          v13 = v9;
          do
          {
            v14 = v13[8];
            v13[12] = v13[7];
            v13[13] = v14;
            v13[14] = v13[9];
            v15 = v13[6];
            v13[10] = v13[5];
            v13[11] = v15;
            result = (*a3)(&v18, v13);
            v13 -= 5;
          }

          while ((result & 1) != 0);
          v16 = v21;
          v13[12] = v20;
          v13[13] = v16;
          v13[14] = v22;
          v17 = v19;
          v13[10] = v18;
          v13[11] = v17;
        }

        v7 = v6 + 5;
        v9 += 5;
      }

      while (v6 + 5 != a2);
    }
  }

  return result;
}

__int128 *sub_254B80AA8(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[3];
  v30 = a1[2];
  v31 = v6;
  v32 = a1[4];
  v7 = a1[1];
  v28 = *a1;
  v29 = v7;
  if ((*a3)(&v28, a2 - 5))
  {
    v8 = a1;
    do
    {
      v8 += 5;
    }

    while (((*a3)(&v28, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 5;
    do
    {
      v8 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v10 = (*a3)(&v28, v9);
      v9 = v8 + 5;
    }

    while (!v10);
  }

  if (v8 < v4)
  {
    do
    {
      v4 -= 5;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  while (v8 < v4)
  {
    v33 = *v8;
    v11 = v8[1];
    v12 = v8[2];
    v13 = v8[4];
    v36 = v8[3];
    v37 = v13;
    v34 = v11;
    v35 = v12;
    v14 = v4[4];
    v16 = v4[1];
    v15 = v4[2];
    v8[3] = v4[3];
    v8[4] = v14;
    v8[1] = v16;
    v8[2] = v15;
    *v8 = *v4;
    v17 = v37;
    v19 = v34;
    v18 = v35;
    v4[3] = v36;
    v4[4] = v17;
    v4[1] = v19;
    v4[2] = v18;
    *v4 = v33;
    do
    {
      v8 += 5;
    }

    while (!(*a3)(&v28, v8));
    do
    {
      v4 -= 5;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  v20 = v8 - 5;
  if (v8 - 5 != a1)
  {
    *a1 = *v20;
    v21 = *(v8 - 4);
    v22 = *(v8 - 3);
    v23 = *(v8 - 1);
    a1[3] = *(v8 - 2);
    a1[4] = v23;
    a1[1] = v21;
    a1[2] = v22;
  }

  *v20 = v28;
  v24 = v29;
  v25 = v30;
  v26 = v32;
  *(v8 - 2) = v31;
  *(v8 - 1) = v26;
  *(v8 - 4) = v24;
  *(v8 - 3) = v25;
  return v8;
}

__int128 *sub_254B80C38(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  v32 = a1[4];
  v8 = a1[1];
  v28 = *a1;
  v29 = v8;
  do
  {
    v6 += 5;
  }

  while (((*a3)(&a1[v6], &v28) & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 5];
  if (v6 == 5)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 5;
    }

    while (((*a3)(a2, &v28) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 5;
    }

    while (!(*a3)(a2, &v28));
  }

  if (v9 < a2)
  {
    v11 = &a1[v6];
    v12 = a2;
    do
    {
      v13 = v11[3];
      v35 = v11[2];
      v36 = v13;
      v37 = v11[4];
      v14 = v11[1];
      v33 = *v11;
      v34 = v14;
      v16 = v12[1];
      v15 = v12[2];
      v17 = v12[4];
      v11[3] = v12[3];
      v11[4] = v17;
      v11[1] = v16;
      v11[2] = v15;
      *v11 = *v12;
      *v12 = v33;
      v18 = v34;
      v19 = v35;
      v20 = v37;
      v12[3] = v36;
      v12[4] = v20;
      v12[1] = v18;
      v12[2] = v19;
      do
      {
        v11 += 5;
      }

      while (((*a3)(v11, &v28) & 1) != 0);
      do
      {
        v12 -= 5;
      }

      while (!(*a3)(v12, &v28));
    }

    while (v11 < v12);
    v10 = v11 - 5;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
    v21 = v10[1];
    v22 = v10[2];
    v23 = v10[4];
    a1[3] = v10[3];
    a1[4] = v23;
    a1[1] = v21;
    a1[2] = v22;
  }

  *v10 = v28;
  v24 = v29;
  v25 = v30;
  v26 = v32;
  v10[3] = v31;
  v10[4] = v26;
  v10[1] = v24;
  v10[2] = v25;
  return v10;
}

BOOL sub_254B80DD0(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2 - 5;
      v17 = (*a3)(a1 + 5, a1);
      v18 = (*a3)(v16, a1 + 5);
      if (v17)
      {
        if (v18)
        {
          v19 = a1[3];
          v181 = a1[2];
          v182 = v19;
          v183 = a1[4];
          v20 = a1[1];
          v179 = *a1;
          v180 = v20;
          *a1 = *v16;
          v21 = v16[4];
          v23 = v16[1];
          v22 = v16[2];
          a1[3] = v16[3];
          a1[4] = v21;
          a1[1] = v23;
          a1[2] = v22;
        }

        else
        {
          v86 = a1[3];
          v181 = a1[2];
          v182 = v86;
          v87 = a1[5];
          v183 = a1[4];
          v88 = a1[1];
          v179 = *a1;
          v180 = v88;
          v89 = a1[6];
          v90 = a1[8];
          v91 = a1[9];
          a1[2] = a1[7];
          a1[3] = v90;
          *a1 = v87;
          a1[1] = v89;
          v92 = v179;
          v93 = v180;
          a1[4] = v91;
          a1[5] = v92;
          v94 = v181;
          v95 = v183;
          a1[8] = v182;
          a1[9] = v95;
          a1[6] = v93;
          a1[7] = v94;
          if (!(*a3)(v16, a1 + 5))
          {
            return 1;
          }

          v96 = a1[8];
          v181 = a1[7];
          v182 = v96;
          v183 = a1[9];
          v97 = a1[6];
          v179 = a1[5];
          v180 = v97;
          a1[5] = *v16;
          v98 = v16[4];
          v100 = v16[1];
          v99 = v16[2];
          a1[8] = v16[3];
          a1[9] = v98;
          a1[6] = v100;
          a1[7] = v99;
        }

        v101 = v183;
        v16[3] = v182;
        v16[4] = v101;
        v102 = v181;
        v16[1] = v180;
        v16[2] = v102;
        result = 1;
        *v16 = v179;
        return result;
      }

      if (!v18)
      {
        return 1;
      }

      v41 = a1[8];
      v181 = a1[7];
      v182 = v41;
      v183 = a1[9];
      v42 = a1[6];
      v179 = a1[5];
      v180 = v42;
      a1[5] = *v16;
      v43 = v16[4];
      v45 = v16[1];
      v44 = v16[2];
      a1[8] = v16[3];
      a1[9] = v43;
      a1[6] = v45;
      a1[7] = v44;
      v46 = v183;
      v16[3] = v182;
      v16[4] = v46;
      v47 = v181;
      v16[1] = v180;
      v16[2] = v47;
      *v16 = v179;
LABEL_50:
      if ((*a3)(a1 + 5, a1))
      {
        v169 = a1[3];
        v181 = a1[2];
        v182 = v169;
        v170 = a1[5];
        v183 = a1[4];
        v171 = a1[1];
        v179 = *a1;
        v180 = v171;
        v172 = a1[6];
        v173 = a1[8];
        v174 = a1[9];
        a1[2] = a1[7];
        a1[3] = v173;
        *a1 = v170;
        a1[1] = v172;
        v175 = v179;
        v176 = v180;
        a1[4] = v174;
        a1[5] = v175;
        v177 = v181;
        v178 = v183;
        a1[8] = v182;
        a1[9] = v178;
        a1[6] = v176;
        a1[7] = v177;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_254B80434(a1, a1 + 5, a1 + 10, a1 + 15, a2 - 5, a3);
      return 1;
    }

    v31 = a2 - 5;
    v32 = (*a3)(a1 + 5, a1);
    v33 = (*a3)(a1 + 10, a1 + 5);
    if ((v32 & 1) == 0)
    {
      if (v33)
      {
        v66 = a1[8];
        v181 = a1[7];
        v182 = v66;
        v67 = a1[10];
        v183 = a1[9];
        v68 = a1[6];
        v179 = a1[5];
        v180 = v68;
        v69 = a1[11];
        v70 = a1[13];
        v71 = a1[14];
        a1[7] = a1[12];
        a1[8] = v70;
        a1[5] = v67;
        a1[6] = v69;
        v72 = v179;
        v73 = v180;
        a1[9] = v71;
        a1[10] = v72;
        v74 = v181;
        v75 = v183;
        a1[13] = v182;
        a1[14] = v75;
        a1[11] = v73;
        a1[12] = v74;
        if ((*a3)(a1 + 5, a1))
        {
          v76 = a1[3];
          v181 = a1[2];
          v182 = v76;
          v77 = a1[5];
          v183 = a1[4];
          v78 = a1[1];
          v179 = *a1;
          v180 = v78;
          v79 = a1[6];
          v80 = a1[8];
          v81 = a1[9];
          a1[2] = a1[7];
          a1[3] = v80;
          *a1 = v77;
          a1[1] = v79;
          v82 = v179;
          v83 = v180;
          a1[4] = v81;
          a1[5] = v82;
          v84 = v181;
          v85 = v183;
          a1[8] = v182;
          a1[9] = v85;
          a1[6] = v83;
          a1[7] = v84;
        }
      }

      goto LABEL_47;
    }

    if (v33)
    {
      v34 = a1[3];
      v181 = a1[2];
      v182 = v34;
      v183 = a1[4];
      v35 = a1[1];
      v179 = *a1;
      v180 = v35;
      v36 = a1[13];
      a1[2] = a1[12];
      a1[3] = v36;
      a1[4] = a1[14];
      v37 = a1[11];
      *a1 = a1[10];
      a1[1] = v37;
      v38 = v179;
      v39 = v180;
      v40 = v183;
      a1[13] = v182;
      a1[14] = v40;
      a1[12] = v181;
      a1[10] = v38;
    }

    else
    {
      v133 = a1[3];
      v181 = a1[2];
      v182 = v133;
      v134 = a1[5];
      v183 = a1[4];
      v135 = a1[1];
      v179 = *a1;
      v180 = v135;
      v136 = a1[6];
      v137 = a1[8];
      v138 = a1[9];
      a1[2] = a1[7];
      a1[3] = v137;
      *a1 = v134;
      a1[1] = v136;
      v139 = v179;
      v140 = v180;
      a1[4] = v138;
      a1[5] = v139;
      v141 = v181;
      v142 = v183;
      a1[8] = v182;
      a1[9] = v142;
      a1[6] = v140;
      a1[7] = v141;
      if (!(*a3)(a1 + 10, a1 + 5))
      {
        goto LABEL_47;
      }

      v143 = a1[8];
      v181 = a1[7];
      v182 = v143;
      v144 = a1[10];
      v183 = a1[9];
      v145 = a1[6];
      v179 = a1[5];
      v180 = v145;
      v146 = a1[11];
      v147 = a1[13];
      v148 = a1[14];
      a1[7] = a1[12];
      a1[8] = v147;
      a1[5] = v144;
      a1[6] = v146;
      v149 = v179;
      v39 = v180;
      a1[9] = v148;
      a1[10] = v149;
      v150 = v181;
      v151 = v183;
      a1[13] = v182;
      a1[14] = v151;
      a1[12] = v150;
    }

    a1[11] = v39;
LABEL_47:
    if (!(*a3)(v31, a1 + 10))
    {
      return 1;
    }

    v152 = a1[13];
    v181 = a1[12];
    v182 = v152;
    v183 = a1[14];
    v153 = a1[11];
    v179 = a1[10];
    v180 = v153;
    a1[10] = *v31;
    v154 = v31[4];
    v156 = v31[1];
    v155 = v31[2];
    a1[13] = v31[3];
    a1[14] = v154;
    a1[11] = v156;
    a1[12] = v155;
    v157 = v183;
    v31[3] = v182;
    v31[4] = v157;
    v158 = v181;
    v31[1] = v180;
    v31[2] = v158;
    *v31 = v179;
    if (!(*a3)(a1 + 10, a1 + 5))
    {
      return 1;
    }

    v159 = a1[8];
    v181 = a1[7];
    v182 = v159;
    v160 = a1[10];
    v183 = a1[9];
    v161 = a1[6];
    v179 = a1[5];
    v180 = v161;
    v162 = a1[11];
    v163 = a1[13];
    v164 = a1[14];
    a1[7] = a1[12];
    a1[8] = v163;
    a1[5] = v160;
    a1[6] = v162;
    v165 = v179;
    v166 = v180;
    a1[9] = v164;
    a1[10] = v165;
    v167 = v181;
    v168 = v183;
    a1[13] = v182;
    a1[14] = v168;
    a1[11] = v166;
    a1[12] = v167;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 5;
    if ((*a3)(a2 - 5, a1))
    {
      v8 = a1[3];
      v181 = a1[2];
      v182 = v8;
      v183 = a1[4];
      v9 = a1[1];
      v179 = *a1;
      v180 = v9;
      *a1 = *v7;
      v10 = a2[-1];
      v12 = a2[-4];
      v11 = a2[-3];
      a1[3] = a2[-2];
      a1[4] = v10;
      a1[1] = v12;
      a1[2] = v11;
      v13 = v183;
      a2[-2] = v182;
      a2[-1] = v13;
      v14 = v181;
      a2[-4] = v180;
      a2[-3] = v14;
      result = 1;
      *v7 = v179;
      return result;
    }

    return 1;
  }

LABEL_13:
  v24 = a1 + 10;
  v25 = (*a3)(a1 + 5, a1);
  v26 = (*a3)(a1 + 10, a1 + 5);
  if (v25)
  {
    if (v26)
    {
      v27 = a1[3];
      v181 = a1[2];
      v182 = v27;
      v183 = a1[4];
      v28 = a1[1];
      v179 = *a1;
      v180 = v28;
      v29 = a1[13];
      a1[2] = a1[12];
      a1[3] = v29;
      a1[4] = a1[14];
      v30 = a1[11];
      *a1 = *v24;
      a1[1] = v30;
    }

    else
    {
      v103 = a1[3];
      v181 = a1[2];
      v182 = v103;
      v104 = a1[5];
      v183 = a1[4];
      v105 = a1[1];
      v179 = *a1;
      v180 = v105;
      v106 = a1[6];
      v107 = a1[8];
      v108 = a1[9];
      a1[2] = a1[7];
      a1[3] = v107;
      *a1 = v104;
      a1[1] = v106;
      v109 = v179;
      v110 = v180;
      a1[4] = v108;
      a1[5] = v109;
      v111 = v181;
      v112 = v183;
      a1[8] = v182;
      a1[9] = v112;
      a1[6] = v110;
      a1[7] = v111;
      if (!(*a3)(a1 + 10, a1 + 5))
      {
        goto LABEL_33;
      }

      v113 = a1[8];
      v181 = a1[7];
      v182 = v113;
      v183 = a1[9];
      v114 = a1[6];
      v179 = a1[5];
      v180 = v114;
      v115 = a1[13];
      a1[7] = a1[12];
      a1[8] = v115;
      a1[9] = a1[14];
      v116 = a1[11];
      a1[5] = *v24;
      a1[6] = v116;
    }

    v117 = v179;
    v118 = v180;
    v119 = v183;
    a1[13] = v182;
    a1[14] = v119;
    v120 = v181;
    a1[11] = v118;
    a1[12] = v120;
    *v24 = v117;
  }

  else if (v26)
  {
    v48 = a1[8];
    v181 = a1[7];
    v182 = v48;
    v183 = a1[9];
    v49 = a1[6];
    v179 = a1[5];
    v180 = v49;
    v50 = a1[13];
    a1[7] = a1[12];
    a1[8] = v50;
    a1[9] = a1[14];
    v51 = a1[11];
    a1[5] = *v24;
    a1[6] = v51;
    v52 = v179;
    v53 = v180;
    v54 = v183;
    a1[13] = v182;
    a1[14] = v54;
    v55 = v181;
    a1[11] = v53;
    a1[12] = v55;
    *v24 = v52;
    if ((*a3)(a1 + 5, a1))
    {
      v56 = a1[3];
      v181 = a1[2];
      v182 = v56;
      v57 = a1[5];
      v183 = a1[4];
      v58 = a1[1];
      v179 = *a1;
      v180 = v58;
      v59 = a1[6];
      v60 = a1[8];
      v61 = a1[9];
      a1[2] = a1[7];
      a1[3] = v60;
      *a1 = v57;
      a1[1] = v59;
      v62 = v179;
      v63 = v180;
      a1[4] = v61;
      a1[5] = v62;
      v64 = v181;
      v65 = v183;
      a1[8] = v182;
      a1[9] = v65;
      a1[6] = v63;
      a1[7] = v64;
    }
  }

LABEL_33:
  v121 = a1 + 15;
  if (&a1[15] == a2)
  {
    return 1;
  }

  v122 = 0;
  v123 = 0;
  while (1)
  {
    if ((*a3)(v121, v24))
    {
      v124 = v121[3];
      v181 = v121[2];
      v182 = v124;
      v183 = v121[4];
      v125 = v121[1];
      v179 = *v121;
      v180 = v125;
      v126 = v122;
      while (1)
      {
        v127 = (a1 + v126);
        v128 = *(a1 + v126 + 208);
        v127[17] = *(a1 + v126 + 192);
        v127[18] = v128;
        v127[19] = *(a1 + v126 + 224);
        v129 = *(a1 + v126 + 176);
        v127[15] = *(a1 + v126 + 160);
        v127[16] = v129;
        if (v126 == -160)
        {
          break;
        }

        v126 -= 80;
        if (((*a3)(&v179, v127 + 5) & 1) == 0)
        {
          v130 = (a1 + v126 + 240);
          goto LABEL_41;
        }
      }

      v130 = a1;
LABEL_41:
      v131 = v182;
      v130[2] = v181;
      v130[3] = v131;
      v130[4] = v183;
      v132 = v180;
      *v130 = v179;
      v130[1] = v132;
      if (++v123 == 8)
      {
        return &v121[5] == a2;
      }
    }

    v24 = v121;
    v122 += 80;
    v121 += 5;
    if (v121 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_254B81574(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, __n128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 81)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 80 * v11);
      do
      {
        a5 = sub_254B81800(v8, a4, v10, v13);
        v13 -= 5;
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
          v40 = v14[2];
          v42 = v14[3];
          v44 = v14[4];
          v36 = *v14;
          v38 = v14[1];
          *v14 = *v8;
          v15 = *(v8 + 64);
          v17 = *(v8 + 16);
          v16 = *(v8 + 32);
          v14[3] = *(v8 + 48);
          v14[4] = v15;
          v14[1] = v17;
          v14[2] = v16;
          *(v8 + 48) = v42;
          *(v8 + 64) = v44;
          *(v8 + 16) = v38;
          *(v8 + 32) = v40;
          *v8 = v36;
          a5 = sub_254B81800(v8, a4, v10, v8);
        }

        v14 += 5;
      }

      while (v14 != a3);
    }

    if (v9 >= 81)
    {
      v18 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
      v34 = v8;
      do
      {
        v35 = v7;
        v19 = 0;
        v41 = *(v8 + 32);
        v43 = *(v8 + 48);
        v45 = *(v8 + 64);
        v37 = *v8;
        v39 = *(v8 + 16);
        v20 = v8;
        do
        {
          v21 = &v20[5 * v19];
          v22 = v21 + 5;
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = v21 + 10;
            if ((*a4)(&v21[5], v21 + 10))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          *v20 = *v22;
          v26 = v22[1];
          v27 = v22[2];
          v28 = v22[4];
          v20[3] = v22[3];
          v20[4] = v28;
          v20[1] = v26;
          v20[2] = v27;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = v35 - 5;
        if (v22 == &v35[-5])
        {
          *v22 = v37;
          v22[3] = v43;
          v22[4] = v45;
          v22[1] = v39;
          v22[2] = v41;
          v8 = v34;
        }

        else
        {
          *v22 = *v7;
          v29 = v35[-4];
          v30 = v35[-3];
          v31 = v35[-1];
          v22[3] = v35[-2];
          v22[4] = v31;
          v22[1] = v29;
          v22[2] = v30;
          v35[-3] = v41;
          v35[-2] = v43;
          v35[-1] = v45;
          *v7 = v37;
          v35[-4] = v39;
          v8 = v34;
          sub_254B81984(v34, &v22[5], a4, 0xCCCCCCCCCCCCCCCDLL * ((&v22[5] - v34) >> 4));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 sub_254B81800(uint64_t a1, unsigned int (**a2)(uint64_t, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 4)))
    {
      v12 = (0x999999999999999ALL * ((a4 - a1) >> 4)) | 1;
      v13 = (a1 + 80 * v12);
      v14 = 0x999999999999999ALL * ((a4 - a1) >> 4) + 2;
      if (v14 < a3 && (*a2)(a1 + 80 * v12, v13 + 5))
      {
        v13 += 5;
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v16 = v7[3];
        v28 = v7[2];
        v29 = v16;
        v30 = v7[4];
        v17 = v7[1];
        v26 = *v7;
        v27 = v17;
        do
        {
          v18 = v13;
          *v7 = *v13;
          v19 = v13[1];
          v20 = v13[2];
          v21 = v13[4];
          v7[3] = v13[3];
          v7[4] = v21;
          v7[1] = v19;
          v7[2] = v20;
          if (v9 < v12)
          {
            break;
          }

          v22 = (2 * v12) | 1;
          v13 = (a1 + 80 * v22);
          v23 = 2 * v12 + 2;
          if (v23 < a3)
          {
            if ((*a2)(a1 + 80 * v22, v13 + 5))
            {
              v13 += 5;
              v22 = v23;
            }
          }

          v7 = v18;
          v12 = v22;
        }

        while (!(*a2)(v13, &v26));
        *v18 = v26;
        result = v27;
        v24 = v28;
        v25 = v30;
        v18[3] = v29;
        v18[4] = v25;
        v18[1] = result;
        v18[2] = v24;
      }
    }
  }

  return result;
}

__n128 sub_254B81984(uint64_t a1, uint64_t a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 80 * (v6 >> 1));
    v11 = (a2 - 80);
    if ((*a3)(v10, (a2 - 80)))
    {
      v13 = v11[3];
      v22 = v11[2];
      v23 = v13;
      v24 = v11[4];
      v14 = v11[1];
      v20 = *v11;
      v21 = v14;
      do
      {
        v15 = v10;
        *v11 = *v10;
        v16 = v10[1];
        v17 = v10[2];
        v18 = v10[4];
        v11[3] = v10[3];
        v11[4] = v18;
        v11[1] = v16;
        v11[2] = v17;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 80 * v9);
        v11 = v15;
      }

      while (((*a3)(v10, &v20) & 1) != 0);
      v19 = v23;
      v15[2] = v22;
      v15[3] = v19;
      v15[4] = v24;
      result = v21;
      *v15 = v20;
      v15[1] = result;
    }
  }

  return result;
}

void *sub_254B81A70(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B81AF0(result, a2);
  }

  return result;
}

void sub_254B81AD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B81AF0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_254B32E20();
}

void sub_254B81B40(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_254B32F20();
}

void *sub_254B81B98(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B81AF0(result, a2);
  }

  return result;
}

void sub_254B81BF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_254B81C0C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_254B33980(result, a2);
  }

  return result;
}

void sub_254B81C8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B81CA8(uint64_t a1, unint64_t a2)
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
      sub_254B32E20();
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
      sub_254B81E14(a1, v9);
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
    sub_254B41168(v18);
  }
}

void sub_254B81E14(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_254B32F20();
}

char *sub_254B81E6C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      sub_254B32E20();
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
      sub_254B81B40(a1, v15);
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

__n128 sub_254B8211C(unint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 5;
  v10 = a2 - 10;
  v11 = a2 - 15;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 4);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        result.n128_u32[0] = a2[-4].n128_u32[3];
        if (result.n128_f32[0] < *(v12 + 28))
        {
          v176 = *v12;
          v284 = *(v12 + 48);
          v320 = *(v12 + 64);
          v212 = *(v12 + 16);
          v248 = *(v12 + 32);
          v112 = a2[-1];
          v114 = a2[-4];
          v113 = a2[-3];
          *(v12 + 48) = a2[-2];
          *(v12 + 64) = v112;
          *(v12 + 16) = v114;
          *(v12 + 32) = v113;
          *v12 = a2[-5];
          a2[-4] = v212;
          a2[-3] = v248;
          a2[-2] = v284;
          a2[-1] = v320;
          result = v176;
          a2[-5] = v176;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v115 = *(v12 + 108);
      v116 = *(v12 + 188);
      if (v115 >= *(v12 + 28))
      {
        if (v116 < v115)
        {
          v251 = *(v12 + 112);
          v287 = *(v12 + 128);
          v123 = *(v12 + 160);
          v323 = *(v12 + 144);
          v179 = *(v12 + 80);
          v215 = *(v12 + 96);
          v124 = *(v12 + 176);
          v125 = *(v12 + 208);
          v126 = *(v12 + 224);
          *(v12 + 112) = *(v12 + 192);
          *(v12 + 128) = v125;
          *(v12 + 80) = v123;
          *(v12 + 96) = v124;
          *(v12 + 144) = v126;
          *(v12 + 160) = v179;
          result = v251;
          *(v12 + 208) = v287;
          *(v12 + 224) = v323;
          v127 = *(v12 + 108);
          LODWORD(v125) = *(v12 + 28);
          *(v12 + 176) = v215;
          *(v12 + 192) = v251;
          if (v127 < *&v125)
          {
            v180 = *v12;
            v288 = *(v12 + 48);
            v324 = *(v12 + 64);
            v216 = *(v12 + 16);
            v252 = *(v12 + 32);
            v128 = *(v12 + 144);
            *(v12 + 48) = *(v12 + 128);
            *(v12 + 64) = v128;
            v129 = *(v12 + 112);
            *(v12 + 16) = *(v12 + 96);
            *(v12 + 32) = v129;
            *v12 = *(v12 + 80);
            result = v180;
            *(v12 + 128) = v288;
            *(v12 + 144) = v324;
            *(v12 + 96) = v216;
            *(v12 + 112) = v252;
            *(v12 + 80) = v180;
          }
        }
      }

      else
      {
        if (v116 < v115)
        {
          v177 = *v12;
          v285 = *(v12 + 48);
          v321 = *(v12 + 64);
          v213 = *(v12 + 16);
          v249 = *(v12 + 32);
          v117 = *(v12 + 224);
          *(v12 + 48) = *(v12 + 208);
          *(v12 + 64) = v117;
          v118 = *(v12 + 192);
          *(v12 + 16) = *(v12 + 176);
          *(v12 + 32) = v118;
          *v12 = *(v12 + 160);
          result = v177;
          v119 = v213;
          *(v12 + 208) = v285;
          *(v12 + 224) = v321;
          *(v12 + 192) = v249;
          *(v12 + 160) = v177;
          goto LABEL_99;
        }

        v183 = *v12;
        v291 = *(v12 + 48);
        v327 = *(v12 + 64);
        v219 = *(v12 + 16);
        v255 = *(v12 + 32);
        v135 = *(v12 + 144);
        *(v12 + 48) = *(v12 + 128);
        *(v12 + 64) = v135;
        v136 = *(v12 + 112);
        *(v12 + 16) = *(v12 + 96);
        *(v12 + 32) = v136;
        *v12 = *(v12 + 80);
        *(v12 + 128) = v291;
        *(v12 + 144) = v327;
        *(v12 + 96) = v219;
        *(v12 + 112) = v255;
        *(v12 + 80) = v183;
        if (v116 < *(v12 + 108))
        {
          v256 = *(v12 + 112);
          v292 = *(v12 + 128);
          v137 = *(v12 + 160);
          v328 = *(v12 + 144);
          v184 = *(v12 + 80);
          v220 = *(v12 + 96);
          v138 = *(v12 + 176);
          v139 = *(v12 + 208);
          v140 = *(v12 + 224);
          *(v12 + 112) = *(v12 + 192);
          *(v12 + 128) = v139;
          *(v12 + 80) = v137;
          *(v12 + 96) = v138;
          v119 = v220;
          *(v12 + 144) = v140;
          *(v12 + 160) = v184;
          result = v256;
          *(v12 + 208) = v292;
          *(v12 + 224) = v328;
          *(v12 + 192) = v256;
LABEL_99:
          *(v12 + 176) = v119;
        }
      }

      result.n128_u32[0] = a2[-4].n128_u32[3];
      if (result.n128_f32[0] >= *(v12 + 188))
      {
        return result;
      }

      v257 = *(v12 + 192);
      v293 = *(v12 + 208);
      v329 = *(v12 + 224);
      v185 = *(v12 + 160);
      v221 = *(v12 + 176);
      *(v12 + 160) = *v9;
      v141 = a2[-1];
      v143 = a2[-4];
      v142 = a2[-3];
      *(v12 + 208) = a2[-2];
      *(v12 + 224) = v141;
      *(v12 + 176) = v143;
      *(v12 + 192) = v142;
      *v9 = v185;
      a2[-1] = v329;
      a2[-2] = v293;
      a2[-3] = v257;
      result = v221;
      a2[-4] = v221;
      result.n128_u32[0] = *(v12 + 188);
      if (result.n128_f32[0] >= *(v12 + 108))
      {
        return result;
      }

      v258 = *(v12 + 112);
      v294 = *(v12 + 128);
      v144 = *(v12 + 160);
      v330 = *(v12 + 144);
      v186 = *(v12 + 80);
      v222 = *(v12 + 96);
      v145 = *(v12 + 176);
      v146 = *(v12 + 208);
      v147 = *(v12 + 224);
      *(v12 + 112) = *(v12 + 192);
      *(v12 + 128) = v146;
      *(v12 + 80) = v144;
      *(v12 + 96) = v145;
      *(v12 + 144) = v147;
      *(v12 + 160) = v186;
      result = v258;
      *(v12 + 208) = v294;
      *(v12 + 224) = v330;
      v148 = *(v12 + 108);
      LODWORD(v146) = *(v12 + 28);
      *(v12 + 176) = v222;
      *(v12 + 192) = v258;
      if (v148 >= *&v146)
      {
        return result;
      }

LABEL_103:
      v187 = *v12;
      v295 = *(v12 + 48);
      v331 = *(v12 + 64);
      v223 = *(v12 + 16);
      v259 = *(v12 + 32);
      v149 = *(v12 + 144);
      *(v12 + 48) = *(v12 + 128);
      *(v12 + 64) = v149;
      v150 = *(v12 + 112);
      *(v12 + 16) = *(v12 + 96);
      *(v12 + 32) = v150;
      *v12 = *(v12 + 80);
      result = v187;
      *(v12 + 128) = v295;
      *(v12 + 144) = v331;
      *(v12 + 96) = v223;
      *(v12 + 112) = v259;
      *(v12 + 80) = v187;
      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = sub_254B831C0(v12, v12 + 80, v12 + 160, v12 + 240, &a2[-5]).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 1919)
    {
      if (a5)
      {

        sub_254B835D0(v12, a2);
      }

      else
      {

        sub_254B836A8(v12, a2);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        sub_254B84148(v12, a2, a2, a3, result);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = v12 + 80 * (v16 >> 1);
    v19 = a2[-4].n128_f32[3];
    if (v15 >= 0x2801)
    {
      v20 = *(v18 + 28);
      if (v20 >= *(v12 + 28))
      {
        if (v19 < v20)
        {
          v154 = *v18;
          v262 = *(v18 + 48);
          v298 = *(v18 + 64);
          v190 = *(v18 + 16);
          v226 = *(v18 + 32);
          v28 = a2[-1];
          v30 = a2[-4];
          v29 = a2[-3];
          *(v18 + 48) = a2[-2];
          *(v18 + 64) = v28;
          *(v18 + 16) = v30;
          *(v18 + 32) = v29;
          *v18 = *v9;
          a2[-4] = v190;
          a2[-3] = v226;
          a2[-2] = v262;
          a2[-1] = v298;
          *v9 = v154;
          if (*(v18 + 28) < *(v12 + 28))
          {
            v155 = *v12;
            v263 = *(v12 + 48);
            v299 = *(v12 + 64);
            v191 = *(v12 + 16);
            v227 = *(v12 + 32);
            v31 = *(v18 + 64);
            v33 = *(v18 + 16);
            v32 = *(v18 + 32);
            *(v12 + 48) = *(v18 + 48);
            *(v12 + 64) = v31;
            *(v12 + 16) = v33;
            *(v12 + 32) = v32;
            *v12 = *v18;
            *(v18 + 48) = v263;
            *(v18 + 64) = v299;
            *(v18 + 16) = v191;
            *(v18 + 32) = v227;
            *v18 = v155;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v152 = *v12;
          v260 = *(v12 + 48);
          v296 = *(v12 + 64);
          v188 = *(v12 + 16);
          v224 = *(v12 + 32);
          v21 = a2[-1];
          v23 = a2[-4];
          v22 = a2[-3];
          *(v12 + 48) = a2[-2];
          *(v12 + 64) = v21;
          *(v12 + 16) = v23;
          *(v12 + 32) = v22;
          *v12 = *v9;
          goto LABEL_27;
        }

        v158 = *v12;
        v266 = *(v12 + 48);
        v302 = *(v12 + 64);
        v194 = *(v12 + 16);
        v230 = *(v12 + 32);
        v40 = *(v18 + 64);
        v42 = *(v18 + 16);
        v41 = *(v18 + 32);
        *(v12 + 48) = *(v18 + 48);
        *(v12 + 64) = v40;
        *(v12 + 16) = v42;
        *(v12 + 32) = v41;
        *v12 = *v18;
        *(v18 + 48) = v266;
        *(v18 + 64) = v302;
        *(v18 + 16) = v194;
        *(v18 + 32) = v230;
        *v18 = v158;
        if (a2[-4].n128_f32[3] < *(v18 + 28))
        {
          v152 = *v18;
          v260 = *(v18 + 48);
          v296 = *(v18 + 64);
          v188 = *(v18 + 16);
          v224 = *(v18 + 32);
          v43 = a2[-1];
          v45 = a2[-4];
          v44 = a2[-3];
          *(v18 + 48) = a2[-2];
          *(v18 + 64) = v43;
          *(v18 + 16) = v45;
          *(v18 + 32) = v44;
          *v18 = *v9;
LABEL_27:
          a2[-4] = v188;
          a2[-3] = v224;
          a2[-2] = v260;
          a2[-1] = v296;
          *v9 = v152;
        }
      }

      v46 = v12 + 80 * v17;
      v47 = v46 - 80;
      v48 = *(v46 - 52);
      v49 = a2[-9].n128_f32[3];
      if (v48 >= *(v12 + 108))
      {
        if (v49 < v48)
        {
          v160 = *v47;
          v268 = *(v46 - 32);
          v304 = *(v46 - 16);
          v196 = *(v46 - 64);
          v232 = *(v46 - 48);
          v53 = a2[-6];
          v55 = a2[-9];
          v54 = a2[-8];
          *(v46 - 32) = a2[-7];
          *(v46 - 16) = v53;
          *(v46 - 64) = v55;
          *(v46 - 48) = v54;
          *v47 = *v10;
          a2[-9] = v196;
          a2[-8] = v232;
          a2[-7] = v268;
          a2[-6] = v304;
          *v10 = v160;
          if (*(v46 - 52) < *(v12 + 108))
          {
            v233 = *(v12 + 112);
            v269 = *(v12 + 128);
            v305 = *(v12 + 144);
            v161 = *(v12 + 80);
            v197 = *(v12 + 96);
            v57 = *(v46 - 64);
            v56 = *(v46 - 48);
            v58 = *(v46 - 16);
            *(v12 + 128) = *(v46 - 32);
            *(v12 + 144) = v58;
            *(v12 + 96) = v57;
            *(v12 + 112) = v56;
            *(v12 + 80) = *v47;
            *v47 = v161;
            *(v46 - 32) = v269;
            *(v46 - 16) = v305;
            *(v46 - 64) = v197;
            *(v46 - 48) = v233;
          }
        }
      }

      else if (v49 >= v48)
      {
        v235 = *(v12 + 112);
        v271 = *(v12 + 128);
        v307 = *(v12 + 144);
        v163 = *(v12 + 80);
        v199 = *(v12 + 96);
        v66 = *(v46 - 64);
        v65 = *(v46 - 48);
        v67 = *(v46 - 16);
        *(v12 + 128) = *(v46 - 32);
        *(v12 + 144) = v67;
        *(v12 + 96) = v66;
        *(v12 + 112) = v65;
        *(v12 + 80) = *v47;
        *v47 = v163;
        *(v46 - 32) = v271;
        *(v46 - 16) = v307;
        *(v46 - 64) = v199;
        *(v46 - 48) = v235;
        if (a2[-9].n128_f32[3] < *(v46 - 52))
        {
          v164 = *v47;
          v272 = *(v46 - 32);
          v308 = *(v46 - 16);
          v200 = *(v46 - 64);
          v236 = *(v46 - 48);
          v68 = a2[-6];
          v70 = a2[-9];
          v69 = a2[-8];
          *(v46 - 32) = a2[-7];
          *(v46 - 16) = v68;
          *(v46 - 64) = v70;
          *(v46 - 48) = v69;
          *v47 = *v10;
          a2[-9] = v200;
          a2[-8] = v236;
          a2[-7] = v272;
          a2[-6] = v308;
          *v10 = v164;
        }
      }

      else
      {
        v231 = *(v12 + 112);
        v267 = *(v12 + 128);
        v303 = *(v12 + 144);
        v159 = *(v12 + 80);
        v195 = *(v12 + 96);
        *(v12 + 80) = *v10;
        v50 = a2[-6];
        v52 = a2[-9];
        v51 = a2[-8];
        *(v12 + 128) = a2[-7];
        *(v12 + 144) = v50;
        *(v12 + 96) = v52;
        *(v12 + 112) = v51;
        *v10 = v159;
        a2[-6] = v303;
        a2[-7] = v267;
        a2[-8] = v231;
        a2[-9] = v195;
      }

      v71 = v12 + 80 * v17;
      v72 = (v71 + 80);
      v73 = *(v71 + 108);
      v74 = a2[-14].n128_f32[3];
      if (v73 >= *(v12 + 188))
      {
        if (v74 < v73)
        {
          v166 = *v72;
          v274 = *(v71 + 128);
          v310 = *(v71 + 144);
          v202 = *(v71 + 96);
          v238 = *(v71 + 112);
          v78 = a2[-11];
          v80 = a2[-14];
          v79 = a2[-13];
          *(v71 + 128) = a2[-12];
          *(v71 + 144) = v78;
          *(v71 + 96) = v80;
          *(v71 + 112) = v79;
          *v72 = *v11;
          a2[-14] = v202;
          a2[-13] = v238;
          a2[-12] = v274;
          a2[-11] = v310;
          *v11 = v166;
          if (*(v71 + 108) < *(v12 + 188))
          {
            v239 = *(v12 + 192);
            v275 = *(v12 + 208);
            v311 = *(v12 + 224);
            v167 = *(v12 + 160);
            v203 = *(v12 + 176);
            v82 = *(v71 + 96);
            v81 = *(v71 + 112);
            v83 = *(v71 + 144);
            *(v12 + 208) = *(v71 + 128);
            *(v12 + 224) = v83;
            *(v12 + 176) = v82;
            *(v12 + 192) = v81;
            *(v12 + 160) = *v72;
            *v72 = v167;
            *(v71 + 128) = v275;
            *(v71 + 144) = v311;
            *(v71 + 96) = v203;
            *(v71 + 112) = v239;
          }
        }
      }

      else if (v74 >= v73)
      {
        v240 = *(v12 + 192);
        v276 = *(v12 + 208);
        v312 = *(v12 + 224);
        v168 = *(v12 + 160);
        v204 = *(v12 + 176);
        v85 = *(v71 + 96);
        v84 = *(v71 + 112);
        v86 = *(v71 + 144);
        *(v12 + 208) = *(v71 + 128);
        *(v12 + 224) = v86;
        *(v12 + 176) = v85;
        *(v12 + 192) = v84;
        *(v12 + 160) = *v72;
        *v72 = v168;
        *(v71 + 128) = v276;
        *(v71 + 144) = v312;
        *(v71 + 96) = v204;
        *(v71 + 112) = v240;
        if (a2[-14].n128_f32[3] < *(v71 + 108))
        {
          v169 = *v72;
          v277 = *(v71 + 128);
          v313 = *(v71 + 144);
          v205 = *(v71 + 96);
          v241 = *(v71 + 112);
          v87 = a2[-11];
          v89 = a2[-14];
          v88 = a2[-13];
          *(v71 + 128) = a2[-12];
          *(v71 + 144) = v87;
          *(v71 + 96) = v89;
          *(v71 + 112) = v88;
          *v72 = *v11;
          a2[-14] = v205;
          a2[-13] = v241;
          a2[-12] = v277;
          a2[-11] = v313;
          *v11 = v169;
        }
      }

      else
      {
        v237 = *(v12 + 192);
        v273 = *(v12 + 208);
        v309 = *(v12 + 224);
        v165 = *(v12 + 160);
        v201 = *(v12 + 176);
        *(v12 + 160) = *v11;
        v75 = a2[-11];
        v77 = a2[-14];
        v76 = a2[-13];
        *(v12 + 208) = a2[-12];
        *(v12 + 224) = v75;
        *(v12 + 176) = v77;
        *(v12 + 192) = v76;
        *v11 = v165;
        a2[-11] = v309;
        a2[-12] = v273;
        a2[-13] = v237;
        a2[-14] = v201;
      }

      v90 = *(v18 + 28);
      v91 = *(v71 + 108);
      if (v90 >= *(v47 + 28))
      {
        if (v91 < v90)
        {
          v171 = *v18;
          v279 = *(v18 + 48);
          v315 = *(v18 + 64);
          v207 = *(v18 + 16);
          v243 = *(v18 + 32);
          v94 = *(v71 + 144);
          *(v18 + 48) = *(v71 + 128);
          *(v18 + 64) = v94;
          v95 = *(v71 + 112);
          *(v18 + 16) = *(v71 + 96);
          *(v18 + 32) = v95;
          *v18 = *v72;
          *v72 = v171;
          *(v71 + 128) = v279;
          *(v71 + 144) = v315;
          *(v71 + 96) = v207;
          *(v71 + 112) = v243;
          if (*(v18 + 28) < *(v47 + 28))
          {
            v172 = *v47;
            v280 = *(v47 + 48);
            v316 = *(v47 + 64);
            v208 = *(v47 + 16);
            v244 = *(v47 + 32);
            v96 = *(v18 + 64);
            *(v47 + 48) = *(v18 + 48);
            *(v47 + 64) = v96;
            v97 = *(v18 + 32);
            *(v47 + 16) = *(v18 + 16);
            *(v47 + 32) = v97;
            *v47 = *v18;
            *v18 = v172;
            *(v18 + 48) = v280;
            *(v18 + 64) = v316;
            *(v18 + 16) = v208;
            *(v18 + 32) = v244;
          }
        }
      }

      else
      {
        if (v91 < v90)
        {
          v170 = *v47;
          v278 = *(v47 + 48);
          v314 = *(v47 + 64);
          v206 = *(v47 + 16);
          v242 = *(v47 + 32);
          v92 = *(v71 + 144);
          *(v47 + 48) = *(v71 + 128);
          *(v47 + 64) = v92;
          v93 = *(v71 + 112);
          *(v47 + 16) = *(v71 + 96);
          *(v47 + 32) = v93;
          *v47 = *v72;
          goto LABEL_55;
        }

        v173 = *v47;
        v281 = *(v47 + 48);
        v317 = *(v47 + 64);
        v209 = *(v47 + 16);
        v245 = *(v47 + 32);
        v98 = *(v18 + 64);
        *(v47 + 48) = *(v18 + 48);
        *(v47 + 64) = v98;
        v99 = *(v18 + 32);
        *(v47 + 16) = *(v18 + 16);
        *(v47 + 32) = v99;
        *v47 = *v18;
        *v18 = v173;
        *(v18 + 48) = v281;
        *(v18 + 64) = v317;
        *(v18 + 16) = v209;
        *(v18 + 32) = v245;
        if (*(v71 + 108) < *(v18 + 28))
        {
          v170 = *v18;
          v278 = *(v18 + 48);
          v314 = *(v18 + 64);
          v206 = *(v18 + 16);
          v242 = *(v18 + 32);
          v100 = *(v71 + 144);
          *(v18 + 48) = *(v71 + 128);
          *(v18 + 64) = v100;
          v101 = *(v71 + 112);
          *(v18 + 16) = *(v71 + 96);
          *(v18 + 32) = v101;
          *v18 = *v72;
LABEL_55:
          *v72 = v170;
          *(v71 + 128) = v278;
          *(v71 + 144) = v314;
          *(v71 + 96) = v206;
          *(v71 + 112) = v242;
        }
      }

      v174 = *v12;
      v282 = *(v12 + 48);
      v318 = *(v12 + 64);
      v210 = *(v12 + 16);
      v246 = *(v12 + 32);
      v102 = *(v18 + 64);
      v104 = *(v18 + 16);
      v103 = *(v18 + 32);
      *(v12 + 48) = *(v18 + 48);
      *(v12 + 64) = v102;
      *(v12 + 16) = v104;
      *(v12 + 32) = v103;
      *v12 = *v18;
      *(v18 + 48) = v282;
      *(v18 + 64) = v318;
      *(v18 + 16) = v210;
      *(v18 + 32) = v246;
      *v18 = v174;
      goto LABEL_57;
    }

    v24 = *(v12 + 28);
    if (v24 >= *(v18 + 28))
    {
      if (v19 < v24)
      {
        v156 = *v12;
        v264 = *(v12 + 48);
        v300 = *(v12 + 64);
        v192 = *(v12 + 16);
        v228 = *(v12 + 32);
        v34 = a2[-1];
        v36 = a2[-4];
        v35 = a2[-3];
        *(v12 + 48) = a2[-2];
        *(v12 + 64) = v34;
        *(v12 + 16) = v36;
        *(v12 + 32) = v35;
        *v12 = *v9;
        a2[-4] = v192;
        a2[-3] = v228;
        a2[-2] = v264;
        a2[-1] = v300;
        *v9 = v156;
        if (*(v12 + 28) < *(v18 + 28))
        {
          v157 = *v18;
          v265 = *(v18 + 48);
          v301 = *(v18 + 64);
          v193 = *(v18 + 16);
          v229 = *(v18 + 32);
          v37 = *(v12 + 64);
          v39 = *(v12 + 16);
          v38 = *(v12 + 32);
          *(v18 + 48) = *(v12 + 48);
          *(v18 + 64) = v37;
          *(v18 + 16) = v39;
          *(v18 + 32) = v38;
          *v18 = *v12;
          *(v12 + 48) = v265;
          *(v12 + 64) = v301;
          *(v12 + 16) = v193;
          *(v12 + 32) = v229;
          *v12 = v157;
        }
      }
    }

    else
    {
      if (v19 < v24)
      {
        v153 = *v18;
        v261 = *(v18 + 48);
        v297 = *(v18 + 64);
        v189 = *(v18 + 16);
        v225 = *(v18 + 32);
        v25 = a2[-1];
        v27 = a2[-4];
        v26 = a2[-3];
        *(v18 + 48) = a2[-2];
        *(v18 + 64) = v25;
        *(v18 + 16) = v27;
        *(v18 + 32) = v26;
        *v18 = *v9;
LABEL_36:
        a2[-4] = v189;
        a2[-3] = v225;
        a2[-2] = v261;
        a2[-1] = v297;
        *v9 = v153;
        goto LABEL_57;
      }

      v162 = *v18;
      v270 = *(v18 + 48);
      v306 = *(v18 + 64);
      v198 = *(v18 + 16);
      v234 = *(v18 + 32);
      v59 = *(v12 + 64);
      v61 = *(v12 + 16);
      v60 = *(v12 + 32);
      *(v18 + 48) = *(v12 + 48);
      *(v18 + 64) = v59;
      *(v18 + 16) = v61;
      *(v18 + 32) = v60;
      *v18 = *v12;
      *(v12 + 48) = v270;
      *(v12 + 64) = v306;
      *(v12 + 16) = v198;
      *(v12 + 32) = v234;
      *v12 = v162;
      if (a2[-4].n128_f32[3] < *(v12 + 28))
      {
        v153 = *v12;
        v261 = *(v12 + 48);
        v297 = *(v12 + 64);
        v189 = *(v12 + 16);
        v225 = *(v12 + 32);
        v62 = a2[-1];
        v64 = a2[-4];
        v63 = a2[-3];
        *(v12 + 48) = a2[-2];
        *(v12 + 64) = v62;
        *(v12 + 16) = v64;
        *(v12 + 32) = v63;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v12 - 52) >= *(v12 + 28))
    {
      v12 = sub_254B8375C(v12, a2);
      goto LABEL_64;
    }

    v105 = sub_254B838B8(v12, a2);
    if ((v106 & 1) == 0)
    {
      goto LABEL_62;
    }

    v107 = sub_254B83A18(v12, v105);
    v12 = v105 + 80;
    if (sub_254B83A18(v105 + 80, a2))
    {
      a4 = -v14;
      a2 = v105;
      if (v107)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v107)
    {
LABEL_62:
      sub_254B8211C(a1, v105, a3, -v14, a5 & 1);
      v12 = v105 + 80;
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = *(v12 + 108);
  v108 = a2[-4].n128_f32[3];
  if (result.n128_f32[0] >= *(v12 + 28))
  {
    if (v108 >= result.n128_f32[0])
    {
      return result;
    }

    v250 = *(v12 + 112);
    v286 = *(v12 + 128);
    v322 = *(v12 + 144);
    v178 = *(v12 + 80);
    v214 = *(v12 + 96);
    *(v12 + 80) = *v9;
    v120 = a2[-1];
    v122 = a2[-4];
    v121 = a2[-3];
    *(v12 + 128) = a2[-2];
    *(v12 + 144) = v120;
    *(v12 + 96) = v122;
    *(v12 + 112) = v121;
    *v9 = v178;
    a2[-1] = v322;
    a2[-2] = v286;
    a2[-3] = v250;
    result = v214;
    a2[-4] = v214;
    result.n128_u32[0] = *(v12 + 108);
    if (result.n128_f32[0] >= *(v12 + 28))
    {
      return result;
    }

    goto LABEL_103;
  }

  if (v108 >= result.n128_f32[0])
  {
    v181 = *v12;
    v289 = *(v12 + 48);
    v325 = *(v12 + 64);
    v217 = *(v12 + 16);
    v253 = *(v12 + 32);
    v130 = *(v12 + 144);
    *(v12 + 48) = *(v12 + 128);
    *(v12 + 64) = v130;
    v131 = *(v12 + 112);
    *(v12 + 16) = *(v12 + 96);
    *(v12 + 32) = v131;
    *v12 = *(v12 + 80);
    result = v181;
    *(v12 + 128) = v289;
    *(v12 + 144) = v325;
    *(v12 + 96) = v217;
    *(v12 + 112) = v253;
    *(v12 + 80) = v181;
    result.n128_u32[0] = a2[-4].n128_u32[3];
    if (result.n128_f32[0] < *(v12 + 108))
    {
      v254 = *(v12 + 112);
      v290 = *(v12 + 128);
      v326 = *(v12 + 144);
      v182 = *(v12 + 80);
      v218 = *(v12 + 96);
      *(v12 + 80) = *v9;
      v132 = a2[-1];
      v134 = a2[-4];
      v133 = a2[-3];
      *(v12 + 128) = a2[-2];
      *(v12 + 144) = v132;
      *(v12 + 96) = v134;
      *(v12 + 112) = v133;
      *v9 = v182;
      a2[-1] = v326;
      a2[-2] = v290;
      a2[-3] = v254;
      result = v218;
      a2[-4] = v218;
    }
  }

  else
  {
    v175 = *v12;
    v283 = *(v12 + 48);
    v319 = *(v12 + 64);
    v211 = *(v12 + 16);
    v247 = *(v12 + 32);
    v109 = a2[-1];
    v111 = a2[-4];
    v110 = a2[-3];
    *(v12 + 48) = a2[-2];
    *(v12 + 64) = v109;
    *(v12 + 16) = v111;
    *(v12 + 32) = v110;
    *v12 = *v9;
    a2[-4] = v211;
    a2[-3] = v247;
    a2[-2] = v283;
    a2[-1] = v319;
    result = v175;
    *v9 = v175;
  }

  return result;
}

__n128 sub_254B831C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 28);
  v6 = *(a3 + 28);
  if (v5 >= *(a1 + 28))
  {
    if (v6 < v5)
    {
      v67 = *(a2 + 32);
      v78 = *(a2 + 48);
      v89 = *(a2 + 64);
      v45 = *a2;
      v56 = *(a2 + 16);
      *a2 = *a3;
      v10 = *(a3 + 64);
      v12 = *(a3 + 16);
      v11 = *(a3 + 32);
      *(a2 + 48) = *(a3 + 48);
      *(a2 + 64) = v10;
      *(a2 + 16) = v12;
      *(a2 + 32) = v11;
      *(a3 + 48) = v78;
      *(a3 + 64) = v89;
      *(a3 + 16) = v56;
      *(a3 + 32) = v67;
      result = v45;
      *a3 = v45;
      if (*(a2 + 28) < *(a1 + 28))
      {
        v68 = *(a1 + 32);
        v79 = *(a1 + 48);
        v90 = *(a1 + 64);
        v46 = *a1;
        v57 = *(a1 + 16);
        *a1 = *a2;
        v14 = *(a2 + 64);
        v16 = *(a2 + 16);
        v15 = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v14;
        *(a1 + 16) = v16;
        *(a1 + 32) = v15;
        *(a2 + 48) = v79;
        *(a2 + 64) = v90;
        *(a2 + 16) = v57;
        *(a2 + 32) = v68;
        result = v46;
        *a2 = v46;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v66 = *(a1 + 32);
      v77 = *(a1 + 48);
      v88 = *(a1 + 64);
      v44 = *a1;
      v55 = *(a1 + 16);
      *a1 = *a3;
      v7 = *(a3 + 64);
      v9 = *(a3 + 16);
      v8 = *(a3 + 32);
      *(a1 + 48) = *(a3 + 48);
      *(a1 + 64) = v7;
      *(a1 + 16) = v9;
      *(a1 + 32) = v8;
LABEL_9:
      *(a3 + 48) = v77;
      *(a3 + 64) = v88;
      *(a3 + 16) = v55;
      *(a3 + 32) = v66;
      result = v44;
      *a3 = v44;
      goto LABEL_10;
    }

    v69 = *(a1 + 32);
    v80 = *(a1 + 48);
    v91 = *(a1 + 64);
    v47 = *a1;
    v58 = *(a1 + 16);
    *a1 = *a2;
    v17 = *(a2 + 64);
    v19 = *(a2 + 16);
    v18 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v17;
    *(a1 + 16) = v19;
    *(a1 + 32) = v18;
    *(a2 + 48) = v80;
    *(a2 + 64) = v91;
    *(a2 + 16) = v58;
    *(a2 + 32) = v69;
    result = v47;
    *a2 = v47;
    if (*(a3 + 28) < *(a2 + 28))
    {
      v66 = *(a2 + 32);
      v77 = *(a2 + 48);
      v88 = *(a2 + 64);
      v44 = *a2;
      v55 = *(a2 + 16);
      *a2 = *a3;
      v20 = *(a3 + 64);
      v22 = *(a3 + 16);
      v21 = *(a3 + 32);
      *(a2 + 48) = *(a3 + 48);
      *(a2 + 64) = v20;
      *(a2 + 16) = v22;
      *(a2 + 32) = v21;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 28) < *(a3 + 28))
  {
    v70 = *(a3 + 32);
    v81 = *(a3 + 48);
    v92 = *(a3 + 64);
    v48 = *a3;
    v59 = *(a3 + 16);
    *a3 = *a4;
    v23 = *(a4 + 64);
    v25 = *(a4 + 16);
    v24 = *(a4 + 32);
    *(a3 + 48) = *(a4 + 48);
    *(a3 + 64) = v23;
    *(a3 + 16) = v25;
    *(a3 + 32) = v24;
    *(a4 + 48) = v81;
    *(a4 + 64) = v92;
    *(a4 + 16) = v59;
    *(a4 + 32) = v70;
    result = v48;
    *a4 = v48;
    if (*(a3 + 28) < *(a2 + 28))
    {
      v71 = *(a2 + 32);
      v82 = *(a2 + 48);
      v93 = *(a2 + 64);
      v49 = *a2;
      v60 = *(a2 + 16);
      *a2 = *a3;
      v26 = *(a3 + 64);
      v28 = *(a3 + 16);
      v27 = *(a3 + 32);
      *(a2 + 48) = *(a3 + 48);
      *(a2 + 64) = v26;
      *(a2 + 16) = v28;
      *(a2 + 32) = v27;
      *(a3 + 48) = v82;
      *(a3 + 64) = v93;
      *(a3 + 16) = v60;
      *(a3 + 32) = v71;
      result = v49;
      *a3 = v49;
      if (*(a2 + 28) < *(a1 + 28))
      {
        v72 = *(a1 + 32);
        v83 = *(a1 + 48);
        v94 = *(a1 + 64);
        v50 = *a1;
        v61 = *(a1 + 16);
        *a1 = *a2;
        v29 = *(a2 + 64);
        v31 = *(a2 + 16);
        v30 = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v29;
        *(a1 + 16) = v31;
        *(a1 + 32) = v30;
        *(a2 + 48) = v83;
        *(a2 + 64) = v94;
        *(a2 + 16) = v61;
        *(a2 + 32) = v72;
        result = v50;
        *a2 = v50;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 28);
  if (result.n128_f32[0] < *(a4 + 28))
  {
    v73 = *(a4 + 32);
    v84 = *(a4 + 48);
    v95 = *(a4 + 64);
    v51 = *a4;
    v62 = *(a4 + 16);
    *a4 = *a5;
    v32 = *(a5 + 64);
    v34 = *(a5 + 16);
    v33 = *(a5 + 32);
    *(a4 + 48) = *(a5 + 48);
    *(a4 + 64) = v32;
    *(a4 + 16) = v34;
    *(a4 + 32) = v33;
    *(a5 + 48) = v84;
    *(a5 + 64) = v95;
    *(a5 + 16) = v62;
    *(a5 + 32) = v73;
    result = v51;
    *a5 = v51;
    result.n128_u32[0] = *(a4 + 28);
    if (result.n128_f32[0] < *(a3 + 28))
    {
      v74 = *(a3 + 32);
      v85 = *(a3 + 48);
      v96 = *(a3 + 64);
      v52 = *a3;
      v63 = *(a3 + 16);
      *a3 = *a4;
      v35 = *(a4 + 64);
      v37 = *(a4 + 16);
      v36 = *(a4 + 32);
      *(a3 + 48) = *(a4 + 48);
      *(a3 + 64) = v35;
      *(a3 + 16) = v37;
      *(a3 + 32) = v36;
      *(a4 + 48) = v85;
      *(a4 + 64) = v96;
      *(a4 + 16) = v63;
      *(a4 + 32) = v74;
      result = v52;
      *a4 = v52;
      result.n128_u32[0] = *(a3 + 28);
      if (result.n128_f32[0] < *(a2 + 28))
      {
        v75 = *(a2 + 32);
        v86 = *(a2 + 48);
        v97 = *(a2 + 64);
        v53 = *a2;
        v64 = *(a2 + 16);
        *a2 = *a3;
        v38 = *(a3 + 64);
        v40 = *(a3 + 16);
        v39 = *(a3 + 32);
        *(a2 + 48) = *(a3 + 48);
        *(a2 + 64) = v38;
        *(a2 + 16) = v40;
        *(a2 + 32) = v39;
        *(a3 + 48) = v86;
        *(a3 + 64) = v97;
        *(a3 + 16) = v64;
        *(a3 + 32) = v75;
        result = v53;
        *a3 = v53;
        result.n128_u32[0] = *(a2 + 28);
        if (result.n128_f32[0] < *(a1 + 28))
        {
          v76 = *(a1 + 32);
          v87 = *(a1 + 48);
          v98 = *(a1 + 64);
          v54 = *a1;
          v65 = *(a1 + 16);
          *a1 = *a2;
          v41 = *(a2 + 64);
          v43 = *(a2 + 16);
          v42 = *(a2 + 32);
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 64) = v41;
          *(a1 + 16) = v43;
          *(a1 + 32) = v42;
          *(a2 + 48) = v87;
          *(a2 + 64) = v98;
          *(a2 + 16) = v65;
          *(a2 + 32) = v76;
          result = v54;
          *a2 = v54;
        }
      }
    }
  }

  return result;
}

uint64_t sub_254B835D0(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 80);
    if ((result + 80) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[27];
        if (v6 < v4[7])
        {
          *v15 = *v2;
          *&v15[12] = *(v2 + 12);
          v12 = *(v4 + 7);
          v13 = *(v4 + 8);
          v14 = *(v4 + 9);
          v7 = v3;
          while (1)
          {
            v8 = (result + v7);
            v9 = *(result + v7 + 48);
            *(v8 + 7) = *(result + v7 + 32);
            *(v8 + 8) = v9;
            *(v8 + 9) = *(result + v7 + 64);
            v10 = *(result + v7 + 16);
            *(v8 + 5) = *(result + v7);
            *(v8 + 6) = v10;
            if (!v7)
            {
              break;
            }

            v7 -= 80;
            if (v6 >= *(v8 - 13))
            {
              v11 = result + v7 + 80;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = *v15;
          *(v11 + 12) = *&v15[12];
          *(v11 + 28) = v6;
          *(v11 + 32) = v12;
          *(v11 + 48) = v13;
          *(v11 + 64) = v14;
        }

        v2 = v5 + 5;
        v3 += 80;
        v4 = v5;
      }

      while (v5 + 5 != a2);
    }
  }

  return result;
}

uint64_t sub_254B836A8(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 80;
    if (result + 80 != a2)
    {
      do
      {
        v3 = v2;
        v4 = *(result + 108);
        if (v4 < *(result + 28))
        {
          *v10 = *v2;
          *&v10[12] = *(v2 + 12);
          v7 = *(result + 112);
          v8 = *(result + 128);
          v9 = *(result + 144);
          do
          {
            v5 = *(v2 - 32);
            *(v2 + 32) = *(v2 - 48);
            *(v2 + 48) = v5;
            *(v2 + 64) = *(v2 - 16);
            v6 = *(v2 - 64);
            *v2 = *(v2 - 80);
            *(v2 + 16) = v6;
            LODWORD(v6) = *(v2 - 132);
            v2 -= 80;
          }

          while (v4 < *&v6);
          *v2 = *v10;
          *(v2 + 12) = *&v10[12];
          *(v2 + 28) = v4;
          *(v2 + 32) = v7;
          *(v2 + 48) = v8;
          *(v2 + 64) = v9;
        }

        v2 = v3 + 80;
        result = v3;
      }

      while (v3 + 80 != a2);
    }
  }

  return result;
}

unint64_t sub_254B8375C(uint64_t a1, float *a2)
{
  *v23 = *a1;
  *&v23[12] = *(a1 + 12);
  v2 = *(a1 + 28);
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 64);
  if (v2 >= *(a2 - 13))
  {
    v6 = a1 + 80;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 28);
      v6 += 80;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3 + 80;
      v5 = *(v3 + 108);
      v3 += 80;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 20;
      v9 = *(a2 - 13);
      a2 -= 20;
    }

    while (v2 < v9);
  }

  while (v4 < v8)
  {
    v24 = *v4;
    v27 = *(v4 + 48);
    v28 = *(v4 + 64);
    v25 = *(v4 + 16);
    v26 = *(v4 + 32);
    v10 = *(v8 + 4);
    v12 = *(v8 + 1);
    v11 = *(v8 + 2);
    *(v4 + 48) = *(v8 + 3);
    *(v4 + 64) = v10;
    *(v4 + 16) = v12;
    *(v4 + 32) = v11;
    *v4 = *v8;
    *(v8 + 3) = v27;
    *(v8 + 4) = v28;
    *(v8 + 1) = v25;
    *(v8 + 2) = v26;
    *v8 = v24;
    do
    {
      v13 = *(v4 + 108);
      v4 += 80;
    }

    while (v2 >= v13);
    do
    {
      v14 = *(v8 - 13);
      v8 -= 20;
    }

    while (v2 < v14);
  }

  v15 = (v4 - 80);
  if (v4 - 80 != a1)
  {
    *a1 = *v15;
    v16 = *(v4 - 64);
    v17 = *(v4 - 48);
    v18 = *(v4 - 16);
    *(a1 + 48) = *(v4 - 32);
    *(a1 + 64) = v18;
    *(a1 + 16) = v16;
    *(a1 + 32) = v17;
  }

  *(v4 - 68) = *&v23[12];
  *v15 = *v23;
  *(v4 - 52) = v2;
  *(v4 - 32) = v21;
  *(v4 - 16) = v22;
  *(v4 - 48) = v20;
  return v4;
}

unint64_t sub_254B838B8(uint64_t a1, float *a2)
{
  v2 = 0;
  *v24 = *a1;
  *&v24[12] = *(a1 + 12);
  v3 = *(a1 + 28);
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = *(a1 + 64);
  do
  {
    v4 = *(a1 + v2 + 108);
    v2 += 80;
  }

  while (v4 < v3);
  v5 = a1 + v2;
  if (v2 == 80)
  {
    while (v5 < a2)
    {
      v6 = a2 - 20;
      v8 = *(a2 - 13);
      a2 -= 20;
      if (v8 < v3)
      {
        goto LABEL_9;
      }
    }

    v6 = a2;
  }

  else
  {
    do
    {
      v6 = a2 - 20;
      v7 = *(a2 - 13);
      a2 -= 20;
    }

    while (v7 >= v3);
  }

LABEL_9:
  v9 = a1 + v2;
  if (v5 < v6)
  {
    v10 = v6;
    do
    {
      v27 = *(v9 + 32);
      v28 = *(v9 + 48);
      v29 = *(v9 + 64);
      v25 = *v9;
      v26 = *(v9 + 16);
      v12 = *(v10 + 1);
      v11 = *(v10 + 2);
      v13 = *(v10 + 4);
      *(v9 + 48) = *(v10 + 3);
      *(v9 + 64) = v13;
      *(v9 + 16) = v12;
      *(v9 + 32) = v11;
      *v9 = *v10;
      *v10 = v25;
      *(v10 + 3) = v28;
      *(v10 + 4) = v29;
      *(v10 + 1) = v26;
      *(v10 + 2) = v27;
      do
      {
        v14 = *(v9 + 108);
        v9 += 80;
      }

      while (v14 < v3);
      do
      {
        v15 = *(v10 - 13);
        v10 -= 20;
      }

      while (v15 >= v3);
    }

    while (v9 < v10);
  }

  v16 = (v9 - 80);
  if (v9 - 80 != a1)
  {
    *a1 = *v16;
    v17 = *(v9 - 64);
    v18 = *(v9 - 48);
    v19 = *(v9 - 16);
    *(a1 + 48) = *(v9 - 32);
    *(a1 + 64) = v19;
    *(a1 + 16) = v17;
    *(a1 + 32) = v18;
  }

  *(v9 - 68) = *&v24[12];
  *v16 = *v24;
  *(v9 - 52) = v3;
  *(v9 - 32) = v22;
  *(v9 - 16) = v23;
  *(v9 - 48) = v21;
  return v9 - 80;
}

BOOL sub_254B83A18(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = (a2 - 80);
      v8 = *(a1 + 108);
      v9 = *(a2 - 52);
      if (v8 < *(a1 + 28))
      {
        if (v9 >= v8)
        {
          v131 = *(a1 + 32);
          v148 = *(a1 + 48);
          v44 = *(a1 + 80);
          v164 = *(a1 + 64);
          v97 = *a1;
          v114 = *(a1 + 16);
          v45 = *(a1 + 96);
          v46 = *(a1 + 128);
          v47 = *(a1 + 144);
          *(a1 + 32) = *(a1 + 112);
          *(a1 + 48) = v46;
          *a1 = v44;
          *(a1 + 16) = v45;
          *(a1 + 64) = v47;
          *(a1 + 80) = v97;
          *(a1 + 128) = v148;
          *(a1 + 144) = v164;
          *(a1 + 96) = v114;
          *(a1 + 112) = v131;
          if (*(a2 - 52) >= *(a1 + 108))
          {
            return 1;
          }

          v123 = *(a1 + 112);
          v140 = *(a1 + 128);
          v156 = *(a1 + 144);
          v89 = *(a1 + 80);
          v106 = *(a1 + 96);
          *(a1 + 80) = *v7;
          v48 = *(a2 - 16);
          v50 = *(a2 - 64);
          v49 = *(a2 - 48);
          *(a1 + 128) = *(a2 - 32);
          *(a1 + 144) = v48;
          *(a1 + 96) = v50;
          *(a1 + 112) = v49;
        }

        else
        {
          v123 = *(a1 + 32);
          v140 = *(a1 + 48);
          v156 = *(a1 + 64);
          v89 = *a1;
          v106 = *(a1 + 16);
          *a1 = *v7;
          v10 = *(a2 - 16);
          v12 = *(a2 - 64);
          v11 = *(a2 - 48);
          *(a1 + 48) = *(a2 - 32);
          *(a1 + 64) = v10;
          *(a1 + 16) = v12;
          *(a1 + 32) = v11;
        }

        *(a2 - 32) = v140;
        *(a2 - 16) = v156;
        *(a2 - 64) = v106;
        *(a2 - 48) = v123;
        result = 1;
        *v7 = v89;
        return result;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v126 = *(a1 + 112);
      v143 = *(a1 + 128);
      v159 = *(a1 + 144);
      v92 = *(a1 + 80);
      v109 = *(a1 + 96);
      *(a1 + 80) = *v7;
      v25 = *(a2 - 16);
      v27 = *(a2 - 64);
      v26 = *(a2 - 48);
      *(a1 + 128) = *(a2 - 32);
      *(a1 + 144) = v25;
      *(a1 + 96) = v27;
      *(a1 + 112) = v26;
      *(a2 - 32) = v143;
      *(a2 - 16) = v159;
      *(a2 - 64) = v109;
      *(a2 - 48) = v126;
      *v7 = v92;
      if (*(a1 + 108) >= *(a1 + 28))
      {
        return 1;
      }

LABEL_51:
      v138 = *(a1 + 32);
      v154 = *(a1 + 48);
      v83 = *(a1 + 80);
      v170 = *(a1 + 64);
      v104 = *a1;
      v121 = *(a1 + 16);
      v84 = *(a1 + 96);
      v85 = *(a1 + 128);
      v86 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v85;
      *a1 = v83;
      *(a1 + 16) = v84;
      *(a1 + 64) = v86;
      *(a1 + 80) = v104;
      *(a1 + 128) = v154;
      *(a1 + 144) = v170;
      *(a1 + 96) = v121;
      *(a1 + 112) = v138;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_254B831C0(a1, a1 + 80, a1 + 160, a1 + 240, a2 - 80);
      return 1;
    }

    v19 = *(a1 + 108);
    v20 = *(a1 + 28);
    v21 = *(a1 + 188);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v129 = *(a1 + 112);
        v146 = *(a1 + 128);
        v35 = *(a1 + 160);
        v162 = *(a1 + 144);
        v95 = *(a1 + 80);
        v112 = *(a1 + 96);
        v36 = *(a1 + 176);
        v37 = *(a1 + 208);
        v38 = *(a1 + 224);
        *(a1 + 112) = *(a1 + 192);
        *(a1 + 128) = v37;
        *(a1 + 80) = v35;
        *(a1 + 96) = v36;
        *(a1 + 144) = v38;
        *(a1 + 160) = v95;
        *(a1 + 208) = v146;
        *(a1 + 224) = v162;
        v39 = *(a1 + 108);
        *(a1 + 176) = v112;
        *(a1 + 192) = v129;
        if (v39 < v20)
        {
          v130 = *(a1 + 32);
          v147 = *(a1 + 48);
          v40 = *(a1 + 80);
          v163 = *(a1 + 64);
          v96 = *a1;
          v113 = *(a1 + 16);
          v41 = *(a1 + 96);
          v42 = *(a1 + 128);
          v43 = *(a1 + 144);
          *(a1 + 32) = *(a1 + 112);
          *(a1 + 48) = v42;
          *a1 = v40;
          *(a1 + 16) = v41;
          *(a1 + 64) = v43;
          *(a1 + 80) = v96;
          *(a1 + 128) = v147;
          *(a1 + 144) = v163;
          *(a1 + 96) = v113;
          *(a1 + 112) = v130;
        }
      }
    }

    else
    {
      if (v21 < v19)
      {
        v125 = *(a1 + 32);
        v142 = *(a1 + 48);
        v158 = *(a1 + 64);
        v91 = *a1;
        v108 = *(a1 + 16);
        v22 = *(a1 + 208);
        *(a1 + 32) = *(a1 + 192);
        *(a1 + 48) = v22;
        *(a1 + 64) = *(a1 + 224);
        v23 = *(a1 + 176);
        *a1 = *(a1 + 160);
        *(a1 + 16) = v23;
        v24 = v108;
        *(a1 + 208) = v142;
        *(a1 + 224) = v158;
        *(a1 + 192) = v125;
        *(a1 + 160) = v91;
LABEL_47:
        *(a1 + 176) = v24;
        goto LABEL_48;
      }

      v134 = *(a1 + 32);
      v150 = *(a1 + 48);
      v66 = *(a1 + 80);
      v166 = *(a1 + 64);
      v100 = *a1;
      v117 = *(a1 + 16);
      v67 = *(a1 + 96);
      v68 = *(a1 + 128);
      v69 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v68;
      *a1 = v66;
      *(a1 + 16) = v67;
      *(a1 + 64) = v69;
      *(a1 + 80) = v100;
      *(a1 + 96) = v117;
      *(a1 + 112) = v134;
      LODWORD(v67) = *(a1 + 108);
      *(a1 + 128) = v150;
      *(a1 + 144) = v166;
      if (v21 < *&v67)
      {
        v135 = *(a1 + 112);
        v151 = *(a1 + 128);
        v70 = *(a1 + 160);
        v167 = *(a1 + 144);
        v101 = *(a1 + 80);
        v118 = *(a1 + 96);
        v71 = *(a1 + 176);
        v72 = *(a1 + 208);
        v73 = *(a1 + 224);
        *(a1 + 112) = *(a1 + 192);
        *(a1 + 128) = v72;
        *(a1 + 80) = v70;
        *(a1 + 96) = v71;
        v24 = v118;
        *(a1 + 144) = v73;
        *(a1 + 160) = v101;
        *(a1 + 208) = v151;
        *(a1 + 224) = v167;
        *(a1 + 192) = v135;
        goto LABEL_47;
      }
    }

LABEL_48:
    if (*(a2 - 52) >= *(a1 + 188))
    {
      return 1;
    }

    v74 = (a2 - 80);
    v136 = *(a1 + 192);
    v152 = *(a1 + 208);
    v168 = *(a1 + 224);
    v102 = *(a1 + 160);
    v119 = *(a1 + 176);
    *(a1 + 160) = *(a2 - 80);
    v75 = *(a2 - 16);
    v77 = *(a2 - 64);
    v76 = *(a2 - 48);
    *(a1 + 208) = *(a2 - 32);
    *(a1 + 224) = v75;
    *(a1 + 176) = v77;
    *(a1 + 192) = v76;
    v74[3] = v152;
    v74[4] = v168;
    v74[1] = v119;
    v74[2] = v136;
    *v74 = v102;
    if (*(a1 + 188) >= *(a1 + 108))
    {
      return 1;
    }

    v137 = *(a1 + 112);
    v153 = *(a1 + 128);
    v78 = *(a1 + 160);
    v169 = *(a1 + 144);
    v103 = *(a1 + 80);
    v120 = *(a1 + 96);
    v79 = *(a1 + 176);
    v80 = *(a1 + 208);
    v81 = *(a1 + 224);
    *(a1 + 112) = *(a1 + 192);
    *(a1 + 128) = v80;
    *(a1 + 80) = v78;
    *(a1 + 96) = v79;
    *(a1 + 144) = v81;
    *(a1 + 160) = v103;
    *(a1 + 208) = v153;
    *(a1 + 224) = v169;
    v82 = *(a1 + 108);
    LODWORD(v80) = *(a1 + 28);
    *(a1 + 176) = v120;
    *(a1 + 192) = v137;
    if (v82 >= *&v80)
    {
      return 1;
    }

    goto LABEL_51;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 52) < *(a1 + 28))
    {
      v122 = *(a1 + 32);
      v139 = *(a1 + 48);
      v155 = *(a1 + 64);
      v88 = *a1;
      v105 = *(a1 + 16);
      *a1 = *(a2 - 80);
      v3 = *(a2 - 16);
      v5 = *(a2 - 64);
      v4 = *(a2 - 48);
      *(a1 + 48) = *(a2 - 32);
      *(a1 + 64) = v3;
      *(a1 + 16) = v5;
      *(a1 + 32) = v4;
      *(a2 - 32) = v139;
      *(a2 - 16) = v155;
      *(a2 - 64) = v105;
      *(a2 - 48) = v122;
      result = 1;
      *(a2 - 80) = v88;
      return result;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 160;
  v14 = *(a1 + 108);
  v15 = *(a1 + 28);
  v16 = *(a1 + 188);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v127 = *(a1 + 112);
      v144 = *(a1 + 128);
      v160 = *(a1 + 144);
      v93 = *(a1 + 80);
      v110 = *(a1 + 96);
      v28 = *(a1 + 208);
      *(a1 + 112) = *(a1 + 192);
      *(a1 + 128) = v28;
      *(a1 + 144) = *(a1 + 224);
      v29 = *(a1 + 176);
      *(a1 + 80) = *v13;
      *(a1 + 96) = v29;
      *(a1 + 208) = v144;
      *(a1 + 224) = v160;
      *(a1 + 176) = v110;
      *(a1 + 192) = v127;
      v30 = *(a1 + 108);
      *v13 = v93;
      if (v30 < v15)
      {
        v128 = *(a1 + 32);
        v145 = *(a1 + 48);
        v31 = *(a1 + 80);
        v161 = *(a1 + 64);
        v94 = *a1;
        v111 = *(a1 + 16);
        v32 = *(a1 + 96);
        v33 = *(a1 + 128);
        v34 = *(a1 + 144);
        *(a1 + 32) = *(a1 + 112);
        *(a1 + 48) = v33;
        *a1 = v31;
        *(a1 + 16) = v32;
        *(a1 + 64) = v34;
        *(a1 + 80) = v94;
        *(a1 + 128) = v145;
        *(a1 + 144) = v161;
        *(a1 + 96) = v111;
        *(a1 + 112) = v128;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v132 = *(a1 + 32);
      v149 = *(a1 + 48);
      v51 = *(a1 + 80);
      v165 = *(a1 + 64);
      v98 = *a1;
      v115 = *(a1 + 16);
      v52 = *(a1 + 96);
      v53 = *(a1 + 128);
      v54 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v53;
      *a1 = v51;
      *(a1 + 16) = v52;
      *(a1 + 64) = v54;
      *(a1 + 80) = v98;
      *(a1 + 96) = v115;
      *(a1 + 112) = v132;
      LODWORD(v52) = *(a1 + 108);
      *(a1 + 128) = v149;
      *(a1 + 144) = v165;
      if (v16 >= *&v52)
      {
        goto LABEL_34;
      }

      v124 = *(a1 + 112);
      v141 = *(a1 + 128);
      v157 = *(a1 + 144);
      v90 = *(a1 + 80);
      v107 = *(a1 + 96);
      v55 = *(a1 + 208);
      *(a1 + 112) = *(a1 + 192);
      *(a1 + 128) = v55;
      *(a1 + 144) = *(a1 + 224);
      v56 = *(a1 + 176);
      *(a1 + 80) = *v13;
      *(a1 + 96) = v56;
    }

    else
    {
      v124 = *(a1 + 32);
      v141 = *(a1 + 48);
      v157 = *(a1 + 64);
      v90 = *a1;
      v107 = *(a1 + 16);
      v17 = *(a1 + 208);
      *(a1 + 32) = *(a1 + 192);
      *(a1 + 48) = v17;
      *(a1 + 64) = *(a1 + 224);
      v18 = *(a1 + 176);
      *a1 = *v13;
      *(a1 + 16) = v18;
    }

    *(a1 + 208) = v141;
    *(a1 + 224) = v157;
    *(a1 + 176) = v107;
    *(a1 + 192) = v124;
    *v13 = v90;
  }

LABEL_34:
  v57 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v58 = 0;
  v59 = 0;
  while (1)
  {
    v60 = *(v57 + 28);
    if (v60 < *(v13 + 28))
    {
      *v87 = *v57;
      *&v87[12] = *(v57 + 12);
      v99 = *(v57 + 32);
      v116 = *(v57 + 48);
      v133 = *(v57 + 64);
      v61 = v58;
      while (1)
      {
        v62 = a1 + v61;
        v63 = *(a1 + v61 + 208);
        *(v62 + 272) = *(a1 + v61 + 192);
        *(v62 + 288) = v63;
        *(v62 + 304) = *(a1 + v61 + 224);
        v64 = *(a1 + v61 + 176);
        *(v62 + 240) = *(a1 + v61 + 160);
        *(v62 + 256) = v64;
        if (v61 == -160)
        {
          break;
        }

        v61 -= 80;
        if (v60 >= *(v62 + 108))
        {
          v65 = a1 + v61 + 240;
          goto LABEL_42;
        }
      }

      v65 = a1;
LABEL_42:
      *v65 = *v87;
      *(v65 + 12) = *&v87[12];
      *(v65 + 28) = v60;
      *(v65 + 32) = v99;
      *(v65 + 48) = v116;
      ++v59;
      *(v65 + 64) = v133;
      if (v59 == 8)
      {
        return v57 + 80 == a2;
      }
    }

    v13 = v57;
    v58 += 80;
    v57 += 80;
    if (v57 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_254B84148(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t a4, __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 81)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = a1 + 80 * v11;
      do
      {
        a5 = sub_254B843A8(a1, a5, a4, v10, v13);
        v13 -= 80;
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
        if (v14[1].n128_f32[3] < *(a1 + 28))
        {
          v39 = v14[2];
          v41 = v14[3];
          v43 = v14[4];
          v35 = *v14;
          v37 = v14[1];
          *v14 = *a1;
          v15 = *(a1 + 64);
          v17 = *(a1 + 16);
          v16 = *(a1 + 32);
          v14[3] = *(a1 + 48);
          v14[4] = v15;
          v14[1] = v17;
          v14[2] = v16;
          *(a1 + 48) = v41;
          *(a1 + 64) = v43;
          *(a1 + 16) = v37;
          *(a1 + 32) = v39;
          *a1 = v35;
          sub_254B843A8(a1, v35, a4, v10, a1);
        }

        v14 += 5;
      }

      while (v14 != a3);
    }

    if (v9 >= 81)
    {
      v18 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
      do
      {
        v19 = 0;
        v40 = *(a1 + 32);
        v42 = *(a1 + 48);
        v44 = *(a1 + 64);
        v36 = *a1;
        v38 = *(a1 + 16);
        v20 = a1;
        do
        {
          v21 = &v20[5 * v19];
          v22 = v21 + 5;
          v23 = (2 * v19) | 1;
          v19 = 2 * v19 + 2;
          if (v19 >= v18)
          {
            v19 = v23;
          }

          else
          {
            v24 = v21[6].n128_f32[3];
            v25 = v21[11].n128_f32[3];
            v26 = v21 + 10;
            if (v24 >= v25)
            {
              v19 = v23;
            }

            else
            {
              v22 = v26;
            }
          }

          *v20 = *v22;
          v27 = v22[1];
          v28 = v22[2];
          v29 = v22[4];
          v20[3] = v22[3];
          v20[4] = v29;
          v20[1] = v27;
          v20[2] = v28;
          v20 = v22;
        }

        while (v19 <= ((v18 - 2) >> 1));
        v7 -= 5;
        if (v22 == v7)
        {
          *v22 = v36;
          v22[3] = v42;
          v22[4] = v44;
          v22[1] = v38;
          v22[2] = v40;
        }

        else
        {
          *v22 = *v7;
          v30 = v7[1];
          v31 = v7[2];
          v32 = v7[4];
          v22[3] = v7[3];
          v22[4] = v32;
          v22[1] = v30;
          v22[2] = v31;
          v7[2] = v40;
          v7[3] = v42;
          v7[4] = v44;
          *v7 = v36;
          v7[1] = v38;
          sub_254B844D8(a1, &v22[5], v38, a4, 0xCCCCCCCCCCCCCCCDLL * ((&v22[5] - a1) >> 4));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 sub_254B843A8(uint64_t a1, __n128 result, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    if (v5 >= (0xCCCCCCCCCCCCCCCDLL * ((a5 - a1) >> 4)))
    {
      v6 = (0x999999999999999ALL * ((a5 - a1) >> 4)) | 1;
      v7 = a1 + 80 * v6;
      if ((0x999999999999999ALL * ((a5 - a1) >> 4) + 2) < a4 && *(v7 + 28) < *(v7 + 108))
      {
        v7 += 80;
        v6 = 0x999999999999999ALL * ((a5 - a1) >> 4) + 2;
      }

      result.n128_u32[0] = *(a5 + 28);
      if (*(v7 + 28) >= result.n128_f32[0])
      {
        *v17 = *a5;
        *&v17[12] = *(a5 + 12);
        v14 = *(a5 + 32);
        v15 = *(a5 + 48);
        v16 = *(a5 + 64);
        do
        {
          v8 = a5;
          a5 = v7;
          *v8 = *v7;
          v9 = *(v7 + 16);
          v10 = *(v7 + 32);
          v11 = *(v7 + 64);
          v8[3] = *(v7 + 48);
          v8[4] = v11;
          v8[1] = v9;
          v8[2] = v10;
          if (v5 < v6)
          {
            break;
          }

          v12 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = a1 + 80 * v6;
          v13 = v12 + 2;
          if (v13 < a4 && *(v7 + 28) < *(v7 + 108))
          {
            v7 += 80;
            v6 = v13;
          }
        }

        while (*(v7 + 28) >= result.n128_f32[0]);
        *(a5 + 12) = *&v17[12];
        *a5 = *v17;
        *(a5 + 28) = result.n128_u32[0];
        result = v16;
        *(a5 + 32) = v14;
        *(a5 + 48) = v15;
        *(a5 + 64) = v16;
      }
    }
  }

  return result;
}

__n128 sub_254B844D8(uint64_t a1, uint64_t a2, __n128 result, uint64_t a4, uint64_t a5)
{
  if (a5 >= 2)
  {
    v5 = (a5 - 2) >> 1;
    v6 = a1 + 80 * v5;
    result.n128_u32[0] = *(a2 - 52);
    if (*(v6 + 28) < result.n128_f32[0])
    {
      v7 = a2 - 80;
      *v15 = *(a2 - 80);
      *&v15[12] = *(a2 - 68);
      v12 = *(a2 - 48);
      v13 = *(a2 - 32);
      v14 = *(a2 - 16);
      do
      {
        v8 = v7;
        v7 = v6;
        *v8 = *v6;
        v9 = *(v6 + 16);
        v10 = *(v6 + 32);
        v11 = *(v6 + 64);
        v8[3] = *(v6 + 48);
        v8[4] = v11;
        v8[1] = v9;
        v8[2] = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 80 * v5;
      }

      while (*(v6 + 28) < result.n128_f32[0]);
      *v7 = *v15;
      *(v7 + 12) = *&v15[12];
      *(v7 + 28) = result.n128_u32[0];
      *(v7 + 32) = v12;
      *(v7 + 48) = v13;
      result = v14;
      *(v7 + 64) = v14;
    }
  }

  return result;
}

void sub_254B84590(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x14C1BACF914C1BADLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 296 * ((296 * a2 - 296) / 0x128) + 296;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x14C1BACF914C1BADLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0xDD67C8A60DD67CLL)
    {
      sub_254B32E20();
    }

    v7 = 0x14C1BACF914C1BADLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x6EB3E45306EB3ELL)
    {
      v9 = 0xDD67C8A60DD67CLL;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      sub_254B333D0(a1, v9);
    }

    v16 = 0;
    v17 = 296 * v6;
    v11 = 296 * ((296 * a2 - 296) / 0x128) + 296;
    bzero((296 * v6), v11);
    v18 = 296 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 296 * v6 + *a1 - v12;
    sub_254B8474C(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    sub_254B84818(&v16);
  }
}

void sub_254B84738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_254B84818(va);
  _Unwind_Resume(a1);
}

uint64_t sub_254B8474C(uint64_t a1, void *a2, void *a3, uint64_t a4)
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
      sub_254B334D0(a4, v7);
      v7 += 296;
      a4 = v12 + 296;
      v12 += 296;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_254B7F290(a1, v5);
      v5 += 37;
    }
  }

  return sub_254B33C14(v9);
}

uint64_t sub_254B84818(uint64_t a1)
{
  sub_254B84850(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_254B84850(uint64_t result, uint64_t a2)
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
    *(v3 + 16) = v4 - 296;
    result = sub_254B7F290(v5, (v4 - 296));
  }

  return result;
}

uint64_t sub_254B84898(uint64_t a1)
{
  result = sub_254B5261C(a1);
  *result = &unk_286700718;
  *(result + 12) = 0;
  return result;
}

void sub_254B848D8()
{
  nullsub_2();

  JUMPOUT(0x259C24E00);
}

void *sub_254B84910(uint64_t a1, void *a2, int a3, uint64_t a4, const void **a5)
{
  if (*(a1 + 12))
  {
    v6 = 12;
  }

  else
  {
    v6 = 9;
  }

  return sub_254B84934(a2, a3, v6, a4, a5);
}

void *sub_254B84934(void *result, int a2, int a3, uint64_t a4, const void **a5)
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = result[2];
  v5 = result[3];
  v106[0] = -3 * v5;
  v106[1] = -3 * v5 + 1;
  v106[2] = 2 - 2 * v5;
  v106[3] = 3 - v5;
  v106[4] = 3;
  v106[5] = v5 + 3;
  v106[6] = 2 * v5 + 2;
  v106[7] = 3 * v5 + 1;
  v106[8] = 3 * v5;
  v106[9] = 3 * v5 - 1;
  v106[10] = 2 * v5 - 2;
  v106[11] = v5 - 3;
  v106[12] = -3;
  v106[13] = -3 - v5;
  v106[14] = (2 * v5) ^ 0xFFFFFFFFFFFFFFFELL;
  v106[15] = -3 * v5 - 1;
  v99 = v6 - 4;
  if ((v6 - 4) >= 5)
  {
    v9 = -1 << a3;
    v10 = *result;
    v11 = result[1] - 4;
    v12 = 4;
    v13 = xmmword_254B8BF70;
    v14 = xmmword_254B8B930;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16.i64[0] = 0x800000008;
    v16.i64[1] = 0x800000008;
    v17 = xmmword_254B8BF80;
    v18 = xmmword_254B8BF90;
    v19 = xmmword_254B8BFA0;
    v20 = xmmword_254B8BFB0;
    v103 = a2;
    v104 = a3;
    v101 = *result;
    v102 = result;
    v100 = v11;
    do
    {
      if (v11 >= 5)
      {
        v21 = v12;
        v22 = 4;
        v105 = v12;
        do
        {
          v23 = 0;
          v24 = (v10 + v22 + result[3] * v12);
          do
          {
            v107.i8[v23] = v24[v106[v23]];
            ++v23;
          }

          while (v23 != 16);
          v25 = 0;
          v26 = *v24;
          v27 = v26 - a2;
          v28 = v26 + a2;
          v29 = vdupq_n_s32(v26 + a2);
          v30 = vdupq_n_s32(v26 - a2);
          v31 = 0uLL;
          v32 = 0uLL;
          v33 = 0uLL;
          v34 = 0uLL;
          v35 = v14;
          v36 = v13;
          do
          {
            v37 = vmovl_u8(*&v107.i8[v25]);
            v38 = vmovl_u16(*v37.i8);
            v39 = vmovl_high_u16(v37);
            v34 = vorrq_s8(vshlq_u32(vandq_s8(vcgtq_s32(v39, v29), v15), v36), v34);
            v33 = vorrq_s8(vshlq_u32(vandq_s8(vcgtq_s32(v38, v29), v15), v35), v33);
            v32 = vorrq_s8(vshlq_u32(vandq_s8(vcgtq_s32(v30, v39), v15), v36), v32);
            v31 = vorrq_s8(vshlq_u32(vandq_s8(vcgtq_s32(v30, v38), v15), v35), v31);
            v25 += 8;
            v35 = vaddq_s32(v35, v16);
            v36 = vaddq_s32(v36, v16);
          }

          while (v25 != 16);
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = vorrq_s8(v31, v32);
          v46 = vorr_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
          v47 = vorrq_s8(v33, v34);
          v48 = vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
          do
          {
            v41 = ((((v48.i32[0] | v48.i32[1] | ((v48.i32[0] | v48.i32[1]) << 16)) >> v40) & 1) + v41) * (((v48.i32[0] | v48.i32[1] | ((v48.i32[0] | v48.i32[1]) << 16)) >> v40) & 1);
            if (v41 <= v44)
            {
              v49 = v44;
            }

            else
            {
              v49 = v41;
            }

            v42 = ((((v46.i32[0] | v46.i32[1] | ((v46.i32[0] | v46.i32[1]) << 16)) >> v40) & 1) + v42) * (((v46.i32[0] | v46.i32[1] | ((v46.i32[0] | v46.i32[1]) << 16)) >> v40) & 1);
            if (v42 <= v49)
            {
              v50 = v49;
            }

            else
            {
              v50 = v42;
            }

            if (v42 > v49 || v41 > v44)
            {
              v43 = v40;
            }

            ++v40;
            v44 = v50;
          }

          while (v40 != 32);
          if (v50 >= a3)
          {
            if (v43 <= 0)
            {
              v52 = -(-v43 & 0xF);
            }

            else
            {
              v52 = v43 & 0xF;
            }

            v53 = v107.u8[v52];
            v54 = v43 - v50;
            if (v53 <= v26)
            {
              if (v50 >= 1)
              {
                do
                {
                  if (v43 <= 0)
                  {
                    v66 = -(-v43 & 0xF);
                  }

                  else
                  {
                    v66 = v43 & 0xF;
                  }

                  v67 = v107.u8[v66];
                  if (v27 > v67)
                  {
                    v68 = 0;
                    v69 = vcgtq_u8(v107, vdupq_n_s8(v67));
                    v70 = vmovl_s8(*v69.i8);
                    v71 = vmovl_high_s8(v69);
                    v72 = vorrq_s8(vorrq_s8(vbicq_s8(v18, vmovl_u16(*v70.i8)), vbicq_s8(v17, vmovl_u16(*v71.i8))), vorrq_s8(vbicq_s8(v20, vmovl_high_u16(v70)), vbicq_s8(v19, vmovl_high_u16(v71))));
                    v73 = vorr_s8(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
                    v74 = v67 + 1;
                    do
                    {
                      v75 = ((v73.i32[0] | v73.i32[1] | ((v73.i32[0] | v73.i32[1]) << 16)) >> v68) | v9;
                      if (v68 > 0xE)
                      {
                        break;
                      }

                      ++v68;
                    }

                    while (v75 != -1);
                    if (v75 == -1)
                    {
                      v27 = v74;
                    }
                  }

                  --v43;
                }

                while (v43 > v54);
              }

              v65 = v26 - v27;
            }

            else
            {
              if (v50 >= 1)
              {
                do
                {
                  if (v43 <= 0)
                  {
                    v55 = -(-v43 & 0xF);
                  }

                  else
                  {
                    v55 = v43 & 0xF;
                  }

                  v56 = v107.u8[v55];
                  if (v28 < v56)
                  {
                    v57 = 0;
                    v58 = vcgtq_u8(vdupq_n_s8(v56), v107);
                    v59 = vmovl_s8(*v58.i8);
                    v60 = vmovl_high_s8(v58);
                    v61 = vorrq_s8(vorrq_s8(vbicq_s8(v18, vmovl_u16(*v59.i8)), vbicq_s8(v17, vmovl_u16(*v60.i8))), vorrq_s8(vbicq_s8(v20, vmovl_high_u16(v59)), vbicq_s8(v19, vmovl_high_u16(v60))));
                    v62 = vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
                    v63 = v56 - 1;
                    do
                    {
                      v64 = ((v62.i32[0] | v62.i32[1] | ((v62.i32[0] | v62.i32[1]) << 16)) >> v57) | v9;
                      if (v57 > 0xE)
                      {
                        break;
                      }

                      ++v57;
                    }

                    while (v64 != -1);
                    if (v64 == -1)
                    {
                      v28 = v63;
                    }
                  }

                  --v43;
                }

                while (v43 > v54);
              }

              v65 = v28 - v26;
            }

            v77 = a5[1];
            v76 = a5[2];
            if (v77 >= v76)
            {
              v79 = *a5;
              v80 = v77 - *a5;
              v81 = v80 >> 2;
              v82 = (v80 >> 2) + 1;
              if (v82 >> 62)
              {
                sub_254B32E20();
              }

              v83 = v76 - v79;
              if (v83 >> 1 > v82)
              {
                v82 = v83 >> 1;
              }

              v84 = v83 >= 0x7FFFFFFFFFFFFFFCLL;
              v85 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v84)
              {
                v85 = v82;
              }

              if (v85)
              {
                sub_254B3383C(a5, v85);
              }

              *(4 * v81) = v65;
              v78 = 4 * v81 + 4;
              memcpy(0, v79, v80);
              v86 = *a5;
              *a5 = 0;
              a5[1] = v78;
              a5[2] = 0;
              if (v86)
              {
                operator delete(v86);
              }

              a2 = v103;
              a3 = v104;
              v10 = v101;
              result = v102;
              v11 = v100;
              v12 = v105;
              v14 = xmmword_254B8B930;
              v13 = xmmword_254B8BF70;
              v15.i64[0] = 0x100000001;
              v15.i64[1] = 0x100000001;
              v16.i64[0] = 0x800000008;
              v16.i64[1] = 0x800000008;
              v18 = xmmword_254B8BF90;
              v17 = xmmword_254B8BF80;
              v20 = xmmword_254B8BFB0;
              v19 = xmmword_254B8BFA0;
            }

            else
            {
              *v77 = v65;
              v78 = (v77 + 4);
            }

            a5[1] = v78;
            v87 = v22;
            v89 = *(a4 + 8);
            v88 = *(a4 + 16);
            if (v89 >= v88)
            {
              v91 = (v89 - *a4) >> 3;
              v92 = v91 + 1;
              if ((v91 + 1) >> 61)
              {
                sub_254B32E20();
              }

              v93 = v88 - *a4;
              if (v93 >> 2 > v92)
              {
                v92 = v93 >> 2;
              }

              if (v93 >= 0x7FFFFFFFFFFFFFF8)
              {
                v94 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v94 = v92;
              }

              if (v94)
              {
                sub_254B35448(a4, v94);
              }

              v95 = (8 * v91);
              *v95 = v87;
              v95[1] = v21;
              v90 = 8 * v91 + 8;
              v96 = *(a4 + 8) - *a4;
              v97 = 8 * v91 - v96;
              memcpy(v95 - v96, *a4, v96);
              v98 = *a4;
              *a4 = v97;
              *(a4 + 8) = v90;
              *(a4 + 16) = 0;
              if (v98)
              {
                operator delete(v98);
              }

              a2 = v103;
              a3 = v104;
              v10 = v101;
              result = v102;
              v11 = v100;
              v12 = v105;
              v14 = xmmword_254B8B930;
              v13 = xmmword_254B8BF70;
              v15.i64[0] = 0x100000001;
              v15.i64[1] = 0x100000001;
              v16.i64[0] = 0x800000008;
              v16.i64[1] = 0x800000008;
              v18 = xmmword_254B8BF90;
              v17 = xmmword_254B8BF80;
              v20 = xmmword_254B8BFB0;
              v19 = xmmword_254B8BFA0;
            }

            else
            {
              *v89 = v87;
              v89[1] = v21;
              v90 = (v89 + 2);
            }

            *(a4 + 8) = v90;
          }

          ++v22;
        }

        while (v22 != v11);
      }

      ++v12;
    }

    while (v12 != v99);
  }

  return result;
}

void sub_254B84F60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 12))
  {
    sub_254B84F90(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *a3, *(a2 + 24), *(a1 + 8));
  }
}

void sub_254B84F90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((((a1 | a5) | a4) & 0xF) != 0 || a2 < 0x20 || (a6 & 0xF) != 0)
  {
    sub_254B84FC4(a1, a2, a3, a4, a5, a6, 9, a7);
  }

  else
  {
    sub_254B8548C(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_254B84FC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, signed int a8)
{
  v81 = *MEMORY[0x277D85DE8];
  v79[0] = -3 * a4;
  v79[1] = -3 * a4 + 1;
  v79[2] = 2 - 2 * a4;
  v79[3] = 3 - a4;
  v79[4] = 3;
  v79[5] = a4 + 3;
  v79[6] = 2 * a4 + 2;
  v79[7] = 3 * a4 + 1;
  v79[8] = 3 * a4;
  v79[9] = 3 * a4 - 1;
  v79[10] = 2 * a4 - 2;
  v79[11] = a4 - 3;
  v79[12] = -3;
  v79[13] = -3 - a4;
  v8 = a3 - 7;
  v79[14] = (2 * a4) ^ 0xFFFFFFFFFFFFFFFELL;
  v79[15] = -3 * a4 - 1;
  if ((a3 - 7) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v12 = 0;
    v13 = -1 << a7;
    v14 = a2 - 3;
    v15 = 3 * a6;
    if (a2 - 2 >= a2)
    {
      v16 = -2;
    }

    else
    {
      v16 = 0;
    }

    v77 = v16;
    v78 = a5 + v15;
    v76 = v14 + a5 + v15;
    v17 = 3;
    v18 = xmmword_254B8BF80;
    v19 = xmmword_254B8BF90;
    v20 = xmmword_254B8BFA0;
    v21 = xmmword_254B8BFB0;
    do
    {
      v22 = v78 + v12 * a6;
      *(v22 + 2) = 0;
      *v22 = 0;
      if (v14 <= 3)
      {
        goto LABEL_60;
      }

      for (i = 3; i != v14; ++i)
      {
        v24 = 0;
        v25 = (a1 + v17 * a4 + i);
        do
        {
          v80.i8[v24] = v25[v79[v24]];
          ++v24;
        }

        while (v24 != 16);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = *v25;
        v32 = vdupq_n_s8(v31);
        v33 = vcgtq_u8(v32, v80);
        v34 = vmovl_s8(*v33.i8);
        v35 = vmovl_high_s8(v33);
        v36 = vcgtq_u8(v80, v32);
        v37 = vmovl_s8(*v36.i8);
        v38 = vmovl_high_s8(v36);
        v39 = vorrq_s8(vorrq_s8(vandq_s8(vmovl_u16(*v34.i8), v19), vandq_s8(vmovl_u16(*v35.i8), v18)), vorrq_s8(vandq_s8(vmovl_high_u16(v34), v21), vandq_s8(vmovl_high_u16(v35), v20)));
        v40 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
        v41 = vorrq_s8(vorrq_s8(vandq_s8(vmovl_u16(*v37.i8), v19), vandq_s8(vmovl_u16(*v38.i8), v18)), vorrq_s8(vandq_s8(vmovl_high_u16(v37), v21), vandq_s8(vmovl_high_u16(v38), v20)));
        v42 = vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
        do
        {
          v27 = ((((v42.i32[0] | v42.i32[1] | ((v42.i32[0] | v42.i32[1]) << 16)) >> v26) & 1) + v27) * (((v42.i32[0] | v42.i32[1] | ((v42.i32[0] | v42.i32[1]) << 16)) >> v26) & 1);
          if (v27 <= v30)
          {
            v43 = v30;
          }

          else
          {
            v43 = v27;
          }

          v28 = ((((v40.i32[0] | v40.i32[1] | ((v40.i32[0] | v40.i32[1]) << 16)) >> v26) & 1) + v28) * (((v40.i32[0] | v40.i32[1] | ((v40.i32[0] | v40.i32[1]) << 16)) >> v26) & 1);
          if (v28 <= v43)
          {
            v44 = v27 <= v30;
          }

          else
          {
            v43 = v28;
            v44 = 0;
          }

          if (!v44)
          {
            v29 = v26;
          }

          ++v26;
          v30 = v43;
        }

        while (v26 != 32);
        if (v43 >= a7)
        {
          if (v29 <= 0)
          {
            v45 = -(-v29 & 0xF);
          }

          else
          {
            v45 = v29 & 0xF;
          }

          v46 = v80.u8[v45];
          v47 = v29 - v43;
          if (v46 <= v31)
          {
            if (v43 < 1)
            {
              v59 = v31;
            }

            else
            {
              v59 = v31;
              do
              {
                if (v29 <= 0)
                {
                  v60 = -(-v29 & 0xF);
                }

                else
                {
                  v60 = v29 & 0xF;
                }

                v61 = v80.u8[v60];
                if (v59 > v61)
                {
                  v62 = 0;
                  v63 = vcgtq_u8(v80, vdupq_n_s8(v61));
                  v64 = vmovl_s8(*v63.i8);
                  v65 = vmovl_high_s8(v63);
                  v66 = vorrq_s8(vorrq_s8(vbicq_s8(v19, vmovl_u16(*v64.i8)), vbicq_s8(v18, vmovl_u16(*v65.i8))), vorrq_s8(vbicq_s8(v21, vmovl_high_u16(v64)), vbicq_s8(v20, vmovl_high_u16(v65))));
                  v67 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
                  v68 = v61 + 1;
                  do
                  {
                    v69 = ((v67.i32[0] | v67.i32[1] | ((v67.i32[0] | v67.i32[1]) << 16)) >> v62) | v13;
                    if (v62 > 0xE)
                    {
                      break;
                    }

                    ++v62;
                  }

                  while (v69 != -1);
                  if (v69 == -1)
                  {
                    v59 = v68;
                  }
                }

                --v29;
              }

              while (v29 > v47);
            }

            v70 = v31 - v59;
          }

          else
          {
            if (v43 < 1)
            {
              v48 = v31;
            }

            else
            {
              v48 = v31;
              do
              {
                if (v29 <= 0)
                {
                  v49 = -(-v29 & 0xF);
                }

                else
                {
                  v49 = v29 & 0xF;
                }

                v50 = v80.u8[v49];
                if (v48 < v50)
                {
                  v51 = 0;
                  v52 = vcgtq_u8(vdupq_n_s8(v50), v80);
                  v53 = vmovl_s8(*v52.i8);
                  v54 = vmovl_high_s8(v52);
                  v55 = vorrq_s8(vorrq_s8(vbicq_s8(v19, vmovl_u16(*v53.i8)), vbicq_s8(v18, vmovl_u16(*v54.i8))), vorrq_s8(vbicq_s8(v21, vmovl_high_u16(v53)), vbicq_s8(v20, vmovl_high_u16(v54))));
                  v56 = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
                  v57 = v50 - 1;
                  do
                  {
                    v58 = ((v56.i32[0] | v56.i32[1] | ((v56.i32[0] | v56.i32[1]) << 16)) >> v51) | v13;
                    if (v51 > 0xE)
                    {
                      break;
                    }

                    ++v51;
                  }

                  while (v58 != -1);
                  if (v58 == -1)
                  {
                    v48 = v57;
                  }
                }

                --v29;
              }

              while (v29 > v47);
            }

            v70 = v48 - v31;
          }

          if (v70 < a8)
          {
            LOBYTE(v70) = 0;
          }

          *(a5 + v17 * a6 + i) = v70;
        }
      }

      if (a2 >= 3)
      {
LABEL_60:
        bzero((v76 + v12 * a6), v77 + 3);
        v21 = xmmword_254B8BFB0;
        v20 = xmmword_254B8BFA0;
        v19 = xmmword_254B8BF90;
        v18 = xmmword_254B8BF80;
      }

      ++v17;
    }

    while (v12++ != v8);
  }
}

void sub_254B8548C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v151 = *MEMORY[0x277D85DE8];
  if (a3 <= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = a3;
  }

  if (((a6 | a4) & 0xF) == 0)
  {
    v138 = vdupq_n_s8(a7);
    v13 = v9 - 3;
    v14 = a4 >> 4;
    v15 = -a2 & 0xFLL;
    bzero(&v150[1] - v15 + 13, v15 + 3);
    v16 = 0;
    v17 = vdupq_n_s64(28 - v15);
    v18 = v150 + 28 - v15;
    do
    {
      v19 = vdupq_n_s64(v16);
      v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8AAC0)));
      if (vuzp1_s8(vuzp1_s16(v20, *v17.i8), *v17.i8).u8[0])
      {
        *v18 = -1;
      }

      if (vuzp1_s8(vuzp1_s16(v20, *&v17), *&v17).i8[1])
      {
        *(v18 - 1) = -1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8B0E0)))), *&v17).i8[2])
      {
        *(v18 - 2) = -1;
        *(v18 - 3) = -1;
      }

      v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8B3A0)));
      if (vuzp1_s8(*&v17, vuzp1_s16(v21, *&v17)).i32[1])
      {
        *(v18 - 4) = -1;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(v21, *&v17)).i8[5])
      {
        *(v18 - 5) = -1;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8B390))))).i8[6])
      {
        *(v18 - 6) = -1;
        *(v18 - 7) = -1;
      }

      v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8C010)));
      if (vuzp1_s8(vuzp1_s16(v22, *v17.i8), *v17.i8).u8[0])
      {
        *(v18 - 8) = -1;
      }

      if (vuzp1_s8(vuzp1_s16(v22, *&v17), *&v17).i8[1])
      {
        *(v18 - 9) = -1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8C000)))), *&v17).i8[2])
      {
        *(v18 - 10) = -1;
        *(v18 - 11) = -1;
      }

      v23 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8BFF0)));
      if (vuzp1_s8(*&v17, vuzp1_s16(v23, *&v17)).i32[1])
      {
        *(v18 - 12) = -1;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(v23, *&v17)).i8[5])
      {
        *(v18 - 13) = -1;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_254B8BFE0))))).i8[6])
      {
        *(v18 - 14) = -1;
        *(v18 - 15) = -1;
      }

      v16 += 16;
      v18 -= 16;
    }

    while (((44 - v15) & 0x30) != v16);
    if (v13 >= 4)
    {
      v24 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
      v25 = a1 + 3 * a4 - 48 * v14;
      v26 = a5 + 3 * a6;
      v136 = v150[1];
      v137 = v150[0];
      v27 = a1 + 3 * a4 - 32 * v14;
      v28 = a1 + 3 * a4;
      v29 = 3 * a4 + 48 * v14 + a1 + 16;
      v30 = a1 + 3 * a4 - 16 * v14;
      v31 = 3 * a4 + 32 * v14 + a1 + 16;
      v32 = a1 + 3 * a4 + 16 * v14;
      v33 = 3;
      do
      {
        if (v24)
        {
          v34 = 0;
          v35 = 0;
          v36 = xmmword_254B8C020;
          do
          {
            if (v33 > 3 || (v37 = 0uLL, v34 >= 1))
            {
              v37 = *(v25 + v34 - 16);
            }

            v149 = v36;
            v38 = *(v25 + v34);
            v39 = vextq_s8(v37, v38, 0xFuLL);
            v40 = vextq_s8(v38, *(v25 + v34 + 16), 1uLL);
            v41 = *(v27 + v34);
            v42 = vextq_s8(*(v27 + v34 - 16), v41, 0xEuLL);
            v43 = vextq_s8(v41, *(v27 + v34 + 16), 2uLL);
            v44 = *(v30 + v34);
            v45 = vextq_s8(*(v30 + v34 - 16), v44, 0xDuLL);
            v46 = vextq_s8(v44, *(v30 + v34 + 16), 3uLL);
            v47 = *(v28 + v34);
            v48 = vextq_s8(*(v28 + v34 - 16), v47, 0xDuLL);
            v49 = vextq_s8(v47, *(v28 + v34 + 16), 3uLL);
            v50 = *(v32 + v34);
            v51 = vextq_s8(*(v32 + v34 - 16), v50, 0xDuLL);
            v52 = vextq_s8(v50, *(v32 + v34 + 16), 3uLL);
            v53 = *(v31 + v34 - 16);
            v54 = vextq_s8(*(v31 + v34 - 32), v53, 0xEuLL);
            v55 = vextq_s8(v53, *(v31 + v34), 2uLL);
            if (a2 - 16 > v35 || (v56 = 0uLL, v9 - 4 > v33))
            {
              v56 = *(v29 + v34);
            }

            v57 = *(v29 + v34 - 16);
            v58 = vextq_s8(*(v29 + v34 - 32), v57, 0xFuLL);
            v59 = vextq_s8(v57, v56, 1uLL);
            v60 = vqsubq_u8(v47, v38);
            v147 = vqsubq_u8(v38, v47);
            v148 = vqsubq_u8(v39, v47);
            v61 = vqsubq_u8(v47, v40);
            v62 = vqsubq_u8(v47, v43);
            v145 = vqsubq_u8(v43, v47);
            v146 = vqsubq_u8(v40, v47);
            v63 = vqsubq_u8(v47, v46);
            v64 = vqsubq_u8(v47, v49);
            v143 = vqsubq_u8(v49, v47);
            v144 = vqsubq_u8(v46, v47);
            v65 = vqsubq_u8(v47, v52);
            v139 = vqsubq_u8(v47, v39);
            v140 = vqsubq_u8(v52, v47);
            v66 = vqsubq_u8(v47, v55);
            v67 = vqsubq_u8(v55, v47);
            v68 = vqsubq_u8(v47, v59);
            v69 = vqsubq_u8(v59, v47);
            v70 = vqsubq_u8(v47, v57);
            v141 = vqsubq_u8(v57, v47);
            v142 = v67;
            v71 = vqsubq_u8(v47, v58);
            v72 = vqsubq_u8(v58, v47);
            v73 = vqsubq_u8(v47, v54);
            v74 = vqsubq_u8(v54, v47);
            v75 = vqsubq_u8(v47, v51);
            v76 = vqsubq_u8(v51, v47);
            v77 = vqsubq_u8(v47, v48);
            v78 = vqsubq_u8(v48, v47);
            v79 = vqsubq_u8(v47, v45);
            v80 = vqsubq_u8(v45, v47);
            v81 = vqsubq_u8(v47, v42);
            v82 = vqsubq_u8(v42, v47);
            v83 = vminq_u8(v60, v61);
            v84 = vminq_u8(v62, v63);
            v85 = vminq_u8(v64, v65);
            v86 = vminq_u8(v83, v84);
            v87 = vminq_u8(v84, v85);
            v88 = vminq_u8(v66, v68);
            v89 = vminq_u8(v85, v88);
            v90 = vminq_u8(v70, v71);
            v91 = vminq_u8(v88, v90);
            v92 = vminq_u8(v73, v75);
            v93 = vminq_u8(v90, v92);
            v94 = vminq_u8(v77, v79);
            v95 = vminq_u8(v92, v94);
            v96 = vminq_u8(v81, v139);
            v97 = vminq_u8(v94, v96);
            v98 = vminq_u8(v96, v83);
            v99 = vminq_u8(v86, v89);
            v100 = vminq_u8(v89, v93);
            v101 = vminq_u8(v93, v97);
            v102 = vminq_u8(v97, v86);
            v103 = vminq_u8(v87, v91);
            v104 = vminq_u8(v91, v95);
            v105 = vminq_u8(v95, v98);
            v106 = vminq_u8(v98, v87);
            v107 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vminq_u8(v99, v70), vminq_u8(v61, v103)), vmaxq_u8(vminq_u8(v103, v73), vminq_u8(v63, v100))), vmaxq_u8(vmaxq_u8(vminq_u8(v100, v77), vminq_u8(v65, v104)), vmaxq_u8(vminq_u8(v104, v81), vminq_u8(v68, v101)))), vmaxq_u8(vmaxq_u8(vmaxq_u8(vminq_u8(v101, v60), vminq_u8(v71, v105)), vmaxq_u8(vminq_u8(v105, v62), vminq_u8(v75, v102))), vmaxq_u8(vmaxq_u8(vminq_u8(v102, v64), vminq_u8(v79, v106)), vmaxq_u8(vminq_u8(v106, v66), vminq_u8(v139, v99)))));
            v108 = vminq_u8(v147, v146);
            v109 = vminq_u8(v145, v144);
            v110 = vminq_u8(v143, v140);
            v111 = vminq_u8(v142, v69);
            v112 = vminq_u8(v141, v72);
            v113 = vminq_u8(v74, v76);
            v114 = vminq_u8(v78, v80);
            v115 = vminq_u8(v82, v148);
            v116 = vminq_u8(v108, v109);
            v117 = vminq_u8(v109, v110);
            v118 = vminq_u8(v110, v111);
            v119 = vminq_u8(v111, v112);
            v120 = vminq_u8(v112, v113);
            v121 = vminq_u8(v113, v114);
            v122 = vminq_u8(v114, v115);
            v123 = vminq_u8(v115, v108);
            v124 = vminq_u8(v116, v118);
            v125 = vminq_u8(v118, v120);
            v126 = vminq_u8(v120, v122);
            v127 = vminq_u8(v122, v116);
            v128 = vminq_u8(v117, v119);
            v129 = vminq_u8(v119, v121);
            v130 = vminq_u8(v121, v123);
            v131 = vminq_u8(v123, v117);
            v132 = vmaxq_u8(v107, vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vminq_u8(v124, v141), vminq_u8(v146, v128)), vmaxq_u8(vminq_u8(v128, v74), vminq_u8(v144, v125))), vmaxq_u8(vmaxq_u8(vminq_u8(v125, v78), vminq_u8(v140, v129)), vmaxq_u8(vminq_u8(v129, v82), vminq_u8(v69, v126)))), vmaxq_u8(vmaxq_u8(vmaxq_u8(vminq_u8(v126, v147), vminq_u8(v72, v130)), vmaxq_u8(vminq_u8(v130, v145), vminq_u8(v76, v127))), vmaxq_u8(vmaxq_u8(vminq_u8(v127, v143), vminq_u8(v80, v131)), vmaxq_u8(vminq_u8(v131, v142), vminq_u8(v148, v124))))));
            v131.i64[0] = 0x101010101010101;
            v131.i64[1] = 0x101010101010101;
            v133 = vqsubq_u8(v132, v131);
            *(v26 + v34) = vandq_s8(vbicq_s8(v149, vcgtq_u8(v138, v133)), v133);
            v34 += 16;
            v35 = v34;
            *&v36 = -1;
            *(&v36 + 1) = -1;
          }

          while (v24 > v34);
          v134 = v26 + v34;
        }

        else
        {
          v134 = a5 + v33 * a6;
        }

        v135 = vandq_s8(*(v134 - 16), v136);
        ++v33;
        v25 += a4;
        v26 += a6;
        v27 += a4;
        v28 += a4;
        v29 += a4;
        *(v134 - 32) = vandq_s8(*(v134 - 32), v137);
        *(v134 - 16) = v135;
        v30 += a4;
        v31 += a4;
        v32 += a4;
      }

      while (v33 != v13);
    }
  }
}

uint64_t sub_254B85BBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 - 5) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = a2 - 1;
    v8 = 2;
    v9 = 4;
    v10 = result;
    do
    {
      if (v9 >= v6)
      {
        v11 = a3 - 1;
      }

      else
      {
        v11 = v9;
      }

      if ((a2 - 5) <= 0xFFFFFFFFFFFFFFFCLL)
      {
        v12 = result + v8 * a4;
        v13 = v10;
        v14 = 1;
        v15 = 4;
        v16 = 2;
        do
        {
          if (v15 >= v7)
          {
            v17 = a2 - 1;
          }

          else
          {
            v17 = v15;
          }

          v18 = *(v12 + v16);
          if (*(v12 + v16))
          {
            v19 = v6 < v8 - 2;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            v20 = v17 + v14;
            v21 = v13;
            v22 = v8 - 2;
            while (v7 < v16 - 2)
            {
LABEL_22:
              v21 += a4;
              if (v22++ == v11)
              {
                goto LABEL_26;
              }
            }

            v23 = 0;
            while (v22 == v8 && v23 == 2 || *(v21 + v23) <= v18)
            {
              if (v20 == ++v23)
              {
                goto LABEL_22;
              }
            }

            LOBYTE(v18) = 0;
          }

LABEL_26:
          *(a5 + v8 * a6 + v16++) = v18;
          ++v15;
          --v14;
          ++v13;
        }

        while (v15 != a2);
      }

      ++v8;
      ++v9;
      v10 += a4;
    }

    while (v9 != a3);
  }

  return result;
}

void sub_254B85CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((((result | a5) | a4) & 0xF) != 0 || a2 < 0x20 || (a6 & 0xF) != 0)
  {
    sub_254B85BBC(result, a2, a3, a4, a5, a6);
  }

  else
  {
    sub_254B85D08(result, a2, a3, a4, a5, a6);
  }
}

void sub_254B85D08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = *MEMORY[0x277D85DE8];
  if (a2 >= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2;
  }

  v12 = a3 - 2;
  if (a3 >= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a3;
  }

  v14 = -a2 & 0xFLL;
  bzero(&v60[1] - v14 + 14, v14 + 2);
  v15 = 0;
  v16 = a4 >> 4;
  v17 = 29 - v14;
  if (v12 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  v19 = vdupq_n_s64(v17);
  v20 = v60 + v17;
  do
  {
    v21 = vdupq_n_s64(v15);
    v22 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8AAC0)));
    if (vuzp1_s8(vuzp1_s16(v22, 14), 14).u8[0])
    {
      *v20 = -1;
    }

    if (vuzp1_s8(vuzp1_s16(v22, 14), 14).i8[1])
    {
      *(v20 - 1) = -1;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8B0E0)))), 14).i8[2])
    {
      *(v20 - 2) = -1;
      *(v20 - 3) = -1;
    }

    v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8B3A0)));
    if (vuzp1_s8(14, vuzp1_s16(v23, 14)).i32[1])
    {
      *(v20 - 4) = -1;
    }

    if (vuzp1_s8(14, vuzp1_s16(v23, 14)).i8[5])
    {
      *(v20 - 5) = -1;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8B390))))).i8[6])
    {
      *(v20 - 6) = -1;
      *(v20 - 7) = -1;
    }

    v24 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8C010)));
    if (vuzp1_s8(vuzp1_s16(v24, 14), 14).u8[0])
    {
      *(v20 - 8) = -1;
    }

    if (vuzp1_s8(vuzp1_s16(v24, 14), 14).i8[1])
    {
      *(v20 - 9) = -1;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8C000)))), 14).i8[2])
    {
      *(v20 - 10) = -1;
      *(v20 - 11) = -1;
    }

    v25 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8BFF0)));
    if (vuzp1_s8(14, vuzp1_s16(v25, 14)).i32[1])
    {
      *(v20 - 12) = -1;
    }

    if (vuzp1_s8(14, vuzp1_s16(v25, 14)).i8[5])
    {
      *(v20 - 13) = -1;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_254B8BFE0))))).i8[6])
    {
      *(v20 - 14) = -1;
      *(v20 - 15) = -1;
    }

    v15 += 16;
    v20 -= 16;
  }

  while (((45 - v14) & 0x30) != v15);
  if (v12 > v13)
  {
    v26 = v60[0];
    v27 = v60[1];
    v28 = v11 & 0xFFFFFFFFFFFFFFF0;
    v29 = a5 + (v11 & 0xFFFFFFFFFFFFFFF0);
    v30 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
    v31 = a5 + a6 * v13;
    v32 = a1 + a4 * v13 - 32 * v16;
    v33 = a4 * v13 + a1;
    v34 = v33 - 16;
    v35 = v33 + 32 * v16 + 16;
    v36 = a1 + a4 * v13 - 16 * v16;
    v37 = v34 + 16 * v16;
    do
    {
      if (v28 >= v30)
      {
        v58 = v29 + v13 * a6;
      }

      else
      {
        v38 = 0;
        v39 = v37;
        v40 = v36;
        v41 = v35;
        v42 = v34;
        v43 = v32;
        v44 = v31;
        v45 = xmmword_254B8C030;
        do
        {
          v46 = *(v42 + v28 + 16);
          v47 = vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
          if (vpmax_u32(v47, v47).u32[0])
          {
            v48 = v28 + v38;
            if (v13 > 2 || (v49 = 0uLL, v48 >= 1))
            {
              v49 = *(v43 + v28 - 16);
            }

            if (v48 < (a2 - 16) || (v50 = 0uLL, v13 < v18 - 1))
            {
              v50 = *(v41 + v28);
            }

            v51 = *(v43 + v28);
            v52 = *(v40 + v28);
            v53 = *(v39 + v28 + 16);
            v54 = *(v39 + v28 + 32);
            v55 = *(v41 + v28 - 32);
            v56 = *(v41 + v28 - 16);
            v57 = vandq_s8(vbicq_s8(v45, vcgtq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vmaxq_u8(vextq_s8(v49, v51, 0xEuLL), vextq_s8(v49, v51, 0xFuLL)), vmaxq_u8(v51, vextq_s8(v51, *(v43 + v28 + 16), 1uLL))), vmaxq_u8(vmaxq_u8(vextq_s8(v51, *(v43 + v28 + 16), 2uLL), vextq_s8(*(v40 + v28 - 16), v52, 0xEuLL)), vmaxq_u8(vextq_s8(*(v40 + v28 - 16), v52, 0xFuLL), v52))), vmaxq_u8(vmaxq_u8(vmaxq_u8(vextq_s8(v52, *(v40 + v28 + 16), 1uLL), vextq_s8(v52, *(v40 + v28 + 16), 2uLL)), vmaxq_u8(vextq_s8(*(v42 + v28), v46, 0xEuLL), vextq_s8(*(v42 + v28), v46, 0xFuLL))), vmaxq_u8(vmaxq_u8(vextq_s8(v46, *(v42 + v28 + 32), 1uLL), vextq_s8(v46, *(v42 + v28 + 32), 2uLL)), vmaxq_u8(vextq_s8(*(v39 + v28), v53, 0xEuLL), vextq_s8(*(v39 + v28), v53, 0xFuLL))))), vmaxq_u8(vmaxq_u8(vmaxq_u8(v53, vextq_s8(v53, v54, 1uLL)), vmaxq_u8(vextq_s8(v53, v54, 2uLL), vextq_s8(v55, v56, 0xEuLL))), vmaxq_u8(vmaxq_u8(vextq_s8(v55, v56, 0xFuLL), v56), vmaxq_u8(vextq_s8(v56, v50, 1uLL), vextq_s8(v56, v50, 2uLL))))), v46)), v46);
          }

          else
          {
            v57 = 0uLL;
          }

          *(v44 + v28) = v57;
          v38 += 16;
          v44 += 16;
          v43 += 16;
          v42 += 16;
          v41 += 16;
          v40 += 16;
          v39 += 16;
          v45.i64[0] = -1;
          v45.i64[1] = -1;
        }

        while (v28 + v38 < v30);
        v58 = v44 + v28;
      }

      v59 = vandq_s8(*(v58 - 16), v27);
      ++v13;
      v31 += a6;
      v32 += a4;
      v34 += a4;
      *(v58 - 32) = vandq_s8(*(v58 - 32), v26);
      *(v58 - 16) = v59;
      v35 += a4;
      v36 += a4;
      v37 += a4;
    }

    while (v13 != v18);
  }
}

uint64_t sub_254B86230(uint64_t result, float *a2)
{
  v2 = *result;
  v3 = *(result + 8) - *result;
  if (!v3)
  {
    v13 = 0.0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_12;
  }

  v4 = v3 >> 2;
  if ((v3 >> 2) <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 >> 2;
  }

  v6 = 0.0;
  v7 = v5;
  v8 = *result;
  do
  {
    v9 = *v8++;
    v6 = v6 + v9;
    --v7;
  }

  while (v7);
  v10 = v6 / v4;
  if (a2)
  {
    v11 = 0.0;
    do
    {
      v12 = *v2++;
      v11 = v11 + ((v10 - v12) * (v10 - v12));
      --v5;
    }

    while (v5);
    v13 = sqrtf(v11 / v4);
LABEL_12:
    *a2 = v13;
  }

  return result;
}

float sub_254B862A8(uint64_t *a1, uint64_t a2, __CFDictionary *a3)
{
  valuePtr = 1.0;
  v8 = *a1;
  v9 = a1[1] - *a1;
  v10 = 0x86BCA1AF286BCA1BLL * (v9 >> 4);
  v145 = 0.0;
  if (v10 < 1)
  {
    v15 = 1.0;
    v21 = NAN;
    v133 = 0.0;
    v135 = 2143289344;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 & 0x7FFFFFFF;
    v14 = (v8 + 168);
    v15 = 1.0;
    v16 = 0.0;
    v17 = v13;
    do
    {
      if (*(v14 - 95) == 1)
      {
        ++v11;
      }

      else
      {
        if (*v14 < v15)
        {
          v15 = *v14;
        }

        v16 = v16 + *v14;
        ++v12;
      }

      v14 += 76;
      --v17;
    }

    while (v17);
    v133 = v11;
    v18 = v16 / v12;
    v19 = (v8 + 168);
    v20 = 0.0;
    do
    {
      if (!*(v19 - 95))
      {
        v20 = v20 + ((v18 - *v19) * (v18 - *v19));
      }

      v19 += 76;
      --v13;
    }

    while (v13);
    v135 = LODWORD(v18);
    v21 = v20 / v12;
  }

  v22 = v8 + v9;
  v160 = *(v22 - 192);
  v161 = *(v22 - 176);
  memset(&v159, 0, sizeof(v159));
  lhs = v160;
  *lhs_16 = v161;
  rhs = *(v8 + 112);
  v134 = sqrtf(v21);
  CMTimeSubtract(&v159, &lhs, &rhs);
  lhs = *&v159.value;
  *lhs_16 = v159.epoch;
  v23 = 0;
  *&v24 = CMTimeGetSeconds(&lhs);
  v132 = v24;
  memset(&rhs, 0, sizeof(rhs));
  v25 = -1;
  v155 = 0;
  v156 = 0;
  v26 = 0.0;
  v157 = 0;
  v138 = 0.0;
  v136 = 0.0;
  v140 = 0.0;
  __p = 0;
  v153 = 0;
  v27 = 0.0;
  v28 = 0.0;
  v154 = 0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = *a1;
  do
  {
    sub_254B65C80((v31 + v23), a2, &lhs);
    if (v23)
    {
      *(&v149 + 1) = v145 - lhs.f32[0];
      sub_254B798A8(&rhs, &v149 + 1);
      *(&v149 + 1) = v26 - lhs.f32[1];
      sub_254B798A8(&v155, &v149 + 1);
      *(&v149 + 1) = v140 - *&lhs_16[8];
      sub_254B798A8(&__p, &v149 + 1);
      v34.i64[0] = *lhs_16;
      v35 = vabds_f32(v138, *lhs_16);
      if (v29 < v35)
      {
        v29 = v35;
      }

      v36 = vabds_f32(v136, *&lhs_16[4]);
      if (v30 < v36)
      {
        v30 = v36;
      }

      v37 = vabds_f32(v145, lhs.f32[0]);
      if (v27 < v37)
      {
        v27 = v37;
      }

      v38 = vabds_f32(v26, lhs.f32[1]);
      if (v28 < v38)
      {
        v28 = v38;
      }

      v39 = lhs;
      v39.i32[0] = *lhs_16;
      v138 = *lhs_16;
      v34.i32[2] = *&lhs_16[8];
      v40 = v34;
      v40.i32[3] = v143.i32[3];
      v41 = v143;
      v41.i32[3] = lhs.i32[0];
      v34.i32[3] = lhs.i32[0];
      v143 = vbslq_s8(vcgtq_f32(v41, v40), v34, v143);
      v144 = vbslq_s8(vcgtq_f32(v144, lhs), lhs, v144);
      v140 = *&lhs_16[8];
      v142 = vbslq_s8(vcgtq_f32(v39, v142), v39, v142);
      if (v4 < *&lhs_16[4])
      {
        v4 = *&lhs_16[4];
      }

      if (v3 < *&lhs_16[8])
      {
        v3 = *&lhs_16[8];
      }

      v136 = *&lhs_16[4];
      v26 = lhs.f32[1];
      v145 = lhs.f32[0];
    }

    else
    {
      v32.i32[0] = *lhs_16;
      v33.i64[0] = *&lhs_16[4];
      v42 = vextq_s8(vextq_s8(v32, v32, 4uLL), v33, 0xCuLL);
      v42.i32[3] = lhs.i32[0];
      v143 = v42;
      v144 = lhs;
      v26 = lhs.f32[1];
      v43 = lhs;
      v136 = *&lhs_16[4];
      v138 = *lhs_16;
      v43.i32[0] = *lhs_16;
      v140 = *&lhs_16[8];
      v142 = v43;
      v4 = *&lhs_16[4];
      v3 = *&lhs_16[8];
      v145 = lhs.f32[0];
    }

    v31 = *a1;
    ++v25;
    v23 += 304;
  }

  while (-1 - 0x79435E50D79435E5 * ((a1[1] - *a1) >> 4) > v25);
  v149 = 0;
  v148 = 0;
  sub_254B86230(&rhs, &v149 + 1);
  v146 = v44;
  sub_254B86230(&v155, &v149);
  v141 = v45;
  sub_254B86230(&__p, &v148);
  v139 = v46;
  v47 = __p;
  if (v153 == __p)
  {
    v49 = 0.0;
    v60 = 0;
  }

  else
  {
    v48 = (__p + 4);
    v49 = *__p;
    if (__p + 4 != v153)
    {
      v50 = *__p;
      v51 = (__p + 4);
      v52 = __p;
      v53 = (__p + 4);
      do
      {
        v54 = *v53++;
        v55 = v54;
        if (v54 < v50)
        {
          v50 = v55;
          v52 = v51;
        }

        v51 = v53;
      }

      while (v53 != v153);
      v56 = *v52;
      v57 = (__p + 4);
      do
      {
        v58 = *v57++;
        v59 = v58;
        if (v49 < v58)
        {
          v49 = v59;
          v47 = v48;
        }

        v48 = v57;
      }

      while (v57 != v153);
      v49 = v56;
    }

    v60 = *v47;
  }

  v137 = v60;
  v61 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    v62 = 0;
    Mutable = a3;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    v62 = Mutable;
  }

  lhs.i32[0] = v144.i32[0];
  v64 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v64);
  CFDictionaryAddValue(Mutable, @"det_min", v64);
  lhs.i32[0] = v144.i32[1];
  v65 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v65);
  CFDictionaryAddValue(Mutable, @"shear_min", v65);
  lhs.i32[0] = v144.i32[2];
  v66 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v66);
  CFDictionaryAddValue(Mutable, @"key1_min", v66);
  lhs.i32[0] = v144.i32[3];
  v67 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v67);
  CFDictionaryAddValue(Mutable, @"key2_min", v67);
  lhs.i32[0] = v143.i32[0];
  v68 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v68);
  CFDictionaryAddValue(Mutable, @"translationX_min", v68);
  lhs.i32[0] = v143.i32[1];
  v69 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v69);
  CFDictionaryAddValue(Mutable, @"translationY_min", v69);
  lhs.i32[0] = v143.i32[2];
  v70 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v70);
  CFDictionaryAddValue(Mutable, @"rotation_min", v70);
  lhs.i32[0] = v143.i32[3];
  v71 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v71);
  CFDictionaryAddValue(Mutable, @"det_max", v71);
  lhs.i32[0] = v142.i32[1];
  v72 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v72);
  CFDictionaryAddValue(Mutable, @"shear_max", v72);
  lhs.i32[0] = v142.i32[2];
  v73 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v73);
  CFDictionaryAddValue(Mutable, @"key1_max", v73);
  lhs.i32[0] = v142.i32[3];
  v74 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v74);
  CFDictionaryAddValue(Mutable, @"key2_max", v74);
  lhs.i32[0] = v142.i32[0];
  v75 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v75);
  CFDictionaryAddValue(Mutable, @"translationX_max", v75);
  lhs.f32[0] = v4;
  v76 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v76);
  CFDictionaryAddValue(Mutable, @"translationY_max", v76);
  lhs.f32[0] = v3;
  v77 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v77);
  CFDictionaryAddValue(Mutable, @"rotation_max", v77);
  lhs.f32[0] = v15;
  v78 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v78);
  CFDictionaryAddValue(Mutable, @"confidence_min", v78);
  lhs.i32[0] = v135;
  v79 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v79);
  CFDictionaryAddValue(Mutable, @"confidence_mean", v79);
  lhs.f32[0] = v134;
  v80 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v80);
  CFDictionaryAddValue(Mutable, @"confidence_stdDev", v80);
  lhs.f32[0] = v27;
  v81 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v81);
  CFDictionaryAddValue(Mutable, @"deltaDet_max", v81);
  lhs.i32[0] = v146;
  v82 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v82);
  CFDictionaryAddValue(Mutable, @"deltaDet_mean", v82);
  lhs.i32[0] = HIDWORD(v149);
  v83 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v83);
  CFDictionaryAddValue(Mutable, @"deltaDet_stdDev", v83);
  lhs.f32[0] = v28;
  v84 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v84);
  CFDictionaryAddValue(Mutable, @"deltaShear_max", v84);
  lhs.i32[0] = v141;
  v85 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v85);
  CFDictionaryAddValue(Mutable, @"deltaShear_mean", v85);
  lhs.i32[0] = v149;
  v86 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v86);
  CFDictionaryAddValue(Mutable, @"deltaShear_stdDev", v86);
  lhs.i32[0] = v139;
  v87 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v87);
  CFDictionaryAddValue(Mutable, @"deltaRotation_mean", v87);
  lhs.i32[0] = v148;
  v88 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v88);
  CFDictionaryAddValue(Mutable, @"deltaRotation_stdDev", v88);
  lhs.f32[0] = v49;
  v89 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v89);
  CFDictionaryAddValue(Mutable, @"deltaRotation_min", v89);
  lhs.i32[0] = v137;
  v90 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v90);
  CFDictionaryAddValue(Mutable, @"deltaRotation_max", v90);
  lhs.f32[0] = v29;
  v91 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v91);
  CFDictionaryAddValue(Mutable, @"deltaTransX_max", v91);
  lhs.f32[0] = v30;
  v92 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v92);
  CFDictionaryAddValue(Mutable, @"deltaTransY_max", v92);
  lhs.f32[0] = v133;
  v93 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v93);
  CFDictionaryAddValue(Mutable, @"interpCount", v93);
  lhs.f32[0] = v10;
  v94 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v94);
  CFDictionaryAddValue(Mutable, @"numFrames", v94);
  lhs.i32[0] = v132;
  v95 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v95);
  CFDictionaryAddValue(Mutable, @"duration", v95);
  v96 = CFDictionaryCreateMutable(0, 0, 0, 0);
  lhs.i32[0] = -1082682570;
  v97 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v97);
  CFDictionaryAddValue(v96, @"_intercept", v97);
  lhs.i32[0] = -1067287335;
  v98 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v98);
  CFDictionaryAddValue(v96, @"confidence_mean", v98);
  lhs.i32[0] = -1075653319;
  v99 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v99);
  CFDictionaryAddValue(v96, @"confidence_min", v99);
  lhs.i32[0] = 1084166481;
  v100 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v100);
  CFDictionaryAddValue(v96, @"confidence_stdDev", v100);
  lhs.i32[0] = 1112189614;
  v101 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v101);
  CFDictionaryAddValue(v96, @"deltaDet_mean", v101);
  lhs.i32[0] = -1046656612;
  v102 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v102);
  CFDictionaryAddValue(v96, @"deltaRotation_max", v102);
  lhs.i32[0] = -1031636091;
  v103 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v103);
  CFDictionaryAddValue(v96, @"deltaRotation_mean", v103);
  lhs.i32[0] = 1101279657;
  v104 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v104);
  CFDictionaryAddValue(v96, @"deltaRotation_min", v104);
  lhs.i32[0] = 1119772248;
  v105 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v105);
  CFDictionaryAddValue(v96, @"deltaRotation_stdDev", v105);
  lhs.i32[0] = -1051649519;
  v106 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v106);
  CFDictionaryAddValue(v96, @"deltaShear_max", v106);
  lhs.i32[0] = 1135447685;
  v107 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v107);
  CFDictionaryAddValue(v96, @"deltaShear_stdDev", v107);
  lhs.i32[0] = -1058771072;
  v108 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v108);
  CFDictionaryAddValue(v96, @"deltaTransX_max", v108);
  lhs.i32[0] = -1045786170;
  v109 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v109);
  CFDictionaryAddValue(v96, @"deltaTransY_max", v109);
  lhs.i32[0] = 1082605271;
  v110 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v110);
  CFDictionaryAddValue(v96, @"det_max", v110);
  lhs.i32[0] = -1080542569;
  v111 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v111);
  CFDictionaryAddValue(v96, @"det_min", v111);
  lhs.i32[0] = -1084242549;
  v112 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v112);
  CFDictionaryAddValue(v96, @"duration", v112);
  lhs.i32[0] = 1051730553;
  v113 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v113);
  CFDictionaryAddValue(v96, @"interpCount", v113);
  lhs.i32[0] = -1076546773;
  v114 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v114);
  CFDictionaryAddValue(v96, @"key1_max", v114);
  lhs.i32[0] = 1086929716;
  v115 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v115);
  CFDictionaryAddValue(v96, @"key1_min", v115);
  lhs.i32[0] = 1090144503;
  v116 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v116);
  CFDictionaryAddValue(v96, @"key2_max", v116);
  lhs.i32[0] = 1074996114;
  v117 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v117);
  CFDictionaryAddValue(v96, @"key2_min", v117);
  lhs.i32[0] = 1022943098;
  v118 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v118);
  CFDictionaryAddValue(v96, @"numFrames", v118);
  lhs.i32[0] = 1086103107;
  v119 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v119);
  CFDictionaryAddValue(v96, @"rotation_max", v119);
  lhs.i32[0] = -1063704775;
  v120 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v120);
  CFDictionaryAddValue(v96, @"rotation_min", v120);
  lhs.i32[0] = 1074153369;
  v121 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v121);
  CFDictionaryAddValue(v96, @"shear_max", v121);
  lhs.i32[0] = -1048838389;
  v122 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v122);
  CFDictionaryAddValue(v96, @"shear_min", v122);
  lhs.i32[0] = 1067963415;
  v123 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v123);
  CFDictionaryAddValue(v96, @"translationX_max", v123);
  lhs.i32[0] = -1123026574;
  v124 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v124);
  CFDictionaryAddValue(v96, @"translationX_min", v124);
  lhs.i32[0] = 1085744035;
  v125 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v125);
  CFDictionaryAddValue(v96, @"translationY_max", v125);
  lhs.i32[0] = -1090249665;
  v126 = CFNumberCreate(v61, kCFNumberFloatType, &lhs);
  CFAutorelease(v126);
  CFDictionaryAddValue(v96, @"translationY_min", v126);
  sub_254B59BF8(&lhs, v96);
  *&v147 = 0.0;
  if (sub_254B59C64(&lhs, Mutable, &v147))
  {
    *&v147 = 1.0;
    v127 = 1.0;
  }

  else
  {
    v127 = *&v147;
  }

  valuePtr = 1.0 - v127;
  if (a3)
  {
    v128 = CFNumberCreate(v61, kCFNumberFloat32Type, &valuePtr);
    v129 = CFAutorelease(v128);
    CFDictionaryAddValue(a3, @"stabConfResult", v129);
  }

  CFRelease(v96);
  if (v62)
  {
    CFRelease(v62);
  }

  v130 = valuePtr;
  sub_254B59C60(&lhs);
  if (__p)
  {
    v153 = __p;
    operator delete(__p);
  }

  if (v155)
  {
    v156 = v155;
    operator delete(v155);
  }

  if (rhs.value)
  {
    *&rhs.timescale = rhs.value;
    operator delete(rhs.value);
  }

  return v130;
}

void sub_254B87530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_254B886BC()
{
  sub_254B4ED28();
  sub_254B4ED0C();
  sub_254B4ED00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void sub_254B8874C()
{
  sub_254B4ED28();
  sub_254B4ED0C();
  sub_254B4ED00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CVImageBufferGetCleanRect(CVImageBufferRef imageBuffer)
{
  MEMORY[0x282114C00](imageBuffer);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x282114C10](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}