unint64_t ZSTD_compressBlock_lazy_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 256);
  v11 = v10 - 7;
  v12 = 2 * (v10 > 3);
  v13 = v10 - 4;
  if (v11 < 0xFFFFFFFD)
  {
    v13 = v12;
  }

  v14 = *a3;
  v73 = a3[1];
  v81 = (v8 + v9);
  v15 = *(a1 + 232);
  v17 = *v15;
  v16 = *(v15 + 8);
  v71 = (v16 + *(v15 + 24));
  if (a4 - (v8 + v9) - v71 + *v15)
  {
    v18 = a4;
  }

  else
  {
    v18 = a4 + 1;
  }

  if (v18 < v7)
  {
    v66 = a3;
    v77 = *v15;
    v78 = *off_1E81907F0[v13 + 6];
    v72 = v9 + v16 - v17;
    v74 = v16 - v72;
    v76 = v6 - 32;
    v70 = &a4[a5 - 8];
    v69 = 1 - (v9 + v8);
    v68 = -v8;
    v67 = v17 - v9 - v16 - v8 + 1;
    v82 = *(a1 + 24);
    v79 = *(v15 + 8);
    v75 = *(a1 + 8);
    while (1)
    {
      v20 = v18 + 1;
      v21 = (v18 - v8 - v14 + 1);
      v22 = v16 + v21 - v72;
      if (v21 >= v9)
      {
        v22 = v8 + v21;
      }

      if ((v21 - v9) <= 0xFFFFFFFC && *v22 == *v20)
      {
        if (v21 >= v9)
        {
          v23 = v6;
        }

        else
        {
          v23 = v77;
        }

        v24 = ZSTD_count_2segments((v18 + 5), (v22 + 4), v6, v23, v81) + 4;
      }

      else
      {
        v24 = 0;
      }

      v83[0] = 999999999;
      v25 = v78(a1, v18, v6, v83);
      if (v25 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      if (v26 < 4)
      {
        v18 += ((v18 - v5) >> 8) + 1;
        goto LABEL_76;
      }

      v27 = v25 > v24;
      if (v25 <= v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = v83[0];
      }

      if (v27)
      {
        v20 = v18;
      }

      if (v18 < v7)
      {
        v29 = 0;
        while (1)
        {
          v30 = &v18[v29 + 1];
          v31 = (v68 + v18 - v14 + v29 + 1);
          v32 = v79 + (v67 + v18 - v14 + v29);
          if (v31 >= v82)
          {
            v32 = v75 + v31;
          }

          if ((v69 + v18 - v14 + v29) <= 0xFFFFFFFC && *v32 == *v30)
          {
            v33 = v31 >= v82 ? v6 : v77;
            v34 = ZSTD_count_2segments(&v18[v29 + 5], (v32 + 4), v6, v33, v81);
            if (v34 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v34 + 4) > (3 * v26 + (__clz(v28 + 1) ^ 0xFFFFFFE0) + 2))
            {
              v28 = 0;
              v20 = &v18[v29 + 1];
              v26 = v34 + 4;
            }
          }

          v83[0] = 999999999;
          v35 = v78(a1, &v18[v29 + 1], v6, v83);
          if (v35 < 4 || (4 * v35 - (__clz(LODWORD(v83[0]) + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 5))
          {
            break;
          }

          ++v29;
          v26 = v35;
          v28 = v83[0];
          v20 = v30;
          if (v70 - v18 == v29)
          {
            v20 = &v18[v29];
            v28 = v83[0];
            v26 = v35;
            break;
          }
        }

        v7 = v70;
        v8 = v75;
      }

      if (v28 > 2)
      {
        v36 = v20 - (v28 + v8) + 2;
        v37 = v81;
        if (v82 > v36)
        {
          v37 = v71;
        }

        v38 = v74;
        if (v82 <= v20 - (v28 + v8) + 2)
        {
          v38 = v8;
        }

        if (v20 > v5 && v38 + v36 > v37)
        {
          v39 = (v38 + v36 - 1);
          v40 = v20 - 1;
          while (*v40 == *v39)
          {
            ++v26;
            v41 = (v40 - 1);
            if (v40 > v5)
            {
              --v40;
              v27 = v39-- > v37;
              if (v27)
              {
                continue;
              }
            }

            v20 = (v41 + 1);
            goto LABEL_57;
          }

          v20 = v40 + 1;
        }

LABEL_57:
        v73 = v14;
        v14 = (v28 - 2);
      }

      v42 = v20 - v5;
      v43 = *(a2 + 24);
      if (v20 > v76)
      {
        break;
      }

      *v43 = *v5;
      v47 = *(a2 + 24);
      if (v42 > 0x10)
      {
        v48 = (v47 + 16);
        v49 = v47 + v42;
        v50 = (v5 + 16);
        do
        {
          v51 = *v50++;
          *v48++ = v51;
        }

        while (v48 < v49);
LABEL_69:
        *(a2 + 24) += v42;
        v52 = *(a2 + 8);
        if (v42 >= 0x10000)
        {
          v53 = (v52 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v53;
        }

        goto LABEL_72;
      }

      *(a2 + 24) = v47 + v42;
      v52 = *(a2 + 8);
LABEL_72:
      *(v52 + 4) = v42;
      *v52 = v28 + 1;
      if (v26 - 3 >= 0x10000)
      {
        v54 = (v52 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v54;
      }

      *(v52 + 6) = v26 - 3;
      v55 = v52 + 8;
      *(a2 + 8) = v52 + 8;
      v5 = &v20[v26];
      if (&v20[v26] <= v7)
      {
        v57 = v14;
        v58 = v73;
        LODWORD(v9) = v82;
        while (1)
        {
          v14 = v58;
          v58 = v57;
          v59 = (v5 - v8 - v14);
          v60 = v74;
          if (v59 >= v82)
          {
            v60 = v8;
          }

          if (v59 - v82 > 0xFFFFFFFC)
          {
            break;
          }

          v61 = v60 + v59;
          if (*v61 != *v5)
          {
            break;
          }

          if (v59 >= v82)
          {
            v62 = v6;
          }

          else
          {
            v62 = v77;
          }

          v63 = ZSTD_count_2segments(v5 + 2, (v61 + 4), v6, v62, v81);
          if (v5 <= v76)
          {
            **(a2 + 24) = *v5;
            v55 = *(a2 + 8);
          }

          *(v55 + 4) = 0;
          *v55 = 1;
          if (v63 + 1 >= 0x10000)
          {
            v64 = (v55 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v64;
          }

          *(v55 + 6) = v63 + 1;
          v55 += 8;
          v5 += v63 + 4;
          *(a2 + 8) = v55;
          v57 = v14;
          v56 = v58;
          v18 = v5;
          if (v5 > v7)
          {
            goto LABEL_77;
          }
        }

        v56 = v14;
        v14 = v57;
        v18 = v5;
        goto LABEL_77;
      }

      v18 = &v20[v26];
LABEL_76:
      LODWORD(v9) = v82;
      v56 = v73;
LABEL_77:
      v73 = v56;
      v16 = v79;
      if (v18 >= v7)
      {
        a3 = v66;
        goto LABEL_94;
      }
    }

    if (v5 <= v76)
    {
      v44 = (v43 + v76 - v5);
      do
      {
        v45 = *v5;
        v5 += 16;
        *v43++ = v45;
      }

      while (v43 < v44);
      v5 = (v6 - 32);
      v43 = v44;
    }

    while (v5 < v20)
    {
      v46 = *v5++;
      *v43 = v46;
      v43 = (v43 + 1);
    }

    goto LABEL_69;
  }

LABEL_94:
  *a3 = v14;
  a3[1] = v73;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_greedy_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 256);
  v10 = v9 - 7;
  v11 = 2 * (v9 > 3);
  v12 = v9 - 4;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v11;
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = *(a1 + 232);
  v16 = *(v15 + 8);
  v65 = (v7 + v8);
  v58 = v16 + *(v15 + 24);
  if (a4 - (v7 + v8) - v58 + *v15)
  {
    v17 = a4;
  }

  else
  {
    v17 = a4 + 1;
  }

  v66 = &a4[a5 - 8];
  if (v17 < v66)
  {
    v57 = a3;
    v59 = *off_1E81907F0[v12 + 6];
    v61 = v8 + v16 - *v15;
    v63 = *v15;
    v64 = v16 - v61;
    v62 = *(v15 + 8);
    while (1)
    {
      v19 = v17 + 1;
      v20 = (v17 - v7 - v13 + 1);
      v21 = v16 + v20 - v61;
      if (v20 >= v8)
      {
        v21 = v7 + v20;
      }

      if ((v20 - v8) <= 0xFFFFFFFC && *v21 == *v19)
      {
        break;
      }

      v67 = 999999999;
      v25 = v59(a1, v17, v6, &v67);
      if (v25)
      {
        v19 = v17;
        v24 = v67;
      }

      else
      {
        v24 = 0;
      }

      if (v25 > 3)
      {
        if (v67 >= 3)
        {
          v26 = v17 - (v67 + v7) + 2;
          v27 = v7 + v8;
          if (v8 > v26)
          {
            v27 = v58;
          }

          v28 = v64;
          if (v8 <= v17 - (v67 + v7) + 2)
          {
            v28 = v7;
          }

          if (v17 <= v5 || v28 + v26 <= v27)
          {
            v31 = (v6 - 32);
          }

          else
          {
            v29 = (v28 + v26 - 1);
            v30 = v19 - 1;
            v31 = (v6 - 32);
            while (*v30 == *v29)
            {
              ++v25;
              v32 = (v30 - 1);
              if (v30 > v5)
              {
                --v30;
                if (v29-- > v27)
                {
                  continue;
                }
              }

              v19 = (v32 + 1);
              goto LABEL_36;
            }

            v19 = v30 + 1;
          }

LABEL_36:
          v14 = v13;
          v13 = (v24 - 2);
LABEL_37:
          v34 = v19 - v5;
          v35 = *(a2 + 24);
          if (v19 <= v31)
          {
            *v35 = *v5;
            v39 = *(a2 + 24);
            if (v34 > 0x10)
            {
              v40 = (v39 + 16);
              v41 = v39 + v34;
              v42 = (v5 + 16);
              do
              {
                v43 = *v42++;
                *v40++ = v43;
              }

              while (v40 < v41);
              goto LABEL_48;
            }

            *(a2 + 24) = v39 + v34;
            v44 = *(a2 + 8);
          }

          else
          {
            if (v5 <= v31)
            {
              v36 = (v35 + v31 - v5);
              do
              {
                v37 = *v5;
                v5 += 16;
                *v35++ = v37;
              }

              while (v35 < v36);
              v5 = v31;
              v35 = v36;
            }

            while (v5 < v19)
            {
              v38 = *v5++;
              *v35 = v38;
              v35 = (v35 + 1);
            }

LABEL_48:
            *(a2 + 24) += v34;
            v44 = *(a2 + 8);
            if (v34 >= 0x10000)
            {
              v45 = (v44 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v45;
            }
          }

          *(v44 + 4) = v34;
          *v44 = v24 + 1;
          if (v25 - 3 >= 0x10000)
          {
            v46 = (v44 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v46;
          }

          *(v44 + 6) = v25 - 3;
          v47 = v44 + 8;
          *(a2 + 8) = v44 + 8;
          v5 = &v19[v25];
          if (&v19[v25] <= v66)
          {
            v48 = v13;
            v49 = v14;
            while (1)
            {
              v13 = v49;
              v49 = v48;
              v50 = (v5 - v7 - v13);
              v51 = v64;
              if (v50 >= v8)
              {
                v51 = v7;
              }

              if ((v50 - v8) > 0xFFFFFFFC)
              {
                break;
              }

              v52 = v51 + v50;
              if (*v52 != *v5)
              {
                break;
              }

              if (v50 >= v8)
              {
                v53 = v6;
              }

              else
              {
                v53 = v63;
              }

              v54 = ZSTD_count_2segments(v5 + 2, (v52 + 4), v6, v53, v65);
              if (v5 <= v6 - 32)
              {
                **(a2 + 24) = *v5;
                v47 = *(a2 + 8);
              }

              *(v47 + 4) = 0;
              *v47 = 1;
              if (v54 + 1 >= 0x10000)
              {
                v55 = (v47 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v55;
              }

              *(v47 + 6) = v54 + 1;
              v47 += 8;
              v5 += v54 + 4;
              *(a2 + 8) = v47;
              v48 = v13;
              v14 = v49;
              v17 = v5;
              if (v5 > v66)
              {
                goto LABEL_70;
              }
            }

            v14 = v13;
            v13 = v48;
          }

          v17 = v5;
          goto LABEL_70;
        }

LABEL_33:
        v31 = (v6 - 32);
        goto LABEL_37;
      }

      v17 += ((v17 - v5) >> 8) + 1;
LABEL_70:
      v16 = v62;
      if (v17 >= v66)
      {
        a3 = v57;
        goto LABEL_72;
      }
    }

    if (v20 >= v8)
    {
      v22 = v6;
    }

    else
    {
      v22 = v63;
    }

    v23 = ZSTD_count_2segments((v17 + 5), (v21 + 4), v6, v22, v65);
    v24 = 0;
    v25 = v23 + 4;
    goto LABEL_33;
  }

LABEL_72:
  *a3 = v13;
  a3[1] = v14;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_dedicatedDictSearch(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = (v7 + v8);
  v10 = *(a1 + 256);
  v11 = v10 - 7;
  v12 = 2 * (v10 > 3);
  v13 = v10 - 4;
  if (v11 < 0xFFFFFFFD)
  {
    v13 = v12;
  }

  v15 = *a3;
  LODWORD(i) = a3[1];
  v16 = *(a1 + 232);
  v17 = *(v16 + 8);
  v72 = (v17 + *(v16 + 24));
  if (a4 - v9 - v72 + *v16)
  {
    v18 = a4;
  }

  else
  {
    v18 = a4 + 1;
  }

  v82 = &a4[a5 - 8];
  if (v18 < v82)
  {
    v71 = a3;
    v78 = *off_1E81907F0[v13 + 9];
    v79 = *(v16 + 8);
    v77 = v8 + v17 - *v16;
    v75 = v17 - v77;
    v76 = *v16;
    v73 = (v7 + v8);
    v81 = *(a1 + 24);
    while (1)
    {
      v20 = v18 + 1;
      v21 = (v18 - v7 - v15 + 1);
      v22 = v17 + v21 - v77;
      if (v21 >= v8)
      {
        v22 = v7 + v21;
      }

      v74 = i;
      if ((v21 - v8) <= 0xFFFFFFFC && *v22 == *v20)
      {
        v23 = v21 >= v8 ? v6 : v76;
        v24 = ZSTD_count_2segments((v18 + 5), (v22 + 4), v6, v23, v9) + 4;
      }

      else
      {
        v24 = 0;
      }

      v83 = 999999999;
      v25 = v78(a1, v18, v6, &v83);
      v26 = v25 <= v24 ? v24 : v25;
      if (v26 >= 4)
      {
        break;
      }

      v18 += ((v18 - v5) >> 8) + 1;
      v9 = v73;
      LODWORD(i) = v74;
LABEL_106:
      v17 = v79;
      if (v18 >= v82)
      {
        a3 = v71;
        goto LABEL_108;
      }
    }

    v27 = v25 > v24;
    if (v25 <= v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = v83;
    }

    if (v27)
    {
      v20 = v18;
    }

    v8 = v20;
    v29 = v28;
    v30 = v26;
    if (v18 < v82)
    {
      while (1)
      {
        v8 = (v18 + 1);
        v31 = (v18 + 1 - v7 - v15);
        v32 = v79 + v31 - v77;
        if (v31 >= v81)
        {
          v32 = v7 + v31;
        }

        if (v31 - v81 <= 0xFFFFFFFC && *v32 == *v8)
        {
          v33 = v31 >= v81 ? v6 : v76;
          v34 = ZSTD_count_2segments((v18 + 5), (v32 + 4), v6, v33, v73);
          v35 = 3 * v26 + (__clz(v28 + 1) ^ 0xFFFFFFE0) + 2;
          if (v34 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v34 + 4) > v35)
          {
            v28 = 0;
            v20 = v18 + 1;
            v26 = v34 + 4;
          }
        }

        v83 = 999999999;
        v30 = v78(a1, v18 + 1, v6, &v83);
        if (v30 < 4 || (v29 = v83, (4 * v30 - (__clz(v83 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 5)))
        {
          if (v8 >= v82)
          {
            break;
          }

          v8 = (v18 + 2);
          v37 = (v18 + 2 - v7 - v15);
          v38 = v79 + v37 - v77;
          if (v37 >= v81)
          {
            v38 = v7 + v37;
          }

          if (v37 - v81 <= 0xFFFFFFFC && *v38 == *v8)
          {
            v39 = v37 >= v81 ? v6 : v76;
            v40 = ZSTD_count_2segments(v18 + 3, (v38 + 4), v6, v39, v73);
            if (v40 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 2) < 4 * (v40 + 4))
            {
              v28 = 0;
              v20 = v18 + 2;
              v26 = v40 + 4;
            }
          }

          v83 = 999999999;
          v30 = v78(a1, v18 + 2, v6, &v83);
          if (v30 < 4)
          {
            break;
          }

          v29 = v83;
          if ((4 * v30 - (__clz(v83 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 8))
          {
            break;
          }
        }

        v18 = v8;
        v26 = v30;
        v28 = v29;
        v20 = v8;
        if (v8 >= v82)
        {
          goto LABEL_58;
        }
      }

      v8 = v20;
      v29 = v28;
      v30 = v26;
    }

LABEL_58:
    if (v29 <= 2)
    {
      v9 = v73;
      v44 = (v6 - 32);
    }

    else
    {
      v41 = v8 - (v29 + v7) + 2;
      v42 = v72;
      v9 = v73;
      if (v81 <= v41)
      {
        v42 = v73;
      }

      v43 = v75;
      v44 = (v6 - 32);
      if (v81 <= v8 - (v29 + v7) + 2)
      {
        v43 = v7;
      }

      if (v8 > v5 && v43 + v41 > v42)
      {
        v45 = (v43 + v41 - 1);
        v46 = (v8 - 1);
        while (*v46 == *v45)
        {
          ++v30;
          v47 = v46 - 1;
          if (v46 > v5)
          {
            --v46;
            v27 = v45-- > v42;
            if (v27)
            {
              continue;
            }
          }

          v8 = (v47 + 1);
          goto LABEL_72;
        }

        v8 = (v46 + 1);
      }

LABEL_72:
      v74 = v15;
      v15 = (v29 - 2);
    }

    v48 = v8 - v5;
    v49 = *(a2 + 24);
    if (v8 <= v44)
    {
      *v49 = *v5;
      v53 = *(a2 + 24);
      if (v48 <= 0x10)
      {
        *(a2 + 24) = v53 + v48;
        v58 = *(a2 + 8);
        i = v74;
        goto LABEL_87;
      }

      v54 = (v53 + 16);
      v55 = v53 + v48;
      v56 = (v5 + 16);
      i = v74;
      do
      {
        v57 = *v56++;
        *v54++ = v57;
      }

      while (v54 < v55);
    }

    else
    {
      if (v5 <= v44)
      {
        v50 = (v49 + v44 - v5);
        do
        {
          v51 = *v5;
          v5 += 16;
          *v49++ = v51;
        }

        while (v49 < v50);
        v5 = v44;
        v49 = v50;
      }

      for (i = v74; v5 < v8; v49 = (v49 + 1))
      {
        v52 = *v5++;
        *v49 = v52;
      }
    }

    *(a2 + 24) += v48;
    v58 = *(a2 + 8);
    if (v48 >= 0x10000)
    {
      v59 = (v58 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v59;
    }

LABEL_87:
    *(v58 + 4) = v48;
    *v58 = v29 + 1;
    if (v30 - 3 >= 0x10000)
    {
      v60 = (v58 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v60;
    }

    *(v58 + 6) = v30 - 3;
    v61 = v58 + 8;
    *(a2 + 8) = v58 + 8;
    v5 = (v8 + v30);
    if (v8 + v30 <= v82)
    {
      v62 = v15;
      v63 = i;
      LODWORD(v8) = v81;
      while (1)
      {
        v15 = v63;
        v63 = v62;
        v64 = (v5 - v7 - v15);
        v65 = v75;
        if (v64 >= v81)
        {
          v65 = v7;
        }

        if (v64 - v81 > 0xFFFFFFFC)
        {
          break;
        }

        v66 = v65 + v64;
        if (*v66 != *v5)
        {
          break;
        }

        if (v64 >= v81)
        {
          v67 = v6;
        }

        else
        {
          v67 = v76;
        }

        v68 = ZSTD_count_2segments(v5 + 2, (v66 + 4), v6, v67, v9);
        if (v5 <= v6 - 32)
        {
          **(a2 + 24) = *v5;
          v61 = *(a2 + 8);
        }

        *(v61 + 4) = 0;
        *v61 = 1;
        if (v68 + 1 >= 0x10000)
        {
          v69 = (v61 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v69;
        }

        *(v61 + 6) = v68 + 1;
        v61 += 8;
        v5 += v68 + 4;
        *(a2 + 8) = v61;
        v62 = v15;
        LODWORD(i) = v63;
        v18 = v5;
        if (v5 > v82)
        {
          goto LABEL_106;
        }
      }

      LODWORD(i) = v15;
      v15 = v62;
      v18 = v5;
    }

    else
    {
      v18 = (v8 + v30);
      LODWORD(v8) = v81;
    }

    goto LABEL_106;
  }

LABEL_108:
  *a3 = v15;
  a3[1] = i;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_lazy_dedicatedDictSearch(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 256);
  v11 = v10 - 7;
  v12 = 2 * (v10 > 3);
  v13 = v10 - 4;
  if (v11 < 0xFFFFFFFD)
  {
    v13 = v12;
  }

  v14 = *a3;
  v73 = a3[1];
  v81 = (v8 + v9);
  v15 = *(a1 + 232);
  v17 = *v15;
  v16 = *(v15 + 8);
  v71 = (v16 + *(v15 + 24));
  if (a4 - (v8 + v9) - v71 + *v15)
  {
    v18 = a4;
  }

  else
  {
    v18 = a4 + 1;
  }

  if (v18 < v7)
  {
    v66 = a3;
    v77 = *v15;
    v78 = *off_1E81907F0[v13 + 9];
    v72 = v9 + v16 - v17;
    v74 = v16 - v72;
    v76 = v6 - 32;
    v70 = &a4[a5 - 8];
    v69 = 1 - (v9 + v8);
    v68 = -v8;
    v67 = v17 - v9 - v16 - v8 + 1;
    v82 = *(a1 + 24);
    v79 = *(v15 + 8);
    v75 = *(a1 + 8);
    while (1)
    {
      v20 = v18 + 1;
      v21 = (v18 - v8 - v14 + 1);
      v22 = v16 + v21 - v72;
      if (v21 >= v9)
      {
        v22 = v8 + v21;
      }

      if ((v21 - v9) <= 0xFFFFFFFC && *v22 == *v20)
      {
        if (v21 >= v9)
        {
          v23 = v6;
        }

        else
        {
          v23 = v77;
        }

        v24 = ZSTD_count_2segments((v18 + 5), (v22 + 4), v6, v23, v81) + 4;
      }

      else
      {
        v24 = 0;
      }

      v83[0] = 999999999;
      v25 = v78(a1, v18, v6, v83);
      if (v25 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      if (v26 < 4)
      {
        v18 += ((v18 - v5) >> 8) + 1;
        goto LABEL_76;
      }

      v27 = v25 > v24;
      if (v25 <= v24)
      {
        v28 = 0;
      }

      else
      {
        v28 = v83[0];
      }

      if (v27)
      {
        v20 = v18;
      }

      if (v18 < v7)
      {
        v29 = 0;
        while (1)
        {
          v30 = &v18[v29 + 1];
          v31 = (v68 + v18 - v14 + v29 + 1);
          v32 = v79 + (v67 + v18 - v14 + v29);
          if (v31 >= v82)
          {
            v32 = v75 + v31;
          }

          if ((v69 + v18 - v14 + v29) <= 0xFFFFFFFC && *v32 == *v30)
          {
            v33 = v31 >= v82 ? v6 : v77;
            v34 = ZSTD_count_2segments(&v18[v29 + 5], (v32 + 4), v6, v33, v81);
            if (v34 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v34 + 4) > (3 * v26 + (__clz(v28 + 1) ^ 0xFFFFFFE0) + 2))
            {
              v28 = 0;
              v20 = &v18[v29 + 1];
              v26 = v34 + 4;
            }
          }

          v83[0] = 999999999;
          v35 = v78(a1, &v18[v29 + 1], v6, v83);
          if (v35 < 4 || (4 * v35 - (__clz(LODWORD(v83[0]) + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v26 + 5))
          {
            break;
          }

          ++v29;
          v26 = v35;
          v28 = v83[0];
          v20 = v30;
          if (v70 - v18 == v29)
          {
            v20 = &v18[v29];
            v28 = v83[0];
            v26 = v35;
            break;
          }
        }

        v7 = v70;
        v8 = v75;
      }

      if (v28 > 2)
      {
        v36 = v20 - (v28 + v8) + 2;
        v37 = v81;
        if (v82 > v36)
        {
          v37 = v71;
        }

        v38 = v74;
        if (v82 <= v20 - (v28 + v8) + 2)
        {
          v38 = v8;
        }

        if (v20 > v5 && v38 + v36 > v37)
        {
          v39 = (v38 + v36 - 1);
          v40 = v20 - 1;
          while (*v40 == *v39)
          {
            ++v26;
            v41 = (v40 - 1);
            if (v40 > v5)
            {
              --v40;
              v27 = v39-- > v37;
              if (v27)
              {
                continue;
              }
            }

            v20 = (v41 + 1);
            goto LABEL_57;
          }

          v20 = v40 + 1;
        }

LABEL_57:
        v73 = v14;
        v14 = (v28 - 2);
      }

      v42 = v20 - v5;
      v43 = *(a2 + 24);
      if (v20 > v76)
      {
        break;
      }

      *v43 = *v5;
      v47 = *(a2 + 24);
      if (v42 > 0x10)
      {
        v48 = (v47 + 16);
        v49 = v47 + v42;
        v50 = (v5 + 16);
        do
        {
          v51 = *v50++;
          *v48++ = v51;
        }

        while (v48 < v49);
LABEL_69:
        *(a2 + 24) += v42;
        v52 = *(a2 + 8);
        if (v42 >= 0x10000)
        {
          v53 = (v52 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v53;
        }

        goto LABEL_72;
      }

      *(a2 + 24) = v47 + v42;
      v52 = *(a2 + 8);
LABEL_72:
      *(v52 + 4) = v42;
      *v52 = v28 + 1;
      if (v26 - 3 >= 0x10000)
      {
        v54 = (v52 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v54;
      }

      *(v52 + 6) = v26 - 3;
      v55 = v52 + 8;
      *(a2 + 8) = v52 + 8;
      v5 = &v20[v26];
      if (&v20[v26] <= v7)
      {
        v57 = v14;
        v58 = v73;
        LODWORD(v9) = v82;
        while (1)
        {
          v14 = v58;
          v58 = v57;
          v59 = (v5 - v8 - v14);
          v60 = v74;
          if (v59 >= v82)
          {
            v60 = v8;
          }

          if (v59 - v82 > 0xFFFFFFFC)
          {
            break;
          }

          v61 = v60 + v59;
          if (*v61 != *v5)
          {
            break;
          }

          if (v59 >= v82)
          {
            v62 = v6;
          }

          else
          {
            v62 = v77;
          }

          v63 = ZSTD_count_2segments(v5 + 2, (v61 + 4), v6, v62, v81);
          if (v5 <= v76)
          {
            **(a2 + 24) = *v5;
            v55 = *(a2 + 8);
          }

          *(v55 + 4) = 0;
          *v55 = 1;
          if (v63 + 1 >= 0x10000)
          {
            v64 = (v55 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v64;
          }

          *(v55 + 6) = v63 + 1;
          v55 += 8;
          v5 += v63 + 4;
          *(a2 + 8) = v55;
          v57 = v14;
          v56 = v58;
          v18 = v5;
          if (v5 > v7)
          {
            goto LABEL_77;
          }
        }

        v56 = v14;
        v14 = v57;
        v18 = v5;
        goto LABEL_77;
      }

      v18 = &v20[v26];
LABEL_76:
      LODWORD(v9) = v82;
      v56 = v73;
LABEL_77:
      v73 = v56;
      v16 = v79;
      if (v18 >= v7)
      {
        a3 = v66;
        goto LABEL_94;
      }
    }

    if (v5 <= v76)
    {
      v44 = (v43 + v76 - v5);
      do
      {
        v45 = *v5;
        v5 += 16;
        *v43++ = v45;
      }

      while (v43 < v44);
      v5 = (v6 - 32);
      v43 = v44;
    }

    while (v5 < v20)
    {
      v46 = *v5++;
      *v43 = v46;
      v43 = (v43 + 1);
    }

    goto LABEL_69;
  }

LABEL_94:
  *a3 = v14;
  a3[1] = v73;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_greedy_dedicatedDictSearch(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 256);
  v10 = v9 - 7;
  v11 = 2 * (v9 > 3);
  v12 = v9 - 4;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v11;
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = *(a1 + 232);
  v16 = *(v15 + 8);
  v65 = (v7 + v8);
  v58 = v16 + *(v15 + 24);
  if (a4 - (v7 + v8) - v58 + *v15)
  {
    v17 = a4;
  }

  else
  {
    v17 = a4 + 1;
  }

  v66 = &a4[a5 - 8];
  if (v17 < v66)
  {
    v57 = a3;
    v59 = *off_1E81907F0[v12 + 9];
    v61 = v8 + v16 - *v15;
    v63 = *v15;
    v64 = v16 - v61;
    v62 = *(v15 + 8);
    while (1)
    {
      v19 = v17 + 1;
      v20 = (v17 - v7 - v13 + 1);
      v21 = v16 + v20 - v61;
      if (v20 >= v8)
      {
        v21 = v7 + v20;
      }

      if ((v20 - v8) <= 0xFFFFFFFC && *v21 == *v19)
      {
        break;
      }

      v67 = 999999999;
      v25 = v59(a1, v17, v6, &v67);
      if (v25)
      {
        v19 = v17;
        v24 = v67;
      }

      else
      {
        v24 = 0;
      }

      if (v25 > 3)
      {
        if (v67 >= 3)
        {
          v26 = v17 - (v67 + v7) + 2;
          v27 = v7 + v8;
          if (v8 > v26)
          {
            v27 = v58;
          }

          v28 = v64;
          if (v8 <= v17 - (v67 + v7) + 2)
          {
            v28 = v7;
          }

          if (v17 <= v5 || v28 + v26 <= v27)
          {
            v31 = (v6 - 32);
          }

          else
          {
            v29 = (v28 + v26 - 1);
            v30 = v19 - 1;
            v31 = (v6 - 32);
            while (*v30 == *v29)
            {
              ++v25;
              v32 = (v30 - 1);
              if (v30 > v5)
              {
                --v30;
                if (v29-- > v27)
                {
                  continue;
                }
              }

              v19 = (v32 + 1);
              goto LABEL_36;
            }

            v19 = v30 + 1;
          }

LABEL_36:
          v14 = v13;
          v13 = (v24 - 2);
LABEL_37:
          v34 = v19 - v5;
          v35 = *(a2 + 24);
          if (v19 <= v31)
          {
            *v35 = *v5;
            v39 = *(a2 + 24);
            if (v34 > 0x10)
            {
              v40 = (v39 + 16);
              v41 = v39 + v34;
              v42 = (v5 + 16);
              do
              {
                v43 = *v42++;
                *v40++ = v43;
              }

              while (v40 < v41);
              goto LABEL_48;
            }

            *(a2 + 24) = v39 + v34;
            v44 = *(a2 + 8);
          }

          else
          {
            if (v5 <= v31)
            {
              v36 = (v35 + v31 - v5);
              do
              {
                v37 = *v5;
                v5 += 16;
                *v35++ = v37;
              }

              while (v35 < v36);
              v5 = v31;
              v35 = v36;
            }

            while (v5 < v19)
            {
              v38 = *v5++;
              *v35 = v38;
              v35 = (v35 + 1);
            }

LABEL_48:
            *(a2 + 24) += v34;
            v44 = *(a2 + 8);
            if (v34 >= 0x10000)
            {
              v45 = (v44 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v45;
            }
          }

          *(v44 + 4) = v34;
          *v44 = v24 + 1;
          if (v25 - 3 >= 0x10000)
          {
            v46 = (v44 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v46;
          }

          *(v44 + 6) = v25 - 3;
          v47 = v44 + 8;
          *(a2 + 8) = v44 + 8;
          v5 = &v19[v25];
          if (&v19[v25] <= v66)
          {
            v48 = v13;
            v49 = v14;
            while (1)
            {
              v13 = v49;
              v49 = v48;
              v50 = (v5 - v7 - v13);
              v51 = v64;
              if (v50 >= v8)
              {
                v51 = v7;
              }

              if ((v50 - v8) > 0xFFFFFFFC)
              {
                break;
              }

              v52 = v51 + v50;
              if (*v52 != *v5)
              {
                break;
              }

              if (v50 >= v8)
              {
                v53 = v6;
              }

              else
              {
                v53 = v63;
              }

              v54 = ZSTD_count_2segments(v5 + 2, (v52 + 4), v6, v53, v65);
              if (v5 <= v6 - 32)
              {
                **(a2 + 24) = *v5;
                v47 = *(a2 + 8);
              }

              *(v47 + 4) = 0;
              *v47 = 1;
              if (v54 + 1 >= 0x10000)
              {
                v55 = (v47 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v55;
              }

              *(v47 + 6) = v54 + 1;
              v47 += 8;
              v5 += v54 + 4;
              *(a2 + 8) = v47;
              v48 = v13;
              v14 = v49;
              v17 = v5;
              if (v5 > v66)
              {
                goto LABEL_70;
              }
            }

            v14 = v13;
            v13 = v48;
          }

          v17 = v5;
          goto LABEL_70;
        }

LABEL_33:
        v31 = (v6 - 32);
        goto LABEL_37;
      }

      v17 += ((v17 - v5) >> 8) + 1;
LABEL_70:
      v16 = v62;
      if (v17 >= v66)
      {
        a3 = v57;
        goto LABEL_72;
      }
    }

    if (v20 >= v8)
    {
      v22 = v6;
    }

    else
    {
      v22 = v63;
    }

    v23 = ZSTD_count_2segments((v17 + 5), (v21 + 4), v6, v22, v65);
    v24 = 0;
    v25 = v23 + 4;
    goto LABEL_33;
  }

LABEL_72:
  *a3 = v13;
  a3[1] = v14;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v130 = &a4[a5];
  v7 = &a4[a5 - 16];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 252);
  v11 = *(a1 + 256);
  v12 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v12 = v11 - 4;
  }

  v13 = 2 * (v10 > 3);
  if (v10 - 7 >= 0xFFFFFFFD)
  {
    v13 = v10 - 4;
  }

  v128 = *(&off_1E81908B0[3 * v12])[v13];
  v14 = *a3;
  v15 = a3[1];
  v125 = v8 + v9;
  if (a4 == v8 + v9)
  {
    v16 = a4 + 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = v16 - v8;
  v18 = 1 << *(a1 + 240);
  v19 = v16 - v8 - v18;
  v20 = v16 - v8 - v9 > v18;
  v21 = *(a1 + 44);
  if (v20 && *(a1 + 40) == 0)
  {
    LODWORD(v9) = v19;
  }

  v23 = v17 - v9;
  if (v15 <= v17 - v9)
  {
    v24 = v15;
  }

  else
  {
    v24 = 0;
  }

  if (v14 <= v23)
  {
    v25 = v14;
  }

  else
  {
    v25 = 0;
  }

  if (v10 >= 6)
  {
    v26 = 6;
  }

  else
  {
    v26 = *(a1 + 252);
  }

  if (v26 <= 4)
  {
    LOBYTE(v26) = 4;
  }

  if (v11 >= 6)
  {
    v11 = 6;
  }

  v27 = v7 - (v8 + v21);
  if ((v27 + 1) < 8)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = 8;
  }

  v131 = &a4[a5 - 16];
  if (v7 >= v8 + v21)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v29 + v21);
  if (v21 < v30)
  {
    v31 = *(a1 + 96);
    v32 = *(a1 + 52);
    v33 = 56 - v32;
    v34 = 24 - v32;
    v35 = *(a1 + 56);
    v36 = a1 + 64;
    do
    {
      if (v11 == 5)
      {
        v37 = 0xCF1BBCDCBB000000 * *(v8 + v21);
      }

      else
      {
        if (v11 != 6)
        {
          LODWORD(v38) = (-1640531535 * *(v8 + v21)) >> v34;
          goto LABEL_40;
        }

        v37 = 0xCF1BBCDCBF9B0000 * *(v8 + v21);
      }

      v38 = v37 >> v33;
LABEL_40:
      v39 = v38 >> 8 << v26;
      _X6 = v31 + 4 * v39;
      __asm { PRFM            #0, [X6] }

      _X5 = v35 + 2 * v39;
      if (v10 > 4)
      {
        __asm
        {
          PRFM            #0, [X6,#0x40]
          PRFM            #0, [X5]
        }

        if (v10 != 5)
        {
          __asm { PRFM            #0, [X5,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X5] }
      }

      *(v36 + 4 * (v21++ & 7)) = v38;
    }

    while (v30 != v21);
  }

  if (v16 < v131)
  {
    v121 = v23;
    v122 = v15;
    v123 = v14;
    v124 = a3;
    v50 = v130 - 7;
    v51 = v130 - 3;
    v127 = v130 - 1;
    v126 = v130 - 3;
    while (1)
    {
      v52 = 0;
      v53 = v16 + 1;
      if (!v25 || *&v53[-v25] != *(v16 + 1))
      {
        goto LABEL_68;
      }

      v54 = v16 + 5;
      v55 = &v16[-v25 + 5];
      if (v50 <= (v16 + 5))
      {
        break;
      }

      if (*v55 == *v54)
      {
        v56 = 0;
        v57 = (v16 + 13);
        v55 = &v16[-v25 + 13];
        while (v57 < v50)
        {
          v59 = *v55;
          v55 += 8;
          v58 = v59;
          v61 = *v57;
          v57 += 4;
          v60 = v61;
          v56 += 8;
          if (v58 != v61)
          {
            v62 = v56 + (__clz(__rbit64(v60 ^ v58)) >> 3);
            goto LABEL_67;
          }
        }

        goto LABEL_56;
      }

      v62 = __clz(__rbit64(*v54 ^ *v55)) >> 3;
LABEL_67:
      v52 = v62 + 4;
LABEL_68:
      v132 = 999999999;
      v63 = v128(a1, v16, v130, &v132);
      if (v63 <= v52)
      {
        v64 = v52;
      }

      else
      {
        v64 = v63;
      }

      if (v64 >= 4)
      {
        if (v63 <= v52)
        {
          v65 = 0;
        }

        else
        {
          v65 = v132;
        }

        if (v63 > v52)
        {
          v53 = v16;
        }

        v66 = v53;
        v67 = v65;
        v68 = v64;
        if (v16 < v131)
        {
          do
          {
            v66 = v16 + 1;
            if (!v65 || !v25 || *v66 != *&v66[-v25])
            {
              goto LABEL_103;
            }

            v69 = v16 + 5;
            v70 = &v16[-v25 + 5];
            if (v50 <= (v16 + 5))
            {
              v71 = (v16 + 5);
            }

            else
            {
              if (*v70 != *v69)
              {
                v76 = __clz(__rbit64(*v69 ^ *v70)) >> 3;
LABEL_101:
                v77 = v76 + 4;
                if (3 * v77 > (3 * v64 + (__clz(v65 + 1) ^ 0xFFFFFFE0) + 2))
                {
                  v65 = 0;
                  v53 = v16 + 1;
                  v64 = v77;
                }

                goto LABEL_103;
              }

              v71 = (v16 + 13);
              v70 = &v16[-v25 + 13];
              while (v71 < v50)
              {
                v73 = *v70;
                v70 += 8;
                v72 = v73;
                v75 = *v71;
                v71 += 4;
                v74 = v75;
                if (v72 != v75)
                {
                  v71 = (v71 + (__clz(__rbit64(v74 ^ v72)) >> 3) - 8);
                  goto LABEL_98;
                }
              }
            }

            if (v71 < v126 && *v70 == *v71)
            {
              v70 += 4;
              v71 += 2;
            }

            if (v71 < v127 && *v70 == *v71)
            {
              v70 += 2;
              ++v71;
            }

            if (v71 < v130 && *v70 == *v71)
            {
              v71 = (v71 + 1);
            }

LABEL_98:
            v76 = v71 - v69;
            if (v76 <= 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_101;
            }

LABEL_103:
            v132 = 999999999;
            v68 = v128(a1, v16 + 1, v130, &v132);
            if (v68 >= 4)
            {
              v67 = v132;
              if ((4 * v68 - (__clz(v132 + 1) ^ 0x1F)) > ((__clz(v65 + 1) ^ 0xFFFFFFE0) + 4 * v64 + 5))
              {
                goto LABEL_132;
              }
            }

            if (v66 >= v131)
            {
              goto LABEL_134;
            }

            v66 = v16 + 2;
            if (v65 && v25 && *v66 == *&v66[-v25])
            {
              v78 = v16 + 6;
              v79 = &v16[-v25 + 6];
              if (v50 <= (v16 + 6))
              {
                v80 = (v16 + 6);
              }

              else
              {
                if (*v79 != *v78)
                {
                  v85 = __clz(__rbit64(*v78 ^ *v79)) >> 3;
LABEL_128:
                  v86 = v85 + 4;
                  if (((__clz(v65 + 1) ^ 0xFFFFFFE0) + 4 * v64 + 2) < 4 * v86)
                  {
                    v65 = 0;
                    v53 = v16 + 2;
                    v64 = v86;
                  }

                  goto LABEL_130;
                }

                v80 = (v16 + 14);
                v79 = &v16[-v25 + 14];
                while (v80 < v50)
                {
                  v82 = *v79;
                  v79 += 8;
                  v81 = v82;
                  v84 = *v80;
                  v80 += 4;
                  v83 = v84;
                  if (v81 != v84)
                  {
                    v80 = (v80 + (__clz(__rbit64(v83 ^ v81)) >> 3) - 8);
                    goto LABEL_125;
                  }
                }
              }

              if (v80 < v126 && *v79 == *v80)
              {
                v80 += 2;
                v79 += 4;
              }

              if (v80 < v127 && *v79 == *v80)
              {
                ++v80;
                v79 += 2;
              }

              if (v80 < v130 && *v79 == *v80)
              {
                v80 = (v80 + 1);
              }

LABEL_125:
              v85 = v80 - v78;
              if (v85 <= 0xFFFFFFFFFFFFFFFBLL)
              {
                goto LABEL_128;
              }
            }

LABEL_130:
            v132 = 999999999;
            v68 = v128(a1, v16 + 2, v130, &v132);
            if (v68 < 4 || (v67 = v132, (4 * v68 - (__clz(v132 + 1) ^ 0x1F)) <= ((__clz(v65 + 1) ^ 0xFFFFFFE0) + 4 * v64 + 8)))
            {
LABEL_134:
              v66 = v53;
              v67 = v65;
              v68 = v64;
              break;
            }

LABEL_132:
            v16 = v66;
            v64 = v68;
            v65 = v67;
            v53 = v66;
          }

          while (v66 < v131);
        }

        if (v67 <= 2)
        {
          v87 = (v130 - 32);
          v51 = v130 - 3;
        }

        else
        {
          v87 = (v130 - 32);
          if (v66 <= v5 || &v66[-v67 + 2] <= v125)
          {
            v89 = v66;
            v51 = v130 - 3;
          }

          else
          {
            v88 = 1 - v67;
            v89 = v66;
            v51 = v130 - 3;
            while (1)
            {
              v90 = *--v89;
              if (v90 != v66[v88])
              {
                break;
              }

              ++v68;
              if (v89 > v5)
              {
                v91 = &v66[v88];
                v66 = v89;
                if (v91 > v125)
                {
                  continue;
                }
              }

              goto LABEL_146;
            }

            v89 = v66;
          }

LABEL_146:
          v24 = v25;
          v25 = (v67 - 2);
          v66 = v89;
        }

        v92 = v66 - v5;
        v93 = *(a2 + 24);
        if (v66 <= v87)
        {
          *v93 = *v5;
          v97 = *(a2 + 24);
          if (v92 > 0x10)
          {
            v98 = (v97 + 16);
            v99 = v97 + v92;
            v100 = (v5 + 16);
            do
            {
              v101 = *v100++;
              *v98++ = v101;
            }

            while (v98 < v99);
            goto LABEL_158;
          }

          *(a2 + 24) = v97 + v92;
          v102 = *(a2 + 8);
        }

        else
        {
          if (v5 <= v87)
          {
            v94 = (v93 + v87 - v5);
            do
            {
              v95 = *v5;
              v5 += 16;
              *v93++ = v95;
            }

            while (v93 < v94);
            v5 = v87;
            v93 = v94;
          }

          while (v5 < v66)
          {
            v96 = *v5++;
            *v93 = v96;
            v93 = (v93 + 1);
          }

LABEL_158:
          *(a2 + 24) += v92;
          v102 = *(a2 + 8);
          if (v92 >= 0x10000)
          {
            v103 = (v102 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v103;
          }
        }

        *(v102 + 4) = v92;
        *v102 = v67 + 1;
        if (v68 - 3 >= 0x10000)
        {
          v104 = (v102 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v104;
        }

        *(v102 + 6) = v68 - 3;
        v105 = v102 + 8;
        *(a2 + 8) = v102 + 8;
        v5 = &v66[v68];
        if (!v24 || v5 > v131)
        {
LABEL_194:
          v16 = v5;
          goto LABEL_195;
        }

        v106 = v25;
        v107 = v24;
        while (2)
        {
          v25 = v107;
          v107 = v106;
          if (*v5 != *&v5[-v25])
          {
            v24 = v25;
            v25 = v106;
            goto LABEL_194;
          }

          v108 = v5 + 4;
          v109 = &v5[-v25 + 4];
          if (v50 > (v5 + 4))
          {
            if (*v109 == *v108)
            {
              v110 = 0;
              v111 = (v5 + 12);
              v109 = &v5[-v25 + 12];
              while (v111 < v50)
              {
                v113 = *v109;
                v109 += 8;
                v112 = v113;
                v115 = *v111;
                v111 += 4;
                v114 = v115;
                v110 += 8;
                if (v112 != v115)
                {
                  v116 = v110 + (__clz(__rbit64(v114 ^ v112)) >> 3);
                  goto LABEL_185;
                }
              }

LABEL_174:
              if (v111 < v51 && *v109 == *v111)
              {
                v109 += 4;
                v111 += 2;
              }

              if (v111 < v127 && *v109 == *v111)
              {
                v109 += 2;
                ++v111;
              }

              if (v111 < v130 && *v109 == *v111)
              {
                v111 = (v111 + 1);
              }

              v116 = v111 - v108;
            }

            else
            {
              v116 = __clz(__rbit64(*v108 ^ *v109)) >> 3;
            }

LABEL_185:
            if (v5 <= v87)
            {
              **(a2 + 24) = *v5;
              v105 = *(a2 + 8);
            }

            *(v105 + 4) = 0;
            *v105 = 1;
            if (v116 + 1 >= 0x10000)
            {
              v117 = (v105 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v117;
            }

            *(v105 + 6) = v116 + 1;
            v105 += 8;
            *(a2 + 8) = v105;
            v5 += v116 + 4;
            if (!v107)
            {
              v24 = v107;
              goto LABEL_194;
            }

            v106 = v25;
            v24 = v107;
            v16 = v5;
            if (v5 > v131)
            {
              goto LABEL_195;
            }

            continue;
          }

          break;
        }

        v111 = (v5 + 4);
        goto LABEL_174;
      }

      v16 += ((v16 - v5) >> 8) + 1;
LABEL_195:
      if (v16 >= v131)
      {
        a3 = v124;
        v15 = v122;
        v14 = v123;
        v23 = v121;
        goto LABEL_197;
      }
    }

    v57 = (v16 + 5);
LABEL_56:
    if (v57 < v51 && *v55 == *v57)
    {
      v55 += 4;
      v57 += 2;
    }

    if (v57 < v127 && *v55 == *v57)
    {
      v55 += 2;
      ++v57;
    }

    if (v57 < v130 && *v55 == *v57)
    {
      v57 = (v57 + 1);
    }

    v62 = v57 - v54;
    goto LABEL_67;
  }

LABEL_197:
  if (v15 <= v23)
  {
    v118 = 0;
  }

  else
  {
    v118 = v15;
  }

  if (v14 > v23)
  {
    v118 = v14;
  }

  if (v25)
  {
    v119 = v25;
  }

  else
  {
    v119 = v118;
  }

  if (v24)
  {
    v118 = v24;
  }

  *a3 = v119;
  a3[1] = v118;
  return v130 - v5;
}

unint64_t ZSTD_compressBlock_lazy_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v123 = &a4[a5];
  v6 = &a4[a5 - 16];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = v7 + v8;
  v10 = *(a1 + 252);
  v11 = *(a1 + 256);
  v12 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v12 = v11 - 4;
  }

  v13 = 2 * (v10 > 3);
  if (v10 - 7 >= 0xFFFFFFFD)
  {
    v13 = v10 - 4;
  }

  v121 = *(&off_1E81908B0[3 * v12])[v13];
  v14 = *a3;
  v15 = a3[1];
  if (a4 == v9)
  {
    v16 = a4 + 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = 1 << *(a1 + 240);
  v18 = v16 - v7 - v17;
  v19 = v16 - v7 - v8 > v17;
  v20 = *(a1 + 44);
  if (v19 && *(a1 + 40) == 0)
  {
    LODWORD(v8) = v18;
  }

  v22 = v16 - v7 - v8;
  if (v15 <= v22)
  {
    LODWORD(v23) = a3[1];
  }

  else
  {
    LODWORD(v23) = 0;
  }

  v116 = v22;
  if (v14 <= v22)
  {
    v24 = v14;
  }

  else
  {
    v24 = 0;
  }

  if (v10 >= 6)
  {
    v25 = 6;
  }

  else
  {
    v25 = *(a1 + 252);
  }

  if (v25 <= 4)
  {
    LOBYTE(v25) = 4;
  }

  if (v11 >= 6)
  {
    v11 = 6;
  }

  v26 = v6 - (v7 + v20);
  if ((v26 + 1) < 8)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 8;
  }

  if (v6 >= v7 + v20)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 + v20);
  if (v20 < v29)
  {
    v30 = *(a1 + 96);
    v31 = *(a1 + 52);
    v32 = 56 - v31;
    v33 = 24 - v31;
    v34 = *(a1 + 56);
    v35 = a1 + 64;
    do
    {
      if (v11 == 5)
      {
        v36 = 0xCF1BBCDCBB000000 * *(v7 + v20);
      }

      else
      {
        if (v11 != 6)
        {
          LODWORD(v37) = (-1640531535 * *(v7 + v20)) >> v33;
          goto LABEL_40;
        }

        v36 = 0xCF1BBCDCBF9B0000 * *(v7 + v20);
      }

      v37 = v36 >> v32;
LABEL_40:
      v38 = v37 >> 8 << v25;
      _X7 = v30 + 4 * v38;
      __asm { PRFM            #0, [X7] }

      _X6 = v34 + 2 * v38;
      if (v10 > 4)
      {
        __asm
        {
          PRFM            #0, [X7,#0x40]
          PRFM            #0, [X6]
        }

        if (v10 != 5)
        {
          __asm { PRFM            #0, [X6,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X6] }
      }

      *(v35 + 4 * (v20++ & 7)) = v37;
    }

    while (v29 != v20);
  }

  if (v16 >= v6)
  {
    goto LABEL_171;
  }

  v114 = v15;
  v117 = v9;
  v115 = a3;
  v49 = v123 - 7;
  v50 = v123 - 3;
  v51 = v123 - 1;
  v120 = &a4[a5 - 16];
  do
  {
    v52 = 0;
    v119 = v23;
    if (!v24 || *&v16[-v24 + 1] != *(v16 + 1))
    {
      goto LABEL_68;
    }

    v53 = v16 + 5;
    v54 = &v16[-v24 + 5];
    if (v49 <= (v16 + 5))
    {
      v56 = v16 + 5;
LABEL_56:
      if (v56 < v50 && *v54 == *v56)
      {
        v54 += 4;
        ++v56;
      }

      if (v56 < v51 && *v54 == *v56)
      {
        v54 += 2;
        v56 = (v56 + 2);
      }

      if (v56 < v123 && *v54 == *v56)
      {
        v56 = (v56 + 1);
      }

      v61 = v56 - v53;
      goto LABEL_67;
    }

    if (*v54 == *v53)
    {
      v55 = 0;
      v56 = v16 + 13;
      v54 = &v16[-v24 + 13];
      while (v56 < v49)
      {
        v58 = *v54;
        v54 += 8;
        v57 = v58;
        v60 = *v56;
        v56 += 2;
        v59 = v60;
        v55 += 8;
        if (v57 != v60)
        {
          v61 = v55 + (__clz(__rbit64(v59 ^ v57)) >> 3);
          goto LABEL_67;
        }
      }

      goto LABEL_56;
    }

    v61 = __clz(__rbit64(*v53 ^ *v54)) >> 3;
LABEL_67:
    v52 = v61 + 4;
LABEL_68:
    v124 = 999999999;
    v62 = v121(a1, v16, v123, &v124);
    if (v62 <= v52)
    {
      v63 = v52;
    }

    else
    {
      v63 = v62;
    }

    if (v63 < 4)
    {
      v16 += ((v16 - v5) >> 8) + 1;
      v51 = v123 - 1;
      v50 = v123 - 3;
      LODWORD(v23) = v119;
      continue;
    }

    if (v62 <= v52)
    {
      v64 = 0;
    }

    else
    {
      v64 = v124;
    }

    if (v62 <= v52)
    {
      v65 = v16 + 1;
    }

    else
    {
      v65 = v16;
    }

    if (v16 < v6)
    {
      v66 = (v16 + 13);
      while (1)
      {
        v67 = v16 + 1;
        if (!v64 || !v24 || *v67 != *&v67[-v24])
        {
          goto LABEL_104;
        }

        v68 = v16 + 5;
        v69 = &v16[-v24 + 5];
        if (v49 <= (v16 + 5))
        {
          v71 = (v16 + 5);
        }

        else
        {
          v70 = *v69;
          v71 = v66;
          if (v70 != *v68)
          {
            v75 = __clz(__rbit64(*v68 ^ v70)) >> 3;
LABEL_102:
            v76 = v75 + 4;
            if (3 * v76 > (3 * v63 + (__clz(v64 + 1) ^ 0xFFFFFFE0) + 2))
            {
              v64 = 0;
              v65 = v16 + 1;
              v63 = v76;
            }

            goto LABEL_104;
          }

          while (v71 < v49)
          {
            v72 = *(v71 - v24);
            v74 = *v71;
            v71 += 4;
            v73 = v74;
            if (v72 != v74)
            {
              v71 = (v71 + (__clz(__rbit64(v73 ^ v72)) >> 3) - 8);
              goto LABEL_101;
            }
          }

          v69 = v71 - v24;
        }

        if (v71 < v123 - 3 && *v69 == *v71)
        {
          v71 += 2;
          v69 += 4;
        }

        if (v71 < v123 - 1 && *v69 == *v71)
        {
          ++v71;
          v69 += 2;
        }

        if (v71 < v123 && *v69 == *v71)
        {
          v71 = (v71 + 1);
        }

LABEL_101:
        v75 = v71 - v68;
        if (v75 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_102;
        }

LABEL_104:
        v124 = 999999999;
        v77 = v121(a1, v16 + 1, v123, &v124);
        if (v77 < 4)
        {
          break;
        }

        v78 = v124;
        if ((4 * v77 - (__clz(v124 + 1) ^ 0x1F)) <= ((__clz(v64 + 1) ^ 0xFFFFFFE0) + 4 * v63 + 5))
        {
          break;
        }

        v66 = (v66 + 1);
        ++v16;
        v63 = v77;
        v64 = v124;
        v65 = v67;
        if (v67 == v120)
        {
          goto LABEL_109;
        }
      }
    }

    v67 = v65;
    v78 = v64;
    v77 = v63;
LABEL_109:
    if (v78 <= 2)
    {
      v79 = a2;
      v51 = v123 - 1;
      v50 = v123 - 3;
      v80 = (v123 - 32);
      v23 = v119;
    }

    else
    {
      v79 = a2;
      v51 = v123 - 1;
      v80 = (v123 - 32);
      v50 = v123 - 3;
      if (v67 > v5 && &v67[-v78 + 2] > v117)
      {
        v81 = 1 - v78;
        v82 = v67;
        while (1)
        {
          v83 = *--v82;
          if (v83 != v67[v81])
          {
            break;
          }

          ++v77;
          if (v82 > v5)
          {
            v84 = &v67[v81];
            v67 = v82;
            if (v84 > v117)
            {
              continue;
            }
          }

          goto LABEL_119;
        }
      }

      v82 = v67;
LABEL_119:
      v23 = v24;
      v24 = (v78 - 2);
      v67 = v82;
    }

    v85 = v67 - v5;
    v86 = *(v79 + 24);
    if (v67 > v80)
    {
      if (v5 <= v80)
      {
        v87 = (v86 + v80 - v5);
        do
        {
          v88 = *v5;
          v5 += 16;
          *v86++ = v88;
        }

        while (v86 < v87);
        v5 = v80;
        v86 = v87;
      }

      while (v5 < v67)
      {
        v89 = *v5++;
        *v86 = v89;
        v86 = (v86 + 1);
      }

      goto LABEL_131;
    }

    *v86 = *v5;
    v90 = *(v79 + 24);
    if (v85 > 0x10)
    {
      v91 = (v90 + 16);
      v92 = v90 + v85;
      v93 = (v5 + 16);
      do
      {
        v94 = *v93++;
        *v91++ = v94;
      }

      while (v91 < v92);
LABEL_131:
      *(v79 + 24) += v85;
      v95 = *(v79 + 8);
      if (v85 >= 0x10000)
      {
        v96 = (v95 - *v79) >> 3;
        *(v79 + 72) = 1;
        *(v79 + 76) = v96;
      }

      goto LABEL_134;
    }

    *(v79 + 24) = v90 + v85;
    v95 = *(v79 + 8);
LABEL_134:
    *(v95 + 4) = v85;
    *v95 = v78 + 1;
    if (v77 - 3 >= 0x10000)
    {
      v97 = (v95 - *v79) >> 3;
      *(v79 + 72) = 2;
      *(v79 + 76) = v97;
    }

    *(v95 + 6) = v77 - 3;
    v98 = v95 + 8;
    *(v79 + 8) = v95 + 8;
    v5 = &v67[v77];
    if (!v23)
    {
      v16 = &v67[v77];
      v6 = v120;
      continue;
    }

    v6 = v120;
    if (v5 > v120)
    {
      goto LABEL_168;
    }

    v99 = v24;
    v100 = v23;
    while (1)
    {
      v24 = v100;
      v100 = v99;
      if (*v5 != *&v5[-v24])
      {
        LODWORD(v23) = v24;
        v24 = v99;
        goto LABEL_168;
      }

      v101 = v5 + 4;
      v102 = &v5[-v24 + 4];
      if (v49 <= (v5 + 4))
      {
        v104 = (v5 + 4);
      }

      else
      {
        if (*v102 != *v101)
        {
          v109 = __clz(__rbit64(*v101 ^ *v102)) >> 3;
          goto LABEL_158;
        }

        v103 = 0;
        v104 = (v5 + 12);
        v102 = &v5[-v24 + 12];
        while (v104 < v49)
        {
          v106 = *v102;
          v102 += 8;
          v105 = v106;
          v108 = *v104;
          v104 += 4;
          v107 = v108;
          v103 += 8;
          if (v105 != v108)
          {
            v109 = v103 + (__clz(__rbit64(v107 ^ v105)) >> 3);
            goto LABEL_158;
          }
        }
      }

      if (v104 < v50 && *v102 == *v104)
      {
        v102 += 4;
        v104 += 2;
      }

      if (v104 < v51 && *v102 == *v104)
      {
        v102 += 2;
        ++v104;
      }

      if (v104 < v123 && *v102 == *v104)
      {
        v104 = (v104 + 1);
      }

      v109 = v104 - v101;
LABEL_158:
      if (v5 <= v80)
      {
        **(v79 + 24) = *v5;
        v98 = *(v79 + 8);
      }

      *(v98 + 4) = 0;
      *v98 = 1;
      if (v109 + 1 >= 0x10000)
      {
        v110 = (v98 - *v79) >> 3;
        *(v79 + 72) = 2;
        *(v79 + 76) = v110;
      }

      *(v98 + 6) = v109 + 1;
      v98 += 8;
      *(v79 + 8) = v98;
      v5 += v109 + 4;
      if (!v100)
      {
        break;
      }

      v99 = v24;
      LODWORD(v23) = v100;
      v16 = v5;
      if (v5 > v120)
      {
        goto LABEL_169;
      }
    }

    LODWORD(v23) = 0;
LABEL_168:
    v16 = v5;
LABEL_169:
    ;
  }

  while (v16 < v6);
  a3 = v115;
  v15 = v114;
LABEL_171:
  if (v15 <= v116)
  {
    v111 = 0;
  }

  else
  {
    v111 = v15;
  }

  if (v14 > v116)
  {
    v111 = v14;
  }

  if (v24)
  {
    v112 = v24;
  }

  else
  {
    v112 = v111;
  }

  if (v23)
  {
    v111 = v23;
  }

  *a3 = v112;
  a3[1] = v111;
  return v123 - v5;
}

unint64_t ZSTD_compressBlock_greedy_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 252);
  v12 = *(a1 + 256);
  v13 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v13 = v12 - 4;
  }

  v14 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v14 = v11 - 4;
  }

  v106 = *(&off_1E81908B0[3 * v13])[v14];
  v15 = *a3;
  v16 = a3[1];
  v105 = v9 + v10;
  if (a4 == v9 + v10)
  {
    v17 = a4 + 1;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 - v9;
  v19 = 1 << *(a1 + 240);
  v20 = v17 - v9 - v19;
  v21 = v17 - v9 - v10 > v19;
  v22 = *(a1 + 44);
  if (v21 && *(a1 + 40) == 0)
  {
    LODWORD(v10) = v20;
  }

  v24 = v18 - v10;
  if (v16 <= v18 - v10)
  {
    v25 = v16;
  }

  else
  {
    v25 = 0;
  }

  if (v15 <= v24)
  {
    v26 = v15;
  }

  else
  {
    v26 = 0;
  }

  if (v11 >= 6)
  {
    v27 = 6;
  }

  else
  {
    v27 = *(a1 + 252);
  }

  if (v27 <= 4)
  {
    LOBYTE(v27) = 4;
  }

  if (v12 >= 6)
  {
    v12 = 6;
  }

  v28 = v8 - (v9 + v22);
  if ((v28 + 1) < 8)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = 8;
  }

  if (v8 >= v9 + v22)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 + v22);
  if (v22 < v31)
  {
    v32 = *(a1 + 96);
    v33 = *(a1 + 52);
    v34 = 56 - v33;
    v35 = 24 - v33;
    v36 = *(a1 + 56);
    v37 = a1 + 64;
    do
    {
      if (v12 == 5)
      {
        v38 = 0xCF1BBCDCBB000000 * *(v9 + v22);
      }

      else
      {
        if (v12 != 6)
        {
          LODWORD(v39) = (-1640531535 * *(v9 + v22)) >> v35;
          goto LABEL_40;
        }

        v38 = 0xCF1BBCDCBF9B0000 * *(v9 + v22);
      }

      v39 = v38 >> v34;
LABEL_40:
      v40 = v39 >> 8 << v27;
      _X6 = v32 + 4 * v40;
      __asm { PRFM            #0, [X6] }

      _X5 = v36 + 2 * v40;
      if (v11 > 4)
      {
        __asm
        {
          PRFM            #0, [X6,#0x40]
          PRFM            #0, [X5]
        }

        if (v11 != 5)
        {
          __asm { PRFM            #0, [X5,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X5] }
      }

      *(v37 + 4 * (v22++ & 7)) = v39;
    }

    while (v31 != v22);
  }

  if (v17 < v8)
  {
    v101 = v24;
    v102 = v16;
    v103 = v15;
    v104 = a3;
    v51 = v7 - 7;
    v52 = v7 - 3;
    v53 = v7 - 1;
    v54 = (v7 - 32);
    while (1)
    {
      if (v26)
      {
        v55 = (v17 + 1);
        if (*&v17[-v26 + 1] == *(v17 + 1))
        {
          break;
        }
      }

      v65 = v8;
      v66 = v53;
      v108 = 999999999;
      v67 = v106(a1, v17, v7, &v108);
      if (v67)
      {
        v68 = v108;
      }

      else
      {
        v68 = 0;
      }

      if (v67 > 3)
      {
        if (v108 < 3)
        {
          v53 = v66;
          v8 = v65;
          v54 = (v7 - 32);
          goto LABEL_83;
        }

        v53 = v66;
        if (v17 <= v5)
        {
          v55 = v17;
          v8 = v65;
        }

        else
        {
          v8 = v65;
          if (&v17[-v108 + 2] > v105)
          {
            v69 = 1 - v108;
            v55 = v17;
            v54 = (v7 - 32);
            while (1)
            {
              v70 = *--v55;
              if (v70 != v17[v69])
              {
                break;
              }

              ++v67;
              if (v55 > v5)
              {
                v71 = &v17[v69];
                v17 = v55;
                if (v71 > v105)
                {
                  continue;
                }
              }

              goto LABEL_137;
            }

            v55 = v17;
LABEL_137:
            v25 = v26;
            v26 = (v68 - 2);
LABEL_82:
            v17 = v55;
LABEL_83:
            v72 = v17 - v5;
            v73 = *(a2 + 24);
            if (v17 <= v54)
            {
              *v73 = *v5;
              v77 = *(a2 + 24);
              if (v72 > 0x10)
              {
                v78 = (v77 + 16);
                v79 = v77 + v72;
                v80 = (v5 + 16);
                do
                {
                  v81 = *v80++;
                  *v78++ = v81;
                }

                while (v78 < v79);
                goto LABEL_94;
              }

              *(a2 + 24) = v77 + v72;
              v82 = *(a2 + 8);
            }

            else
            {
              if (v5 <= v54)
              {
                v74 = (v73 + v54 - v5);
                do
                {
                  v75 = *v5;
                  v5 += 16;
                  *v73++ = v75;
                }

                while (v73 < v74);
                v5 = v54;
                v73 = v74;
              }

              while (v5 < v17)
              {
                v76 = *v5++;
                *v73 = v76;
                v73 = (v73 + 1);
              }

LABEL_94:
              *(a2 + 24) += v72;
              v82 = *(a2 + 8);
              if (v72 >= 0x10000)
              {
                v83 = (v82 - *a2) >> 3;
                *(a2 + 72) = 1;
                *(a2 + 76) = v83;
              }
            }

            *(v82 + 4) = v72;
            *v82 = v68 + 1;
            if (v67 - 3 >= 0x10000)
            {
              v84 = (v82 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v84;
            }

            *(v82 + 6) = v67 - 3;
            v85 = v82 + 8;
            *(a2 + 8) = v82 + 8;
            v5 = &v17[v67];
            if (v25 && v5 <= v8)
            {
              v86 = v26;
              v87 = v25;
              while (1)
              {
                v26 = v87;
                v87 = v86;
                if (*v5 != *&v5[-v26])
                {
                  v25 = v26;
                  v26 = v86;
                  break;
                }

                v88 = v5 + 4;
                v89 = &v5[-v26 + 4];
                if (v51 <= (v5 + 4))
                {
                  v91 = (v5 + 4);
                }

                else
                {
                  if (*v89 != *v88)
                  {
                    v96 = __clz(__rbit64(*v88 ^ *v89)) >> 3;
                    goto LABEL_121;
                  }

                  v90 = 0;
                  v91 = (v5 + 12);
                  v89 = &v5[-v26 + 12];
                  while (v91 < v51)
                  {
                    v93 = *v89++;
                    v92 = v93;
                    v95 = *v91;
                    v91 += 4;
                    v94 = v95;
                    v90 += 8;
                    if (v92 != v95)
                    {
                      v96 = v90 + (__clz(__rbit64(v94 ^ v92)) >> 3);
                      goto LABEL_121;
                    }
                  }
                }

                if (v91 < v52 && *v89 == *v91)
                {
                  v89 = (v89 + 4);
                  v91 += 2;
                }

                if (v91 < v53 && *v89 == *v91)
                {
                  v89 = (v89 + 2);
                  ++v91;
                }

                if (v91 < v7 && *v89 == *v91)
                {
                  v91 = (v91 + 1);
                }

                v96 = v91 - v88;
LABEL_121:
                if (v5 <= v54)
                {
                  **(a2 + 24) = *v5;
                  v85 = *(a2 + 8);
                }

                *(v85 + 4) = 0;
                *v85 = 1;
                if (v96 + 1 >= 0x10000)
                {
                  v97 = (v85 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v97;
                }

                *(v85 + 6) = v96 + 1;
                v85 += 8;
                *(a2 + 8) = v85;
                v5 += v96 + 4;
                if (!v87)
                {
                  v25 = v87;
                  break;
                }

                v86 = v26;
                v25 = v87;
                v17 = v5;
                if (v5 > v8)
                {
                  goto LABEL_131;
                }
              }
            }

            v17 = v5;
            goto LABEL_131;
          }

          v55 = v17;
        }

        v54 = (v7 - 32);
        goto LABEL_137;
      }

      v17 += ((v17 - v5) >> 8) + 1;
      v53 = v66;
      v8 = v65;
      v54 = (v7 - 32);
LABEL_131:
      if (v17 >= v8)
      {
        a3 = v104;
        v16 = v102;
        v15 = v103;
        v24 = v101;
        goto LABEL_138;
      }
    }

    v56 = v17 + 5;
    v57 = &v17[-v26 + 5];
    if (v51 <= (v17 + 5))
    {
      v59 = (v17 + 5);
    }

    else
    {
      if (*v57 != *v56)
      {
        v64 = __clz(__rbit64(*v56 ^ *v57)) >> 3;
LABEL_81:
        v68 = 0;
        v67 = v64 + 4;
        goto LABEL_82;
      }

      v58 = 0;
      v59 = (v17 + 13);
      v57 = &v17[-v26 + 13];
      while (v59 < v51)
      {
        v61 = *v57++;
        v60 = v61;
        v63 = *v59;
        v59 += 4;
        v62 = v63;
        v58 += 8;
        if (v60 != v63)
        {
          v64 = v58 + (__clz(__rbit64(v62 ^ v60)) >> 3);
          goto LABEL_81;
        }
      }
    }

    if (v59 < v52 && *v57 == *v59)
    {
      v57 = (v57 + 4);
      v59 += 2;
    }

    if (v59 < v53 && *v57 == *v59)
    {
      v57 = (v57 + 2);
      ++v59;
    }

    if (v59 < v7 && *v57 == *v59)
    {
      v59 = (v59 + 1);
    }

    v64 = v59 - v56;
    goto LABEL_81;
  }

LABEL_138:
  if (v16 <= v24)
  {
    v98 = 0;
  }

  else
  {
    v98 = v16;
  }

  if (v15 > v24)
  {
    v98 = v15;
  }

  if (v26)
  {
    v99 = v26;
  }

  else
  {
    v99 = v98;
  }

  if (v25)
  {
    v98 = v25;
  }

  *a3 = v99;
  a3[1] = v98;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, _BYTE *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v108 = *(a1 + 24);
  v10 = (v9 + v108);
  v11 = *(a1 + 252);
  v12 = *(a1 + 256);
  v13 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v13 = v12 - 4;
  }

  v14 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v14 = v11 - 4;
  }

  v104 = *(&off_1E81908B0[3 * v13])[v14 + 18];
  v16 = *a3;
  LODWORD(v15) = a3[1];
  v17 = *(a1 + 232);
  v18 = *(v17 + 24);
  v105 = *(v17 + 8);
  v99 = v105 + v18;
  v102 = *v17;
  if (a4 - v10 - (v105 + v18) + *v17)
  {
    v19 = a4;
  }

  else
  {
    v19 = a4 + 1;
  }

  if (v11 >= 6)
  {
    v20 = 6;
  }

  else
  {
    v20 = *(a1 + 252);
  }

  if (v20 <= 4)
  {
    LOBYTE(v20) = 4;
  }

  if (v12 >= 6)
  {
    v12 = 6;
  }

  v21 = *(a1 + 44);
  v22 = v8 - (v9 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v107 = &a4[a5 - 16];
  if (v8 >= v9 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 96);
    v27 = *(a1 + 52);
    v28 = 56 - v27;
    v29 = 24 - v27;
    v30 = *(a1 + 56);
    do
    {
      if (v12 == 5)
      {
        v31 = 0xCF1BBCDCBB000000 * *(v9 + v21);
      }

      else
      {
        if (v12 != 6)
        {
          LODWORD(v32) = (-1640531535 * *(v9 + v21)) >> v29;
          goto LABEL_29;
        }

        v31 = 0xCF1BBCDCBF9B0000 * *(v9 + v21);
      }

      v32 = v31 >> v28;
LABEL_29:
      v33 = v32 >> 8 << v20;
      _X5 = v26 + 4 * v33;
      __asm { PRFM            #0, [X5] }

      _X4 = v30 + 2 * v33;
      if (v11 > 4)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X4]
        }

        if (v11 != 5)
        {
          __asm { PRFM            #0, [X4,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X4] }
      }

      *(a1 + 64 + 4 * (v21++ & 7)) = v32;
    }

    while (v25 != v21);
  }

  if (v19 < v107)
  {
    v98 = a3;
    v103 = v108 + v105 - v102;
    v100 = (v9 + v108);
    while (1)
    {
      v45 = v19 + 1;
      v46 = (v19 - v9 - v16 + 1);
      v47 = v105 + v46 - v103;
      if (v46 >= v108)
      {
        v47 = v9 + v46;
      }

      v101 = v15;
      if ((v46 - v108) <= 0xFFFFFFFC && *v47 == *v45)
      {
        v48 = v46 >= v108 ? v7 : v102;
        v49 = ZSTD_count_2segments((v19 + 5), (v47 + 4), v7, v48, v10) + 4;
      }

      else
      {
        v49 = 0;
      }

      v109 = 999999999;
      v50 = v104(a1, v19, v7, &v109);
      v51 = v50 <= v49 ? v49 : v50;
      if (v51 >= 4)
      {
        break;
      }

      v19 += ((v19 - v5) >> 8) + 1;
      LODWORD(v15) = v101;
LABEL_134:
      if (v19 >= v107)
      {
        a3 = v98;
        goto LABEL_136;
      }
    }

    v52 = v50 > v49;
    if (v50 <= v49)
    {
      v53 = 0;
    }

    else
    {
      v53 = v109;
    }

    if (v52)
    {
      v45 = v19;
    }

    v54 = v45;
    v55 = v53;
    v56 = v51;
    if (v19 < v107)
    {
      while (1)
      {
        v54 = v19 + 1;
        v57 = (v19 + 1 - v9 - v16);
        v58 = v105 + v57 - v103;
        if (v57 >= v108)
        {
          v58 = v9 + v57;
        }

        if ((v57 - v108) <= 0xFFFFFFFC && *v58 == *v54)
        {
          v59 = v57 >= v108 ? v7 : v102;
          v60 = ZSTD_count_2segments((v19 + 5), (v58 + 4), v7, v59, v100);
          v61 = 3 * v51 + (__clz(v53 + 1) ^ 0xFFFFFFE0) + 2;
          if (v60 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v60 + 4) > v61)
          {
            v53 = 0;
            v45 = v19 + 1;
            v51 = v60 + 4;
          }
        }

        v109 = 999999999;
        v56 = v104(a1, v19 + 1, v7, &v109);
        if (v56 < 4 || (v55 = v109, (4 * v56 - (__clz(v109 + 1) ^ 0x1F)) <= ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 5)))
        {
          if (v54 >= v107)
          {
            break;
          }

          v54 = v19 + 2;
          v63 = (v19 + 2 - v9 - v16);
          v64 = v105 + v63 - v103;
          if (v63 >= v108)
          {
            v64 = v9 + v63;
          }

          if ((v63 - v108) <= 0xFFFFFFFC && *v64 == *v54)
          {
            v65 = v63 >= v108 ? v7 : v102;
            v66 = ZSTD_count_2segments(v19 + 3, (v64 + 4), v7, v65, v100);
            if (v66 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 2) < 4 * (v66 + 4))
            {
              v53 = 0;
              v45 = v19 + 2;
              v51 = v66 + 4;
            }
          }

          v109 = 999999999;
          v56 = v104(a1, v19 + 2, v7, &v109);
          if (v56 < 4)
          {
            break;
          }

          v55 = v109;
          if ((4 * v56 - (__clz(v109 + 1) ^ 0x1F)) <= ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 8))
          {
            break;
          }
        }

        v19 = v54;
        v51 = v56;
        v53 = v55;
        v45 = v54;
        if (v54 >= v107)
        {
          goto LABEL_86;
        }
      }

      v54 = v45;
      v55 = v53;
      v56 = v51;
    }

LABEL_86:
    v15 = v101;
    if (v55 <= 2)
    {
      v69 = v105 - v103;
      v71 = (v7 - 32);
    }

    else
    {
      v67 = v54 - (v55 + v9) + 2;
      v69 = v105 - v103;
      v68 = v9 + v108;
      if (v108 <= v67)
      {
        v70 = v9;
      }

      else
      {
        v68 = v99;
        v70 = v105 - v103;
      }

      v71 = (v7 - 32);
      if (v54 > v5 && v70 + v67 > v68)
      {
        v72 = (v70 + v67 - 1);
        v73 = (v54 - 1);
        while (*v73 == *v72)
        {
          ++v56;
          v74 = v73 - 1;
          if (v73 > v5)
          {
            --v73;
            v52 = v72-- > v68;
            if (v52)
            {
              continue;
            }
          }

          v54 = (v74 + 1);
          goto LABEL_99;
        }

        v54 = (v73 + 1);
      }

LABEL_99:
      v15 = v16;
      v16 = (v55 - 2);
    }

    v75 = v54 - v5;
    v76 = *(a2 + 24);
    if (v54 <= v71)
    {
      *v76 = *v5;
      v80 = *(a2 + 24);
      if (v75 <= 0x10)
      {
        *(a2 + 24) = v80 + v75;
        v85 = *(a2 + 8);
        goto LABEL_114;
      }

      v81 = (v80 + 16);
      v82 = v80 + v75;
      v83 = (v5 + 16);
      do
      {
        v84 = *v83++;
        *v81++ = v84;
      }

      while (v81 < v82);
    }

    else
    {
      if (v5 <= v71)
      {
        v77 = (v76 + v71 - v5);
        do
        {
          v78 = *v5;
          v5 += 16;
          *v76++ = v78;
        }

        while (v76 < v77);
        v5 = v71;
        v76 = v77;
      }

      while (v5 < v54)
      {
        v79 = *v5++;
        *v76 = v79;
        v76 = (v76 + 1);
      }
    }

    *(a2 + 24) += v75;
    v85 = *(a2 + 8);
    if (v75 >= 0x10000)
    {
      v86 = (v85 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v86;
    }

LABEL_114:
    *(v85 + 4) = v75;
    *v85 = v55 + 1;
    if (v56 - 3 >= 0x10000)
    {
      v87 = (v85 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v87;
    }

    *(v85 + 6) = v56 - 3;
    v88 = v85 + 8;
    *(a2 + 8) = v85 + 8;
    v5 = &v54[v56];
    if (&v54[v56] <= v107)
    {
      v89 = v16;
      v90 = v15;
      v10 = (v9 + v108);
      while (1)
      {
        v16 = v90;
        v90 = v89;
        v91 = (v5 - v9 - v16);
        v92 = v91 >= v108 ? v9 : v69;
        if ((v91 - v108) > 0xFFFFFFFC)
        {
          break;
        }

        v93 = v92 + v91;
        if (*v93 != *v5)
        {
          break;
        }

        if (v91 >= v108)
        {
          v94 = v7;
        }

        else
        {
          v94 = v102;
        }

        v95 = ZSTD_count_2segments(v5 + 2, (v93 + 4), v7, v94, v100);
        if (v5 <= v7 - 32)
        {
          **(a2 + 24) = *v5;
          v88 = *(a2 + 8);
        }

        *(v88 + 4) = 0;
        *v88 = 1;
        if (v95 + 1 >= 0x10000)
        {
          v96 = (v88 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v96;
        }

        *(v88 + 6) = v95 + 1;
        v88 += 8;
        v5 += v95 + 4;
        *(a2 + 8) = v88;
        v89 = v16;
        LODWORD(v15) = v90;
        v19 = v5;
        if (v5 > v107)
        {
          goto LABEL_134;
        }
      }

      LODWORD(v15) = v16;
      v16 = v89;
      v19 = v5;
    }

    else
    {
      v19 = &v54[v56];
      v10 = (v9 + v108);
    }

    goto LABEL_134;
  }

LABEL_136:
  *a3 = v16;
  a3[1] = v15;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_lazy_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 252);
  v12 = *(a1 + 256);
  v13 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v13 = v12 - 4;
  }

  v14 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v14 = v11 - 4;
  }

  v103 = *(&off_1E81908B0[3 * v13])[v14 + 18];
  v15 = *a3;
  v99 = a3[1];
  v16 = *(a1 + 232);
  v17 = *(v16 + 24);
  v105 = *(v16 + 8);
  v104 = (v9 + v10);
  v97 = (v105 + v17);
  v102 = *v16;
  if (a4 - (v9 + v10) - (v105 + v17) + *v16)
  {
    v18 = a4;
  }

  else
  {
    v18 = a4 + 1;
  }

  if (v11 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  if (v19 <= 4)
  {
    LOBYTE(v19) = 4;
  }

  if (v12 >= 6)
  {
    v12 = 6;
  }

  v20 = *(a1 + 44);
  v21 = v8 - (v9 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  if (v8 >= v9 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 96);
    v26 = *(a1 + 52);
    v27 = 56 - v26;
    v28 = 24 - v26;
    v29 = *(a1 + 56);
    do
    {
      if (v12 == 5)
      {
        v30 = 0xCF1BBCDCBB000000 * *(v9 + v20);
      }

      else
      {
        if (v12 != 6)
        {
          LODWORD(v31) = (-1640531535 * *(v9 + v20)) >> v28;
          goto LABEL_29;
        }

        v30 = 0xCF1BBCDCBF9B0000 * *(v9 + v20);
      }

      v31 = v30 >> v27;
LABEL_29:
      v32 = v31 >> 8 << v19;
      _X6 = v25 + 4 * v32;
      __asm { PRFM            #0, [X6] }

      _X5 = v29 + 2 * v32;
      if (v11 > 4)
      {
        __asm
        {
          PRFM            #0, [X6,#0x40]
          PRFM            #0, [X5]
        }

        if (v11 != 5)
        {
          __asm { PRFM            #0, [X5,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X5] }
      }

      *(a1 + 64 + 4 * (v20++ & 7)) = v31;
    }

    while (v24 != v20);
  }

  if (v18 < v8)
  {
    v90 = a3;
    v101 = v7 - 32;
    v94 = &v5[a5 - 16];
    v93 = 1 - (v10 + v9);
    v92 = -v9;
    v91 = v102 - v10 - v105 - v9 + 1;
    v98 = v10 + v105 - v102;
    v107 = v10;
    v95 = v8;
    v100 = v9;
    while (1)
    {
      v44 = v18 + 1;
      v45 = (v18 - v9 - v15 + 1);
      v46 = v105 + v45 - v98;
      if (v45 >= v10)
      {
        v46 = v9 + v45;
      }

      if ((v45 - v10) <= 0xFFFFFFFC && *v46 == *v44)
      {
        if (v45 >= v10)
        {
          v47 = v7;
        }

        else
        {
          v47 = v102;
        }

        v48 = ZSTD_count_2segments((v18 + 5), (v46 + 4), v7, v47, v104) + 4;
      }

      else
      {
        v48 = 0;
      }

      v108[0] = 999999999;
      v49 = v103(a1, v18, v7, v108);
      if (v49 <= v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = v49;
      }

      if (v50 < 4)
      {
        v18 += ((v18 - v5) >> 8) + 1;
        goto LABEL_104;
      }

      v51 = v49 > v48;
      if (v49 <= v48)
      {
        v52 = 0;
      }

      else
      {
        v52 = v108[0];
      }

      if (v51)
      {
        v44 = v18;
      }

      if (v18 < v8)
      {
        v53 = 0;
        while (1)
        {
          v54 = &v18[v53 + 1];
          v55 = (v92 + v18 - v15 + v53 + 1);
          v56 = v105 + (v91 + v18 - v15 + v53);
          if (v55 >= v107)
          {
            v56 = v100 + v55;
          }

          if ((v93 + v18 - v15 + v53) <= 0xFFFFFFFC && *v56 == *v54)
          {
            v57 = v55 >= v107 ? v7 : v102;
            v58 = ZSTD_count_2segments(&v18[v53 + 5], (v56 + 4), v7, v57, v104);
            if (v58 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v58 + 4) > (3 * v50 + (__clz(v52 + 1) ^ 0xFFFFFFE0) + 2))
            {
              v52 = 0;
              v44 = &v18[v53 + 1];
              v50 = v58 + 4;
            }
          }

          v108[0] = 999999999;
          v59 = v103(a1, &v18[v53 + 1], v7, v108);
          if (v59 < 4 || (4 * v59 - (__clz(LODWORD(v108[0]) + 1) ^ 0x1F)) <= ((__clz(v52 + 1) ^ 0xFFFFFFE0) + 4 * v50 + 5))
          {
            break;
          }

          ++v53;
          v50 = v59;
          v52 = v108[0];
          v44 = v54;
          if (v94 - v18 == v53)
          {
            v44 = &v18[v53];
            v52 = v108[0];
            v50 = v59;
            break;
          }
        }

        v8 = v95;
        v6 = a2;
        v9 = v100;
      }

      if (v52 > 2)
      {
        v60 = v44 - (v52 + v9) + 2;
        v61 = v104;
        if (v107 > v60)
        {
          v61 = v97;
        }

        v62 = v105 - v98;
        if (v107 <= v44 - (v52 + v9) + 2)
        {
          v62 = v9;
        }

        if (v44 > v5 && v62 + v60 > v61)
        {
          v63 = (v62 + v60 - 1);
          v64 = v44 - 1;
          while (*v64 == *v63)
          {
            ++v50;
            v65 = (v64 - 1);
            if (v64 > v5)
            {
              --v64;
              v51 = v63-- > v61;
              if (v51)
              {
                continue;
              }
            }

            v44 = (v65 + 1);
            goto LABEL_85;
          }

          v44 = v64 + 1;
        }

LABEL_85:
        v99 = v15;
        v15 = (v52 - 2);
      }

      v66 = v44 - v5;
      v67 = *(v6 + 24);
      if (v44 > v101)
      {
        break;
      }

      *v67 = *v5;
      v71 = *(v6 + 24);
      if (v66 > 0x10)
      {
        v72 = (v71 + 16);
        v73 = v71 + v66;
        v74 = (v5 + 16);
        do
        {
          v75 = *v74++;
          *v72++ = v75;
        }

        while (v72 < v73);
LABEL_97:
        *(v6 + 24) += v66;
        v76 = *(v6 + 8);
        if (v66 >= 0x10000)
        {
          v77 = (v76 - *v6) >> 3;
          *(v6 + 72) = 1;
          *(v6 + 76) = v77;
        }

        goto LABEL_100;
      }

      *(v6 + 24) = v71 + v66;
      v76 = *(v6 + 8);
LABEL_100:
      *(v76 + 4) = v66;
      *v76 = v52 + 1;
      if (v50 - 3 >= 0x10000)
      {
        v78 = (v76 - *v6) >> 3;
        *(v6 + 72) = 2;
        *(v6 + 76) = v78;
      }

      *(v76 + 6) = v50 - 3;
      v79 = v76 + 8;
      *(v6 + 8) = v76 + 8;
      v5 = &v44[v50];
      if (&v44[v50] <= v8)
      {
        v81 = v15;
        v82 = v99;
        LODWORD(v10) = v107;
        while (1)
        {
          v15 = v82;
          v82 = v81;
          v83 = (v5 - v9 - v15);
          v84 = v105 - v98;
          if (v83 >= v107)
          {
            v84 = v9;
          }

          if (v83 - v107 > 0xFFFFFFFC)
          {
            break;
          }

          v85 = v84 + v83;
          if (*v85 != *v5)
          {
            break;
          }

          if (v83 >= v107)
          {
            v86 = v7;
          }

          else
          {
            v86 = v102;
          }

          v87 = ZSTD_count_2segments(v5 + 2, (v85 + 4), v7, v86, v104);
          if (v5 <= v101)
          {
            **(v6 + 24) = *v5;
            v79 = *(v6 + 8);
          }

          *(v79 + 4) = 0;
          *v79 = 1;
          if (v87 + 1 >= 0x10000)
          {
            v88 = (v79 - *v6) >> 3;
            *(v6 + 72) = 2;
            *(v6 + 76) = v88;
          }

          *(v79 + 6) = v87 + 1;
          v79 += 8;
          v5 += v87 + 4;
          *(v6 + 8) = v79;
          v81 = v15;
          v80 = v82;
          v18 = v5;
          if (v5 > v8)
          {
            goto LABEL_105;
          }
        }

        v80 = v15;
        v15 = v81;
        v18 = v5;
        goto LABEL_105;
      }

      v18 = &v44[v50];
LABEL_104:
      LODWORD(v10) = v107;
      v80 = v99;
LABEL_105:
      v99 = v80;
      if (v18 >= v8)
      {
        a3 = v90;
        goto LABEL_122;
      }
    }

    if (v5 <= v101)
    {
      v68 = (v67 + v101 - v5);
      do
      {
        v69 = *v5;
        v5 += 16;
        *v67++ = v69;
      }

      while (v67 < v68);
      v5 = (v7 - 32);
      v67 = v68;
    }

    while (v5 < v44)
    {
      v70 = *v5++;
      *v67 = v70;
      v67 = (v67 + 1);
    }

    goto LABEL_97;
  }

LABEL_122:
  *a3 = v15;
  a3[1] = v99;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_greedy_dictMatchState_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 252);
  v12 = *(a1 + 256);
  v13 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v13 = v12 - 4;
  }

  v14 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v14 = v11 - 4;
  }

  v85 = *(&off_1E81908B0[3 * v13])[v14 + 18];
  v15 = *a3;
  v16 = a3[1];
  v17 = *(a1 + 232);
  v18 = *(v17 + 24);
  v88 = *(v17 + 8);
  v89 = *v17;
  v90 = (v9 + v10);
  v84 = v88 + v18;
  if (a4 - (v9 + v10) - (v88 + v18) + *v17)
  {
    v19 = a4;
  }

  else
  {
    v19 = a4 + 1;
  }

  if (v11 >= 6)
  {
    v20 = 6;
  }

  else
  {
    v20 = *(a1 + 252);
  }

  if (v20 <= 4)
  {
    LOBYTE(v20) = 4;
  }

  if (v12 >= 6)
  {
    v12 = 6;
  }

  v21 = *(a1 + 44);
  v22 = v8 - (v9 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v91 = &a4[a5 - 16];
  if (v8 >= v9 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 96);
    v27 = *(a1 + 52);
    v28 = 56 - v27;
    v29 = 24 - v27;
    v30 = *(a1 + 56);
    do
    {
      if (v12 == 5)
      {
        v31 = 0xCF1BBCDCBB000000 * *(v9 + v21);
      }

      else
      {
        if (v12 != 6)
        {
          LODWORD(v32) = (-1640531535 * *(v9 + v21)) >> v29;
          goto LABEL_29;
        }

        v31 = 0xCF1BBCDCBF9B0000 * *(v9 + v21);
      }

      v32 = v31 >> v28;
LABEL_29:
      v33 = v32 >> 8 << v20;
      _X5 = v26 + 4 * v33;
      __asm { PRFM            #0, [X5] }

      _X4 = v30 + 2 * v33;
      if (v11 > 4)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X4]
        }

        if (v11 != 5)
        {
          __asm { PRFM            #0, [X4,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X4] }
      }

      *(a1 + 64 + 4 * (v21++ & 7)) = v32;
    }

    while (v25 != v21);
  }

  if (v19 < v91)
  {
    v83 = a3;
    v87 = v10 + v88 - v89;
    while (1)
    {
      v45 = v19 + 1;
      v46 = (v19 - v9 - v15 + 1);
      v47 = v88 + v46 - v87;
      if (v46 >= v10)
      {
        v47 = v9 + v46;
      }

      if ((v46 - v10) <= 0xFFFFFFFC && *v47 == *v45)
      {
        break;
      }

      v92 = 999999999;
      v51 = v85(a1, v19, v7, &v92);
      if (v51)
      {
        v45 = v19;
        v50 = v92;
      }

      else
      {
        v50 = 0;
      }

      if (v51 > 3)
      {
        if (v92 >= 3)
        {
          v52 = v19 - (v92 + v9) + 2;
          v53 = v9 + v10;
          if (v10 > v52)
          {
            v53 = v84;
          }

          v54 = v88 - v87;
          if (v10 <= v19 - (v92 + v9) + 2)
          {
            v54 = v9;
          }

          if (v19 <= v5 || v54 + v52 <= v53)
          {
            v57 = (v7 - 32);
          }

          else
          {
            v55 = (v54 + v52 - 1);
            v56 = v45 - 1;
            v57 = (v7 - 32);
            while (*v56 == *v55)
            {
              ++v51;
              v58 = (v56 - 1);
              if (v56 > v5)
              {
                --v56;
                if (v55-- > v53)
                {
                  continue;
                }
              }

              v45 = (v58 + 1);
              goto LABEL_64;
            }

            v45 = v56 + 1;
          }

LABEL_64:
          v16 = v15;
          v15 = (v50 - 2);
LABEL_65:
          v60 = v45 - v5;
          v61 = *(a2 + 24);
          if (v45 <= v57)
          {
            *v61 = *v5;
            v65 = *(a2 + 24);
            if (v60 > 0x10)
            {
              v66 = (v65 + 16);
              v67 = v65 + v60;
              v68 = (v5 + 16);
              do
              {
                v69 = *v68++;
                *v66++ = v69;
              }

              while (v66 < v67);
              goto LABEL_76;
            }

            *(a2 + 24) = v65 + v60;
            v70 = *(a2 + 8);
          }

          else
          {
            if (v5 <= v57)
            {
              v62 = (v61 + v57 - v5);
              do
              {
                v63 = *v5;
                v5 += 16;
                *v61++ = v63;
              }

              while (v61 < v62);
              v5 = v57;
              v61 = v62;
            }

            while (v5 < v45)
            {
              v64 = *v5++;
              *v61 = v64;
              v61 = (v61 + 1);
            }

LABEL_76:
            *(a2 + 24) += v60;
            v70 = *(a2 + 8);
            if (v60 >= 0x10000)
            {
              v71 = (v70 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v71;
            }
          }

          *(v70 + 4) = v60;
          *v70 = v50 + 1;
          if (v51 - 3 >= 0x10000)
          {
            v72 = (v70 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v72;
          }

          *(v70 + 6) = v51 - 3;
          v73 = v70 + 8;
          *(a2 + 8) = v70 + 8;
          v5 = &v45[v51];
          if (&v45[v51] <= v91)
          {
            v74 = v15;
            v75 = v16;
            while (1)
            {
              v15 = v75;
              v75 = v74;
              v76 = (v5 - v9 - v15);
              v77 = v88 - v87;
              if (v76 >= v10)
              {
                v77 = v9;
              }

              if ((v76 - v10) > 0xFFFFFFFC)
              {
                break;
              }

              v78 = v77 + v76;
              if (*v78 != *v5)
              {
                break;
              }

              if (v76 >= v10)
              {
                v79 = v7;
              }

              else
              {
                v79 = v89;
              }

              v80 = ZSTD_count_2segments(v5 + 2, (v78 + 4), v7, v79, v90);
              if (v5 <= v7 - 32)
              {
                **(a2 + 24) = *v5;
                v73 = *(a2 + 8);
              }

              *(v73 + 4) = 0;
              *v73 = 1;
              if (v80 + 1 >= 0x10000)
              {
                v81 = (v73 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v81;
              }

              *(v73 + 6) = v80 + 1;
              v73 += 8;
              v5 += v80 + 4;
              *(a2 + 8) = v73;
              v74 = v15;
              v16 = v75;
              v19 = v5;
              if (v5 > v91)
              {
                goto LABEL_98;
              }
            }

            v16 = v15;
            v15 = v74;
          }

          v19 = v5;
          goto LABEL_98;
        }

LABEL_61:
        v57 = (v7 - 32);
        goto LABEL_65;
      }

      v19 += ((v19 - v5) >> 8) + 1;
LABEL_98:
      if (v19 >= v91)
      {
        a3 = v83;
        goto LABEL_100;
      }
    }

    if (v46 >= v10)
    {
      v48 = v7;
    }

    else
    {
      v48 = v89;
    }

    v49 = ZSTD_count_2segments((v19 + 5), (v47 + 4), v7, v48, v90);
    v50 = 0;
    v51 = v49 + 4;
    goto LABEL_61;
  }

LABEL_100:
  *a3 = v15;
  a3[1] = v16;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(uint64_t a1, uint64_t a2, unsigned int *a3, _BYTE *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v108 = *(a1 + 24);
  v10 = (v9 + v108);
  v11 = *(a1 + 252);
  v12 = *(a1 + 256);
  v13 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v13 = v12 - 4;
  }

  v14 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v14 = v11 - 4;
  }

  v104 = *(&off_1E81908B0[3 * v13])[v14 + 27];
  v16 = *a3;
  LODWORD(v15) = a3[1];
  v17 = *(a1 + 232);
  v18 = *(v17 + 24);
  v105 = *(v17 + 8);
  v99 = v105 + v18;
  v102 = *v17;
  if (a4 - v10 - (v105 + v18) + *v17)
  {
    v19 = a4;
  }

  else
  {
    v19 = a4 + 1;
  }

  if (v11 >= 6)
  {
    v20 = 6;
  }

  else
  {
    v20 = *(a1 + 252);
  }

  if (v20 <= 4)
  {
    LOBYTE(v20) = 4;
  }

  if (v12 >= 6)
  {
    v12 = 6;
  }

  v21 = *(a1 + 44);
  v22 = v8 - (v9 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v107 = &a4[a5 - 16];
  if (v8 >= v9 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 96);
    v27 = *(a1 + 52);
    v28 = 56 - v27;
    v29 = 24 - v27;
    v30 = *(a1 + 56);
    do
    {
      if (v12 == 5)
      {
        v31 = 0xCF1BBCDCBB000000 * *(v9 + v21);
      }

      else
      {
        if (v12 != 6)
        {
          LODWORD(v32) = (-1640531535 * *(v9 + v21)) >> v29;
          goto LABEL_29;
        }

        v31 = 0xCF1BBCDCBF9B0000 * *(v9 + v21);
      }

      v32 = v31 >> v28;
LABEL_29:
      v33 = v32 >> 8 << v20;
      _X5 = v26 + 4 * v33;
      __asm { PRFM            #0, [X5] }

      _X4 = v30 + 2 * v33;
      if (v11 > 4)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X4]
        }

        if (v11 != 5)
        {
          __asm { PRFM            #0, [X4,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X4] }
      }

      *(a1 + 64 + 4 * (v21++ & 7)) = v32;
    }

    while (v25 != v21);
  }

  if (v19 < v107)
  {
    v98 = a3;
    v103 = v108 + v105 - v102;
    v100 = (v9 + v108);
    while (1)
    {
      v45 = v19 + 1;
      v46 = (v19 - v9 - v16 + 1);
      v47 = v105 + v46 - v103;
      if (v46 >= v108)
      {
        v47 = v9 + v46;
      }

      v101 = v15;
      if ((v46 - v108) <= 0xFFFFFFFC && *v47 == *v45)
      {
        v48 = v46 >= v108 ? v7 : v102;
        v49 = ZSTD_count_2segments((v19 + 5), (v47 + 4), v7, v48, v10) + 4;
      }

      else
      {
        v49 = 0;
      }

      v109 = 999999999;
      v50 = v104(a1, v19, v7, &v109);
      v51 = v50 <= v49 ? v49 : v50;
      if (v51 >= 4)
      {
        break;
      }

      v19 += ((v19 - v5) >> 8) + 1;
      LODWORD(v15) = v101;
LABEL_134:
      if (v19 >= v107)
      {
        a3 = v98;
        goto LABEL_136;
      }
    }

    v52 = v50 > v49;
    if (v50 <= v49)
    {
      v53 = 0;
    }

    else
    {
      v53 = v109;
    }

    if (v52)
    {
      v45 = v19;
    }

    v54 = v45;
    v55 = v53;
    v56 = v51;
    if (v19 < v107)
    {
      while (1)
      {
        v54 = v19 + 1;
        v57 = (v19 + 1 - v9 - v16);
        v58 = v105 + v57 - v103;
        if (v57 >= v108)
        {
          v58 = v9 + v57;
        }

        if ((v57 - v108) <= 0xFFFFFFFC && *v58 == *v54)
        {
          v59 = v57 >= v108 ? v7 : v102;
          v60 = ZSTD_count_2segments((v19 + 5), (v58 + 4), v7, v59, v100);
          v61 = 3 * v51 + (__clz(v53 + 1) ^ 0xFFFFFFE0) + 2;
          if (v60 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v60 + 4) > v61)
          {
            v53 = 0;
            v45 = v19 + 1;
            v51 = v60 + 4;
          }
        }

        v109 = 999999999;
        v56 = v104(a1, v19 + 1, v7, &v109);
        if (v56 < 4 || (v55 = v109, (4 * v56 - (__clz(v109 + 1) ^ 0x1F)) <= ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 5)))
        {
          if (v54 >= v107)
          {
            break;
          }

          v54 = v19 + 2;
          v63 = (v19 + 2 - v9 - v16);
          v64 = v105 + v63 - v103;
          if (v63 >= v108)
          {
            v64 = v9 + v63;
          }

          if ((v63 - v108) <= 0xFFFFFFFC && *v64 == *v54)
          {
            v65 = v63 >= v108 ? v7 : v102;
            v66 = ZSTD_count_2segments(v19 + 3, (v64 + 4), v7, v65, v100);
            if (v66 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 2) < 4 * (v66 + 4))
            {
              v53 = 0;
              v45 = v19 + 2;
              v51 = v66 + 4;
            }
          }

          v109 = 999999999;
          v56 = v104(a1, v19 + 2, v7, &v109);
          if (v56 < 4)
          {
            break;
          }

          v55 = v109;
          if ((4 * v56 - (__clz(v109 + 1) ^ 0x1F)) <= ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 8))
          {
            break;
          }
        }

        v19 = v54;
        v51 = v56;
        v53 = v55;
        v45 = v54;
        if (v54 >= v107)
        {
          goto LABEL_86;
        }
      }

      v54 = v45;
      v55 = v53;
      v56 = v51;
    }

LABEL_86:
    v15 = v101;
    if (v55 <= 2)
    {
      v69 = v105 - v103;
      v71 = (v7 - 32);
    }

    else
    {
      v67 = v54 - (v55 + v9) + 2;
      v69 = v105 - v103;
      v68 = v9 + v108;
      if (v108 <= v67)
      {
        v70 = v9;
      }

      else
      {
        v68 = v99;
        v70 = v105 - v103;
      }

      v71 = (v7 - 32);
      if (v54 > v5 && v70 + v67 > v68)
      {
        v72 = (v70 + v67 - 1);
        v73 = (v54 - 1);
        while (*v73 == *v72)
        {
          ++v56;
          v74 = v73 - 1;
          if (v73 > v5)
          {
            --v73;
            v52 = v72-- > v68;
            if (v52)
            {
              continue;
            }
          }

          v54 = (v74 + 1);
          goto LABEL_99;
        }

        v54 = (v73 + 1);
      }

LABEL_99:
      v15 = v16;
      v16 = (v55 - 2);
    }

    v75 = v54 - v5;
    v76 = *(a2 + 24);
    if (v54 <= v71)
    {
      *v76 = *v5;
      v80 = *(a2 + 24);
      if (v75 <= 0x10)
      {
        *(a2 + 24) = v80 + v75;
        v85 = *(a2 + 8);
        goto LABEL_114;
      }

      v81 = (v80 + 16);
      v82 = v80 + v75;
      v83 = (v5 + 16);
      do
      {
        v84 = *v83++;
        *v81++ = v84;
      }

      while (v81 < v82);
    }

    else
    {
      if (v5 <= v71)
      {
        v77 = (v76 + v71 - v5);
        do
        {
          v78 = *v5;
          v5 += 16;
          *v76++ = v78;
        }

        while (v76 < v77);
        v5 = v71;
        v76 = v77;
      }

      while (v5 < v54)
      {
        v79 = *v5++;
        *v76 = v79;
        v76 = (v76 + 1);
      }
    }

    *(a2 + 24) += v75;
    v85 = *(a2 + 8);
    if (v75 >= 0x10000)
    {
      v86 = (v85 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v86;
    }

LABEL_114:
    *(v85 + 4) = v75;
    *v85 = v55 + 1;
    if (v56 - 3 >= 0x10000)
    {
      v87 = (v85 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v87;
    }

    *(v85 + 6) = v56 - 3;
    v88 = v85 + 8;
    *(a2 + 8) = v85 + 8;
    v5 = &v54[v56];
    if (&v54[v56] <= v107)
    {
      v89 = v16;
      v90 = v15;
      v10 = (v9 + v108);
      while (1)
      {
        v16 = v90;
        v90 = v89;
        v91 = (v5 - v9 - v16);
        v92 = v91 >= v108 ? v9 : v69;
        if ((v91 - v108) > 0xFFFFFFFC)
        {
          break;
        }

        v93 = v92 + v91;
        if (*v93 != *v5)
        {
          break;
        }

        if (v91 >= v108)
        {
          v94 = v7;
        }

        else
        {
          v94 = v102;
        }

        v95 = ZSTD_count_2segments(v5 + 2, (v93 + 4), v7, v94, v100);
        if (v5 <= v7 - 32)
        {
          **(a2 + 24) = *v5;
          v88 = *(a2 + 8);
        }

        *(v88 + 4) = 0;
        *v88 = 1;
        if (v95 + 1 >= 0x10000)
        {
          v96 = (v88 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v96;
        }

        *(v88 + 6) = v95 + 1;
        v88 += 8;
        v5 += v95 + 4;
        *(a2 + 8) = v88;
        v89 = v16;
        LODWORD(v15) = v90;
        v19 = v5;
        if (v5 > v107)
        {
          goto LABEL_134;
        }
      }

      LODWORD(v15) = v16;
      v16 = v89;
      v19 = v5;
    }

    else
    {
      v19 = &v54[v56];
      v10 = (v9 + v108);
    }

    goto LABEL_134;
  }

LABEL_136:
  *a3 = v16;
  a3[1] = v15;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_lazy_dedicatedDictSearch_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 252);
  v12 = *(a1 + 256);
  v13 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v13 = v12 - 4;
  }

  v14 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v14 = v11 - 4;
  }

  v103 = *(&off_1E81908B0[3 * v13])[v14 + 27];
  v15 = *a3;
  v99 = a3[1];
  v16 = *(a1 + 232);
  v17 = *(v16 + 24);
  v105 = *(v16 + 8);
  v104 = (v9 + v10);
  v97 = (v105 + v17);
  v102 = *v16;
  if (a4 - (v9 + v10) - (v105 + v17) + *v16)
  {
    v18 = a4;
  }

  else
  {
    v18 = a4 + 1;
  }

  if (v11 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = *(a1 + 252);
  }

  if (v19 <= 4)
  {
    LOBYTE(v19) = 4;
  }

  if (v12 >= 6)
  {
    v12 = 6;
  }

  v20 = *(a1 + 44);
  v21 = v8 - (v9 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  if (v8 >= v9 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 96);
    v26 = *(a1 + 52);
    v27 = 56 - v26;
    v28 = 24 - v26;
    v29 = *(a1 + 56);
    do
    {
      if (v12 == 5)
      {
        v30 = 0xCF1BBCDCBB000000 * *(v9 + v20);
      }

      else
      {
        if (v12 != 6)
        {
          LODWORD(v31) = (-1640531535 * *(v9 + v20)) >> v28;
          goto LABEL_29;
        }

        v30 = 0xCF1BBCDCBF9B0000 * *(v9 + v20);
      }

      v31 = v30 >> v27;
LABEL_29:
      v32 = v31 >> 8 << v19;
      _X6 = v25 + 4 * v32;
      __asm { PRFM            #0, [X6] }

      _X5 = v29 + 2 * v32;
      if (v11 > 4)
      {
        __asm
        {
          PRFM            #0, [X6,#0x40]
          PRFM            #0, [X5]
        }

        if (v11 != 5)
        {
          __asm { PRFM            #0, [X5,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X5] }
      }

      *(a1 + 64 + 4 * (v20++ & 7)) = v31;
    }

    while (v24 != v20);
  }

  if (v18 < v8)
  {
    v90 = a3;
    v101 = v7 - 32;
    v94 = &v5[a5 - 16];
    v93 = 1 - (v10 + v9);
    v92 = -v9;
    v91 = v102 - v10 - v105 - v9 + 1;
    v98 = v10 + v105 - v102;
    v107 = v10;
    v95 = v8;
    v100 = v9;
    while (1)
    {
      v44 = v18 + 1;
      v45 = (v18 - v9 - v15 + 1);
      v46 = v105 + v45 - v98;
      if (v45 >= v10)
      {
        v46 = v9 + v45;
      }

      if ((v45 - v10) <= 0xFFFFFFFC && *v46 == *v44)
      {
        if (v45 >= v10)
        {
          v47 = v7;
        }

        else
        {
          v47 = v102;
        }

        v48 = ZSTD_count_2segments((v18 + 5), (v46 + 4), v7, v47, v104) + 4;
      }

      else
      {
        v48 = 0;
      }

      v108[0] = 999999999;
      v49 = v103(a1, v18, v7, v108);
      if (v49 <= v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = v49;
      }

      if (v50 < 4)
      {
        v18 += ((v18 - v5) >> 8) + 1;
        goto LABEL_104;
      }

      v51 = v49 > v48;
      if (v49 <= v48)
      {
        v52 = 0;
      }

      else
      {
        v52 = v108[0];
      }

      if (v51)
      {
        v44 = v18;
      }

      if (v18 < v8)
      {
        v53 = 0;
        while (1)
        {
          v54 = &v18[v53 + 1];
          v55 = (v92 + v18 - v15 + v53 + 1);
          v56 = v105 + (v91 + v18 - v15 + v53);
          if (v55 >= v107)
          {
            v56 = v100 + v55;
          }

          if ((v93 + v18 - v15 + v53) <= 0xFFFFFFFC && *v56 == *v54)
          {
            v57 = v55 >= v107 ? v7 : v102;
            v58 = ZSTD_count_2segments(&v18[v53 + 5], (v56 + 4), v7, v57, v104);
            if (v58 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v58 + 4) > (3 * v50 + (__clz(v52 + 1) ^ 0xFFFFFFE0) + 2))
            {
              v52 = 0;
              v44 = &v18[v53 + 1];
              v50 = v58 + 4;
            }
          }

          v108[0] = 999999999;
          v59 = v103(a1, &v18[v53 + 1], v7, v108);
          if (v59 < 4 || (4 * v59 - (__clz(LODWORD(v108[0]) + 1) ^ 0x1F)) <= ((__clz(v52 + 1) ^ 0xFFFFFFE0) + 4 * v50 + 5))
          {
            break;
          }

          ++v53;
          v50 = v59;
          v52 = v108[0];
          v44 = v54;
          if (v94 - v18 == v53)
          {
            v44 = &v18[v53];
            v52 = v108[0];
            v50 = v59;
            break;
          }
        }

        v8 = v95;
        v6 = a2;
        v9 = v100;
      }

      if (v52 > 2)
      {
        v60 = v44 - (v52 + v9) + 2;
        v61 = v104;
        if (v107 > v60)
        {
          v61 = v97;
        }

        v62 = v105 - v98;
        if (v107 <= v44 - (v52 + v9) + 2)
        {
          v62 = v9;
        }

        if (v44 > v5 && v62 + v60 > v61)
        {
          v63 = (v62 + v60 - 1);
          v64 = v44 - 1;
          while (*v64 == *v63)
          {
            ++v50;
            v65 = (v64 - 1);
            if (v64 > v5)
            {
              --v64;
              v51 = v63-- > v61;
              if (v51)
              {
                continue;
              }
            }

            v44 = (v65 + 1);
            goto LABEL_85;
          }

          v44 = v64 + 1;
        }

LABEL_85:
        v99 = v15;
        v15 = (v52 - 2);
      }

      v66 = v44 - v5;
      v67 = *(v6 + 24);
      if (v44 > v101)
      {
        break;
      }

      *v67 = *v5;
      v71 = *(v6 + 24);
      if (v66 > 0x10)
      {
        v72 = (v71 + 16);
        v73 = v71 + v66;
        v74 = (v5 + 16);
        do
        {
          v75 = *v74++;
          *v72++ = v75;
        }

        while (v72 < v73);
LABEL_97:
        *(v6 + 24) += v66;
        v76 = *(v6 + 8);
        if (v66 >= 0x10000)
        {
          v77 = (v76 - *v6) >> 3;
          *(v6 + 72) = 1;
          *(v6 + 76) = v77;
        }

        goto LABEL_100;
      }

      *(v6 + 24) = v71 + v66;
      v76 = *(v6 + 8);
LABEL_100:
      *(v76 + 4) = v66;
      *v76 = v52 + 1;
      if (v50 - 3 >= 0x10000)
      {
        v78 = (v76 - *v6) >> 3;
        *(v6 + 72) = 2;
        *(v6 + 76) = v78;
      }

      *(v76 + 6) = v50 - 3;
      v79 = v76 + 8;
      *(v6 + 8) = v76 + 8;
      v5 = &v44[v50];
      if (&v44[v50] <= v8)
      {
        v81 = v15;
        v82 = v99;
        LODWORD(v10) = v107;
        while (1)
        {
          v15 = v82;
          v82 = v81;
          v83 = (v5 - v9 - v15);
          v84 = v105 - v98;
          if (v83 >= v107)
          {
            v84 = v9;
          }

          if (v83 - v107 > 0xFFFFFFFC)
          {
            break;
          }

          v85 = v84 + v83;
          if (*v85 != *v5)
          {
            break;
          }

          if (v83 >= v107)
          {
            v86 = v7;
          }

          else
          {
            v86 = v102;
          }

          v87 = ZSTD_count_2segments(v5 + 2, (v85 + 4), v7, v86, v104);
          if (v5 <= v101)
          {
            **(v6 + 24) = *v5;
            v79 = *(v6 + 8);
          }

          *(v79 + 4) = 0;
          *v79 = 1;
          if (v87 + 1 >= 0x10000)
          {
            v88 = (v79 - *v6) >> 3;
            *(v6 + 72) = 2;
            *(v6 + 76) = v88;
          }

          *(v79 + 6) = v87 + 1;
          v79 += 8;
          v5 += v87 + 4;
          *(v6 + 8) = v79;
          v81 = v15;
          v80 = v82;
          v18 = v5;
          if (v5 > v8)
          {
            goto LABEL_105;
          }
        }

        v80 = v15;
        v15 = v81;
        v18 = v5;
        goto LABEL_105;
      }

      v18 = &v44[v50];
LABEL_104:
      LODWORD(v10) = v107;
      v80 = v99;
LABEL_105:
      v99 = v80;
      if (v18 >= v8)
      {
        a3 = v90;
        goto LABEL_122;
      }
    }

    if (v5 <= v101)
    {
      v68 = (v67 + v101 - v5);
      do
      {
        v69 = *v5;
        v5 += 16;
        *v67++ = v69;
      }

      while (v67 < v68);
      v5 = (v7 - 32);
      v67 = v68;
    }

    while (v5 < v44)
    {
      v70 = *v5++;
      *v67 = v70;
      v67 = (v67 + 1);
    }

    goto LABEL_97;
  }

LABEL_122:
  *a3 = v15;
  a3[1] = v99;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_greedy_dedicatedDictSearch_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 252);
  v12 = *(a1 + 256);
  v13 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v13 = v12 - 4;
  }

  v14 = 2 * (v11 > 3);
  if (v11 - 7 >= 0xFFFFFFFD)
  {
    v14 = v11 - 4;
  }

  v85 = *(&off_1E81908B0[3 * v13])[v14 + 27];
  v15 = *a3;
  v16 = a3[1];
  v17 = *(a1 + 232);
  v18 = *(v17 + 24);
  v88 = *(v17 + 8);
  v89 = *v17;
  v90 = (v9 + v10);
  v84 = v88 + v18;
  if (a4 - (v9 + v10) - (v88 + v18) + *v17)
  {
    v19 = a4;
  }

  else
  {
    v19 = a4 + 1;
  }

  if (v11 >= 6)
  {
    v20 = 6;
  }

  else
  {
    v20 = *(a1 + 252);
  }

  if (v20 <= 4)
  {
    LOBYTE(v20) = 4;
  }

  if (v12 >= 6)
  {
    v12 = 6;
  }

  v21 = *(a1 + 44);
  v22 = v8 - (v9 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  v91 = &a4[a5 - 16];
  if (v8 >= v9 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 96);
    v27 = *(a1 + 52);
    v28 = 56 - v27;
    v29 = 24 - v27;
    v30 = *(a1 + 56);
    do
    {
      if (v12 == 5)
      {
        v31 = 0xCF1BBCDCBB000000 * *(v9 + v21);
      }

      else
      {
        if (v12 != 6)
        {
          LODWORD(v32) = (-1640531535 * *(v9 + v21)) >> v29;
          goto LABEL_29;
        }

        v31 = 0xCF1BBCDCBF9B0000 * *(v9 + v21);
      }

      v32 = v31 >> v28;
LABEL_29:
      v33 = v32 >> 8 << v20;
      _X5 = v26 + 4 * v33;
      __asm { PRFM            #0, [X5] }

      _X4 = v30 + 2 * v33;
      if (v11 > 4)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X4]
        }

        if (v11 != 5)
        {
          __asm { PRFM            #0, [X4,#0x40] }
        }
      }

      else
      {
        __asm { PRFM            #0, [X4] }
      }

      *(a1 + 64 + 4 * (v21++ & 7)) = v32;
    }

    while (v25 != v21);
  }

  if (v19 < v91)
  {
    v83 = a3;
    v87 = v10 + v88 - v89;
    while (1)
    {
      v45 = v19 + 1;
      v46 = (v19 - v9 - v15 + 1);
      v47 = v88 + v46 - v87;
      if (v46 >= v10)
      {
        v47 = v9 + v46;
      }

      if ((v46 - v10) <= 0xFFFFFFFC && *v47 == *v45)
      {
        break;
      }

      v92 = 999999999;
      v51 = v85(a1, v19, v7, &v92);
      if (v51)
      {
        v45 = v19;
        v50 = v92;
      }

      else
      {
        v50 = 0;
      }

      if (v51 > 3)
      {
        if (v92 >= 3)
        {
          v52 = v19 - (v92 + v9) + 2;
          v53 = v9 + v10;
          if (v10 > v52)
          {
            v53 = v84;
          }

          v54 = v88 - v87;
          if (v10 <= v19 - (v92 + v9) + 2)
          {
            v54 = v9;
          }

          if (v19 <= v5 || v54 + v52 <= v53)
          {
            v57 = (v7 - 32);
          }

          else
          {
            v55 = (v54 + v52 - 1);
            v56 = v45 - 1;
            v57 = (v7 - 32);
            while (*v56 == *v55)
            {
              ++v51;
              v58 = (v56 - 1);
              if (v56 > v5)
              {
                --v56;
                if (v55-- > v53)
                {
                  continue;
                }
              }

              v45 = (v58 + 1);
              goto LABEL_64;
            }

            v45 = v56 + 1;
          }

LABEL_64:
          v16 = v15;
          v15 = (v50 - 2);
LABEL_65:
          v60 = v45 - v5;
          v61 = *(a2 + 24);
          if (v45 <= v57)
          {
            *v61 = *v5;
            v65 = *(a2 + 24);
            if (v60 > 0x10)
            {
              v66 = (v65 + 16);
              v67 = v65 + v60;
              v68 = (v5 + 16);
              do
              {
                v69 = *v68++;
                *v66++ = v69;
              }

              while (v66 < v67);
              goto LABEL_76;
            }

            *(a2 + 24) = v65 + v60;
            v70 = *(a2 + 8);
          }

          else
          {
            if (v5 <= v57)
            {
              v62 = (v61 + v57 - v5);
              do
              {
                v63 = *v5;
                v5 += 16;
                *v61++ = v63;
              }

              while (v61 < v62);
              v5 = v57;
              v61 = v62;
            }

            while (v5 < v45)
            {
              v64 = *v5++;
              *v61 = v64;
              v61 = (v61 + 1);
            }

LABEL_76:
            *(a2 + 24) += v60;
            v70 = *(a2 + 8);
            if (v60 >= 0x10000)
            {
              v71 = (v70 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v71;
            }
          }

          *(v70 + 4) = v60;
          *v70 = v50 + 1;
          if (v51 - 3 >= 0x10000)
          {
            v72 = (v70 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v72;
          }

          *(v70 + 6) = v51 - 3;
          v73 = v70 + 8;
          *(a2 + 8) = v70 + 8;
          v5 = &v45[v51];
          if (&v45[v51] <= v91)
          {
            v74 = v15;
            v75 = v16;
            while (1)
            {
              v15 = v75;
              v75 = v74;
              v76 = (v5 - v9 - v15);
              v77 = v88 - v87;
              if (v76 >= v10)
              {
                v77 = v9;
              }

              if ((v76 - v10) > 0xFFFFFFFC)
              {
                break;
              }

              v78 = v77 + v76;
              if (*v78 != *v5)
              {
                break;
              }

              if (v76 >= v10)
              {
                v79 = v7;
              }

              else
              {
                v79 = v89;
              }

              v80 = ZSTD_count_2segments(v5 + 2, (v78 + 4), v7, v79, v90);
              if (v5 <= v7 - 32)
              {
                **(a2 + 24) = *v5;
                v73 = *(a2 + 8);
              }

              *(v73 + 4) = 0;
              *v73 = 1;
              if (v80 + 1 >= 0x10000)
              {
                v81 = (v73 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v81;
              }

              *(v73 + 6) = v80 + 1;
              v73 += 8;
              v5 += v80 + 4;
              *(a2 + 8) = v73;
              v74 = v15;
              v16 = v75;
              v19 = v5;
              if (v5 > v91)
              {
                goto LABEL_98;
              }
            }

            v16 = v15;
            v15 = v74;
          }

          v19 = v5;
          goto LABEL_98;
        }

LABEL_61:
        v57 = (v7 - 32);
        goto LABEL_65;
      }

      v19 += ((v19 - v5) >> 8) + 1;
LABEL_98:
      if (v19 >= v91)
      {
        a3 = v83;
        goto LABEL_100;
      }
    }

    if (v46 >= v10)
    {
      v48 = v7;
    }

    else
    {
      v48 = v89;
    }

    v49 = ZSTD_count_2segments((v19 + 5), (v47 + 4), v7, v48, v90);
    v50 = 0;
    v51 = v49 + 4;
    goto LABEL_61;
  }

LABEL_100:
  *a3 = v15;
  a3[1] = v16;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_greedy_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 256);
  v10 = v9 - 7;
  v11 = 2 * (v9 > 3);
  v12 = v9 - 4;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v11;
  }

  v13 = *a3;
  v14 = a3[1];
  v68 = (v7 + v8);
  if ((v7 + v8) == a4)
  {
    v15 = a4 + 1;
  }

  else
  {
    v15 = a4;
  }

  v74 = &a4[a5 - 8];
  if (v15 < v74)
  {
    v18 = *(a1 + 16);
    v67 = (v18 + v8);
    v73 = v18;
    v65 = (v18 + *(a1 + 28));
    v19 = 1 << *(a1 + 240);
    v66 = *off_1E81907F0[v12 + 3];
    v72 = v8 - 1;
    v69 = v6 - 32;
    v70 = &a4[a5];
    v71 = *(a1 + 24);
    while (1)
    {
      v20 = v15 + 1;
      v21 = v15 - v7 + 1;
      v22 = v21 - v19;
      if (v21 - *(a1 + 28) <= v19 || *(a1 + 40) != 0)
      {
        v22 = *(a1 + 28);
      }

      v24 = (v21 - v13);
      v25 = v73;
      if (v24 >= v8)
      {
        v25 = v7;
      }

      if ((v72 - v24) >= 3 && v13 <= v21 - v22 && *v20 == *(v25 + v24))
      {
        break;
      }

      v75 = 999999999;
      v29 = v66(a1, v15, v6, &v75);
      if (v29)
      {
        v20 = v15;
        v28 = v75;
      }

      else
      {
        v28 = 0;
      }

      if (v29 > 3)
      {
        if (v75 >= 3)
        {
          v30 = v15 - v7 - v75 + 2;
          if (v71 <= v30)
          {
            v31 = v7;
          }

          else
          {
            v31 = v73;
          }

          v32 = v68;
          if (v71 > v30)
          {
            v32 = v65;
          }

          if (v15 <= v5 || v31 + v30 <= v32)
          {
            v36 = v69;
          }

          else
          {
            v33 = v30;
            v34 = v20 - 1;
            v35 = (v31 + v33 - 1);
            v36 = v69;
            while (*v34 == *v35)
            {
              ++v29;
              v37 = (v34 - 1);
              if (v34 > v5)
              {
                --v34;
                if (v35-- > v32)
                {
                  continue;
                }
              }

              v20 = (v37 + 1);
              goto LABEL_43;
            }

            v20 = v34 + 1;
          }

LABEL_43:
          v14 = v13;
          v13 = (v28 - 2);
LABEL_44:
          v39 = v20 - v5;
          v40 = *(a2 + 24);
          if (v20 <= v36)
          {
            *v40 = *v5;
            v44 = *(a2 + 24);
            v6 = v70;
            LODWORD(v8) = v71;
            if (v39 > 0x10)
            {
              v45 = (v44 + 16);
              v46 = v44 + v39;
              v47 = (v5 + 16);
              do
              {
                v48 = *v47++;
                *v45++ = v48;
              }

              while (v45 < v46);
              goto LABEL_55;
            }

            *(a2 + 24) = v44 + v39;
            v49 = *(a2 + 8);
          }

          else
          {
            v6 = v70;
            LODWORD(v8) = v71;
            if (v5 <= v36)
            {
              v41 = (v40 + v36 - v5);
              do
              {
                v42 = *v5;
                v5 += 16;
                *v40++ = v42;
              }

              while (v40 < v41);
              v5 = v36;
              v40 = v41;
            }

            while (v5 < v20)
            {
              v43 = *v5++;
              *v40 = v43;
              v40 = (v40 + 1);
            }

LABEL_55:
            *(a2 + 24) += v39;
            v49 = *(a2 + 8);
            if (v39 >= 0x10000)
            {
              v50 = (v49 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v50;
            }
          }

          *(v49 + 4) = v39;
          *v49 = v28 + 1;
          if (v29 - 3 >= 0x10000)
          {
            v51 = (v49 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v51;
          }

          *(v49 + 6) = v29 - 3;
          v52 = v49 + 8;
          *(a2 + 8) = v49 + 8;
          v5 = &v20[v29];
          if (&v20[v29] <= v74)
          {
            v53 = v13;
            v54 = v14;
            while (1)
            {
              v13 = v54;
              v54 = v53;
              v55 = v5 - v7;
              v56 = v5 - v7 - v19;
              if (v5 - v7 - *(a1 + 28) <= v19 || *(a1 + 40) != 0)
              {
                v56 = *(a1 + 28);
              }

              v58 = (v55 - v13);
              v59 = v73;
              if (v58 >= v8)
              {
                v59 = v7;
              }

              if ((v72 - v58) < 3 || v13 > v55 - v56 || *v5 != *(v59 + v58))
              {
                break;
              }

              if (v58 >= v8)
              {
                v60 = v6;
              }

              else
              {
                v60 = v67;
              }

              v61 = ZSTD_count_2segments(v5 + 2, (v59 + v58 + 4), v6, v60, v68);
              if (v5 <= v69)
              {
                **(a2 + 24) = *v5;
                v52 = *(a2 + 8);
              }

              *(v52 + 4) = 0;
              *v52 = 1;
              if (v61 + 1 >= 0x10000)
              {
                v62 = (v52 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v62;
              }

              *(v52 + 6) = v61 + 1;
              v52 += 8;
              v5 += v61 + 4;
              *(a2 + 8) = v52;
              v53 = v13;
              v14 = v54;
              v15 = v5;
              v6 = v70;
              LODWORD(v8) = v71;
              if (v5 > v74)
              {
                goto LABEL_83;
              }
            }

            v14 = v13;
            v13 = v53;
          }

          v15 = v5;
          goto LABEL_83;
        }

LABEL_40:
        v36 = v69;
        goto LABEL_44;
      }

      v15 += ((v15 - v5) >> 8) + 1;
      v6 = v70;
      LODWORD(v8) = v71;
LABEL_83:
      if (v15 >= v74)
      {
        goto LABEL_84;
      }
    }

    if (v24 >= v8)
    {
      v26 = v6;
    }

    else
    {
      v26 = v67;
    }

    v27 = ZSTD_count_2segments((v15 + 5), (v25 + v24 + 4), v6, v26, v68);
    v28 = 0;
    v29 = v27 + 4;
    goto LABEL_40;
  }

LABEL_84:
  *a3 = v13;
  a3[1] = v14;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_lazy_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 256);
  v11 = v10 - 7;
  v12 = 2 * (v10 > 3);
  v13 = v10 - 4;
  if (v11 < 0xFFFFFFFD)
  {
    v13 = v12;
  }

  v15 = *a3;
  v14 = a3[1];
  v89 = (v8 + v9);
  if ((v8 + v9) == a4)
  {
    v16 = a4 + 1;
  }

  else
  {
    v16 = a4;
  }

  if (v16 < v7)
  {
    v17 = a2;
    v84 = a3[1];
    v76 = a3;
    v19 = *(a1 + 16);
    v87 = (v19 + v9);
    v93 = v19;
    v81 = (v19 + *(a1 + 28));
    v91 = *off_1E81907F0[v13 + 3];
    v90 = v9 - 1;
    v86 = (v6 - 32);
    v80 = &a4[a5 - 8];
    v92 = 1 << *(a1 + 240);
    v79 = 1 - v8 - v92;
    v78 = 1 - v8;
    v77 = v9 + v8 - 2;
    v94 = *(a1 + 24);
    v88 = &a4[a5];
    v85 = *(a1 + 8);
    while (1)
    {
      v20 = 0;
      v21 = v16 - v8 + 1;
      v22 = v21 - v92;
      if (v21 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
      {
        v22 = *(a1 + 28);
      }

      v24 = (v21 - v15);
      v25 = v93;
      if (v24 >= v9)
      {
        v25 = v8;
      }

      if ((v90 - v24) >= 3 && v15 <= v21 - v22)
      {
        if (*(v16 + 1) == *(v25 + v24))
        {
          if (v24 >= v9)
          {
            v26 = v6;
          }

          else
          {
            v26 = v87;
          }

          v20 = ZSTD_count_2segments((v16 + 5), (v25 + v24 + 4), v6, v26, v89) + 4;
        }

        else
        {
          v20 = 0;
        }
      }

      v95[0] = 999999999;
      v27 = v91(a1, v16, v6, v95);
      if (v27 <= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v27;
      }

      if (v28 < 4)
      {
        v16 += ((v16 - v5) >> 8) + 1;
        goto LABEL_91;
      }

      v29 = v7;
      if (v27 <= v20)
      {
        v30 = 0;
      }

      else
      {
        v30 = v95[0];
      }

      if (v27 <= v20)
      {
        v31 = (v16 + 1);
      }

      else
      {
        v31 = v16;
      }

      if (v16 < v29)
      {
        v32 = 0;
        v33 = v77 + v15 - v16;
        v83 = v78 + v16;
        while (1)
        {
          v34 = &v16[v32 + 1];
          if (v30)
          {
            if (v83 + v32 - *(a1 + 28) > v92 && *(a1 + 40) == 0)
            {
              v36 = v79 + v16 + v32;
            }

            else
            {
              v36 = *(a1 + 28);
            }

            v37 = (v78 + v16 - v15 + v32);
            v38 = v85;
            if (v37 < v94)
            {
              v38 = v93;
            }

            if (v33 >= 3 && v15 <= v83 + v32 - v36 && *v34 == *(v38 + v37))
            {
              v39 = v37 >= v94 ? v88 : v87;
              v40 = ZSTD_count_2segments(&v16[v32 + 5], (v38 + v37 + 4), v88, v39, v89);
              if (v40 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v40 + 4) > (3 * v28 + (__clz(v30 + 1) ^ 0xFFFFFFE0) + 2))
              {
                v30 = 0;
                v31 = &v16[v32 + 1];
                v28 = v40 + 4;
              }
            }
          }

          v95[0] = 999999999;
          v41 = v91(a1, &v16[v32 + 1], v88, v95);
          if (v41 < 4 || (4 * v41 - (__clz(LODWORD(v95[0]) + 1) ^ 0x1F)) <= ((__clz(v30 + 1) ^ 0xFFFFFFE0) + 4 * v28 + 5))
          {
            break;
          }

          ++v32;
          --v33;
          v28 = v41;
          v30 = v95[0];
          v31 = v34;
          if (v80 - v16 == v32)
          {
            v31 = &v16[v32];
            v30 = v95[0];
            v28 = v41;
            break;
          }
        }

        v6 = v88;
        v17 = a2;
      }

      if (v30 > 2)
      {
        v42 = v85;
        v43 = v31 - (v30 + v85) + 2;
        if (v94 > v43)
        {
          v42 = v93;
        }

        v44 = v89;
        if (v94 > v43)
        {
          v44 = v81;
        }

        if (v31 > v5 && v42 + v43 > v44)
        {
          v45 = v43;
          v46 = (v31 - 1);
          v47 = (v42 + v45 - 1);
          while (*v46 == *v47)
          {
            ++v28;
            v48 = v46 - 1;
            if (v46 > v5)
            {
              --v46;
              if (v47-- > v44)
              {
                continue;
              }
            }

            v31 = (v48 + 1);
            goto LABEL_72;
          }

          v31 = (v46 + 1);
        }

LABEL_72:
        v84 = v15;
        v15 = (v30 - 2);
      }

      v50 = v31 - v5;
      v51 = *(v17 + 24);
      if (v31 > v86)
      {
        break;
      }

      *v51 = *v5;
      v55 = *(v17 + 24);
      if (v50 > 0x10)
      {
        v56 = (v55 + 16);
        v57 = v55 + v50;
        v58 = (v5 + 16);
        do
        {
          v59 = *v58++;
          *v56++ = v59;
        }

        while (v56 < v57);
LABEL_84:
        *(v17 + 24) += v50;
        v60 = *(v17 + 8);
        if (v50 >= 0x10000)
        {
          v61 = (v60 - *v17) >> 3;
          *(v17 + 72) = 1;
          *(v17 + 76) = v61;
        }

        goto LABEL_87;
      }

      *(v17 + 24) = v55 + v50;
      v60 = *(v17 + 8);
LABEL_87:
      *(v60 + 4) = v50;
      *v60 = v30 + 1;
      if (v28 - 3 >= 0x10000)
      {
        v62 = (v60 - *v17) >> 3;
        *(v17 + 72) = 2;
        *(v17 + 76) = v62;
      }

      *(v60 + 6) = v28 - 3;
      v63 = v60 + 8;
      *(v17 + 8) = v60 + 8;
      v5 = (v31 + v28);
      v7 = v80;
      if (v31 + v28 <= v80)
      {
        v65 = v15;
        v66 = v84;
        v8 = v85;
        while (1)
        {
          v15 = v66;
          v66 = v65;
          v67 = v5 - v85;
          v68 = v5 - v85 - v92;
          if (v5 - v85 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
          {
            v68 = *(a1 + 28);
          }

          v70 = (v67 - v15);
          v71 = v93;
          if (v70 >= v94)
          {
            v71 = v85;
          }

          if ((v90 - v70) < 3 || v15 > v67 - v68 || *v5 != *(v71 + v70))
          {
            break;
          }

          if (v70 >= v94)
          {
            v72 = v6;
          }

          else
          {
            v72 = v87;
          }

          v73 = ZSTD_count_2segments(v5 + 2, (v71 + v70 + 4), v6, v72, v89);
          if (v5 <= v86)
          {
            **(v17 + 24) = *v5;
            v63 = *(v17 + 8);
          }

          *(v63 + 4) = 0;
          *v63 = 1;
          if (v73 + 1 >= 0x10000)
          {
            v74 = (v63 - *v17) >> 3;
            *(v17 + 72) = 2;
            *(v17 + 76) = v74;
          }

          *(v63 + 6) = v73 + 1;
          v63 += 8;
          v5 += v73 + 4;
          *(v17 + 8) = v63;
          v65 = v15;
          v64 = v66;
          v16 = v5;
          if (v5 > v80)
          {
            goto LABEL_92;
          }
        }

        v64 = v15;
        v15 = v65;
        v16 = v5;
        goto LABEL_92;
      }

      v16 = (v31 + v28);
LABEL_91:
      v8 = v85;
      v64 = v84;
LABEL_92:
      v84 = v64;
      LODWORD(v9) = v94;
      if (v16 >= v7)
      {
        a3 = v76;
        v14 = v64;
        goto LABEL_115;
      }
    }

    if (v5 <= v86)
    {
      v52 = (v51 + v86 - v5);
      do
      {
        v53 = *v5;
        v5 += 16;
        *v51++ = v53;
      }

      while (v51 < v52);
      v5 = v86;
      v51 = v52;
    }

    while (v5 < v31)
    {
      v54 = *v5++;
      *v51 = v54;
      v51 = (v51 + 1);
    }

    goto LABEL_84;
  }

LABEL_115:
  *a3 = v15;
  a3[1] = v14;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 24);
  v94 = *(a1 + 8);
  v8 = (v94 + v7);
  v9 = *(a1 + 256);
  v10 = v9 - 7;
  v11 = 2 * (v9 > 3);
  v12 = v9 - 4;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v11;
  }

  v14 = *a3;
  LODWORD(v13) = a3[1];
  if (v8 == a4)
  {
    v15 = a4 + 1;
  }

  else
  {
    v15 = a4;
  }

  v95 = &a4[a5 - 8];
  if (v15 < v95)
  {
    v17 = *(a1 + 16);
    v87 = (v17 + v7);
    v93 = v17;
    v82 = (v17 + *(a1 + 28));
    v89 = *off_1E81907F0[v12 + 3];
    v90 = &a4[a5];
    v91 = v7 - 1;
    v92 = 1 << *(a1 + 240);
    v86 = v6 - 32;
    v88 = *(a1 + 24);
    v84 = (v94 + v7);
    while (1)
    {
      v18 = 0;
      v19 = v15 - v94;
      v20 = v15 - v94 + 1;
      v21 = v20 - v92;
      if (v20 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
      {
        v21 = *(a1 + 28);
      }

      v23 = (v20 - v14);
      v24 = v93;
      if (v23 >= v7)
      {
        v24 = v94;
      }

      v85 = v13;
      if ((v91 - v23) >= 3 && v14 <= v20 - v21)
      {
        if (*(v15 + 1) == *(v24 + v23))
        {
          if (v23 >= v7)
          {
            v25 = v6;
          }

          else
          {
            v25 = v87;
          }

          v18 = ZSTD_count_2segments((v15 + 5), (v24 + v23 + 4), v6, v25, v8) + 4;
        }

        else
        {
          v18 = 0;
        }
      }

      v96 = 999999999;
      v26 = v89(a1, v15, v6, &v96);
      v27 = v26 <= v18 ? v18 : v26;
      if (v27 >= 4)
      {
        break;
      }

      v15 += ((v15 - v5) >> 8) + 1;
      v8 = v84;
      LODWORD(v13) = v85;
LABEL_133:
      if (v15 >= v95)
      {
        goto LABEL_134;
      }
    }

    if (v26 <= v18)
    {
      v28 = 0;
    }

    else
    {
      v28 = v96;
    }

    if (v26 <= v18)
    {
      v29 = v15 + 1;
    }

    else
    {
      v29 = v15;
    }

    v7 = v29;
    v30 = v28;
    v31 = v27;
    if (v15 < v95)
    {
      do
      {
        v7 = (v15 + 1);
        v32 = v19 + 1;
        if (v28)
        {
          v33 = v32 - v92;
          if (v32 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
          {
            v33 = *(a1 + 28);
          }

          v35 = (v32 - v14);
          v36 = v94;
          if (v35 < v88)
          {
            v36 = v93;
          }

          if ((v91 - v35) >= 3 && v14 <= v32 - v33)
          {
            v37 = v36 + v35;
            if (*v7 == *v37)
            {
              v38 = v35 >= v88 ? v90 : v87;
              v39 = ZSTD_count_2segments((v15 + 5), (v37 + 4), v90, v38, v84);
              if (v39 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v39 + 4) > (3 * v27 + (__clz(v28 + 1) ^ 0xFFFFFFE0) + 2))
              {
                v28 = 0;
                v29 = v15 + 1;
                v27 = v39 + 4;
              }
            }
          }
        }

        v96 = 999999999;
        v31 = v89(a1, v15 + 1, v90, &v96);
        if (v31 < 4 || (v30 = v96, (4 * v31 - (__clz(v96 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v27 + 5)))
        {
          if (v7 >= v95)
          {
            goto LABEL_77;
          }

          v7 = (v15 + 2);
          v19 += 2;
          if (v28)
          {
            v40 = v19 - v92;
            if (v19 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
            {
              v40 = *(a1 + 28);
            }

            v42 = (v19 - v14);
            v43 = v94;
            if (v42 < v88)
            {
              v43 = v93;
            }

            if ((v91 - v42) >= 3 && v14 <= v19 - v40)
            {
              v44 = v43 + v42;
              if (*v7 == *v44)
              {
                v45 = v42 >= v88 ? v90 : v87;
                v46 = ZSTD_count_2segments(v15 + 3, (v44 + 4), v90, v45, v84);
                if (v46 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v27 + 2) < 4 * (v46 + 4))
                {
                  v29 = v15 + 2;
                  v28 = 0;
                  v27 = v46 + 4;
                }
              }
            }
          }

          v96 = 999999999;
          v31 = v89(a1, v15 + 2, v90, &v96);
          if (v31 < 4 || (v30 = v96, (4 * v31 - (__clz(v96 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v27 + 8)))
          {
LABEL_77:
            v7 = v29;
            v30 = v28;
            v31 = v27;
            break;
          }
        }

        else
        {
          ++v19;
        }

        v15 = v7;
        v27 = v31;
        v28 = v30;
        v29 = v7;
      }

      while (v7 < v95);
    }

    v13 = v85;
    if (v30 <= 2)
    {
      v6 = v90;
      v8 = v84;
      v50 = v86;
    }

    else
    {
      v47 = v94;
      v48 = v7 - (v30 + v94) + 2;
      if (v88 > v48)
      {
        v47 = v93;
      }

      v8 = v84;
      v49 = v82;
      if (v88 <= v48)
      {
        v49 = v84;
      }

      v50 = v86;
      if (v7 <= v5 || v47 + v48 <= v49)
      {
        v6 = v90;
      }

      else
      {
        v51 = v48;
        v52 = (v7 - 1);
        v53 = (v47 + v51 - 1);
        v6 = v90;
        while (*v52 == *v53)
        {
          ++v31;
          v54 = v52 - 1;
          if (v52 > v5)
          {
            --v52;
            if (v53-- > v49)
            {
              continue;
            }
          }

          v7 = (v54 + 1);
          goto LABEL_93;
        }

        v7 = (v52 + 1);
      }

LABEL_93:
      v13 = v14;
      v14 = (v30 - 2);
    }

    v56 = v7 - v5;
    v57 = *(a2 + 24);
    if (v7 <= v50)
    {
      *v57 = *v5;
      v61 = *(a2 + 24);
      if (v56 <= 0x10)
      {
        *(a2 + 24) = v61 + v56;
        v66 = *(a2 + 8);
        goto LABEL_108;
      }

      v62 = (v61 + 16);
      v63 = v61 + v56;
      v64 = (v5 + 16);
      do
      {
        v65 = *v64++;
        *v62++ = v65;
      }

      while (v62 < v63);
    }

    else
    {
      if (v5 <= v50)
      {
        v58 = (v57 + v50 - v5);
        do
        {
          v59 = *v5;
          v5 += 16;
          *v57++ = v59;
        }

        while (v57 < v58);
        v5 = v50;
        v57 = v58;
      }

      while (v5 < v7)
      {
        v60 = *v5++;
        *v57 = v60;
        v57 = (v57 + 1);
      }
    }

    *(a2 + 24) += v56;
    v66 = *(a2 + 8);
    if (v56 >= 0x10000)
    {
      v67 = (v66 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v67;
    }

LABEL_108:
    *(v66 + 4) = v56;
    *v66 = v30 + 1;
    if (v31 - 3 >= 0x10000)
    {
      v68 = (v66 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v68;
    }

    *(v66 + 6) = v31 - 3;
    v69 = v66 + 8;
    *(a2 + 8) = v66 + 8;
    v5 = (v7 + v31);
    if (v7 + v31 <= v95)
    {
      v70 = v14;
      v71 = v13;
      LODWORD(v7) = v88;
      while (1)
      {
        v14 = v71;
        v71 = v70;
        v72 = v5 - v94;
        v73 = v5 - v94 - v92;
        if (v5 - v94 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
        {
          v73 = *(a1 + 28);
        }

        v75 = (v72 - v14);
        v76 = v93;
        if (v75 >= v88)
        {
          v76 = v94;
        }

        if ((v91 - v75) < 3 || v14 > v72 - v73 || *v5 != *(v76 + v75))
        {
          break;
        }

        if (v75 >= v88)
        {
          v77 = v6;
        }

        else
        {
          v77 = v87;
        }

        v78 = ZSTD_count_2segments(v5 + 2, (v76 + v75 + 4), v6, v77, v8);
        if (v5 <= v86)
        {
          **(a2 + 24) = *v5;
          v69 = *(a2 + 8);
        }

        *(v69 + 4) = 0;
        *v69 = 1;
        if (v78 + 1 >= 0x10000)
        {
          v79 = (v69 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v79;
        }

        *(v69 + 6) = v78 + 1;
        v69 += 8;
        v5 += v78 + 4;
        *(a2 + 8) = v69;
        v70 = v14;
        LODWORD(v13) = v71;
        v15 = v5;
        if (v5 > v95)
        {
          goto LABEL_133;
        }
      }

      LODWORD(v13) = v14;
      v14 = v70;
      v15 = v5;
    }

    else
    {
      v15 = (v7 + v31);
      LODWORD(v7) = v88;
    }

    goto LABEL_133;
  }

LABEL_134:
  *a3 = v14;
  a3[1] = v13;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_btlazy2_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = *(a1 + 24);
  v94 = *(a1 + 8);
  v8 = (v94 + v7);
  v9 = *(a1 + 256);
  v10 = v9 - 7;
  v11 = 2 * (v9 > 3);
  v12 = v9 - 4;
  if (v10 < 0xFFFFFFFD)
  {
    v12 = v11;
  }

  v14 = *a3;
  LODWORD(v13) = a3[1];
  if (v8 == a4)
  {
    v15 = a4 + 1;
  }

  else
  {
    v15 = a4;
  }

  v95 = &a4[a5 - 8];
  if (v15 < v95)
  {
    v17 = *(a1 + 16);
    v87 = (v17 + v7);
    v93 = v17;
    v82 = (v17 + *(a1 + 28));
    v89 = *off_1E8190850[v12 + 3];
    v90 = &a4[a5];
    v91 = v7 - 1;
    v92 = 1 << *(a1 + 240);
    v86 = v6 - 32;
    v88 = *(a1 + 24);
    v84 = (v94 + v7);
    while (1)
    {
      v18 = 0;
      v19 = v15 - v94;
      v20 = v15 - v94 + 1;
      v21 = v20 - v92;
      if (v20 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
      {
        v21 = *(a1 + 28);
      }

      v23 = (v20 - v14);
      v24 = v93;
      if (v23 >= v7)
      {
        v24 = v94;
      }

      v85 = v13;
      if ((v91 - v23) >= 3 && v14 <= v20 - v21)
      {
        if (*(v15 + 1) == *(v24 + v23))
        {
          if (v23 >= v7)
          {
            v25 = v6;
          }

          else
          {
            v25 = v87;
          }

          v18 = ZSTD_count_2segments((v15 + 5), (v24 + v23 + 4), v6, v25, v8) + 4;
        }

        else
        {
          v18 = 0;
        }
      }

      v96 = 999999999;
      v26 = v89(a1, v15, v6, &v96);
      v27 = v26 <= v18 ? v18 : v26;
      if (v27 >= 4)
      {
        break;
      }

      v15 += ((v15 - v5) >> 8) + 1;
      v8 = v84;
      LODWORD(v13) = v85;
LABEL_133:
      if (v15 >= v95)
      {
        goto LABEL_134;
      }
    }

    if (v26 <= v18)
    {
      v28 = 0;
    }

    else
    {
      v28 = v96;
    }

    if (v26 <= v18)
    {
      v29 = v15 + 1;
    }

    else
    {
      v29 = v15;
    }

    v7 = v29;
    v30 = v28;
    v31 = v27;
    if (v15 < v95)
    {
      do
      {
        v7 = (v15 + 1);
        v32 = v19 + 1;
        if (v28)
        {
          v33 = v32 - v92;
          if (v32 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
          {
            v33 = *(a1 + 28);
          }

          v35 = (v32 - v14);
          v36 = v94;
          if (v35 < v88)
          {
            v36 = v93;
          }

          if ((v91 - v35) >= 3 && v14 <= v32 - v33)
          {
            v37 = v36 + v35;
            if (*v7 == *v37)
            {
              v38 = v35 >= v88 ? v90 : v87;
              v39 = ZSTD_count_2segments((v15 + 5), (v37 + 4), v90, v38, v84);
              if (v39 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v39 + 4) > (3 * v27 + (__clz(v28 + 1) ^ 0xFFFFFFE0) + 2))
              {
                v28 = 0;
                v29 = v15 + 1;
                v27 = v39 + 4;
              }
            }
          }
        }

        v96 = 999999999;
        v31 = v89(a1, v15 + 1, v90, &v96);
        if (v31 < 4 || (v30 = v96, (4 * v31 - (__clz(v96 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v27 + 5)))
        {
          if (v7 >= v95)
          {
            goto LABEL_77;
          }

          v7 = (v15 + 2);
          v19 += 2;
          if (v28)
          {
            v40 = v19 - v92;
            if (v19 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
            {
              v40 = *(a1 + 28);
            }

            v42 = (v19 - v14);
            v43 = v94;
            if (v42 < v88)
            {
              v43 = v93;
            }

            if ((v91 - v42) >= 3 && v14 <= v19 - v40)
            {
              v44 = v43 + v42;
              if (*v7 == *v44)
              {
                v45 = v42 >= v88 ? v90 : v87;
                v46 = ZSTD_count_2segments(v15 + 3, (v44 + 4), v90, v45, v84);
                if (v46 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v27 + 2) < 4 * (v46 + 4))
                {
                  v29 = v15 + 2;
                  v28 = 0;
                  v27 = v46 + 4;
                }
              }
            }
          }

          v96 = 999999999;
          v31 = v89(a1, v15 + 2, v90, &v96);
          if (v31 < 4 || (v30 = v96, (4 * v31 - (__clz(v96 + 1) ^ 0x1F)) <= ((__clz(v28 + 1) ^ 0xFFFFFFE0) + 4 * v27 + 8)))
          {
LABEL_77:
            v7 = v29;
            v30 = v28;
            v31 = v27;
            break;
          }
        }

        else
        {
          ++v19;
        }

        v15 = v7;
        v27 = v31;
        v28 = v30;
        v29 = v7;
      }

      while (v7 < v95);
    }

    v13 = v85;
    if (v30 <= 2)
    {
      v6 = v90;
      v8 = v84;
      v50 = v86;
    }

    else
    {
      v47 = v94;
      v48 = v7 - (v30 + v94) + 2;
      if (v88 > v48)
      {
        v47 = v93;
      }

      v8 = v84;
      v49 = v82;
      if (v88 <= v48)
      {
        v49 = v84;
      }

      v50 = v86;
      if (v7 <= v5 || v47 + v48 <= v49)
      {
        v6 = v90;
      }

      else
      {
        v51 = v48;
        v52 = (v7 - 1);
        v53 = (v47 + v51 - 1);
        v6 = v90;
        while (*v52 == *v53)
        {
          ++v31;
          v54 = v52 - 1;
          if (v52 > v5)
          {
            --v52;
            if (v53-- > v49)
            {
              continue;
            }
          }

          v7 = (v54 + 1);
          goto LABEL_93;
        }

        v7 = (v52 + 1);
      }

LABEL_93:
      v13 = v14;
      v14 = (v30 - 2);
    }

    v56 = v7 - v5;
    v57 = *(a2 + 24);
    if (v7 <= v50)
    {
      *v57 = *v5;
      v61 = *(a2 + 24);
      if (v56 <= 0x10)
      {
        *(a2 + 24) = v61 + v56;
        v66 = *(a2 + 8);
        goto LABEL_108;
      }

      v62 = (v61 + 16);
      v63 = v61 + v56;
      v64 = (v5 + 16);
      do
      {
        v65 = *v64++;
        *v62++ = v65;
      }

      while (v62 < v63);
    }

    else
    {
      if (v5 <= v50)
      {
        v58 = (v57 + v50 - v5);
        do
        {
          v59 = *v5;
          v5 += 16;
          *v57++ = v59;
        }

        while (v57 < v58);
        v5 = v50;
        v57 = v58;
      }

      while (v5 < v7)
      {
        v60 = *v5++;
        *v57 = v60;
        v57 = (v57 + 1);
      }
    }

    *(a2 + 24) += v56;
    v66 = *(a2 + 8);
    if (v56 >= 0x10000)
    {
      v67 = (v66 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v67;
    }

LABEL_108:
    *(v66 + 4) = v56;
    *v66 = v30 + 1;
    if (v31 - 3 >= 0x10000)
    {
      v68 = (v66 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v68;
    }

    *(v66 + 6) = v31 - 3;
    v69 = v66 + 8;
    *(a2 + 8) = v66 + 8;
    v5 = (v7 + v31);
    if (v7 + v31 <= v95)
    {
      v70 = v14;
      v71 = v13;
      LODWORD(v7) = v88;
      while (1)
      {
        v14 = v71;
        v71 = v70;
        v72 = v5 - v94;
        v73 = v5 - v94 - v92;
        if (v5 - v94 - *(a1 + 28) <= v92 || *(a1 + 40) != 0)
        {
          v73 = *(a1 + 28);
        }

        v75 = (v72 - v14);
        v76 = v93;
        if (v75 >= v88)
        {
          v76 = v94;
        }

        if ((v91 - v75) < 3 || v14 > v72 - v73 || *v5 != *(v76 + v75))
        {
          break;
        }

        if (v75 >= v88)
        {
          v77 = v6;
        }

        else
        {
          v77 = v87;
        }

        v78 = ZSTD_count_2segments(v5 + 2, (v76 + v75 + 4), v6, v77, v8);
        if (v5 <= v86)
        {
          **(a2 + 24) = *v5;
          v69 = *(a2 + 8);
        }

        *(v69 + 4) = 0;
        *v69 = 1;
        if (v78 + 1 >= 0x10000)
        {
          v79 = (v69 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v79;
        }

        *(v69 + 6) = v78 + 1;
        v69 += 8;
        v5 += v78 + 4;
        *(a2 + 8) = v69;
        v70 = v14;
        LODWORD(v13) = v71;
        v15 = v5;
        if (v5 > v95)
        {
          goto LABEL_133;
        }
      }

      LODWORD(v13) = v14;
      v14 = v70;
      v15 = v5;
    }

    else
    {
      v15 = (v7 + v31);
      LODWORD(v7) = v88;
    }

    goto LABEL_133;
  }

LABEL_134:
  *a3 = v14;
  a3[1] = v13;
  return v6 - v5;
}

unint64_t ZSTD_compressBlock_greedy_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v90 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v92 = *(a1 + 16);
  v10 = *(a1 + 28);
  v94 = *(a1 + 24);
  v11 = *(a1 + 240);
  v12 = *(a1 + 252);
  v13 = *(a1 + 256);
  if (v12 < 5)
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  v15 = 2 * (v13 > 3);
  if (v13 - 7 >= 0xFFFFFFFD)
  {
    v15 = v13 - 4;
  }

  v16 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v16 = v12 - 4;
  }

  v88 = *(&off_1E81908B0[3 * v15])[v16 + 9];
  v17 = *a3;
  v18 = a3[1];
  v89 = (v9 + v94);
  if ((v9 + v94) == a4)
  {
    v19 = a4 + 1;
  }

  else
  {
    v19 = a4;
  }

  if (v13 >= 6)
  {
    v13 = 6;
  }

  v20 = *(a1 + 44);
  v21 = v8 - (v9 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  v93 = &a4[a5 - 16];
  if (v8 >= v9 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 96);
    v26 = *(a1 + 52);
    v27 = 56 - v26;
    v28 = 24 - v26;
    v29 = *(a1 + 56);
    do
    {
      if (v13 == 5)
      {
        v30 = 0xCF1BBCDCBB000000 * *(v9 + v20);
      }

      else
      {
        if (v13 != 6)
        {
          LODWORD(v31) = (-1640531535 * *(v9 + v20)) >> v28;
          goto LABEL_27;
        }

        v30 = 0xCF1BBCDCBF9B0000 * *(v9 + v20);
      }

      v31 = v30 >> v27;
LABEL_27:
      v32 = v31 >> 8 << v14;
      _X7 = v25 + 4 * v32;
      __asm { PRFM            #0, [X7] }

      if (v12 >= 5)
      {
        __asm { PRFM            #0, [X7,#0x40] }
      }

      _X6 = v29 + 2 * v32;
      __asm { PRFM            #0, [X6] }

      *(a1 + 64 + 4 * (v20++ & 7)) = v31;
    }

    while (v24 != v20);
  }

  if (v19 < v93)
  {
    v87 = v92 + v10;
    v41 = 1 << v11;
    v91 = v94 - 1;
    while (1)
    {
      v42 = v19 + 1;
      v43 = v19 - v9 + 1;
      v44 = v43 - v41;
      if (v43 - *(a1 + 28) <= v41 || *(a1 + 40) != 0)
      {
        v44 = *(a1 + 28);
      }

      v46 = (v43 - v17);
      v47 = v92;
      if (v46 >= v94)
      {
        v47 = v9;
      }

      if ((v91 - v46) >= 3 && v17 <= v43 - v44 && *v42 == *(v47 + v46))
      {
        break;
      }

      v95 = 999999999;
      v51 = v88(a1, v19, v90, &v95);
      if (v51)
      {
        v42 = v19;
        v50 = v95;
      }

      else
      {
        v50 = 0;
      }

      if (v51 > 3)
      {
        if (v95 >= 3)
        {
          v52 = v19 - v9 - v95 + 2;
          if (v94 <= v52)
          {
            v53 = v9;
          }

          else
          {
            v53 = v92;
          }

          v54 = v9 + v94;
          if (v94 > v52)
          {
            v54 = v87;
          }

          if (v19 <= v5 || v53 + v52 <= v54)
          {
            v58 = (v90 - 32);
          }

          else
          {
            v55 = v52;
            v56 = v42 - 1;
            v57 = (v53 + v55 - 1);
            v58 = (v90 - 32);
            while (*v56 == *v57)
            {
              ++v51;
              v59 = (v56 - 1);
              if (v56 > v5)
              {
                --v56;
                if (v57-- > v54)
                {
                  continue;
                }
              }

              v42 = (v59 + 1);
              goto LABEL_67;
            }

            v42 = v56 + 1;
          }

LABEL_67:
          v18 = v17;
          v17 = (v50 - 2);
LABEL_68:
          v61 = v42 - v5;
          v62 = *(a2 + 24);
          if (v42 <= v58)
          {
            *v62 = *v5;
            v66 = *(a2 + 24);
            if (v61 > 0x10)
            {
              v67 = (v66 + 16);
              v68 = v66 + v61;
              v69 = (v5 + 16);
              do
              {
                v70 = *v69++;
                *v67++ = v70;
              }

              while (v67 < v68);
              goto LABEL_79;
            }

            *(a2 + 24) = v66 + v61;
            v71 = *(a2 + 8);
          }

          else
          {
            if (v5 <= v58)
            {
              v63 = (v62 + v58 - v5);
              do
              {
                v64 = *v5;
                v5 += 16;
                *v62++ = v64;
              }

              while (v62 < v63);
              v5 = v58;
              v62 = v63;
            }

            while (v5 < v42)
            {
              v65 = *v5++;
              *v62 = v65;
              v62 = (v62 + 1);
            }

LABEL_79:
            *(a2 + 24) += v61;
            v71 = *(a2 + 8);
            if (v61 >= 0x10000)
            {
              v72 = (v71 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v72;
            }
          }

          *(v71 + 4) = v61;
          *v71 = v50 + 1;
          if (v51 - 3 >= 0x10000)
          {
            v73 = (v71 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v73;
          }

          *(v71 + 6) = v51 - 3;
          v74 = v71 + 8;
          *(a2 + 8) = v71 + 8;
          v5 = &v42[v51];
          if (&v42[v51] <= v93)
          {
            v75 = v17;
            v76 = v18;
            while (1)
            {
              v17 = v76;
              v76 = v75;
              v77 = v5 - v9;
              v78 = v5 - v9 - v41;
              if (v5 - v9 - *(a1 + 28) <= v41 || *(a1 + 40) != 0)
              {
                v78 = *(a1 + 28);
              }

              v80 = (v77 - v17);
              v81 = v92;
              if (v80 >= v94)
              {
                v81 = v9;
              }

              if ((v91 - v80) < 3 || v17 > v77 - v78 || *v5 != *(v81 + v80))
              {
                break;
              }

              if (v80 >= v94)
              {
                v82 = v90;
              }

              else
              {
                v82 = (v92 + v94);
              }

              v83 = ZSTD_count_2segments(v5 + 2, (v81 + v80 + 4), v90, v82, v89);
              if (v5 <= v90 - 32)
              {
                **(a2 + 24) = *v5;
                v74 = *(a2 + 8);
              }

              *(v74 + 4) = 0;
              *v74 = 1;
              if (v83 + 1 >= 0x10000)
              {
                v84 = (v74 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v84;
              }

              *(v74 + 6) = v83 + 1;
              v74 += 8;
              v5 += v83 + 4;
              *(a2 + 8) = v74;
              v75 = v17;
              v18 = v76;
              v19 = v5;
              if (v5 > v93)
              {
                goto LABEL_107;
              }
            }

            v18 = v17;
            v17 = v75;
          }

          v19 = v5;
          goto LABEL_107;
        }

LABEL_64:
        v58 = (v90 - 32);
        goto LABEL_68;
      }

      v19 += ((v19 - v5) >> 8) + 1;
LABEL_107:
      if (v19 >= v93)
      {
        goto LABEL_108;
      }
    }

    if (v46 >= v94)
    {
      v48 = v90;
    }

    else
    {
      v48 = (v92 + v94);
    }

    v49 = ZSTD_count_2segments((v19 + 5), (v47 + v46 + 4), v90, v48, v89);
    v50 = 0;
    v51 = v49 + 4;
    goto LABEL_64;
  }

LABEL_108:
  *a3 = v17;
  a3[1] = v18;
  return v90 - v5;
}

unint64_t ZSTD_compressBlock_lazy_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v10 = *(a1 + 28);
  v112 = *(a1 + 16);
  v113 = *(a1 + 24);
  v11 = *(a1 + 240);
  v12 = *(a1 + 252);
  v13 = *(a1 + 256);
  if (v12 < 5)
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  v15 = 2 * (v13 > 3);
  if (v13 - 7 >= 0xFFFFFFFD)
  {
    v15 = v13 - 4;
  }

  v16 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v16 = v12 - 4;
  }

  v110 = *(&off_1E81908B0[3 * v15])[v16 + 9];
  v17 = *a3;
  v104 = a3[1];
  v108 = (v9 + v113);
  if ((v9 + v113) == a4)
  {
    v18 = a4 + 1;
  }

  else
  {
    v18 = a4;
  }

  if (v13 >= 6)
  {
    v13 = 6;
  }

  v19 = *(a1 + 44);
  v20 = v8 - (v9 + v19);
  if ((v20 + 1) < 8)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = 8;
  }

  if (v8 >= v9 + v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 + v19);
  if (v19 < v23)
  {
    v24 = *(a1 + 96);
    v25 = *(a1 + 52);
    v26 = 56 - v25;
    v27 = 24 - v25;
    v28 = *(a1 + 56);
    do
    {
      if (v13 == 5)
      {
        v29 = 0xCF1BBCDCBB000000 * *(v9 + v19);
      }

      else
      {
        if (v13 != 6)
        {
          LODWORD(v30) = (-1640531535 * *(v9 + v19)) >> v27;
          goto LABEL_27;
        }

        v29 = 0xCF1BBCDCBF9B0000 * *(v9 + v19);
      }

      v30 = v29 >> v26;
LABEL_27:
      v31 = v30 >> 8 << v14;
      _X19 = v24 + 4 * v31;
      __asm { PRFM            #0, [X19] }

      if (v12 >= 5)
      {
        __asm { PRFM            #0, [X19,#0x40] }
      }

      _X7 = v28 + 2 * v31;
      __asm { PRFM            #0, [X7] }

      *(a1 + 64 + 4 * (v19++ & 7)) = v30;
    }

    while (v23 != v19);
  }

  if (v18 < v8)
  {
    v101 = (v112 + v10);
    v109 = v113 - 1;
    v106 = (v7 - 32);
    v100 = &a4[a5 - 16];
    v111 = 1 << v11;
    v99 = 1 - v9 - (1 << v11);
    v98 = 1 - v9;
    v97 = v113 + v9 - 2;
    v107 = &a4[a5];
    v105 = v9;
    while (1)
    {
      v40 = 0;
      v41 = v18 - v9 + 1;
      v42 = v41 - v111;
      if (v41 - *(a1 + 28) <= v111 || *(a1 + 40) != 0)
      {
        v42 = *(a1 + 28);
      }

      v44 = (v41 - v17);
      v45 = v112;
      if (v44 >= v113)
      {
        v45 = v9;
      }

      if ((v109 - v44) >= 3 && v17 <= v41 - v42)
      {
        if (*(v18 + 1) == *(v45 + v44))
        {
          if (v44 >= v113)
          {
            v46 = v7;
          }

          else
          {
            v46 = (v112 + v113);
          }

          v40 = ZSTD_count_2segments((v18 + 5), (v45 + v44 + 4), v7, v46, v108) + 4;
        }

        else
        {
          v40 = 0;
        }
      }

      v114[0] = 999999999;
      v47 = v110(a1, v18, v7, v114);
      if (v47 <= v40)
      {
        v48 = v40;
      }

      else
      {
        v48 = v47;
      }

      if (v48 < 4)
      {
        v18 += ((v18 - v5) >> 8) + 1;
        goto LABEL_115;
      }

      if (v47 <= v40)
      {
        v49 = 0;
      }

      else
      {
        v49 = v114[0];
      }

      v50 = v8;
      if (v47 <= v40)
      {
        v51 = (v18 + 1);
      }

      else
      {
        v51 = v18;
      }

      if (v18 < v50)
      {
        v52 = 0;
        v53 = v97 + v17 - v18;
        v103 = v98 + v18;
        while (1)
        {
          v54 = &v18[v52 + 1];
          if (v49)
          {
            if (v103 + v52 - *(a1 + 28) > v111 && *(a1 + 40) == 0)
            {
              v56 = v99 + v18 + v52;
            }

            else
            {
              v56 = *(a1 + 28);
            }

            v57 = (v98 + v18 - v17 + v52);
            v58 = v105;
            if (v57 < v113)
            {
              v58 = v112;
            }

            if (v53 >= 3 && v17 <= v103 + v52 - v56 && *v54 == *(v58 + v57))
            {
              v59 = (v57 >= v113 ? v107 : v112 + v113);
              v60 = ZSTD_count_2segments(&v18[v52 + 5], (v58 + v57 + 4), v107, v59, v108);
              if (v60 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v60 + 4) > (3 * v48 + (__clz(v49 + 1) ^ 0xFFFFFFE0) + 2))
              {
                v49 = 0;
                v51 = &v18[v52 + 1];
                v48 = v60 + 4;
              }
            }
          }

          v114[0] = 999999999;
          v61 = v110(a1, &v18[v52 + 1], v107, v114);
          if (v61 < 4 || (4 * v61 - (__clz(LODWORD(v114[0]) + 1) ^ 0x1F)) <= ((__clz(v49 + 1) ^ 0xFFFFFFE0) + 4 * v48 + 5))
          {
            break;
          }

          ++v52;
          --v53;
          v48 = v61;
          v49 = v114[0];
          v51 = v54;
          if (v100 - v18 == v52)
          {
            v51 = &v18[v52];
            v49 = v114[0];
            v48 = v61;
            break;
          }
        }

        v7 = v107;
      }

      if (v49 > 2)
      {
        v62 = v105;
        v63 = v51 - (v49 + v105) + 2;
        if (v113 > v63)
        {
          v62 = v112;
        }

        v64 = v108;
        if (v113 > v63)
        {
          v64 = v101;
        }

        if (v51 > v5 && v62 + v63 > v64)
        {
          v65 = v63;
          v66 = (v51 - 1);
          v67 = (v62 + v65 - 1);
          while (*v66 == *v67)
          {
            ++v48;
            v68 = v66 - 1;
            if (v66 > v5)
            {
              --v66;
              if (v67-- > v64)
              {
                continue;
              }
            }

            v51 = (v68 + 1);
            goto LABEL_96;
          }

          v51 = (v66 + 1);
        }

LABEL_96:
        v104 = v17;
        v17 = (v49 - 2);
      }

      v70 = v51 - v5;
      v71 = *(a2 + 24);
      if (v51 > v106)
      {
        break;
      }

      *v71 = *v5;
      v75 = *(a2 + 24);
      if (v70 > 0x10)
      {
        v76 = (v75 + 16);
        v77 = v75 + v70;
        v78 = (v5 + 16);
        do
        {
          v79 = *v78++;
          *v76++ = v79;
        }

        while (v76 < v77);
LABEL_108:
        *(a2 + 24) += v70;
        v80 = *(a2 + 8);
        if (v70 >= 0x10000)
        {
          v81 = (v80 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v81;
        }

        goto LABEL_111;
      }

      *(a2 + 24) = v75 + v70;
      v80 = *(a2 + 8);
LABEL_111:
      *(v80 + 4) = v70;
      *v80 = v49 + 1;
      if (v48 - 3 >= 0x10000)
      {
        v82 = (v80 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v82;
      }

      *(v80 + 6) = v48 - 3;
      v83 = v80 + 8;
      *(a2 + 8) = v80 + 8;
      v5 = (v51 + v48);
      v8 = v100;
      v9 = v105;
      if (v5 <= v100)
      {
        v85 = v17;
        v86 = v104;
        while (1)
        {
          v17 = v86;
          v86 = v85;
          v87 = v5 - v105;
          v88 = v5 - v105 - v111;
          if (v5 - v105 - *(a1 + 28) <= v111 || *(a1 + 40) != 0)
          {
            v88 = *(a1 + 28);
          }

          v90 = (v87 - v17);
          v91 = v112;
          if (v90 >= v113)
          {
            v91 = v105;
          }

          if ((v109 - v90) < 3 || v17 > v87 - v88 || *v5 != *(v91 + v90))
          {
            break;
          }

          if (v90 >= v113)
          {
            v92 = v7;
          }

          else
          {
            v92 = (v112 + v113);
          }

          v93 = ZSTD_count_2segments(v5 + 2, (v91 + v90 + 4), v7, v92, v108);
          if (v5 <= v106)
          {
            **(a2 + 24) = *v5;
            v83 = *(a2 + 8);
          }

          *(v83 + 4) = 0;
          *v83 = 1;
          if (v93 + 1 >= 0x10000)
          {
            v94 = (v83 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v94;
          }

          *(v83 + 6) = v93 + 1;
          v83 += 8;
          v5 += v93 + 4;
          *(a2 + 8) = v83;
          v85 = v17;
          v84 = v86;
          v18 = v5;
          if (v5 > v100)
          {
            goto LABEL_116;
          }
        }

        v84 = v17;
        v17 = v85;
        v18 = v5;
        goto LABEL_116;
      }

      v18 = v5;
LABEL_115:
      v84 = v104;
LABEL_116:
      v104 = v84;
      if (v18 >= v8)
      {
        goto LABEL_139;
      }
    }

    if (v5 <= v106)
    {
      v72 = (v71 + v106 - v5);
      do
      {
        v73 = *v5;
        v5 += 16;
        *v71++ = v73;
      }

      while (v71 < v72);
      v5 = v106;
      v71 = v72;
    }

    while (v5 < v51)
    {
      v74 = *v5++;
      *v71 = v74;
      v71 = (v71 + 1);
    }

    goto LABEL_108;
  }

LABEL_139:
  *a3 = v17;
  a3[1] = v104;
  return v7 - v5;
}

unint64_t ZSTD_compressBlock_lazy2_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, _BYTE *a4, uint64_t a5)
{
  v5 = a4;
  v118 = &a4[a5];
  v7 = &a4[a5 - 16];
  v8 = *(a1 + 8);
  v116 = *(a1 + 16);
  v10 = *(a1 + 24);
  v9 = *(a1 + 28);
  v11 = *(a1 + 240);
  v12 = *(a1 + 252);
  v13 = *(a1 + 256);
  if (v12 < 5)
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  v15 = 2 * (v13 > 3);
  if (v13 - 7 >= 0xFFFFFFFD)
  {
    v15 = v13 - 4;
  }

  v16 = 2 * (v12 > 3);
  if (v12 - 7 >= 0xFFFFFFFD)
  {
    v16 = v12 - 4;
  }

  v113 = *(&off_1E81908B0[3 * v15])[v16 + 9];
  v17 = *a3;
  LODWORD(v18) = a3[1];
  v111 = (v8 + v10);
  if ((v8 + v10) == a4)
  {
    v19 = a4 + 1;
  }

  else
  {
    v19 = a4;
  }

  if (v13 >= 6)
  {
    v13 = 6;
  }

  v20 = *(a1 + 44);
  v21 = v7 - (v8 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  v117 = &a4[a5 - 16];
  if (v7 >= v8 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 96);
    v26 = *(a1 + 52);
    v27 = 56 - v26;
    v28 = 24 - v26;
    v29 = *(a1 + 56);
    do
    {
      if (v13 == 5)
      {
        v30 = 0xCF1BBCDCBB000000 * *(v8 + v20);
      }

      else
      {
        if (v13 != 6)
        {
          LODWORD(v31) = (-1640531535 * *(v8 + v20)) >> v28;
          goto LABEL_27;
        }

        v30 = 0xCF1BBCDCBF9B0000 * *(v8 + v20);
      }

      v31 = v30 >> v27;
LABEL_27:
      v32 = v31 >> 8 << v14;
      _X7 = v25 + 4 * v32;
      __asm { PRFM            #0, [X7] }

      if (v12 >= 5)
      {
        __asm { PRFM            #0, [X7,#0x40] }
      }

      _X6 = v29 + 2 * v32;
      __asm { PRFM            #0, [X6] }

      *(a1 + 64 + 4 * (v20++ & 7)) = v31;
    }

    while (v24 != v20);
  }

  if (v19 < v117)
  {
    v110 = (v116 + v10);
    v107 = (v116 + v9);
    v114 = v10 - 1;
    v115 = 1 << v11;
    v109 = v8;
    v112 = v10;
    while (1)
    {
      v41 = 0;
      v42 = v19 + 1;
      v43 = v19 - v8;
      v44 = v19 - v8 + 1;
      v45 = v44 - v115;
      if (v44 - *(a1 + 28) <= v115 || *(a1 + 40) != 0)
      {
        v45 = *(a1 + 28);
      }

      v47 = (v44 - v17);
      v48 = v116;
      if (v47 >= v10)
      {
        v48 = v8;
      }

      if ((v114 - v47) >= 3 && v17 <= v44 - v45)
      {
        if (*v42 == *(v48 + v47))
        {
          if (v47 >= v10)
          {
            v49 = v118;
          }

          else
          {
            v49 = v110;
          }

          v41 = ZSTD_count_2segments((v19 + 5), (v48 + v47 + 4), v118, v49, v111) + 4;
        }

        else
        {
          v41 = 0;
        }
      }

      v119 = 999999999;
      v50 = v113(a1, v19, v118, &v119);
      v51 = v50 <= v41 ? v41 : v50;
      if (v51 >= 4)
      {
        break;
      }

      v19 += ((v19 - v5) >> 8) + 1;
      LODWORD(v10) = v112;
LABEL_156:
      if (v19 >= v117)
      {
        goto LABEL_157;
      }
    }

    v52 = v50 > v41;
    if (v50 <= v41)
    {
      v53 = 0;
    }

    else
    {
      v53 = v119;
    }

    if (v52)
    {
      v42 = v19;
    }

    v54 = v42;
    v55 = v53;
    v56 = v51;
    if (v19 < v117)
    {
      do
      {
        v54 = v19 + 1;
        v57 = v43 + 1;
        if (v53)
        {
          v58 = v57 - v115;
          if (v57 - *(a1 + 28) <= v115 || *(a1 + 40) != 0)
          {
            v58 = *(a1 + 28);
          }

          v60 = (v57 - v17);
          v61 = v109;
          if (v60 < v112)
          {
            v61 = v116;
          }

          if ((v114 - v60) >= 3 && v17 <= v57 - v58)
          {
            v62 = v61 + v60;
            if (*v54 == *v62)
            {
              v63 = v60 >= v112 ? v118 : v110;
              v64 = ZSTD_count_2segments((v19 + 5), (v62 + 4), v118, v63, v111);
              if (v64 <= 0xFFFFFFFFFFFFFFFBLL && 3 * (v64 + 4) > (3 * v51 + (__clz(v53 + 1) ^ 0xFFFFFFE0) + 2))
              {
                v53 = 0;
                v42 = v19 + 1;
                v51 = v64 + 4;
              }
            }
          }
        }

        v119 = 999999999;
        v56 = v113(a1, v19 + 1, v118, &v119);
        if (v56 < 4 || (v55 = v119, (4 * v56 - (__clz(v119 + 1) ^ 0x1F)) <= ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 5)))
        {
          if (v54 >= v117)
          {
            goto LABEL_100;
          }

          v54 = v19 + 2;
          v43 += 2;
          if (v53)
          {
            v65 = v43 - v115;
            if (v43 - *(a1 + 28) <= v115 || *(a1 + 40) != 0)
            {
              v65 = *(a1 + 28);
            }

            v67 = (v43 - v17);
            v68 = v109;
            if (v67 < v112)
            {
              v68 = v116;
            }

            if ((v114 - v67) >= 3 && v17 <= v43 - v65)
            {
              v69 = v68 + v67;
              if (*v54 == *v69)
              {
                v70 = v67 >= v112 ? v118 : v110;
                v71 = ZSTD_count_2segments(v19 + 3, (v69 + 4), v118, v70, v111);
                if (v71 <= 0xFFFFFFFFFFFFFFFBLL && ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 2) < 4 * (v71 + 4))
                {
                  v42 = v19 + 2;
                  v53 = 0;
                  v51 = v71 + 4;
                }
              }
            }
          }

          v119 = 999999999;
          v56 = v113(a1, v19 + 2, v118, &v119);
          if (v56 < 4 || (v55 = v119, (4 * v56 - (__clz(v119 + 1) ^ 0x1F)) <= ((__clz(v53 + 1) ^ 0xFFFFFFE0) + 4 * v51 + 8)))
          {
LABEL_100:
            v54 = v42;
            v55 = v53;
            v56 = v51;
            break;
          }
        }

        else
        {
          ++v43;
        }

        v19 = v54;
        v51 = v56;
        v53 = v55;
        v42 = v54;
      }

      while (v54 < v117);
    }

    v18 = v18;
    if (v55 <= 2)
    {
      v76 = a2;
      LODWORD(v10) = v112;
      v73 = (v118 - 32);
    }

    else
    {
      v73 = (v118 - 32);
      v72 = v109;
      v74 = v54 - (v55 + v109) + 2;
      LODWORD(v10) = v112;
      if (v112 > v74)
      {
        v72 = v116;
      }

      v75 = v111;
      v76 = a2;
      if (v112 > v74)
      {
        v75 = v107;
      }

      if (v54 > v5 && v72 + v74 > v75)
      {
        v77 = v74;
        v78 = (v54 - 1);
        v79 = (v72 + v77 - 1);
        while (*v78 == *v79)
        {
          ++v56;
          v80 = v78 - 1;
          if (v78 > v5)
          {
            --v78;
            v52 = v79-- > v75;
            if (v52)
            {
              continue;
            }
          }

          v54 = (v80 + 1);
          goto LABEL_116;
        }

        v54 = (v78 + 1);
      }

LABEL_116:
      v18 = v17;
      v17 = (v55 - 2);
    }

    v81 = v54 - v5;
    v82 = *(v76 + 24);
    if (v54 <= v73)
    {
      *v82 = *v5;
      v86 = *(v76 + 24);
      if (v81 <= 0x10)
      {
        *(v76 + 24) = v86 + v81;
        v91 = *(v76 + 8);
        goto LABEL_131;
      }

      v87 = (v86 + 16);
      v88 = v86 + v81;
      v89 = (v5 + 16);
      do
      {
        v90 = *v89++;
        *v87++ = v90;
      }

      while (v87 < v88);
    }

    else
    {
      if (v5 <= v73)
      {
        v83 = (v82 + v73 - v5);
        do
        {
          v84 = *v5;
          v5 += 16;
          *v82++ = v84;
        }

        while (v82 < v83);
        v5 = v73;
        v82 = v83;
      }

      while (v5 < v54)
      {
        v85 = *v5++;
        *v82 = v85;
        v82 = (v82 + 1);
      }
    }

    *(v76 + 24) += v81;
    v91 = *(v76 + 8);
    if (v81 >= 0x10000)
    {
      v92 = (v91 - *v76) >> 3;
      *(v76 + 72) = 1;
      *(v76 + 76) = v92;
    }

LABEL_131:
    *(v91 + 4) = v81;
    *v91 = v55 + 1;
    if (v56 - 3 >= 0x10000)
    {
      v93 = (v91 - *v76) >> 3;
      *(v76 + 72) = 2;
      *(v76 + 76) = v93;
    }

    *(v91 + 6) = v56 - 3;
    v94 = v91 + 8;
    *(v76 + 8) = v91 + 8;
    v5 = &v54[v56];
    if (&v54[v56] <= v117)
    {
      v95 = v17;
      v96 = v18;
      v8 = v109;
      while (1)
      {
        v17 = v96;
        v96 = v95;
        v97 = v5 - v109;
        v98 = v5 - v109 - v115;
        if (v5 - v109 - *(a1 + 28) <= v115 || *(a1 + 40) != 0)
        {
          v98 = *(a1 + 28);
        }

        v100 = (v97 - v17);
        v101 = v116;
        if (v100 >= v10)
        {
          v101 = v109;
        }

        if ((v114 - v100) < 3 || v17 > v97 - v98 || *v5 != *(v101 + v100))
        {
          break;
        }

        if (v100 >= v10)
        {
          v102 = v118;
        }

        else
        {
          v102 = v110;
        }

        v103 = ZSTD_count_2segments(v5 + 2, (v101 + v100 + 4), v118, v102, v111);
        if (v5 <= v118 - 32)
        {
          **(v76 + 24) = *v5;
          v94 = *(v76 + 8);
        }

        *(v94 + 4) = 0;
        *v94 = 1;
        if (v103 + 1 >= 0x10000)
        {
          v104 = (v94 - *v76) >> 3;
          *(v76 + 72) = 2;
          *(v76 + 76) = v104;
        }

        *(v94 + 6) = v103 + 1;
        v94 += 8;
        v5 += v103 + 4;
        *(v76 + 8) = v94;
        v95 = v17;
        LODWORD(v18) = v96;
        v19 = v5;
        if (v5 > v117)
        {
          goto LABEL_156;
        }
      }

      LODWORD(v18) = v17;
      v17 = v95;
      v19 = v5;
    }

    else
    {
      v19 = &v54[v56];
      v8 = v109;
    }

    goto LABEL_156;
  }

LABEL_157:
  *a3 = v17;
  a3[1] = v18;
  return v118 - v5;
}

unint64_t ZSTD_count_2segments(unsigned __int16 *a1, void *a2, unint64_t a3, char *a4, _DWORD *a5)
{
  if (a1 + a4 - a2 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = (a1 + a4 - a2);
  }

  v7 = a2;
  v8 = a1;
  if ((v6 - 7) > a1)
  {
    if (*a2 != *a1)
    {
      result = __clz(__rbit64(*a1 ^ *a2)) >> 3;
      goto LABEL_21;
    }

    v9 = 0;
    v7 = (a2 + 1);
    v8 = a1 + 4;
    while (v8 < (v6 - 7))
    {
      v11 = *v7;
      v7 += 4;
      v10 = v11;
      v13 = *v8;
      v8 += 4;
      v12 = v13;
      v9 += 8;
      if (v10 != v13)
      {
        result = v9 + (__clz(__rbit64(v12 ^ v10)) >> 3);
        goto LABEL_21;
      }
    }
  }

  if (v8 < (v6 - 3) && *v7 == *v8)
  {
    v7 += 2;
    v8 += 2;
  }

  if (v8 < (v6 - 1) && *v7 == *v8)
  {
    ++v7;
    ++v8;
  }

  if (v8 < v6 && *v7 == *v8)
  {
    v8 = (v8 + 1);
  }

  result = v8 - a1;
LABEL_21:
  if (a2 + result != a4)
  {
    return result;
  }

  v15 = a1 + result;
  if (a3 - 7 <= a1 + result)
  {
    v17 = (a1 + result);
LABEL_29:
    if (v17 < a3 - 3 && *a5 == *v17)
    {
      ++a5;
      ++v17;
    }

    if (v17 < a3 - 1 && *a5 == *v17)
    {
      a5 = (a5 + 2);
      v17 = (v17 + 2);
    }

    if (v17 < a3 && *a5 == *v17)
    {
      v17 = (v17 + 1);
    }

    v22 = v17 - v15;
    goto LABEL_40;
  }

  if (*a5 == *v15)
  {
    v16 = 0;
    a5 += 2;
    v17 = (a1 + result + 8);
    while (v17 < a3 - 7)
    {
      v19 = *a5;
      a5 += 2;
      v18 = v19;
      v21 = *v17;
      v17 += 2;
      v20 = v21;
      v16 += 8;
      if (v18 != v21)
      {
        v22 = v16 + (__clz(__rbit64(v20 ^ v18)) >> 3);
        goto LABEL_40;
      }
    }

    goto LABEL_29;
  }

  v22 = __clz(__rbit64(*v15 ^ *a5)) >> 3;
LABEL_40:
  result += v22;
  return result;
}

unint64_t ZSTD_HcFindBestMatch_noDict_4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 244);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 240);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 96);
  v15 = *(a1 + 252);
  v16 = 32 - *(a1 + 248);
  if (v10 < v8)
  {
    v17 = ~(-1 << v5);
    do
    {
      v18 = (-1640531535 * *(v7 + v10)) >> v16;
      *(v4 + 4 * (v10 & v17)) = *(v14 + 4 * v18);
      *(v14 + 4 * v18) = v10++;
    }

    while (v10 < v8);
  }

  *(a1 + 44) = v8;
  v19 = *(v14 + 4 * ((-1640531535 * *a2) >> v16));
  if (v19 < v12)
  {
    return 3;
  }

  v21 = 1 << v15;
  v22 = v6 - 1;
  v23 = a3 - 7;
  v24 = v8 + 2;
  v25 = 3;
  while (1)
  {
    v26 = v19;
    v27 = (v7 + v19);
    if (*(v27 + v25) != *(a2 + v25))
    {
      goto LABEL_36;
    }

    if (v23 <= a2)
    {
      v30 = a2;
    }

    else
    {
      v28 = *v27;
      if (v28 != *a2)
      {
        result = __clz(__rbit64(*a2 ^ v28)) >> 3;
        goto LABEL_34;
      }

      v29 = 0;
      v27 = (v7 + 8 + v19);
      v30 = a2 + 4;
      while (v30 < v23)
      {
        v32 = *v27;
        v27 += 4;
        v31 = v32;
        v34 = *v30;
        v30 += 4;
        v33 = v34;
        v29 += 8;
        if (v31 != v34)
        {
          result = v29 + (__clz(__rbit64(v33 ^ v31)) >> 3);
          goto LABEL_34;
        }
      }
    }

    if (v30 < (a3 - 3) && *v27 == *v30)
    {
      v27 += 2;
      v30 += 2;
    }

    if (v30 < (a3 - 1) && *v27 == *v30)
    {
      ++v27;
      ++v30;
    }

    if (v30 < a3 && *v27 == *v30)
    {
      v30 = (v30 + 1);
    }

    result = v30 - a2;
LABEL_34:
    if (result > v25)
    {
      *a4 = v24 - v26;
      v25 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }
    }

LABEL_36:
    if (v26 <= v13)
    {
      return v25;
    }

    if (!--v21)
    {
      return v25;
    }

    v19 = *(v4 + 4 * (v26 & v22));
    result = v25;
    if (v19 < v12)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_noDict_5(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 244);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 240);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 96);
  v15 = *(a1 + 252);
  v16 = 64 - *(a1 + 248);
  if (v10 < v8)
  {
    v17 = ~(-1 << v5);
    do
    {
      v18 = (0xCF1BBCDCBB000000 * *(v7 + v10)) >> v16;
      *(v4 + 4 * (v10 & v17)) = *(v14 + 4 * v18);
      *(v14 + 4 * v18) = v10++;
    }

    while (v10 < v8);
  }

  *(a1 + 44) = v8;
  v19 = *(v14 + 4 * ((0xCF1BBCDCBB000000 * *a2) >> v16));
  if (v19 < v12)
  {
    return 3;
  }

  v21 = 1 << v15;
  v22 = v6 - 1;
  v23 = a3 - 7;
  v24 = v8 + 2;
  v25 = 3;
  while (1)
  {
    v26 = v19;
    v27 = (v7 + v19);
    if (*(v27 + v25) != *(a2 + v25))
    {
      goto LABEL_36;
    }

    if (v23 <= a2)
    {
      v30 = a2;
    }

    else
    {
      v28 = *v27;
      if (v28 != *a2)
      {
        result = __clz(__rbit64(*a2 ^ v28)) >> 3;
        goto LABEL_34;
      }

      v29 = 0;
      v27 = (v7 + 8 + v19);
      v30 = a2 + 4;
      while (v30 < v23)
      {
        v32 = *v27;
        v27 += 4;
        v31 = v32;
        v34 = *v30;
        v30 += 4;
        v33 = v34;
        v29 += 8;
        if (v31 != v34)
        {
          result = v29 + (__clz(__rbit64(v33 ^ v31)) >> 3);
          goto LABEL_34;
        }
      }
    }

    if (v30 < (a3 - 3) && *v27 == *v30)
    {
      v27 += 2;
      v30 += 2;
    }

    if (v30 < (a3 - 1) && *v27 == *v30)
    {
      ++v27;
      ++v30;
    }

    if (v30 < a3 && *v27 == *v30)
    {
      v30 = (v30 + 1);
    }

    result = v30 - a2;
LABEL_34:
    if (result > v25)
    {
      *a4 = v24 - v26;
      v25 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }
    }

LABEL_36:
    if (v26 <= v13)
    {
      return v25;
    }

    if (!--v21)
    {
      return v25;
    }

    v19 = *(v4 + 4 * (v26 & v22));
    result = v25;
    if (v19 < v12)
    {
      return result;
    }
  }
}