uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<8u,12u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(uint64_t result, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    do
    {
      if (result > 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v13 = (a2 + 12 * (v5 & 0xFFFFFFFE));
        v22 = v5 & 0xFFFFFFFE;
        do
        {
          v14 += *a2;
          v23 = *(a2 + 12);
          v15 += v23;
          v16 += *a2 >> 32;
          v24 = *a2 & 1;
          v17 += v23 >> 32;
          v18 -= v24;
          v19 -= v23 & 1;
          v20 -= v24;
          v21 -= v23 & 1;
          a2 += 3;
          v22 -= 2;
        }

        while (v22);
        v8 = v15 + v14;
        v9 = v17 + v16;
        v10 = v19 + v18;
        v11 = v21 + v20;
        v12 = v5 & 0xFFFFFFFE;
        if ((v5 & 0xFFFFFFFE) == v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = a2;
      }

      v25 = v5 - v12;
      do
      {
        v26 = *v13;
        v13 = (v13 + 12);
        v8 += v26;
        v9 += v26 >> 32;
        v10 -= v26 & 1;
        v11 -= v26 & 1;
        --v25;
      }

      while (v25);
LABEL_5:
      v6 = v8 / v5;
      *a4 = ((v11 / v5) | (v10 / v5)) & 1 | v6;
      *(a4 + 1) = BYTE1(v6);
      *(a4 + 2) = BYTE2(v6);
      *(a4 + 3) = BYTE3(v6);
      v7 = v9 / v5;
      *(a4 + 4) = v7;
      *(a4 + 6) = BYTE2(v7);
      *(a4 + 7) = BYTE3(v7);
      a4 += 12;
      a2 = v13;
    }

    while (v13 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<long long>::resolve<4u,12u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(uint64_t result, int *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6 = v5 & 7;
    if ((v5 & 7) == 0)
    {
      v6 = 8;
    }

    if (result < 9)
    {
      do
      {
        v21 = *a2;
        if (result < 2)
        {
          a2 += 3;
        }

        else
        {
          v21 += a2[3];
          if (result == 2)
          {
            a2 += 6;
          }

          else
          {
            v21 += a2[6];
            if (result == 3)
            {
              a2 += 9;
            }

            else
            {
              v21 += a2[9];
              if (result == 4)
              {
                a2 += 12;
              }

              else
              {
                v21 += a2[12];
                if (result == 5)
                {
                  a2 += 15;
                }

                else
                {
                  v21 += a2[15];
                  if (result == 6)
                  {
                    a2 += 18;
                  }

                  else
                  {
                    v21 += a2[18];
                    if (result == 7)
                    {
                      a2 += 21;
                    }

                    else
                    {
                      v21 += a2[21];
                      a2 += 24;
                    }
                  }
                }
              }
            }
          }
        }

        v20 = v21 / v5;
        *a4 = v20;
        *(a4 + 2) = BYTE2(v20);
        *(a4 + 3) = BYTE3(v20);
        a4 += 12;
      }

      while (a2 < v4);
    }

    else
    {
      do
      {
        v7 = a2;
        a2 += 3 * (v5 - v6);
        v8 = 0uLL;
        v9 = v5 - v6;
        v10 = 0uLL;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v13 = v7;
          v7 += 24;
          v14 = vld3q_f32(v13);
          v13 += 12;
          v15 = vld3q_f32(v13);
          v10 = vaddw_high_s32(v10, v14);
          v8 = vaddw_s32(v8, *&v14);
          v12 = vaddw_high_s32(v12, v15);
          v11 = vaddw_s32(v11, *&v15);
          v9 -= 8;
        }

        while (v9);
        v16 = vaddvq_s64(vaddq_s64(vaddq_s64(v11, v8), vaddq_s64(v12, v10)));
        v17 = v6;
        do
        {
          v18 = *a2;
          a2 += 3;
          v16 += v18;
          --v17;
        }

        while (v17);
        v19 = v16 / v5;
        *a4 = v19;
        *(a4 + 2) = BYTE2(v19);
        *(a4 + 3) = BYTE3(v19);
        a4 += 12;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<8u,12u,true,31ull,0ull,63ull,32ull,0ull,0ull,0ull,0ull>(uint64_t result, void *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a2 + a3;
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    do
    {
      if (result > 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v13 = a2 + 12 * (v5 & 0xFFFFFFFE);
        v22 = v5 & 0xFFFFFFFE;
        do
        {
          v14 += *a2;
          v23 = *(a2 + 12);
          v15 += v23;
          v16 += HIDWORD(*a2);
          v24 = *a2 & 1;
          v17 += HIDWORD(v23);
          v18 += v24;
          v19 += v23 & 1;
          v20 += v24;
          v21 += v23 & 1;
          a2 += 3;
          v22 -= 2;
        }

        while (v22);
        v8 = v15 + v14;
        v9 = v17 + v16;
        v10 = v19 + v18;
        v11 = v21 + v20;
        v12 = v5 & 0xFFFFFFFE;
        if ((v5 & 0xFFFFFFFE) == v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = a2;
      }

      v25 = v5 - v12;
      do
      {
        v26 = *v13;
        v13 += 12;
        v8 += v26;
        v9 += HIDWORD(v26);
        v10 += v26 & 1;
        v11 += v26 & 1;
        --v25;
      }

      while (v25);
LABEL_5:
      v6 = v8 / v5;
      *a4 = ((v11 / v5) | (v10 / v5)) & 1 | v6;
      *(a4 + 1) = BYTE1(v6);
      *(a4 + 2) = BYTE2(v6);
      *(a4 + 3) = BYTE3(v6);
      v7 = v9 / v5;
      *(a4 + 4) = v7;
      *(a4 + 6) = BYTE2(v7);
      *(a4 + 7) = BYTE3(v7);
      a4 += 12;
      a2 = v13;
    }

    while (v13 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<unsigned long long>::resolve<4u,12u,true,63ull,32ull,0ull,0ull,0ull,0ull,0ull,0ull>(uint64_t result, const float *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    v6 = v5 & 7;
    if ((v5 & 7) == 0)
    {
      v6 = 8;
    }

    if (result < 9)
    {
      do
      {
        v21 = *a2;
        if (result < 2)
        {
          a2 += 3;
        }

        else
        {
          v21 += *(a2 + 3);
          if (result == 2)
          {
            a2 += 6;
          }

          else
          {
            v21 += *(a2 + 6);
            if (result == 3)
            {
              a2 += 9;
            }

            else
            {
              v21 += *(a2 + 9);
              if (result == 4)
              {
                a2 += 12;
              }

              else
              {
                v21 += *(a2 + 12);
                if (result == 5)
                {
                  a2 += 15;
                }

                else
                {
                  v21 += *(a2 + 15);
                  if (result == 6)
                  {
                    a2 += 18;
                  }

                  else
                  {
                    v21 += *(a2 + 18);
                    if (result == 7)
                    {
                      a2 += 21;
                    }

                    else
                    {
                      v21 += *(a2 + 21);
                      a2 += 24;
                    }
                  }
                }
              }
            }
          }
        }

        v20 = v21 / v5;
        *a4 = v20;
        *(a4 + 2) = BYTE2(v20);
        *(a4 + 3) = BYTE3(v20);
        a4 += 12;
      }

      while (a2 < v4);
    }

    else
    {
      do
      {
        v7 = a2;
        a2 += 3 * (v5 - v6);
        v8 = 0uLL;
        v9 = v5 - v6;
        v10 = 0uLL;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v13 = v7;
          v7 += 24;
          v14 = vld3q_f32(v13);
          v13 += 12;
          v15 = vld3q_f32(v13);
          v10 = vaddw_high_u32(v10, v14);
          v8 = vaddw_u32(v8, *&v14);
          v12 = vaddw_high_u32(v12, v15);
          v11 = vaddw_u32(v11, *&v15);
          v9 -= 8;
        }

        while (v9);
        v16 = vaddvq_s64(vaddq_s64(vaddq_s64(v11, v8), vaddq_s64(v12, v10)));
        v17 = v6;
        do
        {
          v18 = *a2;
          a2 += 3;
          v16 += LODWORD(v18);
          --v17;
        }

        while (v17);
        v19 = v16 / v5;
        *a4 = v19;
        *(a4 + 2) = BYTE2(v19);
        *(a4 + 3) = BYTE3(v19);
        a4 += 12;
      }

      while (a2 < v4);
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<12u,(unsigned char)32,(unsigned char)32,(unsigned char)32,(unsigned char)0>(uint64_t result, float32x2_t *a2, unsigned int a3, float *a4, double a5)
{
  if (a3)
  {
    *&a5 = result;
    if (!result)
    {
      v11 = 0.0 / *&a5;
      while (1)
      {
        *a4 = v11;
        a4[1] = v11;
        a4[2] = v11;
        a4 += 3;
      }
    }

    v5 = (a2 + a3);
    v6 = vdup_lane_s32(*&a5, 0);
    do
    {
      v7 = 0;
      v8 = 0.0;
      v9 = result;
      v10 = a2;
      do
      {
        v7 = vadd_f32(v7, *v10);
        v8 = v8 + v10[1].f32[0];
        v10 = (v10 + 12);
        --v9;
      }

      while (v9);
      a2 = (a2 + 12 * (result - 1) + 12);
      *a4 = vdiv_f32(v7, v6);
      a4[2] = v8 / *&a5;
      a4 += 3;
    }

    while (a2 < v5);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<8u,(unsigned char)16,(unsigned char)16,(unsigned char)16,(unsigned char)16>(uint64_t result, __int16 *a2, unsigned int a3, _WORD *a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    v5 = result;
    do
    {
      if (result)
      {
        v8 = 0;
        v9 = 0.0;
        v10 = a2;
        v11 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        while (1)
        {
          v16 = *v10;
          v17 = (v16 >> 10) & 0x1F;
          v18 = v16 & 0x80000000;
          if (v17 == 31)
          {
            LODWORD(v23) = v18 | (*v10 << 13) | 0x7F800000;
            v24 = v10[1];
            v25 = (v24 >> 10) & 0x1F;
            v26 = v24 & 0x80000000;
            if (v25 == 31)
            {
              goto LABEL_20;
            }

            goto LABEL_25;
          }

          v19 = v16 & 0x3FF;
          if (v17)
          {
            break;
          }

          if (v19)
          {
            v20 = 12;
            v21 = 956301312;
            do
            {
              v22 = v20 - 12;
              ++v20;
              v21 -= 0x800000;
            }

            while (((v19 << v22) & 0x400) == 0);
LABEL_24:
            LODWORD(v23) = v21 | v18 | (v19 << v20) & 0x7FFFFF;
            v24 = v10[1];
            v25 = (v24 >> 10) & 0x1F;
            v26 = v24 & 0x80000000;
            if (v25 == 31)
            {
              goto LABEL_20;
            }

            goto LABEL_25;
          }

          v23 = 0.0;
          v24 = v10[1];
          v25 = (v24 >> 10) & 0x1F;
          v26 = v24 & 0x80000000;
          if (v25 == 31)
          {
LABEL_20:
            LODWORD(v27) = v26 | (v24 << 13) | 0x7F800000;
            v28 = v10[2];
            v29 = (v28 >> 10) & 0x1F;
            v30 = v28 & 0x80000000;
            if (v29 == 31)
            {
              goto LABEL_21;
            }

            goto LABEL_32;
          }

LABEL_25:
          v35 = v24 & 0x3FF;
          if (v25)
          {
            v37 = (v25 << 23) + 939524096;
            v36 = 13;
            goto LABEL_31;
          }

          if (v35)
          {
            v36 = 12;
            v37 = 956301312;
            do
            {
              v38 = v36 - 12;
              ++v36;
              v37 -= 0x800000;
            }

            while (((v35 << v38) & 0x400) == 0);
LABEL_31:
            LODWORD(v27) = v37 | v26 | (v35 << v36) & 0x7FFFFF;
            v28 = v10[2];
            v29 = (v28 >> 10) & 0x1F;
            v30 = v28 & 0x80000000;
            if (v29 == 31)
            {
              goto LABEL_21;
            }

            goto LABEL_32;
          }

          v27 = 0.0;
          v28 = v10[2];
          v29 = (v28 >> 10) & 0x1F;
          v30 = v28 & 0x80000000;
          if (v29 == 31)
          {
LABEL_21:
            LODWORD(v31) = v30 | (v28 << 13) | 0x7F800000;
            v32 = v10[3];
            v33 = (v32 >> 10) & 0x1F;
            v34 = v32 & 0x80000000;
            if (v33 == 31)
            {
              goto LABEL_10;
            }

            goto LABEL_39;
          }

LABEL_32:
          v39 = v28 & 0x3FF;
          if (v29)
          {
            v41 = (v29 << 23) + 939524096;
            v40 = 13;
            goto LABEL_38;
          }

          if (v39)
          {
            v40 = 12;
            v41 = 956301312;
            do
            {
              v42 = v40 - 12;
              ++v40;
              v41 -= 0x800000;
            }

            while (((v39 << v42) & 0x400) == 0);
LABEL_38:
            LODWORD(v31) = v41 | v30 | (v39 << v40) & 0x7FFFFF;
            v32 = v10[3];
            v33 = (v32 >> 10) & 0x1F;
            v34 = v32 & 0x80000000;
            if (v33 == 31)
            {
              goto LABEL_10;
            }

            goto LABEL_39;
          }

          v31 = 0.0;
          v32 = v10[3];
          v33 = (v32 >> 10) & 0x1F;
          v34 = v32 & 0x80000000;
          if (v33 == 31)
          {
LABEL_10:
            v14 = v34 | (v32 << 13) | 0x7F800000;
            goto LABEL_11;
          }

LABEL_39:
          v43 = v32 & 0x3FF;
          if (v33)
          {
            v45 = (v33 << 23) + 939524096;
            v44 = 13;
          }

          else
          {
            if (!v43)
            {
              v15 = 0.0;
              goto LABEL_12;
            }

            v44 = 12;
            v45 = 956301312;
            do
            {
              v46 = v44 - 12;
              ++v44;
              v45 -= 0x800000;
            }

            while (((v43 << v46) & 0x400) == 0);
          }

          v14 = v45 | v34 | (v43 << v44) & 0x7FFFFF;
LABEL_11:
          v15 = *&v14;
LABEL_12:
          v13 = v13 + v23;
          v12 = v12 + v27;
          v11 = v11 + v31;
          v9 = v9 + v15;
          v10 += 4;
          if (++v8 == result)
          {
            a2 += 4 * (result - 1) + 4;
            goto LABEL_55;
          }
        }

        v21 = (v17 << 23) + 939524096;
        v20 = 13;
        goto LABEL_24;
      }

      v13 = 0.0;
      v12 = 0.0;
      v11 = 0.0;
      v9 = 0.0;
LABEL_55:
      v47 = COERCE_UNSIGNED_INT(v13 / v5) & 0x7F800000;
      v48 = COERCE_UNSIGNED_INT(v13 / v5) & 0x7FFFFF;
      v49 = HIWORD(COERCE_UNSIGNED_INT(v13 / v5)) & 0x8000;
      if (v47 == 2139095040)
      {
        v49 |= (v48 >> 13) | 0x7C00;
      }

      else if (v47)
      {
        if (v47 < 0x47000001)
        {
          if (v47 >> 23 >= 0x71)
          {
            v49 |= (v47 >> 13) + (v48 >> 13) + 0x4000;
          }
        }

        else
        {
          LOWORD(v49) = v49 | 0x7C00;
        }
      }

      else
      {
        if (v48)
        {
          v50 = COERCE_UNSIGNED_INT(v13 / v5) >> 13;
        }

        else
        {
          LOWORD(v50) = 0;
        }

        LOWORD(v49) = v49 | v50;
      }

      *a4 = v49;
      v51 = COERCE_UNSIGNED_INT(v12 / v5) & 0x7F800000;
      v52 = COERCE_UNSIGNED_INT(v12 / v5) & 0x7FFFFF;
      v53 = HIWORD(COERCE_UNSIGNED_INT(v12 / v5)) & 0x8000;
      if (v51 == 2139095040)
      {
        v53 |= (v52 >> 13) | 0x7C00;
      }

      else if (v51)
      {
        if (v51 < 0x47000001)
        {
          if (v51 >> 23 >= 0x71)
          {
            v53 |= (v51 >> 13) + (v52 >> 13) + 0x4000;
          }
        }

        else
        {
          LOWORD(v53) = v53 | 0x7C00;
        }
      }

      else
      {
        if (v52)
        {
          v54 = COERCE_UNSIGNED_INT(v12 / v5) >> 13;
        }

        else
        {
          LOWORD(v54) = 0;
        }

        LOWORD(v53) = v53 | v54;
      }

      a4[1] = v53;
      v55 = COERCE_UNSIGNED_INT(v11 / v5) & 0x7F800000;
      v56 = COERCE_UNSIGNED_INT(v11 / v5) & 0x7FFFFF;
      v57 = HIWORD(COERCE_UNSIGNED_INT(v11 / v5)) & 0x8000;
      if (v55 == 2139095040)
      {
        v57 |= (v56 >> 13) | 0x7C00;
      }

      else if (v55)
      {
        if (v55 < 0x47000001)
        {
          if (v55 >> 23 >= 0x71)
          {
            v57 |= (v55 >> 13) + (v56 >> 13) + 0x4000;
          }
        }

        else
        {
          LOWORD(v57) = v57 | 0x7C00;
        }
      }

      else
      {
        if (v56)
        {
          v58 = COERCE_UNSIGNED_INT(v11 / v5) >> 13;
        }

        else
        {
          LOWORD(v58) = 0;
        }

        LOWORD(v57) = v57 | v58;
      }

      a4[2] = v57;
      v59 = COERCE_UNSIGNED_INT(v9 / v5) & 0x7F800000;
      v60 = COERCE_UNSIGNED_INT(v9 / v5) & 0x7FFFFF;
      v7 = HIWORD(COERCE_UNSIGNED_INT(v9 / v5)) & 0x8000;
      if (v59 == 2139095040)
      {
        v7 |= v60 >> 13;
      }

      else
      {
        if (!v59)
        {
          if (v60)
          {
            v6 = COERCE_UNSIGNED_INT(v9 / v5) >> 13;
          }

          else
          {
            LOWORD(v6) = 0;
          }

          LOWORD(v7) = v7 | v6;
          goto LABEL_7;
        }

        if (v59 < 0x47000001)
        {
          if (v59 >> 23 >= 0x71)
          {
            v7 |= (v59 >> 13) + (v60 >> 13) + 0x4000;
          }

          goto LABEL_7;
        }
      }

      LOWORD(v7) = v7 | 0x7C00;
LABEL_7:
      a4[3] = v7;
      a4 += 4;
    }

    while (a2 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::MSAABufferResolver<float>::resolve<16u,(unsigned char)32,(unsigned char)32,(unsigned char)32,(unsigned char)32>(uint64_t result, unint64_t a2, unsigned int a3, int32x4_t *a4, double a5)
{
  if (a3)
  {
    *&a5 = result;
    if (!result)
    {
      *&a5 = 0.0 / *&a5;
        ;
      }
    }

    v5 = a2 + a3;
    v6 = vdupq_lane_s32(*&a5, 0);
    do
    {
      v7 = 0;
      v8 = 0uLL;
      do
      {
        v8 = vaddq_f32(v8, *(a2 + 16 * v7++));
      }

      while (result != v7);
      a2 += 16 * (result - 1) + 16;
      *a4++ = vdivq_f32(v8, v6);
    }

    while (a2 < v5);
  }

  return result;
}

uint64_t GPUTools::GL::MSAADepthStencilResolver<unsigned long long>::resolve<4u,4u,true,63ull,40ull,39ull,32ull>(uint64_t result, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a2 + a3);
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    if (result <= 7)
    {
      do
      {
        v33 = *a2 >> 8;
        v34 = *a2;
        if (result < 2)
        {
          ++a2;
        }

        else
        {
          v35 = a2[1];
          if (v33 >= v35 >> 8)
          {
            v33 = v35 >> 8;
          }

          v34 += v35;
          if (result == 2)
          {
            a2 += 2;
          }

          else
          {
            v36 = a2[2];
            if (v33 >= v36 >> 8)
            {
              v33 = v36 >> 8;
            }

            v34 += v36;
            if (result == 3)
            {
              a2 += 3;
            }

            else
            {
              v37 = a2[3];
              if (v33 >= v37 >> 8)
              {
                v33 = v37 >> 8;
              }

              v34 += v37;
              if (result == 4)
              {
                a2 += 4;
              }

              else
              {
                v38 = a2[4];
                if (v33 >= v38 >> 8)
                {
                  v33 = v38 >> 8;
                }

                v34 += v38;
                if (result == 5)
                {
                  a2 += 5;
                }

                else
                {
                  v39 = a2[5];
                  if (v33 >= v39 >> 8)
                  {
                    v33 = v39 >> 8;
                  }

                  v34 += v39;
                  if (result == 6)
                  {
                    a2 += 6;
                  }

                  else
                  {
                    v40 = a2[6];
                    if (v33 >= v40 >> 8)
                    {
                      v33 = v40 >> 8;
                    }

                    v34 += v40;
                    a2 += 7;
                  }
                }
              }
            }
          }
        }

        *a4 = v34 / v5;
        *(a4 + 1) = v33;
        *(a4 + 3) = BYTE2(v33);
        a4 += 4;
      }

      while (a2 < v4);
    }

    else
    {
      v6 = 4 * (v5 & 0xFFFFFFF8);
      if ((v5 & 0xFFFFFFF8) == v5)
      {
        v7 = a2 + 4;
        v8.i64[0] = 255;
        v8.i64[1] = 255;
        do
        {
          v9.i64[0] = -1;
          v9.i64[1] = -1;
          a2 = (a2 + v6);
          v10 = 0uLL;
          v11 = v7;
          v12 = v5 & 0xFFFFFFF8;
          v13 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
          v16.i64[0] = -1;
          v16.i64[1] = -1;
          v17.i64[0] = -1;
          v17.i64[1] = -1;
          v18.i64[0] = -1;
          v18.i64[1] = -1;
          do
          {
            v19 = *(v11 - 1);
            v20.i64[0] = DWORD2(v19);
            v20.i64[1] = HIDWORD(v19);
            v21 = v20;
            v20.i64[0] = v19;
            v20.i64[1] = DWORD1(v19);
            v22 = v20;
            v20.i64[0] = *(v11 + 1);
            v20.i64[1] = HIDWORD(*v11);
            v23 = v20;
            v20.i64[0] = *v11;
            v20.i64[1] = HIDWORD(*v11);
            v24 = vshrq_n_u64(v22, 8uLL);
            v25 = vshrq_n_u64(v21, 8uLL);
            v26 = vshrq_n_u64(v20, 8uLL);
            v27 = vshrq_n_u64(v23, 8uLL);
            v16 = vbslq_s8(vcgtq_u64(v25, v16), v16, v25);
            v9 = vbslq_s8(vcgtq_u64(v24, v9), v9, v24);
            v18 = vbslq_s8(vcgtq_u64(v27, v18), v18, v27);
            v17 = vbslq_s8(vcgtq_u64(v26, v17), v17, v26);
            v13 = vaddq_s64(vandq_s8(v21, v8), v13);
            v10 = vaddq_s64(vandq_s8(v22, v8), v10);
            v15 = vaddq_s64(vandq_s8(v23, v8), v15);
            v14 = vaddq_s64(vandq_s8(v20, v8), v14);
            v11 += 8;
            v12 -= 8;
          }

          while (v12);
          v28 = vaddvq_s64(vaddq_s64(vaddq_s64(v14, v10), vaddq_s64(v15, v13)));
          v29 = vbslq_s8(vcgtq_u64(v17, v9), v9, v17);
          v30 = vbslq_s8(vcgtq_u64(v18, v16), v16, v18);
          v31 = vbslq_s8(vcgtq_u64(v30, v29), v29, v30);
          v30.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
          v32 = vbsl_s8(vcgtd_u64(v30.u64[0], v31.u64[0]), *v31.i8, *v30.i8);
          *a4 = v28 / v5;
          *(a4 + 1) = v32.i16[0];
          *(a4 + 3) = v32.i8[2];
          a4 += 4;
          v7 = (v7 + v6);
        }

        while (a2 < v4);
      }

      else
      {
        v41.i64[0] = 255;
        v41.i64[1] = 255;
        do
        {
          v42.i64[0] = -1;
          v42.i64[1] = -1;
          v43 = 0uLL;
          v44 = a2 + 4;
          a2 = (a2 + v6);
          v45 = v5 & 0xFFFFFFF8;
          v46 = 0uLL;
          v47 = 0uLL;
          v48 = 0uLL;
          v49.i64[0] = -1;
          v49.i64[1] = -1;
          v50.i64[0] = -1;
          v50.i64[1] = -1;
          v51.i64[0] = -1;
          v51.i64[1] = -1;
          do
          {
            v52 = *(v44 - 1);
            v53.i64[0] = DWORD2(v52);
            v53.i64[1] = HIDWORD(v52);
            v54 = v53;
            v53.i64[0] = v52;
            v53.i64[1] = DWORD1(v52);
            v55 = v53;
            v53.i64[0] = *(v44 + 1);
            v53.i64[1] = HIDWORD(*v44);
            v56 = v53;
            v53.i64[0] = *v44;
            v53.i64[1] = HIDWORD(*v44);
            v57 = vshrq_n_u64(v55, 8uLL);
            v58 = vshrq_n_u64(v54, 8uLL);
            v59 = vshrq_n_u64(v53, 8uLL);
            v60 = vshrq_n_u64(v56, 8uLL);
            v49 = vbslq_s8(vcgtq_u64(v58, v49), v49, v58);
            v42 = vbslq_s8(vcgtq_u64(v57, v42), v42, v57);
            v51 = vbslq_s8(vcgtq_u64(v60, v51), v51, v60);
            v50 = vbslq_s8(vcgtq_u64(v59, v50), v50, v59);
            v46 = vaddq_s64(vandq_s8(v54, v41), v46);
            v43 = vaddq_s64(vandq_s8(v55, v41), v43);
            v48 = vaddq_s64(vandq_s8(v56, v41), v48);
            v47 = vaddq_s64(vandq_s8(v53, v41), v47);
            v44 += 8;
            v45 -= 8;
          }

          while (v45);
          v61 = vaddvq_s64(vaddq_s64(vaddq_s64(v47, v43), vaddq_s64(v48, v46)));
          v62 = vbslq_s8(vcgtq_u64(v50, v42), v42, v50);
          v63 = vbslq_s8(vcgtq_u64(v51, v49), v49, v51);
          v64 = vbslq_s8(vcgtq_u64(v63, v62), v62, v63);
          v63.i64[0] = vextq_s8(v64, v64, 8uLL).u64[0];
          v65 = vbsl_s8(vcgtd_u64(v63.u64[0], v64.u64[0]), *v64.i8, *v63.i8);
          v66 = v5 - (v5 & 0xFFFFFFF8);
          do
          {
            v68 = *a2++;
            v67 = v68;
            v69 = v68 >> 8;
            if (*&v65 >= v69)
            {
              v65 = v69;
            }

            v61 += v67;
            --v66;
          }

          while (v66);
          *a4 = v61 / v5;
          *(a4 + 1) = v65.i16[0];
          *(a4 + 3) = v65.i8[2];
          a4 += 4;
        }

        while (a2 < v4);
      }
    }
  }

  return result;
}

uint64_t GPUTools::GL::MSAADepthStencilResolver<float>::resolve<8u,8u,true,63ull,32ull,31ull,24ull>(uint64_t result, char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = &a2[a3];
    if (result <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = result;
    }

    do
    {
      v6 = 0;
      v7 = 3.4028e38;
      v8 = v5;
      do
      {
        v10 = *a2;
        a2 += 8;
        v9 = BYTE3(v10);
        v11 = *(&v10 + 1);
        if (v7 >= *(&v10 + 1))
        {
          v7 = v11;
        }

        v6 += v9;
        --v8;
      }

      while (v8);
      *a4 = 0;
      *(a4 + 2) = 0;
      *(a4 + 3) = v6 / v5;
      *(a4 + 4) = v7;
      a4 += 8;
    }

    while (a2 < v4);
  }

  return result;
}

uint64_t GPUTools::GL::IsLumAlphaFormatTextureFilterable(GPUTools::GL *this, int a2, unsigned int a3)
{
  v3 = this;
  result = 1;
  v5 = v3 - 22;
  if ((v3 - 34838) <= 9)
  {
    if (((1 << v5) & 0xD) != 0)
    {
      return 0;
    }

    if (((1 << v5) & 0x340) != 0)
    {
      if (a2 > 2)
      {
        return 1;
      }

      else
      {
        return a3;
      }
    }
  }

  v6 = v3 - 32828;
  if (v6 > 9 || ((1 << v6) & 0x211) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t GPUTools::GL::IsFormatColorRenderable(GPUTools::GL *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v5 = &GPUTools::GL::sInternalFormatsTable;
  result = a3;
  v7 = 6660;
  while (*v5 != v4)
  {
    v5 += 15;
    v7 -= 60;
    if (!v7)
    {
      v5 = &GPUTools::GL::sUnknownFormat;
      break;
    }
  }

  if ((v5[14] & 2) != 0)
  {
    return 1;
  }

  if (v4 > 34841)
  {
    result = a2;
    if ((v4 - 34842) >= 2)
    {
      if (v4 == 35898)
      {
        return a3 | a4;
      }

      else
      {
        result = a4;
        if (v4 != 35901)
        {
          return 0;
        }
      }
    }
  }

  else if (v4 > 33327)
  {
    if ((v4 - 34836) >= 2 && v4 != 33328)
    {
      return 0;
    }
  }

  else if (v4 == 33325)
  {
    return a2;
  }

  else if (v4 != 33326)
  {
    result = a2;
    if (v4 != 33327)
    {
      return 0;
    }
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

uint64_t *GPUTools::SM::GL::GetEnumName(GPUTools::SM::GL *this)
{
  v2 = this;
  if (GPUTools::SM::GL::GetEnumName(int)::sEnumNameMappingOnce != -1)
  {
    GPUTools::SM::GL::GetEnumName();
  }

  result = std::__hash_table<std::__hash_value_type<int,char const*>,std::__unordered_map_hasher<int,std::__hash_value_type<int,char const*>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,char const*>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,char const*>>>::find<int>(GPUTools::SM::GL::GetEnumName(int)::sEnumNameMapping, &v2);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t GPUTools::SM::GL::GetInternalBindingEnum(GPUTools::SM::GL *this)
{
  if (this > 35631)
  {
    if (this <= 36005)
    {
      if (this <= 35724)
      {
        if (this == 35632)
        {
          return 4294966774;
        }

        if (this == 35633)
        {
          return 4294966775;
        }
      }

      else
      {
        switch(this)
        {
          case 0x8B8D:
            return 4294966779;
          case 0x8C1D:
            return 4294966794;
          case 0x8C8F:
            return 4294966785;
        }
      }
    }

    else if (this > 36388)
    {
      switch(this)
      {
        case 0x8E25:
          return 4294966776;
        case 0x8F36:
          return 4294966789;
        case 0x8F37:
          return 4294966788;
      }
    }

    else
    {
      switch(this)
      {
        case 0x8CA6:
          return 4294966781;
        case 0x8CA7:
          return 4294966783;
        case 0x8CAA:
          return 4294966780;
      }
    }
  }

  else if (this <= 34963)
  {
    if (this <= 33369)
    {
      if (this == 32873)
      {
        return 4294966796;
      }

      if (this == 32874)
      {
        return 4294966793;
      }
    }

    else
    {
      switch(this)
      {
        case 0x825A:
          return 4294966777;
        case 0x8514:
          return 4294966795;
        case 0x85B5:
          return 4294966778;
      }
    }
  }

  else if (this > 35054)
  {
    switch(this)
    {
      case 0x88EF:
        return 4294966786;
      case 0x8919:
        return 4294966792;
      case 0x8A28:
        return 4294966784;
    }
  }

  else
  {
    switch(this)
    {
      case 0x8894:
        return 4294966791;
      case 0x8895:
        return 4294966790;
      case 0x88ED:
        return 4294966787;
    }
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,char const*>,std::__unordered_map_hasher<int,std::__hash_value_type<int,char const*>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,char const*>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,char const*>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<int,char const*>,std::__unordered_map_hasher<int,std::__hash_value_type<int,char const*>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,char const*>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,char const*>>>::find<int>(void *a1, int *a2)
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
    if (*&v2 <= v3)
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

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
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
  }

  return result;
}

uint64_t GPUTools::GL::CopyProgramUniform(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a4;
  if (a6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = -1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN8GPUTools2GLL23GetValidUniformLocationERKNS0_10DispatcherE11DYOpenGLAPIjRKNS0_14ProgramUniformE_block_invoke;
    v12[3] = &unk_2791750A0;
    v12[5] = &v13;
    v12[6] = a5;
    v12[4] = &v17;
    GPUTools::GL::EnumerateProgramActiveUniforms(a1, a2, a4);
    v9 = *(v18 + 6);
    if (v9 == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else if (*(v14 + 24))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = (*(a1[1] + 5000))(*(*a1 + 16), a4, *a5);
  }

  if (v10 == -1)
  {
    return v10;
  }

  LODWORD(v17) = 0;
  (*(a1[1] + 832))(*(*a1 + 16), 35725, &v17);
  (*(a1[1] + 4800))(*(*a1 + 16), v7);
  GPUTools::GL::DYGetShaderVariableTypeInfo(*(a5 + 24), v12);
  switch(HIDWORD(v12[0]))
  {
    case 0x1404:
      operator new[]();
    case 0x1405:
      operator new[]();
    case 0x1406:
      operator new[]();
  }

  dy_string_from_enum(SHIDWORD(v12[0]));
  dy_abort();
  result = dy_abort();
  __break(1u);
  return result;
}

void *GPUTools::GL::SetUniformArrayLocationStride(void *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 28) != -1 && *(a3 + 20) != 1)
  {
    v5 = *a3 + *(a3 + 16);
    if (*(v5 - 3) == 91 && *(v5 - 2) == 48 && *(v5 - 1) == 93)
    {
      *(v5 - 2) = 49;
      result = (*(result[1] + 5000))(*(*result + 16), a2, *a3);
      *(*a3 + *(a3 + 16) - 2) = 48;
      if (result == -1)
      {
        GPUTools::GL::SetUniformArrayLocationStride();
      }

      *(a3 + 44) = result - *(a3 + 28);
    }
  }

  return result;
}

uint64_t ___ZN8GPUTools2GL37CopyProgramActiveUniformBlockBindingsERKNS0_10DispatcherEjj_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 8) + 3552))(*(**(a1 + 32) + 16), *(a1 + 40), *a2);
  v5 = *(*(*(a1 + 32) + 8) + 3576);
  v6 = *(**(a1 + 32) + 16);
  v7 = *(a1 + 40);
  v8 = *(a2 + 44);

  return v5(v6, v7, v4, v8);
}

uint64_t GPUTools::GL::EnumerateProgramTransformFeedbackVaryings(void *a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  result = (*(a1[1] + 5264))(*(*a1 + 16), a2, 35971, &v6);
  if (v6)
  {
    v5 = 0;
    (*(a1[1] + 5264))(*(*a1 + 16), a2, 35958, &v5);
    operator new[]();
  }

  return result;
}

uint64_t GPUTools::GL::CopyProgramTransformFeedbackVaryings(void *a1, uint64_t a2)
{
  v7 = 0;
  result = (*(a1[1] + 5264))(*(*a1 + 16), a2, 35971, &v7);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    (*(a1[1] + 5264))(*(*a1 + 16), a2, 35967, &v6);
    (*(a1[1] + 5264))(*(*a1 + 16), a2, 35958, &v5);
    operator new[]();
  }

  return result;
}

char *GPUTools::GL::EnumerateTextureTargets(char *result, int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v12 = (a3 + 16);
        (*(a3 + 16))(a3, 3553);
        break;
      case 4:
        v12 = (a3 + 16);
        (*(a3 + 16))(a3, 3553);
        (*v12)(a3, 35866);
        (*v12)(a3, 32879);
        break;
      case 3:
        v11 = (a3 + 16);
        (*(a3 + 16))(a3, 3552);
        (*v11)(a3, 35864);
        (*v11)(a3, 3553);
        (*v11)(a3, 35866);
        (*v11)(a3, 37120);
        (*v11)(a3, 37122);
        (*v11)(a3, 32879);
        (*v11)(a3, 34067);
        (*v11)(a3, 34037);
        v4 = *v11;
        v5 = a3;
        v6 = 35882;
        goto LABEL_17;
      default:
        return result;
    }

    v4 = *v12;
    v5 = a3;
    v6 = 34067;
LABEL_17:

    return (v4)(v5, v6);
  }

  v7 = result;
  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    (*(a3 + 16))(a3, 3553);
    v8 = (*(*(v7 + 1) + 936))(*(*v7 + 16), 7939);
    result = strstr(v8, "GL_OES_texture_cube_map");
    if (!result)
    {
      return result;
    }

    v4 = *(a3 + 16);
    v5 = a3;
    v6 = 34067;
    goto LABEL_17;
  }

  v13 = (a3 + 16);
  (*(a3 + 16))(a3, 3552);
  (*v13)(a3, 3553);
  (*v13)(a3, 32879);
  (*v13)(a3, 34067);
  v9 = (*(*(v7 + 1) + 936))(*(*v7 + 16), 7939);
  if (strstr(v9, "GL_EXT_texture_array"))
  {
    (*(a3 + 16))(a3, 35864);
    (*(a3 + 16))(a3, 35866);
  }

  v10 = (*(*(v7 + 1) + 936))(*(*v7 + 16), 7939);
  result = strstr(v10, "GL_ARB_texture_rectangle");
  if (result)
  {
    v4 = *(a3 + 16);
    v5 = a3;
    v6 = 34037;
    goto LABEL_17;
  }

  return result;
}

uint64_t GPUTools::GL::GetTexStorageInfo(void *a1, int a2, unsigned int *a3, uint64_t a4)
{
  LODWORD(v5) = a2;
  *a4 = xmmword_24C1588D0;
  v7 = 1;
  *(a4 + 16) = 1;
  if (*(a3 + 9) == 1)
  {
    HIDWORD(v16) = 0;
    (*(a1[1] + 832))(*(*a1 + 16), *a3, &v16 + 4);
    v8 = HIDWORD(v16);
    if (HIWORD(HIDWORD(v16)))
    {
      v8 = HIWORD(HIDWORD(v16));
    }

    v9 = 16 * (HIWORD(HIDWORD(v16)) != 0);
    if (v8 > 0xFF)
    {
      v8 >>= 8;
      v9 = (16 * (HIWORD(HIDWORD(v16)) != 0)) | 8;
    }

    if (v8 > 0xF)
    {
      v8 >>= 4;
      v9 |= 4u;
    }

    if (v8 > 3)
    {
      v8 >>= 2;
      v9 |= 2u;
    }

    v7 = (v9 | (v8 > 1)) + 1;
  }

  v10 = 0;
  if (v5 == 34067)
  {
    v5 = 34069;
  }

  else
  {
    v5 = v5;
  }

  while (1)
  {
    v16 = 0;
    v15 = 0;
    (*(a1[1] + 1000))(*(*a1 + 16), v5, v10, 4096, &v16 + 4);
    (*(a1[1] + 1000))(*(*a1 + 16), v5, v10, 4097, &v16);
    result = (*(a1[1] + 1000))(*(*a1 + 16), v5, v10, 32881, &v15);
    if (v10)
    {
      v12 = v16;
      v13 = v15;
      if (!HIDWORD(v16))
      {
        break;
      }
    }

    else
    {
      result = (*(a1[1] + 1000))(*(*a1 + 16), v5, 0, 4099, a4 + 4);
      v12 = v16;
      v14 = HIDWORD(v16);
      *(a4 + 8) = HIDWORD(v16);
      *(a4 + 12) = v12;
      v13 = v15;
      *(a4 + 16) = v15;
      if (!v14)
      {
        break;
      }
    }

    if (!v12 || !v13)
    {
      break;
    }

    v10 = (v10 + 1);
    if (v7 == v10)
    {
      *a4 = v7;
      return result;
    }
  }

  *a4 = v10;
  return result;
}

double GPUTools::GL::GetImageInfo(id **a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  *(a5 + 28) = 0x100000001;
  v9 = a5 + 28;
  *(a5 + 36) = 0;
  v10 = a5 + 36;
  *(a5 + 41) = 0;
  if (a3 == 36161)
  {
    LODWORD(v11) = 36161;
    (a1[1][670])((*a1)[2], 36161, 36162, a5 + 24);
    (a1[1][670])((*a1)[2], 36161, 36163, v9);
    (a1[1][670])((*a1)[2], 36161, 36164, a5 + 12);
    (a1[1][670])((*a1)[2], 36161, 36011, a5 + 40);
  }

  else
  {
    if (a3 == 34067)
    {
      v11 = 34069;
    }

    else
    {
      v11 = a3;
    }

    (a1[1][125])((*a1)[2], v11, a4, 4096, a5 + 24);
    (a1[1][125])((*a1)[2], v11, a4, 4097, v9);
    (a1[1][125])((*a1)[2], v11, a4, 32881, a5 + 32);
    (a1[1][125])((*a1)[2], v11, a4, 34465, v10);
    (a1[1][125])((*a1)[2], v11, a4, 4099, a5 + 12);
  }

  if (*(a5 + 24) && *(a5 + 28) && *(a5 + 32))
  {
    if (*(a5 + 36))
    {
      *(a5 + 16) = 0;
      *a5 = *(a5 + 12);
      *(a5 + 8) = *(a5 + 20);
    }

    else
    {
      *a5 = GPUTools::GL::GetImageUploadFormatInfo(*(a5 + 12), 0);
      *(a5 + 8) = v13;
      if ((a2 - 1) <= 1 && v11 != 36161)
      {
        GPUTools::GL::DYProcessImageUploadFormatForLegacyES(a5);
      }

      v14[0] = v11;
      v14[1] = a4;
      if (![**a1 getParameter:1500 to:v14])
      {
        result = v15;
        *(a5 + 16) = v15;
      }
    }
  }

  return result;
}

uint64_t GPUTools::GL::GetImageInfo(id **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 == 36161)
  {
    v16[0] = 0;
    (a1[1][104])((*a1)[2], 36007, v16);
    (a1[1][666])((*a1)[2], 36161, a3);
    v11.n128_f64[0] = GPUTools::GL::GetImageInfo(a1, a2, 0x8D41u, a5, a6);
    return (a1[1][666])((*a1)[2], 36161, v16[0], v11);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, 15);
    v14 = GPUTools::GL::DYGetTextureTargetInfo(a4, v16);
    (a1[1][104])((*a1)[2], v16[1], &v17, v14);
    (a1[1][5])((*a1)[2], a4, a3);
    v15.n128_f64[0] = GPUTools::GL::GetImageInfo(a1, a2, a4, a5, a6);
    return (a1[1][5])((*a1)[2], a4, v17, v15);
  }
}

uint64_t GPUTools::GL::GetImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a6)
  {
    v15[0] = a2;
    v15[1] = a3;
    v15[2] = a4;
    v15[3] = a5;
    v16 = a7;
    return [**a1 getParameter:605 to:v15];
  }

  else
  {
    v15[0] = 0;
    [**a1 getParameter:1501 to:v15];
    v14 = 1;
    [**a1 setParameter:1501 to:&v14];
    (*(*(a1 + 8) + 984))(*(*a1 + 16), a2, a3, a4, a5, a7);
    return [**a1 setParameter:1501 to:v15];
  }
}

uint64_t GPUTools::GL::GetFramebufferAttachmentInfo(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 12) = 0;
  *(a5 + 28) = 0;
  *(a5 + 4) = 0;
  *(a5 + 20) = 0;
  *a5 = a4;
  (*(a1[1] + 5440))(*(*a1 + 16), a3, a4, 36049, a5 + 4);
  result = (*(a1[1] + 5440))(*(*a1 + 16), a3, a4, 36048, a5 + 8);
  v11 = *(a5 + 8);
  if (v11 != 5890)
  {
    if (v11 == 36161)
    {
      *(a5 + 12) = 36161;
    }

    return result;
  }

  (*(a1[1] + 5440))(*(*a1 + 16), a3, a4, 36050, a5 + 20);
  (*(a1[1] + 5440))(*(*a1 + 16), a3, a4, 36051, a5 + 16);
  if ((a2 - 1) >= 2)
  {
    if ((a2 - 3) > 1)
    {
      if (a2 < 3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      (*(a1[1] + 5440))(*(*a1 + 16), a3, a4, 36052, a5 + 24);
    }

    (*(a1[1] + 5440))(*(*a1 + 16), a3, a4, 36263, a5 + 28);
  }

LABEL_9:
  v12 = *(a1[1] + 5440);
  v13 = *(*a1 + 16);

  return v12(v13, a3, a4, 35419, a5 + 12);
}

uint64_t GPUTools::GL::SavePixelStorePackState(void *a1, int a2, int a3, uint64_t a4)
{
  result = (*(a1[1] + 832))(*(*a1 + 16), 3333, a4 + 12);
  if ((a2 - 1) >= 2)
  {
    (*(a1[1] + 832))(*(*a1 + 16), 3330, a4);
    (*(a1[1] + 832))(*(*a1 + 16), 3331, a4 + 4);
    result = (*(a1[1] + 832))(*(*a1 + 16), 3332, a4 + 8);
    if (a2 != 4)
    {
      (*(a1[1] + 832))(*(*a1 + 16), 32876, a4 + 16);
      result = (*(a1[1] + 832))(*(*a1 + 16), 32875, a4 + 20);
      if (a2 == 3)
      {
        (*(a1[1] + 792))(*(*a1 + 16), 3328, a4 + 32);
        result = (*(a1[1] + 792))(*(*a1 + 16), 3329, a4 + 33);
      }
    }
  }

  if (a3)
  {
    (*(a1[1] + 832))(*(*a1 + 16), 35349, a4 + 24);
    v9 = *(a1[1] + 832);
    v10 = *(*a1 + 16);

    return v9(v10, 35351, a4 + 28);
  }

  return result;
}

uint64_t GPUTools::GL::SavePixelStoreUnpackState(void *a1, int a2, int a3, uint64_t a4)
{
  result = (*(a1[1] + 832))(*(*a1 + 16), 3317, a4 + 12);
  if ((a2 - 1) >= 2)
  {
    (*(a1[1] + 832))(*(*a1 + 16), 3314, a4);
    (*(a1[1] + 832))(*(*a1 + 16), 3315, a4 + 4);
    (*(a1[1] + 832))(*(*a1 + 16), 3316, a4 + 8);
    (*(a1[1] + 832))(*(*a1 + 16), 32878, a4 + 16);
    result = (*(a1[1] + 832))(*(*a1 + 16), 32877, a4 + 20);
    if (a2 == 3)
    {
      (*(a1[1] + 792))(*(*a1 + 16), 3312, a4 + 32);
      result = (*(a1[1] + 792))(*(*a1 + 16), 3313, a4 + 33);
    }
  }

  if (a3)
  {
    (*(a1[1] + 832))(*(*a1 + 16), 35350, a4 + 24);
    v9 = *(a1[1] + 832);
    v10 = *(*a1 + 16);

    return v9(v10, 35352, a4 + 28);
  }

  return result;
}

uint64_t GPUTools::GL::SavePixelStoreState(void *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  GPUTools::GL::SavePixelStoreUnpackState(a1, a2, a3, a4);

  return GPUTools::GL::SavePixelStorePackState(a1, a2, a3, a5);
}

uint64_t GPUTools::GL::ApplyPixelStorePackState(void *a1, int a2, int a3, unsigned int *a4)
{
  result = (*(a1[1] + 1560))(*(*a1 + 16), 3333, a4[3]);
  if ((a2 - 1) >= 2)
  {
    (*(a1[1] + 1560))(*(*a1 + 16), 3330, *a4);
    (*(a1[1] + 1560))(*(*a1 + 16), 3331, a4[1]);
    result = (*(a1[1] + 1560))(*(*a1 + 16), 3332, a4[2]);
    if (a2 != 4)
    {
      (*(a1[1] + 1560))(*(*a1 + 16), 32876, a4[4]);
      result = (*(a1[1] + 1560))(*(*a1 + 16), 32875, a4[5]);
      if (a2 == 3)
      {
        (*(a1[1] + 1560))(*(*a1 + 16), 3328, *(a4 + 32));
        result = (*(a1[1] + 1560))(*(*a1 + 16), 3329, *(a4 + 33));
      }
    }
  }

  if (a3)
  {
    (*(a1[1] + 1560))(*(*a1 + 16), 35349, a4[6]);
    v9 = *(a1[1] + 1560);
    v10 = *(*a1 + 16);
    v11 = a4[7];

    return v9(v10, 35351, v11);
  }

  return result;
}

uint64_t GPUTools::GL::ApplyPixelStoreUnpackState(void *a1, int a2, int a3, unsigned int *a4)
{
  result = (*(a1[1] + 1560))(*(*a1 + 16), 3317, a4[3]);
  if ((a2 - 1) >= 2)
  {
    (*(a1[1] + 1560))(*(*a1 + 16), 3314, *a4);
    (*(a1[1] + 1560))(*(*a1 + 16), 3315, a4[1]);
    (*(a1[1] + 1560))(*(*a1 + 16), 3316, a4[2]);
    (*(a1[1] + 1560))(*(*a1 + 16), 32878, a4[4]);
    result = (*(a1[1] + 1560))(*(*a1 + 16), 32877, a4[5]);
    if (a2 == 3)
    {
      (*(a1[1] + 1560))(*(*a1 + 16), 3312, *(a4 + 32));
      result = (*(a1[1] + 1560))(*(*a1 + 16), 3313, *(a4 + 33));
    }
  }

  if (a3)
  {
    (*(a1[1] + 1560))(*(*a1 + 16), 35350, a4[6]);
    v9 = *(a1[1] + 1560);
    v10 = *(*a1 + 16);
    v11 = a4[7];

    return v9(v10, 35352, v11);
  }

  return result;
}

uint64_t GPUTools::GL::ApplyPixelStoreState(void *a1, int a2, int a3, unsigned int *a4, unsigned int *a5)
{
  GPUTools::GL::ApplyPixelStoreUnpackState(a1, a2, a3, a4);

  return GPUTools::GL::ApplyPixelStorePackState(a1, a2, a3, a5);
}

uint64_t GPUTools::GL::GetBufferSize(void *a1, int a2, uint64_t a3)
{
  if ((a2 - 3) > 1)
  {
    v4 = 0;
    (*(a1[1] + 5208))(*(*a1 + 16), a3, 34660, &v4);
    return v4;
  }

  else
  {
    v5 = 0;
    (*(a1[1] + 6392))(*(*a1 + 16), a3, 34660, &v5);
    return v5;
  }
}

uint64_t ___ZN8GPUTools2GLL23GetValidUniformLocationERKNS0_10DispatcherE11DYOpenGLAPIjRKNS0_14ProgramUniformE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = a1[6];
  result = strcmp(*v6, *a2);
  if (!result)
  {
    *(*(a1[4] + 8) + 24) = *(a2 + 28);
    v8 = *(v6 + 24) == *(a2 + 24) && *(v6 + 20) == *(a2 + 20);
    *(*(a1[5] + 8) + 24) = v8;
    *a3 = 1;
  }

  return result;
}

void OUTLINED_FUNCTION_4()
{

  operator new[]();
}

uint64_t init_interpose_api()
{
  dlerror();
  v0 = dy_abort();
  return dy_enum_from_string(v0);
}

uint64_t dy_enum_from_string(const char *a1)
{
  v3 = a1;
  if (qword_27F080280 != -1)
  {
    dispatch_once(&qword_27F080280, &__block_literal_global);
  }

  v1 = std::__hash_table<std::__hash_value_type<char const*,unsigned int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::hash,GPUTools::CStringHash::equal,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::equal,GPUTools::CStringHash::hash,true>,std::allocator<std::__hash_value_type<char const*,unsigned int>>>::find<char const*>(_MergedGlobals, &v3);
  if (v1)
  {
    return *(v1 + 6);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,unsigned int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::hash,GPUTools::CStringHash::equal,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::equal,GPUTools::CStringHash::hash,true>,std::allocator<std::__hash_value_type<char const*,unsigned int>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,unsigned int>>(void *a1, const char **a2)
{
  v2 = -1640531527;
  v3 = *a2;
  v4 = **a2;
  if (**a2)
  {
    v5 = (v3 + 2);
    while (*(v5 - 1))
    {
      v6 = ((v2 + v4) << 16) ^ (*(v5 - 1) << 11) ^ (v2 + v4);
      v2 = v6 + (v6 >> 11);
      v7 = *v5;
      v5 += 2;
      v4 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v2 = ((v2 + v4) ^ ((v2 + v4) << 11)) + (((v2 + v4) ^ ((v2 + v4) << 11)) >> 17);
  }

LABEL_7:
  v8 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v9 = (v8 ^ (4 * v8)) + ((v8 ^ (4 * v8)) >> 15);
  if (v9 == v9 << 10)
  {
    v10 = 0x40000000;
  }

  else
  {
    v10 = v9 ^ (v9 << 10);
  }

  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_32;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v10;
    if (*&v11 <= v10)
    {
      v13 = v10 % v11.i32[0];
    }
  }

  else
  {
    v13 = (v11.i32[0] - 1) & v10;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_32:
    operator new();
  }

  if (v12.u32[0] < 2uLL)
  {
    do
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (!strcmp(v15[2], v3))
        {
          return v15;
        }
      }

      else if ((v16 & (*&v11 - 1)) != v13)
      {
        goto LABEL_32;
      }

      v15 = *v15;
    }

    while (v15);
    goto LABEL_32;
  }

  while (1)
  {
    v17 = v15[1];
    if (v17 == v10)
    {
      break;
    }

    if (v17 >= *&v11)
    {
      v17 %= *&v11;
    }

    if (v17 != v13)
    {
      goto LABEL_32;
    }

LABEL_31:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_32;
    }
  }

  if (strcmp(v15[2], v3))
  {
    goto LABEL_31;
  }

  return v15;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,unsigned int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::hash,GPUTools::CStringHash::equal,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,unsigned int>,GPUTools::CStringHash::equal,GPUTools::CStringHash::hash,true>,std::allocator<std::__hash_value_type<char const*,unsigned int>>>::find<char const*>(void *a1, const char **a2)
{
  v2 = -1640531527;
  v3 = *a2;
  v4 = **a2;
  if (**a2)
  {
    v5 = (v3 + 2);
    while (*(v5 - 1))
    {
      v6 = ((v2 + v4) << 16) ^ (*(v5 - 1) << 11) ^ (v2 + v4);
      v2 = v6 + (v6 >> 11);
      v7 = *v5;
      v5 += 2;
      v4 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v2 = ((v2 + v4) ^ ((v2 + v4) << 11)) + (((v2 + v4) ^ ((v2 + v4) << 11)) >> 17);
  }

LABEL_7:
  v8 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v9 = (v8 ^ (4 * v8)) + ((v8 ^ (4 * v8)) >> 15);
  if (v9 == v9 << 10)
  {
    v10 = 0x40000000;
  }

  else
  {
    v10 = v9 ^ (v9 << 10);
  }

  v11 = a1[1];
  if (!*&v11)
  {
    return 0;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v10;
    if (*&v11 <= v10)
    {
      v13 = v10 % v11.i32[0];
    }
  }

  else
  {
    v13 = (v11.i32[0] - 1) & v10;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (*v14)
  {
    if (v12.u32[0] >= 2uLL)
    {
      while (1)
      {
        v18 = v15[1];
        if (v18 == v10)
        {
          if (!strcmp(v15[2], v3))
          {
            return v15;
          }
        }

        else
        {
          if (v18 >= *&v11)
          {
            v18 %= *&v11;
          }

          if (v18 != v13)
          {
            return 0;
          }
        }

        v15 = *v15;
        if (!v15)
        {
          return v15;
        }
      }
    }

    v16 = *&v11 - 1;
    do
    {
      v17 = v15[1];
      if (v17 == v10)
      {
        if (!strcmp(v15[2], v3))
        {
          return v15;
        }
      }

      else if ((v17 & v16) != v13)
      {
        return 0;
      }

      v15 = *v15;
    }

    while (v15);
  }

  return v15;
}

uint64_t GPUTools::GL::DYGetTextureParameterInfo(uint64_t this, int *a2, unsigned int *a3, BOOL *a4)
{
  if ((this - 10240) < 4)
  {
    goto LABEL_31;
  }

  if ((this - 33082) < 4)
  {
    goto LABEL_28;
  }

  v4 = (this - 36418) >= 4 && (this - 34891) >= 3;
  if (!v4 || (this - 35400) <= 0x37 && ((1 << (this - 72)) & 0x80000000000009) != 0)
  {
LABEL_31:
    v8 = 1;
    v7 = 1;
    if (!a2)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  switch(this)
  {
    case 0x1004:
      goto LABEL_27;
    case 0x28FF:
      goto LABEL_31;
    case 0x8066:
      goto LABEL_28;
    case 0x8072:
      goto LABEL_31;
    case 0x80BF:
      goto LABEL_28;
    case 0x8191:
      goto LABEL_31;
    case 0x84FE:
    case 0x8501:
      goto LABEL_28;
    case 0x85B6:
      goto LABEL_31;
    case 0x85B7:
LABEL_28:
      v7 = 0;
      v8 = 1;
      if (!a2)
      {
        goto LABEL_33;
      }

LABEL_32:
      *a2 = v8;
      goto LABEL_33;
    case 0x85BC:
    case 0x912F:
      goto LABEL_31;
  }

  if (this != 36422)
  {
    if (this == 35741)
    {
LABEL_27:
      v7 = 0;
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v7 = 1;
LABEL_37:
  v8 = 4;
  if (a2)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (a3)
  {
    *a3 = v7;
  }

  return this;
}

uint64_t GPUTools::GL::DYGetTexEnvParameterInfo(uint64_t this, int *a2, unsigned int *a3, BOOL *a4)
{
  v4 = (this - 34161);
  if (v4 <= 0x29)
  {
    if (((1 << (this - 113)) & 0x38383838003) != 0)
    {
LABEL_3:
      v5 = 1;
      v6 = 1;
      goto LABEL_4;
    }

    if (v4 == 2)
    {
      goto LABEL_17;
    }
  }

  if (this == 3356)
  {
    goto LABEL_17;
  }

  if (this == 8704)
  {
    goto LABEL_3;
  }

  if (this != 8705)
  {
    if (this == 9472 || this == 34914)
    {
      goto LABEL_3;
    }

LABEL_17:
    v6 = 0;
    v5 = 1;
    goto LABEL_4;
  }

  v6 = 0;
  v5 = 4;
LABEL_4:
  if (a2)
  {
    *a2 = v5;
  }

  if (a3)
  {
    *a3 = v6;
  }

  return this;
}

uint64_t GPUTools::GL::DYGetProgramParameterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  v8 = (this - 35712) <= 3 && this != 35713 || (this - 36315) < 2 || this == 35967 || this == 33367;
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return this;
}

void GPUTools::GL::DYGetProgramPipelineParameterInfo(GPUTools::GL *this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }
}

uint64_t GPUTools::GL::DYGetVertexAttribParameterInfo(uint64_t this, int *a2, unsigned int *a3, BOOL *a4)
{
  v4 = 1;
  v5 = 1;
  switch(this)
  {
    case 34338:
    case 34341:
      goto LABEL_8;
    case 34339:
    case 34340:
      goto LABEL_7;
    case 34342:
      v5 = 0;
      v4 = 4;
      if (!a2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    default:
      if (this == 34922)
      {
        v5 = 1;
        if (a2)
        {
LABEL_9:
          *a2 = v4;
        }
      }

      else
      {
        if (this == 35070 || (v5 = 1, this != 35069))
        {
LABEL_7:
          v5 = 0;
          v4 = 1;
        }

LABEL_8:
        if (a2)
        {
          goto LABEL_9;
        }
      }

LABEL_10:
      if (a3)
      {
        *a3 = v5;
      }

      return this;
  }
}

uint64_t GPUTools::GL::DYGetActiveUniformParameterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = ((this - 35383) < 8) & (1u >> (this - 55));
  }

  return this;
}

uint64_t GPUTools::GL::DYGetActiveUniformBlockParameterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = (this & 0xFFFFFFFD) == 35396;
  }

  return this;
}

uint64_t GPUTools::GL::DYGetRenderbufferParameterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  if ((this - 36162) > 0x13 || (v4 = 1, ((1 << (this - 66)) & 0xFC003) != 0) || this != 36164)
  {
    v4 = 0;
  }

  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = v4;
  }

  return this;
}

uint64_t GPUTools::GL::DYGetFramebufferAttachmentParameterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  if ((this - 33298) < 6)
  {
    goto LABEL_6;
  }

  v4 = 1;
  if ((this - 36048) > 4)
  {
    if ((this - 33296) < 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (((1 << (this + 48)) & 0x16) != 0)
  {
LABEL_6:
    v4 = 0;
  }

LABEL_7:
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = v4;
  }

  return this;
}

uint64_t GPUTools::GL::DYGetBufferParameterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  v5 = (this - 35003) < 2 || this == 34661;
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = v5;
  }

  return this;
}

uint64_t GPUTools::GL::DYGetSyncObjectParamterInfo(uint64_t this, _DWORD *a2, unsigned int *a3, BOOL *a4)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = ((this - 37138) < 4) & (7u >> ((this - 18) & 0xF));
  }

  return this;
}

void GPUTools::GL::ColorRenderableFormatMatchingFormat()
{
  __assert_rtn("ImageFormatInfo GPUTools::GL::ColorRenderableFormatMatchingFormat(const ImageFormatInfo &)", &unk_24C1371BE, 0, "formatInfo.format != 0 || IsCompressedFormat(formatInfo.internalFormat)");
}

{
  __assert_rtn("ImageFormatInfo GPUTools::GL::ColorRenderableFormatMatchingFormat(const ImageFormatInfo &)", &unk_24C1371BE, 0, "formatInfo.type != 0 || IsCompressedFormat(formatInfo.internalFormat)");
}

{
  __assert_rtn("ImageFormatInfo GPUTools::GL::ColorRenderableFormatMatchingFormat(const ImageFormatInfo &)", &unk_24C1371BE, 0, "formatInfo.internalFormat != 0");
}

uint64_t GPUTools::GL::EnumerateProgramActiveUniforms(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = 0;
  v11 = 0;
  v5 = OUTLINED_FUNCTION_3();
  v7(v5, v6, 35718, &v11 + 4);
  v8 = OUTLINED_FUNCTION_3();
  result = v9(v8, a3, 35719, &v11);
  if (HIDWORD(v11))
  {
    if (a2 < 3)
    {
      operator new[]();
    }

    if (a2 - 3 < 2)
    {
      OUTLINED_FUNCTION_4();
    }
  }

  return result;
}

uint64_t GPUTools::GL::EnumerateProgramActiveAttributes(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0;
  v3 = OUTLINED_FUNCTION_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_3();
  result = v6(v5, a2, 35722, &v11);
  if (v12)
  {
    OUTLINED_FUNCTION_6();
    memset(v10, 0, sizeof(v10));
    v9 = 0u;
    v8 = (v11 + 32);
    operator new[]();
  }

  return result;
}

void *___ZN8GPUTools2GL30EnumerateProgramActiveUniformsERKNS0_10DispatcherE11DYOpenGLAPIjbU13block_pointerFvRKNS0_14ProgramUniformERbE_block_invoke(void *result, uint64_t a2, int a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    v6 = a2;
    v7 = (a2 + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(a2 - 1);
    v9 = xmmword_24C1588B0;
    v10 = xmmword_24C1588C0;
    v11 = (result[5] + 8);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 2) = a3;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 1) = a3 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = a3 + 2;
        v11[1] = a3 + 3;
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      a3 += 4;
      v11 += 4;
      v7 -= 4;
    }

    while (v7);
    (*(*(result[6] + 8) + 3536))(*(*result[6] + 16), *(result + 34), a2);
    v14 = OUTLINED_FUNCTION_0_0();
    v15(v14);
    v16 = OUTLINED_FUNCTION_0_0();
    v17(v16);
    v18 = OUTLINED_FUNCTION_0_0();
    v19(v18);
    v20 = OUTLINED_FUNCTION_0_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_0_0();
    v23(v22);
    v24 = OUTLINED_FUNCTION_0_0();
    v25(v24);
    v26 = 0;
    v35 = 0u;
    memset(v36, 0, 26);
    v37 = 0;
    v27 = v5[14];
    v34[0] = v5[15];
    v34[1] = v27;
    v28 = 4 * v6 - 4;
    do
    {
      v29 = v5[6];
      v36[0] = *(v5[5] + v26);
      result = (*(v29[1] + 5008))(*(*v29 + 16), v5[16]);
      v30 = v5[8];
      v36[1] = *(v5[7] + v26);
      v36[2] = *(v30 + v26);
      v31 = v5[10];
      v36[4] = *(v5[9] + v26);
      v36[5] = *(v31 + v26);
      LOBYTE(v36[6]) = *(v5[11] + v26);
      v32 = *v34[0] == 103 && *(v34[0] + 1) == 108 && *(v34[0] + 2) == 95;
      BYTE1(v36[6]) = v32;
      v37 = (*(v5[12] + v26) != 0) | (2 * (*(v5[13] + v26) != 0));
      if (v32)
      {
        HIDWORD(v35) = -1;
      }

      else
      {
        HIDWORD(v35) = (*(*(v5[6] + 8) + 5000))(*(*v5[6] + 16), v5[16]);
        result = GPUTools::GL::SetUniformArrayLocationStride(v5[6], v5[16], v34);
      }

      if (*(v5 + 144) != 1 || !BYTE1(v36[6]))
      {
        result = (*(v5[4] + 16))();
      }

      if (*a4)
      {
        break;
      }

      v33 = v28 == v26;
      v26 += 4;
    }

    while (!v33);
  }

  return result;
}

uint64_t GPUTools::GL::EnumerateProgramActiveUniformBlocks(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v3 = OUTLINED_FUNCTION_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_3();
  result = v6(v5, a2, 35381, &v13);
  if (HIDWORD(v13))
  {
    OUTLINED_FUNCTION_6();
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v8 = (v13 + 32);
    operator new[]();
  }

  return result;
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