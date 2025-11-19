_DWORD *sched_new(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300408B42E80CuLL);
  *v6 = a1;
  v6[1] = a2;
  *(v6 + 1) = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  *(v6 + 3) = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  *(v6 + 2) = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  *(v6 + 4) = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  *(v6 + 5) = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  if (a2)
  {
    v7 = 0;
    v8 = *(v6 + 1);
    v9 = *(v6 + 3);
    if (a2 < 8)
    {
      goto LABEL_18;
    }

    if ((v9 - v8) <= 0x1F)
    {
      goto LABEL_18;
    }

    v7 = a2 & 0xFFFFFFF8;
    v10 = v8 + 1;
    v11 = xmmword_259B35120;
    v12 = v9 + 1;
    v13.i64[0] = 0x400000004;
    v13.i64[1] = 0x400000004;
    v14.i64[0] = 0x800000008;
    v14.i64[1] = 0x800000008;
    v15 = v7;
    do
    {
      v16 = vaddq_s32(v11, v13);
      v10[-1] = v11;
      *v10 = v16;
      v12[-1] = v11;
      *v12 = v16;
      v11 = vaddq_s32(v11, v14);
      v10 += 2;
      v12 += 2;
      v15 -= 8;
    }

    while (v15);
    if (v7 != a2)
    {
LABEL_18:
      do
      {
        v8->i32[v7] = v7;
        v9->i32[v7] = v7;
        ++v7;
      }

      while (a2 != v7);
    }
  }

  if (a1)
  {
    v17 = 0;
    v18 = *(v6 + 2);
    v19 = *(v6 + 4);
    if (a1 < 8)
    {
      goto LABEL_19;
    }

    if ((v19 - v18) <= 0x1F)
    {
      goto LABEL_19;
    }

    v17 = a1 & 0xFFFFFFF8;
    v20 = v18 + 1;
    v21 = xmmword_259B35120;
    v22 = v19 + 1;
    v23.i64[0] = 0x400000004;
    v23.i64[1] = 0x400000004;
    v24.i64[0] = 0x800000008;
    v24.i64[1] = 0x800000008;
    v25 = v17;
    do
    {
      v26 = vaddq_s32(v21, v23);
      v20[-1] = v21;
      *v20 = v26;
      v22[-1] = v21;
      *v22 = v26;
      v21 = vaddq_s32(v21, v24);
      v20 += 2;
      v22 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v17 != a1)
    {
LABEL_19:
      do
      {
        v18->i32[v17] = v17;
        v19->i32[v17] = v17;
        ++v17;
      }

      while (a1 != v17);
    }
  }

  *(v6 + 7) = a3;
  *(v6 + 8) = 0;
  *(v6 + 6) = 0;
  *(v6 + 8) = malloc_type_realloc(0, 12 * a3, 0x10000408195852FuLL);
  return v6;
}

void sched_free(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      free(v5);
    }

    v6 = *(a1 + 5);
    if (v6)
    {
      free(v6);
    }

    if (*(a1 + 7))
    {
      free(*(a1 + 8));
    }

    free(a1);
  }
}

char *sched_push(uint64_t a1, int a2, int a3, char a4)
{
  v8 = *(a1 + 48);
  if (v8 == *(a1 + 56))
  {
    v9 = 2 * v8;
    v10 = v8 == 0;
    v11 = 2;
    if (!v10)
    {
      v11 = v9;
    }

    *(a1 + 56) = v11;
    result = malloc_type_realloc(*(a1 + 64), 12 * v11, 0x10000408195852FuLL);
    *(a1 + 64) = result;
    v8 = *(a1 + 48);
  }

  else
  {
    result = *(a1 + 64);
  }

  *(a1 + 48) = v8 + 1;
  v13 = &result[12 * v8];
  *v13 = a4;
  *(v13 + 1) = 0;
  v13[3] = 0;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return [v0 state];
}

uint64_t gen_tuple@<X0>(int a1@<W0>, unsigned __int16 *a2@<X1>, unsigned int *a3@<X8>)
{
  v6 = a2[9];
  v7 = 997 * v6 + 53591;
  if ((v7 & 1) == 0)
  {
    v7 = 997 * v6 + 53592;
  }

  v8 = v7 * a1 + 10267 * v6;
  v9 = rnd_get(v8 + 10267, 0, 0x100000u);
  v10 = a2[3];
  if (v9 > 0x147A)
  {
    if (v9 >= 0x8147B)
    {
      if (v9 >= 0xABF26)
      {
        if (v9 >= 0xC147B)
        {
          if (v9 >= 0xCE148)
          {
            if (v9 >= 0xD69D1)
            {
              if (v9 >= 0xDCB57)
              {
                if (v9 >= 0xE147B)
                {
                  if (v9 >= 0xE4D5F)
                  {
                    if (v9 >= 0xE7AE2)
                    {
                      if (v9 >= 0xEA01E)
                      {
                        if (v9 >= 0xEBF26)
                        {
                          if (v9 >= 0xED968)
                          {
                            if (v9 >= 0xEEFE9)
                            {
                              if (v9 >= 0xF036A)
                              {
                                if (v9 >= 0xF147B)
                                {
                                  if (v9 >= 0xF238A)
                                  {
                                    if (v9 >= 0xF30ED)
                                    {
                                      if (v9 >= 0xF3CE7)
                                      {
                                        if (v9 >= 0xF47AF)
                                        {
                                          if (v9 >= 0xF516F)
                                          {
                                            if (v9 >= 0xF5A4D)
                                            {
                                              if (v9 >= 0xF6265)
                                              {
                                                if (v9 >= 0xF69D1)
                                                {
                                                  if (v9 >= 0xF70A4)
                                                  {
                                                    if (v9 >= 0xF76F2)
                                                    {
                                                      if (v9 >= 0xF7CC7)
                                                      {
                                                        if (v9 >= 0xF8232)
                                                        {
                                                          if (v9 >= 0xF873E)
                                                          {
                                                            if (v9 >= 0x100000)
                                                            {
                                                              v12 = 0;
                                                              goto LABEL_66;
                                                            }

                                                            v11 = 30;
                                                          }

                                                          else
                                                          {
                                                            v11 = 29;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v11 = 28;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v11 = 27;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v11 = 26;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v11 = 25;
                                                  }
                                                }

                                                else
                                                {
                                                  v11 = 24;
                                                }
                                              }

                                              else
                                              {
                                                v11 = 23;
                                              }
                                            }

                                            else
                                            {
                                              v11 = 22;
                                            }
                                          }

                                          else
                                          {
                                            v11 = 21;
                                          }
                                        }

                                        else
                                        {
                                          v11 = 20;
                                        }
                                      }

                                      else
                                      {
                                        v11 = 19;
                                      }
                                    }

                                    else
                                    {
                                      v11 = 18;
                                    }
                                  }

                                  else
                                  {
                                    v11 = 17;
                                  }
                                }

                                else
                                {
                                  v11 = 16;
                                }
                              }

                              else
                              {
                                v11 = 15;
                              }
                            }

                            else
                            {
                              v11 = 14;
                            }
                          }

                          else
                          {
                            v11 = 13;
                          }
                        }

                        else
                        {
                          v11 = 12;
                        }
                      }

                      else
                      {
                        v11 = 11;
                      }
                    }

                    else
                    {
                      v11 = 10;
                    }
                  }

                  else
                  {
                    v11 = 9;
                  }
                }

                else
                {
                  v11 = 8;
                }
              }

              else
              {
                v11 = 7;
              }
            }

            else
            {
              v11 = 6;
            }
          }

          else
          {
            v11 = 5;
          }
        }

        else
        {
          v11 = 4;
        }
      }

      else
      {
        v11 = 3;
      }
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  if (v11 >= v10 - 2)
  {
    LOWORD(v11) = v10 - 2;
  }

  v12 = v11;
LABEL_66:
  *a3 = v12;
  a3[1] = rnd_get(v8 + 10267, 1, v10 - 1) + 1;
  v13 = 2;
  a3[2] = rnd_get(v8 + 10267, 2, a2[3]);
  if (v12 <= 3)
  {
    v13 = rnd_get(a1, 3, 2u) + 2;
  }

  a3[3] = v13;
  a3[4] = rnd_get(a1, 4, a2[6] - 1) + 1;
  result = rnd_get(a1, 5, a2[6]);
  a3[5] = result;
  return result;
}

void *wrkmat_new(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x1030040CBEE1628uLL);
  v4[5] = a1;
  v4[6] = a2;
  *v4 = gf2mat_new(a1, a2);
  v4[8] = malloc_type_calloc(4uLL, a1, 0xAFB9D13AuLL);
  v4[9] = malloc_type_calloc(4uLL, a1, 0x80999DA9uLL);
  return v4;
}

void wrkmat_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      free(v3);
    }

    if (*a1)
    {
      gf2mat_free(*a1);
    }

    om_destroy(a1 + 8);

    free(a1);
  }
}

uint64_t wrkmat_assign_block(uint64_t result, __int128 *a2, signed int a3, uint64_t a4, int a5)
{
  v5 = *a2;
  *(result + 24) = a2[1];
  *(result + 8) = v5;
  if (a5 >= 1)
  {
    v7 = *(result + 64);
    v6 = *(result + 72);
    v8 = a5 + a3;
    if (a3 + 1 > v8)
    {
      v9 = a3 + 1;
    }

    else
    {
      v9 = a5 + a3;
    }

    v10 = v9 - a3;
    v11 = v10 >= 8 && (v7 - v6) > 0x1F;
    v12 = a3;
    if (!v11)
    {
      goto LABEL_13;
    }

    v13 = vdupq_n_s32(a3);
    v12 = (v10 & 0xFFFFFFFFFFFFFFF8) + a3;
    v14 = vaddq_s32(v13, xmmword_259B35120);
    v15 = 4 * a3 + 16;
    v16 = (v6 + v15);
    v17 = (v7 + v15);
    v18.i64[0] = 0x400000004;
    v18.i64[1] = 0x400000004;
    *&v19 = 0x100000001;
    *(&v19 + 1) = 0x100000001;
    v20.i64[0] = 0x800000008;
    v20.i64[1] = 0x800000008;
    v21 = v10 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      *(v16 - 1) = v19;
      *v16 = v19;
      v22 = vsubq_s32(v14, v13);
      v17[-1] = v22;
      *v17 = vaddq_s32(v22, v18);
      v14 = vaddq_s32(v14, v20);
      v16 += 2;
      v17 += 2;
      v21 -= 8;
    }

    while (v21);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_13:
      v23 = v12 - a3;
      do
      {
        *(v6 + 4 * v12) = 1;
        *(v7 + 4 * v12++) = v23++;
      }

      while (v12 < v8);
    }
  }

  *(result + 56) = a5;
  return result;
}

size_t wrkmat_print(void **a1, FILE *a2)
{
  v5 = a1[5];
  v4 = a1[6];
  fprintf(a2, "wrk [%ux%u]\n", v5, v4);
  fwrite("|     ", 6uLL, 1uLL, a2);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      fprintf(a2, "| %03d ", v6++);
    }

    while (v4 != v6);
  }

  result = fwrite("|\n", 2uLL, 1uLL, a2);
  if (v5 >= 1)
  {
    v8 = v5 & 0x7FFFFFFF;
    if (v4 <= 1)
    {
      v13 = 0;
      do
      {
        if (*(a1[9] + v13))
        {
          v14 = *(a1[1] + a1[4] * *(a1[8] + v13));
        }

        else
        {
          v14 = gf2mat_get(*a1, v13, 0);
        }

        fprintf(a2, "| %03d | %3d ", v13, v14);
        result = fwrite("|\n", 2uLL, 1uLL, a2);
        ++v13;
      }

      while (v8 != v13);
    }

    else
    {
      v9 = 0;
      do
      {
        if (*(a1[9] + v9))
        {
          v10 = *(a1[1] + a1[4] * *(a1[8] + v9));
        }

        else
        {
          v10 = gf2mat_get(*a1, v9, 0);
        }

        fprintf(a2, "| %03d | %3d ", v9, v10);
        v11 = 1;
        do
        {
          if (*(a1[9] + v9))
          {
            v12 = *(a1[1] + a1[4] * *(a1[8] + v9) + v11);
          }

          else
          {
            v12 = gf2mat_get(*a1, v9, v11);
          }

          fprintf(a2, "| %3d ", v12);
          ++v11;
        }

        while ((v4 & 0x7FFFFFFF) != v11);
        result = fwrite("|\n", 2uLL, 1uLL, a2);
        ++v9;
      }

      while (v9 != v8);
    }
  }

  return result;
}

uint64_t wrkmat_get(uint64_t a1, int a2, uint64_t a3)
{
  if (*(*(a1 + 72) + 4 * a2))
  {
    return *(*(a1 + 8) + *(a1 + 32) * *(*(a1 + 64) + 4 * a2) + a3);
  }

  else
  {
    return gf2mat_get(*a1, a2, a3);
  }
}

void *wrkmat_set(void *result, int a2, uint64_t a3, unsigned int a4)
{
  if (*(result[9] + 4 * a2))
  {
    *(result[1] + result[4] * *(result[8] + 4 * a2) + a3) = a4;
  }

  else
  {
    if (a4 > 1)
    {
      wrkmat_set_cold_1();
    }

    v5 = *result;

    return gf2mat_set(v5, a2, a3, a4);
  }

  return result;
}

uint64_t wrkmat_axpy(uint64_t *a1, int a2, int a3, int a4)
{
  v4 = a4;
  v7 = a1[9];
  v8 = *(v7 + 4 * a2);
  v9 = a3;
  if (v8 == *(v7 + 4 * a3))
  {
    if (v8)
    {
      oaxpy(a1[1], a1[1], *(a1[8] + 4 * a2), *(a1[8] + 4 * a3), a1[6], a4);
      v11 = *a1;
    }

    else
    {
      v11 = *a1;
    }

    return gf2mat_xor(v11, v11, a2, a3);
  }

  else if (v8)
  {
    v12 = *(*a1 + 24) + 4 * *(*a1 + 16) * a3;
    v13 = *(a1[8] + 4 * a2);
    v14 = a1[6];
    v15 = a1[1];

    return oaxpy_b32(v15, v12, v13, v14, v4);
  }

  else
  {
    v17 = a1[7];
    if (v17 >= a1[2])
    {
      printf("%s:%d -- unhandled axpy into gf2 row %d from gf256 row %d with beta %d\n", "/Library/Caches/com.apple.xbs/Sources/MobileInBoxUpdater/External/nanorq/wrkmat.c", 102, a2, a3, a4);
      abort();
    }

    gf2mat_fill(*a1, a2, a1[1] + a1[4] * v17);
    v19 = a1[8];
    *(a1[9] + 4 * a2) = 1;
    v20 = a1[6];
    v21 = a1[7];
    *(v19 + 4 * a2) = v21;
    a1[7] = v21 + 1;
    v22 = a1[1];
    v23 = *(v19 + 4 * v9);

    return oaxpy(v22, v22, v21, v23, v20, v4);
  }
}

uint64_t wrkmat_scal(void *a1, int a2, unsigned __int8 a3)
{
  if (!*(a1[9] + 4 * a2))
  {
    wrkmat_scal_cold_1(a3, a2);
  }

  v4 = *(a1[8] + 4 * a2);
  v5 = a1[6];
  v6 = a1[1];

  return oscal(v6, v4, v5, a3);
}

void om_resize(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = a2;
  a1[2] = a3;
  v5 = (a3 + 16 * ((a3 & 0xF) != 0)) & 0xFFFFFFFFFFFFFFF0;
  a1[3] = v5;
  v6 = oalloc(a2, v5, 0x10uLL);
  bzero(v6, a1[3] * a2);
  *a1 = v6;
}

void *om_copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = *a1;
  v7 = v4;
  if (!v6)
  {
    v6 = oalloc(v4, v5, 0x10uLL);
    *a1 = v6;
    v7 = *(a2 + 8);
    v5 = *(a2 + 24);
  }

  v8 = v5 * v7;
  v9 = *a2;

  return memcpy(v6, v9, v8);
}

void om_destroy(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  free(*a1);
  *a1 = 0;
}

size_t om_print(void *a1, FILE *a2)
{
  fprintf(a2, "dense [%ux%u]\n", a1[1], a1[2]);
  fwrite("|     ", 6uLL, 1uLL, a2);
  if (a1[2])
  {
    v4 = 0;
    do
    {
      fprintf(a2, "| %03d ", v4++);
    }

    while (a1[2] > v4);
  }

  result = fwrite("|\n", 2uLL, 1uLL, a2);
  if (a1[1])
  {
    v6 = 0;
    do
    {
      fprintf(a2, "| %03d | %3d ", v6, *(*a1 + a1[3] * v6));
      if (a1[2] >= 2uLL)
      {
        v7 = 1;
        do
        {
          fprintf(a2, "| %3d ", *(*a1 + v6 * a1[3] + v7++));
        }

        while (a1[2] > v7);
      }

      result = fwrite("|\n", 2uLL, 1uLL, a2);
      ++v6;
    }

    while (a1[1] > v6);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_4_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void *gf2mat_new(uint64_t a1, unint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040313BCFEBuLL);
  v5 = v4;
  *v4 = a1;
  v4[1] = a2;
  v6 = a2 >> 5;
  if ((a2 & 0x1F) != 0)
  {
    ++v6;
  }

  v4[2] = v6;
  v4[3] = malloc_type_calloc(4uLL, v6 * a1, 0x5C8AEAA2uLL);
  return v5;
}

void gf2mat_free(void **a1)
{
  if (a1)
  {
    if (a1[3])
    {
      v2 = a1;
      free(a1[3]);
      a1 = v2;
      v1 = vars8;
    }

    free(a1);
  }
}

size_t gf2mat_print(unint64_t *a1, FILE *a2)
{
  fprintf(a2, "gf2 [%ux%u]\n", *a1, a1[1]);
  fwrite("|     ", 6uLL, 1uLL, a2);
  if (a1[1])
  {
    v4 = 0;
    do
    {
      fprintf(a2, "| %03d ", v4++);
    }

    while (a1[1] > v4);
  }

  result = fwrite("|\n", 2uLL, 1uLL, a2);
  if (*a1)
  {
    v6 = 0;
    do
    {
      v7 = a1[1];
      if (v7)
      {
        v8 = a1[3] + 4 * a1[2] * v6;
        v9 = div(0, 32);
        LODWORD(v7) = (*(v8 + 4 * SLODWORD(v9.quot)) >> SBYTE4(v9.quot)) & 1;
      }

      fprintf(a2, "| %03d | %3d ", v6, v7);
      if (a1[1] >= 2)
      {
        v10 = 1;
        do
        {
          if (*a1 > v6)
          {
            v11 = a1[3] + 4 * a1[2] * v6;
            v12 = div(v10, 32);
            v13 = (*(v11 + 4 * SLODWORD(v12.quot)) >> SBYTE4(v12.quot)) & 1;
          }

          else
          {
            v13 = 0;
          }

          fprintf(a2, "| %3d ", v13);
          ++v10;
        }

        while (a1[1] > v10);
      }

      result = fwrite("|\n", 2uLL, 1uLL, a2);
      ++v6;
    }

    while (*a1 > v6);
  }

  return result;
}

uint64_t gf2mat_get(void *a1, int a2, uint64_t __x)
{
  if (*a1 <= a2 || a1[1] <= __x)
  {
    return 0;
  }

  v3 = a1[3] + 4 * a1[2] * a2;
  v4 = div(__x, 32);
  return (*(v3 + 4 * SLODWORD(v4.quot)) >> SBYTE4(v4.quot)) & 1;
}

void *gf2mat_copy(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[3])
    {
      v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040313BCFEBuLL);
      v3 = *v1;
      *v2 = *v1;
      v4 = v1[2];
      v2[2] = v4;
      v5 = malloc_type_calloc(4uLL, v4 * v3, 0x5FE07F34uLL);
      v2[3] = v5;
      memcpy(v5, v1[3], 4 * v2[2] * v2[1]);
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t gf2mat_axpy(uint64_t result, int a2, uint64_t a3, char a4)
{
  v4 = *(result + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(result + 24) + 4 * v4 * a2;
    v7 = *(result + 16) & 0x7FFFFFFFLL;
    do
    {
      for (i = *(v6 + 4 * v5); i; i &= i - 1)
      {
        v9 = (32 * v5) | __clz(__rbit32(i));
        *(a3 + v9) ^= a4;
      }

      ++v5;
    }

    while (v5 != v7);
  }

  return result;
}

uint64_t gf2mat_fill(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 24) + 4 * v3 * a2;
    v6 = *(result + 16) & 0x7FFFFFFFLL;
    do
    {
      for (i = *(v5 + 4 * v4); i; i &= i - 1)
      {
        *(a3 + ((32 * v4) | __clz(__rbit32(i)))) = 1;
      }

      ++v4;
    }

    while (v4 != v6);
  }

  return result;
}

void *gf2mat_set(void *result, int a2, uint64_t __x, int a4)
{
  if (*result > a2 && result[1] > __x)
  {
    v4 = result[3] + 4 * result[2] * a2;
    result = div(__x, 32).quot;
    v6 = *(v4 + 4 * result);
    v7 = v6 | (1 << SBYTE4(result));
    if (!a4)
    {
      v7 = v6 & ~(1 << SBYTE4(result));
    }

    *(v4 + 4 * result) = v7;
  }

  return result;
}

uint64_t gf2mat_xor(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 16);
  if (v4 >= 1)
  {
    v5 = *(result + 24);
    v6 = v4 * a3;
    v7 = *(a2 + 24);
    v8 = *(a2 + 16) * a4;
    v9 = *(result + 16) & 0x7FFFFFFFLL;
    if (v9 <= 0xB || ((v10 = v5 + 4 * v6, v11 = v7 + 4 * v8, v10 < v7 + 4 * (v8 + v9)) ? (v12 = v11 >= v5 + 4 * (v6 + v9)) : (v12 = 1), !v12))
    {
      v14 = 0;
LABEL_13:
      v19 = (v5 + 4 * v14 + 4 * v6);
      v20 = (v7 + 4 * v14 + 4 * v8);
      v21 = v9 - v14;
      do
      {
        v22 = *v20++;
        *v19++ ^= v22;
        --v21;
      }

      while (v21);
      return result;
    }

    v13 = *(result + 16) & 7;
    v14 = v9 - v13;
    v15 = (v11 + 16);
    v16 = (v10 + 16);
    v17 = v9 - v13;
    do
    {
      v18 = veorq_s8(*v16, *v15);
      v16[-1] = veorq_s8(v16[-1], v15[-1]);
      *v16 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    if (v13)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t gf2mat_and(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 16);
  if (v4 >= 1)
  {
    v5 = *(result + 24);
    v6 = v4 * a3;
    v7 = *(a2 + 24);
    v8 = *(a2 + 16) * a4;
    v9 = *(result + 16) & 0x7FFFFFFFLL;
    if (v9 <= 0xB || ((v10 = v5 + 4 * v6, v11 = v7 + 4 * v8, v10 < v7 + 4 * (v8 + v9)) ? (v12 = v11 >= v5 + 4 * (v6 + v9)) : (v12 = 1), !v12))
    {
      v14 = 0;
LABEL_13:
      v19 = (v5 + 4 * v14 + 4 * v6);
      v20 = (v7 + 4 * v14 + 4 * v8);
      v21 = v9 - v14;
      do
      {
        v22 = *v20++;
        *v19++ &= v22;
        --v21;
      }

      while (v21);
      return result;
    }

    v13 = *(result + 16) & 7;
    v14 = v9 - v13;
    v15 = (v11 + 16);
    v16 = (v10 + 16);
    v17 = v9 - v13;
    do
    {
      v18 = vandq_s8(*v16, *v15);
      v16[-1] = vandq_s8(v16[-1], v15[-1]);
      *v16 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    if (v13)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t gf2mat_nnz(void *a1, int a2, int a3, uint64_t __x)
{
  v4 = 0;
  if (a3 > __x)
  {
    return v4;
  }

  if (a3 < 0)
  {
    return v4;
  }

  v5 = a2;
  if (*a1 <= a2)
  {
    return v4;
  }

  if (a1[1] < __x)
  {
    return 0;
  }

  v7 = a1[2];
  v6 = a1[3];
  v8 = __x;
  v9 = a3;
  quot = div(__x, 32).quot;
  v4 = v9 & 0x1F;
  if ((v9 & 0x1F) != 0)
  {
    v11.i32[0] = -1 << ((v9 & 0x1F) - 1);
    *v11.i8 = vcnt_s8(*v11.i8);
    v11.i16[0] = vaddlv_u8(*v11.i8);
    v4 = v11.u32[0];
    v12 = 1;
    v13 = v7 * v5;
    v14 = v8;
    if (quot <= 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 0;
    v13 = v7 * v5;
    v14 = v8;
    if (quot <= 0)
    {
      goto LABEL_18;
    }
  }

  v15 = quot - v12;
  if (v15 < 8)
  {
    v16 = v12;
LABEL_15:
    v21 = (v6 + 4 * v13 + 4 * v16);
    v22 = quot - v16;
    do
    {
      v23 = *v21++;
      *v11.i8 = vcnt_s8(v23);
      v11.i16[0] = vaddlv_u8(*v11.i8);
      v4 = (v11.i32[0] + v4);
      --v22;
    }

    while (v22);
    v12 = quot;
    goto LABEL_18;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFFF8 | v12;
  v17 = v4;
  v18 = 0uLL;
  v19 = (4 * v13 + 4 * v12 + v6 + 16);
  v20 = v15 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v17 = vpadalq_u16(v17, vpaddlq_u8(vcntq_s8(v19[-1])));
    v18 = vpadalq_u16(v18, vpaddlq_u8(vcntq_s8(*v19)));
    v19 += 2;
    v20 -= 8;
  }

  while (v20);
  v11 = vaddq_s32(v18, v17);
  v4 = vaddvq_s32(v11);
  v12 = quot;
  if (v15 != (v15 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_15;
  }

LABEL_18:
  if (quot < v14)
  {
    v11.i32[0] = *(v6 + 4 * v13 + 4 * v12) & ~(-1 << SBYTE4(quot));
    v24 = vcnt_s8(*v11.i8);
    v24.i16[0] = vaddlv_u8(v24);
    return (v24.i32[0] + v4);
  }

  return v4;
}

uint64_t gf2mat_swaprow(uint64_t result, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = *(result + 16);
    if (v3 >= 1)
    {
      v4 = *(result + 24);
      v5 = v3 * a2;
      v6 = v3 * a3;
      v7 = *(result + 16) & 0x7FFFFFFFLL;
      if (v7 < 0xC || ((v8 = v4 + 4 * v5, v9 = v4 + 4 * v6, v8 < v4 + 4 * (v6 + v7)) ? (v10 = v9 >= v4 + 4 * (v5 + v7)) : (v10 = 1), !v10))
      {
        v12 = 0;
LABEL_14:
        v19 = (v4 + 4 * v12 + 4 * v6);
        v20 = (v4 + 4 * v12 + 4 * v5);
        v21 = v7 - v12;
        do
        {
          v22 = *v20;
          *v20++ = *v19;
          *v19++ = v22;
          --v21;
        }

        while (v21);
        return result;
      }

      v11 = *(result + 16) & 7;
      v12 = v7 - v11;
      v13 = (v8 + 16);
      v14 = (v9 + 16);
      v15 = v7 - v11;
      do
      {
        v16 = *(v13 - 1);
        v17 = *v13;
        v18 = *v14;
        *(v13 - 1) = *(v14 - 1);
        *v13 = v18;
        *(v14 - 1) = v16;
        *v14 = v17;
        v13 += 2;
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
      if (v11)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t gf2mat_swapcol(uint64_t result, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = *result;
    if (*result >= 1)
    {
      v4 = *(result + 24);
      v5 = 1 << a2;
      v6 = 1 << a3;
      v7 = a2 >> 5;
      v8 = ~(1 << a2);
      v9 = a3 >> 5;
      v10 = 4 * *(result + 16);
      do
      {
        v11 = *(v4 + 4 * v7);
        result = *(v4 + 4 * v9);
        if ((v11 & v5) != 0)
        {
          v12 = v11 | v6;
        }

        else
        {
          v12 = v11 & ~(1 << a3);
        }

        *(v4 + 4 * v7) = v12;
        v13 = *(v4 + 4 * v9);
        v14 = v13 | v5;
        v15 = v13 & v8;
        if ((result & v6) != 0)
        {
          v15 = v14;
        }

        *(v4 + 4 * v9) = v15;
        v4 += v10;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void gf2mat_zero(uint64_t a1, int a2)
{
  if (*(a1 + 16) >= 1)
  {
    bzero((*(a1 + 24) + 4 * *(a1 + 16) * a2), 4 * (*(a1 + 16) & 0x7FFFFFFFLL));
  }
}

void safeAssignError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v12 = MEMORY[0x277CCAB68];
    v13 = a4;
    v14 = a3;
    v15 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

    v16 = _createError(a2, v14, v15);

    v17 = v16;
    *a1 = v16;
  }
}

id _createError(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v5)
  {
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MobileInBoxUpdater.ErrorDomain" code:a1 userInfo:v8];

  return v9;
}

id safeCreateError(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x277CCAB68];
  v12 = a3;
  v13 = a2;
  v14 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v15 = _createError(a1, v13, v14);

  return v15;
}

void *bitmask_new@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v7 = (a1 >> 5) + 2;
  do
  {
    if (v6 == v5)
    {
      if (v5)
      {
        v5 *= 2;
      }

      else
      {
        v5 = 2;
      }

      result = malloc_type_realloc(result, 4 * v5, 0x100004052888210uLL);
    }

    *(result + v6++) = 0;
  }

  while (v7 != v6);
  a2[1] = v5;
  a2[2] = result;
  *a2 = v7;
  return result;
}

void *bitmask_set(unint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 5;
  v5 = *a1;
  if (a2 >> 5 >= *a1)
  {
    result = a1[2];
    do
    {
      if (v5 == a1[1])
      {
        if (v5)
        {
          v7 = 2 * v5;
        }

        else
        {
          v7 = 2;
        }

        a1[1] = v7;
        result = malloc_type_realloc(result, 4 * v7, 0x100004052888210uLL);
        a1[2] = result;
        v5 = *a1;
      }

      *(result + v5) = 0;
      *a1 = ++v5;
    }

    while (v4 >= v5);
  }

  else
  {
    result = a1[2];
  }

  *(result + v4) |= 1 << v2;
  return result;
}

void *bitmask_clear(unint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 5;
  v5 = *a1;
  if (a2 >> 5 >= *a1)
  {
    result = a1[2];
    do
    {
      if (v5 == a1[1])
      {
        if (v5)
        {
          v7 = 2 * v5;
        }

        else
        {
          v7 = 2;
        }

        a1[1] = v7;
        result = malloc_type_realloc(result, 4 * v7, 0x100004052888210uLL);
        a1[2] = result;
        v5 = *a1;
      }

      *(result + v5) = 0;
      *a1 = ++v5;
    }

    while (v4 >= v5);
  }

  else
  {
    result = a1[2];
  }

  *(result + v4) &= ~(1 << v2);
  return result;
}

uint64_t bitmask_check(unint64_t *a1, unint64_t a2)
{
  if (a2 >> 5 >= *a1)
  {
    return 0;
  }

  else
  {
    return (*(a1[2] + 4 * (a2 >> 5)) >> a2) & 1;
  }
}

uint64_t bitmask_popcount(unint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (v1 < 8)
  {
    v3 = 0;
    result = 0;
LABEL_8:
    v13 = v1 - v3;
    v14 = &v2->i32[v3];
    do
    {
      v15 = *v14++;
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      result += v16.u32[0];
      --v13;
    }

    while (v13);
    return result;
  }

  v3 = v1 & 0xFFFFFFFFFFFFFFF8;
  v5 = v2 + 1;
  v6 = 0uLL;
  v7 = v1 & 0xFFFFFFFFFFFFFFF8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vpaddlq_u16(vpaddlq_u8(vcntq_s8(v5[-1])));
    v12 = vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v5)));
    v8 = vaddw_high_u32(v8, v11);
    v6 = vaddw_u32(v6, *v11.i8);
    v10 = vaddw_high_u32(v10, v12);
    v9 = vaddw_u32(v9, *v12.i8);
    v5 += 2;
    v7 -= 8;
  }

  while (v7);
  result = vaddvq_s64(vaddq_s64(vaddq_s64(v9, v6), vaddq_s64(v10, v8)));
  if (v1 != v3)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t bitmask_gaps(unint64_t *a1, unint64_t a2, int8x8_t a3)
{
  v3 = *a1;
  if (a2 >> 5 < *a1)
  {
    v3 = a2 >> 5;
  }

  if (!v3)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v4 = a1[2];
  if (v3 < 8)
  {
    v5 = 0;
    v6 = 0;
LABEL_10:
    v15 = v3 - v6;
    v16 = &v4->i32[v6];
    do
    {
      v17 = *v16++;
      a3.i32[0] = ~v17;
      a3 = vcnt_s8(a3);
      a3.i16[0] = vaddlv_u8(a3);
      *&v5 += a3.u32[0];
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v6 = v3 & 0x7FFFFFFFFFFFFF8;
  v7 = v4 + 1;
  v8 = 0uLL;
  v9 = v3 & 0x7FFFFFFFFFFFFF8;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  do
  {
    v13 = vpaddlq_u16(vpaddlq_u8(vcntq_s8(vmvnq_s8(v7[-1]))));
    v14 = vpaddlq_u16(vpaddlq_u8(vcntq_s8(vmvnq_s8(*v7))));
    v10 = vaddw_high_u32(v10, v13);
    v8 = vaddw_u32(v8, *v13.i8);
    v12 = vaddw_high_u32(v12, v14);
    v11 = vaddw_u32(v11, *v14.i8);
    v7 += 2;
    v9 -= 8;
  }

  while (v9);
  *&a3 = COERCE_DOUBLE(vaddvq_s64(vaddq_s64(vaddq_s64(v11, v8), vaddq_s64(v12, v10))));
  v5 = a3;
  if (v3 != v6)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ((a2 & 0x1F) != 0)
  {
    a3.i32[0] = ~(*(a1[2] + 4 * v3) | (-1 << (a2 & 0x1F)));
    v18 = vcnt_s8(a3);
    v18.i16[0] = vaddlv_u8(v18);
    *&v5 += v18.u32[0];
  }

  return v5;
}

void bitmask_reset(uint64_t a1)
{
  if (*a1)
  {
    bzero(*(a1 + 16), 4 * *a1);
  }
}

void bitmask_free(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 16));
  }
}

uint64_t bitmask_print(void *a1)
{
  v1 = 4 * *a1;
  v2 = *MEMORY[0x277D85E08];
  if (v1)
  {
    v3 = a1[2];
    for (i = 1 - v1; ; ++i)
    {
      putc(a01[*v3 & 1], v2);
      putc(a01[(*v3 >> 1) & 1], v2);
      putc(a01[(*v3 >> 2) & 1], v2);
      putc(a01[(*v3 >> 3) & 1], v2);
      putc(a01[(*v3 >> 4) & 1], v2);
      putc(a01[(*v3 >> 5) & 1], v2);
      putc(a01[(*v3 >> 6) & 1], v2);
      putc(a01[*v3 >> 7], v2);
      if (!i)
      {
        break;
      }

      putc(124, v2);
      ++v3;
    }
  }

  return putc(10, v2);
}

void sub_259B0C364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259B0C908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL OUTLINED_FUNCTION_5_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_4_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_259B12A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *precode_matrix_gen(unsigned __int16 *a1, int a2)
{
  v3 = spmat_new(a1[4] + a2, a1[4]);
  v4 = a1[1];
  v5 = a1[8];
  if (a1[8])
  {
    v6 = 0;
    do
    {
      spmat_push(v3, v6 % v4, v6);
      spmat_push(v3, (v6 + 1 + v6 / v4) % v4, v6);
      spmat_push(v3, (v6 + 2 * (v6 / v4) + 2) % v4, v6);
      ++v6;
    }

    while (v6 != v5);
    v4 = a1[1];
    v7 = a1[8];
    if (!a1[1])
    {
LABEL_14:
      v13 = 0;
      v14 = a1[2];
      if (v14 >= a1[4])
      {
        return v3;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if (!a1[1])
    {
      goto LABEL_14;
    }
  }

  v8 = 0;
  do
  {
    spmat_push(v3, v8, v7 + v8);
    ++v8;
  }

  while (v4 != v8);
  v9 = a1[1];
  if (!a1[1])
  {
    goto LABEL_14;
  }

  v10 = 0;
  v11 = a1[3];
  v12 = a1[5];
  do
  {
    spmat_push(v3, v10, v10 % v12 + v11);
    spmat_push(v3, v10, (v10 + 1) % v12 + v11);
    ++v10;
  }

  while (v9 != v10);
  v13 = a1[1];
  v14 = a1[2];
  if (v14 + v13 < a1[4])
  {
LABEL_15:
    v15 = v14 + v13;
    v16 = 24 * v15;
    do
    {
      params_set_idxs(v15++ - (a1[2] + a1[1]), a1, (v3[1] + v16));
      v16 += 24;
    }

    while (v15 < a1[4]);
  }

  return v3;
}

uint64_t precode_matrix_invert(unsigned __int16 *a1, unsigned int *a2)
{
  v2 = a2;
  v213 = *MEMORY[0x277D85DE8];
  v4 = sched_new(*a2, a2[1], 3 * a1[4]);
  v5 = v4;
  LODWORD(v6) = *v2;
  if (*v2)
  {
    v7 = 0;
    v8 = *(v4 + 2);
    v9 = a1[2] + a1[1];
    do
    {
      *(v8 + 4 * v7++) = v9 % v6;
      v6 = *v2;
      ++v9;
    }

    while (v7 < v6);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 4);
      do
      {
        *(v11 + 4 * *(v8 + 4 * v10)) = v10;
        ++v10;
        v12 = *v2;
      }

      while (v10 < v12);
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = spmat_nnz(v2, *(v8 + 4 * v13), 0, v2[1] - a1[5]);
          v15 = *(v5 + 40);
          v8 = *(v5 + 16);
          *(v15 + 4 * *(v8 + 4 * v13)) = v14;
          v16 = *(v8 + 4 * v13);
          if (!*(v15 + 4 * v16))
          {
            *(v15 + 4 * v16) = v2[1];
          }

          ++v13;
        }

        while (v13 < *v2);
      }
    }
  }

  v17 = spmat_transpose(v2);
  v18 = a1[5];
  v19 = v2[1];
  v20 = *v2 - a1[2];
  v21 = *(v5 + 16);
  v203 = *(v5 + 32);
  v208 = v17;
  v22 = spmat_new(3u, *v2);
  if (v20 >= 1)
  {
    v23 = 0;
    do
    {
      v24 = *(*(v5 + 16) + v23);
      v25 = *(*(v5 + 40) + 4 * v24);
      if (v25 <= 2)
      {
        spmat_push(v22, v25, v24);
      }

      v23 += 4;
    }

    while (4 * v20 != v23);
  }

  v198 = v2;
  v199 = a1;
  if (v18 >= a1[4])
  {
    LODWORD(v26) = 0;
    goto LABEL_74;
  }

  v193 = v21;
  v26 = 0;
  v27 = v18;
  while (1)
  {
    v28 = v22[1];
    v29 = v28 + 3;
    v30 = v28[3];
    if (!v30)
    {
      break;
    }

    v31 = v30 - 1;
    while (1)
    {
      v32 = *(v28[5] + 4 * v31);
      v33 = *(*(v5 + 32) + 4 * v32);
      if (v26 <= v33)
      {
        v34 = *(v5 + 40);
        if (*(v34 + 4 * v32) == 1)
        {
          break;
        }
      }

      if (--v31 == -1)
      {
        *v29 = 0;
        goto LABEL_26;
      }
    }

LABEL_32:
    *v29 = v31;
    if (v33 >= v20)
    {
      goto LABEL_74;
    }

    if (v26 != v33)
    {
      v38 = *(v193 + 4 * v26);
      *(v193 + 4 * v26) = *(v193 + 4 * v33);
      *(v193 + 4 * v33) = v38;
      v39 = *(v193 + 4 * v26);
      v40 = *(v203 + 4 * v39);
      *(v203 + 4 * v39) = *(v203 + 4 * v38);
      *(v203 + 4 * *(v193 + 4 * v33)) = v40;
    }

    v195 = v19;
    v41 = *(v2 + 1);
    v43 = *(v5 + 16);
    v42 = *(v5 + 24);
    v44 = v19 - v18 + v26;
    LODWORD(v211) = v44;
    DWORD1(v211) = v44;
    v45 = *(v5 + 8);
    v46 = *(v43 + 4 * v26);
    v47 = (v41 + 24 * v46);
    v48 = *v47;
    if (*v47)
    {
      v49 = 0;
      v50 = v47[2];
      v51 = *(v34 + 4 * v46);
      do
      {
        if (v49 >= v51)
        {
          break;
        }

        v52 = *(v42 + 4 * *v50);
        v53 = v52 < v44 && v26 <= v52;
        if (v53)
        {
          *(&v211 + v49++) = v52;
        }

        ++v50;
        --v48;
      }

      while (v48);
      v54 = v211;
      if (v211 <= SDWORD1(v211))
      {
        v55 = DWORD1(v211);
      }

      else
      {
        v55 = v211;
      }

      if (v211 >= SDWORD1(v211))
      {
        v54 = DWORD1(v211);
      }

      if (v26 == v54)
      {
        goto LABEL_52;
      }

LABEL_51:
      v56 = *(v45 + 4 * v26);
      *(v45 + 4 * v26) = *(v45 + 4 * v54);
      *(v45 + 4 * v54) = v56;
      v57 = *(v45 + 4 * v26);
      v58 = *(v42 + 4 * v57);
      *(v42 + 4 * v57) = *(v42 + 4 * v56);
      *(v42 + 4 * *(v45 + 4 * v54)) = v58;
      goto LABEL_52;
    }

    v49 = 0;
    v55 = v44;
    v54 = v44;
    if (v26 != v44)
    {
      goto LABEL_51;
    }

LABEL_52:
    v194 = v27;
    if (v49 == 2)
    {
      v59 = v44 - 1;
      if (v55 != v44 - 1)
      {
        v60 = *(v45 + 4 * v59);
        *(v45 + 4 * v59) = *(v45 + 4 * v55);
        *(v45 + 4 * v55) = v60;
        v61 = *(v45 + 4 * v59);
        v62 = *(v42 + 4 * v61);
        *(v42 + 4 * v61) = *(v42 + 4 * v60);
        *(v42 + 4 * *(v45 + 4 * v55)) = v62;
      }
    }

    v63 = (v208[1] + 24 * *(v45 + 4 * v26));
    v64 = *v63;
    if (*v63)
    {
      v65 = v63[2];
      do
      {
        v67 = *v65++;
        v66 = v67;
        v68 = *(v5 + 40);
        v69 = *(v68 + 4 * v67);
        *(v68 + 4 * v67) = v69 - 1;
        if ((v69 & 0xFFFFFFFE) == 2)
        {
          spmat_push(v22, v69 - 1, v66);
        }

        --v64;
      }

      while (v64);
    }

    if (v49 >= 2)
    {
      v70 = 0;
      do
      {
        v71 = (v208[1] + 24 * *(*(v5 + 8) + 4 * (v44 + ~v70)));
        v72 = *v71;
        if (*v71)
        {
          v73 = v71[2];
          do
          {
            v75 = *v73++;
            v74 = v75;
            v76 = *(v5 + 40);
            v77 = *(v76 + 4 * v75);
            *(v76 + 4 * v75) = v77 - 1;
            if ((v77 & 0xFFFFFFFE) == 2)
            {
              spmat_push(v22, v77 - 1, v74);
            }

            --v72;
          }

          while (v72);
        }

        ++v70;
      }

      while (v70 != v49 - 1);
    }

    ++v26;
    v27 = v194 + v49 - 1;
    v18 = v27 + v26;
    v2 = v198;
    v19 = v195;
    if (v27 + v26 >= v199[4])
    {
      goto LABEL_74;
    }
  }

LABEL_26:
  v29 = v28 + 6;
  v35 = v28[6];
  if (v35)
  {
    v36 = v28[8];
    v31 = v35 - 1;
    do
    {
      v37 = *(v36 + 4 * v31);
      if (v26 <= *(*(v5 + 32) + 4 * v37))
      {
        v34 = *(v5 + 40);
        if (*(v34 + 4 * v37) == 2)
        {
          LODWORD(v33) = *(*(v5 + 32) + 4 * v37);
          goto LABEL_32;
        }
      }

      --v31;
    }

    while (v31 != -1);
    *v29 = 0;
  }

LABEL_74:
  spmat_free(v22);
  *(v5 + 72) = v26;
  v78 = v199[4] - v26;
  *(v5 + 76) = v78;
  v79 = wrkmat_new(*v2, v78);
  v80 = *v2;
  if (v80)
  {
    for (i = 0; i < v80; ++i)
    {
      v82 = (*(v2 + 1) + 24 * i);
      v83 = *v82;
      if (*v82)
      {
        v84 = v82[2];
        do
        {
          v85 = *v84++;
          v86 = *(*(v5 + 24) + 4 * v85);
          v87 = *(v5 + 72);
          if (v86 >= v87)
          {
            wrkmat_set(v79, i, v86 - v87, 1u);
          }

          --v83;
        }

        while (v83);
        v80 = *v2;
      }
    }
  }

  v88 = *(v5 + 72);
  v89 = *(v5 + 16);
  v204 = *(v5 + 8);
  v90 = *(v5 + 32);
  if (v88)
  {
    v91 = 0;
    v92 = *(v5 + 72);
    do
    {
      v93 = (v208[1] + 24 * *(v204 + 4 * v91));
      v94 = *v93;
      if (*v93)
      {
        v95 = v93[2];
        do
        {
          v97 = *v95++;
          v96 = v97;
          v98 = *(v90 + 4 * v97);
          if (v98 > (v91 & ~(v91 >> 31)) && v98 < v88)
          {
            wrkmat_axpy(v79, v96, *(v89 + 4 * v91), 1);
            sched_push(v5, v96, *(v89 + 4 * v91), 1);
          }

          --v94;
        }

        while (v94);
        v92 = *(v5 + 72);
      }

      ++v91;
    }

    while (v91 < v92);
    v100 = *(v5 + 16);
    v205 = *(v5 + 8);
    v101 = *(v5 + 32);
    *(v5 + 80) = *(v5 + 48) - 1;
    if (v92)
    {
      v102 = 0;
      v200 = v92 - 1;
      v103 = *v198 - v199[2];
      do
      {
        if (v102 <= v200)
        {
          v104 = v200;
        }

        else
        {
          v104 = v102;
        }

        v105 = (v208[1] + 24 * *(v205 + 4 * v102));
        v106 = *v105;
        if (*v105)
        {
          v107 = v105[2];
          do
          {
            v109 = *v107++;
            v108 = v109;
            v110 = *(v101 + 4 * v109);
            if (v110 > v104 && v110 < v103)
            {
              wrkmat_axpy(v79, v108, *(v100 + 4 * v102), 1);
              sched_push(v5, v108, *(v100 + 4 * v102), 1);
            }

            --v106;
          }

          while (v106);
          v92 = *(v5 + 72);
        }

        ++v102;
      }

      while (v102 < v92);
    }
  }

  else
  {
    v92 = 0;
    *(v5 + 80) = *(v5 + 48) - 1;
  }

  if (v79)
  {
    v113 = v198;
    v112 = v199;
    v114 = v199[2];
    v115 = v199[4];
    if (*v198 - v114 < v115)
    {
      v92 = 0;
      goto LABEL_147;
    }

    if (v92 >= v115)
    {
LABEL_147:
      v133 = v115;
      if (v92 >= v115)
      {
LABEL_212:
        *(v5 + 84) = *(v5 + 48) - 1;
        v178 = v133 - 1;
        v179 = *(v5 + 72);
        if (v178 < v179)
        {
LABEL_213:
          spmat_free(v113);
          spmat_free(v208);
          wrkmat_free(v79);
          goto LABEL_214;
        }

        v182 = *(v5 + 8);
        v183 = *(v5 + 16);
        v184 = v115 - 1;
        while (1)
        {
          v185 = (v208[1] + 24 * *(v182 + 4 * v184));
          v186 = *v185;
          if (*v185)
          {
            v187 = v185[2];
            do
            {
              v188 = *v187++;
              v189 = *(*(v5 + 32) + 4 * v188);
              if (v189 < *(v5 + 72))
              {
                sched_push(v5, *(v183 + 4 * v189), *(v183 + 4 * v184), 1);
              }

              --v186;
            }

            while (v186);
            v179 = *(v5 + 72);
          }

          v190 = v179;
          if (v184 > v179)
          {
            break;
          }

LABEL_217:
          if (v179 > --v184)
          {
            goto LABEL_213;
          }
        }

        while (1)
        {
          v191 = *(v183 + 4 * v190);
          if (*(v79[9] + 4 * v191))
          {
            break;
          }

          v192 = (*(*(*v79 + 24) + 4 * *(*v79 + 16) * v191 + 4 * ((v184 - *(v5 + 72)) >> 5)) >> (v184 - *(v5 + 72))) & 1;
          if (v192)
          {
            goto LABEL_231;
          }

LABEL_226:
          if (++v190 >= v184)
          {
            v179 = *(v5 + 72);
            goto LABEL_217;
          }
        }

        LOBYTE(v192) = *(v79[1] + v79[4] * *(v79[8] + 4 * v191) + (v184 - *(v5 + 72)));
        if (!v192)
        {
          goto LABEL_226;
        }

LABEL_231:
        sched_push(v5, v191, *(v183 + 4 * v184), v192);
        goto LABEL_226;
      }

      v211 = 0u;
      v212 = 0u;
      v134 = v112[2];
      if (!v112[2] || (v135 = *v112, v136 = v112[1], v137 = (v136 + v135), !v137))
      {
        precode_matrix_invert_cold_1();
      }

      v209 = 0uLL;
      v210 = 0uLL;
      om_resize(&v209, v134, (v136 + v135));
      v138 = 0;
      do
      {
        *(v209 + *(&v210 + 1) * v138 + v137 - 1) = OCT_EXP[v138];
        ++v138;
      }

      while (v134 != v138);
      v139 = (v137 - 2);
      if (v137 >= 2)
      {
        do
        {
          v143 = 0;
          do
          {
            v144 = (v209 + *(&v210 + 1) * v143 + v139);
            v145 = v144[1];
            if (v144[1])
            {
              LOBYTE(v145) = OCT_EXP[OCT_LOG[v145] + 1];
            }

            *v144 = v145;
            ++v143;
          }

          while (v134 != v143);
          v140 = rnd_get(v139 + 1, 6, v134);
          v141 = rnd_get(v139 + 1, 7, v134 - 1);
          *(v209 + *(&v210 + 1) * v140 + v139) ^= 1u;
          v142 = v209 + *(&v210 + 1) * ((v140 + v141 + 1) % v134);
          *(v142 + v139) ^= 1u;
          v53 = v139-- <= 0;
        }

        while (!v53);
      }

      om_resize(&v211, 2 * v199[2], *(v5 + 76));
      LODWORD(v146) = v199[2];
      if (v199[2])
      {
        v147 = 0;
        v113 = v198;
        do
        {
          if (v212 == v146)
          {
            v148 = 0;
          }

          else
          {
            v150 = 0;
            do
            {
              *(v211 + v147 * *(&v212 + 1) + v150) = *(v209 + *(&v210 + 1) * v147 + *(*(v5 + 8) + 4 * (v210 - (*(v5 + 76) - v146)) + 4 * v150));
              ++v150;
              v146 = v199[2];
              v148 = v212 - v146;
            }

            while (v212 - v146 > v150);
          }

          *(v211 + *(&v212 + 1) * v147 + v148 + v147) = 1;
          ++v147;
          v149 = v199[2];
          LODWORD(v146) = v199[2];
        }

        while (v147 < v149);
      }

      else
      {
        LODWORD(v149) = 0;
        v113 = v198;
      }

      v151 = *(v5 + 76);
      wrkmat_assign_block(v79, &v211, v199[1], 0, v149);
      v152 = *(v5 + 72);
      if (v152)
      {
        v153 = 0;
        v154 = v199[2];
        v155 = v154;
        do
        {
          if (v155)
          {
            v156 = 0;
            do
            {
              v157 = v209 + *(&v210 + 1) * v156;
              v158 = *(*(v5 + 8) + 4 * v153);
              v159 = *(v157 + v158);
              if (*(v157 + v158))
              {
                wrkmat_axpy(v79, *(*(v5 + 16) + 4 * (v79[5] - v155) + 4 * v156), *(*(v5 + 16) + 4 * v153), v159);
                sched_push(v5, *(*(v5 + 16) + 4 * (v79[5] - v199[2]) + 4 * v156), *(*(v5 + 16) + 4 * v153), v159);
                v154 = v199[2];
              }

              ++v156;
              v155 = v154;
            }

            while (v156 < v154);
            v152 = *(v5 + 72);
            v155 = v154;
          }

          ++v153;
        }

        while (v153 < v152);
      }

      om_destroy(&v209);
      LODWORD(v160) = *(v5 + 72);
      v115 = v199[4];
      if (v160 >= v115)
      {
LABEL_208:
        v133 = v115;
        if (v160 < v115)
        {
          spmat_free(v113);
          spmat_free(v208);
          if (v5)
          {
            sched_free(v5);
          }

          wrkmat_free(v79);
          v5 = 0;
          goto LABEL_214;
        }

        goto LABEL_212;
      }

      v161 = *(v5 + 16);
      v197 = *(v5 + 32);
      v160 = v160;
      v202 = v79[5];
      while (1)
      {
        v162 = v160 - *(v5 + 72);
        if (v160 < v202)
        {
          v163 = v162 + 31;
          if (v162 >= 0)
          {
            v163 = v160 - *(v5 + 72);
          }

          v164 = v163 >> 5;
          v165 = v160;
          do
          {
            v166 = *(v161 + 4 * v165);
            if (*(v79[9] + 4 * v166))
            {
              v167 = *(v79[1] + v79[4] * *(v79[8] + 4 * v166) + v162);
              if (v167)
              {
                goto LABEL_191;
              }
            }

            else
            {
              v167 = (*(*(*v79 + 24) + 4 * *(*v79 + 16) * v166 + 4 * v164) >> (v162 & 0x1F)) & 1;
              if (v167)
              {
                goto LABEL_191;
              }
            }

            ++v165;
          }

          while (v165 < v202);
          goto LABEL_207;
        }

        v167 = 0;
        LODWORD(v165) = v160;
LABEL_191:
        if (v165 == v202)
        {
          goto LABEL_207;
        }

        if (v165 == v160)
        {
          if (v167 < 2)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v169 = *(v161 + 4 * v160);
          *(v161 + 4 * v160) = *(v161 + 4 * v165);
          *(v161 + 4 * v165) = v169;
          v170 = *(v161 + 4 * v160);
          v171 = *(v197 + 4 * v170);
          *(v197 + 4 * v170) = *(v197 + 4 * v169);
          *(v197 + 4 * *(v161 + 4 * v165)) = v171;
          if (v167 < 2)
          {
LABEL_194:
            v168 = v160 + 1;
            if (v160 + 1 < v202)
            {
              break;
            }

            goto LABEL_179;
          }
        }

        v172 = OCT_INV_0[v167];
        wrkmat_scal(v79, *(v161 + 4 * v160), OCT_INV_0[v167]);
        sched_push(v5, *(v161 + 4 * v160), v172, 0);
        v168 = v160 + 1;
        if (v160 + 1 < v202)
        {
          break;
        }

LABEL_179:
        v115 = v199[4];
        v160 = v168;
        if (v168 >= v115)
        {
          LODWORD(v160) = v168;
LABEL_207:
          v113 = v198;
          goto LABEL_208;
        }
      }

      v173 = v168;
      v174 = v162 + 31;
      if (v162 >= 0)
      {
        v174 = v162;
      }

      v207 = v174 >> 5;
      while (1)
      {
        v175 = *(v161 + 4 * v173);
        if (*(v79[9] + 4 * v175))
        {
          break;
        }

        v177 = (*(*(*v79 + 24) + 4 * *(*v79 + 16) * v175 + 4 * v207) >> (v162 & 0x1F)) & 1;
        if (v177)
        {
          goto LABEL_206;
        }

LABEL_201:
        if (++v173 >= v202)
        {
          goto LABEL_179;
        }
      }

      v176 = v79[1] + v79[4] * *(v79[8] + 4 * v175);
      v177 = *(v176 + v162);
      if (!*(v176 + v162))
      {
        goto LABEL_201;
      }

LABEL_206:
      wrkmat_axpy(v79, v175, *(v161 + 4 * v160), v177);
      sched_push(v5, *(v161 + 4 * v173), *(v161 + 4 * v160), v177);
      goto LABEL_201;
    }

    v116 = *(v5 + 16);
    v117 = *(v5 + 32);
    v118 = v79[5] - v114;
    v119 = v92;
    v120 = v118;
    v196 = v118;
    while (1)
    {
      v122 = v119 - *(v5 + 72);
      LODWORD(v123) = v119;
      if (v119 < v120)
      {
        v124 = v122 + 31;
        if (v122 >= 0)
        {
          v124 = v119 - *(v5 + 72);
        }

        v125 = v124 >> 5;
        v123 = v119;
        while (1)
        {
          v126 = *(v116 + 4 * v123);
          if (*(v79[9] + 4 * v126))
          {
            if (*(v79[1] + v79[4] * *(v79[8] + 4 * v126) + v122))
            {
              break;
            }
          }

          else if ((*(*(*v79 + 24) + 4 * *(*v79 + 16) * v126 + 4 * v125) & (1 << v122)) != 0)
          {
            break;
          }

          if (++v123 >= v120)
          {
            goto LABEL_145;
          }
        }
      }

      if (v123 == v118)
      {
LABEL_145:
        v92 = v119;
LABEL_146:
        v113 = v198;
        v112 = v199;
        goto LABEL_147;
      }

      if (v123 == v119)
      {
        ++v92;
        v121 = v119 + 1;
        if (v119 + 1 < v120)
        {
          break;
        }

        goto LABEL_122;
      }

      v127 = *(v116 + 4 * v119);
      *(v116 + 4 * v119) = *(v116 + 4 * v123);
      *(v116 + 4 * v123) = v127;
      v128 = *(v116 + 4 * v119);
      v129 = *(v117 + 4 * v128);
      *(v117 + 4 * v128) = *(v117 + 4 * v127);
      *(v117 + 4 * *(v116 + 4 * v123)) = v129;
      ++v92;
      v121 = v119 + 1;
      if (v119 + 1 < v120)
      {
        break;
      }

LABEL_122:
      v119 = v121;
      if (v121 >= v115)
      {
        v92 = v121;
        goto LABEL_146;
      }
    }

    v130 = v92;
    v131 = v122 + 31;
    if (v122 >= 0)
    {
      v131 = v122;
    }

    v201 = v121;
    v206 = v131 >> 5;
    while (1)
    {
      v132 = *(v116 + 4 * v130);
      if (*(v79[9] + 4 * v132))
      {
        break;
      }

      if ((*(*(*v79 + 24) + 4 * *(*v79 + 16) * v132 + 4 * v206) >> (v122 & 0x1F)))
      {
        goto LABEL_144;
      }

LABEL_139:
      if (++v130 >= v120)
      {
        v121 = v201;
        v115 = v199[4];
        v118 = v196;
        goto LABEL_122;
      }
    }

    if (!*(v79[1] + v79[4] * *(v79[8] + 4 * v132) + v122))
    {
      goto LABEL_139;
    }

LABEL_144:
    wrkmat_axpy(v79, v132, *(v116 + 4 * v119), 1);
    sched_push(v5, *(v116 + 4 * v130), *(v116 + 4 * v119), 1);
    goto LABEL_139;
  }

  spmat_free(v198);
  spmat_free(v208);
  if (v5)
  {
    sched_free(v5);
    v5 = 0;
  }

LABEL_214:
  v180 = *MEMORY[0x277D85DE8];
  return v5;
}

void precode_matrix_intermediate(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  LODWORD(v5) = a3[21];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      while (1)
      {
        v8 = (*(a3 + 8) + v6);
        v9 = *(v8 + 1);
        v10 = *a2;
        if (*v8)
        {
          break;
        }

        oscal(v10, v9, *(a2 + 16), *(v8 + 2));
        ++v7;
        v5 = a3[21];
        v6 += 12;
        if (v7 >= v5)
        {
          goto LABEL_6;
        }
      }

      oaxpy(v10, *a2, v9, *(v8 + 2), *(a2 + 16), *v8);
      ++v7;
      v5 = a3[21];
      v6 += 12;
    }

    while (v7 < v5);
  }

LABEL_6:
  v11 = a3[20];
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11 + 1;
    v13 = 12 * v11;
    do
    {
      while (1)
      {
        v15 = (*(a3 + 8) + v13);
        v16 = *(v15 + 1);
        v17 = *a2;
        if (*v15)
        {
          break;
        }

        oscal(v17, v16, *(a2 + 16), *(v15 + 2));
        v13 -= 12;
        v14 = v12-- <= 1;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      oaxpy(v17, *a2, v16, *(v15 + 2), *(a2 + 16), *v15);
      v13 -= 12;
      v14 = v12-- <= 1;
    }

    while (!v14);
LABEL_12:
    LODWORD(v5) = a3[21];
  }

  v18 = v5;
  if (*(a3 + 6) > v5)
  {
    v19 = 12 * v5;
    do
    {
      while (1)
      {
        v20 = (*(a3 + 8) + v19);
        v21 = *(v20 + 1);
        v22 = *a2;
        if (!*v20)
        {
          break;
        }

        oaxpy(v22, *a2, v21, *(v20 + 2), *(a2 + 16), *v20);
        ++v18;
        v19 += 12;
        if (*(a3 + 6) <= v18)
        {
          goto LABEL_18;
        }
      }

      oscal(v22, v21, *(a2 + 16), *(v20 + 2));
      ++v18;
      v19 += 12;
    }

    while (*(a3 + 6) > v18);
  }

LABEL_18:
  v23 = 0;
  v24 = -1;
  do
  {
    while (1)
    {
      v25 = (*(a3 + 8) + v23);
      v26 = *(v25 + 1);
      v27 = *a2;
      if (!*v25)
      {
        break;
      }

      oaxpy(v27, *a2, v26, *(v25 + 2), *(a2 + 16), *v25);
      ++v24;
      v23 += 12;
      if (v24 >= a3[20])
      {
        goto LABEL_22;
      }
    }

    oscal(v27, v26, *(a2 + 16), *(v25 + 2));
    ++v24;
    v23 += 12;
  }

  while (v24 < a3[20]);
LABEL_22:
  v28 = malloc_type_calloc(4uLL, *a3, 0x2D979D0DuLL);
  v29 = malloc_type_calloc(4uLL, a3[1], 0x3F8FAC0BuLL);
  memcpy(v28, *(a3 + 4), 4 * *a3);
  memcpy(v29, *(a3 + 1), 4 * a3[1]);
  v30 = *a3;
  if (v30 >= 1)
  {
    v31 = 0;
    v32 = v28;
    i = *v28;
    if ((i & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    while (++v31 != v30)
    {
      v32 = &v28[v31];
      for (i = *v32; (i & 0x80000000) == 0; i = *v32)
      {
LABEL_26:
        oswaprow(*a2, v31, i, *(a2 + 16));
        v34 = *v32;
        *v32 = -1;
        v32 = &v28[v34];
      }
    }
  }

  v35 = a3[1];
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = v29;
    j = *v29;
    if ((j & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    while (++v36 != v35)
    {
      v37 = &v29[v36];
      for (j = *v37; (j & 0x80000000) == 0; j = *v37)
      {
LABEL_32:
        oswaprow(*a2, v36, j, *(a2 + 16));
        v39 = *v37;
        *v37 = -1;
        v37 = &v29[v39];
      }
    }
  }

  free(v28);

  free(v29);
}

uint64_t params_init@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = &word_259B36E40;
  while (1)
  {
    v4 = K_padded[v2];
    if (v4 >= result)
    {
      break;
    }

    ++v2;
    v3 += 3;
    if (v2 == 477)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      LOWORD(v4) = 0;
      goto LABEL_6;
    }
  }

  *a2 = v4;
  *(a2 + 18) = J_K_padded[v2];
  v7 = *(v3 - 2);
  *(a2 + 2) = v7;
  v6 = *(v3 - 1);
  *(a2 + 4) = v6;
  v5 = *v3;
  *(a2 + 6) = *v3;
LABEL_6:
  v8 = v7 + v6 + v4;
  *(a2 + 8) = v8;
  v9 = v8 - v5;
  *(a2 + 10) = v9;
  *(a2 + 14) = v9 - v6;
  *(a2 + 16) = v5 - v7;
  while (1)
  {
    if (v9 >= 2u)
    {
      if (v9 < 4u)
      {
        goto LABEL_19;
      }

      if (-21845 * v9) >= 0x5556u && (v9)
      {
        break;
      }
    }

LABEL_7:
    ++v9;
  }

  if (v9 >= 0x19u)
  {
    v11 = 11;
    while (v9 % (v11 - 6) && v9 % (v11 - 4))
    {
      v12 = v11 * v11;
      v11 += 6;
      if (v12 > v9)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_7;
  }

LABEL_19:
  *(a2 + 12) = v9;
  return result;
}

_DWORD *params_set_idxs(int a1, unsigned __int16 *a2, uint64_t *a3)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  gen_tuple(a1, a2, &v22);
  v5 = *a3;
  if (*a3 == a3[1])
  {
    v6 = 2 * v5;
    if (!v5)
    {
      v6 = 2;
    }

    a3[1] = v6;
    result = malloc_type_realloc(a3[2], 4 * v6, 0x100004052888210uLL);
    a3[2] = result;
    v5 = *a3;
  }

  else
  {
    result = a3[2];
  }

  v8 = v23;
  v9 = v5 + 1;
  *a3 = v5 + 1;
  result[v5] = v8;
  if (v22 < 2)
  {
    v11 = v5 + 1;
  }

  else
  {
    v10 = 1;
    do
    {
      v8 = (HIDWORD(v22) + v8) % a2[3];
      LODWORD(v23) = v8;
      if (v9 == a3[1])
      {
        v12 = 2 * v9;
        if (!v9)
        {
          v12 = 2;
        }

        a3[1] = v12;
        result = malloc_type_realloc(result, 4 * v12, 0x100004052888210uLL);
        a3[2] = result;
        v8 = v23;
        v9 = *a3;
      }

      v11 = v9 + 1;
      *a3 = v9 + 1;
      result[v9] = v8;
      ++v10;
      ++v9;
    }

    while (v10 < v22);
  }

  v13 = a2[5];
  v14 = HIDWORD(v24);
  if (HIDWORD(v24) >= v13)
  {
    do
    {
      v14 = (v24 + v14) % a2[6];
    }

    while (v14 >= v13);
    HIDWORD(v24) = v14;
  }

  if (v11 == a3[1])
  {
    v15 = 2 * v11;
    if (!v11)
    {
      v15 = 2;
    }

    a3[1] = v15;
    result = malloc_type_realloc(result, 4 * v15, 0x100004052888210uLL);
    a3[2] = result;
    v14 = HIDWORD(v24);
    v11 = *a3;
  }

  v16 = a2[3];
  v17 = v14 + v16;
  v18 = v11 + 1;
  *a3 = v11 + 1;
  result[v11] = v17;
  if (HIDWORD(v23) >= 2)
  {
    v19 = 1;
    do
    {
      v20 = HIDWORD(v24);
      do
      {
        v20 = (v20 + v24) % a2[6];
      }

      while (v20 >= a2[5]);
      HIDWORD(v24) = v20;
      if (v18 == a3[1])
      {
        v21 = 2 * v18;
        if (!v18)
        {
          v21 = 2;
        }

        a3[1] = v21;
        result = malloc_type_realloc(result, 4 * v21, 0x100004052888210uLL);
        a3[2] = result;
        v16 = a2[3];
        v20 = HIDWORD(v24);
        v18 = *a3;
      }

      result[v18++] = v20 + v16;
      *a3 = v18;
      ++v19;
    }

    while (v19 < HIDWORD(v23));
  }

  return result;
}

void sub_259B1C550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

_DWORD *spmat_new(unsigned int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
  *v4 = a1;
  v4[1] = a2;
  v5 = a1;
  v6 = malloc_type_calloc(0x18uLL, a1, 0xC1F6471EuLL);
  *(v4 + 1) = v6;
  if (a1)
  {
    v7 = 0;
    do
    {
      v8 = &v6[v7];
      *(v8 + 1) = 10;
      *(v8 + 2) = 0;
      *v8 = 0;
      v9 = malloc_type_realloc(0, 0x28uLL, 0x100004052888210uLL);
      v6 = *(v4 + 1);
      *&v6[v7 + 16] = v9;
      v7 += 24;
    }

    while (24 * v5 != v7);
  }

  return v4;
}

void spmat_free(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (*a1)
      {
        v3 = 0;
        v4 = 16;
        do
        {
          free(*(a1[1] + v4));
          ++v3;
          v4 += 24;
        }

        while (v3 < *a1);
        v2 = a1[1];
      }

      free(v2);
    }

    free(a1);
  }
}

void *spmat_push(void *result, unsigned int a2, int a3)
{
  v4 = result[1];
  v5 = a2;
  v6 = (v4 + 24 * a2);
  v7 = *v6;
  if (*v6 == v6[1])
  {
    v8 = result;
    v9 = 2 * v7;
    v10 = v7 == 0;
    v11 = 2;
    if (!v10)
    {
      v11 = v9;
    }

    v12 = 24 * a2;
    *(v4 + v12 + 8) = v11;
    result = malloc_type_realloc(v6[2], 4 * v11, 0x100004052888210uLL);
    v4 = v8[1];
    *(v4 + v12 + 16) = result;
    v7 = *(v4 + 24 * v5);
  }

  v13 = (v4 + 24 * v5);
  v14 = v13[2];
  *v13 = v7 + 1;
  *(v14 + 4 * v7) = a3;
  return result;
}

_DWORD *spmat_transpose(unsigned int *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
  *v4 = v2;
  v4[1] = v3;
  v5 = malloc_type_calloc(0x18uLL, v2, 0xC1F6471EuLL);
  *(v4 + 1) = v5;
  if (v2)
  {
    v6 = 0;
    v7 = 24 * v2;
    do
    {
      v8 = &v5[v6 / 8];
      v8[1] = 10;
      v8[2] = 0;
      *v8 = 0;
      v9 = malloc_type_realloc(0, 0x28uLL, 0x100004052888210uLL);
      v5 = *(v4 + 1);
      v5[v6 / 8 + 2] = v9;
      v6 += 24;
    }

    while (v7 != v6);
  }

  v10 = *a1;
  if (v10)
  {
    v11 = 0;
    v12 = *(a1 + 1);
    do
    {
      if (*(v12 + 24 * v11))
      {
        v13 = 0;
        v14 = 1;
        do
        {
          v17 = *(*(v12 + 24 * v11 + 16) + 4 * v13);
          v18 = &v5[3 * v17];
          v19 = *v18;
          if (*v18 == v18[1])
          {
            v20 = 2 * v19;
            if (!v19)
            {
              v20 = 2;
            }

            v5[3 * v17 + 1] = v20;
            v21 = malloc_type_realloc(v18[2], 4 * v20, 0x100004052888210uLL);
            v5 = *(v4 + 1);
            v5[3 * v17 + 2] = v21;
            v19 = v5[3 * v17];
            v12 = *(a1 + 1);
          }

          v15 = &v5[3 * v17];
          v16 = v15[2];
          *v15 = v19 + 1;
          *(v16 + 4 * v19) = v11;
          v13 = v14++;
        }

        while (*(v12 + 24 * v11) > v13);
        v10 = *a1;
      }

      ++v11;
    }

    while (v11 < v10);
  }

  return v4;
}

uint64_t spmat_nnz(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (*(a1 + 8) + 24 * a2);
  v5 = *v4;
  if (!*v4)
  {
    return 0;
  }

  v6 = v4[2];
  if (v5 > 7 && (v5 ? (v7 = (v5 - 1) >> 32 == 0) : (v7 = 0), v7))
  {
    v8 = v5 & 0x1FFFFFFF8;
    v10 = v5 & 0xFFFFFFF8;
    v14 = vdupq_n_s32(a3);
    v15 = vdupq_n_s32(a4);
    v16 = v6 + 1;
    v17 = 0uLL;
    v18 = v5 & 0x1FFFFFFF8;
    v19 = 0uLL;
    do
    {
      v17 = vsubq_s32(v17, vandq_s8(vcgeq_u32(v16[-1], v14), vcgtq_u32(v15, v16[-1])));
      v19 = vsubq_s32(v19, vandq_s8(vcgeq_u32(*v16, v14), vcgtq_u32(v15, *v16)));
      v16 += 2;
      v18 -= 8;
    }

    while (v18);
    result = vaddvq_s32(vaddq_s32(v19, v17));
    if (v5 == v8)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    LODWORD(result) = 0;
    v10 = 0;
  }

  v11 = v10 + 1;
  do
  {
    v12 = v6->u32[v8];
    if (v12 < a3 || v12 >= a4)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    v8 = v11++;
  }

  while (v5 > v8);
  return result;
}

void *ioctx_from_file(const char *a1, int a2)
{
  if (a2)
  {
    v3 = "r";
  }

  else
  {
    v3 = "w+";
  }

  result = fopen(a1, v3);
  if (result)
  {
    v5 = result;
    result = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00402860B300uLL);
    result[7] = v5;
    *result = fileio_read;
    result[1] = fileio_write;
    result[2] = fileio_seek;
    result[3] = fileio_size;
    result[4] = fileio_tell;
    result[5] = fileio_destroy;
    *(result + 48) = 1;
    *(result + 49) = a2 == 0;
  }

  return result;
}

uint64_t fileio_size(uint64_t a1)
{
  v2 = MEMORY[0x259CAE270](*(a1 + 56));
  fseek(*(a1 + 56), 0, 2);
  v3 = MEMORY[0x259CAE270](*(a1 + 56));
  fseek(*(a1 + 56), v2, 0);
  return v3;
}

void fileio_destroy(FILE **a1)
{
  fclose(a1[7]);

  free(a1);
}

void *ioctx_from_mem(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x10900405519E76AuLL);
  result[7] = a1;
  result[8] = 0;
  result[9] = a2;
  *result = memio_read;
  result[1] = memio_write;
  result[2] = memio_seek;
  result[3] = memio_size;
  result[4] = memio_tell;
  result[5] = memio_destroy;
  *(result + 24) = 257;
  return result;
}

size_t memio_read(void *a1, void *__dst, size_t a3)
{
  v4 = a1[8];
  v5 = a1[9];
  if (v4 + a3 <= v5)
  {
    v6 = a3;
    memcpy(__dst, (a1[7] + v4), a3);
    a1[8] += v6;
  }

  else
  {
    v6 = v5 - v4;
    memcpy(__dst, (a1[7] + v4), v5 - v4);
    a1[8] = a1[9];
  }

  return v6;
}

size_t memio_write(void *a1, const void *a2, size_t a3)
{
  v4 = a1[8];
  v5 = a1[9];
  if (v4 + a3 <= v5)
  {
    v6 = a3;
    memcpy((a1[7] + v4), a2, a3);
    a1[8] += v6;
  }

  else
  {
    v6 = v5 - v4;
    memcpy((a1[7] + v4), a2, v5 - v4);
    a1[8] = a1[9];
  }

  return v6;
}

BOOL memio_seek(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 > a2)
  {
    *(a1 + 64) = a2;
  }

  return v2 > a2;
}

_DWORD *ioctx_mmap_file(const char *a1, int a2)
{
  v4 = sysconf(29);
  v5 = 0x10000 / v4 * v4;
  if (a2)
  {
    v6 = open(a1, 0);
    if (v6 != -1)
    {
      v7 = v6;
      memset(&v14, 0, sizeof(v14));
      fstat(v6, &v14);
      st_size = v14.st_size;
      if (v14.st_size < v5)
      {
        v5 = v14.st_size;
      }

      v9 = mmap(0, v5, 1, 1, v7, 0);
      if (v9 == -1)
      {
        ioctx_mmap_file_cold_1();
      }

      v10 = v9;
LABEL_10:
      result = malloc_type_calloc(1uLL, 0x70uLL, 0x1090040E3C5BF40uLL);
      result[14] = v7;
      *(result + 8) = v10;
      *(result + 9) = st_size;
      *(result + 12) = 0;
      *(result + 13) = v5;
      *(result + 10) = v5;
      *(result + 11) = 0;
      *result = mmapio_read;
      *(result + 1) = mmapio_write;
      *(result + 2) = mmapio_seek;
      *(result + 3) = mmapio_size;
      *(result + 4) = mmapio_tell;
      *(result + 5) = mmapio_destroy;
      *(result + 48) = 1;
      *(result + 49) = a2 == 0;
      return result;
    }
  }

  else
  {
    v11 = open(a1, 1538, 438);
    if (v11 != -1)
    {
      v7 = v11;
      ftruncate(v11, v5);
      v12 = mmap(0, v5, 2, 1, v7, 0);
      if (v12 == -1)
      {
        ioctx_mmap_file_cold_1();
      }

      v10 = v12;
      st_size = 0;
      goto LABEL_10;
    }
  }

  return 0;
}

size_t mmapio_read(uint64_t a1, char *__dst, size_t __n)
{
  v5 = *(a1 + 96);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  v8 = v5 % v6;
  if (v5 + __n > v7)
  {
    v9 = v7 - v5;
    memcpy(__dst, (*(a1 + 64) + v8), v7 - v5);
    v10 = *(a1 + 72);
LABEL_5:
    *(a1 + 96) = v10;
    return v9;
  }

  v9 = __n;
  if (v8 + __n < v6)
  {
    memcpy(__dst, (*(a1 + 64) + v8), __n);
    v10 = *(a1 + 96) + v9;
    goto LABEL_5;
  }

  v11 = 0;
  while (v11 < v9 || v5 == *(a1 + 72))
  {
    v13 = v5 % *(a1 + 80);
    v14 = *(a1 + 104) - v13;
    memcpy(__dst, (*(a1 + 64) + v13), v14);
    v11 += v14;
    v15 = *(a1 + 104);
    *(a1 + 96) += v14;
    if (v15 != *(a1 + 80))
    {
      break;
    }

    v16 = mmapio_seek(a1, *(a1 + 88) + v15);
    v5 = *(a1 + 96);
    if (v16)
    {
      v17 = v5 + v9 - v14;
      v18 = *(a1 + 72);
      v19 = v18 - v5;
      if (v17 <= v18)
      {
        v19 = v9 - v14;
      }

      v20 = v19;
      memcpy(&__dst[v11], *(a1 + 64), v19);
      v5 = v20 + *(a1 + 96);
      *(a1 + 96) = v5;
      v11 += v20;
    }
  }

  return v11;
}

size_t mmapio_write(void *a1, char *__src, size_t __n)
{
  v6 = a1[12];
  v7 = a1[10];
  if (v6 + __n < v7 + a1[11])
  {
    memcpy((a1[8] + v6 % v7), __src, __n);
    v8 = a1[12] + __n;
    a1[12] = v8;
    if (v8 <= a1[9])
    {
      v8 = a1[9];
    }

    a1[9] = v8;
    return __n;
  }

  if (__n)
  {
    v11 = 0;
    do
    {
      v12 = a1[10];
      v13 = a1[12] % v12;
      if (v13 + __n >= v12)
      {
        v14 = v12 - v13;
      }

      else
      {
        v14 = __n;
      }

      memcpy((a1[8] + v13), &__src[v11], v14);
      v9 = v14 + v11;
      v15 = a1[11];
      v16 = a1[12] + v14;
      a1[12] = v16;
      v17 = a1[10];
      if (v16 <= a1[9])
      {
        v16 = a1[9];
      }

      a1[9] = v16;
      if (mmapio_seek(a1, v17 + v15))
      {
        v18 = __n - v14;
        memcpy((a1[8] + a1[12] % a1[10]), &__src[v9], v18);
        v9 = v11 + __n;
        v19 = a1[12] + v18;
        a1[12] = v19;
        if (v19 <= a1[9])
        {
          v19 = a1[9];
        }

        a1[9] = v19;
      }

      v11 = v9;
    }

    while (v9 < __n);
    return v9;
  }

  return 0;
}

uint64_t mmapio_seek(uint64_t a1, size_t a2)
{
  v4 = *(a1 + 88);
  if (v4 > a2)
  {
    if (*(a1 + 49) == 1)
    {
      v5 = *(a1 + 80);
      goto LABEL_4;
    }

LABEL_21:
    if (*(a1 + 72) > a2)
    {
      munmap(*(a1 + 64), *(a1 + 104));
      v15 = *(a1 + 72);
      v14 = *(a1 + 80);
      v16 = a2 / v14 * v14;
      *(a1 + 88) = v16;
      if (*(a1 + 49))
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v18 = mmap(0, v14, v17, 1, *(a1 + 56), a2 / v14 * v14);
      if (v18 == -1)
      {
        ioctx_mmap_file_cold_1();
      }

      *(a1 + 64) = v18;
      if (v16 + v14 <= v15)
      {
        v19 = v14;
      }

      else
      {
        v19 = v15 - v16;
      }

      *(a1 + 96) = a2;
      *(a1 + 104) = v19;
      return 1;
    }

    return 0;
  }

  v5 = *(a1 + 80);
  if (v5 + v4 <= a2)
  {
    if (*(a1 + 49) == 1)
    {
      if (*(a1 + 72) <= a2)
      {
        munmap(*(a1 + 64), v5);
        v12 = a2 / *(a1 + 80) * *(a1 + 80);
        *(a1 + 88) = v12;
        *(a1 + 72) = v12;
        ftruncate(*(a1 + 56), 2 * v12);
        if (*(a1 + 49))
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }

        v9 = mmap(0, *(a1 + 80), v13, 1, *(a1 + 56), *(a1 + 88));
        if (v9 == -1)
        {
          ioctx_mmap_file_cold_1();
        }

        goto LABEL_8;
      }

LABEL_4:
      munmap(*(a1 + 64), v5);
      v6 = *(a1 + 80);
      v7 = a2 / v6 * v6;
      *(a1 + 88) = v7;
      if (*(a1 + 49))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v9 = mmap(0, v6, v8, 1, *(a1 + 56), v7);
      if (v9 == -1)
      {
        ioctx_mmap_file_cold_1();
      }

LABEL_8:
      *(a1 + 64) = v9;
      *(a1 + 96) = a2;
      return 1;
    }

    goto LABEL_21;
  }

  *(a1 + 96) = a2;
  if (*(a1 + 49) != 1)
  {
    return 1;
  }

  v11 = *(a1 + 72);
  if (v11 <= a2)
  {
    v11 = a2;
  }

  *(a1 + 72) = v11;
  return 1;
}

off_t mmapio_size(uint64_t a1)
{
  v2 = lseek(*(a1 + 56), 0, 1);
  lseek(*(a1 + 56), 0, 2);
  v3 = lseek(*(a1 + 56), 0, 1);
  lseek(*(a1 + 56), v2, 0);
  return v3;
}

void mmapio_destroy(uint64_t a1)
{
  munmap(*(a1 + 64), *(a1 + 104));
  if (*(a1 + 49) == 1)
  {
    ftruncate(*(a1 + 56), *(a1 + 72));
  }

  close(*(a1 + 56));

  free(a1);
}

void *oalloc(uint64_t a1, unint64_t a2, size_t alignment)
{
  memptr = 0;
  v3 = a2 / alignment;
  if (a2 % alignment)
  {
    ++v3;
  }

  if (malloc_type_posix_memalign(&memptr, alignment, alignment * a1 * v3, 0xC6910034uLL))
  {
    exit(12);
  }

  return memptr;
}

char *ocopy(char *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0xF) != 0)
  {
    v5 = (a5 >> 4) + 1;
  }

  else
  {
    v5 = a5 >> 4;
  }

  if (16 * v5)
  {
    return memcpy(&result[16 * a3 * v5], (a2 + 16 * a4 * v5), ((16 * v5 - 1) & 0xFFFFFFFFFFFFFFF0) + 16);
  }

  return result;
}

__n128 oswaprow(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != a3)
  {
    if ((a4 & 0xF) != 0)
    {
      v4 = (a4 >> 4) + 1;
    }

    else
    {
      v4 = a4 >> 4;
    }

    v5 = 16 * v4;
    if (16 * v4)
    {
      v6 = 0;
      v7 = a1 + 16 * a2 * v4;
      v8 = a1 + 16 * a3 * v4;
      do
      {
        result = *(v7 + v6);
        *(v7 + v6) = *(v8 + v6);
        *(v8 + v6) = result;
        v6 += 16;
      }

      while (v6 < v5);
    }
  }

  return result;
}

uint64_t oswapcol(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3 && a4)
  {
    do
    {
      v5 = *(result + a2);
      *(result + a2) = *(result + a3);
      *(result + a3) = v5;
      result += (a5 + 16 * ((a5 & 0xF) != 0)) & 0xFFFFFFFFFFFFFFF0;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t oaxpy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  if ((a5 & 0xF) != 0)
  {
    v6 = (a5 >> 4) + 1;
  }

  else
  {
    v6 = a5 >> 4;
  }

  if (a6)
  {
    v7 = result + 16 * a3 * v6;
    v8 = a2 + 16 * a4 * v6;
    v9 = 16 * v6;
    if (a6 == 1)
    {
      if (v9)
      {
        for (i = 0; i < v9; i += 16)
        {
          *(v7 + i) = veorq_s8(*(v8 + i), *(v7 + i));
        }
      }
    }

    else if (v9)
    {
      v11 = 0;
      v12 = 16 * a6;
      v13 = *(&OCT_MUL_HI + v12);
      v14 = *(&OCT_MUL_LO + v12);
      v15.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v15.i64[1] = 0xF0F0F0F0F0F0F0FLL;
      do
      {
        *(v7 + v11) = veorq_s8(veorq_s8(vqtbl1q_s8(v13, vshrq_n_u8(*(v8 + v11), 4uLL)), vqtbl1q_s8(v14, vandq_s8(*(v8 + v11), v15))), *(v7 + v11));
        v11 += 16;
      }

      while (v11 < v9);
    }
  }

  return result;
}

int8x16_t oaddrow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0xF) != 0)
  {
    v5 = (a5 >> 4) + 1;
  }

  else
  {
    v5 = a5 >> 4;
  }

  v6 = 16 * v5;
  if (16 * v5)
  {
    v7 = 0;
    v8 = a1 + 16 * a3 * v5;
    v9 = a2 + 16 * a4 * v5;
    do
    {
      result = veorq_s8(*(v9 + v7), *(v8 + v7));
      *(v8 + v7) = result;
      v7 += 16;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t oscal(uint64_t result, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if ((a3 & 0xF) != 0)
  {
    v4 = (a3 >> 4) + 1;
  }

  else
  {
    v4 = a3 >> 4;
  }

  if (a4 >= 2)
  {
    v5 = 16 * v4;
    if (16 * v4)
    {
      v6 = 0;
      v7 = 16 * a4;
      v8 = *(&OCT_MUL_HI + v7);
      v9 = result + 16 * a2 * v4;
      v10 = *(&OCT_MUL_LO + v7);
      v11.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v11.i64[1] = 0xF0F0F0F0F0F0F0FLL;
      do
      {
        *(v9 + v6) = veorq_s8(vqtbl1q_s8(v8, vshrq_n_u8(*(v9 + v6), 4uLL)), vqtbl1q_s8(v10, vandq_s8(*(v9 + v6), v11)));
        v6 += 16;
      }

      while (v6 < v5);
    }
  }

  return result;
}

void ozero(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0xF) != 0)
  {
    v3 = (a3 >> 4) + 1;
  }

  else
  {
    v3 = a3 >> 4;
  }

  if (16 * v3)
  {
    bzero((a1 + 16 * a2 * v3), ((16 * v3 - 1) & 0xFFFFFFFFFFFFFFF0) + 16);
  }
}

void ogemm(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = a4;
    v9 = (a6 + 16 * ((a6 & 0xF) != 0)) & 0xFFFFFFFFFFFFFFF0;
    v10 = (v9 - 1) & 0xFFFFFFFFFFFFFFF0;
    if (a5)
    {
      v28 = (a5 + 16 * ((a5 & 0xF) != 0)) & 0xFFFFFFFFFFFFFFF0;
      if (v9)
      {
        for (i = 0; i != v7; ++i)
        {
          v13 = &a1[v28 * i];
          bzero(a3, v10 + 16);
          v14.i64[0] = 0xF0F0F0F0F0F0F0FLL;
          v14.i64[1] = 0xF0F0F0F0F0F0F0FLL;
          v15 = 0;
          v16 = a2;
          do
          {
            v17 = v13[v15];
            if (v13[v15])
            {
              if (v17 == 1)
              {
                for (j = 0; j < v9; j += 16)
                {
                  *&a3[j] = veorq_s8(*(v16 + j), *&a3[j]);
                }
              }

              else
              {
                v19 = 0;
                v20 = 16 * v17;
                v21 = *(&OCT_MUL_HI + v20);
                v22 = *(&OCT_MUL_LO + v20);
                do
                {
                  *&a3[v19] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, vshrq_n_u8(*(v16 + v19), 4uLL)), vqtbl1q_s8(v22, vandq_s8(*(v16 + v19), v14))), *&a3[v19]);
                  v19 += 16;
                }

                while (v19 < v9);
              }
            }

            ++v15;
            v16 += v9;
          }

          while (v15 != a5);
          a3 += v9;
        }
      }

      else
      {
        for (k = 0; k != a4; ++k)
        {
          v24 = a1;
          v25 = a5;
          do
          {
            v26 = *v24++;
            --v25;
          }

          while (v25);
          a1 += v28;
        }
      }
    }

    else if (v9)
    {
      do
      {
        bzero(a3, v10 + 16);
        a3 += v9;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t onnz(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5 >> 4;
  if ((a5 & 0xF) != 0)
  {
    ++v5;
  }

  v6 = a4 - a3;
  if (a4 <= a3)
  {
    return 0;
  }

  v7 = 16 * a2 * v5;
  if (v6 < 8)
  {
    v8 = 0;
    v9 = a3;
    goto LABEL_18;
  }

  if (v6 >= 0x20)
  {
    v12 = 0uLL;
    v13 = vdupq_n_s64(1uLL);
    v14 = 0uLL;
    v11 = v6 & 0xFFFFFFFFFFFFFFE0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = (a3 + v7 + a1 + 16);
    v19 = 0uLL;
    v20 = v6 & 0xFFFFFFFFFFFFFFE0;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v31 = vtstq_s8(v18[-1], v18[-1]);
      v32 = vmovl_u8(*v31.i8);
      v33 = vmovl_high_u8(v31);
      v34 = vmovl_high_u16(v33);
      v35.i64[0] = v34.u32[2];
      v35.i64[1] = v34.u32[3];
      v22 = vaddq_s64(v22, vandq_s8(v35, v13));
      v36 = vmovl_high_u16(v32);
      v37 = vmovl_u16(*v33.i8);
      v35.i64[0] = v34.u32[0];
      v35.i64[1] = v34.u32[1];
      v21 = vaddq_s64(v21, vandq_s8(v35, v13));
      v35.i64[0] = v37.u32[2];
      v35.i64[1] = v37.u32[3];
      v19 = vaddq_s64(v19, vandq_s8(v35, v13));
      v35.i64[0] = v36.u32[2];
      v35.i64[1] = v36.u32[3];
      v16 = vaddq_s64(v16, vandq_s8(v35, v13));
      v38 = vmovl_u16(*v32.i8);
      v35.i64[0] = v37.u32[0];
      v35.i64[1] = v37.u32[1];
      v17 = vaddq_s64(v17, vandq_s8(v35, v13));
      v35.i64[0] = v38.u32[0];
      v35.i64[1] = v38.u32[1];
      v39 = vandq_s8(v35, v13);
      v35.i64[0] = v38.u32[2];
      v35.i64[1] = v38.u32[3];
      v40 = vandq_s8(v35, v13);
      v35.i64[0] = v36.u32[0];
      v35.i64[1] = v36.u32[1];
      v41 = vtstq_s8(*v18, *v18);
      v15 = vaddq_s64(v15, vandq_s8(v35, v13));
      v42 = vmovl_u8(*v41.i8);
      v43 = vmovl_high_u8(v41);
      v14 = vaddq_s64(v14, v40);
      v44 = vmovl_high_u16(v43);
      v12 = vaddq_s64(v12, v39);
      v35.i64[0] = v44.u32[2];
      v35.i64[1] = v44.u32[3];
      v30 = vaddq_s64(v30, vandq_s8(v35, v13));
      v45 = vmovl_high_u16(v42);
      v46 = vmovl_u16(*v43.i8);
      v35.i64[0] = v44.u32[0];
      v35.i64[1] = v44.u32[1];
      v29 = vaddq_s64(v29, vandq_s8(v35, v13));
      v35.i64[0] = v46.u32[2];
      v35.i64[1] = v46.u32[3];
      v28 = vaddq_s64(v28, vandq_s8(v35, v13));
      v35.i64[0] = v45.u32[2];
      v35.i64[1] = v45.u32[3];
      v26 = vaddq_s64(v26, vandq_s8(v35, v13));
      v35.i64[0] = v46.u32[0];
      v35.i64[1] = v46.u32[1];
      v27 = vaddq_s64(v27, vandq_s8(v35, v13));
      v47 = vmovl_u16(*v42.i8);
      v35.i64[0] = v45.u32[0];
      v35.i64[1] = v45.u32[1];
      v25 = vaddq_s64(v25, vandq_s8(v35, v13));
      v35.i64[0] = v47.u32[2];
      v35.i64[1] = v47.u32[3];
      v24 = vaddq_s64(v24, vandq_s8(v35, v13));
      v35.i64[0] = v47.u32[0];
      v35.i64[1] = v47.u32[1];
      v23 = vaddq_s64(v23, vandq_s8(v35, v13));
      v18 += 2;
      v20 -= 32;
    }

    while (v20);
    v8 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v23, v12), vaddq_s64(v27, v17)), vaddq_s64(vaddq_s64(v25, v15), vaddq_s64(v29, v21))), vaddq_s64(vaddq_s64(vaddq_s64(v24, v14), vaddq_s64(v28, v19)), vaddq_s64(vaddq_s64(v26, v16), vaddq_s64(v30, v22)))));
    if (v6 == v11)
    {
      return v8;
    }

    if ((v6 & 0x18) == 0)
    {
      v9 = v11 + a3;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFF8) + a3;
  v48 = 0uLL;
  v49 = v8;
  v50 = (a1 + v11 + a3 + v7);
  v51 = v11 - (v6 & 0xFFFFFFFFFFFFFFF8);
  v52 = vdupq_n_s64(1uLL);
  v53 = 0uLL;
  v54 = 0uLL;
  do
  {
    v55 = *v50++;
    v56 = vmovl_u8(vtst_s8(v55, v55));
    v57 = vmovl_u16(*v56.i8);
    v58.i64[0] = v57.u32[0];
    v58.i64[1] = v57.u32[1];
    v59 = vandq_s8(v58, v52);
    v58.i64[0] = v57.u32[2];
    v58.i64[1] = v57.u32[3];
    v60 = vandq_s8(v58, v52);
    v61 = vmovl_high_u16(v56);
    v58.i64[0] = v61.u32[0];
    v58.i64[1] = v61.u32[1];
    v62 = vandq_s8(v58, v52);
    v58.i64[0] = v61.u32[2];
    v58.i64[1] = v61.u32[3];
    v54 = vaddq_s64(v54, vandq_s8(v58, v52));
    v53 = vaddq_s64(v53, v62);
    v48 = vaddq_s64(v48, v60);
    v49 = vaddq_s64(v49, v59);
    v51 += 8;
  }

  while (v51);
  v8 = vaddvq_s64(vaddq_s64(vaddq_s64(v49, v53), vaddq_s64(v48, v54)));
  if (v6 != (v6 & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_18:
    v63 = a4 - v9;
    v64 = (a1 + v9 + v7);
    do
    {
      if (*v64++)
      {
        ++v8;
      }

      --v63;
    }

    while (v63);
  }

  return v8;
}

uint64_t oaxpy_b32(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a4 & 0xF) != 0)
  {
    v5 = (a4 >> 4) + 1;
  }

  else
  {
    v5 = a4 >> 4;
  }

  if (a4)
  {
    v6 = 0;
    v7 = 0;
    v8 = result + 16 * a3 * v5;
    do
    {
      for (i = *(a2 + 4 * v7); i; i &= i - 1)
      {
        v11 = v6 | __clz(__rbit32(i));
        *(v8 + v11) ^= a5;
      }

      v6 += 32;
    }

    while (v7++ != (a4 - 1) >> 5);
  }

  return result;
}

void sub_259B22B00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  objc_terminate();
}

uint64_t nanorq_generate_symbols(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = a1 + 144;
  v7 = *(a1 + 144 + 8 * a2);
  if (!v7)
  {
    v9 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300402CF7215EuLL);
    v7 = v9;
    v10 = *(a1 + 64);
    v11 = a2 >= v10;
    v12 = a2 - v10;
    if (!v11)
    {
      *v9 = *(a1 + 48);
      v13 = *(a1 + 132);
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_10:
      bitmask_new(v13, &v20);
      *(v7 + 4) = v20;
      *(v7 + 10) = v21;
      v14 = *(a1 + 132) - *v7;
      goto LABEL_13;
    }

    if (v12 >= *(a1 + 72))
    {
      *v9 = 0;
      v13 = *(a1 + 132);
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v9 = *(a1 + 56);
      v13 = *(a1 + 132);
      if (v13)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v14 = 0;
LABEL_13:
    om_resize(v7 + 1, *(a1 + 120) + v14, *(a1 + 8));
    *(v6 + 8 * a2) = v7;
    if (*(v7 + 3))
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (*(v7 + 3))
  {
    return 1;
  }

LABEL_14:
  if ((v7[1] & 1) == 0)
  {
    LOWORD(v15) = *v7;
    if (*v7)
    {
      v16 = 0;
      v17 = *(a1 + 114) + *(a1 + 116);
      do
      {
        transfer_esi(a1, a2, v16++, v15, *(v7 + 1) + *(v7 + 4) * v17++, a3, 0);
        v15 = *v7;
      }

      while (v16 < v15);
    }

    *(v7 + 2) = 1;
  }

  v18 = *(a1 + 136);
  if (v18 || (v19 = precode_matrix_gen((a1 + 112), 0), result = precode_matrix_invert((a1 + 112), v19), (v18 = result) != 0))
  {
    precode_matrix_intermediate(a1 + 112, (v7 + 4), v18);
    if (!*(a1 + 136))
    {
      sched_free(v18);
    }

    result = 1;
    *(v7 + 3) = 1;
  }

  return result;
}

void *nanorq_encoder_new_ex(unint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a1 > 0xDC5223AD00)
  {
    return 0;
  }

  v28 = v5;
  v29 = v6;
  if (a5 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a5;
  }

  if (a5 >= 4)
  {
    v10 = 4;
  }

  if (a5 >= 8)
  {
    v10 = 8;
  }

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  LOWORD(v12) = v11;
  if (v11 <= a2)
  {
    v12 = a2 / v11 * v11;
  }

  v13 = v12;
  if (a1 % v12)
  {
    v14 = a1 / v12 + 1;
  }

  else
  {
    v14 = a1 / v12;
  }

  while (v14 > 0xDC5300)
  {
    LOWORD(v12) = v12 * v11;
    v13 = v12;
    if (a1 % v12)
    {
      v14 = a1 / v12 + 1;
    }

    else
    {
      v14 = a1 / v12;
    }
  }

  v16 = malloc_type_calloc(1uLL, 0x890uLL, 0x1020040AF2D6946uLL);
  *v16 = a1;
  v16[1] = v13;
  v16[2] = v11;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v19 = 16;
      do
      {
        v20 = v14 / v19;
        if (v14 % v19)
        {
          ++v20;
        }

        ++v19;
      }

      while (v20 > 0xDC53);
      v18 = v19 - 1;
    }

    if (v14 % v18)
    {
      v17 = v14 / v18 + 1;
    }

    else
    {
      v17 = v14 / v18;
    }
  }

  if (v14 % v17)
  {
    v21 = v14 / v17 + 1;
  }

  else
  {
    v21 = v14 / v17;
  }

  v16[3] = v21;
  v16[4] = 1;
  v16[5] = v14;
  if (v21 - 257 >= 0xFFFFFFFFFFFFFF00 && ((v22 = v14 / v21, !(v14 % v21)) ? (v23 = v14 / v21) : (v23 = v22 + 1), v23 < 0xDC54))
  {
    v16[10] = 0;
    v16[11] = v13 / v11;
    *(v16 + 6) = xmmword_259B39980;
    v24 = v14 % v21;
    if (v14 == v22 * v21)
    {
      v23 = 0;
    }

    v16[6] = v23;
    v16[7] = v22;
    v16[8] = v24;
    v16[9] = v21 - v14 % v21;
    if (v14 == v22 * v21 && (v23 = v14 / v21, v21 == v24))
    {
      v25 = v16;
      LOWORD(v23) = 0;
    }

    else
    {
      v25 = v16;
    }

    params_init(v23, &v26);
    result = v25;
    *(v25 + 7) = v26;
    *(v25 + 32) = v27;
  }

  else
  {
    free(v16);
    return 0;
  }

  return result;
}

uint64_t nanorq_block_symbols(void *a1, unsigned int a2)
{
  v2 = a1[8];
  if (a2 < v2)
  {
    return a1[6];
  }

  if (a2 - v2 >= a1[9])
  {
    return 0;
  }

  return a1[7];
}

void nanorq_free(_DWORD *a1)
{
  v2 = a1[18] + a1[16];
  v3 = *(a1 + 17);
  if (v3)
  {
    sched_free(v3);
  }

  if (v2 >= 1)
  {
    v4 = 0;
    v5 = (a1 + 36);
    do
    {
      v6 = *&v5[8 * v4];
      if (v6)
      {
        om_destroy(v6 + 8);
        if (*(v6 + 40))
        {
          v7 = 0;
          v8 = 8;
          do
          {
            om_destroy(*(v6 + 56) + v8);
            ++v7;
            v8 += 40;
          }

          while (*(v6 + 40) > v7);
          free(*(v6 + 56));
        }

        if (*(v6 + 64))
        {
          bitmask_free(v6 + 64);
        }

        free(v6);
        *&v5[8 * v4] = 0;
      }

      ++v4;
    }

    while (v4 != v2);
  }

  free(a1);
}

void nanorq_encoder_cleanup(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 144;
  v3 = *(a1 + 144 + 8 * a2);
  if (v3)
  {
    om_destroy(v3 + 8);
    if (*(v3 + 40))
    {
      v5 = 0;
      v6 = 8;
      do
      {
        om_destroy(*(v3 + 56) + v6);
        ++v5;
        v6 += 40;
      }

      while (*(v3 + 40) > v5);
      free(*(v3 + 56));
    }

    if (*(v3 + 64))
    {
      bitmask_free(v3 + 64);
    }

    free(v3);
    *(v2 + 8 * a2) = 0;
  }
}

uint64_t nanorq_is_repair_symbol_tag(uint64_t a1, unsigned int a2)
{
  v2 = HIBYTE(a2);
  v3 = *(a1 + 64);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    return (a2 & 0xFFFFFF) >= *(a1 + 48);
  }

  if (v5 >= *(a1 + 72))
  {
    return 1;
  }

  return (a2 & 0xFFFFFF) >= *(a1 + 56);
}

void *nanorq_decoder_new(unint64_t a1, unsigned int a2)
{
  if (a1 > 0xDC5223AD00FFFFFFLL)
  {
    return 0;
  }

  v26 = v2;
  v27 = v3;
  v6 = a1 >> 24;
  v7 = a1 + 1;
  v8 = malloc_type_calloc(1uLL, 0x890uLL, 0x1020040AF2D6946uLL);
  *v8 = v6;
  v8[1] = v7;
  v9 = HIBYTE(a2) + 1;
  v8[2] = a2;
  v8[3] = v9;
  v10 = v6 / v7;
  if (v6 % v7)
  {
    ++v10;
  }

  v8[4] = (a2 >> 8) + 1;
  v8[5] = v10;
  if (v7 < a2 || (v11 = v7 / a2, v7 % a2) || ((v12 = v10 / v9, !(v10 % v9)) ? (v13 = v10 / v9) : (v13 = v12 + 1), v13 >= 0xDC54))
  {
    free(v8);
    return 0;
  }

  v14 = v12 * v9;
  v15 = v10 % v9;
  if (v10 == v12 * v9)
  {
    v13 = 0;
  }

  v8[6] = v13;
  v8[7] = v12;
  v8[8] = v15;
  v8[9] = v9 - v15;
  if ((a2 >> 8) == 0xFFFF)
  {
    v8[10] = 0;
    v8[11] = 0;
    v8[12] = 0;
    v8[13] = 0;
    if (v10 != v14)
    {
LABEL_26:
      v22 = v8;
      goto LABEL_27;
    }
  }

  else
  {
    v16 = v11 / ((a2 >> 8) + 1);
    if (v11 % ((a2 >> 8) + 1))
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v11 / ((a2 >> 8) + 1);
    }

    v18 = ((a2 >> 8) + 1) * v16;
    v19 = v11 - v18;
    v20 = ((a2 >> 8) + 1) - (v11 - v18);
    if (v11 == v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    v8[10] = v21;
    v8[11] = v16;
    v8[12] = v19;
    v8[13] = v20;
    if (v10 != v14)
    {
      goto LABEL_26;
    }
  }

  v13 = v10 / v9;
  if (v9 != v15)
  {
    goto LABEL_26;
  }

  v22 = v8;
  LOWORD(v13) = 0;
LABEL_27:
  params_init(v13, &v24);
  result = v22;
  *(v22 + 7) = v24;
  v23 = 2 * *(v22 + 56);
  *(v22 + 32) = v25;
  *(v22 + 33) = v23;
  return result;
}

BOOL nanorq_precalculate(void *a1)
{
  if (a1[8])
  {
    v2 = 6;
LABEL_5:
    v3 = a1[v2];
    goto LABEL_6;
  }

  if (a1[9])
  {
    v2 = 7;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_6:
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  params_init(v3, v7);
  v4 = precode_matrix_gen(v7, 0);
  v5 = precode_matrix_invert(v7, v4);
  if (v5)
  {
    a1[17] = v5;
  }

  return v5 != 0;
}

uint64_t nanorq_encode(uint64_t a1, int8x16_t *a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v10 = a1 + 144;
  v11 = *(a1 + 144 + 8 * a4);
  if (!v11)
  {
    v19 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300402CF7215EuLL);
    v11 = v19;
    v20 = *(a1 + 64);
    v21 = a4 >= v20;
    v22 = a4 - v20;
    if (v21)
    {
      if (v22 >= *(a1 + 72))
      {
        *v19 = 0;
        v23 = *(a1 + 132);
        if (v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        *v19 = *(a1 + 56);
        v23 = *(a1 + 132);
        if (v23)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      *v19 = *(a1 + 48);
      v23 = *(a1 + 132);
      if (v23)
      {
LABEL_7:
        bitmask_new(v23, &v31);
        *(v11 + 4) = v31;
        *(v11 + 10) = v32;
        v24 = *(a1 + 132) - *v11;
        goto LABEL_18;
      }
    }

    v24 = 0;
LABEL_18:
    om_resize(v11 + 1, *(a1 + 120) + v24, *(a1 + 8));
    *(v10 + 8 * a4) = v11;
    v12 = *v11;
    if (v12 > a3)
    {
      goto LABEL_3;
    }

LABEL_19:
    if (HIBYTE(a3))
    {
      return 0;
    }

    if ((*(v11 + 3) & 1) == 0)
    {
      symbols = nanorq_generate_symbols(a1, a4, a5);
      *(v11 + 3) = symbols;
      if (!symbols)
      {
        return 0;
      }
    }

    v16 = (v11 + 4);
    v18 = *(a1 + 112) + a3 - *v11;
    v30 = *(v11 + 3);
    v14 = v11 + 12;
    v13 = v30;
    v17 = (a1 + 112);
    goto LABEL_24;
  }

  v12 = *v11;
  if (v12 <= a3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (*(v11 + 3) != 1)
  {
    if ((v11[1] & 1) == 0)
    {
      v25 = 0;
      v26 = *(a1 + 114) + *(a1 + 116);
      do
      {
        transfer_esi(a1, a4, v25++, v12, *(v11 + 1) + *(v11 + 4) * v26++, a5, 0);
        v12 = *v11;
      }

      while (v25 < v12);
      *(v11 + 2) = 1;
    }

    v27 = *(v11 + 3);
    v14 = v11 + 12;
    memcpy(a2, (*(v14 - 2) + v14[1] * (*(a1 + 114) + a3 + *(a1 + 116))), v27);
    return *v14;
  }

  v15 = *(v11 + 3);
  v14 = v11 + 12;
  v13 = v15;
  v16 = v14 - 2;
  v17 = (a1 + 112);
  v18 = a3;
LABEL_24:
  decode_row(v17, v16, v18, a2, v13);
  return *v14;
}

unint64_t decode_row(unsigned __int16 *a1, uint64_t *a2, int a3, int8x16_t *a4, size_t a5)
{
  bzero(a4, a5);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  result = gen_tuple(a3, a1, &v79);
  LODWORD(v11) = v80;
  if (!a5)
  {
    v35 = v79 - 1;
    if (v79 > 1)
    {
      do
      {
        LODWORD(v11) = (HIDWORD(v79) + v11) % a1[3];
        --v35;
      }

      while (v35);
      LODWORD(v80) = v11;
    }

    goto LABEL_39;
  }

  v12 = *a2;
  v13 = a2[3] * v80;
  if (a5 < 8 || (v12 + v13 + a5 > a4 ? (v14 = v12 + v13 >= a4->u64 + a5) : (v14 = 1), !v14))
  {
    v15 = 0;
    goto LABEL_11;
  }

  if (a5 >= 0x20)
  {
    v15 = a5 & 0xFFFFFFFFFFFFFFE0;
    v61 = (v13 + v12 + 16);
    v62 = a4 + 1;
    v63 = a5 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v64 = veorq_s8(*v62, *v61);
      v62[-1] = veorq_s8(v62[-1], v61[-1]);
      *v62 = v64;
      v61 += 2;
      v62 += 2;
      v63 -= 32;
    }

    while (v63);
    if (v15 == a5)
    {
      goto LABEL_13;
    }

    if ((a5 & 0x18) == 0)
    {
LABEL_11:
      v16 = &a4->i8[v15];
      v17 = (v12 + v15 + v13);
      v18 = a5 - v15;
      do
      {
        v19 = *v17++;
        *v16++ ^= v19;
        --v18;
      }

      while (v18);
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  v65 = v15;
  v15 = a5 & 0xFFFFFFFFFFFFFFF8;
  v66 = (v12 + v65 + v13);
  v67 = &a4->i8[v65];
  v68 = v65 - (a5 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v69 = *v66++;
    *v67 = veor_s8(*v67, v69);
    ++v67;
    v68 += 8;
  }

  while (v68);
  if (v15 != a5)
  {
    goto LABEL_11;
  }

LABEL_13:
  v20 = v79;
  if (v79 > 1)
  {
    v21 = HIDWORD(v79);
    for (i = 1; i != v20; ++i)
    {
      v11 = (v21 + v11) % a1[3];
      LODWORD(v80) = v11;
      v23 = a2[3] * v11;
      result = *a2 + v23;
      if (a5 >= 8 && (*a2 + a5 + v23 > a4 ? (v24 = result >= a4->u64 + a5) : (v24 = 1), v24))
      {
        if (a5 < 0x20)
        {
          v25 = 0;
LABEL_32:
          v33 = &a4->i8[v25];
          v34 = v25 - (a5 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            *v33 = veor_s8(*v33, *(result + v25));
            ++v33;
            v25 += 8;
            v34 += 8;
          }

          while (v34);
          v26 = a5 & 0xFFFFFFFFFFFFFFF8;
          if ((a5 & 0xFFFFFFFFFFFFFFF8) == a5)
          {
            continue;
          }

          goto LABEL_25;
        }

        v29 = 0;
        v30 = a5 & 0xFFFFFFFFFFFFFFE0;
        v31 = a4 + 1;
        do
        {
          v32 = veorq_s8(*v31, *(result + v29 + 16));
          v31[-1] = veorq_s8(v31[-1], *(result + v29));
          *v31 = v32;
          v29 += 32;
          v31 += 2;
          v30 -= 32;
        }

        while (v30);
        if ((a5 & 0xFFFFFFFFFFFFFFE0) == a5)
        {
          continue;
        }

        v25 = a5 & 0xFFFFFFFFFFFFFFE0;
        v26 = a5 & 0xFFFFFFFFFFFFFFE0;
        if ((a5 & 0x18) != 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = 0;
      }

LABEL_25:
      v27 = &a4->i8[v26];
      v28 = a5 - v26;
      do
      {
        *v27++ ^= *(result + v26++);
        --v28;
      }

      while (v28);
    }
  }

LABEL_39:
  v36 = a1[5];
  v37 = HIDWORD(v81);
  if (HIDWORD(v81) >= v36)
  {
    do
    {
      v37 = (v81 + v37) % a1[6];
    }

    while (v37 >= v36);
    HIDWORD(v81) = v37;
  }

  if (a5)
  {
    v38 = *a2;
    v39 = a2[3] * (v37 + a1[3]);
    if (a5 < 8 || (v38 + v39 + a5 > a4 ? (v40 = v38 + v39 >= a4->u64 + a5) : (v40 = 1), !v40))
    {
      v41 = 0;
      goto LABEL_52;
    }

    if (a5 >= 0x20)
    {
      v41 = a5 & 0xFFFFFFFFFFFFFFE0;
      v70 = (v39 + v38 + 16);
      v71 = a4 + 1;
      v72 = a5 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v73 = veorq_s8(*v71, *v70);
        v71[-1] = veorq_s8(v71[-1], v70[-1]);
        *v71 = v73;
        v70 += 2;
        v71 += 2;
        v72 -= 32;
      }

      while (v72);
      if (v41 == a5)
      {
        goto LABEL_54;
      }

      if ((a5 & 0x18) == 0)
      {
LABEL_52:
        v42 = &a4->i8[v41];
        v43 = (v38 + v41 + v39);
        v44 = a5 - v41;
        do
        {
          v45 = *v43++;
          *v42++ ^= v45;
          --v44;
        }

        while (v44);
        goto LABEL_54;
      }
    }

    else
    {
      v41 = 0;
    }

    v74 = v41;
    v41 = a5 & 0xFFFFFFFFFFFFFFF8;
    v75 = (v38 + v74 + v39);
    v76 = &a4->i8[v74];
    v77 = v74 - (a5 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v78 = *v75++;
      *v76 = veor_s8(*v76, v78);
      ++v76;
      v77 += 8;
    }

    while (v77);
    if (v41 != a5)
    {
      goto LABEL_52;
    }
  }

LABEL_54:
  v46 = HIDWORD(v80);
  if (HIDWORD(v80) >= 2)
  {
    v47 = v81;
    for (j = 1; j != v46; ++j)
    {
      result = a1[6];
      do
      {
        v37 = (v37 + v47) % result;
      }

      while (v37 >= a1[5]);
      HIDWORD(v81) = v37;
      if (!a5)
      {
        continue;
      }

      v49 = a2[3] * (v37 + a1[3]);
      result = *a2 + v49;
      if (a5 >= 8 && (*a2 + a5 + v49 > a4 ? (v50 = result >= a4->u64 + a5) : (v50 = 1), v50))
      {
        if (a5 < 0x20)
        {
          v51 = 0;
LABEL_76:
          v59 = &a4->i8[v51];
          v60 = v51 - (a5 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            *v59 = veor_s8(*v59, *(result + v51));
            ++v59;
            v51 += 8;
            v60 += 8;
          }

          while (v60);
          v52 = a5 & 0xFFFFFFFFFFFFFFF8;
          if ((a5 & 0xFFFFFFFFFFFFFFF8) == a5)
          {
            continue;
          }

          goto LABEL_69;
        }

        v55 = 0;
        v56 = a5 & 0xFFFFFFFFFFFFFFE0;
        v57 = a4 + 1;
        do
        {
          v58 = veorq_s8(*v57, *(result + v55 + 16));
          v57[-1] = veorq_s8(v57[-1], *(result + v55));
          *v57 = v58;
          v55 += 32;
          v57 += 2;
          v56 -= 32;
        }

        while (v56);
        if ((a5 & 0xFFFFFFFFFFFFFFE0) == a5)
        {
          continue;
        }

        v51 = a5 & 0xFFFFFFFFFFFFFFE0;
        v52 = a5 & 0xFFFFFFFFFFFFFFE0;
        if ((a5 & 0x18) != 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v52 = 0;
      }

LABEL_69:
      v53 = &a4->i8[v52];
      v54 = a5 - v52;
      do
      {
        *v53++ ^= *(result + v52++);
        --v54;
      }

      while (v54);
    }
  }

  return result;
}

void nanorq_encoder_reset(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 144);
  if (v2)
  {
    *(v2 + 2) = 0;
    v3 = *(v2 + 8);
    if (v3)
    {
      bzero(v3, *(v2 + 16) * *(v2 + 32));
    }

    if (*(v2 + 40))
    {
      v4 = 0;
      v5 = 8;
      do
      {
        om_destroy(*(v2 + 56) + v5);
        ++v4;
        v5 += 40;
      }

      while (*(v2 + 40) > v4);
      free(*(v2 + 56));
      *(v2 + 40) = 0;
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
    }

    v7 = *(v2 + 64);
    v6 = v2 + 64;
    if (v7)
    {

      bitmask_reset(v6);
    }
  }
}

uint64_t nanorq_set_repair_factor(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  v3 = v2 + v2 * a2;
  if (a1)
  {
    v4 = HIBYTE(v3) == 0;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4 && v3 >= v2;
  if (v6 == 1)
  {
    *(a1 + 132) = v3;
  }

  return v6;
}

uint64_t nanorq_set_max_esi(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && !HIBYTE(a2))
  {
    if (*(a1 + 112) <= a2)
    {
      *(a1 + 132) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nanorq_decoder_add_symbol(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, int8x8_t a5)
{
  v8 = HIBYTE(a3);
  v9 = a3 & 0xFFFFFF;
  v10 = a1 + 144;
  v11 = *(a1 + 144 + 8 * v8);
  if (!v11)
  {
    v13 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300402CF7215EuLL);
    v11 = v13;
    v14 = *(a1 + 64);
    v15 = v8 >= v14;
    v16 = v8 - v14;
    if (!v15)
    {
      *v13 = *(a1 + 48);
      v17 = *(a1 + 132);
      if (!v17)
      {
        goto LABEL_11;
      }

LABEL_9:
      bitmask_new(v17, __dst);
      *(v11 + 4) = *__dst;
      *(v11 + 10) = v28;
      v18 = *(a1 + 132) - *v11;
      goto LABEL_12;
    }

    if (v16 >= *(a1 + 72))
    {
      *v13 = 0;
      v17 = *(a1 + 132);
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v13 = *(a1 + 56);
      v17 = *(a1 + 132);
      if (v17)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v18 = 0;
LABEL_12:
    om_resize(v11 + 1, *(a1 + 120) + v18, *(a1 + 8));
    *(v10 + 8 * v8) = v11;
    if (v9 > *(a1 + 132))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_13;
  }

  if (v9 > *(a1 + 132))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  if (!bitmask_gaps(v11 + 8, *v11, a5))
  {
    return 1;
  }

  if (bitmask_check(v11 + 8, v9))
  {
    return 2;
  }

  if (v9 >= *v11)
  {
    v29 = 0;
    *__dst = 0u;
    v28 = 0u;
    LODWORD(__dst[0]) = v9;
    om_resize(&__dst[1], 1, *(v11 + 3));
    memcpy(__dst[1], a2, *(v11 + 3));
    v19 = *(v11 + 5);
    if (v19 == *(v11 + 6))
    {
      v20 = 2 * v19;
      v21 = v19 == 0;
      v22 = 2;
      if (!v21)
      {
        v22 = v20;
      }

      *(v11 + 6) = v22;
      v23 = malloc_type_realloc(*(v11 + 7), 40 * v22, 0x101004095F1AE09uLL);
      *(v11 + 7) = v23;
      v19 = *(v11 + 5);
    }

    else
    {
      v23 = *(v11 + 7);
    }

    *(v11 + 5) = v19 + 1;
    v24 = &v23[40 * v19];
    v25 = *__dst;
    v26 = v28;
    *(v24 + 4) = v29;
    *v24 = v25;
    *(v24 + 1) = v26;
  }

  else
  {
    memcpy((*(v11 + 1) + *(v11 + 4) * (v9 + *(a1 + 114) + *(a1 + 116))), a2, *(v11 + 3));
    transfer_esi(a1, v8, v9, *v11, a2, a4, 1);
  }

  bitmask_set(v11 + 8, v9);
  return 0;
}

uint64_t transfer_esi(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = result;
  v9 = *(result + 64);
  v10 = *(result + 8) / *(result + 16);
  v11 = a2 - v9;
  if (a2 >= v9)
  {
    if (v11 >= *(result + 72))
    {
      v12 = 0;
      if (v10 < 1)
      {
        return result;
      }
    }

    else
    {
      v12 = (*(result + 48) * v9 + *(result + 56) * v11) * (*(result + 8) / *(result + 16));
      if (v10 < 1)
      {
        return result;
      }
    }
  }

  else
  {
    v12 = (*(result + 8) / *(result + 16)) * a2 * *(result + 48);
    if (v10 < 1)
    {
      return result;
    }
  }

  v31 = 0;
  v32 = v12;
  v30 = 0;
  v13 = 0;
  v14 = *(result + 88);
  v15 = *(result + 80);
  v16 = *(result + 96) * v15;
  v17 = a4;
  v18 = a3;
  v19 = v12 + v16 * a4;
  v26 = 8 * (a7 != 0);
  v33 = *(result + 8) / *(result + 16);
  v28 = v19;
  v29 = v16;
  do
  {
    v20 = v13;
    v21 = v19 + (v13 - v16) % v14 + (v18 + (v13 - v16) / v14 * v17) * v14;
    if (v20 < v16)
    {
      v22 = v15;
    }

    else
    {
      v22 = v14;
    }

    if (v20 < v16)
    {
      v21 = v20 % v15 + v12 + (v18 + v20 / v15 * v17) * v15;
    }

    v23 = v8[2];
    v24 = v23 * v21;
    if (v23 * v21 < *v8)
    {
      result = (*(a6 + 16))(a6, v24);
      if (result)
      {
        if (v24 + v23 * v22 >= *v8)
        {
          v25 = *v8 - v24;
        }

        else
        {
          v25 = v23 * v22;
        }

        result = (*(a6 + v26))(a6, a5 + v30, v25);
        v31 += result;
        v30 += v25;
      }

      v12 = v32;
      LODWORD(v10) = v33;
      v19 = v28;
      v16 = v29;
    }

    v13 = v20 + v22;
  }

  while (v20 + v22 < v10);
  return result;
}

uint64_t nanorq_num_missing(uint64_t a1, unsigned int a2, int8x8_t a3)
{
  v3 = a1 + 144;
  v4 = *(a1 + 144 + 8 * a2);
  if (!v4)
  {
    v6 = a2;
    v7 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300402CF7215EuLL);
    v4 = v7;
    v8 = *(a1 + 64);
    v9 = v6 >= v8;
    v10 = v6 - v8;
    if (!v9)
    {
      *v7 = *(a1 + 48);
      v11 = *(a1 + 132);
      if (!v11)
      {
        goto LABEL_9;
      }

LABEL_7:
      bitmask_new(v11, &v14);
      *(v4 + 4) = v14;
      v4[10] = v15;
      v12 = *(a1 + 132) - *v4;
LABEL_10:
      om_resize(v4 + 1, *(a1 + 120) + v12, *(a1 + 8));
      *(v3 + 8 * v6) = v4;
      return bitmask_gaps(v4 + 8, *v4, a3);
    }

    if (v10 >= *(a1 + 72))
    {
      *v7 = 0;
      v11 = *(a1 + 132);
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *v7 = *(a1 + 56);
      v11 = *(a1 + 132);
      if (v11)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  return bitmask_gaps(v4 + 8, *v4, a3);
}

uint64_t nanorq_num_repair(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 144;
  v3 = *(a1 + 144 + 8 * a2);
  if (v3)
  {
    return *(v3 + 40);
  }

  v6 = a2;
  v7 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300402CF7215EuLL);
  v8 = v7;
  v9 = *(a1 + 64);
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (v10)
  {
    if (v11 >= *(a1 + 72))
    {
      *v7 = 0;
      v12 = *(a1 + 132);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *v7 = *(a1 + 56);
      v12 = *(a1 + 132);
      if (v12)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  *v7 = *(a1 + 48);
  v12 = *(a1 + 132);
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_8:
  bitmask_new(v12, &v14);
  *(v8 + 4) = v14;
  *(v8 + 10) = v15;
  v13 = *(a1 + 132) - *v8;
LABEL_11:
  om_resize(v8 + 1, *(a1 + 120) + v13, *(a1 + 8));
  *(v2 + 8 * v6) = v8;
  return *(v8 + 5);
}

BOOL nanorq_repair_block(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a1 + 144;
  v7 = *(a1 + 144 + 8 * a3);
  if (!v7)
  {
    v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300402CF7215EuLL);
    v7 = v8;
    v9 = *(a1 + 64);
    v10 = a3 >= v9;
    v11 = a3 - v9;
    if (v10)
    {
      if (v11 >= *(a1 + 72))
      {
        *v8 = 0;
        v12 = *(a1 + 132);
        if (v12)
        {
          goto LABEL_4;
        }
      }

      else
      {
        *v8 = *(a1 + 56);
        v12 = *(a1 + 132);
        if (v12)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      *v8 = *(a1 + 48);
      v12 = *(a1 + 132);
      if (v12)
      {
LABEL_4:
        bitmask_new(v12, &v57);
        *(v7 + 4) = v57;
        *(v7 + 10) = v58;
        v13 = *(a1 + 132) - *v7;
LABEL_10:
        om_resize(v7 + 1, *(a1 + 120) + v13, *(a1 + 8));
        *(v6 + 8 * a3) = v7;
        goto LABEL_11;
      }
    }

    v13 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v57 = 0u;
  v58 = 0u;
  v14 = *(v7 + 10);
  v15 = bitmask_gaps(v7 + 8, *v7, 0);
  v16 = v15;
  if (!v15)
  {
    return 1;
  }

  if (v14 < v15 || *(v7 + 2) < *(a1 + 120) + v14 - v15)
  {
    return 0;
  }

  v54 = a3;
  v55 = v14 - v15;
  v53 = a2;
  v17 = *v7;
  v18 = *(v7 + 10);
  if (*v7)
  {
    v19 = v18 < 1;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 114) + *(a1 + 116);
    do
    {
      if ((bitmask_check(v7 + 8, v21) & 1) == 0)
      {
        memcpy((*(v7 + 1) + *(v7 + 4) * (v23 + v21)), *(*(v7 + 7) + 40 * v22++ + 8), *(v7 + 3));
      }

      ++v21;
    }

    while (v21 < v17 && v22 < v18);
  }

  v24 = v18 - v22;
  if (v18 > v22)
  {
    v25 = *(a1 + 120);
    v26 = 40 * v22 + 8;
    do
    {
      memcpy((*(v7 + 1) + *(v7 + 4) * v25++), *(*(v7 + 7) + v26), *(v7 + 3));
      v26 += 40;
      --v24;
    }

    while (v24);
  }

  v27 = precode_matrix_gen((a1 + 112), v55);
  v28 = 0;
  v29 = *(a1 + 112) - *v7;
  LODWORD(v30) = *(a1 + 120);
  v56 = v16;
  if (v16 >= 1 && *(a1 + 120))
  {
    v31 = 0;
    v32 = 0;
    v33 = v16;
    do
    {
      if ((bitmask_check(v7 + 8, v31) & 1) == 0)
      {
        v35 = *(a1 + 116);
        v36 = *(a1 + 114);
        v37 = v32 + 1;
        v38 = *(*(v7 + 7) + 40 * v32);
        spmat_clear_row(v27, v31 + v35 + v36);
        params_set_idxs(v38 + v29, (a1 + 112), (*(v27 + 1) + 24 * (v31 + v35 + v36)));
        --v33;
        v32 = v37;
      }

      ++v31;
      v30 = *(a1 + 120);
    }

    while (v31 < v30 && v33 > 0);
    v28 = v32;
  }

  if (*v27 > v30)
  {
    v39 = v30;
    v40 = 40 * v28;
    v41 = 24 * v30;
    do
    {
      v42 = *(*(v7 + 7) + v40);
      spmat_clear_row(v27, v39);
      params_set_idxs(v42 + v29, (a1 + 112), (*(v27 + 1) + v41));
      ++v39;
      v40 += 40;
      v41 += 24;
    }

    while (v39 < *v27);
  }

  v43 = precode_matrix_invert((a1 + 112), v27);
  if (!v43)
  {
    om_destroy(&v57);
    return 0;
  }

  v44 = v43;
  precode_matrix_intermediate(a1 + 112, (v7 + 4), v43);
  sched_free(v44);
  v45 = *v7;
  v46 = v56;
  om_resize(&v57, v56, *(v7 + 3));
  if (v56 >= 1 && v45)
  {
    v47 = 0;
    v48 = 0;
    do
    {
      if ((bitmask_check(v7 + 8, v47) & 1) == 0)
      {
        decode_row((a1 + 112), v7 + 1, v47, (v57 + *(&v58 + 1) * v48++), v58);
        --v46;
      }

      ++v47;
    }

    while (v47 < v45 && v46 > 0);
  }

  v49 = *v7;
  if (*v7)
  {
    v50 = 0;
    v51 = 0;
    do
    {
      if (*(&v57 + 1) <= v51)
      {
        break;
      }

      if ((bitmask_check(v7 + 8, v50) & 1) == 0)
      {
        transfer_esi(a1, v54, v50, v49, v57 + *(&v58 + 1) * v51, v53, 1);
        bitmask_set(v7 + 8, v50);
        ++v51;
      }

      ++v50;
    }

    while (v49 != v50);
  }

  om_destroy(&v57);
  return nanorq_num_missing(a1, v54, v52) == 0;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

NSObject *NSErrorFromNWError(NSObject *a1)
{
  if (a1)
  {
    a1 = nw_error_copy_cf_error(a1);
    v1 = vars8;
  }

  return a1;
}

__CFString *NSStringFromNWListenerState(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2798EC040[a1];
  }
}

__CFString *NSStringFromNWConnectionState(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2798EC010[a1];
  }
}

__CFString *NSStringFromNWConnectionGroupState(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2798EC040[a1];
  }
}

id NSStringFromIn6Addr(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = inet_ntop(30, a1, v4, 0x2Eu);
  if (v1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id NSStringFromEtherAddr(const ether_addr *a1)
{
  v1 = ether_ntoa(a1);
  if (v1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  }

  return v1;
}

id NSStringFromIfIndex(unsigned int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = if_indextoname(a1, v4);
  if (v1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id ipv6AddressForInterface(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v11 = 0;
  v2 = 0;
  if (!getifaddrs(&v11))
  {
    v3 = v11;
    if (v11)
    {
      while (1)
      {
        if (v3->ifa_addr->sa_family == 30)
        {
          v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3->ifa_name];
          v5 = [v4 isEqualToString:v1];

          if (v5)
          {
            break;
          }
        }

        v3 = v3->ifa_next;
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      v6 = inet_ntop(30, &v3->ifa_addr->sa_data[6], v12, 0x2Eu);
      if (v6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        if (v7)
        {
          v8 = v7;
          v2 = [v7 stringByAppendingFormat:@"%%%@", v1];

          if (!v11)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

LABEL_11:
      v2 = 0;
      if (!v11)
      {
        goto LABEL_13;
      }

LABEL_12:
      MEMORY[0x259CAE240]();
    }
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_259B273DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259B273F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259B2A008(_Unwind_Exception *a1)
{
  (*(*(v1 - 448) + 16))();
  (*(*(v1 - 480) + 16))();
  (*(*(v1 - 432) + 16))();
  _Unwind_Resume(a1);
}

void sub_259B2A094(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_259B2A554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v2 = MEMORY[0x2822026A8](__x, __y);
  result.rem = v3;
  result.quot = v2;
  return result;
}