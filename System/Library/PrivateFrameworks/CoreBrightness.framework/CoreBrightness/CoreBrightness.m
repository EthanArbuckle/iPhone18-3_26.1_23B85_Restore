uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

float _CFXFindAdaptation(float *a1, uint64_t *a2)
{
  v20 = *(a2 + 2);
  v19 = *(a2 + 6);
  v18 = v20 - 1;
  v17 = v20 - 1;
  v16 = v19 - 1;
  v15 = v19 - 1;
  v13 = *a2;
  v12 = a2[2];
  for (i = 0; i < v20; ++i)
  {
    if (*a1 <= *(v13 + 4 * i))
    {
      v17 = i;
      if (i)
      {
        v8 = i - 1;
      }

      else
      {
        v8 = 0;
      }

      v18 = v8;
      break;
    }
  }

  for (j = 0; j < v19; ++j)
  {
    if (a1[1] <= *(v12 + 4 * j))
    {
      v15 = j;
      if (j)
      {
        v7 = j - 1;
      }

      else
      {
        v7 = 0;
      }

      v16 = v7;
      break;
    }
  }

  if (v18 == v17)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = ((*a1 - *(v13 + 4 * v18)) / (*(v13 + 4 * v17) - *(v13 + 4 * v18)));
  }

  v2 = v6;
  v9 = v2;
  if (v16 == v15)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = ((a1[1] - *(v12 + 4 * v16)) / (*(v12 + 4 * v15) - *(v12 + 4 * v16)));
  }

  v3 = v5;
  v14 = a2[4];
  return (((*(*(v14 + 8 * v15) + 4 * v17) * v9) + (*(*(v14 + 8 * v15) + 4 * v18) * (1.0 - v9))) * v3) + (((*(*(v14 + 8 * v16) + 4 * v17) * v9) + (*(*(v14 + 8 * v16) + 4 * v18) * (1.0 - v9))) * (1.0 - v3));
}

uint64_t _CFXUpdateColorFadeInternal(uint64_t a1, double *a2, char a3, double a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v39 = a4;
  v38 = a2;
  v37 = a3;
  v36 = a4 - a2[1];
  v35 = v36 / *a2;
  v34 = 0;
  if (*a2 == 0.0 || v35 >= 1.0 || v36 < 0.0)
  {
    memcpy(__dst, v38 + 20, sizeof(__dst));
    *v38 = 0.0;
    *(v38 + 16) = 1;
  }

  else
  {
    v33 = *(v40 + 360) - 1;
    v35 = v35 * v33;
    v32 = v35;
    v31 = v35 + 1;
    v30 = v35 - v35;
    v35 = (1.0 - v30) * *(*(v40 + 352) + 4 * v35) + v30 * *(*(v40 + 352) + 4 * v31);
    for (i = 0; i < 3; ++i)
    {
      for (j = 0; j < 3; ++j)
      {
        v4 = *(v38 + 3 * i + j + 23) + v35 * (*(v38 + 3 * i + j + 5) - *(v38 + 3 * i + j + 23));
        __dst[3 * i + j] = v4;
      }
    }

    v34 = 1;
  }

  __memcpy_chk();
  if ((v37 & 1) != 0 && *(v40 + 96))
  {
    v27 = *(v40 + 96);
    v14 = &v26;
    v26 = 0;
    v25 = 0;
    _CFXGetWPFromMatrix(v40, __dst, &v26, &v25);
    v16 = v24;
    memset(v24, 0, sizeof(v24));
    v15 = &v41;
    v41 = 0;
    v42 = 0;
    CFXChromaticity2Tristimulus(&v26, &v41, 100.0);
    CFXTristimulus2Lab(&v41, v24);
    if (*(v27 + 56))
    {
      v23 = *&v24[4];
      _CFXStickToPolygon(*(v27 + 56), *(v27 + 148), &dword_1DEACD84C, &v24[4], &v24[4]);
      if (*&v23 != *&v24[4] && *(&v23 + 1) != *&v24[8])
      {
        syslog(7, "Restrict: (%f, %f) -> (%f, %f)\n", *&v23, *&v23, *&v24[4], *&v24[8]);
      }
    }

    v22 = 0.0;
    v21 = 0.0;
    if (*(*(v40 + 96) + 303))
    {
      v21 = fminf(*(v27 + 336), *(v27 + 280));
    }

    else
    {
      v21 = *(v27 + 280);
    }

    *(v27 + 308) = v21;
    if (*(v27 + 144))
    {
      v22 = _CFXFindAdaptation(&v24[4], (v27 + 64));
      v20 = 0.0;
      if (*(v27 + 145))
      {
        v20 = _CFXFindAdaptation(&v24[4], (v27 + 104));
        if (v21 > 0.35)
        {
          if (v21 > 0.7)
          {
            if (v21 > 0.85)
            {
              v22 = 0.0;
            }

            else
            {
              v7 = (0.85 - v21) / 0.15;
              v17 = v7;
              v22 = ((1.0 - v7) * 0.0) + (v7 * v22);
            }
          }

          else
          {
            v6 = (0.7 - v21) / 0.35;
            v18 = v6;
            v22 = ((1.0 - v6) * v22) + (v6 * v20);
          }
        }

        else
        {
          v5 = (0.35 - v21) / 0.35;
          v19 = v5;
          v22 = ((1.0 - v5) * v20) + (v5 * 1.0);
        }
      }
    }

    v8 = (v22 * 0.0) + (1.0 - v22) * *&v24[4];
    *&v24[4] = v8;
    v9 = (v22 * 0.0) + (1.0 - v22) * *&v24[8];
    *&v24[8] = v9;
    *&v24[4] = v8 + (v21 * *(v27 + 292));
    *&v24[8] = v9 + (v21 * *(v27 + 296));
    v13 = &v41;
    CFXLab2Tristimulus(v24, &v41);
    v10 = v13;
    *(v40 + 2100) = v22;
    CFXTristimulus2Chromaticity_0(v10, (v40 + 2108));
    _CFXGetMatrix(v40, v13, __dst, (v40 + 2128));
  }

  __memcpy_chk();
  v12 = v34;
  *MEMORY[0x1E69E9840];
  return v34 & 1;
}

uint64_t CFXUpdateColorFade(uint64_t a1, double a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = a1;
  v36 = a2;
  v35 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = mach_absolute_time();
  v27 = 1;
  if (*(v35 + 96))
  {
    v27 = *(*(v35 + 96) + 272) & 1;
    v32 = _CFXUpdateStrengthFade(v36, v35, *(v35 + 96) + 256);
    if (*(*(v35 + 96) + 300))
    {
      *(*(v35 + 96) + 300) = 0;
      v27 = 0;
    }

    if (*(*(v35 + 96) + 303))
    {
      v27 = (v27 & 1 & *(*(v35 + 96) + 328) & 1) != 0;
      if ((*(*(v35 + 96) + 328) & 1) == 0)
      {
        _CFXUpdateStrengthFade(v36, v35, *(v35 + 96) + 312);
      }
    }
  }

  v29 = (v35 + 368);
  if ((*(v35 + 384) & 1) == 0 || (v27 & 1) == 0)
  {
    v34 = _CFXUpdateColorFadeInternal(v35, v29, 1, v36);
  }

  v29 = (v35 + 536);
  if ((*(v35 + 552) & 1) == 0)
  {
    v33 = _CFXUpdateColorFadeInternal(v35, v29, 0, v36);
  }

  memcpy(__dst, (v35 + 592), sizeof(__dst));
  _CFXApplyTwilightNightShiftAdjustment(v35, __dst);
  if ((*(v35 + 2280) & 1) == 0)
  {
    v31 = CFXAmmoliteFadeInternal(v35 + 2264, *(v35 + 360), *(v35 + 352), v36);
  }

  memcpy(v47, (v35 + 496), sizeof(v47));
  Mul33MatrixBy33Matrix(v35 + 496, __dst, __src);
  if (*(v35 + 112))
  {
    _CFXMagic(__src, v45, *(v35 + 112));
  }

  else
  {
    memcpy(v45, __src, sizeof(v45));
  }

  Mul33MatrixBy33Matrix(v35 + 2320, v45, __src);
  if (*(v35 + 2520))
  {
    if ((*(v35 + 2448) & 1) == 0)
    {
      v30 = _CFXUpdateStrengthFade(v36, v35, v35 + 2432);
    }

    _CFXCorrectForNativeWP(v35, v44, *(v35 + 2456));
    memcpy(v43, __src, sizeof(v43));
    Mul33MatrixBy33Matrix(v44, v43, __src);
  }

  v42[2] = 1.0;
  v42[1] = 1.0;
  v42[0] = 1.0;
  v40 = 0;
  v41 = 0;
  Mul33MatrixBy31Vector(__src, v42, &v40);
  v2 = MaxOfVector(&v40);
  Div33MatrixByScalar(__src, v45, v2);
  v26 = *(v35 + 740) != *(v35 + 196);
  v25 = 0.0;
  v24 = 0.0;
  v12 = 1;
  if ((v34 & 1) == 0)
  {
    v12 = 1;
    if ((v33 & 1) == 0)
    {
      v12 = 1;
      if ((v32 & 1) == 0)
      {
        v12 = v31;
      }
    }
  }

  v23 = (v12 ^ 1) & 1;
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      v25 = vabds_f32(v45[3 * i + j], *(v35 + 704 + 12 * i + 4 * j));
      if (v25 > v24)
      {
        v24 = v25;
      }

      if (v23)
      {
        if (i == j)
        {
          if (vabdd_f64(v45[3 * i + j], 1.0) > 0.001)
          {
            v23 = 0;
          }
        }

        else if (fabs(v45[3 * i + j]) > 0.001)
        {
          v23 = 0;
        }
      }
    }
  }

  if (*(v35 + 96) && (*(*(v35 + 96) + 184) & 1) != 0)
  {
    v23 = 0;
  }

  if (v23)
  {
    _CFXIdentity(v45);
  }

  if (v24 > 0.001 || (v23 & 1) != 0)
  {
    v26 = 1;
  }

  if (v26 && *(v35 + 328))
  {
    __memcpy_chk();
    *(v35 + 740) = *(v35 + 196);
    Current = CFAbsoluteTimeGetCurrent();
    memset(__b, 0, sizeof(__b));
    v18 = 0.0;
    *v17 = 0;
    _CFXGetWPFromMatrix(v35, v45, v17, &v18);
    if (*(v35 + 2532) == 1)
    {
      if (*(v35 + 2528) == 1)
      {
        _CFXGetXYZD50Matrix(v35, v17, v45);
      }

      else if (!*(v35 + 2528))
      {
        _CFXGetsRGBD50Matrix(v35, v17, v45);
      }
    }

    else if (*(v35 + 2532) == 2)
    {
      if (*(v35 + 2528) == 1)
      {
        _CFXGetXYZMatrixWithLMSIlluminant(v35, v17, (v35 + 2536), v45);
      }

      else if (!*(v35 + 2528))
      {
        _CFXGetsRGBMatrixWithLMSIlluminant(v35, v17, (v35 + 2536), v45);
      }
    }

    v3 = _CFXRampInit(__b, 0.0, *(v35 + 740), v17[0], v17[1], Current, v45, 0);
    (*(v35 + 328))(*(v35 + 336), __b, v3);
    if (*(v35 + 1800))
    {
      _CFXGetWPFromMatrix(v35, v47, v17, &v18);
      v4 = _CFXRampInit(__b, 0.0, *(v35 + 740), v17[0], v17[1], Current, v47, 2);
      (*(v35 + 328))(*(v35 + 336), __b, v4);
      _CFXGetWPFromMatrix(v35, __dst, v17, &v18);
      v5 = _CFXRampInit(__b, 0.0, *(v35 + 740), v17[0], v17[1], Current, __dst, 1);
      (*(v35 + 328))(*(v35 + 336), __b, v5);
      _CFXGetWPFromMatrix(v35, (v35 + 2320), v17, &v18);
      v6 = _CFXRampInit(__b, 0.0, *(v35 + 740), v17[0], v17[1], Current, v35 + 2320, 3);
      (*(v35 + 328))(*(v35 + 336), __b, v6);
    }

    ++*(v35 + 1792);
    if (*(v35 + 1801))
    {
      ++*(v35 + 2104);
    }

    v16 = 0;
    v7 = 1.0 / v18;
    *(v35 + 2140) = v7;
    v38 = 0;
    v39 = 0;
    CFXChromaticity2Tristimulus(v17, &v38, 100.0);
    v14 = 0;
    v15 = 0;
    CFXTristimulus2Lab(&v38, &v14);
    v16 = binFromAb(&v14 + 1);
    if (v16 != *(v35 + 1228))
    {
      v13 = MachTimeToSeconds(v28 - *(v35 + 1232));
      v9 = *(v35 + 1228);
      v8 = *(v35 + 1024 + 8 * v9) + v13;
      *(v35 + 1024 + 8 * v9) = v8;
      *(v35 + 1232) = v28;
      *(v35 + 1228) = v16;
      *(v35 + 320) = v16;
      ++*(v35 + 1160 + 4 * v16);
    }

    LODWORD(v8) = *(v35 + 1784);
    _CFXUpdateCompensatedBacklight(v35, v28, v8);
  }

  v11 = 1;
  if ((v34 & 1) == 0)
  {
    v11 = 1;
    if ((v33 & 1) == 0)
    {
      v11 = 1;
      if ((v32 & 1) == 0)
      {
        v11 = 1;
        if ((v31 & 1) == 0)
        {
          v11 = v30;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v11 & 1;
}

uint64_t _CFXUpdateStrengthFade(double a1, uint64_t a2, uint64_t a3)
{
  v8 = a1 - *(a3 + 8);
  v7 = v8 / *a3;
  v6 = 0;
  if (*a3 == 0.0 || (v3 = v8 / *a3, v7 >= 1.0) || v8 < 0.0)
  {
    *(a3 + 24) = *(a3 + 20);
    *a3 = 0;
    *(a3 + 16) = 1;
  }

  else
  {
    v4 = *(a3 + 28) + v7 * (*(a3 + 20) - *(a3 + 28));
    *(a3 + 24) = v4;
    v6 = 1;
  }

  return v6 & 1;
}

void _CFXApplyTwilightNightShiftAdjustment(uint64_t a1, float *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = a2;
  if ((*(a1 + 2552) & 1) != 0 && !float_equal(*(v10 + 2600), 0.0) && !_CFXIsIdentity(v9))
  {
    v8 = 0;
    v7 = 0;
    CFXGetWPFromMatrix(v10, v9, &v8, &v7);
    v6 = CFXChromaticity2CCT(&v8);
    v5 = two_dimensional_interpolation(*(v10 + 2568), *(v10 + 2560), *(v10 + 2584), *(v10 + 2576), *(v10 + 2592), v6, *(v10 + 2600));
    if (!float_equal(v5, 0.0))
    {
      v4 = v6 + v5;
      v3 = 0;
      _CFXCCT2xy_Shifted(v10, &v3, v6 + v5);
      v12 = 0;
      v13 = 0;
      CFXChromaticity2Tristimulus(&v3, &v12, 100.0);
      _CFXGetMatrix(v10, &v12, v9, (v10 + 2128));
      oslog = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v11, COERCE__INT64(*(v10 + 2600)), COERCE__INT64(v6), COERCE__INT64(v4));
        _os_log_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_DEFAULT, "TWNS | Twilight.Strength=%f CCT.Original=%f CCT.Adjusted=%f", v11, 0x20u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

float _CFXMagic(float *a1, float *a2, float *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  for (i = 0; i < 3; ++i)
  {
    v5[i] = (a1[3 * i] + a1[3 * i + 1]) + a1[3 * i + 2];
  }

  a2[1] = *a3 * a1[1];
  a2[2] = a3[1] * a1[2];
  *a2 = (v5[0] - a2[1]) - a2[2];
  a2[3] = a3[2] * a1[3];
  a2[5] = a3[3] * a1[5];
  a2[4] = (v5[1] - a2[3]) - a2[5];
  a2[6] = a3[4] * a1[6];
  a2[7] = a3[5] * a1[7];
  result = (v5[2] - a2[6]) - a2[7];
  a2[8] = result;
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Mul33MatrixBy33Matrix(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      *(a3 + 12 * i + 4 * j) = ((*(result + 12 * i + 4) * *(a2 + 12 + 4 * j)) + (*(result + 12 * i) * *(a2 + 4 * j))) + (*(result + 12 * i + 8) * *(a2 + 24 + 4 * j));
    }
  }

  return result;
}

float CFXLab2Tristimulus(float *a1, float *a2)
{
  v5 = (*a1 + 16.0) / 116.0;
  v2 = v5 + a1[1] / 500.0;
  *a2 = 95.05 * invF(v2);
  a2[1] = 100.0 * invF(v5);
  v3 = v5 - a1[2] / 200.0;
  result = 108.9 * invF(v3);
  a2[2] = result;
  return result;
}

float Mul33MatrixBy31Vector(float *a1, float *a2, float *a3)
{
  *a3 = ((a1[1] * a2[1]) + (*a1 * *a2)) + (a1[2] * a2[2]);
  a3[1] = ((a1[4] * a2[1]) + (a1[3] * *a2)) + (a1[5] * a2[2]);
  result = ((a1[7] * a2[1]) + (a1[6] * *a2)) + (a1[8] * a2[2]);
  a3[2] = result;
  return result;
}

float _CFXGetWPFromMatrix(uint64_t a1, float *a2, void *a3, _DWORD *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v14 = 0x3F8000003F800000;
  v15 = 1065353216;
  if (*(a1 + 2520))
  {
    v14 = *(v9 + 2508);
    v15 = *(v9 + 2516);
  }

  v12 = 0;
  v13 = 0;
  Mul33MatrixBy31Vector(v8, &v14, &v12);
  v10 = 0;
  v11 = 0;
  Mul33MatrixBy31Vector((v9 + 2216), &v12, &v10);
  v5 = 0;
  CFXTristimulus2Chromaticity_0(&v10, &v5);
  *v7 = v5;
  result = *(&v10 + 1);
  *v6 = HIDWORD(v10);
  *MEMORY[0x1E69E9840];
  return result;
}

float _CFXStickToPolygon(uint64_t a1, int a2, float *a3, float *a4, float *a5)
{
  *&v5 = *a3;
  if (*a3 == *a4)
  {
    *&v5 = a3[1];
    if (*&v5 == a4[1])
    {
      a5[1] = a4[1];
      *&v5 = *a4;
      *a5 = *a4;
    }

    else
    {
      for (i = 0; i < a2 - 1; ++i)
      {
        *&v5 = (*(a1 + 8 * i) - *a4) * (*a4 - *(a1 + 8 * (i + 1)));
        if (*&v5 >= 0.0)
        {
          v23 = *(a1 + 8 * i + 4) + (((*(a1 + 8 * (i + 1) + 4) - *(a1 + 8 * i + 4)) / (*(a1 + 8 * (i + 1)) - *(a1 + 8 * i))) * (*a4 - *(a1 + 8 * i)));
          v22 = v23 - a4[1];
          v21 = a4[1] - a3[1];
          if ((v22 * v21) > 0.0)
          {
            a5[1] = a4[1];
            *&v5 = *a4;
            *a5 = *a4;
            return *&v5;
          }

          v5 = fabs(v22);
          if (v5 < fabs(v21))
          {
            a5[1] = v23;
            *&v5 = *a4;
            *a5 = *a4;
            return *&v5;
          }
        }
      }
    }
  }

  else
  {
    for (j = 0; j < a2 - 1; ++j)
    {
      v19 = (a4[1] - a3[1]) / (*a4 - *a3);
      v18 = a3[1] - (v19 * *a3);
      if ((*(a1 + 8 * (j + 1)) - *(a1 + 8 * j)) == 0.0)
      {
        v17 = *(a1 + 8 * (j + 1));
      }

      else
      {
        v15 = (*(a1 + 8 * (j + 1) + 4) - *(a1 + 8 * j + 4)) / (*(a1 + 8 * (j + 1)) - *(a1 + 8 * j));
        v6 = (a4[1] - a3[1]) / (*a4 - *a3);
        v17 = (v18 - (*(a1 + 8 * j + 4) - (v15 * *(a1 + 8 * j)))) / (v15 - v19);
      }

      v16 = v18 + (v19 * v17);
      *&v5 = (*(a1 + 8 * j) - v17) * (v17 - *(a1 + 8 * (j + 1)));
      if (*&v5 >= 0.0)
      {
        *&v5 = (*(a1 + 8 * j + 4) - v16) * (v16 - *(a1 + 8 * (j + 1) + 4));
        if (*&v5 >= 0.0)
        {
          v14 = ((a3[1] - v16) * (a3[1] - v16)) + ((*a3 - v17) * (*a3 - v17));
          v13 = ((a3[1] - a4[1]) * (a3[1] - a4[1])) + ((*a3 - *a4) * (*a3 - *a4));
          v12 = ((a4[1] - v16) * (a4[1] - v16)) + ((*a4 - v17) * (*a4 - v17));
          if (v14 >= v13)
          {
            v7 = ((a3[1] - v16) * (a3[1] - v16)) + ((*a3 - v17) * (*a3 - v17));
            v8 = ((a4[1] - v16) * (a4[1] - v16)) + ((*a4 - v17) * (*a4 - v17));
            if (v14 >= v12)
            {
              a5[1] = a4[1];
              *&v5 = *a4;
              *a5 = *a4;
              return *&v5;
            }
          }

          *&v5 = ((a3[1] - a4[1]) * (a3[1] - a4[1])) + ((*a3 - *a4) * (*a3 - *a4));
          v9 = ((a3[1] - v16) * (a3[1] - v16)) + ((*a3 - v17) * (*a3 - v17));
          if (v13 >= v14)
          {
            *&v5 = ((a3[1] - a4[1]) * (a3[1] - a4[1])) + ((*a3 - *a4) * (*a3 - *a4));
            v10 = ((a4[1] - v16) * (a4[1] - v16)) + ((*a4 - v17) * (*a4 - v17));
            if (v13 >= v12)
            {
              a5[1] = v16;
              *&v5 = v17;
              *a5 = v17;
              return *&v5;
            }
          }
        }
      }
    }
  }

  return *&v5;
}

float mach_time_to_nanoseconds(unint64_t a1)
{
  if (mach_time_to_nanoseconds::token != -1)
  {
    dispatch_once(&mach_time_to_nanoseconds::token, &__block_literal_global_7);
  }

  return a1 * *&mach_time_to_nanoseconds::machTimeBaseFactor;
}

float CFXChromaticity2Tristimulus(float *a1, float *a2, float a3)
{
  *a2 = (*a1 / a1[1]) * a3;
  a2[1] = a3;
  result = (1.0 - *a1 - a1[1]) / a1[1] * a3;
  a2[2] = result;
  return result;
}

float CFXTristimulus2Chromaticity(float *a1, float *a2)
{
  v3 = (*a1 + a1[1]) + a1[2];
  *a2 = *a1 / v3;
  result = a1[1] / v3;
  a2[1] = result;
  return result;
}

float CFXTristimulus2Chromaticity_0(float *a1, float *a2)
{
  v3 = (*a1 + a1[1]) + a1[2];
  *a2 = *a1 / v3;
  result = a1[1] / v3;
  a2[1] = result;
  return result;
}

float CFXTristimulus2Chromaticity_1(float *a1, float *a2)
{
  v3 = (*a1 + a1[1]) + a1[2];
  *a2 = *a1 / v3;
  result = a1[1] / v3;
  a2[1] = result;
  return result;
}

float CFXTristimulus2Lab(float *a1, float *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = F(*a1 / 95.05);
  v7 = F(a1[1] / 100.0);
  v2 = F(a1[2] / 108.9);
  *a2 = (116.0 * v7) + -16.0;
  a2[1] = 500.0 * (v6 - v7);
  result = 200.0 * (v7 - v2);
  a2[2] = result;
  *MEMORY[0x1E69E9840];
  return result;
}

float F(float a1)
{
  if (a1 > 0.0088565)
  {
    return powf(a1, 0.33333);
  }

  return 7.787 * a1 + 0.13793;
}

float invF(float a1)
{
  if (a1 > 0.2069)
  {
    return powf(a1, 3.0);
  }

  return 0.12842 * (a1 - 0.13793);
}

uint64_t _CFXGetMatrix(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = 1.0 / a2[1];
  *a2 = *a2 * v6;
  a2[1] = a2[1] * v6;
  a2[2] = a2[2] * v6;
  v18 = 0;
  v19 = 0;
  CFXTristimulus2lms(a2, &v18);
  v16 = 0;
  v17 = 0;
  Div31VectorBy31Vector(&v18, a4, &v16);
  memset(__b, 0, sizeof(__b));
  __b[4] = HIDWORD(v16);
  __b[0] = v16;
  __b[8] = v17;
  Mul33MatrixBy33Matrix(__b, a1 + 2144, v14);
  Mul33MatrixBy33Matrix(a1 + 2180, v14, v13);
  v12[2] = 1.0;
  v12[1] = 1.0;
  v12[0] = 1.0;
  v10 = 0;
  v11 = 0;
  Mul33MatrixBy31Vector(v13, v12, &v10);
  v4 = MaxOfVector(&v10);
  result = Div33MatrixByScalar(v13, a3, v4);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Div33MatrixByScalar(uint64_t result, uint64_t a2, float a3)
{
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      *(a2 + 12 * i + 4 * j) = *(result + 12 * i + 4 * j) / a3;
    }
  }

  return result;
}

float MaxOfVector(float *a1)
{
  if (*a1 <= a1[1])
  {
    v3 = a1[1];
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= a1[2])
  {
    return a1[2];
  }

  else
  {
    return v3;
  }
}

float Div31VectorBy31Vector(float *a1, float *a2, float *a3)
{
  *a3 = *a1 / *a2;
  a3[1] = a1[1] / a2[1];
  result = a1[2] / a2[2];
  a3[2] = result;
  return result;
}

void AABC::setPropertyForClient(AABC *this, const __CFString *a2, const void *a3, const void *a4)
{
  v4 = MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v562 = v586;
  v563 = AABC::_RampDoneCallback;
  v564 = AABC::_setInternalProperty;
  applier = AABC::UpdateSensorOverride;
  v653 = *MEMORY[0x1E69E9840];
  v631 = v4;
  v630 = v5;
  v629 = v6;
  v628 = v7;
  context = v4;
  if (_logHandle)
  {
    v561 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v560 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
      v560 = inited;
    }

    v561 = v560;
  }

  v8 = v562;
  *(v562 + 109) = v561;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v8[109], OS_LOG_TYPE_DEBUG))
  {
    log = *(v562 + 109);
    *v557 = type;
    buf = v652;
    __os_log_helper_16_0_1_4_0(v652, 4);
    _os_log_debug_impl(&dword_1DE8E5000, log, v557[0], "[%x]: ", v652, 8u);
  }

  v9 = v562;
  *(v562 + 107) = *(v562 + 111);
  *(v9 + 106) = *(v9 + 112);
  v555 = CFEqual(*(v9 + 112), @"IOHIDEventSystemClientIsUnresponsive");
  if (!v555 && *(context + 92))
  {
    if (CFEqual(*(v562 + 112), @"AABSensorOverride"))
    {
      if (*(v562 + 111))
      {
        CFDictionaryApplyFunction(*(context + 52), applier, *(v562 + 111));
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"ALSInternalSettings"))
    {
      if (*(v562 + 111))
      {
        v552 = CFGetTypeID(*(v562 + 111));
        TypeID = CFDictionaryGetTypeID();
        if (v552 == TypeID)
        {
          CFDictionaryApplyFunction(*(v562 + 111), v564, context);
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"CBSoftWakeActive"))
    {
      if (*(context + 485))
      {
        if (*(v562 + 111))
        {
          v548 = *(v562 + 111);
          v549 = objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v546 = [*(v562 + 111) intValue];
            v10 = v562;
            v11 = context;
            *(v562 + 211) = v546;
            if (![v11[485] action:*(v10 + 211)])
            {
              v544 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 156));
              AABC::UpdateDisplayBrightness_Block6(context, 1, 2, 1, v544);
            }
          }
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"CBHasExternalDisplay"))
    {
      if (*(v562 + 111))
      {
        v541 = *(v562 + 111);
        v542 = objc_opt_class();
        v540 = objc_opt_isKindOfClass();
        if (v540)
        {
          if (*(context + 487))
          {
            v538 = *(context + 487);
            v539 = [*(v562 + 111) BOOLValue];
            v537 = [v538 setActive:v539];
            if (v537)
            {
              AABC::_UpdateNitsRestrictions(context, -1.0, 1.5, 1);
            }
          }
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"BrightnessCurveLevel"))
    {
      if (*(v562 + 111))
      {
        v535 = CFGetTypeID(*(v562 + 111));
        v534 = CFNumberGetTypeID();
        if (v535 == v534)
        {
          v12 = v562;
          *(v562 + 210) = 0;
          if (CFNumberGetValue(v12[111], kCFNumberIntType, valuePtr))
          {
            if (*(v562 + 210) > 2u)
            {
              if (_logHandle)
              {
                v532 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v531 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v530 = init_default_corebrightness_log();
                  v531 = v530;
                }

                v532 = v531;
              }

              v13 = v562;
              *(v562 + 104) = v532;
              v625 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v13[104], OS_LOG_TYPE_DEBUG))
              {
                v527 = *(v562 + 104);
                *v528 = v625;
                v529 = v651;
                __os_log_helper_16_0_1_4_0(v651, 2);
                _os_log_debug_impl(&dword_1DE8E5000, v527, v528[0], "[%x]: invalid curve level - setting to default.", v651, 8u);
              }

              *(context + 853) = 1;
            }

            else if (*(v562 + 210) != *(context + 853))
            {
              *(context + 853) = *(v562 + 210);
            }

            [CBAnalytics curveLevel:*(context + 853)];
            memcpy(context + 1056, context + 104 * *(context + 853) + 744, 0x68uLL);
            memcpy(context + 2548, context + 164 * *(context + 853) + 2056, 0xA4uLL);
            if (*(context + 500))
            {
              [*(context + 500) sendCommand:229 inputBuffer:context + 3412 inputBufferSize:4];
            }

            if (*(context + 719) != 1)
            {
              AABC::CancelRamp(context);
              v526 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 156));
              v14 = context;
              v15 = v562;
              *(v562 + 206) = v526;
              v525 = clamp(v15[206], v14[180], v14[182]);
              v16 = context;
              v17 = v562;
              *(v562 + 206) = v525;
              AABC::UpdateDisplayBrightness_Block6(v16, 1, 2, 1, v17[206]);
            }
          }
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"CBAOTStateUpdate"))
    {
      v18 = v562;
      *(v562 + 205) = 255;
      *(v18 + 204) = 0;
      if (*(v18 + 111) && (v523 = CFGetTypeID(*(v562 + 111)), v522 = CFNumberGetTypeID(), v523 == v522))
      {
        CFNumberGetValue(*(v562 + 111), kCFNumberIntType, v624);
        *(v562 + 204) = 1.0;
      }

      else if (*(v562 + 111))
      {
        v521 = CFGetTypeID(*(v562 + 111));
        v520 = CFDictionaryGetTypeID();
        if (v521 == v520)
        {
          Value = CFDictionaryGetValue(*(v562 + 111), @"AOTState");
          v19 = v562;
          *(v562 + 101) = Value;
          v518 = CFDictionaryGetValue(v19[111], @"AOTTransitionTime");
          v20 = v562;
          *(v562 + 100) = v518;
          if (*(v20 + 101))
          {
            v517 = CFGetTypeID(*(v562 + 101));
            v516 = CFNumberGetTypeID();
            if (v517 == v516)
            {
              CFNumberGetValue(*(v562 + 101), kCFNumberIntType, v624);
            }
          }

          if (*(v562 + 100))
          {
            v515 = CFGetTypeID(*(v562 + 100));
            v514 = CFNumberGetTypeID();
            if (v515 == v514)
            {
              CFNumberGetValue(*(v562 + 100), kCFNumberFloatType, v623);
            }
          }
        }
      }

      if (*(v562 + 205) != *(context + 719))
      {
        if (_logHandle)
        {
          v513 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v512 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v511 = init_default_corebrightness_log();
            v512 = v511;
          }

          v513 = v512;
        }

        v21 = v562;
        *(v562 + 99) = v513;
        v622 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v21[99], OS_LOG_TYPE_DEFAULT))
        {
          v508 = *(v562 + 99);
          *v509 = v622;
          if (*(v562 + 205))
          {
            v22 = "Entering AOT";
          }

          else
          {
            v22 = "Exiting AOT";
          }

          *&v23 = *(v562 + 204);
          v510 = v650;
          __os_log_helper_16_2_2_8_32_8_0(v650, v22, v23);
          _os_log_impl(&dword_1DE8E5000, v508, v509[0], "AOT State update, %s, transitionTime: %f", v650, 0x16u);
        }

        if (*(context + 500) && *(context + 40) && (*(context + 2896) & 1) == 0 && (*(context + 719) != 2 || *(v562 + 205) != 1) && (*(context + 719) != 3 || *(v562 + 205)))
        {
          if ((*(context + 4008) & 1) == 0)
          {
            DisplaySetDCPPowerAssertionForAOT(*(context + 50), 1);
            *(context + 4008) = 1;
          }

          AABC::handleAODStateUpdateProperty(context, *(v562 + 205), *(v562 + 204));
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"AOTCurve"))
    {
      v506 = objc_autoreleasePoolPush();
      if (*(v562 + 111))
      {
        v505 = CFGetTypeID(*(v562 + 111));
        v504 = CFDictionaryGetTypeID();
        if (v505 == v504)
        {
          if (_logHandle)
          {
            v503 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v502 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v501 = init_default_corebrightness_log();
              v502 = v501;
            }

            v503 = v502;
          }

          v24 = v562;
          *(v562 + 97) = v503;
          v621 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v24[97], OS_LOG_TYPE_DEFAULT))
          {
            v498 = *(v562 + 97);
            *v499 = v621;
            v25 = *(v562 + 111);
            v500 = v649;
            __os_log_helper_16_2_1_8_66(v649, v25);
            _os_log_impl(&dword_1DE8E5000, v498, v499[0], "Custom Curve: %{public}@", v649, 0xCu);
          }

          *(v562 + 95) = *(v562 + 111);
          v497 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
          v26 = v562;
          v27 = context;
          *(v562 + 94) = v497;
          *(v26 + 90) = 0;
          *(v26 + 91) = v620;
          *(v26 + 184) = 0x20000000;
          *(v26 + 185) = 32;
          *(v26 + 186) = 0;
          v28 = *(v26 + 95);
          *(v26 + 83) = MEMORY[0x1E69E9820];
          *(v26 + 168) = -1073741824;
          *(v26 + 169) = 0;
          *(v26 + 85) = ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke;
          *(v26 + 86) = &unk_1E867D030;
          *(v26 + 89) = v27;
          *(v26 + 88) = v620;
          *(v26 + 87) = *(v26 + 94);
          [v28 enumerateKeysAndObjectsUsingBlock:?];
          if (*(context + 500))
          {
            AABC::sendAOTCurvesToDCP(context);
          }

          memcpy(context + 2548, context + 164 * *(context + 853) + 2056, 0xA4uLL);
          CFDictionarySetValue(*(context + 47), *(v562 + 112), *(v562 + 111));
          _Block_object_dispose(v620, 8);
        }
      }

      objc_autoreleasePoolPop(v506);
      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DelayedALSOverride"))
    {
      if (*(v562 + 111))
      {
        v495 = CFGetTypeID(*(v562 + 111));
        v494 = CFDictionaryGetTypeID();
        if (v495 == v494)
        {
          v29 = v562;
          *(v562 + 80) = 0;
          *(v29 + 79) = *(v29 + 111);
          v493 = [*(v29 + 79) objectForKey:@"AABSensorOverrideOrientation"];
          v30 = v562;
          *(v562 + 78) = v493;
          v492 = [v30[79] objectForKey:@"AABSensorOverrideValue"];
          v31 = v562;
          *(v562 + 77) = v492;
          v491 = [v31[79] objectForKey:@"OverrideDelay"];
          v32 = v562;
          *(v562 + 76) = v491;
          [v32[77] floatValue];
          v490 = v33;
          v34 = v562;
          *(v562 + 151) = (v33 * 65536.0);
          [v34[76] floatValue];
          v489 = v35;
          *(v562 + 150) = (v35 * 65536.0);
          v488 = objc_alloc(MEMORY[0x1E696AD98]);
          v487 = [v488 initWithInt:*(v562 + 151)];
          *(v562 + 74) = v487;
          v486 = objc_alloc(MEMORY[0x1E696AD98]);
          v485 = [v486 initWithInt:*(v562 + 150)];
          v36 = v562;
          *(v562 + 73) = v485;
          [v36[77] floatValue];
          v484 = v37;
          if (v37 == -1.0)
          {
            v483 = objc_alloc(MEMORY[0x1E696AD98]);
            v482 = [v483 initWithInt:0];
            *(v562 + 80) = v482;
          }

          else
          {
            v481 = objc_alloc(MEMORY[0x1E696AD98]);
            v480 = [v481 initWithInt:1];
            *(v562 + 80) = v480;
          }

          v479 = objc_alloc(MEMORY[0x1E695DF20]);
          v38 = *(v562 + 80);
          v39 = *(v562 + 78);
          v40 = *(v562 + 74);
          v41 = *(v562 + 73);
          v477 = v164;
          v478 = [v479 initWithObjectsAndKeys:{v38, @"ALSOverrideState", v39, @"AABSensorOverrideOrientation", v40, @"AABSensorOverrideValue", v41, @"OverrideDelay", 0}];
          v42 = context;
          *(v562 + 72) = v478;
          if (v42[40])
          {
            IOHIDServiceClientSetProperty(*(context + 40), @"DelayedALSOverride", *(v562 + 72));
          }

          MEMORY[0x1E69E5920](*(v562 + 72));
          MEMORY[0x1E69E5920](*(v562 + 80));
          MEMORY[0x1E69E5920](*(v562 + 73));
          MEMORY[0x1E69E5920](*(v562 + 74));
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"ALSResetCurve"))
    {
      AABC::CreateDefaultCurves(context);
      AAB::Reset(context);
      AABC::writeOutlierRemovalPreferences(context, 0);
      if (_logHandle)
      {
        v475 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v474 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v473 = init_default_corebrightness_log();
          v474 = v473;
        }

        v475 = v474;
      }

      v43 = v562;
      *(v562 + 71) = v475;
      v619 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v43[71], OS_LOG_TYPE_DEFAULT))
      {
        v470 = *(v562 + 71);
        *v471 = v619;
        *&v44 = *(context + 268);
        *&v45 = *(context + 270);
        *&v46 = *(context + 269);
        *&v47 = *(context + 271);
        v48 = *(context + 288);
        v472 = v648;
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_4_0(v648, v44, v45, v46, v47, v48);
        _os_log_impl(&dword_1DE8E5000, v470, v471[0], "Reseted curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f Type: %d", v648, 0x30u);
      }

      if (_logHandle)
      {
        v469 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v468 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v467 = init_default_corebrightness_log();
          v468 = v467;
        }

        v469 = v468;
      }

      v49 = v562;
      *(v562 + 69) = v469;
      v618 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v49[69], OS_LOG_TYPE_DEFAULT))
      {
        v464 = *(v562 + 69);
        *v465 = v618;
        *&v50 = *(context + 264);
        *&v51 = *(context + 265);
        *&v52 = *(context + 266);
        *&v53 = *(context + 267);
        v466 = v647;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v647, v50, v51, v52, v53);
        _os_log_impl(&dword_1DE8E5000, v464, v465[0], "Reseted dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v647, 0x2Au);
      }

      if (_logHandle)
      {
        v463 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v462 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v461 = init_default_corebrightness_log();
          v462 = v461;
        }

        v463 = v462;
      }

      v54 = v562;
      *(v562 + 67) = v463;
      v617 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v54[67], OS_LOG_TYPE_DEFAULT))
      {
        v458 = *(v562 + 67);
        *v459 = v617;
        *&v55 = *(context + 756);
        *&v56 = *(context + 758);
        *&v57 = *(context + 757);
        *&v58 = *(context + 759);
        v59 = *(context + 776);
        v460 = v646;
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_4_0(v646, v55, v56, v57, v58, v59);
        _os_log_impl(&dword_1DE8E5000, v458, v459[0], "Reseted alternative curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f Type: %d", v646, 0x30u);
      }

      if (_logHandle)
      {
        v457 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v456 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v455 = init_default_corebrightness_log();
          v456 = v455;
        }

        v457 = v456;
      }

      v60 = v562;
      *(v562 + 65) = v457;
      v616 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60[65], OS_LOG_TYPE_DEFAULT))
      {
        v452 = *(v562 + 65);
        *v453 = v616;
        *&v61 = *(context + 752);
        *&v62 = *(context + 753);
        *&v63 = *(context + 754);
        *&v64 = *(context + 755);
        v454 = v645;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v645, v61, v62, v63, v64);
        _os_log_impl(&dword_1DE8E5000, v452, v453[0], "Reseted alternative dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v645, 0x2Au);
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"ALSUserPreference"))
    {
      if (*(v562 + 111))
      {
        v450 = CFGetTypeID(*(v562 + 111));
        v449 = CFDictionaryGetTypeID();
        if (v450 == v449 && !*(context + 162))
        {
          AABC::readCurveFromDictionary(context, *(v562 + 111), context + 264);
          v448 = CFDictionaryGetValue(*(v562 + 111), @"AlternativeCurve");
          v65 = v562;
          *(v562 + 63) = v448;
          if (*(v65 + 63))
          {
            v447 = CFGetTypeID(*(v562 + 63));
            v446 = CFDictionaryGetTypeID();
            if (v447 == v446)
            {
              AABC::readCurveFromDictionary(context, *(v562 + 63), context + 752);
              if (_logHandle)
              {
                v445 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v444 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v443 = init_default_corebrightness_log();
                  v444 = v443;
                }

                v445 = v444;
              }

              v66 = v562;
              *(v562 + 62) = v445;
              v615 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v66[62], OS_LOG_TYPE_INFO))
              {
                v440 = *(v562 + 62);
                *v441 = v615;
                v67 = *(v562 + 63);
                v442 = v644;
                __os_log_helper_16_2_1_8_64(v644, v67);
                _os_log_impl(&dword_1DE8E5000, v440, v441[0], "Set kIOHIDALSUserPreferenceKey: AlternativeCurve = %@", v644, 0xCu);
              }

              AABC::AlignCurveTypeWithStrategy(context, context + 264, context + 752);
            }
          }

          if (_logHandle)
          {
            v439 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v438 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v437 = init_default_corebrightness_log();
              v438 = v437;
            }

            v439 = v438;
          }

          v68 = v562;
          *(v562 + 60) = v439;
          v614 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v68[60], OS_LOG_TYPE_DEFAULT))
          {
            v433 = *(v562 + 60);
            *v434 = v614;
            v435 = *(context + 288);
            v436 = (*(**(context + 8) + 104))(*(context + 8));
            v431 = *(context + 776);
            v432 = (*(**(context + 8) + 112))(*(context + 8));
            v430 = v643;
            __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v643, v435, v436, v431, v432);
            _os_log_impl(&dword_1DE8E5000, v433, v434[0], "Curve type = %d (%d), Alternative curve type = %d (%d)", v643, 0x1Au);
          }

          v429 = (*(**(context + 8) + 104))(*(context + 8));
          v69 = context;
          *(context + 288) = v429;
          v428 = (*(*v69[8] + 112))(v69[8]);
          v70 = context;
          *(context + 776) = v428;
          if (v70[3409])
          {
            v427 = CFDictionaryGetValue(*(v562 + 111), @"CurveUpdates");
            v71 = v562;
            *(v562 + 58) = v427;
            if (*(v71 + 58))
            {
              v426 = CFGetTypeID(*(v562 + 58));
              v425 = CFArrayGetTypeID();
              if (v426 == v425)
              {
                if (_logHandle)
                {
                  v424 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v423 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v422 = init_default_corebrightness_log();
                    v423 = v422;
                  }

                  v424 = v423;
                }

                v72 = v562;
                *(v562 + 57) = v424;
                v613 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v72[57], OS_LOG_TYPE_DEFAULT))
                {
                  v419 = *(v562 + 57);
                  *v420 = v613;
                  v73 = *(v562 + 58);
                  v421 = v642;
                  __os_log_helper_16_2_1_8_64(v642, v73);
                  _os_log_impl(&dword_1DE8E5000, v419, v420[0], "Set kIOHIDALSUserPreferenceKey: CurveUpdates = %@", v642, 0xCu);
                }

                AABC::getCurveUpdatesFromArray(context, *(v562 + 58), v612);
                AAB::SetCurveUpdates(context, v612);
                std::list<AAB::CurveUpdate>::~list(v612);
              }
            }

            v418 = CFDictionaryGetValue(*(v562 + 111), @"ReplacementCurve");
            v74 = v562;
            *(v562 + 52) = v418;
            if (*(v74 + 52))
            {
              v417 = CFGetTypeID(*(v562 + 52));
              v416 = CFDictionaryGetTypeID();
              if (v417 == v416)
              {
                AABC::readCurveFromDictionary(context, *(v562 + 52), context + 726);
                if (_logHandle)
                {
                  v415 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v414 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v413 = init_default_corebrightness_log();
                    v414 = v413;
                  }

                  v415 = v414;
                }

                v75 = v562;
                *(v562 + 51) = v415;
                v611 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v75[51], OS_LOG_TYPE_DEFAULT))
                {
                  v410 = *(v562 + 51);
                  *v411 = v611;
                  v76 = *(v562 + 52);
                  v412 = v641;
                  __os_log_helper_16_2_1_8_64(v641, v76);
                  _os_log_impl(&dword_1DE8E5000, v410, v411[0], "Set kIOHIDALSUserPreferenceKey: ReplacementCurve = %@", v641, 0xCu);
                }
              }
            }

            v409 = CFDictionaryGetValue(*(v562 + 111), @"AlternativeReplacementCurve");
            v77 = v562;
            *(v562 + 49) = v409;
            if (*(v77 + 49) && (v408 = CFGetTypeID(*(v562 + 49)), v407 = CFDictionaryGetTypeID(), v408 == v407))
            {
              AABC::readCurveFromDictionary(context, *(v562 + 49), context + 778);
              if (_logHandle)
              {
                v406 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v405 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v404 = init_default_corebrightness_log();
                  v405 = v404;
                }

                v406 = v405;
              }

              v78 = v562;
              *(v562 + 48) = v406;
              v610 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v78[48], OS_LOG_TYPE_DEFAULT))
              {
                v401 = *(v562 + 48);
                *v402 = v610;
                v79 = *(v562 + 49);
                v403 = v640;
                __os_log_helper_16_2_1_8_64(v640, v79);
                _os_log_impl(&dword_1DE8E5000, v401, v402[0], "Set kIOHIDALSUserPreferenceKey: AlternativeReplacementCurve = %@", v640, 0xCu);
              }

              AABC::AlignCurveTypeWithStrategy(context, context + 726, context + 778);
            }

            else
            {
              memcpy(context + 3112, context + 2904, 0x68uLL);
            }

            if (_logHandle)
            {
              v400 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v399 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v398 = init_default_corebrightness_log();
                v399 = v398;
              }

              v400 = v399;
            }

            v80 = v562;
            *(v562 + 46) = v400;
            v609 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v80[46], OS_LOG_TYPE_DEFAULT))
            {
              v394 = *(v562 + 46);
              *v395 = v609;
              v396 = *(context + 750);
              v397 = (*(**(context + 8) + 104))(*(context + 8));
              v392 = *(context + 802);
              v393 = (*(**(context + 8) + 112))(*(context + 8));
              v391 = v639;
              __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v639, v396, v397, v392, v393);
              _os_log_impl(&dword_1DE8E5000, v394, v395[0], "Good curve type = %d (%d), Alternative good curve type = %d (%d)", v639, 0x1Au);
            }

            v390 = (*(**(context + 8) + 104))(*(context + 8));
            v81 = context;
            *(context + 750) = v390;
            v389 = (*(*v81[8] + 112))(v81[8]);
            v82 = context;
            *(context + 802) = v389;
            AABC::revertToGoodCurve(v82, 2);
          }

          if (*(context + 3376))
          {
            v388 = CFDictionaryGetValue(*(v562 + 111), @"ReplacementCurve");
            v83 = v562;
            *(v562 + 44) = v388;
            if (*(v83 + 44))
            {
              v387 = CFGetTypeID(*(v562 + 44));
              v386 = CFDictionaryGetTypeID();
              if (v387 == v386)
              {
                AABC::readCurveFromDictionary(context, *(v562 + 44), context + 726);
              }
            }

            v385 = CFDictionaryGetValue(*(v562 + 111), @"Descriptor");
            v84 = v562;
            *(v562 + 44) = v385;
            if (*(v84 + 44))
            {
              v384 = CFGetTypeID(*(v562 + 44));
              v383 = CFDictionaryGetTypeID();
              if (v384 == v383)
              {
                AABC::readCurveDescriptorFromDictionary(context, *(v562 + 44), context + 834);
              }
            }

            AABC::readOutlierRemovalPreferences(context);
            if (*(context + 834) && *(context + 834) < *(context + 845))
            {
              AABC::revertToGoodCurve(context, 4);
              *(context + 842) = 1;
            }

            *(context + 393) = 1;
          }

          *(context + 392) = 1;
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"CurveUpdates"))
    {
      if (*(v562 + 111))
      {
        v381 = CFGetTypeID(*(v562 + 111));
        v380 = CFArrayGetTypeID();
        if (v381 == v380)
        {
          AABC::getCurveUpdatesFromArray(context, *(v562 + 111), v608);
          AAB::SetCurveUpdates(context, v608);
          AABC::revertToGoodCurve(context, 1);
          std::list<AAB::CurveUpdate>::~list(v608);
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"OutlierRemoval"))
    {
      if (*(v562 + 111))
      {
        v378 = CFGetTypeID(*(v562 + 111));
        v377 = CFDictionaryGetTypeID();
        if (v378 == v377)
        {
          AABC::readOutlierRemovalFromDictionary(context, *(v562 + 111), context + 3376);
          OutlierRemovalDictionary = AABC::createOutlierRemovalDictionary(context, context + 3376);
          v85 = v562;
          v86 = context;
          *(v562 + 40) = OutlierRemovalDictionary;
          CFDictionarySetValue(v86[47], v85[112], v85[40]);
          CFRelease(*(v562 + 40));
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"ALSLockScreenAutoBrightness"))
    {
      CFBooleanValue = GetCFBooleanValue(*(v562 + 111));
      *(context + 862) = CFBooleanValue;
      if (_logHandle)
      {
        v373 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v372 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v371 = init_default_corebrightness_log();
          v372 = v371;
        }

        v373 = v372;
      }

      v87 = v562;
      *(v562 + 39) = v373;
      v607 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v87[39], OS_LOG_TYPE_DEBUG))
      {
        v368 = *(v562 + 39);
        *v369 = v607;
        v88 = *(context + 862);
        v370 = v638;
        __os_log_helper_16_0_2_4_0_4_0(v638, 2, v88);
        _os_log_debug_impl(&dword_1DE8E5000, v368, v369[0], "[%x]: _settings._internal._lockScreenAutoBrightness=%x", v638, 0xEu);
      }

      CFDictionarySetValue(*(context + 47), *(v562 + 112), *(v562 + 111));
      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"ALSAccessoryAbsoluteThreshold"))
    {
      v366 = CFGetTypeID(*(v562 + 111));
      v365 = CFNumberGetTypeID();
      if (v366 == v365)
      {
        v89 = v562;
        *(v562 + 76) = *(context + 35);
        if (CFNumberGetValue(v89[111], kCFNumberFloatType, v606))
        {
          *(context + 35) = *(v562 + 76);
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"LogLevel"))
    {
      if (_logHandle)
      {
        v362 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v361 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v360 = init_default_corebrightness_log();
          v361 = v360;
        }

        v362 = v361;
      }

      v90 = v562;
      *(v562 + 37) = v362;
      v605 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v90[37], OS_LOG_TYPE_DEBUG))
      {
        v357 = *(v562 + 37);
        *v358 = v605;
        *&v91 = *(context + 268);
        *&v92 = *(context + 270);
        *&v93 = *(context + 269);
        *&v94 = *(context + 271);
        v359 = v637;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v637, v91, v92, v93, v94);
        _os_log_debug_impl(&dword_1DE8E5000, v357, v358[0], "curve E1: %0.2f L1: %0.4f E2: %0.2f L2: %0.4f", v637, 0x2Au);
      }

      if (_logHandle)
      {
        v356 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v355 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v354 = init_default_corebrightness_log();
          v355 = v354;
        }

        v356 = v355;
      }

      v95 = v562;
      *(v562 + 35) = v356;
      v604 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v95[35], OS_LOG_TYPE_DEBUG))
      {
        v351 = *(v562 + 35);
        *v352 = v604;
        *&v96 = *(context + 264);
        *&v97 = *(context + 265);
        *&v98 = *(context + 266);
        *&v99 = *(context + 267);
        v353 = v636;
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v636, v96, v97, v98, v99);
        _os_log_debug_impl(&dword_1DE8E5000, v351, v352[0], "dark curve E0a: %0.2f L0a: %0.4f E0b: %0.2f L0b: %0.4f", v636, 0x2Au);
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"AutoBrightnessProxEnabled"))
    {
      v349 = GetCFBooleanValue(*(v562 + 111));
      *(context + 3757) = v349 != 0;
      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"AutoBrightnessProxDelay"))
    {
      v347 = CFGetTypeID(*(v562 + 111));
      v346 = CFNumberGetTypeID();
      if (v347 == v346)
      {
        v100 = v562;
        *(v562 + 68) = *(context + 940);
        if (CFNumberGetValue(v100[111], kCFNumberFloatType, v603))
        {
          *(context + 940) = *(v562 + 68);
        }
      }

      goto LABEL_511;
    }

    v344 = CFEqual(*(v562 + 112), @"AutoBrightnessTouchEnabled");
    if (v344 || (v343 = CFEqual(*(v562 + 112), @"AutoBrightnessTouchDelay")) != 0 || (v342 = CFEqual(*(v562 + 112), @"AutoBrightnessTouchBufferPivot")) != 0 || (v341 = CFEqual(*(v562 + 112), @"AutoBrightnessTouchBufferMaxCount")) != 0 || (v340 = CFEqual(*(v562 + 112), @"AutoBrightnessTouchBufferWindowS")) != 0 || (v339 = CFEqual(*(v562 + 112), @"AutoBrightnessTouchRadius")) != 0)
    {
      v101 = context;
      v102 = v562;
      *(v562 + 28) = MEMORY[0x1E69E9820];
      *(v102 + 58) = -1073741824;
      *(v102 + 59) = 0;
      *(v102 + 30) = ___ZN4AABC20setPropertyForClientEPK10__CFStringPKvS4__block_invoke_742;
      *(v102 + 31) = &__block_descriptor_48_e35_v24__0____IOHIDServiceClient__8_v16l;
      *(v102 + 32) = *(v102 + 111);
      *(v102 + 33) = *(v102 + 112);
      AABC::enumerateALSes(v101, v602);
      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"AutoBrightnessLogMask"))
    {
      v337 = CFGetTypeID(*(v562 + 111));
      v336 = CFNumberGetTypeID();
      if (v337 == v336)
      {
        v103 = v562;
        *(v562 + 55) = *(context + 79);
        if (CFNumberGetValue(v103[111], kCFNumberIntType, v601))
        {
          *(context + 79) = *(v562 + 55) | 1;
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"AutoBrightnessLuxFilter"))
    {
      v333 = CFGetTypeID(*(v562 + 111));
      v332 = CFNumberGetTypeID();
      if (v333 == v332)
      {
        v104 = v562;
        *(v562 + 54) = *(context + 866);
        if (CFNumberGetValue(v104[111], kCFNumberIntType, v600))
        {
          if ((*(v562 + 54) & 0x80000000) == 0 && *(v562 + 54) <= 3)
          {
            *(context + 866) = *(v562 + 54);
          }
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"ALSIntPeriod"))
    {
      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayBrightnessAuto"))
    {
      AABC::UpdateAutoBrightnessEnabledStatus(context, *(v562 + 111));
      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"CBDisplayPresetDisableAutoBrightness"))
    {
      v327 = GetCFBooleanValue(*(v562 + 111));
      v599 = v327 == 0;
      if ((v327 == 0) != *(context + 127))
      {
        v105 = context;
        *(context + 127) = v599;
        AABC::_UpdateNitsRestrictions(v105, 0.0, 0.0, 1);
        if (v599)
        {
          v326 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 135), *(context + 138));
          v106 = context;
          v107 = v562;
          *(v562 + 52) = v326;
          v107[52] = fmaxf(v107[52], v106[180]);
          v107[52] = fminf(v107[52], v106[182]);
          AABC::UpdateDisplayBrightness_Block6(v106, 1, 2, 1, v107[52]);
        }

        if (*(context + 43))
        {
          v323 = *(context + 43);
          v324 = *(context + 44);
          v325 = [MEMORY[0x1E696AD98] numberWithBool:v599];
          v323(v324, @"CBAutoBrightnessAvailable", v325);
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayOrientation"))
    {
      v321 = CFGetTypeID(*(v562 + 111));
      v320 = CFNumberGetTypeID();
      if (v321 == v320)
      {
        v108 = v562;
        *(v562 + 51) = 0;
        CFNumberGetValue(v108[111], kCFNumberIntType, v598);
        AABC::SetDisplayOrientation(context, *(v562 + 51));
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayBrightness"))
    {
      v318 = CFGetTypeID(*(v562 + 111));
      v317 = CFDictionaryGetTypeID();
      if (v318 == v317)
      {
        v109 = v562;
        *(v562 + 50) = *(context + 131);
        *(v109 + 49) = 0;
        v316 = CFDictionaryGetValue(*(v109 + 111), @"Brightness");
        v110 = v562;
        *(v562 + 23) = v316;
        if (*(v110 + 23))
        {
          v315 = CFNumberGetTypeID();
          v314 = CFGetTypeID(*(v562 + 23));
          if (v315 == v314)
          {
            CFNumberGetValue(*(v562 + 23), kCFNumberFloatType, v597);
          }
        }

        v313 = CFDictionaryGetValue(*(v562 + 111), @"Commit");
        v111 = v562;
        *(v562 + 22) = v313;
        if (*(v111 + 22))
        {
          v312 = GetCFBooleanValue(*(v562 + 22));
          *(v562 + 49) = v312;
        }

        AABC::SetUserBrightness(context, *(v562 + 50), *(v562 + 49));
        if ((*(context + 3425) & 1) == 0 && *(v562 + 49))
        {
          v311 = DisplaySliderToLogicalBrightness(*(context + 50), *(context + 131));
          *(context + 857) = v311;
        }

        if (*(v562 + 49))
        {
          AABC::setAABCurveUpdateReason(context, 0);
        }
      }

      else
      {
        v310 = CFGetTypeID(*(v562 + 111));
        v309 = CFNumberGetTypeID();
        if (v310 == v309)
        {
          v112 = v562;
          *(v562 + 43) = *(context + 131);
          CFNumberGetValue(v112[111], kCFNumberFloatType, v596);
          AABC::SetUserBrightness(context, *(v562 + 43), 1);
          if ((*(context + 3425) & 1) == 0)
          {
            v308 = DisplaySliderToLogicalBrightness(*(context + 50), *(context + 131));
            *(context + 857) = v308;
          }
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayNitsKey"))
    {
      v306 = CFGetTypeID(*(v562 + 111));
      v305 = CFDictionaryGetTypeID();
      if (v306 == v305)
      {
        v113 = v562;
        *(v562 + 42) = *(context + 131);
        *(v113 + 41) = 0;
        v304 = CFDictionaryGetValue(*(v113 + 111), @"Brightness");
        v114 = v562;
        *(v562 + 19) = v304;
        if (*(v114 + 19))
        {
          v303 = CFNumberGetTypeID();
          v302 = CFGetTypeID(*(v562 + 19));
          if (v303 == v302)
          {
            v115 = v562;
            *(v562 + 37) = 0;
            if (CFNumberGetValue(v115[19], kCFNumberFloatType, v595))
            {
              v300 = DisplayLogicalToSliderBrightness(*(context + 50), *(v562 + 37));
              *(v562 + 42) = v300;
            }
          }
        }

        v299 = CFDictionaryGetValue(*(v562 + 111), @"Commit");
        v116 = v562;
        *(v562 + 17) = v299;
        if (*(v116 + 17))
        {
          v298 = GetCFBooleanValue(*(v562 + 17));
          *(v562 + 41) = v298;
        }

        AABC::SetUserBrightness(context, *(v562 + 42), *(v562 + 41));
      }

      else
      {
        v297 = CFGetTypeID(*(v562 + 111));
        v296 = CFNumberGetTypeID();
        if (v297 == v296)
        {
          v117 = v562;
          *(v562 + 33) = 0;
          if (CFNumberGetValue(v117[111], kCFNumberFloatType, v594))
          {
            v294 = DisplayLogicalToSliderBrightness(*(context + 50), *(v562 + 33));
            AABC::SetUserBrightness(context, v294, 1);
            if (*(context + 857) < *(context + 180))
            {
              *(context + 857) = *(v562 + 33);
            }
          }
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayAutoBrightnessStatus"))
    {
      v292 = CFGetTypeID(*(v562 + 111));
      v291 = CFDictionaryGetTypeID();
      if (v292 == v291)
      {
        v118 = v562;
        *(v562 + 32) = 0;
        *(v118 + 31) = 0;
        *(v118 + 14) = 0;
        v290 = CFDictionaryGetValue(*(v118 + 111), @"DisplayAutoBrightnessActive");
        v119 = v562;
        *(v562 + 14) = v290;
        if (*(v119 + 14))
        {
          v289 = CFGetTypeID(*(v562 + 14));
          v288 = CFBooleanGetTypeID();
          if (v289 == v288)
          {
            v287 = CFBooleanGetValue(*(v562 + 14));
            *(v562 + 32) = v287;
          }
        }

        v286 = CFDictionaryGetValue(*(v562 + 111), @"DisplayAutoBrightnessDelay");
        v120 = v562;
        *(v562 + 14) = v286;
        if (*(v120 + 14))
        {
          v285 = CFGetTypeID(*(v562 + 14));
          v284 = CFNumberGetTypeID();
          if (v285 == v284)
          {
            CFNumberGetValue(*(v562 + 14), kCFNumberFloatType, v593);
          }
        }

        AABC::SetAutoBrightnessStatus(context, *(v562 + 32), *(v562 + 31));
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayBrightnessFadePeriod"))
    {
      v282 = CFNumberGetTypeID();
      v281 = CFGetTypeID(*(v562 + 111));
      if (v282 == v281)
      {
        CFNumberGetValue(*(v562 + 111), kCFNumberFloatType, context + 492);
        if (_logHandle)
        {
          v280 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v279 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v278 = init_default_corebrightness_log();
            v279 = v278;
          }

          v280 = v279;
        }

        v121 = v562;
        *(v562 + 13) = v280;
        v592 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v121[13], OS_LOG_TYPE_DEBUG))
        {
          v275 = *(v562 + 13);
          *v276 = v592;
          *&v122 = *(context + 123);
          v277 = v635;
          __os_log_helper_16_0_2_4_0_8_0(v635, 2, v122);
          _os_log_debug_impl(&dword_1DE8E5000, v275, v276[0], "[%x]: _fadePeriod=%f", v635, 0x12u);
        }
      }

      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayBrightnessFactorWithFade"))
    {
      v273 = CFNumberGetTypeID();
      v272 = CFGetTypeID(*(v562 + 111));
      if (v273 == v272)
      {
        v123 = v562;
        *(v562 + 24) = *(context + 122);
        CFNumberGetValue(v123[111], kCFNumberFloatType, v591);
        AABC::SetDisplayFactor(context, *(v562 + 24), 0);
      }

      else if (*(v562 + 111))
      {
        v271 = CFDictionaryGetTypeID();
        v270 = CFGetTypeID(*(v562 + 111));
        if (v271 == v270)
        {
          v269 = CFDictionaryGetValue(*(v562 + 111), @"DisplayBrightnessFadePeriod");
          v124 = v562;
          *(v562 + 11) = v269;
          if (*(v124 + 11))
          {
            v268 = CFNumberGetTypeID();
            v267 = CFGetTypeID(*(v562 + 11));
            if (v268 == v267)
            {
              CFNumberGetValue(*(v562 + 11), kCFNumberFloat32Type, context + 492);
              if (_logHandle)
              {
                v266 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v265 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v264 = init_default_corebrightness_log();
                  v265 = v264;
                }

                v266 = v265;
              }

              v125 = v562;
              *(v562 + 10) = v266;
              v590 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v125[10], OS_LOG_TYPE_DEBUG))
              {
                v261 = *(v562 + 10);
                *v262 = v590;
                *&v126 = *(context + 123);
                v263 = v634;
                __os_log_helper_16_0_2_4_0_8_0(v634, 2, v126);
                _os_log_debug_impl(&dword_1DE8E5000, v261, v262[0], "[%x]: _fadePeriod=%f", v634, 0x12u);
              }
            }
          }

          v260 = CFDictionaryGetValue(*(v562 + 111), @"DisplayBrightnessFactor");
          v127 = v562;
          *(v562 + 8) = v260;
          if (*(v127 + 8))
          {
            v259 = CFNumberGetTypeID();
            v258 = CFGetTypeID(*(v562 + 8));
            if (v259 == v258)
            {
              v128 = v562;
              *(v562 + 15) = *(context + 122);
              CFNumberGetValue(v128[8], kCFNumberFloat32Type, v589);
              AABC::SetDisplayFactor(context, *(v562 + 15), 0);
            }
          }
        }
      }

LABEL_386:
      AABC::NotifyCPMSWhenDisplayChangeState(context, *(context + 122) > 0.0);
      goto LABEL_511;
    }

    if (CFEqual(*(v562 + 112), @"DisplayBrightnessFactor"))
    {
      v256 = CFNumberGetTypeID();
      v255 = CFGetTypeID(*(v562 + 111));
      if (v256 == v255)
      {
        v129 = v562;
        *(v562 + 14) = *(context + 122);
        CFNumberGetValue(v129[111], kCFNumberFloatType, v588);
        AABC::SetDisplayFactor(context, *(v562 + 14), 0);
      }

      goto LABEL_386;
    }

    if (CFEqual(*(v562 + 112), @"DominoStateUpdate"))
    {
      v253 = CFBooleanGetTypeID();
      v252 = CFGetTypeID(*(v562 + 111));
      if (v253 == v252)
      {
        v251 = CFBooleanGetValue(*(v562 + 111));
        v587 = v251;
        if ((*(context + 3425) & 1) != v251)
        {
          v130 = context;
          *(context + 3425) = v587 != 0;
          if (v130[3425])
          {
            v139 = context;
            *(context + 3426) = *(context + 128) == 0;
            LogicalBrightness = DisplayGetLogicalBrightness(v139[50]);
            v140 = context;
            *(context + 857) = LogicalBrightness;
            AABC::UpdateAutoBrightnessEnabledStatus(v140, *MEMORY[0x1E695E4D0]);
            DisplaySetProperty(*(context + 50), @"DisplayBrightnessAuto", MEMORY[0x1E695E118]);
            v245 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 135), *(context + 138));
            v141 = context;
            *(v562 + 7) = v245;
            v244 = AABC::IlluminanceToLuminance(v141, v141 + 804, v141[135], v141[138]);
            v142 = context;
            v143 = v562;
            *(v562 + 6) = v244;
            v143[7] = fminf(v143[7], v143[6]);
            if ((v142[3426] & 1) == 0)
            {
              *(v562 + 7) = fminf(*(context + 857), *(v562 + 7));
            }

            v144 = context;
            v145 = v562;
            *(v562 + 7) = fmaxf(*(v562 + 7), *(context + 180));
            v145[7] = fminf(v145[7], v144[182]);
            AABC::UpdateDisplayBrightness_Block6(v144, 1, 2, 1, v145[7]);
          }

          else
          {
            if (*(context + 3426))
            {
              v250 = AABC::IlluminanceToLuminance(context, context + 264, *(context + 135), *(context + 138));
              v134 = context;
              v135 = v562;
              *(v562 + 11) = v250;
              v135[11] = fmaxf(v135[11], v134[180]);
              v135[11] = fminf(v135[11], v134[182]);
              AABC::UpdateDisplayBrightness_Block6(v134, 1, 2, 1, v135[11]);
            }

            else
            {
              AABC::CancelRamp(context);
              v131 = context;
              v132 = v563;
              v133 = v562;
              *(v562 + 12) = 10;
              AABC::SetBrightness(v131, v131[857], 0.5, *(v133 + 12), v132, v131);
            }

            v136 = v562;
            *(v562 + 10) = *(context + 3426) & 1;
            if (*(v136 + 10))
            {
              v249 = *MEMORY[0x1E695E4D0];
            }

            else
            {
              v249 = *MEMORY[0x1E695E4C0];
            }

            v137 = context;
            v138 = v562;
            *(v562 + 4) = v249;
            AABC::UpdateAutoBrightnessEnabledStatus(v137, v138[4]);
            v247 = *(context + 50);
            v248 = [MEMORY[0x1E696AD98] numberWithInt:*(v562 + 10)];
            DisplaySetProperty(v247, @"DisplayBrightnessAuto", v248);
          }
        }
      }
    }

    else if (CFEqual(*(v562 + 112), @"ActivateALS"))
    {
      v242 = CFBooleanGetTypeID();
      v241 = CFGetTypeID(*(v562 + 111));
      if (v242 == v241)
      {
        v240 = CFBooleanGetValue(*(v562 + 111));
        v146 = context;
        v147 = v562;
        v586[23] = v240;
        v148 = 1.0;
        if (!v240)
        {
          v148 = 0.0;
        }

        v149 = v148;
        *(v562 + 4) = v149;
        AABC::SetDisplayFactor(v146, v147[4], 1);
      }
    }

    else if (!CFEqual(*(v562 + 112), @"DisplayBrightnessFactorPending"))
    {
      if (CFEqual(*(v562 + 112), @"UserInteractedWithUI"))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v150 = v562;
        v151 = context;
        *(v562 + 1) = Current;
        if (v151[85] + 3.0 >= v150[1])
        {
          if (_logHandle)
          {
            v230 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v229 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v228 = init_default_corebrightness_log();
              v229 = v228;
            }

            v230 = v229;
          }

          oslog = v230;
          v582 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
          {
            v225 = oslog;
            *v226 = v582;
            v227 = v633;
            __os_log_helper_16_0_1_8_0(v633, 0x4008000000000000);
            _os_log_impl(&dword_1DE8E5000, oslog, v582, "User interacted with UI in first %f sec of fast ramp mode -> postpone switching to slow mode.", v633, 0xCu);
          }

          *(context + 86) = *(context + 85) + 3.0;
        }

        else
        {
          if (_logHandle)
          {
            v236 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v235 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v234 = init_default_corebrightness_log();
              v235 = v234;
            }

            v236 = v235;
          }

          v152 = v562;
          *v562 = v236;
          v585 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(*v152, OS_LOG_TYPE_INFO))
          {
            v231 = *v562;
            *v232 = v585;
            v233 = v584;
            __os_log_helper_16_0_0(v584);
            _os_log_impl(&dword_1DE8E5000, v231, v232[0], "User interacted with UI -> end fast ramp mode", v584, 2u);
          }

          if (*(context + 435))
          {
            AABC::CancelFastRampMode(context);
          }

          else if (*(context + 169))
          {
            *(context + 86) = *(context + 85);
          }
        }

        *(context + 3328) = 1;
      }

      else if (CFEqual(*(v562 + 112), @"ALSTurnOn"))
      {
        v581 = 0;
        v223 = CFGetTypeID(*(v562 + 111));
        v222 = CFBooleanGetTypeID();
        if (v223 == v222)
        {
          v221 = CFBooleanGetValue(*(v562 + 111));
          v581 = v221;
          if (v221 != *(context + 129))
          {
            v153 = context;
            *(context + 129) = v581;
            *(v153 + 160) = v581 != 0;
            v153[102] = 1.0;
            AABC::UpdateALSState(v153, 4);
          }
        }
      }

      else if (CFEqual(*(v562 + 112), @"IOHIDALSTestMode"))
      {
        v219 = CFNumberGetTypeID();
        v218 = CFGetTypeID(*(v562 + 111));
        if (v219 == v218)
        {
          v154 = context;
          v155 = v562;
          *(context + 160) = 0;
          CFNumberGetValue(v155[111], kCFNumberSInt32Type, v154 + 640);
          AABC::UpdateALSState(context, 4);
        }
      }

      else
      {
        v217 = CFEqual(*(v562 + 112), @"Aggressivity");
        if (v217 && (v215 = *(v562 + 107), v216 = objc_opt_class(), v214 = objc_opt_isKindOfClass(), (v214 & 1) != 0))
        {
          v213 = [*(v562 + 107) unsignedIntValue];
          AABC::SetAggressivity(context, v213);
        }

        else if (CFEqual(*(v562 + 112), @"EcoMode"))
        {
          v580 = 0;
          v211 = CFGetTypeID(*(v562 + 111));
          v210 = CFBooleanGetTypeID();
          if (v211 == v210)
          {
            v209 = CFBooleanGetValue(*(v562 + 111));
            v580 = v209 != 0;
          }

          else
          {
            v208 = CFGetTypeID(*(v562 + 111));
            v207 = CFNumberGetTypeID();
            if (v208 == v207)
            {
              v579 = 0;
              CFNumberGetValue(*(v562 + 111), kCFNumberIntType, &v579);
              v580 = v579 != 0;
            }
          }

          AABC::_UpdateEcoModeState(context, v580);
          v206 = _os_feature_enabled_impl();
          if ((v206 & 1) == 0)
          {
            if (v580)
            {
              v156 = 70;
            }

            else
            {
              v156 = 0;
            }

            [*(context + 486) forceMitigationLevel:v156];
          }
        }

        else if (CFEqual(*(v562 + 112), @"PreStrobe"))
        {
          if (*(v562 + 111))
          {
            v204 = CFNumberGetTypeID();
            v203 = CFGetTypeID(*(v562 + 111));
            if (v204 == v203)
            {
              v578 = 0;
              CFNumberGetValue(*(v562 + 111), kCFNumberIntType, &v578);
              if (*(context + 58))
              {
                service = *(context + 58);
                if (v578)
                {
                  property = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  property = *MEMORY[0x1E695E4C0];
                }

                IOHIDServiceClientSetProperty(service, @"MuonEnabled", property);
              }

              *(context + 497) = v578 != 0;
            }
          }
        }

        else if (*(v562 + 111) && (v200 = CFEqual(*(v562 + 112), @"BrightnessWeakCap")) != 0)
        {
          v199 = CFNumberGetTypeID();
          v198 = CFGetTypeID(*(v562 + 111));
          if (v199 == v198)
          {
            v577 = 100.0;
            CFNumberGetValue(*(v562 + 111), kCFNumberFloatType, &v577);
            AABC::CancelRamp(context);
            if (v577 >= 100.0)
            {
              v158 = context;
              *(context + 978) = *(context + 182);
              v158[3916] = 0;
            }

            else
            {
              v197 = DisplaySliderToLogicalBrightness(*(context + 50), v577);
              v157 = context;
              *(context + 978) = v197;
              v157[3916] = 1;
              *(v157 + 980) = *(v157 + 135);
              if (_logHandle)
              {
                v196 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v195 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v194 = init_default_corebrightness_log();
                  v195 = v194;
                }

                v196 = v195;
              }

              v576 = v196;
              v575 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
              {
                v191 = v576;
                *v192 = v575;
                v193 = v574;
                __os_log_helper_16_0_0(v574);
                _os_log_impl(&dword_1DE8E5000, v191, v192[0], "Enabling weak cap\n", v574, 2u);
              }
            }

            *(context + 3924) = 1;
          }
        }

        else if (*(v562 + 111) && (v190 = CFEqual(*(v562 + 112), @"RLuxEnable")) != 0)
        {
          v189 = CFBooleanGetTypeID();
          v188 = CFGetTypeID(*(v562 + 111));
          if (v189 == v188)
          {
            v573 = 0;
            v187 = CFBooleanGetValue(*(v562 + 111));
            v573 = v187;
            v186 = v187 == 0;
            v572[0] = std::bitset<3ul>::operator[][abi:de200100](context + 296, 2uLL);
            v572[1] = v159;
            std::__bit_reference<std::__bitset<1ul,3ul>,true>::operator=[abi:de200100](v572, v186);
            AABC::evaluateAABRearConditions(context);
          }
        }

        else if (*(v562 + 111) && (v185 = CFEqual(*(v562 + 112), @"AliasingMitigationFilterDuration")) != 0)
        {
          v184 = CFNumberGetTypeID();
          v183 = CFGetTypeID(*(v562 + 111));
          if (v184 == v183)
          {
            v571 = 0;
            CFNumberGetValue(*(v562 + 111), kCFNumberIntType, &v571);
            AABC::resetFilter(context, context + 27);
            if (v571 < 0)
            {
              AABC::setFilterDuration(context, context + 216, 5);
            }

            else
            {
              AABC::setFilterDuration(context, context + 216, v571);
            }
          }
        }

        else
        {
          v182 = [@"CBDynamicSliderScaler" isEqualToString:*(v562 + 106)];
          if (v182 & 1) != 0 && (v180 = *(v562 + 107), v181 = objc_opt_class(), v179 = objc_opt_isKindOfClass(), (v179))
          {
            [*(v562 + 107) floatValue];
            v178 = v160;
            AABC::UpdateAmbrosiaFactor(context, v160);
          }

          else
          {
            v177 = [@"CBPowerMitigationLevel" isEqualToString:*(v562 + 106)];
            if (v177 & 1) != 0 && (v175 = *(v562 + 107), v176 = objc_opt_class(), v174 = objc_opt_isKindOfClass(), (v174))
            {
              v173 = [*(v562 + 107) unsignedIntValue];
              v570 = v173;
              v569[0] = xmmword_1DEACE618;
              v569[1] = xmmword_1DEACE628;
              if (v173)
              {
                [*(context + 486) stop];
                v170 = *(context + 486);
                v171 = v570;
                v161 = std::array<PMMitigationLevel,4ul>::size[abi:de200100]();
                v172 = clamp(v570, 0.0, (v161 - 1));
                [v170 forceMitigationLevel:{*std::array<PMMitigationLevel, 4ul>::operator[][abi:de200100](v569, v172)}];
              }

              else
              {
                [*(context + 486) start];
              }
            }

            else
            {
              if (_logHandle)
              {
                v169 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v168 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v167 = init_default_corebrightness_log();
                  v168 = v167;
                }

                v169 = v168;
              }

              v568 = v169;
              v567 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
              {
                v164[9] = v568;
                *v165 = v567;
                v162 = *(v562 + 112);
                v163 = *(v562 + 111);
                v166 = v632;
                __os_log_helper_16_2_3_4_0_8_64_8_64(v632, 1, v162, v163);
                _os_log_debug_impl(&dword_1DE8E5000, v568, v567, "[%x]: unknown key=%@ property=%@", v632, 0x1Cu);
              }
            }
          }
        }
      }
    }
  }

LABEL_511:
  *MEMORY[0x1E69E9840];
}

void CFXAnimateAmbientAdaptationModes(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, float *a6, float a7, float a8)
{
  if (a1 && *(a1 + 96) && a4 && a5 > 0)
  {
    v18 = 1.0;
    v17 = 0;
    v16 = *(*(a1 + 96) + 248);
    for (i = 0; i < a5; ++i)
    {
      v14 = _CFXGetStrengthFromMode(a1, *(a4 + 4 * i));
      if (v14 <= v18)
      {
        v18 = v14;
        v16 = *(a4 + 4 * i);
        v17 = 1;
      }
    }

    v13 = 1.0;
    v12 = 0;
    v11 = *(*(a1 + 96) + 248);
    if (a2)
    {
      for (j = 0; j < a3; ++j)
      {
        v9 = _CFXGetStrengthFromMode(a1, *(a2 + 4 * j));
        if (v9 <= v13)
        {
          v13 = v9;
          v11 = *(a2 + 4 * j);
          v12 = 1;
        }
      }
    }

    if ((v12 & 1) == 0)
    {
      v13 = _CFXGetStrengthFromMode(a1, *(*(a1 + 96) + 248));
    }

    if (v17)
    {
      v23 = fminf(1.0, fmaxf(0.0, a7));
      v8 = v13 + (v23 * (v18 - v13));
      if (a6)
      {
        *a6 = v8;
      }

      syslog(7, "ANIMATING from mode %d to mode %d with ratio %f and period %f -> strength %f", v11, v16, (v23 * 100.0), a8, v8);
      if (*(*(a1 + 96) + 184))
      {
        CFXSetAmbientAdaptationStrength(a1, v8, a8);
      }

      if (v23 >= 1.0)
      {
        *(*(a1 + 96) + 248) = v16;
      }

      else
      {
        *(*(a1 + 96) + 248) = v11;
      }
    }
  }
}

float _CFXGetStrengthFromMode(uint64_t a1, unsigned int a2)
{
  v3 = 0.0;
  if (a1 && *(a1 + 96))
  {
    return *(*(a1 + 96) + 224 + 4 * a2);
  }

  return v3;
}

void CFXSetAmbientAdaptationStrength(uint64_t a1, float a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 2252) >= 0.0)
    {
      a3 = *(a1 + 2252);
    }

    if (*(a1 + 96))
    {
      v11 = *(*(a1 + 96) + 252) * a3;
      if (a2 != **(a1 + 96))
      {
        v8 = **(a1 + 96);
        **(a1 + 96) = a2;
        if (*(*(a1 + 96) + 56))
        {
          free(*(*(a1 + 96) + 56));
          *(*(a1 + 96) + 56) = 0;
        }

        syslog(7, "Set strength %f\n", a2);
        *(*(a1 + 96) + 56) = _CFXPolygonFromStrength((*(a1 + 96) + 40), *(*(a1 + 96) + 148), 0.85);
        Current = CFAbsoluteTimeGetCurrent();
        if ((*(a1 + 364) & 1) != 0 && (*(*(a1 + 96) + 301) & 1) == 0)
        {
          *(*(a1 + 96) + 272) = 0;
          *(*(a1 + 96) + 284) = *(*(a1 + 96) + 280);
          *(*(a1 + 96) + 276) = a2;
          *(*(a1 + 96) + 264) = Current;
          *(*(a1 + 96) + 256) = v11;
          if (*(*(a1 + 96) + 303))
          {
            *(*(a1 + 96) + 328) = 0;
            *(*(a1 + 96) + 340) = *(*(a1 + 96) + 336);
            *(*(a1 + 96) + 332) = *(*(a1 + 96) + 332);
            *(*(a1 + 96) + 320) = Current;
            *(*(a1 + 96) + 312) = v11;
          }

          if (*(a1 + 328))
          {
            (*(a1 + 328))(*(a1 + 336), 0);
          }
        }

        if (_COREBRIGHTNESS_LOG_DEFAULT || init_default_corebrightness_log())
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v4 = inited;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v3 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v3 = init_default_corebrightness_log();
          }

          v4 = v3;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v13, "Harmony Strength", COERCE__INT64(v8), COERCE__INT64(a2), *(*(a1 + 96) + 312));
          _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "[WP update: %s]: %f -> %f t: %f", v13, 0x2Au);
        }

        if (*(*(a1 + 96) + 184))
        {
          v6 = (a2 * 10.0);
          if (v6 > 9)
          {
            v6 = 9;
          }

          if (v6 != *(a1 + 1736))
          {
            *(a1 + 1656 + 8 * *(a1 + 1736)) = *(a1 + 1656 + 8 * *(a1 + 1736)) + MachTimeToSeconds((Current - *(a1 + 1744)));
            *(a1 + 1744) = Current;
            *(a1 + 1736) = v6;
          }
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t CFXGetAmbientAdaptationMode(uint64_t a1, float *a2)
{
  v3 = 0;
  if (a1)
  {
    if (*(a1 + 96))
    {
      v3 = *(*(a1 + 96) + 248);
      if (a2)
      {
        *a2 = _CFXGetStrengthFromMode(a1, v3);
      }
    }
  }

  return v3;
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void disp_dispatch_sync(NSObject *a1, void (**a2)(void))
{
  if (a1)
  {
    dispatch_sync(a1, a2);
  }

  else
  {
    a2[2]();
  }
}

uint64_t DisplaySetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x20000000;
  v18 = 32;
  v19 = 1;
  v3 = *(a1 + 144);
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __DisplaySetProperty_block_invoke;
  v10 = &unk_1E867CA18;
  v12 = a3;
  v13 = a2;
  v14 = v22;
  v11 = &v15;
  disp_dispatch_sync(v3, &v6);
  v5 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v5;
}

void __DisplaySetProperty_block_invoke(uint64_t a1)
{
  v646 = *MEMORY[0x1E69E9840];
  v582 = a1;
  v581 = a1;
  v580 = 0.0;
  if (*(a1 + 40) && CFEqual(*(a1 + 48), @"DisplayBrightness"))
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(*(a1 + 40)))
    {
      v580 = *(*(a1 + 56) + 336);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
      if (_logHandle)
      {
        v274 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v274 = inited;
      }

      v579 = v274;
      v578 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v274, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v645, "DisplayBrightness", COERCE__INT64(v580));
        _os_log_debug_impl(&dword_1DE8E5000, v579, v578, "DisplaySetProperty: %s = %f\n", v645, 0x16u);
      }

      v577[0] = 1;
      *&v577[1] = v580;
      __DisplayUpdateAAPStateInternal(*(a1 + 56), v577, 1);
      v576 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v580);
      if (v576 > *(*(a1 + 56) + 528))
      {
        _DisplaySetBrightnessWeakCapWithFade(*(a1 + 56), 0, v576, 0.0);
      }

      __DisplaySetBrightnessWithFade(*(a1 + 56), 12296, v580, 0.0);
    }

    else
    {
      v272 = CFDictionaryGetTypeID();
      if (v272 == CFGetTypeID(*(a1 + 40)))
      {
        Value = CFDictionaryGetValue(*(a1 + 40), @"Brightness");
        v574 = CFDictionaryGetValue(*(a1 + 40), @"Commit");
        v573 = CFDictionaryGetValue(*(a1 + 40), @"Period");
        if (Value)
        {
          v271 = CFGetTypeID(Value);
          if (v271 == CFNumberGetTypeID())
          {
            v572 = *(*(a1 + 56) + 276);
            if (v573)
            {
              v270 = CFGetTypeID(v573);
              if (v270 == CFNumberGetTypeID())
              {
                if (CFNumberIsFloatType(v573))
                {
                  CFNumberGetValue(v573, kCFNumberFloat32Type, &v572);
                }
              }
            }

            v580 = *(*(a1 + 56) + 336);
            CFNumberGetValue(Value, kCFNumberFloatType, &v580);
            v580 = v580 / *(*(a1 + 56) + 12728);
            v571[0] = 1;
            *&v571[1] = v580;
            __DisplayUpdateAAPStateInternal(*(a1 + 56), v571, v574 == *MEMORY[0x1E695E4D0]);
            v570 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v580);
            if (v570 > *(*(a1 + 56) + 528))
            {
              _DisplaySetBrightnessWeakCapWithFade(*(a1 + 56), 0, v570, v572);
            }

            if (_logHandle)
            {
              v269 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v268 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v268 = init_default_corebrightness_log();
              }

              v269 = v268;
            }

            v569 = v269;
            v568 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_3_8_32_8_0_8_0(v644, "DisplayBrightness", COERCE__INT64(v580), COERCE__INT64(v570));
              _os_log_debug_impl(&dword_1DE8E5000, v569, v568, "DisplaySetProperty: %s = %f (nits=%f)\n", v644, 0x20u);
            }

            if (v574 == *MEMORY[0x1E695E4D0])
            {
              __DisplayReportCommit(*(a1 + 56), v580);
            }

            if (v574 == *MEMORY[0x1E695E4D0])
            {
              v1 = 12296;
            }

            else
            {
              v1 = 8200;
            }

            v567 = v1;
            if (*(*(a1 + 56) + 323))
            {
              v566 = v572;
              v565 = _DisplayLuminanceToPerceptualLuminanceInternal(*(a1 + 56), *(*(a1 + 56) + 1256));
              v564 = _DisplayLuminanceToPerceptualLuminanceInternal(*(a1 + 56), v570);
              v563 = v564 - v565;
              if ((v564 - v565) < 0.0 && v566 <= 0.0)
              {
                v566 = 0.4;
              }

              if (v566 <= 0.0)
              {
                *(*(a1 + 56) + 280) = -1.0;
              }

              else
              {
                v563 = fminf(fmaxf(fabsf(v563), 0.0), 1.0);
                *(*(a1 + 56) + 280) = v580;
                v567 |= 0x80u;
                v572 = v566 * v563;
              }
            }

            __DisplaySetBrightnessWithFade(*(a1 + 56), v567, v580, v572);
            if (v574 == *MEMORY[0x1E695E4D0])
            {
              if (_logHandle)
              {
                v267 = _logHandle;
              }

              else
              {
                v266 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                v267 = v266;
              }

              v562 = v267;
              v561 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_4_0(v643, "User change", COERCE__INT64(v580), COERCE__INT64(v570), COERCE__INT64(*(*(a1 + 56) + 1260)), v574 == *MEMORY[0x1E695E4D0]);
                _os_log_impl(&dword_1DE8E5000, v562, v561, "[BRT update: %s]: slider value = %f, nits = %f, nits physical = %f, commit = %d", v643, 0x30u);
              }
            }
          }
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else if (*(a1 + 40) && CFEqual(*(a1 + 48), @"DisplayNitsKey"))
  {
    v265 = CFNumberGetTypeID();
    if (v265 == CFGetTypeID(*(a1 + 40)))
    {
      v580 = *(*(a1 + 56) + 1256);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
      if (_logHandle)
      {
        v264 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v263 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v263 = init_default_corebrightness_log();
        }

        v264 = v263;
      }

      v560 = v264;
      v559 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v642, "DisplayNitsKey", COERCE__INT64(v580));
        _os_log_debug_impl(&dword_1DE8E5000, v560, v559, "DisplaySetProperty: %s = %f\n", v642, 0x16u);
      }

      _DisplaySetLogicalBrightnessWithFade(*(a1 + 56), 12296, 0, 0, v580, 0.0);
    }

    else
    {
      v262 = CFDictionaryGetTypeID();
      if (v262 == CFGetTypeID(*(a1 + 40)))
      {
        v558 = CFDictionaryGetValue(*(a1 + 40), @"Brightness");
        v557 = CFDictionaryGetValue(*(a1 + 40), @"Commit");
        v556 = CFDictionaryGetValue(*(a1 + 40), @"Period");
        if (v558)
        {
          v261 = CFGetTypeID(v558);
          if (v261 == CFNumberGetTypeID())
          {
            v555 = *(*(a1 + 56) + 276);
            if (v556)
            {
              v260 = CFGetTypeID(v556);
              if (v260 == CFNumberGetTypeID())
              {
                if (CFNumberIsFloatType(v556))
                {
                  CFNumberGetValue(v556, kCFNumberFloat32Type, &v555);
                }
              }
            }

            v580 = *(*(a1 + 56) + 1256);
            CFNumberGetValue(v558, kCFNumberFloatType, &v580);
            if (v557 == *MEMORY[0x1E695E4D0])
            {
              v554 = _DisplayLogicalToSliderBrightnessInternal(*(a1 + 56), v580);
              __DisplayReportCommit(*(a1 + 56), v554);
            }

            if (_logHandle)
            {
              v259 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v258 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v258 = init_default_corebrightness_log();
              }

              v259 = v258;
            }

            v553 = v259;
            v552 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v259, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_2_8_32_8_0(v641, "DisplayNitsKey", COERCE__INT64(v580));
              _os_log_debug_impl(&dword_1DE8E5000, v553, v552, "DisplaySetProperty: %s = %f\n", v641, 0x16u);
            }

            if (v557 == *MEMORY[0x1E695E4D0])
            {
              v2 = 12296;
            }

            else
            {
              v2 = 8200;
            }

            _DisplaySetLogicalBrightnessWithFade(*(a1 + 56), v2, 0, 0, v580, v555);
          }
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else if (CFEqual(*(a1 + 48), @"kIOHIDDisplaySliderMovementFadePeriodKey"))
  {
    v257 = CFNumberGetTypeID();
    if (v257 == CFGetTypeID(*(a1 + 40)) && CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580))
    {
      *(*(a1 + 56) + 276) = v580;
      if (_logHandle)
      {
        v256 = _logHandle;
      }

      else
      {
        v255 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v256 = v255;
      }

      v551 = v256;
      v550 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v640, "kIOHIDDisplaySliderMovementFadePeriodKey", COERCE__INT64(v580));
        _os_log_debug_impl(&dword_1DE8E5000, v551, v550, "DisplaySetProperty: %s = %f\n", v640, 0x16u);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CPMSToggleHDRCap"))
  {
    v254 = CFBooleanGetTypeID();
    if (v254 == CFGetTypeID(*(a1 + 40)))
    {
      v3 = *(a1 + 40) == *MEMORY[0x1E695E4D0];
      v549 = v3;
      if (v3)
      {
        *(*(a1 + 56) + 12081) = 0;
        *(*(a1 + 56) + 12082) = 0;
        __DisplayStartAPLCPMSTimer(*(a1 + 56), 1.0);
      }

      else if (*(*(a1 + 56) + 12112))
      {
        __DisplayProcessHDRStatusForCoreAnalytics(*(a1 + 56));
        dispatch_release(*(*(a1 + 56) + 12112));
        *(*(a1 + 56) + 12112) = 0;
        *(*(a1 + 56) + 12088) = 0;
        *(*(a1 + 56) + 12096) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CPMSPowerAccumulator"))
  {
    v544 = 0;
    v545 = &v544;
    v546 = 0x20000000;
    v547 = 32;
    v548 = 0;
    if (DisplayHasDCP(*(a1 + 56)))
    {
      v540[0] = 0;
      v540[1] = v540;
      v541 = 0x20000000;
      v542 = 32;
      v543 = 0;
      v4 = *(*(a1 + 56) + 152);
      v532 = MEMORY[0x1E69E9820];
      v533 = -1073741824;
      v534 = 0;
      v535 = __DisplaySetProperty_block_invoke_458;
      v536 = &unk_1E867C9D8;
      v537 = &v544;
      v539 = *(a1 + 56);
      v538 = v540;
      dispatch_sync(v4, &v532);
      _Block_object_dispose(v540, 8);
    }

    else
    {
      v545[3] = __DisplayGetPowerAccumulator(*(a1 + 56));
    }

    v531 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, v545 + 3);
    if (v531)
    {
      CFDictionarySetValue(*(*(a1 + 56) + 192), @"CPMSPowerAccumulatorValue", v531);
      CFRelease(v531);
    }

    _Block_object_dispose(&v544, 8);
  }

  else if (CFEqual(*(a1 + 48), @"CoreBrightnessBDMEnabled"))
  {
    if (*(a1 + 40))
    {
      v253 = CFNumberGetTypeID();
      if (v253 == CFGetTypeID(*(a1 + 40)))
      {
        v530 = *(*(a1 + 56) + 1176) & 1;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v530);
        *(*(a1 + 56) + 1176) = v530 != 0;
        if (_logHandle)
        {
          v252 = _logHandle;
        }

        else
        {
          v251 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v252 = v251;
        }

        v529 = v252;
        v528 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v252, OS_LOG_TYPE_DEBUG))
        {
          if (v530)
          {
            v5 = "enabled";
          }

          else
          {
            v5 = "disabled";
          }

          __os_log_helper_16_2_1_8_32(v639, v5);
          _os_log_debug_impl(&dword_1DE8E5000, v529, v528, "BrightDotMitigation %s", v639, 0xCu);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayInitialBrightness"))
  {
    v250 = CFNumberGetTypeID();
    if (v250 == CFGetTypeID(*(a1 + 40)))
    {
      v580 = *(*(a1 + 56) + 336);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
      if (_logHandle)
      {
        v249 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v248 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v248 = init_default_corebrightness_log();
        }

        v249 = v248;
      }

      v527 = v249;
      v526 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v249, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v638, "DisplayInitialBrightness", COERCE__INT64(v580));
        _os_log_debug_impl(&dword_1DE8E5000, v527, v526, "DisplaySetProperty: %s = %f\n", v638, 0x16u);
      }

      if (*(*(a1 + 56) + 348) == 0.0)
      {
        _DisplaySetBrightness(*(a1 + 56), v580);
      }

      else if (*(*(a1 + 56) + 1384) != 0.0 && *(*(a1 + 56) + 1400) == 0.0)
      {
        *(*(a1 + 56) + 12496) = v580;
        *(*(a1 + 56) + 12500) = 4096;
      }
    }

    else
    {
      v247 = CFDictionaryGetTypeID();
      if (v247 == CFGetTypeID(*(a1 + 40)))
      {
        v525 = CFDictionaryGetValue(*(a1 + 40), @"Brightness");
        v524 = CFDictionaryGetValue(*(a1 + 40), @"Commit");
        if (v525)
        {
          v246 = CFGetTypeID(v525);
          if (v246 == CFNumberGetTypeID())
          {
            v580 = *(*(a1 + 56) + 336);
            CFNumberGetValue(v525, kCFNumberFloatType, &v580);
            if (_logHandle)
            {
              v245 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v244 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v244 = init_default_corebrightness_log();
              }

              v245 = v244;
            }

            v523 = v245;
            v522 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_2_8_32_8_0(v637, "DisplayInitialBrightness", COERCE__INT64(v580));
              _os_log_debug_impl(&dword_1DE8E5000, v523, v522, "DisplaySetProperty: %s = %f\n", v637, 0x16u);
            }

            if (*(*(a1 + 56) + 348) == 0.0)
            {
              if (v524 == *MEMORY[0x1E695E4D0])
              {
                v6 = 4096;
              }

              else
              {
                v6 = 0;
              }

              __DisplaySetBrightness(*(a1 + 56), v6, v580);
            }

            else if (*(*(a1 + 56) + 1384) != 0.0 && *(*(a1 + 56) + 1400) == 0.0)
            {
              *(*(a1 + 56) + 12496) = v580;
              if (v524 == *MEMORY[0x1E695E4D0])
              {
                v7 = 4096;
              }

              else
              {
                v7 = 0;
              }

              *(*(a1 + 56) + 12500) = v7;
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"AmbientAdaptiveDimming"))
  {
    if (*(a1 + 40))
    {
      v243 = CFDictionaryGetTypeID();
      if (v243 == CFGetTypeID(*(a1 + 40)))
      {
        v521 = 0;
        v520 = CFDictionaryGetValue(*(a1 + 40), @"AmbientAdaptiveDimmingEnable");
        if (v520)
        {
          v242 = CFNumberGetTypeID();
          if (v242 == CFGetTypeID(v520))
          {
            CFNumberGetValue(v520, kCFNumberIntType, &v521);
          }
        }

        v519 = 0.0;
        v518 = CFDictionaryGetValue(*(a1 + 40), @"AmbientAdaptiveDimmingPeriod");
        if (v518)
        {
          v241 = CFNumberGetTypeID();
          if (v241 == CFGetTypeID(v518))
          {
            CFNumberGetValue(v518, kCFNumberFloatType, &v519);
          }
        }

        if (_logHandle)
        {
          v240 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v239 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v239 = init_default_corebrightness_log();
          }

          v240 = v239;
        }

        v517 = v240;
        v516 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_4_0_8_0(v636, v521, COERCE__INT64(v519));
          _os_log_impl(&dword_1DE8E5000, v517, v516, "AutoDim request received with enable:%i, period:%f", v636, 0x12u);
        }

        if (*(*(a1 + 56) + 228) != v521)
        {
          *(*(a1 + 56) + 228) = v521;
          if (v521)
          {
            v238 = 100.0;
          }

          else
          {
            v238 = *(*(a1 + 56) + 1312);
          }

          v515 = v238;
          _DisplaySetAdaptiveDimmingLimitWithFade(*(a1 + 56), v238, v519);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"UserInteractedWithUI"))
  {
    if (*(*(a1 + 56) + 36))
    {
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      v514 = __DisplayCalculateBrightnessAtAmbient(*(a1 + 56), *(*(a1 + 56) + 1184));
      __DisplaySetLogicalBrightnessLegacy(*(a1 + 56), 2u, v514, -1.0);
      if (_logHandle)
      {
        v237 = _logHandle;
      }

      else
      {
        v236 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v237 = v236;
      }

      v513 = v237;
      v512 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v237, OS_LOG_TYPE_DEBUG))
      {
        if (*(*(a1 + 56) + 1204) == 0.0)
        {
          v8 = "false";
        }

        else
        {
          v8 = "true";
        }

        __os_log_helper_16_2_2_8_32_8_32(v635, "UserInteractedWithUI", v8);
        _os_log_debug_impl(&dword_1DE8E5000, v513, v512, "DisplaySetProperty: %s = %s\n", v635, 0x16u);
      }
    }

    if ((*(*(a1 + 56) + 12520) & 1) == 0)
    {
      v9 = *(*(a1 + 56) + 12514);
    }

    *(*(a1 + 56) + 584) = 1;
    if (_logHandle)
    {
      v235 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v234 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v234 = init_default_corebrightness_log();
      }

      v235 = v234;
    }

    v511 = v235;
    v510 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
    {
      v232 = v511;
      v233 = v510;
      __os_log_helper_16_0_0(v509);
      _os_log_impl(&dword_1DE8E5000, v232, v233, "Weak cap: user interacted\n", v509, 2u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessAuto"))
  {
    CFBooleanValue = GetCFBooleanValue(*(a1 + 40));
    v10 = 1.0;
    if (!CFBooleanValue)
    {
      v10 = 0.0;
    }

    v11 = v10;
    v580 = v11;
    if (v11 == 1.0)
    {
      v508 = MGGetBoolAnswer();
      if ((v508 & 1) == 0)
      {
        if (_logHandle)
        {
          v230 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v229 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v229 = init_default_corebrightness_log();
          }

          v230 = v229;
        }

        v507 = v230;
        v506 = 16;
        if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
        {
          v227 = v507;
          v228 = v506;
          __os_log_helper_16_0_0(v505);
          _os_log_error_impl(&dword_1DE8E5000, v227, v228, "Refuse to turn on AAB without ALS", v505, 2u);
        }

        v580 = 0.0;
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }

    if (v580 != *(*(a1 + 56) + 1204))
    {
      theDict = *(*(a1 + 56) + 192);
      if (v580 == 0.0)
      {
        CFDictionarySetValue(theDict, @"DisplayBrightnessAuto", *MEMORY[0x1E695E4C0]);
      }

      else
      {
        CFDictionarySetValue(theDict, @"DisplayBrightnessAuto", *MEMORY[0x1E695E4D0]);
      }

      *(*(a1 + 56) + 1204) = v580;
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      if (*(*(a1 + 56) + 36))
      {
        v504 = __DisplayCalculateBrightnessAtAmbient(*(a1 + 56), *(*(a1 + 56) + 1184));
        __DisplaySetLogicalBrightnessLegacy(*(a1 + 56), 2u, v504, -1.0);
        if (_logHandle)
        {
          v225 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v224 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v224 = init_default_corebrightness_log();
          }

          v225 = v224;
        }

        v503 = v225;
        v502 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
        {
          if (*(*(a1 + 56) + 1204) == 0.0)
          {
            v12 = "false";
          }

          else
          {
            v12 = "true";
          }

          __os_log_helper_16_2_2_8_32_8_32(v634, "DisplayBrightnessAuto", v12);
          _os_log_impl(&dword_1DE8E5000, v503, v502, "DisplaySetProperty: %s = %s\n", v634, 0x16u);
        }
      }

      else
      {
        *(*(a1 + 56) + 40) = v580 < 1.0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"kCoreBrightnessDisplayPresetNitsOverride"))
  {
    [*(a1 + 40) floatValue];
    v501 = v13;
    if (v13 == 0.0)
    {
      *(*(a1 + 56) + 1144) = 0;
    }

    else
    {
      *(*(a1 + 56) + 1148) = v501;
      *(*(a1 + 56) + 1144) = 1;
      __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 28682, *(*(a1 + 56) + 1256));
    }
  }

  else if (CFEqual(*(a1 + 48), @"ClientBrightnessOverride"))
  {
    if (*(a1 + 40))
    {
      v223 = CFDictionaryGetTypeID();
      if (v223 == CFGetTypeID(*(a1 + 40)))
      {
        v500 = 0;
        v499 = CFDictionaryGetValue(*(a1 + 40), @"ClientBrightnessOverrideEnable");
        if (v499)
        {
          v222 = CFBooleanGetTypeID();
          if (v222 == CFGetTypeID(v499))
          {
            v500 = CFBooleanGetValue(v499);
          }
        }

        v498 = CFDictionaryGetValue(*(a1 + 40), @"ClientBrightnessOverrideNits");
        if (v498)
        {
          v221 = CFNumberGetTypeID();
          if (v221 == CFGetTypeID(v498))
          {
            CFNumberGetValue(v498, kCFNumberFloatType, &v580);
          }
        }

        v497 = 0;
        v496 = CFDictionaryGetValue(*(a1 + 40), @"ClientBrightnessOverrideType");
        if (v496)
        {
          v220 = CFNumberGetTypeID();
          if (v220 == CFGetTypeID(v496))
          {
            CFNumberGetValue(v496, kCFNumberIntType, &v497);
          }
        }

        setClientOverrideState(*(a1 + 56), v497, v500 != 0);
        if (v497)
        {
          if (v497 == 1)
          {
            *(*(a1 + 56) + 968) = v580;
          }
        }

        else
        {
          *(*(a1 + 56) + 964) = v580;
        }

        v495 = evaluateClientOverrides(*(a1 + 56));
        if (v495)
        {
          switch(v495)
          {
            case 1:
              _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), *(*(a1 + 56) + 968), 0.0);
              break;
            case 2:
              _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), *(*(a1 + 56) + 964), 0.0);
              break;
            case 3:
              _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), *(*(a1 + 56) + 1532), 0.0);
              *(*(a1 + 56) + 400) = *(*(a1 + 56) + 396);
              *(*(a1 + 56) + 960) = 0;
              *(*(a1 + 56) + 964) = 0;
              *(*(a1 + 56) + 968) = 0;
              break;
          }
        }

        __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 12298, *(*(a1 + 56) + 1256));
        if (_logHandle)
        {
          v219 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v218 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v218 = init_default_corebrightness_log();
          }

          v219 = v218;
        }

        v494 = v219;
        v493 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_6_8_32_4_0_8_0_8_0_8_0_8_0(v633, "ClientBrightnessOverride", *(*(a1 + 56) + 960), COERCE__INT64(*(*(a1 + 56) + 964)), COERCE__INT64(*(*(a1 + 56) + 968)), COERCE__INT64(*(*(a1 + 56) + 396)), COERCE__INT64(*(*(a1 + 56) + 400)));
          _os_log_debug_impl(&dword_1DE8E5000, v494, v493, "DisplaySetProperty: %s activeFlags = %#x overrideL = %f overrideLmin = %f Lmin = %f LminCurrent = %f", v633, 0x3Au);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"ForceModuleUpdate"))
  {
    if (_logHandle)
    {
      v217 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v216 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v216 = init_default_corebrightness_log();
      }

      v217 = v216;
    }

    v492 = v217;
    v491 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_32(v632, "ForceModuleUpdate");
      _os_log_debug_impl(&dword_1DE8E5000, v492, v491, "DisplaySetProperty: %s\n", v632, 0xCu);
    }

    __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 12298, *(*(a1 + 56) + 1256));
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMin"))
  {
    v580 = *(*(a1 + 56) + 340);
    v215 = CFNumberGetTypeID();
    if (v215 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    if (v580 != *(*(a1 + 56) + 340))
    {
      *(*(a1 + 56) + 340) = v580;
      if (_logHandle)
      {
        v214 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v213 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v213 = init_default_corebrightness_log();
        }

        v214 = v213;
      }

      v490 = v214;
      v489 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v631, "DisplayBrightnessMin", COERCE__INT64(v580));
        _os_log_debug_impl(&dword_1DE8E5000, v490, v489, "DisplaySetProperty: %s = %f\n", v631, 0x16u);
      }

      _DisplaySetBrightness(*(a1 + 56), *(*(a1 + 56) + 336));
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMax"))
  {
    v580 = *(*(a1 + 56) + 344);
    v212 = CFNumberGetTypeID();
    if (v212 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    if (v580 != *(*(a1 + 56) + 344))
    {
      *(*(a1 + 56) + 344) = v580;
      if (_logHandle)
      {
        v211 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v210 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v210 = init_default_corebrightness_log();
        }

        v211 = v210;
      }

      v488 = v211;
      v487 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v630, "DisplayBrightnessMax", COERCE__INT64(v580));
        _os_log_debug_impl(&dword_1DE8E5000, v488, v487, "DisplaySetProperty: %s = %f\n", v630, 0x16u);
      }

      _DisplaySetBrightness(*(a1 + 56), *(*(a1 + 56) + 336));
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessAutoWeightMax"))
  {
    v580 = *(*(a1 + 56) + 1200);
    v209 = CFNumberGetTypeID();
    if (v209 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    if (v580 != *(*(a1 + 56) + 1200))
    {
      *(*(a1 + 56) + 1200) = v580;
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      _DisplaySetAmbient(*(a1 + 56), 0, *(*(a1 + 56) + 1184));
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessAutoWeightMin"))
  {
    v580 = *(*(a1 + 56) + 1196);
    v208 = CFNumberGetTypeID();
    if (v208 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    if (v580 != *(*(a1 + 56) + 1196))
    {
      *(*(a1 + 56) + 1196) = v580;
      __DisplayUpdateAmbientProperties(*(a1 + 56), *(*(a1 + 56) + 336));
      _DisplaySetAmbient(*(a1 + 56), 0, *(*(a1 + 56) + 1184));
    }
  }

  else if (CFEqual(*(a1 + 48), @"IOHIDDisplayHandleAmbient"))
  {
    *(*(a1 + 56) + 36) = GetCFBooleanValue(*(a1 + 40));
    if (*(*(a1 + 56) + 36))
    {
      pthread_once(&__displayThreadInit, __DisplayBrightnessThreadInit);
    }
  }

  else if (CFEqual(*(a1 + 48), @"EcoMode"))
  {
    if (!*(*(a1 + 56) + 36))
    {
      v207 = CFBooleanGetTypeID();
      if (v207 == CFGetTypeID(*(a1 + 40)))
      {
        v486 = CFBooleanGetValue(*(a1 + 40));
        if (*(*(a1 + 56) + 220) != v486)
        {
          *(*(a1 + 56) + 220) = v486;
          v206 = *(*(a1 + 56) + 640);
          if (v206)
          {
            if (v206 == 1)
            {
              if (*(*(a1 + 56) + 220))
              {
                v205 = *(*(a1 + 56) + 656);
              }

              else
              {
                v205 = 1.0;
              }

              v14 = v205;
              v485 = v14;
              _DisplaySetBrightnessEcoModeFactorWithFade(*(a1 + 56), v14, 0.5);
            }

            else if (v206 == 2)
            {
              if (*(*(a1 + 56) + 220))
              {
                v204 = *(*(a1 + 56) + 776);
              }

              else
              {
                v204 = *(*(a1 + 56) + 1312);
              }

              v484 = v204;
              _DisplaySetBrightnessEcoModeLimitWithFade(*(a1 + 56), v204, 0.5);
            }

            else
            {
              v480 = _logHandle;
              v479 = OS_LOG_TYPE_FAULT;
              if (os_log_type_enabled(_logHandle, OS_LOG_TYPE_FAULT))
              {
                __os_log_helper_16_0_1_4_0(v629, *(*(a1 + 56) + 640));
                _os_log_fault_impl(&dword_1DE8E5000, v480, v479, "Unexpected eco mode behaviour = %d, ignoring", v629, 8u);
              }
            }
          }

          else
          {
            if (_logHandle)
            {
              v203 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v202 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v202 = init_default_corebrightness_log();
              }

              v203 = v202;
            }

            v483 = v203;
            v482 = 2;
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
            {
              v200 = v483;
              v201 = v482;
              __os_log_helper_16_0_0(v481);
              _os_log_debug_impl(&dword_1DE8E5000, v200, v201, "Eco mode is not enabled on this device - ignoring", v481, 2u);
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"EcoModeFactorUpdate"))
  {
    if (!*(*(a1 + 56) + 36))
    {
      if (*(a1 + 40))
      {
        v199 = CFNumberGetTypeID();
        if (v199 == CFGetTypeID(*(a1 + 40)))
        {
          v478 = 0.0;
          CFNumberGetValue(*(a1 + 40), kCFNumberDoubleType, &v478);
          *(*(a1 + 56) + 656) = 1.0 - v478 / 100.0;
          if (*(*(a1 + 56) + 220))
          {
            v15 = *(*(a1 + 56) + 656);
            _DisplaySetBrightnessEcoModeFactorWithFade(*(a1 + 56), v15, 0.5);
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DominoStateUpdate"))
  {
    v198 = CFBooleanGetTypeID();
    if (v198 == CFGetTypeID(*(a1 + 40)))
    {
      v477 = CFBooleanGetValue(*(a1 + 40));
      if (*(*(a1 + 56) + 224) != v477)
      {
        *(*(a1 + 56) + 224) = v477;
        if (_logHandle)
        {
          v197 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v196 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v196 = init_default_corebrightness_log();
          }

          v197 = v196;
        }

        v476 = v197;
        v475 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_4_0(v628, v477);
          _os_log_impl(&dword_1DE8E5000, v476, v475, "Domino State Change: %d", v628, 8u);
        }

        if (*(*(a1 + 56) + 224))
        {
          v195 = *(*(a1 + 56) + 720);
        }

        else
        {
          v195 = *(*(a1 + 56) + 1312);
        }

        v474 = v195;
        _DisplaySetBrightnessDominoModeLimitWithFade(*(a1 + 56), v195, 0.5);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFactor"))
  {
    v580 = *(*(a1 + 56) + 348);
    v194 = CFNumberGetTypeID();
    if (v194 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    __DisplayCancelFactorFade(*(a1 + 56));
    if (v580 != *(*(a1 + 56) + 348))
    {
      v473 = *(*(a1 + 56) + 348);
      _DisplayUpdateWeakCapOnFactorChange(*(a1 + 56), v580);
      _DisplaySetBrightnessFactor(*(a1 + 56), v580);
      if (*(*(a1 + 56) + 36))
      {
        v192 = *(a1 + 56);
        v193 = __DisplayCalculateBrightnessFromFactorChange(v192, *(v192 + 204));
        __DisplaySetLogicalBrightnessLegacy(v192, 7u, v193, 0.0);
        *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
      }

      else
      {
        v472 = 4098;
        if (*(*(a1 + 56) + 348) == 1.0)
        {
          v472 |= 8u;
        }

        v471 = *(*(a1 + 56) + 1252);
        v470 = *(*(a1 + 56) + 1492);
        if (*(*(a1 + 56) + 348) <= 0.0)
        {
          if (*(*(a1 + 56) + 12282))
          {
            __DisplayCancelAAPFade(*(a1 + 56));
          }

          else
          {
            __DisplayCancelReflectedBrightnessFadeInternal(*(a1 + 56));
          }

          *(*(a1 + 56) + 12300) = 0;
        }

        else
        {
          v471 = fmaxf(v471, *(*(a1 + 56) + 1320));
          v470 = fmaxf(v470, *(*(a1 + 56) + 1320));
          *(*(a1 + 56) + 1488) = v470;
        }

        if (_logHandle)
        {
          v191 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v190 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v190 = init_default_corebrightness_log();
          }

          v191 = v190;
        }

        v469 = v191;
        v468 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_7_8_32_8_32_8_0_8_0_8_0_8_0_8_0(v627, "Factor", "DisplayBrightnessFactor", COERCE__INT64(v473), COERCE__INT64(*(*(a1 + 56) + 348)), COERCE__INT64(*(*(a1 + 56) + 1260)), COERCE__INT64(*(*(a1 + 56) + 1252)), COERCE__INT64(v471));
          _os_log_impl(&dword_1DE8E5000, v469, v468, "[BRT update: %s]: %s: %f -> %f LcurrentDevice: %f Lpending: %f L_logical: %f", v627, 0x48u);
        }

        __DisplaySetLogicalBrightnessWithFadeInternal(*(a1 + 56), v472 | 0x2000, 0, 0, v471, 0.0);
        *(*(a1 + 56) + 12392) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"MinNits"))
  {
    v189 = CFDictionaryGetTypeID();
    if (v189 == CFGetTypeID(*(a1 + 40)))
    {
      v467 = *(*(a1 + 56) + 1256);
      v466 = 0.0;
      v465 = CFDictionaryGetValue(*(a1 + 40), @"period");
      if (v465)
      {
        v188 = CFNumberGetTypeID();
        if (v188 == CFGetTypeID(v465))
        {
          CFNumberGetValue(v465, kCFNumberFloatType, &v466);
        }
      }

      v464 = CFDictionaryGetValue(*(a1 + 40), @"nits");
      if (v464)
      {
        v187 = CFNumberGetTypeID();
        if (v187 == CFGetTypeID(v464))
        {
          CFNumberGetValue(v464, kCFNumberFloatType, &v467);
        }
      }

      if (getClientOverrideState(*(a1 + 56), 1))
      {
        v467 = fmaxf(v467, *(*(a1 + 56) + 968));
      }

      _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), v467, v466);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFactorWithFade"))
  {
    kdebug_trace();
    v580 = *(*(a1 + 56) + 348);
    v186 = CFDictionaryGetTypeID();
    if (v186 == CFGetTypeID(*(a1 + 40)))
    {
      v463 = CFDictionaryGetValue(*(a1 + 40), @"DisplayBrightnessFadePeriod");
      if (v463)
      {
        v185 = CFNumberGetTypeID();
        if (v185 == CFGetTypeID(v463))
        {
          CFNumberGetValue(v463, kCFNumberFloat32Type, (*(a1 + 56) + 372));
        }
      }

      v462 = CFDictionaryGetValue(*(a1 + 40), @"DisplayBrightnessFactor");
      if (v462)
      {
        v184 = CFNumberGetTypeID();
        if (v184 == CFGetTypeID(v462))
        {
          CFNumberGetValue(v462, kCFNumberFloat32Type, &v580);
          v461 = *(*(a1 + 56) + 1384) > 0.0;
          if (v580 != *(*(a1 + 56) + 348) || v461)
          {
            if (*(*(a1 + 56) + 36))
            {
              _DisplaySetBrightnessFactor(*(a1 + 56), v580);
              v182 = *(a1 + 56);
              v183 = __DisplayCalculateBrightnessFromFactorChange(v182, *(v182 + 204));
              __DisplaySetLogicalBrightnessLegacy(v182, 6u, v183, *(*(a1 + 56) + 372));
              *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
            }

            else
            {
              if (v580 == 0.0)
              {
                if (*(*(a1 + 56) + 12282))
                {
                  __DisplayCancelAAPFade(*(a1 + 56));
                }

                else
                {
                  __DisplayCancelReflectedBrightnessFadeInternal(*(a1 + 56));
                }

                if ((*(*(a1 + 56) + 12282) & 1) == 0)
                {
                  *(*(a1 + 56) + 12392) = 0;
                }

                *(*(a1 + 56) + 12300) = 0;
              }

              _DisplayUpdateWeakCapOnFactorChange(*(a1 + 56), v580);
              _DisplaySetFactorWithFade(*(a1 + 56), v580, *(*(a1 + 56) + 372));
            }

            *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
            CFDictionarySetValue(*(*(a1 + 56) + 192), @"DisplayBrightnessFactor", v462);
          }
        }
      }
    }

    else
    {
      v181 = CFNumberGetTypeID();
      if (v181 == CFGetTypeID(*(a1 + 40)))
      {
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
        v460 = *(*(a1 + 56) + 1384) > 0.0;
        if (v580 != *(*(a1 + 56) + 348) || v460)
        {
          if (*(*(a1 + 56) + 36))
          {
            _DisplaySetBrightnessFactor(*(a1 + 56), v580);
            v179 = *(a1 + 56);
            v180 = __DisplayCalculateBrightnessFromFactorChange(v179, *(v179 + 204));
            __DisplaySetLogicalBrightnessLegacy(v179, 6u, v180, *(*(a1 + 56) + 372));
            *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
          }

          else
          {
            if (v580 == 0.0)
            {
              if (*(*(a1 + 56) + 12282))
              {
                __DisplayCancelAAPFade(*(a1 + 56));
              }

              else
              {
                __DisplayCancelReflectedBrightnessFadeInternal(*(a1 + 56));
              }

              *(*(a1 + 56) + 12300) = 0;
              if ((*(*(a1 + 56) + 12282) & 1) == 0)
              {
                *(*(a1 + 56) + 12392) = 0;
              }
            }

            _DisplayUpdateWeakCapOnFactorChange(*(a1 + 56), v580);
            _DisplaySetFactorWithFade(*(a1 + 56), v580, *(*(a1 + 56) + 372));
          }

          *(*(a1 + 56) + 356) = *(*(a1 + 56) + 352);
          CFDictionarySetValue(*(*(a1 + 56) + 192), @"DisplayBrightnessFactor", *(a1 + 40));
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFadePeriod"))
  {
    v580 = *(*(a1 + 56) + 372);
    v178 = CFNumberGetTypeID();
    if (v178 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    *(*(a1 + 56) + 372) = v580;
    if (_logHandle)
    {
      v177 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v176 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v176 = init_default_corebrightness_log();
      }

      v177 = v176;
    }

    v459 = v177;
    v458 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_0(v626, "DisplayBrightnessFadePeriod", COERCE__INT64(v580));
      _os_log_debug_impl(&dword_1DE8E5000, v459, v458, "DisplaySetProperty: %s = %f\n", v626, 0x16u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"LogLevel"))
  {
    v457 = *(*(a1 + 56) + 200);
    v175 = CFNumberGetTypeID();
    if (v175 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v457);
    if (_logHandle)
    {
      v174 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v173 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v173 = init_default_corebrightness_log();
      }

      v174 = v173;
    }

    v456 = v174;
    v455 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_4_0(v625, "LogLevel", v457);
      _os_log_impl(&dword_1DE8E5000, v456, v455, "DisplaySetProperty: %s = %x\n", v625, 0x12u);
    }

    if (*(*(a1 + 56) + 200) != v457)
    {
      *(*(a1 + 56) + 200) = v457;
    }

    __DisplaySetBLDriverProperty(*(a1 + 56), *(a1 + 48), *(a1 + 40));
  }

  else if (CFEqual(*(a1 + 48), @"PLCEnable"))
  {
    v454 = (*(*(a1 + 56) + 288) & 1) != 0;
    v172 = CFNumberGetTypeID();
    if (v172 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v454);
    if (v454)
    {
      if (*(*(a1 + 56) + 284) && *(*(a1 + 56) + 1260) > *(*(a1 + 56) + 284))
      {
        __DisplaySendPLCUpdate(*(a1 + 56), 1);
      }
    }

    else if (*(*(a1 + 56) + 289))
    {
      __DisplaySendPLCUpdate(*(a1 + 56), 0);
      v453 = (*(*(a1 + 56) + 1260) * 65536.0);
      SetBLDriverNitsValueIfNotInLPM(*(a1 + 56), v453);
    }

    *(*(a1 + 56) + 288) = v454;
    if (_logHandle)
    {
      v171 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v170 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v170 = init_default_corebrightness_log();
      }

      v171 = v170;
    }

    v452 = v171;
    v451 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v624, *(*(a1 + 56) + 288) & 1);
      _os_log_impl(&dword_1DE8E5000, v452, v451, "PLCEnabled=%d", v624, 8u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFadeSlope"))
  {
    v169 = CFGetTypeID(*(a1 + 40));
    if (v169 == CFNumberGetTypeID())
    {
      v450 = *(*(a1 + 56) + 1228);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v450);
      if (_logHandle)
      {
        v168 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v167 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v167 = init_default_corebrightness_log();
        }

        v168 = v167;
      }

      v449 = v168;
      v448 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v623, COERCE__INT64(v450));
        _os_log_debug_impl(&dword_1DE8E5000, v449, v448, "display->brightness.als.duration.customSlope = %f\n", v623, 0xCu);
      }

      *(*(a1 + 56) + 1228) = v450;
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayMedianFilterLength"))
  {
    v166 = CFGetTypeID(*(a1 + 40));
    if (v166 == CFNumberGetTypeID())
    {
      v447 = 0;
      CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v447);
      if (v447 <= 50)
      {
        *(*(a1 + 56) + 12740) = v447;
        *(*(a1 + 56) + 12736) = 0;
        *(*(a1 + 56) + 12732) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CabalFactorOverride"))
  {
    v165 = CFGetTypeID(*(a1 + 40));
    if (v165 == CFNumberGetTypeID())
    {
      v446 = -1.0;
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v446);
      DisplaySetCabalFactorOverride(*(a1 + 56), v446);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayAAPFactor"))
  {
    v164 = CFGetTypeID(*(a1 + 40));
    if (v164 == CFNumberGetTypeID())
    {
      v445 = *(*(a1 + 56) + 12392);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v445);
      if (_logHandle)
      {
        v163 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v162 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v162 = init_default_corebrightness_log();
        }

        v163 = v162;
      }

      v444 = v163;
      v443 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v622, "DisplayAAPFactor", COERCE__INT64(v445));
        _os_log_impl(&dword_1DE8E5000, v444, v443, "%s = %f\n", v622, 0x16u);
      }

      __DisplaySetAAPFactor(*(a1 + 56), v445);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayAAPFactorMin"))
  {
    v161 = CFGetTypeID(*(a1 + 40));
    if (v161 == CFNumberGetTypeID())
    {
      v442 = *(*(a1 + 56) + 12456);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v442);
      if (_logHandle)
      {
        v160 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v159 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v159 = init_default_corebrightness_log();
        }

        v160 = v159;
      }

      v441 = v160;
      v440 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v621, "DisplayAAPFactorMin", COERCE__INT64(v442));
        _os_log_impl(&dword_1DE8E5000, v441, v440, "%s = %f\n", v621, 0x16u);
      }

      *(*(a1 + 56) + 12456) = v442;
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayAAPFactorMax"))
  {
    v158 = CFGetTypeID(*(a1 + 40));
    if (v158 == CFNumberGetTypeID())
    {
      v439 = *(*(a1 + 56) + 12460);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v439);
      if (_logHandle)
      {
        v157 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v156 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v156 = init_default_corebrightness_log();
        }

        v157 = v156;
      }

      v438 = v157;
      v437 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_0(v620, "DisplayAAPFactorMax", COERCE__INT64(v439));
        _os_log_impl(&dword_1DE8E5000, v438, v437, "%s = %f\n", v620, 0x16u);
      }

      *(*(a1 + 56) + 12460) = v439;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPDBMin"))
  {
    v155 = CFGetTypeID(*(a1 + 40));
    if (v155 == CFNumberGetTypeID())
    {
      v436 = *(*(a1 + 56) + 12256);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v436);
      if (_logHandle)
      {
        v154 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v153 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v153 = init_default_corebrightness_log();
        }

        v154 = v153;
      }

      v435 = v154;
      v434 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v619, "AAPDBMin", COERCE__INT64(v436));
        _os_log_debug_impl(&dword_1DE8E5000, v435, v434, "%s = %f\n", v619, 0x16u);
      }

      *(*(a1 + 56) + 12256) = v436;
      v433 = 1;
      HIDWORD(v433) = *(*(a1 + 56) + 12304);
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v433, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPK_0"))
  {
    v152 = CFGetTypeID(*(a1 + 40));
    if (v152 == CFNumberGetTypeID())
    {
      v432 = *(*(a1 + 56) + 12260);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v432);
      if (_logHandle)
      {
        v151 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v150 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v150 = init_default_corebrightness_log();
        }

        v151 = v150;
      }

      v431 = v151;
      v430 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v618, "AAPK_0", COERCE__INT64(v432));
        _os_log_debug_impl(&dword_1DE8E5000, v431, v430, "%s = %f\n", v618, 0x16u);
      }

      *(*(a1 + 56) + 12260) = v432;
      v429 = 2;
      HIDWORD(v429) = *(*(a1 + 56) + 12300);
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v429, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPK_1"))
  {
    v149 = CFGetTypeID(*(a1 + 40));
    if (v149 == CFNumberGetTypeID())
    {
      v428 = *(*(a1 + 56) + 12264);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v428);
      if (_logHandle)
      {
        v148 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v147 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v147 = init_default_corebrightness_log();
        }

        v148 = v147;
      }

      v427 = v148;
      v426 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v617, "AAPK_1", COERCE__INT64(v428));
        _os_log_debug_impl(&dword_1DE8E5000, v427, v426, "%s = %f\n", v617, 0x16u);
      }

      *(*(a1 + 56) + 12264) = v428;
      v425 = 2;
      HIDWORD(v425) = *(*(a1 + 56) + 12300);
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v425, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPManualB"))
  {
    v146 = CFGetTypeID(*(a1 + 40));
    if (v146 == CFNumberGetTypeID())
    {
      v424 = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (_logHandle)
      {
        v145 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v144 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v144 = init_default_corebrightness_log();
        }

        v145 = v144;
      }

      v423 = v145;
      v422 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_4_0(v616, "AAPManualB", v424);
        _os_log_debug_impl(&dword_1DE8E5000, v423, v422, "%s = %d\n", v616, 0x12u);
      }

      *(*(a1 + 56) + 12284) = v424;
      v421 = 0;
      BYTE4(v421) = *(*(a1 + 56) + 1232) & 1;
      __DisplayUpdateAAPStateInternal(*(a1 + 56), &v421, 0);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPHDRMode"))
  {
    v143 = CFGetTypeID(*(a1 + 40));
    if (v143 == CFBooleanGetTypeID())
    {
      v420 = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (_logHandle)
      {
        v142 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v141 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v141 = init_default_corebrightness_log();
        }

        v142 = v141;
      }

      v419 = v142;
      v418 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_4_0(v615, "AAPHDRMode", v420);
        _os_log_debug_impl(&dword_1DE8E5000, v419, v418, "%s = %d\n", v615, 0x12u);
      }

      *(*(a1 + 56) + 12292) = v420;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPLuxDelta"))
  {
    v140 = CFGetTypeID(*(a1 + 40));
    if (v140 == CFNumberGetTypeID())
    {
      v417 = *(*(a1 + 56) + 12268);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v417);
      if (_logHandle)
      {
        v139 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v138 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v138 = init_default_corebrightness_log();
        }

        v139 = v138;
      }

      v416 = v139;
      v415 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v614, "AAPLuxDelta", COERCE__INT64(v417));
        _os_log_debug_impl(&dword_1DE8E5000, v416, v415, "%s = %f\n", v614, 0x16u);
      }

      *(*(a1 + 56) + 12268) = v417;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPRampUpTime"))
  {
    v137 = CFGetTypeID(*(a1 + 40));
    if (v137 == CFNumberGetTypeID())
    {
      v414 = *(*(a1 + 56) + 12272);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v414);
      if (_logHandle)
      {
        v136 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v135 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v135 = init_default_corebrightness_log();
        }

        v136 = v135;
      }

      v413 = v136;
      v412 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v613, "AAPRampUpTime", COERCE__INT64(v414));
        _os_log_debug_impl(&dword_1DE8E5000, v413, v412, "%s = %f\n", v613, 0x16u);
      }

      *(*(a1 + 56) + 12272) = v414;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPRampDownTime"))
  {
    v134 = CFGetTypeID(*(a1 + 40));
    if (v134 == CFNumberGetTypeID())
    {
      v411 = *(*(a1 + 56) + 12276);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v411);
      if (_logHandle)
      {
        v133 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v132 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v132 = init_default_corebrightness_log();
        }

        v133 = v132;
      }

      v410 = v133;
      v409 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v612, "AAPRampDownTime", COERCE__INT64(v411));
        _os_log_debug_impl(&dword_1DE8E5000, v410, v409, "%s = %f\n", v612, 0x16u);
      }

      *(*(a1 + 56) + 12276) = v411;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AAPRampDisableTime"))
  {
    v131 = CFGetTypeID(*(a1 + 40));
    if (v131 == CFNumberGetTypeID())
    {
      v408 = *(*(a1 + 56) + 12252);
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v408);
      if (_logHandle)
      {
        v130 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v129 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v129 = init_default_corebrightness_log();
        }

        v130 = v129;
      }

      v407 = v130;
      v406 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v611, "AAPRampDisableTime", COERCE__INT64(v408));
        _os_log_debug_impl(&dword_1DE8E5000, v407, v406, "%s = %f\n", v611, 0x16u);
      }

      *(*(a1 + 56) + 12252) = v408;
    }
  }

  else if (CFEqual(*(a1 + 48), @"MaxBrightness"))
  {
    v128 = CFGetTypeID(*(a1 + 40));
    if (v128 == CFNumberGetTypeID())
    {
      v405 = 100.0;
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v405);
      v405 = v405 / 100.0;
      if (_logHandle)
      {
        v127 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v126 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v126 = init_default_corebrightness_log();
        }

        v127 = v126;
      }

      v404 = v127;
      v403 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v610, COERCE__INT64(v405));
        _os_log_impl(&dword_1DE8E5000, v404, v403, "Set MaxBrightness=%f", v610, 0xCu);
      }

      if (v405 >= 0.0)
      {
        v402 = 0.0;
        if (_DisplayCLTMRev2Applicable(*(a1 + 56)))
        {
          v401 = 0;
          if (v405 <= 0.95)
          {
            if (v405 <= 0.15)
            {
              v401 = 2;
            }

            else
            {
              v401 = 1;
            }
          }

          else
          {
            v401 = 0;
          }

          if (_logHandle)
          {
            v125 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v124 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v124 = init_default_corebrightness_log();
            }

            v125 = v124;
          }

          v400 = v125;
          v399 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_4_0(v609, v401);
            _os_log_impl(&dword_1DE8E5000, v400, v399, "CLTM mode=%d", v609, 8u);
          }

          if (v401 != *(*(a1 + 56) + 1560))
          {
            v608 = 0x1F59A2570;
            v607 = 0;
            v607 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v401);
            if (v608)
            {
              if (v607)
              {
                allocator = CFGetAllocator(*(a1 + 56));
                v398 = CFDictionaryCreate(allocator, &v608, &v607, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v398)
                {
                  v16 = *(*(a1 + 56) + 144);
                  v391 = MEMORY[0x1E69E9820];
                  v392 = -1073741824;
                  v393 = 0;
                  v394 = __DisplaySetProperty_block_invoke_591;
                  v395 = &__block_descriptor_48_e5_v8__0l;
                  v396 = *(a1 + 56);
                  v397 = v398;
                  dispatch_async(v16, &v391);
                }
              }
            }

            if (v607)
            {
              CFRelease(v607);
            }
          }

          *(*(a1 + 56) + 1560) = v401;
          v390 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (*(a1 + 56) + 1560));
          if (v390)
          {
            CFDictionarySetValue(*(*(a1 + 56) + 192), @"BrightnessCLTMMode", v390);
            CFRelease(v390);
          }

          *(*(a1 + 56) + 1552) = v405;
          if (v405 == 0.0)
          {
            v402 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v405);
            _DisplaySetBrightnessMaxPhysicalZeroWithFade(*(a1 + 56), _DisplayRampDoneCallback, *(a1 + 56), v402, 4.0);
          }

          else
          {
            v402 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v405);
            _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v402, 4.0);
          }
        }

        else
        {
          v402 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v405);
          _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v402, 0.0);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessCLTM"))
  {
    if (_DisplayCLTMRev2Applicable(*(a1 + 56)))
    {
      v122 = CFGetTypeID(*(a1 + 40));
      if (v122 == CFDictionaryGetTypeID())
      {
        v389 = 0.0;
        v388 = 1;
        v387 = CFDictionaryGetValue(*(a1 + 40), @"BrightnessCLTMEnable");
        if (v387)
        {
          v121 = CFGetTypeID(v387);
          if (v121 == CFBooleanGetTypeID())
          {
            v388 = CFBooleanGetValue(v387) != 0;
          }
        }

        *(*(a1 + 56) + 1556) = v388;
        v386 = 0.0;
        v385 = CFDictionaryGetValue(*(a1 + 40), @"BrightnessCLTMRampRate");
        if (v385)
        {
          v120 = CFGetTypeID(v385);
          if (v120 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v385, kCFNumberFloatType, &v386);
          }
        }

        if (_logHandle)
        {
          v119 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v118 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v118 = init_default_corebrightness_log();
          }

          v119 = v118;
        }

        v384 = v119;
        v383 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          if (*(*(a1 + 56) + 1556))
          {
            v17 = "Enable";
          }

          else
          {
            v17 = "Disable";
          }

          __os_log_helper_16_2_2_8_32_8_0(v606, v17, COERCE__INT64(v386));
          _os_log_impl(&dword_1DE8E5000, v384, v383, "%s CLTM with period %f", v606, 0x16u);
        }

        if (v388)
        {
          v389 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), *(*(a1 + 56) + 1552));
          if (*(*(a1 + 56) + 1552) == 0.0)
          {
            _DisplaySetBrightnessMaxPhysicalZeroWithFade(*(a1 + 56), _DisplayRampDoneCallback, *(a1 + 56), v389, v386);
          }

          else
          {
            _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v389, v386);
          }
        }

        else
        {
          v382 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), 1.0);
          _DisplaySetBrightnessMaxPhysicalWithFade(*(a1 + 56), v382, v386);
        }

        v605 = xmmword_1E867CA00;
        v603 = 0;
        v604 = 0;
        v603 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (*(a1 + 56) + 1556));
        v604 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v386);
        v117 = CFGetAllocator(*(a1 + 56));
        v381 = CFDictionaryCreate(v117, &v605, &v603, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v381)
        {
          CFDictionarySetValue(*(*(a1 + 56) + 192), @"BrightnessCLTM", v381);
          CFRelease(v381);
        }

        if (v603)
        {
          CFRelease(v603);
        }

        if (v604)
        {
          CFRelease(v604);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessWeakCap"))
  {
    v116 = CFGetTypeID(*(a1 + 40));
    if (v116 == CFNumberGetTypeID())
    {
      v380 = 100.0;
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v380);
      v380 = v380 / 100.0;
      if (_logHandle)
      {
        v115 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v114 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v114 = init_default_corebrightness_log();
        }

        v115 = v114;
      }

      v379 = v115;
      v378 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v602, COERCE__INT64(v380));
        _os_log_impl(&dword_1DE8E5000, v379, v378, "Set BrightnessWeakCap=%f", v602, 0xCu);
      }

      if (v380 >= 0.0)
      {
        v377 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v380);
        v376 = 0.0;
        if (v377 < *(*(a1 + 56) + 528))
        {
          v376 = 7.0;
        }

        else
        {
          v376 = 2.5;
        }

        _DisplaySetBrightnessWeakCapWithFade(*(a1 + 56), 1, v377, v376);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessMinPhysicalWithFade"))
  {
    if (*(*(a1 + 56) + 320))
    {
      v113 = CFGetTypeID(*(a1 + 40));
      if (v113 == CFNumberGetTypeID())
      {
        v375 = *(*(a1 + 56) + 396);
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v375);
        if (_logHandle)
        {
          v112 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v111 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v111 = init_default_corebrightness_log();
          }

          v112 = v111;
        }

        v374 = v112;
        v373 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_2_8_32_8_0(v601, "BrightnessMinPhysicalWithFade", COERCE__INT64(v375));
          _os_log_debug_impl(&dword_1DE8E5000, v374, v373, "DisplaySetProperty: %s = %f\n", v601, 0x16u);
        }

        if (getClientOverrideState(*(a1 + 56), 1))
        {
          v375 = fmaxf(v375, *(*(a1 + 56) + 968));
        }

        _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), v375, *(*(a1 + 56) + 372));
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFactorRamp"))
  {
    v110 = CFDictionaryGetTypeID();
    if (v110 == CFGetTypeID(*(a1 + 40)))
    {
      v372 = CFDictionaryGetValue(*(a1 + 40), @"DisplayBrightnessFactorCoeffA");
      if (v372)
      {
        v109 = CFGetTypeID(v372);
        if (v109 == CFNumberGetTypeID())
        {
          v580 = *(*(a1 + 56) + 1420);
          CFNumberGetValue(v372, kCFNumberFloatType, &v580);
          *(*(a1 + 56) + 1420) = v580;
          *(*(a1 + 56) + 1416) = 1.0 - *(*(a1 + 56) + 1420);
          *(*(a1 + 56) + 1412) = 0;
          if (_logHandle)
          {
            v108 = _logHandle;
          }

          else
          {
            v107 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v108 = v107;
          }

          v371 = v108;
          v370 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_3_8_0_8_0_8_0(v600, COERCE__INT64(*(*(a1 + 56) + 1420)), COERCE__INT64(*(*(a1 + 56) + 1416)), COERCE__INT64(*(*(a1 + 56) + 1412)));
            _os_log_debug_impl(&dword_1DE8E5000, v371, v370, "DisplaySetProperty: Changing Factor ramp to: %fx^2 + %fx + %f\n", v600, 0x20u);
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PreStrobeDimPeriod"))
  {
    if (*(a1 + 40))
    {
      v106 = CFNumberGetTypeID();
      if (v106 == CFGetTypeID(*(a1 + 40)))
      {
        v369 = *(*(a1 + 56) + 244);
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v369);
        *(*(a1 + 56) + 244) = v369;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CBSoftWakeActive"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (*(*(a1 + 56) + 328))
    {
      if (*(a1 + 40))
      {
        v105 = *(a1 + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v368 = [*(a1 + 40) intValue];
          if (![*(*(a1 + 56) + 328) action:v368])
          {
            __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 4098, *(*(a1 + 56) + 1256));
            *(*(*(a1 + 32) + 8) + 24) = 1;
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CBSoftWakeFactorWithFadeKey"))
  {
    if (*(*(a1 + 56) + 328))
    {
      if ([*(*(a1 + 56) + 328) isActive])
      {
        if (*(a1 + 40))
        {
          v104 = CFDictionaryGetTypeID();
          if (v104 == CFGetTypeID(*(a1 + 40)))
          {
            v367 = *(a1 + 40);
            v366 = [v367 objectForKeyedSubscript:@"DisplayBrightnessFactor"];
            v365 = [v367 objectForKeyedSubscript:@"DisplayBrightnessFadePeriod"];
            if (v366)
            {
              if (v365)
              {
                v102 = *(*(a1 + 56) + 328);
                [v366 floatValue];
                v103 = v18;
                [v365 floatValue];
                LODWORD(v20) = v19;
                LODWORD(v21) = v103;
                if (![v102 setFactor:v21 withFade:v20])
                {
                  LODWORD(v22) = 1015580809;
                  __DisplayStartFadeWithType(*(a1 + 56), 12, v22);
                }
              }
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PreStrobeConfig"))
  {
    if (*(a1 + 40))
    {
      v101 = CFDictionaryGetTypeID();
      if (v101 == CFGetTypeID(*(a1 + 40)))
      {
        v364 = *(a1 + 40);
        if (*(*(a1 + 56) + 248))
        {
          v362 = 0;
          v361 = 0;
          v363 = CFDictionaryGetValue(v364, @"PreStrobeConfigCurrent");
          if (v363 && (v100 = CFNumberGetTypeID(), v100 == CFGetTypeID(v363)))
          {
            v362 = 1;
            v361 = 1;
          }

          else
          {
            v363 = CFDictionaryGetValue(v364, @"PreStrobeConfigNits");
            if (v363)
            {
              v99 = CFNumberGetTypeID();
              if (v99 == CFGetTypeID(v363))
              {
                v361 = 1;
              }
            }
          }

          if (v361)
          {
            v360 = -1.0;
            if (CFNumberGetValue(v363, kCFNumberFloatType, &v360))
            {
              v359 = (v360 * 65536.0);
              v358 = 0;
              v358 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v359);
              if (v358)
              {
                if (v362)
                {
                  v23 = @"PreStrobeConfigCurrent";
                }

                else
                {
                  v23 = @"PreStrobeConfigNits";
                }

                __DisplaySetBLDriverProperty(*(a1 + 56), v23, v358);
                if ((v362 & 1) == 0)
                {
                  *(*(a1 + 56) + 256) = v359;
                }

                CFRelease(v358);
              }
            }
          }

          else
          {
            *(*(a1 + 56) + 256) = *(*(a1 + 56) + 252);
            v357 = -1;
            v356 = 0;
            v356 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v357);
            if (v356)
            {
              __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobeConfigCurrent", v356);
              CFRelease(v356);
            }
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PreStrobe"))
  {
    if (*(a1 + 40))
    {
      v98 = CFNumberGetTypeID();
      if (v98 == CFGetTypeID(*(a1 + 40)))
      {
        v355 = *(*(a1 + 56) + 244);
        v354 = 0;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v354);
        if (v354)
        {
          v97 = 0.0;
        }

        else
        {
          v97 = fmaxf(0.0, v355);
        }

        v353 = v97;
        if (v355 >= 0.0)
        {
          if (v354)
          {
            v95 = *(*(a1 + 56) + 1312);
          }

          else
          {
            v95 = 0.0;
          }

          v349 = v95;
          if (*(*(a1 + 56) + 248))
          {
            __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobe", *(a1 + 40));
            SetPreStrobeState(*(a1 + 56), v354 != 0);
          }

          if (v354)
          {
            v94 = (*(*(a1 + 56) + 1312) * 65536.0);
          }

          else
          {
            v94 = *(*(a1 + 56) + 1128);
          }

          v348 = v94;
          if (_logHandle)
          {
            v93 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v92 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v92 = init_default_corebrightness_log();
            }

            v93 = v92;
          }

          v347 = v93;
          v346 = 2;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            v90 = v347;
            v91 = v346;
            __os_log_helper_16_0_0(v345);
            _os_log_debug_impl(&dword_1DE8E5000, v90, v91, "SetBLDriverNitsCap for preStrobe", v345, 2u);
          }

          SetBLDriverNitsCapIfNotInLPM(*(a1 + 56), v348);
          _DisplaySetBrightnessMinPhysicalWithFade(*(a1 + 56), v349, v353);
        }

        else
        {
          if (v354 && *(*(a1 + 56) + 252) > 0)
          {
            v96 = *(*(a1 + 56) + 256) < *(*(a1 + 56) + 252) ? 44236800 : *(*(a1 + 56) + 252);
            v352 = v96;
            if (*(*(a1 + 56) + 260) != v96)
            {
              *(*(a1 + 56) + 256) = v352;
              *(*(a1 + 56) + 260) = v352;
              v351 = 0;
              v351 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v352);
              if (v351)
              {
                __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobeConfigNits", v351);
                CFRelease(v351);
                v350 = v352 / *(*(a1 + 56) + 252);
                v351 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v350);
                if (v351)
                {
                  CFDictionarySetValue(*(*(a1 + 56) + 192), @"PreStrobeBrightnessRatio", v351);
                  CFRelease(v351);
                }
              }
            }
          }

          __DisplaySetBLDriverProperty(*(a1 + 56), @"PreStrobe", *(a1 + 40));
          SetPreStrobeState(*(a1 + 56), v354 != 0);
        }

        v24 = *(*(a1 + 56) + 12504);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"ColorFadesEnabled"))
  {
    if (*(a1 + 40))
    {
      v344 = 0;
      v343 = 0;
      v89 = CFNumberGetTypeID();
      if (v89 == CFGetTypeID(*(a1 + 40)))
      {
        v342 = 0;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v342);
        v344 = v342 != 0;
        v343 = 1;
      }

      else
      {
        v88 = CFBooleanGetTypeID();
        if (v88 == CFGetTypeID(*(a1 + 40)))
        {
          v344 = CFBooleanGetValue(*(a1 + 40)) != 0;
          v343 = 1;
        }
      }

      if ((v343 & 1) == 1 && *(*(a1 + 56) + 12504))
      {
        CFXEnableFades(*(*(a1 + 56) + 12504), v344);
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CarryLogEnabled"))
  {
    if (*(a1 + 40))
    {
      v87 = CFNumberGetTypeID();
      if (v87 == CFGetTypeID(*(a1 + 40)))
      {
        v341 = 0;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v341);
        CFXEnableLog(*(*(a1 + 56) + 12504), v341 != 0);
        if (CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]))
        {
          CFPreferencesSetAppValue(@"CBCarryLogEnabled", *(a1 + 40), *MEMORY[0x1E695E8A8]);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CarryLogComment"))
  {
    if (*(a1 + 40))
    {
      v86 = CFStringGetTypeID();
      if (v86 == CFGetTypeID(*(a1 + 40)))
      {
        CFXStoreComment(*(*(a1 + 56) + 12504), *(a1 + 40));
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CarryLogCommit"))
  {
    CFXForceLogCommit(*(*(a1 + 56) + 12504));
  }

  else if (CFEqual(*(a1 + 48), @"FreezeBrightness"))
  {
    if (*(*(a1 + 56) + 36))
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    else if (*(a1 + 40))
    {
      v85 = CFDictionaryGetTypeID();
      if (v85 == CFGetTypeID(*(a1 + 40)))
      {
        v340 = CFDictionaryGetValue(*(a1 + 40), @"FreezeBrightnessPeriod");
        if (v340)
        {
          v84 = CFNumberGetTypeID();
          if (v84 == CFGetTypeID(v340))
          {
            CFNumberGetValue(v340, kCFNumberFloatType, (*(a1 + 56) + 12544));
          }
        }

        v339 = 0;
        v340 = CFDictionaryGetValue(*(a1 + 40), @"FreezeBrightnessEnable");
        if (v340 && (v83 = CFNumberGetTypeID(), v83 == CFGetTypeID(v340)))
        {
          v338 = 0;
          CFNumberGetValue(v340, kCFNumberIntType, &v338);
          v339 = v338 != 0;
        }

        else if (v340)
        {
          v82 = CFBooleanGetTypeID();
          if (v82 == CFGetTypeID(v340))
          {
            v339 = CFBooleanGetValue(v340) != 0;
          }
        }

        Count = 0;
        if (*(*(a1 + 56) + 12536))
        {
          Count = CFArrayGetCount(*(*(a1 + 56) + 12536));
        }

        v336 = Count;
        if (Count > 0 || v339)
        {
          v340 = CFDictionaryGetValue(*(a1 + 40), @"FreezeBrightnessRequestors");
          if (v340)
          {
            v81 = CFArrayGetTypeID();
            if (v81 == CFGetTypeID(v340))
            {
              v335 = v340;
              v334 = CFArrayGetCount(v340);
              if (v334 > 0)
              {
                if (v339 && !*(*(a1 + 56) + 12536))
                {
                  *(*(a1 + 56) + 12536) = CFArrayCreateMutable(*MEMORY[0x1E695E480], v334, MEMORY[0x1E695E9C0]);
                }

                if (*(*(a1 + 56) + 12536))
                {
                  ValueAtIndex = 0;
                  for (i = 0; i < v334; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v335, i);
                    if (ValueAtIndex)
                    {
                      v331 = 0;
                      Count = CFArrayGetCount(*(*(a1 + 56) + 12536));
                      for (j = 0; j < Count; ++j)
                      {
                        v329 = CFArrayGetValueAtIndex(*(*(a1 + 56) + 12536), j);
                        if (CFEqual(ValueAtIndex, v329))
                        {
                          v331 = 1;
                          if (!v339)
                          {
                            CFArrayRemoveValueAtIndex(*(*(a1 + 56) + 12536), j);
                            break;
                          }
                        }
                      }

                      if (v339 && (v331 & 1) == 0)
                      {
                        CFArrayAppendValue(*(*(a1 + 56) + 12536), ValueAtIndex);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (*(*(a1 + 56) + 12536))
        {
          v80 = CFArrayGetCount(*(*(a1 + 56) + 12536));
        }

        else
        {
          v80 = 0;
        }

        Count = v80;
        if (v336 || Count <= 0)
        {
          if (v336 > 0 && !Count)
          {
            *(*(a1 + 56) + 1256) = *(*(a1 + 56) + 12556);
            *(*(a1 + 56) + 12548) = 0;
            v326 = *(*(a1 + 56) + 12552) >= *(*(a1 + 56) + 1256);
            v25 = 2.5;
            if (!v326)
            {
              v25 = 5.0;
            }

            v325 = v25;
            v597 = xmmword_1DEACE57C;
            v598 = -1820426635;
            v595 = xmmword_1DEACE590;
            v596 = -937652876;
            v324 = (MGIsDeviceOneOfType() & 1) != 0;
            v593 = xmmword_1DEACE5A4;
            v594 = 1874287171;
            v591 = xmmword_1DEACE5B8;
            v592 = -781324731;
            if (MGIsDeviceOneOfType())
            {
              v324 = 1;
            }

            if (v324)
            {
              v323 = CFDictionaryGetValue(*(*(a1 + 56) + 192), @"CBStoreDemoModeIsPresent");
              if (v323)
              {
                if (CFBooleanGetValue(v323))
                {
                  if (_logHandle)
                  {
                    v77 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v76 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v76 = init_default_corebrightness_log();
                    }

                    v77 = v76;
                  }

                  v322 = v77;
                  v321 = OS_LOG_TYPE_DEFAULT;
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_0_2_8_0_8_0(v590, COERCE__INT64(v325), 0);
                    _os_log_impl(&dword_1DE8E5000, v322, v321, "Store Demo is present! The unfreeze period will be altered: %f -> %f.", v590, 0x16u);
                  }

                  v325 = 0.0;
                }
              }
            }

            if (_logHandle)
            {
              v75 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v74 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v74 = init_default_corebrightness_log();
              }

              v75 = v74;
            }

            v320 = v75;
            v319 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v589, COERCE__INT64(*(*(a1 + 56) + 12552)));
              _os_log_impl(&dword_1DE8E5000, v320, v319, "The brightness has been unfrozen. L cached = %f", v589, 0xCu);
            }

            _DisplaySetLogicalBrightnessWithFade(*(a1 + 56), 74, 0, 0, *(*(a1 + 56) + 12552), v325);
          }
        }

        else
        {
          *(*(a1 + 56) + 12548) = 1;
          *(*(a1 + 56) + 12556) = *(*(a1 + 56) + 1256);
          if (_logHandle)
          {
            v79 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v78 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v78 = init_default_corebrightness_log();
            }

            v79 = v78;
          }

          v328 = v79;
          v327 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_8_0(v599, COERCE__INT64(*(*(a1 + 56) + 12556)));
            _os_log_impl(&dword_1DE8E5000, v328, v327, "The brightness has been frozen. L = %f", v599, 0xCu);
          }
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          if (*(*(a1 + 56) + 12536) && CFArrayGetCount(*(*(a1 + 56) + 12536)) > 0)
          {
            CFDictionarySetValue(Mutable, @"FreezeBrightnessRequestors", *(*(a1 + 56) + 12536));
          }

          v317 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (*(a1 + 56) + 12544));
          if (v317)
          {
            CFDictionarySetValue(Mutable, @"FreezeBrightnessPeriod", v317);
            CFRelease(v317);
          }

          CFDictionarySetValue(*(*(a1 + 56) + 192), *(a1 + 48), Mutable);
          CFRelease(Mutable);
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PowerLogReportInterval"))
  {
    if (*(a1 + 40))
    {
      v73 = CFGetTypeID(*(a1 + 40));
      if (v73 == CFNumberGetTypeID())
      {
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, (*(a1 + 56) + 12584));
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"ColorRampPeriodOverride"))
  {
    if (*(a1 + 40))
    {
      v72 = CFGetTypeID(*(a1 + 40));
      if (v72 == CFNumberGetTypeID())
      {
        v316 = -1.0;
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v316);
        CFXOverrideRampPeriod(*(*(a1 + 56) + 12504), v316);
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DynamicSliderEnable"))
  {
    if (*(a1 + 40))
    {
      v71 = CFGetTypeID(*(a1 + 40));
      if (v71 == CFNumberGetTypeID())
      {
        v315 = 1;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v315);
        *(*(a1 + 56) + 1048) = v315 == 0;
        *(*(a1 + 56) + 1120) = v315 == 0;
        if (!v315)
        {
          if (*(*(a1 + 56) + 1064) > 0.0)
          {
            *(*(a1 + 56) + 1056) = *(*(a1 + 56) + 1080);
            *(*(a1 + 56) + 1064) = 0;
          }

          if (*(*(a1 + 56) + 992) > 0.0)
          {
            *(*(a1 + 56) + 984) = *(*(a1 + 56) + 1008);
            *(*(a1 + 56) + 992) = 0;
          }
        }

        __DisplaySetLogicalBrightnessInternal(*(a1 + 56), 12290, *(*(a1 + 56) + 1256));
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessForceUpdates"))
  {
    if (*(a1 + 40))
    {
      v70 = CFGetTypeID(*(a1 + 40));
      if (v70 == CFNumberGetTypeID())
      {
        v314 = 1;
        CFNumberGetValue(*(a1 + 40), kCFNumberIntType, &v314);
        *(*(a1 + 56) + 1284) = v314 != 0;
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightnessGlobalScalar"))
  {
    if (*(a1 + 40))
    {
      v69 = CFGetTypeID(*(a1 + 40));
      if (v69 == CFDictionaryGetTypeID())
      {
        GlobalScalarFromDictionary = _DisplayGetGlobalScalarFromDictionary(*(a1 + 56), *(*(a1 + 56) + 80), *(a1 + 40));
        if (GlobalScalarFromDictionary > 0.0)
        {
          *(*(a1 + 56) + 1140) = GlobalScalarFromDictionary;
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if (*(a1 + 40) && CFEqual(*(a1 + 48), @"ProductTypeAccessory"))
  {
    v68 = CFBooleanGetTypeID();
    if (v68 == CFGetTypeID(*(a1 + 40)))
    {
      *(*(a1 + 56) + 312) = CFBooleanGetValue(*(a1 + 40)) != 0;
    }
  }

  else if (CFEqual(*(a1 + 48), @"PCCEnable"))
  {
    if (*(a1 + 40))
    {
      v67 = CFGetTypeID(*(a1 + 40));
      if (v67 == CFNumberGetTypeID())
      {
        v312 = -1.0;
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v312);
        if (v312 >= 0.0)
        {
          __DisplaySetBLDriverProperty(*(a1 + 56), @"pcc-enable", *MEMORY[0x1E695E4D0]);
        }

        else
        {
          __DisplaySetBLDriverProperty(*(a1 + 56), @"pcc-enable", *MEMORY[0x1E695E4C0]);
        }

        if (_logHandle)
        {
          v66 = _logHandle;
        }

        else
        {
          v65 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v66 = v65;
        }

        v311 = v66;
        v310 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          if (v312 == 0.0)
          {
            v26 = "disabled";
          }

          else
          {
            v26 = "enabled";
          }

          __os_log_helper_16_2_1_8_32(v588, v26);
          _os_log_impl(&dword_1DE8E5000, v311, v310, "PCC %s", v588, 0xCu);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"PCCBrightness"))
  {
    if (*(a1 + 40))
    {
      v64 = CFGetTypeID(*(a1 + 40));
      if (v64 == CFNumberGetTypeID())
      {
        v309 = -1.0;
        CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v309);
        if (v309 >= 0.0)
        {
          if (_logHandle)
          {
            v63 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v62 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v62 = init_default_corebrightness_log();
            }

            v63 = v62;
          }

          v308 = v63;
          v307 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_8_0(v587, COERCE__INT64(v309));
            _os_log_impl(&dword_1DE8E5000, v308, v307, "Set PCC brightness = %f", v587, 0xCu);
          }

          v306 = (v309 * 65536.0);
          v61 = CFGetAllocator(*(a1 + 56));
          v305 = CFNumberCreate(v61, kCFNumberSInt32Type, &v306);
          if (v305)
          {
            __DisplaySetBLDriverProperty(*(a1 + 56), @"pcc-brightness", v305);
            CFRelease(v305);
          }
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"CoreBrightnessFeaturesDisabled"))
  {
    v304 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v304 objectForKey:@"OverrideBrightnessWithFixedNits"] || objc_msgSend(v304, "objectForKey:", @"OverrideBrightnessWithFixedSliderPosition"))
      {
        v303 = [v304 objectForKey:@"OverrideBrightnessWithFixedNits"];
        v302 = [v304 objectForKey:@"OverrideBrightnessWithFixedSliderPosition"];
        v301 = 0.0;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v303 floatValue];
          v301 = v27;
        }

        else
        {
          v300 = 1.0;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v302 floatValue];
            v300 = v28;
          }

          else
          {
            v300 = 1.0;
          }

          v301 = _DisplaySliderToLogicalBrightnessInternal(*(a1 + 56), v300);
        }

        *(*(a1 + 56) + 1504) = 1;
        v299 = (*(*(a1 + 56) + 1312) * 65536.0);
        SetBLDriverNitsCap(*(a1 + 56), v299);
        v298 = (v301 * 65536.0);
        if (_logHandle)
        {
          v60 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v59 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v59 = init_default_corebrightness_log();
          }

          v60 = v59;
        }

        v297 = v60;
        v296 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v586, COERCE__INT64(v301));
          _os_log_impl(&dword_1DE8E5000, v297, v296, "Display.m CoreBrightnessFeaturesDisabled overriden brightness, desired fixed brightness is = %f", v586, 0xCu);
        }

        SetBLDriverNitsValue(*(a1 + 56), v298);
      }

      else
      {
        *(*(a1 + 56) + 1504) = 0;
        SetBLDriverNitsCapIfNotInLPM(*(a1 + 56), *(*(a1 + 56) + 1512));
        SetBLDriverNitsValueIfNotInLPM(*(a1 + 56), *(*(a1 + 56) + 1508));
        if (_logHandle)
        {
          v58 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v57 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v57 = init_default_corebrightness_log();
          }

          v58 = v57;
        }

        v295 = v58;
        v294 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v295;
          v56 = v294;
          __os_log_helper_16_0_0(v293);
          _os_log_impl(&dword_1DE8E5000, v55, v56, "Display.m CoreBrightnessFeaturesDisabled brightness override off", v293, 2u);
        }
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"BrightDotsMitigationParameters"))
  {
    v292 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v292 objectForKey:@"brightDotsMitigationLux1"] && objc_msgSend(v292, "objectForKey:", @"brightDotsMitigationLux2") && objc_msgSend(v292, "objectForKey:", @"brightDotsMitigationNits1") && objc_msgSend(v292, "objectForKey:", @"brightDotsMitigationNits2"))
      {
        [objc_msgSend(v292 objectForKey:{@"brightDotsMitigationLux1", "floatValue"}];
        *(*(a1 + 56) + 1152) = v29;
        [objc_msgSend(v292 objectForKey:{@"brightDotsMitigationLux2", "floatValue"}];
        *(*(a1 + 56) + 1160) = v30;
        [objc_msgSend(v292 objectForKey:{@"brightDotsMitigationNits1", "floatValue"}];
        *(*(a1 + 56) + 1156) = v31;
        [objc_msgSend(v292 objectForKey:{@"brightDotsMitigationNits2", "floatValue"}];
        *(*(a1 + 56) + 1164) = v32;
      }

      if (*(*(a1 + 56) + 192))
      {
        v291 = *(*(a1 + 56) + 192);
        [v291 setObject:v292 forKey:@"BrightDotsMitigationParameters"];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"FullBrightnessRangeOverrideEnabled"))
  {
    v290 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v290 objectForKey:@"Status"] && (objc_msgSend(objc_msgSend(v290, "objectForKey:", @"Status"), "BOOLValue") & 1) != 0)
      {
        DisplayEnableFullBrightnessRangeAccessOverride(*(a1 + 56), 1);
      }

      else
      {
        DisplayEnableFullBrightnessRangeAccessOverride(*(a1 + 56), 0);
      }

      if (*(*(a1 + 56) + 192))
      {
        v289 = *(*(a1 + 56) + 192);
        [v289 setObject:v290 forKey:@"FullBrightnessRangeOverrideEnabled"];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplaySyncBrightnessTransactions"))
  {
    v54 = CFBooleanGetTypeID();
    if (v54 == CFGetTypeID(*(a1 + 40)))
    {
      *(*(a1 + 56) + 321) = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (*(*(a1 + 56) + 321))
      {
        *(*(a1 + 56) + 136) = 0;
        *(*(a1 + 56) + 208) = [[CBFrameLink alloc] initWithDisplay:*(a1 + 56) andQueue:*(*(a1 + 56) + 144)];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayFasterEDREngaged"))
  {
    v53 = CFBooleanGetTypeID();
    if (v53 == CFGetTypeID(*(a1 + 40)) && (*(*(a1 + 56) + 321) & 1) != 0)
    {
      *(*(a1 + 56) + 322) = CFBooleanGetValue(*(a1 + 40)) != 0;
      if (*(*(a1 + 56) + 322))
      {
        __DisplayStartAPLCPMSTimer(*(a1 + 56), 1.0);
      }

      else if (*(*(a1 + 56) + 12112))
      {
        __DisplayProcessHDRStatusForCoreAnalytics(*(a1 + 56));
        dispatch_release(*(*(a1 + 56) + 12112));
        *(*(a1 + 56) + 12112) = 0;
        *(*(a1 + 56) + 12088) = 0;
        *(*(a1 + 56) + 12096) = 0;
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMinRefreshRate"))
  {
    v580 = *(*(a1 + 56) + 384);
    v52 = CFNumberGetTypeID();
    if (v52 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    *(*(a1 + 56) + 384) = v580;
    if (_logHandle)
    {
      v51 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v50 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v50 = init_default_corebrightness_log();
      }

      v51 = v50;
    }

    oslog = v51;
    v287 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_0(v585, "DisplayBrightnessMinRefreshRate", COERCE__INT64(v580));
      _os_log_debug_impl(&dword_1DE8E5000, oslog, v287, "MinRefreshRate: %s = %f\n", v585, 0x16u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessMaxRefreshRate"))
  {
    v580 = *(*(a1 + 56) + 388);
    v49 = CFNumberGetTypeID();
    if (v49 != CFGetTypeID(*(a1 + 40)))
    {
      goto LABEL_1185;
    }

    CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v580);
    *(*(a1 + 56) + 388) = v580;
    if (_logHandle)
    {
      v48 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v47 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v47 = init_default_corebrightness_log();
      }

      v48 = v47;
    }

    v286 = v48;
    v285 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_0(v584, "DisplayBrightnessMaxRefreshRate", COERCE__INT64(v580));
      _os_log_debug_impl(&dword_1DE8E5000, v286, v285, "MaxRefreshRate: %s = %f\n", v584, 0x16u);
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraRamp"))
  {
    v580 = *(*(a1 + 56) + 12952);
    v284 = 0.0;
    v283 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v282 = [v283 objectForKey:@"Factor"];
      if (v282)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v282 floatValue];
          v580 = v33;
        }
      }

      v281 = [v283 objectForKey:@"Period"];
      if (v281)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v281 floatValue];
          v284 = v34;
        }
      }

      _DisplaySetAuroraFactorWithFade(*(a1 + 56), v580, v284);
      if (*(*(a1 + 56) + 192))
      {
        v280 = *(*(a1 + 56) + 192);
        [v280 setObject:v283 forKey:@"AuroraRamp"];
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraCLTMActivationThreshold"))
  {
    v46 = CFNumberGetTypeID();
    if (v46 == CFGetTypeID(*(a1 + 40)))
    {
      [*(a1 + 40) floatValue];
      *(*(a1 + 56) + 13024) = v35;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraRampUpTimeSecondsPerStop"))
  {
    v45 = CFNumberGetTypeID();
    if (v45 == CFGetTypeID(*(a1 + 40)))
    {
      [*(a1 + 40) floatValue];
      *(*(a1 + 56) + 13028) = v36;
    }
  }

  else if (CFEqual(*(a1 + 48), @"AuroraRampDownTimeSecondsPerStop"))
  {
    v44 = CFNumberGetTypeID();
    if (v44 == CFGetTypeID(*(a1 + 40)))
    {
      [*(a1 + 40) floatValue];
      *(*(a1 + 56) + 13032) = v37;
    }
  }

  else if (CFEqual(*(a1 + 48), @"ExternalRampIsRunning"))
  {
    v279 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 56) + 264) handleRampStart:v279];
    }
  }

  else if (CFEqual(*(a1 + 48), @"ExternalRampHasFinished"))
  {
    v278 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 56) + 264) handleRampEnd:v278];
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayDisplayStartFade"))
  {
    v43 = CFNumberGetTypeID();
    if (v43 == CFGetTypeID(*(a1 + 40)))
    {
      v42 = *(a1 + 56);
      [*(a1 + 40) floatValue];
      __DisplayStartFadeWithType(v42, 21, v38);
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayBrightnessFadePeriodOverride"))
  {
    v277 = *(*(a1 + 56) + 376);
    v41 = CFNumberGetTypeID();
    if (v41 == CFGetTypeID(*(a1 + 40)))
    {
      CFNumberGetValue(*(a1 + 40), kCFNumberFloatType, &v277);
      if (v277 < 0.0)
      {
        *(*(a1 + 56) + 376) = v277;
        *(*(a1 + 56) + 380) = 0;
      }

      else
      {
        *(*(a1 + 56) + 376) = v277;
        *(*(a1 + 56) + 380) = 1;
      }

      if (_logHandle)
      {
        v40 = _logHandle;
      }

      else
      {
        v39 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v40 = v39;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_0(v583, "DisplayBrightnessFadePeriodOverride", COERCE__INT64(v277));
        _os_log_debug_impl(&dword_1DE8E5000, v40, OS_LOG_TYPE_DEBUG, "FadePeriodOverride: %s = %f\n", v583, 0x16u);
      }
    }
  }

  else if (CFEqual(*(a1 + 48), @"DisplayPowerOff"))
  {
    __ShortcutAllRamps(*(a1 + 56));
    if (*(*(a1 + 56) + 1204) > 0.0)
    {
      *(*(a1 + 56) + 1256) = 0;
    }
  }

  else if (!CFEqual(*(a1 + 48), @"CBStoreDemoModeIsPresent"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1 && *(a1 + 40))
  {
    CFDictionarySetValue(*(*(a1 + 56) + 192), *(a1 + 48), *(a1 + 40));
  }

  if (*(*(a1 + 56) + 348) == 0.0)
  {
    *(*(a1 + 56) + 356) = *(*(a1 + 56) + 336);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_1185:
  *MEMORY[0x1E69E9840];
}

uint64_t __DisplayGetPowerAccumulatorDCP(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v28 = a2;
  if (_logHandle)
  {
    v12 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v12 = inited;
  }

  v27 = v12;
  v26 = 1;
  v25 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v12))
  {
    log = v27;
    type = v26;
    spid = v25;
    __os_log_helper_16_0_0(v24);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "DisplayGetPowerAccumulatorDCP", &unk_1DEAD656F, v24, 2u);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x20000000;
  v22 = 32;
  v23 = 0x8000000000000000;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  if (*(v29 + 12144))
  {
    if (*(v29 + 12136))
    {
      v2 = *(v29 + 12144);
      v3 = *(v29 + 12136);
      Samples = IOReportCreateSamples();
      if (Samples)
      {
        IOReportIterate();
        CFRelease(Samples);
      }
    }
  }

  if (v28)
  {
    *v28 = v15[3];
  }

  if (_logHandle)
  {
    v7 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v6 = init_default_corebrightness_log();
    }

    v7 = v6;
  }

  if (os_signpost_enabled(v7))
  {
    __os_log_helper_16_0_1_8_0(v30, v20[3]);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DisplayGetPowerAccumulatorDCP", "power accumulator = %llu", v30, 0xCu);
  }

  v5 = v20[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v19, 8);
  *MEMORY[0x1E69E9840];
  return v5;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void __DisplayCPMSHDRCallback(uint64_t a1)
{
  if (a1)
  {
    if (DisplayHasDCP(a1))
    {
      __DisplayCPMSHDRCallbackDCPStage1(a1);
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v4 = Current - *(a1 + 12088);
      PowerAccumulator = __DisplayGetPowerAccumulator(a1);
      v1 = (PowerAccumulator - *(a1 + 12096)) / (1000.0 * v4);
      InstantPower = v1;
      if (v1 == 0.0)
      {
        InstantPower = __DisplayGetInstantPower(a1);
      }

      else
      {
        *(a1 + 12096) = PowerAccumulator;
        *(a1 + 12088) = Current;
      }

      if (*(a1 + 12081))
      {
        __DisplayEvaluateCPMSHDRPowerConstraint(a1, InstantPower);
      }

      *(a1 + 12081) = 1;
    }
  }
}

void __DisplayCPMSHDRCallbackDCPStage1(NSObject **a1)
{
  v23 = a1;
  v19[0] = 0;
  v19[1] = v19;
  v20 = 0x20000000;
  v21 = 32;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v12 = 0x20000000;
  v13 = 32;
  Current = CFAbsoluteTimeGetCurrent();
  CFRetain(v23);
  v1 = v23[19];
  block = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = ____DisplayCPMSHDRCallbackDCPStage1_block_invoke;
  v6 = &unk_1E867CB70;
  v7 = v15;
  v10 = v23;
  v8 = v19;
  v9 = v11;
  dispatch_async(v1, &block);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v19, 8);
}

void sub_1DE8FAC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, _Unwind_Exception *exception_object)
{
  _Block_object_dispose((v27 - 88), 8);
  _Block_object_dispose((v27 - 56), 8);
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void __DisplayEvaluateCPMSHDRPowerConstraint(uint64_t a1, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  CPMSPowerConstraint = __DisplayGetCPMSPowerConstraint(a1);
  HDRAPLColumn = DisplayGetHDRAPLColumn(a1);
  v4 = __DisplayPhysicalBrightnessToPowerInternal(a1, HDRAPLColumn, *(a1 + 1544));
  if ((*(a1 + 12082) & 1) == 0 && CPMSPowerConstraint < v4)
  {
    *(a1 + 12082) = 1;
  }

  if (_logHandle)
  {
    v3 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_8_0(v9, COERCE__INT64(a2), COERCE__INT64(CPMSPowerConstraint), COERCE__INT64(v4));
    _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "CPMS: Current Power Output:%f Budget Constraint:%f/%f", v9, 0x20u);
  }

  if (a2 > CPMSPowerConstraint)
  {
    __DisplayUpdateHDRCap(a1);
  }

  *MEMORY[0x1E69E9840];
}

void __DisplayCPMSHDRCallbackDCPStage2(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v4 = (a2 - *(a1 + 12096)) / (1000.0 * (a4 - *(a1 + 12088)));
  v5 = v4;
  if (v4 == 0.0)
  {
    v5 = a3;
  }

  else
  {
    *(a1 + 12096) = a2;
    *(a1 + 12088) = a4;
  }

  if (*(a1 + 12081))
  {
    __DisplayEvaluateCPMSHDRPowerConstraint(a1, v5);
  }

  *(a1 + 12081) = 1;
}

uint64_t DisplayGetHDRAPLColumn(uint64_t a1)
{
  v8 = a1;
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayGetHDRAPLColumn_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = a1;
  v10 = &DisplayGetHDRAPLColumn_hdrToken;
  v9 = &v2;
  if (DisplayGetHDRAPLColumn_hdrToken != -1)
  {
    dispatch_once(v10, v9);
  }

  return DisplayGetHDRAPLColumn_hdrColumn;
}

float __DisplayGetCPMSPowerConstraint(uint64_t a1)
{
  if (*(a1 + 528) <= *(a1 + 524))
  {
    v4 = *(a1 + 12076);
  }

  else
  {
    APLColumnOrDefault = DisplayGetAPLColumnOrDefault(a1, 0x64u);
    v4 = DisplayPhysicalBrightnessToPower(a1, APLColumnOrDefault, *(a1 + 528));
  }

  if (*(a1 + 12080))
  {
    return *(a1 + 12072);
  }

  else
  {
    return fminf(*(a1 + 12072), v4);
  }
}

uint64_t __DisplayGetIndexFromValue(unsigned int a1, unsigned int a2, uint64_t a3, float a4)
{
  if ((a1 & 0x80000000) != 0 || (a2 & 0x80000000) != 0)
  {
    return 0;
  }

  else if (a1 < a2)
  {
    v5 = (a1 + a2) / 2;
    if (*(a3 + 4 * v5) <= a4)
    {
      if (a4 >= *(a3 + 4 * (v5 + 1)))
      {
        return __DisplayGetIndexFromValue((v5 + 1), a2, a3, a4);
      }

      else
      {
        return ((a1 + a2) / 2);
      }
    }

    else
    {
      return __DisplayGetIndexFromValue(a1, v5, a3, a4);
    }
  }

  else
  {
    return a2;
  }
}

float __DisplayGetPercentageFromIndex(int a1, int a2, float *a3, float a4)
{
  if (a4 < *a3 || a1 == a2)
  {
    return 0.0;
  }

  else
  {
    return (a4 - a3[a1]) / (a3[a1 + 1] - a3[a1]);
  }
}

float __DisplayPhysicalBrightnessToPowerInternal(uint64_t a1, unsigned int a2, float a3)
{
  if (!*(a1 + 1660))
  {
    return 0.0;
  }

  APLIndex = DisplayGetAPLIndex(a1, a2);
  IndexFromValue = __DisplayGetIndexFromValue(0, *(a1 + 1660) - 1, a1 + 1868, a3);
  PercentageFromIndex = __DisplayGetPercentageFromIndex(IndexFromValue, *(a1 + 1660) - 1, (a1 + 1868), a3);
  if (IndexFromValue == *(a1 + 1660) - 1)
  {
    return *(a1 + 2068 + 200 * APLIndex + 4 * IndexFromValue);
  }

  else
  {
    return *(a1 + 2068 + 200 * APLIndex + 4 * IndexFromValue) + (PercentageFromIndex * (*(a1 + 2068 + 200 * APLIndex + 4 * (IndexFromValue + 1)) - *(a1 + 2068 + 200 * APLIndex + 4 * IndexFromValue)));
  }
}

void ColorRampCallback(_BYTE *a1, float *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = a1;
  v29 = a2;
  v28 = 0;
  if (a1)
  {
    v28 = v30;
    if (v29)
    {
      if (*(v28 + 3149) == 1)
      {
        v27 = 0;
        v26 = 0.0;
        v25 = 0.0;
        CFXGetWPFromMatrix(*(v28 + 1563), v29 + 1, &v27, &v26);
        v25 = 1.0 / v26;
        v24 = *(v28 + 386);
        CFXFindBrightnessCompAlpha(v24);
        v23 = v2;
        v3 = (v2 * v25) + 1.0 - v2;
        v22 = v3;
        *(v28 + 3132) = v3;
        v21 = *(v28 + 375);
        v20 = _DisplayComputeEDRNitsCap(v28);
        if (_logHandle)
        {
          v7 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v7 = inited;
        }

        oslog = v7;
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_5_8_0_8_0_4_0_8_0_8_0(v33, COERCE__INT64(v21), COERCE__INT64(v20), *(v28 + 3150), COERCE__INT64(*(v28 + 298)), COERCE__INT64(*(v28 + 3132)));
          _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Night Shift/Harmony - SetLibEDRBrightness - physicalBrightness:%f, maxLum: %f, edrState: %d, lux: %f, brightness boost: %f\n", v33, 0x30u);
        }

        SetLibEDRBrightness(v28, v21, v20, *(v28 + 298), v22);
      }

      theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], *(v29 + 10), MEMORY[0x1E695E9C0]);
      if (theArray)
      {
        for (i = 0; i < *(v29 + 10); ++i)
        {
          value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &v29[i + 1]);
          if (value)
          {
            CFArrayAppendValue(theArray, value);
            CFRelease(value);
          }
        }

        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v29 + 12);
          if (cf)
          {
            CFArrayAppendValue(Mutable, cf);
            CFRelease(cf);
          }

          cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v29 + 13);
          if (cf)
          {
            CFArrayAppendValue(Mutable, cf);
            CFRelease(cf);
          }

          valuePtr = *v29;
          v5 = MEMORY[0x1E695E480];
          v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
          v10 = CFNumberCreate(*v5, kCFNumberFloatType, v29 + 11);
          if (v11)
          {
            if (v10)
            {
              keys[0] = xmmword_1E867CB00;
              keys[1] = xmmword_1E867CB10;
              values[0] = theArray;
              values[1] = v11;
              values[2] = v10;
              values[3] = Mutable;
              v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v9)
              {
                if (*(v28 + 2))
                {
                  (*(v28 + 2))(*(v28 + 3), @"ColorRamp", v9);
                }

                CFRelease(v9);
              }
            }
          }

          if (v11)
          {
            CFRelease(v11);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          CFRelease(Mutable);
        }

        CFRelease(theArray);
      }

      v28[12521] = 0;
    }

    else
    {
      v28[12521] = 1;
      Current = CFAbsoluteTimeGetCurrent();
      if (*(v28 + 1563))
      {
        if (v28[12521])
        {
          v28[12521] = CFXUpdateColorFade(*(v28 + 1563), Current);
          if (v28[12521])
          {
            *&v4 = 1.0 / 60.0;
            __DisplayStartFadeWithType(v28, 20, v4);
          }
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void *ColorRampCallback_0(void *result, uint64_t a2)
{
  if (result)
  {
    return [result colorRampRoutine:a2];
  }

  return result;
}

uint64_t DisplayHasDCP(uint64_t a1)
{
  v8 = a1;
  v2 = MEMORY[0x1E69E9820];
  v3 = -1073741824;
  v4 = 0;
  v5 = __DisplayHasDCP_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = a1;
  v10 = &DisplayHasDCP_token;
  v9 = &v2;
  if (DisplayHasDCP_token != -1)
  {
    dispatch_once(v10, v9);
  }

  return DisplayHasDCP_hasDCP & 1;
}

float AABC::calculateMovingAverage(AABC *this, float a2)
{
  v14 = this;
  v13 = a2;
  v6 = *(this + 35);
  v2 = std::array<float,3ul>::size[abi:de200100]();
  *std::array<float,3ul>::operator[][abi:de200100](this + 268, v6 % v2) = a2;
  ++*(this + 35);
  std::array<float,3ul>::cbegin[abi:de200100]();
  v8 = v3;
  v4 = std::array<float,3ul>::cend[abi:de200100]();
  v12 = std::accumulate[abi:de200100]<float const*,float>(v8, v4, 0.0);
  v10 = v12;
  v11 = std::array<float,3ul>::size[abi:de200100]();
  return v10 / *std::min[abi:de200100]<unsigned long>(&v11, this + 35);
}

uint64_t init_default_corebrightness_log()
{
  _COREBRIGHTNESS_LOG_DEFAULT = os_log_create("com.apple.CoreBrightness", "default");
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v5 = MEMORY[0x1E69E9C10];
    v4 = 16;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      log = v5;
      type = v4;
      __os_log_helper_16_0_0(v3);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create CoreBrightness default log", v3, 2u);
    }

    _COREBRIGHTNESS_LOG_DEFAULT = MEMORY[0x1E69E9C10];
  }

  return _COREBRIGHTNESS_LOG_DEFAULT;
}

uint64_t AABC::getPropertyForClient(AABC *this, const __CFString *a2, const void *a3)
{
  v240 = v260;
  v281 = *MEMORY[0x1E69E9840];
  v269 = this;
  v268 = a2;
  v267 = a3;
  v241 = this;
  if (_logHandle)
  {
    v239 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v238 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
      v238 = inited;
    }

    v239 = v238;
  }

  v3 = v240;
  v240[18] = v239;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v3[18], OS_LOG_TYPE_DEBUG))
  {
    log = v240[18];
    *v235 = type;
    buf = v280;
    __os_log_helper_16_0_1_4_0(v280, 4);
    _os_log_debug_impl(&dword_1DE8E5000, log, v235[0], "[%x]: ", v280, 8u);
  }

  if (_logHandle)
  {
    v233 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v232 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v231 = init_default_corebrightness_log();
      v232 = v231;
    }

    v233 = v232;
  }

  v4 = v240;
  v240[16] = v233;
  v265 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v4[16], OS_LOG_TYPE_DEBUG))
  {
    v228 = v240[16];
    *v229 = v265;
    v5 = v240[20];
    v230 = v279;
    __os_log_helper_16_2_2_4_0_8_64(v279, 2, v5);
    _os_log_debug_impl(&dword_1DE8E5000, v228, v229[0], "[%x]: %@", v279, 0x12u);
  }

  v6 = v241;
  v240[14] = 0;
  if (*(v6 + 92))
  {
    if (CFEqual(v240[20], @"ALSUserPreference"))
    {
      v226 = (*(**(v241 + 8) + 104))(*(v241 + 8));
      v7 = v241;
      *(v241 + 288) = v226;
      CurveDictionary = AABC::createCurveDictionary(v7, v7 + 1056);
      v8 = v240;
      v240[13] = CurveDictionary;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8[13]);
      v9 = v240;
      v240[12] = MutableCopy;
      CFRelease(v9[13]);
      if (*(v241 + 3409))
      {
        v223 = (*(**(v241 + 8) + 104))(*(v241 + 8));
        v10 = v241;
        *(v241 + 750) = v223;
        v222 = AABC::createCurveDictionary(v10, v10 + 2904);
        v11 = v240;
        v240[13] = v222;
        CFDictionaryAddValue(v11[12], @"ReplacementCurve", v11[13]);
        CFRelease(v240[13]);
        v221 = (*(**(v241 + 8) + 112))(*(v241 + 8));
        v12 = v241;
        *(v241 + 776) = v221;
        v220 = AABC::createCurveDictionary(v12, v12 + 3008);
        v13 = v240;
        v240[13] = v220;
        CFDictionaryAddValue(v13[12], @"AlternativeCurve", v13[13]);
        if (_logHandle)
        {
          v219 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v218 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v217 = init_default_corebrightness_log();
            v218 = v217;
          }

          v219 = v218;
        }

        v14 = v240;
        v240[11] = v219;
        v263 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v14[11], OS_LOG_TYPE_INFO))
        {
          v214 = v240[11];
          *v215 = v263;
          v15 = v240[13];
          v216 = v278;
          __os_log_helper_16_2_1_8_64(v278, v15);
          _os_log_impl(&dword_1DE8E5000, v214, v215[0], "Get ALSUserPreference - AlternativeCurve = %@ ", v278, 0xCu);
        }

        CFRelease(v240[13]);
        v213 = (*(**(v241 + 8) + 112))(*(v241 + 8));
        v16 = v241;
        *(v241 + 802) = v213;
        v212 = AABC::createCurveDictionary(v16, v16 + 3112);
        v17 = v240;
        v240[13] = v212;
        CFDictionaryAddValue(v17[12], @"AlternativeReplacementCurve", v17[13]);
        if (_logHandle)
        {
          v211 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v210 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v209 = init_default_corebrightness_log();
            v210 = v209;
          }

          v211 = v210;
        }

        v18 = v240;
        v240[9] = v211;
        v262 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v18[9], OS_LOG_TYPE_INFO))
        {
          v206 = v240[9];
          *v207 = v262;
          v19 = v240[13];
          v208 = v277;
          __os_log_helper_16_2_1_8_64(v277, v19);
          _os_log_impl(&dword_1DE8E5000, v206, v207[0], "Get ALSUserPreference - AlternativeReplacementCurve = %@ ", v277, 0xCu);
        }

        CFRelease(v240[13]);
        AAB::GetCurveUpdates(v241, v261);
        if (!std::list<AAB::CurveUpdate>::empty[abi:de200100](v261))
        {
          context = objc_autoreleasePoolPush();
          v204 = [MEMORY[0x1E695DF70] array];
          v20 = v240;
          v240[4] = v204;
          v20[1] = v261;
          v21 = std::list<AAB::CurveUpdate>::begin[abi:de200100](v20[1]);
          v22 = v240;
          *v240 = v21;
          v23 = v22[1];
          v259 = std::list<AAB::CurveUpdate>::end[abi:de200100]();
          while (std::operator!=[abi:de200100](v260, &v259))
          {
            v202 = std::__list_iterator<AAB::CurveUpdate,void *>::operator*[abi:de200100](v260);
            v258 = v202;
            v200 = v240[4];
            v240[86] = @"Lux";
            LODWORD(v24) = *v258;
            v201 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
            v25 = v240;
            v240[89] = v201;
            v25[87] = @"Nits";
            LODWORD(v26) = *(v258 + 4);
            v199 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
            v27 = v240;
            v240[90] = v199;
            v27[88] = @"Timestamp";
            v198 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v258 + 8)];
            v240[91] = v198;
            v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v276 forKeys:v275 count:3];
            [v200 addObject:v197];
            std::__list_iterator<AAB::CurveUpdate,void *>::operator++[abi:de200100](v260);
          }

          CFDictionaryAddValue(v240[12], @"CurveUpdates", v240[4]);
          objc_autoreleasePoolPop(context);
        }

        (*(**(v241 + 8) + 96))(*(v241 + 8));
        std::list<AAB::CurveUpdate>::~list(v261);
      }

      if (*(v241 + 3376))
      {
        v196 = AABC::createCurveDictionary(v241, v241 + 2904);
        v28 = v240;
        v240[13] = v196;
        CFDictionaryAddValue(v28[12], @"ReplacementCurve", v28[13]);
        CFRelease(v240[13]);
        CurveDescriptorDictionary = AABC::createCurveDescriptorDictionary(v241, v241 + 834);
        value = CurveDescriptorDictionary;
        CFDictionaryAddValue(v240[12], @"Descriptor", CurveDescriptorDictionary);
        CFRelease(CurveDescriptorDictionary);
        if (!v240[19])
        {
          if (AABC::isCurveGood(v241, v241 + 1056))
          {
            AABC::writeOutlierRemovalPreferences(v241, 0);
          }

          else
          {
            *(v241 + 3408) = 1;
          }
        }
      }

      CFDictionarySetValue(*(v241 + 47), @"ALSUserPreference", v240[12]);
      v29 = v240;
      v240[14] = v240[12];
      CFRelease(v29[12]);
    }

    else if (CFEqual(v240[20], @"OutlierRemoval"))
    {
      if (!CFDictionaryGetValueIfPresent(*(v241 + 47), @"OutlierRemoval", &v264))
      {
        v240[14] = 0;
      }
    }

    else if (CFEqual(v240[20], @"ALSRequiresProx"))
    {
      v240[14] = *MEMORY[0x1E695E4D0];
    }

    else if (CFEqual(v240[20], @"ALSDimPolicy"))
    {
      v190 = CFDictionaryGetValue(*(v241 + 48), @"ALSDimPolicy");
      v240[14] = v190;
    }

    else if (CFEqual(v240[20], @"ALSSpikeFilterDuration"))
    {
      v188 = CFDictionaryGetValue(*(v241 + 48), @"ALSSpikeFilterDuration");
      v240[14] = v188;
    }

    else if (CFEqual(v240[20], @"ALSMaxBrightenDuration"))
    {
      v186 = CFDictionaryGetValue(*(v241 + 48), @"ALSMaxBrightenDuration");
      v240[14] = v186;
    }

    else if (CFEqual(v240[20], @"ALSInternalSettings"))
    {
      v240[14] = *(v241 + 48);
    }

    else if (CFEqual(v240[20], @"BrightnessCurveLevel"))
    {
      v183 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v241 + 3412);
      v30 = v240;
      v240[14] = v183;
      if (v30[14])
      {
        CFDictionarySetValue(*(v241 + 48), @"BrightnessCurveLevel", v240[14]);
        CFRelease(v240[14]);
        v182 = CFDictionaryGetValue(*(v241 + 48), @"BrightnessCurveLevel");
        v240[14] = v182;
      }
    }

    else if (CFEqual(v240[20], @"AutoBrightnessLuxFilter"))
    {
      v180 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v241 + 3464);
      v240[14] = v180;
    }

    else if (CFEqual(v240[20], @"SemanticAmbientLightLevel"))
    {
      v178 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v241 + 584);
      v31 = v240;
      v240[14] = v178;
      if (v31[14])
      {
        CFDictionarySetValue(*(v241 + 47), @"SemanticAmbientLightLevel", v240[14]);
        CFRelease(v240[14]);
        v177 = CFDictionaryGetValue(*(v241 + 47), @"SemanticAmbientLightLevel");
        v240[14] = v177;
      }
    }

    else if (CFEqual(v240[20], @"TrustedLux32"))
    {
      v175 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, v241 + 540);
      v32 = v240;
      v240[14] = v175;
      if (v32[14])
      {
        CFDictionarySetValue(*(v241 + 48), @"TrustedLux32", v240[14]);
        CFRelease(v240[14]);
        v174 = CFDictionaryGetValue(*(v241 + 48), @"TrustedLux32");
        v240[14] = v174;
      }
    }

    else if (CFEqual(v240[20], @"TrustedLux"))
    {
      v172 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v241 + 540);
      v33 = v240;
      v240[14] = v172;
      if (v33[14])
      {
        CFDictionarySetValue(*(v241 + 48), @"TrustedLux", v240[14]);
        CFRelease(v240[14]);
        v171 = CFDictionaryGetValue(*(v241 + 48), @"TrustedLux");
        v240[14] = v171;
      }
    }

    else if (CFEqual(v240[20], @"TrustedFrontLux"))
    {
      v169 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v241 + 544);
      v34 = v240;
      v240[14] = v169;
      if (v34[14])
      {
        CFDictionarySetValue(*(v241 + 48), @"TrustedFrontLux", v240[14]);
        CFRelease(v240[14]);
        v168 = CFDictionaryGetValue(*(v241 + 48), @"TrustedFrontLux");
        v240[14] = v168;
      }
    }

    else
    {
      v167 = CFEqual(v240[20], @"Lux");
      if (v167 || (v166 = CFEqual(v240[20], @"AggregatedLux")) != 0)
      {
        v165 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v241 + 528);
        v35 = v240;
        v240[14] = v165;
        if (v35[14])
        {
          CFDictionarySetValue(*(v241 + 48), @"Lux", v240[14]);
          CFRelease(v240[14]);
          v164 = CFDictionaryGetValue(*(v241 + 48), @"Lux");
          v240[14] = v164;
        }
      }

      else if (CFEqual(v240[20], @"VirtualLux"))
      {
        v162 = AABC::LuminanceToIlluminance(v241, v241 + 264, *(v241 + 155));
        valuePtr = v162;
        v161 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
        v36 = v240;
        v240[14] = v161;
        if (v36[14])
        {
          CFDictionarySetValue(*(v241 + 48), @"VirtualLux", v240[14]);
          CFRelease(v240[14]);
          v160 = CFDictionaryGetValue(*(v241 + 48), @"VirtualLux");
          v240[14] = v160;
        }
      }

      else if (CFEqual(v240[20], @"ALSCurveInfo"))
      {
        v157 = &v255;
        v255 = 2;
        __len = 120;
        memcpy(__dst, off_1E867CF10, sizeof(__dst));
        memset(__b, 0, sizeof(__b));
        v158 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v255);
        v37 = v241;
        v240[56] = v158;
        v155 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v37 + 1072);
        v38 = v241;
        v240[57] = v155;
        v154 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v38 + 1080);
        v39 = v241;
        v240[58] = v154;
        v153 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v39 + 1076);
        v40 = v241;
        v240[59] = v153;
        v152 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v40 + 1084);
        v41 = v241;
        v240[60] = v152;
        v151 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v41 + 1056);
        v42 = v241;
        v240[61] = v151;
        v150 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v42 + 1060);
        v43 = v241;
        v240[62] = v150;
        v149 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v43 + 1064);
        v44 = v241;
        v240[63] = v149;
        v148 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v44 + 1068);
        v45 = v241;
        v240[64] = v148;
        v147 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v45 + 28);
        v46 = v241;
        v240[65] = v147;
        v146 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v46 + 20);
        v47 = v241;
        v240[66] = v146;
        v145 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v47 + 24);
        v48 = v241;
        v240[67] = v145;
        v144 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v48 + 32);
        v49 = v241;
        v240[68] = v144;
        v143 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v49 + 36);
        v50 = v241;
        v240[69] = v143;
        CurvePrefsDictionary = AABC::createCurvePrefsDictionary(v50, v50 + 1088);
        v240[70] = CurvePrefsDictionary;
        v141 = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, __b, 15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        theDict = v141;
        CFRelease(v240[70]);
        CFRelease(v240[69]);
        CFRelease(v240[68]);
        CFRelease(v240[67]);
        CFRelease(v240[66]);
        CFRelease(v240[65]);
        CFRelease(v240[64]);
        CFRelease(v240[63]);
        CFRelease(v240[62]);
        CFRelease(v240[61]);
        CFRelease(v240[60]);
        CFRelease(v240[59]);
        CFRelease(v240[58]);
        CFRelease(v240[57]);
        CFRelease(v240[56]);
        if (*(v241 + 3376))
        {
          v140 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
          v253 = v140;
          CFRelease(theDict);
          v139 = AABC::createCurveDescriptorDictionary(v241, v241 + 834);
          cf = v139;
          CFDictionaryAddValue(v140, @"Descriptor", v139);
          CFRelease(v139);
          theDict = v140;
        }

        CFDictionarySetValue(*(v241 + 47), @"ALSCurveInfo", theDict);
        v240[14] = theDict;
        CFRelease(theDict);
      }

      else if (CFEqual(v240[20], @"ALSAlternativeCurveInfo"))
      {
        v136 = &v251;
        v251 = 2;
        v135 = 120;
        memcpy(keys, off_1E867CF88, sizeof(keys));
        memset(values, 0, sizeof(values));
        v137 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v251);
        v51 = v241;
        v240[26] = v137;
        v134 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v51 + 3024);
        v52 = v241;
        v240[27] = v134;
        v133 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v52 + 3032);
        v53 = v241;
        v240[28] = v133;
        v132 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v53 + 3028);
        v54 = v241;
        v240[29] = v132;
        v131 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v54 + 3036);
        v55 = v241;
        v240[30] = v131;
        v130 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v55 + 3008);
        v56 = v241;
        v240[31] = v130;
        v129 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v56 + 3012);
        v57 = v241;
        v240[32] = v129;
        v128 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v57 + 3016);
        v58 = v241;
        v240[33] = v128;
        v127 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v58 + 3020);
        v59 = v241;
        v240[34] = v127;
        v126 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v59 + 28);
        v60 = v241;
        v240[35] = v126;
        v125 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v60 + 20);
        v61 = v241;
        v240[36] = v125;
        v124 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v61 + 24);
        v62 = v241;
        v240[37] = v124;
        v123 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v62 + 32);
        v63 = v241;
        v240[38] = v123;
        v122 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v63 + 36);
        v64 = v241;
        v240[39] = v122;
        v121 = AABC::createCurvePrefsDictionary(v64, v64 + 3040);
        v240[40] = v121;
        v120 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v250 = v120;
        CFRelease(v240[40]);
        CFRelease(v240[39]);
        CFRelease(v240[38]);
        CFRelease(v240[37]);
        CFRelease(v240[36]);
        CFRelease(v240[35]);
        CFRelease(v240[34]);
        CFRelease(v240[33]);
        CFRelease(v240[32]);
        CFRelease(v240[31]);
        CFRelease(v240[30]);
        CFRelease(v240[29]);
        CFRelease(v240[28]);
        CFRelease(v240[27]);
        CFRelease(v240[26]);
        CFDictionarySetValue(*(v241 + 47), @"ALSAlternativeCurveInfo", v120);
        v240[14] = v120;
        CFRelease(v250);
      }

      else if (CFEqual(v240[20], @"AODDarkerCurve"))
      {
        if (*(v241 + 718) > 0)
        {
          v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v249 = v118;
          v117 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v248 = v117;
          for (i = 0; i < *(v241 + 718); ++i)
          {
            v116 = objc_alloc(MEMORY[0x1E696AD98]);
            LODWORD(v65) = *(v241 + i + 678);
            v115 = [v116 initWithFloat:v65];
            v246 = v115;
            v114 = objc_alloc(MEMORY[0x1E696AD98]);
            LODWORD(v66) = *(v241 + i + 698);
            v113 = [v114 initWithFloat:v66];
            v245 = v113;
            [v249 addObject:v115];
            [v248 addObject:v113];
            MEMORY[0x1E69E5920](v115);
            MEMORY[0x1E69E5920](v113);
          }

          v112 = objc_alloc(MEMORY[0x1E695DF20]);
          v111 = [v112 initWithObjectsAndKeys:{v249, @"lux", v248, @"nits", 0}];
          v244 = v111;
          v240[14] = v111;
          MEMORY[0x1E69E5920](v249);
          MEMORY[0x1E69E5920](v248);
          if (v240[14])
          {
            CFDictionarySetValue(*(v241 + 48), @"AODDarkerCurve", v240[14]);
            CFRelease(v240[14]);
            v110 = CFDictionaryGetValue(*(v241 + 48), @"AODDarkerCurve");
            v240[14] = v110;
          }
        }
      }

      else if (CFEqual(v240[20], @"ALSDefaultCurves"))
      {
        v108 = CFDictionaryGetValue(*(v241 + 47), v240[20]);
        v240[14] = v108;
      }

      else if (CFEqual(v240[20], @"EcoMode"))
      {
        if (*(v241 + 3424))
        {
          v106 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v106 = *MEMORY[0x1E695E4C0];
        }

        v240[14] = v106;
      }

      else if (CFEqual(v240[20], @"CBAutoBrightnessAvailable"))
      {
        if (*(v241 + 127))
        {
          v104 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v104 = *MEMORY[0x1E695E4C0];
        }

        v240[14] = v104;
      }

      else if (CFEqual(v240[20], @"ALSBrightenPdeltaSlow"))
      {
        v102 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v241 + 3816);
        v67 = v240;
        v240[14] = v102;
        if (v67[14])
        {
          CFDictionarySetValue(*(v241 + 48), @"ALSBrightenPdeltaSlow", v240[14]);
          CFRelease(v240[14]);
          v101 = CFDictionaryGetValue(*(v241 + 48), @"ALSBrightenPdeltaSlow");
          v240[14] = v101;
        }
      }

      else if (CFEqual(v240[20], @"ALSBrightenPdeltaFast"))
      {
        v99 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v241 + 3812);
        v68 = v240;
        v240[14] = v99;
        if (v68[14])
        {
          CFDictionarySetValue(*(v241 + 48), @"ALSBrightenPdeltaFast", v240[14]);
          CFRelease(v240[14]);
          v98 = CFDictionaryGetValue(*(v241 + 48), @"ALSBrightenPdeltaFast");
          v240[14] = v98;
        }
      }

      else if (CFEqual(v240[20], @"ALSDimPdeltaSlow"))
      {
        v96 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, v241 + 3804);
        v69 = v240;
        v240[14] = v96;
        if (v69[14])
        {
          CFDictionarySetValue(*(v241 + 48), @"ALSDimPdeltaSlow", v240[14]);
          CFRelease(v240[14]);
          v95 = CFDictionaryGetValue(*(v241 + 48), @"ALSDimPdeltaSlow");
          v240[14] = v95;
        }
      }

      else if (CFEqual(v240[20], @"Aggressivity"))
      {
        v93 = objc_alloc(MEMORY[0x1E696AD98]);
        v92 = [v93 initWithInt:PerceptualLuminanceThresholding::GetAggressivity(*(v241 + 479))];
        v240[14] = v92;
      }

      else if (CFEqual(v240[20], @"ProxMitigationTriggered"))
      {
        if (*(v241 + 59) && (*(v241 + 3757) & 1) != 0 && *(v241 + 942))
        {
          v90 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v90 = *MEMORY[0x1E695E4C0];
        }

        v240[14] = v90;
      }

      else if (CFEqual(v240[20], @"TouchMitigationTriggered"))
      {
        if (*(v241 + 56) && (isTouchObstructed = AABC::ALS::isTouchObstructed(*(v241 + 56)), (isTouchObstructed & 1) != 0))
        {
          v87 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v87 = *MEMORY[0x1E695E4C0];
        }

        v240[14] = v87;
      }

      else if (CFEqual(v240[20], @"BrightnessCapabilities"))
      {
        v85 = CFDictionaryGetValue(*(v241 + 48), @"BrightnessCapabilities");
        v240[14] = v85;
      }

      else if (CFEqual(v240[20], @"ALSIntegrationMode"))
      {
        v83 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v241 + 668);
        v70 = v240;
        v240[14] = v83;
        if (v70[14])
        {
          CFDictionarySetValue(*(v241 + 48), @"ALSIntegrationMode", v240[14]);
          CFRelease(v240[14]);
          v82 = CFDictionaryGetValue(*(v241 + 48), @"ALSIntegrationMode");
          v240[14] = v82;
        }
      }

      else
      {
        v81 = CFDictionaryGetValue(*(v241 + 47), v240[20]);
        v240[14] = v81;
      }
    }
  }

  if (_logHandle)
  {
    v80 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v79 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v78 = init_default_corebrightness_log();
      v79 = v78;
    }

    v80 = v79;
  }

  oslog = v80;
  v242 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    v75 = oslog;
    *v76 = v242;
    v71 = v240[20];
    v72 = v240[14];
    v77 = v270;
    __os_log_helper_16_2_3_4_0_8_64_8_64(v270, 2, v71, v72);
    _os_log_debug_impl(&dword_1DE8E5000, v75, v76[0], "[%x]: %@ result=%@", v77, 0x1Cu);
  }

  v74 = v240[14];
  *MEMORY[0x1E69E9840];
  return v74;
}

__IOHIDEvent *AABC::filter(AABC *this, __IOHIDServiceClient *a2, __IOHIDEvent *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_logHandle)
  {
    v6 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v6 = inited;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_4_0(v10, 4, *(this + 92));
    _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "[%x]: _plugInEnabled=%x", v10, 0xEu);
  }

  if (*(this + 92))
  {
    Type = IOHIDEventGetType();
    if (Type != 2)
    {
      switch(Type)
      {
        case 3:
          AABC::HandleKeyboardEvent(this, a2, a3);
          break;
        case 11:
          if (*(this + 58) && a2 == *(this + 58))
          {
            AABC::HandleDigitizerEvent(this, a2, a3);
          }

          break;
        case 12:
          if (*(this + 52) && a2 && CFDictionaryContainsKey(*(this + 52), a2))
          {
            AABC::HandleALSEvent(this, a2, a3);
          }

          break;
        default:
          if (Type == 14 && *(this + 59) && a2 == *(this + 59))
          {
            AABC::HandleProxEvent(this, a2, a3);
          }

          break;
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return a3;
}

void AABC::HandleALSEvent(AABC *this, __IOHIDServiceClient *a2, __IOHIDEvent *a3)
{
  v428 = *MEMORY[0x1E69E9840];
  v405 = this;
  v404 = a2;
  v403 = a3;
  v292 = this;
  if (_logHandle)
  {
    v291 = _logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v290 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
      v290 = inited;
    }

    v291 = v290;
  }

  v402 = v291;
  v401 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v291, OS_LOG_TYPE_DEBUG))
  {
    v286 = v402;
    v287 = v401;
    v288 = v427;
    __os_log_helper_16_0_3_4_0_8_0_8_0(v427, 4, v404, v403);
    _os_log_debug_impl(&dword_1DE8E5000, v402, v401, "[%x]: %p %p", v427, 0x1Cu);
  }

  v400 = 0;
  v398 = 0.0;
  v397 = 0;
  TimeStamp = IOHIDEventGetTimeStamp();
  v3 = TimeStamp * *&AABC::_sMachTimebaseFactor;
  v399 = v3;
  v396 = 0.0;
  if (*(v292 + 168) < v3 || *(v292 + 90))
  {
    if (v292[496] & 1) != 0 && (v292[497])
    {
      if (_logHandle)
      {
        v278 = _logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v277 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v276 = init_default_corebrightness_log();
          v277 = v276;
        }

        v278 = v277;
      }

      v393 = v278;
      v392 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
      {
        v273 = v393;
        v274 = v392;
        v275 = v425;
        __os_log_helper_16_0_1_4_0(v425, 4);
        _os_log_debug_impl(&dword_1DE8E5000, v393, v392, "[%x]: throwing away sample, preStrobe is in progress", v425, 8u);
      }
    }

    else
    {
      v272 = +[CBAODState sharedInstance];
      v271 = [(CBAODState *)v272 AODState];
      if (AABC::ignoreALSEventsInAOD(v292, v271))
      {
        if (_logHandle)
        {
          v270 = _logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v269 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v268 = init_default_corebrightness_log();
            v269 = v268;
          }

          v270 = v269;
        }

        v391 = v270;
        v390 = 0;
        if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
        {
          v265 = v391;
          v266 = v390;
          v267 = v389;
          __os_log_helper_16_0_0(v389);
          _os_log_impl(&dword_1DE8E5000, v265, v266, "Ongoing AOD transition IN/OUT -> Ignoring ALS Events!!", v389, 2u);
        }
      }

      else if (*(v292 + 719) != 1 && *(v292 + 719) != 2 && *(v292 + 719) != 3)
      {
        Value = CFDictionaryGetValue(*(v292 + 52), v404);
        v400 = Value;
        if (Value[4])
        {
          v263 = [CBALSEvent alloc];
          v262 = [(CBALSEvent *)v263 initWithHIDEvent:v403 andNode:v400[5]];
          v388 = v262;
          [v400[4] filterEvent:v262];
        }

        isStrobePolluted = AABC::ALS::isStrobePolluted(v400);
        if (isStrobePolluted)
        {
          if (_logHandle)
          {
            v260 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v259 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v258 = init_default_corebrightness_log();
              v259 = v258;
            }

            v260 = v259;
          }

          v387 = v260;
          v386 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
          {
            v255 = v387;
            v256 = v386;
            v257 = v424;
            __os_log_helper_16_0_1_4_0(v424, 4);
            _os_log_debug_impl(&dword_1DE8E5000, v387, v386, "[%x]: Rear ALS in Strobe coex state -> Ignoring ALS Events", v424, 8u);
          }
        }

        else
        {
          if ((v292[436] & 1) == 0)
          {
            v4 = v292;
            v292[436] = 1;
            if (*(v4 + 56))
            {
              if (*(*(v292 + 56) + 8) == 8 || *(*(v292 + 56) + 8) == 9)
              {
                if (_logHandle)
                {
                  v254 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v253 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v252 = init_default_corebrightness_log();
                    v253 = v252;
                  }

                  v254 = v253;
                }

                v385 = v254;
                v384 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
                {
                  v249 = v385;
                  v250 = v384;
                  *&v5 = *(v292 + 854);
                  v251 = v423;
                  __os_log_helper_16_0_2_8_0_8_0(v423, v5, 0x3FE0000000000000);
                  _os_log_impl(&dword_1DE8E5000, v385, v384, "AABC has received the first ALS sample since the initialization. ALS TIMEOUT will change: %fms -> %fms.", v423, 0x16u);
                }

                *(v292 + 854) = 1056964608;
              }
            }
          }

          if ((v292[435] & 1) == 0)
          {
            v248 = mach_absolute_time();
            v383 = v248 * *&AABC::_sMachTimebaseFactor;
            v247 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v383);
            v382 = v247;
            if (v247)
            {
              if (*(v292 + 47))
              {
                CFDictionarySetValue(*(v292 + 47), @"EventTimestampFirstALSSample", v382);
              }

              if (_logHandle)
              {
                v246 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v245 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v244 = init_default_corebrightness_log();
                  v245 = v244;
                }

                v246 = v245;
              }

              v381 = v246;
              v380 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
              {
                v241 = v381;
                v242 = v380;
                v243 = v422;
                __os_log_helper_16_0_1_8_0(v422, *&v383);
                _os_log_impl(&dword_1DE8E5000, v381, v380, "ts=%f kCBEventTimestampFirstALSSampleKey", v422, 0xCu);
              }

              CFRelease(v382);
            }
          }

          v6 = v292;
          v292[435] = 1;
          if (*(v6 + 110) == 1)
          {
            v292[432] = 1;
          }

          if ((v292[432] & 1) == 0 && *(v292 + 53))
          {
            CFDictionarySetValue(*(v292 + 53), v404, v403);
            Count = CFDictionaryGetCount(*(v292 + 53));
            v379 = Count;
            v238 = Count;
            v239 = CFDictionaryGetCount(*(v292 + 52));
            if (Count == v239)
            {
              v292[432] = 1;
            }

            v378 = &v55;
            v230 = 8 * v379;
            MEMORY[0x1EEE9AC00]();
            v236 = (&v55 - ((v230 + 15) & 0xFFFFFFFF0));
            v231 = v236;
            v377 = v7;
            v232 = 512;
            if (v230 <= 0x200)
            {
              v8 = v230;
            }

            else
            {
              v8 = 512;
            }

            bzero(&v55 - ((v230 + 15) & 0xFFFFFFFF0), v8);
            v233 = v379;
            v234 = 8 * v379;
            MEMORY[0x1EEE9AC00]();
            v237 = (&v55 - ((v234 + 15) & 0xFFFFFFFF0));
            v235 = v237;
            v376 = v233;
            if (v234 <= 0x200)
            {
              v10 = v234;
            }

            else
            {
              v10 = v9;
            }

            bzero(&v55 - ((v234 + 15) & 0xFFFFFFFF0), v10);
            CFDictionaryGetKeysAndValues(*(v292 + 53), v236, v237);
            v375 = -1;
            v374 = -1.0;
            for (i = 0; i < v379; ++i)
            {
              if (v235[i])
              {
                v11 = v235[i];
                if (v292[3756])
                {
                  IOHIDEventGetDoubleValue();
                  v229 = v12;
                  v228 = v12;
                }

                else
                {
                  IntegerValue = IOHIDEventGetIntegerValue();
                  v228 = IntegerValue;
                }

                v372 = v228;
                v13 = v228;
                v371 = v13;
                if (v13 > v374)
                {
                  v374 = v371;
                  v375 = i;
                }
              }
            }

            if ((v375 & 0x80000000) == 0)
            {
              v403 = v235[v375];
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], 0);
              v397 = Mutable;
              v225 = CFDictionaryGetValue(*(v292 + 52), v231[v375]);
              v370 = v225;
              if (v397)
              {
                if (v370)
                {
                  CFDictionaryAddValue(v397, v231[v375], v370);
                }
              }
            }
          }

          if (v292[432])
          {
            v292[433] = 0;
          }

          if (v292[437])
          {
            AABC::lazyLoadIntegrationTimes(v292, v404, v400);
          }

          v396 = *(v400 + 40);
          if (v292[3756])
          {
            IOHIDEventGetDoubleValue();
            v224 = v14;
            v223 = v14;
          }

          else
          {
            v222 = IOHIDEventGetIntegerValue();
            v223 = v222;
          }

          v369 = v223;
          if (*(v400 + 76))
          {
            v221 = *(v400 + 18);
          }

          else
          {
            v15 = v369;
            v221 = v15;
          }

          v398 = v221;
          if (_logHandle)
          {
            v220 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v219 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v218 = init_default_corebrightness_log();
              v219 = v218;
            }

            v220 = v219;
          }

          v368 = v220;
          v367 = 2;
          if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
          {
            v215 = v368;
            v216 = v367;
            if (*(v400 + 76))
            {
              v16 = "(override)";
            }

            else
            {
              v16 = "";
            }

            v217 = v421;
            __os_log_helper_16_2_3_4_0_8_0_8_32(v421, 16, COERCE__INT64(v398), v16);
            _os_log_debug_impl(&dword_1DE8E5000, v215, v216, "[%x]: %0.4f %s", v217, 0x1Cu);
          }

          if (v292[432] & 1) != 0 || (v292[434] & 1) != 0 || (v292[433])
          {
            AABC::CancelFirstSampleTimeout(v292);
          }

          *(v400 + 17) = v398;
          if (_logHandle)
          {
            v214 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v213 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v212 = init_default_corebrightness_log();
              v213 = v212;
            }

            v214 = v213;
          }

          v366 = v214;
          v365 = 2;
          if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
          {
            v209 = v366;
            v210 = v365;
            *&v17 = *(v400 + 17);
            v211 = v420;
            __os_log_helper_16_0_2_4_0_8_0(v420, 16, v17);
            _os_log_debug_impl(&dword_1DE8E5000, v209, v210, "[%x]: als->_Esensor_device=%0.4f", v211, 0x12u);
          }

          v364 = 0.0;
          if (*(v292 + 59) && *(v292 + 942) == 2 && (v399 - *(v292 + 941)) > *(v292 + 940))
          {
            if (_logHandle)
            {
              v208 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v207 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v206 = init_default_corebrightness_log();
                v207 = v206;
              }

              v208 = v207;
            }

            v363 = v208;
            v362 = 2;
            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
            {
              v203 = v363;
              v204 = v362;
              v18 = *(v292 + 941);
              *&v19 = *(v292 + 940);
              v205 = v419;
              __os_log_helper_16_0_5_4_0_8_0_8_0_8_0_8_0(v419, 64, COERCE__INT64(v399), COERCE__INT64(v18), COERCE__INT64((v399 - v18)), v19);
              _os_log_debug_impl(&dword_1DE8E5000, v203, v204, "[%x]: setting _proxState = kProxNone (timestamp=%f _proxReleaseTime=%f delta=%f _proxTriggerDelay=%f)", v205, 0x30u);
            }

            v20 = v292;
            *(v292 + 942) = 0;
            if (v20[3757])
            {
              v21 = v292;
              v292[3992] = 1;
              VirtualBrightness = DisplayGetVirtualBrightness(v21[50]);
              *(v292 + 154) = VirtualBrightness;
            }
          }

          if (v400[3])
          {
            v201 = [CBALSEvent alloc];
            v200 = [(CBALSEvent *)v201 initWithHIDEvent:v403 andNode:v400[5]];
            v361 = v200;
            v360 = v400[3];
            v199 = [v360 isObstructed];
            v359 = v199 & 1;
            [v360 filterEvent:v361];
            v198 = [v360 isActive];
            if (v198)
            {
              v197 = [v360 isObstructed];
              if (v197 & 1) == 0 && (v359)
              {
                v22 = v292;
                v292[3992] = 1;
                if (v400 == v22[56])
                {
                  v196 = DisplayGetVirtualBrightness(*(v292 + 50));
                  *(v292 + 154) = v196;
                }
              }
            }
          }

          v358 = v398;
          Current = CFAbsoluteTimeGetCurrent();
          v357 = Current;
          if (*(v292 + 169) && v357 > *(v292 + 86))
          {
            AABC::CancelFastRampMode(v292);
            v292[3328] = 1;
          }

          v358 = fmaxf(v358, *(v400 + 15));
          if (v292[3376] & 1) != 0 && *(v292 + 834) && *(v292 + 834) < *(v292 + 845) && !*(v292 + 842) && v357 > *&v292[8 * (*(v292 + 834) - 1) + 3344] + *(v292 + 425) && (v292[3408])
          {
            AABC::writeOutlierRemovalPreferences(v292, 1);
            *(v292 + 834) = *(v292 + 845);
          }

          if (v292[432] & 1) != 0 || (v292[434] & 1) != 0 || (v292[433])
          {
            ++*(v292 + 150);
          }

          if (_logHandle)
          {
            v194 = _logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v193 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v192 = init_default_corebrightness_log();
              v193 = v192;
            }

            v194 = v193;
          }

          v356 = v194;
          v355 = 2;
          if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
          {
            v189 = v356;
            v190 = v355;
            v23 = *(v292 + 866);
            v24 = *(v400 + 22);
            v191 = v418;
            __os_log_helper_16_0_3_4_0_4_0_4_0(v418, 2, v23, v24);
            _os_log_debug_impl(&dword_1DE8E5000, v189, v190, "[%x]: _luxFilter=%x als->_Ehistory_max=%d", v191, 0x14u);
          }

          if (*(v292 + 866))
          {
            v354 = 0;
            if (*(v400 + 40) <= 0.01)
            {
              v354 = 1;
            }

            else
            {
              v354 = std::__math::round[abi:de200100](v396 / *(v400 + 40));
              if (v354 < 1)
              {
                v188 = 1;
              }

              else
              {
                v188 = v354;
              }

              v354 = v188;
            }

            if (v292[264])
            {
              v187 = AABC::calculateMovingAverage(v292, v358);
              v358 = v187;
            }

            for (j = 0; j < v354; ++j)
            {
              if (*(v400 + 22))
              {
                v186 = v358;
                v25 = std::vector<float>::operator[][abi:de200100](v400 + 12, *(v400 + 20));
                *v25 = v186;
                *(v400 + 20) = (*(v400 + 20) + 1) % *(v400 + 22);
                if (*(v400 + 21) < *(v400 + 22))
                {
                  ++*(v400 + 21);
                }
              }
            }

            if ((v292[136] & 1) != 0 && *(v292 + 722) == 1)
            {
              if (!*(v400 + 32))
              {
                *(v400 + 32) = 5;
                std::vector<float>::resize(v400 + 17, *(v400 + 32));
              }

              v185 = v358;
              v26 = std::vector<float>::operator[][abi:de200100](v400 + 17, *(v400 + 30));
              *v26 = v185;
              *(v400 + 30) = (*(v400 + 30) + 1) % *(v400 + 32);
              if (*(v400 + 31) < *(v400 + 32))
              {
                ++*(v400 + 31);
              }
            }

            if (v292[160])
            {
              AABC::addToFilter(v292, (v292 + 168), v358);
            }
          }

          if (*(v292 + 866) == 3)
          {
            v352 = v358;
            if (std::vector<float>::size[abi:de200100](v400 + 12))
            {
              if (*(v400 + 21) >= 2u)
              {
                std::vector<float>::vector[abi:de200100](v351, v400 + 12);
                v184 = v351;
                v350 = std::vector<float>::begin[abi:de200100](v351);
                v349 = std::vector<float>::end[abi:de200100](v184);
                std::sort[abi:de200100]<std::__wrap_iter<float *>>(v350, v349);
                if (std::vector<float>::size[abi:de200100](v400 + 12) == 2)
                {
                  v352 = *std::vector<float>::operator[][abi:de200100](v351, 0);
                  if (_logHandle)
                  {
                    v183 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v182 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v181 = init_default_corebrightness_log();
                      v182 = v181;
                    }

                    v183 = v182;
                  }

                  v348 = v183;
                  v347 = 2;
                  if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
                  {
                    v178 = v348;
                    v179 = v347;
                    v180 = v346;
                    __os_log_helper_16_0_0(v346);
                    _os_log_debug_impl(&dword_1DE8E5000, v178, v179, "Median filter computed on 2 samples - defaulting to minimum", v180, 2u);
                  }
                }

                else
                {
                  v177 = v351;
                  v27 = std::vector<float>::size[abi:de200100](v351);
                  v352 = *std::vector<float>::operator[][abi:de200100](v177, v27 - ((*(v400 + 21) + 1) >> 1));
                  if (_logHandle)
                  {
                    v176 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v175 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v174 = init_default_corebrightness_log();
                      v175 = v174;
                    }

                    v176 = v175;
                  }

                  v345 = v176;
                  v344 = 2;
                  if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
                  {
                    v171 = v345;
                    v172 = v344;
                    v28 = *(v400 + 21);
                    v173 = v417;
                    __os_log_helper_16_0_2_4_0_4_0(v417, 16, v28);
                    _os_log_debug_impl(&dword_1DE8E5000, v171, v172, "[%x]: Median filter computed on %d samples", v173, 0xEu);
                  }

                  if (_logHandle)
                  {
                    v170 = _logHandle;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v169 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v168 = init_default_corebrightness_log();
                      v169 = v168;
                    }

                    v170 = v169;
                  }

                  v343 = v170;
                  v342 = 2;
                  if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
                  {
                    v165 = v343;
                    v166 = v342;
                    v29 = *(v400 + 21);
                    v167 = v416;
                    __os_log_helper_16_0_1_4_0(v416, v29);
                    _os_log_debug_impl(&dword_1DE8E5000, v165, v166, "Median filter computed on %d samples", v167, 8u);
                  }
                }

                std::vector<float>::~vector[abi:de200100](v351);
              }

              if (*(v292 + 169) && (v292[3468] & 1) == 0)
              {
                *(v400 + 41) = v352;
              }

              else
              {
                *(v400 + 41) = v352;
              }
            }

            else
            {
              *(v400 + 41) = v358;
            }

            if (_logHandle)
            {
              v164 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v163 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v162 = init_default_corebrightness_log();
                v163 = v162;
              }

              v164 = v163;
            }

            v341 = v164;
            v340 = 2;
            if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
            {
              v159 = v341;
              v160 = v340;
              v161 = v415;
              __os_log_helper_16_0_4_4_0_8_0_8_0_8_0(v415, 16, COERCE__INT64(v399), COERCE__INT64(v358), COERCE__INT64(v352));
              _os_log_debug_impl(&dword_1DE8E5000, v159, v160, "[%x]: ts=%f Esensor=%f Emedian=%f", v161, 0x26u);
            }

            if (v292[160])
            {
              v158 = AABC::calculate95thPercentile(v292, (v292 + 168));
              v30 = v158 * 1.25;
              *(v400 + 41) = v30;
              if (_logHandle)
              {
                v157 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v156 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v155 = init_default_corebrightness_log();
                  v156 = v155;
                }

                v157 = v156;
              }

              v339 = v157;
              v338 = 0;
              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
              {
                v152 = v339;
                v153 = v338;
                *&v31 = *(v400 + 41);
                v154 = v414;
                __os_log_helper_16_0_1_8_0(v414, v31);
                _os_log_impl(&dword_1DE8E5000, v152, v153, "Scaled 95th percentile lux value: %f, scale factor:1.25", v154, 0xCu);
              }
            }

            if (v292[161])
            {
              AABC::addToFilter(v292, (v292 + 216), *(v400 + 41));
              v337 = *(v400 + 41);
              v151 = AABC::calculate95thPercentile(v292, (v292 + 216));
              v336 = v151;
              v335 = v292[162] & 1;
              if (v151 >= 100.0)
              {
                v34 = v292;
                *(v400 + 41) = fmaxf(*(v400 + 41), 100.0);
                v34[162] = v337 < 100.0;
              }

              else
              {
                *(v400 + 41) = v336;
                if (_logHandle)
                {
                  v150 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v149 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v148 = init_default_corebrightness_log();
                    v149 = v148;
                  }

                  v150 = v149;
                }

                v334 = v150;
                v333 = 2;
                if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
                {
                  v145 = v334;
                  v146 = v333;
                  *&v32 = *(v400 + 41);
                  v147 = v413;
                  __os_log_helper_16_0_1_8_0(v413, v32);
                  _os_log_debug_impl(&dword_1DE8E5000, v145, v146, "Aliasing Mitigation: using 95th percentile lux value: %f", v147, 0xCu);
                }

                v33 = v292;
                v292[162] = 1;
                if (v33[135] == 100.0)
                {
                  ++*(v292 + 938);
                }
              }

              if (*(v292 + 43) && (v292[162] & 1) != (v335 & 1))
              {
                if (v292[162])
                {
                  v144 = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  v144 = *MEMORY[0x1E695E4C0];
                }

                v332 = v144;
                (*(v292 + 43))(*(v292 + 44), @"AliasingMitigationActive", v144);
              }
            }
          }

          else if (*(v292 + 866) == 2)
          {
            v331 = v358;
            if (std::vector<float>::size[abi:de200100](v400 + 17) && *(v400 + 31) >= 2u)
            {
              std::vector<float>::vector[abi:de200100](v330, v400 + 17);
              v143 = v330;
              v329 = std::vector<float>::begin[abi:de200100](v330);
              v328 = std::vector<float>::end[abi:de200100](v143);
              std::sort[abi:de200100]<std::__wrap_iter<float *>>(v329, v328);
              v142 = v330;
              v35 = std::vector<float>::size[abi:de200100](v330);
              v331 = *std::vector<float>::operator[][abi:de200100](v142, v35 - ((*(v400 + 31) + 1) >> 1));
              if (_logHandle)
              {
                v141 = _logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v140 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v139 = init_default_corebrightness_log();
                  v140 = v139;
                }

                v141 = v140;
              }

              v327 = v141;
              v326 = 2;
              if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
              {
                v136 = v327;
                v137 = v326;
                v36 = *(v400 + 31);
                v138 = v412;
                __os_log_helper_16_2_3_4_0_8_32_4_0(v412, 16, "HandleALSEvent", v36);
                _os_log_debug_impl(&dword_1DE8E5000, v136, v137, "[%x]: %s: Accessory filter computed on %d samples", v138, 0x18u);
              }

              std::vector<float>::~vector[abi:de200100](v330);
            }

            if (*(v400 + 33) <= -1.0)
            {
              v135 = 0.0;
            }

            else
            {
              v135 = vabds_f32(*(v400 + 33), v358);
            }

            v325 = v135;
            if (v331 <= 0.0)
            {
              v134 = 2.0;
            }

            else
            {
              v134 = vabds_f32(v331, v358) / v331;
            }

            v324 = v134;
            if (*(v400 + 33) == -1.0)
            {
              *(v400 + 41) = v358;
              *(v400 + 33) = v358;
            }

            else if (v324 < 1.0 && v325 > *(v292 + 35) || v358 == 0.0)
            {
              *(v400 + 41) = v358;
              *(v400 + 33) = v358;
            }

            else
            {
              *(v400 + 41) = *(v400 + 33);
            }
          }

          else
          {
            if (_logHandle)
            {
              v133 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v132 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v131 = init_default_corebrightness_log();
                v132 = v131;
              }

              v133 = v132;
            }

            v323 = v133;
            v322 = 2;
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
            {
              v128 = v323;
              v129 = v322;
              v130 = v411;
              __os_log_helper_16_0_3_4_0_8_0_8_0(v411, 16, COERCE__INT64(v399), COERCE__INT64(v358));
              _os_log_debug_impl(&dword_1DE8E5000, v128, v129, "[%x]: ts=%f Esensor=%f", v130, 0x1Cu);
            }

            *(v400 + 41) = v358;
          }

          if (v292[432] & 1) != 0 || (v292[434] & 1) != 0 || (v292[433])
          {
            v37 = v292;
            *(v292 + 132) = 0;
            *(v37 + 133) = 0;
            if (v397)
            {
              CFDictionaryApplyFunction(v397, AABC::UpdateAggregateFunction, v292);
            }

            else
            {
              CFDictionaryApplyFunction(*(v292 + 52), AABC::UpdateAggregateFunction, v292);
            }

            AABC::_ReportEsensorAggregated(v292);
            v125 = *(v292 + 135);
            v38 = *(v292 + 150);
            v39 = -1.0;
            if (v38 <= 1)
            {
              v39 = 0.1;
            }

            v40 = v39;
            v126 = v40;
            v127 = 1;
            if (v38 >= 2)
            {
              v127 = v292[3992];
            }

            AABC::_UpdateNitsRestrictions(v292, v125, v126, v127 & 1);
            v123 = *(v292 + 468);
            v41 = *(v292 + 59);
            v124 = 0;
            if (v41)
            {
              v124 = *(v292 + 942) != 0;
            }

            v121 = v124;
            v42 = *(*(v292 + 56) + 24);
            v122 = 0;
            if (v42)
            {
              v120 = [*(*(v292 + 56) + 24) isObstructedIgnoreActive];
              v122 = v120;
            }

            [v123 recordOcclusionByProx:v121 andByTouch:v122 & 1];
            if (_logHandle)
            {
              v119 = _logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v118 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v117 = init_default_corebrightness_log();
                v118 = v117;
              }

              v119 = v118;
            }

            v321 = v119;
            v320 = 2;
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
            {
              v110 = v321;
              v111 = v320;
              v112 = &v410;
              *&v113 = *(v292 + 135);
              v114 = (&kAABStateStr)[*(v292 + 90)];
              v115 = (&kProxStateStr)[*(v292 + 942)];
              isTouchObstructed = AABC::ALS::isTouchObstructed(*(v292 + 56));
              __os_log_helper_16_2_8_4_0_8_0_8_32_8_32_4_0_8_32_4_0_8_32(v112, 16, v113, v114, v115, isTouchObstructed & 1, (&kDimPolicyStr)[*(v292 + 861)], *(v292 + 861), (&kOrientationString)[*(v292 + 176)]);
              _os_log_debug_impl(&dword_1DE8E5000, v110, v111, "[%x]: _Esensor_trusted=%f _state=%s _proxState=%s _touchIsObstucted=%d _settings._internal._dimPolicy=%s %d _orientation=%s", v112, 0x46u);
            }

            if (*(v292 + 121) == 0.0 || *(v292 + 121) == 1.0)
            {
              v109 = *(v292 + 90);
              if (v109 >= 2 && v109 - 2 < 2)
              {
                v319 = 0.0;
                v318 = 0.0;
                if (*(v292 + 128))
                {
                  LogicalBrightness = DisplayGetLogicalBrightness(*(v292 + 50));
                  v319 = LogicalBrightness;
                  if (v292[3425])
                  {
                    v107 = AABC::IlluminanceToLuminance(v292, v292 + 804, *(v292 + 135), *(v292 + 138));
                    v317 = v107;
                    if (v43 || (v292[3426] & 1) == 0)
                    {
                      v319 = fminf(*(v292 + 857), v317);
                    }
                  }

                  v106 = AABC::IlluminanceToLuminance(v292, v292 + 264, *(v292 + 135), *(v292 + 138));
                  v318 = v106;
                }

                else
                {
                  v105 = AABC::IlluminanceToLuminance(v292, v292 + 264, *(v292 + 135), *(v292 + 138));
                  v319 = v105;
                  if (v292[3425])
                  {
                    v104 = AABC::IlluminanceToLuminance(v292, v292 + 804, *(v292 + 135), *(v292 + 138));
                    v316 = v104;
                    v319 = fminf(v319, v104);
                    if (v43 || (v292[3426] & 1) == 0)
                    {
                      v319 = fminf(*(v292 + 857), v316);
                    }
                  }
                }

                v319 = fmaxf(v319, *(v292 + 180));
                v319 = fminf(v319, *(v292 + 182));
                if (*(v292 + 128))
                {
                  v318 = fmaxf(v318, *(v292 + 180));
                  v318 = fminf(v318, *(v292 + 182));
                  DisplaySetABBrightnessForPowerReport(*(v292 + 50), 1, v318);
                }

                else
                {
                  DisplaySetABBrightnessForPowerReport(*(v292 + 50), 0, v319);
                }

                v364 = AABC::IlluminanceToReflectivity(v292, *(v292 + 138));
                if (_logHandle)
                {
                  v103 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v102 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v101 = init_default_corebrightness_log();
                    v102 = v101;
                  }

                  v103 = v102;
                }

                v315 = v103;
                v314 = 2;
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                {
                  v98 = v315;
                  v99 = v314;
                  v44 = *v400;
                  v45 = *(v400 + 1);
                  *&v46 = *(v400 + 41);
                  *&v47 = *(v292 + 135);
                  v100 = v409;
                  __os_log_helper_16_0_7_4_0_4_0_8_0_8_0_8_0_8_0_8_0(v409, v44, v45, COERCE__INT64(v398), v46, v47, COERCE__INT64(v319), COERCE__INT64(v364));
                  _os_log_debug_impl(&dword_1DE8E5000, v98, v99, "[%02x/%02x] Esensor_device: %0.2f als->_Esensor_filtered: %0.2f _Esensor_trusted: %0.2f  L: %0.4f L_reflected: %0.4f", v100, 0x40u);
                }

                v97 = [*(v292 + 467) E];
                [v97 pushNumberWeighted:v398 withWeight:*(v292 + 158)];
                [*(v292 + 464) recordTime];
                v313 = 2;
                v96 = AABC::ALS::isTouchObstructed(*(v292 + 56));
                if (v96)
                {
                  v313 = *(v292 + 59) == 0;
                }

                v95 = *(v292 + 861);
                if (v95)
                {
                  if (v95 == 1)
                  {
                    v313 = 1;
                    if (*(v292 + 58))
                    {
                      v94 = IOHIDServiceClientCopyProperty(*(v292 + 58), @"GraphicsOrientation");
                      v312 = v94;
                      if (v94)
                      {
                        v311 = 0;
                        v93 = CFGetTypeID(v312);
                        TypeID = CFNumberGetTypeID();
                        if (v93 == TypeID)
                        {
                          CFNumberGetValue(v312, kCFNumberIntType, &v311);
                        }

                        CFRelease(v312);
                        if (v311 != *(v292 + 139) && v311 == 1)
                        {
                          *(v292 + 946) = 0;
                        }

                        *(v292 + 139) = v311;
                        if (v311 == 1 && *(v292 + 946) < *(v292 + 947))
                        {
                          v48 = v292;
                          ++*(v292 + 946);
                          if (*(v48 + 946) == *(v48 + 947))
                          {
                            v49 = v292;
                            *(v292 + 943) = 0;
                            *(v49 + 944) = 0;
                            *(v49 + 151) = 0;
                            if (_logHandle)
                            {
                              v91 = _logHandle;
                            }

                            else
                            {
                              if (_COREBRIGHTNESS_LOG_DEFAULT)
                              {
                                v90 = _COREBRIGHTNESS_LOG_DEFAULT;
                              }

                              else
                              {
                                v89 = init_default_corebrightness_log();
                                v90 = v89;
                              }

                              v91 = v90;
                            }

                            v310 = v91;
                            v309 = 2;
                            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
                            {
                              v86 = v310;
                              v87 = v309;
                              v50 = *(v292 + 947);
                              v88 = v408;
                              __os_log_helper_16_0_1_4_0(v408, v50);
                              _os_log_debug_impl(&dword_1DE8E5000, v86, v87, "Stayed in portrait mode for %d samples, resetting dimming", v88, 8u);
                            }
                          }
                        }
                      }
                    }
                  }

                  else if (v95 == 2)
                  {
                    if (*(v292 + 176) == 3 || *(v292 + 176) == 4)
                    {
                      v313 = 1;
                    }
                  }

                  else if (v95 != 3)
                  {
                    if (v95 == 4)
                    {
                      if (*(v292 + 950) >= 1)
                      {
                        v313 = 0;
                      }
                    }

                    else if (v95 == 5)
                    {
                      if (*(v292 + 950) >= 1)
                      {
                        v313 = 1;
                      }
                    }

                    else if ((v95 - 6) < 2)
                    {
                      v308 = 1;
                      if (*(v292 + 58))
                      {
                        v85 = IOHIDServiceClientCopyProperty(*(v292 + 58), @"GraphicsOrientation");
                        v307 = v85;
                        if (v85)
                        {
                          v306 = 0;
                          v84 = CFGetTypeID(v307);
                          v83 = CFNumberGetTypeID();
                          if (v84 == v83)
                          {
                            CFNumberGetValue(v307, kCFNumberIntType, &v306);
                          }

                          CFRelease(v307);
                          if (*(v292 + 861) == 7 && v306 == 1)
                          {
                            *(v292 + 152) = 0;
                            v308 = 0;
                          }

                          else if (v306 != *(v292 + 139))
                          {
                            if (_logHandle)
                            {
                              v82 = _logHandle;
                            }

                            else
                            {
                              if (_COREBRIGHTNESS_LOG_DEFAULT)
                              {
                                v81 = _COREBRIGHTNESS_LOG_DEFAULT;
                              }

                              else
                              {
                                v80 = init_default_corebrightness_log();
                                v81 = v80;
                              }

                              v82 = v81;
                            }

                            v305 = v82;
                            v304 = 1;
                            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                            {
                              v77 = v305;
                              v78 = v304;
                              v79 = v303;
                              __os_log_helper_16_0_0(v303);
                              _os_log_impl(&dword_1DE8E5000, v77, v78, "Orientation changed. Allowing dimming", v79, 2u);
                            }

                            v51 = v292;
                            *(v292 + 943) = 0;
                            v51[944] = 0;
                            v51[151] = 0;
                            v313 = 1;
                            v51[152] = 0;
                            v51[140] = 0;
                            v308 = 0;
                          }

                          *(v292 + 139) = v306;
                        }
                      }

                      if (v308)
                      {
                        v302 = 0;
                        IsProxEmulationTriggered = AABC::IsProxEmulationTriggered(v292, &v302);
                        if (IsProxEmulationTriggered && *(v292 + 154) < *(v292 + 155))
                        {
                          if (_logHandle)
                          {
                            v75 = _logHandle;
                          }

                          else
                          {
                            if (_COREBRIGHTNESS_LOG_DEFAULT)
                            {
                              v74 = _COREBRIGHTNESS_LOG_DEFAULT;
                            }

                            else
                            {
                              v73 = init_default_corebrightness_log();
                              v74 = v73;
                            }

                            v75 = v74;
                          }

                          v301 = v75;
                          v300 = 1;
                          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                          {
                            v70 = v301;
                            v71 = v300;
                            v72 = v299;
                            __os_log_helper_16_0_0(v299);
                            _os_log_impl(&dword_1DE8E5000, v70, v71, "Cancel ramp, ALS covered mitigation", v72, 2u);
                          }

                          AABC::CancelRamp(v292);
                        }

                        if (v302)
                        {
                          v313 = 1;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v313 = 0;
                }

                v298 = 0;
                if (_logHandle)
                {
                  v69 = _logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v68 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v67 = init_default_corebrightness_log();
                    v68 = v67;
                  }

                  v69 = v68;
                }

                v297 = v69;
                v296 = 2;
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                {
                  v64 = v297;
                  v65 = v296;
                  v52 = (&kDimRestrictionStr)[v313];
                  v66 = v407;
                  __os_log_helper_16_2_2_4_0_8_32(v407, 16, v52);
                  _os_log_debug_impl(&dword_1DE8E5000, v64, v65, "[%x]: dimRestriction=%s", v66, 0x12u);
                }

                DisplaySetCurrentAmbient(*(v292 + 50), *(v292 + 135));
                if (*(v292 + 122) > 0.0)
                {
                  if (*(v292 + 150) == 1)
                  {
                    if (_logHandle)
                    {
                      v63 = _logHandle;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v62 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v61 = init_default_corebrightness_log();
                        v62 = v61;
                      }

                      v63 = v62;
                    }

                    v295 = v63;
                    v294 = 2;
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                    {
                      v58 = v295;
                      v59 = v294;
                      v60 = v406;
                      __os_log_helper_16_0_1_8_0(v406, COERCE__INT64(v319));
                      _os_log_debug_impl(&dword_1DE8E5000, v58, v59, "Display on L=%0.4f", v60, 0xCu);
                    }

                    updated = AABC::UpdateDisplayBrightness_Block6(v292, 0, 2, 0, v319);
                    v298 = updated & 1;
                  }

                  else
                  {
                    v56 = AABC::UpdateDisplayBrightness_Block6(v292, 1, v313, 0, v319);
                    v298 = v56 & 1;
                  }

                  if (v298)
                  {
                    IOHIDEventSetIntegerValue();
                  }
                }
              }
            }

            if (*(v292 + 122) > 0.0 && *(v292 + 85) != v364 && std::__math::fabs[abi:de200100](1.0 - (v364 / *(v292 + 85))) > 0.1)
            {
              v293 = 0.0;
              if (v364 <= *(v292 + 85))
              {
                v293 = 45.0;
              }

              else
              {
                v293 = 3.0;
              }

              DisplaySetReflectedBrightnessWithFade(*(v292 + 50), 0, 0, v364, v293);
              *(v292 + 85) = v364;
            }

            if (*(v292 + 150) == 1 && *(v292 + 167) == 1)
            {
              if (*(v292 + 90) == 3)
              {
                v53 = v292;
                *(v292 + 158) = *(v400 + 14);
                *(v53 + 167) = 3;
              }

              else if (*(v292 + 90) == 2)
              {
                v54 = v292;
                *(v292 + 158) = *(v400 + 13);
                *(v54 + 167) = 2;
              }

              if (*(v292 + 160) && *(v292 + 158) < 0.05)
              {
                *(v292 + 158) = 1045220557;
              }

              AABC::UpdateALSState(v292, 17);
            }
          }

          if (v397)
          {
            CFRelease(v397);
          }
        }
      }
    }
  }

  else
  {
    if (_logHandle)
    {
      v284 = _logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v283 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v282 = init_default_corebrightness_log();
        v283 = v282;
      }

      v284 = v283;
    }

    v395 = v284;
    v394 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v284, OS_LOG_TYPE_DEBUG))
    {
      v279 = v395;
      v280 = v394;
      v281 = v426;
      __os_log_helper_16_0_1_4_0(v426, 4);
      _os_log_debug_impl(&dword_1DE8E5000, v395, v394, "[%x]: throwing away stale sample", v426, 8u);
    }
  }

  v43 = __OFSUB__(*MEMORY[0x1E69E9840], v428);
}