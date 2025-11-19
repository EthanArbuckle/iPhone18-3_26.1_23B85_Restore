char *svm_train_one(int *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(8 * *a1, 0x100004000313F17uLL);
  v5 = *a2;
  if (*a2 <= 1)
  {
    if (!v5)
    {
      if (*a1 >= 0)
      {
        v12 = *a1;
      }

      operator new[]();
    }

    if (v5 == 1)
    {
      v8 = *(a2 + 80);
      if (*a1 >= 0)
      {
        v9 = *a1;
      }

      operator new[]();
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        if (*a1 >= 0)
        {
          v10 = *a1;
        }

        operator new[]();
      case 3:
        v11 = *a1;
        operator new[]();
      case 4:
        v6 = *a1;
        v7 = *(a2 + 48);
        operator new[]();
    }
  }

  info("obj = %f, rho = %f\n", v21, v22);
  v13 = *a1;
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 8 * v13;
    while (1)
    {
      v18 = *&v4[v14];
      if (v18 != 0.0)
      {
        v19 = fabs(v18);
        ++v16;
        if (*(*(a1 + 1) + v14) > 0.0)
        {
          if (v19 < v23)
          {
            goto LABEL_26;
          }

LABEL_25:
          ++v15;
          goto LABEL_26;
        }

        if (v19 >= v24)
        {
          goto LABEL_25;
        }
      }

LABEL_26:
      v14 += 8;
      if (v17 == v14)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
  v15 = 0;
LABEL_29:
  info("nSV = %d, nBSV = %d\n", v16, v15);
  return v4;
}

void sub_2472E90FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  CPMLLibSVM::SVC_Q::~SVC_Q(va);
  _Unwind_Resume(a1);
}

void svm_group_classes(int *a1, int *a2, void *a3, void *a4, int32x2_t **a5, uint64_t a6)
{
  v11 = *a1;
  v12 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
  v13 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
  v14 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  v37 = v11;
  if (v11 < 1)
  {
    v16 = 0;
  }

  else
  {
    v34 = a3;
    v35 = a4;
    v15 = 0;
    v16 = 0;
    v17 = 16;
    do
    {
      v18 = *(*(a1 + 1) + 8 * v15);
      if (v16 < 1)
      {
        LODWORD(v19) = 0;
      }

      else
      {
        v19 = 0;
        while (v12[v19] != v18)
        {
          if (v16 == ++v19)
          {
            v14[v15] = v16;
            goto LABEL_11;
          }
        }

        ++v13->i32[v19];
      }

      v14[v15] = v19;
      if (v19 == v16)
      {
LABEL_11:
        if (v16 == v17)
        {
          v17 *= 2;
          v12 = malloc_type_realloc(v12, 4 * v17, 0x100004052888210uLL);
          v13 = malloc_type_realloc(v13, 4 * v17, 0x100004052888210uLL);
        }

        v12[v16] = v18;
        v13->i32[v16++] = 1;
      }

      ++v15;
    }

    while (v15 != v37);
    if (v16 == 2)
    {
      a4 = v35;
      a3 = v34;
      if (*v12 == -1 && v12[1] == 1)
      {
        *v12 = 0xFFFFFFFF00000001;
        *v13 = vrev64_s32(*v13);
        v20 = v37;
        v21 = v14;
        do
        {
          *v21 = *v21 == 0;
          ++v21;
          --v20;
        }

        while (v20);
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {
      a4 = v35;
      a3 = v34;
    }
  }

  v22 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
  *v22 = 0;
  if (v16 > 1)
  {
    v23 = 0;
    v24 = v22 + 1;
    v25 = v16 - 1;
    v26 = v13;
    do
    {
      v27 = v26->i32[0];
      v26 = (v26 + 4);
      v23 += v27;
      *v24++ = v23;
      --v25;
    }

    while (v25);
  }

  if (v37 >= 1)
  {
    for (i = 0; i != v37; ++i)
    {
      *(a6 + 4 * v22[v14[i]]++) = i;
    }
  }

  *v22 = 0;
  if (v16 > 1)
  {
    v29 = 0;
    v30 = v22 + 1;
    v31 = v16 - 1;
    v32 = v13;
    do
    {
      v33 = v32->i32[0];
      v32 = (v32 + 4);
      v29 += v33;
      *v30++ = v29;
      --v31;
    }

    while (v31);
  }

  *a2 = v16;
  *a3 = v12;
  *a4 = v22;
  *a5 = v13;

  free(v14);
}

void svm_cross_validation(int *a1, _DWORD *a2, int a3, uint64_t a4)
{
  v8 = *a1;
  v9 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  if (v8 < a3)
  {
    fwrite("WARNING: # folds > # data. Will use # folds = # data instead (i.e., leave-one-out cross validation)\n", 0x64uLL, 1uLL, *MEMORY[0x277D85DF8]);
    a3 = v8;
  }

  v10 = (a3 + 1);
  v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
  v12 = a3 >= v8 || *a2 >= 2u;
  v109 = a2;
  v110 = a4;
  v111 = v8;
  if (!v12)
  {
    v117 = 0;
    v112 = 0;
    v115 = 0;
    v116 = 0;
    svm_group_classes(a1, &v117, &v116, &v112, &v115, v9);
    v106 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    v35 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
    v36 = v35;
    if (v8 >= 1)
    {
      v37 = v8;
      v38 = v9;
      v39 = v35;
      do
      {
        v40 = *v38++;
        *v39++ = v40;
        --v37;
      }

      while (v37);
    }

    v41 = v117;
    if (v117 >= 1)
    {
      v42 = 0;
      v43 = v115;
      v44 = v112;
      for (i = v117; i != v42; v41 = i)
      {
        if (v43[v42] >= 1)
        {
          v45 = 0;
          v46 = 0;
          do
          {
            v47 = rand();
            v48 = v46 + v44[v42];
            v49 = v48 + v47 % (v45 + v43[v42]);
            v50 = v36[v49];
            v36[v49] = v36[v48];
            v36[v48] = v50;
            ++v46;
            --v45;
          }

          while (v46 < v43[v42]);
        }

        ++v42;
      }
    }

    if (a3 <= 0)
    {
      *v11 = 0;
      v54 = v106;
      v53 = (a3 + 1);
    }

    else
    {
      v51 = 0;
      v52 = v115;
      v54 = v106;
      v53 = (a3 + 1);
      do
      {
        v106[v51] = 0;
        v55 = v51 + 1;
        if (v41 >= 1)
        {
          v56 = 0;
          v57 = v41;
          v58 = v52;
          do
          {
            v59 = *v58++;
            v56 += v59 * v55 / a3 - v59 * v51 / a3;
            v106[v51] = v56;
            --v57;
          }

          while (v57);
        }

        ++v51;
      }

      while (v55 != a3);
      v60 = 0;
      *v11 = 0;
      v61 = v11 + 1;
      v62 = (a3 + 1) - 1;
      v63 = v106;
      do
      {
        v64 = *v63++;
        v60 += v64;
        *v61++ = v60;
        --v62;
      }

      while (v62);
    }

    if (v41 >= 1)
    {
      v65 = 0;
      v66 = v112;
      v67 = v115;
      do
      {
        if (a3 >= 1)
        {
          v68 = 0;
          do
          {
            v69 = v67[v65];
            v70 = v69 * v68 / a3;
            v71 = v68 + 1;
            v72 = v69 * (v68 + 1) / a3;
            if (v70 < v72)
            {
              v73 = v66[v65];
              v74 = v70 + v73;
              v75 = v72 + v73;
              v76 = v11[v68];
              do
              {
                v9[v76] = v36[v74];
                v76 = v11[v68] + 1;
                v11[v68] = v76;
                ++v74;
              }

              while (v74 < v75);
            }

            ++v68;
          }

          while (v71 != a3);
        }

        ++v65;
      }

      while (v65 != v41);
    }

    *v11 = 0;
    if (a3 >= 1)
    {
      v77 = 0;
      v78 = v11 + 1;
      v79 = v53 - 1;
      v80 = v54;
      do
      {
        v81 = *v80++;
        v77 += v81;
        *v78++ = v77;
        --v79;
      }

      while (v79);
    }

    free(v112);
    free(v116);
    free(v115);
    free(v36);
    free(v54);
LABEL_61:
    if (a3 >= 1)
    {
      v82 = 0;
      v108 = a3;
      do
      {
        v83 = v11[v82++];
        v84 = v11[v82];
        LODWORD(v112) = v83 - v84 + v111;
        v114 = malloc_type_malloc(8 * v112, 0x2004093837F09uLL);
        v113 = malloc_type_malloc(8 * v112, 0x100004000313F17uLL);
        if (v83 < 1)
        {
          v88 = 0;
          v86 = v109;
        }

        else
        {
          v85 = 0;
          v86 = v109;
          do
          {
            v87 = v9[v85];
            *(v114 + v85) = *(*(a1 + 2) + 8 * v87);
            *(v113 + v85++) = *(*(a1 + 1) + 8 * v87);
          }

          while (v83 != v85);
          v88 = v83;
        }

        if (v84 < v111)
        {
          v89 = v111 - v84;
          v90 = 8 * v88;
          v91 = &v9[v84];
          do
          {
            v92 = *v91++;
            *(v114 + v90) = *(*(a1 + 2) + 8 * v92);
            *(v113 + v90) = *(*(a1 + 1) + 8 * v92);
            v90 += 8;
            --v89;
          }

          while (v89);
        }

        v93 = v83;
        v94 = svm_train(&v112, v86);
        v95 = v94;
        if (v86[25] && *v86 <= 1u)
        {
          v96 = malloc_type_malloc(8 * *(v94 + 104), 0x100004000313F17uLL);
          if (v93 < v84)
          {
            v97 = &v9[v93];
            v98 = v84 - v93;
            do
            {
              v99 = svm_predict_probability(v95, *(*(a1 + 2) + 8 * *v97), v96);
              v100 = *v97++;
              *(v110 + 8 * v100) = v99;
              --v98;
            }

            while (v98);
          }

          free(v96);
        }

        else if (v83 < v84)
        {
          v101 = &v9[v83];
          v102 = v84 - v83;
          do
          {
            v103 = *(*(a1 + 2) + 8 * *v101);
            svm_predict(v95);
            v104 = *v101++;
            *(v110 + 8 * v104) = v105;
            --v102;
          }

          while (v102);
        }

        if (v95)
        {
          svm_free_model_content(v95);
          free(v95);
        }

        free(v114);
        free(v113);
      }

      while (v82 != v108);
    }

    goto LABEL_83;
  }

  if (v8 >= 1)
  {
    v13 = 0;
    v14 = vdupq_n_s64(v8 - 1);
    v15 = xmmword_247321E10;
    v16 = xmmword_247321D00;
    v17 = v9 + 2;
    v18 = vdupq_n_s64(4uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v14, v16));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v17 - 2) = v13;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v17 - 1) = v13 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
      {
        *v17 = v13 + 2;
        v17[1] = v13 + 3;
      }

      v13 += 4;
      v15 = vaddq_s64(v15, v18);
      v16 = vaddq_s64(v16, v18);
      v17 += 4;
    }

    while (((v8 + 3) & 0xFFFFFFFC) != v13);
    v20 = 0;
    v21 = v8;
    do
    {
      v22 = v20 + rand() % v21;
      v23 = v9[v20];
      v9[v20] = v9[v22];
      v9[v22] = v23;
      ++v20;
      --v21;
    }

    while (v21);
  }

  if ((a3 & 0x80000000) == 0)
  {
    v24 = vdupq_n_s64(v10 - 1);
    v25 = (v10 + 3) & 0x1FFFFFFFCLL;
    v26 = vdupq_n_s32(v8);
    v27 = xmmword_247321E10;
    v28 = xmmword_247321D00;
    v29 = v11 + 2;
    v30 = xmmword_247321E20;
    v31.i64[0] = 0x400000004;
    v31.i64[1] = 0x400000004;
    v32 = vdupq_n_s64(4uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v24, v28));
      v34 = vmulq_s32(v26, v30);
      if (vuzp1_s16(v33, *v24.i8).u8[0])
      {
        *(v29 - 2) = v34.i32[0] / a3;
      }

      if (vuzp1_s16(v33, *&v24).i8[2])
      {
        *(v29 - 1) = v34.i32[1] / a3;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v27))).i32[1])
      {
        *v29 = v34.i32[2] / a3;
        v29[1] = v34.i32[3] / a3;
      }

      v27 = vaddq_s64(v27, v32);
      v28 = vaddq_s64(v28, v32);
      v30 = vaddq_s32(v30, v31);
      v29 += 4;
      v25 -= 4;
    }

    while (v25);
    goto LABEL_61;
  }

LABEL_83:
  free(v11);
  free(v9);
}

double svm_predict_probability(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = a1;
  if (*a1 <= 1u && *(a1 + 136) && *(a1 + 144))
  {
    v6 = *(a1 + 104);
    v76 = malloc_type_malloc(8 * ((v6 - 1) * v6 / 2), 0x100004000313F17uLL);
    svm_predict_values(v4, a2, v76);
    size = 8 * v6;
    v7 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    v8 = v7;
    if (v6 >= 1)
    {
      v9 = v6;
      v10 = v7;
      do
      {
        *v10++ = malloc_type_malloc(size, 0x100004000313F17uLL);
        --v9;
      }

      while (v9);
      v11 = 0;
      v12 = 0;
      v13 = v8 + 8;
      v14 = v6 - 1;
      v15 = 8;
      v74 = v6;
      v75 = v4;
      v73 = v8;
      do
      {
        v16 = v11 + 1;
        if (v11 + 1 < v6)
        {
          v17 = 0;
          v18 = v4[17];
          v19 = v4[18];
          v20 = &v76[v12];
          v21 = v18 + 8 * v12;
          v77 = v12;
          v22 = v19 + 8 * v12;
          v23 = *&v8[8 * v11] + v15;
          do
          {
            v24 = *(v22 + 8 * v17) + v20[v17] * *(v21 + 8 * v17);
            if (v24 >= 0.0)
            {
              v25 = exp(-v24);
              v26 = v25;
            }

            else
            {
              v25 = exp(v24);
              v26 = 1.0;
            }

            v27 = fmin(fmax(v26 / (v25 + 1.0), 0.0000001), 0.9999999);
            *(v23 + 8 * v17) = v27;
            *(*&v13[8 * v17++] + 8 * v11) = 1.0 - v27;
          }

          while (v14 != v17);
          v12 = v77 + v17;
          v6 = v74;
          v4 = v75;
          v8 = v73;
          v16 = v11 + 1;
        }

        v13 += 8;
        v15 += 8;
        --v14;
        v11 = v16;
      }

      while (v16 != v6);
    }

    if (v6 <= 100)
    {
      v28 = 100;
    }

    else
    {
      v28 = v6;
    }

    v29 = malloc_type_malloc(size, 0x80040B8603338uLL);
    v30 = malloc_type_malloc(size, 0x100004000313F17uLL);
    v31 = v6;
    if (v6 <= 0)
    {
      v47 = v6;
    }

    else
    {
      v78 = v28;
      v32 = 0;
      v33 = v6 - 1;
      v34 = (v8 + 8);
      v35 = 1;
      do
      {
        *(a3 + 8 * v32) = 1.0 / v31;
        v36 = malloc_type_malloc(size, 0x100004000313F17uLL);
        v29[v32] = v36;
        v36[v32] = 0;
        if (v32)
        {
          for (i = 0; i != v32; ++i)
          {
            v38 = *(*&v8[8 * i] + 8 * v32);
            *&v36[v32] = *&v36[v32] + v38 * v38;
            v36[i] = *(v29[i] + v32);
          }
        }

        v39 = v32 + 1;
        if (v32 + 1 < v6)
        {
          v40 = &v36[v35];
          v41 = (*&v8[8 * v32] + v35 * 8);
          v42 = v34;
          v43 = v33;
          do
          {
            v44 = *v42++;
            *&v36[v32] = *&v36[v32] + *(v44 + 8 * v32) * *(v44 + 8 * v32);
            v45 = *(v44 + 8 * v32);
            v46 = *v41++;
            *v40++ = -(v45 * v46);
            --v43;
          }

          while (v43);
        }

        --v33;
        ++v35;
        ++v34;
        ++v32;
      }

      while (v39 != v6);
      v47 = v6;
      v28 = v78;
    }

    v49 = 0;
    v50 = 0.005 / v31;
    do
    {
      if (v6 < 1)
      {
        if (v50 > 0.0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v51 = 0;
        v52 = 0.0;
        do
        {
          v53 = 0;
          v30[v51] = 0;
          v54 = v29[v51];
          v55 = 0.0;
          do
          {
            v55 = v55 + v54[v53] * *(a3 + 8 * v53);
            *&v30[v51] = v55;
            ++v53;
          }

          while (v47 != v53);
          v52 = v52 + *(a3 + 8 * v51++) * v55;
        }

        while (v51 != v47);
        v56 = 0;
        v57 = 0.0;
        do
        {
          v58 = vabdd_f64(*&v30[v56], v52);
          if (v58 > v57)
          {
            v57 = v58;
          }

          ++v56;
        }

        while (v47 != v56);
        if (v57 < v50)
        {
          goto LABEL_52;
        }

        v59 = 0;
        do
        {
          v60 = 0;
          v61 = v29[v59];
          v62 = (v52 - *&v30[v59]) / v61[v59];
          *(a3 + 8 * v59) = *(a3 + 8 * v59) + v62;
          v63 = *&v30[v59] + *&v30[v59] + v62 * v61[v59];
          v64 = v62 + 1.0;
          do
          {
            *&v30[v60] = (*&v30[v60] + v62 * v61[v60]) / v64;
            *(a3 + 8 * v60) = *(a3 + 8 * v60) / v64;
            ++v60;
          }

          while (v47 != v60);
          v52 = (v52 + v62 * v63) / v64 / v64;
          ++v59;
        }

        while (v59 != v47);
      }

      ++v49;
    }

    while (v49 != v28);
    info("Exceeds max_iter in multiclass_prob\n", 1.0);
LABEL_52:
    if (v6 >= 1)
    {
      v65 = v29;
      v66 = v47;
      do
      {
        v67 = *v65++;
        free(v67);
        --v66;
      }

      while (v66);
    }

LABEL_55:
    free(v29);
    free(v30);
    if (v6 <= 1)
    {
      v70 = 0;
    }

    else
    {
      v68 = 0;
      v69 = 1;
      do
      {
        if (*(a3 + 8 * v69) > *(a3 + 8 * v68))
        {
          v68 = v69;
        }

        ++v69;
      }

      while (v47 != v69);
      v70 = v68;
    }

    if (v6 >= 1)
    {
      v71 = v8;
      do
      {
        v72 = *v71++;
        free(v72);
        --v47;
      }

      while (v47);
    }

    free(v76);
    free(v8);
    return *(v4[20] + 4 * v70);
  }

  else
  {

    svm_predict(a1);
  }

  return result;
}

void svm_predict(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = (8 * ((*(a1 + 104) - 1) * *(a1 + 104) / 2) + 15) & 0xFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](a1);
  svm_predict_values(v2, v4, (v6 - v3));
  v5 = *MEMORY[0x277D85DE8];
}

void svm_free_and_destroy_model(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      svm_free_model_content(v2);
      free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t svm_get_labels(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  if (v2 && *(result + 104) >= 1)
  {
    v3 = 0;
    do
    {
      *(a2 + 4 * v3) = *(v2 + 4 * v3);
      ++v3;
    }

    while (v3 < *(result + 104));
  }

  return result;
}

uint64_t svm_get_sv_indices(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  if (v2 && *(result + 108) >= 1)
  {
    v3 = 0;
    do
    {
      *(a2 + 4 * v3) = *(v2 + 4 * v3);
      ++v3;
    }

    while (v3 < *(result + 108));
  }

  return result;
}

double svm_get_svr_probability(uint64_t a1)
{
  if ((*a1 - 3) <= 1)
  {
    v1 = *(a1 + 136);
    if (v1)
    {
      return *v1;
    }
  }

  fwrite("Model doesn't contain information for SVR probability inference\n", 0x40uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0.0;
}

void svm_predict_values(uint64_t a1, double *a2, double *a3)
{
  v63 = a3;
  v4 = a1;
  if ((*a1 - 2) > 2)
  {
    v13 = *(a1 + 104);
    v12 = *(a1 + 108);
    v14 = malloc_type_malloc(8 * v12, 0x100004000313F17uLL);
    v20 = v14;
    if (*(v4 + 4) == 2)
    {
      CPMLLibSVM::Kernel::k_function_rbf(a2, v4, v14, v15, v16, v17, v18, v19, v58, v59, v61, v63, v64, v65, v67, v69, v71, v73, v75, v77, __N, v80, *&v81, __C[0], __C[1], __C[2], __C[3], __C[4], __C[5], __C[6], __C[7], __C[8]);
    }

    else if (v12 >= 1)
    {
      v21 = *(v4 + 112);
      v22 = v14;
      do
      {
        v23 = *v21++;
        *v22++ = CPMLLibSVM::Kernel::k_function(a2, v23, v4);
        --v12;
      }

      while (v12);
    }

    v24 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    v25 = v24;
    *v24 = 0;
    if (v13 > 1)
    {
      v26 = 0;
      v27 = *(v4 + 168);
      v28 = v24 + 1;
      v29 = v13 - 1;
      do
      {
        v30 = *v27++;
        v26 += v30;
        *v28++ = v26;
        --v29;
      }

      while (v29);
    }

    v31 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    v32 = v31;
    if (v13 < 1)
    {
      goto LABEL_29;
    }

    v72 = v20;
    bzero(v31, 4 * v13);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = v25 + 4;
    v60 = -v13;
    v62 = v13;
    v37 = 1;
    v38 = 4;
    v68 = v25;
    v70 = v32;
    do
    {
      v39 = v34 + 1;
      if (v34 + 1 < v13)
      {
        v66 = v35;
        v40 = 0;
        v74 = &v63[v35];
        v76 = 8 * v35;
        do
        {
          v41 = *&v25[4 * v34];
          v42 = *&v36[4 * v40];
          v43 = *(v4 + 168);
          v44 = *(v43 + 4 * v34);
          v45 = *(v43 + v38 + 4 * v40);
          v46 = *(v4 + 120);
          v47 = v33;
          v48 = *(v46 + v33 + 8 * v40);
          v49 = v4;
          v50 = *(v46 + 8 * v34);
          __Na = v45;
          __C[0] = 0;
          v81 = 0.0;
          vDSP_dotprD((v48 + 8 * v41), 1, &v72[v41], 1, __C, v44);
          v51 = (v50 + 8 * v42);
          v4 = v49;
          v25 = v68;
          vDSP_dotprD(v51, 1, &v72[v42], 1, &v81, __Na);
          v33 = v47;
          *__C = v81 + *__C;
          v52 = *__C - *(*(v4 + 128) + v76 + 8 * v40);
          v74[v40] = v52;
          v53 = v37 + v40;
          if (v52 > 0.0)
          {
            v53 = v34;
          }

          v32 = v70;
          ++v70[v53];
          ++v40;
        }

        while (v60 + v37 + v40);
        v39 = v34 + 1;
        v35 = v66 + v40;
        v13 = v62;
      }

      ++v37;
      v38 += 4;
      v36 += 4;
      v33 += 8;
      v34 = v39;
    }

    while (v39 != v13);
    v20 = v72;
    if (v13 < 2)
    {
LABEL_29:
      v56 = 0;
    }

    else
    {
      v54 = 0;
      for (i = 1; i != v13; ++i)
      {
        if (v32[i] > v32[v54])
        {
          v54 = i;
        }
      }

      v56 = v54;
    }

    free(v20);
    free(v25);
    free(v32);
    v57 = *(*(v4 + 160) + 4 * v56);
  }

  else
  {
    v5 = *(a1 + 108);
    if (v5 < 1)
    {
      v8 = 0.0;
    }

    else
    {
      v6 = *(a1 + 112);
      v7 = **(a1 + 120);
      v8 = 0.0;
      do
      {
        v9 = *v7++;
        v10 = v9;
        v11 = *v6++;
        v8 = v8 + v10 * CPMLLibSVM::Kernel::k_function(a2, v11, v4);
        --v5;
      }

      while (v5);
    }

    *v63 = v8 - **(v4 + 128);
  }
}

uint64_t svm_save_model(const char *a1, double *a2)
{
  v3 = fopen(a1, "w");
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = setlocale(0, 0);
  v27 = strdup(v5);
  setlocale(0, "C");
  fprintf(v4, "svm_type %s\n", svm_type_table[*a2]);
  fprintf(v4, "kernel_type %s\n", kernel_type_table[*(a2 + 1)]);
  v6 = *(a2 + 1);
  if (v6 == 1)
  {
    fprintf(v4, "degree %d\n", *(a2 + 2));
    v6 = *(a2 + 1);
  }

  if ((v6 - 1) <= 2)
  {
    fprintf(v4, "gamma %g\n", a2[2]);
    v6 = *(a2 + 1);
  }

  if ((v6 | 2) == 3)
  {
    fprintf(v4, "coef0 %g\n", a2[3]);
  }

  v8 = *(a2 + 26);
  v7 = *(a2 + 27);
  fprintf(v4, "nr_class %d\n", *(a2 + 26));
  v28 = v7;
  fprintf(v4, "total_sv %d\n", v7);
  fwrite("rho", 3uLL, 1uLL, v4);
  v9 = (v8 - 1) * v8;
  v10 = (v9 / 2);
  if (v9 >= 2)
  {
    v11 = 0;
    do
    {
      fprintf(v4, " %g", *(*(a2 + 16) + 8 * v11++));
    }

    while (v10 != v11);
  }

  fputc(10, v4);
  if (*(a2 + 20))
  {
    fwrite("label", 5uLL, 1uLL, v4);
    if (v8 >= 1)
    {
      v12 = 0;
      do
      {
        fprintf(v4, " %d", *(*(a2 + 20) + v12));
        v12 += 4;
      }

      while (4 * v8 != v12);
    }

    fputc(10, v4);
  }

  if (*(a2 + 17))
  {
    fwrite("probA", 5uLL, 1uLL, v4);
    if (v9 >= 2)
    {
      v13 = 0;
      do
      {
        fprintf(v4, " %g", *(*(a2 + 17) + 8 * v13++));
      }

      while (v10 != v13);
    }

    fputc(10, v4);
  }

  if (*(a2 + 18))
  {
    fwrite("probB", 5uLL, 1uLL, v4);
    if (v9 >= 2)
    {
      v14 = 0;
      do
      {
        fprintf(v4, " %g", *(*(a2 + 18) + 8 * v14++));
      }

      while (v10 != v14);
    }

    fputc(10, v4);
  }

  if (*(a2 + 21))
  {
    fwrite("nr_sv", 5uLL, 1uLL, v4);
    if (v8 >= 1)
    {
      v15 = 0;
      do
      {
        fprintf(v4, " %d", *(*(a2 + 21) + v15));
        v15 += 4;
      }

      while (4 * v8 != v15);
    }

    fputc(10, v4);
  }

  fwrite("SV\n", 3uLL, 1uLL, v4);
  if (v28 >= 1)
  {
    v16 = 0;
    v17 = *(a2 + 14);
    v18 = *(a2 + 15);
    do
    {
      v19 = (v8 - 1);
      v20 = v18;
      if (v8 >= 2)
      {
        do
        {
          v21 = *v20++;
          fprintf(v4, "%.16g ", *(v21 + 8 * v16));
          --v19;
        }

        while (v19);
      }

      v22 = *(v17 + 8 * v16);
      if (*(a2 + 1) == 4)
      {
        fprintf(v4, "0:%d ", v22[1]);
      }

      else
      {
        v23 = *v22;
        if (*v22 != -1)
        {
          v24 = v22 + 2;
          do
          {
            fprintf(v4, "%d:%.8g ", v23, *(v24 - 1));
            v25 = *v24;
            v24 += 2;
            v23 = v25;
          }

          while (v25 != -1);
        }
      }

      fputc(10, v4);
      ++v16;
    }

    while (v16 != v28);
  }

  setlocale(0, v27);
  free(v27);
  if (ferror(v4))
  {
    return 0xFFFFFFFFLL;
  }

  if (fclose(v4))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

_DWORD *svm_load_model(const char *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    goto LABEL_86;
  }

  v2 = v1;
  v3 = setlocale(0, 0);
  v4 = strdup(v3);
  setlocale(0, "C");
  v5 = malloc_type_malloc(0xB8uLL, 0x109004003BC950CuLL);
  *(v5 + 8) = 0u;
  v6 = (v5 + 32);
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  if (fscanf(v2, "%80s", __s2) != 1)
  {
LABEL_85:
    fwrite("ERROR: fscanf failed to read model\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
    setlocale(0, v4);
    free(v4);
    free(*(v5 + 16));
    free(*(v5 + 20));
    free(*(v5 + 21));
    free(v5);
    goto LABEL_86;
  }

  while (1)
  {
    if (!(*__s2 ^ 0x657079745F6D7673 | v63))
    {
      if (fscanf(v2, "%80s", __s2) == 1)
      {
        for (i = 0; i != 5; ++i)
        {
          if (!strcmp(svm_type_table[i], __s2))
          {
            *v5 = i;
            goto LABEL_60;
          }
        }

        v33 = *MEMORY[0x277D85DF8];
        v34 = "unknown svm type.\n";
        v35 = 18;
LABEL_84:
        fwrite(v34, v35, 1uLL, v33);
      }

      goto LABEL_85;
    }

    if (*__s2 == 0x745F6C656E72656BLL && v63 == 6647929)
    {
      if (fscanf(v2, "%80s", __s2) != 1)
      {
        goto LABEL_85;
      }

      v19 = 0;
      while (strcmp(kernel_type_table[v19], __s2))
      {
        if (++v19 == 5)
        {
          v33 = *MEMORY[0x277D85DF8];
          v34 = "unknown kernel function.\n";
          v35 = 25;
          goto LABEL_84;
        }
      }

      v5[1] = v19;
      goto LABEL_60;
    }

    if (*__s2 == 1919378788 && *&__s2[3] == 6645106)
    {
LABEL_56:
      v20 = fscanf(v2, "%d");
      goto LABEL_59;
    }

    v9 = *__s2 == 1835884903 && *&__s2[4] == 97;
    if (v9 || (*__s2 == 1717923683 ? (v10 = *&__s2[4] == 48) : (v10 = 0), v10))
    {
      v20 = fscanf(v2, "%lf");
LABEL_59:
      if (v20 != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_60;
    }

    if (!(*__s2 ^ 0x7373616C635F726ELL | v63) || !(*__s2 ^ 0x76735F6C61746F74 | v63))
    {
      goto LABEL_56;
    }

    if (*__s2 != 7301234)
    {
      break;
    }

    v21 = (v5[26] - 1) * v5[26];
    v22 = (v21 / 2);
    *v6 = malloc_type_malloc(8 * v22, 0x100004000313F17uLL);
    if (v21 >= 2)
    {
      v23 = 0;
      while (fscanf(v2, "%lf", *v6 + v23) == 1)
      {
        v23 += 8;
        if (!--v22)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_85;
    }

LABEL_60:
    if (fscanf(v2, "%80s", __s2) != 1)
    {
      goto LABEL_85;
    }
  }

  if (*__s2 == 1700946284 && *&__s2[4] == 108)
  {
    v24 = v5[26];
    v25 = 4 * v24;
    *(v5 + 20) = malloc_type_malloc(4 * v24, 0x100004052888210uLL);
    if (v24 >= 1)
    {
      v26 = 0;
      while (fscanf(v2, "%d", *(v5 + 20) + v26) == 1)
      {
        v26 += 4;
        if (v25 == v26)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_85;
    }

    goto LABEL_60;
  }

  if (*__s2 == 1651470960 && *&__s2[4] == 65)
  {
    v27 = (v5[26] - 1) * v5[26];
    v28 = (v27 / 2);
    *(v5 + 17) = malloc_type_malloc(8 * v28, 0x100004000313F17uLL);
    if (v27 >= 2)
    {
      v29 = 0;
      while (fscanf(v2, "%lf", *(v5 + 17) + v29) == 1)
      {
        v29 += 8;
        if (!--v28)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_85;
    }

    goto LABEL_60;
  }

  if (*__s2 == 1651470960 && *&__s2[4] == 66)
  {
    v30 = (v5[26] - 1) * v5[26];
    v31 = (v30 / 2);
    *(v5 + 18) = malloc_type_malloc(8 * v31, 0x100004000313F17uLL);
    if (v30 >= 2)
    {
      v32 = 0;
      while (fscanf(v2, "%lf", *(v5 + 18) + v32) == 1)
      {
        v32 += 8;
        if (!--v31)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_85;
    }

    goto LABEL_60;
  }

  if (*__s2 == 1935635054 && *&__s2[4] == 118)
  {
    v15 = v5[26];
    v16 = 4 * v15;
    *(v5 + 21) = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
    if (v15 >= 1)
    {
      v17 = 0;
      while (fscanf(v2, "%d", *(v5 + 21) + v17) == 1)
      {
        v17 += 4;
        if (v16 == v17)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_85;
    }

    goto LABEL_60;
  }

  if (*__s2 ^ 0x5653 | __s2[2])
  {
    fprintf(*MEMORY[0x277D85DF8], "unknown text in model file: [%s]\n", __s2);
    goto LABEL_85;
  }

  do
  {
    v38 = getc(v2);
  }

  while (v38 != -1 && v38 != 10);
  v39 = MEMORY[0x24C19FBF0](v2);
  max_line_len = 1024;
  line = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *__s2 = 0;
  v40 = 0;
  while (readline(v2))
  {
    strtok(line, ":");
    --v40;
    do
    {
      ++v40;
    }

    while (strtok(0, ":"));
  }

  v41 = v5[27];
  fseek(v2, v39, 0);
  v42 = v5[26];
  v43 = v5[27];
  *(v5 + 15) = malloc_type_malloc(8 * (v42 - 1), 0x80040B8603338uLL);
  v61 = v43;
  v44 = 8 * v43;
  if (v42 > 1)
  {
    v45 = 0;
    do
    {
      *(*(v5 + 15) + v45) = malloc_type_malloc(v44, 0x100004000313F17uLL);
      v45 += 8;
    }

    while (8 * (v42 - 1) != v45);
  }

  *(v5 + 14) = malloc_type_malloc(v44, 0x2004093837F09uLL);
  if (v61 >= 1)
  {
    v46 = malloc_type_malloc(16 * (v41 + v40), 0x1000040F7F8B94BuLL);
    v47 = 0;
    v48 = 0;
    v49 = 8 * (v42 - 1);
    v59 = v46 + 8;
    v60 = v46;
    do
    {
      readline(v2);
      *(*(v5 + 14) + 8 * v47) = &v46[16 * v48];
      v50 = strtok(line, " \t");
      *(**(v5 + 15) + 8 * v47) = strtod(v50, __s2);
      if (v42 >= 3)
      {
        v51 = 8;
        do
        {
          v52 = strtok(0, " \t");
          *(*(*(v5 + 15) + v51) + 8 * v47) = strtod(v52, __s2);
          v51 += 8;
        }

        while (v49 != v51);
      }

      v53 = v48;
      v54 = strtok(0, ":");
      v55 = strtok(0, " \t");
      if (v55)
      {
        v56 = v55;
        v57 = v48 << 32;
        v58 = &v59[16 * v48];
        do
        {
          *(v58 - 2) = strtol(v54, __s2, 10);
          *v58 = strtod(v56, __s2);
          v58 += 2;
          v54 = strtok(0, ":");
          v56 = strtok(0, " \t");
          v57 += 0x100000000;
          ++v48;
        }

        while (v56);
        v53 = v57 >> 32;
        v46 = v60;
      }

      ++v48;
      *&v46[16 * v53] = -1;
      ++v47;
      v49 = 8 * (v42 - 1);
    }

    while (v47 != v61);
  }

  free(line);
  setlocale(0, v4);
  free(v4);
  if (!ferror(v2) && !fclose(v2))
  {
    v5[44] = 1;
    goto LABEL_87;
  }

LABEL_86:
  v5 = 0;
LABEL_87:
  v36 = *MEMORY[0x277D85DE8];
  return v5;
}

void *readline(__sFILE *a1)
{
  if (!fgets(line, max_line_len, a1))
  {
    return 0;
  }

  while (1)
  {
    v2 = line;
    if (strrchr(line, 10))
    {
      break;
    }

    v3 = 2 * max_line_len;
    max_line_len *= 2;
    line = malloc_type_realloc(v2, v3, 0x100004077774924uLL);
    v4 = strlen(line);
    if (!fgets((line + v4), max_line_len - v4, a1))
    {
      return line;
    }
  }

  return v2;
}

void svm_free_model_content(uint64_t a1)
{
  if (*(a1 + 176))
  {
    if (*(a1 + 108) >= 1)
    {
      v2 = *(a1 + 112);
      if (v2)
      {
        free(*v2);
      }
    }
  }

  if (*(a1 + 120) && *(a1 + 104) >= 2)
  {
    v3 = 0;
    do
    {
      free(*(*(a1 + 120) + 8 * v3++));
    }

    while (v3 < *(a1 + 104) - 1);
  }

  free(*(a1 + 112));
  *(a1 + 112) = 0;
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  free(*(a1 + 128));
  *(a1 + 128) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  free(*(a1 + 136));
  *(a1 + 136) = 0;
  free(*(a1 + 144));
  *(a1 + 144) = 0;
  free(*(a1 + 152));
  *(a1 + 152) = 0;
  free(*(a1 + 168));
  *(a1 + 168) = 0;
}

void svm_destroy_param(uint64_t a1)
{
  free(*(a1 + 64));
  v2 = *(a1 + 72);

  free(v2);
}

const char *svm_check_parameter(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 4u)
  {
    return "unknown svm type";
  }

  if (*(a2 + 4) > 4u)
  {
    return "unknown kernel type";
  }

  if (*(a2 + 16) < 0.0)
  {
    return "gamma < 0";
  }

  if ((*(a2 + 8) & 0x80000000) != 0)
  {
    return "degree of polynomial kernel < 0";
  }

  if (*(a2 + 32) <= 0.0)
  {
    return "cache_size <= 0";
  }

  if (*(a2 + 40) <= 0.0)
  {
    return "eps <= 0";
  }

  if (v2 <= 4 && ((1 << v2) & 0x19) != 0 && *(a2 + 48) <= 0.0)
  {
    return "C <= 0";
  }

  if (v2 - 1 < 2)
  {
    goto LABEL_16;
  }

  if (v2 == 3)
  {
LABEL_19:
    if (*(a2 + 88) < 0.0)
    {
      return "p < 0";
    }

    goto LABEL_25;
  }

  if (v2 == 4)
  {
LABEL_16:
    v6 = *(a2 + 80);
    result = "nu <= 0 or nu > 1";
    if (v6 <= 0.0 || v6 > 1.0)
    {
      return result;
    }

    if (v2 == 3)
    {
      goto LABEL_19;
    }
  }

LABEL_25:
  if (*(a2 + 96) > 1u)
  {
    return "shrinking != 0 and shrinking != 1";
  }

  v7 = *(a2 + 100);
  if (v7 > 1)
  {
    return "probability != 0 and probability != 1";
  }

  if (v7 == 1 && v2 == 2)
  {
    result = "one-class SVM probability output not supported yet";
  }

  else
  {
    result = 0;
  }

  if (v2 == 1)
  {
    v9 = *a1;
    v10 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v11 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    if (v9 < 1)
    {
      goto LABEL_57;
    }

    v12 = 0;
    v13 = 0;
    v14 = 16;
    do
    {
      v15 = *(*(a1 + 1) + 8 * v12);
      if (v13 < 1)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = 0;
        while (v10[v16] != v15)
        {
          if (v13 == ++v16)
          {
            goto LABEL_44;
          }
        }

        ++v11[v16];
      }

      if (v16 == v13)
      {
LABEL_44:
        if (v13 == v14)
        {
          v17 = 2 * v14;
          v18 = 4 * v17;
          v19 = v17;
          v10 = malloc_type_realloc(v10, v18, 0x100004052888210uLL);
          v20 = malloc_type_realloc(v11, v18, 0x100004052888210uLL);
          v14 = v19;
          v11 = v20;
        }

        v10[v13] = v15;
        v11[v13++] = 1;
      }

      ++v12;
    }

    while (v12 != v9);
    if (v13 < 1)
    {
LABEL_57:
      free(v10);
      free(v11);
      return 0;
    }

    else
    {
      v21 = 0;
      v22 = 1;
      while (1)
      {
        v23 = v21 + 1;
        if (v21 + 1 < v13)
        {
          break;
        }

LABEL_56:
        ++v22;
        v21 = v23;
        if (v23 == v13)
        {
          goto LABEL_57;
        }
      }

      v24 = v11[v21];
      v25 = v22;
      while (1)
      {
        v26 = v11[v25];
        v27 = *(a2 + 80) * (v26 + v24) * 0.5;
        if (v24 < v26)
        {
          v26 = v24;
        }

        if (v27 > v26)
        {
          break;
        }

        if (v13 == ++v25)
        {
          goto LABEL_56;
        }
      }

      free(v10);
      free(v11);
      return "specified nu is infeasible";
    }
  }

  return result;
}

BOOL svm_check_probability_model(uint64_t a1)
{
  if (*a1 > 1u)
  {
    if ((*a1 - 3) <= 1)
    {
      return *(a1 + 136) != 0;
    }
  }

  else if (*(a1 + 136) && *(a1 + 144))
  {
    return 1;
  }

  return 0;
}

uint64_t (*svm_set_print_string_function(uint64_t (*result)(const char *)))(const char *)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = print_string_stdout;
  }

  svm_print_string = v1;
  return result;
}

double CPMLLibSVM::Kernel::swap_index(CPMLLibSVM::Kernel *this, int a2, int a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = v4;
  v5 = *(this + 4);
  if (v5)
  {
    result = *(v5 + 8 * a2);
    *(v5 + 8 * a2) = *(v5 + 8 * a3);
    *(v5 + 8 * a3) = result;
  }

  return result;
}

void sub_2472EBBB8(_Unwind_Exception *a1)
{
  MEMORY[0x24C19F910](v2, 0x10A0C408A4F435CLL);
  CPMLLibSVM::Kernel::~Kernel(v1);
  _Unwind_Resume(a1);
}

float *CPMLLibSVM::SVC_Q::get_Q(CPMLLibSVM::Cache **this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v17 = 0;
  data = CPMLLibSVM::Cache::get_data(this[9], a2, &v17, a3);
  v7 = v17;
  if (data < v3)
  {
    v8 = data;
    do
    {
      v9 = this[8];
      v10 = *(v9 + a2);
      v11 = *(v9 + v8);
      v12 = this[1];
      v13 = this[2];
      v14 = (this + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      v15 = (v12)(v14, a2, v8) * (v11 * v10);
      v7[v8++] = v15;
    }

    while (v3 != v8);
  }

  return v7;
}

double CPMLLibSVM::SVC_Q::swap_index(CPMLLibSVM::Cache **this, int a2, int a3)
{
  CPMLLibSVM::Cache::swap_index(this[9], a2, a3);
  v6 = this[3];
  v7 = *(v6 + a2);
  *(v6 + a2) = *(v6 + a3);
  *(v6 + a3) = v7;
  v8 = this[4];
  if (v8)
  {
    v9 = *(v8 + a2);
    *(v8 + a2) = *(v8 + a3);
    *(v8 + a3) = v9;
  }

  v10 = this[8];
  v11 = *(v10 + a2);
  *(v10 + a2) = *(v10 + a3);
  *(v10 + a3) = v11;
  v12 = this[10];
  result = *(v12 + a2);
  *(v12 + a2) = *(v12 + a3);
  *(v12 + a3) = result;
  return result;
}

void CPMLLibSVM::SVC_Q::~SVC_Q(CPMLLibSVM::SVC_Q *this)
{
  CPMLLibSVM::SVC_Q::~SVC_Q(this);

  JUMPOUT(0x24C19F910);
}

{
  *this = &unk_285926E70;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x24C19F8F0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 9);
  if (v3)
  {
    CPMLLibSVM::Cache::~Cache(v3);
    MEMORY[0x24C19F910]();
  }

  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x24C19F8F0](v4, 0x1000C8000313F17);
  }

  CPMLLibSVM::Kernel::~Kernel(this);
}

void sub_2472EBF7C(_Unwind_Exception *a1)
{
  MEMORY[0x24C19F910](v2, 0x10A0C408A4F435CLL);
  CPMLLibSVM::Kernel::~Kernel(v1);
  _Unwind_Resume(a1);
}

float *CPMLLibSVM::ONE_CLASS_Q::get_Q(CPMLLibSVM::Cache **this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v15 = 0;
  data = CPMLLibSVM::Cache::get_data(this[8], a2, &v15, a3);
  v7 = v15;
  if (data < v3)
  {
    v8 = data;
    v9 = &v15[data];
    do
    {
      v10 = this[1];
      v11 = this[2];
      v12 = (this + (v11 >> 1));
      if (v11)
      {
        v10 = *(*v12 + v10);
      }

      v13 = (v10)(v12, a2, v8);
      *v9++ = v13;
      v8 = (v8 + 1);
    }

    while (v3 != v8);
  }

  return v7;
}

double CPMLLibSVM::ONE_CLASS_Q::swap_index(CPMLLibSVM::Cache **this, int a2, int a3)
{
  CPMLLibSVM::Cache::swap_index(this[8], a2, a3);
  v6 = this[3];
  v7 = *(v6 + a2);
  *(v6 + a2) = *(v6 + a3);
  *(v6 + a3) = v7;
  v8 = this[4];
  if (v8)
  {
    v9 = *(v8 + a2);
    *(v8 + a2) = *(v8 + a3);
    *(v8 + a3) = v9;
  }

  v10 = this[9];
  result = *(v10 + a2);
  *(v10 + a2) = *(v10 + a3);
  *(v10 + a3) = result;
  return result;
}

void CPMLLibSVM::ONE_CLASS_Q::~ONE_CLASS_Q(CPMLLibSVM::ONE_CLASS_Q *this)
{
  CPMLLibSVM::ONE_CLASS_Q::~ONE_CLASS_Q(this);

  JUMPOUT(0x24C19F910);
}

{
  *this = &unk_285926EA8;
  v2 = *(this + 8);
  if (v2)
  {
    CPMLLibSVM::Cache::~Cache(v2);
    MEMORY[0x24C19F910]();
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x24C19F8F0](v3, 0x1000C8000313F17);
  }

  CPMLLibSVM::Kernel::~Kernel(this);
}

void sub_2472EC3E0(_Unwind_Exception *a1)
{
  MEMORY[0x24C19F910](v2, 0x10A0C408A4F435CLL);
  CPMLLibSVM::Kernel::~Kernel(v1);
  _Unwind_Resume(a1);
}

float *CPMLLibSVM::SVR_Q::get_Q(CPMLLibSVM::SVR_Q *this, int a2, int a3)
{
  v28 = 0;
  v6 = *(this + 11);
  v7 = *(v6 + 4 * a2);
  data = CPMLLibSVM::Cache::get_data(*(this + 9), *(v6 + 4 * a2), &v28, *(this + 16));
  v9 = *(this + 16);
  if (data < v9 && v9 >= 1)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      v13 = *(this + 1);
      v14 = *(this + 2);
      v15 = (this + (v14 >> 1));
      if (v14)
      {
        v13 = *(*v15 + v13);
      }

      v16 = v13(v15, v7, v11);
      v12[v11++] = v16;
    }

    while (v11 < *(this + 16));
  }

  v17 = *(this + 24);
  result = *(this + v17 + 13);
  *(this + 24) = 1 - v17;
  if (a3 >= 1)
  {
    v19 = *(this + 10);
    v20 = *(this + 11);
    v21 = v19[a2];
    v22 = v28;
    v23 = a3;
    v24 = result;
    do
    {
      v25 = *v19++;
      v26 = v21 * v25;
      v27 = *v20++;
      *v24++ = v26 * v22[v27];
      --v23;
    }

    while (v23);
  }

  return result;
}

double CPMLLibSVM::SVR_Q::swap_index(CPMLLibSVM::SVR_Q *this, int a2, int a3)
{
  v3 = *(this + 10);
  v4 = *(v3 + a2);
  *(v3 + a2) = *(v3 + a3);
  *(v3 + a3) = v4;
  v5 = *(this + 11);
  v6 = *(v5 + 4 * a2);
  *(v5 + 4 * a2) = *(v5 + 4 * a3);
  *(v5 + 4 * a3) = v6;
  v7 = *(this + 15);
  result = *(v7 + 8 * a2);
  *(v7 + 8 * a2) = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = result;
  return result;
}

void CPMLLibSVM::SVR_Q::~SVR_Q(CPMLLibSVM::SVR_Q *this)
{
  CPMLLibSVM::SVR_Q::~SVR_Q(this);

  JUMPOUT(0x24C19F910);
}

{
  *this = &unk_285926E38;
  v2 = *(this + 9);
  if (v2)
  {
    CPMLLibSVM::Cache::~Cache(v2);
    MEMORY[0x24C19F910]();
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x24C19F8F0](v3, 0x1000C8077774924);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x24C19F8F0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 13);
  if (v5)
  {
    MEMORY[0x24C19F8F0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x24C19F8F0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 15);
  if (v7)
  {
    MEMORY[0x24C19F8F0](v7, 0x1000C8000313F17);
  }

  CPMLLibSVM::Kernel::~Kernel(this);
}

void CPMLUserDefinedAlgorithm::CPMLUserDefinedAlgorithm(CPMLUserDefinedAlgorithm *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v4 = &unk_2859272F8;
  CPMLCDB::getIterator();
}

void CPMLUserDefinedAlgorithm::CPMLUserDefinedAlgorithm(CPMLUserDefinedAlgorithm *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v3 = &unk_2859272F8;
  CPMLDelegate::deSerializeCPMLAlgorithm(*(v3 + 56));
}

void CPMLUserDefinedAlgorithm::~CPMLUserDefinedAlgorithm(CPMLUserDefinedAlgorithm *this)
{
  CPModelClose(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLUserDefinedAlgorithm::update(CPMLUserDefinedAlgorithm *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  v5 = (*(**(this + 10) + 32))(*(this + 10), a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    do
    {
      CPMLDelegate::updateCPMLAlgorithm(*(this + 7), v6);
      v6 = (*(**(this + 10) + 32))(*(this + 10));
    }

    while (v6);
  }

  return 0;
}

uint64_t CPMLUserDefinedAlgorithm::eval(uint64_t a1, CPMLFeatureVector *a2)
{
  v4 = -1.0;
  CPMLDelegate::evaluateCPMLAlgorithm(*(a1 + 56), a2, 0, &v4);
  CPMLFeatureVector::setYHat(a2, v4);
  return 0;
}

uint64_t CPMLUserDefinedAlgorithm::train(CPMLUserDefinedAlgorithm *this)
{
  v2 = (*(**(this + 10) + 32))(*(this + 10));
  if (v2)
  {
    v3 = v2;
    do
    {
      CPMLDelegate::trainCPMLAlgorithm(*(this + 7), v3);
      v3 = (*(**(this + 10) + 32))(*(this + 10));
    }

    while (v3);
  }

  return 0;
}

double CPMLNaiveBayesSpotLightAdaptor::get_cx_given_y(CPMLNaiveBayesSpotLightAdaptor *this, int a2, int a3, int a4, double *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = a3;
  if (a2 < 2)
  {
    v10 = 0.0;
    if (a2 != 1)
    {
      v34 = 0xBFF0000000000000;
      v35 = -1.0;
      v11 = sqlite3_mprintf("select xCardinality from xCardinality%d where yMap=%d;", a2, a4);
      (*(**(this + 1) + 224))(*(this + 1), &v34, v11);
      if (v11)
      {
        sqlite3_free(v11);
      }

      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        *a5 = v34;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v12 = sqlite3_mprintf("select keyValue from cacheString where indexValue=%d;", v36);
        (*(**(this + 1) + 184))(*(this + 1), v37, 512, v12);
        if (v37[0])
        {
          v13 = sqlite3_mprintf("select count(*) from xcol0;");
          (*(**(this + 1) + 224))(*(this + 1), &v35, v13);
          sqlite3_free(v13);
          MEMORY[0x28223BE20]();
          v15 = (&v30 - v14);
          v16 = sqlite3_mprintf("select indexValue from INDEX0 where keyValue like %s%% ;", v37);
          v17 = (*(**(this + 1) + 200))(*(this + 1), v15, v35, v16);
          if (v17 < 1)
          {
            v19 = sqlite3_mprintf("select count(*) from xcol1;");
            (*(**(this + 1) + 224))(*(this + 1), &v35, v19);
            sqlite3_free(v19);
            MEMORY[0x28223BE20]();
            v21 = (&v30 - v20);
            v22 = sqlite3_mprintf("select indexValue from INDEX1 where keyValue like '%s%%';", v37);
            v23 = (*(**(this + 1) + 200))(*(this + 1), v21, v35, v22);
            if (v23 < 1)
            {
              std::vector<int>::push_back[abi:ne200100](&v31, &v36);
              LODWORD(v18) = 0;
            }

            else
            {
              v24 = v23;
              do
              {
                std::vector<int>::push_back[abi:ne200100](&v31, v21++);
                --v24;
              }

              while (v24);
              LODWORD(v18) = 1;
            }
          }

          else
          {
            v18 = v17;
            do
            {
              std::vector<int>::push_back[abi:ne200100](&v31, v15++);
              --v18;
            }

            while (v18);
          }
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100](&v31, &v36);
          LODWORD(v18) = 0;
        }

        v25 = v31;
        if (v32 == v31)
        {
          v10 = 0.0;
          if (!v31)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v26 = 0;
          v10 = 0.0;
          do
          {
            v27 = sqlite3_mprintf("select xyCount from xcol%d where (xMap==%d and yMap==%d);", v18, v25[v26], a4);
            (*(**(this + 1) + 224))(*(this + 1), &v35, v27);
            if (v27)
            {
              sqlite3_free(v27);
            }

            v28 = v35;
            if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              v35 = 0.0;
              v28 = 0.0;
            }

            v10 = v10 + v28;
            ++v26;
            v25 = v31;
          }

          while (v26 < (v32 - v31) >> 2);
          if (!v31)
          {
            goto LABEL_30;
          }
        }

        v32 = v25;
        operator delete(v25);
      }

      else
      {
        *a5 = 0.0;
        v10 = -2.0;
      }
    }

LABEL_30:
    v29 = *MEMORY[0x277D85DE8];
    return v10;
  }

  v8 = *MEMORY[0x277D85DE8];

  return CPMLNaiveBayesAdaptor::get_cx_given_y(this, a2, a3, a4, a5);
}

void sub_2472ECE74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<double>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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

void CPMLIterator::CPMLIterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_285927AC8;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  *(a1 + 64) = a5;
  *(a1 + 72) = a8;
  operator new();
}

void CPMLIterator::~CPMLIterator(CPMLIterator *this)
{
  *this = &unk_285927AC8;
  v2 = *(this + 4);
  if (v2)
  {
    if (!CPMLsql_createTable(v2, "MODEL_TRAINING_STATS", "lastTrainingIndexPos integer", 0))
    {
      v3 = sqlite3_mprintf("%d", *(this + 3) + *(this + 4));
      inserted = CPMLsql_insertIntoTable(*(this + 4), "MODEL_TRAINING_STATS", "lastTrainingIndexPos", v3);
      if ((inserted & 0x80000000) != 0)
      {
        CPMLLog = CPMLLog::getCPMLLog(inserted);
        CPMLLog::log(CPMLLog, CPML_LOG_ERR, "~CPMLIterator", "failed ot write out last training position %d %d", *(this + 4), *(this + 3));
      }

      if (v3)
      {
        sqlite3_free(v3);
      }
    }

    v6 = *(this + 6);
    if (v6)
    {
      CPMLFeatureVector::~CPMLFeatureVector(v6);
      MEMORY[0x24C19F910]();
    }

    if (*(this + 8) == 1)
    {
      v7 = *(this + 7);
      if (v7)
      {
        CPMLRemapper::~CPMLRemapper(v7);
        MEMORY[0x24C19F910]();
      }
    }

    sqlite3_finalize(*(this + 5));
  }
}

{
  CPMLIterator::~CPMLIterator(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLIterator::iterateAll(CPMLIterator *this)
{
  CPMLFeatureVector::resetAll(*(this + 6));
  CPMLFeatureVector::resizeRealVector(*(this + 6), *(*(this + 8) + 120) * *(*(this + 8) + 124));
  if (*(*(this + 8) + 120) < 1)
  {
    return *(this + 6);
  }

  v2 = 0;
  while (1)
  {
    v3 = sqlite3_step(*(this + 5));
    if (v3 != 100)
    {
      break;
    }

    v4 = *(this + 8);
    if (*(v4 + 124) >= 1)
    {
      v5 = 0;
      do
      {
        ++CPMLIterator::iterateAll(void)::ct;
        v6 = sqlite3_column_type(*(this + 5), v5);
        v7 = *(this + 5);
        if (v6 == 2 || (v8 = sqlite3_column_type(v7, v5), v7 = *(this + 5), v8 == 1))
        {
          v9 = sqlite3_column_double(v7, v5);
          v10 = CPMLRemapper::normalizeColumn(*(this + 7), v9, v5);
        }

        else
        {
          v11 = sqlite3_column_text(v7, v5);
          v10 = CPMLRemapper::remap(*(this + 7), v11, v5);
          v12 = *(this + 8);
          if (*(v12 + 136) == 1)
          {
            v10 = v10 / *(v12 + 120);
          }
        }

        CPMLFeatureVector::insertRealVClass(*(this + 6), v10, v2 + *(*(this + 8) + 120) * v5++);
        v4 = *(this + 8);
      }

      while (v5 < *(v4 + 124));
    }

    if (++v2 >= *(v4 + 120))
    {
      return *(this + 6);
    }
  }

  v13 = v3;
  if (v3 == 101)
  {
    return *(this + 6);
  }

  CPMLLog = CPMLLog::getCPMLLog(v3);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "iterateAll", "CPCDBDefault: Error iterating All rows %d\n", v13);
  return 0;
}

uint64_t CPMLIterator::iterateFirst(CPMLIterator *this)
{
  v55[1] = *MEMORY[0x277D85DE8];
  do
  {
    v2 = sqlite3_step(*(this + 5));
    if (v2 == 101 || (v3 = v2, CPMLFeatureVector::resetAll(*(this + 6)), v3 != 100))
    {
      result = 0;
      goto LABEL_56;
    }

    ++*(this + 4);
    v4 = *(this + 8);
    if (*(v4 + 124) < 1)
    {
      break;
    }

    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v4 + 128);
      v8 = *(this + 5);
      if (v5 == v7)
      {
        v9 = sqlite3_column_type(v8, v7);
        v10 = *(this + 5);
        v11 = *(*(this + 8) + 128);
        if (v9 == 2 || (v12 = sqlite3_column_type(v10, v11), v10 = *(this + 5), v11 = *(*(this + 8) + 128), v12 == 1))
        {
          v13 = sqlite3_column_double(v10, v11);
LABEL_10:
          CPMLFeatureVector::setYHat(*(this + 6), v13);
          goto LABEL_17;
        }

        if (sqlite3_column_type(v10, v11) != 4)
        {
          v36 = sqlite3_column_text(*(this + 5), *(*(this + 8) + 128));
          v13 = CPMLRemapper::remap(*(this + 7), v36, *(*(this + 8) + 128));
          goto LABEL_10;
        }

        v22 = *(*(this + 8) + 128);
        v23 = sqlite3_column_blob(*(this + 5), v22);
        sqlite3_column_bytes(*(this + 5), v22);
        v24 = MEMORY[0x28223BE20]();
        v26 = v55 - v25;
        v27 = *v23;
        if (v27 == 83)
        {
          v39 = *(v23 + 1);
          if (v39)
          {
            v40 = (v23 + 9);
            do
            {
              v43 = *v40;
              v41 = (v40 + 1);
              v42 = v43;
              strlcpy(v26, v41, v43);
              v44 = CPMLRemapper::remap(*(this + 7), v26, v22);
              if ((v44 & 0x80000000) == 0)
              {
                CPMLFeatureVector::insertYIntVClass(*(this + 6), v44);
              }

              v40 = &v41[v42];
              --v39;
            }

            while (v39);
            v13 = v44;
            goto LABEL_51;
          }
        }

        else
        {
          if (v27 == 78)
          {
            v13 = CPMLRemapper::remap(*(this + 7), "", v22);
LABEL_51:
            YVectorVector = CPMLFeatureVector::getYVectorVector(*(this + 6));
            v6 &= YVectorVector[1] != *YVectorVector;
            goto LABEL_17;
          }

          CPMLLog = CPMLLog::getCPMLLog(v24);
          CPMLLog::log(CPMLLog, CPML_LOG_ERR, "iterateFirst", "Encoding unsupported");
        }

        v13 = 0.0;
        goto LABEL_51;
      }

      v14 = sqlite3_column_type(v8, v5);
      v15 = *(this + 5);
      if (v14 == 2 || (v16 = sqlite3_column_type(v15, v5), v15 = *(this + 5), v16 == 1))
      {
        v17 = sqlite3_column_double(v15, v5);
        v13 = CPMLRemapper::normalizeColumn(*(this + 7), v17, v5);
      }

      else
      {
        v28 = sqlite3_column_type(v15, v5);
        v29 = *(this + 5);
        if (v28 == 4)
        {
          v30 = sqlite3_column_blob(v29, v5);
          sqlite3_column_bytes(*(this + 5), v5);
          v31 = MEMORY[0x28223BE20]();
          v33 = v55 - v32;
          v34 = *v30;
          if (v34 != 83)
          {
            if (v34 == 78)
            {
              v35 = CPMLRemapper::remap(*(this + 7), "", v5);
              CPMLFeatureVector::insertIntToLastVVClass(*(this + 6), v35);
            }

            else
            {
              v52 = CPMLLog::getCPMLLog(v31);
              CPMLLog::log(v52, CPML_LOG_ERR, "iterateFirst", "Encoding unsupported");
            }

            goto LABEL_24;
          }

          v45 = *(v30 + 1);
          v13 = 666.666;
          if (v45)
          {
            v46 = (v30 + 9);
            do
            {
              v48 = *v46;
              v47 = (v46 + 1);
              strlcpy(v33, v47, v48);
              v49 = CPMLRemapper::remap(*(this + 7), v33, v5);
              CPMLFeatureVector::insertIntToLastVVClass(*(this + 6), v49);
              v46 = &v47[v48];
              --v45;
            }

            while (v45);
            v13 = v49;
          }
        }

        else
        {
          v37 = sqlite3_column_text(v29, v5);
          v13 = CPMLRemapper::remap(*(this + 7), v37, v5);
          v38 = *(this + 8);
          if (*(v38 + 136) == 1)
          {
            v13 = v13 / *(v38 + 120);
          }
        }
      }

      v18 = *(this + 8);
      if (*(*(v18 + 72) + 4 * v5) || *(v18 + 136) == 1)
      {
        CPMLFeatureVector::insertRealVClass(*(this + 6), v13);
      }

      else
      {
        CPMLFeatureVector::insertIntVClass(*(this + 6), v13);
      }

LABEL_17:
      isOptionAvailable = CPMLTunableData::isOptionAvailable(*(this + 9), v5);
      v21 = v13 <= 0.0 || !isOptionAvailable;
      v6 &= v21;
LABEL_24:
      ++v5;
      v4 = *(this + 8);
    }

    while (v5 < *(v4 + 124));
  }

  while ((v6 & 1) == 0);
  result = *(this + 6);
LABEL_56:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void CPMLTunableData::CPMLTunableData(CPMLTunableData *this, void *a2, void *a3)
{
  v5 = a2;
  this->var1 = [v5 objectForKey:@"tuneableDictionary"];
  v6 = [v5 objectForKey:@"tuneableDictionary"];
  this->var0 = [v6 count];
  this->var2 = a3;
}

void *CPMLTunableData::getNSNumFrom(CPMLTunableData *this, const char *a2)
{
  if (!this->var1)
  {
    NSLog(&cfstr_SMdataEmpty.isa, "getNSNumFrom");
  }

  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
  v5 = [this->var1 objectForKey:v4];

  return v5;
}

uint64_t CPMLTunableData::tDataGetBool(CPMLTunableData *this, const char *a2, BOOL *a3)
{
  v4 = CPMLTunableData::getNSNumFrom(this, a2);
  *a3 = [v4 BOOLValue];

  return 0;
}

uint64_t CPMLTunableData::tDataGetInt(CPMLTunableData *this, const char *a2, int *a3)
{
  v4 = CPMLTunableData::getNSNumFrom(this, a2);
  *a3 = [v4 intValue];

  return 0;
}

uint64_t CPMLTunableData::tDataGetUInt(CPMLTunableData *this, const char *a2, unsigned int *a3)
{
  v4 = CPMLTunableData::getNSNumFrom(this, a2);
  *a3 = [v4 unsignedIntValue];

  return 0;
}

uint64_t CPMLTunableData::tDataGetUInt64(CPMLTunableData *this, const char *a2, unint64_t *a3)
{
  v4 = CPMLTunableData::getNSNumFrom(this, a2);
  *a3 = [v4 unsignedLongLongValue];

  return 0;
}

uint64_t CPMLTunableData::tDataGetDouble(CPMLTunableData *this, const char *a2, double *a3)
{
  v4 = CPMLTunableData::getNSNumFrom(this, a2);
  [v4 doubleValue];
  *a3 = v5;

  return 0;
}

uint64_t CPMLTunableData::tDataGetString(CPMLTunableData *this, const char *a2, char *a3, size_t a4)
{
  if (!this->var1)
  {
    NSLog(&cfstr_SMdataEmpty.isa, "tDataGetString");
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
  v9 = [this->var1 objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    strlcpy(a3, [v9 UTF8String], a4);
  }

  else
  {
    strlcpy(a3, "", 0);
  }

  return 0;
}

BOOL CPMLTunableData::isOptionAvailable(CPMLTunableData *this, int a2)
{
  v3 = this->var2;
  if ([v3 count] <= a2)
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:?];
    v5 = [MEMORY[0x277CBEB68] null];
    v6 = v4 != v5;
  }

  return v6;
}

void *CPMLStatistics::allocateMemory(CPMLStatistics *this)
{
  std::vector<int>::reserve(this + 3, *(this + 31));
  std::vector<double>::reserve(this + 3, *(this + 31));
  std::vector<int>::reserve(this, *(this + 31));
  std::vector<int>::reserve(this + 2, *(this + 31));
  std::vector<double>::reserve(this + 18, *(this + 31));
  std::vector<int>::reserve(this + 4, *(this + 31));
  std::vector<double>::reserve(this + 21, *(this + 31));
  std::vector<double>::reserve(this + 24, *(this + 31));
  std::vector<double>::reserve(this + 27, *(this + 31));
  v2 = *(this + 31);

  return std::vector<double>::reserve(this + 30, v2);
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

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t CPMLStatistics::CPMLStatistics(uint64_t a1, int a2, int a3)
{
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 124) = a2;
  *(a1 + 136) = a3 != 0;
  CPMLStatistics::allocateMemory(a1);
  return a1;
}

void sub_2472EE0E4(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 240);
  if (v4)
  {
    *(v1 + 248) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 216);
  if (v5)
  {
    *(v1 + 224) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 192);
  if (v6)
  {
    *(v1 + 200) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 168);
  if (v7)
  {
    *(v1 + 176) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 96);
  if (v9)
  {
    *(v1 + 104) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 72);
  if (v10)
  {
    *(v1 + 80) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 48);
  if (v11)
  {
    *(v1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 24);
  if (v12)
  {
    *(v1 + 32) = v12;
    operator delete(v12);
  }

  v13 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLStatistics::CPMLStatistics(uint64_t a1, void *a2, int a3)
{
  *(a1 + 48) = 0u;
  v5 = (a1 + 48);
  *(a1 + 96) = 0u;
  v6 = (a1 + 96);
  *(a1 + 144) = 0u;
  v7 = (a1 + 144);
  *(a1 + 192) = 0u;
  v8 = (a1 + 192);
  *(a1 + 240) = 0u;
  v9 = (a1 + 240);
  *(a1 + 112) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = a2;
  v10 = a2;
  *(a1 + 124) = [v10 getColumnCount];
  v11 = [v10 getYColumnPosition];
  *(a1 + 128) = v11;
  *(a1 + 132) = [v10 getCombinedRemapTableCardinality:v11];
  *(a1 + 120) = [v10 getRowCount];
  *(a1 + 136) = a3 != 0;
  CPMLStatistics::allocateMemory(a1);
  v12 = *(a1 + 124);
  if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      LODWORD(v24) = [v10 isColumnContinousData:v13];
      std::vector<int>::push_back[abi:ne200100]((a1 + 72), &v24);
      v13 = (v13 + 1);
      v12 = *(a1 + 124);
    }

    while (v13 < v12);
  }

  if (v12)
  {
    v14 = 0;
    do
    {
      v15 = [v10 getCardinality:v14];
      if ([v10 getSchemaType:v14] == 7)
      {
        LODWORD(v24) = v15;
        std::vector<int>::push_back[abi:ne200100](v5, &v24);
      }

      else if (*(*(a1 + 72) + 4 * v14) || *(a1 + 136) == 1)
      {
        v24 = v15;
        std::vector<double>::push_back[abi:ne200100]((a1 + 24), &v24);
      }

      else
      {
        LODWORD(v24) = v15;
        std::vector<int>::push_back[abi:ne200100](a1, &v24);
      }

      v24 = v15;
      std::vector<double>::push_back[abi:ne200100](v7, &v24);
      [v10 getMeanFor:v14];
      v24 = v16;
      std::vector<double>::push_back[abi:ne200100]((a1 + 168), &v24);
      [v10 getStdDevFor:v14];
      v24 = v17;
      std::vector<double>::push_back[abi:ne200100](v8, &v24);
      [v10 getMinFor:v14];
      v24 = v18;
      std::vector<double>::push_back[abi:ne200100]((a1 + 216), &v24);
      [v10 getMaxFor:v14];
      v24 = v19;
      std::vector<double>::push_back[abi:ne200100](v9, &v24);
      v20 = [v10 getRemapTable];
      v21 = [v20 objectAtIndex:v14];
      v22 = v21;
      if (v21)
      {
        LODWORD(v24) = [v21 intValue];
        std::vector<int>::push_back[abi:ne200100](v6, &v24);
      }

      ++v14;
    }

    while (v14 < *(a1 + 124));
  }

  return a1;
}

void sub_2472EE414(_Unwind_Exception *a1)
{
  v9 = *v6;
  if (*v6)
  {
    *(v1 + 248) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 216);
  if (v10)
  {
    *(v1 + 224) = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    *(v1 + 200) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 168);
  if (v12)
  {
    *(v1 + 176) = v12;
    operator delete(v12);
  }

  v13 = *v4;
  if (*v4)
  {
    *(v1 + 152) = v13;
    operator delete(v13);
  }

  v14 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v14;
    operator delete(v14);
  }

  v15 = *(v1 + 72);
  if (v15)
  {
    *(v1 + 80) = v15;
    operator delete(v15);
  }

  v16 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v16;
    operator delete(v16);
  }

  v17 = *(v1 + 24);
  if (v17)
  {
    *(v1 + 32) = v17;
    operator delete(v17);
  }

  v18 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void CPMLStatistics::~CPMLStatistics(CPMLStatistics *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

void CPMLStatistics::updateAllColumnTypeToReal(CPMLStatistics *this)
{
  v2 = *(this + 33);
  if (*(this + 31))
  {
    v3 = 0;
    v5 = v2;
    do
    {
      *(*(this + 9) + 4 * v3) = 1;
      v4 = [v2 getCardinality:v3];
      if ([v5 getSchemaType:v3] != 7)
      {
        *(*(this + 3) + 8 * v3) = v4;
      }

      ++v3;
      v2 = v5;
    }

    while (v3 < *(this + 31));
  }
}

void *CPKNNClassfier::initializeNaiveKNNMemory(CPKNNClassfier *this)
{
  result = malloc_type_calloc(*(this + 15), 8 * *(this + 16) + 8, 0x100004000313F17uLL);
  *(this + 14) = result;
  return result;
}

void CPKNNClassfier::CPKNNClassfier(CPKNNClassfier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_2859278E8;
  strcpy((v5 + 8), "1.0.0");
  *(v5 + 244) = 0;
  v6 = *(a2->var0 + 15);
  *&v7 = v6;
  *(&v7 + 1) = SHIDWORD(v6);
  *(v5 + 120) = v7;
  *(v5 + 96) = xmmword_247321D00;
  CPMLCDB::getIterator();
}

void CPKNNClassfier::CPKNNClassfier(CPKNNClassfier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v6 = &unk_2859278E8;
  *(v6 + 244) = 1;
  if (CPMLTunableData::getNumberOfItems(a3) < 1)
  {
    *(this + 17) = 1;
    strlcpy(this + 144, "/tmp/knn_buffer", 0x64uLL);
  }

  else
  {
    CPMLTunableData::tDataGetUInt64(a3, "kthValue", this + 17);
    CPMLTunableData::tDataGetString(a3, "cacheFileName", this + 144, 0x64uLL);
  }

  if (((*(a2->var0 + 13))(a2, this + 8, "version", 5, 0) & 0x80000000) != 0)
  {
    strcpy(this + 8, "1.0.0");
  }

  if (((*(a2->var0 + 10))(a2, this + 96, "totalDataCount", 1, 0) & 0x80000000) != 0)
  {
    *(this + 12) = 0;
  }

  if (((*(a2->var0 + 10))(a2, this + 128, "totalCols", 1, 0) & 0x80000000) != 0)
  {
    *(this + 16) = 0;
  }

  if (((*(a2->var0 + 10))(a2, this + 120, "totalRows", 1, 0) & 0x80000000) != 0)
  {
    *(this + 15) = 0;
  }

  if (((*(a2->var0 + 10))(a2, this + 104, "KNNDistanceType", 1, 1) & 0x80000000) != 0)
  {
    *(this + 13) = 1;
  }

  if (!*(this + 16))
  {
    v7 = sqlite3_mprintf("select cptrainColumns from cptrainColumns;");
    (*(a2->var0 + 24))(a2, this + 128, v7);
    if (v7)
    {
      sqlite3_free(v7);
    }
  }

  if (a2->var1)
  {
    if ((*(a2->var0 + 32))(a2, this + 144, this + 112, (8 * (*(this + 30) + *(this + 30) * *(this + 32)))))
    {
      *(this + 244) = 0;
      *(this + 14) = malloc_type_calloc(*(this + 15), 8 * *(this + 16) + 8, 0x100004000313F17uLL);
      v8 = *(this + 15) + *(this + 15) * *(this + 16);
      if (((*(a2->var0 + 12))(a2) & 0x80000000) != 0)
      {
        v10 = *(this + 15);
        v11 = *(this + 16) + 1;
        v9 = *(this + 14);
        if (v11 * v10)
        {
          bzero(*(this + 14), 8 * v11 * v10);
        }
      }

      else
      {
        v9 = *(this + 14);
        v10 = *(this + 15);
        v11 = *(this + 16) + 1;
      }

      (*(a2->var0 + 31))(a2, this + 144, v9, (8 * v10 * v11));
    }
  }

  else
  {
    *(this + 14) = 0;
  }
}

void CPKNNClassfier::~CPKNNClassfier(void **this)
{
  *this = &unk_2859278E8;
  if ((*(this + 244) & 1) == 0 && *(this[11] + 8) == 1)
  {
    free(this[14]);
  }

  CPModelClose(this);
}

{
  CPKNNClassfier::~CPKNNClassfier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPKNNClassfier::serialize(CPKNNClassfier *this)
{
  v2 = *(this + 11);
  v3 = strlen(this + 8);
  (*(*v2 + 56))(v2, this + 8, "version", v3, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 96, "totalDataCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 128, "totalCols", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 120, "totalRows", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "KNNDistanceType", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 14), "KNNDataTable", *(this + 15) + *(this + 15) * *(this + 16), 0);
  return 0;
}

uint64_t CPKNNClassfier::train(CPKNNClassfier *this)
{
  v2 = (*(**(this + 10) + 32))(*(this + 10));
  if (v2)
  {
    v3 = v2;
    do
    {
      IntVector = CPMLFeatureVector::getIntVector(v3);
      v5 = *IntVector;
      v6 = IntVector[1] - *IntVector;
      if (v6)
      {
        v7 = v6 >> 2;
        v8 = (*(this + 14) + 8 * (*(this + 12) + *(this + 12) * *(this + 16)));
        if (v7 <= 1)
        {
          v7 = 1;
        }

        do
        {
          v9 = *v5++;
          *v8++ = v9;
          --v7;
        }

        while (v7);
      }

      RealVector = CPMLFeatureVector::getRealVector(v3);
      v11 = *RealVector;
      v12 = *(RealVector + 8) - *RealVector;
      if (v12)
      {
        v13 = v12 >> 3;
        v14 = (*(this + 14) + 8 * (*(this + 12) + *(this + 12) * *(this + 16)) + 2 * (IntVector[1] - *IntVector));
        if (v13 <= 1)
        {
          v13 = 1;
        }

        do
        {
          v15 = *v11++;
          *v14++ = v15;
          --v13;
        }

        while (v13);
      }

      YHat = CPMLFeatureVector::getYHat(v3);
      v17 = *(this + 12);
      v18 = *(this + 15);
      *(*(this + 14) + 8 * (v17 + v17 * *(this + 16)) + *(RealVector + 8) - *RealVector + 2 * (IntVector[1] - *IntVector)) = YHat;
      *(this + 15) = v18 + 1;
      *(this + 12) = v17 + 1;
      v3 = (*(**(this + 10) + 32))(*(this + 10));
    }

    while (v3);
  }

  return 0;
}

uint64_t CPKNNClassfier::eval(uint64_t a1, CPMLFeatureVector *a2)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = malloc_type_calloc(8 * *(a1 + 96), 1uLL, 0x100004000313F17uLL);
  v56 = malloc_type_calloc(8 * *(a1 + 128), 1uLL, 0x100004000313F17uLL);
  v55 = malloc_type_calloc(8 * *(a1 + 136), 1uLL, 0x100004000313F17uLL);
  v5 = malloc_type_calloc(4 * *(a1 + 136), 1uLL, 0x100004052888210uLL);
  v6 = v5;
  v7 = *(a1 + 136);
  if (v7)
  {
    v8 = v5;
    v9 = v55;
    do
    {
      *v8++ = -1;
      *v9++ = 0x7FEFFFFFFFFFFFFFLL;
      --v7;
    }

    while (v7);
  }

  IntVector = CPMLFeatureVector::getIntVector(a2);
  v11 = *IntVector;
  v12 = IntVector[1] - *IntVector;
  if (v12)
  {
    v13 = v12 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = v56;
    do
    {
      v15 = *v11++;
      *v14++ = v15;
      --v13;
    }

    while (v13);
  }

  RealVector = CPMLFeatureVector::getRealVector(a2);
  v17 = *RealVector;
  v18 = *(RealVector + 8) - *RealVector;
  if (v18)
  {
    v19 = v18 >> 3;
    v20 = v56 + 2 * (IntVector[1] - *IntVector);
    if (v19 <= 1)
    {
      v19 = 1;
    }

    do
    {
      v21 = *v17++;
      *v20 = v21;
      v20 += 8;
      --v19;
    }

    while (v19);
  }

  v54 = a2;
  if (*(a1 + 96))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      if (*(*(a1 + 88) + 8) == 1)
      {
        v24 = *(a1 + 128);
        if (v24)
        {
          v25 = (*(a1 + 112) + v22 * (v24 + 1));
          v26 = 0.0;
          v27 = v56;
          do
          {
            v28 = *v27++;
            v29 = v28;
            v30 = *v25++;
            v26 = v26 + (v29 - v30) * (v29 - v30);
            --v24;
          }

          while (v24);
        }

        else
        {
          v26 = 0.0;
        }
      }

      else
      {
        MEMORY[0x28223BE20]();
        v32 = (&v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(**(a1 + 88) + 152))(*(a1 + 88), v32, *(a1 + 128) + 1, "KNNDataTable", "KNNDataTable", (v23 * (*(a1 + 128) + 1)));
        v33 = *(a1 + 128);
        if (v33)
        {
          v26 = 0.0;
          v34 = v56;
          do
          {
            v35 = *v34++;
            v36 = v35;
            v37 = *v32++;
            v26 = v26 + (v36 - v37) * (v36 - v37);
            --v33;
          }

          while (v33);
        }

        else
        {
          v26 = 0.0;
        }
      }

      v4[v23] = sqrt(v26);
      v38 = *(a1 + 136);
      if (v38)
      {
        v39 = v4[v23];
        v40 = v55;
        v41 = v6;
        v42 = *(a1 + 136);
        v43 = v23;
        do
        {
          v44 = *v40;
          if (v39 < *v40)
          {
            *v40 = v39;
            v4[v23] = v44;
            v45 = *v41;
            *v41 = v43;
            v43 = v45;
            v39 = v44;
          }

          ++v41;
          ++v40;
          --v42;
        }

        while (v42);
      }

      ++v23;
      v22 += 8;
    }

    while (*(a1 + 96) > v23);
    if (v38)
    {
      goto LABEL_33;
    }

LABEL_42:
    v50 = 1.0;
    goto LABEL_43;
  }

  v38 = *(a1 + 136);
  if (!v38)
  {
    goto LABEL_42;
  }

LABEL_33:
  v46 = 0;
  v47 = 0.0;
  do
  {
    v48 = *(a1 + 88);
    if (v48[8] == 1)
    {
      v49 = *(*(a1 + 112) + 8 * (v6[v46] + v6[v46] * *(a1 + 128)) + *(RealVector + 8) - *RealVector + 2 * (IntVector[1] - *IntVector));
    }

    else
    {
      (*(*v48 + 152))(v48, v57, 1, "KNNDataTable", "KNNDataTable", ((*(RealVector + 8) - *RealVector) >> 3) + ((IntVector[1] - *IntVector) >> 2) + v6[v46] + v6[v46] * *(a1 + 128));
      v49 = *v57;
      v38 = *(a1 + 136);
    }

    v47 = v47 + v49;
    ++v46;
  }

  while (v46 < v38);
  v50 = 1.0;
  if (v47 / v38 < 0.5)
  {
    v50 = 0.0;
  }

LABEL_43:
  CPMLFeatureVector::setYHat(v54, v50);
  free(v6);
  free(v55);
  free(v4);
  free(v56);
  v51 = *MEMORY[0x277D85DE8];
  return 0;
}

void CPMLNaiveBayesClassifier::CPMLNaiveBayesClassifier(CPMLNaiveBayesClassifier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_285927370;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 376) = 0;
  *(v5 + 384) = 0;
  strcpy((v5 + 8), "1.0.1");
  var0 = a2->var0;
  v7 = *(a2->var0 + 33);
  *(v5 + 96) = *(a2->var0 + 31);
  *(v5 + 104) = v7;
  v8 = (*(var0 + 4) - *(var0 + 3)) >> 3;
  *(v5 + 112) = 0;
  *(v5 + 120) = v8;
  v9 = *var0;
  *(v5 + 128) = (*(var0 + 1) - *var0) >> 2;
  *(v5 + 136) = v9;
  v10 = (*(var0 + 7) - *(var0 + 6)) >> 2;
  *(v5 + 144) = v7;
  *(v5 + 152) = v10;
  CPMLCDB::getIterator();
}

void sub_2472EFB14(_Unwind_Exception *a1)
{
  v4 = v1[25];
  if (v4)
  {
    v1[26] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[23] = v5;
    operator delete(v5);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void CPMLNaiveBayesClassifier::setTunableData(CPMLNaiveBayesClassifier *this, CPMLTunableData *a2)
{
  v4 = (this + 344);
  if (CPMLTunableData::getNumberOfItems(a2) < 2)
  {
    *(this + 41) = 20;
    __asm { FMOV            V0.2D, #1.0 }

    *v4 = _Q0;
    *(this + 84) = 1;
    *(this + 45) = 0x3CD203AF9EE75616;
    *(this + 112) = 0;
    strcpy(this + 226, "defaultNBV3b");
  }

  else
  {
    CPMLTunableData::tDataGetInt(a2, "k", this + 82);
    CPMLTunableData::tDataGetDouble(a2, "decayRate", this + 43);
    CPMLTunableData::tDataGetDouble(a2, "smoothRate", this + 44);
    CPMLTunableData::tDataGetInt(a2, "smoothMode", this + 84);
    CPMLTunableData::tDataGetDouble(a2, "epsilonRate", this + 45);
    CPMLTunableData::tDataGetBool(a2, "enableLogging", this + 225);
    CPMLTunableData::tDataGetString(a2, "logFilename", this + 226, 0x64uLL);
    CPMLTunableData::tDataGetBool(a2, "dataCollection", this + 224);
    CPMLTunableData::tDataGetInt(a2, "nbAdatorVersion", this + 83);
  }

  operator new();
}

void CPMLNaiveBayesClassifier::CPMLNaiveBayesClassifier(CPMLNaiveBayesClassifier *this, CPMLStatistics *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a3, a4);
  *v8 = &unk_285927370;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 96) = *(a2 + 31);
  v10 = 0.0;
  (*(a3->var0 + 24))(a3, v8 + 104, "CREATE TABLE IF NOT EXISTS resultCardinality (resultCardinality INTEGER, pKey INTEGER PRIMARY KEY);");
  (*(a3->var0 + 28))(a3, &v10, "CREATE TABLE IF NOT EXISTS rowCountY (rowCountY REAL, pKey INTEGER PRIMARY KEY);");
  (*(a3->var0 + 28))(a3, &v10, "CREATE TABLE IF NOT EXISTS yCount (yMap INTEGER, yCount REAL, pKey INTEGER PRIMARY KEY);");
  (*(a3->var0 + 28))(a3, &v10, "CREATE INDEX IF NOT EXISTS idxRowCountY on rowCountY (rowCountY);");
  (*(a3->var0 + 28))(a3, &v10, "CREATE INDEX IF NOT EXISTS idxYCount on yCount (yMap, yCount);");
  if (*(this + 12))
  {
    v9 = 0;
    do
    {
      sprintf(v12, "CREATE TABLE IF NOT EXISTS xcol%d (xMap INTEGER, yMap INTEGER, xyCount REAL, pKey INTEGER PRIMARY KEY);", v9);
      sprintf(v11, "CREATE TABLE IF NOT EXISTS xCardinality%d (yMap INTEGER, xCardinality REAL, pKey INTEGER PRIMARY KEY);", v9);
      (*(a3->var0 + 28))(a3, &v10, v11);
      (*(a3->var0 + 28))(a3, &v10, v12);
      ++v9;
    }

    while (*(this + 12) > v9);
  }

  (*(a3->var0 + 28))(a3, &v10, "CREATE TABLE IF NOT EXISTS resultCardinality (resultCardinality REAL, pKey INTEGER PRIMARY KEY);");
  (*(a3->var0 + 28))(a3, &v10, "select count(*) from yCount;");
  if (v10 >= 1.0)
  {
    *(this + 13) = v10;
  }

  else
  {
    *v12 = 0;
    (*(a3->var0 + 4))(a3, v12, "resultCardinality", 1, 0, v10);
  }

  CPMLNaiveBayesClassifier::setTunableData(this, a4);
}

void sub_2472F010C(_Unwind_Exception *a1)
{
  v3 = v1[25];
  if (v3)
  {
    v1[26] = v3;
    operator delete(v3);
  }

  v4 = v1[22];
  if (v4)
  {
    v1[23] = v4;
    operator delete(v4);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void CPMLNaiveBayesClassifier::~CPMLNaiveBayesClassifier(CPMLNaiveBayesClassifier *this)
{
  *this = &unk_285927370;
  v2 = *(this + 46);
  if (v2)
  {
    CPMLLogger::~CPMLLogger(v2);
    MEMORY[0x24C19F910]();
  }

  v3 = *(this + 47);
  if (v3)
  {
    CPMLNaiveBayes::~CPMLNaiveBayes(v3);
    MEMORY[0x24C19F910]();
  }

  v4 = *(this + 48);
  if (v4)
  {
    CPMLNaiveBayesAdaptor::~CPMLNaiveBayesAdaptor(v4);
    MEMORY[0x24C19F910]();
  }

  v5 = *(this + 20);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    free(v6);
  }

  v7 = *(this + 25);
  if (v7)
  {
    *(this + 26) = v7;
    operator delete(v7);
  }

  v8 = *(this + 22);
  if (v8)
  {
    *(this + 23) = v8;
    operator delete(v8);
  }

  CPModelClose(this);
}

{
  CPMLNaiveBayesClassifier::~CPMLNaiveBayesClassifier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLNaiveBayesClassifier::serialize(CPMLNaiveBayesClassifier *this)
{
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "resultCardinality", 1, 0);
  v2 = strlen(this + 8);
  (*(**(this + 11) + 56))(*(this + 11), this + 8, "version", v2, 0);
  return 0;
}

uint64_t CPMLNaiveBayesClassifier::train(CPMLNaiveBayesClassifier *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 10) + 32))(*(this + 10));
  if (v2)
  {
    while (1)
    {
      YVectorVector = CPMLFeatureVector::getYVectorVector(v2);
      v4 = *YVectorVector;
      v5 = *(YVectorVector + 1) - *YVectorVector;
      if (!v5)
      {
        break;
      }

      ++*(this + 14);
      if (v5 < 0x11)
      {
        if (v5 == 16)
        {
          v8 = *v4;
          v7 = **v4;
          v9 = v8[1] - v7;
          v10 = v9 >> 2;
          if ((v9 >> 2))
          {
            if (v10 == 1)
            {
              *(*(this + 20) + 8 * *v7) = *(*(this + 20) + 8 * *v7) + 1.0;
            }

            else if (v10 >= 1)
            {
              v11 = 0;
              v12 = *(this + 20);
              v13 = (v9 >> 2) & 0x7FFFFFFF;
              do
              {
                v14 = 0;
                v15 = *&v7[4 * v11];
                *(v12 + 8 * v15) = *(v12 + 8 * v15) + 1.0;
                do
                {
                  if (v11 != v14)
                  {
                    v16 = **(this + 21) + 8 * *(this + 18) * v15;
                    ++*(v16 + 8 * *&v7[4 * v14]);
                  }

                  ++v14;
                }

                while (v13 != v14);
                ++v11;
              }

              while (v11 != v13);
            }
          }
        }
      }

      else
      {
        CPMLLog = CPMLLog::getCPMLLog(YVectorVector);
        CPMLLog::log(CPMLLog, CPML_LOG_ERR, "train", "Too many Y\n");
      }

      v2 = (*(**(this + 10) + 32))(*(this + 10));
      if (!v2)
      {
        goto LABEL_17;
      }
    }

    v27 = CPMLLog::getCPMLLog(YVectorVector);
    CPMLLog::log(v27, CPML_LOG_ERR, "train", "no vectors to process\n");
    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_17:
    v17 = sqlite3_mprintf("%lf", *(this + 14));
    (*(**(this + 11) + 136))(*(this + 11), "rowCountY", "rowCountY", v17);
    if (v17)
    {
      sqlite3_free(v17);
    }

    if (*(this + 13))
    {
      v18 = 0;
      do
      {
        v19 = sqlite3_mprintf("%d,%lf", v18, *(*(this + 20) + 8 * v18));
        (*(**(this + 11) + 136))(*(this + 11), "yCount", "yMap,yCount", v19);
        if (v19)
        {
          sqlite3_free(v19);
        }

        ++v18;
      }

      while (*(this + 13) > v18);
    }

    if (*(this + 12))
    {
      v20 = 0;
      do
      {
        sprintf(v29, "xcol%d", v20);
        v21 = *(this + 18);
        if (v21)
        {
          v22 = 0;
          for (i = 0; i < v21; ++i)
          {
            v24 = 0;
            do
            {
              v25 = sqlite3_mprintf("%d,%d,%lf", i, v24, *(**(this + 21) + v22 * v21 + 8 * v24));
              (*(**(this + 11) + 136))(*(this + 11), v29, "xMap,yMap,xyCount", v25);
              if (v25)
              {
                sqlite3_free(v25);
              }

              ++v24;
              v21 = *(this + 18);
            }

            while (v21 > v24);
            v22 += 8;
          }
        }

        ++v20;
      }

      while (*(this + 12) > v20);
    }

    result = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CPMLNaiveBayesClassifier::eval(uint64_t a1, CPMLFeatureVector *a2, uint64_t *a3)
{
  if (!*(a1 + 104))
  {
    return 0xFFFFFFFFLL;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = *a3;
  if (a3[1] == *a3)
  {
    LODWORD(__p) = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](&v25, &__p);
      v9 = __p + 1;
      LODWORD(__p) = __p + 1;
    }

    while (*(a1 + 104) > v9);
  }

  else
  {
    v7 = 0;
    do
    {
      LODWORD(__p) = *(v6 + 4 * v7);
      std::vector<int>::push_back[abi:ne200100](&v25, &__p);
      ++v7;
      v6 = *a3;
    }

    while (v7 < (a3[1] - *a3) >> 2);
  }

  XVectorVector = CPMLFeatureVector::getXVectorVector(a2);
  if (*(XVectorVector + 1) == *XVectorVector)
  {
    __p = 0;
    v23 = 0;
    v24 = 0;
    IntVector = CPMLFeatureVector::getIntVector(a2);
    v13 = *IntVector;
    if (IntVector[1] != *IntVector)
    {
      v14 = 0;
      do
      {
        LODWORD(v21[0]) = *(v13 + 4 * v14);
        std::vector<int>::push_back[abi:ne200100](&__p, v21);
        ++v14;
        v13 = *IntVector;
      }

      while (v14 < (IntVector[1] - *IntVector) >> 2);
    }

    RealVector = CPMLFeatureVector::getRealVector(a2);
    v16 = RealVector;
    v17 = *RealVector;
    if (RealVector[1] != *RealVector)
    {
      v18 = 0;
      do
      {
        LODWORD(v21[0]) = *(v17 + 8 * v18);
        std::vector<int>::push_back[abi:ne200100](&__p, v21);
        ++v18;
        v17 = *v16;
      }

      while (v18 < (v16[1] - *v16) >> 3);
    }

    if (v23 == __p)
    {
      CPMLLog = CPMLLog::getCPMLLog(RealVector);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "eval", "empty integer list");
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      memset(v21, 0, sizeof(v21));
      std::vector<std::vector<int>>::push_back[abi:ne200100](v21, &__p);
      CPMLNaiveBayes::predict(*(a1 + 376), v21, &v25, *(a1 + 328), a1 + 176);
      v28 = v21;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v28);
      CPMLFeatureVector::setYHatProbList(a2, (a1 + 176));
      v8 = 0;
      *(a1 + 184) = *(a1 + 176);
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = CPMLLog::getCPMLLog(XVectorVector);
    CPMLLog::log(v11, CPML_LOG_ERR, "eval", "no vector supported");
    v8 = 0xFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return v8;
}

void sub_2472F0920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2472F0C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CPMLModel *CPModelOpen(char *a1, char *a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 encoding:4];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
  v5 = [[CPMLModel alloc] initWithModelPath:v3 withPropertyListPath:v4];

  return v5;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CPRegressionForestClassfier::serializeTree(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 88) + 24))(*(a1 + 88), a2, "nChildren", 1, 0);
  (*(**(a1 + 88) + 24))(*(a1 + 88), a2 + 16, "N", 1, 0);
  (*(**(a1 + 88) + 24))(*(a1 + 88), a2 + 20, "M", 1, 0);
  (*(**(a1 + 88) + 24))(*(a1 + 88), a2 + 24, "NL", 1, 0);
  (*(**(a1 + 88) + 24))(*(a1 + 88), a2 + 28, "level", 1, 0);
  (*(**(a1 + 88) + 24))(*(a1 + 88), a2 + 32, "splitAttr", 1, 0);
  (*(**(a1 + 88) + 48))(*(a1 + 88), a2 + 40, "splitThreshold", 1, 0);
  (*(**(a1 + 88) + 48))(*(a1 + 88), a2 + 48, "splitCost", 1, 0);
  (*(**(a1 + 88) + 48))(*(a1 + 88), a2 + 56, "meanTarget", 1, 0);
  v9 = 0;
  v4 = *(a2 + 8);
  v6 = *v4;
  v5 = v4[1];
  if (v6)
  {
    if (!v5)
    {
      v9 = 1;
      (*(**(a1 + 88) + 24))(*(a1 + 88), &v9, "flagChildren", 1, 0);
      v7 = **(a2 + 8);
      goto LABEL_8;
    }

    v9 = 3;
    (*(**(a1 + 88) + 24))(*(a1 + 88), &v9, "flagChildren", 1, 0);
    CPRegressionForestClassfier::serializeTree(a1, **(a2 + 8));
  }

  else
  {
    if (!v5)
    {
      (*(**(a1 + 88) + 24))(*(a1 + 88), &v9, "flagChildren", 1, 0);
      return 0;
    }

    v9 = 2;
    (*(**(a1 + 88) + 24))(*(a1 + 88), &v9, "flagChildren", 1, 0);
  }

  v7 = *(*(a2 + 8) + 8);
LABEL_8:
  CPRegressionForestClassfier::serializeTree(a1, v7);
  return 0;
}

void CPRegressionForestClassfier::CPRegressionForestClassfier(CPRegressionForestClassfier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v4 = &unk_285927138;
  strcpy((v4 + 8), "1.0.0");
  CPMLCDB::getIterator();
}

void CPRegressionForestClassfier::CPRegressionForestClassfier(CPRegressionForestClassfier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_285927138;
  v6 = malloc_type_malloc(0x28uLL, 0x1080040F07CF49EuLL);
  *(this + 12) = v6;
  (*(a2->var0 + 13))(a2, this + 8, "version", 5, 0);
  (*(a2->var0 + 9))(a2, v6, "numTrees", 1, 0);
  (*(a2->var0 + 9))(a2, v6 + 4, "maxDepth", 1, 0);
  (*(a2->var0 + 9))(a2, v6 + 5, "minCardinality", 1, 0);
  (*(a2->var0 + 9))(a2, v6 + 6, "nSplitsPerTest", 1, 0);
  (*(a2->var0 + 12))(a2, v6 + 8, "splitPerTree", 1, 0);
  *(v6 + 1) = malloc_type_malloc(8 * *v6, 0x2004093837F09uLL);
  if (*v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      deSerializeTree(a2, (*(v6 + 1) + v7), v8++);
      v7 += 8;
    }

    while (v8 < *v6);
  }
}

void *deSerializeTree(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x40uLL, 0x10800407B512463uLL);
  *a2 = v6;
  (*(*a1 + 72))(a1, v6, "nChildren", 1, a3);
  (*(*a1 + 72))(a1, v6 + 2, "N", 1, a3);
  (*(*a1 + 72))(a1, v6 + 20, "M", 1, a3);
  (*(*a1 + 72))(a1, v6 + 3, "NL", 1, a3);
  (*(*a1 + 72))(a1, v6 + 28, "level", 1, a3);
  (*(*a1 + 72))(a1, v6 + 4, "splitAttr", 1, a3);
  (*(*a1 + 96))(a1, v6 + 5, "splitThreshold", 1, a3);
  (*(*a1 + 96))(a1, v6 + 6, "splitCost", 1, a3);
  (*(*a1 + 96))(a1, v6 + 7, "meanTarget", 1, a3);
  v10 = 0;
  (*(*a1 + 72))(a1, &v10, "flagChildren", 1, a3);
  result = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  v6[1] = result;
  *result = 0;
  *(v6[1] + 8) = 0;
  if (v10 == 1)
  {
    v8 = v6[1];
    goto LABEL_7;
  }

  if (v10 == 2)
  {
    v8 = v6[1] + 8;
LABEL_7:
    v9 = a3 + 1;
    return deSerializeTree(a1, v8, v9);
  }

  if (v10 != 3)
  {
    return result;
  }

  deSerializeTree(a1, v6[1], a3 + 1);
  v8 = v6[1] + 8;
  v9 = a3 + 2;
  return deSerializeTree(a1, v8, v9);
}

void CPRegressionForestClassfier::~CPRegressionForestClassfier(CPRegressionForestClassfier *this)
{
  *this = &unk_285927138;
  v2 = *(this + 12);
  if (*v2)
  {
    v3 = 0;
    do
    {
      CPRTdestroyTree(*(*(v2 + 1) + 8 * v3++));
    }

    while (v3 < *v2);
  }

  free(*(v2 + 1));

  CPModelClose(this);
}

{
  CPRegressionForestClassfier::~CPRegressionForestClassfier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPRegressionForestClassfier::serialize(CPRegressionForestClassfier *this)
{
  v3 = *(this + 11);
  v2 = *(this + 12);
  v4 = *(v2 + 1);
  v5 = strlen(this + 8);
  (*(*v3 + 56))(v3, this + 8, "version", v5, 0);
  (*(**(this + 11) + 24))(*(this + 11), v2, "numTrees", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), v2 + 4, "maxDepth", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), v2 + 5, "minCardinality", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), v2 + 6, "nSplitsPerTest", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), v2 + 8, "splitPerTree", 1, 0);
  if (*v2)
  {
    v6 = 0;
    do
    {
      CPRegressionForestClassfier::serializeTree(this, *(v4 + 8 * v6++));
    }

    while (v6 < *v2);
  }

  return 0;
}

uint64_t CPRegressionForestClassfier::train(double **this)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "train", "start training Regression Forest\n");
  v3 = (*(*this[10] + 16))(this[10]);
  v4 = *this[6];
  v5 = *(v4 + 120);
  v6 = (*(v4 + 124) - 1);
  v7 = malloc_type_malloc(8 * v5 * v6, 0x100004000313F17uLL);
  v8 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  RealVector = CPMLFeatureVector::getRealVector(v3);
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v5)
      {
        v12 = *RealVector;
        v13 = v5;
        v14 = v10;
        do
        {
          v15 = *(v12 + 8 * v14);
          v7[v14++] = v15;
          --v13;
        }

        while (v13);
      }

      ++v11;
      v10 += v5;
    }

    while (v11 != v6);
  }

  if (v5)
  {
    v16 = v6 * v5;
    v17 = *RealVector;
    v18 = v5;
    v19 = v8;
    do
    {
      v20 = *(v17 + 8 * v16);
      *v19++ = v20;
      ++v16;
      --v18;
    }

    while (v18);
  }

  v21 = this[12];
  v22 = (v21[4] * v5);
  v23 = malloc_type_malloc(8 * v22 * v6, 0x100004000313F17uLL);
  v24 = malloc_type_malloc(8 * v22, 0x100004000313F17uLL);
  if (*v21)
  {
    v25 = 0;
    do
    {
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          v27 = arc4random_uniform(v5);
          v28 = v27;
          v29 = i;
          v30 = v6;
          if (v6)
          {
            do
            {
              v23[v29] = v7[v28];
              v29 += v22;
              v28 += v5;
              --v30;
            }

            while (v30);
          }

          v24[i] = v8[v27];
        }
      }

      *(*(v21 + 1) + 8 * v25++) = CPRTgrowTree(*(v21 + 4), *(v21 + 5), *(v21 + 6), CPRTcostTargetSD, v6, v22, v23, v24, 0);
    }

    while (v25 < *v21);
  }

  free(v23);
  free(v24);
  free(v7);
  free(v8);
  return 0;
}

uint64_t CPRegressionForestClassfier::eval(uint64_t a1, CPMLFeatureVector *this)
{
  RealVector = CPMLFeatureVector::getRealVector(this);
  v5 = RealVector[1] - *RealVector;
  v6 = v5 >> 3;
  v7 = malloc_type_malloc(v5 & 0x7FFFFFFF8, 0x100004000313F17uLL);
  v8 = v7;
  if ((v5 >> 3))
  {
    v9 = *RealVector;
    v10 = (v5 >> 3);
    v11 = v7;
    do
    {
      v12 = *v9++;
      *v11++ = v12;
      --v10;
    }

    while (v10);
  }

  v13 = *(a1 + 96);
  v14 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (v14)
  {
    v15 = malloc_type_calloc(*v13, 8uLL, 0x80040B8603338uLL);
    if (v15)
    {
      v16 = v15;
      if (*v13)
      {
        v17 = 0;
        do
        {
          v18 = CPRTpredictRegressTree(*(*(v13 + 1) + 8 * v17), v8, 1u, v6);
          v16[v17] = v18;
          *v14 = *v18 + *v14;
          free(v18);
          ++v17;
          v19 = *v13;
        }

        while (v17 < v19);
        v20 = v19;
      }

      else
      {
        v20 = 0.0;
      }

      *v14 = *v14 / v20;
      free(v16);
    }

    else
    {
      free(v14);
      CPMLLog = CPMLLog::getCPMLLog(v22);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "predictForest", "yt out of memory.");
      v14 = 0;
    }
  }

  else
  {
    v21 = CPMLLog::getCPMLLog(0);
    CPMLLog::log(v21, CPML_LOG_ERR, "predictForest", "y out of memory.");
  }

  CPMLFeatureVector::setYHat(this, *v14);
  free(v8);
  free(v14);
  return 0;
}

void CPMLNaiveBayesSuggestionsClassifier::CPMLNaiveBayesSuggestionsClassifier(CPMLNaiveBayesSuggestionsClassifier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_285926EE0;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  *(v5 + 360) = 0;
  *(v5 + 368) = 0;
  strcpy((v5 + 8), "1.0.1");
  var0 = a2->var0;
  v7 = *(a2->var0 + 33);
  *(v5 + 96) = *(a2->var0 + 31);
  *(v5 + 104) = v7;
  v8 = (*(var0 + 4) - *(var0 + 3)) >> 3;
  *(v5 + 112) = 0;
  *(v5 + 120) = v8;
  v9 = *var0;
  *(v5 + 128) = (*(var0 + 1) - *var0) >> 2;
  *(v5 + 136) = v9;
  v10 = (*(var0 + 7) - *(var0 + 6)) >> 2;
  *(v5 + 144) = v7;
  *(v5 + 152) = v10;
  CPMLCDB::getIterator();
}

void sub_2472F3138(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[23] = v4;
    operator delete(v4);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void CPMLNaiveBayesSuggestionsClassifier::setTunableData(CPMLNaiveBayesSuggestionsClassifier *this, CPMLTunableData *a2)
{
  v4 = (this + 312);
  if (CPMLTunableData::getNumberOfItems(a2) < 2)
  {
    *(this + 43) = 0x100000020;
    __asm { FMOV            V0.2D, #1.0 }

    *(this + 20) = _Q0;
    *(this + 42) = 0x3CD203AF9EE75616;
    *(this + 38) = 0xA00000014;
    *v4 = 10;
    *(this + 100) = 0;
    strcpy(this + 202, "defaultNBV3");
  }

  else
  {
    CPMLTunableData::tDataGetInt(a2, "k", this + 76);
    CPMLTunableData::tDataGetInt(a2, "cacheLength", this + 86);
    CPMLTunableData::tDataGetInt(a2, "cacheAssocitivity", this + 87);
    CPMLTunableData::tDataGetDouble(a2, "decayRate", this + 40);
    CPMLTunableData::tDataGetDouble(a2, "smoothRate", this + 41);
    CPMLTunableData::tDataGetDouble(a2, "epsilonRate", this + 42);
    CPMLTunableData::tDataGetUInt(a2, "maxAllowedUpdate", this + 77);
    CPMLTunableData::tDataGetUInt(a2, "maxAllowedPredict", this + 78);
    CPMLTunableData::tDataGetBool(a2, "enableLogging", this + 201);
    CPMLTunableData::tDataGetBool(a2, "dataCollection", this + 200);
    CPMLTunableData::tDataGetString(a2, "logFilename", this + 202, 0x64uLL);
    CPMLTunableData::tDataGetString(a2, "versionMD", this + 8, 0x20uLL);
    if (!*(this + 77))
    {
      *(this + 77) = 10;
    }

    if (!*v4)
    {
      *v4 = 10;
    }

    if (!*(this + 8))
    {
      strcpy(this + 8, "1.0.1");
    }
  }

  operator new();
}

void CPMLNaiveBayesSuggestionsClassifier::CPMLNaiveBayesSuggestionsClassifier(CPMLNaiveBayesSuggestionsClassifier *this, CPMLStatistics *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a3, a4);
  *v6 = &unk_285926EE0;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0;
  *(v6 + 96) = *(a2 + 31);
  v7 = 0;
  v8 = 0;
  CPMLNaiveBayesSuggestionsClassifier::setTunableData(v6, a4);
}

void sub_2472F3A24(_Unwind_Exception *a1)
{
  v3 = v1[22];
  if (v3)
  {
    v1[23] = v3;
    operator delete(v3);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void CPMLNaiveBayesSuggestionsClassifier::~CPMLNaiveBayesSuggestionsClassifier(CPMLNaiveBayesSuggestionsClassifier *this)
{
  *this = &unk_285926EE0;
  v2 = *(this + 44);
  if (v2)
  {
    CPMLLogger::~CPMLLogger(v2);
    MEMORY[0x24C19F910]();
  }

  v3 = *(this + 45);
  if (v3)
  {
    CPMLNaiveBayes::~CPMLNaiveBayes(v3);
    MEMORY[0x24C19F910]();
  }

  v4 = *(this + 46);
  if (v4)
  {
    CPMLNaiveBayesAdaptor::~CPMLNaiveBayesAdaptor(v4);
    MEMORY[0x24C19F910]();
  }

  v5 = *(this + 20);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    free(v6);
  }

  v7 = *(this + 22);
  if (v7)
  {
    *(this + 23) = v7;
    operator delete(v7);
  }

  CPModelClose(this);
}

{
  CPMLNaiveBayesSuggestionsClassifier::~CPMLNaiveBayesSuggestionsClassifier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLNaiveBayesSuggestionsClassifier::serialize(CPMLNaiveBayesSuggestionsClassifier *this)
{
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "resultCardinality", 1, 0);
  (*(**(this + 11) + 56))(*(this + 11), this + 8, "version", 32, 0);
  return 0;
}

uint64_t CPMLNaiveBayesSuggestionsClassifier::train(CPMLNaiveBayesSuggestionsClassifier *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 10) + 32))(*(this + 10));
  if (v2)
  {
    while (1)
    {
      YVectorVector = CPMLFeatureVector::getYVectorVector(v2);
      v4 = *YVectorVector;
      v5 = *(YVectorVector + 1) - *YVectorVector;
      if (!v5)
      {
        break;
      }

      ++*(this + 14);
      if (v5 < 0x11)
      {
        if (v5 == 16)
        {
          v7 = *v4;
          v8 = **v4;
          v9 = v7[1];
          v10 = v9 - v8;
          if (((v9 - v8) >> 2))
          {
            v11 = (v10 >> 2);
            if (v11 == 1)
            {
              *(*(this + 20) + 8 * *v8) = *(*(this + 20) + 8 * *v8) + 1.0;
            }

            else
            {
              v12 = *(this + 77);
              if (v12 < v11)
              {
                v13 = v10 - 4;
                do
                {
                  v14 = v13;
                  --v9;
                  v15 = v13 >> 2;
                  v13 -= 4;
                }

                while (v12 < v15);
                v11 = (v14 >> 2);
                v7[1] = v9;
              }

              if (v11 >= 1)
              {
                v16 = 0;
                v17 = *(this + 20);
                do
                {
                  v18 = 0;
                  v19 = *&v8[4 * v16];
                  *(v17 + 8 * v19) = *(v17 + 8 * v19) + 1.0;
                  do
                  {
                    if (v16 != v18)
                    {
                      v20 = **(this + 21) + 8 * *(this + 18) * v19;
                      ++*(v20 + 8 * *&v8[4 * v18]);
                    }

                    ++v18;
                  }

                  while (v11 != v18);
                  ++v16;
                }

                while (v16 != v11);
              }
            }
          }
        }
      }

      else
      {
        CPMLLog = CPMLLog::getCPMLLog(YVectorVector);
        CPMLLog::log(CPMLLog, CPML_LOG_ERR, "train", "Too many Y\n");
      }

      v2 = (*(**(this + 10) + 32))(*(this + 10));
      if (!v2)
      {
        goto LABEL_21;
      }
    }

    v32 = CPMLLog::getCPMLLog(YVectorVector);
    CPMLLog::log(v32, CPML_LOG_ERR, "train", "no vectors to process\n");
    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_21:
    v21 = sqlite3_mprintf("%lf", *(this + 14));
    (*(**(this + 11) + 136))(*(this + 11), "rowCountY", "rowCountY", v21);
    if (v21)
    {
      sqlite3_free(v21);
    }

    if (*(this + 13))
    {
      v22 = 0;
      do
      {
        v23 = sqlite3_mprintf("%d,%lf", v22, *(*(this + 20) + 8 * v22));
        (*(**(this + 11) + 136))(*(this + 11), "yCount", "yMap,yCount", v23);
        if (v23)
        {
          sqlite3_free(v23);
        }

        ++v22;
      }

      while (*(this + 13) > v22);
    }

    if (*(this + 12))
    {
      v24 = 0;
      do
      {
        sprintf(v34, "xcol%d", v24);
        v25 = *(this + 18);
        if (v25)
        {
          v26 = 0;
          for (i = 0; i < v25; ++i)
          {
            v28 = 0;
            do
            {
              v29 = *(**(this + 21) + v26 * v25 + 8 * v28);
              if (v29)
              {
                v30 = sqlite3_mprintf("%d,%d,%lf", i, v28, v29);
                (*(**(this + 11) + 136))(*(this + 11), v34, "xMap,yMap,xyCount", v30);
                if (v30)
                {
                  sqlite3_free(v30);
                }
              }

              ++v28;
              v25 = *(this + 18);
            }

            while (v25 > v28);
            v26 += 8;
          }
        }

        ++v24;
      }

      while (*(this + 12) > v24);
    }

    result = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CPMLNaiveBayesSuggestionsClassifier::eval(uint64_t a1, CPMLFeatureVector *this, uint64_t *a3)
{
  if (!*(a1 + 104))
  {
    return 0xFFFFFFFFLL;
  }

  XVectorVector = CPMLFeatureVector::getXVectorVector(this);
  if (*(XVectorVector + 1) == *XVectorVector)
  {
    CPMLLog = CPMLLog::getCPMLLog(XVectorVector);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "eval", "only vector support");
  }

  else
  {
    v7 = *(*XVectorVector + 16 * *this);
    v8 = v7[1];
    v9 = *(a1 + 312);
    v10 = v8 - *v7;
    if (v9 < (v10 >> 2))
    {
      v11 = v10 - 4;
      do
      {
        v8 -= 4;
        v12 = v11 >> 2;
        v11 -= 4;
      }

      while (v9 < v12);
      v7[1] = v8;
    }

    memset(v25, 0, sizeof(v25));
    v26 = 1065353216;
    v13 = *v7;
    if (v7[1] != *v7)
    {
      v14 = 0;
      do
      {
        LODWORD(v21[0]) = *(v13 + 4 * v14);
        __p = v21;
        *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v25, v21) + 5) = 1;
        ++v14;
        v13 = *v7;
      }

      while (v14 < (v7[1] - *v7) >> 2);
    }

    __p = 0;
    v23 = 0;
    v24 = 0;
    v15 = *a3;
    if (a3[1] == *a3)
    {
      for (i = 0; ; ++i)
      {
        v20 = (*(**(a1 + 368) + 72))(*(a1 + 368));
        if (i >= (v20[1] - *v20) >> 2)
        {
          break;
        }

        LODWORD(v27) = *(*(*(**(a1 + 368) + 72))(*(a1 + 368)) + 4 * i);
        v21[0] = &v27;
        if (*(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v25, &v27) + 5) != 1)
        {
          std::vector<int>::push_back[abi:ne200100](&__p, &v27);
        }
      }
    }

    else
    {
      v16 = 0;
      do
      {
        LODWORD(v27) = *(v15 + 4 * v16);
        v21[0] = &v27;
        if (*(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v25, &v27) + 5) != 1)
        {
          std::vector<int>::push_back[abi:ne200100](&__p, &v27);
        }

        ++v16;
        v15 = *a3;
      }

      while (v16 < (a3[1] - *a3) >> 2);
    }

    memset(v21, 0, sizeof(v21));
    std::vector<std::vector<int>>::push_back[abi:ne200100](v21, v7);
    CPMLNaiveBayes::predict(*(a1 + 360), v21, &__p, *(a1 + 304), a1 + 176);
    v27 = v21;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v25);
  }

  CPMLFeatureVector::setYHatProbList(this, (a1 + 176));
  result = 0;
  *(a1 + 184) = *(a1 + 176);
  return result;
}

void sub_2472F4344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  *(v16 - 72) = v15;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100]((v16 - 72));
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void sub_2472F45E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
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

void std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void CPMLLogger::CPMLLogger(CPMLLogger *this, char *a2, char a3)
{
  v6 = (this + 8);
  v7 = (this + 424);
  *(this + 59) = 0;
  v8 = MEMORY[0x277D82860] + 64;
  *(this + 53) = MEMORY[0x277D82860] + 64;
  v9 = *(MEMORY[0x277D82810] + 16);
  v10 = *(MEMORY[0x277D82810] + 8);
  *(this + 1) = v10;
  *(v6 + *(v10 - 24)) = v9;
  v11 = (this + *(*(this + 1) - 24) + 8);
  std::ios_base::init(v11, this + 16);
  v12 = MEMORY[0x277D82860] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  *v6 = v12;
  *v7 = v8;
  MEMORY[0x24C19F780](this + 16);
  *(this + 74) = 0;
  *(this + 36) = 0u;
  *this = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "/tmp/");
  std::string::append(&__p, a2);
  if (*this == 1)
  {
    std::ofstream::open();
    v13 = time(0);
    v14 = MEMORY[0x24C19F860](v6, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2472F4D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 599) < 0)
  {
    operator delete(*(v16 + 576));
  }

  std::ofstream::~ofstream(v15);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x24C19F790](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x24C19F8D0](a1 + 52);
  return a1;
}

uint64_t CPMLLogger::CPMLLogger(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (a1 + 8);
  v7 = (a1 + 424);
  *(a1 + 472) = 0;
  v8 = MEMORY[0x277D82860] + 64;
  *(a1 + 424) = MEMORY[0x277D82860] + 64;
  v9 = *(MEMORY[0x277D82810] + 16);
  v10 = *(MEMORY[0x277D82810] + 8);
  *(a1 + 8) = v10;
  *(v6 + *(v10 - 24)) = v9;
  v11 = (a1 + 8 + *(*(a1 + 8) - 24));
  std::ios_base::init(v11, (a1 + 16));
  v12 = MEMORY[0x277D82860] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  *v6 = v12;
  *v7 = v8;
  MEMORY[0x24C19F780](a1 + 16);
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *a1 = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "/tmp/");
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  std::string::append(&__p, v14, v15);
  if (*a1 == 1)
  {
    std::ofstream::open();
    v16 = time(0);
    v17 = MEMORY[0x24C19F860](v6, v16);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v21, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2472F5194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 599) < 0)
  {
    operator delete(*(v16 + 576));
  }

  std::ofstream::~ofstream(v15);
  _Unwind_Resume(a1);
}

void CPMLLogger::~CPMLLogger(CPMLLogger *this)
{
  v2 = (this + 8);
  if ((*(this + *(*(this + 1) - 24) + 40) & 5) == 0 && *(this + 17) && !std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  if (*(this + 599) < 0)
  {
    operator delete(*(this + 72));
  }

  v3 = MEMORY[0x277D82810];
  v4 = *MEMORY[0x277D82810];
  *(this + 1) = *MEMORY[0x277D82810];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  MEMORY[0x24C19F790](this + 16);
  std::ostream::~ostream();
  MEMORY[0x24C19F8D0](this + 424);
}

uint64_t CPMLLogger::cpmlLog(uint64_t this, const char *a2)
{
  if (*this == 1)
  {
    v2 = (this + 8);
    if ((*(this + 8 + *(*(this + 8) - 24) + 32) & 5) == 0)
    {
      if (*(this + 136))
      {
        std::ostream::write();
        std::ios_base::getloc((v2 + *(*v2 - 24)));
        v3 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
        (v3->__vftable[2].~facet_0)(v3, 10);
        std::locale::~locale(&v4);
        std::ostream::put();
        return std::ostream::flush();
      }
    }
  }

  return this;
}

void *CPMLLogger::cpmlLog(void *result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = result;
    v3 = result[1];
    if ((*(++result + *(v3 - 24) + 32) & 5) == 0)
    {
      if (v2[17])
      {
        v4 = *(a2 + 8);
        if (*(a2 + 23) >= 0)
        {
          v5 = *(a2 + 23);
        }

        else
        {
          a2 = *a2;
          v5 = v4;
        }

        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, a2, v5);
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v7 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
        (v7->__vftable[2].~facet_0)(v7, 10);
        std::locale::~locale(&v8);
        std::ostream::put();
        return std::ostream::flush();
      }
    }
  }

  return result;
}

void CPNaiveBayesV2Classifier::CPNaiveBayesV2Classifier(CPNaiveBayesV2Classifier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_285927280;
  v5[29] = 0;
  v5[30] = 0;
  v5[31] = 0;
  var0 = a2->var0;
  v7 = *(a2->var0 + 33);
  v5[12] = *(a2->var0 + 31);
  v5[13] = v7;
  v8 = (*(var0 + 4) - *(var0 + 3)) >> 3;
  v5[19] = 0;
  v5[20] = v8;
  v9 = *var0;
  v5[21] = (*(var0 + 1) - *var0) >> 2;
  v5[22] = v9;
  v10 = (*(var0 + 7) - *(var0 + 6)) >> 2;
  v5[25] = v7;
  v5[26] = v10;
  CPMLCDB::getIterator();
}

void sub_2472F5628(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[30] = v4;
    operator delete(v4);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void *CPNaiveBayesV2Classifier::initializeNaiveBayesV2Memory(CPNaiveBayesV2Classifier *this)
{
  *(this + 18) = malloc_type_calloc(*(this + 13), 8uLL, 0x100004000313F17uLL);
  v2 = *(this + 13);
  if (!v2)
  {
    CPMLLog = CPMLLog::getCPMLLog(0);
    CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "initializeNaiveBayesV2Memory", "resultcardinality 0");
    v2 = 1;
    *(this + 13) = 1;
  }

  if (*(this + 21))
  {
    *(this + 23) = malloc_type_calloc(v2, 8uLL, 0x80040B8603338uLL);
    if (*(this + 13))
    {
      v4 = 0;
      v5 = *(this + 21);
      do
      {
        *(*(this + 23) + 8 * v4) = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
        v5 = *(this + 21);
        if (v5)
        {
          for (i = 0; i < v5; ++i)
          {
            *(*(*(this + 23) + 8 * v4) + 8 * i) = malloc_type_calloc(*(*(this + 22) + 4 * i), 8uLL, 0x100004000313F17uLL);
            v5 = *(this + 21);
          }
        }

        ++v4;
        v2 = *(this + 13);
      }

      while (v2 > v4);
    }

    else
    {
      v2 = 0;
    }
  }

  if (*(this + 20))
  {
    *(this + 16) = malloc_type_calloc(v2, 8uLL, 0x80040B8603338uLL);
    *(this + 17) = malloc_type_calloc(*(this + 13), 8uLL, 0x80040B8603338uLL);
    *(this + 14) = malloc_type_calloc(*(this + 13), 8uLL, 0x80040B8603338uLL);
    *(this + 15) = malloc_type_calloc(*(this + 13), 8uLL, 0x80040B8603338uLL);
    if (*(this + 13))
    {
      v7 = 0;
      do
      {
        *(*(this + 16) + 8 * v7) = malloc_type_calloc(*(this + 12), 8uLL, 0x100004000313F17uLL);
        *(*(this + 17) + 8 * v7) = malloc_type_calloc(*(this + 12), 8uLL, 0x100004000313F17uLL);
        *(*(this + 14) + 8 * v7) = malloc_type_calloc(*(this + 12), 8uLL, 0x100004000313F17uLL);
        *(*(this + 15) + 8 * v7++) = malloc_type_calloc(*(this + 12), 8uLL, 0x100004000313F17uLL);
      }

      while (*(this + 13) > v7);
    }
  }

  result = *(this + 26);
  if (result)
  {
    *(this + 24) = malloc_type_calloc(result, 8uLL, 0x10040436913F5uLL);
    result = malloc_type_calloc(*(this + 13), 8uLL, 0x100004000313F17uLL);
    *(this + 27) = result;
    if (*(this + 26))
    {
      v9 = 0;
      do
      {
        result = malloc_type_calloc(*(this + 25) * *(this + 25), 8uLL, 0x100004000313F17uLL);
        *(*(this + 24) + 8 * v9++) = result;
      }

      while (*(this + 26) > v9);
    }
  }

  return result;
}

void CPNaiveBayesV2Classifier::CPNaiveBayesV2Classifier(CPNaiveBayesV2Classifier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_285927280;
  v5[29] = 0;
  v5[30] = 0;
  v5[31] = 0;
  (*(a2->var0 + 10))(a2, v5 + 19, "totalDataCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 96, "featureVectorSpace", 1, 0);
  (*(a2->var0 + 10))(a2, this + 104, "resultCardinality", 1, 0);
  (*(a2->var0 + 10))(a2, this + 160, "continousFeatureCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 168, "discreteFeatureCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 200, "vectorCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 208, "vectorFeatureCount", 1, 0);
  v6 = *(this + 21);
  if (v6)
  {
    *(this + 22) = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
    v7 = *(this + 21);
    (*(a2->var0 + 8))(a2);
  }

  CPNaiveBayesV2Classifier::initializeNaiveBayesV2Memory(this);
  v8 = *(this + 13);
  if (*(this + 21))
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    v10 = 1;
    do
    {
      if (v10)
      {
        for (i = 0; i < v10; ++i)
        {
          sprintf(v15, "discreteFeatureTable%d", i);
          (*(a2->var0 + 10))(a2, *(*(*(this + 23) + 8 * v9) + 8 * i), v15, *(*(this + 22) + 4 * i), 0);
          v10 = *(this + 21);
        }

        v8 = *(this + 13);
      }

      ++v9;
    }

    while (v8 > v9);
  }

  if (*(this + 20) && v8)
  {
    v12 = 0;
    do
    {
      sprintf(v15, "datasetMean%d", v12);
      sprintf(v14, "datasetVariance%d", v12);
      (*(a2->var0 + 12))(a2, *(*(this + 14) + 8 * v12), v15, *(this + 12), 0);
      (*(a2->var0 + 12))(a2, *(*(this + 15) + 8 * v12++), v14, *(this + 12), 0);
    }

    while (*(this + 13) > v12);
  }

LABEL_15:
  (*(a2->var0 + 10))(a2, *(this + 18), "dist_datasetOutput");
  (*(a2->var0 + 12))(a2, *(this + 27), "pY_tableFreqCount", *(this + 13), 0);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2472F5D44(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[30] = v4;
    operator delete(v4);
  }

  CPModelClose(v1);
  _Unwind_Resume(a1);
}

void CPNaiveBayesV2Classifier::~CPNaiveBayesV2Classifier(CPNaiveBayesV2Classifier *this)
{
  *this = &unk_285927280;
  if (*(this + 21))
  {
    if (*(this + 13))
    {
      v2 = 0;
      do
      {
        if (*(this + 21))
        {
          v3 = 0;
          do
          {
            free(*(*(*(this + 23) + 8 * v2) + 8 * v3++));
          }

          while (*(this + 21) > v3);
        }

        free(*(*(this + 23) + 8 * v2++));
      }

      while (*(this + 13) > v2);
    }

    free(*(this + 23));
  }

  if (*(this + 20))
  {
    if (*(this + 13))
    {
      v4 = 0;
      do
      {
        free(*(*(this + 16) + 8 * v4));
        free(*(*(this + 17) + 8 * v4));
        free(*(*(this + 14) + 8 * v4));
        free(*(*(this + 15) + 8 * v4++));
      }

      while (*(this + 13) > v4);
    }

    free(*(this + 16));
    free(*(this + 17));
    free(*(this + 14));
    free(*(this + 15));
  }

  free(*(this + 18));
  free(*(this + 27));
  v5 = *(this + 29);
  if (v5)
  {
    *(this + 30) = v5;
    operator delete(v5);
  }

  CPModelClose(this);
}

{
  CPNaiveBayesV2Classifier::~CPNaiveBayesV2Classifier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPNaiveBayesV2Classifier::serialize(CPNaiveBayesV2Classifier *this)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(**(this + 11) + 32))(*(this + 11), this + 152, "totalDataCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 96, "featureVectorSpace", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "resultCardinality", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 160, "continousFeatureCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 168, "discreteFeatureCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 200, "vectorCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 208, "vectorFeatureCount", 1, 0);
  v2 = *(this + 21);
  if (v2)
  {
    (*(**(this + 11) + 16))(*(this + 11), *(this + 22), "discreteCardinality", v2, 0);
    if (!*(this + 13))
    {
      v5 = 0;
      goto LABEL_16;
    }

    v3 = 0;
    do
    {
      sprintf(v10, "discreteFeatureTable%d", v3);
      if (*(this + 21))
      {
        v4 = 0;
        do
        {
          (*(**(this + 11) + 32))(*(this + 11), *(*(*(this + 23) + 8 * v3) + 8 * v4), v10, *(*(this + 22) + 4 * v4), 0);
          ++v4;
        }

        while (*(this + 21) > v4);
      }

      ++v3;
      v5 = *(this + 13);
    }

    while (v5 > v3);
  }

  else
  {
    v5 = *(this + 13);
  }

  if (*(this + 20) && v5)
  {
    for (i = 0; i < v5; ++i)
    {
      sprintf(v10, "datasetMean%d", i);
      sprintf(v9, "datasetVariance%d", i);
      (*(**(this + 11) + 48))(*(this + 11), *(*(this + 14) + 8 * i), v10, *(this + 12), 0);
      (*(**(this + 11) + 48))(*(this + 11), *(*(this + 15) + 8 * i), v9, *(this + 12), 0);
      v5 = *(this + 13);
    }
  }

LABEL_16:
  (*(**(this + 11) + 32))(*(this + 11), *(this + 18), "dist_datasetOutput", v5, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 27), "pY_tableFreqCount", *(this + 13), 0);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CPNaiveBayesV2Classifier::train(CPNaiveBayesV2Classifier *this)
{
  result = (*(**(this + 10) + 32))(*(this + 10));
  if (result)
  {
    v3 = result;
    while (1)
    {
      YVectorVector = CPMLFeatureVector::getYVectorVector(v3);
      v5 = *YVectorVector;
      v6 = *(YVectorVector + 1) - *YVectorVector;
      if (!v6)
      {
        break;
      }

      ++*(this + 19);
      if (v6 < 0x11)
      {
        if (v6 == 16)
        {
          v22 = *v5;
          v21 = **v5;
          v23 = v22[1] - v21;
          v24 = v23 >> 2;
          if ((v23 >> 2))
          {
            if (v24 == 1)
            {
              *(*(this + 27) + 8 * *v21) = *(*(this + 27) + 8 * *v21) + 1.0;
            }

            else if (v24 >= 1)
            {
              v25 = 0;
              v26 = *(this + 27);
              v27 = (v23 >> 2) & 0x7FFFFFFF;
              do
              {
                v28 = 0;
                v29 = *&v21[4 * v25];
                *(v26 + 8 * v29) = *(v26 + 8 * v29) + 1.0;
                do
                {
                  if (v25 != v28)
                  {
                    v30 = **(this + 24) + 8 * *(this + 25) * v29;
                    ++*(v30 + 8 * *&v21[4 * v28]);
                  }

                  ++v28;
                }

                while (v27 != v28);
                ++v25;
              }

              while (v25 != v27);
            }
          }
        }
      }

      else
      {
        XVectorVector = CPMLFeatureVector::getXVectorVector(v3);
        CPMLLog = CPMLLog::getCPMLLog(XVectorVector);
        v9 = CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "train", "Too many Y\n");
        v11 = *XVectorVector;
        v10 = *(XVectorVector + 1);
        if (v10 != *XVectorVector)
        {
          v12 = 0;
          do
          {
            v13 = *(v11 + 16 * v12);
            v14 = v13[1] - *v13;
            if (v14)
            {
              v15 = 0;
              v16 = 0;
              v17 = v14 >> 2;
              do
              {
                v18 = 0;
                if (v17 <= 1)
                {
                  v17 = 1;
                }

                do
                {
                  if (v16 != v18)
                  {
                    v19 = *(*(this + 24) + 8 * v12) + v15 * *(this + 25);
                    ++*(v19 + 8 * v18);
                  }

                  ++v18;
                }

                while (v17 != v18);
                v20 = CPMLLog::getCPMLLog(v9);
                v9 = CPMLLog::log(v20, CPML_LOG_DEBUG, "train", "%d \n", *(*v13 + 4 * v16++));
                v17 = (v13[1] - *v13) >> 2;
                v15 += 8;
              }

              while (v17 > v16);
              v11 = *XVectorVector;
              v10 = *(XVectorVector + 1);
            }

            ++v12;
          }

          while (v12 < (v10 - v11) >> 4);
        }
      }

      result = (*(**(this + 10) + 32))(*(this + 10));
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    v31 = CPMLLog::getCPMLLog(YVectorVector);
    CPMLLog::log(v31, CPML_LOG_ERR, "train", "no vectors to process\n");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CPNaiveBayesV2Classifier::eval(uint64_t a1, CPMLFeatureVector *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 104);
  if (v3)
  {
    v5 = malloc_type_calloc(v3, 0x10uLL, 0x1000040F7F8B94BuLL);
    v6 = malloc_type_calloc(*(a1 + 104), 8uLL, 0x100004000313F17uLL);
    *(a1 + 224) = v6;
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = v6;
      v9 = *(a1 + 216);
      v10 = log(v7 + *(a1 + 152));
      for (i = 0; i != v7; ++i)
      {
        v8[i] = log(*(v9 + 8 * i) + 1.0) - v10;
      }

      v12 = 0;
      v13 = v5 + 1;
      do
      {
        *(v13 - 2) = v12;
        *v13 = *&v8[v12];
        v13 += 2;
        ++v12;
      }

      while (v7 != v12);
    }

    XVectorVector = CPMLFeatureVector::getXVectorVector(a2);
    if (*(XVectorVector + 1) == *XVectorVector)
    {
      CPMLLog = CPMLLog::getCPMLLog(XVectorVector);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "eval", "only vector support");
      v38 = *(a1 + 104);
    }

    else if (*(a1 + 104))
    {
      v15 = XVectorVector;
      v16 = 0;
      do
      {
        v17 = (*(**v15 + 8) - ***v15) >> 2;
        v18 = v17;
        v19 = MEMORY[0x28223BE20](XVectorVector);
        MEMORY[0x28223BE20](v19);
        v25 = (v60 - v24);
        if (v17 >= 1)
        {
          v26 = *v22;
          v27 = (v23 >> 2) & 0x7FFFFFFF;
          v28 = v27;
          v29 = (v60 - v24);
          v30 = v21;
          do
          {
            v32 = *v26++;
            v31 = v32;
            if (v32 == -1)
            {
              v34 = *(*(a1 + 216) + 8 * v16);
              goto LABEL_21;
            }

            *v29++ = *(**(a1 + 192) + 8 * *(a1 + 200) * v31 + 8 * v16);
            *v30++ = v31;
            --v28;
          }

          while (v28);
          if (v20)
          {
            do
            {
              v33 = *v21++;
              v5[2 * v33 + 1] = 0xC202A05F20000000;
              --v27;
            }

            while (v27);
          }
        }

        v34 = *(*(a1 + 216) + 8 * v16);
        if (v17)
        {
          v35 = 0.0;
          do
          {
            v36 = log(*v25 + 1.0);
            *v25++ = v36;
            v35 = v35 + v36;
            --v18;
          }

          while (v18);
          v37 = v17;
        }

        else
        {
LABEL_21:
          v37 = 0.0;
          v35 = 0.0;
        }

        *&v5[2 * v16 + 1] = *&v5[2 * v16 + 1] + v35 - v37 * log(v34 + v37);
        ++v16;
        v38 = *(a1 + 104);
      }

      while (v38 > v16);
    }

    else
    {
      v38 = 0;
    }

    qsort(v5, v38, 0x10uLL, compareCPNaiveBayesResult);
    if (*(a1 + 104))
    {
      v42 = *(a1 + 240);
      v43 = v5 + 1;
      v44 = 1;
      do
      {
        v45 = *v43;
        v46 = *(v43 - 2);
        v47 = *(a1 + 248);
        if (v42 >= v47)
        {
          v48 = *(a1 + 232);
          v49 = (v42 - v48) >> 4;
          if ((v49 + 1) >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v50 = v47 - v48;
          v51 = v50 >> 3;
          if (v50 >> 3 <= (v49 + 1))
          {
            v51 = v49 + 1;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFF0)
          {
            v52 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v51;
          }

          if (v52)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ProbIndex>>(a1 + 232, v52);
          }

          v53 = 16 * v49;
          *v53 = v45;
          *(v53 + 8) = v46;
          *(v53 + 12) = 0;
          v42 = 16 * v49 + 16;
          v54 = *(a1 + 232);
          v55 = *(a1 + 240) - v54;
          v56 = v53 - v55;
          memcpy((v53 - v55), v54, v55);
          v57 = *(a1 + 232);
          *(a1 + 232) = v56;
          *(a1 + 240) = v42;
          *(a1 + 248) = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          *v42 = v45;
          *(v42 + 8) = v46;
          *(v42 + 12) = 0;
          v42 += 16;
        }

        *(a1 + 240) = v42;
        if (v44 == 10)
        {
          break;
        }

        v43 += 2;
      }

      while (*(a1 + 104) > v44++);
    }

    CPMLFeatureVector::setYHatProbList(a2, (a1 + 232));
    *(a1 + 240) = *(a1 + 232);
    free(v5);
    result = 0;
  }

  else
  {
    v39 = CPMLLog::getCPMLLog(0);
    CPMLLog::log(v39, CPML_LOG_DEBUG, "eval", "resultcardinality 0");
    result = 0xFFFFFFFFLL;
  }

  v59 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t compareCPNaiveBayesResult(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 == v3)
  {
    return 0;
  }

  return v2 < v3;
}

void *CPNaiveBayesV2Classifier::updateMeanV2(void *this)
{
  v1 = this[13];
  if (v1)
  {
    v2 = 0;
    v3 = this[20];
    do
    {
      if (v3)
      {
        v4 = *(this[16] + 8 * v2);
        v5 = *(this[18] + 8 * v2);
        v6 = *(this[14] + 8 * v2);
        v7 = v3;
        do
        {
          v8 = *v4++;
          *v6++ = v8 / v5;
          --v7;
        }

        while (v7);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return this;
}

void *CPNaiveBayesV2Classifier::updateVarianceV2(void *this)
{
  v1 = this[13];
  if (v1)
  {
    v2 = 0;
    v3 = this[20];
    do
    {
      if (v3)
      {
        v4 = *(this[17] + 8 * v2);
        v5 = (*(this[18] + 8 * v2) - 1);
        v6 = *(this[15] + 8 * v2);
        v7 = v3;
        do
        {
          v8 = *v4++;
          *v6++ = v8 / v5;
          --v7;
        }

        while (v7);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ProbIndex>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void CPLogisticRegressionClassfier::Normalize(void *a1, void *a2)
{
  if (a2[1] != *a2)
  {
    v4 = *(*a2 + 8) - **a2;
    v5 = v4 >> 3;
    std::valarray<double>::resize((a1 + 34), (v4 >> 3));
    std::valarray<double>::resize((a1 + 32), (v4 >> 3));
    std::valarray<double>::resize((a1 + 36), (v4 >> 3));
    v6 = *a2;
    v7 = a2[1];
    v8 = (v4 >> 3) & 0x7FFFFFFF;
    v9 = v7 - *a2;
    if (v7 != *a2)
    {
      v10 = 0;
      v11 = v9 >> 4;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      do
      {
        if (v5 >= 1)
        {
          v12 = a1[34];
          v13 = *(v6 + 16 * v10);
          v14 = a1[32];
          v15 = v8;
          do
          {
            v16 = *v12;
            if (*v12 < *v13)
            {
              v16 = *v13;
            }

            *v12++ = v16;
            v17 = *v13++;
            v18 = v17;
            if (v17 >= *v14)
            {
              v18 = *v14;
            }

            *v14++ = v18;
            --v15;
          }

          while (v15);
        }

        ++v10;
      }

      while (v10 != v11);
    }

    v20 = a1[34];
    v19 = a1[35];
    v21 = (v19 - v20) >> 3;
    if (a1[37] - a1[36] != v19 - v20)
    {
      std::valarray<double>::resize((a1 + 36), (v19 - v20) >> 3);
    }

    if (v19 != v20)
    {
      v22 = a1[36];
      v23 = a1[34];
      v24 = a1[32];
      do
      {
        v25 = *v23++;
        v26 = v25;
        v27 = *v24++;
        *v22++ = v26 - v27;
        --v21;
      }

      while (v21);
    }

    if (v5 >= 1)
    {
      v28 = 0;
      do
      {
        if (*(a1[36] + 8 * v28) == 0.0)
        {
          v42 = MEMORY[0x277D82678];
          v43 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x277D82678], "normalization failed due to zero range");
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v43);
          v44 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v42, "min: ");
          v45 = MEMORY[0x24C19F840](v44, *(a1[32] + 8 * v28));
          v46 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "\tmax: ");
          v47 = MEMORY[0x24C19F840](v46, *(a1[34] + 8 * v28));
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v47);
          exit(1);
        }

        ++v28;
      }

      while (v8 != v28);
    }

    v29 = *a2;
    v30 = a2[1];
    v31 = v30 - *a2;
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = v31 >> 4;
      if (v33 <= 1)
      {
        v33 = 1;
      }

      do
      {
        v34 = *(v29 + 16 * v32);
        v35 = *(v29 + 16 * v32 + 8) - v34;
        if (v35)
        {
          v36 = v35 >> 3;
          v37 = a1[32];
          v38 = a1[36];
          do
          {
            v39 = *v37++;
            v40 = *v34 - v39;
            v41 = *v38++;
            *v34++ = v40 / v41;
            --v36;
          }

          while (v36);
        }

        ++v32;
      }

      while (v32 != v33);
    }
  }
}

void CPLogisticRegressionClassfier::CPLogisticRegressionClassfier(CPLogisticRegressionClassfier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_285927028;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  strcpy((v5 + 8), "1.0.0");
  v6 = *(a2->var0 + 31);
  CPMLCDB::getIterator();
}

void sub_2472F73DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char *a26, void *a27, uint64_t a28)
{
  a26 = &a17;
  std::vector<std::vector<data_record_t>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a20;
  std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](&a26);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  std::valarray<double>::~valarray(v28 + 288);
  std::valarray<double>::~valarray(v28 + 272);
  std::valarray<double>::~valarray(v28 + 256);
  std::valarray<double>::~valarray(a10);
  a26 = a11;
  std::vector<std::vector<data_record_t>>::__destroy_vector::operator()[abi:ne200100](&a26);
  CPModelClose(v28);
  _Unwind_Resume(a1);
}

void CPLogisticRegressionClassfier::Init(uint64_t a1, uint64_t **a2, int a3, int a4, int a5, int a6)
{
  v11 = a1 + 200;
  if (v11 != a2)
  {
    std::vector<std::vector<data_record_t>>::__assign_with_size[abi:ne200100]<std::vector<data_record_t>*,std::vector<data_record_t>*>(v11, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  *(a1 + 192) = a3;
  *(a1 + 224) = a4;
  *(a1 + 228) = a5;
  *(a1 + 232) = a6;
  v12 = *(a1 + 240);
  v13 = (*(a1 + 248) - v12) >> 3;
  v14 = v13 - 1;
  if (v13 >= 1)
  {
    v15 = 0;
    v16 = (a5 + 1);
    v17 = (v13 + 1) & 0x7FFFFFFFFFFFFFFELL;
    v18 = vdupq_n_s64(v14);
    v19 = (v12 + 8);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v15), xmmword_247321D00)));
      if (v20.i8[0])
      {
        *(v19 - 1) = v16;
      }

      if (v20.i8[4])
      {
        *v19 = v16;
      }

      v15 += 2;
      v19 += 2;
    }

    while (v17 != v15);
  }
}

void *CPLogisticRegressionClassfier::initializeLogisticRegressionMemory(CPLogisticRegressionClassfier *this)
{
  *(this + 21) = malloc_type_calloc(*(this + 17), 8uLL, 0x80040B8603338uLL);
  if (*(this + 17))
  {
    v2 = 0;
    do
    {
      *(*(this + 21) + 8 * v2++) = malloc_type_calloc(*(this + 18), 8uLL, 0x100004000313F17uLL);
    }

    while (*(this + 17) > v2);
  }

  *(this + 19) = malloc_type_calloc(*(this + 18), 8uLL, 0x100004000313F17uLL);
  result = malloc_type_calloc(*(this + 18), 8uLL, 0x100004000313F17uLL);
  *(this + 20) = result;
  return result;
}

double CPLogisticRegressionClassfier::ComputeSingleLogProb(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 1)
  {
    if (a3 > 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return -0.0;
}

double CPLogisticRegressionClassfier::ObjectiveFunction(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = -1431655765 * ((a2[1] - *a2) >> 3);
  if (v3 < 1)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = (*(*v2 + 16) - *(*v2 + 8)) >> 3;
  v8 = 0.0;
  do
  {
    v9 = *(v2 + 24 * v6);
    if (*(v2 + 24 * v6 + 8) != v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v8 = v8 + CPLogisticRegressionClassfier::ComputeSingleLogProb(v9 + v10, a1, v3);
        ++v11;
        v2 = *a2;
        v9 = *(*a2 + 24 * v6);
        v10 += 32;
      }

      while (v11 < (*(*a2 + 24 * v6 + 8) - v9) >> 5);
    }

    ++v6;
  }

  while (v6 != (v3 & 0x7FFFFFFF));
  return v8;
}

double CPLogisticRegressionClassfier::ObjectiveFunction0(double **a1, uint64_t **a2)
{
  v4 = *a2;
  v5 = **a2;
  v6 = (*a2)[1] - v5;
  if (v6)
  {
    v7 = 0;
    v8 = v6 >> 5;
    v9 = (*a1 + 1);
    v10 = **a1;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = 0.0;
    do
    {
      v13 = *(v5 + 32 * v7 + 8);
      v14 = v10;
      v15 = *(v5 + 32 * v7 + 16) - v13;
      if (v15)
      {
        v16 = v15 >> 3;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        v17 = v9;
        v14 = v10;
        do
        {
          v18 = *v13++;
          v19 = v18;
          v20 = *v17++;
          v14 = v14 + v19 * v20;
          --v16;
        }

        while (v16);
      }

      v21 = exp(v14);
      v12 = v12 + log(v21 + 1.0);
      ++v7;
    }

    while (v7 != v11);
  }

  else
  {
    v12 = 0.0;
  }

  v22 = -v12;
  v23 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - v4);
  if (v23 >= 2)
  {
    v24 = *a1;
    for (i = 1; i != v23; ++i)
    {
      v26 = &v4[3 * i];
      v27 = *v26;
      v28 = v26[1] - *v26;
      if (v28)
      {
        v29 = 0;
        v30 = v28 >> 5;
        v31 = *v24;
        if (v30 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v30;
        }

        v33 = 0.0;
        do
        {
          v34 = *(v27 + 32 * v29 + 8);
          v35 = v31;
          v36 = *(v27 + 32 * v29 + 16) - v34;
          if (v36)
          {
            v37 = v36 >> 3;
            if (v37 <= 1)
            {
              v37 = 1;
            }

            v38 = v24 + 1;
            v35 = v31;
            do
            {
              v39 = *v34++;
              v40 = v39;
              v41 = *v38++;
              v35 = v35 + v40 * v41;
              --v37;
            }

            while (v37);
          }

          v42 = v33 + v35;
          v43 = exp(v35);
          v33 = v42 - log(v43 + 1.0);
          ++v29;
        }

        while (v29 != v32);
      }

      else
      {
        v33 = 0.0;
      }

      v22 = v22 + v33;
    }
  }

  return v22;
}

void CPLogisticRegressionClassfier::ComputeSingleGradient(uint64_t a1, void *a2, int a3, int a4, int a5, uint64_t *a6)
{
  if (a5 < 0 || a3 <= a5)
  {
    CPLogisticRegressionClassfier::ComputeSingleGradient();
  }

  if (a2[1] - *a2 != a6[1] - *a6)
  {
    CPLogisticRegressionClassfier::ComputeSingleGradient();
  }

  if (a3 != 1)
  {
    operator new();
  }

  if (a5)
  {
    v6 = a5 + a5 * a4;
    v7 = *a6;
    *(*a6 + 8 * v6) = *(*a6 + 8 * v6) + 1.0;
    if (a4 >= 1)
    {
      v8 = *(a1 + 8);
      v9 = a4;
      v10 = (v7 + 8 * v6 + 8);
      do
      {
        v11 = *v8++;
        *v10 = v11 + *v10;
        ++v10;
        --v9;
      }

      while (v9);
    }
  }
}

void CPLogisticRegressionClassfier::ObjectiveFunctionGradient(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8) - *a3;
  v7 = *a1;
  v6 = a1[1];
  if (v5 != v6 - *a1)
  {
    CPLogisticRegressionClassfier::ObjectiveFunctionGradient();
  }

  v11 = *a2;
  v10 = a2[1];
  v12 = **a2;
  v14 = *(v12 + 8);
  v13 = *(v12 + 16);
  v26[0] = 0;
  v26[1] = 0;
  if (v6 != v7)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * (v10 - v11);
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  if (v15 >= 1)
  {
    v16 = 0;
    v17 = (v13 - v14) >> 3;
    v18 = *a2;
    do
    {
      v19 = v18[3 * v16];
      if (v18[3 * v16 + 1] != v19)
      {
        v20 = 0;
        do
        {
          CPLogisticRegressionClassfier::ComputeSingleGradient(v19 + 32 * v20, a1, v15, v17, v16, v26);
          v21 = *a3;
          v22 = *(a3 + 8) - *a3;
          if (v22)
          {
            v23 = v22 >> 3;
            if (v23 <= 1)
            {
              v23 = 1;
            }

            v24 = 0;
            do
            {
              v25 = *v24++;
              *v21 = v25 + *v21;
              ++v21;
              --v23;
            }

            while (v23);
          }

          ++v20;
          v18 = *a2;
          v19 = (*a2)[3 * v16];
        }

        while (v20 < ((*a2)[3 * v16 + 1] - v19) >> 5);
      }

      ++v16;
    }

    while (v16 != (v15 & 0x7FFFFFFF));
  }
}

void sub_2472F7F00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void CPLogisticRegressionClassfier::ObjectiveFunctionGradient0(uint64_t a1, uint64_t **a2, void **a3)
{
  v5 = a3[1] - *a3;
  if (v5 >= 1)
  {
    bzero(*a3, v5);
  }

  v6 = (*(a1 + 8) - *a1) >> 3;
  v8 = *a2;
  v7 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v7 - *a2) < 2)
  {
    goto LABEL_15;
  }

  v9 = 1;
  do
  {
    v10 = &v8[3 * v9];
    v11 = *v10;
    v12 = v10[1];
    v13 = v12 - *v10;
    **a3 = **a3 + (v13 >> 5);
    if (!v13)
    {
      goto LABEL_14;
    }

    do
    {
      LODWORD(v39) = *v11;
      v41 = 0;
      v42 = 0;
      __p = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(v11 + 8), *(v11 + 16), (*(v11 + 16) - *(v11 + 8)) >> 3);
      v14 = __p;
      if (v6 < 2)
      {
        if (!__p)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = (*a3 + 8);
        v16 = (v6 - 1);
        v17 = __p;
        do
        {
          v18 = *v17++;
          *v15 = v18 + *v15;
          ++v15;
          --v16;
        }

        while (v16);
      }

      v41 = v14;
      operator delete(v14);
LABEL_12:
      v11 += 32;
    }

    while (v11 != v12);
    v8 = *a2;
    v7 = a2[1];
LABEL_14:
    ++v9;
  }

  while (0xAAAAAAAAAAAAAAABLL * (v7 - v8) > v9);
LABEL_15:
  if (v8 == v7)
  {
    return;
  }

  while (2)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    std::vector<data_record_t>::__init_with_size[abi:ne200100]<data_record_t*,data_record_t*>(&v36, *v8, v8[1], (v8[1] - *v8) >> 5);
    v20 = v36;
    v19 = v37;
    while (2)
    {
      if (v20 != v19)
      {
        LODWORD(v39) = *v20;
        v41 = 0;
        v42 = 0;
        __p = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(v20 + 8), *(v20 + 16), (*(v20 + 16) - *(v20 + 8)) >> 3);
        v21 = **a1;
        v22 = __p;
        if (v6 >= 2)
        {
          v23 = (*a1 + 8);
          v24 = (v6 - 1);
          v25 = __p;
          do
          {
            v26 = *v25++;
            v27 = v26;
            v28 = *v23++;
            v21 = v21 + v27 * v28;
            --v24;
          }

          while (v24);
        }

        v29 = exp(v21);
        v30 = *a3;
        **a3 = **a3 - v29 / (v29 + 1.0);
        if (v6 < 2)
        {
          if (v22)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v31 = (v30 + 8);
          v32 = (v6 - 1);
          v33 = v22;
          do
          {
            v34 = *v33++;
            *v31 = *v31 - v29 * v34 / (v29 + 1.0);
            ++v31;
            --v32;
          }

          while (v32);
LABEL_26:
          v41 = v22;
          operator delete(v22);
        }

        v20 += 32;
        continue;
      }

      break;
    }

    v39 = &v36;
    std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&v39);
    v8 += 3;
    if (v8 != v7)
    {
      continue;
    }

    break;
  }
}

void sub_2472F81A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void CPLogisticRegressionClassfier::ComputeSingleHessian(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v5 = (a2[1] - *a2) >> 3;
  if (v5 * v5 != (a5[1] - *a5) >> 3)
  {
    CPLogisticRegressionClassfier::ComputeSingleHessian();
  }

  if (a3 != 1)
  {
    if (a3 > 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

void CPLogisticRegressionClassfier::ObjectiveFunctionHessian(void *a1, uint64_t **a2, double **a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = **a2;
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v11 = *a3;
  v12 = a3[1];
  v24[0] = 0;
  v24[1] = 0;
  v13 = v12 - v11;
  if (v12 != v11)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * (v6 - v7);
  if (v13 >= 1)
  {
    bzero(v11, v13);
  }

  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *a2;
    do
    {
      v17 = v16[3 * v15];
      if (v16[3 * v15 + 1] != v17)
      {
        v18 = 0;
        do
        {
          CPLogisticRegressionClassfier::ComputeSingleHessian(v17 + 32 * v18, a1, v14, (v9 - v10) >> 3, v24);
          v19 = *a3;
          v20 = a3[1] - *a3;
          if (v20)
          {
            v21 = v20 >> 3;
            if (v21 <= 1)
            {
              v21 = 1;
            }

            v22 = 0;
            do
            {
              v23 = *v22++;
              *v19 = v23 + *v19;
              ++v19;
              --v21;
            }

            while (v21);
          }

          ++v18;
          v16 = *a2;
          v17 = (*a2)[3 * v15];
        }

        while (v18 < ((*a2)[3 * v15 + 1] - v17) >> 5);
      }

      ++v15;
    }

    while (v15 != (v14 & 0x7FFFFFFF));
  }
}

void sub_2472F8674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void CPLogisticRegressionClassfier::ObjectiveFunctionHessian0(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *(a3 + 8) - *a3;
  if (v6 >= 1)
  {
    bzero(*a3, v6);
  }

  v7 = *(a1 + 8) - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) - 1;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "num_predictor = ", 16);
  v11 = MEMORY[0x24C19F850](v10, v9);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v46, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "hessian size = ", 15);
  v14 = MEMORY[0x24C19F870](v13, (*(a3 + 8) - *a3) >> 3);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v46, MEMORY[0x277D82680]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v46);
  std::ostream::put();
  std::ostream::flush();
  v16 = *a2;
  v44 = a2[1];
  if (*a2 != v44)
  {
    v17 = (v7 >> 3);
    v18 = 8 * v17;
    do
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v45 = v16;
      std::vector<data_record_t>::__init_with_size[abi:ne200100]<data_record_t*,data_record_t*>(&v50, *v16, v16[1], (v16[1] - *v16) >> 5);
      v20 = v50;
      v19 = v51;
      while (v20 != v19)
      {
        LODWORD(v46.__locale_) = *v20;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v47, *(v20 + 8), *(v20 + 16), (*(v20 + 16) - *(v20 + 8)) >> 3);
        v21 = **a1;
        v22 = v47;
        if (v8 >= 2)
        {
          v23 = (*a1 + 8);
          v24 = v9;
          v25 = v47;
          do
          {
            v26 = *v25++;
            v27 = v26;
            v28 = *v23++;
            v21 = v21 + v27 * v28;
            --v24;
          }

          while (v24);
        }

        v29 = exp(v21);
        v30 = v29 / ((v29 + 1.0) * (v29 + 1.0));
        v31 = *a3;
        **a3 = **a3 - v30;
        if (v8 < 2)
        {
          if (!v22)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 + 1;
          v34 = (v31 + 1);
          do
          {
            v35 = v32;
            v36 = v22[v32++];
            v37 = v31[v32] - v36 * v30;
            v31[v32] = v37;
            v31[v32 * v17] = v37;
            v38 = v33;
            v39 = v9;
            v40 = v34;
            v41 = v22;
            do
            {
              v42 = *v41++;
              v43 = *&v40[8 * v17] + -(v42 * v22[v35]) * v30;
              *&v40[8 * v17] = v43;
              v38 = (v38 + v18);
              *v38 = v43;
              v40 += 8;
              --v39;
            }

            while (v39);
            v34 += v18;
            ++v33;
          }

          while (v32 != v9);
        }

        v48 = v22;
        operator delete(v22);
LABEL_18:
        v20 += 32;
      }

      v46.__locale_ = &v50;
      std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&v46);
      v16 = v45 + 3;
    }

    while (v45 + 3 != v44);
  }
}

uint64_t CPLogisticRegressionClassfier::Evaluate(uint64_t a1, double **a2)
{
  v2 = *(a1 + 224);
  if (v2 == 2)
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = *(a1 + 240);
    v6 = *v5;
    if (*a2 != v4)
    {
      v7 = v5 + 1;
      do
      {
        v8 = *v3++;
        v9 = v8;
        v10 = *v7++;
        v6 = v6 + v9 * v10;
      }

      while (v3 != v4);
    }

    return v6 <= 0.0;
  }

  else
  {
    if (v2 < 2)
    {
      goto LABEL_18;
    }

    v12 = 0;
    v13 = (v2 - 1);
    v14 = *(a1 + 228);
    v15 = v14 + 1;
    v16 = a2[1];
    v17 = *(a1 + 240);
    v18 = (v17 + 8);
    v19 = 8 * v14 + 8;
    v20 = -1;
    v21 = 2.22507386e-308;
    do
    {
      v22 = *(v17 + 8 * v12 * v15);
      if (*a2 != v16)
      {
        v23 = v18;
        v24 = *a2;
        do
        {
          v25 = *v24++;
          v26 = v25;
          v27 = *v23++;
          v22 = v22 + v26 * v27;
        }

        while (v24 != v16);
      }

      if (v22 > v21)
      {
        v20 = v12;
        v21 = v22;
      }

      ++v12;
      v18 = (v18 + v19);
    }

    while (v12 != v13);
    result = v21 >= 0.0 ? v20 : v13;
    if (result == -1)
    {
LABEL_18:
      CPLogisticRegressionClassfier::Evaluate();
    }
  }

  return result;
}

uint64_t CPLogisticRegressionClassfier::Serialize(uint64_t a1, uint64_t *a2)
{
  v10[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v8, a2);
  if ((v9[*(v8 - 24) + 24] & 5) != 0)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "cannot open output file", 23);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v7);
    exit(1);
  }

  MEMORY[0x24C19F840](&v8, **(a1 + 240));
  if (*(a1 + 248) - *(a1 + 240) >= 9uLL)
  {
    v3 = 1;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " ", 1);
      MEMORY[0x24C19F840](v4, *(*(a1 + 240) + 8 * v3++));
    }

    while (v3 < (*(a1 + 248) - *(a1 + 240)) >> 3);
  }

  v8 = *MEMORY[0x277D82810];
  *&v9[*(v8 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C19F790](v9);
  std::ostream::~ostream();
  result = MEMORY[0x24C19F8D0](v10);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CPLogisticRegressionClassfier::Deserialize(uint64_t a1, uint64_t *a2)
{
  v11[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v9, a2);
  if ((v10[*(v9[0] - 24) + 16] & 5) != 0)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "cannot open input file", 22);
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v8);
    exit(1);
  }

  v3 = *(a1 + 240);
  if (*(a1 + 248) != v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      MEMORY[0x24C19F7B0](v9, v3 + v4);
      ++v5;
      v3 = *(a1 + 240);
      v4 += 8;
    }

    while (v5 < (*(a1 + 248) - v3) >> 3);
  }

  v9[0] = *MEMORY[0x277D82808];
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C19F790](v10);
  std::istream::~istream();
  result = MEMORY[0x24C19F8D0](v11);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2472F8E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a10, MEMORY[0x277D82808]);
  MEMORY[0x24C19F8D0](&a63);
  _Unwind_Resume(a1);
}

void CPLogisticRegressionClassfier::Train(CPLogisticRegressionClassfier *this)
{
  v2 = *(this + 56) - 1 + (*(this + 56) - 1) * *(this + 57);
  v38 = 0;
  v39 = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (*(this + 48) >= 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Initial objective function for beta=", 36);
    v3 = operator<<();
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " is ", 4);
    v5 = CPLogisticRegressionClassfier::ObjectiveFunction(&v38, this + 25);
    v6 = MEMORY[0x24C19F840](v4, v5);
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v7 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
  }

  CoreOptimization::gradient_t::gradient_t(&v36, *(this + 56) - 1 + (*(this + 56) - 1) * *(this + 57));
  CPLogisticRegressionClassfier::ObjectiveFunctionGradient(&v38, this + 25, &v36);
  if (*(this + 48) >= 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Initial Gradient for beta=", 26);
    v8 = operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " is ", 4);
    v9 = operator<<();
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
  }

  v34 = 0;
  v35 = 0;
  std::valarray<double>::resize(&v34, (*(this + 56) - 1 + (*(this + 56) - 1) * *(this + 57)) * (*(this + 56) - 1 + (*(this + 56) - 1) * *(this + 57)));
  CPLogisticRegressionClassfier::ObjectiveFunctionHessian(&v38, this + 25, &v34);
  if (*(this + 48) >= 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Initial Hessian for beta=", 25);
    v11 = operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " is ", 4);
    v12 = operator<<();
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    if (*(this + 48) >= 2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Initial objective function for beta=", 36);
      v14 = operator<<();
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " is ", 4);
      v16 = CPLogisticRegressionClassfier::ObjectiveFunction(&v38, this + 25);
      v17 = MEMORY[0x24C19F840](v15, v16);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  v20 = *(this + 57);
  v19 = *(this + 58);
  v21 = *(this + 56);
  std::valarray<double>::valarray(&__p, &v38);
  *&v28 = CPLogisticRegressionClassfier::ObjectiveFunction;
  *(&v28 + 1) = CPLogisticRegressionClassfier::ObjectiveFunctionGradient;
  v29 = CPLogisticRegressionClassfier::ObjectiveFunctionHessian;
  v30 = this + 200;
  CoreOptimization::BFGS::BFGS(&v33, &__p, &v28, 1, 1.0 / ((v21 - 1) * v19 + (v21 - 1) * v19 * v20));
  if (__p)
  {
    if (v32 != __p)
    {
      v32 += (__p - v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(__p);
    __p = 0;
    v32 = 0;
  }

  CoreOptimization::BFGS::Optimize(&v33);
  CoreOptimization::BFGS::GetSolution(v27, &v33);
  v22 = *(this + 30);
  if (v22)
  {
    v23 = *(this + 31);
    if (v23 != v22)
    {
      *(this + 31) = &v23[(v22 - v23 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v22);
    *(this + 30) = 0;
    *(this + 31) = 0;
  }

  *(this + 15) = *v27;
  if (*(this + 48) >= 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Solution: ", 10);
    v24 = operator<<();
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(v27, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(v27);
    std::ostream::put();
    std::ostream::flush();
  }

  v26 = *(this + 56) - 1 + (*(this + 56) - 1) * *(this + 57);
  v27[0] = 0;
  v27[1] = 0;
  std::valarray<double>::resize(v27, v26);
  if (v27[0])
  {
    if (v27[1] != v27[0])
    {
      v27[1] = v27[1] + ((v27[0] - v27[1] + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    operator delete(v27[0]);
  }

  CoreOptimization::BFGS::~BFGS(&v33);
  if (v34)
  {
    if (v35 != v34)
    {
      v35 = (v35 + ((v34 - v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    }

    operator delete(v34);
  }

  if (v36)
  {
    if (v37 != v36)
    {
      v37 += (v36 - v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v36);
  }

  if (v38)
  {
    if (v39 != v38)
    {
      v39 += (v38 - v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    operator delete(v38);
  }
}

void sub_2472F9548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, std::locale a17)
{
  std::locale::~locale(&a17);
  v19 = *(v17 - 112);
  if (v19)
  {
    v20 = *(v17 - 104);
    if (v20 != v19)
    {
      *(v17 - 104) = &v20[(v19 - v20 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v19);
  }

  v21 = *(v17 - 88);
  if (v21)
  {
    v22 = *(v17 - 80);
    if (v22 != v21)
    {
      *(v17 - 80) = &v22[(v21 - v22 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v21);
  }

  v23 = *(v17 - 64);
  if (v23)
  {
    v24 = *(v17 - 56);
    if (v24 != v23)
    {
      *(v17 - 56) = &v24[(v23 - v24 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void CoreOptimization::BFGS::~BFGS(CoreOptimization::BFGS *this)
{
  v3 = (this + 24);
  v2 = *(this + 3);
  if (v2)
  {
    v4 = v3[1];
    if (v4 != v2)
    {
      *(this + 4) = &v4[(v2 - v4 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(this + 2);
    if (v6 != v5)
    {
      *(this + 2) = &v6[(v5 - v6 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v5);
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void CPLogisticRegressionClassfier::CPLogisticRegressionClassfier(CPLogisticRegressionClassfier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_285927028;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  *(v5 + 240) = 0u;
  v6 = v5 + 240;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  (*(a2->var0 + 13))(a2, v5 + 8, "version", 5, 0);
  v7 = 0;
  (*(a2->var0 + 10))(a2, &v7, "min_predictors_length", 1, 0);
  std::valarray<double>::resize(this + 256, v7);
  (*(**(this + 11) + 96))(*(this + 11), *(this + 32), "min_predictors_", v7, 0);
  (*(a2->var0 + 10))(a2, &v7, "max_predictors_length", 1, 0);
  std::valarray<double>::resize(this + 272, v7);
  (*(**(this + 11) + 96))(*(this + 11), *(this + 34), "max_predictors_", v7, 0);
  (*(a2->var0 + 10))(a2, &v7, "range_predictors_length", 1, 0);
  std::valarray<double>::resize(this + 288, v7);
  (*(**(this + 11) + 96))(*(this + 11), *(this + 36), "range_predictors_", v7, 0);
  (*(a2->var0 + 10))(a2, &v7, "solution_length", 1, 0);
  std::valarray<double>::resize(v6, v7);
  (*(**(this + 11) + 96))(*(this + 11), *(this + 30), "solution_", v7, 0);
  (*(a2->var0 + 10))(a2, this + 112, "totalDataCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 96, "featureVectorSpace", 1, 0);
  (*(a2->var0 + 10))(a2, this + 104, "resultCardinality", 1, 0);
  (*(a2->var0 + 10))(a2, this + 120, "continousFeatureCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 128, "discreteFeatureCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 144, "totalCols", 1, 0);
  (*(a2->var0 + 10))(a2, this + 136, "totalRows", 1, 0);
  CPLogisticRegressionClassfier::initializeLogisticRegressionMemory(this);
  (*(a2->var0 + 10))(a2, this + 184, "iterations", 1, 0);
  (*(a2->var0 + 12))(a2, this + 176, "alpha", 1, 0);
  (*(a2->var0 + 12))(a2, *(this + 19), "theta", *(this + 18) - 1, 0);
}

void sub_2472F9C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::valarray<double>::~valarray(v2 + 288);
  std::valarray<double>::~valarray(v2 + 272);
  std::valarray<double>::~valarray(v2 + 256);
  std::valarray<double>::~valarray(v3);
  std::vector<std::vector<data_record_t>>::__destroy_vector::operator()[abi:ne200100](va);
  CPModelClose(v2);
  _Unwind_Resume(a1);
}

void CPLogisticRegressionClassfier::~CPLogisticRegressionClassfier(CPLogisticRegressionClassfier *this)
{
  *this = &unk_285927028;
  if (*(this + 17))
  {
    v2 = 0;
    do
    {
      free(*(*(this + 21) + 8 * v2++));
    }

    while (*(this + 17) > v2);
  }

  free(*(this + 21));
  free(*(this + 19));
  free(*(this + 20));
  v3 = *(this + 36);
  if (v3)
  {
    v4 = *(this + 37);
    if (v4 != v3)
    {
      *(this + 37) = &v4[(v3 - v4 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v3);
    *(this + 36) = 0;
    *(this + 37) = 0;
  }

  v5 = *(this + 34);
  if (v5)
  {
    v6 = *(this + 35);
    if (v6 != v5)
    {
      *(this + 35) = &v6[(v5 - v6 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v5);
    *(this + 34) = 0;
    *(this + 35) = 0;
  }

  v7 = *(this + 32);
  if (v7)
  {
    v8 = *(this + 33);
    if (v8 != v7)
    {
      *(this + 33) = &v8[(v7 - v8 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v7);
    *(this + 32) = 0;
    *(this + 33) = 0;
  }

  v9 = *(this + 30);
  if (v9)
  {
    v10 = *(this + 31);
    if (v10 != v9)
    {
      *(this + 31) = &v10[(v9 - v10 + 7) & 0xFFFFFFFFFFFFFFF8];
    }

    operator delete(v9);
    *(this + 30) = 0;
    *(this + 31) = 0;
  }

  v11 = (this + 200);
  std::vector<std::vector<data_record_t>>::__destroy_vector::operator()[abi:ne200100](&v11);
  CPModelClose(this);
}

{
  CPLogisticRegressionClassfier::~CPLogisticRegressionClassfier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPLogisticRegressionClassfier::serialize(CPLogisticRegressionClassfier *this)
{
  v2 = *(this + 11);
  v3 = strlen(this + 8);
  (*(*v2 + 56))(v2, this + 8, "version", v3, 0);
  v5 = (*(this + 33) - *(this + 32)) >> 3;
  (*(**(this + 11) + 32))(*(this + 11), &v5, "min_predictors_length", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 32), "min_predictors_", v5, 0);
  v5 = (*(this + 35) - *(this + 34)) >> 3;
  (*(**(this + 11) + 32))(*(this + 11), &v5, "max_predictors_length", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 34), "max_predictors_", v5, 0);
  v5 = (*(this + 37) - *(this + 36)) >> 3;
  (*(**(this + 11) + 32))(*(this + 11), &v5, "range_predictors_length", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 36), "range_predictors_", v5, 0);
  v5 = (*(this + 31) - *(this + 30)) >> 3;
  (*(**(this + 11) + 32))(*(this + 11), &v5, "solution_length", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 30), "solution_", v5, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 112, "totalDataCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 96, "featureVectorSpace", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "resultCardinality", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 120, "continousFeatureCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 128, "discreteFeatureCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 144, "totalCols", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 136, "totalRows", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 184, "iterations", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), this + 176, "alpha", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 19), "theta", *(this + 18) - 1, 0);
  return 0;
}

uint64_t CPLogisticRegressionClassfier::eval(uint64_t a1, CPMLFeatureVector *this)
{
  if (*(a1 + 144))
  {
    RealVector = CPMLFeatureVector::getRealVector(this);
    *(a1 + 224) = 2;
    v5 = RealVector[1] - *RealVector;
    v13[0] = 0;
    v13[1] = 0;
    if (v5 << 29)
    {
      if (((v5 << 29) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if ((v5 >> 3) >= 1)
    {
      v8 = *RealVector;
      v9 = (v5 >> 3) & 0x7FFFFFFF;
      v10 = 0;
      do
      {
        v11 = *v8++;
        *v10++ = v11;
        --v9;
      }

      while (v9);
    }

    v12 = CPLogisticRegressionClassfier::Evaluate(a1, v13);
    CPMLFeatureVector::setYHat(this, v12);
    return 1;
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(a1);
    CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "eval", "totalCols 0\n");
    return 0xFFFFFFFFLL;
  }
}

void sub_2472FA4A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void CPLogisticRegressionClassfier::findGradient(CPLogisticRegressionClassfier *this, double *a2)
{
  v4 = *(this + 14);
  if (!v4)
  {
    v23 = *(this + 18);
    v9 = v23 - 1;
    if (v23 == 1)
    {
      return;
    }

    goto LABEL_13;
  }

  v5 = 0;
  v6 = *(this + 21);
  v8 = *(this + 18);
  v7 = *(this + 19);
  v9 = v8 - 1;
  do
  {
    v10 = *(v6 + 8 * v5);
    v11 = 0.0;
    if (v8 != 1)
    {
      v12 = *(v6 + 8 * v5);
      v13 = v7;
      v14 = v8 - 1;
      do
      {
        v15 = *v12++;
        v16 = v15;
        v17 = *v13++;
        v11 = v11 + v16 * v17;
        --v14;
      }

      while (v14);
    }

    v18 = pow(3.14159265, -v11);
    if (v8 != 1)
    {
      v19 = 1.0 / (v18 + 1.0) - v10[v8 - 1];
      v20 = v8 - 1;
      v21 = a2;
      do
      {
        v22 = *v10++;
        *v21 = *v21 + v22 * v19;
        ++v21;
        --v20;
      }

      while (v20);
    }

    ++v5;
  }

  while (v5 != v4);
  if (v8 != 1)
  {
LABEL_13:
    v24 = 1.0 / *(this + 17);
    do
    {
      *a2 = *a2 * v24;
      ++a2;
      --v9;
    }

    while (v9);
  }
}

void CPLogisticRegressionClassfier::gradientDescent(CPLogisticRegressionClassfier *this)
{
  v2 = malloc_type_calloc(*(this + 18), 8uLL, 0x100004000313F17uLL);
  if (*(this + 23))
  {
    v3 = 0;
    do
    {
      CPLogisticRegressionClassfier::findGradient(this, v2);
      ++v3;
      v4 = *(this + 18) - 1;
      if (*(this + 18) != 1)
      {
        v5 = *(this + 19);
        v6 = v2;
        do
        {
          v7 = *v6++;
          *v5 = *v5 + -1.0 / v3 * *(this + 22) * v7;
          ++v5;
          --v4;
        }

        while (v4);
      }
    }

    while (*(this + 23) > v3);
  }

  free(v2);
}

void CPLogisticRegressionClassfier::getAlgoSolution(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 240;
  std::valarray<double>::resize(a2, (*(a1 + 248) - *(a1 + 240)) >> 3);
  if (v4 != a2)
  {
    v5 = *(a1 + 240);
    v6 = *(a1 + 248);

    std::valarray<double>::__assign_range(a2, v5, v6);
  }
}

uint64_t std::vector<data_record_t>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<data_record_t>::__emplace_back_slow_path<data_record_t const&>(a1, a2);
  }

  else
  {
    std::vector<data_record_t>::__construct_one_at_end[abi:ne200100]<data_record_t const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<data_record_t>::__construct_one_at_end[abi:ne200100]<data_record_t const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v3 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t std::vector<data_record_t>::__emplace_back_slow_path<data_record_t const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<data_record_t>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  v17 = (32 * v2);
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(32 * v2 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<data_record_t>,data_record_t*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<data_record_t>::~__split_buffer(&v15);
  return v14;
}

void sub_2472FA8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<data_record_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<data_record_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<data_record_t>,data_record_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<data_record_t>,data_record_t*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<data_record_t>,data_record_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<data_record_t>,data_record_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<data_record_t>,data_record_t*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<data_record_t>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<data_record_t>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<data_record_t>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2472FAB78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

CoreOptimization::gradient_t *CoreOptimization::gradient_t::gradient_t(CoreOptimization::gradient_t *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  std::valarray<double>::resize(this, a2);
  return this;
}

uint64_t CoreOptimization::BFGS::BFGS(uint64_t a1, void *a2, __int128 *a3, int a4, double a5)
{
  *a1 = a4;
  v9 = (a1 + 24);
  std::valarray<double>::valarray((a1 + 8), a2);
  std::valarray<double>::valarray(v9, a2);
  v10 = *a3;
  *(a1 + 56) = a3[1];
  *(a1 + 40) = v10;
  *(a1 + 72) = a5;
  return a1;
}

void std::vector<std::vector<data_record_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *std::vector<std::vector<data_record_t>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<data_record_t>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<data_record_t>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<data_record_t>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<data_record_t>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<data_record_t>>::__init_with_size[abi:ne200100]<std::vector<data_record_t>*,std::vector<data_record_t>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<data_record_t>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2472FAEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<data_record_t>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<data_record_t>>,std::vector<data_record_t>*,std::vector<data_record_t>*,std::vector<data_record_t>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<data_record_t>::__init_with_size[abi:ne200100]<data_record_t*,data_record_t*>(v4, *v6, v6[1], (v6[1] - *v6) >> 5);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<data_record_t>>,std::vector<data_record_t>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<data_record_t>>,std::vector<data_record_t>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<data_record_t>>,std::vector<data_record_t>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<data_record_t>>,std::vector<data_record_t>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t std::vector<data_record_t>::__init_with_size[abi:ne200100]<data_record_t*,data_record_t*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<data_record_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2472FB07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<data_record_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<data_record_t>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<data_record_t>,data_record_t*,data_record_t*,data_record_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4 + 8, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<data_record_t>,data_record_t*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<data_record_t>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<data_record_t>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::vector<data_record_t>>::__assign_with_size[abi:ne200100]<std::vector<data_record_t>*,std::vector<data_record_t>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<data_record_t>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<data_record_t>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<data_record_t> *,std::vector<data_record_t> *,std::vector<data_record_t> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<data_record_t> *,std::vector<data_record_t> *,std::vector<data_record_t> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<data_record_t>>,std::vector<data_record_t>*,std::vector<data_record_t>*,std::vector<data_record_t>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<std::vector<data_record_t>>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<data_record_t>::__destroy_vector::operator()[abi:ne200100](&v5);
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

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::vector<data_record_t> *,std::vector<data_record_t> *,std::vector<data_record_t> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<data_record_t>::__assign_with_size[abi:ne200100]<data_record_t*,data_record_t*>(a4, *v5, v5[1], (v5[1] - *v5) >> 5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<data_record_t>::__assign_with_size[abi:ne200100]<data_record_t*,data_record_t*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<data_record_t>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
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

      std::vector<data_record_t>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<data_record_t *,data_record_t *,data_record_t *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 24);
        if (v16)
        {
          *(v15 - 16) = v16;
          operator delete(v16);
        }

        v15 -= 32;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<data_record_t *,data_record_t *,data_record_t *>(&v17, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<data_record_t>,data_record_t*,data_record_t*,data_record_t*>(a1, a2 + v12, a3, a1[1]);
  }
}

void std::vector<data_record_t>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<data_record_t>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<data_record_t *,data_record_t *,data_record_t *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a4 + 8), *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 3);
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::valarray<double>::__assign_range(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v4 = a3 - __src;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 - v5 != a3 - __src)
  {
    if (v5)
    {
      if (v6 != v5)
      {
        *(a1 + 8) = &v6[(v5 - v6 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      operator delete(v5);
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (a3 != __src)
  {
    memmove(v5, __src, a3 - __src);
  }

  return a1;
}

uint64_t CPMLDelegate::evaluateCPMLAlgorithm(id *a1, CPMLFeatureVector *a2, uint64_t *a3, void *a4)
{
  v8 = a1[1];
  v9 = *a1;
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    v11 = objc_opt_new();
    v12 = *a3;
    if (a3[1] != *a3)
    {
      v13 = 0;
      do
      {
        v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*(v12 + 4 * v13)];
        [v11 addObject:v14];

        ++v13;
        v12 = *a3;
      }

      while (v13 < (a3[1] - *a3) >> 2);
    }

    v15 = CPMLconvertFV2Array(a2);
    v16 = [v9 evaluateCPMLAlgorithm:v8 withFV:v15 boundedList:v11];
    [v16 doubleValue];
    *a4 = v17;
  }

  return v10 & 1;
}

uint64_t CPMLDelegate::serializeCPMLAlgorithm(CPMLDelegate *this)
{
  v2 = this->var1;
  v3 = this->var0;
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    [v3 serializeCPMLAlgorithm:v2];
  }

  return v4 & 1;
}

uint64_t CPMLDelegate::deSerializeCPMLAlgorithm(CPMLDelegate *this)
{
  v2 = this->var1;
  v3 = this->var0;
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    [v3 serializeCPMLAlgorithm:v2];
  }

  return v4 & 1;
}

uint64_t CPMLDelegate::trainCPMLAlgorithm(CPMLDelegate *this, CPMLFeatureVector *a2)
{
  v4 = this->var1;
  v5 = this->var0;
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = CPMLconvertFV2Array(a2);
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:CPMLFeatureVector::getYHat(a2)];
    [v7 addObject:v8];
    [v5 trainCPMLAlgorithm:v4 withFV:v7];
  }

  return v6 & 1;
}

uint64_t CPMLDelegate::updateCPMLAlgorithm(CPMLDelegate *this, CPMLFeatureVector *a2)
{
  v4 = this->var1;
  v5 = this->var0;
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = CPMLconvertFV2Array(a2);
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:CPMLFeatureVector::getYHat(a2)];
    [v7 addObject:v8];
    [v5 trainCPMLAlgorithm:v4 withFV:v7];
  }

  return v6 & 1;
}

void CPMLAlgorithm::CPMLAlgorithm(CPMLAlgorithm *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  this->var0 = &unk_285927A50;
  this->var6 = a4;
  this->var3 = a2;
  this->var4 = 0;
  this->var8 = a3;
}

uint64_t CPMLAlgorithm::update(CPMLAlgorithm *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "update", "not implemented.");
  return 0xFFFFFFFFLL;
}

uint64_t CPLogCTypesV(void *a1, unint64_t a2, ...)
{
  va_start(va, a2);
  v3 = a1;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  va_copy(v20, va);
  if (!a2)
  {
LABEL_26:
    v17 = [v3 logNSDictionary:v19];
    goto LABEL_29;
  }

  v4 = 0;
  v5 = a2;
  while (a2 < 2)
  {
LABEL_14:
    v11 = va_arg(v20, double *);
    v5 = v11;
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277D82BB8]);
  v7 = [v3 getColumnName:v4];
  v8 = [v3 getSchemaType:v4];
  if (v8 <= 4)
  {
    if (v8 == 3)
    {
      v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:*v5];
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_30;
      }

      v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*v5];
    }

    goto LABEL_12;
  }

  if (v8 == 7)
  {
    v12 = *v5;
    v13 = [v3 getVectorContent:v4];
    v14 = v6;
    if (v12)
    {
      while (1)
      {
        v15 = va_arg(v20, double *);
        switch(v13)
        {
          case 3:
            v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:*v15];
            break;
          case 4:
            v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*v15];
            break;
          case 5:
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v15 encoding:4];
            break;
          default:
            NSLog(&cfstr_SUnknownType.isa, "CPLogCTypesV");
            goto LABEL_28;
        }

        v10 = v16;

        v14 = v10;
        if (!--v12)
        {
          goto LABEL_13;
        }
      }
    }

    v10 = v6;
    goto LABEL_13;
  }

  if (v8 == 5)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v5 encoding:4];
LABEL_12:
    v10 = v9;

LABEL_13:
    [v19 setObject:v10 forKey:v7];
    ++v4;

    goto LABEL_14;
  }

LABEL_30:
  NSLog(&cfstr_SNoSupport.isa, "CPLogCTypesV");
LABEL_28:

  v17 = 0xFFFFFFFFLL;
LABEL_29:

  return v17;
}

CPMLDB *CPOpenDB(char *a1, char *a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 encoding:4];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
  v7 = [[CPMLDB alloc] initWithDBName:v5 withPlistPath:v6 withWriteOptions:a3];

  return v7;
}

CPMLDB *CPOpenDBWithFile(char *a1, char *a2, char *a3, uint64_t a4)
{
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 encoding:4];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a2 encoding:4];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a3 encoding:4];
  v10 = [[CPMLDB alloc] initWithDBName:v7 dataFromFile:v8 withPlistPath:v9 withWriteOptions:a4];

  return v10;
}

void sub_2472FD7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CPMLDB;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2472FE22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24730056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2473017CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CPMLLIBSVMClassifier::establishParam(uint64_t this, CPMLTunableData *a2)
{
  v2 = this;
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    this = CPMLTunableData::getNumberOfItems(a2);
    if (this >= 1)
    {
      CPMLTunableData::tDataGetString(a2, "svm_type", v16, 0x10uLL);
      if (*v16 == 1448304451 && v16[4] == 67)
      {
        goto LABEL_23;
      }

      if (*v16 == 1398756686 && *&v16[4] == 17238)
      {
        v9 = 1;
      }

      else if (*v16 == 0x53414C435F454E4FLL && v16[8] == 83)
      {
        v9 = 2;
      }

      else if (*v16 == 0x5F4E4F4C49535045 && *&v16[3] == 0x5256535F4E4F4C49)
      {
        v9 = 3;
      }

      else
      {
        if (*v16 != 1398756686 || *&v16[4] != 21078)
        {
LABEL_23:
          *(v2 + 160) = 0;
          goto LABEL_30;
        }

        v9 = 4;
      }

      *(v2 + 160) = v9;
LABEL_30:
      CPMLTunableData::tDataGetString(a2, "kernel_type", v16, 0x10uLL);
      if (*v16 == 1162758476 && *&v16[4] == 21057)
      {
        *(v2 + 164) = 0;
LABEL_53:
        CPMLTunableData::tDataGetInt(a2, "degree", (v2 + 168));
        CPMLTunableData::tDataGetDouble(a2, "gamma", (v2 + 176));
        CPMLTunableData::tDataGetDouble(a2, "coef0", (v2 + 184));
        CPMLTunableData::tDataGetDouble(a2, "nu", (v2 + 240));
        CPMLTunableData::tDataGetDouble(a2, "cache_size", (v2 + 192));
        CPMLTunableData::tDataGetDouble(a2, "C", (v2 + 208));
        CPMLTunableData::tDataGetDouble(a2, "eps", (v2 + 200));
        CPMLTunableData::tDataGetDouble(a2, "p", (v2 + 248));
        CPMLTunableData::tDataGetInt(a2, "shrinking", (v2 + 256));
        CPMLTunableData::tDataGetInt(a2, "probability", (v2 + 260));
        this = CPMLTunableData::tDataGetInt(a2, "cpu_count", &libsvm_cpu_count);
        goto LABEL_54;
      }

      if (*v16 == 1498173264)
      {
        v14 = 1;
      }

      else
      {
        if (*v16 != 16978 || v16[2] != 70)
        {
          if (*v16 == 1296517459 && *&v16[3] == 1145655117)
          {
            v14 = 3;
            goto LABEL_52;
          }

          if (*v16 == 0x55504D4F43455250 && *&v16[3] == 0x44455455504D4F43)
          {
            v14 = 4;
            goto LABEL_52;
          }
        }

        v14 = 2;
      }

LABEL_52:
      *(v2 + 164) = v14;
      goto LABEL_53;
    }
  }

  *(v2 + 160) = 0x200000000;
  *(v2 + 168) = 3;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 208) = 0x3FF0000000000000;
  *(v2 + 192) = xmmword_247322600;
  *(v2 + 240) = xmmword_247322610;
  *(v2 + 256) = 1;
LABEL_54:
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  v15 = *MEMORY[0x277D85DE8];
  return this;
}

void CPMLLIBSVMClassifier::CPMLLIBSVMClassifier(CPMLLIBSVMClassifier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v7 = &unk_2859275C0;
  strcpy((v7 + 8), "3.20.0");
  libsvm_cpu_count = 2;
  var0 = a2->var0;
  v9 = *(a2->var0 + 30);
  v11 = *(a2->var0 + 32);
  v10 = *(a2->var0 + 33);
  *(v7 + 96) = *(a2->var0 + 31);
  *(v7 + 104) = v10;
  v12 = *(var0 + 4) - *(var0 + 3);
  v13 = *var0;
  v14 = ((*(var0 + 1) - *var0) >> 2);
  *(v7 + 128) = v14;
  *(v7 + 136) = v13;
  *(v7 + 296) = 0;
  v15 = v12 >> 3;
  *(v7 + 112) = v9;
  *(v7 + 120) = v15;
  LODWORD(var0) = *(*(var0 + 9) + 4 * v11);
  v16 = var0 == 0;
  if (var0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = 120;
  if (v16)
  {
    v18 = 128;
  }

  *(v7 + v18) = v17 - 1;
  CPMLLIBSVMClassifier::establishParam(v7, a4);
  v19 = *(this + 14);
  *(this + 66) = v19;
  *(this + 34) = malloc_type_calloc(v19, 8uLL, 0x100004000313F17uLL);
  *(this + 35) = malloc_type_calloc(*(this + 66), 8uLL, 0x2004093837F09uLL);
  CPMLCDB::getIterator();
}

void CPMLLIBSVMClassifier::CPMLLIBSVMClassifier(CPMLLIBSVMClassifier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_2859275C0;
  *(v5 + 296) = 0;
  (*(a2->var0 + 13))(a2, v5 + 8, "version", 5, 0);
  (*(a2->var0 + 10))(a2, this + 112, "totalRows", 1, 0);
  (*(a2->var0 + 10))(a2, this + 96, "featureVectorSpace", 1, 0);
  (*(a2->var0 + 10))(a2, this + 104, "resultCardinality", 1, 0);
  (*(a2->var0 + 10))(a2, this + 120, "continousFeatureCount", 1, 0);
  (*(a2->var0 + 10))(a2, this + 128, "discreteFeatureCount", 1, 0);
  v6 = malloc_type_calloc(1uLL, 0xB8uLL, 0x109004003BC950CuLL);
  *(this + 36) = v6;
  *(this + 296) = 0;
  (*(**(this + 11) + 72))(*(this + 11), v6 + 104, "model_nr_class", 1, 0);
  (*(**(this + 11) + 72))(*(this + 11), *(this + 36) + 108, "model_l", 1, 0);
  v7 = ((*(*(this + 36) + 104) - 1) * *(*(this + 36) + 104) + (((*(*(this + 36) + 104) - 1) * *(*(this + 36) + 104)) >> 31)) >> 1;
  *(*(this + 36) + 128) = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
  (*(**(this + 11) + 96))(*(this + 11));
  v8 = malloc_type_calloc(*(*(this + 36) + 104), 4uLL, 0x100004052888210uLL);
  v9 = *(this + 36);
  *(v9 + 160) = v8;
  v10 = *(v9 + 104);
  (*(**(this + 11) + 64))(*(this + 11));
  v27 = 0;
  (*(**(this + 11) + 64))(*(this + 11), &v27, "testA", 1, 0);
  if (v27)
  {
    *(*(this + 36) + 136) = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
    (*(**(this + 11) + 96))(*(this + 11));
  }

  (*(**(this + 11) + 64))(*(this + 11), &v27, "testB", 1, 0);
  if (v27)
  {
    *(*(this + 36) + 144) = malloc_type_calloc(v7, 8uLL, 0x100004000313F17uLL);
    (*(**(this + 11) + 96))(*(this + 11));
  }

  v11 = malloc_type_calloc(*(*(this + 36) + 104), 4uLL, 0x100004052888210uLL);
  v12 = *(this + 36);
  *(v12 + 168) = v11;
  v13 = *(v12 + 104);
  (*(**(this + 11) + 72))(*(this + 11));
  v14 = malloc_type_calloc(*(*(this + 36) + 104), 8uLL, 0x80040B8603338uLL);
  v15 = *(this + 36);
  *(v15 + 120) = v14;
  if (*(v15 + 104) >= 2)
  {
    v16 = 0;
    do
    {
      *(*(*(this + 36) + 120) + 8 * v16++) = malloc_type_calloc(*(v15 + 108), 8uLL, 0x100004000313F17uLL);
      v15 = *(this + 36);
    }

    while (v16 < *(v15 + 104) - 1);
  }

  v17 = malloc_type_calloc(*(v15 + 108), 8uLL, 0x2004093837F09uLL);
  v18 = *(this + 36);
  *(v18 + 112) = v17;
  if (*(v18 + 108) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = malloc_type_calloc(*(this + 12) + 1, 0x10uLL, 0x1000040F7F8B94BuLL);
      sprintf(v30, "model_sv_coef%d", v19);
      sprintf(v29, "p_index%d", v19);
      sprintf(v28, "p_value%d", v19);
      v21 = *(this + 36);
      if (*(v21 + 104) >= 2)
      {
        v22 = 0;
        do
        {
          (*(**(this + 11) + 96))(*(this + 11), *(*(v21 + 120) + 8 * v22) + 8 * v19, v30, 1, v22);
          ++v22;
          v21 = *(this + 36);
        }

        while (v22 < *(v21 + 104) - 1);
      }

      v23 = 0;
      v24 = 0;
      do
      {
        v25 = &v20[v23];
        (*(**(this + 11) + 64))(*(this + 11), &v20[v23], v29, 1, v24);
        (*(**(this + 11) + 96))(*(this + 11), &v20[v23 + 8], v28, 1, v24++);
        v23 += 16;
      }

      while (*v25 != -1);
      *(*(*(this + 36) + 112) + 8 * v19++) = malloc_type_realloc(v20, v23 & 0xFFFFFFFF0, 0x1000040F7F8B94BuLL);
      v18 = *(this + 36);
    }

    while (v19 < *(v18 + 108));
  }

  *(v18 + 176) = 1;
  *(this + 34) = 0;
  *(this + 35) = 0;
  v26 = *MEMORY[0x277D85DE8];
}

void CPMLLIBSVMClassifier::CPMLLIBSVMClassifier(CPMLLIBSVMClassifier *this, int *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, 0, a3);
  *v4 = &unk_2859275C0;
  strcpy((v4 + 8), "3.20.0");
  *(v4 + 288) = a2;
  *(v4 + 296) = 1;
  *(v4 + 104) = a2[26];
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
}

void CPMLLIBSVMClassifier::~CPMLLIBSVMClassifier(CPMLLIBSVMClassifier *this)
{
  *this = &unk_2859275C0;
  v2 = *(this + 34);
  if (v2)
  {
    free(v2);
  }

  *(this + 34) = 0;
  v3 = *(this + 35);
  if (v3)
  {
    free(v3);
  }

  *(this + 35) = 0;
  if ((*(this + 296) & 1) == 0)
  {
    svm_free_and_destroy_model(this + 36);
  }

  CPModelClose(this);
}

{
  CPMLLIBSVMClassifier::~CPMLLIBSVMClassifier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLLIBSVMClassifier::serialize(CPMLLIBSVMClassifier *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  v3 = strlen(this + 8);
  (*(*v2 + 56))(v2, this + 8, "version", v3, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 112, "totalRows", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 96, "featureVectorSpace", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "resultCardinality", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 120, "continousFeatureCount", 1, 0);
  (*(**(this + 11) + 32))(*(this + 11), this + 128, "discreteFeatureCount", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), *(this + 36) + 104, "model_nr_class", 1, 0);
  (*(**(this + 11) + 24))(*(this + 11), *(this + 36) + 108, "model_l", 1, 0);
  v4 = *(this + 36);
  v5 = *(v4 + 128);
  LODWORD(v4) = (*(v4 + 104) - 1) * *(v4 + 104);
  (*(**(this + 11) + 48))(*(this + 11), v5, "model_rho", (v4 + (v4 >> 31)) >> 1, 0);
  (*(**(this + 11) + 16))(*(this + 11), *(*(this + 36) + 160), "model_label", *(*(this + 36) + 104), 0);
  if (*(*(this + 36) + 136))
  {
    *v20 = 1;
    (*(**(this + 11) + 16))(*(this + 11), v20, "testA", 1, 0);
    v6 = *(this + 36);
    v7 = *(v6 + 136);
    LODWORD(v6) = (*(v6 + 104) - 1) * *(v6 + 104);
    (*(**(this + 11) + 48))(*(this + 11), v7, "model_probA", (v6 + (v6 >> 31)) >> 1, 0);
  }

  else
  {
    *v20 = 0;
    (*(**(this + 11) + 16))(*(this + 11), v20, "testA", 1, 0);
  }

  if (*(*(this + 36) + 144))
  {
    *v20 = 1;
    (*(**(this + 11) + 16))(*(this + 11), v20, "testB", 1, 0);
    v8 = *(this + 36);
    v9 = *(v8 + 144);
    LODWORD(v8) = (*(v8 + 104) - 1) * *(v8 + 104);
    (*(**(this + 11) + 48))(*(this + 11), v9, "model_probB", (v8 + (v8 >> 31)) >> 1, 0);
  }

  else
  {
    *v20 = 0;
    (*(**(this + 11) + 16))(*(this + 11), v20, "testB", 1, 0);
  }

  (*(**(this + 11) + 24))(*(this + 11), *(*(this + 36) + 168), "model_nSV", *(*(this + 36) + 104), 0);
  if (*(*(this + 36) + 108) >= 1)
  {
    v10 = 0;
    do
    {
      sprintf(v20, "model_sv_coef%d", v10);
      sprintf(v19, "p_index%d", v10);
      sprintf(v18, "p_value%d", v10);
      v11 = *(this + 36);
      if (*(v11 + 104) >= 2)
      {
        v12 = 0;
        do
        {
          (*(**(this + 11) + 48))(*(this + 11), *(*(v11 + 120) + 8 * v12++) + 8 * v10, v20, 1, 0);
          v11 = *(this + 36);
        }

        while (v12 < *(v11 + 104) - 1);
      }

      v13 = *(*(v11 + 112) + 8 * v10);
      for (i = *v13; i != -1; i = v15)
      {
        (*(**(this + 11) + 16))(*(this + 11), v13, v19, 1, 0);
        (*(**(this + 11) + 48))(*(this + 11), v13 + 2, v18, 1, 0);
        v15 = v13[4];
        v13 += 4;
      }

      (*(**(this + 11) + 16))(*(this + 11), v13, v19, 1, 0);
      (*(**(this + 11) + 48))(*(this + 11), v13 + 2, v18, 1, 0);
      ++v10;
    }

    while (v10 < *(*(this + 36) + 108));
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CPMLLIBSVMClassifier::train(CPMLLIBSVMClassifier *this)
{
  v2 = svm_check_parameter(this + 66, this + 160);
  if (v2)
  {
    fprintf(*MEMORY[0x277D85DF8], "ERROR: %s\n", v2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = svm_train(this + 66, this + 160);
    result = 0;
    *(this + 36) = v4;
    *(this + 296) = 0;
  }

  return result;
}

uint64_t CPMLLIBSVMClassifier::eval(uint64_t a1, CPMLFeatureVector *this)
{
  IntVector = CPMLFeatureVector::getIntVector(this);
  RealVector = CPMLFeatureVector::getRealVector(this);
  v6 = malloc_type_calloc(((IntVector[1] - *IntVector) >> 2) + RealVector[1] - *RealVector + 1, 0x10uLL, 0x1000040F7F8B94BuLL);
  v7 = v6;
  v8 = *IntVector;
  v9 = IntVector[1] - *IntVector;
  v10 = v9 >> 2;
  if ((v9 >> 2) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = (v9 >> 2) & 0x7FFFFFFF;
    do
    {
      v14 = *(v8 + 4 * v11);
      if (v14)
      {
        v15 = v14;
        ++v11;
        v16 = &v6[16 * v12];
        *v16 = v11;
        v16[1] = v15;
        ++v12;
      }

      else
      {
        ++v11;
      }
    }

    while (v11 != v13);
  }

  v17 = *RealVector;
  v18 = RealVector[1] - *RealVector;
  if ((v18 >> 3) >= 1)
  {
    v19 = v10 + 1;
    v20 = (v18 >> 3) & 0x7FFFFFFF;
    do
    {
      v21 = *v17;
      if (*v17 != 0.0)
      {
        v22 = &v6[16 * v12];
        *v22 = v19;
        v22[1] = v21;
        ++v12;
      }

      ++v17;
      ++v19;
      --v20;
    }

    while (v20);
  }

  v23 = 16 * v12;
  v24 = &v6[v23];
  *v24 = -1;
  v24[1] = nan("");
  v25 = malloc_type_realloc(v7, v23 + 16, 0x1000040F7F8B94BuLL);
  svm_predict(*(a1 + 288));
  v27 = 1.0;
  if (v26 == -1.0)
  {
    v27 = 0.0;
  }

  if (*(a1 + 104) == 2)
  {
    v26 = v27;
  }

  CPMLFeatureVector::setYHat(this, v26);
  free(v25);
  return 0;
}