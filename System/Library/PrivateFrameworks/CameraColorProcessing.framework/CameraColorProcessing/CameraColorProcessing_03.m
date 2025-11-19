void LTMComputeV1::LTMCompute::generateLinearLTC(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmComputeMeta *a3, sLtmComputeOutput *__dst)
{
  v6 = &__dst->LTC[0x2000];
  v7 = 48;
  v8 = __dst;
  do
  {
    memcpy(v8, LTMComputeV1::LTMCompute::localCurveInputs, 0x104uLL);
    v8 = (v8 + 260);
    --v7;
  }

  while (v7);
  memcpy(&__dst->LTC[3120], LTMComputeV1::LTMCompute::localCurveInputs, 0x104uLL);
  v9 = *(v6 + 3812);
  memcpy(&__dst->LTC[3185], LTMComputeV1::LTMCompute::globalCurveInputs, 0x404uLL);
  *(v6 + 3812) = v9 | 0xC;
  v10 = &__dst->LTC[3442];
  memcpy(v10, LTMComputeV1::LTMCompute::globalCurveInputs, 0x404uLL);
  gammaCurve = a3->gammaCurve;
  if (gammaCurve)
  {
    if (gammaCurve == 2)
    {
      memcpy(v10, LTMComputeV1::LTMCompute::globalCurveInputs, 0x101uLL);
    }

    else if (gammaCurve == 1)
    {
      for (i = 0; i != 257; ++i)
      {
        v13 = v10[i];
        if (v13 >= 0.0833)
        {
          v14 = (logf((v13 * 12.0) + -0.2847) * 0.17883) + 0.5599;
        }

        else
        {
          v14 = sqrtf(v13 * 3.0);
        }

        v10[i] = v14;
      }
    }
  }

  else
  {
    for (j = 0; j != 257; ++j)
    {
      v16 = v10[j];
      if (v16 >= 0.018)
      {
        v17 = (powf(v16, 0.45) * 1.099) + -0.099;
      }

      else
      {
        v17 = v16 * 4.5;
      }

      v10[j] = v17;
    }
  }

  *(v6 + 3812) |= 0x10u;
  v6[952] = 1.0;
}

void LTMComputeV1::LTMCompute::calculateSpatialCCM(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmComputeMeta *a3, sLtmComputeOutput *a4)
{
  if (a3->useGlobalCCM)
  {
    a4->LTC[3707] = 0.2561;
    *&a4->LTC[3699] = LTMComputeV1::sLtmTuningParams::desaturationCCM;
    *&a4->LTC[3703] = unk_1C93347FC;
    LOBYTE(a4->LTC[9145]) |= 2u;
  }

  if (a3->useSpatialCCM)
  {
    FigGetCFPreferenceDoubleWithDefault();
    v8 = v7;
    FigGetCFPreferenceDoubleWithDefault();
    v9 = 0;
    *&v10 = v10;
    v32 = v8;
    v33 = xmmword_1C9332D70;
    v11 = &a4->LTC[3699];
    v34 = 0;
    v35 = 0;
    v36 = LODWORD(v10);
    do
    {
      v12 = 0;
      v13 = a2->localHist[v9 + 4515] * a2->localHist[4707];
      do
      {
        v14 = v13 * *(&v32 + v12);
        if ((v12 & 0xB) == 0 || v12 == 8)
        {
          v14 = (1.0 - v13) + v14;
        }

        *(v30 + v12++) = v14;
      }

      while (v12 != 9);
      if (a3->useDigitalFlash && a3->useGlobalCCM)
      {
        v16 = 0;
        v17 = &LTMComputeV1::sLtmTuningParams::desaturationCCM;
        do
        {
          v18 = 0;
          v19 = v30;
          do
          {
            v20 = 0;
            v21 = 0.0;
            v22 = v19;
            do
            {
              v23 = *v22;
              v22 += 3;
              v21 = v21 + (*(v17 + v20) * v23);
              v20 += 4;
            }

            while (v20 != 12);
            v24 = v21;
            v11[3 * v16 + v18++] = v24;
            v19 = (v19 + 4);
          }

          while (v18 != 3);
          ++v16;
          v17 = (v17 + 12);
        }

        while (v16 != 3);
        v11 += 9;
        v25 = 1;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 - 3;
      do
      {
        v27 = v30[0];
        v28 = v30[1];
        *(v11 + 8) = v31;
        *v11 = v27;
        *(v11 + 1) = v28;
        v11 += 9;
      }

      while (!__CFADD__(v26++, 1));
      ++v9;
    }

    while (v9 != 192);
    LOBYTE(a4->LTC[9145]) |= 2u;
  }
}

uint64_t LTMComputeV1::LTMCompute::Process(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmComputeMeta_SOFTISP *a3, sLtmComputeOutput *a4)
{
  v7 = &a2->localHist[4092];
  if (LOBYTE(a2->localHist[4710]) == 1)
  {
    LTMComputeV1::sLtmTuningParams::nFlareBins = 0;
  }

  if (a3->ltmComputeMeta.useLinearLTCs)
  {
    LTMComputeV1::LTMCompute::generateLinearLTC(this, a2, &a3->ltmComputeMeta, a4);
  }

  else
  {
    LTMComputeV1::LTMCompute::generateSpatialLTC(this, a2, a3, a4);
  }

  LTMComputeV1::LTMCompute::calculateSpatialCCM(v8, a2, &a3->ltmComputeMeta, a4);
  if (a3->ltmComputeMeta.faceLTMVer == 1)
  {
    memset_pattern16(&a4->LTC[8883], &unk_1C9332DA0, 0x404uLL);
    LOBYTE(a4->LTC[9145]) |= 1u;
  }

  *&a4->LTC[9142] = v7[616];
  return 0;
}

void LTMComputeV1::LTMCompute::HFFspatialMapCalc(LTMComputeV1::LTMCompute *this, int a2, const float *a3, float *a4, float32x4_t *a5)
{
  v97 = this + 8824;
  if (*(this + 8825))
  {
    v10 = 0;
  }

  else
  {
    v11 = 7 * a2;
    *(this + 8825) = 1;
    v10 = (this + 4720);
    if (7 * a2 >= 342)
    {
      v11 = 342;
    }

    bzero(this + 4720, 4 * v11);
  }

  if (a2 >= 1)
  {
    v12 = a2;
    v13 = a3;
    v14 = v10;
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
  }

  qsort(v10, a2, 4uLL, compFloat);
  v16 = 0;
  v17 = 0;
  do
  {
    a4[v16] = v10[(v17 / 5.0)];
    v17 += a2 - 1;
    ++v16;
  }

  while (v16 != 6);
  v18 = v10[a2 - 1];
  v19 = *v10;
  v20 = (6 * a2);
  v21 = v97;
  if (*v97)
  {
    v22 = 0;
  }

  else
  {
    *v97 = 1;
    if (v20 >= 342)
    {
      v23 = 342;
    }

    else
    {
      v23 = 6 * a2;
    }

    bzero(this + 3352, 4 * v23);
    v21 = v97;
    v22 = (this + 3352);
  }

  v24 = v18 - v19;
  if (v21[2])
  {
    v25 = 0;
  }

  else
  {
    v21[2] = 1;
    v25 = (this + 6088);
    if (v20 >= 342)
    {
      v26 = 342;
    }

    else
    {
      v26 = 6 * a2;
    }

    bzero(v25, 4 * v26);
  }

  v27 = 0;
  v28 = 0;
  v29 = ((2.0 / v24) / 1.5) * ((2.0 / v24) / 1.5);
  do
  {
    if (a2 >= 1)
    {
      v30 = &v22->f32[v28];
      v31 = &v25->i8[4 * v28];
      v28 += a2;
      v32 = a2;
      v33 = a3;
      v34 = a4[v27];
      do
      {
        *v30++ = v34;
        v35 = *v33++;
        *v31 = v35;
        v31 += 4;
        --v32;
      }

      while (v32);
    }

    ++v27;
  }

  while (v27 != 6);
  if (v29 < 0.00000011921)
  {
    v29 = 0.00000011921;
  }

  v36 = v20 & 0xFFFFFFFC;
  if (v36 < 1)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v37 = 0;
    v38 = v25;
    v39 = v22;
    do
    {
      v40 = *v39++;
      *v38 = vsubq_f32(*v38, v40);
      ++v38;
      v37 += 4;
    }

    while (v37 < v36);
  }

  if (v37 < v20)
  {
    v41 = v20 - v37;
    v42 = &v22->f32[v37];
    v43 = &v25->f32[v37];
    do
    {
      v44 = *v42++;
      *v43 = *v43 - v44;
      ++v43;
      --v41;
    }

    while (v41);
  }

  v45 = v20 & 0xFFFFFFF0;
  if (v45 < 1)
  {
    LODWORD(v46) = 0;
  }

  else
  {
    v46 = 0;
    v47 = v25 + 2;
    do
    {
      v48 = vmulq_f32(v47[-1], v47[-1]);
      v49 = vmulq_f32(*v47, *v47);
      v50 = vmulq_f32(v47[1], v47[1]);
      v47[-2] = vmulq_f32(v47[-2], v47[-2]);
      v47[-1] = v48;
      *v47 = v49;
      v47[1] = v50;
      v47 += 4;
      v46 += 16;
    }

    while (v46 < v45);
  }

  if (v46 < v20)
  {
    v51 = v20 - v46;
    v52 = &v25->f32[v46];
    do
    {
      *v52 = *v52 * *v52;
      ++v52;
      --v51;
    }

    while (v51);
  }

  v53 = v20 & 0xFFFFFFF8;
  v54 = 1.0 / v29;
  if (v53 < 1)
  {
    LODWORD(v55) = 0;
  }

  else
  {
    v55 = 0;
    v56 = v25 + 1;
    do
    {
      v57 = vmulq_n_f32(*v56, v54);
      v56[-1] = vmulq_n_f32(v56[-1], v54);
      *v56 = v57;
      v55 += 8;
      v56 += 2;
    }

    while (v55 < v53);
  }

  if (v55 < v20)
  {
    v58 = v20 - v55;
    v59 = &v25->f32[v55];
    do
    {
      *v59 = v54 * *v59;
      ++v59;
      --v58;
    }

    while (v58);
  }

  v60 = 0;
  v61 = 0;
  do
  {
    if (a2 >= 1)
    {
      v62 = &v25->f32[v61];
      v61 += a2;
      v63 = a2;
      do
      {
        v64 = 1016466288;
        if (*v62 <= 8888.2)
        {
          v65 = *v62 * 0.5 * 32.0;
          v66 = llroundf(v65);
          if (v66 >= 128)
          {
            v66 = 128;
          }

          v64 = LTMComputeV1::LTMCompute::invExpLutX4[v66];
        }

        *v62++ = v64;
        --v63;
      }

      while (v63);
    }

    ++v60;
  }

  while (v60 != 6);
  v67 = (v29 + v29) * 3.14159265;
  v68 = 1.0 / sqrtf(v67);
  if (v53 < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = 0;
    v70 = v25 + 1;
    do
    {
      v71 = vmulq_n_f32(*v70, v68);
      v70[-1] = vmulq_n_f32(v70[-1], v68);
      *v70 = v71;
      v69 += 8;
      v70 += 2;
    }

    while (v69 < v53);
  }

  if (v69 < v20)
  {
    v72 = v20 - v69;
    v73 = &v25->f32[v69];
    do
    {
      *v73 = v68 * *v73;
      ++v73;
      --v72;
    }

    while (v72);
  }

  if (a2 > 0)
  {
    memset_pattern16(&v10[v20], &unk_1C9332D80, 4 * a2);
  }

  v74 = 0;
  v75 = 0;
  do
  {
    if (a2 >= 1)
    {
      v76 = &v25->f32[v75];
      v77 = &a5->f32[v75];
      v75 += a2;
      v78 = a2;
      v79 = &v10[v20];
      do
      {
        v80 = *v76++;
        *v77++ = v80;
        *v79 = v80 + *v79;
        ++v79;
        --v78;
      }

      while (v78);
    }

    ++v74;
  }

  while (v74 != 6);
  v81 = 0;
  v82 = 0;
  do
  {
    if (a2 >= 1)
    {
      v83 = &v10[v82];
      v82 += a2;
      v84 = a2;
      v85 = &v10[v20];
      do
      {
        v86 = *v85++;
        *v83++ = v86;
        --v84;
      }

      while (v84);
    }

    ++v81;
  }

  while (v81 != 6);
  if (v36 < 1)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    v87 = 0;
    v88 = v10;
    v89 = a5;
    do
    {
      v90 = *v88++;
      v91 = vrecpeq_f32(v90);
      v92 = vmulq_f32(v91, vrecpsq_f32(v90, v91));
      *v89 = vmulq_f32(*v89, vmulq_f32(vrecpsq_f32(v90, v92), v92));
      ++v89;
      v87 += 4;
    }

    while (v87 < v36);
  }

  if (v87 < v20)
  {
    v93 = v20 - v87;
    v94 = &v10[v87];
    v95 = &a5->f32[v87];
    do
    {
      v96 = *v94++;
      *v95 = *v95 / v96;
      ++v95;
      --v93;
    }

    while (v93);
  }

  *v97 = 0;
  v97[2] = 0;
}

unint64_t LTMComputeV1::LTMCompute::HFFspatialMapFilter(LTMComputeV1::LTMCompute *this, int a2, int a3, float *__src, const float *a5)
{
  v10 = a3 * a2;
  if (*(this + 8825))
  {
    v11 = 0;
  }

  else
  {
    v12 = 6 * v10;
    *(this + 8825) = 1;
    v11 = this + 4720;
    if (6 * v10 >= 342)
    {
      v12 = 342;
    }

    bzero(this + 4720, 4 * v12);
  }

  result = memcpy(v11, __src, 24 * v10);
  v14 = 0;
  v15 = 0;
  do
  {
    if (a2 >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = v15;
        v19 = v17;
        v20 = v17 + 1;
        v21 = a5[v17] - a5[v20];
        v22 = llroundf(((v21 * v21) / 0.1089) * 32.0);
        if (v22 >= 128)
        {
          v22 = 128;
        }

        v23 = *&LTMComputeV1::LTMCompute::invExpLutX4[v22];
        v24 = v15 + 1;
        __src[v15] = ((*&v11[4 * v15] + (*&v11[4 * v15] + 0.0)) + (v23 * *&v11[4 * v24])) / (v23 + 2.0);
        if (a3 < 3)
        {
          result = v20;
          v38 = v15 + 1;
        }

        else
        {
          v25 = 0;
          v26 = (v19 << 32) + 0x100000000;
          v27 = &a5[v19 + 2];
          v28 = (v18 << 32) + 0x100000000;
          v29 = &v11[4 * v18 + 4];
          do
          {
            v30 = *(v27 - 1);
            v31 = llroundf((((v30 - *(v27 - 2)) * (v30 - *(v27 - 2))) / 0.1089) * 32.0);
            if (v31 >= 128)
            {
              v31 = 128;
            }

            v32 = *&LTMComputeV1::LTMCompute::invExpLutX4[v31];
            v33 = *v29;
            v34 = *v27++;
            v35 = (v32 * *(v29 - 1)) + 0.0;
            v36 = llroundf((((v30 - v34) * (v30 - v34)) / 0.1089) * 32.0);
            if (v36 >= 128)
            {
              v36 = 128;
            }

            v37 = v29[1];
            ++v29;
            __src[v18 + 1 + v25++] = ((v33 + v35) + (*&LTMComputeV1::LTMCompute::invExpLutX4[v36] * v37)) / (((v32 + 0.00000011921) + 1.0) + *&LTMComputeV1::LTMCompute::invExpLutX4[v36]);
            v26 += 0x100000000;
            v28 += 0x100000000;
          }

          while (a3 - 2 != v25);
          result = (v19 + v25 + 1);
          v38 = v18 + v25 + 1;
          v20 = v26 >> 32;
          v24 = v28 >> 32;
        }

        v39 = llroundf((((a5[v20] - a5[v20 - 1]) * (a5[v20] - a5[v20 - 1])) / 0.1089) * 32.0);
        if (v39 >= 128)
        {
          v39 = 128;
        }

        __src[v24] = (*&v11[4 * v24] + (*&v11[4 * v24] + ((*&LTMComputeV1::LTMCompute::invExpLutX4[v39] * *&v11[4 * v24 - 4]) + 0.0))) / (((*&LTMComputeV1::LTMCompute::invExpLutX4[v39] + 0.00000011921) + 1.0) + 1.0);
        v17 = result + 1;
        v15 = v38 + 1;
        ++v16;
      }

      while (v16 != a2);
    }

    ++v14;
  }

  while (v14 != 6);
  v40 = 0;
  v41 = 0;
  do
  {
    if (v10 >= 1)
    {
      v42 = &__src[v41];
      v43 = &v11[4 * v41];
      v41 += v10;
      v44 = v10;
      do
      {
        v45 = *v42++;
        *v43 = v45;
        v43 += 4;
        --v44;
      }

      while (v44);
    }

    ++v40;
  }

  while (v40 != 6);
  v46 = 0;
  v47 = 0;
  do
  {
    if (a3 < 1)
    {
      v56 = 0;
    }

    else
    {
      v48 = &__src[v47];
      v49 = &v11[4 * v47 + 32];
      v47 += a3;
      result = a3;
      v50 = (a5 + 8);
      do
      {
        v51 = *(v50 - 8);
        v52 = *v50++;
        v53 = llroundf((((v51 - v52) * (v51 - v52)) / 0.1089) * 32.0);
        v54 = *(v49 - 8) + (*(v49 - 8) + 0.0);
        if (v53 >= 128)
        {
          v53 = 128;
        }

        v55 = *v49++;
        *v48++ = (v54 + (*&LTMComputeV1::LTMCompute::invExpLutX4[v53] * v55)) / (*&LTMComputeV1::LTMCompute::invExpLutX4[v53] + 2.0);
        --result;
      }

      while (result);
      v56 = a3;
    }

    if (a2 >= 3)
    {
      v57 = 1;
      do
      {
        if (a3 >= 1)
        {
          v58 = &a5[v56];
          v56 += a3;
          v59 = &__src[v47];
          v60 = &v11[4 * v47];
          v47 += a3;
          v61 = a3;
          do
          {
            v62 = llroundf((((*v58 - *(v58 - 8)) * (*v58 - *(v58 - 8))) / 0.1089) * 32.0);
            if (v62 >= 128)
            {
              v62 = 128;
            }

            v63 = *&LTMComputeV1::LTMCompute::invExpLutX4[v62];
            v64 = (v63 * *(v60 - 8)) + 0.0;
            v65 = (v63 + 0.00000011921) + 1.0;
            v66 = llroundf((((*v58 - v58[8]) * (*v58 - v58[8])) / 0.1089) * 32.0);
            if (v66 >= 128)
            {
              v66 = 128;
            }

            *v59++ = ((*v60 + v64) + (*&LTMComputeV1::LTMCompute::invExpLutX4[v66] * v60[8])) / (v65 + *&LTMComputeV1::LTMCompute::invExpLutX4[v66]);
            ++v58;
            ++v60;
            --v61;
          }

          while (v61);
        }

        result = (v57 + 1);
      }

      while (v57++ != a2 - 2);
    }

    if (a3 >= 1)
    {
      v68 = &v11[4 * v47];
      result = &__src[v47];
      v47 += a3;
      v69 = a3;
      v70 = &a5[v56];
      do
      {
        v71 = llroundf((((*v70 - *(v70 - 8)) * (*v70 - *(v70 - 8))) / 0.1089) * 32.0);
        if (v71 >= 128)
        {
          v71 = 128;
        }

        v72 = *&LTMComputeV1::LTMCompute::invExpLutX4[v71];
        v73 = (v72 * *(v68 - 8)) + 0.0;
        v74 = *v68++;
        *result = (v74 + (v74 + v73)) / (((v72 + 0.00000011921) + 1.0) + 1.0);
        result += 4;
        ++v70;
        --v69;
      }

      while (v69);
    }

    ++v46;
  }

  while (v46 != 6);
  *(this + 8825) = 0;
  return result;
}

void LTMComputeV1::LTMCompute::HFFHighFreqModulate(LTMComputeV1::LTMCompute *this, int a2, int a3, float *a4, float *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8)
{
  v8 = 0;
  v9 = 0;
  v10 = (a3 * a2);
  do
  {
    if (v10 < 1)
    {
      v12 = 0.0;
      v13 = 0.00000011921;
    }

    else
    {
      v11 = &a4[v8];
      v12 = 0.0;
      v13 = 0.00000011921;
      v14 = (a3 * a2);
      v15 = a5;
      do
      {
        v16 = *v11++;
        v17 = v16;
        v18 = *v15++;
        v12 = v12 + (v17 * v18);
        v13 = v13 + v17;
        --v14;
      }

      while (v14);
    }

    a7->f32[v9] = v12;
    a8->f32[v9++] = v13;
    v8 += v10 & ~(v10 >> 31);
  }

  while (v9 != 6);
  v19 = 0;
  v21 = *a8;
  f32 = a8[1].f32;
  v22 = v21;
  v24 = *a7;
  v23 = a7[1].f32;
  v25 = vrecpeq_f32(v22);
  v26 = vmulq_f32(v25, vrecpsq_f32(v22, v25));
  *a6 = vmulq_f32(v24, vmulq_f32(vrecpsq_f32(v22, v26), v26));
  do
  {
    a6[1].f32[v19] = v23[v19] / f32[v19];
    ++v19;
  }

  while (v19 != 2);
  if (a3 >= 1)
  {
    v27 = 0;
    v28 = 0;
    LODWORD(v29) = 0;
    v30 = 4 * v10;
    do
    {
      if (a2 >= 1)
      {
        v31 = 0;
        v29 = v29;
        v32 = v27;
        do
        {
          v33 = 0;
          a5[v29] = 0.0;
          v34 = 0.0;
          v35 = &a4[v32];
          do
          {
            v34 = v34 + (*v35 * a6->f32[v33]);
            a5[v29] = v34;
            v35 = (v35 + v30);
            ++v33;
          }

          while (v33 != 6);
          ++v29;
          ++v31;
          ++v32;
        }

        while (v31 != a2);
      }

      ++v28;
      v27 += a2;
    }

    while (v28 != a3);
  }
}

void LTMDriverV1::LTMDriver::ComputeThumbnailHistogram(LTMDriverV1::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, float a3, sLtmComputeInput *a4)
{
  thumbnailDownsampleY = a2->thumbnailDownsampleY;
  if (a2->thumbnailDownsampleY)
  {
    thumbnailDownsampleY = a2->thumbnailWindow / thumbnailDownsampleY;
  }

  if (a2->thumbnailDownsampleX)
  {
    v8 = HIWORD(a2->thumbnailWindow) / a2->thumbnailDownsampleX;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 * thumbnailDownsampleY;
  v10 = v9;
  v57 = 1.0 / v9;
  thumbnailStat = a2->thumbnailStat;
  v12 = &a4->localHist[4252];
  v13 = &a4->localHist[4316];
  bzero(&a4->localHist[4252], 0x304uLL);
  if (v9)
  {
    v15 = 0;
    thumbnailTotal = a2->thumbnailTotal;
    do
    {
      v16 = &thumbnailStat[2 * v15];
      v17 = *v16;
      v18 = vcvtms_s32_f32(vcvts_n_f32_u32(v17, 0xAuLL));
      if (v18 >= 63)
      {
        v18 = 63;
      }

      *&v19 = v12[v18] + 1.0;
      v12[v18] = *&v19;
      LOWORD(v19) = *(v16 + 4);
      a4->localHist[v18 + 4380] = a4->localHist[v18 + 4380] + v19;
      if (v17 >> 4 > 0xFFE)
      {
        v20 = v18;
      }

      else
      {
        LODWORD(v20) = vcvtms_s32_f32((v17 * a3) * 0.00097656);
        if (v20 >= 63)
        {
          LODWORD(v20) = 63;
        }

        v20 = v20;
      }

      v13[v20] = v13[v20] + 1.0;
      v15 += thumbnailTotal;
      --v9;
    }

    while (v9);
    if (*v12 > 0.0)
    {
      a4->localHist[4494] = a4->localHist[4316] / *v12;
    }
  }

  v21 = &a4->localHist[4256];
  v22 = -8;
  do
  {
    v23 = vmulq_n_f32(*v21, v57);
    v21[-1] = vmulq_n_f32(v21[-1], v57);
    *v21 = v23;
    v22 += 8;
    v21 += 2;
  }

  while (v22 < 0x38);
  v24 = &a4->localHist[4384];
  v25 = -8;
  do
  {
    v26 = vmulq_n_f32(*v24, v57);
    v24[-1] = vmulq_n_f32(v24[-1], v57);
    *v24 = v26;
    v25 += 8;
    v24 += 2;
  }

  while (v25 < 0x38);
  if (a3 < 1.0)
  {
    LODWORD(thumbnailTotal) = vcvtps_s32_f32(a3 * 64.0);
    if (thumbnailTotal <= 63)
    {
      v27 = 0.0;
      v28 = 0.0;
      if (thumbnailTotal >= 1)
      {
        v29 = thumbnailTotal;
        do
        {
          v30 = *v13++;
          v28 = v28 + v30;
          --v29;
        }

        while (v29);
      }

      v31 = v57 * v28;
      v32 = thumbnailTotal;
      v33 = (&LTMDriverV1::LTMDriver::defaultHist + 4 * thumbnailTotal);
      v34 = thumbnailTotal + 1;
      do
      {
        v35 = *v33++;
        v27 = v27 + v35;
      }

      while (v34++ != 64);
      v37 = ((1.0 - v31) * v10) / v27;
      v38 = (64 - thumbnailTotal);
      v39 = v38 & 0xFFFFFFF8;
      if (v39 < 1)
      {
        LODWORD(v40) = 0;
      }

      else
      {
        v40 = 0;
        v41 = &a4->localHist[v32 + 4320];
        v42 = (&LTMDriverV1::LTMDriver::defaultHist + 4 * v32 + 16);
        do
        {
          v43 = vaddq_f32(vmulq_n_f32(*v42, v37), 0);
          *(v41 - 1) = vaddq_f32(vmulq_n_f32(v42[-1], v37), 0);
          *v41 = v43;
          v40 += 8;
          v41 += 8;
          v42 += 2;
        }

        while (v40 < v39);
      }

      if (v40 < v38)
      {
        v44 = v38 - v40;
        v45 = 4 * v32 + 4 * v40;
        v46 = (&a4->localHist[4316] + v45);
        v47 = (&LTMDriverV1::LTMDriver::defaultHist + v45);
        do
        {
          v48 = *v47++;
          *v46++ = (v48 * v37) + 0.0;
          --v44;
        }

        while (v44);
      }
    }
  }

  v49 = a4->localHist[4379];
  v50 = v10 - v49;
  v51 = fminf(v49, 1.0);
  v52 = v50 + v51;
  v53 = 2.0 / (v52 + v10);
  a4->localHist[4379] = v51;
  a4->localHist[4495] = v52 / v10;
  v54 = &a4->localHist[4320];
  v55 = -8;
  do
  {
    v56 = vmulq_n_f32(*v54, v53);
    v54[-1] = vmulq_n_f32(v54[-1], v53);
    *v54 = v56;
    v55 += 8;
    v54 += 2;
  }

  while (v55 < 0x38);
}

uint64_t LTMDriverV1::LTMDriver::Process(LTMDriverV1::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, sRefDriverInputs_SOFTISP *a3, sLtmComputeInput *a4)
{
  v8 = this + 0x4000;
  v9 = &a4->localHist[4092];
  *(this + 2386) = 0;
  *(this + 1192) = 0u;
  bzero(a4, 0x4A70uLL);
  LTMDriverV1::LTMDriver::ComputeLocalHistograms(v10, a2, a4);
  LTMDriverV1::LTMDriver::ComputeGlobalHistogram(v11, a2, a4);
  v16 = LTMDriverV1::LTMDriver::computeFaceWeightForTone(v12, a3, a4, v13, v14, v15);
  LTMDriverV1::LTMDriver::HFFThumbnailDownscaleConvert(v16, a2, a4, v17, v18);
  *(v9 + 1236) = *&a3->LTMHazeCorrectionOff;
  v9[667] = *&a3[1].flashMixPercentage[400];
  v20 = AuxCompute::CalcTotalGainDown(a3, v19);
  exposureTime = a3->exposureTime;
  v9[617] = (a3->gainAnal.v16 * a3->gainDigi * a3->overflowDGain * a3->ev0Ratio * exposureTime) / 4.295e15;
  v9[401] = fmaxf(a3->luxLevel, 0.0001);
  hardIspDGain = a3->hardIspDGain;
  v23 = 20.0;
  v9[410] = 1.0 - fminf(fmaxf(a3->softIspDGain + -12.0, 0.0) / 20.0, 1.0);
  LOWORD(v23) = a3->gainDigiSensor.v16;
  *&v24 = v23;
  v25 = exposureTime * *&v24;
  LOWORD(v24) = a3->gainAnal.v16;
  v9[616] = (hardIspDGain * (v25 * v24)) / v20;
  v27 = AuxCompute::CalcExposureRatio(a3, v26);
  v28 = a3->hardIspDGain;
  v29 = v27 / v28;
  v9[404] = v29;
  expBias = a3->expBias;
  realizedExpBias = a3->realizedExpBias;
  if (expBias > 0xFF)
  {
    if (expBias >= realizedExpBias)
    {
      expBias = a3->realizedExpBias;
    }

    v32 = fmaxf(vcvts_n_f32_u32(expBias, 8uLL), 1.0);
  }

  else
  {
    if (expBias <= realizedExpBias)
    {
      expBias = a3->realizedExpBias;
    }

    v32 = fminf(vcvts_n_f32_u32(expBias, 8uLL), 1.0);
  }

  v9[405] = v32;
  v9[406] = v29 / fmaxf(v32, 1.0);
  v9[408] = fmaxf(v9[617] * 0.5, 1.0);
  v9[407] = fmaxf(a3->faceExpRatioFiltered, 1.0);
  v9[409] = powf(fmaxf(((a3->overflowDGain * a3->gainDigi) / 65535.0) + -16.0, 0.0) / 80.0, 1.5);
  v34 = LTMDriverV1::LTMDriver::ComputeLumaFromThumbnail(v33, a2, v28, a4);
  LTMDriverV1::LTMDriver::ComputeThumbnailHistogram(v34, a2, v9[406], a4);
  v35 = 0;
  v36 = a3->ltmProcMode == 1;
  *(v8 + 674) = a3->gammaCurve;
  v8[2691] = v36;
  v8[2689] = a3->useSpatialCCM;
  v8[2690] = 0;
  v8[2692] = a3->flashStatus;
  *(v8 + 338) = 0x4000000000000001;
  do
  {
    v37 = (this + v35 * 2);
    v37[1194] = *(&a3[1].hdrRatio + v35 * 2);
    v38 = *(&a3[1].bracketingMode + v35 * 2);
    v39 = *(&a3[1].useSpatialCCM + v35 * 2);
    v40 = *(&a3[1].LTMGridConfig.height + v35 * 2);
    v37[1198] = *(&a3[1].localHistGridConfig.height + v35 * 2);
    v37[1197] = v40;
    v37[1196] = v39;
    v37[1195] = v38;
    v41 = *&a3[1].flashMixPercentage[v35 + 6];
    v42 = *&a3[1].flashMixPercentage[v35 + 14];
    v43 = *&a3[1].flashMixPercentage[v35 + 22];
    v37[1202] = *&a3[1].flashMixPercentage[v35 + 30];
    v37[1201] = v43;
    v37[1200] = v42;
    v37[1199] = v41;
    v35 += 72;
  }

  while (v35 != 432);
  v8[3584] = a3[1].flashMixPercentage[398];
  v8[2712] = a3->channel;
  LTMDriverV1::LTMDriver::UpdateColorInformation(this, a4, a3, a2);
  return 0;
}

void LTMDriverV1::LTMDriver::ComputeLocalHistograms(LTMDriverV1::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, sLtmComputeInput *a3)
{
  v4 = (a2->localHistBlockSizeY * a2->localHistBlockSizeX) >> (a2->localHistCountBitShift + 1);
  localHistStat = a2->localHistStat;
  v6 = malloc_type_malloc(0x80uLL, 0x1000040BDFB0063uLL);
  v7 = 0;
  v8 = 1.0 / v4;
  v9 = a3;
  do
  {
    v10 = 0;
    v11 = 0;
    v12 = *(localHistStat + 20);
    v13 = *(localHistStat + 52);
    v14 = *(localHistStat + 4);
    *(v6 + 2) = *(localHistStat + 36);
    *(v6 + 3) = v13;
    *v6 = v14;
    *(v6 + 1) = v12;
    v15 = *(localHistStat + 68);
    v16 = *(localHistStat + 84);
    v17 = *(localHistStat + 116);
    *(v6 + 6) = *(localHistStat + 100);
    *(v6 + 7) = v17;
    *(v6 + 4) = v15;
    *(v6 + 5) = v16;
    v18 = *v6 + *localHistStat;
    *v6 = v18;
    *v6 = v18 + *(localHistStat + 1);
    v19 = v6[63] + *(localHistStat + 67);
    v6[63] = v19;
    v6[63] = v19 + *(localHistStat + 66);
    do
    {
      v20 = v6[v10];
      v11 += v20;
      *(&v9->rotationMagnitude + v10++) = v8 * v20;
    }

    while (v10 != 63);
    v21 = 0;
    v22 = fmax((v4 - v11), 0.0) * v8;
    v9->localHist[59] = v22;
    v23 = -4;
    do
    {
      *&a3->localHist[v21 + 3068] = vaddq_f32(*&a3->localHist[v21 + 3068], *(&v9->rotationMagnitude + v21 * 4));
      v23 += 4;
      v21 += 4;
    }

    while (v23 < 0x3C);
    localHistStat += 136;
    v9 = (v9 + 256);
    ++v7;
  }

  while (v7 != 48);
  free(v6);
  v24 = &a3->localHist[3072];
  v25 = -8;
  v26 = vdupq_n_s32(0x3CAAAAABu);
  do
  {
    v27 = vmulq_f32(*v24, v26);
    v24[-1] = vmulq_f32(v24[-1], v26);
    *v24 = v27;
    v25 += 8;
    v24 += 2;
  }

  while (v25 < 0x38);
}

void LTMDriverV1::LTMDriver::ComputeGlobalHistogram(LTMDriverV1::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, sLtmComputeInput *a3)
{
  v3 = 0;
  v4 = &a3->localHist[3132];
  v5 = (HIWORD(a2->globalHistWindow) * a2->globalHistWindow) >> 1;
  globalHistStat = a2->globalHistStat;
  v7 = 1.0 / v5;
  do
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *&globalHistStat[v8 * 4];
      v9 += v10;
      v4[v8++] = v7 * v10;
    }

    while (v8 != 255);
    v11 = fmax((v5 - v9), 0.0) * v7;
    v4[255] = v11;
    globalHistStat += 1024;
    v4 += 256;
    ++v3;
  }

  while (v3 != 4);
}

uint64_t LTMDriverV1::LTMDriver::computeFaceWeightForTone(LTMDriverV1::LTMDriver *this, const sRefDriverInputs_SOFTISP *a2, sLtmComputeInput *a3, double a4, double a5, uint64x2_t a6)
{
  if (LTMDriverV1::LTMDriver::computeFaceWeightForTone(sRefDriverInputs_SOFTISP const*,sLtmComputeInput *)::onceToken != -1)
  {
    LTMDriverV1::LTMDriver::computeFaceWeightForTone();
  }

  width = a2->LTMGridConfig.width;
  height = a2->LTMGridConfig.height;
  v72 = 0u;
  v73 = 0u;
  memset(v71, 0, sizeof(v71));
  v10 = &a3->localHist[4445];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  if (!a2->forceDisableFaceBoost)
  {
    numFaces = a2->faceInfo.numFaces;
    if (numFaces)
    {
      v12 = 0;
      v13 = width;
      v14 = height;
      v15 = sqrtf((width * height));
      v16 = width / v15;
      v57 = height / v15;
      p_faceInfo = &a2->faceInfo;
      x = a2->LTMGridConfig.x;
      y = a2->LTMGridConfig.y;
      v51 = x;
      __asm { FMOV            V1.4S, #1.0 }

      v55 = vdupq_n_s64(2uLL);
      v24 = vdupq_n_s64(6uLL);
      v54 = v24;
      __asm { FMOV            V14.2S, #1.0 }

      v60 = v16;
      v56 = _Q1;
      do
      {
        v26 = 0;
        v27 = &p_faceInfo->rectArray[v12];
        v28 = v27->height / v14;
        v29 = fmaxf((v27->y - y), 0.0);
        v24.f32[0] = v28 * 0.5;
        v53 = *v24.f32;
        v24.f32[0] = v27->width / v13;
        _Q1.f32[0] = fminf(v24.f32[0], 1.0);
        v24.f32[0] = v24.f32[0] * 0.5;
        *a6.i32 = v24.f32[0] + (fmaxf((v27->x - v51), 0.0) / v13);
        v61 = vdupq_lane_s32(*a6.i8, 0);
        _Q1.f32[0] = sqrtf(_Q1.f32[0]);
        v58 = vdupq_lane_s32(*_Q1.f32, 0);
        v59 = vdupq_lane_s32(*v24.f32, 0);
        v30 = xmmword_1C93323B0;
        do
        {
          v63 = v30;
          v69 = vaddq_f32(vmulq_n_f32(vmaxnmq_f32(vsubq_f32(vabdq_f32(vcvtq_f32_u32(v30), v61), v59), 0), v16), v56);
          v65 = powf(*&v69.i32[1], 4.0);
          v31.f32[0] = powf(*v69.i32, 4.0);
          v31.f32[1] = v65;
          v66 = v31;
          v32 = powf(*&v69.i32[2], 4.0);
          v33 = v66;
          v33.f32[2] = v32;
          v67 = v33;
          v34 = powf(*&v69.i32[3], 4.0);
          v16 = v60;
          v35 = v67;
          v35.f32[3] = v34;
          *(&v72 + v26) = vdivq_f32(v58, v35);
          v35.i64[0] = 0x400000004;
          v35.i64[1] = 0x400000004;
          v30 = vaddq_s32(v63, v35);
          v26 += 16;
        }

        while (v26 != 32);
        v36 = 0;
        v37 = *v53.i32 + (v29 / v14);
        v38 = sqrtf(fminf(v28, 1.0));
        v39 = vdup_lane_s32(v53, 0);
        v40 = v71 + 1;
        a6 = xmmword_1C932FAF0;
        do
        {
          v68 = vmovn_s64(vcgtq_u64(v54, a6)).u8[0];
          v70 = a6;
          v41.f32[0] = v36 - v37;
          v41.f32[1] = (v36 + 1) - v37;
          v42 = vadd_f32(vmul_n_f32(vmaxnm_f32(vsub_f32(vabs_f32(v41), v39), 0), v57), _D14);
          v62 = v42.f32[0];
          v64 = powf(v42.f32[1], 4.0);
          v43 = powf(v62, 4.0);
          if (v68)
          {
            *(v40 - 1) = v38 / v43;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v70)).i32[1])
          {
            *v40 = v38 / v64;
          }

          v36 += 2;
          a6 = vaddq_s64(v70, v55);
          v40 += 2;
        }

        while (v36 != 6);
        v44 = 0;
        v45 = 0;
        v24 = v72;
        _Q1 = v73;
        do
        {
          v46 = *(v71 + v44);
          v47 = v45;
          v48 = &v10[v45];
          v49 = vmlaq_n_f32(v48[1], _Q1, v46);
          *v48 = vmlaq_n_f32(*v48, v24, v46);
          v48[1] = v49;
          v44 += 4;
          v45 = v47 + 8;
        }

        while (v44 != 24);
        ++v12;
        v16 = v60;
      }

      while (v12 != numFaces);
    }
  }

  return 0;
}

void LTMDriverV1::LTMDriver::HFFThumbnailDownscaleConvert(LTMDriverV1::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, sLtmComputeInput *a3, double a4, float a5)
{
  thumbnailStat = a2->thumbnailStat;
  v6 = &a3->localHist[4711];
  *&a3->localHist[4751] = 0u;
  *&a3->localHist[4755] = 0u;
  *&a3->localHist[4743] = 0u;
  *&a3->localHist[4747] = 0u;
  *&a3->localHist[4735] = 0u;
  *&a3->localHist[4739] = 0u;
  *&a3->localHist[4727] = 0u;
  *&a3->localHist[4731] = 0u;
  *&a3->localHist[4719] = 0u;
  *&a3->localHist[4723] = 0u;
  *&a3->localHist[4711] = 0u;
  *&a3->localHist[4715] = 0u;
  v7 = 1;
  thumbnailTotal = a2->thumbnailTotal;
  do
  {
    v9 = thumbnailTotal * ((34 * v7) | 1);
    for (i = 1; i != 33; ++i)
    {
      LOWORD(a5) = thumbnailStat[v9];
      v11 = ((2 * v7 - 2) & 0xFFFFFFF8) + ((i - 1 + (((i - 1) >> 13) & 3)) >> 2);
      a5 = v6[v11] + (LODWORD(a5) / 65535.0);
      v6[v11] = a5;
      v9 += thumbnailTotal;
    }

    ++v7;
  }

  while (v7 != 25);
  v12 = 0;
  v13 = vdup_n_s32(0x3D800000u);
  v16 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
  do
  {
    v14 = vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(vmul_f32(*&v6[v12], v13)), v16));
    v17 = v14.f32[0];
    v18 = logf(v14.f32[1]);
    *&v15 = logf(v17);
    *(&v15 + 1) = v18;
    *&v6[v12] = v15;
    v12 += 2;
  }

  while (v12 != 48);
}

unsigned __int16 *LTMDriverV1::LTMDriver::ComputeLumaFromThumbnail(LTMDriverV1::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, float a3, sLtmComputeInput *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = a2->thumbnailWindow / a2->thumbnailDownsampleY;
  v7 = HIWORD(a2->thumbnailWindow) / a2->thumbnailDownsampleX;
  v8 = a3 / 65535.0;
  thumbnailStat = a2->thumbnailStat;
  v10 = ((v6 - 24) / 2);
  v11 = &a4->localHist[4156];
  v12 = &a4->localHist[4204];
  do
  {
    if (v10 <= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v10;
    }

    if (v6 >= v10 + 6)
    {
      v14 = v10 + 6;
    }

    else
    {
      v14 = v6;
    }

    v15 = v13 - 2;
    v16 = v4;
    v4 += 8;
    v17 = ((v7 - 32) / 2);
    v18 = 34 * v13 - 70;
    do
    {
      if (v17 <= 2)
      {
        result = 2;
      }

      else
      {
        result = v17;
      }

      v20 = 0.0;
      v21 = 0.0;
      if (v15 < v14)
      {
        v22 = 0;
        v23 = 0;
        v24 = v18 + result;
        v25 = result - 1;
        v26 = result - 2;
        v27 = v17 + 6;
        if (v7 < v17 + 6)
        {
          v27 = v7;
        }

        thumbnailTotal = a2->thumbnailTotal;
        v29 = v27;
        v30 = thumbnailTotal * v24;
        result = (17 * thumbnailTotal);
        v31 = v15;
        do
        {
          v32 = v30;
          v33 = v25;
          if (v26 < v29)
          {
            do
            {
              result = &thumbnailStat[2 * v32];
              v34 = result[2];
              if (result[1] > v34)
              {
                v34 = result[1];
              }

              v35 = result[3];
              if (v35 <= v34)
              {
                v35 = v34;
              }

              if (v35 > v23)
              {
                v22 = *result;
                v23 = v35;
              }

              v33 = (v33 + 1);
              v32 += thumbnailTotal;
            }

            while (v33 < v29);
          }

          ++v31;
          v30 += 34 * thumbnailTotal;
        }

        while (v31 < v14);
        v20 = v23;
        v21 = v22;
      }

      v11[v16] = fminf(v8 * v20, 1.0);
      v12[v16++] = fminf(v21, 65535.0) / 65535.0;
      v17 += 4;
    }

    while (v4 != v16);
    v10 += 4;
    ++v5;
  }

  while (v5 != 6);
  return result;
}

void LTMDriverV1::LTMDriver::UpdateColorInformation(LTMDriverV1::LTMDriver *this, sLtmComputeInput *a2, const sRefDriverInputs_SOFTISP *a3, const sCLRProcHITHStat_SOFTISP *a4)
{
  v6 = &a2->localHist[4092];
  if (a3->awbColorspace)
  {
    v7 = LTMDriverV2::LTMDriver::GamutBoundaryRatio(this, a4);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 826) = v7;
  v8 = 18040;
  v9 = 1140;
  HIWORD(v10) = -14464;
  HIWORD(v11) = 14720;
  do
  {
    v12 = *(&a3->HROn + v9);
    v13 = v12;
    if (*(&a3->HROn + v9) < 0)
    {
      v13 = v12 + -65536.0;
    }

    *(&a2->rotationMagnitude + v8) = v13 * 0.00024414;
    v8 += 4;
    v9 += 2;
  }

  while (v9 != 1158);
  if (a3->useSpatialCCM)
  {
    LOWORD(v10) = *(&a3->isLEDMainFlashforAWB + 1);
    v14 = v10;
    if (a3->isLEDMainFlashforAWB)
    {
      LOWORD(v11) = *(&a3->awbGainsSkinOnly.b.v16 + 1);
      *&v15 = v11;
      *&v16 = *&v15 / v14;
      v6[411] = *&v16;
      LOWORD(v16) = *(&a3->awbGainsFlashProj.gb.v16 + 1);
      LOWORD(v15) = *(&a3->awbGains.gb.v16 + 1);
      v6[412] = v16 / v15;
      v6[615] = 1.0;

      LTMDriverV1::LTMDriver::CalculateSpatialCCMWeightMapForLEDFlash(v7, a3, a2);
    }

    else
    {
      LOWORD(v11) = *(&a3->awbGains.b.v16 + 1);
      *&v17 = v11;
      *&v18 = *&v17 / v14;
      v6[411] = *&v18;
      LOWORD(v18) = *(&a3->awbGainsSkinOnly.gb.v16 + 1);
      LOWORD(v17) = *(&a3->awbGains.gb.v16 + 1);
      v6[412] = v18 / v17;
      v6[615] = a3->fdAWBChistMixFactor * 0.0039062;

      LTMDriverV1::LTMDriver::ComputeSpatialCCMWeightMap(v7, a3, a2);
    }
  }
}

void LTMDriverV1::LTMDriver::ComputeSpatialCCMWeightMap(LTMDriverV1::LTMDriver *this, const sRefDriverInputs_SOFTISP *a2, sLtmComputeInput *a3)
{
  numFaces = a2->faceInfo.numFaces;
  AuxCompute::CalcLTMspatialCCMSize(&a2->tileStatsRegion, 0, v39);
  if (numFaces < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = (16 * v39[4]);
    v8 = (12 * v39[5]);
    v9 = v40;
    v10 = v41;
    v11 = 0.0;
    do
    {
      v12 = 0;
      LODWORD(v13) = 0;
      v14 = &a2->faceInfo.rectArray[v6];
      v15 = fmaxf((v14->x - v9) / v7, 0.0);
      v16 = fmaxf((v14->y - v10) / v8, 0.0);
      v17 = v15 * 16.0;
      v18 = v16 * 12.0;
      v19 = (v15 + fminf(v14->width / v7, 1.0)) * 16.0;
      v20 = (v16 + fminf(v14->height / v8, 1.0)) * 12.0;
      v21 = ((v15 * 16.0) + v19) * 0.5;
      v22 = ((v16 * 12.0) + v20) * 0.5;
      v23 = (fmaxf(v21, 16.0 - v21) + -0.5) + (fmaxf(v22, 12.0 - v22) + -0.5);
      do
      {
        v24 = 0;
        v25 = v12;
        v26 = v12 + 0.5;
        if (v26 <= v22)
        {
          v27 = (v22 - v12) + -0.5;
        }

        else
        {
          v27 = v26 - v22;
        }

        v28 = v18 > v25;
        if (v20 < v25)
        {
          v28 = 1;
        }

        v29 = fminf(++v12, v20) - fmaxf(v25, v18);
        v13 = v13;
        do
        {
          v30 = v24;
          v31 = v24 + 0.5;
          if (v31 <= v21)
          {
            v32 = (v21 - v24) + -0.5;
          }

          else
          {
            v32 = v31 - v21;
          }

          v33 = fmaxf(fminf(1.0 - ((v27 + v32) / v23), 1.0), 0.0);
          v34 = v17 > v30 || v28;
          if ((v34 & 1) != 0 || v19 < v30)
          {
            ++v24;
          }

          else
          {
            v35 = v29 * (fminf(++v24, v19) - fmaxf(v30, v17));
            if (v35 > v33)
            {
              v33 = v35;
            }
          }

          if (v33 > v11)
          {
            v11 = v33;
          }

          a3->localHist[v13 + 4515] = fmaxf(v33, a3->localHist[v13 + 4515]);
          ++v13;
        }

        while (v24 != 16);
      }

      while (v12 != 12);
      ++v6;
    }

    while (v6 != numFaces);
  }

  v36 = 0;
  v37 = &a3->localHist[4515];
  do
  {
    v38 = 0;
    do
    {
      if (v11 > 0.0)
      {
        v37[v38] = v37[v38] / v11;
      }

      ++v38;
    }

    while ((v38 * 4) != 64);
    ++v36;
    v37 += 16;
  }

  while (v36 != 12);
}

_DWORD *LTMDriverV1::LTMDriver::CalculateSpatialCCMWeightMapForLEDFlash(LTMDriverV1::LTMDriver *this, const sRefDriverInputs_SOFTISP *a2, sLtmComputeInput *a3)
{
  v3 = 0;
  flashMixPercentage = a2->flashMixPercentage;
  v5.i64[0] = 0x1000100010001;
  v5.i64[1] = 0x1000100010001;
  do
  {
    v5 = vmaxq_u16(*&flashMixPercentage[v3], v5);
    v3 += 8;
  }

  while (v3 != 256);
  v6 = 0;
  v5.i16[0] = vmaxvq_u16(v5);
  *v5.i32 = v5.u32[0];
  p_flashProjMixWeighting = &a2->flashProjMixWeighting;
  v8 = vdupq_lane_s32(*v5.i8, 0);
  v9 = vld1q_dup_f32(p_flashProjMixWeighting);
  do
  {
    v10 = *flashMixPercentage;
    flashMixPercentage += 8;
    v11 = &v39[v6 + 17];
    *v11 = vmulq_f32(v9, vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v10.i8)), v8));
    v11[1] = vmulq_f32(v9, vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v10)), v8));
    v6 += 8;
  }

  while (v6 != 256);
  v12 = 0;
  v13 = xmmword_1C932FAF0;
  v14 = vdupq_n_s64(0x11uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v14, v13)).u8[0])
    {
      *&v39[v12] = vcvts_n_f32_u32(v12, 4uLL);
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11uLL), *&v13)).i32[1])
    {
      *&v39[v12 + 1] = vcvts_n_f32_u32(v12 + 1, 4uLL);
    }

    v12 += 2;
    v13 = vaddq_s64(v13, v15);
  }

  while (v12 != 18);
  v16 = 0;
  v39[0] = 0;
  v39[16] = 1065353216;
  v17 = xmmword_1C932FAF0;
  v18 = vdupq_n_s64(0x11uLL);
  v19 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v18, v17)).u8[0])
    {
      *&v38[v16] = vcvts_n_f32_u32(v16, 4uLL);
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11uLL), *&v17)).i32[1])
    {
      *&v38[v16 + 1] = vcvts_n_f32_u32(v16 + 1, 4uLL);
    }

    v16 += 2;
    v17 = vaddq_s64(v17, v19);
  }

  while (v16 != 18);
  LODWORD(v20) = 0;
  v21 = 0;
  v22 = 0;
  v38[0] = 0;
  v38[16] = 1065353216;
  v23 = &a3->localHist[4515];
  do
  {
    ++v22;
    v24 = v21;
    do
    {
      if ((v22 / 12.0) <= *&v38[v24])
      {
        break;
      }

      ++v24;
    }

    while (v24 != 17);
    v25 = 0;
    v26 = 0;
    if (v24 >= 16)
    {
      LODWORD(v24) = 16;
    }

    v20 = v20;
    result = &v39[16 * v21 + 17];
    do
    {
      ++v26;
      LODWORD(v28) = v25;
      if (v25 <= 16)
      {
        v29 = vcvts_n_f32_u32(v26, 4uLL);
        v28 = v25;
        do
        {
          if (v29 <= *&v39[v28])
          {
            break;
          }

          ++v28;
        }

        while (v28 != 17);
      }

      if (v28 >= 16)
      {
        LODWORD(v28) = 16;
      }

      if (v21 >= v24)
      {
        v37 = NAN;
      }

      else
      {
        v30 = 0;
        v31 = &result[v25];
        v32 = 0.0;
        v33 = v21;
        do
        {
          if (v28 > v25)
          {
            v34 = v28 - v25;
            v35 = v31;
            do
            {
              v36 = *v35++;
              v32 = v32 + v36;
              --v34;
            }

            while (v34);
            v30 += v28 - v25;
          }

          ++v33;
          v31 += 16;
        }

        while (v33 != v24);
        v37 = v32 / v30;
      }

      v25 = v28 - 1;
      v23[v20++] = v37;
    }

    while (v26 != 16);
    v21 = v24 - 1;
  }

  while (v22 != 12);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

void sub_1C9317AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFigCaptureGetModelSpecificNameSymbolLoc_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!CMCaptureLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CMCaptureLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E833AD40;
    v6 = 0;
    CMCaptureLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = CMCaptureLibraryCore_frameworkLibrary_0;
  if (!CMCaptureLibraryCore_frameworkLibrary_0)
  {
    __getFigCaptureGetModelSpecificNameSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "FigCaptureGetModelSpecificName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigCaptureGetModelSpecificNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CMCaptureLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CMCaptureLibraryCore_frameworkLibrary_0 = result;
  return result;
}

double GeometryUtilitiesGetFinalCropRect()
{
  v6 = *MEMORY[0x1E695F050];
  if (!FigCFDictionaryGetCGRectIfPresent())
  {
    *&v6 = 0;
    __asm { FMOV            V0.2D, #1.0 }
  }

  return *&v6;
}

void CAWBAFEPhotometerAssistPenrose::CAWBAFEPhotometerAssistPenrose(CAWBAFEPhotometerAssistPenrose *this, char a2, int a3)
{
  *this = &unk_1F48DEA28;
  *(this + 3) = &tfChromaHistTuningParamsDefault;
  *(this + 8) = 0;
  v3 = &photometerTuningParamsPenroseJ5x;
  v4 = 3;
  switch(a3)
  {
    case 13:
      v3 = &photometerTuningParamsHawking;
      v4 = 1;
      goto LABEL_8;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 23:
    case 24:
    case 25:
    case 28:
    case 29:
    case 32:
    case 33:
    case 34:
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
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 68:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
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
      goto LABEL_7;
    case 19:
    case 20:
    case 21:
    case 22:
    case 26:
    case 27:
    case 88:
    case 89:
    case 90:
    case 91:
      goto LABEL_8;
    case 30:
    case 31:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 66:
    case 67:
    case 69:
    case 70:
    case 71:
    case 72:
    case 79:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 121:
      *(this + 8) = 1;
      v3 = &photometerTuningParamsPenroseV2_CEPSTRUM;
      goto LABEL_6;
    case 64:
    case 65:
      goto LABEL_5;
    default:
      if ((a3 - 231) <= 0xA && ((1 << (a3 + 25)) & 0x66F) != 0)
      {
LABEL_5:
        *(this + 8) = 1;
        v3 = &photometerTuningParamsPenroseOrangeMask;
LABEL_6:
        v4 = 4;
      }

      else
      {
LABEL_7:
        v4 = 0;
        v3 = &photometerTuningParamsDefault;
      }

LABEL_8:
      *(this + 3) = v4;
      *(this + 2) = v3;
      *(this + 32) = a2;
      return;
  }
}

void CAWBAFEPhotometerAssistPenrose::updatePhotometerDetectionOutput(CAWBAFEPhotometerAssistPenrose *this, float32x2_t *a2, float a3)
{
  v4 = *(this + 3);
  if (v4)
  {
    v6 = a2->u8[3];
    if (v6 <= 7)
    {
      LOBYTE(v6) = v6 + 1;
      a2->i8[3] = v6;
    }

    if (v6 == 1)
    {
      v7 = a2[2].f32[1];
      LOWORD(a3) = a2->i16[2];
      v10 = LODWORD(a3);
      v11 = a2[6].f32[1];
      v9 = a2[14].f32[1];
      v12 = a2[22].f32[1];
    }

    else if (v6 == 2)
    {
      v7 = a2[3].f32[0];
      a2[2].f32[1] = v7;
      v8 = a2->u16[3];
      a2->i16[2] = v8;
      v9 = a2[15].f32[0];
      a2[14].f32[1] = v9;
      v10 = v8;
      v11 = (a2[7].f32[0] * 0.5) + (a2[6].f32[1] * 0.5);
      v12 = (a2[23].f32[0] * 0.5) + (a2[22].f32[1] * 0.5);
    }

    else
    {
      v13 = *(this + 2);
      v14 = *v13;
      if (*v13)
      {
        v15 = a2->u8[2];
        v16 = (v13 + 4);
        v12 = 0.0;
        v9 = 0.0;
        v11 = 0.0;
        v10 = 0.0;
        v7 = 0.0;
        do
        {
          v17 = (((v15 >> 12) & 8) + v15);
          v18 = a2[2].f32[v17 + 1];
          v19 = *v16++;
          v7 = v7 + (v18 * v19);
          LOWORD(v18) = a2->i16[v17 + 2];
          v10 = v10 + (LODWORD(v18) * v19);
          v11 = v11 + (a2[6].f32[v17 + 1] * v19);
          v9 = v9 + (a2[14].f32[v17 + 1] * v19);
          v12 = v12 + (a2[22].f32[v17 + 1] * v19);
          --v15;
          --v14;
        }

        while (v14);
      }

      else
      {
        v7 = 0.0;
        v10 = 0.0;
        v11 = 0.0;
        v9 = 0.0;
        v12 = 0.0;
      }
    }

    v106 = v12;
    v112 = v10;
    v20 = 0;
    v21 = 0.0;
    v22 = a2->u8[2];
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = &a2[6] + 4;
    v27 = a2 + 4;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    do
    {
      v34 = ((((v22 - v20) >> 12) & 8) + v22 - v20);
      v35 = *&v26[4 * v34];
      v33 = v33 + v35;
      v32 = v32 + (v35 * v35);
      v36 = a2[2].f32[v34 + 1];
      v31 = v31 + v36;
      v37 = *&v27[2 * v34];
      v30 = v30 + (v36 * v36);
      v29 = v29 + v37;
      v28 = v28 + (v37 * v37);
      v38 = a2[14].f32[v34 + 1];
      v25 = v25 + v38;
      v24 = v24 + (v38 * v38);
      v39 = a2[22].f32[v34 + 1];
      v23 = v23 + v39;
      v21 = v21 + (v39 * v39);
      ++v20;
    }

    while (v6 > v20);
    v103 = v6;
    v104 = v33 / v103;
    v105 = v29 / v103;
    v40 = *(this + 2);
    v110 = sqrtf((v28 / v103) - (v105 * v105));
    v111 = sqrtf((v32 / v103) - (v104 * v104));
    v113 = v7;
    v109 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v7, this, v40 + 19);
    v100 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v112, v41, v40 + 28);
    v107 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v11, v42, v40 + 10);
    v99 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v9, v43, v40 + 37);
    a2[27].i32[0] = 0;
    if (v6 <= 2u && *(this + 8) == 1 && a2->i8[1] == 1 && v106 > 500.0 && v11 > 0.3)
    {
      a2[27].i32[0] = 1;
    }

    v98 = (v109 * v100) * v107;
    v108 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v113, v44, v40 + 64);
    v101 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v110, v45, v40 + 82);
    v95 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v11, v46, v40 + 55);
    v93 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v111, v47, v40 + 73);
    v50 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v9, v48, v40 + 46);
    HIWORD(v51) = HIWORD(v95);
    v52 = ((v108 * v101) * v95) * v93;
    v94 = v50;
    v53 = v52 * v50;
    v54 = 0.0;
    if (v6 < 3u)
    {
      v53 = 0.0;
    }

    v102 = v53;
    if (v6 >= 3u)
    {
      LOWORD(v53) = *&v27[2 * v22];
      v55 = LODWORD(v53);
      v56 = v40[7];
      v57 = v40[8];
      if (v56 > v55)
      {
        v55 = v40[7];
      }

      v58 = *&v26[4 * v22];
      if (v57 > v58)
      {
        v58 = v40[8];
      }

      v59 = v22 - 1;
      if (!v22)
      {
        v59 = 7;
      }

      LOWORD(v51) = *&v27[2 * v59];
      v60 = v51;
      if (v56 > v60)
      {
        v60 = v40[7];
      }

      v61 = *&v26[4 * v59];
      if (v57 > v61)
      {
        v61 = v40[8];
      }

      if (v55 <= v60)
      {
        v62 = v60 / v55;
      }

      else
      {
        v62 = v55 / v60;
      }

      if (v58 <= v61)
      {
        v63 = v61 / v58;
      }

      else
      {
        v63 = v58 / v61;
      }

      v96 = v63;
      v91 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v62, v49, v40 + 91);
      v65 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v96, v64, v40 + 100);
      v54 = v91;
      if (v91 <= v65)
      {
        v54 = v65;
      }
    }

    v97 = v54;
    v66 = v31 / v103;
    v67 = v25 / v103;
    v90 = v24 / v103;
    v92 = v30 / v103;
    v68 = v23 / v103;
    v69 = v98 * v99;
    v70 = v21 / v103;
    v71 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v11, v49, v40 + 109);
    v72.f32[0] = v108 * v94;
    v73 = (v108 * v94) * v71;
    v74 = (v109 * v99) * v71;
    if (a2[26].i8[4])
    {
      v75 = v113;
      v76 = v97;
      if ((*(this + 32) & 1) == 0)
      {
        v77 = a2[27].f32[1];
        v78 = v40[4];
        if (v77 <= v69)
        {
          v69 = v77 + fminf(v69 - v77, v78);
        }

        else
        {
          v69 = v77 - fminf(v77 - v69, v78);
        }
      }

      v79 = (a2[28].f32[0] * 0.5) + (v102 * 0.5);
      a2[27].f32[1] = v69;
      a2[28].f32[0] = v79;
      a2[28].f32[1] = v97;
      v72.f32[1] = v73;
      a2[29] = vmla_f32(vmul_f32(a2[29], 0x3F0000003F000000), 0x3F0000003F000000, v72);
      a2[30].f32[0] = (a2[30].f32[0] * 0.5) + (v74 * 0.5);
    }

    else
    {
      v79 = v102;
      a2[27].f32[1] = v69;
      a2[28].f32[0] = v102;
      v76 = v97;
      a2[28].f32[1] = v97;
      a2[29].i32[0] = v72.i32[0];
      a2[29].f32[1] = v73;
      a2[30].f32[0] = v74;
      a2[26].i8[4] = 1;
      v75 = v113;
    }

    if (v79 < v40[5])
    {
      a2[28].i32[0] = 0;
    }

    v80 = sqrtf(v92 - (v66 * v66));
    v81 = sqrtf(v90 - (v67 * v67));
    v82 = sqrtf(v70 - (v68 * v68));
    if (v76 < v40[6])
    {
      a2[28].i32[1] = 0;
    }

    a2[30].f32[1] = v11;
    a2[31].f32[0] = v104;
    a2[31].f32[1] = v111;
    a2[32].f32[0] = v75;
    a2[32].f32[1] = v66;
    a2[33].f32[0] = v80;
    a2[35].f32[0] = v112;
    a2[35].f32[1] = v105;
    a2[36].f32[0] = v110;
    a2[36].f32[1] = v9;
    a2[37].f32[0] = v67;
    a2[37].f32[1] = v81;
    a2[38].f32[0] = v106;
    a2[38].f32[1] = v68;
    a2[39].f32[0] = v82;
    if (v4 == 1)
    {
      v83 = *v40;
      v84 = 0.0;
      if (v83 <= v6)
      {
        v85 = 0.0;
        if (*v40)
        {
          v86 = v40 + 1;
          v87 = v22;
          do
          {
            v88 = *v86++;
            v85 = v85 + (a2[18].f32[(((v87 >> 12) & 8) + v87) + 1] * v88);
            --v87;
            --v83;
          }

          while (v83);
        }

        if (v85 >= 0.0)
        {
          v84 = v85;
        }
      }

      a2[27].f32[1] = v84 * v69;
    }

    a2->i8[0] = 0;
    if ((v22 + 1) == 8)
    {
      v89 = 0;
    }

    else
    {
      v89 = v22 + 1;
    }

    a2->i8[2] = v89;
  }

  else
  {
    a2[28] = 0;
    a2[27].i32[1] = 0;
  }
}

float CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(float a1, uint64_t a2, float *a3)
{
  v3 = (a3 + 1);
  v4 = *a3;
  if (v4 < 2)
  {
    LODWORD(v6) = 1;
  }

  else
  {
    v5 = a3 + 2;
    v6 = 1;
    while (*v5 <= a1)
    {
      ++v6;
      ++v5;
      if (v4 == v6)
      {
        LODWORD(v6) = *a3;
        break;
      }
    }
  }

  if (v6 >= v4 - 1)
  {
    LODWORD(v6) = v4 - 1;
  }

  v7 = &v3[4 * v4];
  if (*(v7 - 1) < a1)
  {
    a1 = *(v7 - 1);
  }

  if (a3[1] > a1)
  {
    a1 = a3[1];
  }

  v8 = (a1 - *&v3[4 * (v6 - 1)]) / (*&v3[4 * v6] - *&v3[4 * (v6 - 1)]);
  return (a3[v6 + 5] * v8) + ((1.0 - v8) * a3[(v6 - 1) + 5]);
}

void CAWBAFEPhotometerAssistPenrose::calcTemproalFilterForChromaHist(CAWBAFEPhotometerAssistPenrose *this, sPhotometerAWBMetadata *a2, const unsigned int *a3, const unsigned int *a4, const unsigned __int8 *a5, int a6, unsigned int a7, unsigned int a8, float a9, float a10, unsigned __int16 a11, float *a12)
{
  v20 = *a12;
  v21 = *(this + 3);
  v23 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(*(a2 + 56), this, v21 + 18);
  v24 = *(this + 2);
  v25 = v24[7];
  v26 = a11;
  if (v25 > v26)
  {
    v26 = v24[7];
  }

  if (v25 <= a8)
  {
    v25 = a8;
  }

  v27 = v26 <= v25;
  v28 = v25 / v26;
  v29 = v26 / v25;
  if (v27)
  {
    v29 = v28;
  }

  v30 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v29, v22, v24 + 91);
  v33 = CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v30, v31, v21 + 27);
  if (!a6)
  {
    goto LABEL_21;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  do
  {
    if (a7)
    {
      v40 = a7;
      v41 = 1;
      LOWORD(v32) = v39;
      do
      {
        if (a5[v32])
        {
          v42 = a4[v32] * a5[v32];
          v38 += v42 * v41;
          v37 += v42;
          v43 = a3[v32] * a5[v32];
          v36 += v43 * v41;
          v35 += v43;
        }

        v32 = v32 + 1;
        v41 += 2;
        --v40;
      }

      while (v40);
      v39 += a7;
    }

    ++v34;
  }

  while (v34 != a6);
  if (v35)
  {
    a9 = vcvts_n_f32_u64(v36, 1uLL) / v35;
  }

  if (v37)
  {
    v44 = vcvts_n_f32_u64(v38, 1uLL) / v37;
    if (a9 > v44)
    {
      v45 = a9 - v44;
      v46 = v21;
      goto LABEL_23;
    }
  }

  else
  {
LABEL_21:
    v44 = a9;
  }

  v45 = v44 - a9;
  v46 = v21 + 9;
LABEL_23:
  v47 = v20 * ((1.0 / v20) * (v33 * (v23 * CAWBAFEPhotometerAssistPenrose::calculateWeightFromTuningTable(v45, v32, v46))));
  if (v24[9] < v47)
  {
    v47 = v24[9];
  }

  *a12 = v47;
}

void useLowerLocalHistogramThreshold_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"FigCapturePlatformID soft_FigCapturePlatformIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"DeviceModel.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getFigCapturePlatformIdentifierSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CMCaptureLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DeviceModel.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t convertANSTMaskFrom32FloatTo8Uint(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __getFigCaptureGetModelSpecificNameSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CMCaptureLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FWPlatformIDUtilities.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete()
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
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}