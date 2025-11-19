uint64_t FKPrintLinesegList(uint64_t result, int a2)
{
  if (a2 != -1)
  {
    v2 = result;
    do
    {
      v3 = *(v2 + 256) + 8 * a2;
      if (*(v3 + 4))
      {
        v4 = a2 - *(v3 + 4);
      }

      else
      {
        v4 = -1;
      }

      result = printf("%6d: %6d %6d %2d %4d %4d %4d\n", a2, v4, *v3 >> 8, *v3 & 3, ((*v3 >> 2) + *(*(v2 + 264) + 2 * (a2 >> 6))), (*(v3 - 2) + 1), *(v3 + 6));
      if (!*(v3 + 4))
      {
        break;
      }

      a2 = ((v3 - *(v2 + 256)) >> 3) - *(v3 + 4);
    }

    while (a2 != -1);
  }

  return result;
}

uint64_t FKComponentPrint(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 80);
  v5 = *(a2 + 82) - v4;
  v6 = (v5 + 1);
  v7 = *(a2 + 84);
  v8 = *(a2 + 86) - v7;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v30 - v9;
  memset(v30 - v9, 46, v11);
  printf("Color: %d\n", *(a2 + 92));
  printf("Size: %dx%d\n", v5 + 1, v8 + 1);
  v12 = *(a2 + 12);
  if (v12 != -1)
  {
    v13 = *(a1 + 256);
    v14 = *(a1 + 264);
    do
    {
      v15 = (v13 + 8 * v12);
      v16 = v15[3];
      v17 = *(v15 - 1) + 1;
      if (v16 >= v17)
      {
        v18 = v16 - v17 + 1;
        v19 = (((*v15 >> 2) + *(v14 + 2 * (v12 >> 6))) - v7) * v6 - v4 + v17;
        do
        {
          v10[v19++] = 64;
          --v18;
        }

        while (v18);
      }

      v20 = v15[2];
      v12 -= v20;
      if (v20)
      {
        v21 = v12 == -1;
      }

      else
      {
        v21 = 1;
      }
    }

    while (!v21);
  }

  if ((v8 & 0x80000000) == 0)
  {
    v22 = 0;
    v23 = (v8 + 1);
    do
    {
      v24 = (v5 + 1);
      v25 = v10;
      if ((v5 & 0x80000000) == 0)
      {
        do
        {
          v26 = *v25++;
          putchar(v26);
          --v24;
        }

        while (v24);
      }

      putchar(10);
      ++v22;
      v10 += v6;
    }

    while (v22 != v23);
  }

  v27 = *MEMORY[0x1E69E9858];
  v28 = *MEMORY[0x1E69E9840];

  return fflush(v27);
}

uint64_t FKConcompRelease(uint64_t result, int a2, char a3)
{
  if (a2 != -1)
  {
    v3 = *(result + 280);
    v4 = v3 + 100 * a2;
    *(v4 + 94) = a3;
    v7 = v4 + 4;
    v5 = *(v4 + 4);
    v6 = *(v7 + 4);
    v8 = (v3 + 100 * v5 + 8);
    if (v5 == -1)
    {
      v8 = (result + 300);
    }

    *v8 = v6;
    if (v6 == -1)
    {
      *(result + 296) = v5;
    }

    else
    {
      *(v3 + 100 * v6 + 4) = v5;
    }

    v9 = *(result + 304);
    v10 = v3 + 100 * a2;
    v11 = 100 * a2;
    *(result + 304) = a2;
    *(v10 + 4) = v9;
    *(v10 + 8) = -2;
    *(v10 + 80) = -1;
    *(v10 + 40) = 0;
    v12 = *(result + 280);
    v13 = 4;
    do
    {
      *(v12 + v11 + 24) = 0;
      v12 = *(result + 280);
      *(v12 + v11 + 48) = 0;
      v11 += 4;
      --v13;
    }

    while (v13);
    *(v12 + 100 * a2 + 64) = -1;
    ++*(result + 292);
  }

  return result;
}

uint64_t FKConcompCreateSubConcomp(size_t a1, int a2, _WORD *a3, uint64_t a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 280) + 100 * a2;
  v7 = *(v6 + 80);
  v8 = *a3 != 0;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 0x40000000;
  v60 = __FKConcompCreateSubConcomp_block_invoke;
  v61 = &__block_descriptor_tmp_0;
  v63 = a4;
  v64 = v7;
  v65 = v8;
  v62 = a3;
  v9 = *(v6 + 12);
  v10 = *(a1 + 276);
  v11 = (v10 - 1) & 0x3F;
  if (1 - v10 >= 0)
  {
    v11 = -((1 - v10) & 0x3F);
  }

  v12 = v10 - v11 + 63;
  *(a1 + 276) = v12;
  if (v9 == -1)
  {
LABEL_45:
    *(a1 + 276) = v10;
LABEL_47:
    v46 = 0xFFFFFFFFLL;
    goto LABEL_48;
  }

  v58 = v10;
  v56 = v12;
  v13 = 0;
  v14 = 0;
  v15 = 0x7FFFFFFF;
  do
  {
    v16 = (*(a1 + 256) + 8 * v9);
    v17 = (*(v16 - 1) + 1) | (v16[3] << 16);
    v18 = (*v16 >> 2) + *(*(a1 + 264) + 2 * (v9 >> 6));
    v19 = v16[2];
    v69[0] = 0;
    v67[0] = 0;
    v66 = 0;
    v20 = v18;
    v4 = v17 | v4 & 0xFFFFFFFF00000000;
    if ((v60)(v59, v4, v18, v69, v67, &v66))
    {
      if (v15 != 0x7FFFFFFF && v15 - 1 > v20)
      {
        *(a1 + 276) = v58;
        goto LABEL_47;
      }

      if (v20 <= 0x3F)
      {
        v21 = 63;
      }

      else
      {
        v21 = v20;
      }

      v22 = v21 - 63;
      if ((v14 & 0x3F) == 0)
      {
        v13 = v22;
      }

      createNewLineseg(a1, v20, v69[0], v67[0], *v16 & 3, 1, v13);
      ++v14;
      v15 = v20;
    }

    if (v66)
    {
      break;
    }

    v9 -= v19;
  }

  while (v19 && v9 != -1);
  v10 = v58;
  if (!v14)
  {
    goto LABEL_45;
  }

  if (1 - 2 * v14 >= 0)
  {
    v24 = -((1 - 2 * v14) & 0x3F);
  }

  else
  {
    v24 = (2 * v14 - 1) & 0x3F;
  }

  v25 = (63 - v24) >> 1;
  if (v24 != 63)
  {
    v26 = (63 - v24) >> 1;
    do
    {
      createNewLineseg(a1, v13, 0, 0, 2u, 1, -1);
      --v26;
    }

    while (v26);
  }

  v27 = *(a1 + 276);
  v28 = v27 - v56;
  v29 = (v27 - v56) / 2;
  if (v27 - v56 >= 2)
  {
    LODWORD(v30) = (v29 + 1) >> 1;
    if (v30 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v30;
    }

    v31 = 8 * v56;
    v32 = -2;
    do
    {
      v33 = *(a1 + 256);
      v34 = 8 * (v32 + *(a1 + 276));
      v35 = *(v33 + v31);
      *(v33 + v31) = *(v33 + v34);
      *(v33 + v34) = v35;
      v32 -= 2;
      v31 += 16;
      --v30;
    }

    while (v30);
    v27 = *(a1 + 276);
    v28 = v27 - v56;
  }

  v36 = v28 >> 6;
  if (v36 > 1)
  {
    v37 = v36 >> 1;
    v38 = v27 >> 6;
    v39 = *(a1 + 264);
    v40 = (v39 + 2 * (v56 >> 6));
    v41 = (v39 + 2 * v38 - 2);
    do
    {
      v42 = *v40;
      *v40++ = *v41;
      *v41-- = v42;
      --v37;
    }

    while (v37);
  }

  v43 = v29 - v25;
  if ((v29 - v25) < 1)
  {
    goto LABEL_47;
  }

  v44 = v56 - v24 + 64;
  v45 = 8 * v44;
  v46 = 0xFFFFFFFFLL;
  do
  {
    v47 = *(a1 + 256);
    v48 = v47 + v45;
    if (v46 == -1)
    {
      createConcompFromLineseg(a1, v47 + v45, 0);
      v46 = (*v48 >> 8);
      v53 = *(a1 + 280) + 100 * v46;
      *(v53 + 93) = 0;
      *(v53 + 96) = 1;
    }

    else
    {
      v49 = *(*(a1 + 280) + 100 * v46 + 12);
      v68 = 0;
      v69[0] = v44;
      v70 = 0;
      v69[1] = (*(v48 - 2) + 1) | (*(v48 + 6) << 16);
      v50 = *(a1 + 264);
      v51 = *v48;
      LOWORD(v70) = (*v48 >> 2) + *(v50 + 2 * (v44 >> 6));
      HIWORD(v70) = v51 & 3;
      v52 = v47 + 8 * v49;
      v67[0] = v49;
      v67[1] = (*(v52 - 2) + 1) | (*(v52 + 6) << 16);
      LODWORD(v52) = *v52;
      LOWORD(v68) = (v52 >> 2) + *(v50 + 2 * (v49 >> 6));
      HIWORD(v68) = v52 & 3;
      addScansegToScansegList(a1, v69, v67);
    }

    v44 += 2;
    v45 += 16;
    --v43;
  }

  while (v43);
  if (v46 != -1)
  {
    *(*(a1 + 280) + 100 * v46 + 94) = *(*(a1 + 280) + 100 * a2 + 94);
  }

LABEL_48:
  v54 = *MEMORY[0x1E69E9840];
  return v46;
}

BOOL __FKConcompCreateSubConcomp_block_invoke(uint64_t a1, unsigned int a2, int a3, int *a4, int *a5)
{
  v5 = HIWORD(a2);
  v6 = a3 - *(a1 + 52);
  v7 = *(a1 + 48);
  v8 = v7 + *(a1 + 56) + *(*(a1 + 32) + 2 * v6);
  v9 = v7 + *(*(a1 + 40) + 2 * v6) - 1;
  if (v8 <= a2)
  {
    v8 = a2;
  }

  if (v9 < HIWORD(a2))
  {
    v5 = v9;
  }

  *a4 = v8;
  *a5 = v5;
  return v8 <= v5;
}

size_t FKComponentsFind(size_t result)
{
  v1 = result;
  *(result + 276) = 0;
  *(result + 248) = 0;
  *(result + 296) = -1;
  *(result + 304) = 0;
  v2 = *(result + 288);
  v3 = *(result + 280);
  v4 = (v2 - 1);
  if (v2 <= 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v5 = vdupq_n_s64(v4 - 1);
    v6 = (v2 + 2) & 0xFFFFFFFC;
    v7 = xmmword_1E1157200;
    v8 = xmmword_1E1157210;
    v9 = (v3 + 204);
    v10 = vdupq_n_s64(1uLL);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v5, v8));
      v13 = vaddq_s64(v8, v10);
      if (vuzp1_s16(v12, *v5.i8).u8[0])
      {
        *(v9 - 50) = v13.i32[0];
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v9 - 25) = v13.i32[2];
      }

      v14 = vaddq_s64(v7, v10);
      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v9 = v14.i32[0];
        v9[25] = v14.i32[2];
      }

      v7 = vaddq_s64(v7, v11);
      v8 = vaddq_s64(v8, v11);
      v9 += 100;
      v6 -= 4;
    }

    while (v6);
  }

  *(v3 + 100 * v4 + 4) = -1;
  *(result + 292) = v2;
  if (*(result + 32) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = 0;
      v17 = *(v1 + 200) + *(v1 + 224) * v15;
      v18 = *(v1 + 28);
      do
      {
        v19 = v16;
        v20 = *(v17 + v16);
        v21 = (v17 + v16);
        while (1)
        {
          v22 = *v21++;
          if (v22 != v20)
          {
            break;
          }

          if (v18 == ++v16)
          {
            v16 = v18;
            break;
          }
        }

        if (v16 - v19 <= 1 && *(v1 + 308))
        {
          continue;
        }

        v23 = *(v1 + 248);
        v24 = (*(v1 + 232) + 12 * v23);
        *(v1 + 248) = (v23 + 1) & *(v1 + 244);
        *(v24 + 4) = v15;
        *(v24 + 2) = v19;
        *(v24 + 3) = v16 - 1;
        *(v24 + 10) = v20;
        if (v19)
        {
          v25 = *(v1 + 276);
          v26 = v25 >= 1 && v19 - *(*(v1 + 256) + 8 * v25 - 2) > 1;
        }

        else
        {
          v26 = 1;
        }

        result = createNewLineseg(v1, v15, v19, v16 - 1, v20, v26, -1);
        if (!result)
        {
          continue;
        }

        *v24 = (result - *(v1 + 256)) >> 3;
        for (i = *(v1 + 252); ; *(v1 + 252) = i)
        {
          v28 = *(v1 + 232) + 12 * i;
          v29 = *(v28 + 8);
          v30 = *(v24 + 4);
          if ((v30 - 1) <= v29)
          {
            if (v29 >= v30)
            {
              goto LABEL_58;
            }

            v31 = *(v28 + 6);
            if (*(v24 + 2) - 1 <= v31)
            {
              break;
            }
          }

LABEL_43:
          v37 = *(v1 + 308);
          v38 = *(v1 + 244);
          if (v37 >= 1)
          {
            v39 = (*(v1 + 232) + 12 * (v38 & (i - 1)));
            v40 = *(v1 + 256);
            v41 = *(v40 + 8 * *v39) >> 8;
            if (v41 != -1)
            {
              v42 = *(v1 + 280) + 100 * v41;
              if (*(v42 + 72) <= v37 && *(v42 + 82) <= *(v39 + 3) && *(v42 + 86) <= *(v39 + 4))
              {
                v43 = *(v42 + 12);
                if (v43 != -1)
                {
                  do
                  {
                    v44 = v40 + 8 * v43;
                    v45 = *(v44 + 4);
                    v43 -= v45;
                    *v44 |= 0xFFFFFF00;
                    if (v45)
                    {
                      v46 = v43 == -1;
                    }

                    else
                    {
                      v46 = 1;
                    }
                  }

                  while (!v46);
                }

                result = FKConcompRelease(v1, v41, 0);
                i = *(v1 + 252);
                v38 = *(v1 + 244);
              }
            }
          }

          i = (i + 1) & v38;
        }

        v32 = *(v24 + 3);
        if (v32 + 1 < *(v28 + 4))
        {
          goto LABEL_58;
        }

        v33 = *(v24 + 10);
        v34 = *(v28 + 10);
        if (v34 == 2 || v33 == 2 || v34 == v33)
        {
          result = addScansegToScansegList(v1, v24, v28);
          v31 = *(v28 + 6);
          v32 = *(v24 + 3);
        }

        if (v31 <= v32)
        {
          i = *(v1 + 252);
          goto LABEL_43;
        }

        if (v32 + 1 == *(v28 + 4))
        {
          *(v1 + 252) = (*(v1 + 252) - 1) & *(v1 + 244);
        }

LABEL_58:
        v47 = (*(v1 + 256) + 8 * *v24);
        if (*v47 >= 0xFFFFFF00)
        {
          result = createConcompFromLineseg(v1, v47, 1);
        }
      }

      while (v16 != v18);
      ++v15;
    }

    while (v15 < *(v1 + 32));
    v48 = *(v1 + 296);
    if (v48 != -1)
    {
      do
      {
        v49 = *(v1 + 280) + 100 * v48;
        v50 = *(v49 + 4);
        if (*(v49 + 92) == 2)
        {
          v51 = v1;
          v52 = 4;
        }

        else
        {
          if (*(v49 + 72) >= *(v1 + 24))
          {
            if (*(v1 + 8) && (!*(v49 + 80) || *(v1 + 28) - 1 == *(v49 + 82) || !*(v49 + 84) || *(v1 + 32) - 1 == *(v49 + 86)))
            {
              *(v49 + 94) = 4;
            }

            goto LABEL_68;
          }

          v51 = v1;
          v52 = 2;
        }

        result = FKConcompRelease(v51, v48, v52);
LABEL_68:
        v48 = v50;
      }

      while (v50 != -1);
    }
  }

  return result;
}

uint64_t createNewLineseg(uint64_t a1, int a2, __int16 a3, __int16 a4, unsigned __int8 a5, int a6, int a7)
{
  if (a6)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = *(a1 + 272);
  if (*(a1 + 276) + v14 <= v15)
  {
    goto LABEL_10;
  }

  if (v15 / 2 > v14)
  {
    v14 = v15 / 2;
  }

  v16 = v14 + v15;
  v17 = malloc_type_realloc(*(a1 + 256), 8 * (v14 + v15), 0x100004000313F17uLL);
  if (!v17)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = "Could not create more linesegments\n";
    v26 = 35;
LABEL_30:
    fwrite(v25, v26, 1uLL, v24);
    fwrite("Could not create more linesegments\n", 0x23uLL, 1uLL, *MEMORY[0x1E69E9848]);
    return 0;
  }

  *(a1 + 256) = v17;
  v18 = malloc_type_realloc(*(a1 + 264), 2 * (v16 >> 6) + 2, 0x1000040BDFB0063uLL);
  if (!v18)
  {
    v24 = *MEMORY[0x1E69E9848];
    v25 = "Could not create more linesegments row indices\n";
    v26 = 47;
    goto LABEL_30;
  }

  *(a1 + 264) = v18;
  *(a1 + 272) = v16;
LABEL_10:
  v19 = *(a1 + 256);
  v20 = *(a1 + 276);
  if (a6)
  {
    v21 = v20 + 1;
    v22 = v19 + 8 * v20;
    if (a7 >= 0)
    {
      v23 = a7;
    }

    else
    {
      v23 = a2;
    }

    if ((v20 & 0x3F) != 0)
    {
      if (a7 < 0)
      {
        v23 = *(*(a1 + 264) + 2 * (v20 >> 6));
      }
    }

    else
    {
      *(*(a1 + 264) + 2 * (v20 >> 6)) = v23;
    }

    *v22 = (4 * (a2 - v23)) | 0xFFFFFF02;
    *(v22 + 4) = 0;
    *(v22 + 6) = a3 - 1;
  }

  else
  {
    v21 = *(a1 + 276);
  }

  *(a1 + 276) = v21 + 1;
  result = v19 + 8 * v21;
  if (a7 >= 0)
  {
    v28 = a7;
  }

  else
  {
    v28 = a2;
  }

  if ((v21 & 0x3F) != 0)
  {
    if (a7 < 0)
    {
      v28 = *(*(a1 + 264) + 2 * (v21 >> 6));
    }
  }

  else
  {
    *(*(a1 + 264) + 2 * (v21 >> 6)) = v28;
  }

  *result = a5 | (4 * (a2 - v28)) | 0xFFFFFF00;
  *(result + 4) = 0;
  *(result + 6) = a4;
  return result;
}

size_t createConcompFromLineseg(size_t result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = *(result + 304);
  if (v5 != -1)
  {
LABEL_27:
    v18 = *(v4 + 280) + 100 * v5;
    *(v4 + 304) = *(v18 + 4);
    --*(v4 + 292);
    v19 = *(a2 + 6);
    v20 = *(a2 - 2) + 1;
    v21 = (a2 - *(v4 + 256)) >> 3;
    v22 = (*a2 >> 2) + *(*(v4 + 264) + 2 * (v21 >> 6));
    v23 = v19 - v20;
    v24 = *a2 & 3;
    *a2 = *a2 | (v5 << 8);
    *(v18 + 84) = v22;
    *(v18 + 86) = v22;
    *(v18 + 80) = v20;
    *(v18 + 82) = v19;
    *(v18 + 92) = v24;
    *(v18 + 88) = 0;
    *(v18 + 72) = v23 + 1;
    *(v18 + 76) = 2 * v23 + 4;
    *(v18 + 16) = v21;
    *(v18 + 20) = 1;
    *(v18 + 40) = 0;
    *(v18 + 90) = v23 + 1;
    *(v18 + 64) = -1;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 52) = 0;
    *(v18 + 44) = 0;
    *(v18 + 60) = 0;
    *(v18 + 93) = 0;
    v25 = *(v4 + 300);
    *(v18 + 8) = v25;
    *(v18 + 12) = v21;
    *(v4 + 300) = v5;
    *v18 = -1;
    *(v18 + 4) = -1;
    if (v25 == -1)
    {
      *(v4 + 296) = v5;
    }

    else
    {
      *(*(v4 + 280) + 100 * v25 + 4) = v5;
    }

    return result;
  }

  v6 = *(result + 288);
  if (a3 && v6 >= 0x8000)
  {
    v7 = *(result + 308);
    do
    {
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(v4 + 296);
      if (v9 == -1)
      {
        v5 = -1;
      }

      else
      {
        v10 = ((*a2 >> 2) + *(*(v4 + 264) + 2 * (((a2 - *(v4 + 256)) >> 3) >> 6))) - 2;
        do
        {
          v11 = *(v4 + 280) + 100 * v9;
          v12 = *(v11 + 4);
          if (v10 > *(v11 + 86) && *(v11 + 72) <= v8)
          {
            v13 = *(v11 + 12);
            if (v13 != -1)
            {
              v14 = *(v4 + 256);
              do
              {
                v15 = v14 + 8 * v13;
                v16 = *(v15 + 4);
                v13 -= v16;
                *v15 |= 0xFFFFFF00;
                if (v16)
                {
                  v17 = v13 == -1;
                }

                else
                {
                  v17 = 1;
                }
              }

              while (!v17);
            }

            result = FKConcompRelease(v4, v9, 0);
          }

          v9 = v12;
        }

        while (v12 != -1);
        v5 = *(v4 + 304);
        v7 = *(v4 + 308);
      }

      if (v7 < 1)
      {
        v7 = 1;
      }

      else
      {
        v7 *= 2;
      }

      *(v4 + 308) = v7;
    }

    while (v5 == -1);
    goto LABEL_27;
  }

  if (v6 >= 0x800000)
  {
    v26 = 0xFFFFFF;
  }

  else
  {
    v26 = 2 * v6;
  }

  result = malloc_type_realloc(*(result + 280), 100 * v26, 0x1000040D2C85C19uLL);
  v27 = MEMORY[0x1E69E9848];
  if (result && (v5 = *(v4 + 288), *(v4 + 280) = result, v26 != v5))
  {
    *(v4 + 304) = v5;
    *(v4 + 292) = v26 - v5;
    v29 = v26 - 1;
    if (v5 < v26 - 1)
    {
      v30 = 0;
      v31 = v29 - v5;
      v32 = vdupq_n_s64(v5);
      v33 = vaddq_s64(v32, xmmword_1E1157200);
      v34 = vaddq_s64(v32, xmmword_1E1157210);
      v35 = vdupq_n_s64(v31 - 1);
      v36 = (result + 100 * v5 + 204);
      v37 = vdupq_n_s64(1uLL);
      v38 = vdupq_n_s64(4uLL);
      do
      {
        v39 = vdupq_n_s64(v30);
        v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_1E1157210)));
        v41 = vaddq_s64(v34, v37);
        if (vuzp1_s16(v40, 2).u8[0])
        {
          *(v36 - 50) = v41.i32[0];
        }

        if (vuzp1_s16(v40, 2).i8[2])
        {
          *(v36 - 25) = v41.i32[2];
        }

        v42 = vorrq_s8(v39, xmmword_1E1157200);
        v43 = vaddq_s64(v33, v37);
        if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v35, v42))).i32[1])
        {
          *v36 = v43.i32[0];
          v36[25] = v43.i32[2];
        }

        v30 += 4;
        v33 = vaddq_s64(v33, v38);
        v34 = vaddq_s64(v34, v38);
        v36 += 100;
      }

      while (((v31 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v30);
    }

    *(result + 100 * v29 + 4) = -1;
    *(v4 + 288) = v26;
    if (v5 != -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    fwrite("Could not create more concomps\n", 0x1FuLL, 1uLL, *v27);
  }

  v28 = *v27;

  return fwrite("Could not get a free connected component\n", 0x29uLL, 1uLL, v28);
}

uint64_t addScansegToScansegList(uint64_t result, int *a2, int *a3)
{
  v4 = result;
  v5 = *(a2 + 2);
  v6 = *(a3 + 2);
  if (v5 > v6)
  {
    v6 = *(a2 + 2);
  }

  v7 = *(a2 + 3);
  v8 = *(a3 + 3);
  if (v7 < v8)
  {
    v8 = *(a2 + 3);
  }

  v9 = v6 - v8;
  if (v9 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  v11 = ~v10;
  v12 = v7 - v5;
  v13 = *(result + 256);
  v14 = *a2;
  v15 = v13 + 8 * v14;
  v16 = *v15 >> 8;
  v17 = *(v13 + 8 * *a3);
  v18 = v17 >> 8;
  if (v16 == -1)
  {
    v21 = v12 + 1;
    *v15 = v17 & 0xFFFFFF00 | *v15;
    v19 = *(result + 280);
    v22 = v19 + 100 * v18;
    v23 = *(v22 + 12);
    if (v23 == -1)
    {
      v24 = 0;
    }

    else
    {
      v24 = v14 - v23;
    }

    *(v15 + 4) = v24;
    *(v22 + 12) = v14;
    v25 = *(a2 + 4);
    v26 = *(v22 + 84);
    if (v25 < v26)
    {
      LOWORD(v26) = *(a2 + 4);
    }

    *(v22 + 84) = v26;
    if (v25 <= *(v22 + 86))
    {
      LOWORD(v25) = *(v22 + 86);
    }

    *(v22 + 86) = v25;
    if (*(v22 + 80) < v5)
    {
      LOWORD(v5) = *(v22 + 80);
    }

    *(v22 + 80) = v5;
    v27 = *(v22 + 82);
    if (v27 <= v7)
    {
      LOWORD(v27) = v7;
    }

    *(v22 + 82) = v27;
    v28 = *(v22 + 76);
    v29 = *(v22 + 72) + v21;
    ++*(v22 + 20);
    *(v22 + 72) = v29;
    *(v22 + 76) = v28 + 2 * (v12 + v11) + 4;
    v30 = *(v22 + 90);
    if (v21 >= v30)
    {
      LOWORD(v30) = v12 + 1;
    }

    *(v22 + 90) = v30;
  }

  else
  {
    v19 = *(result + 280);
    v20 = v19 + 100 * v16;
    if (v16 == v18)
    {
      ++*(v20 + 88);
      *(v20 + 76) += 2 * (v12 + v11) + 4;
      v18 = v16;
    }

    else
    {
      v31 = v19 + 100 * v18;
      v32 = *(v20 + 84);
      v33 = *(v31 + 84);
      if (v32 > v33 || v32 == v33 && *(v20 + 80) > *(v31 + 80))
      {
        v34 = *v15 >> 8;
        v35 = v31;
      }

      else
      {
        v34 = v17 >> 8;
        v35 = v20;
        v20 = v31;
        v18 = *v15 >> 8;
      }

      if (*(v35 + 92) == 2 || *(v20 + 92) == 2)
      {
        *(v35 + 92) = 2;
      }

      v36 = *(v35 + 84);
      if (v36 >= *(v20 + 84))
      {
        LOWORD(v36) = *(v20 + 84);
      }

      *(v35 + 84) = v36;
      v37 = *(v35 + 86);
      if (v37 <= *(v20 + 86))
      {
        LOWORD(v37) = *(v20 + 86);
      }

      *(v35 + 86) = v37;
      v38 = *(v35 + 80);
      if (v38 >= *(v20 + 80))
      {
        LOWORD(v38) = *(v20 + 80);
      }

      *(v35 + 80) = v38;
      v39 = *(v35 + 82);
      if (v39 <= *(v20 + 82))
      {
        LOWORD(v39) = *(v20 + 82);
      }

      *(v35 + 82) = v39;
      v40 = *(v20 + 76);
      v41 = *(v35 + 76);
      v42 = *(v35 + 72) + *(v20 + 72);
      *(v35 + 88) += *(v20 + 88);
      v43 = *(v35 + 16);
      *(v35 + 20) += *(v20 + 20);
      *(v35 + 72) = v42;
      *(v35 + 76) = v41 + v40;
      v44 = *(v35 + 90);
      if (v44 <= *(v20 + 90))
      {
        LOWORD(v44) = *(v20 + 90);
      }

      *(v35 + 90) = v44;
      v46 = *(v20 + 12);
      v45 = *(v20 + 16);
      if (v43 > v45)
      {
        *(v35 + 16) = v45;
      }

      v47 = *(v35 + 12);
      result = FKConcompRelease(result, v34, 0);
      if (v46 != -1)
      {
        v48 = v18 << 8;
        v49 = -1;
        while (v47 != -1)
        {
          v50 = *(v4 + 256);
          if (v46 >= v47)
          {
            v52 = (v50 + 8 * v46);
            *v52 = *v52 | v48;
            if (v49 == -1)
            {
              *(v35 + 12) = v46;
            }

            else
            {
              *(v50 + 8 * v49 + 4) = v49 - v46;
            }

            v54 = *(v52 + 2);
            *(v52 + 2) = v46 - v47;
            if (!v54)
            {
              goto LABEL_66;
            }

            v53 = (v46 - v54);
            v51 = v47;
            LODWORD(v47) = v46;
          }

          else
          {
            if (*(v50 + 8 * v47 + 4))
            {
              v51 = v47 - *(v50 + 8 * v47 + 4);
            }

            else
            {
              v51 = 0xFFFFFFFFLL;
            }

            v53 = v46;
          }

          v49 = v47;
          v46 = v53;
          v47 = v51;
          if (v53 == -1)
          {
            goto LABEL_66;
          }
        }

        v55 = *(v4 + 256);
        *(v55 + 8 * v49 + 4) = v49 - v46;
        do
        {
          v56 = (v55 + 8 * v46);
          *v56 = *v56 | v48;
          LODWORD(v56) = *(v56 + 2);
          LODWORD(v46) = v46 - v56;
          if (v56)
          {
            v57 = v46 == -1;
          }

          else
          {
            v57 = 1;
          }
        }

        while (!v57);
      }

LABEL_66:
      v18 = *v15 >> 8;
      v19 = *(v4 + 280);
      *(v19 + 100 * v18 + 76) = *(v19 + 100 * v18 + 76) - 2 * v10 - 2;
    }
  }

  if (*(a2 + 10) == 2)
  {
    *(v19 + 100 * v18 + 92) = 2;
  }

  return result;
}

void FKSequenceAdjustSlantedLines(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int *a5, int *a6, int *a7)
{
  v7 = *(a3 + 2 * (a4 != 0));
  v8 = *a2;
  v9 = *a5;
  v10 = *a6;
  v12 = a2[1] - v8;
  v11 = (*(a3 + 2 * (a4 == 0)) - v8) << 16;
  v13 = (v11 / v12 * *a6 + (0x10000 - v11 / v12) * *a5) / 0x10000;
  v14 = *(a3 + 4);
  v15 = __OFSUB__(v13, v14);
  v16 = v13 - v14;
  if ((v16 < 0) ^ v15 | (v16 == 0))
  {
    v17 = *a7;
  }

  else
  {
    *a5 = v9 - v16;
    *a6 -= v16;
    v17 = *a7 + v16;
    *a7 = v17;
    v9 = *a5;
    v10 = *a6;
  }

  v18 = *(a3 + 6) - (((v7 - v8) << 16) / v12 * (v10 + v17) + (0x10000 - ((v7 - v8) << 16) / v12) * (v17 + v9)) / 0x10000;
  if (v18 >= 1)
  {
    *a7 = v18 + v17;
  }
}

uint64_t FKSequenceRecalculateBox(uint64_t result, uint64_t a2)
{
  if (*(a2 + 20) >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = sequenceUpdateBoxWithConcomp(v3, a2, v4++);
    }

    while (v4 < *(a2 + 20));
  }

  return result;
}

uint64_t sequenceUpdateBoxWithConcomp(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 280) + 100 * *(*(a2 + 8) + 4 * a3);
  if (a3)
  {
    LODWORD(v4) = *(a2 + 24);
    if (v4 >= *(v3 + 80))
    {
      LOWORD(v4) = *(v3 + 80);
    }

    *(a2 + 24) = v4;
    LODWORD(v5) = *(a2 + 26);
    if (v5 <= *(v3 + 82))
    {
      LOWORD(v5) = *(v3 + 82);
    }

    *(a2 + 26) = v5;
    LODWORD(v6) = *(a2 + 28);
    if (v6 >= *(v3 + 84))
    {
      LOWORD(v6) = *(v3 + 84);
    }

    *(a2 + 28) = v6;
    LODWORD(v7) = *(a2 + 30);
    if (v7 <= *(v3 + 86))
    {
      LOWORD(v7) = *(v3 + 86);
    }

    *(a2 + 30) = v7;
  }

  else
  {
    *(a2 + 92) = *(v3 + 92);
    v4 = *(v3 + 80);
    *(a2 + 24) = v4;
    v5 = v4 >> 16;
    *(a2 + 56) = 0;
    *(a2 + 44) = 0;
    *(a2 + 48) = 0;
    v6 = HIDWORD(v4);
    v7 = HIWORD(v4);
  }

  v8 = 0;
  v9 = 1;
  do
  {
    v10 = *(v3 + 64 + 4 * v8);
    if (v10 == -1)
    {
      break;
    }

    v11 = v9;
    v9 = 0;
    v12 = (*(result + 280) + 100 * v10);
    if (v4 >= v12[40])
    {
      LOWORD(v4) = v12[40];
    }

    if (v5 <= v12[41])
    {
      LOWORD(v5) = v12[41];
    }

    if (v6 >= v12[42])
    {
      LOWORD(v6) = v12[42];
    }

    *(a2 + 24) = v4;
    *(a2 + 26) = v5;
    *(a2 + 28) = v6;
    v13 = v12[43];
    if (v7 <= v13)
    {
      LOWORD(v7) = v13;
    }

    *(a2 + 30) = v7;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  if ((*(v3 + 94) & 8) == 0)
  {
    v14 = *(a2 + 44) + 1;
    v15 = *(a2 + 48) - *(v3 + 84) + *(v3 + 86) + 1;
    *(a2 + 44) = v14;
    *(a2 + 48) = v15;
    v16 = *(a2 + 56) - *(v3 + 80) + *(v3 + 82) + 1;
    *(a2 + 52) = v15 / v14;
    *(a2 + 56) = v16;
    *(a2 + 60) = v16 / v14;
  }

  return result;
}

uint64_t FKSequenceRemoveConcomp(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v6 = *(v5 + 4 * a3);
  v7 = *(a1 + 280);
  LODWORD(v8) = *(a2 + 20) - 1;
  *(a2 + 20) = v8;
  if (v8 > a3)
  {
    v9 = a3;
    v10 = (v5 + 4 * a3 + 4);
    do
    {
      ++v9;
      *(v10 - 1) = *v10;
      v8 = *(a2 + 20);
      ++v10;
    }

    while (v9 < v8);
  }

  v11 = v7 + 100 * v6;
  *v11 = -1;
  *(v11 + 94) = 0;
  if (v8 >= 1)
  {
    v12 = 0;
    do
    {
      sequenceUpdateBoxWithConcomp(a1, a2, v12++);
    }

    while (v12 < *(a2 + 20));
  }

  *(a2 + 93) = 0;
  *(a2 + 95) = 0;
  return v6;
}

uint64_t FKSequenceScoreAsPercent(uint64_t a1, int a2, int a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = (v4 + 100 * a2);
  if (*(v5 + 44))
  {
    return 0;
  }

  v6 = *(v5 + 43);
  v7 = *(v5 + 42);
  v8 = v6 - v7 + 1;
  if (v5[5] - v8 > v8 / 10)
  {
    return 0;
  }

  v9 = *(v5 + 41);
  v10 = *(v5 + 40);
  v11 = v9 - v10;
  if (100 * *(v5 + 45) / (v9 - v10 + 1) > 50)
  {
    return 0;
  }

  v12 = (v4 + 100 * a3);
  if (v12[44] > 1u)
  {
    return 0;
  }

  v13 = v12[43];
  v14 = v12[42];
  v15 = 4 * (v13 - v14) + 4;
  v16 = 3 * v8;
  v17 = v15 > (v6 - v7) && v15 <= v16;
  if (!v17)
  {
    return 0;
  }

  v18 = v12[41];
  v19 = v12[40];
  v20 = v18 - v19 + 1;
  if (v11 >= 4 * v20 || (v18 - v19) > v11)
  {
    return 0;
  }

  v22 = v9 + v10 + 1;
  v23 = (v6 + v7 + 1) >> 1;
  v24 = (v18 + v19 + 1) >> 1;
  v25 = (v13 + v14 + 1) >> 1;
  v27 = v24 > v22 >> 1 && v25 > v23;
  v29 = v24 < v22 >> 1 && v25 < v23 || v27;
  if (a4)
  {
    v30 = 0;
    if (v24 < v10 || v24 > v9 || v25 < v7)
    {
      return v30;
    }

    v31 = v25 <= v6;
  }

  else
  {
    if (v9 >= v18)
    {
      v32 = v12[41];
    }

    else
    {
      v32 = *(v5 + 41);
    }

    if (v10 <= v19)
    {
      v33 = v12[40];
    }

    else
    {
      v33 = *(v5 + 40);
    }

    v34 = v32 - v33;
    v17 = v34 <= 0;
    v35 = 5 * v34;
    v31 = !v17 && v35 > v20;
  }

  if ((v29 & v31) != 1)
  {
    return 0;
  }

  return 10 * scoreForInsideSequence(*(a1 + 312) + 104 * *v5, v12) + 3;
}

uint64_t scoreForInsideSequence(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 26) + *(a1 + 60) / 2;
  v3 = *(a1 + 24);
  v4 = a2[40];
  v5 = a2[41];
  v6 = v3 > v4 || v2 < v5;
  if (!v6 && *(a1 + 28) <= a2[42] && a2[43] <= *(a1 + 30))
  {
    return 3;
  }

  v7 = (v4 + v5 + 1) >> 1;
  v8 = a2[43];
  v9 = a2[42];
  if (v7 >= v3 && v7 <= v2)
  {
    v11 = (v8 + v9 + 1) >> 1;
    if (v11 >= *(a1 + 28) && v11 <= *(a1 + 30))
    {
      return 2;
    }
  }

  return v3 <= v5 && v2 >= v4 && *(a1 + 28) <= v8 && v9 <= *(a1 + 30);
}

void FKSequenceSortAndProcess(void *a1, uint64_t a2, int a3)
{
  if (!*(a2 + 93))
  {
    *(a2 + 95) = 0;
    qsort_r(*(a2 + 8), *(a2 + 20), 4uLL, a1, compareCCX);
    v6 = *(a2 + 20);
    if (v6 < 1)
    {
      v15 = 0;
      v9 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = *(a2 + 8);
      v11 = *(a2 + 20);
      do
      {
        v12 = *v10++;
        v13 = *(a1 + 35) + 100 * v12;
        if (v7)
        {
          v14 = ~*(v7 + 82) + *(v13 + 80);
          v9 += v14;
          v8 -= v14 & (v14 >> 31);
        }

        v7 = v13;
        --v11;
      }

      while (v11);
      v15 = 400 * v8;
      if (v6 != 1)
      {
        v9 /= v6 - 1;
      }
    }

    *(a2 + 64) = v9;
    v16 = v15 / (*(a2 + 60) * v6);
    if (v16 >= 100)
    {
      LOBYTE(v16) = 100;
    }

    *(a2 + 95) = v16;
    sequenceSetSlope(a1, a2);
    if (a3)
    {
      sequenceMarkup(a1, a2);
    }

    *(a2 + 93) = 1;
  }
}

void sequenceSetSlope(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 44);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v43 - ((v6 + 15) & 0x7FFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (v43 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v43 - v11;
  if (v4 < 4)
  {
    goto LABEL_34;
  }

  v13 = *(v2 + 20);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = *(a1 + 280);
    v16 = *(v2 + 8);
    do
    {
      v17 = *v16++;
      v18 = v15 + 100 * v17;
      if ((*(v18 + 94) & 8) == 0)
      {
        *&v7[4 * v14] = (*(v18 + 82) + *(v18 + 80) + 1) >> 1;
        *&v12[4 * v14] = *(v18 + 84);
        v10[v14++] = *(v18 + 86);
      }

      --v13;
    }

    while (v13);
  }

  v19 = computeBeta(v12);
  v20 = computeBeta(v10);
  if (v20 * v19 < 1)
  {
LABEL_34:
    v41 = *(v2 + 28);
    *(v2 + 32) = v41;
    *(v2 + 36) = v41;
    *(v2 + 40) = *(v2 + 30) - v41 + 1;
  }

  else
  {
    if (v20 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = -v20;
    }

    if (v19 >= 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = -v19;
    }

    if (v21 >= v22)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    v24 = *v10;
    v25 = (v2 + 24);
    *(v2 + 36) = *v10 + (((*(v2 + 26) - *(v2 + 24)) * v23) >> 16);
    v26 = (v2 + 36);
    *(v2 + 32) = v24;
    v27 = (v2 + 32);
    v28 = 1;
    *(v2 + 40) = 1;
    v29 = (v2 + 40);
    if (*(v2 + 20) >= 1)
    {
      v30 = 0;
      v31 = v23 >> 31;
      v43[0] = v2;
      do
      {
        v32 = *(a1 + 280) + 100 * *(*(v2 + 8) + 4 * v30);
        FKSequenceAdjustSlantedLines(v20, v25, v32 + 80, v31, v27, v26, v29);
        v33 = 0;
        v34 = v32 + 64;
        v35 = 1;
        do
        {
          v36 = *(v34 + 4 * v33);
          if (v36 == -1)
          {
            break;
          }

          v37 = v35;
          FKSequenceAdjustSlantedLines(v20, v25, *(a1 + 280) + 100 * v36 + 80, v31, v27, v26, v29);
          v35 = 0;
          v33 = 1;
        }

        while ((v37 & 1) != 0);
        ++v30;
        v2 = v43[0];
      }

      while (v30 < *(v43[0] + 20));
      v28 = *v29;
    }

    v38 = *(a1 + 32);
    if (v28 > v38)
    {
      *v29 = v38;
      v28 = v38;
    }

    v39 = *v27;
    if (*v27 < 0)
    {
      v39 = 0;
      *v27 = 0;
    }

    v40 = *v26;
    if (*v26 < 0)
    {
      v40 = 0;
      *v26 = 0;
    }

    if (v28 + v39 > v38)
    {
      *v27 = v38 - v28;
    }

    if (v40 + v28 > v38)
    {
      *v26 = v38 - v28;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t sequenceMarkup(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 44);
  v4 = (MEMORY[0x1EEE9AC00])();
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v75 - ((v7 + 15) & 0x1FFFFFFF0);
  v10 = *(v6 + 20);
  v75 = result;
  v11 = 0;
  if (v10 < 1)
  {
    v20 = 1;
  }

  else
  {
    v12 = *(result + 280);
    v13 = *(v6 + 8);
    v14 = v10;
    do
    {
      v15 = *v13++;
      v16 = v12 + 100 * v15;
      if ((*(v16 + 94) & 8) == 0)
      {
        v17 = &v8[2 * v11];
        *v17 = *(v16 + 84);
        result = *(v16 + 86);
        v17[1] = result;
        v18 = *(v16 + 64);
        if (v18 != -1)
        {
          v19 = *(v12 + 100 * v18 + 86);
          if (result <= v19)
          {
            result = v19;
          }

          else
          {
            result = result;
          }

          v17[1] = result;
        }

        ++v11;
      }

      --v14;
    }

    while (v14);
    v11 = *v8;
    v20 = v8[1] + 1;
  }

  v21 = 0;
  v22 = 0;
  v77 = v6;
  v76 = *(v6 + 52);
  v23 = 7 * v76 + 7;
  if (7 * v76 >= 0)
  {
    v23 = 7 * v76;
  }

  v24 = v23 >> 3;
  v25 = 7 * v76 / 24 + 1;
  v26 = v7 - 1;
  v80 = &v84;
  v27 = vdupq_n_s32(v20);
  v78 = &v83 + 4;
  v79 = &v84 + 4;
  v28 = vdupq_n_s32(v11);
  v29 = v25;
  while (1)
  {
    v30.i32[0] = v24;
    v30.i32[1] = v25 + v24;
    v30.i32[2] = v29 + v24;
    v30.i32[3] = v25 + v24 + v29;
    v31 = vsubq_s32(v27, vaddq_s32(v30, v28));
    v85 = vmulq_s32(v31, v31);
    if (v7 >= 2)
    {
      v32 = 1;
      do
      {
        v33 = 0;
        v34 = 0;
        v9[v32] = 0;
        v35 = &v8[2 * v32];
        v36 = *v35;
        v37 = v35[1];
        v38 = *(v35 - 1);
        v39 = v36 - *(v35 - 2);
        result = (v37 - v38);
        v40 = v24 + v36;
        do
        {
          v41 = 0;
          v42 = 0;
          v43 = v85.i32[v34];
          do
          {
            v44 = v43;
            if (v21)
            {
              if (v42)
              {
                v45 = v25;
              }

              else
              {
                v45 = 0;
              }

              if (v42 >= 2)
              {
                v46 = v29;
              }

              else
              {
                v46 = 0;
              }

              v44 = v43 + (v37 + 1 - (v40 + v46 + v45)) * (v37 + 1 - (v40 + v46 + v45));
            }

            v47 = v44 + (v39 + ((v42 & 1) - (v34 & 1)) * v25) * (v39 + ((v42 & 1) - (v34 & 1)) * v25);
            v48 = result + ((v34 - (v42 & 2)) >> 1) * v29;
            v22 = v47 + v48 * v48;
            if (!v34 || v22 < v86.i32[v42])
            {
              v86.i32[v42] = v22;
              v49 = v33 & ~(3 << v41);
              v33 = v49 | (v34 << v41);
              v9[v32] = v49 | (v34 << v41);
            }

            ++v42;
            v41 += 2;
          }

          while (v42 != 4);
          ++v34;
        }

        while (v34 != 4);
        v85 = v86;
        ++v32;
      }

      while (v32 != v7);
      v2 = v86.i32[0];
    }

    v50 = 0;
    v51 = 0;
    do
    {
      v52 = v2;
      if (!v50 || (v52 = v86.i32[v50], v52 < v22))
      {
        v51 = v50;
        v22 = v52;
      }

      ++v50;
    }

    while (v50 != 4);
    v83 = 0;
    v84 = 0;
    v81 = 0;
    v82 = 0;
    if (v7 >= 1)
    {
      v53 = &v8[2 * v26 + 1];
      v54 = (v7 - 1);
      do
      {
        v55 = v9[v54];
        v9[v54] = v51;
        *(&v83 + v51) = *(&v83 + v51) - *(v53 - 1) + *v53 + 1;
        ++*(&v81 + v51);
        v51 = (v55 >> (2 * v51)) & 3;
        result = v54 - 1;
        v53 -= 2;
      }

      while (v54-- > 0);
    }

    if (v21 == 1)
    {
      break;
    }

    v57 = v7 < 6;
    if (v81 != 1)
    {
      v57 = 0;
    }

    if (v81 > 1 || v57)
    {
      v24 = v83 / v81;
      v59 = v83 / v81 / 3 + 1;
      v60 = HIDWORD(v81);
      v61 = v78;
      if (SHIDWORD(v81) > 1 || (v60 = HIDWORD(v82), v61 = v79, v62 = v24 / 3 + 1, SHIDWORD(v82) >= 2))
      {
        v62 = *v61 / v60 - v24;
      }

      result = (v24 / 6 + 1);
      if (v62 <= result)
      {
        v25 = v24 / 6 + 1;
      }

      else
      {
        v25 = v62;
      }

      v63 = v82;
      v64 = v80;
      if (v82 > 1 || (v63 = HIDWORD(v82), v64 = v79, SHIDWORD(v82) >= 2))
      {
        v59 = *v64 / v63 - v24;
      }

      if (v59 <= v24 / 7 + 1)
      {
        v29 = v24 / 7 + 1;
      }

      else
      {
        v29 = v59;
      }
    }

    else
    {
      if (v82 <= 1)
      {
        break;
      }

      v24 = v84 / v82;
      if (SHIDWORD(v82) < 1)
      {
        v58 = v24 / 3 + 1;
      }

      else
      {
        v58 = SHIDWORD(v84) / SHIDWORD(v82) - v24;
      }

      if (v58 <= v24 / 8)
      {
        v25 = v24 / 8;
      }

      else
      {
        v25 = v58;
      }

      v29 = v25;
    }

    ++v21;
  }

  v65 = ((v22 / (v7 + 2 * v26)) / (v76 * v76)) * 100.0;
  v66 = v77;
  if (v10 >= 1)
  {
    v67 = 0;
    v68 = *(v75 + 280);
    v69 = *(v77 + 8);
    do
    {
      v70 = *v69++;
      v71 = v68 + 100 * v70;
      if ((*(v71 + 94) & 8) == 0)
      {
        v72 = v9[v67++];
        *(v71 + 93) = v72;
      }

      --v10;
    }

    while (v10);
  }

  if (v65 > 1.0)
  {
    v73 = vcvtd_n_f64_s32(((v65 + -1.0) * 100.0), 2uLL);
    if (v73 >= 100)
    {
      LOBYTE(v73) = 100;
    }

    *(v66 + 97) = v73;
  }

  v74 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FKSequencesReplaceConcomp(void *a1, uint64_t a2, int a3, int *a4, int a5)
{
  v9 = a1[39];
  FKSequenceRemoveConcomp(a1, a2, a3);
  if (a5 >= 1)
  {
    v10 = -991146299 * ((a2 - v9) >> 3);
    v11 = a5;
    v12 = a4;
    do
    {
      v13 = *v12++;
      sequenceAddConcomp(a1, v10, v13, 1);
      --v11;
    }

    while (v11);
  }

  FKSequenceSortAndProcess(a1, a2, 0);
  v14 = *(a2 + 20);
  if (v14 < 1)
  {
    return 0;
  }

  result = 0;
  while (a5 < 1)
  {
LABEL_10:
    if (++result == v14)
    {
      return 0;
    }
  }

  v16 = a5;
  v17 = a4;
  while (1)
  {
    v18 = *v17++;
    if (*(*(a2 + 8) + 4 * result) == v18)
    {
      return result;
    }

    if (!--v16)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sequenceAddConcomp(uint64_t a1, int a2, int a3, int a4)
{
  v8 = *(a1 + 312) + 104 * a2;
  v9 = *(a1 + 280) + 100 * a3;
  v10 = *(v8 + 16);
  if (*(v8 + 20) >= v10)
  {
    if (v10)
    {
      *(v8 + 16) = 2 * v10;
      v11 = malloc_type_realloc(*(v8 + 8), 8 * v10, 0x100004052888210uLL);
    }

    else
    {
      *(v8 + 16) = 32;
      v11 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
    }

    *(v8 + 8) = v11;
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = *(v8 + 20);
  *(v8 + 20) = v12 + 1;
  v11[v12] = a3;
  if (a4)
  {
    *(v9 + 94) = a4;
  }

  *v9 = a2;
  result = sequenceUpdateBoxWithConcomp(a1, v8, *(v8 + 20) - 1);
  *(v8 + 93) = 0;
  return result;
}

uint64_t FKSequencesFind(int *a1)
{
  *v330 = 0;
  a1[81] = -1;
  *(a1 + 41) = 0xFFFFFFFFLL;
  v2 = a1[80];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 39);
    v5 = v2 - 1;
    v6 = (v2 + 3) >> 2;
    v7 = vdupq_n_s64(v2 - 1);
    v8 = xmmword_1E1157200;
    v9 = 104 * (v2 - 1) - 312;
    v10 = 104 * v5 - 208;
    v11 = 104 * v5 - 104;
    v12 = 104 * v5;
    v13 = vdupq_n_s64(1uLL);
    v14 = xmmword_1E1157210;
    v15 = vdupq_n_s64(4uLL);
    v16 = 416 * v6;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v7, v14));
      v18 = vaddq_s64(v14, v13);
      if (vuzp1_s16(v17, *v7.i8).u8[0])
      {
        v19 = v18.i32[0];
        if (v12 == v3)
        {
          v19 = -1;
        }

        *(v4 + v3) = v19;
      }

      if (vuzp1_s16(v17, *&v7).i8[2])
      {
        v20 = v18.i32[2];
        if (v11 == v3)
        {
          v20 = -1;
        }

        *(v4 + v3 + 104) = v20;
      }

      v21 = vaddq_s64(v8, v13);
      v22 = vmovn_s64(vcgeq_u64(v7, v8));
      if (vuzp1_s16(*&v7, v22).i32[1])
      {
        v23 = v21.i32[0];
        if (v10 == v3)
        {
          v23 = -1;
        }

        *(v4 + v3 + 208) = v23;
      }

      if (vuzp1_s16(*&v7, v22).i8[6])
      {
        v24 = v21.i32[2];
        if (v9 == v3)
        {
          v24 = -1;
        }

        *(v4 + v3 + 312) = v24;
      }

      v8 = vaddq_s64(v8, v15);
      v14 = vaddq_s64(v14, v15);
      v3 += 416;
    }

    while (v16 != v3);
  }

  for (i = a1[74]; i != -1; i = *(v26 + 4))
  {
    v26 = *(a1 + 35) + 100 * i;
    if (concompCanBeGlyph(v26))
    {
      *v330 = -1;
      v27 = *(v26 + 84);
      v28 = *(v26 + 86) - v27;
      NeighborAtY = findNeighborAtY(a1, v26, v27 + 230 * v28 / 256);
      insertNeighbor(a1, v26, NeighborAtY, &v330[1], v330);
      v30 = findNeighborAtY(a1, v26, v27 + 179 * v28 / 256);
      insertNeighbor(a1, v26, v30, &v330[1], v330);
      v31 = findNeighborAtY(a1, v26, v27 + v28 / 2);
      insertNeighbor(a1, v26, v31, &v330[1], v330);
      v32 = findNeighborAtY(a1, v26, v27 + 76 * v28 / 256);
      insertNeighbor(a1, v26, v32, &v330[1], v330);
      v33 = findNeighborAtY(a1, v26, v27 + 25 * v28 / 256);
      insertNeighbor(a1, v26, v33, &v330[1], v330);
      if (v330[1] != -1)
      {
        sequenceLinkConcomps(a1, i, v330[1]);
      }

      if (v330[0] != -1)
      {
        sequenceLinkConcomps(a1, i, v330[0]);
      }
    }
  }

  v34 = a1[81];
  if (v34 != -1)
  {
    v35 = *(a1 + 39);
    do
    {
      v36 = 104 * v34;
      FKSequenceSortAndProcess(a1, v35 + v36, 1);
      v35 = *(a1 + 39);
      v34 = *(v35 + v36);
    }

    while (v34 != -1);
  }

  mergeNeighboringSequences(a1);
  v38 = a1[81];
  if (v38 == -1)
  {
    goto LABEL_162;
  }

  do
  {
    v39 = *(a1 + 39) + 104 * v38;
    v40 = *(v39 + 52);
    if (v40 < *a1 || (v41 = *(v39 + 60), v41 < 5))
    {
LABEL_33:
      v38 = sequenceRemove(a1, v38);
      continue;
    }

    v42 = *(v39 + 20);
    if (v42 == 2)
    {
      v43 = *(a1 + 35);
      v44 = *(v39 + 8);
      v45 = (v43 + 100 * *v44);
      v46 = (v43 + 100 * v44[1]);
      v47 = v45[43];
      v48 = v45[42];
      v49 = v47 - v48 + 1;
      v50 = v46[43];
      v51 = v46[42];
      v52 = v50 - v51 + 1;
      v53 = v52 + v49;
      if (((100 * (v50 - v51 - (v47 - v48))) / (v52 + v49) - 15) < 0xFFFFFFE3)
      {
        goto LABEL_33;
      }

      v54 = v48 + v47 - (v50 + v51);
      if ((v48 + v47) < v50 + v51)
      {
        v54 += 3;
      }

      v60 = __CFADD__((100 * (v54 >> 2)) / v53 - 15, 29);
      v55 = v51 + v52 / 2;
      v56 = !v60 || v55 <= v48;
      v57 = v48 + v49 / 2;
      v58 = !v56 && v57 < v50;
      v59 = !v58 || v57 <= v51;
      v60 = v59 || v55 >= v47;
      if (v60)
      {
        goto LABEL_33;
      }

      v61 = v45[41];
      v62 = v46[40];
      v63 = (v61 - v45[40] + 1) * v49;
      v64 = (v46[41] - v62 + 1) * v52;
      v65 = 100 * (v62 - v61) / v53 - 20;
      v66 = v63 <= 4 * v64 && v64 <= 4 * v63;
      if (!v66 || v65 < 0xFFFFFFE7)
      {
        goto LABEL_33;
      }

      if (v45[44] > 2u)
      {
        goto LABEL_33;
      }

      if (v46[44] > 2u)
      {
        goto LABEL_33;
      }

      if (!looksOkey(v45))
      {
        goto LABEL_33;
      }

      if (!looksOkey(v46))
      {
        goto LABEL_33;
      }

      if (5 * v41 <= v40)
      {
        goto LABEL_33;
      }

      v68 = 2 * v40;
      if (v41 >= 2 * v40)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v68 = 2 * v40;
      if (5 * v41 <= v40 || v41 >= v68)
      {
        goto LABEL_33;
      }

      if (v42 < 1)
      {
        goto LABEL_80;
      }
    }

    v70 = 0;
    v71 = 0;
    v72 = *(v39 + 8);
    v73 = v42;
    do
    {
      v74 = *v72++;
      v75 = *(a1 + 35) + 100 * v74;
      v76 = *(v75 + 86) - *(v75 + 84);
      v77 = *(v75 + 82) - *(v75 + 80) + 1;
      if (v76 < 2 * v77)
      {
        ++v71;
        if (10 * *(v75 + 72) > v77 * (9 * v76 + 9))
        {
          ++v70;
        }
      }

      --v73;
    }

    while (v73);
    if (v70 > v71 / 2)
    {
      goto LABEL_33;
    }

LABEL_80:
    v78 = *(v39 + 64);
    if (v78 >= v41)
    {
      if (v42 < 3 || v78 > v68)
      {
        goto LABEL_33;
      }

      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      do
      {
        v83 = (*(a1 + 35) + 100 * *(*(v39 + 8) + v79));
        if (v79)
        {
          v84 = v82[42] - v83[42];
          v85 = v82[43] - v83[43];
          v81 += v84 * v84 + v85 * v85;
          if (v83[40] - v82[41] > v41)
          {
            ++v80;
          }
        }

        v79 += 4;
        v82 = v83;
      }

      while (4 * v42 != v79);
      if (v42 <= 2 * v80 && 100 * v81 / (2 * v42) >= v40 * v40)
      {
        goto LABEL_33;
      }
    }

    v38 = *v39;
  }

  while (v38 != -1);
  v86 = a1[81];
  if (v86 != -1)
  {
    v87 = *(a1 + 39);
    do
    {
      v88 = v87 + 104 * v86;
      do
      {
        v89 = *(v88 + 20);
        if (v89 < 1)
        {
          break;
        }

        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = *(a1 + 35);
        v94 = *(v88 + 8);
        do
        {
          v95 = v93 + 100 * v94[v90];
          v96 = *(v95 + 82) - *(v95 + 80) + 1;
          v97 = 100 * *(v95 + 72) / (v96 + v96 * (*(v95 + 86) - *(v95 + 84)));
          if (v97 <= 50)
          {
            v98 = 50;
          }

          else
          {
            v98 = v97;
          }

          if (v97 >= 80)
          {
            v99 = 0;
          }

          else
          {
            ++v92;
            v99 = v98;
          }

          v91 += v99;
          ++v90;
        }

        while (v89 != v90);
        if (v92 < 4 || v92 <= v89 >> 1)
        {
          break;
        }

        v101 = v91 / v92 + 15;
        v102 = v93 + 100 * *v94;
        v103 = (v93 + 100 * v94[1]);
        v104 = v103[40];
        v105 = *(v102 + 82);
        v106 = v104 - v105;
        v107 = *(v88 + 52);
        v108 = v103[43];
        v109 = v103[42];
        v110 = v108 + 1;
        v111 = v108 + 1 - v109;
        if (v107 > v111)
        {
          v111 = *(v88 + 52);
        }

        if (v106 > 2 * v111)
        {
          goto LABEL_119;
        }

        if (v106 > v107 && v106 > 2 * *(v88 + 64))
        {
          v112 = v109 + *(v102 + 86) - (v108 + *(v102 + 84));
          if (v112 < 0)
          {
            v112 = -v112;
          }

          if (3 * v112 > v107)
          {
            goto LABEL_119;
          }
        }

        v113 = *(v102 + 80);
        if ((v105 + v113 + 1) >> 1 >= v104)
        {
          goto LABEL_119;
        }

        v114 = *(v102 + 86);
        v115 = *(v102 + 84);
        v116 = v114 - v115 + 1;
        if (v116 < v107 / 2)
        {
          goto LABEL_119;
        }

        if (100 * *(v102 + 72) / (v116 + v116 * (v105 - v113)) <= v101 || v105 - v113 < *(v88 + 60) / 2)
        {
          goto LABEL_132;
        }

        if (v106 > v107 / 2)
        {
          goto LABEL_119;
        }

        v129 = ((v114 + v115 + 1) >> 1) - ((v110 + v109) >> 1);
        if (v129 < 0)
        {
          v129 = -v129;
        }

        if (v129 > v107 / 4)
        {
LABEL_119:
          FKSequenceRemoveConcomp(a1, v88, 0);
          v93 = *(a1 + 35);
          v94 = *(v88 + 8);
          LODWORD(v89) = *(v88 + 20);
          v117 = 1;
          v107 = *(v88 + 52);
        }

        else
        {
LABEL_132:
          v117 = 0;
        }

        v118 = &v94[v89];
        v119 = *(v118 - 2);
        v120 = v93 + 100 * *(v118 - 1);
        v121 = *(v120 + 80);
        v122 = v93 + 100 * v119;
        v123 = v121 - *(v122 + 82);
        if (v123 <= 2 * v107)
        {
          v124 = *(v120 + 82);
          if ((v121 + v124 + 1) >> 1 > *(v122 + 80))
          {
            v125 = *(v120 + 86) - *(v120 + 84) + 1;
            v127 = v107;
            v126 = v107 + (v107 >> 31);
            if (v125 >= v127 / 2)
            {
              v128 = v124 - v121;
              if (100 * *(v120 + 72) / (v125 + v125 * v128) <= v101 || v123 <= v126 >> 1 || v128 < *(v88 + 60) / 2)
              {
                continue;
              }
            }
          }
        }

        FKSequenceRemoveConcomp(a1, v88, v89 - 1);
        v117 = 1;
        FKSequenceSortAndProcess(a1, v88, 1);
      }

      while (v117);
      v87 = *(a1 + 39);
      v86 = *(v87 + 104 * v86);
    }

    while (v86 != -1);
    v130 = a1[81];
    if (v130 != -1)
    {
      do
      {
        v131 = (*(a1 + 39) + 104 * v130);
        v37.i32[0] = *(v131 + 95);
        v132 = vmovl_u8(v37).u64[0];
        v132.i16[0] = vaddv_s16(v132);
        if (v132.i32[0] <= 0x63u && histogramIsOK(a1, *(a1 + 39) + 104 * v130))
        {
          v130 = *v131;
        }

        else
        {
          v130 = sequenceRemove(a1, v130);
        }
      }

      while (v130 != -1);
      v133 = a1[81];
      if (v133 != -1)
      {
        v134 = a1[81];
        while (1)
        {
          v135 = *(a1 + 39) + 104 * v134;
          while (v133 != -1)
          {
            v136 = *(a1 + 39) + 104 * v133;
            if (*(v136 + 20) == 2 && *(v136 + 30) >= *(v135 + 28) && *(v136 + 28) <= *(v135 + 30) && ((v137 = *(v136 + 52), v138 = 5 * v137, v139 = *(v135 + 52), v140 = 4 * v137, v138 <= 3 * v139) ? (v141 = v140 < v139) : (v141 = 1), !v141 && (v142 = *(v135 + 60), *(v135 + 24) - v142 <= *(v136 + 26)) && v142 + *(v135 + 26) >= *(v136 + 24)))
            {
              v133 = sequenceRemove(a1, v133);
            }

            else
            {
              v133 = *v136;
            }
          }

          v134 = *v135;
          if (*v135 == -1)
          {
            break;
          }

          v133 = a1[81];
        }
      }
    }
  }

LABEL_162:
  v143 = a1[74];
  if (v143 == -1)
  {
    goto LABEL_341;
  }

  while (2)
  {
    v144 = *(a1 + 35);
    v145 = v144 + 100 * v143;
    if (*(v145 + 94))
    {
      goto LABEL_164;
    }

    v146 = a1[81];
    if (v146 == -1)
    {
      goto LABEL_164;
    }

    v147 = 0;
    v326 = 0;
    v148 = *(v145 + 82);
    v149 = *(v145 + 80);
    v150 = (v149 + v148 + 1) >> 1;
    v151 = *(v145 + 86);
    v152 = *(v145 + 84);
    v153 = (v151 + v152 + 1) >> 1;
    v154 = *(a1 + 39);
    v155 = *(v145 + 92);
    v156 = v151 - v152;
    v157 = v151 - v152 + 1;
    v313 = 2 * (v148 - v149) + 2;
    v158 = (2 * (v151 - v152 + v148 - v149) + 4);
    v317 = v148 - v149;
    v314 = 3 * v151;
    v315 = 4 * v157;
    v316 = v148 - v149 + 1;
    v312 = (4 * (v149 + v148) + 4) & 0xFFFF8;
    v328 = v149 | 0x10000;
    v159 = -1;
    v160 = a1[81];
    v161 = -1;
    v325 = v144 + 100 * v143;
    while (2)
    {
      v162 = v154 + 104 * v160;
      if (v155 != *(v162 + 92))
      {
        goto LABEL_307;
      }

      if (v152 > *(v162 + 30))
      {
        goto LABEL_307;
      }

      v163 = *(v162 + 60);
      if (v150 < *(v162 + 24) - v163)
      {
        goto LABEL_307;
      }

      if (v163 + *(v162 + 26) < v149)
      {
        goto LABEL_307;
      }

      if (v153 < *(v162 + 28) - *(v162 + 52))
      {
        goto LABEL_307;
      }

      v164 = *(v162 + 20);
      if (v164 < 1)
      {
        goto LABEL_307;
      }

      v329 = v149;
      v321 = v159;
      v323 = v152;
      v318 = v147;
      v320 = v161;
      v165 = 0x7FFFFFFFLL;
      v166 = *(v162 + 8);
      v167 = -1;
      v168 = -1;
      v169 = 0xFFFFFFFFLL;
      v170 = 0x7FFFFFFFLL;
      do
      {
        v172 = *v166++;
        v171 = v172;
        v173 = v144 + 100 * v172;
        LODWORD(v172) = *(v173 + 80);
        v174 = v173 + 80;
        v175 = v172;
        v176 = v172 - v148;
        if (v172 <= v148)
        {
          v178 = *(v174 + 2);
          v179 = v175 - v329;
          if (v179 < 0)
          {
            v179 = -v179;
          }

          v180 = v178 - v148;
          if ((v178 - v148) < 0)
          {
            v180 = v148 - v178;
          }

          v181 = v180 + v179;
          if (v329 > v178)
          {
            v177 = v328 - v178;
          }

          else
          {
            v177 = v181;
          }
        }

        else
        {
          v177 = (v176 + 0x10000);
        }

        if (v177 >= v165)
        {
          v171 = v169;
          v182 = v170;
          v170 = v165;
        }

        else if (v177 >= v170)
        {
          v167 = v171;
          v171 = v169;
          v182 = v170;
          v170 = v177;
        }

        else
        {
          v167 = v169;
          v168 = v171;
          v182 = v177;
        }

        v169 = v171;
        v165 = v170;
        v170 = v182;
        --v164;
      }

      while (v164);
      if (v168 == -1)
      {
        v161 = v320;
        v159 = v321;
        v147 = v318;
        v152 = v323;
        v149 = v329;
        goto LABEL_307;
      }

      v183 = (v144 + 100 * v168);
      v184 = *(v183 + 41);
      v185 = *(v183 + 40);
      v186 = v184 - v185;
      v297 = *(v183 + 43);
      v299 = v184;
      v302 = v184 + v185 + 1;
      v187 = v150 - (v302 >> 1);
      if (v187 < 0)
      {
        v187 = (v302 >> 1) - v150;
      }

      v306 = v153;
      v307 = v150;
      v311 = v151;
      v304 = v156;
      v305 = v143;
      v295 = *(v183 + 40);
      v308 = v144 + 100 * v168;
      v296 = *v183;
      if (v187 > (v186 + 2) / 2)
      {
        v301 = *(v183 + 94) & 8;
        goto LABEL_214;
      }

      v188 = *(v183 + 42);
      v189 = *(v183 + 43) - v188;
      v190 = v189 + 1;
      v191 = v154 + 104 * *v183;
      v192 = 12 * (v186 + 2) / 10;
      v193 = v189 + 2;
      v194 = (v189 + 2) / 2;
      v195 = v144 + 100 * v168;
      v196 = 3 * (v189 + 1) / 5;
      if (v192 <= v196)
      {
        v192 = v196;
      }

      if ((*(v195 + 94) & 8) != 0)
      {
        v199 = *(v191 + 52);
        if (v192 <= v199 / 4)
        {
          v192 = v199 / 4;
        }

        v200 = 3 * v199 / 5;
        if (v194 <= v200)
        {
          v194 = v200;
        }
      }

      else
      {
        v198 = 6 * v193 / 10;
        if (*(v145 + 88) == 1)
        {
          v194 = v198;
        }
      }

      v197 = *(v195 + 94);
      v201 = v197 & 8;
      if (v317 >= v192 || v156 >= v194 || v157 < v190 / 8)
      {
        v301 = v197 & 8;
        goto LABEL_214;
      }

      v219 = v190 / 2;
      if ((v197 & 8) != 0)
      {
        v221 = 2863311532 * *(v191 + 52);
        v222 = HIDWORD(v221) + (v221 >> 63);
        if (v219 <= v222)
        {
          v219 = v222;
        }

        v220 = v151;
      }

      else
      {
        v220 = v151;
        if (*(v145 + 72) >= *(v308 + 72))
        {
          v301 = 0;
          goto LABEL_214;
        }
      }

      v301 = v201;
      if (v314 >= v297 + 2 * v188)
      {
        if (v323 > v297 && (v323 - v297) <= v219)
        {
          v223 = ((v329 - *(v191 + 24)) << 16) / (*(v191 + 26) - *(v191 + 24));
          if (v323 <= (v223 * (*(v191 + 36) + *(v191 + 40)) + (0x10000 - v223) * (*(v191 + 40) + *(v191 + 32))) / 0x10000)
          {
            goto LABEL_251;
          }
        }
      }

      else if ((v188 - v220) <= v219)
      {
LABEL_251:
        if (!*(v145 + 88) || *(v145 + 72) >= 32)
        {
          v224 = *(v308 + 72);
          v225 = 2 * v186 + 2;
          if (v225 > v190)
          {
            v224 = v224 * v190 / v225;
          }

          v226 = *(v145 + 72);
          if (15 * v226 >= v224 && v313 >= v156)
          {
            v227 = *(v145 + 88) == 1 ? 2.0 : 1.5;
            if ((*(v145 + 76) / v158) <= fmaxf((v227 * v226) / *(v145 + 76), 1.0))
            {
              v228 = 10 * scoreForInsideSequence(v191, v145) + 3;
              v205 = v301;
              if (v301)
              {
                v204 = 6;
              }

              else
              {
                v204 = v228;
              }

              goto LABEL_215;
            }
          }
        }
      }

LABEL_214:
      v204 = FKSequenceScoreAsPercent(a1, v168, v143, 1);
      v205 = v301;
LABEL_215:
      v206 = v302 >> 1;
      if (v204 <= v326)
      {
        v207 = v326;
      }

      else
      {
        v207 = v204;
      }

      if (v204 <= v326)
      {
        v208 = v318;
      }

      else
      {
        v208 = 17;
      }

      v161 = v320;
      v159 = v321;
      if (v204 > v326)
      {
        v159 = v168;
      }

      v145 = v325;
      v153 = v306;
      if (v205)
      {
        v150 = v307;
        v151 = v311;
        v156 = v304;
        v143 = v305;
        v209 = (v144 + 100 * v168);
        if (v206 > v329 && v206 < v148)
        {
          v210 = 0;
          v152 = v323;
          v149 = v329;
          goto LABEL_300;
        }

        v327 = v207;
        if ((*(v144 + 100 * v167 + 94) & 8) == 0)
        {
          v209 = (v144 + 100 * v167);
          v167 = v168;
        }

        v211 = *(v209 + 41);
        v213 = *v209;
        v212 = *(v209 + 43);
        v295 = *(v209 + 40);
        v206 = (v211 + v295 + 1) >> 1;
      }

      else
      {
        v327 = v207;
        v150 = v307;
        v151 = v311;
        v156 = v304;
        v143 = v305;
        v212 = v297;
        v211 = v299;
        v209 = (v144 + 100 * v168);
        v213 = v296;
      }

      v214 = v154 + 104 * v213;
      v215 = *(v214 + 60);
      v319 = v214;
      v216 = *(v214 + 52);
      v149 = v329;
      if (v212 < v323 || (v309 = *(v209 + 42), v309 > v151))
      {
        if (v167 == -1)
        {
          goto LABEL_266;
        }

        v300 = v211;
        v217 = *(v209 + 42);
        v152 = v323;
        if (v151 < v217)
        {
          if ((v212 - v217) < 3 * *(v319 + 40) / 4)
          {
            v309 = *(v209 + 42);
            v218 = (6 * (v217 - v151)) <= (v212 - v217 + 1);
            v161 = v320;
            goto LABEL_265;
          }

LABEL_297:
          v210 = 0;
LABEL_298:
          v161 = v320;
LABEL_299:
          v207 = v327;
          goto LABEL_300;
        }

        v309 = *(v209 + 42);
        if (v316 < 3 * v157)
        {
          v210 = 0;
          goto LABEL_299;
        }

        v218 = (6 * (v323 - v212)) <= (v212 - v217 + 1);
LABEL_265:
        v211 = v300;
        if (!v218)
        {
LABEL_266:
          v210 = 0;
          v152 = v323;
          goto LABEL_299;
        }
      }

      v322 = v159;
      v229 = v216 * v216;
      v230 = 2 * v215;
      if (2 * v215 < v216)
      {
        v229 = 4 * v215 * v215;
      }

      v232 = v229;
      v231 = v229 + (v229 < 0 ? 0x3F : 0);
      v233 = *(v325 + 72);
      if (v233 <= v232 / 64)
      {
        v152 = v323;
        if (3 * v233 <= v231 >> 6)
        {
          goto LABEL_287;
        }

        if (fabsf((v151 - v212) / v216) > 0.08 || v315 >= 3 * v216)
        {
          goto LABEL_287;
        }
      }

      else
      {
        v152 = v323;
        if (v315 >= 3 * v216)
        {
LABEL_287:
          v210 = 0;
          v159 = v322;
          goto LABEL_298;
        }
      }

      v324 = v208;
      v235 = 3 * v215;
      v236 = 8 * v157 <= v317 && v316 < v235;
      if (!v236 && v317 >= v230)
      {
        v210 = 0;
LABEL_284:
        v161 = v320;
        v159 = v322;
        v208 = v324;
        goto LABEL_299;
      }

      if (7 * v316 > 4 * v215 && 7 * v157 > 5 * v216)
      {
        goto LABEL_287;
      }

      if (v206 <= v148)
      {
        v159 = v322;
        if (v206 >= v329)
        {
          goto LABEL_297;
        }

        v237 = v235 / 2;
        v238 = v230 / 3;
        if (!a1[9])
        {
          v237 = v238;
        }

        if ((v329 - v211) > v237 + 1)
        {
          goto LABEL_297;
        }

        v161 = v320;
        v207 = v327;
        if (v312 < v295 - v211 + 8 * v211)
        {
          v210 = 0;
          goto LABEL_300;
        }

LABEL_291:
        v327 = v207;
        v298 = v212;
        v303 = *(v325 + 72);
        if ((100 * pixelCount(a1, v329, v148, v152, v151, v155)) > 105 * v303)
        {
          v210 = 0;
          v145 = v325;
LABEL_318:
          v153 = v306;
          v150 = v307;
          v151 = v311;
          v156 = v304;
          v143 = v305;
          goto LABEL_284;
        }

        if ((v298 + v309 + 1) >> 1 >= v152)
        {
          v240 = 1;
        }

        else
        {
          v240 = 4;
        }

        v145 = v325;
        if (*(v319 + 24) >= v148)
        {
          v210 = a1[9];
          if (!v210)
          {
            goto LABEL_318;
          }
        }

        else
        {
          ++v240;
        }

        v310 = v240;
        v241 = scoreForInsideSequence(v319, v325);
        v145 = v325;
        v210 = v310 + 10 * v241;
        goto LABEL_318;
      }

      v210 = 0;
      v161 = v320;
      v159 = v322;
      if ((v295 - v148) >= v215)
      {
        goto LABEL_299;
      }

      v207 = v327;
      if (v329 < v295)
      {
        goto LABEL_291;
      }

LABEL_300:
      v239 = v210 > v207;
      if (v210 <= v207)
      {
        v210 = v207;
      }

      v326 = v210;
      if (v239)
      {
        v147 = 9;
      }

      else
      {
        v147 = v208;
      }

      if (v239)
      {
        v161 = v160;
      }

LABEL_307:
      v160 = *v162;
      if (*v162 != -1)
      {
        continue;
      }

      break;
    }

    if (v326 <= 0)
    {
      do
      {
        v242 = v154 + 104 * v146;
        if (v155 == *(v242 + 92) && v152 <= *(v242 + 30))
        {
          v243 = *(v242 + 24);
          v244 = *(v242 + 60);
          if (v150 >= (v243 - v244))
          {
            v245 = *(v242 + 26);
            if (v150 <= (v244 + v245))
            {
              v246 = *(v242 + 52);
              v247 = v153 >= *(v242 + 28) - v246 && v149 >= v243;
              if (v247 && v148 <= v245 && *(v145 + 72) >= ((v246 * v246) >> 8))
              {
                v249 = ((256 - ((v150 - v243) << 8) / (v245 - v243)) * *(v242 + 32) + *(v242 + 36) * (((v150 - v243) << 8) / (v245 - v243))) >> 8;
                if (v249 <= v152 && *(v242 + 40) + v249 >= v151)
                {
                  v250.i32[0] = 1;
                  v250.i32[1] = *(v145 + 72);
                  *(v242 + 68) = vadd_s32(*(v242 + 68), v250);
                }
              }
            }
          }
        }

        v146 = *v242;
      }

      while (*v242 != -1);
    }

    else
    {
      if (v147 == 17)
      {
        addDiacritic(a1, v159, v143);
      }

      else
      {
        sequenceAddConcomp(a1, v161, v143, 9);
      }

      v145 = v325;
    }

LABEL_164:
    v143 = *(v145 + 4);
    if (v143 != -1)
    {
      continue;
    }

    break;
  }

LABEL_341:
  v251 = a1[81];
  while (v251 != -1)
  {
    v252 = *(a1 + 39) + 104 * v251;
    FKSequenceSortAndProcess(a1, v252, 1);
    v253 = *(v252 + 20);
    if (v253 >= 1)
    {
      v254 = 0;
      v255 = 0;
      while (1)
      {
        v256 = *(a1 + 35) + 100 * *(*(v252 + 8) + 4 * v254);
        if ((*(v256 + 94) & 8) == 0)
        {
          break;
        }

        if (*(v256 + 64) != -1)
        {
          v255 = 1;
        }

        if (v253 == ++v254)
        {
          LODWORD(v254) = *(v252 + 20);
          break;
        }
      }

      if (v255)
      {
        v257 = 1;
      }

      else
      {
        v257 = v254 > 2;
      }

      v258 = v257;
      if (v254 && v258)
      {
        do
        {
          FKSequenceRemoveConcomp(a1, v252, 0);
          LODWORD(v254) = v254 - 1;
        }

        while (v254);
        LODWORD(v253) = *(v252 + 20);
      }
    }

    v259 = 100 * *(v252 + 68) / v253;
    if (v259 >= 100)
    {
      LOBYTE(v259) = 100;
    }

    *(v252 + 98) = v259;
    if (*(v252 + 95) + v259 + *(v252 + 96) + *(v252 + 97) >= 0x64)
    {
      v251 = sequenceRemove(a1, v251);
    }

    else
    {
      v251 = *(*(a1 + 39) + 104 * v251);
    }
  }

  result = mergeNeighboringSequences(a1);
  v262 = a1[81];
  if (v262 != -1)
  {
    v263 = 0;
    do
    {
      v264 = *(a1 + 39) + 104 * v262;
      LODWORD(v261) = *(v264 + 95);
      v265 = vmovl_u8(*&v261).u64[0];
      v265.i16[0] = vaddv_s16(v265);
      if (v265.i32[0] > 0x63u)
      {
        goto LABEL_406;
      }

      v266 = *(v264 + 44);
      if (v266 < 4 || v266 <= 5 && *(v264 + 52) <= 32)
      {
        v267 = *(v264 + 20);
        if (v267 < 1)
        {
          v277 = 0;
        }

        else
        {
          v268 = 0;
          v269 = 0;
          v270 = *(a1 + 35);
          do
          {
            v271 = 0;
            v272 = v270 + 100 * *(*(v264 + 8) + 4 * v268);
            v269 += *(v272 + 72);
            v273 = v272 + 64;
            v274 = 1;
            do
            {
              v275 = v274;
              v276 = *(v273 + 4 * v271);
              if (v276 != -1)
              {
                v269 += *(v270 + 100 * v276 + 72);
              }

              v274 = 0;
              v271 = 1;
            }

            while ((v275 & 1) != 0);
            ++v268;
          }

          while (v268 != v267);
          v277 = 100 * v269;
        }

        if (v277 < (99 * pixelCount(a1, *(v264 + 24), *(v264 + 26), *(v264 + 28), *(v264 + 30), *(v264 + 92))))
        {
          goto LABEL_406;
        }
      }

      result = histogramIsOK(a1, v264);
      if (!result)
      {
        goto LABEL_406;
      }

      if (!a1[4])
      {
        goto LABEL_409;
      }

      v278 = *(v264 + 20);
      if (v278 < 1)
      {
        v261 = 0.0;
        v290 = 0.0;
      }

      else
      {
        v279 = 0;
        v280 = 0;
        v281 = *(v264 + 8);
        do
        {
          v282 = *v281++;
          v283 = *(a1 + 35) + 100 * v282;
          if ((*(v283 + 94) & 8) == 0)
          {
            v284 = *(v283 + 82) - *(v283 + 80) + 1;
            v285 = *(v283 + 86) - *(v283 + 84) + 1;
            if ((*(v283 + 76) / (2 * (v285 + v284))) < 1.1)
            {
              v286 = *(v283 + 72) / (v285 * v284);
              v287 = v286;
              if (v286 <= 0.6)
              {
                LOWORD(v287) = *(v283 + 90);
                v289 = (LODWORD(v287) / v284) < 0.5 && v286 < 0.5;
                v280 += v289;
              }

              else
              {
                ++v279;
              }
            }
          }

          --v278;
        }

        while (v278);
        v290 = v279;
        v261 = v280;
      }

      if (v266 > 2 && ((v291 = v266 * 0.6, v291 >= v290) ? (v292 = v291 < v261) : (v292 = 1), v292))
      {
LABEL_406:
        result = sequenceRemove(a1, v262);
        v262 = result;
      }

      else
      {
LABEL_409:
        if (v263 <= v266)
        {
          v263 = v266;
        }

        v262 = *v264;
      }
    }

    while (v262 != -1);
    if (v263 == 2)
    {
      result = a1[81];
      while (result != -1)
      {
        v293 = *(a1 + 39);
        v294 = (v293 + 104 * result);
        if ((100 * (v294[15] - v294[14]) + 100) / a1[8] >= 11 && a1[9] && (100 * (v294[13] - v294[12]) + 100) / a1[7] > 10)
        {
          result = *(v293 + 104 * result);
        }

        else
        {
          result = sequenceRemove(a1, result);
        }
      }
    }
  }

  return result;
}

uint64_t sequenceLinkFreeList(uint64_t result, int a2)
{
  v2 = *(result + 332);
  v3 = *(result + 320);
  if (v2 < v3)
  {
    v4 = ~v2 + v3;
    v5 = v2 + 1;
    v6 = *(result + 312) + 104 * v2;
    v7 = v3 - v2;
    do
    {
      if (v4)
      {
        v8 = v5;
      }

      else
      {
        v8 = -1;
      }

      *v6 = v8;
      if (a2)
      {
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 80) = 0;
        *(v6 + 88) = 0;
      }

      --v4;
      ++v5;
      v6 += 104;
      --v7;
    }

    while (v7);
  }

  return result;
}

BOOL concompCanBeGlyph(uint64_t a1)
{
  v1 = *(a1 + 94);
  if (v1 == 2 || v1 == 4)
  {
    return 0;
  }

  v4 = *(a1 + 82) - *(a1 + 80);
  v5 = *(a1 + 86) - *(a1 + 84);
  v6 = 6;
  if (v4 > v5)
  {
    v6 = (6 * v4 + 6) / (v5 + 1);
  }

  if (v6 < *(a1 + 88))
  {
    return 0;
  }

  v7 = *(a1 + 72);
  if (v7 < 17)
  {
    return 1;
  }

  if (v4 <= v5)
  {
    v4 = *(a1 + 86) - *(a1 + 84);
  }

  return (v4 + 1) * (v4 + 1) <= 32 * v7;
}

void *sequenceLinkConcomps(void *result, int a2, int a3)
{
  v4 = result[35];
  v5 = *(v4 + 100 * a2);
  v6 = *(v4 + 100 * a3);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      return sequenceCreate(result, a2, a3);
    }

    v5 = v6;
    a3 = a2;
    return sequenceAddConcomp(result, v5, a3, 1);
  }

  if (v6 == -1)
  {
    return sequenceAddConcomp(result, v5, a3, 1);
  }

  if (v5 != v6)
  {
    return sequenceMerge(result, v5, v6);
  }

  return result;
}

uint64_t mergeNeighboringSequences(uint64_t result)
{
  v1 = *(result + 324);
  if (v1 != -1)
  {
    v2 = result;
    do
    {
      v3 = v2[39] + 104 * v1;
      v4 = *v3;
      if (*v3 == -1)
      {
        return result;
      }

      v57 = v1;
      do
      {
        v5 = v2[39] + 104 * v4;
        if (*(v3 + 92) == *(v5 + 92))
        {
          v6 = *(v3 + 24);
          v7 = *(v5 + 24);
          if (v6 <= v7)
          {
            v6 = *(v5 + 24);
          }

          v8 = *(v3 + 26);
          v9 = *(v5 + 26);
          if (v8 < v9)
          {
            v9 = *(v3 + 26);
          }

          v10 = v6 - v9;
          v11 = (*(v5 + 60) + *(v3 + 60)) / 2;
          v12 = *(v3 + 52);
          v13 = *(v5 + 52);
          if (v11 <= (v13 + v12) / 2)
          {
            v11 = (v13 + v12) / 2;
          }

          if (v10 >= v11 / -2 && 5 * v11 >= 2 * v10)
          {
            v14 = *(v3 + 40);
            if (v14 && (v15 = *(v5 + 40)) != 0)
            {
              if (v14 >= v15)
              {
                v14 = *(v5 + 40);
              }

              v16 = v12 - v13;
              if (v16 >= 0)
              {
                v17 = v16;
              }

              else
              {
                v17 = -v16;
              }

              if (v17 < v14 / 2)
              {
                v18 = v14 / 2;
                v19 = doesSeqLineIntersectSeq(v2[39] + 104 * v4, v3, v14 / 2);
                result = doesSeqLineIntersectSeq(v3, v5, v18);
                if (v19 | result)
                {
                  if (v19 || *(v5 + 20) <= 5)
                  {
                    v20 = *(v3 + 20);
                    if (result || v20 < 6)
                    {
                      goto LABEL_42;
                    }
                  }
                }
              }
            }

            else
            {
              v22 = *(v3 + 30);
              v23 = *(v3 + 28);
              v24 = v22 - v23 + 1;
              v25 = *(v5 + 30);
              v26 = *(v5 + 28);
              v27 = v25 - v26;
              if (v24 >= v25 - v26 + 1)
              {
                v24 = v27 + 1;
              }

              v28 = v24 + (v24 >> 31);
              v29 = v22 - v23 - v27;
              if (v29 < 0)
              {
                v29 = v27 - (v22 - v23);
              }

              if (v29 < v28 >> 1)
              {
                v30 = v28 >> 1;
                v31 = v23 - v26;
                if (v31 < 0)
                {
                  v31 = -v31;
                }

                if (v31 < v30)
                {
                  v32 = v22 - v25;
                  if (v32 < 0)
                  {
                    v32 = -v32;
                  }

                  if (v32 < v30)
                  {
                    v20 = *(v3 + 20);
LABEL_42:
                    if (v20 < 1)
                    {
                      v33 = 0;
                    }

                    else
                    {
                      v33 = 0;
                      v34 = *(v3 + 8);
                      do
                      {
                        v35 = *v34++;
                        v36 = v2[35] + 100 * v35;
                        if ((*(v36 + 94) & 8) == 0)
                        {
                          v33 += *(v36 + 72);
                        }

                        --v20;
                      }

                      while (v20);
                    }

                    v37 = *(v5 + 20);
                    if (v37 < 1)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      v38 = 0;
                      v39 = *(v5 + 8);
                      do
                      {
                        v40 = *v39++;
                        v41 = v2[35] + 100 * v40;
                        if ((*(v41 + 94) & 8) == 0)
                        {
                          v38 += *(v41 + 72);
                        }

                        --v37;
                      }

                      while (v37);
                    }

                    v42 = v38 / *(v5 + 44);
                    v43 = v33 / *(v3 + 44);
                    if (v42 <= 8 * v43 && 8 * v42 >= v43)
                    {
                      v45 = v8 <= v7 ? v3 : v5;
                      v46 = v8 <= v7 ? v5 : v3;
                      v47 = *(v45 + 26);
                      v48 = *(v46 + 24) - 1;
                      if (v48 <= v47)
                      {
                        goto LABEL_82;
                      }

                      if (*(v45 + 28) <= *(v46 + 28))
                      {
                        v49 = *(v46 + 28);
                      }

                      else
                      {
                        v49 = *(v45 + 28);
                      }

                      if (*(v45 + 30) >= *(v46 + 30))
                      {
                        v50 = *(v46 + 30);
                      }

                      else
                      {
                        v50 = *(v45 + 30);
                      }

                      v51 = *(v45 + 40);
                      if (v51)
                      {
                        v52 = *(v46 + 40);
                        if (v52)
                        {
                          v53 = *(v45 + 36);
                          v54 = *(v46 + 32);
                          if (v53 <= v54)
                          {
                            v49 = v54;
                          }

                          else
                          {
                            v49 = *(v45 + 36);
                          }

                          v55 = v53 + v51;
                          v56 = v54 + v52;
                          if (v55 < v56)
                          {
                            v56 = v55;
                          }

                          v50 = v56 - 1;
                        }
                      }

                      result = pixelCount(v2, v47 + 1, v48, v49, v50, *(v45 + 92));
                      if (result <= 0)
                      {
LABEL_82:
                        result = sequenceMerge(v2, v57, v4);
                        v5 = v3;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v4 = *v5;
      }

      while (*v5 != -1);
      v1 = *v3;
    }

    while (*v3 != -1);
  }

  return result;
}

uint64_t sequenceRemove(uint64_t a1, int a2)
{
  v2 = *(a1 + 312);
  v3 = (v2 + 104 * a2);
  v4 = v3[5];
  if (v4 >= 1)
  {
    v5 = *(a1 + 280);
    v6 = *(v3 + 1);
    do
    {
      v7 = *v6++;
      *(v5 + 100 * v7 + 94) = 0;
      --v4;
    }

    while (v4);
  }

  v8 = *v3;
  v9 = v3[1];
  if (v9 == -1)
  {
    *(a1 + 324) = v8;
  }

  else
  {
    *(v2 + 104 * v9) = v8;
  }

  if (v8 == -1)
  {
    *(a1 + 328) = v9;
  }

  else
  {
    *(v2 + 104 * v8 + 4) = v9;
  }

  *v3 = *(a1 + 332);
  *(a1 + 332) = a2;
  return v8;
}

uint64_t histogramIsOK(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 12) || *(a1 + 36))
  {
    goto LABEL_3;
  }

  v4 = 0uLL;
  memset(v38, 0, sizeof(v38));
  v5 = *(a2 + 20);
  if (v5 > 0)
  {
    v6 = 0;
    v7 = *(a1 + 168);
    v8 = *(a1 + 192);
    v9 = *(a1 + 280);
    v10 = *(a2 + 8);
    do
    {
      v11 = v9 + 100 * *(v10 + 4 * v6);
      if ((*(v11 + 94) & 8) == 0)
      {
        v12 = *(v11 + 80);
        v13 = *(v11 + 82);
        if (v12 <= v13)
        {
          v14 = *(v11 + 84);
          v15 = *(v11 + 86);
          do
          {
            if (v14 <= v15)
            {
              v16 = v7 + v8 * v14;
              v17 = v15 - v14 + 1;
              do
              {
                v18 = (*(v16 + v12) >> 1) & 0x7C;
                ++*(v38 + v18);
                v16 += v8;
                --v17;
              }

              while (v17);
            }
          }

          while (v12++ != v13);
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  v20 = 0;
  v21 = xmmword_1E1157DF0;
  v22 = 0.0;
  v23.i64[0] = 0x400000004;
  v23.i64[1] = 0x400000004;
  do
  {
    v24 = v38[v20];
    v4 = vaddq_s32(v24, v4);
    v25 = vcvtq_f32_s32(vmulq_s32(v24, v21));
    v22 = (((v22 + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
    v21 = vaddq_s32(v21, v23);
    ++v20;
  }

  while (v20 != 8);
  v26 = 0;
  v27 = vaddvq_s32(v4);
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = v22 / v27;
  do
  {
    v32 = v26 - v31;
    v33 = *(v38 + v26);
    v30 = v30 + (v33 * (v32 * v32));
    v34 = (v32 * v32) * v33;
    v29 = v29 + (v34 * v32);
    v28 = v28 + (v34 * (v32 * v32));
    ++v26;
  }

  while (v26 != 32);
  v35 = v30 / v27;
  if ((v30 / v27) < 0.00001)
  {
    goto LABEL_21;
  }

  if ((((v29 / v27) * (v29 / v27)) / (v35 * (v35 * v35))) > 0.49 || ((v36 = ((v28 / v27) / (v35 * v35)), v35 >= 8.0) ? (v37 = 2.4) : (v37 = 2.3), v36 <= v37))
  {
LABEL_3:
    result = 1;
  }

  else
  {
LABEL_21:
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FKSequenceOneBox(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1 == -1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 280);
  v5 = -1;
  do
  {
    v6 = v4 + 100 * v1;
    v7 = *(v6 + 72);
    if (v7 >= 32)
    {
      CanBeGlyph = concompCanBeGlyph(v4 + 100 * v1);
      v9 = v7 <= v3 ? v3 : v7;
      v10 = v7 <= v3 ? v5 : v1;
      if (CanBeGlyph)
      {
        v3 = v9;
        v5 = v10;
      }
    }

    v1 = *(v6 + 4);
  }

  while (v1 != -1);
  if (v5 == -1)
  {
    return 0;
  }

  v11 = *(a1 + 280) + 100 * v5;
  v12 = *(v11 + 86);
  v13 = *(v11 + 84);
  v14 = v12 - v13;
  v15 = *(a1 + 32);
  v16 = (v12 + v13 + 1) >> 1;
  if (v14 < v15 / 3 || v16 < v15 / 3)
  {
    return 0;
  }

  v18 = *(a1 + 28);
  v19 = (*(v11 + 82) + *(v11 + 80) + 1) >> 1;
  v20 = v16 > 2 * v15 / 3 || v19 < v18 / 3;
  if (v20 || v19 > 2 * v18 / 3 || *(v11 + 88) > 5u)
  {
    return 0;
  }

  sequenceCreate(a1, v5, -1);
  v22 = *(a1 + 296);
  if (v22 == -1)
  {
    return 1;
  }

  do
  {
    v23 = *(a1 + 280) + 100 * v22;
    if (*(v23 + 94))
    {
      v24 = 1;
    }

    else
    {
      v24 = v23 == v11;
    }

    if (!v24 && *(v23 + 92) == *(v11 + 92) && (*(v23 + 86) + *(v23 + 84) + 1) >> 1 <= *(v11 + 84))
    {
      v25 = (*(v23 + 82) + *(v23 + 80) + 1) >> 1;
      if (v25 >= *(v11 + 80) && v25 <= *(v11 + 82))
      {
        v26 = *(v11 + 72);
        v27 = v26 + 31;
        if (v26 >= 0)
        {
          v27 = *(v11 + 72);
        }

        v28 = *(v23 + 72);
        v29 = v26 / 3;
        if (v28 >= v27 >> 5 && v28 <= v29)
        {
          addDiacritic(a1, v5, v22);
        }
      }
    }

    v22 = *(v23 + 4);
    result = 1;
  }

  while (v22 != -1);
  return result;
}

size_t sequenceCreate(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 332);
  if (v6 != -1)
  {
LABEL_4:
    v9 = *(a1 + 312);
    v10 = v9 + 104 * v6;
    *(a1 + 332) = *v10;
    v11 = *(a1 + 328);
    *(a1 + 328) = v6;
    if (v11 == -1)
    {
      *(a1 + 324) = v6;
    }

    else
    {
      *(v9 + 104 * v11) = v6;
    }

    *v10 = -1;
    *(v10 + 4) = v11;
    v12 = *(v10 + 16);
    if (v12)
    {
      bzero(*(v10 + 8), 4 * v12);
    }

    if (*(v10 + 88))
    {
      v13 = *(v10 + 80);
      if (v13)
      {
        free(v13);
        *(v10 + 80) = 0;
        *(v10 + 88) = 0;
      }
    }

    *(v10 + 68) = 0;
    *(v10 + 72) = 0;
    *(v10 + 20) = 0u;
    *(v10 + 36) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 92) = 0;
    *(v10 + 95) = 0;
    result = sequenceAddConcomp(a1, v6, a2, 1);
    if (a3 != -1)
    {

      return sequenceAddConcomp(a1, v6, a3, 1);
    }

    return result;
  }

  v7 = malloc_type_realloc(*(a1 + 312), 208 * *(a1 + 320), 0x1010040D07E2FD1uLL);
  if (v7)
  {
    *(a1 + 312) = v7;
    v8 = *(a1 + 320);
    *(a1 + 332) = v8;
    *(a1 + 320) = 2 * v8;
    sequenceLinkFreeList(a1, 1);
    v6 = *(a1 + 332);
    goto LABEL_4;
  }

  v15 = *MEMORY[0x1E69E9848];

  return fwrite("Could not create more sequences\n", 0x20uLL, 1uLL, v15);
}

uint64_t addDiacritic(uint64_t result, int a2, int a3)
{
  v3 = *(result + 280);
  v4 = (v3 + 100 * a2);
  if (v4[16] == -1)
  {
    v5 = 0;
  }

  else
  {
    if (v4[17] != -1)
    {
      return result;
    }

    v5 = 1;
  }

  v6 = v3 + 100 * a3;
  v4[v5 + 16] = a3;
  *(v6 + 94) = 17;
  v7 = *(result + 312) + 104 * *v4;
  v8 = *(v7 + 28);
  if (v8 >= *(v6 + 84))
  {
    LOWORD(v8) = *(v6 + 84);
  }

  *(v7 + 28) = v8;
  v9 = *(v7 + 30);
  if (v9 <= *(v6 + 86))
  {
    LOWORD(v9) = *(v6 + 86);
  }

  *(v7 + 30) = v9;
  v10 = *(v7 + 24);
  if (v10 >= *(v6 + 80))
  {
    LOWORD(v10) = *(v6 + 80);
  }

  *(v7 + 24) = v10;
  v11 = *(v6 + 82);
  if (*(v7 + 26) > v11)
  {
    LOWORD(v11) = *(v7 + 26);
  }

  *(v7 + 26) = v11;
  *(v7 + 93) = 0;
  return result;
}

uint64_t computeBeta(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v23 - v4;
  v24 = 1;
  LODWORD(v25) = v3 / 7u + 1;
  HIDWORD(v25) = 2 * v25;
  if (v3 <= 6 && (v25 = 2, v3 <= 4) && (LODWORD(v25) = 0, v3 < 1))
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        v9 = *(&v24 + i);
        v10 = v9 + v6;
        if (v9)
        {
          v11 = v10 < v3;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          v12 = *(v2 + 4 * v6);
          v13 = *(v2 + 4 * v10);
          v14 = __OFSUB__(v13, v12);
          v15 = v13 - v12;
          if (!((v15 < 0) ^ v14 | (v15 == 0)))
          {
            *&v5[4 * v7++] = ((*(v1 + 4 * v10) - *(v1 + 4 * v6)) << 16) / v15;
          }
        }
      }

      ++v6;
    }

    while (v6 != v3);
  }

  qsort(v5, v7, 4uLL, increasingOrderCompare);
  v16 = &v5[4 * (v7 / 2)];
  result = *v16;
  if ((v7 & 1) == 0)
  {
    v18 = *(v16 + 1);
    if (result <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = result;
    }

    if (v18 > 0)
    {
      v19 = 0;
    }

    if (result >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = result;
    }

    if (v18 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (result >= 0)
    {
      result = v21;
    }

    else
    {
      result = v19;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t findNeighborAtY(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 12);
  v4 = *(a1 + 256);
  v5 = *(a1 + 264);
  v6 = v4 + 8 * v3;
  if (a3 != ((*v6 >> 2) + *(v5 + 2 * (v3 >> 6))))
  {
    v7 = v3;
    do
    {
      v8 = *(v4 + 8 * v7 + 4);
      v3 -= v8;
      if (!v8)
      {
        v3 = -1;
      }

      v7 = v3;
    }

    while (a3 != ((*(v4 + 8 * v3) >> 2) + *(v5 + 2 * (v3 >> 6))));
    v6 = v4 + 8 * v3;
  }

  if (v6 != v4)
  {
    v9 = v6 - v4 + 8;
    do
    {
      if (*(a1 + 276) <= v9 >> 3)
      {
        break;
      }

      v11 = *(v6 + 8);
      v6 += 8;
      v10 = v11;
      if (a3 != ((v11 >> 2) + *(v5 + 2 * ((v9 >> 3) >> 6))))
      {
        break;
      }

      v12 = v10 >> 8;
      v13 = v10 & 3;
      if (v12 != -1 && v13 == *(a2 + 92))
      {
        v15 = *(a1 + 280) + 100 * v12;
        if (*(v15 + 94) != 2 && v15 != a2)
        {
          if (concompCanBeGlyph(*(a1 + 280) + 100 * v12))
          {
            return v12;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }

      v9 += 8;
    }

    while (v6 != v4);
  }

  return 0xFFFFFFFFLL;
}

uint64_t insertNeighbor(uint64_t result, int *a2, int a3, int *a4, int *a5)
{
  if (a3 != -1)
  {
    v5 = *(result + 280);
    v6 = (v5 + 100 * a3);
    v7 = *(v6 + 40);
    v8 = *(a2 + 40);
    if (v7 >= v8 || *(a2 + 41) >= *(v6 + 41))
    {
      if (v8 >= v7)
      {
        v10 = *(a2 + 41);
      }

      else
      {
        v9 = *(v6 + 41);
        v10 = *(a2 + 41);
        if (v9 < v10 && ((v8 + v10 + 1) >> 1 >= v7 || 7 * v9 + v7 >= 8 * v9))
        {
          return result;
        }
      }

      v11 = v7 - v10;
      v12 = *(a2 + 43);
      v13 = *(a2 + 42);
      v14 = v12 - v13 + 1;
      v15 = *(v6 + 43);
      v16 = *(v6 + 42);
      v17 = v15 - v16 + 1;
      if (v11 < (v17 + v14) / 2)
      {
        goto LABEL_36;
      }

      v40 = v14 >= v17 ? v15 - v16 + 1 : v12 - v13 + 1;
      if (5 * v40 > 2 * v11)
      {
        v41 = v12 - v13 - (v15 - v16);
        if (v41 < 0)
        {
          v41 = v15 - v16 - (v12 - v13);
        }

        if (3 * v41 < v17 + v14)
        {
LABEL_36:
          if (5 * v14 > 2 * v17)
          {
            v18 = (v15 + v16 + 1) >> 1;
            v19 = (v12 + v13 + 1) >> 1;
            v20 = 5 * v17 > 2 * v14 && v19 >= v16;
            v21 = v20 && v18 >= v13;
            v22 = !v21 || v19 > v15;
            v23 = v22 || v18 > v12;
            v24 = !v23 && (v13 - v14) <= v16;
            v25 = v24 && (v16 - v17) <= v13;
            v26 = !v25 || (v14 + v12) < v15;
            if (!v26 && (v17 + v15) >= v12)
            {
              v28 = *(v6 + 41);
              v29 = *(v6 + 40);
              v30 = a2;
              do
              {
                v31 = v6;
                v6 = v30;
                v32 = v28 - v29;
                v28 = *(v30 + 41);
                v29 = *(v30 + 40);
                v33 = v28 - v29;
                v30 = v31;
              }

              while (v32 < v28 - v29);
              v34 = *(v31 + 43) - *(v31 + 42);
              v35 = v31[18];
              v36 = v6[18];
              if (v32 > v34)
              {
                v35 = (v35 + v35 * v34) / (v32 + 1);
              }

              if (v33 <= 1)
              {
                v36 = 2 * (*(v6 + 43) - *(v6 + 42)) + 2;
              }

              if (v35 <= 8 * v36)
              {
                if (*a2 == -1 || ((v37 = *(*(result + 312) + 104 * *a2 + 52), 2 * v17 > v37) ? (v38 = 2 * v37 <= v17) : (v38 = 1), !v38))
                {
                  v39 = *a4;
                  if (*a4 == -1)
                  {
                    *a4 = a3;
                  }

                  else
                  {
                    if (v7 < *(v5 + 100 * v39 + 80))
                    {
                      *a4 = a3;
                      a3 = v39;
                    }

                    if (*a5 == -1 || v7 < *(v5 + 100 * *a5 + 80))
                    {
                      *a5 = a3;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sequenceMerge(void *a1, int a2, int a3)
{
  v6 = a1[39];
  v8 = *(v6 + 104 * a3 + 20);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 4 * v8;
    do
    {
      sequenceAddConcomp(a1, a2, *(*(a1[39] + 104 * a3 + 8) + v9), 0);
      v9 += 4;
    }

    while (v10 != v9);
    v6 = a1[39];
  }

  FKSequenceSortAndProcess(a1, v6 + 104 * a2, 1);
  *(a1[39] + 104 * a3 + 20) = 0;

  return sequenceRemove(a1, a3);
}

BOOL doesSeqLineIntersectSeq(uint64_t a1, unsigned __int16 *a2, signed int a3)
{
  v3 = ((((a2[13] + a2[12] + 1) >> 1) - *(a1 + 24)) << 16) / (*(a1 + 26) - *(a1 + 24));
  v4 = *(a1 + 40) / 2 - ((a2[15] + a2[14] + 1) >> 1) + (v3 * *(a1 + 36) + (0x10000 - v3) * *(a1 + 32)) / 0x10000;
  if (v4 < 0)
  {
    v4 = -v4;
  }

  return v4 < a3;
}

uint64_t pixelCount(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = a4 & ~(a4 >> 31);
  LODWORD(v7) = *(a1 + 32) - 1;
  if (v7 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = v7;
  }

  if (v6 > v7)
  {
    return 0;
  }

  result = 0;
  v10 = *(a1 + 28) - 1;
  if (v10 >= a3)
  {
    v10 = a3;
  }

  v11 = a2 & ~(a2 >> 31);
  v12 = *(a1 + 200);
  v13 = *(a1 + 224);
  v14 = (v12 + v11 + v13 * v6);
  do
  {
    if (v11 <= v10)
    {
      v15 = (v10 + 1) - v11;
      v16 = v14;
      do
      {
        v17 = *v16++;
        if (v17 == a6)
        {
          result = (result + 1);
        }

        else
        {
          result = result;
        }

        --v15;
      }

      while (v15);
    }

    v14 += v13;
  }

  while (v6++ < v7);
  return result;
}

BOOL looksOkey(uint64_t a1)
{
  v1 = *(a1 + 86) - *(a1 + 84) + 1;
  v2 = *(a1 + 82) - *(a1 + 80);
  result = 0;
  if (v2 < 4 * v1)
  {
    v3 = v2 + 1;
    if (v1 >= 2 * v3 || 100 * *(a1 + 72) <= 80 * v1 * v3)
    {
      return 1;
    }
  }

  return result;
}

float FKRecognizeConcomp(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 52) = 0;
  *(a2 + 44) = 0;
  *(a2 + 60) = 0;
  v4 = *(a1 + 344);
  v5 = *(a2 + 82) - *(a2 + 80) + 1;
  v6 = *(a2 + 86) - *(a2 + 84) + 1;
  scaleCC(a1, a2, *(v4 + 32));
  **(v4 + 200) = v5 / v6;
  v7 = *(*(a1 + 344) + 24);
  if (!espresso_plan_execute_sync())
  {
    v9 = (*(a1 + 344) + 368);

    *&v8 = extractCandidates(a1, a2, 0, v9, v8);
  }

  return *&v8;
}