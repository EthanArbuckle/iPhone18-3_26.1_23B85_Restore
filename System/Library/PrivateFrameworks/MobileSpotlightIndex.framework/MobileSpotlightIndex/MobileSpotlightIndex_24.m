unint64_t HUF_decompress4X1_DCtx_wksp_bmi2(int *a1, unsigned __int8 *a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  result = HUF_readDTableX1_wksp_bmi2(a1, a4, a5, a6, a7);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return HUF_decompress4X1_usingDTable_internal(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

unint64_t HUF_readDTableX2_wksp_bmi2(_DWORD *a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 0x848)
  {
    return -1;
  }

  v82[12] = v5;
  v82[13] = v6;
  v10 = *a1;
  v80 = a1 + 1;
  *(a4 + 704) = 0u;
  *(a4 + 720) = 0u;
  *(a4 + 672) = 0u;
  *(a4 + 688) = 0u;
  *(a4 + 640) = 0u;
  *(a4 + 656) = 0u;
  *(a4 + 624) = 0u;
  if (v10 > 0xCu)
  {
    return -44;
  }

  v82[0] = 0;
  result = HUF_readStats_wksp((a4 + 992), 0x100uLL, a4 + 624, v82, v82 + 1, a2, a3, (a4 + 1248), 0x368uLL);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v11 = HIDWORD(v82[0]);
    if (HIDWORD(v82[0]) > v10)
    {
      return -44;
    }

    v57 = result;
    v64 = a4 + 676;
    v12 = (a4 + 680);
    v14 = HIDWORD(v82[0]) < 0xC && v10 == 12;
    v65 = HIDWORD(v82[0]) + 1;
    v15 = -1;
    v16 = HIDWORD(v82[0]);
    do
    {
      v17 = *(a4 + 624 + 4 * v16--);
      ++v15;
    }

    while (!v17);
    if (v14)
    {
      v18 = 11;
    }

    else
    {
      v18 = v10;
    }

    v19 = v16 + 2;
    if (v16 >= 0xFFFFFFFE)
    {
      v23 = 0;
    }

    else
    {
      v20 = 0;
      v21 = (a4 + 628);
      v22 = v19 - 1;
      do
      {
        v23 = *v21 + v20;
        v21[14] = v20;
        ++v21;
        v20 = v23;
        --v22;
      }

      while (v22);
    }

    *v12 = v23;
    v12[v19] = v23;
    v24 = LODWORD(v82[0]);
    if (LODWORD(v82[0]))
    {
      v25 = 0;
      do
      {
        v26 = *(a4 + 992 + v25);
        v27 = v12[v26];
        v12[v26] = v27 + 1;
        *(a4 + 736 + v27) = v25++;
      }

      while (v24 != v25);
    }

    *v12 = 0;
    if (v19 >= 2)
    {
      v28 = 0;
      v29 = v18 - v11;
      v30 = v19 - 1;
      v31 = a4;
      do
      {
        *(v31 + 4) = v28;
        v31 += 4;
        v28 += *(v31 + 624) << v29++;
        --v30;
      }

      while (v30);
    }

    v76 = v16 + 1;
    v32 = v18 - v15;
    v63 = v15 + 1;
    if (v15 + 1 < (v18 - v15))
    {
      v33 = v15 + 1;
      v34 = 13 * v33;
      do
      {
        if (v19 >= 2)
        {
          v35 = v19 - 1;
          v36 = (a4 + 4);
          do
          {
            v36[v34] = *v36 >> v33;
            ++v36;
            --v35;
          }

          while (v35);
        }

        ++v33;
        v34 += 13;
      }

      while (v32 != v33);
    }

    v58 = v10;
    v61 = a4;
    v59 = a1;
    if (v76 >= 1)
    {
      v37 = a4 + 736;
      v60 = v65 - v18;
      v62 = a1 + 5;
      v71 = (2 * v11) | 1;
      LODWORD(v38) = v71 - v18;
      v39 = 1;
      v66 = v19;
      while (1)
      {
        v69 = v38 - 1;
        v70 = v11;
        v38 = v38 <= 1 ? 1 : v38;
        v40 = *(v64 + 4 * v39);
        v68 = v39 + 1;
        v41 = *(v64 + 4 * (v39 + 1));
        v42 = v65 - v39;
        v43 = v18 - (v65 - v39);
        if (v43 >= v63)
        {
          break;
        }

        HUF_fillDTableX2ForWeight(&v80[*(v61 + 4 * v39)], (v37 + v40), (v37 + v41), v42, v18, 0, 1);
LABEL_60:
        v11 = v70 - 1;
        --v71;
        v39 = v68;
        LODWORD(v38) = v69;
        if (v68 == v66)
        {
          goto LABEL_61;
        }
      }

      if (v40 == v41)
      {
        goto LABEL_60;
      }

      v44 = 52 * v11;
      v75 = v61 + 4 * v38;
      v74 = v71 - v38;
      v73 = v66 - v38;
      v45 = 1 << v43;
      LODWORD(v38) = v42 + v60;
      v77 = v42 + v60;
      if ((v42 + v60) <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v38;
      }

      v81 = v38;
      v46 = *(v61 + 4 * v39);
      v67 = v61 + 52 * v42;
      v72 = (v42 << 16) + 0x1000000;
      v79 = *(v64 + 4 * (v39 + 1));
      v78 = 1 << v43;
      while (1)
      {
        v47 = *(v37 + v40);
        v48 = &v80[v46];
        if (v77 >= 2)
        {
          v49 = v72 | v47 | ((v72 | v47) << 32);
          if (v45 == 2)
          {
            v50 = &v80[v46];
          }

          else
          {
            if (v45 != 4)
            {
              v51 = *(v67 + 4 * v81);
              if (v51 >= 1)
              {
                v52 = 0;
                v53 = &v62[v46];
                do
                {
                  *(v53 - 2) = v49;
                  *(v53 - 1) = v49;
                  *v53 = v49;
                  v53[1] = v49;
                  v53 += 4;
                  v52 += 8;
                }

                while (v52 < v51);
              }

              goto LABEL_56;
            }

            *v48 = v49;
            v50 = v48 + 1;
          }

          *v50 = v49;
        }

LABEL_56:
        if (v81 <= v76)
        {
          v54 = v73;
          v55 = v74;
          v56 = v75;
          do
          {
            HUF_fillDTableX2ForWeight(v48 + 4 * *(v56 + v44), (v37 + *(v56 + 676)), (v37 + *(v56 + 680)), v55, v18, v47, 2);
            v56 += 4;
            --v55;
            --v54;
          }

          while (v54);
        }

        v45 = v78;
        v46 += v78;
        if (v79 == ++v40)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_61:
    *v59 = v58;
    v59[1] = 1;
    v59[2] = v18;
    v59[3] = HIBYTE(v58);
    return v57;
  }

  return result;
}

uint64_t HUF_decompress1X2_usingDTable_internal(char *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5)
{
  if (!a4)
  {
    return -72;
  }

  v5 = a4 - 8;
  if (a4 < 8)
  {
    v6 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v6 |= a3[6] << 48;
        }

        v6 += a3[5] << 40;
      }

      v6 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_24:
        v6 += a3[1] << 8;
        goto LABEL_25;
      }

      if (a4 == 3)
      {
LABEL_23:
        v6 += a3[2] << 16;
        goto LABEL_24;
      }

      if (a4 != 4)
      {
LABEL_25:
        if (!a3[a4 - 1])
        {
          return -20;
        }

        v5 = 0;
        v7 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
        v8 = &a1[a2];
        v9 = a5 + 1;
        v10 = *a5;
        v11 = HIWORD(*a5);
        if (a2 < 8)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
      }
    }

    v6 += a3[3] << 24;
    goto LABEL_23;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  if (a4 <= 0xFFFFFFFFFFFFFF88)
  {
    v6 = *&a3[v5];
    v7 = 8 - (__clz(a3[a4 - 1]) ^ 0x1F);
    v8 = &a1[a2];
    v9 = a5 + 1;
    v10 = *a5;
    v11 = HIWORD(*a5);
    if (a2 <= 7)
    {
      if (a4 >= 16)
      {
        LODWORD(v12) = v7 >> 3;
        v7 &= 7u;
      }

      else
      {
        if (a4 == 8)
        {
LABEL_57:
          if ((v8 - a1) >= 2)
          {
            v48 = (v8 - 2);
            v49 = -v11 & 0x3F;
            while (v7 <= 0x40)
            {
              if (v5 >= 8)
              {
                v52 = v7 >> 3;
                v7 &= 7u;
                v51 = 1;
              }

              else
              {
                if (!v5)
                {
                  break;
                }

                v50 = &a3[v5 - (v7 >> 3)];
                v51 = v50 >= a3;
                v52 = v50 < a3 ? v5 : v7 >> 3;
                v7 -= 8 * v52;
              }

              v5 -= v52;
              v6 = *&a3[v5];
              if (a1 > v48 || !v51)
              {
                break;
              }

              v53 = &v9[(v6 << v7) >> v49];
              *a1 = *v53;
              v7 += *(v53 + 2);
              a1 += *(v53 + 3);
            }

            while (a1 <= v48)
            {
              v54 = &v9[(v6 << v7) >> v49];
              *a1 = *v54;
              v7 += *(v54 + 2);
              a1 += *(v54 + 3);
            }
          }

          if (a1 < v8)
          {
            v55 = &v9[(v6 << v7) >> -v11];
            *a1 = *v55;
            if (v55[3] == 1)
            {
              v7 += v55[2];
            }

            else if (v7 <= 0x3F)
            {
              v56 = v7 + v55[2];
              if (v56 >= 0x40)
              {
                v7 = 64;
              }

              else
              {
                v7 = v56;
              }
            }
          }

          if (v7 == 64 && v5 == 0)
          {
            return a2;
          }

          else
          {
            return -20;
          }
        }

        v12 = v7 >> 3;
        if (&a3[v5 - v12] < a3)
        {
          LODWORD(v12) = a4 - 8;
        }

        v7 -= 8 * v12;
      }

      v5 -= v12;
      v6 = *&a3[v5];
      goto LABEL_57;
    }

LABEL_27:
    v13 = v10 & 0xFC0000;
    v14 = -v11 & 0x3F;
    v15 = &a1[a2];
    v16 = a5 + 1;
    if (v13 >= 0xC0000)
    {
      v34 = (v15 - 7);
      do
      {
        if (v5 >= 8)
        {
          v37 = v7 >> 3;
          v7 &= 7u;
          v36 = 1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_57;
          }

          v35 = &a3[v5 - (v7 >> 3)];
          v36 = v35 >= a3;
          if (v35 < a3)
          {
            v37 = v5;
          }

          else
          {
            v37 = v7 >> 3;
          }

          v7 -= 8 * v37;
        }

        v5 -= v37;
        v6 = *&a3[v5];
        if (a1 >= v34)
        {
          break;
        }

        if (!v36)
        {
          break;
        }

        v38 = &v16[(v6 << v7) >> v14];
        *a1 = *v38;
        v39 = v7 + *(v38 + 2);
        v40 = &a1[*(v38 + 3)];
        v41 = &v16[(v6 << v39) >> v14];
        *v40 = *v41;
        v42 = v39 + *(v41 + 2);
        v43 = &v40[*(v41 + 3)];
        v44 = &v16[(v6 << v42) >> v14];
        *v43 = *v44;
        v45 = v42 + *(v44 + 2);
        v46 = &v43[*(v44 + 3)];
        v47 = &v16[(v6 << v45) >> v14];
        *v46 = *v47;
        v7 = v45 + *(v47 + 2);
        a1 = &v46[*(v47 + 3)];
      }

      while (v7 <= 0x40);
    }

    else
    {
      v17 = (v15 - 9);
      do
      {
        if (v5 >= 8)
        {
          v20 = v7 >> 3;
          v7 &= 7u;
          v19 = 1;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_57;
          }

          v18 = &a3[v5 - (v7 >> 3)];
          v19 = v18 >= a3;
          if (v18 < a3)
          {
            v20 = v5;
          }

          else
          {
            v20 = v7 >> 3;
          }

          v7 -= 8 * v20;
        }

        v5 -= v20;
        v6 = *&a3[v5];
        if (a1 >= v17)
        {
          break;
        }

        if (!v19)
        {
          break;
        }

        v21 = &v16[(v6 << v7) >> v14];
        *a1 = *v21;
        v22 = v7 + *(v21 + 2);
        v23 = &a1[*(v21 + 3)];
        v24 = &v16[(v6 << v22) >> v14];
        *v23 = *v24;
        v25 = v22 + *(v24 + 2);
        v26 = &v23[*(v24 + 3)];
        v27 = &v16[(v6 << v25) >> v14];
        *v26 = *v27;
        v28 = v25 + *(v27 + 2);
        v29 = &v26[*(v27 + 3)];
        v30 = &v16[(v6 << v28) >> v14];
        *v29 = *v30;
        v31 = v28 + *(v30 + 2);
        v32 = &v29[*(v30 + 3)];
        v33 = &v16[(v6 << v31) >> v14];
        *v32 = *v33;
        v7 = v31 + *(v33 + 2);
        a1 = &v32[*(v33 + 3)];
      }

      while (v7 <= 0x40);
    }

    goto LABEL_57;
  }

  return a4;
}

unint64_t HUF_decompress4X2_usingDTable_internal(char *a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, unsigned int *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v272 = v5;
  v273 = v6;
  v10 = a1;
  v11 = &a1[a2];
  v267 = 0;
  v268 = 0;
  v269 = 0;
  v262 = 0;
  v263 = 0;
  v264 = 0;
  v257 = 0;
  v258 = 0;
  v259 = 0;
  v13 = a5 + 1;
  v12 = *a5;
  v256 = 0;
  v254 = 0u;
  v255 = 0u;
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v17 = v14 + v15 + v16 + 6;
  v18 = a4 - v17;
  v19 = &a1[(a2 + 3) >> 2];
  v20 = &v19[(a2 + 3) >> 2];
  v21 = &v20[(a2 + 3) >> 2];
  if (a4 < v17 || v21 > v11)
  {
    return -20;
  }

  if (!v14)
  {
    return -72;
  }

  v23 = (a3 + 3);
  v24 = a3 + v14 + 6;
  v270 = a3 + 3;
  v271 = a3 + 7;
  if (v14 < 8)
  {
    v25 = *v23;
    v269 = a3 + 3;
    v267 = v25;
    if (v14 > 4)
    {
      if (v14 != 5)
      {
        if (v14 != 6)
        {
          v25 |= *(a3 + 12) << 48;
        }

        v25 += *(a3 + 11) << 40;
      }

      v25 += *(a3 + 10) << 32;
    }

    else
    {
      if (v14 == 2)
      {
LABEL_25:
        v25 += *(a3 + 7) << 8;
        v267 = v25;
LABEL_26:
        if (!*(v24 - 1))
        {
          return -20;
        }

        v26 = __clz(*(v24 - 1)) - 8 * v14 + 41;
        goto LABEL_28;
      }

      if (v14 == 3)
      {
LABEL_24:
        v25 += *(a3 + 8) << 16;
        goto LABEL_25;
      }

      if (v14 != 4)
      {
        goto LABEL_26;
      }
    }

    v25 += *(a3 + 9) << 24;
    goto LABEL_24;
  }

  v23 = v24 - 8;
  v25 = *(v24 - 1);
  v269 = (v24 - 8);
  v267 = v25;
  if (!HIBYTE(v25))
  {
    return -1;
  }

  v26 = 8 - (__clz(HIBYTE(v25)) ^ 0x1F);
LABEL_28:
  LODWORD(v268) = v26;
  if (!v15)
  {
    return -72;
  }

  v27 = &v24[v15];
  v28 = v24 + 8;
  v265 = v24;
  v266 = v24 + 8;
  if (v15 >= 8)
  {
    v24 = v27 - 8;
    v29 = *(v27 - 1);
    v264 = v27 - 8;
    v262 = v29;
    if (HIBYTE(v29))
    {
      v30 = 8 - (__clz(HIBYTE(v29)) ^ 0x1F);
      goto LABEL_47;
    }

    return -1;
  }

  v29 = *v24;
  v264 = v24;
  v262 = v29;
  if (v15 > 4)
  {
    if (v15 != 5)
    {
      if (v15 != 6)
      {
        v29 |= v24[6] << 48;
      }

      v29 += v24[5] << 40;
    }

    v29 += v24[4] << 32;
    goto LABEL_42;
  }

  if (v15 != 2)
  {
    if (v15 == 3)
    {
LABEL_43:
      v29 += v24[2] << 16;
      goto LABEL_44;
    }

    if (v15 != 4)
    {
      goto LABEL_45;
    }

LABEL_42:
    v29 += v24[3] << 24;
    goto LABEL_43;
  }

LABEL_44:
  v29 += v24[1] << 8;
  v262 = v29;
LABEL_45:
  if (!*(v27 - 1))
  {
    return -20;
  }

  v30 = __clz(*(v27 - 1)) - 8 * v15 + 41;
LABEL_47:
  LODWORD(v263) = v30;
  if (!v16)
  {
    return -72;
  }

  v31 = &v27[v16];
  v260 = v27;
  v261 = v27 + 8;
  v248 = v27 + 8;
  if (v16 < 8)
  {
    v33 = *v27;
    v259 = v27;
    v257 = v33;
    if (v16 > 4)
    {
      if (v16 != 5)
      {
        if (v16 != 6)
        {
          v33 |= v27[6] << 48;
        }

        v33 += v27[5] << 40;
      }

      v33 += v27[4] << 32;
    }

    else
    {
      if (v16 == 2)
      {
LABEL_66:
        v33 += v27[1] << 8;
        v257 = v33;
        goto LABEL_67;
      }

      if (v16 == 3)
      {
LABEL_65:
        v33 += v27[2] << 16;
        goto LABEL_66;
      }

      if (v16 != 4)
      {
LABEL_67:
        if (*(v31 - 1))
        {
          v249 = v33;
          v250 = v27;
          v252 = v26;
          v246 = v28;
          v247 = a3 + 7;
          v243 = v12;
          v242 = v20;
          v244 = v11;
          v245 = v21;
          v34 = __clz(*(v31 - 1)) - 8 * v16 + 41;
          goto LABEL_69;
        }

        return -20;
      }
    }

    v33 += v27[3] << 24;
    goto LABEL_65;
  }

  v32 = *(v31 - 1);
  v259 = v31 - 8;
  v257 = v32;
  if (!HIBYTE(v32))
  {
    return -1;
  }

  v249 = v32;
  v250 = v31 - 8;
  v252 = v26;
  v246 = v28;
  v247 = a3 + 7;
  v243 = v12;
  v242 = v20;
  v244 = v11;
  v245 = v21;
  v34 = 8 - (__clz(HIBYTE(v32)) ^ 0x1F);
LABEL_69:
  LODWORD(v258) = v34;
  result = BIT_initDStream(&v254, v31, v18);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v241 = HIWORD(v243);
  if (v244 - v245 < 8)
  {
    v42 = v245;
    v98 = v242;
    v41 = v242;
    v40 = v19;
  }

  else
  {
    v35 = v254;
    if (v245 >= v244 - 7)
    {
      v42 = v245;
      v98 = v242;
      v41 = v242;
      v40 = v19;
    }

    else
    {
      v36 = -v241 & 0x3F;
      v37 = DWORD2(v254);
      v38 = v256;
      v39 = v255;
      v40 = v19;
      v41 = v242;
      v42 = v245;
      do
      {
        v43 = &v13[v25 << v252 >> v36];
        *v10 = *v43;
        v44 = v252 + *(v43 + 2);
        v45 = &v10[*(v43 + 3)];
        v46 = &v13[v29 << v30 >> v36];
        *v40 = *v46;
        v47 = v30 + *(v46 + 2);
        v48 = (v40 + *(v46 + 3));
        v49 = &v13[v249 << v34 >> v36];
        *v41 = *v49;
        v50 = v34 + *(v49 + 2);
        v51 = (v41 + *(v49 + 3));
        v52 = &v13[(v35 << v37) >> v36];
        *v42 = *v52;
        v53 = v37 + *(v52 + 2);
        v54 = (v42 + *(v52 + 3));
        v55 = &v13[v25 << v44 >> v36];
        *v45 = *v55;
        v56 = v44 + *(v55 + 2);
        v57 = *(v55 + 3);
        v58 = &v13[v29 << v47 >> v36];
        *v48 = *v58;
        v59 = v47 + *(v58 + 2);
        v60 = (v48 + *(v58 + 3));
        v61 = &v13[v249 << v50 >> v36];
        *v51 = *v61;
        v62 = v50 + *(v61 + 2);
        v63 = (v51 + *(v61 + 3));
        v64 = &v13[(v35 << v53) >> v36];
        *v54 = *v64;
        v65 = v53 + *(v64 + 2);
        v66 = (v54 + *(v64 + 3));
        v67 = &v45[v57];
        v68 = &v13[v25 << v56 >> v36];
        *v67 = *v68;
        v69 = v56 + *(v68 + 2);
        v70 = &v67[*(v68 + 3)];
        v71 = &v13[v29 << v59 >> v36];
        *v60 = *v71;
        v72 = v59 + *(v71 + 2);
        v73 = (v60 + *(v71 + 3));
        v74 = &v13[v249 << v62 >> v36];
        *v63 = *v74;
        v75 = v62 + *(v74 + 2);
        v76 = (v63 + *(v74 + 3));
        v77 = &v13[(v35 << v65) >> v36];
        *v66 = *v77;
        v78 = v65 + *(v77 + 2);
        v79 = (v66 + *(v77 + 3));
        v80 = &v13[v25 << v69 >> v36];
        *v70 = *v80;
        v81 = v69 + *(v80 + 2);
        v82 = *(v80 + 3);
        v83 = &v13[v29 << v72 >> v36];
        *v73 = *v83;
        v84 = *(v83 + 2);
        v85 = *(v83 + 3);
        v86 = &v13[v249 << v75 >> v36];
        *v76 = *v86;
        v87 = *(v86 + 2);
        v88 = *(v86 + 3);
        v89 = &v13[(v35 << v78) >> v36];
        *v79 = *v89;
        if (v23 < v247)
        {
          v90 = 3;
        }

        else
        {
          v90 = 0;
          v23 -= v81 >> 3;
          v81 &= 7u;
          v25 = *v23;
        }

        v30 = v72 + v84;
        v91 = *(v89 + 2);
        v92 = *(v89 + 3);
        v252 = v81;
        if (v24 < v246)
        {
          v93 = 3;
        }

        else
        {
          v93 = 0;
          v24 -= v30 >> 3;
          v30 &= 7u;
          v29 = *v24;
        }

        v34 = v75 + v87;
        if (v250 < v248)
        {
          v94 = 3;
        }

        else
        {
          v94 = 0;
          v95 = &v250[-(v34 >> 3)];
          v34 &= 7u;
          v249 = *v95;
          v250 = v95;
        }

        v37 = v78 + v91;
        if (v39 < v38)
        {
          v96 = 3;
        }

        else
        {
          v96 = 0;
          v39 = (v39 - (v37 >> 3));
          v37 &= 7u;
          v35 = *v39;
        }

        v10 = &v70[v82];
        v40 = (v73 + v85);
        v41 = (v76 + v88);
        v42 = (v79 + v92);
      }

      while (v42 < v244 - 7 && (v93 | v90 | v94 | v96) == 0);
      v269 = v23;
      v267 = v25;
      v264 = v24;
      v262 = v29;
      v259 = v250;
      v257 = v249;
      LODWORD(v268) = v252;
      LODWORD(v263) = v30;
      LODWORD(v258) = v34;
      DWORD2(v254) = v37;
      *&v255 = v39;
      v98 = v242;
    }

    *&v254 = v35;
  }

  result = -20;
  if (v10 > v19 || v40 > v98 || v41 > v245)
  {
    return result;
  }

  v99 = v40;
  v251 = v41;
  v253 = v42;
  if ((v19 - v10) < 8)
  {
    v101 = BYTE2(v243);
    BIT_reloadDStream_0(&v267);
    v102 = v244;
  }

  else
  {
    v100 = BIT_reloadDStream_0(&v267);
    v101 = BYTE2(v243);
    if (BYTE2(v243) >= 0xCu)
    {
      v102 = v244;
      if (v10 < v19 - 7 && !v100)
      {
        v124 = -v241 & 0x3F;
        do
        {
          v125 = &v13[v267 << v268 >> v124];
          *v10 = *v125;
          LODWORD(v268) = v268 + *(v125 + 2);
          v126 = &v10[*(v125 + 3)];
          v127 = &v13[v267 << v268 >> v124];
          *v126 = *v127;
          LODWORD(v268) = v268 + *(v127 + 2);
          v128 = &v126[*(v127 + 3)];
          v129 = &v13[v267 << v268 >> v124];
          *v128 = *v129;
          LODWORD(v268) = v268 + *(v129 + 2);
          v130 = &v128[*(v129 + 3)];
          v131 = &v13[v267 << v268 >> v124];
          *v130 = *v131;
          LODWORD(v268) = v268 + *(v131 + 2);
          v10 = &v130[*(v131 + 3)];
        }

        while (!BIT_reloadDStream_0(&v267) && v10 < v19 - 7);
      }
    }

    else
    {
      v102 = v244;
      if (v10 < v19 - 9 && !v100)
      {
        v103 = -v241 & 0x3F;
        do
        {
          v104 = &v13[v267 << v268 >> v103];
          *v10 = *v104;
          LODWORD(v268) = v268 + *(v104 + 2);
          v105 = &v10[*(v104 + 3)];
          v106 = &v13[v267 << v268 >> v103];
          *v105 = *v106;
          LODWORD(v268) = v268 + *(v106 + 2);
          v107 = &v105[*(v106 + 3)];
          v108 = &v13[v267 << v268 >> v103];
          *v107 = *v108;
          LODWORD(v268) = v268 + *(v108 + 2);
          v109 = &v107[*(v108 + 3)];
          v110 = &v13[v267 << v268 >> v103];
          *v109 = *v110;
          LODWORD(v268) = v268 + *(v110 + 2);
          v111 = &v109[*(v110 + 3)];
          v112 = &v13[v267 << v268 >> v103];
          *v111 = *v112;
          LODWORD(v268) = v268 + *(v112 + 2);
          v10 = &v111[*(v112 + 3)];
        }

        while (!BIT_reloadDStream_0(&v267) && v10 < v19 - 9);
      }
    }
  }

  if ((v19 - v10) < 2)
  {
    v114 = HIWORD(v243);
    v117 = v98;
    i = v99;
  }

  else
  {
    v113 = (v19 - 2);
    v114 = HIWORD(v243);
    v115 = -v241 & 0x3F;
    v116 = v268;
    v117 = v98;
    for (i = v99; v116 <= 0x40; v10 += *(v123 + 3))
    {
      if (v269 >= v271)
      {
        v121 = (v269 - (v116 >> 3));
        v269 = v121;
        v116 &= 7u;
        v120 = 1;
      }

      else
      {
        if (v269 == v270)
        {
          break;
        }

        v119 = v116 >> 3;
        v120 = (v269 - v119) >= v270;
        if ((v269 - v119) < v270)
        {
          v119 = (v269 - v270);
        }

        else
        {
          v119 = v119;
        }

        v121 = (v269 - v119);
        v269 = (v269 - v119);
        v116 -= 8 * v119;
      }

      LODWORD(v268) = v116;
      v122 = *v121;
      v267 = v122;
      if (v10 > v113)
      {
        break;
      }

      if (!v120)
      {
        break;
      }

      v123 = &v13[v122 << v116 >> v115];
      *v10 = *v123;
      v116 = v268 + *(v123 + 2);
      LODWORD(v268) = v116;
    }

    while (v10 <= v113)
    {
      v132 = &v13[v267 << v116 >> v115];
      *v10 = *v132;
      LOBYTE(v116) = v268 + *(v132 + 2);
      LODWORD(v268) = v268 + *(v132 + 2);
      v10 += *(v132 + 3);
    }
  }

  v133 = v10 >= v19;
  v134 = v101;
  if (!v133)
  {
    v135 = &v13[v267 << v268 >> -v114];
    *v10 = *v135;
    if (v135[3] == 1)
    {
      v136 = v268 + v135[2];
    }

    else
    {
      if (v268 > 0x3F)
      {
        goto LABEL_135;
      }

      v136 = v268 + v135[2];
      if (v136 >= 0x40)
      {
        v136 = 64;
      }
    }

    LODWORD(v268) = v136;
  }

LABEL_135:
  if (v117 - i < 8)
  {
    BIT_reloadDStream_0(&v262);
  }

  else
  {
    v137 = BIT_reloadDStream_0(&v262);
    if (v101 >= 0xC)
    {
      if (v99 < v98 - 7 && !v137)
      {
        v158 = -v114 & 0x3F;
        do
        {
          v159 = &v13[v262 << v263 >> v158];
          *v99 = *v159;
          LODWORD(v263) = v263 + *(v159 + 2);
          v160 = (v99 + *(v159 + 3));
          v161 = &v13[v262 << v263 >> v158];
          *v160 = *v161;
          LODWORD(v263) = v263 + *(v161 + 2);
          v162 = (v160 + *(v161 + 3));
          v163 = &v13[v262 << v263 >> v158];
          *v162 = *v163;
          LODWORD(v263) = v263 + *(v163 + 2);
          v164 = (v162 + *(v163 + 3));
          v165 = &v13[v262 << v263 >> v158];
          *v164 = *v165;
          LODWORD(v263) = v263 + *(v165 + 2);
          v99 = (v164 + *(v165 + 3));
        }

        while (!BIT_reloadDStream_0(&v262) && v99 < v98 - 7);
      }
    }

    else if (v99 < v98 - 9 && !v137)
    {
      v138 = -v114 & 0x3F;
      do
      {
        v139 = &v13[v262 << v263 >> v138];
        *v99 = *v139;
        LODWORD(v263) = v263 + *(v139 + 2);
        v140 = (v99 + *(v139 + 3));
        v141 = &v13[v262 << v263 >> v138];
        *v140 = *v141;
        LODWORD(v263) = v263 + *(v141 + 2);
        v142 = (v140 + *(v141 + 3));
        v143 = &v13[v262 << v263 >> v138];
        *v142 = *v143;
        LODWORD(v263) = v263 + *(v143 + 2);
        v144 = (v142 + *(v143 + 3));
        v145 = &v13[v262 << v263 >> v138];
        *v144 = *v145;
        LODWORD(v263) = v263 + *(v145 + 2);
        v146 = (v144 + *(v145 + 3));
        v147 = &v13[v262 << v263 >> v138];
        *v146 = *v147;
        LODWORD(v263) = v263 + *(v147 + 2);
        v99 = (v146 + *(v147 + 3));
      }

      while (!BIT_reloadDStream_0(&v262) && v99 < v98 - 9);
    }
  }

  if (v98 - v99 < 2)
  {
    v151 = v245;
    j = v251;
  }

  else
  {
    v148 = v98 - 2;
    v149 = -v114 & 0x3F;
    v150 = v263;
    v151 = v245;
    for (j = v251; v150 <= 0x40; v99 = (v99 + *(v157 + 3)))
    {
      if (v264 >= v266)
      {
        v155 = &v264[-(v150 >> 3)];
        v264 = v155;
        v150 &= 7u;
        v154 = 1;
      }

      else
      {
        if (v264 == v265)
        {
          break;
        }

        v153 = v150 >> 3;
        v154 = &v264[-v153] >= v265;
        if (&v264[-v153] < v265)
        {
          v153 = (v264 - v265);
        }

        else
        {
          v153 = v153;
        }

        v155 = &v264[-v153];
        v264 -= v153;
        v150 -= 8 * v153;
      }

      LODWORD(v263) = v150;
      v156 = *v155;
      v262 = v156;
      if (v99 > v148)
      {
        break;
      }

      if (!v154)
      {
        break;
      }

      v157 = &v13[v156 << v150 >> v149];
      *v99 = *v157;
      v150 = v263 + *(v157 + 2);
      LODWORD(v263) = v150;
    }

    while (v99 <= v148)
    {
      v166 = &v13[v262 << v150 >> v149];
      *v99 = *v166;
      LOBYTE(v150) = v263 + *(v166 + 2);
      LODWORD(v263) = v263 + *(v166 + 2);
      v99 = (v99 + *(v166 + 3));
    }
  }

  if (v99 < v98)
  {
    v167 = &v13[v262 << v263 >> -v114];
    *v99 = *v167;
    if (v167[3] == 1)
    {
      v168 = v263 + v167[2];
    }

    else
    {
      if (v263 > 0x3F)
      {
        goto LABEL_174;
      }

      v168 = v263 + v167[2];
      if (v168 >= 0x40)
      {
        v168 = 64;
      }
    }

    LODWORD(v263) = v168;
  }

LABEL_174:
  if (v151 - j < 8)
  {
    BIT_reloadDStream_0(&v257);
    v170 = v251;
  }

  else
  {
    v169 = BIT_reloadDStream_0(&v257);
    if (v101 >= 0xC)
    {
      v170 = v251;
      if (v251 < v245 - 7 && !v169)
      {
        v191 = -v114 & 0x3F;
        do
        {
          v192 = &v13[v257 << v258 >> v191];
          *v170 = *v192;
          LODWORD(v258) = v258 + *(v192 + 2);
          v193 = (v170 + *(v192 + 3));
          v194 = &v13[v257 << v258 >> v191];
          *v193 = *v194;
          LODWORD(v258) = v258 + *(v194 + 2);
          v195 = (v193 + *(v194 + 3));
          v196 = &v13[v257 << v258 >> v191];
          *v195 = *v196;
          LODWORD(v258) = v258 + *(v196 + 2);
          v197 = (v195 + *(v196 + 3));
          v198 = &v13[v257 << v258 >> v191];
          *v197 = *v198;
          LODWORD(v258) = v258 + *(v198 + 2);
          v170 = (v197 + *(v198 + 3));
        }

        while (!BIT_reloadDStream_0(&v257) && v170 < v245 - 7);
      }
    }

    else
    {
      v170 = v251;
      if (v251 < v245 - 9 && !v169)
      {
        v171 = -v114 & 0x3F;
        do
        {
          v172 = &v13[v257 << v258 >> v171];
          *v170 = *v172;
          LODWORD(v258) = v258 + *(v172 + 2);
          v173 = (v170 + *(v172 + 3));
          v174 = &v13[v257 << v258 >> v171];
          *v173 = *v174;
          LODWORD(v258) = v258 + *(v174 + 2);
          v175 = (v173 + *(v174 + 3));
          v176 = &v13[v257 << v258 >> v171];
          *v175 = *v176;
          LODWORD(v258) = v258 + *(v176 + 2);
          v177 = (v175 + *(v176 + 3));
          v178 = &v13[v257 << v258 >> v171];
          *v177 = *v178;
          LODWORD(v258) = v258 + *(v178 + 2);
          v179 = (v177 + *(v178 + 3));
          v180 = &v13[v257 << v258 >> v171];
          *v179 = *v180;
          LODWORD(v258) = v258 + *(v180 + 2);
          v170 = (v179 + *(v180 + 3));
        }

        while (!BIT_reloadDStream_0(&v257) && v170 < v245 - 9);
      }
    }
  }

  if (v245 - v170 < 2)
  {
    v184 = v244 - 7;
    k = v253;
  }

  else
  {
    v181 = v245 - 2;
    v182 = -v114 & 0x3F;
    v183 = v258;
    v184 = v244 - 7;
    for (k = v253; v183 <= 0x40; v170 = (v170 + *(v190 + 3)))
    {
      if (v259 >= v261)
      {
        v188 = &v259[-(v183 >> 3)];
        v259 = v188;
        v183 &= 7u;
        v187 = 1;
      }

      else
      {
        if (v259 == v260)
        {
          break;
        }

        v186 = v183 >> 3;
        v187 = &v259[-v186] >= v260;
        if (&v259[-v186] < v260)
        {
          v186 = (v259 - v260);
        }

        else
        {
          v186 = v186;
        }

        v188 = &v259[-v186];
        v259 -= v186;
        v183 -= 8 * v186;
      }

      LODWORD(v258) = v183;
      v189 = *v188;
      v257 = v189;
      if (v170 > v181)
      {
        break;
      }

      if (!v187)
      {
        break;
      }

      v190 = &v13[v189 << v183 >> v182];
      *v170 = *v190;
      v183 = v258 + *(v190 + 2);
      LODWORD(v258) = v183;
    }

    while (v170 <= v181)
    {
      v199 = &v13[v257 << v183 >> v182];
      *v170 = *v199;
      LOBYTE(v183) = v258 + *(v199 + 2);
      LODWORD(v258) = v258 + *(v199 + 2);
      v170 = (v170 + *(v199 + 3));
    }
  }

  if (v170 >= v245)
  {
    goto LABEL_213;
  }

  v200 = &v13[v257 << v258 >> -v114];
  *v170 = *v200;
  if (v200[3] == 1)
  {
    v201 = v258 + v200[2];
LABEL_212:
    LODWORD(v258) = v201;
    goto LABEL_213;
  }

  if (v258 <= 0x3F)
  {
    v201 = v258 + v200[2];
    if (v201 >= 0x40)
    {
      v201 = 64;
    }

    goto LABEL_212;
  }

LABEL_213:
  if (v102 - k < 8)
  {
    BIT_reloadDStream_0(&v254);
    v203 = v253;
  }

  else if (v134 >= 0xC)
  {
    v222 = BIT_reloadDStream_0(&v254);
    v203 = v253;
    if (v253 < v184 && !v222)
    {
      v223 = -v114 & 0x3F;
      do
      {
        v224 = &v13[v254 << SBYTE8(v254) >> v223];
        *v203 = *v224;
        DWORD2(v254) += *(v224 + 2);
        v225 = (v203 + *(v224 + 3));
        v226 = &v13[v254 << SBYTE8(v254) >> v223];
        *v225 = *v226;
        DWORD2(v254) += *(v226 + 2);
        v227 = (v225 + *(v226 + 3));
        v228 = &v13[v254 << SBYTE8(v254) >> v223];
        *v227 = *v228;
        DWORD2(v254) += *(v228 + 2);
        v229 = (v227 + *(v228 + 3));
        v230 = &v13[v254 << SBYTE8(v254) >> v223];
        *v229 = *v230;
        DWORD2(v254) += *(v230 + 2);
        v203 = (v229 + *(v230 + 3));
      }

      while (!BIT_reloadDStream_0(&v254) && v203 < v184);
    }
  }

  else
  {
    v202 = BIT_reloadDStream_0(&v254);
    v203 = v253;
    if (v253 < v102 - 9 && !v202)
    {
      v204 = -v114 & 0x3F;
      do
      {
        v205 = &v13[v254 << SBYTE8(v254) >> v204];
        *v203 = *v205;
        DWORD2(v254) += *(v205 + 2);
        v206 = (v203 + *(v205 + 3));
        v207 = &v13[v254 << SBYTE8(v254) >> v204];
        *v206 = *v207;
        DWORD2(v254) += *(v207 + 2);
        v208 = (v206 + *(v207 + 3));
        v209 = &v13[v254 << SBYTE8(v254) >> v204];
        *v208 = *v209;
        DWORD2(v254) += *(v209 + 2);
        v210 = (v208 + *(v209 + 3));
        v211 = &v13[v254 << SBYTE8(v254) >> v204];
        *v210 = *v211;
        DWORD2(v254) += *(v211 + 2);
        v212 = (v210 + *(v211 + 3));
        v213 = &v13[v254 << SBYTE8(v254) >> v204];
        *v212 = *v213;
        DWORD2(v254) += *(v213 + 2);
        v203 = (v212 + *(v213 + 3));
      }

      while (!BIT_reloadDStream_0(&v254) && v203 < v102 - 9);
    }
  }

  if (v102 - v203 >= 2)
  {
    v214 = v102 - 2;
    v215 = -v114 & 0x3F;
    v216 = DWORD2(v254);
    while (v216 <= 0x40)
    {
      if (v255 >= v256)
      {
        v219 = (v255 - (v216 >> 3));
        *&v255 = v219;
        v216 &= 7u;
        v218 = 1;
      }

      else
      {
        if (v255 == *(&v255 + 1))
        {
          break;
        }

        v217 = v216 >> 3;
        v218 = (v255 - v217) >= *(&v255 + 1);
        v217 = (v255 - v217) < *(&v255 + 1) ? (v255 - DWORD2(v255)) : v217;
        v219 = (v255 - v217);
        *&v255 = v255 - v217;
        v216 -= 8 * v217;
      }

      DWORD2(v254) = v216;
      v220 = *v219;
      *&v254 = v220;
      if (v203 > v214 || !v218)
      {
        break;
      }

      v221 = &v13[(v220 << v216) >> v215];
      *v203 = *v221;
      v216 = DWORD2(v254) + *(v221 + 2);
      DWORD2(v254) = v216;
      v203 = (v203 + *(v221 + 3));
    }

    while (v203 <= v214)
    {
      v231 = &v13[v254 << v216 >> v215];
      *v203 = *v231;
      LOBYTE(v216) = BYTE8(v254) + *(v231 + 2);
      DWORD2(v254) += *(v231 + 2);
      v203 = (v203 + *(v231 + 3));
    }
  }

  if (v203 >= v102)
  {
    v233 = DWORD2(v254);
  }

  else
  {
    v232 = &v13[v254 << SBYTE8(v254) >> -v114];
    *v203 = *v232;
    if (v232[3] == 1)
    {
      v233 = DWORD2(v254) + v232[2];
    }

    else
    {
      v233 = DWORD2(v254);
      if (DWORD2(v254) <= 0x3F)
      {
        v233 = DWORD2(v254) + v232[2];
        if (v233 >= 0x40)
        {
          v233 = 64;
        }
      }
    }
  }

  if (v233 == 64 && v255 == *(&v255 + 1) && v258 == 64 && v259 == v260 && v263 == 64 && v264 == v265 && v268 == 64 && v269 == v270)
  {
    return a2;
  }

  else
  {
    return -20;
  }
}

unint64_t HUF_decompress4X2_DCtx_wksp_bmi2(unsigned int *a1, char *a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  result = HUF_readDTableX2_wksp_bmi2(a1, a4, a5, a6, a7);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return HUF_decompress4X2_usingDTable_internal(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

BOOL HUF_selectDecoder(unint64_t a1, unint64_t a2)
{
  if (a2 >= a1)
  {
    v2 = 15;
  }

  else
  {
    v2 = (16 * a2 / a1);
  }

  v3 = (&algoTime + 16 * v2);
  v4 = *v3 + v3[1] * (a1 >> 8);
  LODWORD(v3) = v3[2] + v3[3] * (a1 >> 8);
  return v3 + (v3 >> 5) < v4;
}

uint64_t HUF_decompress1X_usingDTable_bmi2(char *a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5)
{
  if (*(a5 + 1))
  {
    return HUF_decompress1X2_usingDTable_internal(a1, a2, a3, a4, a5);
  }

  else
  {
    return HUF_decompress1X1_usingDTable_internal(a1, a2, a3, a4, a5);
  }
}

unint64_t HUF_decompress1X1_DCtx_wksp_bmi2(int *a1, _BYTE *a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  result = HUF_readDTableX1_wksp_bmi2(a1, a4, a5, a6, a7);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return HUF_decompress1X1_usingDTable_internal(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

unint64_t HUF_decompress4X_usingDTable_bmi2(char *a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, unsigned int *a5)
{
  if (*(a5 + 1))
  {
    return HUF_decompress4X2_usingDTable_internal(a1, a2, a3, a4, a5);
  }

  else
  {
    return HUF_decompress4X1_usingDTable_internal(a1, a2, a3, a4, a5);
  }
}

uint64_t HUF_decompress4X_hufOnly_wksp_bmi2(unsigned int *a1, char *a2, unint64_t a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (!a3)
  {
    return -70;
  }

  if (!a5)
  {
    return -20;
  }

  if (HUF_selectDecoder(a3, a5))
  {

    return HUF_decompress4X2_DCtx_wksp_bmi2(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {

    return HUF_decompress4X1_DCtx_wksp_bmi2(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t BIT_initDStream(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    *(a1 + 24) = a2;
    *(a1 + 32) = a2 + 8;
    if (a3 >= 8)
    {
      v3 = *&a2[a3 - 8];
      *(a1 + 16) = &a2[a3 - 8];
      *a1 = v3;
      if (!a2[a3 - 1])
      {
        *(a1 + 8) = 0;
        return -1;
      }

      v4 = 8 - (__clz(a2[a3 - 1]) ^ 0x1F);
      goto LABEL_21;
    }

    *(a1 + 16) = a2;
    v5 = *a2;
    *a1 = v5;
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 != 6)
        {
          v5 |= a2[6] << 48;
          *a1 = v5;
        }

        v5 += a2[5] << 40;
        *a1 = v5;
      }

      v5 += a2[4] << 32;
      *a1 = v5;
    }

    else
    {
      if (a3 == 2)
      {
LABEL_18:
        *a1 = v5 + (a2[1] << 8);
LABEL_19:
        if (!a2[a3 - 1])
        {
          *(a1 + 8) = 0;
          return -20;
        }

        v4 = __clz(a2[a3 - 1]) - 8 * a3 + 41;
LABEL_21:
        *(a1 + 8) = v4;
        return a3;
      }

      if (a3 == 3)
      {
LABEL_17:
        v5 += a2[2] << 16;
        *a1 = v5;
        goto LABEL_18;
      }

      if (a3 != 4)
      {
        goto LABEL_19;
      }
    }

    v5 += a2[3] << 24;
    *a1 = v5;
    goto LABEL_17;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return -72;
}

uint64_t BIT_reloadDStream_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x40)
  {
    return 3;
  }

  v3 = *(a1 + 16);
  if (v3 >= *(a1 + 32))
  {
    v2 = 0;
    v9 = (v3 - (v1 >> 3));
    *(a1 + 16) = v9;
    v10 = v1 & 7;
LABEL_10:
    *(a1 + 8) = v10;
    *a1 = *v9;
    return v2;
  }

  v4 = *(a1 + 24);
  if (v3 != v4)
  {
    v5 = v1 >> 3;
    v6 = v3 - (v1 >> 3);
    v7 = v3 - v4;
    v8 = v6 >= v4;
    v2 = v6 < v4;
    if (v8)
    {
      v5 = v5;
    }

    else
    {
      v5 = v7;
    }

    v9 = (v3 - v5);
    *(a1 + 16) = v9;
    v10 = v1 - 8 * v5;
    goto LABEL_10;
  }

  if (v1 == 64)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t HUF_fillDTableX2ForWeight(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, int a4, char a5, int a6, int a7)
{
  v7 = (1 << (a5 - a4));
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      for (; a2 != a3; result += 16)
      {
        v23 = *a2++;
        v22 = v23;
        v24 = a6 + (v23 << 8);
        if (a7 != 1)
        {
          v22 = v24;
        }

        v25 = ((a7 << 24) + (a4 << 16) + v22) | (((a7 << 24) + (a4 << 16) + v22) << 32);
        *result = v25;
        *(result + 8) = v25;
      }
    }

    else
    {
      if (v7 != 8)
      {
LABEL_16:
        while (a2 != a3)
        {
          v16 = *a2;
          if (a7 != 1)
          {
            v16 = a6 + (v16 << 8);
          }

          v17 = ((a7 << 24) + (a4 << 16) + v16) | (((a7 << 24) + (a4 << 16) + v16) << 32);
          v18 = result + 4 * v7;
          do
          {
            *result = v17;
            *(result + 8) = v17;
            *(result + 16) = v17;
            *(result + 24) = v17;
            result += 32;
          }

          while (result != v18);
          ++a2;
        }

        return result;
      }

      for (; a2 != a3; result += 32)
      {
        v13 = *a2++;
        v12 = v13;
        v14 = a6 + (v13 << 8);
        if (a7 != 1)
        {
          v12 = v14;
        }

        v15 = ((a7 << 24) + (a4 << 16) + v12) | (((a7 << 24) + (a4 << 16) + v12) << 32);
        *result = v15;
        *(result + 8) = v15;
        *(result + 16) = v15;
        *(result + 24) = v15;
      }
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        for (; a2 != a3; result += 8)
        {
          v9 = *a2++;
          v8 = v9;
          v10 = a6 + (v9 << 8);
          if (a7 != 1)
          {
            v8 = v10;
          }

          v11 = (a7 << 24) + (a4 << 16) + v8;
          *result = v11;
          *(result + 4) = v11;
        }

        return result;
      }

      goto LABEL_16;
    }

    for (; a2 != a3; result += 4)
    {
      v20 = *a2++;
      v19 = v20;
      v21 = a6 + (v20 << 8);
      if (a7 != 1)
      {
        v19 = v21;
      }

      *result = (a7 << 24) + (a4 << 16) + v19;
    }
  }

  return result;
}

uint64_t FSE_buildDTable_internal(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v6 = -46;
  if (a3 <= 0xFF)
  {
    v7 = a3 + 1;
    if ((1 << a4) + 2 * v7 + 8 <= a6)
    {
      if (a4 <= 0xC)
      {
        v8 = 0;
        v9 = a1 + 2;
        v10 = a5 + 2 * a3 + 2;
        v11 = (1 << a4);
        v12 = (v11 - 1);
        v13 = 1;
        v14 = v11 - 1;
        v15 = a3;
        do
        {
          v16 = *(a2 + 2 * v8);
          if (v16 == -1)
          {
            v18 = &v9[2 * v14--];
            *(v18 + 2) = v8;
            v17 = 1;
          }

          else
          {
            v17 = *(a2 + 2 * v8);
            if (((0x8000 << a4) >> 16) <= v16)
            {
              v13 = 0;
            }
          }

          *(a5 + 2 * v8++) = v17;
        }

        while (v7 != v8);
        *a1 = a4;
        a1[1] = v13;
        v19 = v11 >> 1;
        if (v14 == v12)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = v19 + (v11 >> 3) + 3;
          do
          {
            v24 = *(a2 + 2 * v20);
            *(v10 + v21) = v22;
            if (v24 >= 9)
            {
              v25 = 0;
              if (v24 <= 0x10)
              {
                v26 = 16;
              }

              else
              {
                v26 = v24;
              }

              v27 = (v26 - 9) >> 3;
              v28 = vdupq_n_s64(v27);
              v29 = (v10 + v21 + 16);
              do
              {
                v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v25), xmmword_1C2BF7A50)));
                if (v30.i8[0])
                {
                  *(v29 - 1) = v22;
                }

                if (v30.i8[4])
                {
                  *v29 = v22;
                }

                v25 += 2;
                v29 += 2;
              }

              while (((v27 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
            }

            v21 += v24;
            ++v20;
            v22 += 0x101010101010101;
          }

          while (v20 != v7);
          v31 = 0;
          v32 = 0;
          v33 = (a5 + 2 * v15 + 3);
          do
          {
            LOBYTE(v9[2 * (v32 & v12) + 1]) = *(v33 - 1);
            v34 = *v33;
            v33 += 2;
            LOBYTE(v9[2 * ((v32 + v23) & v12) + 1]) = v34;
            v32 = (v32 + 2 * v23) & v12;
            v31 += 2;
          }

          while (v31 < v11);
        }

        else
        {
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(a2 + 2 * v35);
            if (v37 >= 1)
            {
              for (i = 0; i != v37; ++i)
              {
                LOBYTE(v9[2 * v36 + 1]) = v35;
                do
                {
                  v36 = (v19 + (v11 >> 3) + 3 + v36) & v12;
                }

                while (v36 > v14);
              }
            }

            ++v35;
          }

          while (v35 != v7);
          if (v36)
          {
            return -1;
          }
        }

        v39 = a1 + 7;
        v40 = (1 << a4);
        do
        {
          v41 = *(v39 - 1);
          v42 = *(a5 + 2 * v41);
          *(a5 + 2 * v41) = v42 + 1;
          LOBYTE(v41) = a4 - (__clz(v42) ^ 0x1F);
          *v39 = v41;
          *(v39 - 3) = (v42 << v41) - v11;
          v39 += 4;
          --v40;
        }

        while (v40);
        return 0;
      }

      else
      {
        return -44;
      }
    }
  }

  return v6;
}

uint64_t FSE_decompress_wksp_bmi2(_BYTE *a1, uint64_t a2, _DWORD *a3, size_t a4, unsigned int a5, unsigned __int16 *a6, unint64_t a7)
{
  v127 = 255;
  if (a7 < 0x204)
  {
    return -1;
  }

  v128 = 0;
  inited = FSE_readNCount_bmi2(a6, &v127, &v128, a3, a4);
  if (inited > 0xFFFFFFFFFFFFFF88)
  {
    return inited;
  }

  if (v128 > a5)
  {
    return -44;
  }

  v15 = (1 << v128) + 1;
  if ((((1 << v128) + 4 * v15 + 2 * (v127 + 1) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 516 > a7)
  {
    return -44;
  }

  v17 = a6 + 256;
  v18 = FSE_buildDTable_internal(a6 + 256, a6, v127, v128, &a6[2 * v15 + 256], a7 - 4 * v15 - 516);
  if (v18 > 0xFFFFFFFFFFFFFF88)
  {
    return v18;
  }

  v19 = a3 + inited;
  inited = a4 - inited;
  v20 = a6[257];
  v21 = &a1[a2];
  v22 = &a1[a2 - 3];
  if (!v20)
  {
    v135 = 0;
    v133 = 0u;
    v134 = 0u;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    inited = BIT_initDStream(&v133, v19, inited);
    if (inited > 0xFFFFFFFFFFFFFF88)
    {
      return inited;
    }

    FSE_initDState(&v131, &v133, v17);
    FSE_initDState(&v129, &v133, v17);
    v24 = DWORD2(v133);
    v25 = v132;
    v26 = v133;
    v28 = *(&v134 + 1);
    v27 = v135;
    v29 = v130;
    v30 = v131;
    v31 = v129;
    v32 = v134;
    for (i = a1; v24 <= 0x40; i += 4)
    {
      if (v32 >= v27)
      {
        LODWORD(v34) = v24 >> 3;
        v24 &= 7u;
        v35 = 1;
      }

      else
      {
        if (v32 == v28)
        {
          break;
        }

        v34 = v24 >> 3;
        v35 = (v32 - v34) >= v28;
        if ((v32 - v34) < v28)
        {
          LODWORD(v34) = v32 - v28;
        }

        v24 -= 8 * v34;
      }

      v32 = (v32 - v34);
      v26 = *v32;
      if (i >= v22 || !v35)
      {
        break;
      }

      v36 = (v25 + 4 * v30);
      v37 = *v36;
      v38 = *(v36 + 2);
      v39 = *(v36 + 3);
      v40 = v24 + v39;
      v41 = (v26 >> -v40) & BIT_mask_2[v39];
      *i = v38;
      v42 = (v29 + 4 * v31);
      v43 = *v42;
      v44 = *(v42 + 2);
      v45 = *(v42 + 3);
      v46 = v40 + v45;
      v47 = (v26 >> -v46) & BIT_mask_2[v45];
      i[1] = v44;
      v48 = (v25 + 4 * v41 + 4 * v37);
      v49 = *v48;
      v50 = *(v48 + 2);
      v51 = *(v48 + 3);
      v52 = v46 + v51;
      v30 = ((v26 >> -v52) & BIT_mask_2[v51]) + v49;
      i[2] = v50;
      v53 = (v29 + 4 * v47 + 4 * v43);
      v54 = *v53;
      LOBYTE(v43) = *(v53 + 2);
      v55 = *(v53 + 3);
      v24 = v52 + v55;
      v31 = ((v26 >> -v24) & BIT_mask_2[v55]) + v54;
      i[3] = v43;
    }

    v57 = (v21 - 2);
    if (i > v21 - 2)
    {
      return -70;
    }

    v58 = (i - a1);
    for (j = i + 1; ; j += 2)
    {
      v60 = (v25 + 4 * v30);
      v61 = *v60;
      v62 = *(v60 + 2);
      v63 = *(v60 + 3);
      v64 = v24 + v63;
      v65 = BIT_mask_2[v63];
      *(j - 1) = v62;
      if (v64 > 0x40)
      {
        v123 = (v29 + 4 * v31 + 2);
        v124 = 2;
LABEL_105:
        *j = *v123;
        return &v58[v124];
      }

      if (v32 >= v27)
      {
        break;
      }

      if (v32 != v28)
      {
        v66 = v64 >> 3;
        if ((v32 - v66) < v28)
        {
          LODWORD(v66) = v32 - v28;
        }

        v67 = v64 - 8 * v66;
        goto LABEL_43;
      }

      v67 = v64;
      v68 = v26;
LABEL_44:
      if (j > v57)
      {
        return -70;
      }

      v30 = ((v26 >> -v64) & v65) + v61;
      v69 = (v29 + 4 * v31);
      v70 = *v69;
      v71 = *(v69 + 2);
      v72 = *(v69 + 3);
      v73 = v67 + v72;
      v74 = BIT_mask_2[v72];
      *j = v71;
      if (v73 > 0x40)
      {
        v123 = (v25 + 4 * v30 + 2);
        ++j;
        v124 = 3;
        goto LABEL_105;
      }

      if (v32 >= v27)
      {
        LODWORD(v75) = v73 >> 3;
        v24 = v73 & 7;
      }

      else
      {
        if (v32 == v28)
        {
          v24 = v73;
          v26 = v68;
          goto LABEL_53;
        }

        v75 = v73 >> 3;
        if ((v32 - v75) < v28)
        {
          LODWORD(v75) = v32 - v28;
        }

        v24 = v73 - 8 * v75;
      }

      v32 = (v32 - v75);
      v26 = *v32;
LABEL_53:
      v31 = ((v68 >> -v73) & v74) + v70;
      v58 += 2;
      v76 = j + 1;
      if (v76 > v57)
      {
        return -70;
      }
    }

    LODWORD(v66) = v64 >> 3;
    v67 = v64 & 7;
LABEL_43:
    v32 = (v32 - v66);
    v68 = *v32;
    goto LABEL_44;
  }

  v133 = 0uLL;
  *&v134 = 0;
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  if (!inited)
  {
    return -72;
  }

  *(&v134 + 1) = v19;
  v135 = v19 + 8;
  if (inited >= 8)
  {
    v23 = *(a3 + a4 - 8);
    *&v134 = a3 + a4 - 8;
    *&v133 = v23;
    if (!HIBYTE(v23))
    {
      return -1;
    }

    DWORD2(v133) = 8 - (__clz(HIBYTE(v23)) ^ 0x1F);
    if (inited > 0xFFFFFFFFFFFFFF88)
    {
      return inited;
    }

    goto LABEL_67;
  }

  v56 = *v19;
  *&v134 = v19;
  *&v133 = v56;
  if (inited > 4)
  {
    if (inited != 5)
    {
      if (inited != 6)
      {
        v56 |= v19[6] << 48;
      }

      v56 += v19[5] << 40;
    }

    v56 += v19[4] << 32;
    goto LABEL_62;
  }

  if (inited != 2)
  {
    if (inited == 3)
    {
LABEL_63:
      v56 += v19[2] << 16;
      goto LABEL_64;
    }

    if (inited != 4)
    {
      goto LABEL_65;
    }

LABEL_62:
    v56 += v19[3] << 24;
    goto LABEL_63;
  }

LABEL_64:
  *&v133 = v56 + (v19[1] << 8);
LABEL_65:
  if (!*(a3 + a4 - 1))
  {
    return -20;
  }

  DWORD2(v133) = __clz(*(a3 + a4 - 1)) - 8 * inited + 41;
LABEL_67:
  FSE_initDState(&v131, &v133, v17);
  FSE_initDState(&v129, &v133, v17);
  v77 = DWORD2(v133);
  v78 = v132;
  v79 = v133;
  v81 = *(&v134 + 1);
  v80 = v135;
  v82 = v130;
  v83 = v131;
  v84 = v129;
  v85 = v134;
  for (k = a1; v77 <= 0x40; k += 4)
  {
    if (v85 >= v80)
    {
      LODWORD(v87) = v77 >> 3;
      v77 &= 7u;
      v88 = 1;
    }

    else
    {
      if (v85 == v81)
      {
        break;
      }

      v87 = v77 >> 3;
      v88 = (v85 - v87) >= v81;
      if ((v85 - v87) < v81)
      {
        LODWORD(v87) = v85 - v81;
      }

      v77 -= 8 * v87;
    }

    v85 = (v85 - v87);
    v79 = *v85;
    if (k >= v22 || !v88)
    {
      break;
    }

    v89 = (v78 + 4 * v83);
    v90 = *v89;
    v91 = *(v89 + 2);
    LODWORD(v89) = *(v89 + 3);
    v92 = (v79 << v77) >> -v89;
    v93 = v77 + v89;
    *k = v91;
    v94 = (v82 + 4 * v84);
    v95 = *v94;
    v96 = *(v94 + 2);
    LODWORD(v94) = *(v94 + 3);
    v97 = (v79 << v93) >> -v94;
    v98 = v93 + v94;
    k[1] = v96;
    v99 = (v78 + 4 * v92 + 4 * v90);
    v100 = *v99;
    v101 = *(v99 + 2);
    LODWORD(v99) = *(v99 + 3);
    v102 = (v79 << v98) >> -v99;
    v103 = v98 + v99;
    v83 = v102 + v100;
    k[2] = v101;
    v104 = (v82 + 4 * v97 + 4 * v95);
    v105 = *v104;
    v106 = *(v104 + 2);
    LODWORD(v104) = *(v104 + 3);
    v107 = (v79 << v103) >> -v104;
    v77 = v103 + v104;
    v84 = v107 + v105;
    k[3] = v106;
  }

  v108 = (v21 - 2);
  if (k > v21 - 2)
  {
    return -70;
  }

  v109 = (k - a1);
  for (m = k + 1; ; m += 2)
  {
    v111 = (v78 + 4 * v83);
    v112 = *v111;
    v113 = *(v111 + 2);
    v114 = *(v111 + 3);
    v115 = v77 + v114;
    *(m - 1) = v113;
    if (v77 + v114 > 0x40)
    {
      v125 = (v82 + 4 * v84 + 2);
      v126 = 2;
      goto LABEL_108;
    }

    if (v85 >= v80)
    {
      LODWORD(v116) = v115 >> 3;
      v115 &= 7u;
LABEL_89:
      v85 = (v85 - v116);
      v117 = *v85;
      goto LABEL_90;
    }

    if (v85 != v81)
    {
      v116 = v115 >> 3;
      if ((v85 - v116) < v81)
      {
        LODWORD(v116) = v85 - v81;
      }

      v115 -= 8 * v116;
      goto LABEL_89;
    }

    v117 = v79;
LABEL_90:
    if (m > v108)
    {
      return -70;
    }

    v83 = ((v79 << v77) >> -v114) + v112;
    v118 = (v82 + 4 * v84);
    v119 = *v118;
    v120 = *(v118 + 3);
    v77 = v115 + v120;
    *m = *(v118 + 2);
    if (v115 + v120 > 0x40)
    {
      break;
    }

    if (v85 >= v80)
    {
      LODWORD(v121) = v77 >> 3;
      v77 &= 7u;
    }

    else
    {
      if (v85 == v81)
      {
        v79 = v117;
        goto LABEL_99;
      }

      v121 = v77 >> 3;
      if ((v85 - v121) < v81)
      {
        LODWORD(v121) = v85 - v81;
      }

      v77 -= 8 * v121;
    }

    v85 = (v85 - v121);
    v79 = *v85;
LABEL_99:
    v84 = ((v117 << v115) >> -v120) + v119;
    v109 += 2;
    v122 = m + 1;
    if (v122 > v108)
    {
      return -70;
    }
  }

  v125 = (v78 + 4 * v83 + 2);
  ++m;
  v126 = 3;
LABEL_108:
  *m = *v125;
  return &v109[v126];
}

void *FSE_initDState(void *result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  v4 = *(a2 + 8) + v3;
  v5 = (*a2 >> -(*(a2 + 8) + v3)) & BIT_mask_2[v3];
  *(a2 + 8) = v4;
  *result = v5;
  if (v4 <= 0x40)
  {
    v6 = *(a2 + 16);
    if (v6 >= *(a2 + 32))
    {
      v10 = (v6 - (v4 >> 3));
      *(a2 + 16) = v10;
      v11 = v4 & 7;
LABEL_9:
      *(a2 + 8) = v11;
      *a2 = *v10;
      goto LABEL_10;
    }

    v7 = *(a2 + 24);
    if (v6 != v7)
    {
      v8 = v4 >> 3;
      if (v6 - v8 >= v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = (v6 - v7);
      }

      v10 = (v6 - v9);
      *(a2 + 16) = v10;
      v11 = v4 - 8 * v9;
      goto LABEL_9;
    }
  }

LABEL_10:
  result[1] = a3 + 2;
  return result;
}

unint64_t ZSTD_XXH64(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (a2 < 0x20)
  {
    v13 = a3 + 0x27D4EB2F165667C5;
  }

  else
  {
    v5 = a1 + a2 - 31;
    v6 = a3 + 0x60EA27EEADC0B5D6;
    v7 = a3 - 0x3D4D51C2D82B14B1;
    v8 = a3 + 0x61C8864E7A143579;
    do
    {
      v9 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * *v4, 33);
      v6 = 0x9E3779B185EBCA87 * v9;
      v10 = __ROR8__(v7 - 0x3D4D51C2D82B14B1 * v4[1], 33);
      v7 = 0x9E3779B185EBCA87 * v10;
      v11 = __ROR8__(a3 - 0x3D4D51C2D82B14B1 * v4[2], 33);
      a3 = 0x9E3779B185EBCA87 * v11;
      v12 = __ROR8__(v8 - 0x3D4D51C2D82B14B1 * v4[3], 33);
      v8 = 0x9E3779B185EBCA87 * v12;
      v4 += 4;
    }

    while (v4 < v5);
    v13 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v7, 57) + __ROR8__(v6, 63) + __ROR8__(a3, 52) + __ROR8__(v8, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v9, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v10, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v11, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v12, 33))) - 0x7A1435883D4D519DLL;
  }

  return XXH64_finalize(v13 + a2, v4, a2);
}

uint64_t ZSTD_XXH64_reset(uint64_t a1, unint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = vaddq_s64(vdupq_n_s64(a2), xmmword_1C2BF96F0);
  *(a1 + 24) = a2;
  *(a1 + 32) = a2 + 0x61C8864E7A143579;
  return 0;
}

uint64_t ZSTD_XXH64_update(uint64_t a1, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    *a1 += __n;
    v6 = *(a1 + 72);
    if (v6 + __n <= 0x1F)
    {
      memcpy((a1 + v6 + 40), __src, __n);
      LODWORD(v7) = *(a1 + 72) + v3;
LABEL_11:
      *(a1 + 72) = v7;
      return 0;
    }

    v8 = &__src[__n];
    if (v6)
    {
      memcpy((a1 + 40 + v6), __src, (32 - v6));
      v9 = __ROR8__(*(a1 + 16) - 0x3D4D51C2D82B14B1 * *(a1 + 48), 33);
      *(a1 + 8) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 8) - 0x3D4D51C2D82B14B1 * *(a1 + 40), 33);
      *(a1 + 16) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 32) - 0x3D4D51C2D82B14B1 * *(a1 + 64), 33);
      *(a1 + 24) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 24) - 0x3D4D51C2D82B14B1 * *(a1 + 56), 33);
      *(a1 + 32) = v10;
      v4 += (32 - *(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      v14 = *(a1 + 32);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        *(a1 + 8) = v11;
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        *(a1 + 16) = v12;
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        *(a1 + 24) = v13;
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        *(a1 + 32) = v14;
        v4 += 32;
      }

      while (v4 <= v8 - 32);
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      memcpy((a1 + 40), v4, v7);
      goto LABEL_11;
    }
  }

  return 0;
}

unint64_t ZSTD_XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  return XXH64_finalize(v1 + *a1, a1 + 5, *a1);
}

unint64_t XXH64_finalize(unint64_t a1, uint64_t *a2, char a3)
{
  v3 = a3 & 0x1F;
  if (v3 >= 8)
  {
    do
    {
      v4 = *a2++;
      a1 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v4, 33)) ^ a1, 37);
      v3 -= 8;
    }

    while (v3 > 7);
  }

  if (v3 >= 4)
  {
    v5 = *a2;
    a2 = (a2 + 4);
    a1 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v5) ^ a1, 41);
    v3 -= 4;
  }

  for (; v3; --v3)
  {
    v6 = *a2;
    a2 = (a2 + 1);
    a1 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v6) ^ a1, 53);
  }

  v7 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) >> 29));
  return v7 ^ HIDWORD(v7);
}

uint64_t ZSTD_updateTree(uint64_t result, int a2, char *a3)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = a2 - v4;
  v6 = *(result + 44);
  if (v6 < a2 - v4)
  {
    v8 = *(result + 256);
    do
    {
      result = ZSTD_insertBt1(v3, (v4 + v6), a3, v5, v8, 0);
      v6 += result;
    }

    while (v6 < v5);
  }

  *(v3 + 44) = v5;
  return result;
}

int64_t ZSTD_compressBlock_opt0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5, unsigned int a6)
{
  v160 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 256);
  v10 = v9 - 6;
  v11 = v9 >= 3;
  v12 = v9 - 3;
  if (v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  v143 = a4;
  v144 = v14;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v13;
  }

  v141 = *(&off_1F427A4E0[4 * a6] + v12);
  v142 = &a4[a5];
  v147 = &a4[a5 - 8];
  v15 = (*(a1 + 8) + *(a1 + 24));
  if (*(a1 + 260) >= 0xFFFu)
  {
    v16 = 4095;
  }

  else
  {
    v16 = *(a1 + 260);
  }

  v138 = v16;
  v155 = *(a1 + 44);
  v17 = *(a1 + 168);
  v150 = *(a1 + 160);
  v159 = 0;
  v158 = 0;
  v153 = 0u;
  memset(v154, 0, sizeof(v154));
  v152 = 0u;
  v18 = *(a1 + 272);
  if (v18)
  {
    v19 = v18[1];
    v152 = *v18;
    v153 = v19;
    *v154 = *(v18 + 4);
  }

  else
  {
    *v154 = 0;
    v152 = 0uLL;
    v153 = 0uLL;
  }

  *&v154[12] = 0;
  *&v154[8] = 0;
  ZSTD_opt_getNextMatchAndUpdateSeqStore(&v152, 0, a5);
  ZSTD_rescaleFreqs(a1 + 128, v143, a5, 0);
  if (v15 == v143)
  {
    v20 = v143 + 1;
  }

  else
  {
    v20 = v143;
  }

  if (v20 < v147)
  {
    v136 = 0;
    v21 = v144;
    v133 = vdupq_n_s64(v144 - 2);
    v134 = v142 - 32;
    v22 = v143;
    v137 = a3;
    while (1)
    {
      v145 = v22;
      v23 = v20 - v22;
      LODWORD(v156) = v141(v150, a1, &v155, v20, v142, a3, v20 == v22, v21);
      ZSTD_optLdm_processMatchCandidate(&v152, v150, &v156, v20 - v143, v142 - v20);
      v24 = v156;
      if (!v156)
      {
        ++v20;
        goto LABEL_158;
      }

      for (i = 0; i != 3; ++i)
      {
        v17[i + 4] = *(a3 + i * 4);
      }

      v17[2] = 0;
      v17[3] = v23;
      v26 = ZSTD_litLengthPrice(v23, a1 + 128, 0);
      *v17 = v26;
      v27 = (v150 + 8 * (v24 - 1));
      v28 = v27[1];
      if (v28 > v138)
      {
        v29 = 0;
        v30 = *v27;
        goto LABEL_112;
      }

      v31 = v26;
      v32 = ZSTD_litLengthPrice(0, a1 + 128, 0);
      v33 = 0;
      v34 = v17 + 14;
      do
      {
        v35 = vdupq_n_s64(v33);
        v36 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v35, xmmword_1C2BF7A50)));
        if (vuzp1_s16(v36, *v35.i8).u8[0])
        {
          *(v34 - 7) = 0x40000000;
        }

        if (vuzp1_s16(v36, *&v35).i8[2])
        {
          *v34 = 0x40000000;
        }

        v37 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v35, xmmword_1C2BF9460)));
        if (vuzp1_s16(v37, v37).i32[1])
        {
          v34[7] = 0x40000000;
          v34[14] = 0x40000000;
        }

        v33 += 4;
        v34 += 28;
      }

      while (((v144 + 2) & 0xC) != v33);
      v38 = 0;
      v39 = v32 + v31;
      v40 = v21;
      do
      {
        v41 = (v150 + 8 * v38);
        v42 = v41[1];
        if (v40 <= v42)
        {
          v43 = *v41;
          v44 = __clz(v43 + 1) ^ 0x1F;
          v45 = *(a1 + 208);
          v46 = (v44 << 9) - 9677;
          if (v44 <= 0x13)
          {
            v46 = 51;
          }

          do
          {
            if (v45 == 1)
            {
              v47 = (v44 << 8) + 4096 + ((__clz(v40 - 2) << 8) ^ 0x1F00);
            }

            else
            {
              v48 = v40 - 3;
              if (v40 - 3 < 0x80)
              {
                v49 = ZSTD_MLcode_ML_Code_0[v48];
              }

              else
              {
                v49 = 67 - __clz(v48);
              }

              v47 = ((__clz(*(*(a1 + 144) + 4 * v49) + 1) << 8) ^ 0xFFFFE0FF) + v46 + *(a1 + 204) + ((__clz(*(*(a1 + 152) + 4 * v44) + 1) << 8) ^ 0xFFFFE0FF) + 1 + *(a1 + 200) + ((v44 + ML_bits_4[v49]) << 8) + 1;
            }

            v50 = &v17[7 * v40];
            v50[2] = v40;
            v50[3] = v23;
            *v50 = v39 + v47;
            v50[1] = v43;
            ++v40;
          }

          while (v40 <= v42);
        }

        ++v38;
      }

      while (v38 != v24);
      v146 = v20;
      v51 = v40 - 1;
      if (v40 == 1)
      {
LABEL_109:
        v93 = &v17[7 * v51];
        v30 = v93[1];
        v136 = *v93;
        v28 = v93[2];
        v23 = v93[3];
        v158 = *(v93 + 2);
        v159 = v93[6];
        v29 = v51 - (v23 + v28);
        if (v51 < v23 + v28)
        {
          v29 = 0;
        }

        goto LABEL_111;
      }

      v52 = 1;
      while (1)
      {
        v53 = &v17[7 * v52 - 7];
        if (v53[2])
        {
          v54 = 1;
        }

        else
        {
          v54 = v53[3] + 1;
        }

        if (*(a1 + 224) == 2)
        {
          v55 = 2048;
        }

        else if (*(a1 + 208) == 1)
        {
          v55 = 1536;
        }

        else
        {
          v55 = *(a1 + 192) - ((__clz(*(*(a1 + 128) + 4 * v146[v52 - 1]) + 1) << 8) ^ 0x1F00);
        }

        v148 = &v17[7 * v52 - 7];
        v56 = *v53;
        v57 = v55 + ZSTD_litLengthPrice(v54, a1 + 128, 0) + v56;
        v58 = v57 - ZSTD_litLengthPrice(v54 - 1, a1 + 128, 0);
        v59 = &v17[7 * v52];
        v60 = *v59;
        if (v58 <= *v59)
        {
          v59[2] = 0;
          v59[3] = v54;
          v60 = v58;
          *v59 = v58;
          v59[1] = 0;
LABEL_61:
          v69 = 0;
          v67 = v150;
          *(v59 + 2) = *(v148 + 2);
          v59[6] = v148[6];
          v70 = 1;
          v68 = &v146[v52];
          goto LABEL_76;
        }

        v61 = v59[2];
        if (!v61)
        {
          goto LABEL_61;
        }

        v62 = &v17[7 * (v52 - v61)];
        v63 = v59[1];
        v64 = v59[3];
        v156 = *(v62 + 2);
        v157 = v62[6];
        if (v63 >= 3)
        {
          v65 = HIDWORD(v156);
          HIDWORD(v156) = v156;
          v66 = v63 - 2;
          v67 = v150;
          v68 = &v146[v52];
LABEL_74:
          LODWORD(v156) = v66;
          goto LABEL_75;
        }

        if (v64)
        {
          v71 = v63;
        }

        else
        {
          v71 = v63 + 1;
        }

        v67 = v150;
        if (v71 == 3)
        {
          v72 = v156;
          v66 = v156 - 1;
          v68 = &v146[v52];
LABEL_70:
          if (v71 == 1)
          {
            v73 = &v157;
          }

          else
          {
            v73 = &v156 + 1;
          }

          v65 = *v73;
          HIDWORD(v156) = v72;
          goto LABEL_74;
        }

        v68 = &v146[v52];
        if (v71)
        {
          v66 = *(&v156 + v71);
          v72 = v156;
          goto LABEL_70;
        }

        v65 = v157;
LABEL_75:
        v70 = 0;
        *(v59 + 2) = v156;
        v59[6] = v65;
        v69 = 1;
LABEL_76:
        if (v68 > v147)
        {
          v74 = v52 + 1;
          goto LABEL_106;
        }

        if (v52 == v51)
        {
          v51 = v52;
          goto LABEL_109;
        }

        v74 = v52 + 1;
        if (v17[7 * v52 + 7] > v60 + 128)
        {
          break;
        }

LABEL_106:
        v52 = v74;
        if (v74 > v51)
        {
          goto LABEL_109;
        }
      }

      v140 = v60;
      v149 = v69;
      if (v70)
      {
        v23 = v59[3];
      }

      else
      {
        v23 = 0;
      }

      v139 = ZSTD_litLengthPrice(0, a1 + 128, 0);
      LODWORD(v156) = v141(v67, a1, &v155, v68, v142, (v59 + 4), v149, v144);
      ZSTD_optLdm_processMatchCandidate(&v152, v150, &v156, v68 - v143, v142 - v68);
      v75 = v156;
      if (!v156)
      {
LABEL_105:
        v74 = v52 + 1;
        goto LABEL_106;
      }

      v76 = (v156 - 1);
      v28 = *(v150 + 8 * v76 + 4);
      if (v28 <= v138 && v28 + v52 <= 0xFFF)
      {
        v77 = 0;
        do
        {
          v78 = (v150 + 8 * v77);
          v79 = v144;
          if (v77)
          {
            v79 = *(v78 - 1) + 1;
          }

          v80 = v78[1];
          if (v80 >= v79)
          {
            v81 = *v78;
            v82 = __clz(v81 + 1) ^ 0x1F;
            v83 = *(a1 + 208);
            v84 = (v82 << 9) - 9677;
            if (v82 <= 0x13)
            {
              v84 = 51;
            }

            do
            {
              if (v83 == 1)
              {
                v85 = (v82 << 8) + 4096 + ((__clz(v80 - 2) << 8) ^ 0x1F00);
              }

              else
              {
                v86 = v80 - 3;
                if (v80 - 3 < 0x80)
                {
                  v87 = ZSTD_MLcode_ML_Code_0[v86];
                }

                else
                {
                  v87 = 67 - __clz(v86);
                }

                v85 = ((__clz(*(*(a1 + 144) + 4 * v87) + 1) << 8) ^ 0xFFFFE0FF) + v84 + *(a1 + 204) + ((__clz(*(*(a1 + 152) + 4 * v82) + 1) << 8) ^ 0xFFFFE0FF) + 1 + *(a1 + 200) + ((v82 + ML_bits_4[v87]) << 8) + 1;
              }

              v88 = v80 + v52;
              v89 = v139 + v140 + v85;
              if (v88 <= v51)
              {
                if (v89 >= v17[7 * v88])
                {
                  break;
                }
              }

              else
              {
                v90 = v51;
                v91 = &v17[7 * v51 + 7];
                do
                {
                  ++v90;
                  *v91 = 0x40000000;
                  v91 += 7;
                }

                while (v90 < v88);
                v51 = v90;
              }

              v92 = &v17[7 * v88];
              v92[2] = v80;
              v92[3] = v23;
              *v92 = v89;
              v92[1] = v81;
              --v80;
            }

            while (v80 >= v79);
          }

          ++v77;
        }

        while (v77 != v75);
        goto LABEL_105;
      }

      if (v59[2])
      {
        v130 = 0;
      }

      else
      {
        v130 = v59[3];
      }

      v30 = *(v150 + 8 * v76);
      v29 = v52 - v130;
      if (v29 > 0x1000)
      {
        v29 = 0;
      }

LABEL_111:
      v20 = v146;
      a3 = v137;
      if (v28)
      {
LABEL_112:
        v94 = &v17[7 * v29];
        v156 = *(v94 + 2);
        v157 = v94[6];
        if (v30 >= 3)
        {
          v95 = HIDWORD(v156);
          HIDWORD(v156) = v156;
          v96 = v30 - 2;
          goto LABEL_127;
        }

        if (v23)
        {
          v97 = v30;
        }

        else
        {
          v97 = v30 + 1;
        }

        if (v97 == 3)
        {
          v100 = v156;
          v96 = v156 - 1;
        }

        else
        {
          if (!v97)
          {
            v95 = v157;
            goto LABEL_128;
          }

          v96 = *(&v156 + v97);
          v100 = v156;
        }

        if (v97 == 1)
        {
          v101 = &v157;
        }

        else
        {
          v101 = &v156 + 1;
        }

        v95 = *v101;
        HIDWORD(v156) = v100;
LABEL_127:
        LODWORD(v156) = v96;
LABEL_128:
        *a3 = v156;
        *(a3 + 8) = v95;
      }

      else
      {
        v98 = &v17[7 * v29];
        v99 = *(v98 + 2);
        *(v137 + 8) = v98[6];
        *v137 = v99;
      }

      v151 = v29 + 1;
      v102 = &v17[7 * v29 + 7];
      *v102 = v136;
      v102[1] = v30;
      v102[2] = v28;
      v102[3] = v23;
      *(v102 + 2) = v158;
      v102[6] = v159;
      v103 = v29;
      if (!v29)
      {
        v109 = 1;
LABEL_136:
        v110 = v145;
        while (2)
        {
          v111 = &v17[7 * v109];
          v113 = v111[2];
          v112 = v111[3];
          if (v113)
          {
            v114 = v111[1];
            ZSTD_updateStats((a1 + 128), v111[3], v110, v114, v111[2]);
            v115 = *(a2 + 24);
            if (&v110[v112] > v134)
            {
              if (v110 <= v134)
              {
                v117 = v115 + v134 - v110;
                v126 = v110;
                v118 = v114;
                do
                {
                  v127 = *v126;
                  v126 += 16;
                  *v115++ = v127;
                }

                while (v115 < v117);
                v116 = v142 - 32;
              }

              else
              {
                v116 = v110;
                v117 = *(a2 + 24);
                v118 = v114;
              }

              while (v116 < &v110[v112])
              {
                v128 = *v116++;
                *v117++ = v128;
              }

              goto LABEL_145;
            }

            *v115 = *v110;
            v119 = *(a2 + 24);
            if (v112 <= 0x10)
            {
              *(a2 + 24) = v119 + v112;
              v124 = *(a2 + 8);
              v118 = v114;
            }

            else
            {
              v120 = (v119 + 16);
              v121 = v119 + v112;
              v122 = (v110 + 16);
              v118 = v114;
              do
              {
                v123 = *v122++;
                *v120++ = v123;
              }

              while (v120 < v121);
LABEL_145:
              *(a2 + 24) += v112;
              v124 = *(a2 + 8);
              if (v112 >= 0x10000)
              {
                v125 = (v124 - *a2) >> 3;
                *(a2 + 72) = 1;
                *(a2 + 76) = v125;
              }
            }

            *(v124 + 4) = v112;
            *v124 = v118 + 1;
            if ((v113 - 3) >= 0x10000)
            {
              v129 = (v124 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v129;
            }

            *(v124 + 6) = v113 - 3;
            *(a2 + 8) = v124 + 8;
            v110 += (v113 + v112);
            v20 = v110;
          }

          else
          {
            v20 = &v110[v112];
          }

          if (++v109 > v151)
          {
            goto LABEL_157;
          }

          continue;
        }
      }

      do
      {
        v104 = &v17[7 * v103];
        v105 = v104[3] + v104[2];
        v106 = &v17[7 * v29];
        v107 = *v104;
        *(v106 + 12) = *(v104 + 3);
        *v106 = v107;
        --v29;
        v11 = v103 >= v105;
        v103 -= v105;
        v108 = v103 != 0 && v11;
        if (!v11)
        {
          v103 = 0;
        }
      }

      while (v108);
      v109 = v29 + 1;
      if (v29 + 1 <= v151)
      {
        goto LABEL_136;
      }

      v110 = v145;
LABEL_157:
      v145 = v110;
      ZSTD_setBasePrices((a1 + 128), 0);
      a3 = v137;
      v21 = v144;
LABEL_158:
      v22 = v145;
      if (v20 >= v147)
      {
        v143 = v145;
        break;
      }
    }
  }

  v131 = *MEMORY[0x1E69E9840];
  return v142 - v143;
}

int64_t ZSTD_compressBlock_opt2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5, unsigned int a6)
{
  v173 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 256);
  v9 = v8 - 6;
  v10 = v8 >= 3;
  v11 = v8 - 3;
  if (v10)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  if (v9 < 0xFFFFFFFD)
  {
    v11 = v12;
  }

  v151 = *(&off_1F427A4E0[4 * a6] + v11);
  v152 = &a4[a5];
  v153 = a4;
  v155 = &a4[a5 - 8];
  v14 = (*(a1 + 8) + *(a1 + 24));
  if (*(a1 + 260) >= 0xFFFu)
  {
    v15 = 4095;
  }

  else
  {
    v15 = *(a1 + 260);
  }

  v149 = v15;
  v168 = *(a1 + 44);
  v17 = *(a1 + 160);
  v16 = *(a1 + 168);
  v172 = 0;
  v171 = 0;
  v166 = 0u;
  memset(v167, 0, sizeof(v167));
  v165 = 0u;
  v18 = *(a1 + 272);
  if (v18)
  {
    v19 = v18[1];
    v165 = *v18;
    v166 = v19;
    *v167 = *(v18 + 4);
  }

  else
  {
    *v167 = 0;
    v165 = 0uLL;
    v166 = 0uLL;
  }

  *&v167[12] = 0;
  *&v167[8] = 0;
  ZSTD_opt_getNextMatchAndUpdateSeqStore(&v165, 0, a5);
  ZSTD_rescaleFreqs(a1 + 128, v153, a5, 2);
  if (v14 == v153)
  {
    v20 = v153 + 1;
  }

  else
  {
    v20 = v153;
  }

  if (v20 < v155)
  {
    v147 = 0;
    v161 = v152 - 32;
    v146 = vdupq_n_s64(v13 - 2);
    v21 = v153;
    v22 = a3;
    v160 = v17;
    while (1)
    {
      v154 = v21;
      v23 = v20 - v21;
      v24 = v20;
      LODWORD(v169) = v151(v17, a1, &v168, v20, v152, v22, v20 == v21);
      ZSTD_optLdm_processMatchCandidate(&v165, v17, &v169, v24 - v153, v152 - v24);
      v25 = v169;
      if (!v169)
      {
        v20 = v24 + 1;
        goto LABEL_161;
      }

      v156 = v24;
      for (i = 0; i != 3; ++i)
      {
        v16[i + 4] = *(v22 + i * 4);
      }

      v16[2] = 0;
      v16[3] = v23;
      v27 = ZSTD_litLengthPrice(v23, a1 + 128, 2);
      *v16 = v27;
      v28 = (v160 + 8 * (v25 - 1));
      v29 = v28[1];
      if (v29 > v149)
      {
        v30 = 0;
        v31 = *v28;
        v20 = v24;
        goto LABEL_109;
      }

      v32 = v27;
      v33 = ZSTD_litLengthPrice(0, a1 + 128, 2);
      v34 = 0;
      v35 = v16 + 14;
      do
      {
        v36 = vdupq_n_s64(v34);
        v37 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v36, xmmword_1C2BF7A50)));
        if (vuzp1_s16(v37, *v36.i8).u8[0])
        {
          *(v35 - 7) = 0x40000000;
        }

        if (vuzp1_s16(v37, *&v36).i8[2])
        {
          *v35 = 0x40000000;
        }

        v38 = vmovn_s64(vcgeq_u64(v146, vorrq_s8(v36, xmmword_1C2BF9460)));
        if (vuzp1_s16(v38, v38).i32[1])
        {
          v35[7] = 0x40000000;
          v35[14] = 0x40000000;
        }

        v34 += 4;
        v35 += 28;
      }

      while (((v13 + 2) & 0xC) != v34);
      v39 = 0;
      v40 = v33 + v32;
      v41 = v13;
      do
      {
        v42 = (v160 + 8 * v39);
        v43 = v42[1];
        if (v41 <= v43)
        {
          v44 = *v42;
          v45 = __clz(v44 + 1) ^ 0x1F;
          v46 = *(a1 + 208);
          v47 = (v41 << 8) - 512;
          do
          {
            if (v46 == 1)
            {
              v48 = __clz(v41 - 2) ^ 0x1F;
              v49 = (v47 >> v48) + ((v48 + v45) << 8) + 4096;
            }

            else
            {
              v50 = v41 - 3;
              if (v41 - 3 < 0x80)
              {
                v51 = ZSTD_MLcode_ML_Code_0[v50];
              }

              else
              {
                v51 = 67 - __clz(v50);
              }

              v52 = *(*(a1 + 152) + 4 * v45) + 1;
              v53 = __clz(v52) ^ 0x1F;
              v54 = ML_bits_4[v51];
              v55 = *(*(a1 + 144) + 4 * v51) + 1;
              v56 = __clz(v55) ^ 0x1F;
              v49 = *(a1 + 204) + *(a1 + 200) - (v52 << 8 >> v53) - (v55 << 8 >> v56) + ((v45 + v54 - v53 - v56) << 8) + 51;
            }

            v57 = &v16[7 * v41];
            v57[2] = v41;
            v57[3] = v23;
            *v57 = v40 + v49;
            v57[1] = v44;
            ++v41;
            v47 += 256;
          }

          while (v41 <= v43);
        }

        ++v39;
      }

      while (v39 != v25);
      v58 = v41 - 1;
      if (v41 == 1)
      {
        goto LABEL_105;
      }

      v59 = 1;
      while (1)
      {
        v60 = &v16[7 * v59 - 7];
        v61 = v60[2] ? 1 : v60[3] + 1;
        v163 = &v156[v59];
        if (*(a1 + 224) == 2)
        {
          v62 = 2048;
        }

        else if (*(a1 + 208) == 1)
        {
          v62 = 1536;
        }

        else
        {
          v63 = *(*(a1 + 128) + 4 * *(v163 - 1)) + 1;
          v64 = __clz(v63) ^ 0x1F;
          v62 = *(a1 + 192) - ((v63 << 8 >> v64) + (v64 << 8));
        }

        v157 = &v16[7 * v59 - 7];
        v65 = *v60;
        v66 = v62 + ZSTD_litLengthPrice(v61, a1 + 128, 2) + v65;
        v67 = ZSTD_litLengthPrice(v61 - 1, a1 + 128, 2);
        v68 = &v16[7 * v59];
        v69 = *v68;
        if (v66 - v67 <= *v68)
        {
          v68[2] = 0;
          v68[3] = v61;
          v69 = v66 - v67;
          *v68 = (v66 - v67);
          v71 = v160;
        }

        else
        {
          v70 = v68[2];
          v71 = v160;
          if (v70)
          {
            v72 = &v16[7 * (v59 - v70)];
            v73 = v68[1];
            v74 = v68[3];
            v169 = *(v72 + 2);
            v170 = v72[6];
            if (v73 >= 3)
            {
              v75 = HIDWORD(v169);
              HIDWORD(v169) = v169;
              v76 = v73 - 2;
              goto LABEL_73;
            }

            if (v74)
            {
              v79 = v73;
            }

            else
            {
              v79 = v73 + 1;
            }

            if (v79 == 3)
            {
              v80 = v169;
              v76 = v169 - 1;
            }

            else
            {
              if (!v79)
              {
                v75 = v170;
                goto LABEL_74;
              }

              v76 = *(&v169 + v79);
              v80 = v169;
            }

            if (v79 == 1)
            {
              v81 = &v170;
            }

            else
            {
              v81 = &v169 + 1;
            }

            v75 = *v81;
            HIDWORD(v169) = v80;
LABEL_73:
            LODWORD(v169) = v76;
LABEL_74:
            v78 = 0;
            *(v68 + 2) = v169;
            v68[6] = v75;
            v77 = 1;
            goto LABEL_75;
          }
        }

        v77 = 0;
        *(v68 + 2) = *(v157 + 2);
        v68[6] = v157[6];
        v78 = 1;
LABEL_75:
        if (v163 <= v155)
        {
          if (v59 == v58)
          {
            v58 = v59;
LABEL_105:
            v105 = &v16[7 * v58];
            v31 = v105[1];
            v147 = *v105;
            v29 = v105[2];
            v23 = v105[3];
            v171 = *(v105 + 2);
            v172 = v105[6];
            v30 = v58 - (v23 + v29);
            if (v58 < v23 + v29)
            {
              v30 = 0;
            }

            v106 = a3;
            goto LABEL_108;
          }

          v158 = v69;
          v159 = v77;
          v23 = v78 ? v68[3] : 0;
          v150 = ZSTD_litLengthPrice(0, a1 + 128, 2);
          LODWORD(v169) = (v151)(v71, a1, &v168, v163, v152, v68 + 4, v159, v13);
          ZSTD_optLdm_processMatchCandidate(&v165, v160, &v169, v163 - v153, v152 - v163);
          v82 = v169;
          if (v169)
          {
            break;
          }
        }

LABEL_102:
        if (++v59 > v58)
        {
          goto LABEL_105;
        }
      }

      v83 = (v169 - 1);
      v29 = *(v160 + 8 * v83 + 4);
      if (v29 <= v149 && v29 + v59 <= 0xFFF)
      {
        v84 = 0;
        while (1)
        {
          v85 = (v160 + 8 * v84);
          v86 = v13;
          if (v84)
          {
            v86 = *(v85 - 1) + 1;
          }

          v87 = v85[1];
          if (v87 >= v86)
          {
            break;
          }

LABEL_101:
          if (++v84 == v82)
          {
            goto LABEL_102;
          }
        }

        v88 = *v85;
        v89 = __clz(v88 + 1) ^ 0x1F;
        v90 = *(a1 + 208);
        while (2)
        {
          if (v90 == 1)
          {
            v91 = __clz(v87 - 2) ^ 0x1F;
            v92 = ((v87 - 2) << 8 >> v91) + ((v91 + v89) << 8) + 4096;
          }

          else
          {
            v93 = v87 - 3;
            if (v87 - 3 < 0x80)
            {
              v94 = ZSTD_MLcode_ML_Code_0[v93];
            }

            else
            {
              v94 = 67 - __clz(v93);
            }

            v95 = *(*(a1 + 152) + 4 * v89) + 1;
            v96 = __clz(v95) ^ 0x1F;
            v97 = ML_bits_4[v94];
            v98 = *(*(a1 + 144) + 4 * v94) + 1;
            v99 = __clz(v98) ^ 0x1F;
            v92 = *(a1 + 204) + *(a1 + 200) - (v95 << 8 >> v96) - (v98 << 8 >> v99) + ((v89 + v97 - v96 - v99) << 8) + 51;
          }

          v100 = v87 + v59;
          v101 = v150 + v158 + v92;
          if (v100 <= v58)
          {
            if (v101 < v16[7 * v100])
            {
              goto LABEL_99;
            }
          }

          else
          {
            v102 = v58;
            v103 = &v16[7 * v58 + 7];
            do
            {
              ++v102;
              *v103 = 0x40000000;
              v103 += 7;
            }

            while (v102 < v100);
            v58 = v102;
LABEL_99:
            v104 = &v16[7 * v100];
            v104[2] = v87;
            v104[3] = v23;
            *v104 = v101;
            v104[1] = v88;
          }

          if (--v87 < v86)
          {
            goto LABEL_101;
          }

          continue;
        }
      }

      if (v68[2])
      {
        v125 = 0;
      }

      else
      {
        v125 = v68[3];
      }

      v106 = a3;
      v31 = *(v160 + 8 * v83);
      v30 = v59 - v125;
      if (v30 > 0x1000)
      {
        v30 = 0;
      }

LABEL_108:
      v20 = v156;
      if (v29)
      {
LABEL_109:
        v107 = &v16[7 * v30];
        v169 = *(v107 + 2);
        v170 = v107[6];
        if (v31 >= 3)
        {
          v108 = HIDWORD(v169);
          HIDWORD(v169) = v169;
          v109 = v31 - 2;
          v110 = a3;
          goto LABEL_124;
        }

        if (v23)
        {
          v111 = v31;
        }

        else
        {
          v111 = v31 + 1;
        }

        if (v111 == 3)
        {
          v115 = v169;
          v109 = v169 - 1;
          v110 = a3;
        }

        else
        {
          v110 = a3;
          if (!v111)
          {
            v108 = v170;
            goto LABEL_125;
          }

          v109 = *(&v169 + v111);
          v115 = v169;
        }

        if (v111 == 1)
        {
          v116 = &v170;
        }

        else
        {
          v116 = &v169 + 1;
        }

        v108 = *v116;
        HIDWORD(v169) = v115;
LABEL_124:
        LODWORD(v169) = v109;
LABEL_125:
        v114 = v154;
        *v110 = v169;
        *(v110 + 8) = v108;
      }

      else
      {
        v112 = &v16[7 * v30];
        v113 = *(v112 + 2);
        *(v106 + 8) = v112[6];
        *v106 = v113;
        v114 = v154;
      }

      v164 = v30 + 1;
      v117 = &v16[7 * v30 + 7];
      *v117 = v147;
      v117[1] = v31;
      v117[2] = v29;
      v117[3] = v23;
      *(v117 + 2) = v171;
      v117[6] = v172;
      v118 = v30;
      if (v30)
      {
        do
        {
          v119 = &v16[7 * v118];
          v120 = v119[3] + v119[2];
          v121 = &v16[7 * v30];
          v122 = *v119;
          *(v121 + 12) = *(v119 + 3);
          *v121 = v122;
          --v30;
          v10 = v118 >= v120;
          v118 -= v120;
          v123 = v118 != 0 && v10;
          if (!v10)
          {
            v118 = 0;
          }
        }

        while (v123);
        v124 = v30 + 1;
        goto LABEL_159;
      }

      v124 = 1;
      while (2)
      {
        v126 = &v16[7 * v124];
        v128 = v126[2];
        v127 = v126[3];
        if (v128)
        {
          v129 = v126[1];
          ZSTD_updateStats((a1 + 128), v126[3], v114, v129, v126[2]);
          v130 = *(a2 + 24);
          if (&v114[v127] > v161)
          {
            if (v114 <= v161)
            {
              v132 = v130 + v161 - v114;
              v138 = v114;
              do
              {
                v139 = *v138;
                v138 += 16;
                *v130++ = v139;
              }

              while (v130 < v132);
              v131 = v152 - 32;
            }

            else
            {
              v131 = v114;
              v132 = *(a2 + 24);
            }

            while (v131 < &v114[v127])
            {
              v140 = *v131++;
              *v132++ = v140;
            }

            goto LABEL_152;
          }

          *v130 = *v114;
          v133 = *(a2 + 24);
          if (v127 <= 0x10)
          {
            *(a2 + 24) = v133 + v127;
            v141 = *(a2 + 8);
          }

          else
          {
            v134 = (v133 + 16);
            v135 = v133 + v127;
            v136 = (v114 + 16);
            do
            {
              v137 = *v136++;
              *v134++ = v137;
            }

            while (v134 < v135);
LABEL_152:
            *(a2 + 24) += v127;
            v141 = *(a2 + 8);
            if (v127 >= 0x10000)
            {
              v142 = (v141 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v142;
            }
          }

          *(v141 + 4) = v127;
          *v141 = v129 + 1;
          if ((v128 - 3) >= 0x10000)
          {
            v143 = (v141 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v143;
          }

          *(v141 + 6) = v128 - 3;
          *(a2 + 8) = v141 + 8;
          v114 += (v128 + v127);
          v20 = v114;
        }

        else
        {
          v20 = &v114[v127];
        }

        ++v124;
LABEL_159:
        if (v124 <= v164)
        {
          continue;
        }

        break;
      }

      v154 = v114;
      ZSTD_setBasePrices((a1 + 128), 2);
      v22 = a3;
LABEL_161:
      v21 = v154;
      v17 = v160;
      if (v20 >= v155)
      {
        v153 = v154;
        break;
      }
    }
  }

  v144 = *MEMORY[0x1E69E9840];
  return v152 - v153;
}

int64_t ZSTD_compressBlock_btultra2(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 180) && a2[1] == *a2)
  {
    v10 = *(a1 + 24);
    if (v10 == *(a1 + 28) && a5 >= 0x401 && v10 == a4 - *(a1 + 8))
    {
      v14 = *a3;
      v15 = *(a3 + 8);
      ZSTD_compressBlock_opt2(a1, a2, &v14, a4, a5, 0);
      ZSTD_resetSeqStore(a2);
      *(a1 + 8) -= a5;
      v11 = *(a1 + 24) + a5;
      *(a1 + 24) = v11;
      *(a1 + 28) = v11;
      *(a1 + 44) = v11;
    }
  }

  result = ZSTD_compressBlock_opt2(a1, a2, a3, a4, a5, 0);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ZSTD_insertBt1(uint64_t a1, uint64_t *a2, char *a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 96);
  v7 = *(a1 + 248);
  if (a5 > 6)
  {
    if (a5 == 7)
    {
      v8 = *a2;
      v9 = -1079680256;
      goto LABEL_11;
    }

    if (a5 == 8)
    {
      v8 = *a2;
      v9 = -1213897629;
      goto LABEL_11;
    }
  }

  else
  {
    if (a5 == 5)
    {
      v8 = *a2;
      v9 = -1157627904;
      goto LABEL_11;
    }

    if (a5 == 6)
    {
      v8 = *a2;
      v9 = -1080360960;
LABEL_11:
      v10 = (v8 * (v9 | 0xCF1BBCDC00000000)) >> -v7;
      goto LABEL_12;
    }
  }

  v10 = (-1640531535 * *a2) >> -v7;
LABEL_12:
  v11 = *(a1 + 112);
  v12 = *(a1 + 240);
  v13 = -1 << (*(a1 + 244) - 1);
  v14 = ~v13;
  v15 = *(v6 + 4 * v10);
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = a2 - v16;
  if (a2 - v16 >= ~v13)
  {
    v19 = a2 - v16 + v13 + 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v11 + 8 * (v18 & ~v13));
  v79 = 0;
  v21 = 1 << v12;
  v22 = *(a1 + 24);
  v23 = a4 - *(a1 + 28);
  v24 = a4 - v21;
  if (v23 <= v21 || *(a1 + 40) != 0)
  {
    v24 = *(a1 + 28);
  }

  v26 = v18 + 9;
  v27 = *(a1 + 252);
  *(v6 + 4 * v10) = v18;
  if (v15 < v24)
  {
    v28 = 0;
    *v20 = 0;
    goto LABEL_111;
  }

  v29 = 0;
  v30 = 0;
  v78 = (v17 + v22);
  v31 = (v20 + 1);
  v32 = 1 << v27;
  v33 = (a3 - 7);
  v77 = (a3 - 3);
  v75 = v17;
  v76 = (a3 - 1);
  v72 = (v16 + v22);
  v73 = a2 + 1;
  v71 = v17 + 8;
  v34 = 8;
  v35 = a6;
  while (1)
  {
    if (v29 >= v30)
    {
      v36 = v30;
    }

    else
    {
      v36 = v29;
    }

    v37 = a2 + v36;
    if (!v35 || v36 + v15 >= v22)
    {
      v38 = v16 + v15;
      v49 = (v38 + v36);
      if (v33 <= v37)
      {
        v51 = (a2 + v36);
      }

      else
      {
        if (*v49 != *v37)
        {
          v56 = __clz(__rbit64(*v37 ^ *v49)) >> 3;
LABEL_56:
          v57 = v56 + v36;
          goto LABEL_91;
        }

        v50 = 0;
        v49 = (v16 + 8 + v36 + v15);
        v51 = (v73 + v36);
        while (v51 < v33)
        {
          v53 = *v49++;
          v52 = v53;
          v55 = *v51;
          v51 += 4;
          v54 = v55;
          v50 += 8;
          if (v52 != v55)
          {
            v56 = v50 + (__clz(__rbit64(v54 ^ v52)) >> 3);
            goto LABEL_56;
          }
        }
      }

      if (v51 < v77 && *v49 == *v51)
      {
        v49 = (v49 + 4);
        v51 += 2;
      }

      if (v51 < v76 && *v49 == *v51)
      {
        v49 = (v49 + 2);
        ++v51;
      }

      if (v51 < a3 && *v49 == *v51)
      {
        v51 = (v51 + 1);
      }

      v56 = v51 - v37;
      goto LABEL_56;
    }

    v38 = v17 + v15;
    v39 = (v38 + v36);
    v40 = (&v78[a2 - v38] >= a3 ? a3 : &v37[v78 - v39]);
    if (v40 - 7 <= v37)
    {
      v42 = (v17 + v15 + v36);
      v43 = (a2 + v36);
    }

    else
    {
      if (*v39 != *v37)
      {
        v48 = __clz(__rbit64(*v37 ^ *v39)) >> 3;
        goto LABEL_69;
      }

      v41 = 0;
      v42 = (v71 + v36 + v15);
      v43 = (v73 + v36);
      while (v43 < (v40 - 7))
      {
        v45 = *v42;
        v42 += 4;
        v44 = v45;
        v47 = *v43;
        v43 += 4;
        v46 = v47;
        v41 += 8;
        if (v44 != v47)
        {
          v48 = v41 + (__clz(__rbit64(v46 ^ v44)) >> 3);
          v35 = a6;
          v17 = v75;
          goto LABEL_69;
        }
      }

      v35 = a6;
    }

    if (v43 < (v40 - 3) && *v42 == *v43)
    {
      v42 += 2;
      v43 += 2;
    }

    if (v43 < (v40 - 1) && *v42 == *v43)
    {
      ++v42;
      ++v43;
    }

    if (v43 < v40 && *v42 == *v43)
    {
      v43 = (v43 + 1);
    }

    v17 = v75;
    v48 = v43 - v37;
LABEL_69:
    if (&v39[v48] != v78)
    {
      goto LABEL_89;
    }

    v58 = &v37[v48];
    if (v33 <= &v37[v48])
    {
      v61 = (v16 + v22);
      v60 = &v37[v48];
LABEL_77:
      if (v60 < v77 && *v61 == *v60)
      {
        ++v61;
        v60 += 4;
      }

      if (v60 < v76 && *v61 == *v60)
      {
        v61 = (v61 + 2);
        v60 += 2;
      }

      if (v60 < a3 && *v61 == *v60)
      {
        ++v60;
      }

      v66 = v60 - v58;
      goto LABEL_88;
    }

    if (*v72 == *v58)
    {
      v59 = 0;
      v60 = v73 + v48 + v36;
      v61 = (v16 + 8 + v22);
      while (v60 < v33)
      {
        v63 = *v61;
        v61 += 2;
        v62 = v63;
        v65 = *v60;
        v60 += 8;
        v64 = v65;
        v59 += 8;
        if (v62 != v65)
        {
          v66 = v59 + (__clz(__rbit64(v64 ^ v62)) >> 3);
          goto LABEL_88;
        }
      }

      goto LABEL_77;
    }

    v66 = __clz(__rbit64(*v58 ^ *v72)) >> 3;
LABEL_88:
    v48 += v66;
LABEL_89:
    v57 = v48 + v36;
    if (v48 + v36 + v15 >= v22)
    {
      v38 = v16 + v15;
    }

LABEL_91:
    v67 = v15 + v57;
    if (v57 <= v26 - v15)
    {
      v67 = v26;
    }

    if (v57 > v34)
    {
      v26 = v67;
      v34 = v57;
    }

    if (a2 + v57 == a3)
    {
      goto LABEL_106;
    }

    v68 = (v11 + 8 * (v15 & v14));
    if (*(v38 + v57) < *(a2 + v57))
    {
      break;
    }

    *v31 = v15;
    if (v15 <= v19)
    {
      v31 = &v79;
      goto LABEL_106;
    }

    v30 = v57;
    v31 = (v11 + 8 * (v15 & v14));
LABEL_101:
    if (--v32)
    {
      v15 = *v68;
      if (*v68 >= v24)
      {
        continue;
      }
    }

    goto LABEL_106;
  }

  *v20 = v15;
  if (v15 > v19)
  {
    v20 = (v68 + 1);
    v29 = v57;
    ++v68;
    goto LABEL_101;
  }

  v20 = &v79;
LABEL_106:
  *v31 = 0;
  *v20 = 0;
  v28 = v34 - 384;
  if ((v34 - 384) >= 0xC0)
  {
    v28 = 192;
  }

  if (v34 <= 0x180)
  {
    v28 = 0;
  }

  v18 = a2 - v16;
LABEL_111:
  v69 = v26 - v18 - 8;
  if (v28 <= v69)
  {
    return v69;
  }

  else
  {
    return v28;
  }
}

unint64_t ZSTD_count(unsigned __int16 *a1, uint64_t *a2, unint64_t a3)
{
  if (a3 - 7 <= a1)
  {
    v4 = a1;
  }

  else
  {
    if (*a2 != *a1)
    {
      return __clz(__rbit64(*a1 ^ *a2)) >> 3;
    }

    v3 = 0;
    ++a2;
    v4 = a1 + 4;
    while (v4 < a3 - 7)
    {
      v6 = *a2++;
      v5 = v6;
      v8 = *v4;
      v4 += 4;
      v7 = v8;
      v3 += 8;
      if (v5 != v8)
      {
        return v3 + (__clz(__rbit64(v7 ^ v5)) >> 3);
      }
    }
  }

  if (v4 < a3 - 3 && *a2 == *v4)
  {
    a2 = (a2 + 4);
    v4 += 2;
  }

  if (v4 < a3 - 1 && *a2 == *v4)
  {
    a2 = (a2 + 2);
    ++v4;
  }

  if (v4 < a3 && *a2 == *v4)
  {
    v4 = (v4 + 1);
  }

  return v4 - a1;
}

uint64_t ZSTD_opt_getNextMatchAndUpdateSeqStore(uint64_t result, int a2, unsigned int a3)
{
  v3 = *(result + 24);
  if (!v3 || (v4 = *(result + 8), v4 >= v3))
  {
    *(result + 40) = -1;
    return result;
  }

  v5 = (*result + 12 * v4);
  v6 = v5[1];
  v7 = *(result + 16);
  v8 = v6 - v7;
  if (v7 >= v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 - v7;
  }

  if (v9)
  {
    v8 = 0;
  }

  if (v9 >= a3)
  {
    *(result + 40) = -1;
  }

  else
  {
    v10 = v8 + v5[2];
    v11 = *v5;
    v12 = v10 + v9 + a2;
    *(result + 40) = v9 + a2;
    *(result + 44) = v12;
    *(result + 48) = v11;
    if (v12 <= a3 + a2)
    {
      v13 = v10 + v9;
      return ZSTD_ldm_skipRawSeqStoreBytes(result, v13);
    }

    *(result + 44) = a3 + a2;
  }

  v13 = a3;
  return ZSTD_ldm_skipRawSeqStoreBytes(result, v13);
}

int32x2_t *ZSTD_rescaleFreqs(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v6 = *(a1 + 96);
  *(a1 + 80) = 0;
  if (*(a1 + 52))
  {
    if (v6 != 2)
    {
      v7 = 0;
      v8 = *a1;
      v9 = 0uLL;
      do
      {
        v9 = vaddq_s32(*(*&v8 + v7), v9);
        v7 += 16;
      }

      while (v7 != 1024);
      v10 = vaddvq_s32(v9);
      if (v10 >= 0x2000)
      {
        v11 = 0;
        v12 = 0uLL;
        v13 = vnegq_s32(vdupq_n_s32(__clz(v10 >> 12) ^ 0x1F));
        v14.i64[0] = 0x100000001;
        v14.i64[1] = 0x100000001;
        do
        {
          v15 = vaddq_s32(vshlq_u32(*(*&v8 + v11), v13), v14);
          *(*&v8 + v11) = v15;
          v12 = vaddq_s32(v15, v12);
          v11 += 16;
        }

        while (v11 != 1024);
        v10 = vaddvq_s32(v12);
      }

      *(a1 + 48) = v10;
    }

    v16 = 0;
    v17 = *(a1 + 8);
    v18 = 0uLL;
    do
    {
      v18 = vaddq_s32(*(v17 + v16), v18);
      v16 += 16;
    }

    while (v16 != 144);
    v19 = vaddvq_s32(v18);
    if (v19 >= 0x1000)
    {
      v20 = 0;
      v21 = 0uLL;
      v22 = vnegq_s32(vdupq_n_s32(__clz(v19 >> 11) ^ 0x1F));
      v23.i64[0] = 0x100000001;
      v23.i64[1] = 0x100000001;
      do
      {
        v24 = vaddq_s32(vshlq_u32(*(v17 + v20), v22), v23);
        *(v17 + v20) = v24;
        v21 = vaddq_s32(v24, v21);
        v20 += 16;
      }

      while (v20 != 144);
      v19 = vaddvq_s32(v21);
    }

    v25 = 0;
    v26 = 0;
    *(a1 + 52) = v19;
    v27 = *(a1 + 16);
    do
    {
      v26 += *(v27 + v25);
      v25 += 4;
    }

    while (v25 != 212);
    if (v26 >= 0x1000)
    {
      v28 = 0;
      v29 = __clz(v26 >> 11) ^ 0x1F;
      v26 = 0;
      do
      {
        v30 = (*(v27 + v28) >> v29) + 1;
        *(v27 + v28) = v30;
        v26 += v30;
        v28 += 4;
      }

      while (v28 != 212);
    }

    v31 = 0;
    *(a1 + 56) = v26;
    v32 = *(a1 + 24);
    v33 = 0uLL;
    do
    {
      v33 = vaddq_s32(*(v32 + v31), v33);
      v31 += 16;
    }

    while (v31 != 128);
    v34 = vaddvq_s32(v33);
    if (v34 >= 0x1000)
    {
      v35 = 0;
      v36 = 0uLL;
      v37 = vnegq_s32(vdupq_n_s32(__clz(v34 >> 11) ^ 0x1F));
      v38.i64[0] = 0x100000001;
      v38.i64[1] = 0x100000001;
      do
      {
        v39 = vaddq_s32(vshlq_u32(*(v32 + v35), v37), v38);
        *(v32 + v35) = v39;
        v36 = vaddq_s32(v39, v36);
        v35 += 16;
      }

      while (v35 != 128);
      v34 = vaddvq_s32(v36);
    }

LABEL_63:
    *(a1 + 60) = v34;
    return ZSTD_setBasePrices(a1, a4);
  }

  if (a3 <= 0x400)
  {
    *(a1 + 80) = 1;
  }

  v40 = *(a1 + 88);
  if (*(v40 + 2056) != 2)
  {
    if (v6 != 2)
    {
      v73 = 255;
      HIST_count_simple(*a1, &v73, a2, a3);
      v65 = 0;
      v66 = *a1;
      v67 = 0uLL;
      do
      {
        v68.i64[0] = 0x100000001;
        v68.i64[1] = 0x100000001;
        v69 = vsraq_n_u32(v68, *(*&v66 + v65), 8uLL);
        *(*&v66 + v65) = v69;
        v67 = vaddq_s32(v69, v67);
        v65 += 16;
      }

      while (v65 != 1024);
      *(a1 + 48) = vaddvq_s32(v67);
    }

    v70 = *(a1 + 8);
    v70[6] = xmmword_1C2BF9760;
    v70[7] = unk_1C2BF9770;
    v70[8] = xmmword_1C2BF9780;
    v70[2] = xmmword_1C2BF9720;
    v70[3] = unk_1C2BF9730;
    v70[4] = xmmword_1C2BF9740;
    v70[5] = unk_1C2BF9750;
    *v70 = xmmword_1C2BF9700;
    v70[1] = unk_1C2BF9710;
    *(a1 + 52) = 40;
    memset_pattern16(*(a1 + 16), &unk_1C2BF7A30, 0xD4uLL);
    v34 = 53;
    *(a1 + 56) = 53;
    v71 = *(a1 + 24);
    v71[4] = xmmword_1C2BF97D0;
    v71[5] = unk_1C2BF97E0;
    v71[6] = xmmword_1C2BF97F0;
    v71[7] = unk_1C2BF9800;
    *v71 = xmmword_1C2BF9790;
    v71[1] = unk_1C2BF97A0;
    v71[2] = xmmword_1C2BF97B0;
    v71[3] = unk_1C2BF97C0;
    goto LABEL_63;
  }

  *(a1 + 80) = 0;
  if (v6 != 2)
  {
    v41 = 0;
    *(a1 + 48) = 0;
    do
    {
      NbBitsFromCTable = HUF_getNbBitsFromCTable(*(a1 + 88), v41);
      v43 = 1 << (11 - NbBitsFromCTable);
      if (!NbBitsFromCTable)
      {
        v43 = 1;
      }

      *(*a1 + 4 * v41) = v43;
      *(a1 + 48) += v43;
      ++v41;
    }

    while (v41 != 256);
    v40 = *(a1 + 88);
  }

  v44 = 0;
  v45 = 1 << (*(v40 + 4288) - 1);
  if (!*(v40 + 4288))
  {
    v45 = 1;
  }

  *(a1 + 52) = 0;
  v46 = *(a1 + 8);
  v47 = (v40 + 4 * v45 + 4296);
  do
  {
    v48 = *v47;
    v47 += 2;
    v49 = 1 << (10 - ((v48 + 0xFFFF) >> 16));
    if ((v48 + 0xFFFF) < 0x10000)
    {
      v50 = 1;
    }

    else
    {
      v50 = v49;
    }

    *(v46 + v44) = v50;
    *(a1 + 52) += v50;
    v44 += 4;
  }

  while (v44 != 144);
  v51 = 0;
  v52 = 1 << (*(v40 + 2836) - 1);
  if (!*(v40 + 2836))
  {
    v52 = 1;
  }

  *(a1 + 56) = 0;
  v53 = *(a1 + 16);
  v54 = (v40 + 4 * v52 + 2844);
  do
  {
    v55 = *v54;
    v54 += 2;
    v56 = 1 << (10 - ((v55 + 0xFFFF) >> 16));
    if ((v55 + 0xFFFF) < 0x10000)
    {
      v57 = 1;
    }

    else
    {
      v57 = v56;
    }

    *(v53 + v51) = v57;
    *(a1 + 56) += v57;
    v51 += 4;
  }

  while (v51 != 212);
  v58 = 0;
  v59 = 1 << (*(v40 + 2064) - 1);
  if (!*(v40 + 2064))
  {
    v59 = 1;
  }

  *(a1 + 60) = 0;
  v60 = *(a1 + 24);
  v61 = (v40 + 4 * v59 + 2072);
  do
  {
    v62 = *v61;
    v61 += 2;
    v63 = 1 << (10 - ((v62 + 0xFFFF) >> 16));
    if ((v62 + 0xFFFF) < 0x10000)
    {
      v64 = 1;
    }

    else
    {
      v64 = v63;
    }

    *(v60 + v58) = v64;
    *(a1 + 60) += v64;
    v58 += 4;
  }

  while (v58 != 128);
  return ZSTD_setBasePrices(a1, a4);
}

uint64_t ZSTD_optLdm_processMatchCandidate(uint64_t result, uint64_t a2, _DWORD *a3, unsigned int a4, unsigned int a5)
{
  v5 = *(result + 24);
  if (v5)
  {
    v6 = result;
    if (*(result + 8) < v5)
    {
      v10 = *(result + 44);
      if (a4 >= v10)
      {
        if (a4 > v10)
        {
          ZSTD_ldm_skipRawSeqStoreBytes(result, a4 - v10);
        }

        result = ZSTD_opt_getNextMatchAndUpdateSeqStore(v6, a4, a5);
        v10 = v6[11];
      }

      v12 = v10 - a4;
      if (v6[10] <= a4 && v10 > a4 && v12 >= 3)
      {
        v15 = *a3;
        if (!v15 || v15 <= 0xFFF && v12 > *(a2 + 8 * (v15 - 1) + 4))
        {
          v16 = v6[12] + 2;
          *(a2 + 8 * v15 + 4) = v12;
          *(a2 + 8 * (*a3)++) = v16;
        }
      }
    }
  }

  return result;
}

uint64_t ZSTD_litLengthPrice(unsigned int a1, uint64_t a2, int a3)
{
  if (*(a2 + 80) == 1)
  {
    v3 = __clz(a1 + 1);
    v4 = (v3 << 8) ^ 0x1F00;
    v5 = ((a1 + 1) << 8 >> (v3 ^ 0x1F)) + ((v3 ^ 0x1F) << 8);
    v6 = 0;
    if (!a3)
    {
      v5 = v4;
    }
  }

  else
  {
    v6 = -256;
    do
    {
      v7 = a1;
      v6 += 256;
      a1 = 0x1FFFFu;
    }

    while (v7 == 0x20000);
    if (v7 < 0x40)
    {
      v8 = ZSTD_LLcode_LL_Code_0[v7];
    }

    else
    {
      v8 = 50 - __clz(v7);
    }

    v9 = *(a2 + 68) + (LL_bits_4[v8] << 8);
    v10 = *(*(a2 + 8) + 4 * v8) + 1;
    v11 = __clz(v10);
    v12 = -((v10 << 8 >> (v11 ^ 0x1F)) + ((v11 ^ 0x1F) << 8));
    if (!a3)
    {
      v12 = ((v11 << 8) ^ 0xFFFFE0FF) + 1;
    }

    v5 = v9 + v12;
  }

  return v5 + v6;
}

uint64_t *ZSTD_updateStats(uint64_t *result, unsigned int a2, unsigned __int8 *a3, int a4, int a5)
{
  if (*(result + 24) != 2)
  {
    if (a2)
    {
      v5 = *result;
      v6 = a2;
      do
      {
        v7 = *a3++;
        *(v5 + 4 * v7) += 2;
        --v6;
      }

      while (v6);
    }

    *(result + 12) += 2 * a2;
  }

  if (a2 < 0x40)
  {
    v8 = ZSTD_LLcode_LL_Code_0[a2];
  }

  else
  {
    v8 = 50 - __clz(a2);
  }

  ++*(result[1] + 4 * v8);
  ++*(result + 13);
  v9 = __clz(a4 + 1);
  ++*(result[3] + 4 * (v9 ^ 0x1F));
  ++*(result + 15);
  v10 = a5 - 3;
  if ((a5 - 3) < 0x80)
  {
    v11 = ZSTD_MLcode_ML_Code_0[v10];
  }

  else
  {
    v11 = 67 - __clz(v10);
  }

  ++*(result[2] + 4 * v11);
  ++*(result + 14);
  return result;
}

int32x2_t *ZSTD_setBasePrices(int32x2_t *result, int a2)
{
  if (result[12].i32[0] != 2)
  {
    v2 = result[6].i32[0] + 1;
    v3 = __clz(v2);
    v4 = (v2 << 8 >> (v3 ^ 0x1F)) + ((v3 ^ 0x1F) << 8);
    if (!a2)
    {
      v4 = (v3 << 8) ^ 0x1F00;
    }

    result[8].i32[0] = v4;
  }

  v5 = result[6].i32[1] + 1;
  v6 = __clz(v5);
  if (a2)
  {
    v7 = (v5 << 8 >> (v6 ^ 0x1F)) + ((v6 ^ 0x1F) << 8);
    v8 = vadd_s32(result[7], 0x100000001);
    v9 = veor_s8(vclz_s32(v8), 0x1F0000001FLL);
    v10 = vadd_s32(vshl_n_s32(v9, 8uLL), vshl_u32(vshl_n_s32(v8, 8uLL), vneg_s32(v9)));
  }

  else
  {
    v7 = (v6 << 8) ^ 0x1F00;
    v10 = veor_s8(vshl_n_s32(vclz_s32(vadd_s32(result[7], 0x100000001)), 8uLL), 0x1F0000001F00);
  }

  result[8].i32[1] = v7;
  result[9] = v10;
  return result;
}

uint64_t ZSTD_btGetAllMatches_noDict_3(_DWORD *a1, uint64_t a2, unsigned int *a3, int *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v17 = a1;
  v18 = a4 - v8;
  v19 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 3, 0) + v9;
    }

    while (v9 < v18);
    v8 = *(a2 + 8);
    v19 = a4 - v8;
    v17 = a1;
  }

  *(a2 + 44) = v18;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 260);
  }

  v21 = *(a2 + 96);
  v22 = *a4;
  v23 = *(a2 + 252);
  v93 = (-1640531535 * *a4) >> -*(a2 + 248);
  v24 = *(v21 + 4 * v93);
  v25 = *(a2 + 240);
  v92 = -1 << (*(a2 + 244) - 1);
  v26 = v19 + v92 + 1;
  if (v19 < ~v92)
  {
    v26 = 0;
  }

  v94 = v26;
  v27 = *(a2 + 24);
  v28 = v19 - *(a2 + 28) > 1 << v25 && *(a2 + 40) == 0;
  v95 = *(a2 + 112);
  v29 = v19 - (1 << v25);
  if (!v28)
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v97 = v30;
  v98 = 0;
  v31 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    v10 = 0;
    v32 = v19 - v27;
    v33 = a4 + 3;
    v34 = a5 - 7;
    v35 = a7;
    while (1)
    {
      if (v35 == 3)
      {
        v36 = *a6 - 1;
      }

      else
      {
        v36 = a6[v35];
      }

      if (v36 - 1 >= v32 || (v19 - v36 >= v29 ? (v37 = ((*(a4 - v36) ^ v22) & 0xFFFFFF) == 0) : (v37 = 0), !v37))
      {
        v38 = 0;
        goto LABEL_49;
      }

      v39 = -v36;
      v40 = &v33[-v36];
      if (v34 <= v33)
      {
        break;
      }

      v41 = *v40;
      if (v41 == *v33)
      {
        v42 = 0;
        v40 = a4 + v39 + 11;
        v43 = (a4 + 11);
        while (v43 < v34)
        {
          v45 = *v40;
          v40 += 8;
          v44 = v45;
          v47 = *v43;
          v43 += 4;
          v46 = v47;
          v42 += 8;
          if (v44 != v47)
          {
            v48 = v42 + (__clz(__rbit64(v46 ^ v44)) >> 3);
            goto LABEL_48;
          }
        }

        goto LABEL_37;
      }

      v48 = __clz(__rbit64(*v33 ^ v41)) >> 3;
LABEL_48:
      v38 = v48 + 3;
LABEL_49:
      if (v31 < v38)
      {
        v49 = &v17[2 * v10];
        *v49 = v35 - a7;
        v49[1] = v38;
        v10 = (v10 + 1);
        if (v38 > v20)
        {
          return v10;
        }

        v31 = v38;
        if (a4 + v38 == a5)
        {
          return v10;
        }
      }

      if (++v35 == a7 + 3)
      {
        goto LABEL_55;
      }
    }

    v43 = (a4 + 3);
LABEL_37:
    if (v43 < (a5 - 3) && *v40 == *v43)
    {
      v40 += 4;
      v43 += 2;
    }

    if (v43 < (a5 - 1) && *v40 == *v43)
    {
      v40 += 2;
      ++v43;
    }

    if (v43 < a5 && *v40 == *v43)
    {
      LODWORD(v43) = v43 + 1;
    }

    LODWORD(v48) = v43 - v33;
    goto LABEL_48;
  }

  v10 = 0;
LABEL_55:
  if (v31 > 2)
  {
    v52 = ~v92;
  }

  else
  {
    v89 = v20;
    v90 = v23;
    v50 = v21;
    FirstIndexHash3 = ZSTD_insertAndFindFirstIndexHash3(a2, a3, a4);
    v52 = ~v92;
    if (FirstIndexHash3 < v97)
    {
      v54 = v94;
      v21 = v50;
      LOBYTE(v23) = v90;
      goto LABEL_66;
    }

    v21 = v50;
    LOBYTE(v23) = v90;
    if (!((v19 - FirstIndexHash3) >> 18))
    {
      v53 = (v8 + FirstIndexHash3);
      v54 = v94;
      if (a5 - 7 <= a4)
      {
        v57 = a4;
        v55 = v89;
      }

      else
      {
        v55 = v89;
        if (*v53 != *a4)
        {
          v62 = __clz(__rbit64(*a4 ^ *v53)) >> 3;
          goto LABEL_123;
        }

        v56 = 0;
        v53 = (FirstIndexHash3 + v8 + 8);
        v57 = (a4 + 2);
        while (v57 < (a5 - 7))
        {
          v59 = *v53++;
          v58 = v59;
          v61 = *v57;
          v57 += 4;
          v60 = v61;
          v56 += 8;
          if (v58 != v61)
          {
            v62 = v56 + (__clz(__rbit64(v60 ^ v58)) >> 3);
            goto LABEL_123;
          }
        }
      }

      if (v57 < (a5 - 3) && *v53 == *v57)
      {
        v53 = (v53 + 4);
        v57 += 2;
      }

      if (v57 < (a5 - 1) && *v53 == *v57)
      {
        v53 = (v53 + 2);
        ++v57;
      }

      if (v57 < a5 && *v53 == *v57)
      {
        v57 = (v57 + 1);
      }

      v62 = v57 - a4;
LABEL_123:
      if (v62 >= 3)
      {
        *v17 = v19 - FirstIndexHash3 + 2;
        v17[1] = v62;
        if (v62 > v55 || a4 + v62 == a5)
        {
          v66 = v19 + 1;
          v10 = 1;
          goto LABEL_68;
        }

        v10 = 1;
        v31 = v62;
      }

      goto LABEL_66;
    }
  }

  v54 = v94;
LABEL_66:
  v63 = (v95 + 8 * (v19 & ~v92));
  v64 = v63 + 1;
  v65 = v19 + 9;
  *(v21 + 4 * v93) = v19;
  if (v24 < v97)
  {
    goto LABEL_67;
  }

  v68 = 0;
  v69 = 0;
  v70 = 1 << v23;
  v71 = a5 - 7;
  v72 = v19 + 2;
  while (1)
  {
    v73 = v68 >= v69 ? v69 : v68;
    v74 = v8 + v24;
    v75 = a4 + v73;
    v76 = (v74 + v73);
    if (v71 <= a4 + v73)
    {
      v78 = (a4 + v73);
    }

    else
    {
      if (*v76 != *v75)
      {
        v83 = __clz(__rbit64(*v75 ^ *v76)) >> 3;
        goto LABEL_93;
      }

      v77 = 0;
      v76 = (v8 + 8 + v73 + v24);
      v78 = (a4 + v73 + 8);
      while (v78 < v71)
      {
        v80 = *v76++;
        v79 = v80;
        v82 = *v78;
        v78 += 4;
        v81 = v82;
        v77 += 8;
        if (v79 != v82)
        {
          v83 = v77 + (__clz(__rbit64(v81 ^ v79)) >> 3);
          v54 = v94;
          goto LABEL_93;
        }
      }

      v54 = v94;
    }

    if (v78 < (a5 - 3) && *v76 == *v78)
    {
      v76 = (v76 + 4);
      v78 += 2;
    }

    if (v78 < (a5 - 1) && *v76 == *v78)
    {
      v76 = (v76 + 2);
      ++v78;
    }

    if (v78 < a5 && *v76 == *v78)
    {
      v78 = (v78 + 1);
    }

    v83 = v78 - v75;
LABEL_93:
    v84 = v83 + v73;
    if (v84 > v31)
    {
      if (v84 > v65 - v24)
      {
        v65 = v24 + v84;
      }

      v85 = &v17[2 * v10];
      *v85 = v72 - v24;
      v85[1] = v84;
      v10 = (v10 + 1);
      v86 = v84 > 0x1000 || a4 + v84 == a5;
      v31 = v84;
      if (v86)
      {
        goto LABEL_67;
      }
    }

    v87 = (v95 + 8 * (v24 & v52));
    if (*(v74 + v84) < *(a4 + v84))
    {
      break;
    }

    *v64 = v24;
    if (v24 <= v54)
    {
      v64 = &v98;
      goto LABEL_67;
    }

    v64 = (v95 + 8 * (v24 & v52));
    v69 = v84;
LABEL_105:
    if (--v70)
    {
      v24 = *v87;
      if (*v87 >= v97)
      {
        continue;
      }
    }

    goto LABEL_67;
  }

  *v63 = v24;
  if (v24 > v54)
  {
    v63 = v87 + 1;
    v68 = v84;
    ++v87;
    goto LABEL_105;
  }

  v63 = &v98;
LABEL_67:
  *v64 = 0;
  *v63 = 0;
  v66 = v65 - 8;
LABEL_68:
  *(a2 + 44) = v66;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_noDict_4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v18 = a4 - v8;
  v19 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 4, 0) + v9;
    }

    while (v9 < v18);
    v8 = *(a2 + 8);
    v19 = a4 - v8;
  }

  *(a2 + 44) = v18;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 260);
  }

  v21 = *(a2 + 96);
  v22 = *a4;
  v82 = *(a2 + 252);
  v83 = (-1640531535 * *a4) >> -*(a2 + 248);
  v23 = *(v21 + 4 * v83);
  v24 = *(a2 + 240);
  v25 = (-1 << (*(a2 + 244) - 1));
  v26 = ~v25;
  LODWORD(v27) = v19 + v25 + 1;
  if (v19 >= v26)
  {
    v27 = v27;
  }

  else
  {
    v27 = 0;
  }

  v28 = 1 << v24;
  v29 = *(a2 + 24);
  v30 = v19 - *(a2 + 28) > 1 << v24 && *(a2 + 40) == 0;
  v31 = *(a2 + 112);
  v32 = v19 - v28;
  if (v30)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(a2 + 28);
  }

  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v85 = 0;
  v35 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    result = 0;
    v36 = v19 - v29;
    v37 = (a4 + 1);
    v38 = a5 - 7;
    v39 = a7;
    v81 = v20;
    while (1)
    {
      if (v39 == 3)
      {
        v40 = *a6 - 1;
      }

      else
      {
        v40 = a6[v39];
      }

      if (v40 - 1 >= v36 || (v19 - v40 >= v33 ? (v41 = v22 == *(a4 - v40)) : (v41 = 0), !v41))
      {
        v42 = 0;
        goto LABEL_52;
      }

      v43 = -v40;
      v44 = &v37[-v40];
      if (v38 <= v37)
      {
        break;
      }

      if (*v44 == *v37)
      {
        v45 = a1;
        v46 = v26;
        v47 = v34;
        v48 = v27;
        v49 = v25;
        v50 = v21;
        v51 = 0;
        v44 = a4 + v43 + 12;
        v52 = (a4 + 3);
        while (v52 < v38)
        {
          v54 = *v44;
          v44 += 8;
          v53 = v54;
          v56 = *v52;
          v52 += 4;
          v55 = v56;
          v51 += 8;
          if (v53 != v56)
          {
            v57 = v51 + (__clz(__rbit64(v55 ^ v53)) >> 3);
            v21 = v50;
            v25 = v49;
            v27 = v48;
            v34 = v47;
            v26 = v46;
            a1 = v45;
            v20 = v81;
            goto LABEL_51;
          }
        }

        v21 = v50;
        v25 = v49;
        v27 = v48;
        v34 = v47;
        v26 = v46;
        a1 = v45;
        v20 = v81;
        goto LABEL_41;
      }

      v57 = __clz(__rbit64(*v37 ^ *v44)) >> 3;
LABEL_51:
      v42 = v57 + 4;
LABEL_52:
      if (v35 < v42)
      {
        v58 = (a1 + 8 * result);
        *v58 = v39 - a7;
        v58[1] = v42;
        result = (result + 1);
        if (v42 > v20)
        {
          return result;
        }

        v35 = v42;
        if (a4 + v42 == a5)
        {
          return result;
        }
      }

      if (++v39 == a7 + 3)
      {
        goto LABEL_58;
      }
    }

    v52 = (a4 + 1);
LABEL_41:
    if (v52 < (a5 - 3) && *v44 == *v52)
    {
      v44 += 4;
      v52 += 2;
    }

    if (v52 < (a5 - 1) && *v44 == *v52)
    {
      v44 += 2;
      ++v52;
    }

    if (v52 < a5 && *v44 == *v52)
    {
      LODWORD(v52) = v52 + 1;
    }

    LODWORD(v57) = v52 - v37;
    goto LABEL_51;
  }

  result = 0;
LABEL_58:
  v59 = (v31 + 8 * (v19 & ~v25));
  v60 = v59 + 1;
  v61 = v19 + 9;
  *(v21 + 4 * v83) = v19;
  if (v23 < v34)
  {
    goto LABEL_59;
  }

  v62 = 0;
  v63 = 0;
  v64 = 1 << v82;
  v65 = a5 - 7;
  v84 = v19 + 2;
  while (1)
  {
    v66 = v62 >= v63 ? v63 : v62;
    v67 = v8 + v23;
    v68 = a4 + v66;
    v69 = (v67 + v66);
    if (v65 <= a4 + v66)
    {
      v71 = (a4 + v66);
    }

    else
    {
      if (*v69 != *v68)
      {
        v76 = __clz(__rbit64(*v68 ^ *v69)) >> 3;
        goto LABEL_83;
      }

      v70 = 0;
      v69 = (v8 + 8 + v66 + v23);
      v71 = (a4 + v66 + 8);
      while (v71 < v65)
      {
        v73 = *v69++;
        v72 = v73;
        v75 = *v71;
        v71 += 4;
        v74 = v75;
        v70 += 8;
        if (v72 != v75)
        {
          v76 = v70 + (__clz(__rbit64(v74 ^ v72)) >> 3);
          goto LABEL_83;
        }
      }
    }

    if (v71 < (a5 - 3) && *v69 == *v71)
    {
      v69 = (v69 + 4);
      v71 += 2;
    }

    if (v71 < (a5 - 1) && *v69 == *v71)
    {
      v69 = (v69 + 2);
      ++v71;
    }

    if (v71 < a5 && *v69 == *v71)
    {
      v71 = (v71 + 1);
    }

    v76 = v71 - v68;
LABEL_83:
    v77 = v76 + v66;
    if (v77 > v35)
    {
      if (v77 > v61 - v23)
      {
        v61 = v23 + v77;
      }

      v78 = (a1 + 8 * result);
      *v78 = v84 - v23;
      v78[1] = v77;
      result = (result + 1);
      v79 = v77 > 0x1000 || a4 + v77 == a5;
      v35 = v77;
      if (v79)
      {
        goto LABEL_59;
      }
    }

    v80 = (v31 + 8 * (v23 & v26));
    if (*(v67 + v77) < *(a4 + v77))
    {
      break;
    }

    *v60 = v23;
    if (v23 <= v27)
    {
      v60 = &v85;
      goto LABEL_59;
    }

    v60 = (v31 + 8 * (v23 & v26));
    v63 = v77;
LABEL_95:
    if (--v64)
    {
      v23 = *v80;
      if (*v80 >= v34)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  *v59 = v23;
  if (v23 > v27)
  {
    v59 = v80 + 1;
    v62 = v77;
    ++v80;
    goto LABEL_95;
  }

  v59 = &v85;
LABEL_59:
  *v60 = 0;
  *v59 = 0;
  *(a2 + 44) = v61 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_noDict_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v18 = a4 - v8;
  v19 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 5, 0) + v9;
    }

    while (v9 < v18);
    v8 = *(a2 + 8);
    v19 = a4 - v8;
  }

  *(a2 + 44) = v18;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 260);
  }

  v21 = *(a2 + 96);
  v22 = *(a2 + 252);
  v83 = (0xCF1BBCDCBB000000 * *a4) >> -*(a2 + 248);
  v23 = *(v21 + 4 * v83);
  v24 = *(a2 + 240);
  v25 = (-1 << (*(a2 + 244) - 1));
  v26 = ~v25;
  LODWORD(v27) = v19 + v25 + 1;
  if (v19 >= v26)
  {
    v27 = v27;
  }

  else
  {
    v27 = 0;
  }

  v28 = 1 << v24;
  v29 = *(a2 + 24);
  v30 = v19 - *(a2 + 28) > 1 << v24 && *(a2 + 40) == 0;
  v31 = *(a2 + 112);
  v32 = v19 - v28;
  if (v30)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(a2 + 28);
  }

  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v85 = 0;
  v35 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    result = 0;
    v36 = v19 - v29;
    v37 = a4 + 4;
    v38 = a5 - 7;
    v39 = a7;
    v82 = v20;
    while (1)
    {
      if (v39 == 3)
      {
        v40 = *a6 - 1;
      }

      else
      {
        v40 = a6[v39];
      }

      if (v40 - 1 >= v36 || (v19 - v40 >= v33 ? (v41 = *a4 == *(a4 - v40)) : (v41 = 0), !v41))
      {
        v42 = 0;
        goto LABEL_52;
      }

      v43 = -v40;
      v44 = &v37[-v40];
      if (v38 <= v37)
      {
        break;
      }

      if (*v44 == *v37)
      {
        v45 = a1;
        v46 = v26;
        v47 = v31;
        v48 = v27;
        v49 = v25;
        v50 = v22;
        v51 = v21;
        v52 = 0;
        v44 = a4 + v43 + 12;
        v53 = a4 + 6;
        while (v53 < v38)
        {
          v55 = *v44;
          v44 += 8;
          v54 = v55;
          v57 = *v53;
          v53 += 4;
          v56 = v57;
          v52 += 8;
          if (v54 != v57)
          {
            v58 = v52 + (__clz(__rbit64(v56 ^ v54)) >> 3);
            v21 = v51;
            v22 = v50;
            v25 = v49;
            v27 = v48;
            v31 = v47;
            v26 = v46;
            a1 = v45;
            v20 = v82;
            goto LABEL_51;
          }
        }

        v21 = v51;
        v22 = v50;
        v25 = v49;
        v27 = v48;
        v31 = v47;
        v26 = v46;
        a1 = v45;
        v20 = v82;
        goto LABEL_41;
      }

      v58 = __clz(__rbit64(*v37 ^ *v44)) >> 3;
LABEL_51:
      v42 = v58 + 4;
LABEL_52:
      if (v35 < v42)
      {
        v59 = (a1 + 8 * result);
        *v59 = v39 - a7;
        v59[1] = v42;
        result = (result + 1);
        if (v42 > v20)
        {
          return result;
        }

        v35 = v42;
        if (a4 + v42 == a5)
        {
          return result;
        }
      }

      if (++v39 == a7 + 3)
      {
        goto LABEL_58;
      }
    }

    v53 = a4 + 2;
LABEL_41:
    if (v53 < (a5 - 3) && *v44 == *v53)
    {
      v44 += 4;
      v53 += 2;
    }

    if (v53 < (a5 - 1) && *v44 == *v53)
    {
      v44 += 2;
      ++v53;
    }

    if (v53 < a5 && *v44 == *v53)
    {
      LODWORD(v53) = v53 + 1;
    }

    LODWORD(v58) = v53 - v37;
    goto LABEL_51;
  }

  result = 0;
LABEL_58:
  v60 = (v31 + 8 * (v19 & ~v25));
  v61 = v60 + 1;
  v62 = v19 + 9;
  *(v21 + 4 * v83) = v19;
  if (v23 < v34)
  {
    goto LABEL_59;
  }

  v63 = 0;
  v64 = 0;
  v65 = 1 << v22;
  v66 = a5 - 7;
  v84 = v19 + 2;
  while (1)
  {
    v67 = v63 >= v64 ? v64 : v63;
    v68 = v8 + v23;
    v69 = a4 + v67;
    v70 = (v68 + v67);
    if (v66 <= a4 + v67)
    {
      v72 = (a4 + v67);
    }

    else
    {
      if (*v70 != *v69)
      {
        v77 = __clz(__rbit64(*v69 ^ *v70)) >> 3;
        goto LABEL_83;
      }

      v71 = 0;
      v70 = (v8 + 8 + v67 + v23);
      v72 = (a4 + v67 + 8);
      while (v72 < v66)
      {
        v74 = *v70++;
        v73 = v74;
        v76 = *v72;
        v72 += 4;
        v75 = v76;
        v71 += 8;
        if (v73 != v76)
        {
          v77 = v71 + (__clz(__rbit64(v75 ^ v73)) >> 3);
          goto LABEL_83;
        }
      }
    }

    if (v72 < (a5 - 3) && *v70 == *v72)
    {
      v70 = (v70 + 4);
      v72 += 2;
    }

    if (v72 < (a5 - 1) && *v70 == *v72)
    {
      v70 = (v70 + 2);
      ++v72;
    }

    if (v72 < a5 && *v70 == *v72)
    {
      v72 = (v72 + 1);
    }

    v77 = v72 - v69;
LABEL_83:
    v78 = v77 + v67;
    if (v78 > v35)
    {
      if (v78 > v62 - v23)
      {
        v62 = v23 + v78;
      }

      v79 = (a1 + 8 * result);
      *v79 = v84 - v23;
      v79[1] = v78;
      result = (result + 1);
      v80 = v78 > 0x1000 || a4 + v78 == a5;
      v35 = v78;
      if (v80)
      {
        goto LABEL_59;
      }
    }

    v81 = (v31 + 8 * (v23 & v26));
    if (*(v68 + v78) < *(a4 + v78))
    {
      break;
    }

    *v61 = v23;
    if (v23 <= v27)
    {
      v61 = &v85;
      goto LABEL_59;
    }

    v61 = (v31 + 8 * (v23 & v26));
    v64 = v78;
LABEL_95:
    if (--v65)
    {
      v23 = *v81;
      if (*v81 >= v34)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  *v60 = v23;
  if (v23 > v27)
  {
    v60 = v81 + 1;
    v63 = v78;
    ++v81;
    goto LABEL_95;
  }

  v60 = &v85;
LABEL_59:
  *v61 = 0;
  *v60 = 0;
  *(a2 + 44) = v62 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_noDict_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v18 = a4 - v8;
  v19 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 6, 0) + v9;
    }

    while (v9 < v18);
    v8 = *(a2 + 8);
    v19 = a4 - v8;
  }

  *(a2 + 44) = v18;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 260);
  }

  v21 = *(a2 + 96);
  v22 = *(a2 + 252);
  v83 = (0xCF1BBCDCBF9B0000 * *a4) >> -*(a2 + 248);
  v23 = *(v21 + 4 * v83);
  v24 = *(a2 + 240);
  v25 = (-1 << (*(a2 + 244) - 1));
  v26 = ~v25;
  LODWORD(v27) = v19 + v25 + 1;
  if (v19 >= v26)
  {
    v27 = v27;
  }

  else
  {
    v27 = 0;
  }

  v28 = 1 << v24;
  v29 = *(a2 + 24);
  v30 = v19 - *(a2 + 28) > 1 << v24 && *(a2 + 40) == 0;
  v31 = *(a2 + 112);
  v32 = v19 - v28;
  if (v30)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(a2 + 28);
  }

  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v85 = 0;
  v35 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    result = 0;
    v36 = v19 - v29;
    v37 = a4 + 4;
    v38 = a5 - 7;
    v39 = a7;
    v82 = v20;
    while (1)
    {
      if (v39 == 3)
      {
        v40 = *a6 - 1;
      }

      else
      {
        v40 = a6[v39];
      }

      if (v40 - 1 >= v36 || (v19 - v40 >= v33 ? (v41 = *a4 == *(a4 - v40)) : (v41 = 0), !v41))
      {
        v42 = 0;
        goto LABEL_52;
      }

      v43 = -v40;
      v44 = &v37[-v40];
      if (v38 <= v37)
      {
        break;
      }

      if (*v44 == *v37)
      {
        v45 = a1;
        v46 = v26;
        v47 = v31;
        v48 = v27;
        v49 = v25;
        v50 = v22;
        v51 = v21;
        v52 = 0;
        v44 = a4 + v43 + 12;
        v53 = a4 + 6;
        while (v53 < v38)
        {
          v55 = *v44;
          v44 += 8;
          v54 = v55;
          v57 = *v53;
          v53 += 4;
          v56 = v57;
          v52 += 8;
          if (v54 != v57)
          {
            v58 = v52 + (__clz(__rbit64(v56 ^ v54)) >> 3);
            v21 = v51;
            v22 = v50;
            v25 = v49;
            v27 = v48;
            v31 = v47;
            v26 = v46;
            a1 = v45;
            v20 = v82;
            goto LABEL_51;
          }
        }

        v21 = v51;
        v22 = v50;
        v25 = v49;
        v27 = v48;
        v31 = v47;
        v26 = v46;
        a1 = v45;
        v20 = v82;
        goto LABEL_41;
      }

      v58 = __clz(__rbit64(*v37 ^ *v44)) >> 3;
LABEL_51:
      v42 = v58 + 4;
LABEL_52:
      if (v35 < v42)
      {
        v59 = (a1 + 8 * result);
        *v59 = v39 - a7;
        v59[1] = v42;
        result = (result + 1);
        if (v42 > v20)
        {
          return result;
        }

        v35 = v42;
        if (a4 + v42 == a5)
        {
          return result;
        }
      }

      if (++v39 == a7 + 3)
      {
        goto LABEL_58;
      }
    }

    v53 = a4 + 2;
LABEL_41:
    if (v53 < (a5 - 3) && *v44 == *v53)
    {
      v44 += 4;
      v53 += 2;
    }

    if (v53 < (a5 - 1) && *v44 == *v53)
    {
      v44 += 2;
      ++v53;
    }

    if (v53 < a5 && *v44 == *v53)
    {
      LODWORD(v53) = v53 + 1;
    }

    LODWORD(v58) = v53 - v37;
    goto LABEL_51;
  }

  result = 0;
LABEL_58:
  v60 = (v31 + 8 * (v19 & ~v25));
  v61 = v60 + 1;
  v62 = v19 + 9;
  *(v21 + 4 * v83) = v19;
  if (v23 < v34)
  {
    goto LABEL_59;
  }

  v63 = 0;
  v64 = 0;
  v65 = 1 << v22;
  v66 = a5 - 7;
  v84 = v19 + 2;
  while (1)
  {
    v67 = v63 >= v64 ? v64 : v63;
    v68 = v8 + v23;
    v69 = a4 + v67;
    v70 = (v68 + v67);
    if (v66 <= a4 + v67)
    {
      v72 = (a4 + v67);
    }

    else
    {
      if (*v70 != *v69)
      {
        v77 = __clz(__rbit64(*v69 ^ *v70)) >> 3;
        goto LABEL_83;
      }

      v71 = 0;
      v70 = (v8 + 8 + v67 + v23);
      v72 = (a4 + v67 + 8);
      while (v72 < v66)
      {
        v74 = *v70++;
        v73 = v74;
        v76 = *v72;
        v72 += 4;
        v75 = v76;
        v71 += 8;
        if (v73 != v76)
        {
          v77 = v71 + (__clz(__rbit64(v75 ^ v73)) >> 3);
          goto LABEL_83;
        }
      }
    }

    if (v72 < (a5 - 3) && *v70 == *v72)
    {
      v70 = (v70 + 4);
      v72 += 2;
    }

    if (v72 < (a5 - 1) && *v70 == *v72)
    {
      v70 = (v70 + 2);
      ++v72;
    }

    if (v72 < a5 && *v70 == *v72)
    {
      v72 = (v72 + 1);
    }

    v77 = v72 - v69;
LABEL_83:
    v78 = v77 + v67;
    if (v78 > v35)
    {
      if (v78 > v62 - v23)
      {
        v62 = v23 + v78;
      }

      v79 = (a1 + 8 * result);
      *v79 = v84 - v23;
      v79[1] = v78;
      result = (result + 1);
      v80 = v78 > 0x1000 || a4 + v78 == a5;
      v35 = v78;
      if (v80)
      {
        goto LABEL_59;
      }
    }

    v81 = (v31 + 8 * (v23 & v26));
    if (*(v68 + v78) < *(a4 + v78))
    {
      break;
    }

    *v61 = v23;
    if (v23 <= v27)
    {
      v61 = &v85;
      goto LABEL_59;
    }

    v61 = (v31 + 8 * (v23 & v26));
    v64 = v78;
LABEL_95:
    if (--v65)
    {
      v23 = *v81;
      if (*v81 >= v34)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  *v60 = v23;
  if (v23 > v27)
  {
    v60 = v81 + 1;
    v63 = v78;
    ++v81;
    goto LABEL_95;
  }

  v60 = &v85;
LABEL_59:
  *v61 = 0;
  *v60 = 0;
  *(a2 + 44) = v62 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_3(_DWORD *a1, uint64_t a2, unsigned int *a3, int *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v16 = a1;
  v17 = a4 - v8;
  v18 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v17, 3, 1) + v9;
    }

    while (v9 < v17);
    v8 = *(a2 + 8);
    v18 = a4 - v8;
    v16 = a1;
  }

  *(a2 + 44) = v17;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v19 = 4095;
  }

  else
  {
    v19 = *(a2 + 260);
  }

  v20 = *a4;
  v142 = *(a2 + 252);
  v147 = *(a2 + 96);
  v145 = (-1640531535 * *a4) >> -*(a2 + 248);
  v21 = *(v147 + 4 * v145);
  v157 = *(a2 + 112);
  v144 = -1 << (*(a2 + 244) - 1);
  v22 = *(a2 + 16);
  v24 = *(a2 + 24);
  v23 = *(a2 + 28);
  v160 = (v22 + v24);
  v156 = ~v144;
  v25 = v18 + v144 + 1;
  if (v18 < ~v144)
  {
    v25 = 0;
  }

  v155 = v25;
  v26 = 1 << *(a2 + 240);
  v27 = v18 - v23 > v26 && *(a2 + 40) == 0;
  v150 = (v8 + v24);
  v28 = v18 - v26;
  if (v27)
  {
    v23 = v28;
  }

  if (v23 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v23;
  }

  v158 = v29;
  v161 = 0;
  v30 = (a8 - 1);
  v31 = a7;
  v159 = v22;
  v148 = v19;
  v10 = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = a4 + 3;
    v33 = a5 - 7;
    v34 = a5 - 3;
    v35 = a5 - 1;
    v141 = v22 + 11;
    v36 = a4 + 11;
    v37 = a7;
    while (1)
    {
      if (v37 == 3)
      {
        v38 = *a6 - 1;
      }

      else
      {
        v38 = a6[v37];
      }

      v39 = v18 - v38;
      if (v38 - 1 < v18 - v24)
      {
        if (v39 < v23 || ((*(a4 - v38) ^ v20) & 0xFFFFFF) != 0)
        {
          goto LABEL_41;
        }

        v41 = -v38;
        v42 = &v32[-v38];
        if (v33 > v32)
        {
          if (*v42 == *v32)
          {
            v43 = 0;
            v42 = &v36[v41];
            v44 = (a4 + 11);
            while (v44 < v33)
            {
              v46 = *v42;
              v42 += 8;
              v45 = v46;
              v48 = *v44;
              v44 += 4;
              v47 = v48;
              v43 += 8;
              if (v45 != v48)
              {
                v49 = v43 + (__clz(__rbit64(v47 ^ v45)) >> 3);
                goto LABEL_53;
              }
            }

LABEL_43:
            if (v44 < v34 && *v42 == *v44)
            {
              v42 += 4;
              v44 += 2;
            }

            if (v44 < v35 && *v42 == *v44)
            {
              v42 += 2;
              ++v44;
            }

            if (v44 < a5 && *v42 == *v44)
            {
              LODWORD(v44) = v44 + 1;
            }

            LODWORD(v49) = v44 - v32;
LABEL_53:
            v31 = a7;
          }

          else
          {
            v49 = __clz(__rbit64(*v32 ^ *v42)) >> 3;
          }

          v52 = v49 + 3;
          goto LABEL_101;
        }

        v44 = (a4 + 3);
        goto LABEL_43;
      }

      v50 = v38 - 1 >= v18 - v23 || (v39 - v24) > 0xFFFFFFFC;
      if (v50 || (v51 = (v22 + v39), ((*v51 ^ v20) & 0xFFFFFF) != 0))
      {
LABEL_41:
        v52 = 0;
        goto LABEL_101;
      }

      v53 = (v51 + 3);
      v54 = a4 + v160 - v51;
      v55 = v54 >= a5 ? a5 : v54;
      if (v55 - 7 <= v32)
      {
        break;
      }

      if (*v53 == *v32)
      {
        v56 = 0;
        v57 = (v141 + v39);
        v58 = (a4 + 11);
        while (v58 < (v55 - 7))
        {
          v60 = *v57;
          v57 += 4;
          v59 = v60;
          v62 = *v58;
          v58 += 4;
          v61 = v62;
          v56 += 8;
          if (v59 != v62)
          {
            v63 = v56 + (__clz(__rbit64(v61 ^ v59)) >> 3);
            v16 = a1;
            v22 = v159;
            goto LABEL_67;
          }
        }

        v16 = a1;
        goto LABEL_69;
      }

      v63 = __clz(__rbit64(*v32 ^ *v53)) >> 3;
LABEL_67:
      v19 = v148;
LABEL_79:
      if (v53 + v63 == v160)
      {
        v64 = &v32[v63];
        if (v33 > &v32[v63])
        {
          if (*v150 == *v64)
          {
            v65 = 0;
            v66 = &v36[v63];
            v67 = (v24 + v8 + 8);
            while (v66 < v33)
            {
              v69 = *v67;
              v67 += 4;
              v68 = v69;
              v71 = *v66;
              v66 += 4;
              v70 = v71;
              v65 += 8;
              if (v68 != v71)
              {
                v72 = v65 + (__clz(__rbit64(v70 ^ v68)) >> 3);
                v22 = v159;
                v19 = v148;
                goto LABEL_99;
              }
            }

            v19 = v148;
LABEL_89:
            if (v66 < v34 && *v67 == *v66)
            {
              v67 += 2;
              v66 += 2;
            }

            if (v66 < v35 && *v67 == *v66)
            {
              ++v67;
              ++v66;
            }

            if (v66 < a5 && *v67 == *v66)
            {
              LODWORD(v66) = v66 + 1;
            }

            v22 = v159;
            LODWORD(v72) = v66 - v64;
          }

          else
          {
            v72 = __clz(__rbit64(*v64 ^ *v150)) >> 3;
          }

LABEL_99:
          LODWORD(v63) = v72 + v63;
          goto LABEL_100;
        }

        v67 = (v8 + v24);
        v66 = &v32[v63];
        goto LABEL_89;
      }

LABEL_100:
      v31 = a7;
      v52 = v63 + 3;
LABEL_101:
      if (v30 < v52)
      {
        v73 = &v16[2 * v10];
        *v73 = v37 - v31;
        v73[1] = v52;
        v10 = (v10 + 1);
        if (v52 > v19)
        {
          return v10;
        }

        v30 = v52;
        if (a4 + v52 == a5)
        {
          return v10;
        }
      }

      if (++v37 == a7 + 3)
      {
        goto LABEL_105;
      }
    }

    v57 = v53;
    v58 = (a4 + 3);
LABEL_69:
    v19 = v148;
    if (v58 < (v55 - 3) && *v57 == *v58)
    {
      v57 += 2;
      v58 += 2;
    }

    if (v58 < (v55 - 1) && *v57 == *v58)
    {
      ++v57;
      ++v58;
    }

    if (v58 < v55 && *v57 == *v58)
    {
      v58 = (v58 + 1);
    }

    v22 = v159;
    v63 = v58 - v32;
    goto LABEL_79;
  }

LABEL_105:
  if (v30 > 2)
  {
    goto LABEL_157;
  }

  FirstIndexHash3 = ZSTD_insertAndFindFirstIndexHash3(a2, a3, a4);
  if (FirstIndexHash3 < v158)
  {
    v16 = a1;
    v22 = v159;
  }

  else
  {
    v75 = v18 - FirstIndexHash3;
    v16 = a1;
    v22 = v159;
    if (!((v18 - FirstIndexHash3) >> 18))
    {
      if (FirstIndexHash3 >= v24)
      {
        v87 = (v8 + FirstIndexHash3);
        v78 = v148;
        if (a5 - 7 <= a4)
        {
          v89 = a4;
        }

        else
        {
          if (*v87 != *a4)
          {
            v86 = __clz(__rbit64(*a4 ^ *v87)) >> 3;
            goto LABEL_150;
          }

          v88 = 0;
          v87 = (FirstIndexHash3 + v8 + 8);
          v89 = (a4 + 2);
          while (v89 < (a5 - 7))
          {
            v91 = *v87++;
            v90 = v91;
            v93 = *v89;
            v89 += 4;
            v92 = v93;
            v88 += 8;
            if (v90 != v93)
            {
              v86 = v88 + (__clz(__rbit64(v92 ^ v90)) >> 3);
              goto LABEL_150;
            }
          }
        }

        if (v89 < (a5 - 3) && *v87 == *v89)
        {
          v87 = (v87 + 4);
          v89 += 2;
        }

        if (v89 < (a5 - 1) && *v87 == *v89)
        {
          v87 = (v87 + 2);
          ++v89;
        }

        if (v89 < a5 && *v87 == *v89)
        {
          v89 = (v89 + 1);
        }

        v86 = v89 - a4;
LABEL_150:
        if (v86 >= 3)
        {
          *v16 = v75 + 2;
          v16[1] = v86;
          if (v86 > v78 || a4 + v86 == a5)
          {
            v96 = v18 + 1;
            v10 = 1;
            goto LABEL_159;
          }

          v10 = 1;
          v30 = v86;
        }

        goto LABEL_157;
      }

      v76 = (v159 + FirstIndexHash3);
      v77 = a4 + v24 - FirstIndexHash3;
      if (v77 >= a5)
      {
        v77 = a5;
      }

      v78 = v148;
      if (v77 - 7 <= a4)
      {
        v80 = (v159 + FirstIndexHash3);
        v81 = a4;
      }

      else
      {
        if (*v76 != *a4)
        {
          v86 = __clz(__rbit64(*a4 ^ *v76)) >> 3;
LABEL_147:
          if (v76 + v86 == v160)
          {
            v153 = v18 - FirstIndexHash3;
            v94 = ZSTD_count((a4 + v86), v150, a5);
            v75 = v153;
            v78 = v148;
            v22 = v159;
            v16 = a1;
            v86 += v94;
          }

          goto LABEL_150;
        }

        v79 = 0;
        v80 = (FirstIndexHash3 + v159 + 8);
        v81 = a4 + 2;
        while (v81 < (v77 - 7))
        {
          v83 = *v80;
          v80 += 4;
          v82 = v83;
          v85 = *v81;
          v81 += 2;
          v84 = v85;
          v79 += 8;
          if (v82 != v85)
          {
            v86 = v79 + (__clz(__rbit64(v84 ^ v82)) >> 3);
            goto LABEL_147;
          }
        }
      }

      if (v81 < (v77 - 3) && *v80 == *v81)
      {
        v80 += 2;
        ++v81;
      }

      if (v81 < (v77 - 1) && *v80 == *v81)
      {
        ++v80;
        v81 = (v81 + 2);
      }

      if (v81 < v77 && *v80 == *v81)
      {
        v81 = (v81 + 1);
      }

      v86 = v81 - a4;
      goto LABEL_147;
    }
  }

LABEL_157:
  v97 = (v157 + 8 * (v18 & ~v144));
  v98 = v97 + 1;
  v99 = v18 + 9;
  *(v147 + 4 * v145) = v18;
  if (v21 < v158)
  {
    goto LABEL_158;
  }

  v101 = 0;
  v102 = 0;
  v103 = 1 << v142;
  v104 = a5 - 7;
  v154 = a5 - 3;
  v105 = a5 - 1;
  v106 = v18 + 2;
  v149 = a4 + 2;
  v146 = v22 + 8;
  while (1)
  {
    if (v101 >= v102)
    {
      v107 = v102;
    }

    else
    {
      v107 = v101;
    }

    v108 = a4 + v107;
    if (v107 + v21 >= v24)
    {
      v109 = v8 + v21;
      v120 = (v109 + v107);
      if (v104 <= v108)
      {
        v122 = (a4 + v107);
      }

      else
      {
        if (*v120 != *v108)
        {
          v127 = __clz(__rbit64(*v108 ^ *v120)) >> 3;
LABEL_213:
          v137 = v127 + v107;
          goto LABEL_229;
        }

        v121 = 0;
        v120 = (v8 + 8 + v107 + v21);
        v122 = (v149 + v107);
        while (v122 < v104)
        {
          v124 = *v120++;
          v123 = v124;
          v126 = *v122;
          v122 += 4;
          v125 = v126;
          v121 += 8;
          if (v123 != v126)
          {
            v127 = v121 + (__clz(__rbit64(v125 ^ v123)) >> 3);
            goto LABEL_213;
          }
        }
      }

      if (v122 < v154 && *v120 == *v122)
      {
        v120 = (v120 + 4);
        v122 += 2;
      }

      if (v122 < v105 && *v120 == *v122)
      {
        v120 = (v120 + 2);
        ++v122;
      }

      if (v122 < a5 && *v120 == *v122)
      {
        v122 = (v122 + 1);
      }

      v127 = v122 - v108;
      goto LABEL_213;
    }

    v109 = v22 + v21;
    v110 = (v109 + v107);
    v111 = &v160[a4 - v109] >= a5 ? a5 : &v160[a4 - v109];
    if (v111 - 7 <= v108)
    {
      v113 = (v109 + v107);
      v114 = (a4 + v107);
    }

    else
    {
      if (*v110 != *v108)
      {
        v119 = __clz(__rbit64(*v108 ^ *v110)) >> 3;
        goto LABEL_205;
      }

      v112 = 0;
      v113 = (v146 + v107 + v21);
      v114 = (v149 + v107);
      while (v114 < (v111 - 7))
      {
        v116 = *v113;
        v113 += 4;
        v115 = v116;
        v118 = *v114;
        v114 += 4;
        v117 = v118;
        v112 += 8;
        if (v115 != v118)
        {
          v119 = v112 + (__clz(__rbit64(v117 ^ v115)) >> 3);
          goto LABEL_192;
        }
      }
    }

    if (v114 < (v111 - 3) && *v113 == *v114)
    {
      v113 += 2;
      v114 += 2;
    }

    if (v114 < (v111 - 1) && *v113 == *v114)
    {
      ++v113;
      ++v114;
    }

    if (v114 < v111 && *v113 == *v114)
    {
      v114 = (v114 + 1);
    }

    v119 = v114 - v108;
LABEL_192:
    v16 = a1;
LABEL_205:
    if (v110 + v119 != v160)
    {
      goto LABEL_227;
    }

    v128 = &v108[v119];
    if (v104 <= v128)
    {
      v131 = (v8 + v24);
      v130 = v128;
LABEL_215:
      if (v130 < v154 && *v131 == *v130)
      {
        ++v131;
        ++v130;
      }

      if (v130 < v105 && *v131 == *v130)
      {
        v131 = (v131 + 2);
        v130 = (v130 + 2);
      }

      if (v130 < a5 && *v131 == *v130)
      {
        v130 = (v130 + 1);
      }

      v136 = v130 - v128;
      goto LABEL_226;
    }

    if (*v150 == *v128)
    {
      v129 = 0;
      v130 = (v149 + v119 + v107);
      v131 = (v8 + 8 + v24);
      while (v130 < v104)
      {
        v133 = *v131;
        v131 += 2;
        v132 = v133;
        v135 = *v130;
        v130 += 2;
        v134 = v135;
        v129 += 8;
        if (v132 != v135)
        {
          v136 = v129 + (__clz(__rbit64(v134 ^ v132)) >> 3);
          goto LABEL_226;
        }
      }

      goto LABEL_215;
    }

    v136 = __clz(__rbit64(*v128 ^ *v150)) >> 3;
LABEL_226:
    v119 += v136;
LABEL_227:
    v137 = v119 + v107;
    if (v119 + v107 + v21 >= v24)
    {
      v109 = v8 + v21;
    }

LABEL_229:
    if (v137 > v30)
    {
      if (v137 > v99 - v21)
      {
        v99 = v21 + v137;
      }

      v138 = &v16[2 * v10];
      *v138 = v106 - v21;
      v138[1] = v137;
      v10 = (v10 + 1);
      v139 = v137 > 0x1000 || a4 + v137 == a5;
      v30 = v137;
      if (v139)
      {
        goto LABEL_158;
      }
    }

    v140 = (v157 + 8 * (v21 & v156));
    if (*(v109 + v137) < *(a4 + v137))
    {
      break;
    }

    *v98 = v21;
    v22 = v159;
    if (v21 <= v155)
    {
      v98 = &v161;
      goto LABEL_158;
    }

    v98 = (v157 + 8 * (v21 & v156));
    v102 = v137;
LABEL_241:
    if (--v103)
    {
      v21 = *v140;
      if (*v140 >= v158)
      {
        continue;
      }
    }

    goto LABEL_158;
  }

  *v97 = v21;
  v22 = v159;
  if (v21 > v155)
  {
    v97 = v140 + 1;
    v101 = v137;
    ++v140;
    goto LABEL_241;
  }

  v97 = &v161;
LABEL_158:
  *v98 = 0;
  *v97 = 0;
  v96 = v99 - 8;
LABEL_159:
  *(a2 + 44) = v96;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_extDict_4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v18 = a4 - v8;
  v19 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 4, 1) + v9;
    }

    while (v9 < v18);
    v8 = *(a2 + 8);
    v19 = a4 - v8;
  }

  *(a2 + 44) = v18;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 260);
  }

  v21 = *a4;
  v117 = *(a2 + 252);
  v121 = *(a2 + 96);
  v120 = (-1640531535 * *a4) >> -*(a2 + 248);
  v22 = *(v121 + 4 * v120);
  v23 = *(a2 + 112);
  v119 = -1 << (*(a2 + 244) - 1);
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  v133 = (v24 + v25);
  v26 = v19 + v119 + 1;
  if (v19 < ~v119)
  {
    v26 = 0;
  }

  v131 = v26;
  v27 = 1 << *(a2 + 240);
  v28 = v19 - *(a2 + 28) > v27 && *(a2 + 40) == 0;
  v123 = (v8 + v25);
  v29 = v19 - v27;
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(a2 + 28);
  }

  if (v30 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  v132 = v31;
  v134 = 0;
  v32 = (a8 - 1);
  v130 = v24;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v33 = (a4 + 1);
    v34 = a5 - 7;
    v126 = a5 - 1;
    v128 = a5 - 3;
    v118 = a4 + 3;
    v116 = v24 + 12;
    v35 = a7;
    v124 = v20;
    do
    {
      if (v35 == 3)
      {
        v36 = *a6 - 1;
      }

      else
      {
        v36 = a6[v35];
      }

      v37 = v19 - v36;
      if (v36 - 1 < v19 - v25)
      {
        if (v37 < v30 || v21 != *(a4 - v36))
        {
          goto LABEL_51;
        }

        v39 = -v36;
        v40 = &v33[-v36];
        if (v34 > v33)
        {
          if (*v40 == *v33)
          {
            v41 = 0;
            v42 = (a4 + 3);
            v40 = v118 + v39;
            while (v42 < v34)
            {
              v44 = *v40;
              v40 += 8;
              v43 = v44;
              v46 = *v42;
              v42 += 4;
              v45 = v46;
              v41 += 8;
              if (v43 != v46)
              {
                v47 = v41 + (__clz(__rbit64(v45 ^ v43)) >> 3);
                goto LABEL_64;
              }
            }

LABEL_53:
            if (v42 < v128 && *v40 == *v42)
            {
              v40 += 4;
              v42 += 2;
            }

            if (v42 < v126 && *v40 == *v42)
            {
              v40 += 2;
              ++v42;
            }

            if (v42 < a5 && *v40 == *v42)
            {
              LODWORD(v42) = v42 + 1;
            }

            LODWORD(v47) = v42 - v33;
          }

          else
          {
            v47 = __clz(__rbit64(*v33 ^ *v40)) >> 3;
          }

LABEL_64:
          v63 = v47 + 4;
          goto LABEL_101;
        }

        v42 = (a4 + 1);
        goto LABEL_53;
      }

      v48 = v36 - 1 >= v19 - v30 || (v37 - v25) > 0xFFFFFFFC;
      if (v48 || (v49 = (v24 + v37), v21 != *v49))
      {
LABEL_51:
        v63 = 0;
        goto LABEL_101;
      }

      v50 = (v49 + 1);
      v51 = a4 + v133 - v49;
      if (v51 >= a5)
      {
        v52 = a5;
      }

      else
      {
        v52 = v51;
      }

      if (v52 - 7 <= v33)
      {
        v56 = v50;
        v57 = (a4 + 1);
      }

      else
      {
        if (*v50 != *v33)
        {
          v62 = __clz(__rbit64(*v33 ^ *v50)) >> 3;
          goto LABEL_78;
        }

        v53 = a1;
        v54 = v23;
        v55 = 0;
        v56 = (v116 + v37);
        v57 = (a4 + 3);
        while (v57 < (v52 - 7))
        {
          v59 = *v56;
          v56 += 4;
          v58 = v59;
          v61 = *v57;
          v57 += 4;
          v60 = v61;
          v55 += 8;
          if (v58 != v61)
          {
            v62 = v55 + (__clz(__rbit64(v60 ^ v58)) >> 3);
            v23 = v54;
            a1 = v53;
            v24 = v130;
            goto LABEL_78;
          }
        }

        v23 = v54;
        a1 = v53;
        v24 = v130;
      }

      if (v57 < (v52 - 3) && *v56 == *v57)
      {
        v56 += 2;
        v57 += 2;
      }

      if (v57 < (v52 - 1) && *v56 == *v57)
      {
        ++v56;
        ++v57;
      }

      if (v57 < v52 && *v56 == *v57)
      {
        v57 = (v57 + 1);
      }

      v62 = v57 - v33;
LABEL_78:
      if (v50 + v62 == v133)
      {
        v64 = &v33[v62];
        if (v34 > &v33[v62])
        {
          if (*v123 == *v64)
          {
            v65 = 0;
            v66 = (v118 + v62);
            v67 = (v25 + v8 + 8);
            while (v66 < v34)
            {
              v69 = *v67;
              v67 += 4;
              v68 = v69;
              v71 = *v66;
              v66 += 4;
              v70 = v71;
              v65 += 8;
              if (v68 != v71)
              {
                v72 = v65 + (__clz(__rbit64(v70 ^ v68)) >> 3);
                goto LABEL_98;
              }
            }

LABEL_87:
            if (v66 < v128 && *v67 == *v66)
            {
              v67 += 2;
              v66 += 2;
            }

            if (v66 < v126 && *v67 == *v66)
            {
              ++v67;
              ++v66;
            }

            if (v66 < a5 && *v67 == *v66)
            {
              LODWORD(v66) = v66 + 1;
            }

            v20 = v124;
            LODWORD(v72) = v66 - v64;
          }

          else
          {
            v72 = __clz(__rbit64(*v64 ^ *v123)) >> 3;
LABEL_98:
            v20 = v124;
          }

          LODWORD(v62) = v72 + v62;
          goto LABEL_100;
        }

        v67 = (v8 + v25);
        v66 = &v33[v62];
        goto LABEL_87;
      }

      v20 = v124;
LABEL_100:
      v63 = v62 + 4;
LABEL_101:
      if (v32 < v63)
      {
        v73 = (a1 + 8 * result);
        *v73 = v35 - a7;
        v73[1] = v63;
        result = (result + 1);
        if (v63 > v20)
        {
          return result;
        }

        v32 = v63;
        if (a4 + v63 == a5)
        {
          return result;
        }
      }

      ++v35;
    }

    while (v35 != a7 + 3);
  }

  v74 = (v23 + 8 * (v19 & ~v119));
  v75 = v74 + 1;
  v76 = v19 + 9;
  *(v121 + 4 * v120) = v19;
  if (v22 < v132)
  {
    goto LABEL_106;
  }

  v77 = 0;
  v78 = 0;
  v79 = 1 << v117;
  v80 = a5 - 7;
  v125 = a5 - 1;
  v127 = a5 - 3;
  v129 = v19 + 2;
  v122 = a4 + 2;
  v81 = ~v119;
  while (1)
  {
    if (v77 >= v78)
    {
      v82 = v78;
    }

    else
    {
      v82 = v77;
    }

    v83 = a4 + v82;
    if (v82 + v22 >= v25)
    {
      v84 = v8 + v22;
      v95 = (v84 + v82);
      if (v80 <= v83)
      {
        v97 = (a4 + v82);
      }

      else
      {
        if (*v95 != *v83)
        {
          v102 = __clz(__rbit64(*v83 ^ *v95)) >> 3;
LABEL_160:
          v112 = v102 + v82;
          goto LABEL_176;
        }

        v96 = 0;
        v95 = (v8 + 8 + v82 + v22);
        v97 = (v122 + v82);
        while (v97 < v80)
        {
          v99 = *v95++;
          v98 = v99;
          v101 = *v97;
          v97 += 4;
          v100 = v101;
          v96 += 8;
          if (v98 != v101)
          {
            v102 = v96 + (__clz(__rbit64(v100 ^ v98)) >> 3);
            goto LABEL_160;
          }
        }
      }

      if (v97 < v127 && *v95 == *v97)
      {
        v95 = (v95 + 4);
        v97 += 2;
      }

      if (v97 < v125 && *v95 == *v97)
      {
        v95 = (v95 + 2);
        ++v97;
      }

      if (v97 < a5 && *v95 == *v97)
      {
        v97 = (v97 + 1);
      }

      v102 = v97 - v83;
      goto LABEL_160;
    }

    v84 = v130 + v22;
    v85 = (v84 + v82);
    v86 = &v133[a4 - v84] >= a5 ? a5 : &v83[v133 - v85];
    if (v86 - 7 <= v83)
    {
      v88 = (v130 + v22 + v82);
      v89 = (a4 + v82);
    }

    else
    {
      if (*v85 != *v83)
      {
        v94 = __clz(__rbit64(*v83 ^ *v85)) >> 3;
        goto LABEL_152;
      }

      v87 = 0;
      v88 = (v130 + 8 + v82 + v22);
      v89 = (v122 + v82);
      while (v89 < (v86 - 7))
      {
        v91 = *v88;
        v88 += 4;
        v90 = v91;
        v93 = *v89;
        v89 += 4;
        v92 = v93;
        v87 += 8;
        if (v90 != v93)
        {
          v94 = v87 + (__clz(__rbit64(v92 ^ v90)) >> 3);
          goto LABEL_139;
        }
      }
    }

    if (v89 < (v86 - 3) && *v88 == *v89)
    {
      v88 += 2;
      v89 += 2;
    }

    if (v89 < (v86 - 1) && *v88 == *v89)
    {
      ++v88;
      ++v89;
    }

    if (v89 < v86 && *v88 == *v89)
    {
      v89 = (v89 + 1);
    }

    v94 = v89 - v83;
LABEL_139:
    v81 = ~v119;
LABEL_152:
    if (&v85[v94] != v133)
    {
      goto LABEL_174;
    }

    v103 = &v83[v94];
    if (v80 <= &v83[v94])
    {
      v106 = (v8 + v25);
      v105 = &v83[v94];
LABEL_162:
      if (v105 < v127 && *v106 == *v105)
      {
        ++v106;
        v105 += 4;
      }

      if (v105 < v125 && *v106 == *v105)
      {
        v106 = (v106 + 2);
        v105 += 2;
      }

      if (v105 < a5 && *v106 == *v105)
      {
        ++v105;
      }

      v111 = v105 - v103;
      goto LABEL_173;
    }

    if (*v123 == *v103)
    {
      v104 = 0;
      v105 = v122 + v94 + v82;
      v106 = (v8 + 8 + v25);
      while (v105 < v80)
      {
        v108 = *v106;
        v106 += 2;
        v107 = v108;
        v110 = *v105;
        v105 += 8;
        v109 = v110;
        v104 += 8;
        if (v107 != v110)
        {
          v111 = v104 + (__clz(__rbit64(v109 ^ v107)) >> 3);
          goto LABEL_173;
        }
      }

      goto LABEL_162;
    }

    v111 = __clz(__rbit64(*v103 ^ *v123)) >> 3;
LABEL_173:
    v94 += v111;
LABEL_174:
    v112 = v94 + v82;
    if (v94 + v82 + v22 >= v25)
    {
      v84 = v8 + v22;
    }

LABEL_176:
    if (v112 > v32)
    {
      if (v112 > v76 - v22)
      {
        v76 = v22 + v112;
      }

      v113 = (a1 + 8 * result);
      *v113 = v129 - v22;
      v113[1] = v112;
      result = (result + 1);
      v114 = v112 > 0x1000 || a4 + v112 == a5;
      v32 = v112;
      if (v114)
      {
        goto LABEL_106;
      }
    }

    v115 = (v23 + 8 * (v22 & v81));
    if (*(v84 + v112) < *(a4 + v112))
    {
      break;
    }

    *v75 = v22;
    if (v22 <= v131)
    {
      v75 = &v134;
      goto LABEL_106;
    }

    v75 = (v23 + 8 * (v22 & v81));
    v78 = v112;
LABEL_188:
    if (--v79)
    {
      v22 = *v115;
      if (*v115 >= v132)
      {
        continue;
      }
    }

    goto LABEL_106;
  }

  *v74 = v22;
  if (v22 > v131)
  {
    v74 = v115 + 1;
    v77 = v112;
    ++v115;
    goto LABEL_188;
  }

  v74 = &v134;
LABEL_106:
  *v75 = 0;
  *v74 = 0;
  *(a2 + 44) = v76 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v18 = a4 - v8;
  v19 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 5, 1) + v9;
    }

    while (v9 < v18);
    v8 = *(a2 + 8);
    v19 = a4 - v8;
  }

  *(a2 + 44) = v18;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 260);
  }

  v114 = *(a2 + 252);
  v121 = *(a2 + 96);
  v118 = (0xCF1BBCDCBB000000 * *a4) >> -*(a2 + 248);
  v21 = *(v121 + 4 * v118);
  v127 = *(a2 + 112);
  v117 = -1 << (*(a2 + 244) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v130 = ~v117;
  v25 = v19 + v117 + 1;
  if (v19 < ~v117)
  {
    v25 = 0;
  }

  v129 = v25;
  v26 = 1 << *(a2 + 240);
  v27 = v19 - *(a2 + 28) > v26 && *(a2 + 40) == 0;
  v120 = (v8 + v23);
  v28 = v19 - v26;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v131 = v30;
  v132 = 0;
  v31 = (a8 - 1);
  v128 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = a4 + 4;
    v33 = a5 - 7;
    v123 = a5 - 1;
    v125 = a5 - 3;
    v115 = a4 + 12;
    v113 = v22 + 12;
    v34 = a7;
    while (1)
    {
      if (v34 == 3)
      {
        v35 = *a6 - 1;
      }

      else
      {
        v35 = a6[v34];
      }

      v36 = v19 - v35;
      if (v35 - 1 < v19 - v23)
      {
        if (v36 < v29 || *a4 != *(a4 - v35))
        {
          goto LABEL_51;
        }

        v38 = -v35;
        v39 = &v32[-v35];
        if (v33 > v32)
        {
          if (*v39 == *v32)
          {
            v40 = 0;
            v41 = a4 + 6;
            v39 = &v115[v38];
            while (v41 < v33)
            {
              v43 = *v39;
              v39 += 8;
              v42 = v43;
              v45 = *v41;
              v41 += 4;
              v44 = v45;
              v40 += 8;
              if (v42 != v45)
              {
                v46 = v40 + (__clz(__rbit64(v44 ^ v42)) >> 3);
                goto LABEL_64;
              }
            }

LABEL_53:
            if (v41 < v125 && *v39 == *v41)
            {
              v39 += 4;
              v41 += 2;
            }

            if (v41 < v123 && *v39 == *v41)
            {
              v39 += 2;
              ++v41;
            }

            if (v41 < a5 && *v39 == *v41)
            {
              LODWORD(v41) = v41 + 1;
            }

            LODWORD(v46) = v41 - v32;
          }

          else
          {
            v46 = __clz(__rbit64(*v32 ^ *v39)) >> 3;
          }

LABEL_64:
          v60 = v46 + 4;
          goto LABEL_99;
        }

        v41 = a4 + 2;
        goto LABEL_53;
      }

      v47 = v35 - 1 >= v19 - v29 || (v36 - v23) > 0xFFFFFFFC;
      if (v47 || (v48 = (v22 + v36), *a4 != *v48))
      {
LABEL_51:
        v60 = 0;
        goto LABEL_99;
      }

      v49 = (v48 + 1);
      v50 = a4 + v24 - v48;
      v51 = v50 >= a5 ? a5 : v50;
      if (v51 - 7 <= v32)
      {
        break;
      }

      if (*v49 == *v32)
      {
        v52 = 0;
        v53 = (v113 + v36);
        v54 = a4 + 6;
        while (v54 < (v51 - 7))
        {
          v56 = *v53;
          v53 += 4;
          v55 = v56;
          v58 = *v54;
          v54 += 4;
          v57 = v58;
          v52 += 8;
          if (v55 != v58)
          {
            v59 = v52 + (__clz(__rbit64(v57 ^ v55)) >> 3);
            goto LABEL_77;
          }
        }

        goto LABEL_66;
      }

      v59 = __clz(__rbit64(*v32 ^ *v49)) >> 3;
LABEL_77:
      v22 = v128;
LABEL_78:
      if (v49 + v59 == v24)
      {
        v61 = &v32[v59];
        if (v33 > &v32[v59])
        {
          if (*v120 == *v61)
          {
            v62 = 0;
            v63 = &v115[v59];
            v64 = (v23 + v8 + 8);
            while (v63 < v33)
            {
              v66 = *v64;
              v64 += 4;
              v65 = v66;
              v68 = *v63;
              v63 += 4;
              v67 = v68;
              v62 += 8;
              if (v65 != v68)
              {
                v69 = v62 + (__clz(__rbit64(v67 ^ v65)) >> 3);
                goto LABEL_97;
              }
            }

LABEL_86:
            if (v63 < v125 && *v64 == *v63)
            {
              v64 += 2;
              v63 += 2;
            }

            if (v63 < v123 && *v64 == *v63)
            {
              ++v64;
              ++v63;
            }

            if (v63 < a5 && *v64 == *v63)
            {
              LODWORD(v63) = v63 + 1;
            }

            LODWORD(v69) = v63 - v61;
          }

          else
          {
            v69 = __clz(__rbit64(*v61 ^ *v120)) >> 3;
          }

LABEL_97:
          LODWORD(v59) = v69 + v59;
          goto LABEL_98;
        }

        v64 = (v8 + v23);
        v63 = &v32[v59];
        goto LABEL_86;
      }

LABEL_98:
      v60 = v59 + 4;
LABEL_99:
      if (v31 < v60)
      {
        v70 = (a1 + 8 * result);
        *v70 = v34 - a7;
        v70[1] = v60;
        result = (result + 1);
        if (v60 > v20)
        {
          return result;
        }

        v31 = v60;
        if (a4 + v60 == a5)
        {
          return result;
        }
      }

      if (++v34 == a7 + 3)
      {
        goto LABEL_103;
      }
    }

    v53 = v49;
    v54 = a4 + 2;
LABEL_66:
    v22 = v128;
    if (v54 < (v51 - 3) && *v53 == *v54)
    {
      v53 += 2;
      v54 += 2;
    }

    if (v54 < (v51 - 1) && *v53 == *v54)
    {
      ++v53;
      ++v54;
    }

    if (v54 < v51 && *v53 == *v54)
    {
      v54 = (v54 + 1);
    }

    v59 = v54 - v32;
    goto LABEL_78;
  }

LABEL_103:
  v71 = v127;
  v72 = (v127 + 8 * (v19 & ~v117));
  v73 = v72 + 1;
  v74 = v19 + 9;
  *(v121 + 4 * v118) = v19;
  if (v21 < v131)
  {
    goto LABEL_104;
  }

  v75 = 0;
  v76 = 0;
  v77 = 1 << v114;
  v78 = a5 - 7;
  v122 = a5 - 1;
  v124 = a5 - 3;
  v126 = v19 + 2;
  v119 = a4 + 1;
  v116 = v22 + 8;
  while (1)
  {
    if (v75 >= v76)
    {
      v79 = v76;
    }

    else
    {
      v79 = v75;
    }

    v80 = a4 + v79;
    if (v79 + v21 >= v23)
    {
      v81 = v8 + v21;
      v92 = (v81 + v79);
      if (v78 <= v80)
      {
        v94 = (a4 + v79);
      }

      else
      {
        if (*v92 != *v80)
        {
          v99 = __clz(__rbit64(*v80 ^ *v92)) >> 3;
LABEL_158:
          v109 = v99 + v79;
          goto LABEL_174;
        }

        v93 = 0;
        v92 = (v8 + 8 + v79 + v21);
        v94 = (v119 + v79);
        while (v94 < v78)
        {
          v96 = *v92++;
          v95 = v96;
          v98 = *v94;
          v94 += 4;
          v97 = v98;
          v93 += 8;
          if (v95 != v98)
          {
            v99 = v93 + (__clz(__rbit64(v97 ^ v95)) >> 3);
            goto LABEL_158;
          }
        }
      }

      if (v94 < v124 && *v92 == *v94)
      {
        v92 = (v92 + 4);
        v94 += 2;
      }

      if (v94 < v122 && *v92 == *v94)
      {
        v92 = (v92 + 2);
        ++v94;
      }

      if (v94 < a5 && *v92 == *v94)
      {
        v94 = (v94 + 1);
      }

      v99 = v94 - v80;
      goto LABEL_158;
    }

    v81 = v22 + v21;
    v82 = (v81 + v79);
    if (&v24[a4 - v81] >= a5)
    {
      v83 = a5;
    }

    else
    {
      v83 = &v80[v24 - v82];
    }

    if (v83 - 7 <= v80)
    {
      v85 = (v22 + v21 + v79);
      v86 = a4 + v79;
LABEL_127:
      v22 = v128;
      if (v86 < v83 - 3 && *v85 == *v86)
      {
        ++v85;
        v86 += 4;
      }

      if (v86 < v83 - 1 && *v85 == *v86)
      {
        v85 = (v85 + 2);
        v86 += 2;
      }

      if (v86 < v83 && *v85 == *v86)
      {
        ++v86;
      }

      v91 = v86 - v80;
      v71 = v127;
      goto LABEL_150;
    }

    if (*v82 == *v80)
    {
      v84 = 0;
      v85 = (v116 + v79 + v21);
      v86 = v119 + v79;
      while (v86 < v83 - 7)
      {
        v88 = *v85;
        v85 += 2;
        v87 = v88;
        v90 = *v86;
        v86 += 8;
        v89 = v90;
        v84 += 8;
        if (v87 != v90)
        {
          v91 = v84 + (__clz(__rbit64(v89 ^ v87)) >> 3);
          v71 = v127;
          goto LABEL_149;
        }
      }

      goto LABEL_127;
    }

    v91 = __clz(__rbit64(*v80 ^ *v82)) >> 3;
LABEL_149:
    v22 = v128;
LABEL_150:
    if (&v82[v91] != v24)
    {
      goto LABEL_172;
    }

    v100 = &v80[v91];
    if (v78 <= &v80[v91])
    {
      v103 = (v8 + v23);
      v102 = &v80[v91];
LABEL_160:
      if (v102 < v124 && *v103 == *v102)
      {
        ++v103;
        v102 += 4;
      }

      if (v102 < v122 && *v103 == *v102)
      {
        v103 = (v103 + 2);
        v102 += 2;
      }

      if (v102 < a5 && *v103 == *v102)
      {
        ++v102;
      }

      v108 = v102 - v100;
      goto LABEL_171;
    }

    if (*v120 == *v100)
    {
      v101 = 0;
      v102 = v119 + v91 + v79;
      v103 = (v8 + 8 + v23);
      while (v102 < v78)
      {
        v105 = *v103;
        v103 += 2;
        v104 = v105;
        v107 = *v102;
        v102 += 8;
        v106 = v107;
        v101 += 8;
        if (v104 != v107)
        {
          v108 = v101 + (__clz(__rbit64(v106 ^ v104)) >> 3);
          goto LABEL_171;
        }
      }

      goto LABEL_160;
    }

    v108 = __clz(__rbit64(*v100 ^ *v120)) >> 3;
LABEL_171:
    v91 += v108;
LABEL_172:
    v109 = v91 + v79;
    if (v91 + v79 + v21 >= v23)
    {
      v81 = v8 + v21;
    }

LABEL_174:
    if (v109 > v31)
    {
      if (v109 > v74 - v21)
      {
        v74 = v21 + v109;
      }

      v110 = (a1 + 8 * result);
      *v110 = v126 - v21;
      v110[1] = v109;
      result = (result + 1);
      v111 = v109 > 0x1000 || a4 + v109 == a5;
      v31 = v109;
      if (v111)
      {
        goto LABEL_104;
      }
    }

    v112 = (v71 + 8 * (v21 & v130));
    if (*(v81 + v109) < *(a4 + v109))
    {
      break;
    }

    *v73 = v21;
    if (v21 <= v129)
    {
      v73 = &v132;
      goto LABEL_104;
    }

    v73 = (v71 + 8 * (v21 & v130));
    v76 = v109;
LABEL_186:
    if (--v77)
    {
      v21 = *v112;
      if (*v112 >= v131)
      {
        continue;
      }
    }

    goto LABEL_104;
  }

  *v72 = v21;
  if (v21 > v129)
  {
    v72 = v112 + 1;
    v75 = v109;
    ++v112;
    goto LABEL_186;
  }

  v72 = &v132;
LABEL_104:
  *v73 = 0;
  *v72 = 0;
  *(a2 + 44) = v74 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v18 = a4 - v8;
  v19 = a4 - v8;
  if (v9 < a4 - v8)
  {
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 6, 1) + v9;
    }

    while (v9 < v18);
    v8 = *(a2 + 8);
    v19 = a4 - v8;
  }

  *(a2 + 44) = v18;
  if (*(a2 + 260) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 260);
  }

  v114 = *(a2 + 252);
  v121 = *(a2 + 96);
  v118 = (0xCF1BBCDCBF9B0000 * *a4) >> -*(a2 + 248);
  v21 = *(v121 + 4 * v118);
  v127 = *(a2 + 112);
  v117 = -1 << (*(a2 + 244) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v130 = ~v117;
  v25 = v19 + v117 + 1;
  if (v19 < ~v117)
  {
    v25 = 0;
  }

  v129 = v25;
  v26 = 1 << *(a2 + 240);
  v27 = v19 - *(a2 + 28) > v26 && *(a2 + 40) == 0;
  v120 = (v8 + v23);
  v28 = v19 - v26;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v131 = v30;
  v132 = 0;
  v31 = (a8 - 1);
  v128 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = a4 + 4;
    v33 = a5 - 7;
    v123 = a5 - 1;
    v125 = a5 - 3;
    v115 = a4 + 12;
    v113 = v22 + 12;
    v34 = a7;
    while (1)
    {
      if (v34 == 3)
      {
        v35 = *a6 - 1;
      }

      else
      {
        v35 = a6[v34];
      }

      v36 = v19 - v35;
      if (v35 - 1 < v19 - v23)
      {
        if (v36 < v29 || *a4 != *(a4 - v35))
        {
          goto LABEL_51;
        }

        v38 = -v35;
        v39 = &v32[-v35];
        if (v33 > v32)
        {
          if (*v39 == *v32)
          {
            v40 = 0;
            v41 = a4 + 6;
            v39 = &v115[v38];
            while (v41 < v33)
            {
              v43 = *v39;
              v39 += 8;
              v42 = v43;
              v45 = *v41;
              v41 += 4;
              v44 = v45;
              v40 += 8;
              if (v42 != v45)
              {
                v46 = v40 + (__clz(__rbit64(v44 ^ v42)) >> 3);
                goto LABEL_64;
              }
            }

LABEL_53:
            if (v41 < v125 && *v39 == *v41)
            {
              v39 += 4;
              v41 += 2;
            }

            if (v41 < v123 && *v39 == *v41)
            {
              v39 += 2;
              ++v41;
            }

            if (v41 < a5 && *v39 == *v41)
            {
              LODWORD(v41) = v41 + 1;
            }

            LODWORD(v46) = v41 - v32;
          }

          else
          {
            v46 = __clz(__rbit64(*v32 ^ *v39)) >> 3;
          }

LABEL_64:
          v60 = v46 + 4;
          goto LABEL_99;
        }

        v41 = a4 + 2;
        goto LABEL_53;
      }

      v47 = v35 - 1 >= v19 - v29 || (v36 - v23) > 0xFFFFFFFC;
      if (v47 || (v48 = (v22 + v36), *a4 != *v48))
      {
LABEL_51:
        v60 = 0;
        goto LABEL_99;
      }

      v49 = (v48 + 1);
      v50 = a4 + v24 - v48;
      v51 = v50 >= a5 ? a5 : v50;
      if (v51 - 7 <= v32)
      {
        break;
      }

      if (*v49 == *v32)
      {
        v52 = 0;
        v53 = (v113 + v36);
        v54 = a4 + 6;
        while (v54 < (v51 - 7))
        {
          v56 = *v53;
          v53 += 4;
          v55 = v56;
          v58 = *v54;
          v54 += 4;
          v57 = v58;
          v52 += 8;
          if (v55 != v58)
          {
            v59 = v52 + (__clz(__rbit64(v57 ^ v55)) >> 3);
            goto LABEL_77;
          }
        }

        goto LABEL_66;
      }

      v59 = __clz(__rbit64(*v32 ^ *v49)) >> 3;
LABEL_77:
      v22 = v128;
LABEL_78:
      if (v49 + v59 == v24)
      {
        v61 = &v32[v59];
        if (v33 > &v32[v59])
        {
          if (*v120 == *v61)
          {
            v62 = 0;
            v63 = &v115[v59];
            v64 = (v23 + v8 + 8);
            while (v63 < v33)
            {
              v66 = *v64;
              v64 += 4;
              v65 = v66;
              v68 = *v63;
              v63 += 4;
              v67 = v68;
              v62 += 8;
              if (v65 != v68)
              {
                v69 = v62 + (__clz(__rbit64(v67 ^ v65)) >> 3);
                goto LABEL_97;
              }
            }

LABEL_86:
            if (v63 < v125 && *v64 == *v63)
            {
              v64 += 2;
              v63 += 2;
            }

            if (v63 < v123 && *v64 == *v63)
            {
              ++v64;
              ++v63;
            }

            if (v63 < a5 && *v64 == *v63)
            {
              LODWORD(v63) = v63 + 1;
            }

            LODWORD(v69) = v63 - v61;
          }

          else
          {
            v69 = __clz(__rbit64(*v61 ^ *v120)) >> 3;
          }

LABEL_97:
          LODWORD(v59) = v69 + v59;
          goto LABEL_98;
        }

        v64 = (v8 + v23);
        v63 = &v32[v59];
        goto LABEL_86;
      }

LABEL_98:
      v60 = v59 + 4;
LABEL_99:
      if (v31 < v60)
      {
        v70 = (a1 + 8 * result);
        *v70 = v34 - a7;
        v70[1] = v60;
        result = (result + 1);
        if (v60 > v20)
        {
          return result;
        }

        v31 = v60;
        if (a4 + v60 == a5)
        {
          return result;
        }
      }

      if (++v34 == a7 + 3)
      {
        goto LABEL_103;
      }
    }

    v53 = v49;
    v54 = a4 + 2;
LABEL_66:
    v22 = v128;
    if (v54 < (v51 - 3) && *v53 == *v54)
    {
      v53 += 2;
      v54 += 2;
    }

    if (v54 < (v51 - 1) && *v53 == *v54)
    {
      ++v53;
      ++v54;
    }

    if (v54 < v51 && *v53 == *v54)
    {
      v54 = (v54 + 1);
    }

    v59 = v54 - v32;
    goto LABEL_78;
  }

LABEL_103:
  v71 = v127;
  v72 = (v127 + 8 * (v19 & ~v117));
  v73 = v72 + 1;
  v74 = v19 + 9;
  *(v121 + 4 * v118) = v19;
  if (v21 < v131)
  {
    goto LABEL_104;
  }

  v75 = 0;
  v76 = 0;
  v77 = 1 << v114;
  v78 = a5 - 7;
  v122 = a5 - 1;
  v124 = a5 - 3;
  v126 = v19 + 2;
  v119 = a4 + 1;
  v116 = v22 + 8;
  while (1)
  {
    if (v75 >= v76)
    {
      v79 = v76;
    }

    else
    {
      v79 = v75;
    }

    v80 = a4 + v79;
    if (v79 + v21 >= v23)
    {
      v81 = v8 + v21;
      v92 = (v81 + v79);
      if (v78 <= v80)
      {
        v94 = (a4 + v79);
      }

      else
      {
        if (*v92 != *v80)
        {
          v99 = __clz(__rbit64(*v80 ^ *v92)) >> 3;
LABEL_158:
          v109 = v99 + v79;
          goto LABEL_174;
        }

        v93 = 0;
        v92 = (v8 + 8 + v79 + v21);
        v94 = (v119 + v79);
        while (v94 < v78)
        {
          v96 = *v92++;
          v95 = v96;
          v98 = *v94;
          v94 += 4;
          v97 = v98;
          v93 += 8;
          if (v95 != v98)
          {
            v99 = v93 + (__clz(__rbit64(v97 ^ v95)) >> 3);
            goto LABEL_158;
          }
        }
      }

      if (v94 < v124 && *v92 == *v94)
      {
        v92 = (v92 + 4);
        v94 += 2;
      }

      if (v94 < v122 && *v92 == *v94)
      {
        v92 = (v92 + 2);
        ++v94;
      }

      if (v94 < a5 && *v92 == *v94)
      {
        v94 = (v94 + 1);
      }

      v99 = v94 - v80;
      goto LABEL_158;
    }

    v81 = v22 + v21;
    v82 = (v81 + v79);
    if (&v24[a4 - v81] >= a5)
    {
      v83 = a5;
    }

    else
    {
      v83 = &v80[v24 - v82];
    }

    if (v83 - 7 <= v80)
    {
      v85 = (v22 + v21 + v79);
      v86 = a4 + v79;
LABEL_127:
      v22 = v128;
      if (v86 < v83 - 3 && *v85 == *v86)
      {
        ++v85;
        v86 += 4;
      }

      if (v86 < v83 - 1 && *v85 == *v86)
      {
        v85 = (v85 + 2);
        v86 += 2;
      }

      if (v86 < v83 && *v85 == *v86)
      {
        ++v86;
      }

      v91 = v86 - v80;
      v71 = v127;
      goto LABEL_150;
    }

    if (*v82 == *v80)
    {
      v84 = 0;
      v85 = (v116 + v79 + v21);
      v86 = v119 + v79;
      while (v86 < v83 - 7)
      {
        v88 = *v85;
        v85 += 2;
        v87 = v88;
        v90 = *v86;
        v86 += 8;
        v89 = v90;
        v84 += 8;
        if (v87 != v90)
        {
          v91 = v84 + (__clz(__rbit64(v89 ^ v87)) >> 3);
          v71 = v127;
          goto LABEL_149;
        }
      }

      goto LABEL_127;
    }

    v91 = __clz(__rbit64(*v80 ^ *v82)) >> 3;
LABEL_149:
    v22 = v128;
LABEL_150:
    if (&v82[v91] != v24)
    {
      goto LABEL_172;
    }

    v100 = &v80[v91];
    if (v78 <= &v80[v91])
    {
      v103 = (v8 + v23);
      v102 = &v80[v91];
LABEL_160:
      if (v102 < v124 && *v103 == *v102)
      {
        ++v103;
        v102 += 4;
      }

      if (v102 < v122 && *v103 == *v102)
      {
        v103 = (v103 + 2);
        v102 += 2;
      }

      if (v102 < a5 && *v103 == *v102)
      {
        ++v102;
      }

      v108 = v102 - v100;
      goto LABEL_171;
    }

    if (*v120 == *v100)
    {
      v101 = 0;
      v102 = v119 + v91 + v79;
      v103 = (v8 + 8 + v23);
      while (v102 < v78)
      {
        v105 = *v103;
        v103 += 2;
        v104 = v105;
        v107 = *v102;
        v102 += 8;
        v106 = v107;
        v101 += 8;
        if (v104 != v107)
        {
          v108 = v101 + (__clz(__rbit64(v106 ^ v104)) >> 3);
          goto LABEL_171;
        }
      }

      goto LABEL_160;
    }

    v108 = __clz(__rbit64(*v100 ^ *v120)) >> 3;
LABEL_171:
    v91 += v108;
LABEL_172:
    v109 = v91 + v79;
    if (v91 + v79 + v21 >= v23)
    {
      v81 = v8 + v21;
    }

LABEL_174:
    if (v109 > v31)
    {
      if (v109 > v74 - v21)
      {
        v74 = v21 + v109;
      }

      v110 = (a1 + 8 * result);
      *v110 = v126 - v21;
      v110[1] = v109;
      result = (result + 1);
      v111 = v109 > 0x1000 || a4 + v109 == a5;
      v31 = v109;
      if (v111)
      {
        goto LABEL_104;
      }
    }

    v112 = (v71 + 8 * (v21 & v130));
    if (*(v81 + v109) < *(a4 + v109))
    {
      break;
    }

    *v73 = v21;
    if (v21 <= v129)
    {
      v73 = &v132;
      goto LABEL_104;
    }

    v73 = (v71 + 8 * (v21 & v130));
    v76 = v109;
LABEL_186:
    if (--v77)
    {
      v21 = *v112;
      if (*v112 >= v131)
      {
        continue;
      }
    }

    goto LABEL_104;
  }

  *v72 = v21;
  if (v21 > v129)
  {
    v72 = v112 + 1;
    v75 = v109;
    ++v112;
    goto LABEL_186;
  }

  v72 = &v132;
LABEL_104:
  *v73 = 0;
  *v72 = 0;
  *(a2 + 44) = v74 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_3(_DWORD *a1, uint64_t a2, unsigned int *a3, int *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 <= a4)
  {
    v17 = a1;
    v18 = a4 - v8;
    v19 = a4 - v8;
    if (v9 < a4 - v8)
    {
      do
      {
        LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v18, 3, 0) + v9;
      }

      while (v9 < v18);
      v8 = *(a2 + 8);
      v19 = a4 - v8;
      v17 = a1;
    }

    *(a2 + 44) = v18;
    if (*(a2 + 260) >= 0xFFFu)
    {
      v20 = 4095;
    }

    else
    {
      v20 = *(a2 + 260);
    }

    v21 = *a4;
    v161 = *(a2 + 252);
    v163 = *(a2 + 96);
    v162 = (-1640531535 * *a4) >> -*(a2 + 248);
    v22 = *(v163 + 4 * v162);
    v166 = *(a2 + 112);
    v160 = -1 << (*(a2 + 244) - 1);
    v23 = *(a2 + 24);
    v24 = *(a2 + 28);
    v165 = (v8 + v23);
    v25 = v19 + v160 + 1;
    if (v19 < ~v160)
    {
      v25 = 0;
    }

    v173 = v25;
    v26 = 1 << *(a2 + 240);
    if (v19 - v24 > v26 && *(a2 + 40) == 0)
    {
      v24 = v19 - v26;
    }

    if (v24 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v24;
    }

    v175 = v28;
    v178[0] = 0;
    v29 = *(a2 + 232);
    v30 = *(v29 + 8);
    v177 = *v29;
    v31 = *(v29 + 28);
    v32 = v24 - (*v29 - v30);
    v157 = *(v29 + 248);
    v158 = v29;
    v154 = *v29 - v30;
    v33 = v154 + (-1 << (*(v29 + 244) - 1)) + 1;
    if (*v29 - v30 - v31 <= ~(-1 << (*(v29 + 244) - 1)))
    {
      v33 = *(v29 + 28);
    }

    v169 = ~(-1 << (*(v29 + 244) - 1));
    v170 = v33;
    v34 = (a8 - 1);
    v168 = *(v29 + 8);
    v171 = v23;
    v164 = v20;
    v159 = *(v29 + 28);
    v167 = v24 - (*v29 - v30);
    v10 = 0;
    if (a7 <= 0xFFFFFFFC)
    {
      v35 = v19 - v23;
      v36 = v30 - v32;
      v37 = v19 - v31 - v32;
      v38 = a4 + 3;
      v39 = a5 - 7;
      v40 = a5 - 3;
      v41 = a5 - 1;
      v156 = a4 + 11;
      v153 = v23 + v8 + 8;
      for (i = a7; i != a7 + 3; ++i)
      {
        if (i == 3)
        {
          v43 = *a6 - 1;
        }

        else
        {
          v43 = a6[i];
        }

        v44 = v19 - v43;
        if (v43 - 1 >= v35)
        {
          if (v43 - 1 < v37 && (v44 - v23) <= 0xFFFFFFFC)
          {
            v56 = (v36 + v44);
            if (((*v56 ^ v21) & 0xFFFFFF) == 0)
            {
              v58 = (v56 + 3);
              v59 = a4 + v177 - v56;
              if (v59 >= a5)
              {
                v60 = a5;
              }

              else
              {
                v60 = v59;
              }

              if (v60 - 7 <= v38)
              {
                v62 = v58;
                v63 = (a4 + 3);
                goto LABEL_68;
              }

              if (*v58 == *v38)
              {
                v61 = 0;
                v62 = (v36 + 11 + v44);
                v63 = (a4 + 11);
                while (v63 < (v60 - 7))
                {
                  v65 = *v62;
                  v62 += 4;
                  v64 = v65;
                  v67 = *v63;
                  v63 += 4;
                  v66 = v67;
                  v61 += 8;
                  if (v64 != v67)
                  {
                    v68 = v61 + (__clz(__rbit64(v66 ^ v64)) >> 3);
                    v17 = a1;
                    v20 = v164;
                    goto LABEL_79;
                  }
                }

LABEL_68:
                v17 = a1;
                if (v63 < (v60 - 3) && *v62 == *v63)
                {
                  v62 += 2;
                  v63 += 2;
                }

                if (v63 < (v60 - 1) && *v62 == *v63)
                {
                  ++v62;
                  ++v63;
                }

                if (v63 < v60 && *v62 == *v63)
                {
                  v63 = (v63 + 1);
                }

                v20 = v164;
                v68 = v63 - v38;
              }

              else
              {
                v68 = __clz(__rbit64(*v38 ^ *v58)) >> 3;
                v17 = a1;
              }

LABEL_79:
              if (v58 + v68 == v177)
              {
                v69 = &v38[v68];
                if (v39 <= &v38[v68])
                {
                  v72 = v165;
                  v71 = &v38[v68];
                  goto LABEL_87;
                }

                if (*v165 == *v69)
                {
                  v70 = 0;
                  v71 = &v156[v68];
                  v72 = v153;
                  while (v71 < v39)
                  {
                    v74 = *v72;
                    v72 += 4;
                    v73 = v74;
                    v76 = *v71;
                    v71 += 4;
                    v75 = v76;
                    v70 += 8;
                    if (v73 != v76)
                    {
                      v77 = v70 + (__clz(__rbit64(v75 ^ v73)) >> 3);
                      v20 = v164;
                      goto LABEL_98;
                    }
                  }

LABEL_87:
                  if (v71 < v40 && *v72 == *v71)
                  {
                    v72 += 2;
                    v71 += 2;
                  }

                  if (v71 < v41 && *v72 == *v71)
                  {
                    ++v72;
                    ++v71;
                  }

                  if (v71 < a5 && *v72 == *v71)
                  {
                    LODWORD(v71) = v71 + 1;
                  }

                  v20 = v164;
                  LODWORD(v77) = v71 - v69;
                }

                else
                {
                  v77 = __clz(__rbit64(*v69 ^ *v165)) >> 3;
                }

LABEL_98:
                LODWORD(v68) = v77 + v68;
              }

              v57 = v68 + 3;
              v23 = v171;
              goto LABEL_100;
            }
          }
        }

        else if (v44 >= v24 && ((*(a4 - v43) ^ v21) & 0xFFFFFF) == 0)
        {
          v46 = -v43;
          v47 = &v38[-v43];
          if (v39 > v38)
          {
            if (*v47 == *v38)
            {
              v48 = 0;
              v49 = (a4 + 11);
              v47 = &v156[v46];
              while (v49 < v39)
              {
                v51 = *v47;
                v47 += 8;
                v50 = v51;
                v53 = *v49;
                v49 += 4;
                v52 = v53;
                v48 += 8;
                if (v50 != v53)
                {
                  v54 = v48 + (__clz(__rbit64(v52 ^ v50)) >> 3);
                  goto LABEL_65;
                }
              }

LABEL_45:
              if (v49 < v40 && *v47 == *v49)
              {
                v47 += 4;
                v49 += 2;
              }

              if (v49 < v41 && *v47 == *v49)
              {
                v47 += 2;
                ++v49;
              }

              if (v49 < a5 && *v47 == *v49)
              {
                LODWORD(v49) = v49 + 1;
              }

              v23 = v171;
              LODWORD(v54) = v49 - v38;
            }

            else
            {
              v54 = __clz(__rbit64(*v38 ^ *v47)) >> 3;
LABEL_65:
              v23 = v171;
            }

            v57 = v54 + 3;
            goto LABEL_100;
          }

          v49 = (a4 + 3);
          goto LABEL_45;
        }

        v57 = 0;
LABEL_100:
        if (v34 < v57)
        {
          v78 = &v17[2 * v10];
          *v78 = i - a7;
          v78[1] = v57;
          v10 = (v10 + 1);
          if (v57 > v20)
          {
            return v10;
          }

          v34 = v57;
          if (a4 + v57 == a5)
          {
            return v10;
          }
        }
      }
    }

    if (v34 > 2)
    {
      v80 = v166;
    }

    else
    {
      FirstIndexHash3 = ZSTD_insertAndFindFirstIndexHash3(a2, a3, a4);
      v80 = v166;
      if (FirstIndexHash3 < v175)
      {
        v17 = a1;
      }

      else
      {
        v17 = a1;
        if (!((v19 - FirstIndexHash3) >> 18))
        {
          v81 = (v8 + FirstIndexHash3);
          v23 = v171;
          if (a5 - 7 <= a4)
          {
            v84 = a4;
            v82 = v164;
          }

          else
          {
            v82 = v164;
            if (*v81 != *a4)
            {
              v89 = __clz(__rbit64(*a4 ^ *v81)) >> 3;
              goto LABEL_128;
            }

            v83 = 0;
            v81 = (FirstIndexHash3 + v8 + 8);
            v84 = (a4 + 2);
            while (v84 < (a5 - 7))
            {
              v86 = *v81++;
              v85 = v86;
              v88 = *v84;
              v84 += 4;
              v87 = v88;
              v83 += 8;
              if (v85 != v88)
              {
                v89 = v83 + (__clz(__rbit64(v87 ^ v85)) >> 3);
                goto LABEL_128;
              }
            }
          }

          if (v84 < (a5 - 3) && *v81 == *v84)
          {
            v81 = (v81 + 4);
            v84 += 2;
          }

          if (v84 < (a5 - 1) && *v81 == *v84)
          {
            v81 = (v81 + 2);
            ++v84;
          }

          if (v84 < a5 && *v81 == *v84)
          {
            v84 = (v84 + 1);
          }

          v89 = v84 - a4;
LABEL_128:
          if (v89 >= 3)
          {
            *a1 = v19 - FirstIndexHash3 + 2;
            a1[1] = v89;
            if (v89 > v82 || a4 + v89 == a5)
            {
              v91 = v19 + 1;
              v10 = 1;
              goto LABEL_242;
            }

            v10 = 1;
            v34 = v89;
          }

          goto LABEL_135;
        }
      }

      v23 = v171;
    }

LABEL_135:
    v92 = (v80 + 8 * (v19 & ~v160));
    v93 = v19 + 9;
    v94 = 1 << v161;
    *(v163 + 4 * v162) = v19;
    if (v22 < v175)
    {
      *v92 = 0;
      v95 = v168;
      goto LABEL_180;
    }

    v96 = 0;
    v97 = 0;
    v98 = v92 + 1;
    v99 = a5 - 7;
    while (1)
    {
      if (v96 >= v97)
      {
        v100 = v97;
      }

      else
      {
        v100 = v96;
      }

      v101 = v8 + v22;
      v102 = a4 + v100;
      v103 = (v101 + v100);
      if (v99 <= a4 + v100)
      {
        v105 = (a4 + v100);
      }

      else
      {
        if (*v103 != *v102)
        {
          v110 = __clz(__rbit64(*v102 ^ *v103)) >> 3;
          goto LABEL_160;
        }

        v104 = 0;
        v103 = (v8 + 8 + v100 + v22);
        v105 = (a4 + v100 + 8);
        while (v105 < v99)
        {
          v107 = *v103++;
          v106 = v107;
          v109 = *v105;
          v105 += 4;
          v108 = v109;
          v104 += 8;
          if (v106 != v109)
          {
            v110 = v104 + (__clz(__rbit64(v108 ^ v106)) >> 3);
            v80 = v166;
            goto LABEL_160;
          }
        }

        v80 = v166;
      }

      if (v105 < (a5 - 3) && *v103 == *v105)
      {
        v103 = (v103 + 4);
        v105 += 2;
      }

      if (v105 < (a5 - 1) && *v103 == *v105)
      {
        v103 = (v103 + 2);
        ++v105;
      }

      if (v105 < a5 && *v103 == *v105)
      {
        v105 = (v105 + 1);
      }

      v110 = v105 - v102;
LABEL_160:
      v111 = v110 + v100;
      if (v111 > v34)
      {
        if (v111 > v93 - v22)
        {
          v93 = v22 + v111;
        }

        v112 = &v17[2 * v10];
        *v112 = v19 + 2 - v22;
        v112[1] = v111;
        v10 = (v10 + 1);
        if (v111 > 0x1000 || a4 + v111 == a5)
        {
          *v98 = 0;
          *v92 = 0;
          goto LABEL_241;
        }

        v34 = v111;
      }

      v114 = (v80 + 8 * (v22 & ~v160));
      if (*(v101 + v111) < *(a4 + v111))
      {
        *v92 = v22;
        if (v22 > v173)
        {
          v92 = v114 + 1;
          v96 = v111;
          ++v114;
          goto LABEL_173;
        }

        v92 = v178;
LABEL_179:
        *v98 = 0;
        *v92 = 0;
        v95 = v168;
        v23 = v171;
        if (v94)
        {
LABEL_180:
          v115 = *(*(v158 + 96) + 4 * ((-1640531535 * *a4) >> -v157));
          if (v115 > v159)
          {
            v116 = 0;
            v117 = 0;
            v118 = *(v158 + 112);
            v119 = a5 - 7;
            v120 = v19 + 2;
            v176 = v95 + 8;
            v121 = a4 + 2;
            v172 = v23 + v8 + 8;
            v122 = v8 + v167;
            while (1)
            {
              if (v116 >= v117)
              {
                v123 = v117;
              }

              else
              {
                v123 = v116;
              }

              v124 = v95 + v115;
              v125 = a4 + v123;
              v126 = (v124 + v123);
              if (&v177[a4 - v124] >= a5)
              {
                v127 = a5;
              }

              else
              {
                v127 = &v177[a4 - v124];
              }

              if (v127 - 7 <= v125)
              {
                v129 = (v124 + v123);
                v130 = (a4 + v123);
              }

              else
              {
                if (*v126 != *v125)
                {
                  v135 = __clz(__rbit64(*v125 ^ *v126)) >> 3;
                  v136 = a1;
                  goto LABEL_206;
                }

                v128 = 0;
                v129 = (v176 + v123 + v115);
                v130 = (v121 + v123);
                while (v130 < (v127 - 7))
                {
                  v132 = *v129;
                  v129 += 4;
                  v131 = v132;
                  v134 = *v130;
                  v130 += 4;
                  v133 = v134;
                  v128 += 8;
                  if (v131 != v134)
                  {
                    v135 = v128 + (__clz(__rbit64(v133 ^ v131)) >> 3);
                    v136 = a1;
                    v95 = v168;
                    goto LABEL_206;
                  }
                }
              }

              v136 = a1;
              if (v130 < (v127 - 3) && *v129 == *v130)
              {
                v129 += 2;
                v130 += 2;
              }

              if (v130 < (v127 - 1) && *v129 == *v130)
              {
                ++v129;
                ++v130;
              }

              if (v130 < v127 && *v129 == *v130)
              {
                v130 = (v130 + 1);
              }

              v95 = v168;
              v135 = v130 - v125;
LABEL_206:
              if (v126 + v135 == v177)
              {
                v137 = &v125[v135];
                if (v119 > v137)
                {
                  if (*v165 == *v137)
                  {
                    v138 = 0;
                    v139 = (v121 + v135 + v123);
                    v140 = v172;
                    while (v139 < v119)
                    {
                      v142 = *v140;
                      v140 += 4;
                      v141 = v142;
                      v144 = *v139;
                      v139 += 4;
                      v143 = v144;
                      v138 += 8;
                      if (v141 != v144)
                      {
                        v145 = v138 + (__clz(__rbit64(v143 ^ v141)) >> 3);
                        goto LABEL_225;
                      }
                    }

LABEL_214:
                    if (v139 < (a5 - 3) && *v140 == *v139)
                    {
                      v140 += 2;
                      v139 += 2;
                    }

                    if (v139 < (a5 - 1) && *v140 == *v139)
                    {
                      ++v140;
                      ++v139;
                    }

                    if (v139 < a5 && *v140 == *v139)
                    {
                      v139 = (v139 + 1);
                    }

                    v145 = v139 - v137;
                  }

                  else
                  {
                    v145 = __clz(__rbit64(*v137 ^ *v165)) >> 3;
                  }

LABEL_225:
                  v135 += v145;
                  goto LABEL_226;
                }

                v140 = v165;
                v139 = v137;
                goto LABEL_214;
              }

LABEL_226:
              v146 = v135 + v123;
              if (v146 + v115 >= v154)
              {
                v124 = v122 + v115;
              }

              if (v146 <= v34)
              {
                goto LABEL_246;
              }

              if (v146 > v93 - (v115 + v167))
              {
                v93 = v115 + v167 + v146;
              }

              v147 = &v136[2 * v10];
              *v147 = v120 - (v115 + v167);
              v147[1] = v146;
              v10 = (v10 + 1);
              if (v146 <= 0x1000)
              {
                v34 = v146;
                if (a4 + v146 != a5)
                {
LABEL_246:
                  if (v115 > v170)
                  {
                    v148 = *(v124 + v146);
                    v149 = *(a4 + v146);
                    v150 = v148 >= v149;
                    v151 = v148 < v149;
                    if (v150)
                    {
                      v117 = v146;
                    }

                    if (!v150)
                    {
                      v116 = v146;
                    }

                    if (--v94)
                    {
                      v115 = *(v118 + 8 * (v115 & v169) + 4 * v151);
                      if (v115 > v159)
                      {
                        continue;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

LABEL_241:
        v91 = v93 - 8;
LABEL_242:
        *(a2 + 44) = v91;
        return v10;
      }

      *v98 = v22;
      if (v22 <= v173)
      {
        v98 = v178;
        goto LABEL_179;
      }

      v98 = (v80 + 8 * (v22 & ~v160));
      v97 = v111;
LABEL_173:
      if (--v94)
      {
        v22 = *v114;
        if (*v114 >= v175)
        {
          continue;
        }
      }

      goto LABEL_179;
    }
  }

  return 0;
}