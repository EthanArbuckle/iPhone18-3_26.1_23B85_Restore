float *avir::CImageResizerFilterStepINL<float,float>::applySRGBGamma(float *result, int a2, double *a3)
{
  v3 = *(a3 + 1);
  v4 = *a3;
  v5 = a3[9];
  if (v3 == 1)
  {
    if (a2 >= 1)
    {
      v42 = a2 + 1;
      do
      {
        v47 = *result;
        if (*result > 0.0031308)
        {
          v43 = v47;
          v44 = sqrt(v43);
          v45 = sqrt(v44);
          *&v43 = v43 * 0.0149409239 + 0.000213364515 + v44 * 0.433973413 + v45 * (sqrt(v45) * 0.659628182 + -0.0380957909 + v44 * -0.0706476137);
          v46 = (*&v43 * 1.055) + -0.055;
        }

        else
        {
          v46 = v47 * 12.92;
        }

        *result = v46 * v5;
        result += v4;
        --v42;
      }

      while (v42 > 1);
    }

    return result;
  }

  if (v3 == 4)
  {
    if (a2 < 1)
    {
      return result;
    }

    v22 = result + 2;
    v23 = 4 * v4;
    v24 = a2 + 1;
    while (1)
    {
      v29 = *(v22 - 2);
      if (v29 <= 0.0031308)
      {
        *(v22 - 2) = (v29 * 12.92) * v5;
        v33 = *(v22 - 1);
        if (v33 <= 0.0031308)
        {
LABEL_21:
          *(v22 - 1) = (v33 * 12.92) * v5;
          v34 = *v22;
          if (*v22 <= 0.0031308)
          {
            goto LABEL_22;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v30 = v29;
        v31 = sqrt(v30);
        v32 = sqrt(v31);
        *&v30 = v30 * 0.0149409239 + 0.000213364515 + v31 * 0.433973413 + v32 * (sqrt(v32) * 0.659628182 + -0.0380957909 + v31 * -0.0706476137);
        *(v22 - 2) = ((*&v30 * 1.055) + -0.055) * v5;
        v33 = *(v22 - 1);
        if (v33 <= 0.0031308)
        {
          goto LABEL_21;
        }
      }

      v36 = v33;
      v37 = sqrt(v36);
      v38 = sqrt(v37);
      *&v36 = v36 * 0.0149409239 + 0.000213364515 + v37 * 0.433973413 + v38 * (sqrt(v38) * 0.659628182 + -0.0380957909 + v37 * -0.0706476137);
      *(v22 - 1) = ((*&v36 * 1.055) + -0.055) * v5;
      v34 = *v22;
      if (*v22 <= 0.0031308)
      {
LABEL_22:
        *v22 = (v34 * 12.92) * v5;
        v35 = v22[1];
        if (v35 <= 0.0031308)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

LABEL_26:
      v39 = v34;
      v40 = sqrt(v39);
      v41 = sqrt(v40);
      *&v39 = v39 * 0.0149409239 + 0.000213364515 + v40 * 0.433973413 + v41 * (sqrt(v41) * 0.659628182 + -0.0380957909 + v40 * -0.0706476137);
      *v22 = ((*&v39 * 1.055) + -0.055) * v5;
      v35 = v22[1];
      if (v35 <= 0.0031308)
      {
LABEL_27:
        v28 = v35 * 12.92;
        goto LABEL_18;
      }

LABEL_17:
      v25 = v35;
      v26 = sqrt(v25);
      v27 = sqrt(v26);
      *&v25 = v25 * 0.0149409239 + 0.000213364515 + v26 * 0.433973413 + v27 * (sqrt(v27) * 0.659628182 + -0.0380957909 + v26 * -0.0706476137);
      v28 = (*&v25 * 1.055) + -0.055;
LABEL_18:
      v22[1] = v28 * v5;
      v22 = (v22 + v23);
      if (--v24 <= 1)
      {
        return result;
      }
    }
  }

  if (v3 != 3)
  {
    if (a2 < 1 || v3 != 2)
    {
      return result;
    }

    v48 = a2 + 1;
    v49 = result + 1;
    v50 = 4 * v4;
    while (1)
    {
      v54 = *(v49 - 1);
      if (v54 <= 0.0031308)
      {
        *(v49 - 1) = (v54 * 12.92) * v5;
        v58 = *v49;
        if (*v49 > 0.0031308)
        {
          goto LABEL_37;
        }

LABEL_42:
        *v49 = (v58 * 12.92) * v5;
        --v48;
        v49 = (v49 + v50);
        if (v48 <= 1)
        {
          return result;
        }
      }

      else
      {
        v55 = v54;
        v56 = sqrt(v55);
        v57 = sqrt(v56);
        *&v55 = v55 * 0.0149409239 + 0.000213364515 + v56 * 0.433973413 + v57 * (sqrt(v57) * 0.659628182 + -0.0380957909 + v56 * -0.0706476137);
        *(v49 - 1) = ((*&v55 * 1.055) + -0.055) * v5;
        v58 = *v49;
        if (*v49 <= 0.0031308)
        {
          goto LABEL_42;
        }

LABEL_37:
        v51 = v58;
        v52 = sqrt(v51);
        v53 = sqrt(v52);
        *&v51 = v51 * 0.0149409239 + 0.000213364515 + v52 * 0.433973413 + v53 * (sqrt(v53) * 0.659628182 + -0.0380957909 + v52 * -0.0706476137);
        *v49 = ((*&v51 * 1.055) + -0.055) * v5;
        --v48;
        v49 = (v49 + v50);
        if (v48 <= 1)
        {
          return result;
        }
      }
    }
  }

  if (a2 >= 1)
  {
    v6 = result + 2;
    v7 = 4 * v4;
    for (i = a2 + 1; i > 1; --i)
    {
      v13 = *(v6 - 2);
      if (v13 <= 0.0031308)
      {
        *(v6 - 2) = (v13 * 12.92) * v5;
        v17 = *(v6 - 1);
        if (v17 <= 0.0031308)
        {
LABEL_10:
          *(v6 - 1) = (v17 * 12.92) * v5;
          v18 = *v6;
          if (*v6 <= 0.0031308)
          {
            goto LABEL_14;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v14 = v13;
        v15 = sqrt(v14);
        v16 = sqrt(v15);
        *&v14 = v14 * 0.0149409239 + 0.000213364515 + v15 * 0.433973413 + v16 * (sqrt(v16) * 0.659628182 + -0.0380957909 + v15 * -0.0706476137);
        *(v6 - 2) = ((*&v14 * 1.055) + -0.055) * v5;
        v17 = *(v6 - 1);
        if (v17 <= 0.0031308)
        {
          goto LABEL_10;
        }
      }

      v19 = v17;
      v20 = sqrt(v19);
      v21 = sqrt(v20);
      *&v19 = v19 * 0.0149409239 + 0.000213364515 + v20 * 0.433973413 + v21 * (sqrt(v21) * 0.659628182 + -0.0380957909 + v20 * -0.0706476137);
      *(v6 - 1) = ((*&v19 * 1.055) + -0.055) * v5;
      v18 = *v6;
      if (*v6 <= 0.0031308)
      {
LABEL_14:
        v12 = v18 * 12.92;
        goto LABEL_7;
      }

LABEL_6:
      v9 = v18;
      v10 = sqrt(v9);
      v11 = sqrt(v10);
      *&v9 = v9 * 0.0149409239 + 0.000213364515 + v10 * 0.433973413 + v11 * (sqrt(v11) * 0.659628182 + -0.0380957909 + v10 * -0.0706476137);
      v12 = (*&v9 * 1.055) + -0.055;
LABEL_7:
      *v6 = v12 * v5;
      v6 = (v6 + v7);
    }
  }

  return result;
}

float avir::CImageResizerFilterStepINL<float,float>::unpackScanline<unsigned char>(float *a1, _BYTE *a2, int a3, int *a4)
{
  v4 = a4[1];
  v5 = *a4;
  switch(v4)
  {
    case 1:
      if (a3 >= 1)
      {
        v13 = 4 * v5;
        v14 = a3 + 1;
        do
        {
          result = *a1;
          *a2++ = *a1;
          a1 = (a1 + v13);
          --v14;
        }

        while (v14 > 1);
      }

      break;
    case 4:
      if (a3 >= 1)
      {
        v10 = a1 + 2;
        v11 = 4 * v5;
        v12 = a3 + 1;
        do
        {
          *a2 = *(v10 - 2);
          a2[1] = *(v10 - 1);
          a2[2] = *v10;
          result = v10[1];
          a2[3] = result;
          a2 += 4;
          v10 = (v10 + v11);
          --v12;
        }

        while (v12 > 1);
      }

      break;
    case 3:
      if (a3 >= 1)
      {
        v6 = a1 + 2;
        v7 = 4 * v5;
        v8 = a3 + 1;
        do
        {
          *a2 = *(v6 - 2);
          a2[1] = *(v6 - 1);
          result = *v6;
          a2[2] = *v6;
          a2 += 3;
          v6 = (v6 + v7);
          --v8;
        }

        while (v8 > 1);
      }

      break;
    default:
      if (a3 >= 1 && v4 == 2)
      {
        v15 = a3 + 1;
        v16 = a1 + 1;
        v17 = 4 * v5;
        do
        {
          *a2 = *(v16 - 1);
          result = *v16;
          a2[1] = *v16;
          a2 += 2;
          --v15;
          v16 = (v16 + v17);
        }

        while (v15 > 1);
      }

      break;
  }

  return result;
}

uint64_t avir::CStructArray<avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>>::~CStructArray(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    do
    {
      *a1 = --v2;
      v4 = *(*(a1 + 16) + 8 * v2);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *a1;
      }
    }

    while (v2 > 0);
  }

  free(*(a1 + 8));
  return a1;
}

uint64_t avir::CImageResizerFilterStep<float,float>::CRPosBufArray::~CRPosBufArray(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    do
    {
      *a1 = --v2;
      v3 = *(*(a1 + 16) + 8 * v2);
      if (v3)
      {
        free(*v3);
        MEMORY[0x24C1A2010](v3, 0x1020C40586F8431);
        v2 = *a1;
      }
    }

    while (v2 > 0);
  }

  free(*(a1 + 8));
  return a1;
}

void avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::add(unsigned int *a1)
{
  v2 = *a1;
  v3 = 3 * v2 / 2 + 1;
  if (v2 != a1[6] || v2 > v3)
  {
LABEL_10:
    operator new();
  }

  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = 8 * v3;
  v8 = a1[7];
  if (v8)
  {
    v9 = malloc_type_malloc(v7 + v8, 0x2004093837F09uLL);
    v10 = (v9 + v8 - ((v8 - 1) & v9));
    *(a1 + 1) = v9;
    *(a1 + 2) = v10;
    a1[6] = v3;
    a1[7] = v8;
    if (v2 < 1)
    {
LABEL_9:
      free(v5);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = malloc_type_malloc(v7, 0x2004093837F09uLL);
    *(a1 + 1) = v10;
    *(a1 + 2) = v10;
    a1[6] = v3;
    a1[7] = 0;
    if (v2 < 1)
    {
      goto LABEL_9;
    }
  }

  memcpy(v10, v6, 8 * v2);
  goto LABEL_9;
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::assignFilterParams(double *a1, uint64_t a2, int a3, int a4, int a5, int a6, double a7, double a8)
{
  v9 = a5;
  v13 = a4;
  if (a7 == 0.0)
  {
    v14 = (a1 + 8);
    v15 = a1[10] * 0.5 / (2.0 / v13);
    v16 = 2.0 / v13 * (a1[9] * 3.14159265);
  }

  else
  {
    v14 = (a1 + 5);
    v15 = a1[6] * 0.25 / a7;
    v16 = a1[7] * 3.14159265 * a7;
  }

  v17 = *v14;
  v18 = v15 * v13;
  v19 = v16 / v13;
  v20 = v13 * a8;
  if (a3)
  {
    a8 = v20;
    v21 = v18;
  }

  else
  {
    v21 = v15;
  }

  if (a3)
  {
    v16 = v19;
  }

  *(a2 + 80) = a8;
  *(a2 + 88) = a8;
  *(a2 + 56) = v21;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  v22 = vcvtpd_s64_f64(v21) - 1;
  v23 = (2 * v22) | 1;
  v119[0] = v22;
  v119[1] = v23;
  v120 = v21;
  v121 = v16;
  v122 = v17;
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 96) = v22;
  if (a6)
  {
    *(a2 + 24) = v23;
    if (a5)
    {
      free(*(a2 + 32));
      v24 = malloc_type_malloc(8 * v23, 0x100004000313F17uLL);
      *(a2 + 32) = v24;
      *(a2 + 40) = v24;
      *(a2 + 48) = v23;
      *(a2 + 52) = 0;
      bzero(v24, 8 * v23);
    }

    goto LABEL_22;
  }

  free(*(a2 + 32));
  v25 = malloc_type_malloc(8 * v23, 0x100004000313F17uLL);
  *(a2 + 32) = v25;
  *(a2 + 40) = v25;
  *(a2 + 48) = v23;
  *(a2 + 52) = 0;
  avir::CDSPPeakedCosineLPF::generateLPF<double>(v119, v25, *(a2 + 88));
  v26 = *(a2 + 48);
  free(*(a2 + 8));
  v27 = malloc_type_malloc(4 * v26 + 4, 0x100004052888210uLL);
  v28 = ((v27 & 0xFFFFFFFFFFFFFFFCLL) + 4);
  *(a2 + 8) = v27;
  *(a2 + 16) = v28;
  *(a2 + 24) = v26;
  *(a2 + 28) = 4;
  v29 = *(a2 + 48);
  if (v29 >= 1)
  {
    v30 = *(a2 + 40);
    if (v29 < 8)
    {
      v31 = *(a2 + 40);
      v32 = *(a2 + 48);
LABEL_18:
      v40 = v32 + 1;
      do
      {
        v41 = *v31++;
        v42 = v41;
        *v28++ = v42;
        --v40;
      }

      while (v40 > 1);
      goto LABEL_20;
    }

    v31 = &v30->f64[v29 & 0x7FFFFFF8];
    v32 = v29 - (v29 & 0x7FFFFFF8);
    v33 = ((v27 & 0xFFFFFFFFFFFFFFFCLL) + 20);
    v34 = v30 + 2;
    v35 = v29 & 0x7FFFFFF8;
    v28 += v35;
    do
    {
      v37 = v34[-2];
      v36 = v34[-1];
      v39 = *v34;
      v38 = v34[1];
      v34 += 4;
      v33[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v36);
      *v33 = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v38);
      v33 += 2;
      v35 -= 8;
    }

    while (v35);
    if ((v29 & 0x7FFFFFF8) != v29)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  if ((v9 & 1) == 0)
  {
    free(*(a2 + 32));
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

LABEL_22:
  if (!a3)
  {
    if (v9)
    {
      return;
    }

    v44 = 3;
    v47 = 200;
    goto LABEL_27;
  }

  v43 = *(a2 + 24);
  v44 = *(a2 + 96);
  v45 = v44 + a4;
  v46 = v43 - (v44 + a4);
  if (a6)
  {
    *(a2 + 168) = v46;
    v47 = 192;
LABEL_27:
    *(a2 + v47) = v44;
    return;
  }

  free(*(a2 + 152));
  v48 = malloc_type_malloc(4 * v46 + 4, 0x100004052888210uLL);
  *(a2 + 152) = v48;
  *(a2 + 160) = (v48 & 0xFFFFFFFFFFFFFFFCLL) + 4;
  *(a2 + 168) = v46;
  *(a2 + 172) = 4;
  v49 = *(a2 + 96);
  free(*(a2 + 176));
  v50 = malloc_type_malloc(4 * v49 + 4, 0x100004052888210uLL);
  v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 4;
  *(a2 + 176) = v50;
  *(a2 + 184) = v51;
  *(a2 + 192) = v49;
  *(a2 + 196) = 4;
  v52 = *(a2 + 16);
  v53 = *(a2 + 96);
  v54 = v53 + a4;
  v55 = (v52 + 4 * v54);
  v56 = *(a2 + 160);
  if (v46 >= 1)
  {
    v57 = (v43 + ~v45);
    if (v57 < 7)
    {
      v58 = (v52 + 4 * v54);
      v59 = *(a2 + 160);
      v60 = v43 - v45;
LABEL_36:
      v68 = v60 + 1;
      do
      {
        v69 = *v58++;
        *v59++ = v69;
        --v68;
      }

      while (v68 > 1);
      goto LABEL_38;
    }

    v61 = 4 * v54 + v52;
    v58 = v61;
    v59 = *(a2 + 160);
    v60 = v43 - v45;
    if (v56 - v61 < 0x20)
    {
      goto LABEL_36;
    }

    v62 = v57 + 1;
    v63 = v62 & 0x1FFFFFFF8;
    v58 = &v55[v63];
    v59 = (v56 + v63 * 4);
    v60 = v46 - (v62 & 0xFFFFFFF8);
    v64 = (v56 + 16);
    v65 = (v61 + 16);
    v66 = v62 & 0x1FFFFFFF8;
    do
    {
      v67 = *v65;
      *(v64 - 1) = *(v65 - 1);
      *v64 = v67;
      v64 += 2;
      v65 += 2;
      v66 -= 8;
    }

    while (v66);
    if (v62 != (v62 & 0x1FFFFFFF8))
    {
      goto LABEL_36;
    }
  }

LABEL_38:
  v70 = v46 - a4;
  v71 = 4 * a4;
  if (v46 - a4 >= 1)
  {
    v72 = 0;
    v73 = v52 + 4 * (a4 + v54);
    v74 = v71 + 4 * v54 + v52 + 16;
    do
    {
      v55 += a4;
      v76 = v55;
      v77 = v56;
      v78 = v70;
      if (v70 < 8)
      {
        goto LABEL_50;
      }

      v79 = 4 * (v70 - 1);
      v80 = v73 + 4 + v79 + v71 * v72;
      v81 = v56 + 4 + v79;
      v82 = v56 >= v80 || v73 + v71 * v72 >= v81;
      v76 = v55;
      v77 = v56;
      v78 = v70;
      if (!v82)
      {
        goto LABEL_50;
      }

      v83 = v70 & 0x7FFFFFF8;
      v84 = v83;
      v76 = &v55[v83];
      v77 = (v56 + 4 * v83);
      v78 = v70 - v83;
      v85 = v74;
      v86 = (v56 + 16);
      do
      {
        v87 = vaddq_f32(*v85, *v86);
        v86[-1] = vaddq_f32(v85[-1], v86[-1]);
        *v86 = v87;
        v86 += 2;
        v85 += 2;
        v83 -= 8;
      }

      while (v83);
      if (v84 != v70)
      {
LABEL_50:
        v88 = v78 + 1;
        do
        {
          v89 = *v76++;
          *v77 = v89 + *v77;
          ++v77;
          --v88;
        }

        while (v88 > 1);
      }

      ++v72;
      v74 += v71;
      v75 = __OFSUB__(v70, a4);
      v70 -= a4;
    }

    while (!((v70 < 0) ^ v75 | (v70 == 0)));
  }

  if (v53 < 1)
  {
    goto LABEL_63;
  }

  if (v53 < 8)
  {
    v90 = v52;
    v91 = v51;
    v92 = v53;
LABEL_61:
    v98 = v92 + 1;
    do
    {
      v99 = *v90++;
      *v91++ = v99;
      --v98;
    }

    while (v98 > 1);
    goto LABEL_63;
  }

  v90 = v52;
  v91 = v51;
  v92 = v53;
  if (v51 - v52 < 0x20)
  {
    goto LABEL_61;
  }

  v93 = 4 * (v53 & 0x7FFFFFF8);
  v90 = (v52 + v93);
  v91 = (v51 + v93);
  v92 = v53 - (v53 & 0x7FFFFFF8);
  v94 = (v51 + 16);
  v95 = (v52 + 16);
  v96 = v53 & 0x7FFFFFF8;
  do
  {
    v97 = *v95;
    *(v94 - 1) = *(v95 - 1);
    *v94 = v97;
    v94 += 2;
    v95 += 2;
    v96 -= 8;
  }

  while (v96);
  if ((v53 & 0x7FFFFFF8) != v53)
  {
    goto LABEL_61;
  }

LABEL_63:
  v100 = v53 - a4;
  if (v100 >= 1)
  {
    v101 = 0;
    v102 = v51 + v71;
    v103 = v51 + v71 + 4;
    v104 = v51 + v71 + 16;
    do
    {
      v51 += 4 * a4;
      v105 = v52;
      v106 = v51;
      v107 = v100;
      if (v100 < 8)
      {
        goto LABEL_75;
      }

      v108 = 4 * (v100 - 1);
      v109 = v52 + 4 + v108;
      v110 = v103 + v108 + v71 * v101;
      v111 = v102 + v71 * v101 >= v109 || v52 >= v110;
      v105 = v52;
      v106 = v51;
      v107 = v100;
      if (!v111)
      {
        goto LABEL_75;
      }

      v112 = v100 & 0x7FFFFFF8;
      v113 = v112;
      v105 = (v52 + 4 * v112);
      v106 = (v51 + 4 * v112);
      v107 = v100 - v112;
      v114 = (v52 + 16);
      v115 = v104;
      do
      {
        v116 = vaddq_f32(*v114, *v115);
        v115[-1] = vaddq_f32(v114[-1], v115[-1]);
        *v115 = v116;
        v115 += 2;
        v114 += 2;
        v112 -= 8;
      }

      while (v112);
      if (v113 != v100)
      {
LABEL_75:
        v117 = v107 + 1;
        do
        {
          v118 = *v105++;
          *v106 = v118 + *v106;
          ++v106;
          --v117;
        }

        while (v117 > 1);
      }

      v100 -= a4;
      ++v101;
      v104 += v71;
    }

    while (v100 >= 1);
  }
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::addCorrectionFilter(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  if (!a3)
  {
    avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::add(a2);
  }

  v8 = **(a2 + 16);
  *v8 = 0;
  *(v8 + 4) = 1;
  *(v8 + 88) = 0x3FF0000000000000;
  *(v8 + 200) = 3;
  if (a4)
  {
    v9 = vcvtpd_s64_f64(*(a1 + 8) * 0.5);
    *(v8 + 96) = v9 - 1;
    *(v8 + 24) = 2 * v9 - 1;
    return;
  }

  v10 = malloc_type_malloc(0x208uLL, 0x100004000313F17uLL);
  memset_pattern16(v10, &unk_247478C80, 0x208uLL);
  v12 = a3 ^ 1;
  if (*a2 - (a3 ^ 1) > a3)
  {
    v11.n128_u64[0] = 0x400921FB54442D18;
    v13 = a3;
    v14 = 1.0;
    while (1)
    {
      v15 = *(*(a2 + 16) + 8 * v13);
      v16 = *(v15 + 4);
      if (*v15 != 1)
      {
        break;
      }

      v11.n128_f64[0] = v16;
      v14 = v14 * v16;
      if (*(v15 + 48) <= 0)
      {
        break;
      }

LABEL_9:
      if (*a2 - v12 <= ++v13)
      {
        goto LABEL_38;
      }
    }

    if (v16)
    {
      v17 = *(v15 + 16);
      v18 = (v15 + 24);
LABEL_28:
      v31 = 0;
      v32 = *v18;
      v33 = a5 * 3.14159265 / (v14 * 64.0);
      do
      {
        v11.n128_f64[0] = cos(v33 * v31);
        if (v32 < 1)
        {
          v34 = 0.0;
          v11.n128_u64[0] = 0;
        }

        else
        {
          v35 = v11.n128_f64[0];
          v36 = v11.n128_f64[0] + v11.n128_f64[0];
          v37 = -sin(v33 * v31);
          v38 = 1.0;
          v11.n128_u64[0] = 0;
          v39 = v32 + 1;
          v40 = v17;
          v34 = 0.0;
          v41 = 0.0;
          do
          {
            v42 = *v40++;
            v34 = v34 + v38 * v42;
            v11.n128_f64[0] = v11.n128_f64[0] + v41 * v42;
            v43 = -(v37 - v36 * v41);
            --v39;
            v37 = v41;
            v44 = -(v35 - v36 * v38);
            v35 = v38;
            v41 = v43;
            v38 = v44;
          }

          while (v39 > 1);
        }

        v11.n128_f64[0] = *(v10 + v31) * (*(v15 + 88) / sqrt(v11.n128_f64[0] * v11.n128_f64[0] + v34 * v34));
        *(v10 + v31++) = v11.n128_u64[0];
      }

      while (v31 != 65);
      if ((*v15 & 1) == 0)
      {
        v45 = *(v15 + 4);
        if (v45 >= 2)
        {
          v11.n128_f64[0] = v45;
          v14 = v14 / v45;
        }
      }

      goto LABEL_9;
    }

    v19 = *(v15 + 216);
    if ((*(v19 + 184) & 1) == 0)
    {
      avir::CDSPFracFilterBankLin<float>::buildSrcTable(*(v15 + 216));
    }

    v17 = *(v19 + 64);
    if ((**(v19 + 88) & 2) == 0)
    {
      v20.n128_f32[0] = avir::CDSPFracFilterBankLin<float>::createFilter(v19, 0, v11);
      **(v19 + 88) |= 2u;
      if (*(v19 + 28) >= 1)
      {
        avir::CDSPFracFilterBankLin<float>::createFilter(v19, 1, v20);
        v21 = *(v19 + 40);
        if (v21 >= 1)
        {
          v22 = *(v19 + 44);
          if (v21 >= 8 && ((v21 - v22) & 0x3FFFFFFFFFFFFFF8) != 0)
          {
            v23 = v21 & 0x7FFFFFF8;
            v24 = v17 + 1;
            v25 = (v17 + 4 * v22 + 16);
            v26 = (v17 + 4 * v21 + 16);
            v27 = v23;
            do
            {
              v28 = vsubq_f32(*v25, *v24);
              v26[-1] = vsubq_f32(v25[-1], v24[-1]);
              *v26 = v28;
              v25 += 2;
              v26 += 2;
              v24 += 2;
              v27 -= 8;
            }

            while (v27);
            if (v23 == v21)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v23 = 0;
          }

          v29 = v21 - v23;
          v30 = &v17->f32[v23];
          do
          {
            v30[v21] = v30[v22] - *v30;
            ++v30;
            --v29;
          }

          while (v29);
        }
      }
    }

LABEL_27:
    v18 = (*(v15 + 216) + 40);
    goto LABEL_28;
  }

LABEL_38:
  v88 = 0;
  *v87 = 0u;
  v86 = 0u;
  *v85 = 0u;
  *v84 = 0u;
  avir::CDSPFIREQ::init(v81, a5 + a5, *(a1 + 8), 65, 0.0, a5, 0, *a1);
  v46 = v83;
  *(v8 + 96) = v82 - 1;
  v47 = (v46 - 1);
  v48 = malloc_type_malloc(8 * v47, 0x100004000313F17uLL);
  avir::CDSPFIREQ::buildFilter(v81, v10, v48);
  v49 = (v46 - 2);
  if (v46 >= 2)
  {
    v50 = 0.0;
    v51 = v46 - 1;
    v52 = v48;
    if (v46 < 5)
    {
      goto LABEL_43;
    }

    v51 = v47 - (v47 & 0x7FFFFFFC);
    v52 = &v48->f64[v47 & 0x7FFFFFFC];
    v53 = v48 + 1;
    v54 = v47 & 0x7FFFFFFC;
    do
    {
      v55 = *v53;
      v50 = v50 + v53[-1].f64[0] + v53[-1].f64[1] + v53->f64[0] + v53->f64[1];
      v53 += 2;
      v54 -= 4;
    }

    while (v54);
    if ((v47 & 0x7FFFFFFC) != v47)
    {
LABEL_43:
      v56 = v51 + 1;
      do
      {
        v57 = *v52++;
        v50 = v50 + v57;
        --v56;
      }

      while (v56 > 1);
    }

    v58 = v46 - 1;
    v59 = v48;
    v60 = 1.0 / v50;
    if (v49 < 3)
    {
      goto LABEL_49;
    }

    v61 = v49 + 1;
    v58 = v47 - (v61 & 0xFFFFFFFC);
    v59 = &v48->f64[v61 & 0x1FFFFFFFCLL];
    v62 = v48 + 1;
    v63 = v61 & 0x1FFFFFFFCLL;
    do
    {
      v64 = vmulq_n_f64(*v62, v60);
      v62[-1] = vmulq_n_f64(v62[-1], v60);
      *v62 = v64;
      v62 += 2;
      v63 -= 4;
    }

    while (v63);
    if (v61 != (v61 & 0x1FFFFFFFCLL))
    {
LABEL_49:
      v65 = v58 + 1;
      do
      {
        *v59 = v60 * *v59;
        ++v59;
        --v65;
      }

      while (v65 > 1);
    }
  }

  free(*(v8 + 8));
  v66 = malloc_type_malloc(4 * v47 + 4, 0x100004052888210uLL);
  v67 = ((v66 & 0xFFFFFFFFFFFFFFFCLL) + 4);
  *(v8 + 8) = v66;
  *(v8 + 16) = v67;
  *(v8 + 24) = v47;
  *(v8 + 28) = 4;
  if (v46 >= 2)
  {
    if (v46 >= 9)
    {
      v69 = v47 & 0x7FFFFFF8;
      v68 = &v48->f64[v69];
      LODWORD(v47) = v47 - (v47 & 0x7FFFFFF8);
      v70 = ((v66 & 0xFFFFFFFFFFFFFFFCLL) + 20);
      v71 = v48 + 2;
      v72 = v69;
      v67 += v69;
      do
      {
        v74 = v71[-2];
        v73 = v71[-1];
        v76 = *v71;
        v75 = v71[1];
        v71 += 4;
        v70[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v74), v73);
        *v70 = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v75);
        v70 += 2;
        v72 -= 8;
      }

      while (v72);
      if (v69 == v46 - 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v68 = v48;
    }

    v77 = v47 + 1;
    do
    {
      v78 = *v68++;
      v79 = v78;
      *v67++ = v79;
      --v77;
    }

    while (v77 > 1);
  }

LABEL_59:
  free(v48);
  free(v87[0]);
  free(v85[1]);
  free(v84[0]);
  free(v10);
}

void sub_24743A218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  avir::CDSPFIREQ::~CDSPFIREQ(va);
  free(v3);
  _Unwind_Resume(a1);
}

void sub_24743A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  avir::CDSPFIREQ::~CDSPFIREQ(va);
  free(v3);
  _Unwind_Resume(a1);
}

void sub_24743A250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  free(v12);
  avir::CDSPFIREQ::~CDSPFIREQ(&a11);
  free(v11);
  _Unwind_Resume(a1);
}

void avir::CDSPFIREQ::init(avir::CDSPFIREQ *this, double a2, double a3, int a4, double a5, double a6, int a7, long double a8)
{
  *this = a3;
  *(this + 5) = a4;
  free(*(this + 3));
  v13 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  *(this + 3) = v13;
  *(this + 4) = v13;
  *(this + 10) = a4;
  *(this + 11) = 0;
  v14 = vcvtpd_s64_f64(*this * 0.5);
  *(this + 2) = v14;
  *(this + 3) = (v14 & 1) + v14;
  v14 *= 2;
  *(this + 4) = v14;
  v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
  v16 = v15;
  v17 = *(this + 2);
  v18 = v17;
  if (v17 >= 1)
  {
    v19 = *(this + 2);
    v20 = v15;
    if (v17 < 4)
    {
      goto LABEL_6;
    }

    v19 = v17 - (v17 & 0x7FFFFFFC);
    v20 = &v15[16 * (v17 & 0x7FFFFFFC)];
    v21 = v15 + 32;
    v22 = v17 & 0x7FFFFFFC;
    do
    {
      *(v21 - 2) = xmmword_247478C70;
      *(v21 - 1) = xmmword_247478C70;
      *v21 = xmmword_247478C70;
      v21[1] = xmmword_247478C70;
      v21 += 4;
      v22 -= 4;
    }

    while (v22);
    if ((v17 & 0x7FFFFFFC) != v17)
    {
LABEL_6:
      v23 = v19 + 1;
      do
      {
        *v20 = xmmword_247478C70;
        v20 += 16;
        --v23;
      }

      while (v23 > 1);
    }
  }

  v100 = v15;
  v24 = malloc_type_malloc(8 * v18, 0x100004000313F17uLL);
  v25 = *this * 0.5;
  v26 = cos(1.57079633 / v25);
  v27 = *(this + 2);
  if (v27 >= 1)
  {
    v28 = v26 + v26;
    v29 = 1.0 / v25;
    v30 = sin(1.57079633 - 1.57079633 / v25);
    v31 = (v27 + 1) - 1;
    v32 = &v24[v27 - 1];
    v33 = 0.0;
    v34 = 1.0;
    do
    {
      v35 = pow(v29 * v33, a8);
      v33 = v33 + 1.0;
      v36 = -(v30 - v28 * v34);
      *v32-- = v34 * (1.0 - v35);
      v30 = v34;
      v34 = v36;
      --v31;
    }

    while (v31);
  }

  *(this + 96) = a5 > 0.0;
  v37 = *(this + 5);
  if (a5 > 0.0)
  {
    ++v37;
  }

  v38 = v37 * *(this + 3);
  free(*(this + 6));
  v39 = malloc_type_malloc(8 * v38, 0x100004000313F17uLL);
  *(this + 6) = v39;
  *(this + 7) = v39;
  *(this + 16) = v38;
  *(this + 17) = 0;
  free(*(this + 9));
  v40 = malloc_type_malloc(8 * v38, 0x100004000313F17uLL);
  *(this + 9) = v40;
  *(this + 10) = v40;
  *(this + 22) = v38;
  *(this + 23) = 0;
  if (a7)
  {
    v41 = log(a6 / a5);
    v42 = *(this + 5);
    v99 = exp(v41 / (v42 - 1));
    v97 = 0.0;
    if ((*(this + 96) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v42 = *(this + 5);
    v97 = (a6 - a5) / (v42 - 1);
    v99 = 1.0;
    if ((*(this + 96) & 1) == 0)
    {
LABEL_15:
      **(this + 4) = 0;
      a5 = v97 + a5 * v99;
      v43 = 1;
      v44 = *(this + 7);
      v45 = 0.0;
      v46 = &unk_247478000;
      if (v42 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }
  }

  v43 = 0;
  v44 = *(this + 7);
  v45 = 0.0;
  v46 = &unk_247478000;
  if (v42 <= 0)
  {
LABEL_27:
    *(this + 97) = 1;
    v73 = *(this + 2);
    v74 = -v73;
    v75 = v46[405];
    *v16 = sin(v74 * v75);
    v16[1] = sin(v74 * v75 + 1.57079633);
    if (v73 <= 1)
    {
      v79 = v45 + -1.0;
    }

    else
    {
      v76 = (1 - v73);
      v77 = sin(v76 * v75 + 1.57079633);
      v78 = sin(v76 * v75);
      v79 = v45 + -1.0;
      v80 = v73 - 1;
      v81 = 1 - v73;
      v82 = v16 + 2;
      v83 = v24;
      v84 = v44;
      v85 = v40;
      do
      {
        v86 = *v82;
        v87 = v82[1];
        *v82 = v78;
        v82[1] = v77;
        v88 = v81 * v75;
        v89 = *v83++;
        v90 = v89 / (v79 * v88);
        *v84++ = (v78 - v45 * v86 + (v77 - v87) / v88) * v90;
        *v85++ = (v78 - v86) * v90;
        v78 = -(*(v82 - 2) - v78 * -2.0);
        v77 = -(*(v82 - 1) - v77 * -2.0);
        ++v81;
        v82 += 2;
        --v80;
      }

      while (v80);
    }

    v44[v73 - 1] = (1.0 - v45 * v45) / v79 * 0.5;
    v40[v73 - 1] = -1.0;
    goto LABEL_34;
  }

LABEL_19:
  v47 = v16;
  v48 = *(this + 4);
  v49 = *(this + 2);
  v50 = -v49;
  v51 = v49;
  v94 = 1 - v49;
  v93 = (1 - v49);
  v52 = v43;
  v53 = v42;
  v95 = v49;
  v54 = 8 * v49 - 8;
  v55 = 8 * *(this + 3);
  v91 = v47 + 2;
  v56 = 0.0;
  v57 = v46[405];
  v92 = v50;
  do
  {
    v45 = (a5 + a5) / a2;
    *(v48 + 8 * v52) = v45;
    v61 = v45 * v57;
    v62 = cos(v45 * v57);
    *v100 = sin(v45 * v57 * v50);
    v100[1] = sin(v45 * v57 * v50 + 1.57079633);
    if (v51 <= 1)
    {
      v58 = v56 - v45;
      v59 = v51;
    }

    else
    {
      v63 = v62 + v62;
      v64 = sin(v61 * v93 + 1.57079633);
      v65 = sin(v61 * v93);
      v66 = 0;
      v58 = v56 - v45;
      v67 = v91;
      v68 = v94;
      do
      {
        v69 = *v67;
        v70 = v67[1];
        *v67 = v65;
        v67[1] = v64;
        v71 = v68 * v57;
        v72 = v24[v66 / 8] / (v58 * v71);
        v44[v66 / 8] = (v45 * v65 - v69 * v56 + (v64 - v70) / v71) * v72;
        v40[v66 / 8] = (v65 - v69) * v72;
        v65 = -(*(v67 - 2) - v63 * v65);
        v64 = -(*(v67 - 1) - v63 * v64);
        v66 += 8;
        ++v68;
        v67 += 2;
      }

      while (v54 != v66);
      v59 = v95;
      v50 = v92;
    }

    v60 = v59;
    v44[v60 - 1] = (v45 * v45 - v56 * v56) / v58 * 0.5;
    v40[v60 - 1] = -1.0;
    v44 = (v44 + v55);
    v40 = (v40 + v55);
    a5 = v97 + a5 * v99;
    ++v52;
    v56 = v45;
  }

  while (v52 != v53);
  v16 = v100;
  v46 = &unk_247478000;
  if (v45 < 1.0)
  {
    goto LABEL_27;
  }

  *(this + 97) = 0;
LABEL_34:
  free(v24);

  free(v16);
}

void sub_24743A8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  free(v19);
  free(a19);
  _Unwind_Resume(a1);
}

double avir::CDSPFIREQ::buildFilter(avir::CDSPFIREQ *this, double *a2, float64x2_t *a3)
{
  v3 = *a2;
  v4 = *(this + 4);
  if (*(this + 96))
  {
    LODWORD(v5) = 1;
    result = *a2;
    v7 = *(this + 7);
    v8 = *(this + 10);
    v9 = *v4;
    v10 = *(this + 2);
    if (v10 < 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = a2[1];
    LODWORD(v5) = 2;
    v7 = *(this + 7);
    v8 = *(this + 10);
    v9 = v4[1];
    v10 = *(this + 2);
    if (v10 < 1)
    {
LABEL_3:
      v11 = *(this + 3);
      v12 = *(this + 5);
      if (v5 >= v12)
      {
        v56 = 8 * v11;
        v15 = (v8 + 8 * v11);
        v16 = (v7 + v56);
      }

      else
      {
        v13 = v12 - 1;
        v14 = (8 * (v12 - 1 - v5) + 16) * v11;
        v15 = (v8 + v14);
        v16 = (v7 + v14);
        v9 = v4[v13];
        result = a2[v13];
      }

      goto LABEL_41;
    }
  }

  v17 = v3 - result;
  v18 = result * 0.0 - v9 * v3;
  if (v10 < 6)
  {
    v19 = 0;
LABEL_8:
    v20 = v10 - v19;
    v21 = v19;
    v22 = &a3->f64[v19];
    v23 = &v8->f64[v21];
    v24 = &v7->f64[v21];
    do
    {
      v25 = *v24++;
      v26 = v25;
      v27 = *v23++;
      *v22++ = v18 * v27 + v17 * v26;
      --v20;
    }

    while (v20);
    goto LABEL_10;
  }

  v19 = 0;
  if ((a3 - v7) < 0x20)
  {
    goto LABEL_8;
  }

  if ((a3 - v8) < 0x20)
  {
    goto LABEL_8;
  }

  v19 = v10 & 0x7FFFFFFC;
  v50 = vdupq_lane_s64(*&v17, 0);
  v51 = v7 + 1;
  v52 = v8 + 1;
  f64 = a3[1].f64;
  v54 = v19;
  do
  {
    v55 = vmlaq_f64(vmulq_n_f64(*v52, v18), *v51, v50);
    *(f64 - 1) = vmlaq_f64(vmulq_n_f64(v52[-1], v18), v51[-1], v50);
    *f64 = v55;
    v51 += 2;
    v52 += 2;
    f64 += 4;
    v54 -= 4;
  }

  while (v54);
  if (v19 != v10)
  {
    goto LABEL_8;
  }

LABEL_10:
  v28 = *(this + 3);
  v29 = *(this + 5);
  v30 = 8 * v28;
  v15 = (v8 + 8 * v28);
  v16 = (v7 + 8 * v28);
  if (v5 < v29)
  {
    v5 = v5;
    v31 = &a3->f64[v10];
    v32 = 8 * v10 + 8 * (v29 - v5) * v28;
    v33 = v8 + v32;
    v35 = (v7 + v32) > a3 && v16 < v31;
    v38 = v33 > a3 && v15 < v31 || v28 < 0 || v35;
    v39 = (v10 < 4) | v38;
    v40 = a3[1].f64;
    do
    {
      v41 = v9;
      v9 = v4[v5];
      v42 = result;
      result = a2[v5];
      v43 = v42 - result;
      v44 = v41 * result - v9 * v42;
      v45 = 0;
      if (v39)
      {
        goto LABEL_68;
      }

      v46 = vdupq_lane_s64(*&v43, 0);
      v47 = v10 & 0x7FFFFFFC;
      do
      {
        v48 = (v40 + v45);
        v49 = vaddq_f64(*(v40 + v45), vmlaq_f64(vmulq_n_f64(*(v15 + v45 + 16), v44), *(v16 + v45 + 16), v46));
        v48[-1] = vaddq_f64(*(a3 + v45), vmlaq_f64(vmulq_n_f64(*(v15 + v45), v44), *(v16 + v45), v46));
        *v48 = v49;
        v45 += 32;
        v47 -= 4;
      }

      while (v47);
      v45 = v10 & 0x7FFFFFFC;
      if (v45 != v10)
      {
LABEL_68:
        do
        {
          a3->f64[v45] = a3->f64[v45] + v44 * v15->f64[v45] + v43 * v16->f64[v45];
          ++v45;
        }

        while (v10 != v45);
      }

      ++v5;
      v15 = (v15 + v30);
      v16 = (v16 + v30);
    }

    while (v5 != v29);
  }

LABEL_41:
  if (*(this + 97) == 1)
  {
    if (v10 < 1)
    {
      return result;
    }

    v57 = result - result;
    result = -(result - v9 * result);
    if (v10 >= 6)
    {
      v58 = 0;
      v70 = &a3->f64[v10];
      v72 = &v15->f64[v10] > a3 && v15 < v70;
      if ((v16 >= v70 || &v16->f64[v10] <= a3) && !v72)
      {
        v58 = v10 & 0x7FFFFFFC;
        v74 = vdupq_lane_s64(*&v57, 0);
        v75 = v16 + 1;
        v76 = v15 + 1;
        v77 = a3 + 1;
        v78 = v58;
        do
        {
          v79 = vaddq_f64(*v77, vmlaq_f64(vmulq_n_f64(*v76, result), *v75, v74));
          v77[-1] = vaddq_f64(v77[-1], vmlaq_f64(vmulq_n_f64(v76[-1], result), v75[-1], v74));
          *v77 = v79;
          v75 += 2;
          v76 += 2;
          v77 += 2;
          v78 -= 4;
        }

        while (v78);
        if (v58 == v10)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v58 = 0;
    }

    v59 = v10 - v58;
    v60 = v58;
    v61 = &a3->f64[v58];
    v62 = &v15->f64[v60];
    v63 = &v16->f64[v60];
    do
    {
      v64 = *v63++;
      v65 = v64;
      v66 = *v62++;
      *v61 = *v61 + result * v66 + v57 * v65;
      ++v61;
      --v59;
    }

    while (v59);
  }

LABEL_47:
  if (v10 >= 2)
  {
    v67 = (v10 - 1);
    v68 = v10 - 2;
    v69 = &a3->f64[v10];
    do
    {
      result = a3->f64[v68];
      *v69++ = result;
      --v68;
      --v67;
    }

    while (v67);
  }

  return result;
}

void avir::CDSPFIREQ::~CDSPFIREQ(void **this)
{
  free(this[9]);
  free(this[6]);
  free(this[3]);
}

double avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::fillRPosBuf(uint64_t a1, uint64_t a2, double result)
{
  v5 = *(a1 + 208);
  v6 = *(v5 + 16);
  v7 = *(a1 + 132);
  if (v7 > v6)
  {
    v8 = *v5;
    v9 = *(v5 + 8);
    v10 = *(v5 + 20);
    v11 = 32 * v7;
    if (v10)
    {
      v12 = malloc_type_malloc(v11 + v10, 0x10C004019596133uLL);
      v13 = (v12 + v10 - ((v10 - 1) & v12));
      *v5 = v12;
      *(v5 + 8) = v13;
      *(v5 + 16) = v7;
      *(v5 + 20) = v10;
      if (v6 < 1)
      {
LABEL_5:
        free(v8);
        v7 = *(a1 + 132);
        goto LABEL_6;
      }
    }

    else
    {
      v13 = malloc_type_malloc(v11, 0x10C004019596133uLL);
      *v5 = v13;
      *(v5 + 8) = v13;
      *(v5 + 16) = v7;
      *(v5 + 20) = 0;
      if (v6 < 1)
      {
        goto LABEL_5;
      }
    }

    memcpy(v13, v9, 32 * v6);
    goto LABEL_5;
  }

LABEL_6:
  if (v6 < v7)
  {
    v14 = *(a2 + 40);
    result = *(a2 + 48);
    v15 = (*(*(a1 + 208) + 8) + 32 * v6);
    v16 = *(*(a1 + 216) + 24);
    do
    {
      v17 = result + v14 * v6;
      v18 = vcvtmd_s64_f64(v17);
      *v15 = v18;
      v19 = (v17 - v18) * v16;
      v15[1] = v19;
      *&v19 = v19 - v19;
      v15[4] = LODWORD(v19);
      v15 += 8;
      LODWORD(v6) = v6 + 1;
    }

    while (v7 != v6);
  }

  return result;
}

void avir::CStructArray<avir::CImageResizerFilterStep<float,float>::CRPosBuf>::add(unsigned int *a1)
{
  v2 = *a1;
  v3 = 3 * v2 / 2 + 1;
  if (v2 != a1[6] || v2 > v3)
  {
LABEL_10:
    operator new();
  }

  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = 8 * v3;
  v8 = a1[7];
  if (v8)
  {
    v9 = malloc_type_malloc(v7 + v8, 0x2004093837F09uLL);
    v10 = (v9 + v8 - ((v8 - 1) & v9));
    *(a1 + 1) = v9;
    *(a1 + 2) = v10;
    a1[6] = v3;
    a1[7] = v8;
    if (v2 < 1)
    {
LABEL_9:
      free(v5);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = malloc_type_malloc(v7, 0x2004093837F09uLL);
    *(a1 + 1) = v10;
    *(a1 + 2) = v10;
    a1[6] = v3;
    a1[7] = 0;
    if (v2 < 1)
    {
      goto LABEL_9;
    }
  }

  memcpy(v10, v6, 8 * v2);
  goto LABEL_9;
}

uint64_t avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::~CStructArray(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    do
    {
      *a1 = --v2;
      v3 = *(*(a1 + 16) + 8 * v2);
      if (v3)
      {
        free(v3[22]);
        free(v3[19]);
        free(v3[4]);
        free(v3[1]);
        MEMORY[0x24C1A2010](v3, 0x10E0C4001F3B57ALL);
        v2 = *a1;
      }
    }

    while (v2 > 0);
  }

  free(*(a1 + 8));
  return a1;
}

uint64_t avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::~CThreadData(uint64_t a1)
{
  *a1 = &unk_28593DB90;
  free(*(a1 + 160));
  free(*(a1 + 80));
  free(*(a1 + 32));
  return a1;
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::~CThreadData(uint64_t a1)
{
  *a1 = &unk_28593DB90;
  free(*(a1 + 160));
  free(*(a1 + 80));
  free(*(a1 + 32));

  JUMPOUT(0x24C1A2010);
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::resizeScanlineH(uint64_t a1, unsigned __int8 *a2, uint64_t a3, float a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a1 + 56;
  v7 = **(*(a1 + 16) + 16);
  avir::CImageResizerFilterStepINL<float,float>::packScanline<unsigned char>(v7, a2, *(a1 + 56), *(a1 + 108), a4);
  *(v6 + 16) = a3;
  *&v11 = avir::CImageResizerFilterStepINL<float,float>::calcScanlineBias(v7, *v6, *(v6 + 52), &v30, v8, v9, v10);
  avir::CImageResizerFilterStepINL<float,float>::unbiasScanline(v7, *v6, *(v6 + 52), &v30, v11, v12);
  v14 = *(v6 - 40);
  if (*v14 >= 1)
  {
    for (i = 0; i < *v14; ++i)
    {
      v16 = *(*(v14 + 2) + 8 * i);
      *&v17 = avir::CImageResizerFilterStepINL<float,float>::prepareInBuf(v16, *(v6 + 8 * *(v16 + 116)), v13);
      v22 = *(a1 + 24);
      if (*(v22 + 20))
      {
        v23 = 1;
        if (!*(v16 + 4))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v23 = *v22;
        if (!*(v16 + 4))
        {
LABEL_10:
          v26 = *(v6 + 8 * *(v16 + 116));
          v27 = *(v6 + 8 * *(v16 + 136));
          v28 = *(a1 + 88);
          if (*(v22 + 60) == 1)
          {
            avir::CImageResizerFilterStepINL<float,float>::doResize2(v16, v26, v27, v23, &v30, v17, v18, v19);
          }

          else
          {
            avir::CImageResizerFilterStepINL<float,float>::doResize(v16, v26, v27, v23, &v30, v17, v18, v19, v20, v21);
          }

          goto LABEL_4;
        }
      }

      v24 = *(v6 + 8 * *(v16 + 116));
      v25 = *(v6 + 8 * *(v16 + 136));
      if (*v16 == 1)
      {
        avir::CImageResizerFilterStepINL<float,float>::doUpsample(v16, v24, v25);
      }

      else
      {
        avir::CImageResizerFilterStepINL<float,float>::doFilter(v16, v24, v25);
      }

LABEL_4:
      v14 = *(a1 + 16);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::resizeScanlineV(uint64_t a1, unsigned __int32 *a2, uint64_t a3, __n128 a4, double a5, float32x2_t a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = **(*(a1 + 16) + 16);
  v11 = *(a1 + 108);
  v12 = *(a1 + 112);
  v13 = **(v10 + 104);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      if (v11 >= 1)
      {
        v27 = a2 + 2;
        v28 = 4 * v12;
        v29 = *(a1 + 108);
        v30 = *(a1 + 56);
        do
        {
          *v30 = *(v27 - 2);
          v30[1] = *(v27 - 1);
          a4.n128_u32[0] = *v27;
          v30[2] = *v27;
          v30 += 3;
          v27 = (v27 + v28);
          --v29;
        }

        while (v29);
      }
    }

    else if (v13 == 4 && v11 >= 1)
    {
      v20 = a2 + 2;
      v21 = 4 * v12;
      v22 = *(a1 + 108);
      v23 = *(a1 + 56);
      do
      {
        *v23 = *(v20 - 2);
        v23[1] = *(v20 - 1);
        v23[2] = *v20;
        a4.n128_u32[0] = v20[1];
        v23[3] = a4.n128_u32[0];
        v23 += 4;
        v20 = (v20 + v21);
        --v22;
      }

      while (v22);
    }
  }

  else if (v13 == 1)
  {
    if (v11 >= 1)
    {
      v24 = 4 * v12;
      v25 = *(a1 + 108);
      v26 = *(a1 + 56);
      do
      {
        a4.n128_u32[0] = *a2;
        *v26++ = *a2;
        a2 = (a2 + v24);
        --v25;
      }

      while (v25);
    }
  }

  else if (v13 == 2 && v11 >= 1)
  {
    v15 = a2 + 1;
    v16 = 4 * v12;
    v17 = *(a1 + 108);
    v18 = *(a1 + 56);
    do
    {
      *v18 = *(v15 - 1);
      a4.n128_u32[0] = *v15;
      v18[1] = *v15;
      v18 += 2;
      v15 = (v15 + v16);
      --v17;
    }

    while (v17);
  }

  *(a1 + 72) = a3;
  *&v31 = avir::CImageResizerFilterStepINL<float,float>::calcScanlineBias(v10, v8, v11, &v51, a4, a5, a6);
  avir::CImageResizerFilterStepINL<float,float>::unbiasScanline(v10, *(a1 + 56), *(a1 + 108), &v51, v31, v32);
  v34 = *(a1 + 16);
  if (*v34 >= 1)
  {
    for (i = 0; i < *v34; ++i)
    {
      v36 = *(*(v34 + 2) + 8 * i);
      *&v37 = avir::CImageResizerFilterStepINL<float,float>::prepareInBuf(v36, *(v9 + 8 * *(v36 + 116)), v33);
      v42 = *(v36 + 136);
      if (v42 == 2)
      {
        v43 = *(a1 + 116);
        if (*(v36 + 4))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v44 = *(a1 + 24);
        if (v44[5])
        {
          v43 = 1;
          if (*(v36 + 4))
          {
            goto LABEL_34;
          }
        }

        else
        {
          v43 = *v44;
          if (*(v36 + 4))
          {
LABEL_34:
            v45 = *(v9 + 8 * *(v36 + 116));
            v46 = *(v9 + 8 * v42);
            if (*v36 == 1)
            {
              avir::CImageResizerFilterStepINL<float,float>::doUpsample(v36, v45, v46);
            }

            else
            {
              avir::CImageResizerFilterStepINL<float,float>::doFilter(v36, v45, v46);
            }

            goto LABEL_28;
          }
        }
      }

      v47 = *(v9 + 8 * *(v36 + 116));
      v48 = *(v9 + 8 * v42);
      v49 = *(a1 + 88);
      if (*(*(a1 + 24) + 60) == 1)
      {
        avir::CImageResizerFilterStepINL<float,float>::doResize2(v36, v47, v48, v43, &v51, v37, v38, v39);
      }

      else
      {
        avir::CImageResizerFilterStepINL<float,float>::doResize(v36, v47, v48, v43, &v51, v37, v38, v39, v40, v41);
      }

LABEL_28:
      v34 = *(a1 + 16);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t avir::CImageResizerFilterStepINL<float,float>::packScanline<unsigned char>(uint64_t result, unsigned __int8 *a2, float *a3, int a4, float a5)
{
  v6 = *(result + 104);
  v7 = *v6;
  v8 = *(v6 + 1);
  if ((v6[13] & 1) == 0)
  {
    switch(v8)
    {
      case 1:
        if (a4 >= 1)
        {
          v46 = a4 + 1;
          v47 = a3;
          do
          {
            v48 = *a2++;
            *v47 = v48;
            v47 += v7;
            --v46;
          }

          while (v46 > 1);
        }

        break;
      case 4:
        if (a4 >= 1)
        {
          v37 = a3 + 2;
          v38 = a4 + 1;
          do
          {
            LOBYTE(a5) = *a2;
            v39 = LODWORD(a5);
            *(v37 - 2) = v39;
            LOBYTE(v39) = a2[1];
            v40 = LODWORD(v39);
            *(v37 - 1) = v40;
            LOBYTE(v40) = a2[2];
            v41 = LODWORD(v40);
            *v37 = v41;
            LOBYTE(v41) = a2[3];
            a5 = LODWORD(v41);
            v37[1] = a5;
            a2 += 4;
            v37 += v7;
            --v38;
          }

          while (v38 > 1);
        }

        break;
      case 3:
        if (a4 >= 1)
        {
          v20 = a3 + 2;
          v21 = a4 + 1;
          do
          {
            LOBYTE(a5) = *a2;
            v22 = LODWORD(a5);
            *(v20 - 2) = v22;
            LOBYTE(v22) = a2[1];
            v23 = LODWORD(v22);
            *(v20 - 1) = v23;
            LOBYTE(v23) = a2[2];
            a5 = LODWORD(v23);
            *v20 = a5;
            a2 += 3;
            v20 += v7;
            --v21;
          }

          while (v21 > 1);
        }

        break;
      default:
        if (a4 >= 1 && v8 == 2)
        {
          v57 = a4 + 1;
          v58 = a3 + 1;
          do
          {
            LOBYTE(a5) = *a2;
            v59 = LODWORD(a5);
            *(v58 - 1) = v59;
            LOBYTE(v59) = a2[1];
            a5 = LODWORD(v59);
            *v58 = a5;
            a2 += 2;
            --v57;
            v58 += v7;
          }

          while (v57 > 1);
        }

        break;
    }

    goto LABEL_64;
  }

  v9 = v6[8];
  if (v8 == 1)
  {
    if (a4 >= 1)
    {
      v42 = a4 + 1;
      v43 = a3;
      do
      {
        LOBYTE(v5) = *a2;
        v45 = v9 * LODWORD(v5);
        if (v45 > 0.04045)
        {
          v44 = ((v45 + 0.055) / 1.055);
          v5 = v44 * v44 * 0.839474953 + 0.0985766366 + v44 * v44 * v44 * 0.363287814 + -0.0125559719 / (v44 * 0.290283465 + 0.127583389) + v44 * -0.231757513 + v44 * v44 * (v44 * v44) * -0.0395365718;
        }

        else
        {
          v5 = v45 / 12.92;
        }

        *v43 = v5;
        ++a2;
        v43 += v7;
        --v42;
      }

      while (v42 > 1);
    }

    goto LABEL_64;
  }

  if (v8 == 4)
  {
    if (a4 < 1)
    {
      goto LABEL_64;
    }

    v24 = a3 + 2;
    v25 = a4 + 1;
    while (1)
    {
      LOBYTE(v5) = *a2;
      v27 = v9 * LODWORD(v5);
      if (v27 <= 0.04045)
      {
        *&v34 = v27 / 12.92;
        *(v24 - 2) = *&v34;
        LOBYTE(v34) = a2[1];
        v29 = v9 * v34;
        if (v29 <= 0.04045)
        {
LABEL_29:
          *&v30 = v29 / 12.92;
          *(v24 - 1) = *&v30;
          LOBYTE(v30) = a2[2];
          v31 = v9 * v30;
          if (v31 <= 0.04045)
          {
            goto LABEL_30;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v28 = ((v27 + 0.055) / 1.055);
        *&v28 = v28 * v28 * 0.839474953 + 0.0985766366 + v28 * v28 * v28 * 0.363287814 + -0.0125559719 / (v28 * 0.290283465 + 0.127583389) + v28 * -0.231757513 + v28 * v28 * (v28 * v28) * -0.0395365718;
        *(v24 - 2) = *&v28;
        LOBYTE(v28) = a2[1];
        v29 = v9 * LODWORD(v28);
        if (v29 <= 0.04045)
        {
          goto LABEL_29;
        }
      }

      v35 = ((v29 + 0.055) / 1.055);
      *&v35 = v35 * v35 * 0.839474953 + 0.0985766366 + v35 * v35 * v35 * 0.363287814 + -0.0125559719 / (v35 * 0.290283465 + 0.127583389) + v35 * -0.231757513 + v35 * v35 * (v35 * v35) * -0.0395365718;
      *(v24 - 1) = *&v35;
      LOBYTE(v35) = a2[2];
      v31 = v9 * LODWORD(v35);
      if (v31 <= 0.04045)
      {
LABEL_30:
        *&v32 = v31 / 12.92;
        *v24 = *&v32;
        LOBYTE(v32) = a2[3];
        v33 = v9 * v32;
        if (v33 <= 0.04045)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

LABEL_34:
      v36 = ((v31 + 0.055) / 1.055);
      *&v36 = v36 * v36 * 0.839474953 + 0.0985766366 + v36 * v36 * v36 * 0.363287814 + -0.0125559719 / (v36 * 0.290283465 + 0.127583389) + v36 * -0.231757513 + v36 * v36 * (v36 * v36) * -0.0395365718;
      *v24 = *&v36;
      LOBYTE(v36) = a2[3];
      v33 = v9 * LODWORD(v36);
      if (v33 <= 0.04045)
      {
LABEL_35:
        v5 = v33 / 12.92;
        goto LABEL_26;
      }

LABEL_25:
      v26 = ((v33 + 0.055) / 1.055);
      v5 = v26 * v26 * 0.839474953 + 0.0985766366 + v26 * v26 * v26 * 0.363287814 + -0.0125559719 / (v26 * 0.290283465 + 0.127583389) + v26 * -0.231757513 + v26 * v26 * (v26 * v26) * -0.0395365718;
LABEL_26:
      v24[1] = v5;
      a2 += 4;
      v24 += v7;
      if (--v25 <= 1)
      {
        goto LABEL_64;
      }
    }
  }

  if (v8 != 3)
  {
    if (a4 < 1 || v8 != 2)
    {
      goto LABEL_64;
    }

    v49 = a4 + 1;
    v50 = a3 + 1;
    v51 = 4 * v7;
    while (1)
    {
      LOBYTE(v5) = *a2;
      v53 = v9 * LODWORD(v5);
      if (v53 <= 0.04045)
      {
        *&v56 = v53 / 12.92;
        *(v50 - 1) = *&v56;
        LOBYTE(v56) = a2[1];
        v55 = v9 * v56;
        if (v55 > 0.04045)
        {
          goto LABEL_53;
        }

LABEL_58:
        v5 = v55 / 12.92;
        *v50 = v5;
        a2 += 2;
        --v49;
        v50 = (v50 + v51);
        if (v49 <= 1)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v54 = ((v53 + 0.055) / 1.055);
        *&v54 = v54 * v54 * 0.839474953 + 0.0985766366 + v54 * v54 * v54 * 0.363287814 + -0.0125559719 / (v54 * 0.290283465 + 0.127583389) + v54 * -0.231757513 + v54 * v54 * (v54 * v54) * -0.0395365718;
        *(v50 - 1) = *&v54;
        LOBYTE(v54) = a2[1];
        v55 = v9 * LODWORD(v54);
        if (v55 <= 0.04045)
        {
          goto LABEL_58;
        }

LABEL_53:
        v52 = ((v55 + 0.055) / 1.055);
        v5 = v52 * v52 * 0.839474953 + 0.0985766366 + v52 * v52 * v52 * 0.363287814 + -0.0125559719 / (v52 * 0.290283465 + 0.127583389) + v52 * -0.231757513 + v52 * v52 * (v52 * v52) * -0.0395365718;
        *v50 = v5;
        a2 += 2;
        --v49;
        v50 = (v50 + v51);
        if (v49 <= 1)
        {
          goto LABEL_64;
        }
      }
    }
  }

  if (a4 >= 1)
  {
    v10 = a3 + 2;
    for (i = a4 + 1; i > 1; --i)
    {
      LOBYTE(v5) = *a2;
      v13 = v9 * LODWORD(v5);
      if (v13 <= 0.04045)
      {
        *&v18 = v13 / 12.92;
        *(v10 - 2) = *&v18;
        LOBYTE(v18) = a2[1];
        v15 = v9 * v18;
        if (v15 <= 0.04045)
        {
LABEL_11:
          *&v16 = v15 / 12.92;
          *(v10 - 1) = *&v16;
          LOBYTE(v16) = a2[2];
          v17 = v9 * v16;
          if (v17 <= 0.04045)
          {
            goto LABEL_15;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v14 = ((v13 + 0.055) / 1.055);
        *&v14 = v14 * v14 * 0.839474953 + 0.0985766366 + v14 * v14 * v14 * 0.363287814 + -0.0125559719 / (v14 * 0.290283465 + 0.127583389) + v14 * -0.231757513 + v14 * v14 * (v14 * v14) * -0.0395365718;
        *(v10 - 2) = *&v14;
        LOBYTE(v14) = a2[1];
        v15 = v9 * LODWORD(v14);
        if (v15 <= 0.04045)
        {
          goto LABEL_11;
        }
      }

      v19 = ((v15 + 0.055) / 1.055);
      *&v19 = v19 * v19 * 0.839474953 + 0.0985766366 + v19 * v19 * v19 * 0.363287814 + -0.0125559719 / (v19 * 0.290283465 + 0.127583389) + v19 * -0.231757513 + v19 * v19 * (v19 * v19) * -0.0395365718;
      *(v10 - 1) = *&v19;
      LOBYTE(v19) = a2[2];
      v17 = v9 * LODWORD(v19);
      if (v17 <= 0.04045)
      {
LABEL_15:
        v5 = v17 / 12.92;
        goto LABEL_8;
      }

LABEL_7:
      v12 = ((v17 + 0.055) / 1.055);
      v5 = v12 * v12 * 0.839474953 + 0.0985766366 + v12 * v12 * v12 * 0.363287814 + -0.0125559719 / (v12 * 0.290283465 + 0.127583389) + v12 * -0.231757513 + v12 * v12 * (v12 * v12) * -0.0395365718;
LABEL_8:
      *v10 = v5;
      a2 += 3;
      v10 += v7;
    }
  }

LABEL_64:
  v60 = *(v6 + 2) * v7 - v8;
  v61 = &a3[v8];
  if (v60 == 1)
  {
    if (a4 >= 1)
    {
      v64 = 4 * v7;
      v65 = a4 + 1;
      do
      {
        *v61 = 0.0;
        v61 = (v61 + v64);
        --v65;
      }

      while (v65 > 1);
    }
  }

  else if (v60 == 2)
  {
    if (a4 >= 1)
    {
      v62 = 4 * v7;
      v63 = a4 + 1;
      do
      {
        *v61 = 0;
        v61 = (v61 + v62);
        --v63;
      }

      while (v63 > 1);
    }
  }

  else if (a4 >= 1 && v60 == 3)
  {
    v66 = a4 + 1;
    v67 = v61 + 2;
    v68 = 4 * v7;
    do
    {
      *(v67 - 1) = 0;
      *v67 = 0;
      --v66;
      v67 = (v67 + v68);
    }

    while (v66 > 1);
  }

  return result;
}

float avir::CImageResizerFilterStepINL<float,float>::calcScanlineBias(uint64_t a1, uint64_t a2, int a3, __n128 *a4, __n128 a5, double a6, float32x2_t a7)
{
  v7 = **(a1 + 104);
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        return a5.n128_f32[0];
      }

      if (a3 < 1)
      {
        *&a6 = a3;
        a5 = vdivq_f32(0, vdupq_lane_s32(*&a6, 0));
        *a4 = a5;
        return a5.n128_f32[0];
      }

      if (a3 == 1)
      {
        v11 = 0uLL;
        v12 = 1;
        v13 = a2;
      }

      else
      {
        v26 = a3 & 0x7FFFFFFE;
        v12 = a3 - v26;
        v13 = (a2 + 16 * v26);
        v27 = (a2 + 16);
        v11 = 0uLL;
        v28 = v26;
        do
        {
          v29 = v27[-1];
          v11 = vaddq_f32(vaddq_f32(v11, v29), *v27);
          v27 += 2;
          v28 -= 2;
        }

        while (v28);
        if (v26 == a3)
        {
          goto LABEL_32;
        }
      }

      v30 = v12 + 1;
      do
      {
        v31 = *v13++;
        v29.i32[1] = v31.i32[1];
        v11 = vaddq_f32(v11, v31);
        --v30;
      }

      while (v30 > 1);
LABEL_32:
      v29.f32[0] = a3;
      a5 = vdivq_f32(v11, vdupq_lane_s32(*v29.f32, 0));
      *a4 = a5;
      return a5.n128_f32[0];
    }

    if (a3 < 1)
    {
      a5.n128_u64[0] = 0;
      v18 = 0.0;
    }

    else
    {
      if (a3 == 1)
      {
        a5.n128_u64[0] = 0;
        v17 = 1;
        v18 = 0.0;
        v19 = a2;
      }

      else
      {
        v37 = a3 & 0x7FFFFFFE;
        v17 = a3 - v37;
        v19 = (a2 + 12 * v37);
        v38 = (a2 + 12);
        a5.n128_u64[0] = 0;
        v18 = 0.0;
        v39 = v37;
        do
        {
          v18 = (v18 + v38[-1].f32[1]) + v38[1].f32[0];
          a7 = *(v38 - 12);
          v40 = *v38;
          v38 += 3;
          a5.n128_u64[0] = vadd_f32(vadd_f32(a5.n128_u64[0], a7), v40);
          v39 -= 2;
        }

        while (v39);
        if (v37 == a3)
        {
          goto LABEL_45;
        }
      }

      v41 = v17 + 1;
      do
      {
        a7 = *v19;
        a5.n128_u64[0] = vadd_f32(a5.n128_u64[0], *v19);
        v18 = v18 + v19[1].f32[0];
        v19 = (v19 + 12);
        --v41;
      }

      while (v41 > 1);
    }

LABEL_45:
    a7.f32[0] = a3;
    a4->n128_u64[0] = vdiv_f32(a5.n128_u64[0], vdup_lane_s32(a7, 0));
    a5.n128_f32[0] = v18 / a3;
    a4->n128_u32[2] = a5.n128_u32[0];
    return a5.n128_f32[0];
  }

  if (v7 == 1)
  {
    v14 = 0.0;
    if (a3 >= 1)
    {
      if (a3 >= 8)
      {
        v32 = a3 & 0x7FFFFFF8;
        v15 = a3 - v32;
        v16 = (a2 + 4 * v32);
        v33 = a2 + 16;
        v34 = v32;
        do
        {
          v14 = (((((((v14 + COERCE_FLOAT(*(v33 - 16))) + COERCE_FLOAT(HIDWORD(*(v33 - 16)))) + COERCE_FLOAT(*(v33 - 8))) + COERCE_FLOAT(HIDWORD(*(v33 - 16)))) + COERCE_FLOAT(*v33)) + COERCE_FLOAT(HIDWORD(*v33))) + COERCE_FLOAT(*(v33 + 8))) + COERCE_FLOAT(HIDWORD(*v33));
          v33 += 32;
          v34 -= 8;
        }

        while (v34);
        if (v32 == a3)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v15 = a3;
        v16 = a2;
      }

      v35 = v15 + 1;
      do
      {
        v36 = *v16++;
        v14 = v14 + v36;
        --v35;
      }

      while (v35 > 1);
    }

LABEL_38:
    a5.n128_f32[0] = v14 / a3;
    a4->n128_u32[0] = a5.n128_u32[0];
    return a5.n128_f32[0];
  }

  if (v7 != 2)
  {
    return a5.n128_f32[0];
  }

  if (a3 >= 1)
  {
    if (a3 == 1)
    {
      v8 = 0;
      v9 = 1;
      v10 = a2;
    }

    else
    {
      v20 = a3 & 0x7FFFFFFE;
      v9 = a3 - v20;
      v10 = (a2 + 8 * v20);
      v21 = (a2 + 8);
      v8 = 0;
      v22 = v20;
      do
      {
        v23 = v21[-1];
        v8 = vadd_f32(vadd_f32(v8, v23), *v21);
        v21 += 2;
        v22 -= 2;
      }

      while (v22);
      if (v20 == a3)
      {
        goto LABEL_26;
      }
    }

    v24 = v9 + 1;
    do
    {
      v25 = *v10++;
      v23.i32[1] = v25.i32[1];
      v8 = vadd_f32(v8, v25);
      --v24;
    }

    while (v24 > 1);
LABEL_26:
    v23.f32[0] = a3;
    a5.n128_u64[0] = vdiv_f32(v8, vdup_lane_s32(v23, 0));
    a4->n128_u64[0] = a5.n128_u64[0];
    return a5.n128_f32[0];
  }

  *&a6 = a3;
  a5.n128_u64[0] = vdiv_f32(0, vdup_lane_s32(*&a6, 0));
  a4->n128_u64[0] = a5.n128_u64[0];
  return a5.n128_f32[0];
}

uint64_t avir::CImageResizerFilterStepINL<float,float>::unbiasScanline(uint64_t result, float32x4_t *a2, int a3, float32x2_t *a4, double a5, double a6)
{
  v6 = **(result + 104);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      if (a3 < 1)
      {
        return result;
      }

      v12 = *a4;
      LODWORD(a6) = a4[1].i32[0];
      if (a3 >= 4)
      {
        v37 = a3;
        v38 = a3 & 0x7FFFFFFC;
        v13 = (a2 + 12 * v38);
        v39 = vdupq_lane_s32(v12, 0);
        a3 -= v38;
        v40 = vdupq_lane_s32(v12, 1);
        v41 = vdupq_lane_s32(*&a6, 0);
        v42 = v38;
        do
        {
          v44 = vld3q_f32(a2->f32);
          v45.val[0] = vsubq_f32(v44.val[0], v39);
          v45.val[1] = vsubq_f32(v44.val[1], v40);
          v45.val[2] = vsubq_f32(v44.val[2], v41);
          vst3q_f32(a2->f32, v45);
          a2 += 3;
          v42 -= 4;
        }

        while (v42);
        if (v38 == v37)
        {
          return result;
        }
      }

      else
      {
        v13 = a2;
      }

      v43 = a3 + 1;
      do
      {
        *v13 = vsub_f32(*v13, v12);
        v13[1].f32[0] = v13[1].f32[0] - *&a6;
        v13 = (v13 + 12);
        --v43;
      }

      while (v43 > 1);
      return result;
    }

    if (v6 == 4 && a3 >= 1)
    {
      v9 = *a4->f32;
      if (a3 >= 4)
      {
        v23 = a3;
        v24 = a3 & 0x7FFFFFFC;
        v10 = &a2[v24];
        a3 -= v24;
        v25 = v24;
        do
        {
          v26 = vsubq_f32(a2[3], v9);
          v27 = vsubq_f32(a2[2], v9);
          v28 = vsubq_f32(a2[1], v9);
          *a2 = vsubq_f32(*a2, v9);
          a2[1] = v28;
          a2[2] = v27;
          a2[3] = v26;
          a2 += 4;
          v25 -= 4;
        }

        while (v25);
        if (v24 == v23)
        {
          return result;
        }
      }

      else
      {
        v10 = a2;
      }

      v29 = a3 + 1;
      do
      {
        *v10 = vsubq_f32(*v10, v9);
        ++v10;
        --v29;
      }

      while (v29 > 1);
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (a3 < 1)
      {
        return result;
      }

      LODWORD(a5) = a4->i32[0];
      if (a3 >= 8)
      {
        v30 = a3;
        v31 = a3 & 0x7FFFFFF8;
        v11 = &a2->f32[v31];
        a3 -= v31;
        v32 = vdupq_lane_s32(*&a5, 0);
        v33 = a2 + 1;
        v34 = v31;
        do
        {
          v35 = vsubq_f32(*v33, v32);
          v33[-1] = vsubq_f32(v33[-1], v32);
          *v33 = v35;
          v33 += 2;
          v34 -= 8;
        }

        while (v34);
        if (v31 == v30)
        {
          return result;
        }
      }

      else
      {
        v11 = a2;
      }

      v36 = a3 + 1;
      do
      {
        *v11 = *v11 - *&a5;
        ++v11;
        --v36;
      }

      while (v36 > 1);
      return result;
    }

    if (v6 == 2 && a3 >= 1)
    {
      v7 = *a4;
      if (a3 < 8)
      {
        v8 = a2;
LABEL_21:
        v22 = a3 + 1;
        do
        {
          *v8 = vsub_f32(*v8, v7);
          ++v8;
          --v22;
        }

        while (v22 > 1);
        return result;
      }

      v14 = a3;
      v15 = a3 & 0x7FFFFFF8;
      v8 = a2 + v15;
      a3 -= v15;
      *v16.f32 = *a4;
      *&v16.u32[2] = *a4;
      v17 = a2 + 2;
      v18 = v15;
      do
      {
        v19 = *v17;
        v20 = v17[1];
        v21 = vsubq_f32(v17[-1], v16);
        v17[-2] = vsubq_f32(v17[-2], v16);
        v17[-1] = v21;
        *v17 = vsubq_f32(v19, v16);
        v17[1] = vsubq_f32(v20, v16);
        v17 += 4;
        v18 -= 8;
      }

      while (v18);
      if (v15 != v14)
      {
        goto LABEL_21;
      }
    }
  }

  return result;
}

float avir::CImageResizerFilterStepINL<float,float>::prepareInBuf(uint64_t a1, _DWORD *a2, __n128 a3)
{
  if ((*a1 & 1) == 0)
  {
    v4 = *(a1 + 120);
    v3 = *(a1 + 124);
    if (v4 + v3)
    {
      v5 = **(a1 + 104);
      v6 = v5;
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          if (v4 <= 0)
          {
            if (v3 <= 0)
            {
              return a3.n128_f32[0];
            }

            v27 = &a2[3 * *(a1 + 112) - 3];
            v28 = &v27[v5];
            goto LABEL_82;
          }

          v24 = a2 - 1;
          v25 = v4 + 1;
          do
          {
            *(v24 - 2) = *a2;
            *(v24 - 1) = a2[1];
            a3.n128_u32[0] = a2[2];
            *v24 = a3.n128_u32[0];
            v24 -= 3;
            --v25;
          }

          while (v25 > 1);
          goto LABEL_38;
        }

        if (v5 == 4)
        {
          if (v4 <= 0)
          {
            if (v3 <= 0)
            {
              return a3.n128_f32[0];
            }

            v27 = &a2[4 * *(a1 + 112) - 4];
            v28 = &v27[v5];
            goto LABEL_72;
          }

          v9 = v4 + 1;
          v10 = a2 - 2;
          do
          {
            *(v10 - 2) = *a2;
            *(v10 - 1) = a2[1];
            *v10 = a2[2];
            a3.n128_u32[0] = a2[3];
            v10[1] = a3.n128_u32[0];
            --v9;
            v10 -= 4;
          }

          while (v9 > 1);
          goto LABEL_38;
        }
      }

      else
      {
        if (v5 == 1)
        {
          if (v4 <= 0)
          {
            if (v3 <= 0)
            {
              return a3.n128_f32[0];
            }

            v27 = &a2[*(a1 + 112) - 1];
            v28 = &v27[v5];
            goto LABEL_77;
          }

          v22 = a2 - 1;
          a3.n128_u32[0] = *a2;
          v23 = v4 + 1;
          do
          {
            *v22-- = a3.n128_u32[0];
            --v23;
          }

          while (v23 > 1);
          goto LABEL_38;
        }

        if (v5 == 2)
        {
          if (v4 <= 0)
          {
            if (v3 <= 0)
            {
              return a3.n128_f32[0];
            }

            v27 = &a2[2 * *(a1 + 112) - 2];
            v28 = &v27[v5];
            goto LABEL_67;
          }

          v7 = a2 - 1;
          v8 = v4 + 1;
          do
          {
            *(v7 - 1) = *a2;
            a3.n128_u32[0] = a2[1];
            *v7 = a3.n128_u32[0];
            v7 -= 2;
            --v8;
          }

          while (v8 > 1);
          goto LABEL_38;
        }
      }

      if (v4 >= 1 && v5 >= 1)
      {
        v11 = 0;
        v12 = 4 * v5;
        v13 = -4 * v5;
        do
        {
          if (v5 >= 8 && (-4 * v5 * v11 - v12) >= 0x20)
          {
            v18 = v5 & 0x7FFFFFF8;
            v19 = a2;
            do
            {
              a3 = *v19;
              v20 = *(v19 + 1);
              v21 = (v19 + v13);
              *v21 = *v19;
              v21[1] = v20;
              v19 += 8;
              v18 -= 8;
            }

            while (v18);
            v15 = v5 & 0x7FFFFFF8;
            if (v15 == v5)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v5 - v15;
          v17 = &a2[v15];
          do
          {
            a3.n128_u32[0] = *v17;
            *(v17 + v13) = *v17;
            ++v17;
            --v16;
          }

          while (v16);
LABEL_20:
          v13 -= v12;
          ++v11;
          v14 = __OFSUB__(v4--, 1);
        }

        while (!((v4 < 0) ^ v14 | (v4 == 0)));
      }

LABEL_38:
      v26 = (*(a1 + 112) - 1) * v5;
      v27 = &a2[v26];
      v28 = &v27[v5];
      if (v5 <= 2)
      {
        if (v5 != 1)
        {
          if (v5 == 2)
          {
            if (v3 < 1)
            {
              return a3.n128_f32[0];
            }

LABEL_67:
            v40 = v28 + 1;
            v41 = 4 * v6;
            v42 = v3 + 1;
            do
            {
              *(v40 - 1) = *v27;
              a3.n128_u32[0] = v27[1];
              *v40 = a3.n128_u32[0];
              v40 = (v40 + v41);
              --v42;
            }

            while (v42 > 1);
            return a3.n128_f32[0];
          }

          goto LABEL_47;
        }

        if (v3 < 1)
        {
          return a3.n128_f32[0];
        }

LABEL_77:
        a3.n128_u32[0] = *v27;
        v46 = v3 + 1;
        do
        {
          *v28 = a3.n128_u32[0];
          v28 += v5;
          --v46;
        }

        while (v46 > 1);
        return a3.n128_f32[0];
      }

      if (v5 != 3)
      {
        if (v5 != 4)
        {
LABEL_47:
          if (v3 < 1 || v5 < 1)
          {
            return a3.n128_f32[0];
          }

          v29 = 0;
          v30 = 4 * v5;
          v31 = &a2[v26];
          v32 = v30;
          while (1)
          {
            if (v5 >= 8 && (v30 + v30 * v29) >= 0x20)
            {
              v36 = v31 + 1;
              v37 = v5 & 0x7FFFFFF8;
              do
              {
                a3 = v36[-1];
                v38 = *v36;
                v39 = (v36 + v32);
                v39[-1] = a3;
                *v39 = v38;
                v36 += 2;
                v37 -= 8;
              }

              while (v37);
              v33 = v5 & 0x7FFFFFF8;
              if (v33 == v5)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v33 = 0;
            }

            v34 = v5 - v33;
            v35 = v31 + v33;
            do
            {
              a3.n128_u32[0] = *v35;
              *(v35 + v32) = *v35;
              ++v35;
              --v34;
            }

            while (v34);
LABEL_50:
            ++v29;
            v32 += v30;
            v14 = __OFSUB__(v3--, 1);
            if ((v3 < 0) ^ v14 | (v3 == 0))
            {
              return a3.n128_f32[0];
            }
          }
        }

        if (v3 < 1)
        {
          return a3.n128_f32[0];
        }

LABEL_72:
        v43 = v28 + 2;
        v44 = 4 * v6;
        v45 = v3 + 1;
        do
        {
          *(v43 - 2) = *v27;
          *(v43 - 1) = v27[1];
          *v43 = v27[2];
          a3.n128_u32[0] = v27[3];
          v43[1] = a3.n128_u32[0];
          v43 = (v43 + v44);
          --v45;
        }

        while (v45 > 1);
        return a3.n128_f32[0];
      }

      if (v3 < 1)
      {
        return a3.n128_f32[0];
      }

LABEL_82:
      v47 = v28 + 2;
      v48 = 4 * v6;
      v49 = v3 + 1;
      do
      {
        *(v47 - 2) = *v27;
        *(v47 - 1) = v27[1];
        a3.n128_u32[0] = v27[2];
        *v47 = a3.n128_u32[0];
        v47 = (v47 + v48);
        --v49;
      }

      while (v49 > 1);
    }
  }

  return a3.n128_f32[0];
}

void avir::CImageResizerFilterStepINL<float,float>::doUpsample(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = **(a1 + 104);
  v7 = *(a1 + 140);
  v8 = -(v6 * v7);
  v9 = (a3 + 4 * v8);
  bzero(v9, 4 * (*(a1 + 132) + v7 + *(a1 + 144)) * v6);
  v10 = *(a1 + 4);
  v11 = v10 * v6;
  if (*(a1 + 48) >= 1)
  {
    v12 = *(a1 + 140);
    v13 = v12 / v10;
    v14 = &v9->i32[v12 % v10 * v6];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if (v13 >= 1)
        {
          v97 = v13 + 1;
          do
          {
            v98 = v14;
            *v14 = *a2;
            v14[1] = *(a2 + 1);
            v14[2] = *(a2 + 2);
            v14 += v11;
            --v97;
          }

          while (v97 > 1);
          v14 = &v98[v11];
        }

        v99 = *(a1 + 112);
        if (v99 > 1)
        {
          v100 = v99 + 1;
          do
          {
            *v14 = *a2;
            v14[1] = *(a2 + 1);
            v14[2] = *(a2 + 2);
            a2 += 3;
            v14 += v11;
            --v100;
          }

          while (v100 > 2);
        }

        v101 = *(a1 + 144) / v10;
        if ((v101 & 0x80000000) == 0)
        {
          v102 = v14 + 2;
          v103 = 4 * v11;
          v104 = v101 + 1;
          do
          {
            *(v102 - 2) = *a2;
            *(v102 - 1) = *(a2 + 1);
            *v102 = *(a2 + 2);
            v102 = (v102 + v103);
            --v104;
          }

          while (v104);
        }
      }

      else if (v6 == 4)
      {
        if (v13 >= 1)
        {
          v41 = v13 + 1;
          do
          {
            v42 = v14;
            *v14 = *a2;
            v14[1] = *(a2 + 1);
            v14[2] = *(a2 + 2);
            v14[3] = *(a2 + 3);
            v14 += v11;
            --v41;
          }

          while (v41 > 1);
          v14 = &v42[v11];
        }

        v43 = *(a1 + 112);
        if (v43 > 1)
        {
          v44 = v43 + 1;
          do
          {
            *v14 = *a2;
            v14[1] = *(a2 + 1);
            v14[2] = *(a2 + 2);
            v14[3] = *(a2 + 3);
            a2 += 4;
            v14 += v11;
            --v44;
          }

          while (v44 > 2);
        }

        v45 = *(a1 + 144) / v10;
        if ((v45 & 0x80000000) == 0)
        {
          v46 = v14 + 2;
          v47 = 4 * v11;
          v48 = v45 + 1;
          do
          {
            *(v46 - 2) = *a2;
            *(v46 - 1) = *(a2 + 1);
            *v46 = *(a2 + 2);
            v46[1] = *(a2 + 3);
            v46 = (v46 + v47);
            --v48;
          }

          while (v48);
        }
      }
    }

    else if (v6 == 1)
    {
      if (v13 >= 1)
      {
        v87 = *a2;
        v88 = v13 + 1;
        do
        {
          v89 = v14;
          *v14 = v87;
          v14 += v11;
          --v88;
        }

        while (v88 > 1);
        v14 = &v89[v11];
      }

      v90 = *(a1 + 112);
      if (v90 > 1)
      {
        v91 = v90 + 1;
        do
        {
          v92 = *a2++;
          *v14 = v92;
          v14 += v11;
          --v91;
        }

        while (v91 > 2);
      }

      v93 = *(a1 + 144) / v10;
      if ((v93 & 0x80000000) == 0)
      {
        v94 = *a2;
        v95 = 4 * v11;
        v96 = v93 + 1;
        do
        {
          *v14 = v94;
          v14 = (v14 + v95);
          --v96;
        }

        while (v96);
      }
    }

    else if (v6 == 2)
    {
      if (v13 >= 1)
      {
        v15 = v13 + 1;
        do
        {
          v16 = v14;
          *v14 = *a2;
          v14[1] = *(a2 + 1);
          v14 += v11;
          --v15;
        }

        while (v15 > 1);
        v14 = &v16[v11];
      }

      v17 = *(a1 + 112);
      if (v17 > 1)
      {
        v18 = v17 + 1;
        do
        {
          *v14 = *a2;
          v14[1] = *(a2 + 1);
          a2 += 2;
          v14 += v11;
          --v18;
        }

        while (v18 > 2);
      }

      v19 = *(a1 + 144) / v10;
      if ((v19 & 0x80000000) == 0)
      {
        v20 = v14 + 1;
        v21 = 4 * v11;
        v22 = v19 + 1;
        do
        {
          *(v20 - 1) = *a2;
          *v20 = *(a2 + 1);
          v20 = (v20 + v21);
          --v22;
        }

        while (v22);
      }
    }

    return;
  }

  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  if (v6 != 1)
  {
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 != 4)
        {
          v195 = *(a1 + 184);
          LODWORD(v196) = *(a1 + 192);
          v80 = a2;
          goto LABEL_388;
        }

        v49 = *(a1 + 120);
        if (v49 >= 1)
        {
          v50 = a3 + 4 * (v8 + v11 * (v49 - 1)) + 16 * v24;
          v52 = v9 < v23 + 4 * v24 && v23 < v50;
          v55 = v9 < a2 + 1 && v50 > a2 || v11 < 0 || v52;
          v56 = (v24 < 4) | v55;
          do
          {
            if (v24 >= 1)
            {
              if (v56)
              {
                v57 = 0;
                f32 = v9;
              }

              else
              {
                v59 = 0;
                f32 = v9[v24 & 0x7FFFFFFC].f32;
                v60 = v23;
                do
                {
                  v61 = v9[v59 / 0x10].f32;
                  v403 = vld4q_f32(v61);
                  v62 = *v60++;
                  v403.val[0] = vmlaq_n_f32(v403.val[0], v62, *a2);
                  v403.val[1] = vmlaq_n_f32(v403.val[1], v62, a2[1]);
                  v403.val[2] = vmlaq_n_f32(v403.val[2], v62, a2[2]);
                  v403.val[3] = vmlaq_n_f32(v403.val[3], v62, a2[3]);
                  vst4q_f32(v61, v403);
                  v59 += 64;
                }

                while (((v24 >> 2) & 0x1FFFFFFF) << 6 != v59);
                v57 = v24 & 0x7FFFFFFC;
                if (v57 == v24)
                {
                  goto LABEL_76;
                }
              }

              v63 = (v23 + 4 * v57);
              v64 = v24 - v57;
              do
              {
                v65 = f32[1];
                *f32 = *f32 + (*v63 * *a2);
                f32[1] = v65 + (*v63 * a2[1]);
                v66 = f32[3];
                f32[2] = f32[2] + (*v63 * a2[2]);
                v67 = *v63++;
                f32[3] = v66 + (v67 * a2[3]);
                f32 += 4;
                --v64;
              }

              while (v64);
            }

LABEL_76:
            v9 = (v9 + 4 * v11);
            v34 = __OFSUB__(v49--, 1);
          }

          while (!((v49 < 0) ^ v34 | (v49 == 0)));
        }

        v197 = *(a1 + 112);
        if (v197 > 1)
        {
          v198 = (v197 - 2);
          v199 = &v9[v24].i8[4 * v11 * v198];
          v200 = &a2[4 * v198 + 4];
          v202 = v9 < v23 + 4 * v24 && v23 < v199;
          v205 = v9 < v200 && v199 > a2 || v11 < 0 || v202;
          v206 = (v24 < 4) | v205;
          v80 = a2;
          while (1)
          {
            if (v24 >= 1)
            {
              if (v206)
              {
                v207 = 0;
                v208 = v9;
              }

              else
              {
                v209 = 0;
                v208 = v9[v24 & 0x7FFFFFFC].f32;
                v210 = v23;
                do
                {
                  v211 = v9[v209 / 0x10].f32;
                  v404 = vld4q_f32(v211);
                  v212 = *v210++;
                  v404.val[0] = vmlaq_n_f32(v404.val[0], v212, *v80);
                  v404.val[1] = vmlaq_n_f32(v404.val[1], v212, v80[1]);
                  v404.val[2] = vmlaq_n_f32(v404.val[2], v212, v80[2]);
                  v404.val[3] = vmlaq_n_f32(v404.val[3], v212, v80[3]);
                  vst4q_f32(v211, v404);
                  v209 += 64;
                }

                while (((v24 >> 2) & 0x1FFFFFFF) << 6 != v209);
                v207 = v24 & 0x7FFFFFFC;
                if (v207 == v24)
                {
                  goto LABEL_287;
                }
              }

              v213 = (v23 + 4 * v207);
              v214 = v24 - v207;
              do
              {
                v215 = v208[1];
                *v208 = *v208 + (*v213 * *v80);
                v208[1] = v215 + (*v213 * v80[1]);
                v216 = v208[3];
                v208[2] = v208[2] + (*v213 * v80[2]);
                v217 = *v213++;
                v208[3] = v216 + (v217 * v80[3]);
                v208 += 4;
                --v214;
              }

              while (v214);
            }

LABEL_287:
            v80 += 4;
            v9 = (v9 + 4 * v11);
            v29 = v197-- <= 2;
            if (v29)
            {
              goto LABEL_354;
            }
          }
        }

        v80 = a2;
LABEL_354:
        v254 = *(a1 + 124);
        if ((v254 & 0x80000000) != 0)
        {
          goto LABEL_381;
        }

        v255 = &v9[v24].f32[v11 * v254];
        v257 = v9 < v23 + 4 * v24 && v23 < v255;
        v260 = v9 < v80 + 1 && v80 < v255 || v11 < 0 || v257;
        v261 = (v24 < 4) | v260;
        while (1)
        {
          if (v24 >= 1)
          {
            if (v261)
            {
              v262 = 0;
              v263 = v9;
            }

            else
            {
              v264 = 0;
              v263 = v9[v24 & 0x7FFFFFFC].f32;
              v265 = v23;
              do
              {
                v266 = v9[v264 / 0x10].f32;
                v405 = vld4q_f32(v266);
                v267 = *v265++;
                v405.val[0] = vmlaq_n_f32(v405.val[0], v267, *v80);
                v405.val[1] = vmlaq_n_f32(v405.val[1], v267, v80[1]);
                v405.val[2] = vmlaq_n_f32(v405.val[2], v267, v80[2]);
                v405.val[3] = vmlaq_n_f32(v405.val[3], v267, v80[3]);
                vst4q_f32(v266, v405);
                v264 += 64;
              }

              while (((v24 >> 2) & 0x1FFFFFFF) << 6 != v264);
              v262 = v24 & 0x7FFFFFFC;
              if (v262 == v24)
              {
                goto LABEL_371;
              }
            }

            v268 = (v23 + 4 * v262);
            v269 = v24 - v262;
            do
            {
              v270 = v263[1];
              *v263 = *v263 + (*v268 * *v80);
              v263[1] = v270 + (*v268 * v80[1]);
              v271 = v263[3];
              v263[2] = v263[2] + (*v268 * v80[2]);
              v272 = *v268++;
              v263[3] = v271 + (v272 * v80[3]);
              v263 += 4;
              --v269;
            }

            while (v269);
          }

LABEL_371:
          v9 = (v9 + 4 * v11);
          v29 = v254 <= 0;
          LODWORD(v254) = v254 - 1;
          if (v29)
          {
            goto LABEL_381;
          }
        }
      }

      v120 = *(a1 + 120);
      if (v120 >= 1)
      {
        v121 = a3 + 4 * (v8 + v11 * (v120 - 1)) + 12 * v24;
        v123 = v9 < v23 + 4 * v24 && v23 < v121;
        v126 = v9 < (a2 + 3) && v121 > a2 || v11 < 0 || v123;
        v127 = (v24 < 4) | v126;
        do
        {
          if (v24 >= 1)
          {
            if (v127)
            {
              v128 = 0;
              v129 = v9;
            }

            else
            {
              v130 = 0;
              v129 = &v9->f32[3 * (v24 & 0x7FFFFFFC)];
              v131 = v23;
              do
              {
                v132 = v9[v130].f32;
                v133 = *v131++;
                v400 = vld3q_f32(v132);
                v400.val[0] = vmlaq_n_f32(v400.val[0], v133, *a2);
                v400.val[1] = vmlaq_n_f32(v400.val[1], v133, a2[1]);
                v400.val[2] = vmlaq_n_f32(v400.val[2], v133, a2[2]);
                vst3q_f32(v132, v400);
                v130 += 3;
              }

              while (3 * ((v24 >> 2) & 0x1FFFFFFF) != v130);
              v128 = v24 & 0x7FFFFFFC;
              if (v128 == v24)
              {
                goto LABEL_178;
              }
            }

            v134 = (v23 + 4 * v128);
            v135 = v24 - v128;
            do
            {
              v136 = v129[1];
              *v129 = *v129 + (*v134 * *a2);
              v129[1] = v136 + (*v134 * a2[1]);
              v137 = *v134++;
              v129[2] = v129[2] + (v137 * a2[2]);
              v129 += 3;
              --v135;
            }

            while (v135);
          }

LABEL_178:
          v9 = (v9 + 4 * v11);
          v34 = __OFSUB__(v120--, 1);
        }

        while (!((v120 < 0) ^ v34 | (v120 == 0)));
      }

      v138 = *(a1 + 112);
      if (v138 > 1)
      {
        v139 = (v138 - 2);
        v140 = v9 + 12 * v24 + 4 * v11 * v139;
        v141 = &a2[3 * v139 + 3];
        v143 = v9 < v23 + 4 * v24 && v23 < v140;
        if (v9 < v141 && v140 > a2 || v11 < 0)
        {
          v143 = 1;
        }

        v146 = v24 < 4 || v143;
        v80 = a2;
        while (1)
        {
          if (v24 >= 1)
          {
            if (v146)
            {
              v147 = 0;
              v148 = v9;
            }

            else
            {
              v149 = 0;
              v148 = &v9->f32[3 * (v24 & 0x7FFFFFFC)];
              v150 = v23;
              do
              {
                v151 = v9[v149].f32;
                v152 = *v150++;
                v401 = vld3q_f32(v151);
                v401.val[0] = vmlaq_n_f32(v401.val[0], v152, *v80);
                v401.val[1] = vmlaq_n_f32(v401.val[1], v152, v80[1]);
                v401.val[2] = vmlaq_n_f32(v401.val[2], v152, v80[2]);
                vst3q_f32(v151, v401);
                v149 += 3;
              }

              while (3 * ((v24 >> 2) & 0x1FFFFFFF) != v149);
              v147 = v24 & 0x7FFFFFFC;
              if (v147 == v24)
              {
                goto LABEL_205;
              }
            }

            v153 = (v23 + 4 * v147);
            v154 = v24 - v147;
            do
            {
              v155 = v148[1];
              *v148 = *v148 + (*v153 * *v80);
              v148[1] = v155 + (*v153 * v80[1]);
              v156 = *v153++;
              v148[2] = v148[2] + (v156 * v80[2]);
              v148 += 3;
              --v154;
            }

            while (v154);
          }

LABEL_205:
          v80 += 3;
          v9 = (v9 + 4 * v11);
          v29 = v138-- <= 2;
          if (v29)
          {
            goto LABEL_298;
          }
        }
      }

      v80 = a2;
LABEL_298:
      v218 = *(a1 + 124);
      if ((v218 & 0x80000000) != 0)
      {
        goto LABEL_381;
      }

      v219 = &v9->f32[3 * v24 + v11 * v218];
      v221 = v9 < v23 + 4 * v24 && v23 < v219;
      v224 = v9 < (v80 + 3) && v80 < v219 || v11 < 0 || v221;
      v225 = (v24 < 4) | v224;
      while (1)
      {
        if (v24 >= 1)
        {
          if (v225)
          {
            v226 = 0;
            v227 = v9;
          }

          else
          {
            v228 = 0;
            v227 = &v9->f32[3 * (v24 & 0x7FFFFFFC)];
            v229 = v23;
            do
            {
              v230 = v9[v228].f32;
              v231 = *v229++;
              v402 = vld3q_f32(v230);
              v402.val[0] = vmlaq_n_f32(v402.val[0], v231, *v80);
              v402.val[1] = vmlaq_n_f32(v402.val[1], v231, v80[1]);
              v402.val[2] = vmlaq_n_f32(v402.val[2], v231, v80[2]);
              vst3q_f32(v230, v402);
              v228 += 3;
            }

            while (3 * ((v24 >> 2) & 0x1FFFFFFF) != v228);
            v226 = v24 & 0x7FFFFFFC;
            if (v226 == v24)
            {
              goto LABEL_315;
            }
          }

          v232 = (v23 + 4 * v226);
          v233 = v24 - v226;
          do
          {
            v234 = v227[1];
            *v227 = *v227 + (*v232 * *v80);
            v227[1] = v234 + (*v232 * v80[1]);
            v235 = *v232++;
            v227[2] = v227[2] + (v235 * v80[2]);
            v227 += 3;
            --v233;
          }

          while (v233);
        }

LABEL_315:
        v9 = (v9 + 4 * v11);
        v29 = v218 <= 0;
        LODWORD(v218) = v218 - 1;
        if (v29)
        {
          goto LABEL_381;
        }
      }
    }

    v157 = *(a1 + 120);
    if (v157 >= 1)
    {
      v158 = a3 + 4 * (v8 + v11 * (v157 - 1)) + 8 * v24;
      v160 = v9 < v23 + 4 * v24 && v23 < v158;
      v163 = v9 < (a2 + 2) && v158 > a2 || v11 < 0 || v160;
      v164 = (v24 < 4) | v163;
      do
      {
        if (v24 >= 1)
        {
          if (v164)
          {
            v165 = 0;
            v166 = v9;
          }

          else
          {
            v167 = 0;
            v166 = &v9->f32[2 * (v24 & 0x7FFFFFFC)];
            v168 = v23;
            do
            {
              v169 = v9[v167].f32;
              v393 = vld2q_f32(v169);
              v170 = *v168++;
              v393.val[0] = vmlaq_n_f32(v393.val[0], v170, *a2);
              v393.val[1] = vmlaq_n_f32(v393.val[1], v170, a2[1]);
              vst2q_f32(v169, v393);
              v167 += 2;
            }

            while (2 * ((v24 >> 2) & 0x1FFFFFFF) != v167);
            v165 = v24 & 0x7FFFFFFC;
            if (v165 == v24)
            {
              goto LABEL_232;
            }
          }

          v171 = (v23 + 4 * v165);
          v172 = v24 - v165;
          do
          {
            v173 = v166[1];
            *v166 = *v166 + (*v171 * *a2);
            v174 = *v171++;
            v166[1] = v173 + (v174 * a2[1]);
            v166 += 2;
            --v172;
          }

          while (v172);
        }

LABEL_232:
        v9 = (v9 + 4 * v11);
        v34 = __OFSUB__(v157--, 1);
      }

      while (!((v157 < 0) ^ v34 | (v157 == 0)));
    }

    v175 = *(a1 + 112);
    if (v175 > 1)
    {
      v176 = (v175 - 2);
      v177 = v9 + 8 * v24 + 4 * v11 * v176;
      v178 = &a2[2 * v176 + 2];
      v180 = v9 < v23 + 4 * v24 && v23 < v177;
      v183 = v9 < v178 && v177 > a2 || v11 < 0 || v180;
      v184 = (v24 < 4) | v183;
      v80 = a2;
      while (1)
      {
        if (v24 >= 1)
        {
          if (v184)
          {
            v185 = 0;
            v186 = v9;
          }

          else
          {
            v187 = 0;
            v186 = &v9->f32[2 * (v24 & 0x7FFFFFFC)];
            v188 = v23;
            do
            {
              v189 = v9[v187].f32;
              v394 = vld2q_f32(v189);
              v190 = *v188++;
              v394.val[0] = vmlaq_n_f32(v394.val[0], v190, *v80);
              v394.val[1] = vmlaq_n_f32(v394.val[1], v190, v80[1]);
              vst2q_f32(v189, v394);
              v187 += 2;
            }

            while (2 * ((v24 >> 2) & 0x1FFFFFFF) != v187);
            v185 = v24 & 0x7FFFFFFC;
            if (v185 == v24)
            {
              goto LABEL_259;
            }
          }

          v191 = (v23 + 4 * v185);
          v192 = v24 - v185;
          do
          {
            v193 = v186[1];
            *v186 = *v186 + (*v191 * *v80);
            v194 = *v191++;
            v186[1] = v193 + (v194 * v80[1]);
            v186 += 2;
            --v192;
          }

          while (v192);
        }

LABEL_259:
        v80 += 2;
        v9 = (v9 + 4 * v11);
        v29 = v175-- <= 2;
        if (v29)
        {
          goto LABEL_326;
        }
      }
    }

    v80 = a2;
LABEL_326:
    v236 = *(a1 + 124);
    if ((v236 & 0x80000000) != 0)
    {
      goto LABEL_381;
    }

    v237 = &v9->f32[2 * v24 + v11 * v236];
    v239 = v9 < v23 + 4 * v24 && v23 < v237;
    v242 = v9 < (v80 + 2) && v80 < v237 || v11 < 0 || v239;
    v243 = (v24 < 4) | v242;
    while (1)
    {
      if (v24 >= 1)
      {
        if (v243)
        {
          v244 = 0;
          v245 = v9;
        }

        else
        {
          v246 = 0;
          v245 = &v9->f32[2 * (v24 & 0x7FFFFFFC)];
          v247 = v23;
          do
          {
            v248 = v9[v246].f32;
            v395 = vld2q_f32(v248);
            v249 = *v247++;
            v395.val[0] = vmlaq_n_f32(v395.val[0], v249, *v80);
            v395.val[1] = vmlaq_n_f32(v395.val[1], v249, v80[1]);
            vst2q_f32(v248, v395);
            v246 += 2;
          }

          while (2 * ((v24 >> 2) & 0x1FFFFFFF) != v246);
          v244 = v24 & 0x7FFFFFFC;
          if (v244 == v24)
          {
            goto LABEL_343;
          }
        }

        v250 = (v23 + 4 * v244);
        v251 = v24 - v244;
        do
        {
          v252 = v245[1];
          *v245 = *v245 + (*v250 * *v80);
          v253 = *v250++;
          v245[1] = v252 + (v253 * v80[1]);
          v245 += 2;
          --v251;
        }

        while (v251);
      }

LABEL_343:
      v9 = (v9 + 4 * v11);
      v29 = v236 <= 0;
      LODWORD(v236) = v236 - 1;
      if (v29)
      {
        goto LABEL_381;
      }
    }
  }

  v25 = *(a1 + 120);
  if (v25 >= 1)
  {
    v26 = a3 + 4 * (v8 + v11 * (v25 - 1) + v24);
    v28 = v9 < v23 + 4 * v24 && v23 < v26;
    v29 = v9 < (a2 + 1) && v26 > a2;
    if (v29 || v11 < 0)
    {
      v28 = 1;
    }

    v31 = v24 < 8 || v28;
    v32 = a3 + 4 * v8 + 16;
    v33 = 4 * v11;
    do
    {
      if (v24 >= 1)
      {
        if (v31)
        {
          v35 = 0;
        }

        else
        {
          v36 = vld1q_dup_f32(a2);
          v37 = v24 & 0x7FFFFFF8;
          v38 = v32;
          v39 = (v23 + 16);
          do
          {
            v40 = vmlaq_f32(*v38, v36, *v39);
            v38[-1] = vmlaq_f32(v38[-1], v36, v39[-1]);
            *v38 = v40;
            v39 += 2;
            v38 += 2;
            v37 -= 8;
          }

          while (v37);
          v35 = v24 & 0x7FFFFFF8;
          if (v35 == v24)
          {
            goto LABEL_34;
          }
        }

        do
        {
          v9->f32[v35] = v9->f32[v35] + (*(v23 + 4 * v35) * *a2);
          ++v35;
        }

        while (v24 != v35);
      }

LABEL_34:
      v9 = (v9 + v33);
      v32 += v33;
      v34 = __OFSUB__(v25--, 1);
    }

    while (!((v25 < 0) ^ v34 | (v25 == 0)));
  }

  v68 = *(a1 + 112);
  if (v68 > 1)
  {
    v69 = (v68 - 2);
    v70 = &v9->i8[4 * v24 + 4 * v11 * v69];
    v71 = &a2[v69 + 1];
    v73 = v9 < v23 + 4 * v24 && v23 < v70;
    v76 = v9 < v71 && v70 > a2 || v11 < 0 || v73;
    v77 = (v24 < 8) | v76;
    v78 = v9 + 1;
    v79 = 4 * v11;
    v80 = a2;
    while (1)
    {
      if (v24 >= 1)
      {
        if (v77)
        {
          v81 = 0;
        }

        else
        {
          v82 = vld1q_dup_f32(v80);
          v83 = v24 & 0x7FFFFFF8;
          v84 = v78;
          v85 = (v23 + 16);
          do
          {
            v86 = vmlaq_f32(*v84, v82, *v85);
            v84[-1] = vmlaq_f32(v84[-1], v82, v85[-1]);
            *v84 = v86;
            v85 += 2;
            v84 += 2;
            v83 -= 8;
          }

          while (v83);
          v81 = v24 & 0x7FFFFFF8;
          if (v81 == v24)
          {
            goto LABEL_103;
          }
        }

        do
        {
          v9->f32[v81] = v9->f32[v81] + (*(v23 + 4 * v81) * *v80);
          ++v81;
        }

        while (v24 != v81);
      }

LABEL_103:
      ++v80;
      v9 = (v9 + v79);
      v78 = (v78 + v79);
      v29 = v68-- <= 2;
      if (v29)
      {
        goto LABEL_135;
      }
    }
  }

  v80 = a2;
LABEL_135:
  v105 = *(a1 + 124);
  if ((v105 & 0x80000000) == 0)
  {
    v106 = &v9->f32[v24 + v11 * v105];
    v108 = v9 < v23 + 4 * v24 && v23 < v106;
    if (v9 < (v80 + 1) && v80 < v106 || v11 < 0)
    {
      v108 = 1;
    }

    v111 = v24 < 8 || v108;
    v112 = v9 + 1;
    v113 = 4 * v11;
    do
    {
      if (v24 >= 1)
      {
        if (v111)
        {
          v114 = 0;
        }

        else
        {
          v115 = vld1q_dup_f32(v80);
          v116 = v24 & 0x7FFFFFF8;
          v117 = v112;
          v118 = (v23 + 16);
          do
          {
            v119 = vmlaq_f32(*v117, v115, *v118);
            v117[-1] = vmlaq_f32(v117[-1], v115, v118[-1]);
            *v117 = v119;
            v118 += 2;
            v117 += 2;
            v116 -= 8;
          }

          while (v116);
          v114 = v24 & 0x7FFFFFF8;
          if (v114 == v24)
          {
            goto LABEL_152;
          }
        }

        do
        {
          v9->f32[v114] = v9->f32[v114] + (*(v23 + 4 * v114) * *v80);
          ++v114;
        }

        while (v24 != v114);
      }

LABEL_152:
      v9 = (v9 + v113);
      v112 = (v112 + v113);
      v29 = v105 <= 0;
      LODWORD(v105) = v105 - 1;
    }

    while (!v29);
  }

LABEL_381:
  v195 = *(a1 + 184);
  v196 = *(a1 + 192);
  if (v6 != 1)
  {
LABEL_388:
    switch(v6)
    {
      case 4:
        v284 = v196 - 1;
        if (v196 >= 1)
        {
          if (v196 < 4 || ((v317 = &v9[v284 + 1], v9 < &v195->i32[v284 + 1]) ? (v318 = v195 >= v317) : (v318 = 1), v318 ? (v319 = 0) : (v319 = 1), v80 < v317 ? (v320 = v9 >= v80 + 1) : (v320 = 1), !v320 || (v319 & 1) != 0))
          {
            v285 = v195;
            v286 = v9;
          }

          else
          {
            v321 = v196;
            v322 = v196 & 0x7FFFFFFC;
            v285 = &v195->f32[v322];
            v286 = v9[v322].f32;
            LODWORD(v196) = v196 - v322;
            v323 = v322;
            do
            {
              v406 = vld4q_f32(v9->f32);
              v324 = *v195++;
              v406.val[0] = vmlaq_n_f32(v406.val[0], v324, *v80);
              v406.val[1] = vmlaq_n_f32(v406.val[1], v324, v80[1]);
              v406.val[2] = vmlaq_n_f32(v406.val[2], v324, v80[2]);
              v406.val[3] = vmlaq_n_f32(v406.val[3], v324, v80[3]);
              vst4q_f32(v9->f32, v406);
              v9 += 4;
              v323 -= 4;
            }

            while (v323);
            if (v322 == v321)
            {
              goto LABEL_474;
            }
          }

          v287 = v196 + 1;
          do
          {
            v288 = v286[1];
            *v286 = *v286 + (*v80 * *v285);
            v286[1] = v288 + (v80[1] * *v285);
            v289 = v286[3];
            v286[2] = v286[2] + (v80[2] * *v285);
            v290 = *v285++;
            v286[3] = v289 + (v80[3] * v290);
            v286 += 4;
            --v287;
          }

          while (v287 > 1);
          goto LABEL_474;
        }

        break;
      case 3:
        v278 = v196 - 1;
        if (v196 >= 1)
        {
          if (v196 <= 7 || ((v309 = &v9->u64[1] + 12 * v278 + 4, v9 < &v195->i32[v278 + 1]) ? (v310 = v195 >= v309) : (v310 = 1), v310 ? (v311 = 0) : (v311 = 1), v80 < v309 ? (v312 = v9 >= (v80 + 3)) : (v312 = 1), !v312 || (v311 & 1) != 0))
          {
            v279 = v195;
            v280 = v9;
          }

          else
          {
            v313 = v196;
            v314 = v196 & 0x7FFFFFFC;
            v279 = &v195->f32[v314];
            v280 = &v9->f32[3 * v314];
            LODWORD(v196) = v196 - v314;
            v315 = v314;
            do
            {
              v398 = vld3q_f32(v9->f32);
              v316 = *v195++;
              v398.val[0] = vmlaq_n_f32(v398.val[0], v316, *v80);
              v398.val[1] = vmlaq_n_f32(v398.val[1], v316, v80[1]);
              v398.val[2] = vmlaq_n_f32(v398.val[2], v316, v80[2]);
              vst3q_f32(v9->f32, v398);
              v9 += 3;
              v315 -= 4;
            }

            while (v315);
            if (v314 == v313)
            {
              goto LABEL_474;
            }
          }

          v281 = v196 + 1;
          do
          {
            v282 = v280[1];
            *v280 = *v280 + (*v80 * *v279);
            v280[1] = v282 + (v80[1] * *v279);
            v283 = *v279++;
            v280[2] = v280[2] + (v80[2] * v283);
            v280 += 3;
            --v281;
          }

          while (v281 > 1);
          goto LABEL_474;
        }

        break;
      case 2:
        v291 = v196 - 1;
        if (v196 >= 1)
        {
          if (v196 < 8 || ((v325 = &v9->u64[v291 + 1], v9 < &v195->i32[v291 + 1]) ? (v326 = v195 >= v325) : (v326 = 1), v326 ? (v327 = 0) : (v327 = 1), v80 < v325 ? (v328 = v9 >= (v80 + 2)) : (v328 = 1), !v328 || (v327 & 1) != 0))
          {
            v292 = v9;
            v293 = v195;
          }

          else
          {
            v329 = v196;
            v330 = v196 & 0x7FFFFFFC;
            LODWORD(v196) = v196 - v330;
            v292 = &v9->f32[2 * v330];
            v293 = &v195->f32[v330];
            v331 = v330;
            do
            {
              v396 = vld2q_f32(v9->f32);
              v332 = *v195++;
              v396.val[0] = vmlaq_n_f32(v396.val[0], v332, *v80);
              v396.val[1] = vmlaq_n_f32(v396.val[1], v332, v80[1]);
              vst2q_f32(v9->f32, v396);
              v9 += 2;
              v331 -= 4;
            }

            while (v331);
            if (v330 == v329)
            {
              goto LABEL_474;
            }
          }

          v294 = v196 + 1;
          do
          {
            v295 = v292[1];
            *v292 = *v292 + (*v80 * *v293);
            v296 = *v293++;
            v292[1] = v295 + (v80[1] * v296);
            v292 += 2;
            --v294;
          }

          while (v294 > 1);
          goto LABEL_474;
        }

        break;
    }

    v297 = -(*(a1 + 120) * v11);
    v298 = *(a1 + 160);
    v299 = *(a1 + 168);
    goto LABEL_481;
  }

  if (v196 <= 0)
  {
    v297 = -(*(a1 + 120) * v11);
    v298 = *(a1 + 160);
    v299 = *(a1 + 168);
    goto LABEL_475;
  }

  if (v196 < 8)
  {
    v273 = 0;
LABEL_385:
    v274 = &v9->f32[v273];
    v275 = &v195->f32[v273];
    v276 = v196 - v273;
    do
    {
      v277 = *v275++;
      *v274 = *v274 + (*v80 * v277);
      ++v274;
      --v276;
    }

    while (v276);
    goto LABEL_474;
  }

  v273 = 0;
  v300 = (v9 + 4 * v196);
  v302 = v9 < &v195->f32[v196] && v195 < v300;
  if (v80 < v300 && v9 < (v80 + 1))
  {
    goto LABEL_385;
  }

  if (v302)
  {
    goto LABEL_385;
  }

  v273 = v196 & 0x7FFFFFF8;
  v304 = vld1q_dup_f32(v80);
  v305 = v195 + 1;
  v306 = v9 + 1;
  v307 = v273;
  do
  {
    v308 = vmlaq_f32(*v306, *v305, v304);
    v306[-1] = vmlaq_f32(v306[-1], v305[-1], v304);
    *v306 = v308;
    v305 += 2;
    v306 += 2;
    v307 -= 8;
  }

  while (v307);
  if (v273 != v196)
  {
    goto LABEL_385;
  }

LABEL_474:
  v297 = -(*(a1 + 120) * v11);
  v298 = *(a1 + 160);
  v299 = *(a1 + 168);
  if (v6 == 1)
  {
LABEL_475:
    if (v299 < 1)
    {
      return;
    }

    v333 = v299;
    if (v299 >= 0xC)
    {
      v334 = 0;
      v359 = a3 + 4 * v297;
      v360 = v359 + 4 * v333;
      v362 = v359 < v298->u64 + 4 * v333 && v298 < v360;
      if ((v360 <= a2 || v359 >= (a2 + 1)) && !v362)
      {
        v334 = v333 & 0x7FFFFFF8;
        v364 = vld1q_dup_f32(a2);
        v365 = v298 + 1;
        v366 = (v359 + 16);
        v367 = v334;
        do
        {
          v368 = vmlaq_f32(*v366, *v365, v364);
          v366[-1] = vmlaq_f32(v366[-1], v365[-1], v364);
          *v366 = v368;
          v365 += 2;
          v366 += 2;
          v367 -= 8;
        }

        while (v367);
        if (v334 == v333)
        {
          return;
        }
      }
    }

    else
    {
      v334 = 0;
    }

    v335 = (a3 + 4 * v334 + 4 * v297);
    v336 = &v298->f32[v334];
    v337 = v333 - v334;
    do
    {
      v338 = *v336++;
      *v335 = *v335 + (*a2 * v338);
      ++v335;
      --v337;
    }

    while (v337);
    return;
  }

LABEL_481:
  v339 = (a3 + 4 * v297);
  switch(v6)
  {
    case 4:
      v346 = v299 - 1;
      if (v299 < 1)
      {
        return;
      }

      if (v299 < 4 || ((v377 = a3 + 16 * v346 + 4 * v297 + 16, v339 < &v298->f32[v346 + 1]) ? (v378 = v298 >= v377) : (v378 = 1), v378 ? (v379 = 0) : (v379 = 1), v377 > a2 ? (v380 = v339 >= a2 + 4) : (v380 = 1), !v380 || (v379 & 1) != 0))
      {
        v347 = v298;
        v348 = v339;
      }

      else
      {
        v381 = v299;
        v382 = v299 & 0x7FFFFFFC;
        v347 = &v298->f32[v382];
        v348 = &v339[4 * v382];
        v299 -= v382;
        v383 = v382;
        do
        {
          v407 = vld4q_f32(v339);
          v384 = *v298++;
          v407.val[0] = vmlaq_n_f32(v407.val[0], v384, *a2);
          v407.val[1] = vmlaq_n_f32(v407.val[1], v384, a2[1]);
          v407.val[2] = vmlaq_n_f32(v407.val[2], v384, a2[2]);
          v407.val[3] = vmlaq_n_f32(v407.val[3], v384, a2[3]);
          vst4q_f32(v339, v407);
          v339 += 16;
          v383 -= 4;
        }

        while (v383);
        if (v382 == v381)
        {
          return;
        }
      }

      v349 = v299 + 1;
      do
      {
        v350 = v348[1];
        *v348 = *v348 + (*a2 * *v347);
        v348[1] = v350 + (a2[1] * *v347);
        v351 = v348[3];
        v348[2] = v348[2] + (a2[2] * *v347);
        v352 = *v347++;
        v348[3] = v351 + (a2[3] * v352);
        v348 += 4;
        --v349;
      }

      while (v349 > 1);
      return;
    case 3:
      v340 = v299 - 1;
      if (v299 < 1)
      {
        return;
      }

      if (v299 <= 7 || ((v369 = a3 + 12 * v340 + 4 * v297 + 12, v339 < &v298->f32[v340 + 1]) ? (v370 = v298 >= v369) : (v370 = 1), v370 ? (v371 = 0) : (v371 = 1), v369 > a2 ? (v372 = v339 >= a2 + 3) : (v372 = 1), !v372 || (v371 & 1) != 0))
      {
        v341 = v298;
        v342 = v339;
      }

      else
      {
        v373 = v299;
        v374 = v299 & 0x7FFFFFFC;
        v341 = &v298->f32[v374];
        v342 = &v339[3 * v374];
        v299 -= v374;
        v375 = v374;
        do
        {
          v399 = vld3q_f32(v339);
          v376 = *v298++;
          v399.val[0] = vmlaq_n_f32(v399.val[0], v376, *a2);
          v399.val[1] = vmlaq_n_f32(v399.val[1], v376, a2[1]);
          v399.val[2] = vmlaq_n_f32(v399.val[2], v376, a2[2]);
          vst3q_f32(v339, v399);
          v339 += 12;
          v375 -= 4;
        }

        while (v375);
        if (v374 == v373)
        {
          return;
        }
      }

      v343 = v299 + 1;
      do
      {
        v344 = v342[1];
        *v342 = *v342 + (*a2 * *v341);
        v342[1] = v344 + (a2[1] * *v341);
        v345 = *v341++;
        v342[2] = v342[2] + (a2[2] * v345);
        v342 += 3;
        --v343;
      }

      while (v343 > 1);
      return;
    case 2:
      v353 = v299 - 1;
      if (v299 >= 1)
      {
        if (v299 < 8 || ((v385 = a3 + 8 * v353 + 4 * v297 + 8, v339 < &v298->f32[v353 + 1]) ? (v386 = v298 >= v385) : (v386 = 1), v386 ? (v387 = 0) : (v387 = 1), v385 > a2 ? (v388 = v339 >= a2 + 2) : (v388 = 1), !v388 || (v387 & 1) != 0))
        {
          v354 = v339;
          v355 = v298;
        }

        else
        {
          v389 = v299;
          v390 = v299 & 0x7FFFFFFC;
          v299 -= v390;
          v354 = &v339[2 * v390];
          v355 = &v298->f32[v390];
          v391 = v390;
          do
          {
            v397 = vld2q_f32(v339);
            v392 = *v298++;
            v397.val[0] = vmlaq_n_f32(v397.val[0], v392, *a2);
            v397.val[1] = vmlaq_n_f32(v397.val[1], v392, a2[1]);
            vst2q_f32(v339, v397);
            v339 += 8;
            v391 -= 4;
          }

          while (v391);
          if (v390 == v389)
          {
            return;
          }
        }

        v356 = v299 + 1;
        do
        {
          v357 = v354[1];
          *v354 = *v354 + (*a2 * *v355);
          v358 = *v355++;
          v354[1] = v357 + (a2[1] * v358);
          v354 += 2;
          --v356;
        }

        while (v356 > 1);
      }

      break;
  }
}

unint64_t avir::CImageResizerFilterStepINL<float,float>::doResize2(unint64_t result, uint64_t a2, float32x2_t *a3, int a4, float32x2_t *a5, double a6, double a7, double a8)
{
  v8 = **(result + 104);
  v9 = *(result + 216);
  v10 = *(*(result + 208) + 8);
  v11 = *(result + 132);
  v12 = v10 + 32 * v11;
  if (*(v9 + 28) == 1)
  {
    v13 = *(v9 + 40);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        if (v11 >= 1)
        {
          do
          {
            v104 = *(v10 + 24);
            v105 = *a5;
            v106 = a5[1].f32[0];
            if (v104 >= 1)
            {
              v107 = 0;
              v108 = (a2 + 4 * *(v10 + 20));
              do
              {
                v109 = *(*(v10 + 8) + 4 * v107) + (*(*(v10 + 8) + 4 * v13 + 4 * v107) * *(v10 + 16));
                v105 = vmla_n_f32(v105, *v108, v109);
                v106 = v106 + (v109 * v108[1].f32[0]);
                v108 += 3;
                v107 += 2;
              }

              while (v107 < v104);
            }

            *a3 = v105;
            a3[1].f32[0] = v106;
            a3 = (a3 + 4 * a4);
            v10 += 32;
          }

          while (v10 < v12);
        }
      }

      else if (v8 == 4 && v11 >= 1)
      {
        do
        {
          v52 = *(v10 + 24);
          v53 = *a5->f32;
          if (v52 >= 1)
          {
            for (i = 0; i < v52; i += 2)
            {
              v53 = vmlaq_n_f32(v53, *(a2 + 4 * *(v10 + 20) + 16 * i), *(*(v10 + 8) + 4 * i) + (*(*(v10 + 8) + 4 * v13 + 4 * i) * *(v10 + 16)));
            }
          }

          *a3->f32 = v53;
          a3 = (a3 + 4 * a4);
          v10 += 32;
        }

        while (v10 < v12);
      }
    }

    else if (v8 == 1)
    {
      if (v11 >= 1)
      {
        v59 = a4;
        do
        {
          v60 = *(v10 + 24);
          v61 = a5->f32[0];
          if (v60 >= 1)
          {
            LODWORD(a7) = *(v10 + 16);
            v62 = *(v10 + 8);
            v63 = *(v10 + 20);
            if (v60 >= 0x11)
            {
              v65 = ((v60 - 1) >> 1) + 1;
              v66 = v65 & 7;
              if ((v65 & 7) == 0)
              {
                v66 = 8;
              }

              v67 = v65 - v66;
              v64 = 2 * v67;
              v68 = vdupq_lane_s32(*&a7, 0);
              v69 = (a2 + 32 + 4 * v63);
              v70 = (v62 + 32);
              v71 = (v62 + 4 * v13);
              do
              {
                v72 = v70 - 8;
                v73 = vld2q_f32(v72);
                v74 = vld2q_f32(v70);
                v75 = v71;
                v76 = vld2q_f32(v75);
                v75 += 8;
                v77 = vld2q_f32(v75);
                v78 = vmlaq_f32(v73, v68, v76);
                v79 = vmlaq_f32(v74, v68, v77);
                v80 = v69 - 8;
                v81 = vld2q_f32(v80);
                v82 = vld2q_f32(v69);
                v83 = vmulq_f32(v78, v81);
                v84 = vmulq_f32(v79, v82);
                v61 = (((((((v61 + v83.f32[0]) + v83.f32[1]) + v83.f32[2]) + v83.f32[3]) + v84.f32[0]) + v84.f32[1]) + v84.f32[2]) + v84.f32[3];
                v71 += 16;
                v69 += 16;
                v70 += 16;
                v67 -= 8;
              }

              while (v67);
            }

            else
            {
              v64 = 0;
            }

            result = a2 + 4 * v63;
            do
            {
              v61 = v61 + ((*(v62 + 4 * v64) + (*(v62 + 4 * v13 + 4 * v64) * *&a7)) * *(result + 4 * v64));
              v64 += 2;
            }

            while (v64 < v60);
          }

          a3->f32[0] = v61;
          a3 = (a3 + 4 * v59);
          v10 += 32;
        }

        while (v10 < v12);
      }
    }

    else if (v8 == 2 && v11 >= 1)
    {
      v15 = a4;
      do
      {
        v17 = *(v10 + 24);
        v18 = a5->f32[0];
        v19 = a5->f32[1];
        if (v17 >= 1)
        {
          LODWORD(a8) = *(v10 + 16);
          v20 = *(v10 + 8);
          v21 = *(v10 + 20);
          v22 = (a2 + 4 * v21);
          if (v17 >= 0x11)
          {
            v23 = ((v17 - 1) >> 1) + 1;
            v24 = v23 & 7;
            if ((v23 & 7) == 0)
            {
              v24 = 8;
            }

            v25 = v23 - v24;
            result = 2 * v25;
            v22 += 4 * v25;
            v26 = vdupq_lane_s32(*&a8, 0);
            v27 = (a2 + 64 + 4 * v21);
            v28 = (v20 + 32);
            do
            {
              v29 = v28 - 8;
              v30 = vld2q_f32(v29);
              v31 = v28;
              v33 = vld2q_f32(v31);
              v16 = v13;
              v32 = &v31[v16];
              v34 = v32 - 8;
              v35 = vld2q_f32(v34);
              v36 = v27 - 16;
              v37 = vld2q_f32(v32);
              v38 = vmlaq_f32(v30, v26, v35);
              v116 = vld4q_f32(v36);
              v117 = vld4q_f32(v27);
              v39 = vmlaq_f32(v33, v26, v37);
              v40 = vmulq_f32(v38, v116.val[0]);
              v41 = vmulq_f32(v39, v117.val[0]);
              v42 = vmulq_f32(v38, v116.val[1]);
              v43 = vmulq_f32(v39, v117.val[1]);
              v19 = (((((((v19 + v42.f32[0]) + v42.f32[1]) + v42.f32[2]) + v42.f32[3]) + v43.f32[0]) + v43.f32[1]) + v43.f32[2]) + v43.f32[3];
              v18 = (((((((v18 + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3]) + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3];
              v27 += 32;
              v28 += 16;
              v25 -= 8;
            }

            while (v25);
          }

          else
          {
            result = 0;
          }

          do
          {
            v44 = *(v20 + 4 * result) + (*(v20 + 4 * v13 + 4 * result) * *&a8);
            v45 = *v22;
            v46 = v22[1];
            v22 += 4;
            v18 = v18 + (v44 * v45);
            v19 = v19 + (v44 * v46);
            result += 2;
          }

          while (result < v17);
        }

        a3->f32[0] = v18;
        a3->f32[1] = v19;
        a3 = (a3 + 4 * v15);
        v10 += 32;
      }

      while (v10 < v12);
    }
  }

  else if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (v11 >= 1)
      {
        do
        {
          v110 = *(v10 + 24);
          v111 = *a5;
          v112 = a5[1].f32[0];
          if (v110 >= 1)
          {
            v113 = 0;
            v114 = (a2 + 4 * *(v10 + 20));
            do
            {
              v115 = *(*(v10 + 8) + 4 * v113);
              v111 = vmla_n_f32(v111, *v114, v115);
              v112 = v112 + (v115 * v114[1].f32[0]);
              v114 += 3;
              v113 += 2;
            }

            while (v113 < v110);
          }

          *a3 = v111;
          a3[1].f32[0] = v112;
          a3 = (a3 + 4 * a4);
          v10 += 32;
        }

        while (v10 < v12);
      }
    }

    else if (v8 == 4 && v11 >= 1)
    {
      do
      {
        v56 = *(v10 + 24);
        v57 = *a5->f32;
        if (v56 >= 1)
        {
          for (j = 0; j < v56; j += 2)
          {
            v57 = vmlaq_n_f32(v57, *(a2 + 4 * *(v10 + 20) + 16 * j), *(*(v10 + 8) + 4 * j));
          }
        }

        *a3->f32 = v57;
        a3 = (a3 + 4 * a4);
        v10 += 32;
      }

      while (v10 < v12);
    }
  }

  else if (v8 == 1)
  {
    if (v11 >= 1)
    {
      v85 = a4;
      do
      {
        v86 = *(v10 + 24);
        v87 = a5->f32[0];
        if (v86 >= 1)
        {
          v88 = *(v10 + 8);
          v89 = *(v10 + 20);
          if (v86 >= 0x11)
          {
            v91 = ((v86 - 1) >> 1) + 1;
            v92 = v91 & 7;
            if ((v91 & 7) == 0)
            {
              v92 = 8;
            }

            v93 = v91 - v92;
            v90 = 2 * v93;
            result = v88 + 32;
            v94 = (a2 + 32 + 4 * v89);
            do
            {
              v95 = (result - 32);
              v96 = vld2q_f32(v95);
              v97 = vld2q_f32(result);
              v98 = v94 - 8;
              v99 = vld2q_f32(v98);
              v100 = vld2q_f32(v94);
              v101 = vmulq_f32(v96, v99);
              v102 = vmulq_f32(v97, v100);
              v87 = (((((((v87 + v101.f32[0]) + v101.f32[1]) + v101.f32[2]) + v101.f32[3]) + v102.f32[0]) + v102.f32[1]) + v102.f32[2]) + v102.f32[3];
              result += 64;
              v94 += 16;
              v93 -= 8;
            }

            while (v93);
          }

          else
          {
            v90 = 0;
          }

          v103 = a2 + 4 * v89;
          do
          {
            v87 = v87 + (*(v88 + 4 * v90) * *(v103 + 4 * v90));
            v90 += 2;
          }

          while (v90 < v86);
        }

        a3->f32[0] = v87;
        a3 = (a3 + 4 * v85);
        v10 += 32;
      }

      while (v10 < v12);
    }
  }

  else if (v8 == 2 && v11 >= 1)
  {
    do
    {
      v48 = *(v10 + 24);
      v49 = *a5;
      if (v48 >= 1)
      {
        for (k = 0; k < v48; k += 2)
        {
          v49 = vmla_n_f32(v49, *(a2 + 4 * *(v10 + 20) + 8 * k), *(*(v10 + 8) + 4 * k));
        }
      }

      *a3 = v49;
      a3 = (a3 + 4 * a4);
      v10 += 32;
    }

    while (v10 < v12);
  }

  return result;
}

uint64_t avir::CImageResizerFilterStepINL<float,float>::doResize(uint64_t result, uint64_t a2, float32x2_t *a3, int a4, float32x2_t *a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = *(result + 216);
  v11 = *(v10 + 40);
  v12 = v11;
  v13 = **(result + 104);
  v14 = *(*(result + 208) + 8);
  v15 = *(result + 132);
  v16 = v14 + 32 * v15;
  if (*(v10 + 28) != 1)
  {
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        if (v15 >= 1)
        {
          if (v11 <= 0)
          {
            v149 = a3 + 1;
            do
            {
              v150 = a5[1].i32[0];
              v149[-1] = *a5;
              v149->i32[0] = v150;
              v14 += 32;
              v149 = (v149 + 4 * a4);
            }

            while (v14 < v16);
          }

          else
          {
            do
            {
              v141 = *(v14 + 8);
              v142 = (a2 + 4 * *(v14 + 20));
              v143 = *a5;
              v144 = a5[1].f32[0];
              v145 = v11;
              do
              {
                v146 = *v141++;
                v143 = vmla_n_f32(v143, *v142, v146);
                v144 = v144 + (v146 * v142[1].f32[0]);
                v142 = (v142 + 12);
                --v145;
              }

              while (v145);
              *a3 = v143;
              a3[1].f32[0] = v144;
              a3 = (a3 + 4 * a4);
              v14 += 32;
            }

            while (v14 < v16);
          }
        }
      }

      else if (v13 == 4 && v15 >= 1)
      {
        do
        {
          v86 = *a5->f32;
          if (v11 >= 1)
          {
            v87 = *(v14 + 8);
            v88 = (a2 + 4 * *(v14 + 20));
            v89 = v11;
            do
            {
              v90 = *v87++;
              v91 = v90;
              v92 = *v88++;
              v86 = vmlaq_n_f32(v86, v92, v91);
              --v89;
            }

            while (v89);
          }

          *a3->f32 = v86;
          a3 = (a3 + 4 * a4);
          v14 += 32;
        }

        while (v14 < v16);
      }

      return result;
    }

    if (v13 != 1)
    {
      if (v13 != 2 || v15 < 1)
      {
        return result;
      }

      v42 = a4;
      if (v12 <= 0)
      {
        do
        {
          *a3 = *a5;
          v14 += 32;
          a3 = (a3 + 4 * a4);
        }

        while (v14 < v16);
        return result;
      }

      while (1)
      {
        v43 = *(v14 + 8);
        v44 = *(v14 + 20);
        v45 = (a2 + 4 * v44);
        v46 = a5->f32[0];
        v47 = a5->f32[1];
        if (v12 >= 8)
        {
          v45 += 2 * (v12 & 0x7FFFFFF8);
          v49 = v43 + 1;
          result = v12 & 0x7FFFFFF8;
          v50 = (a2 + 32 + 4 * v44);
          do
          {
            v51 = v50 - 8;
            v151 = vld2q_f32(v51);
            v152 = vld2q_f32(v50);
            v52 = v49[-1];
            v53 = vmulq_f32(v52, v151.val[0]);
            v54 = vmulq_f32(*v49, v152.val[0]);
            v151.val[0] = vmulq_f32(v52, v151.val[1]);
            v152.val[0] = vmulq_f32(*v49, v152.val[1]);
            v47 = (((((((v47 + v151.val[0].f32[0]) + v151.val[0].f32[1]) + v151.val[0].f32[2]) + v151.val[0].f32[3]) + v152.val[0].f32[0]) + v152.val[0].f32[1]) + v152.val[0].f32[2]) + v152.val[0].f32[3];
            v46 = (((((((v46 + v53.f32[0]) + v53.f32[1]) + v53.f32[2]) + v53.f32[3]) + v54.f32[0]) + v54.f32[1]) + v54.f32[2]) + v54.f32[3];
            v50 += 16;
            v49 += 2;
            result -= 8;
          }

          while (result);
          v48 = v12 & 0x7FFFFFF8;
          if (v48 == v12)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v48 = 0;
        }

        v55 = &v43->f32[v48];
        v56 = v12 - v48;
        do
        {
          v57 = *v55++;
          v58 = *v45;
          v59 = v45[1];
          v45 += 2;
          v46 = v46 + (v57 * v58);
          v47 = v47 + (v57 * v59);
          --v56;
        }

        while (v56);
LABEL_27:
        a3->f32[0] = v46;
        a3->f32[1] = v47;
        a3 = (a3 + 4 * v42);
        v14 += 32;
        if (v14 >= v16)
        {
          return result;
        }
      }
    }

    if (v15 < 1)
    {
      return result;
    }

    if (v11 <= 0)
    {
      v148 = a5->i32[0];
      do
      {
        a3->i32[0] = v148;
        v14 += 32;
        a3 = (a3 + 4 * a4);
      }

      while (v14 < v16);
      return result;
    }

    while (1)
    {
      v106 = *(v14 + 8);
      v107 = *(v14 + 20);
      v108 = a5->f32[0];
      if (v11 >= 8)
      {
        v110 = v106 + 1;
        v111 = (a2 + 16 + 4 * v107);
        result = v11 & 0x7FFFFFF8;
        do
        {
          v112 = vmulq_f32(v110[-1], v111[-1]);
          v113 = vmulq_f32(*v110, *v111);
          v108 = (((((((v108 + v112.f32[0]) + v112.f32[1]) + v112.f32[2]) + v112.f32[3]) + v113.f32[0]) + v113.f32[1]) + v113.f32[2]) + v113.f32[3];
          v110 += 2;
          v111 += 2;
          result -= 8;
        }

        while (result);
        v109 = v11 & 0x7FFFFFF8;
        if (v109 == v11)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v109 = 0;
      }

      v114 = &v106->f32[v109];
      v115 = (a2 + 4 * v109 + 4 * v107);
      v116 = v11 - v109;
      do
      {
        v117 = *v114++;
        v118 = v117;
        v119 = *v115++;
        v108 = v108 + (v118 * v119);
        --v116;
      }

      while (v116);
LABEL_78:
      a3->f32[0] = v108;
      a3 = (a3 + 4 * a4);
      v14 += 32;
      if (v14 >= v16)
      {
        return result;
      }
    }
  }

  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4 || v15 < 1)
      {
        return result;
      }

      v61 = a4;
      while (1)
      {
        v63 = a5->f32[0];
        v62 = a5->f32[1];
        v65 = a5[1].f32[0];
        v64 = a5[1].f32[1];
        if (v11 >= 1)
        {
          LODWORD(a10) = *(v14 + 16);
          v66 = *(v14 + 8);
          v67 = *(v14 + 20);
          result = a2 + 4 * v67;
          if (v11 >= 8)
          {
            result += 16 * (v11 & 0x7FFFFFF8);
            v69 = vdupq_lane_s32(*&a10, 0);
            v70 = (v66 + 4 * v11 + 16);
            v71 = v66 + 1;
            v72 = v11 & 0x7FFFFFF8;
            v73 = (a2 + 64 + 4 * v67);
            do
            {
              v74 = v73 - 16;
              v157 = vld4q_f32(v74);
              v158 = vld4q_f32(v73);
              v75 = vmlaq_f32(v71[-1], v69, v70[-1]);
              v76 = vmulq_f32(v75, v157.val[0]);
              v77 = vmulq_f32(v75, v157.val[1]);
              v78 = vmulq_f32(v75, v157.val[2]);
              v79 = vmulq_f32(v75, v157.val[3]);
              v80 = vmlaq_f32(*v71, v69, *v70);
              v157.val[0] = vmulq_f32(v80, v158.val[0]);
              v157.val[1] = vmulq_f32(v80, v158.val[1]);
              v157.val[2] = vmulq_f32(v80, v158.val[2]);
              v81 = vmulq_f32(v80, v158.val[3]);
              v63 = (((((((v63 + v76.f32[0]) + v76.f32[1]) + v76.f32[2]) + v76.f32[3]) + v157.val[0].f32[0]) + v157.val[0].f32[1]) + v157.val[0].f32[2]) + v157.val[0].f32[3];
              v62 = (((((((v62 + v77.f32[0]) + v77.f32[1]) + v77.f32[2]) + v77.f32[3]) + v157.val[1].f32[0]) + v157.val[1].f32[1]) + v157.val[1].f32[2]) + v157.val[1].f32[3];
              v65 = (((((((v65 + v78.f32[0]) + v78.f32[1]) + v78.f32[2]) + v78.f32[3]) + v157.val[2].f32[0]) + v157.val[2].f32[1]) + v157.val[2].f32[2]) + v157.val[2].f32[3];
              v64 = (((((((v64 + v79.f32[0]) + v79.f32[1]) + v79.f32[2]) + v79.f32[3]) + v81.f32[0]) + v81.f32[1]) + v81.f32[2]) + v81.f32[3];
              v73 += 32;
              v70 += 2;
              v71 += 2;
              v72 -= 8;
            }

            while (v72);
            v68 = v11 & 0x7FFFFFF8;
            if (v68 == v11)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v68 = 0;
          }

          v82 = &v66->f32[v68];
          v83 = v11 - v68;
          do
          {
            v84 = *v82 + (v82[v11] * *&a10);
            v63 = v63 + (v84 * *result);
            v62 = v62 + (v84 * *(result + 4));
            v65 = v65 + (v84 * *(result + 8));
            v64 = v64 + (v84 * *(result + 12));
            result += 16;
            ++v82;
            --v83;
          }

          while (v83);
        }

LABEL_42:
        a3->f32[0] = v63;
        a3->f32[1] = v62;
        a3[1].f32[0] = v65;
        a3[1].f32[1] = v64;
        a3 = (a3 + 4 * v61);
        v14 += 32;
        if (v14 >= v16)
        {
          return result;
        }
      }
    }

    if (v15 < 1)
    {
      return result;
    }

    v120 = a4;
    while (1)
    {
      v122 = a5->f32[0];
      v121 = a5->f32[1];
      v123 = a5[1].f32[0];
      if (v11 >= 1)
      {
        LODWORD(a9) = *(v14 + 16);
        v124 = *(v14 + 8);
        result = a2 + 4 * *(v14 + 20);
        if (v11 >= 8)
        {
          v126 = (result + 12 * (v11 & 0x7FFFFFF8));
          v127 = vdupq_lane_s32(*&a9, 0);
          v128 = v124 + 1;
          v129 = v11 & 0x7FFFFFF8;
          do
          {
            v130 = result;
            v155 = vld3q_f32(v130);
            v130 += 12;
            v156 = vld3q_f32(v130);
            v131 = vmlaq_f32(v128[-1], v127, *(v128 + 4 * v11 - 16));
            v132 = vmlaq_f32(*v128, v127, *(v128 + 4 * v11));
            v133 = vmulq_f32(v131, v155.val[0]);
            v134 = vmulq_f32(v132, v156.val[0]);
            v135 = vmulq_f32(v131, v155.val[1]);
            v136 = vmulq_f32(v132, v156.val[1]);
            v137 = vmulq_f32(v131, v155.val[2]);
            v138 = vmulq_f32(v132, v156.val[2]);
            v122 = (((((((v122 + v133.f32[0]) + v133.f32[1]) + v133.f32[2]) + v133.f32[3]) + v134.f32[0]) + v134.f32[1]) + v134.f32[2]) + v134.f32[3];
            v123 = (((((((v123 + v137.f32[0]) + v137.f32[1]) + v137.f32[2]) + v137.f32[3]) + v138.f32[0]) + v138.f32[1]) + v138.f32[2]) + v138.f32[3];
            v121 = (((((((v121 + v135.f32[0]) + v135.f32[1]) + v135.f32[2]) + v135.f32[3]) + v136.f32[0]) + v136.f32[1]) + v136.f32[2]) + v136.f32[3];
            result += 96;
            v128 += 2;
            v129 -= 8;
          }

          while (v129);
          v125 = v11 & 0x7FFFFFF8;
          if (v125 == v11)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v125 = 0;
          v126 = (a2 + 4 * *(v14 + 20));
        }

        v139 = &v124->f32[v125];
        result = v11 - v125;
        do
        {
          v140 = *v139 + (v139[v11] * *&a9);
          v122 = v122 + (v140 * *v126);
          v121 = v121 + (v140 * v126[1]);
          v123 = v123 + (v140 * v126[2]);
          v126 += 3;
          ++v139;
          --result;
        }

        while (result);
      }

LABEL_89:
      a3->f32[0] = v122;
      a3->f32[1] = v121;
      a3[1].f32[0] = v123;
      a3 = (a3 + 4 * v120);
      v14 += 32;
      if (v14 >= v16)
      {
        return result;
      }
    }
  }

  if (v13 == 1)
  {
    if (v15 < 1)
    {
      return result;
    }

    v93 = a4;
    if (v11 <= 0)
    {
      v147 = a5->i32[0];
      do
      {
        a3->i32[0] = v147;
        v14 += 32;
        a3 = (a3 + 4 * a4);
      }

      while (v14 < v16);
      return result;
    }

    while (1)
    {
      LODWORD(a6) = *(v14 + 16);
      v94 = *(v14 + 8);
      v95 = *(v14 + 20);
      v96 = a5->f32[0];
      if (v11 >= 8)
      {
        v97 = vdupq_lane_s32(*&a6, 0);
        v98 = v94 + 1;
        v99 = (a2 + 16 + 4 * v95);
        v100 = v11 & 0x7FFFFFF8;
        do
        {
          v101 = vmulq_f32(vmlaq_f32(v98[-1], v97, *(v98 + 4 * v11 - 16)), v99[-1]);
          v102 = vmulq_f32(vmlaq_f32(*v98, v97, *(v98 + 4 * v11)), *v99);
          v96 = (((((((v96 + v101.f32[0]) + v101.f32[1]) + v101.f32[2]) + v101.f32[3]) + v102.f32[0]) + v102.f32[1]) + v102.f32[2]) + v102.f32[3];
          v98 += 2;
          v99 += 2;
          v100 -= 8;
        }

        while (v100);
        result = v11 & 0x7FFFFFF8;
        if (result == v11)
        {
          goto LABEL_66;
        }
      }

      else
      {
        result = 0;
      }

      v103 = &v94->f32[result];
      v104 = (a2 + 4 * result + 4 * v95);
      result = v11 - result;
      do
      {
        v105 = *v104++;
        v96 = v96 + ((*v103 + (v103[v11] * *&a6)) * v105);
        ++v103;
        --result;
      }

      while (result);
LABEL_66:
      a3->f32[0] = v96;
      a3 = (a3 + 4 * v93);
      v14 += 32;
      if (v14 >= v16)
      {
        return result;
      }
    }
  }

  if (v13 == 2 && v15 >= 1)
  {
    v18 = a4;
    do
    {
      v19 = a5->f32[0];
      v20 = a5->f32[1];
      if (v11 >= 1)
      {
        LODWORD(a8) = *(v14 + 16);
        v21 = *(v14 + 8);
        v22 = *(v14 + 20);
        result = a2 + 4 * v22;
        if (v11 >= 8)
        {
          result += 8 * (v11 & 0x7FFFFFF8);
          v24 = vdupq_lane_s32(*&a8, 0);
          v25 = (v21 + 4 * v11 + 16);
          v26 = v21 + 1;
          v27 = v11 & 0x7FFFFFF8;
          v28 = (a2 + 32 + 4 * v22);
          do
          {
            v29 = v28 - 8;
            v154 = vld2q_f32(v29);
            v30 = vmlaq_f32(v26[-1], v24, v25[-1]);
            v31 = vmlaq_f32(*v26, v24, *v25);
            v153 = vld2q_f32(v28);
            v32 = vmulq_f32(v30, v154.val[0]);
            v33 = vmulq_f32(v31, v153.val[0]);
            v34 = vmulq_f32(v30, v154.val[1]);
            v35 = vmulq_f32(v31, v153.val[1]);
            v20 = (((((((v20 + v34.f32[0]) + v34.f32[1]) + v34.f32[2]) + v34.f32[3]) + v35.f32[0]) + v35.f32[1]) + v35.f32[2]) + v35.f32[3];
            v19 = (((((((v19 + v32.f32[0]) + v32.f32[1]) + v32.f32[2]) + v32.f32[3]) + v33.f32[0]) + v33.f32[1]) + v33.f32[2]) + v33.f32[3];
            v28 += 16;
            v25 += 2;
            v26 += 2;
            v27 -= 8;
          }

          while (v27);
          v23 = v11 & 0x7FFFFFF8;
          if (v23 == v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v23 = 0;
        }

        v36 = &v21->f32[v23];
        v37 = v11 - v23;
        do
        {
          v38 = *v36 + (v36[v11] * *&a8);
          v39 = *result;
          v40 = *(result + 4);
          result += 8;
          v19 = v19 + (v38 * v39);
          v20 = v20 + (v38 * v40);
          ++v36;
          --v37;
        }

        while (v37);
      }

LABEL_9:
      a3->f32[0] = v19;
      a3->f32[1] = v20;
      a3 = (a3 + 4 * v18);
      v14 += 32;
    }

    while (v14 < v16);
  }

  return result;
}

uint64_t apple3dgs::TVData::TVData(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v30[19] = *MEMORY[0x277D85DE8];
  *(a1 + 61) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v10;
  }

  if (a5)
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "TV parser: reading TV file ", 27);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 1);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v28);
    std::ostream::put();
    std::ostream::flush();
  }

  std::ifstream::basic_ifstream(&v28, a2);
  if ((v29[*(v28.__locale_ - 3) + 16] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x24C1A1B50](exception, v27);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  apple3dgs::TVData::ParseTv(a1, &v28, a3, a5);
  if ((*(a1 + 61) & 1) == 0)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x24C1A1B50](v26, v27);
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a5)
  {
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Finished parsing TV file", 24);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(v27, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(v27);
    std::ostream::put();
    std::ostream::flush();
    v28.__locale_ = *MEMORY[0x277D82808];
    *(&v28 + *(v28.__locale_ - 3)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x24C1A1C20](v29);
    std::istream::~istream();
    MEMORY[0x24C1A1F80](v30);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "loading frame ", 14);
    v20 = MEMORY[0x24C1A1D90](v19, a4);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "...", 3);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v28);
    std::ostream::put();
    std::ostream::flush();
  }

  else
  {
    v28.__locale_ = *MEMORY[0x277D82808];
    *(&v28 + *(v28.__locale_ - 3)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x24C1A1C20](v29);
    std::istream::~istream();
    MEMORY[0x24C1A1F80](v30);
  }

  v23 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24743FE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  v17 = *(v15 + 24);
  if (v17)
  {
    *(v15 + 32) = v17;
    operator delete(v17);
    v18 = *v15;
    if (*v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *v15;
    if (*v15)
    {
LABEL_3:
      *(v15 + 8) = v18;
      operator delete(v18);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::TVData::ParseTv(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  std::istream::seekg();
  std::istream::tellg();
  result = std::istream::seekg();
  if (v17 > 7)
  {
    result = std::istream::read();
    if (v13 == 39271)
    {
      result = std::istream::tellg();
      if (v17 >= v17 + v14)
      {
        v15[0].__locale_ = 0;
        v15[1].__locale_ = 0;
        v16 = 0;
        operator new();
      }

      if (a4)
      {
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "EOF encountered in TV JSON", 26);
        std::ios_base::getloc((v7 + *(*v7 - 24)));
        v8 = std::locale::use_facet(v15, MEMORY[0x277D82680]);
        (v8->__vftable[2].~facet_0)(v8, 10);
        std::locale::~locale(v15);
        std::ostream::put();
        result = std::ostream::flush();
      }
    }

    else if (a4)
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Incorrect magic string (not a TV file)", 38);
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v10 = std::locale::use_facet(v15, MEMORY[0x277D82680]);
      (v10->__vftable[2].~facet_0)(v10, 10);
      std::locale::~locale(v15);
      std::ostream::put();
      result = std::ostream::flush();
    }
  }

  else if (a4)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Not enough bytes in header", 26);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(v15, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(v15);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247440D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(&a36);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(&a40);
  _Unwind_Resume(a1);
}

uint64_t apple3dgs::TVData::TVData(uint64_t result, __int128 *a2, int a3, int a4)
{
  v4 = result;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 52) = a4;
  *(result + 61) = 1;
  *(result + 72) = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((result + 80), *a2, *(a2 + 1));
    return v4;
  }

  else
  {
    v5 = *a2;
    *(result + 96) = *(a2 + 2);
    *(result + 80) = v5;
  }

  return result;
}

{
  v4 = result;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 52) = a4;
  *(result + 61) = 1;
  *(result + 72) = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((result + 80), *a2, *(a2 + 1));
    return v4;
  }

  else
  {
    v5 = *a2;
    *(result + 96) = *(a2 + 2);
    *(result + 80) = v5;
  }

  return result;
}

void sub_247440F54(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  apple3dgs::TVData::TVData(v1);
  _Unwind_Resume(a1);
}

void sub_247440FF0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  apple3dgs::TVData::TVData(v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::parse<std::vector<char> &>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *(a5 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a2 + 24);
  if (!v10)
  {
    goto LABEL_4;
  }

  if (v10 != a2)
  {
    v10 = (*(*v10 + 16))(v10);
LABEL_4:
    v14 = v10;
    goto LABEL_6;
  }

  v14 = v13;
  (*(*v10 + 24))(v10, v13);
LABEL_6:
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::parser<nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>(v8, v9, v13, a3, a4, v15);
  nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parse(v15, 1, a5);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v16 != v15)
  {
    if (v16)
    {
      (*(*v16 + 40))();
    }

    result = v14;
    if (v14 != v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = (*(*result + 32))(result);
    goto LABEL_18;
  }

  (*(*v16 + 32))(v16);
  result = v14;
  if (v14 == v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247441224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~parser(va1);
  std::function<BOOL ()(int,nlohmann::json_abi_v3_11_2::detail::parse_event_t,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> &)>::~function(va);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(v2);
  _Unwind_Resume(a1);
}

void sub_247441248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(int,nlohmann::json_abi_v3_11_2::detail::parse_event_t,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> &)>::~function(va);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(v2);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(int,nlohmann::json_abi_v3_11_2::detail::parse_event_t,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> &)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

_BYTE *nlohmann::json_abi_v3_11_2::detail::iter_impl<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::operator*(uint64_t *a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (a1[1] + 56);
  }

  if (v3 == 2)
  {
    return a1[2];
  }

  if (!*result)
  {
    v7 = a1;
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v10, "cannot get value");
    v9 = *v7;
    nlohmann::json_abi_v3_11_2::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(214, v10, exception);
  }

  if (a1[3])
  {
    v4 = a1;
    v5 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v10, "cannot get value");
    v6 = *v4;
    nlohmann::json_abi_v3_11_2::detail::invalid_iterator::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(214, v10, v5);
  }

  return result;
}

void sub_247441438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[](uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::type_name(a1);
    nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("cannot use operator[] with a numeric argument with ", &v11, &v12);
    nlohmann::json_abi_v3_11_2::detail::type_error::create<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,0>(305, &v12, exception);
  }

  v4 = *(a1 + 8);
  v5 = v4[1];
  v6 = (v5 - *v4) >> 4;
  if (v6 <= a2)
  {
    if (a2 + 1 <= v6)
    {
      if (a2 + 1 < v6)
      {
        v7 = *v4 + 16 * (a2 + 1);
        while (v5 != v7)
        {
          v8 = *(v5 - 16);
          v5 -= 16;
          nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy((v5 + 8), v8);
        }

        v4[1] = v7;
      }
    }

    else
    {
      std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::__append(*(a1 + 8), a2 + 1 - v6);
    }
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_2474415C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
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

void *_ZNSt3__16vectorINS_5arrayIDF16_Lm3EEENS_9allocatorIS2_EEEC1B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2474416B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple3dgs::TVData::LoadFrame(apple3dgs::TVData *this, unsigned int a2, char *a3)
{
  v14[19] = *MEMORY[0x277D85DE8];
  if ((*(this + 61) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "Cannot read frame from incorrectly initialized TVData");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::ifstream::basic_ifstream(v12, this + 10);
  if ((v13[*(v12[0] - 24) + 16] & 5) != 0)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x24C1A1B50](v9, v10);
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(this + 18) + 32 * *(this + 13) * a2;
  memset(v10, 0, sizeof(v10));
  v11 = v5;
  std::istream::seekg();
  std::istream::read();
  v12[0] = *MEMORY[0x277D82808];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C1A1C20](v13);
  std::istream::~istream();
  result = MEMORY[0x24C1A1F80](v14);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247441904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a29);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  std::ifstream::~ifstream(&a29);
  _Unwind_Resume(a1);
}

apple3dgs::TVBuilder *apple3dgs::TVBuilder::TVBuilder(apple3dgs::TVBuilder *this, int a2, int a3, unsigned int a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v5 = a4;
  v9[0] = a4;
  for (i = 1; i != 312; ++i)
  {
    v5 = i + 0x5851F42D4C957F2DLL * (v5 ^ (v5 >> 62));
    v9[i] = v5;
  }

  v9[312] = 0;
  if (a3)
  {
    operator new();
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 68) = 0x40000000400;
  *(this + 18) = 0x4400000044000000;
  *(this + 5) = xmmword_2474793A0;
  *(this + 6) = unk_2474793B0;
  *(this + 7) = xmmword_2474793C0;
  *(this + 8) = unk_2474793D0;
  return this;
}

void sub_247442348(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

__n128 apple3dgs::TVBuilder::GetFrameDataV1@<Q0>(apple3dgs::TVBuilder *this@<X0>, int a2@<W1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v4 = *(this + 4) + 32 * (a3 + *(this + 1) * a2);
  result = *v4;
  v6 = *(v4 + 16);
  *a4 = *v4;
  a4[1] = v6;
  return result;
}

__int16 apple3dgs::TVBuilder::GetFrameDataV2@<H0>(apple3dgs::TVBuilder *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(this + 4) + 32 * (a3 + *(this + 1) * a2);
  v5 = *(this + 1) + 6 * a3;
  *a4 = *v4;
  v6 = *(v4 + 12);
  *(a4 + 8) = *(v4 + 8);
  *(a4 + 12) = WORD1(v6) | (WORD2(v6) << 16);
  *(a4 + 16) = HIWORD(v6);
  *(a4 + 18) = *(v4 + 20);
  *(a4 + 22) = *(v4 + 24);
  *(a4 + 28) = *(v5 + 4);
  *(a4 + 24) = *v5;
  result = *(v4 + 26);
  *(a4 + 30) = result;
  return result;
}

__int16 apple3dgs::TVBuilder::GetStaticColorData@<H0>(apple3dgs::TVBuilder *this@<X0>, unsigned int a2@<W1>)
{
  v2 = (*(this + 1) + 6 * a2);
  result = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return result;
}

void apple3dgs::TVBuilder::SaveFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v15 = 0;
  v12 = 6;
  v13 = a3;
  v3 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[]<char const>(v14, "version");
  v4 = *v3;
  *v3 = 6;
  v12 = v4;
  v5 = v3[1];
  v3[1] = v13;
  v13 = v5;
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v13, v4);
  v10 = 5;
  v11 = 10;
  v6 = nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::operator[]<char const>(v14, "frameRate");
  v7 = *v6;
  *v6 = 5;
  v10 = v7;
  v8 = v6[1];
  v6[1] = v11;
  v11 = v8;
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v11, v7);
  LOBYTE(v9[0]) = 0;
  v9[1] = 0;
  nlohmann::json_abi_v3_11_2::detail::external_constructor<(nlohmann::json_abi_v3_11_2::detail::value_t)3>::construct<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,char [5],0>(v9);
}

void sub_247442F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  std::locale::~locale((v46 - 176));
  std::ofstream::~ofstream(&a46);
  if (*(v46 - 225) < 0)
  {
    operator delete(*(v46 - 248));
  }

  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(&a26);
  nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::~basic_json(&a42);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 16);
      v3 -= 16;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy((v3 + 8), v5);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v5 = *(v3 - 16);
    v4 = v3 - 16;
    *(a1 + 16) = v4;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::json_value(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
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

uint64_t nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::parser<nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      v14 = v13;
      v7 = a5;
      v8 = a4;
      v9 = a6;
      (*(*v6 + 24))(v6, v13);
      a6 = v9;
      a4 = v8;
      a5 = v7;
    }

    else
    {
      v14 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parser(a6, &v12, v13, a4, a5);
  result = v14;
  if (v14 == v13)
  {
    result = (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    result = (*(*v14 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474436C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parse(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 24);
  if (v6)
  {
    if (v6 == a1)
    {
      v35 = v34;
      (*(*v6 + 24))(v6, v34);
    }

    else
    {
      v35 = (*(*v6 + 16))(v6);
    }

    nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::json_sax_dom_callback_parser(&v36, a3, v34, *(a1 + 184));
    if (v35 == v34)
    {
      (*(*v35 + 32))(v35);
    }

    else if (v35)
    {
      (*(*v35 + 40))();
    }

    nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>(a1, &v36);
    if (a2)
    {
      v11 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
      *(a1 + 32) = v11;
      if (v11 != 15)
      {
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v33);
        v29 = *(a1 + 72);
        v30 = *(a1 + 88);
        v26 = 5;
        strcpy(v25, "value");
        nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0xFu, v25, __p);
        nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v29, __p, &v31);
        v41 = 1;
        if (v42 == 1)
        {
          exception = __cxa_allocate_exception(0x28uLL);
          v17 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(exception, &v31);
        }

        v31.__vftable = &unk_28593CBA8;
        MEMORY[0x24C1A1B70](v32);
        std::exception::~exception(&v31);
        if (v28 < 0)
        {
          operator delete(__p[0]);
          if ((v26 & 0x80000000) == 0)
          {
LABEL_24:
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_25;
            }

LABEL_29:
            operator delete(v33.__r_.__value_.__l.__data_);
            if (v41 == 1)
            {
              goto LABEL_26;
            }

            goto LABEL_30;
          }
        }

        else if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        operator delete(v25[0]);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_25:
    if (v41 == 1)
    {
LABEL_26:
      v12 = *a3;
      *a3 = 9;
      v23 = v12;
      v13 = *(a3 + 1);
      *(a3 + 1) = 0;
      v24 = v13;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v24, v12);
LABEL_32:
      nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::~json_sax_dom_callback_parser(&v36);
      goto LABEL_33;
    }

LABEL_30:
    if (*a3 == 9)
    {
      *a3 = 0;
      v21 = 9;
      v14 = *(a3 + 1);
      *(a3 + 1) = 0;
      v22 = v14;
      nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v22, 9);
    }

    goto LABEL_32;
  }

  v7 = *(a1 + 184);
  v36 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = v7;
  nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>(a1, &v36);
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
  *(a1 + 32) = v8;
  if (v8 == 15)
  {
    goto LABEL_10;
  }

  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v33);
  v29 = *(a1 + 72);
  v30 = *(a1 + 88);
  v26 = 5;
  strcpy(v25, "value");
  nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0xFu, v25, __p);
  nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v29, __p, &v31);
  v39 = 1;
  if (v40 == 1)
  {
    v18 = __cxa_allocate_exception(0x28uLL);
    v19 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(v18, &v31);
  }

  v31.__vftable = &unk_28593CBA8;
  MEMORY[0x24C1A1B70](v32);
  std::exception::~exception(&v31);
  if ((v28 & 0x80000000) == 0)
  {
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

  operator delete(__p[0]);
  if (v26 < 0)
  {
LABEL_35:
    operator delete(v25[0]);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    if (v39 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_9:
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_36:
  operator delete(v33.__r_.__value_.__l.__data_);
  if (v39 == 1)
  {
LABEL_11:
    v9 = *a3;
    *a3 = 9;
    v10 = *(a3 + 1);
    *(a3 + 1) = 0;
    v20 = v10;
    nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>::json_value::destroy(&v20, v9);
  }

LABEL_12:
  if (v37)
  {
    *(&v37 + 1) = v37;
    operator delete(v37);
  }

LABEL_33:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_247443BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::exception a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  nlohmann::json_abi_v3_11_2::detail::exception::~exception(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a41 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a41 & 0x80000000) == 0)
  {
LABEL_4:
    v43 = *(v41 - 200);
    if (v43)
    {
LABEL_10:
      *(v41 - 192) = v43;
      operator delete(v43);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a36);
  v43 = *(v41 - 200);
  if (v43)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~parser(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parser(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, char a5)
{
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *a2;
  *(a1 + 56) = a5;
  *(a1 + 60) = -1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_24747AE39;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  v10 = localeconv();
  if (v10->decimal_point)
  {
    v11 = *v10->decimal_point;
  }

  else
  {
    v11 = 46;
  }

  *(a1 + 176) = v11;
  *(a1 + 184) = a4;
  *(a1 + 32) = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
  return a1;
}

void sub_247443EEC(_Unwind_Exception *a1)
{
  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(v1 + 40);
  std::function<BOOL ()(int,nlohmann::json_abi_v3_11_2::detail::parse_event_t,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> &)>::~function(v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(int64x2_t *a1)
{
  if (!a1[2].i64[0])
  {
    if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 239)
    {
      if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 187 || nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 191)
      {
        a1[6].i64[1] = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
        return 14;
      }
    }

    else
    {
      nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1, a1[2].i64);
    }
  }

  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1, &v3);
  return v3;
}

void nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::skip_whitespace(uint64_t a1)
{
  v2 = vdupq_n_s64(1uLL);
  v15 = v2;
  while (1)
  {
    *(a1 + 32) = vaddq_s64(*(a1 + 32), v2);
    if (*(a1 + 24) != 1)
    {
      break;
    }

    *(a1 + 24) = 0;
    v3 = *(a1 + 20);
    if (v3 == -1)
    {
      return;
    }

LABEL_7:
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 >= v6)
    {
      v10 = *(a1 + 56);
      v11 = (v7 - v10);
      v12 = v7 - v10 + 1;
      if (v12 < 0)
      {
        std::vector<char>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      *v11 = v3;
      memcpy(0, v10, v7 - v10);
      *(a1 + 56) = 0;
      *(a1 + 64) = v11 + 1;
      *(a1 + 72) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v2 = v15;
      *(a1 + 64) = v11 + 1;
      v8 = *(a1 + 20);
      if (v8 <= 12)
      {
        goto LABEL_9;
      }

LABEL_23:
      if (v8 != 13 && v8 != 32)
      {
        return;
      }
    }

    else
    {
      *v7 = v3;
      *(a1 + 64) = v7 + 1;
      v8 = *(a1 + 20);
      if (v8 > 12)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v8 != 9)
      {
        if (v8 != 10)
        {
          return;
        }

        v9 = *(a1 + 48) + 1;
        *(a1 + 40) = 0;
        *(a1 + 48) = v9;
      }
    }
  }

  v4 = *a1;
  if (*a1 != *(a1 + 8))
  {
    v5 = *v4;
    LOBYTE(v3) = *v4;
    *a1 = v4 + 1;
    *(a1 + 20) = v5;
    if (v5 == -1)
    {
      return;
    }

    goto LABEL_7;
  }

  *(a1 + 20) = -1;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_comment(int64x2_t *a1)
{
  v2 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  if (v2 == 42)
  {
    v5 = a1 + 3;
    do
    {
      while (1)
      {
        v6 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        if (v6 != 42)
        {
          break;
        }

        if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 47)
        {
          return 1;
        }

        a1[1].i8[8] = 1;
        v7 = a1[2].i64[1];
        --a1[2].i64[0];
        v8 = (a1 + 40);
        if (v7 || (v7 = v5->i64[0], v8 = a1 + 3, v5->i64[0]))
        {
          v8->i64[0] = v7 - 1;
        }

        if (a1[1].i32[1] != -1)
        {
          --a1[4].i64[0];
        }
      }
    }

    while ((v6 + 1) >= 2);
    result = 0;
    a1[6].i64[1] = "invalid comment; missing closing '*/'";
  }

  else if (v2 == 47)
  {
    do
    {
      do
      {
        v3 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) + 1;
      }

      while (v3 >= 0xF);
    }

    while (((0x4803u >> v3) & 1) == 0);
    return 1;
  }

  else
  {
    result = 0;
    a1[6].i64[1] = "invalid comment; expecting '/' or '*' after '/'";
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(unsigned __int8 **a1)
{
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v4 = a1[9];
    if (v2 < v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *a1[10] = 0;
  a1[11] = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v5 = a1[9];
  if (v2 >= v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 10);
  a1[8] = v2 + 1;
  v76 = vdupq_n_s64(1uLL);
  while (2)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v76);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v10 = *(a1 + 5);
    }

    else
    {
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v10 = -1;
      }

      else
      {
        v10 = *v11;
        *a1 = v11 + 1;
      }

      *(a1 + 5) = v10;
    }

    if (v10 == -1)
    {
      v22 = "invalid string: missing closing quote";
      goto LABEL_162;
    }

    v13 = a1[8];
    v12 = a1[9];
    if (v13 >= v12)
    {
      v15 = a1[7];
      v16 = (v13 - v15);
      v17 = v13 - v15 + 1;
      if (v17 < 0)
      {
        goto LABEL_197;
      }

      v18 = v12 - v15;
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        operator new();
      }

      v20 = v13 - v15;
      *v16 = v10;
      v14 = v16 + 1;
      memcpy(0, v15, v20);
      a1[7] = 0;
      a1[8] = v16 + 1;
      a1[9] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = v10;
      v14 = v13 + 1;
    }

    a1[8] = v14;
    v21 = *(a1 + 5);
    if (v21 == 10)
    {
      v73 = (a1[6] + 1);
      a1[5] = 0;
      a1[6] = v73;
      v22 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
      goto LABEL_162;
    }

    v22 = "invalid string: missing closing quote";
    switch(v21)
    {
      case -1:
        goto LABEL_162;
      case 0:
        v22 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_162;
      case 1:
        v22 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_162;
      case 2:
        v22 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_162;
      case 3:
        v22 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_162;
      case 4:
        v22 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_162;
      case 5:
        v22 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_162;
      case 6:
        v22 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_162;
      case 7:
        v22 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_162;
      case 8:
        v22 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_162;
      case 9:
        v22 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_162;
      case 11:
        v22 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_162;
      case 12:
        v22 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_162;
      case 13:
        v22 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_162;
      case 14:
        v22 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_162;
      case 15:
        v22 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_162;
      case 16:
        v22 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_162;
      case 17:
        v22 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_162;
      case 18:
        v22 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_162;
      case 19:
        v22 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_162;
      case 20:
        v22 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_162;
      case 21:
        v22 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_162;
      case 22:
        v22 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_162;
      case 23:
        v22 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_162;
      case 24:
        v22 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_162;
      case 25:
        v22 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_162;
      case 26:
        v22 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_162;
      case 27:
        v22 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_162;
      case 28:
        v22 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_162;
      case 29:
        v22 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_162;
      case 30:
        v22 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_162;
      case 31:
        v22 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_162;
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
        goto LABEL_98;
      case 34:
        return 4;
      case 92:
        v69 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v22 = "invalid string: forbidden character after backslash";
        if (v69 <= 101)
        {
          if (v69 > 91)
          {
            if (v69 == 92)
            {
              std::string::push_back((a1 + 10), 92);
            }

            else
            {
              if (v69 != 98)
              {
                goto LABEL_162;
              }

              std::string::push_back((a1 + 10), 8);
            }
          }

          else if (v69 == 34)
          {
            std::string::push_back((a1 + 10), 34);
          }

          else
          {
            if (v69 != 47)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 47);
          }
        }

        else if (v69 <= 113)
        {
          if (v69 == 102)
          {
            std::string::push_back((a1 + 10), 12);
          }

          else
          {
            if (v69 != 110)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 10);
          }
        }

        else
        {
          switch(v69)
          {
            case 'r':
              std::string::push_back((a1 + 10), 13);
              break;
            case 't':
              std::string::push_back((a1 + 10), 9);
              break;
            case 'u':
              codepoint = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
              if (codepoint == -1)
              {
LABEL_198:
                v22 = "invalid string: '\\u' must be followed by 4 hex digits";
                goto LABEL_162;
              }

              v71 = codepoint;
              if ((codepoint & 0xFFFFFC00) == 0xD800)
              {
                if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 92 || nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 117)
                {
                  goto LABEL_199;
                }

                v72 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
                if (v72 == -1)
                {
                  goto LABEL_198;
                }

                if (v72 >> 10 != 55)
                {
LABEL_199:
                  v22 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                  goto LABEL_162;
                }

                v71 = v72 + (v71 << 10) - 56613888;
              }

              else
              {
                if ((codepoint & 0xFFFFFC00) == 0xDC00)
                {
                  v22 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                  goto LABEL_162;
                }

                if (codepoint <= 127)
                {
                  v68 = codepoint;
LABEL_114:
                  std::string::push_back((a1 + 10), v68);
                  continue;
                }

                if (codepoint <= 0x7FF)
                {
                  std::string::push_back((a1 + 10), (codepoint >> 6) | 0xC0);
                  v68 = v71 & 0x3F | 0x80;
                  goto LABEL_114;
                }

                if (!HIWORD(codepoint))
                {
                  std::string::push_back((a1 + 10), (codepoint >> 12) | 0xE0);
                  goto LABEL_128;
                }
              }

              std::string::push_back((a1 + 10), (v71 >> 18) | 0xF0);
              std::string::push_back((a1 + 10), (v71 >> 12) & 0x3F | 0x80);
LABEL_128:
              std::string::push_back((a1 + 10), (v71 >> 6) & 0x3F | 0x80);
              std::string::push_back((a1 + 10), v71 & 0x3F | 0x80);
              continue;
            default:
              goto LABEL_162;
          }
        }

        continue;
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v23 = *(a1 + 5);
        }

        else
        {
          v24 = *a1;
          if (*a1 == a1[1])
          {
            v23 = -1;
          }

          else
          {
            v23 = *v24;
            *a1 = v24 + 1;
          }

          *(a1 + 5) = v23;
        }

        if (v23 == -1)
        {
          goto LABEL_161;
        }

        v26 = a1[8];
        v25 = a1[9];
        if (v26 >= v25)
        {
          v28 = a1[7];
          v29 = (v26 - v28);
          v30 = v26 - v28 + 1;
          if (v30 < 0)
          {
            goto LABEL_197;
          }

          v31 = v25 - v28;
          if (2 * v31 > v30)
          {
            v30 = 2 * v31;
          }

          if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v32 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            operator new();
          }

          v43 = v26 - v28;
          *v29 = v23;
          v27 = v29 + 1;
          memcpy(0, v28, v43);
          a1[7] = 0;
          a1[8] = v29 + 1;
          a1[9] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v26 = v23;
          v27 = v26 + 1;
        }

        a1[8] = v27;
        v21 = *(a1 + 5);
        if (v21 == 10)
        {
          goto LABEL_160;
        }

        goto LABEL_97;
      case 224:
        std::string::push_back((a1 + 10), -32);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v67 = *(a1 + 5);
        if ((v67 - 192) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 238:
      case 239:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v33 = *(a1 + 5);
        }

        else
        {
          v34 = *a1;
          if (*a1 == a1[1])
          {
            v33 = -1;
          }

          else
          {
            v33 = *v34;
            *a1 = v34 + 1;
          }

          *(a1 + 5) = v33;
        }

        if (v33 == -1)
        {
          goto LABEL_161;
        }

        v36 = a1[8];
        v35 = a1[9];
        if (v36 >= v35)
        {
          v38 = a1[7];
          v39 = (v36 - v38);
          v40 = v36 - v38 + 1;
          if (v40 < 0)
          {
            goto LABEL_197;
          }

          v41 = v35 - v38;
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            operator new();
          }

          v45 = v36 - v38;
          *v39 = v33;
          v37 = v39 + 1;
          memcpy(0, v38, v45);
          a1[7] = 0;
          a1[8] = v39 + 1;
          a1[9] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v36 = v33;
          v37 = v36 + 1;
        }

        a1[8] = v37;
        v46 = *(a1 + 5);
        if (v46 == 10)
        {
          goto LABEL_160;
        }

        if ((v46 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v47 = *(a1 + 103);
        if (v47 < 0)
        {
          v48 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
          if (a1[11] == (v48 - 1))
          {
            if (v48 != 0x7FFFFFFFFFFFFFF8)
            {
              v49 = *v6;
              if ((v48 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_76:
              operator new();
            }

            goto LABEL_201;
          }

          v51 = *v6;
          v50 = a1[11];
          a1[11] = v50 + 1;
        }

        else
        {
          if (*(a1 + 103) == 22)
          {
            goto LABEL_76;
          }

          v50 = *(a1 + 103);
          *(a1 + 103) = (v47 + 1) & 0x7F;
          v51 = a1 + 10;
        }

        v52 = &v50[v51];
        *v52 = v46;
        v52[1] = 0;
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (a1[3])
        {
          *(a1 + 24) = 0;
          v53 = *(a1 + 5);
          if (v53 == -1)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v54 = *a1;
          if (*a1 == a1[1])
          {
            *(a1 + 5) = -1;
            goto LABEL_161;
          }

          v55 = *v54;
          LOBYTE(v53) = *v54;
          *a1 = v54 + 1;
          *(a1 + 5) = v55;
          if (v55 == -1)
          {
            goto LABEL_161;
          }
        }

        v56 = a1[8];
        v57 = a1[9];
        if (v56 >= v57)
        {
          v59 = a1[7];
          v60 = (v56 - v59);
          v61 = v56 - v59 + 1;
          if (v61 < 0)
          {
LABEL_197:
            std::vector<char>::__throw_length_error[abi:ne200100]();
          }

          v62 = v57 - v59;
          if (2 * v62 > v61)
          {
            v61 = 2 * v62;
          }

          if (v62 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v63 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            operator new();
          }

          *v60 = v53;
          v58 = v60 + 1;
          memcpy(0, v59, v56 - v59);
          a1[7] = 0;
          a1[8] = v58;
          a1[9] = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          *v56 = v53;
          v58 = v56 + 1;
        }

        a1[8] = v58;
        v21 = *(a1 + 5);
        if (v21 != 10)
        {
LABEL_97:
          if ((v21 - 192) < 0xFFFFFFC0)
          {
            goto LABEL_161;
          }

LABEL_98:
          v64 = *(a1 + 103);
          if (v64 < 0)
          {
            v65 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
            if (a1[11] != (v65 - 1))
            {
              v8 = *v6;
              v7 = a1[11];
              a1[11] = v7 + 1;
              goto LABEL_7;
            }

            if (v65 != 0x7FFFFFFFFFFFFFF8)
            {
              v66 = *v6;
              if ((v65 - 1) >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_104:
              operator new();
            }

LABEL_201:
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (*(a1 + 103) == 22)
          {
            goto LABEL_104;
          }

          v7 = *(a1 + 103);
          *(a1 + 103) = (v64 + 1) & 0x7F;
          v8 = a1 + 10;
LABEL_7:
          v9 = &v7[v8];
          *v9 = v21;
          v9[1] = 0;
          continue;
        }

LABEL_160:
        v74 = (a1[6] + 1);
        a1[5] = 0;
        a1[6] = v74;
LABEL_161:
        v22 = "invalid string: ill-formed UTF-8 byte";
LABEL_162:
        a1[13] = v22;
        return 14;
      case 237:
        std::string::push_back((a1 + 10), -19);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v67 = *(a1 + 5);
        if ((v67 - 160) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 240:
        std::string::push_back((a1 + 10), -16);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFD0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 241:
      case 242:
      case 243:
        std::string::push_back((a1 + 10), v21);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 244:
        std::string::push_back((a1 + 10), -12);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v44 = *(a1 + 5);
        if ((v44 - 144) < 0xFFFFFFF0)
        {
          goto LABEL_161;
        }

LABEL_111:
        std::string::push_back((a1 + 10), v44);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v67 = *(a1 + 5);
        if ((v67 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

LABEL_112:
        std::string::push_back((a1 + 10), v67);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        if ((*(a1 + 5) - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v68 = *(a1 + 5);
        goto LABEL_114;
      default:
        goto LABEL_161;
    }
  }
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(unsigned __int8 **a1)
{
  if (*(a1 + 103) < 0)
  {
    *a1[10] = 0;
    a1[11] = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v5 = a1[9];
    if (v2 < v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v4 = a1[9];
  if (v2 >= v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 10);
  a1[8] = v2 + 1;
  v7 = *(a1 + 5);
  if ((v7 - 49) < 9)
  {
    v8 = 5;
    goto LABEL_8;
  }

  if (v7 == 48)
  {
    v42 = 5;
    LOBYTE(v32) = 48;
    goto LABEL_59;
  }

  if (v7 == 45)
  {
    std::string::push_back((a1 + 10), 45);
  }

  v29 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  if ((v29 - 49) >= 9)
  {
    if (v29 != 48)
    {
      v31 = "invalid number; expected digit after '-'";
      goto LABEL_69;
    }

    v32 = *(a1 + 5);
    v42 = 6;
LABEL_59:
    std::string::push_back((a1 + 10), v32);
    v33 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    if (v33 == 46)
    {
LABEL_43:
      std::string::push_back((a1 + 10), *(a1 + 136));
      if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 > 9)
      {
        v31 = "invalid number; expected digit after '.'";
LABEL_69:
        a1[13] = v31;
        return 14;
      }

      do
      {
        std::string::push_back((a1 + 10), *(a1 + 20));
        v27 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      }

      while ((v27 - 48) < 0xA);
      if (v27 != 101 && v27 != 69)
      {
        v28 = 7;
        goto LABEL_71;
      }
    }

    else if (v33 != 69 && v33 != 101)
    {
      goto LABEL_72;
    }

    v23 = *(a1 + 5);
LABEL_63:
    std::string::push_back((a1 + 10), v23);
    v34 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    if (v34 == 43 || v34 == 45)
    {
      std::string::push_back((a1 + 10), *(a1 + 20));
      if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 >= 0xA)
      {
        v31 = "invalid number; expected digit after exponent sign";
        goto LABEL_69;
      }
    }

    else if ((v34 - 48) >= 0xA)
    {
      v31 = "invalid number; expected '+', '-', or digit after exponent";
      goto LABEL_69;
    }

    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(a1 + 20, (a1 + 10), a1, &v45);
    v28 = v45;
LABEL_71:
    v42 = v28;
    goto LABEL_72;
  }

  v7 = *(a1 + 5);
  v8 = 6;
LABEL_8:
  v42 = v8;
  std::string::push_back((a1 + 10), v7);
  v43 = vdupq_n_s64(1uLL);
  while (1)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v43);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v12 = *(a1 + 5);
    }

    else
    {
      v13 = *a1;
      if (*a1 == a1[1])
      {
        v12 = -1;
      }

      else
      {
        v12 = *v13;
        *a1 = v13 + 1;
      }

      *(a1 + 5) = v12;
    }

    if (v12 == -1)
    {
      break;
    }

    v15 = a1[8];
    v14 = a1[9];
    if (v15 >= v14)
    {
      v17 = a1[7];
      v18 = (v15 - v17);
      v19 = v15 - v17 + 1;
      if (v19 < 0)
      {
        std::vector<char>::__throw_length_error[abi:ne200100]();
      }

      v20 = v14 - v17;
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        operator new();
      }

      v22 = v15 - v17;
      *v18 = v12;
      v16 = v18 + 1;
      memcpy(0, v17, v22);
      a1[7] = 0;
      a1[8] = v18 + 1;
      a1[9] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v12;
      v16 = v15 + 1;
    }

    a1[8] = v16;
    v23 = *(a1 + 5);
    if ((v23 - 48) >= 0xA)
    {
      if (v23 <= 68)
      {
        if (v23 == 10)
        {
          v30 = (a1[6] + 1);
          a1[5] = 0;
          a1[6] = v30;
          break;
        }

        if (v23 != 46)
        {
          break;
        }

        goto LABEL_43;
      }

      if (v23 == 69 || v23 == 101)
      {
        goto LABEL_63;
      }

      break;
    }

    v24 = *(a1 + 103);
    if (v24 < 0)
    {
      v25 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
      if (a1[11] == (v25 - 1))
      {
        if (v25 == 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v26 = *v6;
        if ((v25 - 1) > 0x3FFFFFFFFFFFFFF2)
        {
          operator new();
        }

LABEL_36:
        operator new();
      }

      v10 = *v6;
      v9 = a1[11];
      a1[11] = v9 + 1;
    }

    else
    {
      if (*(a1 + 103) == 22)
      {
        goto LABEL_36;
      }

      v9 = *(a1 + 103);
      *(a1 + 103) = (v24 + 1) & 0x7F;
      v10 = (a1 + 10);
    }

    v11 = &v9[v10];
    *v11 = v23;
    v11[1] = 0;
  }

LABEL_72:
  v36 = a1 + 5;
  v37 = a1[5];
  *(a1 + 24) = 1;
  --a1[4];
  if (v37 || (v36 = a1 + 6, (v37 = a1[6]) != 0))
  {
    *v36 = v37 - 1;
  }

  if (*(a1 + 5) != -1)
  {
    --a1[8];
  }

  __endptr = 0;
  *__error() = 0;
  if (v42 == 6)
  {
    v40 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v40 = *v6;
    }

    v41 = strtoll(v40, &__endptr, 10);
    if (!*__error())
    {
      a1[14] = v41;
      return 6;
    }
  }

  else if (v42 == 5)
  {
    v38 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v38 = *v6;
    }

    v39 = strtoull(v38, &__endptr, 10);
    if (!*__error())
    {
      a1[15] = v39;
      return 5;
    }
  }

  if (*(a1 + 103) < 0)
  {
    v6 = *v6;
  }

  *(a1 + 16) = strtod(v6, &__endptr);
  return 7;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    v2 = a1[1].i32[1];
  }

  else
  {
    v3 = a1->i64[0];
    if (a1->i64[0] == a1->i64[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      a1->i64[0] = (v3 + 1);
    }

    a1[1].i32[1] = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[4].i64[0];
  v4 = a1[4].u64[1];
  if (v5 >= v4)
  {
    v7 = a1[3].i64[1];
    v8 = (v5 - v7);
    v9 = v5 - v7 + 1;
    if (v9 < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v5 - v7;
    *v8 = v2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    a1[3].i64[1] = 0;
    a1[4].i64[0] = (v8 + 1);
    a1[4].i64[1] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = v5 + 1;
  }

  a1[4].i64[0] = v6;
  result = a1[1].u32[1];
  if (result == 10)
  {
    v14 = a1[3].i64[0] + 1;
    a1[2].i64[1] = 0;
    a1[3].i64[0] = v14;
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(int64x2_t *a1)
{
  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  v2 = a1[1].i32[1];
  v3 = v2 - 48;
  if ((v2 - 48) < 0xA)
  {
LABEL_4:
    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v4 = a1[1].i32[1];
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if ((v2 - 65) <= 5)
  {
    v3 = v2 - 55;
    goto LABEL_4;
  }

  if ((v2 - 97) > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2 - 87;
  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  v4 = a1[1].i32[1];
  v5 = v4 - 48;
  if ((v4 - 48) < 0xA)
  {
LABEL_5:
    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) < 0xA)
    {
      goto LABEL_6;
    }

LABEL_12:
    if ((v6 - 65) < 6)
    {
      v7 = v6 - 55;
      nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      v8 = a1[1].i32[1];
      v9 = v8 - 48;
      if ((v8 - 48) < 0xA)
      {
        return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
      }

      goto LABEL_20;
    }

    if ((v6 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6 - 87;
    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v8 = a1[1].i32[1];
    v9 = v8 - 48;
    if ((v8 - 48) >= 0xA)
    {
      goto LABEL_20;
    }

    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

LABEL_10:
  if ((v4 - 65) >= 6)
  {
    if ((v4 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v4 - 87;
    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = v4 - 55;
    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  v8 = a1[1].i32[1];
  v9 = v8 - 48;
  if ((v8 - 48) < 0xA)
  {
    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

LABEL_20:
  if ((v8 - 65) < 6)
  {
    v9 = v8 - 55;
    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

  if ((v8 - 97) <= 5)
  {
    v9 = v8 - 87;
    return (v9 + (v3 << 12) + (v5 << 8) + 16 * v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(a2);
        }

        else
        {
          v32.__vftable = *(a1 + 160);
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_60;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 152);
        nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(a2, &v32, 0);
        goto LABEL_28;
      }

      if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v32.__vftable = *(a1 + 168);
        nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(a2, &v32, 0);
        goto LABEL_28;
      }

      v25 = *(a1 + 72);
      nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
      nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &__p);
      LOBYTE(v28[0]) = 39;
      nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[26],std::string,char>("number overflow parsing '", &__p, v28, &v31);
      nlohmann::json_abi_v3_11_2::detail::out_of_range::create<decltype(nullptr),0>(406, &v31, &v32);
      v16 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::out_of_range>(a2, v25, &v34, &v32);
      nlohmann::json_abi_v3_11_2::detail::exception::~exception(&v32);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v24 = __p.__r_.__value_.__r.__words[0];
LABEL_75:
        operator delete(v24);
      }

LABEL_76:
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      goto LABEL_54;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::start_array(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_64;
    }

    v7 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::end_array(a2);
      goto LABEL_24;
    }

    v13 = v36;
    if (v36 == v37 << 6)
    {
      if ((v36 + 1) < 0)
      {
        std::vector<char>::__throw_length_error[abi:ne200100]();
      }

      v14 = v37 << 7;
      if (v37 << 7 <= (v36 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v14 = (v36 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v36 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&v35, v15);
      v13 = v36;
    }

    v36 = v13 + 1;
    *&v35[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
      v31 = *(a1 + 72);
      v29 = 5;
      strcpy(v28, "value");
      nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0, v28, &__p);
      nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v31, &__p, &v32);
      *(a2 + 88) = 1;
      if (*(a2 + 128) == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v19 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(exception, &v32);
      }

LABEL_61:
      v32.__vftable = &unk_28593CBA8;
      MEMORY[0x24C1A1B70](&v33);
      std::exception::~exception(&v32);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v29 & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

LABEL_67:
          operator delete(v34.__r_.__value_.__l.__data_);
          goto LABEL_64;
        }
      }

      else if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      operator delete(v28[0]);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_67;
    }

LABEL_60:
    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
    v31 = *(a1 + 72);
    v29 = 5;
    strcpy(v28, "value");
    nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0x10u, v28, &__p);
    nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v31, &__p, &v32);
    *(a2 + 88) = 1;
    if (*(a2 + 128) == 1)
    {
      v26 = __cxa_allocate_exception(0x28uLL);
      v27 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(v26, &v32);
    }

    goto LABEL_61;
  }

  if ((nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::start_object(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_64;
  }

  v5 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::key();
    }

    goto LABEL_70;
  }

  v6 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::end_object(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_64:
    v16 = 0;
    goto LABEL_54;
  }

LABEL_28:
  for (i = v36; i; v36 = i)
  {
    if ((*&v35[((i - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (i - 1)))
    {
      v9 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v20 = *(a1 + 72);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
        v31 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v28, "array");
        nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0xAu, v28, &__p);
        nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v31, &__p, &v32);
        v21 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(a2, v20, &v34, &v32);
        goto LABEL_71;
      }

      v10 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::end_array(a2);
    }

    else
    {
      v11 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
      *(a1 + 32) = v11;
      if (v11 == 13)
      {
        v12 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
        *(a1 + 32) = v12;
        if (v12 == 4)
        {
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::key();
        }

LABEL_70:
        v23 = *(a1 + 72);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
        v31 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v28, "object key");
        nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 4u, v28, &__p);
        nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v31, &__p, &v32);
        v21 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(a2, v23, &v34, &v32);
LABEL_71:
        v16 = v21;
        nlohmann::json_abi_v3_11_2::detail::exception::~exception(&v32);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v29 < 0)
        {
          v24 = v28[0];
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (v11 != 11)
      {
        v22 = *(a1 + 72);
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v34);
        v31 = *(a1 + 72);
        std::string::basic_string[abi:ne200100]<0>(v28, "object");
        nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0xBu, v28, &__p);
        nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v31, &__p, &v32);
        v21 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(a2, v22, &v34, &v32);
        goto LABEL_71;
      }

      v10 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::end_object(a2);
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_64;
    }

    i = v36 - 1;
  }

  v16 = 1;
LABEL_54:
  if (v35)
  {
    operator delete(v35);
  }

  return v16;
}

void sub_24744666C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  nlohmann::json_abi_v3_11_2::detail::exception::~exception(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v27 - 73) < 0)
  {
    operator delete(*(v27 - 96));
    v29 = *(v27 - 72);
    if (v29)
    {
LABEL_10:
      operator delete(v29);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v29 = *(v27 - 72);
    if (v29)
    {
      goto LABEL_10;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::json_sax_dom_callback_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(exception, a4);
  }

  return 0;
}

void nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v9 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      v6 = strlen(__str);
      std::string::append(a2, __str, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_247446920(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = 11;
  strcpy(v12, "parse_error");
  LOBYTE(__p[0]) = 46;
  std::to_string(&v16, a1);
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[17],std::string const&,char,std::string,char const(&)[3]>("[json.exception.", v12, __p, &v16, "] ", &v14);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  nlohmann::json_abi_v3_11_2::detail::parse_error::position_string(a2, &v16);
  v11 = 0;
  LOBYTE(__p[0]) = 0;
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,std::string,char const(&)[12],std::string,char const(&)[3],std::string,std::string const&>("parse error", &v14, &v16, ": ", __p, a3, &v15);
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_14:
      operator delete(v14.__r_.__value_.__l.__data_);
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  operator delete(v12[0]);
LABEL_7:
  v8 = *a2;
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  *a4 = &unk_28593CBA8;
  *(a4 + 8) = a1;
  MEMORY[0x24C1A1B40](a4 + 16, v9);
  *a4 = &unk_28593DC78;
  *(a4 + 32) = v8;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_247446B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  std::exception::~exception(v33);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 23) = 13;
  strcpy(a4, "syntax error ");
  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (v7)
  {
    v21.__r_.__value_.__s.__data_[0] = 32;
    nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[26],std::string,char>("while parsing ", a3, &v21, &__p);
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(a4, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ", 2uLL);
  v10 = *(a1 + 32);
  if (v10 == 14)
  {
    v22 = *(a1 + 144);
    nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v21);
    v20 = 39;
    nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const*,char const(&)[15],std::string,char>(&v22, "; last read: '", &v21, &v20, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v16 = v21.__r_.__value_.__r.__words[0];
    goto LABEL_35;
  }

  if (v10 > 0x10)
  {
    v13 = "unknown token";
  }

  else
  {
    v13 = off_278EA7148[v10];
  }

  v21.__r_.__value_.__r.__words[0] = v13;
  nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("unexpected ", &v21.__r_.__value_.__l.__data_, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = __p.__r_.__value_.__r.__words[0];
LABEL_35:
    operator delete(v16);
  }

LABEL_36:
  if (a2)
  {
    if (a2 > 0x10)
    {
      v17 = "unknown token";
    }

    else
    {
      v17 = off_278EA71D0[a2 - 1];
    }

    v21.__r_.__value_.__r.__words[0] = v17;
    nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[51],char const*>("; expected ", &v21.__r_.__value_.__l.__data_, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, v18, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_247446E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 120);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v5 = *(a1 + 32);
      if (v5 <= 5)
      {
        if (v5 > 2)
        {
          if (v5 == 3)
          {
            v38.__vftable = 0;
            nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<decltype(nullptr)>(a2);
          }

          else
          {
            if (v5 == 4)
            {
              nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<std::string&>(a2);
            }

            v38.__vftable = *(a1 + 160);
            nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<unsigned long long &>(a2, &v38);
          }

          goto LABEL_32;
        }

        if (v5 == 1)
        {
          LOBYTE(v38.__vftable) = 1;
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v38);
          goto LABEL_32;
        }

        if (v5 == 2)
        {
          LOBYTE(v38.__vftable) = 0;
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<BOOL &>(a2, &v38);
          goto LABEL_32;
        }

LABEL_64:
        nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v40);
        v37 = *(a1 + 72);
        v35 = 5;
        strcpy(v34, "value");
        nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0x10u, v34, &__p);
        nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v37, &__p, &v38);
        *(a2 + 40) = 1;
        if (*(a2 + 41) == 1)
        {
          exception = __cxa_allocate_exception(0x28uLL);
          v33 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(exception, &v38);
        }

        goto LABEL_65;
      }

      if (v5 <= 7)
      {
        if (v5 == 6)
        {
          v38.__vftable = *(a1 + 152);
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<long long &>(a2, &v38);
        }

        else
        {
          if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v31 = *(a1 + 72);
            nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v40);
            nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &__p);
            LOBYTE(v34[0]) = 39;
            nlohmann::json_abi_v3_11_2::detail::concat<std::string,char const(&)[26],std::string,char>("number overflow parsing '", &__p, v34, &v37);
            nlohmann::json_abi_v3_11_2::detail::out_of_range::create<decltype(nullptr),0>(406, &v37, &v38);
            v21 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::out_of_range>(a2, v31, &v40, &v38);
            nlohmann::json_abi_v3_11_2::detail::exception::~exception(&v38);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              v30 = __p.__r_.__value_.__r.__words[0];
LABEL_79:
              operator delete(v30);
            }

LABEL_80:
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }

            goto LABEL_58;
          }

          v38.__vftable = *(a1 + 168);
          nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<double &>(a2, &v38);
        }

LABEL_32:
        v12 = v42;
        if (v42)
        {
          while (1)
          {
LABEL_33:
            if ((*&v41[((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v12 - 1)))
            {
              v13 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
              *(a1 + 32) = v13;
              if (v13 == 13)
              {
                goto LABEL_44;
              }

              if (v13 != 10)
              {
                v25 = *(a1 + 72);
                nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v40);
                v37 = *(a1 + 72);
                std::string::basic_string[abi:ne200100]<0>(v34, "array");
                nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0xAu, v34, &__p);
                nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v37, &__p, &v38);
                v26 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(a2, v25, &v40, &v38);
                goto LABEL_75;
              }
            }

            else
            {
              v14 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
              *(a1 + 32) = v14;
              if (v14 == 13)
              {
                v15 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
                *(a1 + 32) = v15;
                if (v15 != 4)
                {
                  goto LABEL_73;
                }

                v16 = *(*(*(a2 + 16) - 8) + 8);
                v38.__vftable = v4;
                *(a2 + 32) = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16, &v4->~exception) + 7;
                v17 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
                *(a1 + 32) = v17;
                if (v17 == 12)
                {
LABEL_44:
                  *(a1 + 32) = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
                  goto LABEL_2;
                }

LABEL_74:
                v29 = *(a1 + 72);
                nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v40);
                v37 = *(a1 + 72);
                std::string::basic_string[abi:ne200100]<0>(v34, "object separator");
                nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0xCu, v34, &__p);
                nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v37, &__p, &v38);
                v26 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(a2, v29, &v40, &v38);
LABEL_75:
                v21 = v26;
                nlohmann::json_abi_v3_11_2::detail::exception::~exception(&v38);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v35 < 0)
                {
                  v30 = v34[0];
                  goto LABEL_79;
                }

                goto LABEL_80;
              }

              if (v14 != 11)
              {
                v27 = *(a1 + 72);
                nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v40);
                v37 = *(a1 + 72);
                std::string::basic_string[abi:ne200100]<0>(v34, "object");
                nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0xBu, v34, &__p);
                nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v37, &__p, &v38);
                v26 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(a2, v27, &v40, &v38);
                goto LABEL_75;
              }
            }

            *(a2 + 16) -= 8;
            v12 = v42 - 1;
            v42 = v12;
            if (!v12)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

      if (v5 != 8)
      {
        break;
      }

      v40.__r_.__value_.__s.__data_[0] = 2;
      v38.__vftable = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_2::detail::value_t>(a2, &v40);
      std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](a2 + 8, &v38);
      v11 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
      *(a1 + 32) = v11;
      if (v11 == 10)
      {
LABEL_28:
        *(a2 + 16) -= 8;
        v12 = v42;
        if (v42)
        {
          goto LABEL_33;
        }

LABEL_57:
        v21 = 1;
        goto LABEL_58;
      }

      v18 = v42;
      if (v42 == v43 << 6)
      {
        if ((v42 + 1) < 0)
        {
          std::vector<char>::__throw_length_error[abi:ne200100]();
        }

        v19 = v43 << 7;
        if (v43 << 7 <= (v42 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v19 = (v42 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v42 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        std::vector<BOOL>::reserve(&v41, v20);
        v18 = v42;
      }

      v42 = v18 + 1;
      *&v41[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    }

    if (v5 != 9)
    {
      break;
    }

    v40.__r_.__value_.__s.__data_[0] = 1;
    v38.__vftable = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::handle_value<nlohmann::json_abi_v3_11_2::detail::value_t>(a2, &v40);
    std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](a2 + 8, &v38);
    v6 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
    *(a1 + 32) = v6;
    if (v6 == 11)
    {
      goto LABEL_28;
    }

    if (v6 != 4)
    {
LABEL_73:
      v28 = *(a1 + 72);
      nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v40);
      v37 = *(a1 + 72);
      std::string::basic_string[abi:ne200100]<0>(v34, "object key");
      nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 4u, v34, &__p);
      nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v37, &__p, &v38);
      v26 = nlohmann::json_abi_v3_11_2::detail::json_sax_dom_parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>::parse_error<nlohmann::json_abi_v3_11_2::detail::parse_error>(a2, v28, &v40, &v38);
      goto LABEL_75;
    }

    v7 = *(*(*(a2 + 16) - 8) + 8);
    v38.__vftable = v4;
    *(a2 + 32) = std::__tree<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, &v4->~exception) + 7;
    v8 = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
    *(a1 + 32) = v8;
    if (v8 != 12)
    {
      goto LABEL_74;
    }

    v9 = v42;
    if (v42 == v43 << 6)
    {
      if ((v42 + 1) < 0)
      {
        std::vector<char>::__throw_length_error[abi:ne200100]();
      }

      if (v42 > 0x3FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v43 << 7 <= (v42 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v10 = (v42 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      else
      {
        v10 = v43 << 7;
      }

      std::vector<BOOL>::reserve(&v41, v10);
      v9 = v42;
    }

    v42 = v9 + 1;
    *&v41[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v9);
    *(a1 + 32) = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan((a1 + 40));
  }

  if (v5 != 14)
  {
    goto LABEL_64;
  }

  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_token_string(a1 + 40, &v40);
  v37 = *(a1 + 72);
  v35 = 5;
  strcpy(v34, "value");
  nlohmann::json_abi_v3_11_2::detail::parser<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::exception_message(a1, 0, v34, &__p);
  nlohmann::json_abi_v3_11_2::detail::parse_error::create<decltype(nullptr),0>(101, &v37, &__p, &v38);
  *(a2 + 40) = 1;
  if (*(a2 + 41) == 1)
  {
    v23 = __cxa_allocate_exception(0x28uLL);
    v24 = nlohmann::json_abi_v3_11_2::detail::parse_error::parse_error(v23, &v38);
  }

LABEL_65:
  v38.__vftable = &unk_28593CBA8;
  MEMORY[0x24C1A1B70](&v39);
  std::exception::~exception(&v38);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v35 < 0)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_71:
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_70:
    operator delete(v34[0]);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_71;
    }
  }

  v21 = 0;
LABEL_58:
  if (v41)
  {
    operator delete(v41);
  }

  return v21;
}