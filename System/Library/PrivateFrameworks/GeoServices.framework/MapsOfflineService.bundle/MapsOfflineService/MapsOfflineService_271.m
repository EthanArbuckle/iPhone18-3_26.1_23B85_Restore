uint64_t sub_10AC4E0(uint64_t a1, void *a2)
{
  *a1 = sub_3AF6B4(a2);
  *(a1 + 8) = sub_3B11EC(a2);
  *(a1 + 16) = sub_3B1348(a2);
  *(a1 + 24) = sub_3AF144(a2);
  *(a1 + 32) = 1;
  *(a1 + 40) = sub_3B2A90(a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_10AC550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = 1;
  *(result + 40) = a6;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_10AC574(uint64_t *a1, int **a2, int **a3, _BYTE *a4)
{
  if (a4[1353] == 1)
  {
    v5 = *a2;
    v6 = (*a2 - **a2);
    v7 = *v6;
    if (*(a2 + 38))
    {
      if (v7 < 0x47)
      {
        goto LABEL_22;
      }

      v8 = v6[35];
      if (!v8 || (*(v5 + v8) & 0x141510) == 0 && (*(v5 + v8) & 0x40) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v7 < 0x47)
      {
        goto LABEL_22;
      }

      v9 = v6[35];
      if (!v9 || (*(v5 + v9) & 0xA0A88) == 0 && (*(v5 + v9) & 0x20) == 0)
      {
        goto LABEL_22;
      }
    }

    v10 = *a3;
    v11 = (*a3 - **a3);
    v12 = *v11;
    if (*(a3 + 38))
    {
      if (v12 < 0x47)
      {
        goto LABEL_22;
      }

      v13 = v11[35];
      if (!v13)
      {
        goto LABEL_22;
      }

      if ((*&v10[v13] & 0x141510) != 0)
      {
        return 0;
      }

      v14 = 64;
    }

    else
    {
      if (v12 < 0x47)
      {
        goto LABEL_22;
      }

      v13 = v11[35];
      if (!v13)
      {
        goto LABEL_22;
      }

      if ((*&v10[v13] & 0xA0A88) != 0)
      {
        return 0;
      }

      v14 = 32;
    }

    if ((*&v10[v13] & v14) != 0)
    {
      return 0;
    }
  }

LABEL_22:
  if (a4[1354] == 1)
  {
    v15 = (*a2 - **a2);
    if (*v15 >= 0x2Fu)
    {
      v16 = v15[23];
      if (v16)
      {
        if (*(*a2 + v16) == 14)
        {
          return 0;
        }
      }
    }

    v17 = (*a3 - **a3);
    if (*v17 >= 0x2Fu)
    {
      v18 = v17[23];
      if (v18)
      {
        if (*(*a3 + v18) == 14)
        {
          return 0;
        }
      }
    }
  }

  if (a4[1355] == 1)
  {
    v19 = (*a2 - **a2);
    if (*v19 >= 0x2Fu)
    {
      v20 = v19[23];
      if (v20)
      {
        v21 = *(*a2 + v20);
        v22 = v21 > 0x36;
        v23 = (1 << v21) & 0x44000000000008;
        if (!v22 && v23 != 0)
        {
          return 0;
        }
      }
    }
  }

  if (a4[1356] == 1)
  {
    v25 = *a2;
    v26 = (*a2 - **a2);
    v27 = *v26;
    if (*(a2 + 38))
    {
      if (v27 >= 0x9B)
      {
        v28 = v26[77];
        if (v28)
        {
          if ((*(v25 + v28) & 0x40) != 0)
          {
            return 0;
          }
        }
      }
    }

    else if (v27 >= 0x9B)
    {
      v29 = v26[77];
      if (v29)
      {
        if ((*(v25 + v29) & 0x80) != 0)
        {
          return 0;
        }
      }
    }
  }

  v30 = *a1;
  v32 = sub_3116D0(a2);
  sub_31BA24(v30, v32, a1 + 6, 1, 1, 1);
  v34 = a1[6];
  v33 = a1[7];
  if (0xCCCCCCCCCCCCCCCDLL * (v33 - v34) < 3)
  {
    return 0;
  }

  if (a4[1357] == 1)
  {
    while (1)
    {
      if (v34 == v33)
      {
        return 1;
      }

      v36 = (*v34 - **v34);
      v37 = *v36;
      if (*(v34 + 38))
      {
        if (v37 < 0x4D)
        {
          goto LABEL_51;
        }

        v38 = v36[38];
        if (!v38)
        {
          goto LABEL_51;
        }

        v39 = 8;
      }

      else
      {
        if (v37 < 0x4D)
        {
          goto LABEL_51;
        }

        v38 = v36[38];
        if (!v38)
        {
          goto LABEL_51;
        }

        v39 = 4;
      }

      if ((*(*v34 + v38) & v39) != 0)
      {
        return 0;
      }

LABEL_51:
      v34 += 5;
    }
  }

  return 1;
}

void sub_10AC880(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *a1;
  v11 = sub_3116D0(a2);
  sub_31BA24(v10, v11, a1 + 6, 1, 1, 1);
  v12 = a1[6];
  v13 = a1[7];
  v14 = 0.0;
  if (v12 != v13)
  {
    if (a5)
    {
      do
      {
        v23 = sub_10ACAD4((a4 + 1352), v12);
        v24 = 0.0;
        if ((v23 & 1) == 0)
        {
          v24 = sub_10ACD10(a1, v12, (a4 + 1352));
        }

        v14 = v14 + v24;
        v12 += 5;
      }

      while (v12 != v13);
    }

    else
    {
      do
      {
        v14 = v14 + sub_10ACD10(a1, v12, (a4 + 1352));
        v12 += 5;
      }

      while (v12 != v13);
    }
  }

  v15 = *(a3 + 32);
  v16 = (*a2 - **a2);
  if (*v16 >= 0x9Bu && (v17 = v16[77]) != 0)
  {
    v18 = *(*a2 + v17 + 1) >> 7;
    v19 = v15 & 0xFF000000000000;
    v20 = a1[6];
    v21 = a1[7];
    if (v20 == v21)
    {
LABEL_7:
      v22 = v20;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0;
    v19 = v15 & 0xFF000000000000;
    v20 = a1[6];
    v21 = a1[7];
    if (v20 == v21)
    {
      goto LABEL_7;
    }
  }

  v25 = a2[4] & 0xFFFFFFFFFFFFFFLL;
  v22 = v20;
  while ((*(v22 + 32) & 0xFFFFFFFFFFFFFFLL) != v25)
  {
    v22 += 40;
    if (v22 == v21)
    {
      v22 = v21;
      break;
    }
  }

LABEL_16:
  v26 = v19 == 0;
  v27 = 0.0;
  while (1)
  {
    if (v22 == v20)
    {
      v32 = v21;
    }

    else
    {
      v32 = v22;
    }

    v33 = v32 - 40;
    v34 = v22 + 40;
    if (v22 + 40 == v21)
    {
      v34 = v20;
    }

    v22 = v18 ? v33 : v34;
    v35 = *(v22 + 32);
    if (v35 == v15 && WORD2(v15) == WORD2(v35) && v26 == BYTE6(v35))
    {
      break;
    }

    if (!a5 || (sub_10ACAD4((a4 + 1352), v22) & 1) == 0)
    {
      v28 = sub_10ACD10(a1, v22, (a4 + 1352));
      v29 = *v22;
      v30 = *(v22 + 16);
      v37 = *(v22 + 32);
      v36[0] = v29;
      v36[1] = v30;
      BYTE6(v37) = BYTE6(v37) == 0;
      v31 = v28 + sub_10ACD10(a1, v36, (a4 + 1352));
      if (v27 < v31)
      {
        v27 = v31;
      }
    }
  }
}

uint64_t sub_10ACAD4(_BYTE *a1, int **a2)
{
  if (a1[6] == 1)
  {
    v2 = *a2;
    v3 = (*a2 - **a2);
    v4 = *v3;
    if (*(a2 + 38))
    {
      if (v4 >= 0x4D)
      {
        v5 = v3[38];
        if (v5)
        {
          if ((*&v2[v5] & 8) != 0)
          {
            return 1;
          }
        }
      }
    }

    else if (v4 >= 0x4D)
    {
      v6 = v3[38];
      if (v6)
      {
        if ((*&v2[v6] & 4) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (a1[7] == 1)
  {
    v7 = *a2;
    v8 = (*a2 - **a2);
    v9 = *v8;
    if (*(a2 + 38))
    {
      if (v9 >= 0x4D)
      {
        v10 = v8[38];
        if (v10)
        {
          if ((*&v7[v10] & 2) != 0)
          {
            return 1;
          }
        }
      }
    }

    else if (v9 >= 0x4D)
    {
      v11 = v8[38];
      if (v11)
      {
        if (*&v7[v11])
        {
          return 1;
        }
      }
    }
  }

  if (a1[8] == 1)
  {
    v12 = *a2;
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (*(a2 + 38))
    {
      if (v14 >= 0x39)
      {
        v15 = v13[28];
        if (v15)
        {
          v16 = *&v12[v15];
          if ((v16 & 0x2000) != 0 && (v16 & 0x800) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (v14 >= 0x39)
    {
      v17 = v13[28];
      if (v17)
      {
        v18 = *&v12[v17];
        if ((v18 & 0x4000) != 0 && (v18 & 0x1000) == 0)
        {
          return 1;
        }
      }
    }
  }

  if (a1[9] == 1)
  {
    v19 = (*a2 - **a2);
    if (*v19 >= 0x2Fu)
    {
      v20 = v19[23];
      if (v20)
      {
        v21 = *(*a2 + v20);
        v22 = v21 > 0x2A;
        v23 = (1 << v21) & 0x50400000000;
        if (!v22 && v23 != 0)
        {
          return 1;
        }
      }
    }
  }

  if (a1[10] == 1)
  {
    v25 = (*a2 - **a2);
    if (*v25 >= 0x9Bu)
    {
      v26 = v25[77];
      if (v26)
      {
        if ((*(*a2 + v26 + 3) & 4) != 0)
        {
          return 1;
        }
      }
    }
  }

  if (a1[11] == 1)
  {
    v27 = a2[1];
    if (v27)
    {
      v28 = (v27 - *v27);
      if (*v28 >= 0x11u)
      {
        v29 = v28[8];
        if (v29)
        {
          if ((*(v27 + v29) & 4) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  if (a1[12] == 1 && (v30 = (*a2 - **a2), *v30 >= 0x9Bu) && (v31 = v30[77]) != 0)
  {
    return *(*a2 + v31 + 2) & 1;
  }

  else
  {
    return 0;
  }
}

double sub_10ACD10(uint64_t a1, int **a2, void *a3)
{
  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  result = 0.0;
  if (*(a2 + 38))
  {
    if (v7 < 0x9B)
    {
      return result;
    }

    v9 = v6[77];
    if (!v9 || (*(v5 + v9) & 2) == 0)
    {
      return result;
    }

LABEL_9:
    v12 = sub_314550(a2);
    v13 = a3[2];
    v14 = *v13;
    if (v12 > *v13)
    {
      v15 = a3[3];
      v16 = (v15 - v13) >> 4;
      if (v16 >= 1)
      {
        if (v15 - v13 != 16)
        {
          do
          {
            v17 = (4 * v16) & 0xFFFFFFFFFFFFFFF0;
            _X13 = v13 + v17;
            __asm { PRFM            #0, [X13] }

            v24 = &v13[2 * (v16 >> 1)];
            _X12 = v24 + v17;
            __asm { PRFM            #0, [X12] }

            if (*v24 >= v12)
            {
              v27 = 0;
            }

            else
            {
              v27 = v16 >> 1;
            }

            v13 += 2 * v27;
            v16 -= v16 >> 1;
          }

          while (v16 > 1);
          v14 = *v13;
        }

        v13 += 2 * (v14 < v12);
      }

      if (v15 == v13)
      {
        v29 = *(v15 - 1);
      }

      else
      {
        v28 = *(v13 - 2);
        if (v28 == *v13)
        {
          goto LABEL_20;
        }

        v29 = *(v13 - 1) + (v12 - v28) / (*v13 - v28) * (v13[1] - *(v13 - 1));
      }

LABEL_24:
      v30 = sub_311A24(*a2, *(a2 + 38));
      v31 = a3[5];
      v32 = *v31;
      if (v30 > *v31)
      {
        v33 = a3[6];
        v34 = (v33 - v31) >> 4;
        if (v34 >= 1)
        {
          if (v33 - v31 != 16)
          {
            do
            {
              v35 = (4 * v34) & 0xFFFFFFFFFFFFFFF0;
              _X13 = v31 + v35;
              __asm { PRFM            #0, [X13] }

              v38 = &v31[4 * (v34 >> 1)];
              _X12 = v38 + v35;
              __asm { PRFM            #0, [X12] }

              if (*v38 >= v30)
              {
                v41 = 0;
              }

              else
              {
                v41 = v34 >> 1;
              }

              v31 += 4 * v41;
              v34 -= v34 >> 1;
            }

            while (v34 > 1);
            v32 = *v31;
          }

          v31 += 4 * (v32 < v30);
        }

        if (v33 == v31)
        {
          v43 = *(v33 - 1);
        }

        else
        {
          v42 = *(v31 - 4);
          if (*v31 == v42)
          {
            goto LABEL_35;
          }

          v43 = *(v31 - 1) + (v30 - v42) / (*v31 - v42) * (*(v31 + 1) - *(v31 - 1));
        }

LABEL_38:
        v44 = *(a1 + 16);
        v45 = 3;
        if (!*(a2 + 38))
        {
          v45 = 2;
        }

        v46 = a2[v45];
        if (!v46 || (v47 = (v46 - *v46), *v47 < 7u) || (v48 = v47[3]) == 0 || (v49 = *(v46 + v48), v49 == 0xFFFF))
        {
          v49 = 0;
        }

        v50 = *(a2 + 8) | (*(a2 + 18) << 32);
        v51 = sub_4345A0(v44, v50);
        v52 = sub_4345A0(v44, v50 | 0x1000000000000);
        if (v52 <= v51)
        {
          v52 = v51;
        }

        if (v52)
        {
          v53 = v49 / v52;
          v54 = a3[8];
          v55 = *v54;
          if (v53 <= *v54)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v53 = 0.0;
          v54 = a3[8];
          v55 = *v54;
          if (*v54 >= 0.0)
          {
            goto LABEL_61;
          }
        }

        v56 = a3[9];
        v57 = (v56 - v54) >> 4;
        if (v57 >= 1)
        {
          if (v56 - v54 != 16)
          {
            do
            {
              v58 = (4 * v57) & 0xFFFFFFFFFFFFFFF0;
              _X13 = v54 + v58;
              __asm { PRFM            #0, [X13] }

              v61 = &v54[2 * (v57 >> 1)];
              _X12 = v61 + v58;
              __asm { PRFM            #0, [X12] }

              if (*v61 >= v53)
              {
                v64 = 0;
              }

              else
              {
                v64 = v57 >> 1;
              }

              v54 += 2 * v64;
              v57 -= v57 >> 1;
            }

            while (v57 > 1);
            v55 = *v54;
          }

          v54 += 2 * (v55 < v53);
        }

        if (v56 == v54)
        {
          v66 = *(v56 - 1);
          return v29 * v43 * v66;
        }

        v65 = *(v54 - 2);
        if (v65 != *v54)
        {
          v66 = *(v54 - 1) + (v53 - v65) / (*v54 - v65) * (v54[1] - *(v54 - 1));
          return v29 * v43 * v66;
        }

LABEL_61:
        v66 = v54[1];
        return v29 * v43 * v66;
      }

LABEL_35:
      v43 = *(v31 + 1);
      goto LABEL_38;
    }

LABEL_20:
    v29 = v13[1];
    goto LABEL_24;
  }

  if (v7 >= 0x9B)
  {
    v10 = v6[77];
    if (v10)
    {
      if (*(v5 + v10))
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_10AD0D4(uint64_t a1, int **a2, int **a3, uint64_t a4)
{
  v6 = *a2;
  if (*(a4 + 1059) != 1)
  {
    goto LABEL_14;
  }

  v7 = *a3;
  v8 = (v6 - *v6);
  v9 = *v8;
  if (*(a2 + 38))
  {
    if (v9 >= 0x39)
    {
      v10 = v8[28];
      if (v10)
      {
        if ((*(v6 + v10) & 0x2000) != 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else if (v9 >= 0x39)
  {
    v11 = v8[28];
    if (v11)
    {
      if ((*(v6 + v11) & 0x4000) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  v12 = (v7 - *v7);
  v13 = *v12;
  if (!*(a3 + 38))
  {
    if (v13 < 0x39 || !v12[28] || (*(v7 + v12[28]) & 0x2000) == 0)
    {
      goto LABEL_38;
    }

LABEL_14:
    v14 = -*v6;
    if (*(a4 + 1060) != 1)
    {
      goto LABEL_41;
    }

LABEL_15:
    if (*(v6 + v14) < 0x2Fu || !*(v6 + v14 + 46) || ((v15 = *(v6 + *(v6 + v14 + 46)), v16 = v15 > 0x36, v17 = (1 << v15) & 0x44000000000008, !v16) ? (v18 = v17 == 0) : (v18 = 1), v18))
    {
      v19 = *a3;
      v20 = (*a3 - **a3);
      v21 = *v20;
      if (v21 >= 0x2F)
      {
        if (v20[23])
        {
          v22 = *(v19 + v20[23]);
          v16 = v22 > 0x36;
          v23 = (1 << v22) & 0x44000000000008;
          if (!v16 && v23 != 0)
          {
            if (*(a3 + 38))
            {
              if (v21 < 0x9B)
              {
                goto LABEL_41;
              }

              if (!v20[77])
              {
                goto LABEL_41;
              }

              v25 = *(v19 + v20[77]);
              if ((v25 & 2) != 0)
              {
                goto LABEL_41;
              }

              if ((v25 & 1) == 0)
              {
                goto LABEL_41;
              }

              v26 = v20[35];
              if (!v26)
              {
                goto LABEL_41;
              }

              v27 = 1;
            }

            else
            {
              if (v21 < 0x9B)
              {
                goto LABEL_41;
              }

              if (!v20[77])
              {
                goto LABEL_41;
              }

              if ((*(v19 + v20[77]) & 3) != 2)
              {
                goto LABEL_41;
              }

              v26 = v20[35];
              if (!v26)
              {
                goto LABEL_41;
              }

              v27 = 2;
            }

            if ((*(v19 + v26) & v27) != 0)
            {
              return *(*(a4 + 1112) - 16);
            }
          }
        }
      }
    }

LABEL_41:
    v30 = (v6 + v14);
    if (*v30 >= 0x9Bu)
    {
      v31 = v30[77];
      if (v31)
      {
        if ((*(v6 + v31 + 1) & 0x80) != 0)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  if (v13 >= 0x39 && v12[28] && (*(v7 + v12[28]) & 0x4000) != 0)
  {
    goto LABEL_14;
  }

LABEL_38:
  v28 = a3;
  if ((sub_10AD568(a2, a3) & 1) == 0)
  {
    v6 = *a2;
    a3 = v28;
    v14 = -**a2;
    if (*(a4 + 1060) != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_15;
  }

  return *(a4 + 1128);
}

void sub_10AD544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10AD568(int **a1, int **a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (v2 - *v2);
    if (*v3 >= 0x11u)
    {
      v4 = v3[8];
      if (v4)
      {
        if ((*(v2 + v4) & 4) != 0)
        {
          return 0;
        }
      }
    }
  }

  v5 = *a1;
  v6 = (*a1 - **a1);
  if (*v6 < 0x9Bu)
  {
    return 0;
  }

  if (!v6[77])
  {
    return 0;
  }

  v7 = *&v5[v6[77]];
  if ((v7 & 0x10003) != 3)
  {
    return 0;
  }

  v8 = v6[35];
  if (v8)
  {
    v9 = *(a1 + 38) ? 4096 : 2048;
    if ((*&v5[v8] & v9) != 0)
    {
      return 0;
    }
  }

  v10 = (*a2 - **a2);
  v11 = *v10;
  if (*(a2 + 38))
  {
    if (v11 < 0x39)
    {
      goto LABEL_22;
    }

    v12 = v10[28];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = 2;
  }

  else
  {
    if (v11 < 0x39)
    {
      goto LABEL_22;
    }

    v12 = v10[28];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = 1;
  }

  if ((*(*a2 + v12) & v13) != 0)
  {
    return 0;
  }

LABEL_22:
  if ((v7 & 0x8000) != 0)
  {
    return sub_312FAC(a2) ^ 1;
  }

  else
  {
    return sub_313010(a2) ^ 1;
  }
}

uint64_t sub_10AD680(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 4);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 16 * a2;
}

void sub_10AD79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_10AD87C(uint64_t a1, int **a2, int **a3, uint64_t a4)
{
  if (*(a4 + 1059) == 1)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = (*a2 - **a2);
    v7 = *v6;
    if (*(a2 + 38))
    {
      if (v7 >= 0x39)
      {
        v8 = v6[28];
        if (v8)
        {
          if ((*(v4 + v8) & 0x2000) != 0)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else if (v7 >= 0x39)
    {
      v9 = v6[28];
      if (v9)
      {
        if ((*(v4 + v9) & 0x4000) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    v10 = (v5 - *v5);
    v11 = *v10;
    if (*(a3 + 38))
    {
      if (v11 >= 0x39 && v10[28] && (*(v5 + v10[28]) & 0x4000) != 0)
      {
        goto LABEL_19;
      }
    }

    else if (v11 >= 0x39 && v10[28] && (*(v5 + v10[28]) & 0x2000) != 0)
    {
      goto LABEL_19;
    }

    v12 = a1;
    v13 = a2;
    v14 = a4;
    v15 = a3;
    v16 = sub_10AD568(a3, a2);
    a3 = v15;
    a2 = v13;
    a4 = v14;
    v17 = v16;
    a1 = v12;
    if (v17)
    {
      return *(a4 + 1168);
    }
  }

LABEL_19:
  v18 = a3[1];
  if (v18 && (v19 = (v18 - *v18), *v19 >= 0x11u) && (v20 = v19[8]) != 0 && (*(v18 + v20) & 4) != 0)
  {
    v21 = *a3;
    v26 = 1;
    v27 = (*a3 - **a3);
    v28 = *v27;
    v29 = v28 >= 0x47;
    if (!*(a3 + 38))
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = *a3;
    v22 = **a3;
    v23 = -v22;
    v24 = (*a3 - v22);
    if (*v24 >= 0x9Bu && (v25 = v24[77]) != 0)
    {
      v26 = *(v21 + v25 + 2) & 1;
      v27 = (v21 + v23);
      v28 = *(v21 + v23);
      v29 = v28 >= 0x47;
      if (!*(a3 + 38))
      {
LABEL_26:
        if (!v29 || !v27[35] || (*(v21 + v27[35]) & 0x800) == 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        v30 = *a2;
        v31 = (*a2 - **a2);
        v32 = *v31;
        if (*(a2 + 38))
        {
          if (v32 < 0x39)
          {
            goto LABEL_126;
          }

          v33 = 1;
          goto LABEL_78;
        }

        if (v32 < 0x39)
        {
          goto LABEL_126;
        }

        v33 = 1;
        goto LABEL_96;
      }
    }

    else
    {
      v26 = 0;
      v27 = (v21 + v23);
      v28 = *(v21 + v23);
      v29 = v28 >= 0x47;
      if (!*(a3 + 38))
      {
        goto LABEL_26;
      }
    }
  }

  if (v29 && v27[35] && (*(v21 + v27[35]) & 0x1000) != 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v30 = *a2;
  v31 = (*a2 - **a2);
  v34 = *v31;
  if (*(a2 + 38))
  {
    if (v34 >= 0x39 && v31[28] && (*(v30 + v31[28]) & 0x27) == 0x24)
    {
      v33 = 1;
      v32 = *v31;
      if (v32 <= 0x38)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    }
  }

  else if (v34 >= 0x39 && v31[28] && (*(v30 + v31[28]) & 0x27) == 0x24)
  {
    v33 = 1;
    v32 = *v31;
    if (v32 > 0x38)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  if (v28 < 0x9B || !v27[77] || (*(v21 + v27[77] + 1) & 0x80) == 0)
  {
    if (*(a2 + 38))
    {
      if (v34 >= 0x39 && v31[28])
      {
        if ((*(v30 + v31[28]) & 3) != 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = (*(v30 + v31[28]) >> 2) & 1;
        }

        v32 = *v31;
        if (v32 <= 0x38)
        {
          goto LABEL_60;
        }

        goto LABEL_78;
      }

LABEL_77:
      v33 = 0;
      v32 = *v31;
      if (v32 <= 0x38)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    }

    if (v34 >= 0x39 && v31[28])
    {
      if ((*(v30 + v31[28]) & 3) != 0)
      {
        v33 = 0;
      }

      else
      {
        v33 = (*(v30 + v31[28]) >> 5) & 1;
      }

      v32 = *v31;
      if (v32 > 0x38)
      {
        goto LABEL_96;
      }

      goto LABEL_94;
    }

    goto LABEL_95;
  }

  if (!*(a2 + 38))
  {
    if (v34 >= 0x39 && v31[28])
    {
      if ((*(v30 + v31[28]) & 3) != 0)
      {
        v33 = 0;
      }

      else
      {
        v33 = (*(v30 + v31[28]) >> 2) & 1;
      }

      v32 = *v31;
      if (v32 > 0x38)
      {
LABEL_96:
        v36 = v31[28];
        if (v31[28])
        {
          v35 = 1;
          if ((*(v30 + v36 + 1) & 0x40) != 0)
          {
            goto LABEL_102;
          }

          LODWORD(v36) = (*(v30 + v31[28]) & 0x1000) != 0;
          if (v33)
          {
            goto LABEL_108;
          }

          goto LABEL_103;
        }

LABEL_100:
        v35 = 1;
        if (v33)
        {
          goto LABEL_108;
        }

        goto LABEL_103;
      }

LABEL_94:
      LODWORD(v36) = 0;
      goto LABEL_100;
    }

LABEL_95:
    v33 = 0;
    v32 = *v31;
    if (v32 > 0x38)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  if (v34 < 0x39 || !v31[28])
  {
    goto LABEL_77;
  }

  if ((*(v30 + v31[28]) & 3) != 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*(v30 + v31[28]) >> 5) & 1;
  }

  v32 = *v31;
  if (v32 <= 0x38)
  {
LABEL_60:
    v35 = 0;
    LODWORD(v36) = 0;
    if (v33)
    {
      goto LABEL_108;
    }

    goto LABEL_103;
  }

LABEL_78:
  v36 = v31[28];
  if (v31[28])
  {
    v35 = 0;
    if ((*(v30 + v36 + 1) & 0x20) == 0)
    {
      LODWORD(v36) = (*(v30 + v31[28]) & 0x800) != 0;
      if (v33)
      {
        goto LABEL_108;
      }

      goto LABEL_103;
    }

LABEL_102:
    LODWORD(v36) = 1;
    if (v33)
    {
      goto LABEL_108;
    }

    goto LABEL_103;
  }

  v35 = 0;
  if (v33)
  {
    goto LABEL_108;
  }

LABEL_103:
  if ((*(a4 + 1058) & 1) != 0 && v28 >= 0x9B)
  {
    v37 = v27[77];
    if (v37)
    {
      v38 = *(v21 + v37);
      if ((v38 & 1) != 0 && !(((v38 & 2) == 0) | (v26 | v36) & 1))
      {
        return *(a4 + 1168);
      }
    }
  }

LABEL_108:
  if (v35)
  {
    if (v32 < 0x9B || !v31[77] || (*(v30 + v31[77]) & 1) == 0)
    {
      goto LABEL_126;
    }

    v39 = v31[38];
    v40 = 1;
    if (!v31[38])
    {
      v35 = 1;
      v41 = v31[23];
      if (!v31[23])
      {
        goto LABEL_128;
      }

      goto LABEL_125;
    }
  }

  else
  {
    if (v32 < 0x9B || !v31[77] || (*(v30 + v31[77]) & 2) == 0)
    {
      goto LABEL_126;
    }

    v39 = v31[38];
    if (!v31[38])
    {
      v35 = 0;
      v41 = v31[23];
      if (!v31[23])
      {
        goto LABEL_128;
      }

      goto LABEL_125;
    }

    v40 = 2;
  }

  if ((*(v30 + v39) & v40) != 0)
  {
    goto LABEL_126;
  }

  v41 = v31[23];
  if (v31[23])
  {
LABEL_125:
    if (*(v30 + v41) == 14)
    {
      goto LABEL_126;
    }
  }

LABEL_128:
  v45 = v31[28];
  if (!v35)
  {
    if (v31[28])
    {
      v46 = *(v30 + v45);
      if ((v46 & 0x2000) != 0)
      {
        v47 = 2048;
        goto LABEL_135;
      }
    }

LABEL_137:
    v48 = a4;
    v49 = vcvtpd_u64_f64(sub_10ACD10(a1, a2, (a4 + 1352)));
    if (((*(v48 + 1152) - *(v48 + 1144)) >> 4) - 1 >= v49)
    {
      v44 = v49;
    }

    else
    {
      v44 = ((*(v48 + 1152) - *(v48 + 1144)) >> 4) - 1;
    }

    v43 = (v48 + 1144);
    return *sub_10AD680(v43, v44);
  }

  if (!v31[28])
  {
    goto LABEL_137;
  }

  v46 = *(v30 + v45);
  if ((v46 & 0x4000) == 0)
  {
    goto LABEL_137;
  }

  v47 = 4096;
LABEL_135:
  if ((v47 & v46) != 0 || *(a4 + 1061) != 1)
  {
    goto LABEL_137;
  }

LABEL_126:
  v43 = (a4 + 1144);
  v44 = 0;
  return *sub_10AD680(v43, v44);
}

unint64_t sub_10ADE24(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return *(v3 + 1);
  }

  v5 = a2[1];
  if (v5 - v3 >= 24)
  {
    if (v5 - v3 != 24)
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v3) >> 3);
      do
      {
        v7 = 3 * (v6 >> 2);
        _X13 = &v3[v7];
        __asm { PRFM            #0, [X13] }

        v14 = &v3[3 * (v6 >> 1)];
        _X12 = &v14[v7];
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 3 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 3 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 2);
  }

  v18 = *(v3 - 3);
  v19 = *v3;
  if (v18 == *v3)
  {
    return *(v3 + 1);
  }

  v21 = *(v3 + 2) - *(v3 - 1);
  v23[0] = (*(v3 + 2) - *(v3 - 4)) | ((*(v3 + 3) - *(v3 - 3)) << 32);
  v23[1] = v21;
  v22 = sub_108CF40(v23, (v2 - v18) / (v19 - v18), v19 - v18);
  return (*(v3 - 4) + v22) | ((*(v3 - 3) + HIDWORD(v22)) << 32);
}

unint64_t sub_10ADF6C(uint64_t *a1, int **a2, uint64_t a3)
{
  if (*(a3 + 1464) != 1 || (*(a2 + 84) & 4) != 0)
  {
    return 0;
  }

  if (*(a3 + 1466) != 1)
  {
    goto LABEL_27;
  }

  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 < 0x47)
    {
      return 0;
    }

    v8 = v6[35];
    if (!v8 || (*(v5 + v8) & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7 < 0x47)
    {
      return 0;
    }

    v9 = v6[35];
    if (!v9 || (*(v5 + v9) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = a2[5];
  v11 = (v10 - *v10);
  v12 = *v11;
  if (*(a2 + 78))
  {
    if (v12 < 0x47)
    {
      return 0;
    }

    v13 = v11[35];
    if (!v13)
    {
      return 0;
    }

    v14 = 2;
  }

  else
  {
    if (v12 < 0x47)
    {
      return 0;
    }

    v13 = v11[35];
    if (!v13)
    {
      return 0;
    }

    v14 = 1;
  }

  if ((*(v10 + v13) & v14) != 0)
  {
LABEL_27:
    if (*(a3 + 1465) != 1 || ((v15 = a2[1]) == 0 || (v16 = (v15 - *v15), *v16 < 0x11u) || (v17 = v16[8]) == 0 || (*(v15 + v17) & 4) == 0) && ((v18 = (*a2 - **a2), *v18 < 0x9Bu) || (v19 = v18[77]) == 0 || (*(*a2 + v19 + 2) & 1) == 0))
    {
      v23[3] = v3;
      v23[4] = v4;
      sub_10AC880(a1, a2, (a2 + 5), a3, 0);
      v23[0] = v21;
      return sub_10ADE24(v23, (a3 + 1472));
    }
  }

  return 0;
}

BOOL sub_10AE0EC(int **a1, int **a2, int **a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  v6 = (*a2 - v5);
  if (*v6 < 0x9Bu || !v6[77] || (*(v4 + v6[77]) & 3) == 0)
  {
    return 0;
  }

  v7 = v6[35];
  if (!*(a2 + 38))
  {
    if (v6[35])
    {
      if ((*(v4 + v7) & 0x80) != 0)
      {
        return 0;
      }

      v8 = 0;
      LODWORD(v5) = *(v4 + v7);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      return 0;
    }

LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  if (!v6[35])
  {
    goto LABEL_13;
  }

  if (*(v4 + v7 + 1))
  {
    return 0;
  }

  v8 = 0;
  LODWORD(v5) = *(v4 + v7);
  if ((v5 & 0x1000) != 0)
  {
    return 0;
  }

LABEL_14:
  v10 = *a3;
  v11 = (*a3 - **a3);
  v12 = *v11;
  if (*(a3 + 38))
  {
    if (v12 < 0x47)
    {
      goto LABEL_24;
    }

    v11 = v11[35];
    if (!v11)
    {
      goto LABEL_24;
    }

    if (*(v11 + v10 + 1))
    {
      return 0;
    }

    v13 = 4096;
  }

  else
  {
    if (v12 < 0x47)
    {
      goto LABEL_24;
    }

    LODWORD(v11) = v11[35];
    if (!v11)
    {
      goto LABEL_24;
    }

    if ((*(v10 + v11) & 0x80) != 0)
    {
      return 0;
    }

    v13 = 2048;
  }

  if ((*(v10 + v11) & v13) != 0)
  {
    return 0;
  }

LABEL_24:
  if (*(a2 + 38))
  {
    if (v8)
    {
      goto LABEL_32;
    }

    if ((v5 & 0x1100) == 0)
    {
      v14 = 1024;
      goto LABEL_31;
    }

    return 0;
  }

  if (v8)
  {
    goto LABEL_32;
  }

  if ((v5 & 0x880) != 0)
  {
    return 0;
  }

  v14 = 512;
LABEL_31:
  if ((v5 & v14) != 0)
  {
    return 0;
  }

LABEL_32:
  v18 = sub_313A3C(a3);
  if (v18 || *(a4 + 3) == 1 && sub_10AE320(v18, a2, a4))
  {
    return 0;
  }

  sub_31D6E8(*a1, *(a2 + 8) | (*(a2 + 18) << 32), v22);
  if (v23)
  {
    if (v22[0] && v22[1] && (sub_10AF3DC(v22[0], v24) & 1) != 0)
    {
      return 0;
    }
  }

  v19 = (*a2 - **a2);
  if (*v19 >= 9u && (v20 = v19[4]) != 0)
  {
    v21 = *(*a2 + v20);
  }

  else
  {
    v21 = 0;
  }

  return !sub_4BF020(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, *(a4 + 928) + v21, 0);
}

BOOL sub_10AE320(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (v7 >= 0x2F && v6[23] && *(v5 + v6[23]) != 32)
  {
    return 0;
  }

  v8 = *(a2 + 38);
  v9 = 3;
  if (!*(a2 + 38))
  {
    v9 = 2;
  }

  v10 = a2[v9];
  v11 = -1.0;
  if (v8)
  {
    if (v7 < 0x11)
    {
      goto LABEL_14;
    }

    v12 = v6[8];
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 < 0xF)
    {
      goto LABEL_14;
    }

    v12 = v6[7];
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v5 + v12);
  v11 = v13;
  if (!v13)
  {
    v11 = -1.0;
  }

LABEL_14:
  v14 = -1.0;
  if (v10)
  {
    v15 = (v10 - *v10);
    if (*v15 >= 9u)
    {
      v16 = v15[4];
      if (v16)
      {
        v17 = *(v10 + v16);
        if ((v17 - 1) <= 0xFFFDu)
        {
          v14 = v17 / 100.0;
        }
      }
    }
  }

  if ((*&v11 <= -1 || ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && *&v11 != 0 || v11 <= 0.0)
  {
    v11 = 0.0;
  }

  if ((*&v14 <= -1 || ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v14 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v14 = 0.0;
  }

  if (v11 >= v14)
  {
    v23 = v11;
  }

  else
  {
    v23 = v14;
  }

  v24 = sub_311A24(v5, v8);
  v25 = *a2;
  v26 = (*a2 - **a2);
  v27 = *v26;
  if (*(a2 + 38))
  {
    if (v27 >= 0x9B)
    {
      v28 = v26[77];
      if (v28)
      {
        v29 = *(v25 + v28);
        if ((v29 & 2) != 0)
        {
          v30 = 1;
          goto LABEL_60;
        }
      }
    }
  }

  else if (v27 >= 0x9B)
  {
    v31 = v26[77];
    if (v31)
    {
      v29 = *(v25 + v31);
      if (v29)
      {
        v30 = 2;
LABEL_60:
        v32 = (v29 & v30) == 0;
        v33 = 0;
        if (*&v23 >> 52 > 0x7FEuLL)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }
    }
  }

  v32 = 0;
  v33 = 0;
  if (*&v23 >> 52 > 0x7FEuLL)
  {
    goto LABEL_54;
  }

LABEL_52:
  if (v23 > 0.0)
  {
    v33 = v23 < *(a3 + 320);
  }

LABEL_54:
  if (!v32)
  {
    return 0;
  }

  return v24 < 2 && v33;
}

uint64_t sub_10AE538(uint64_t *a1, int **a2, int **a3, uint64_t a4)
{
  if (!sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, a3[4] & 0xFFFFFFFFFFFFFFLL))
  {
    return 1;
  }

  v8 = (*a2 - **a2);
  if (*v8 < 0x2Fu)
  {
    return 0;
  }

  v9 = v8[23];
  if (!v9)
  {
    return 0;
  }

  if (*(*a2 + v9) != 44)
  {
    return 0;
  }

  v10 = (*a3 - **a3);
  if (*v10 < 0x2Fu)
  {
    return 0;
  }

  v11 = v10[23];
  if (!v11 || *(*a3 + v11) != 44 || *(a4 + 1) != 1)
  {
    return 0;
  }

  sub_31E068(*a1, *(a2 + 8) | (*(a2 + 18) << 32), 8, &v65);
  sub_31E068(*a1, *(a3 + 8) | (*(a3 + 18) << 32), 8, &__p);
  v13 = v65;
  v12 = v66;
  v56 = v66;
LABEL_14:
  if (v13 != v12)
  {
    v15 = *v13;
    v16 = *a1;
    sub_2B51D8(*a1, *v13 & 0xFFFFFFFFFFFFLL);
    if (*(v16 + 7772) == 1)
    {
      sub_30C50C(v16 + 3896, v15, 0);
    }

    sub_31D7E8(v16, v15 & 0xFFFFFFFFFFFFLL, 1);
    v17 = v64;
    if (__p == v64)
    {
      goto LABEL_13;
    }

    v62 = v13;
    v18 = __p + 12;
    while (1)
    {
      v19 = *(v18 - 12);
      v20 = *a1;
      v21 = v19 & 0xFFFFFFFFFFFFLL;
      sub_2B51D8(*a1, v19 & 0xFFFFFFFFFFFFLL);
      if (*(v20 + 7772) != 1)
      {
        goto LABEL_30;
      }

      v22 = *(v20 + 7752) + 1;
      *(v20 + 7752) = v22;
      v23 = *(v20 + 3896);
      if (!v23)
      {
        goto LABEL_83;
      }

      if (*(v20 + 4680) == v19)
      {
        v24 = "/System/Library/Frameworks/Foundation.framework/Foundation" + 40;
        goto LABEL_29;
      }

      if (*(v20 + 4704) == v19)
      {
        v24 = &stru_1260;
        goto LABEL_29;
      }

      if (*(v20 + 4728) == v19)
      {
        break;
      }

      if (*(v20 + 4752) == v19)
      {
        v24 = "/usr/lib/libobjc.A.dylib" + 24;
LABEL_29:
        v25 = &v24[v20];
        ++*(v20 + 7760);
        *(v25 + 1) = v22;
        if (!*(v25 + 2))
        {
          goto LABEL_83;
        }

        goto LABEL_30;
      }

      v57 = *(v20 + 4712);
      v35 = *(v20 + 4688);
      v58 = *(v20 + 4760);
      v60 = *(v20 + 4736);
      v36 = sub_2D52A4(v23, 8, v19, 1);
      if (v35 >= v22)
      {
        v37 = v22;
      }

      else
      {
        v37 = v35;
      }

      v38 = v57 >= v37;
      if (v57 < v37)
      {
        v37 = v57;
      }

      v39 = 32 * (v35 < v22);
      if (!v38)
      {
        v39 = 33;
      }

      if (v60 < v37)
      {
        v39 = 34;
        v37 = v60;
      }

      if (v58 < v37)
      {
        v39 = 35;
      }

      v40 = v20 + 3912 + 24 * v39;
      *v40 = v19;
      *(v40 + 8) = *(v20 + 7752);
      *(v40 + 16) = v36;
      if (!v36)
      {
LABEL_83:
        exception = __cxa_allocate_exception(0x40uLL);
        v68 = v19;
        v67[0] = sub_7FCF0(8u);
        v67[1] = v52;
        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v67, v69);
        if ((v70 & 0x80u) == 0)
        {
          v53 = v69;
        }

        else
        {
          v53 = v69[0];
        }

        if ((v70 & 0x80u) == 0)
        {
          v54 = v70;
        }

        else
        {
          v54 = v69[1];
        }

        v55 = sub_2D390(exception, v53, v54);
      }

LABEL_30:
      if (*(v20 + 7773) == 1)
      {
        v26 = *(v20 + 7752) + 1;
        *(v20 + 7752) = v26;
        v27 = *(v20 + 3896);
        if (v27)
        {
          if (*(v20 + 6024) == v19)
          {
            v28 = 6024;
          }

          else if (*(v20 + 6048) == v19)
          {
            v28 = 6048;
          }

          else if (*(v20 + 6072) == v19)
          {
            v28 = 6072;
          }

          else
          {
            if (*(v20 + 6096) != v19)
            {
              v41 = *(v20 + 6056);
              v42 = *(v20 + 6032);
              v59 = *(v20 + 6104);
              v61 = *(v20 + 6080);
              v30 = sub_2D52A4(v27, 22, v19, 1);
              if (v42 >= v26)
              {
                v43 = v26;
              }

              else
              {
                v43 = v42;
              }

              v44 = 88;
              if (v42 >= v26)
              {
                v44 = 0;
              }

              if (v41 < v43)
              {
                v43 = v41;
                v44 = 89;
              }

              if (v61 < v43)
              {
                v44 = 90;
                v43 = v61;
              }

              v38 = v59 >= v43;
              v45 = 91;
              if (v38)
              {
                v45 = v44;
              }

              v46 = v20 + 3912 + 24 * v45;
              *v46 = v19;
              *(v46 + 8) = *(v20 + 7752);
              *(v46 + 16) = v30;
              if (!v30)
              {
                goto LABEL_72;
              }

LABEL_41:
              v31 = (v30 + *v30);
              v32 = (v31 - *v31);
              if (*v32 >= 0xBu)
              {
                if (v32[5])
                {
                  v33 = (v31 + v32[5] + *(v31 + v32[5]));
                  if (*v33 > HIDWORD(v21))
                  {
                    v34 = v33[2 * HIDWORD(v21) + 1];
                    if (v34)
                    {
                      sub_2B3284(v20 + 3896, v34, 1);
                    }
                  }
                }
              }

              goto LABEL_72;
            }

            v28 = 6096;
          }

          v29 = v20 + v28;
          ++*(v20 + 7760);
          *(v29 + 8) = v26;
          v30 = *(v29 + 16);
          if (v30)
          {
            goto LABEL_41;
          }
        }
      }

LABEL_72:
      v47 = sub_31EE90(*a1, v15 & 0xFFFFFFFFFFFFFFLL, v19 & 0xFFFFFFFFFFFFFFLL);
      if (v18 == v17)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      v18 += 12;
      if ((v48 & 1) == 0)
      {
        v13 = v62;
        if (!v47)
        {
          result = 1;
          goto LABEL_79;
        }

LABEL_13:
        v13 = (v13 + 12);
        v12 = v56;
        goto LABEL_14;
      }
    }

    v24 = "/usr/lib/libobjc.A.dylib";
    goto LABEL_29;
  }

  result = 0;
LABEL_79:
  if (__p)
  {
    v64 = __p;
    v49 = result;
    operator delete(__p);
    result = v49;
  }

  if (v65)
  {
    v66 = v65;
    v50 = result;
    operator delete(v65);
    return v50;
  }

  return result;
}

void sub_10AEA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

double sub_10AEAE0(unsigned int *a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 > v4)
  {
    v5 = a2[1];
    v6 = (v5 - v3) >> 5;
    if (v6 >= 1)
    {
      if (v5 - v3 != 32)
      {
        do
        {
          v7 = (8 * v6) & 0xFFFFFFFFFFFFFFE0;
          _X14 = &v3[v7];
          __asm { PRFM            #0, [X14] }

          v14 = &v3[32 * (v6 >> 1)];
          _X13 = &v14[v7];
          __asm { PRFM            #0, [X13] }

          if (*v14 >= v2)
          {
            v17 = 0;
          }

          else
          {
            v17 = v6 >> 1;
          }

          v3 += 32 * v17;
          v6 -= v6 >> 1;
        }

        while (v6 > 1);
        v4 = *v3;
      }

      v3 += 32 * (v4 < v2);
    }

    if (v5 == v3)
    {
      v19 = *(v5 - 24);
      return *&v19;
    }

    v18 = *(v3 - 8);
    if (*v3 != v18)
    {
      *&v19 = *&vaddq_f64(*(v3 - 24), vmulq_n_f64(vsubq_f64(*(v3 + 8), *(v3 - 24)), (v2 - v18) / (*v3 - v18)));
      return *&v19;
    }
  }

  v19 = *(v3 + 8);
  return *&v19;
}

uint64_t **sub_10AEBD4(void *a1, uint64_t a2)
{
  v2 = a2;
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_10AEFBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10AEFD4(void *a1, uint64_t a2)
{
  v2 = a2;
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_10AF3C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10AF3DC(int *a1, int a2)
{
  v2 = (a1 - *a1);
  v3 = *v2;
  if (!a2)
  {
    if (v3 < 0x47)
    {
      return sub_10AF488(a1, a2);
    }

    v6 = v2[35];
    if (!v6)
    {
      return sub_10AF488(a1, a2);
    }

    v7 = *(a1 + v6);
    if ((vmaxv_u16(vmovn_s32(vtstq_s32(vdupq_n_s32(v7), xmmword_22AEF60))) & 1) == 0 && (v7 & 0x80) == 0 && (*(a1 + v6) & 0x800) == 0)
    {
      return sub_10AF488(a1, a2);
    }

    return 1;
  }

  if (v3 >= 0x47)
  {
    v4 = v2[35];
    if (v4)
    {
      v5 = *(a1 + v4);
      if ((vmaxv_u16(vmovn_s32(vtstq_s32(vdupq_n_s32(v5), xmmword_22AEF50))) & 1) != 0 || (v5 & 0x100) != 0 || (*(a1 + v4) & 0x1000) != 0)
      {
        return 1;
      }
    }
  }

  return sub_10AF488(a1, a2);
}

BOOL sub_10AF488(int *a1, int a2)
{
  v2 = (a1 - *a1);
  v3 = *v2;
  if (a2)
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*(a1 + v4) & 0x40) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*(a1 + v6) & 0x20) != 0;
    }
  }

  return 0;
}

void sub_10AF4E4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *a2;
    if (v4)
    {
      v7 = 0;
      v8 = 4 * v4;
      do
      {
        v9 = a2[v7 / 4 + 1];
        v10 = (&a2[v7 / 4] + v9 - *(&a2[v7 / 4 + 1] + v9));
        if (v10[2] >= 7u)
        {
          if (v10[5])
          {
            v11 = *(&a2[v7 / 4 + 1] + v9 + v10[4]);
            v12 = (v11 & 0xFF000000000000) == 0;
            if (*(&a2[v7 / 4 + 1] + v9 + v10[5]) == 8)
            {
              v13 = v11 & 0xFFFFFFFFFFFFLL;
              if (*(a1 + 7774) != 1 || (v14 = sub_2AF704(a1 + 3896, v11, 1)) != 0 && (v15 = &v14[-*v14], *v15 >= 5u) && (v16 = *(v15 + 2)) != 0 && *&v14[v16 + *&v14[v16]] > WORD2(v11) && sub_2B817C(a1, v11 & 0xFFFFFFFFFFFFLL))
              {
                v17 = **a3;
                v18 = sub_2B51D8(v17, v11 & 0xFFFFFFFFFFFFLL);
                if (*(v17 + 7772) == 1)
                {
                  v19 = sub_30C50C(v17 + 3896, v11, 0);
                  v20 = &v19[-*v19];
                  if (*v20 < 5u)
                  {
                    v21 = 0;
                  }

                  else
                  {
                    v21 = *(v20 + 2);
                    if (v21)
                    {
                      v21 += &v19[*&v19[v21]];
                    }
                  }

                  v22 = (v21 + ((v11 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v11 >> 30) & 0x3FFFC) + 4));
                }

                else
                {
                  v22 = 0;
                }

                v23 = sub_31D7E8(v17, v13, 1);
                v30[0] = v18;
                v30[1] = v22;
                v30[2] = v23;
                v30[3] = v24;
                v30[4] = (v13 | (v12 << 48));
                v25 = sub_314550(v30);
                v28 = *&v25 > -1 && ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v25 - 1) < 0xFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFLL) == 0;
                if (v28 && v25 > 0.0)
                {
                  v29 = *(a3 + 8);
                  if (v25 > *v29)
                  {
                    *v29 = v25;
                  }
                }
              }
            }
          }
        }

        v7 += 4;
      }

      while (v8 != v7);
    }
  }
}

int *sub_10AF728(int *result, unsigned int *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *a2;
    if (v5)
    {
      v8 = result;
      v9 = 0;
      v10 = 4 * v5;
      do
      {
        v11 = a2[v9 / 4 + 1];
        v12 = (&a2[v9 / 4] + v11 - *(&a2[v9 / 4 + 1] + v11));
        if (v12[2] < 7u)
        {
          LODWORD(v13) = 0;
        }

        else
        {
          v13 = v12[5];
          if (v12[5])
          {
            LODWORD(v13) = *(&a2[v9 / 4 + 1] + v11 + v13);
          }
        }

        v14 = *(&a2[v9 / 4 + 1] + v11 + v12[4]);
        v17 = v14 & 0xFFFFFFFFFFFFLL | (((v14 & 0xFF000000000000) == 0) << 48);
        v18 = v13;
        if (v13 == a3)
        {
          if (*(v8 + 7774) != 1 || (result = sub_2AF704(v8 + 3896, v14, 1)) != 0 && (v15 = (result - *result), *v15 >= 5u) && (v16 = v15[2]) != 0 && *(result + v16 + *(result + v16)) > WORD2(v14) && (result = sub_2B817C(v8, v14 & 0xFFFFFFFFFFFFLL), result))
          {
            result = sub_10AF890(a4, &v17);
          }
        }

        v9 += 4;
      }

      while (v10 != v9);
    }
  }

  return result;
}

char *sub_10AF890(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *a2;
  v6 = sub_2B51D8(v4, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v4 + 7772) == 1)
  {
    v7 = sub_30C50C(v4 + 3896, v5, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = (v9 + ((v5 >> 30) & 0x3FFFC) + 4 + *(v9 + ((v5 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v10 = 0;
  }

  v20[0] = v6;
  v20[1] = v10;
  v20[2] = sub_31D7E8(v4, v5 & 0xFFFFFFFFFFFFLL, 1);
  v20[3] = v11;
  v21 = v5;
  v12 = v3[2];
  v13 = sub_31CEE0(v20);
  v14 = v21 | (WORD2(v21) << 32);
  v15 = sub_4345A0(v12, v14);
  result = sub_4345A0(v12, v14 | 0x1000000000000);
  v17 = result;
  if (result <= v15)
  {
    v17 = v15;
  }

  if (v17)
  {
    v18 = v13 / v17;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = *(a1 + 8);
  if (v18 < *v19)
  {
    v18 = *v19;
  }

  *v19 = v18;
  return result;
}

unint64_t sub_10AF9E0(uint64_t a1, int **a2, double **a3, int a4)
{
  if (a4 && (v6 = (*a2 - **a2), *v6 >= 0x2Fu) && (v7 = v6[23]) != 0 && *(*a2 + v7) == 44)
  {
    v8 = *a1;
    v9 = *(a2 + 8) | (*(a2 + 18) << 32);
    *&v25[0] = a1;
    *&v25[1] = &v26;
    v26 = 0.0;
    v10 = sub_2B51D8(v8, v9);
    v11 = v10;
    v12 = (v10 - *v10);
    if (*v12 >= 0x5Fu && (v13 = v12[47]) != 0)
    {
      v14 = (v10 + v13 + *(v10 + v13));
    }

    else
    {
      v14 = 0;
    }

    sub_10AF728(v8, v14, 8, v25);
    v22 = (v11 - *v11);
    if (*v22 >= 0x61u && (v23 = v22[48]) != 0)
    {
      v24 = (v11 + v23 + *(v11 + v23));
    }

    else
    {
      v24 = 0;
    }

    sub_10AF728(v8, v24, 8, v25);
    v20 = v26;
  }

  else
  {
    v15 = *(a1 + 16);
    v16 = sub_31CEE0(a2);
    v17 = *(a2 + 8) | (*(a2 + 18) << 32);
    v18 = sub_4345A0(v15, v17);
    v19 = sub_4345A0(v15, v17 | 0x1000000000000);
    if (v19 <= v18)
    {
      v19 = v18;
    }

    if (v19)
    {
      v20 = v16 / v19;
    }

    else
    {
      v20 = 0.0;
    }
  }

  v25[0] = v20;
  return sub_10ADE24(v25, a3);
}

unint64_t sub_10AFB6C(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    a2[2] = vadd_s32(*(a4 + 56), a2[2]);
    *&a2[3] += *(a4 + 64);
  }

  v9 = *(a4 + 74);
  if (v9 >> 5 > 0x464)
  {
    v12 = 0;
    v13 = *(a4 + 76);
    if (v13 != 5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = *(a5 + 1208);
    v12 = v10 >> 5 < 0x465 && v9 < v10;
    v13 = *(a4 + 76);
    if (v13 != 5)
    {
LABEL_11:
      if (v13 == 1 && *(a4 + 73) == 1 && *(a4 + 72) == 1 && (*(a4 + 24) > *(a5 + 1200) || v12) && *(a4 + 8) <= *(a5 + 1216))
      {
        v14 = 1192;
        v15 = 1188;
        v16 = 1184;
LABEL_24:
        v18 = *(a5 + v15) + a2[2].i32[1];
        a2[2].i32[0] += *(a5 + v16);
        a2[2].i32[1] = v18;
        *&a2[3] += *(a5 + v14);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  if (*(a4 + 73) == 1 && *(a4 + 72) == 1)
  {
    v14 = 1088;
    v15 = 1084;
    v16 = 1080;
    goto LABEL_24;
  }

LABEL_25:
  if (*(a4 + 32) == 1 && *(a4 + 8) >= *(a5 + 1176))
  {
    a2[2] = vadd_s32(*(a5 + 1160), a2[2]);
    *&a2[3] += *(a5 + 1168);
  }

  v19 = *(a5 + 56);
  v20 = *(a4 + 8);
  v44 = -NAN;
  v45 = 0x7FFFFFFFFFFFFFFFLL;
  v21 = (*&v19 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((*&v19 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    v21 = 1;
  }

  v23 = ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v19 >= 0.0 || v21;
  if (v19 > 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 == 1 && v20 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v26 = v20 / 10.0 / (v19 / 3.6);
    if (v26 >= 0.0)
    {
      if (v26 < 4.50359963e15)
      {
        v27 = (v26 + v26) + 1;
        goto LABEL_48;
      }
    }

    else if (v26 > -4.50359963e15)
    {
      v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_48:
      v26 = (v27 >> 1);
    }

    LODWORD(v44) = v26;
    HIDWORD(v44) = v26;
    v45 = v20;
  }

  v28 = *(a4 + 40);
  if (v28 <= 0.95)
  {
    v32 = sub_F8634C(&v44, (a5 + 1240), v28);
    v30 = *(a5 + 1232) + v33;
    v29 = (*(a5 + 1224) + v32) | ((*(a5 + 1228) + HIDWORD(v32)) << 32);
  }

  else
  {
    v29 = sub_F8634C(&v44, (a5 + 1264), v28);
  }

  v34 = a2[2].i32[1] + HIDWORD(v29);
  a2[2].i32[0] += v29;
  a2[2].i32[1] = v34;
  *&a2[3] += v30;
  v35 = *(a4 + 16);
  v36 = -NAN;
  v42 = -NAN;
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  if (v35 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = v24;
  }

  else
  {
    v37 = 0;
  }

  if (v37 == 1)
  {
    v36 = v35 / 10.0 / (v19 / 3.6);
    if (v36 >= 0.0)
    {
      if (v36 < 4.50359963e15)
      {
        v38 = (v36 + v36) + 1;
        goto LABEL_62;
      }
    }

    else if (v36 > -4.50359963e15)
    {
      v38 = (v36 + v36) - 1 + (((v36 + v36) - 1) >> 63);
LABEL_62:
      v36 = (v38 >> 1);
    }

    LODWORD(v42) = v36;
    HIDWORD(v42) = v36;
    v43 = v35;
  }

  result = sub_F8634C(&v42, (a1 + 5392), v36);
  v40 = a2[2].i32[1] + HIDWORD(result);
  a2[2].i32[0] += result;
  a2[2].i32[1] = v40;
  *&a2[3] += v41;
  return result;
}

void sub_10AFF14(uint64_t a1, uint64_t a2, int **a3, unsigned int a4, uint64_t a5, signed int *a6, int a7)
{
  v14 = sub_10B0840(a1, a3, a5, *a6, a7);
  if (a7 != 2 || *(a5 + 177) != 1)
  {
    goto LABEL_20;
  }

  if (*(a5 + 178) == 1)
  {
    v15 = *a6;
    if (*a6 == 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    v16 = *(a1 + 64);
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    v17 = *(a5 + 172);
    v18 = v17 < 0 ? -5 : 5;
    if ((v17 / -10 + v16 + (((-103 * (v18 + v17 % 10)) >> 15) & 1) + ((-103 * (v18 + v17 % 10)) >> 10)) > v15)
    {
      goto LABEL_20;
    }

    v19 = *(a5 + 168);
    v20 = v19 < 0 ? -5 : 5;
    if ((v19 / 10 + v16 + (((103 * (v20 + v19 % 10)) >> 15) & 1) + ((103 * (v20 + v19 % 10)) >> 10)) < v15)
    {
      goto LABEL_20;
    }
  }

  v21 = v14;
  v100 = *(a5 + 179);
  v99[0] = a3;
  v99[1] = &v100;
  v22 = *(a1 + 16);
  v23 = a3[4];
  if (*(a1 + 68) != 1)
  {
    sub_10B765C(&v97, v22, v23 & 0xFFFFFFFFFFFFFFLL, v99, *(v22 + 37));
    v24 = v97;
    v25 = v98;
    if (!v97)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_10B765C(&v97, v22, v23 & 0xFFFFFFFFFFFFFFLL, v99, 0);
  v24 = v97;
  v25 = v98;
  if (v97)
  {
LABEL_18:
    v98 = v24;
    operator delete(v24);
  }

LABEL_19:
  v14 = v21;
  if (v24 != v25)
  {
    goto LABEL_67;
  }

LABEL_20:
  if (!a4)
  {
    return;
  }

  v26 = (*a3 - **a3);
  v27 = 0.0;
  if (*v26 >= 9u)
  {
    v28 = v26[4];
    if (v28)
    {
      LODWORD(v27) = *(*a3 + v28);
      v27 = *&v27;
    }
  }

  v29 = a4 / 1000000000.0 * v27;
  if (v29 >= 0.0)
  {
    if (v29 >= 4.50359963e15)
    {
      goto LABEL_30;
    }

    v30 = (v29 + v29) + 1;
  }

  else
  {
    if (v29 <= -4.50359963e15)
    {
      goto LABEL_30;
    }

    v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
  }

  v29 = (v30 >> 1);
LABEL_30:
  v33 = *&v14 > -1 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 0x7FFFFFFF;
  v36 = -1;
  if (!v33 || v14 <= 0.0 || v29 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_50;
  }

  v37 = v29 / 10.0 / (v14 / 3.6);
  if (v37 >= 0.0)
  {
    if (v37 < 4.50359963e15)
    {
      v38 = (v37 + v37) + 1;
      goto LABEL_48;
    }
  }

  else if (v37 > -4.50359963e15)
  {
    v38 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
LABEL_48:
    v37 = (v38 >> 1);
  }

  v36 = v37;
  v35 = v37;
  v34 = v29;
LABEL_50:
  *a2 = v36;
  *(a2 + 4) = v35;
  *(a2 + 8) = v34;
  v39 = (*a3 - **a3);
  if (*v39 < 0x9Bu)
  {
    goto LABEL_68;
  }

  v40 = v39[77];
  if (!v40)
  {
    goto LABEL_68;
  }

  v41 = *(*a3 + v40);
  if ((v41 & 8) != 0)
  {
    *(a2 + 32) = vmulq_f64(*(a5 + 384), *(a2 + 32));
    v48 = *(a5 + 400);
    goto LABEL_69;
  }

  v42 = 1;
  if (*(a3 + 38))
  {
    v42 = 2;
  }

  if ((v41 & v42) == 0)
  {
LABEL_68:
    *(a2 + 32) = vmulq_f64(*(a5 + 288), *(a2 + 32));
    v48 = *(a5 + 304);
LABEL_69:
    *(a2 + 48) = v48 * *(a2 + 48);
    return;
  }

  if ((v41 & 0x400000) != 0)
  {
    v43 = 2;
  }

  else
  {
    v43 = (v41 >> 21) & 1;
  }

  v44 = sub_10A7E3C((a5 + 264), v43);
  v45 = v44[1].f64[0];
  if (v44->f64[0] == INFINITY || v44->f64[1] == INFINITY || v45 == INFINITY)
  {
    goto LABEL_67;
  }

  *(a2 + 32) = vmulq_f64(*v44, *(a2 + 32));
  *(a2 + 48) = v45 * *(a2 + 48);
  v49 = (*a3 - **a3);
  if (*v49 >= 0x2Fu && (v50 = v49[23]) != 0)
  {
    v51 = *(*a3 + v50);
  }

  else
  {
    v51 = 32;
  }

  v52 = sub_10A7E3C((a5 + 736), v51);
  v53 = *v52;
  if (*v52 == INFINITY)
  {
    goto LABEL_67;
  }

  if (v53.f64[1] == INFINITY)
  {
    goto LABEL_67;
  }

  v54 = *(v52 + 16);
  if (v54 == INFINITY)
  {
    goto LABEL_67;
  }

  *(a2 + 32) = vmulq_f64(v53, *(a2 + 32));
  *(a2 + 48) = v54 * *(a2 + 48);
  if ((*(a5 + 435) & 1) == 0 && (v55 = (*a3 - **a3), *v55 >= 0x2Fu) && (v56 = v55[23]) != 0 && (v57 = *(*a3 + v56) - 2, v57 < 0x29) && ((0x14109A04001uLL >> v57) & 1) != 0 || (*(a5 + 436) & 1) == 0 && (v58 = a3[1]) != 0 && (v59 = (v58 - *v58), *v59 >= 0x11u) && (v60 = v59[8]) != 0 && (*(v58 + v60) & 4) != 0)
  {
    v71 = 0;
    goto LABEL_101;
  }

  v61 = *a3;
  v62 = (*a3 - **a3);
  v63 = *v62;
  if (v63 < 0x9B)
  {
    v64 = (a5 + 216);
    if (v63 < 0x1B)
    {
LABEL_96:
      v66 = 0;
      goto LABEL_97;
    }
  }

  else
  {
    if (v62[77] && (*(v61 + v62[77] + 3) & 2) != 0)
    {
      goto LABEL_98;
    }

    v64 = (a5 + 216);
  }

  v65 = v62[13];
  if (!v65)
  {
    goto LABEL_96;
  }

  v66 = *(v61 + v65);
LABEL_97:
  v67 = sub_10A7E3C(v64, v66);
  *(a2 + 32) = vmulq_f64(*v67, *(a2 + 32));
  *(a2 + 48) = v67[1].f64[0] * *(a2 + 48);
LABEL_98:
  v68 = (sub_10B0DA0(*a1, a3) * 100.0 + 0.5);
  v69 = *(a5 + 240);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a5 + 248) - v69) >> 3) > v68)
  {
    v70 = (v69 + 24 * v68);
    *(a2 + 32) = vmulq_f64(*v70, *(a2 + 32));
    *(a2 + 48) = v70[1].f64[0] * *(a2 + 48);
  }

  v71 = 1;
LABEL_101:
  v72 = (a5 + 312);
  v73 = *a3;
  v74 = (*a3 - **a3);
  v75 = *v74;
  if (v75 < 0x9B)
  {
    if (v75 < 0x2F)
    {
LABEL_125:
      v84 = sub_314758(a3);
      v85 = *(a5 + 432) > (sub_3147AC(a3) + v84);
      if (!v71)
      {
        goto LABEL_137;
      }

      goto LABEL_126;
    }
  }

  else if (v74[77] && (*(v73 + v74[77] + 1) & 1) != 0)
  {
    v76 = *v72;
    if (v72->f64[0] == INFINITY)
    {
      goto LABEL_67;
    }

    if (v76.f64[1] == INFINITY)
    {
      goto LABEL_67;
    }

    v77 = *(a5 + 328);
    if (v77 == INFINITY)
    {
      goto LABEL_67;
    }

    *(a2 + 32) = vmulq_f64(v76, *(a2 + 32));
    *(a2 + 48) = v77 * *(a2 + 48);
  }

  v78 = v74[23];
  if (!v74[23])
  {
    goto LABEL_125;
  }

  if (!*(v73 + v78))
  {
    v79 = *(a5 + 336);
    if (v79.f64[0] == INFINITY)
    {
      goto LABEL_67;
    }

    if (v79.f64[1] == INFINITY)
    {
      goto LABEL_67;
    }

    v80 = *(a5 + 352);
    if (v80 == INFINITY)
    {
      goto LABEL_67;
    }

    *(a2 + 32) = vmulq_f64(v79, *(a2 + 32));
    *(a2 + 48) = v80 * *(a2 + 48);
  }

  if (*(v73 + v78) == 22 && (v75 < 0x9B || (v81 = v74[77]) == 0 || (*(v73 + v81 + 3) & 2) == 0 || *(a5 + 434) == 1))
  {
    v82 = *(a5 + 360);
    if (v82.f64[0] == INFINITY)
    {
      goto LABEL_67;
    }

    if (v82.f64[1] == INFINITY)
    {
      goto LABEL_67;
    }

    v83 = *(a5 + 376);
    if (v83 == INFINITY)
    {
      goto LABEL_67;
    }

    *(a2 + 32) = vmulq_f64(v82, *(a2 + 32));
    *(a2 + 48) = v83 * *(a2 + 48);
  }

  if (*(v73 + v78) == 32)
  {
    goto LABEL_125;
  }

  v85 = 0;
  if (!v71)
  {
    goto LABEL_137;
  }

LABEL_126:
  if (!sub_312DF0(a3))
  {
    goto LABEL_137;
  }

  v86 = (*a3 - **a3);
  if (*v86 < 0x9Bu || (v87 = v86[77]) == 0)
  {
    if (!v85)
    {
      goto LABEL_137;
    }

LABEL_132:
    v88 = *(a5 + 408);
    if (v88.f64[0] != INFINITY && v88.f64[1] != INFINITY)
    {
      v89 = *(a5 + 424);
      if (v89 != INFINITY)
      {
        *(a2 + 32) = vmulq_f64(v88, *(a2 + 32));
        *(a2 + 48) = v89 * *(a2 + 48);
        goto LABEL_137;
      }
    }

LABEL_67:
    *(a2 + 56) = 0;
    return;
  }

  if ((v85 | (*(*a3 + v87 + 2) >> 7)))
  {
    goto LABEL_132;
  }

LABEL_137:
  if (*(a5 + 437) == 1)
  {
    v90 = sub_314758(a3);
    if (v90)
    {
      *(a2 + 32) = pow(1.0 / v90, *(a5 + 440)) * *(a2 + 32);
    }
  }

  if (*(a5 + 448) == 1)
  {
    v91 = sub_311A24(*a3, *(a3 + 38));
    if (v91 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v91;
    }

    *(a2 + 32) = *(a2 + 32) * pow(1.0 / v92, *(a5 + 456));
  }

  if (*(a5 + 464) == 1)
  {
    v93 = a3[1];
    v94 = (v93 - *v93);
    v95 = 0.0;
    if (*v94 >= 0x13u)
    {
      v96 = v94[9];
      if (v96)
      {
        LOWORD(v95) = *(v93 + v96);
        v95 = *&v95;
      }
    }

    *(a2 + 32) = *(a2 + 32) * pow(fmax(v95, 1.0), *(a5 + 472));
  }
}

double sub_10B0840(uint64_t *a1, int **a2, uint64_t a3, signed int a4, int a5)
{
  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 < 0x9B || !v6[77] || (*&v5[v6[77]] & 0xALL) == 0)
    {
      return *(a3 + 56);
    }
  }

  else if (v7 < 0x9B || !v6[77] || (*&v5[v6[77]] & 9) == 0)
  {
    return *(a3 + 56);
  }

  if (*(a3 + 152) == 1 && v6[23])
  {
    v8 = v5[v6[23]];
    v9 = v8 > 0x2D;
    v10 = (1 << v8) & 0x208040000000;
    if (!v9 && v10 != 0)
    {
      return *(a3 + 160);
    }
  }

  v14 = a2;
  if (a5 != 2 || a4 == 0x7FFFFFFF || *(a3 + 176) != 1 || (v15 = *(a1 + 16), v15 == 0x7FFFFFFF) || ((v16 = *(a3 + 172), v16 < 0) ? (v17 = -5) : (v17 = 5), (v16 / -10 + v15 + (((-103 * (v17 + v16 % 10)) >> 15) & 1) + ((-103 * (v17 + v16 % 10)) >> 10)) > a4 || ((v18 = *(a3 + 168), v18 < 0) ? (v19 = -5) : (v19 = 5), (v18 / 10 + v15 + (((103 * (v19 + v18 % 10)) >> 15) & 1) + ((103 * (v19 + v18 % 10)) >> 10)) < a4)) || ((v29 = v6[14], v30 = a1, *(a1 + 68) != 1) ? (!v29 ? (v32 = 0) : (v32 = *&v5[v29]), !*(a2 + 38) ? (v35 = v32) : (v35 = -v32), v34 = sub_2BC550(a1[2], v35)) : (!v29 ? (v31 = 0) : (v31 = *&v5[v29]), !*(a2 + 38) ? (v33 = v31) : (v33 = -v31), v34 = sub_2BC618(a1[2], v33, 0)), *&v34 > -1 ? (v36 = ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v36 = 1), v36 ? (v37 = (*&v34 - 1) >= 0xFFFFFFFFFFFFFLL) : (v37 = 0), v37 ? (v38 = (*&v34 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v38 = 1), (a2 = v14, a1 = v30, !v38) || v34 <= 0.0))
  {
    v20 = sub_4C1A94(*a1, a2);
    v23 = *&v20 > -1 && ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v20 - 1) < 0xFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if (v23 && v20 > 0.0)
    {
      return v20 * (1.0 - *(a3 + 40)) + *(a3 + 40) * *(a3 + 48);
    }

    v24 = *v14;
    v25 = (*v14 - **v14);
    v26 = *v25;
    if (v26 < 0x9B)
    {
      v27 = a3 + 72;
      if (v26 < 0x1B)
      {
        return *v27;
      }
    }

    else
    {
      if (v25[77] && (*(v24 + v25[77]) & 8) != 0)
      {
        return *(a3 + 64);
      }

      v27 = a3 + 72;
    }

    v28 = v25[13];
    if (v28)
    {
      return *(v27 + 8 * *(v24 + v28));
    }

    return *v27;
  }

  v39 = v34 * (1.0 - *(a3 + 40)) + *(a3 + 40) * *(a3 + 48);
  v40 = sub_4C1A94(*v30, v14);
  v43 = *&v40 > -1 && ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v40 - 1) < 0xFFFFFFFFFFFFFLL || (*&v40 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v43 && v40 > 0.0)
  {
    return v39 * *(a3 + 184) + v40 * (1.0 - *(a3 + 184));
  }

  v44 = (*v14 - **v14);
  if (*v44 < 0x9Bu)
  {
    return v39;
  }

  v45 = v44[77];
  result = v39;
  if (v45 && (*(*v14 + v45) & 8) != 0)
  {
    return *(a3 + 64);
  }

  return result;
}

BOOL sub_10B0C98(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 != 2 || *(a2 + 177) != 1)
  {
    return 0;
  }

  if (*(a2 + 178) != 1)
  {
    return 1;
  }

  if (a3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v4 = *(a1 + 64);
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(a2 + 172);
  v6 = v5 < 0 ? -5 : 5;
  if ((v5 / -10 + v4 + (((-103 * (v6 + v5 % 10)) >> 15) & 1) + ((-103 * (v6 + v5 % 10)) >> 10)) > a3)
  {
    return 0;
  }

  v8 = *(a2 + 168);
  if (v8 < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  return (v8 / 10 + v4 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10)) >= a3;
}

double sub_10B0DA0(uint64_t a1, uint64_t a2)
{
  v2 = 24;
  if (!*(a2 + 38))
  {
    v2 = 16;
  }

  v3 = *(a2 + v2);
  if (!v3)
  {
    return 0.0;
  }

  v4 = (v3 - *v3);
  v5 = *v4;
  if (v5 >= 0xB && v4[5])
  {
    v6 = *(v3 + v4[5]);
    v7 = *(a1 + 3880);
    if (!*(a1 + 3880))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0xFFFF;
    v7 = *(a1 + 3880);
    if (!*(a1 + 3880))
    {
      goto LABEL_13;
    }
  }

  if (v5 >= 0x11)
  {
    v8 = v4[8];
    if (v8)
    {
      v9 = (v3 + v8 + *(v3 + v8));
      if (*v9 >= v7)
      {
        v10 = *(v9 + v7 + 1);
        if ((v10 + 1) > 1u)
        {
          return v10 / 1000.0;
        }
      }
    }
  }

LABEL_13:
  if (v6 == 0xFFFF)
  {
    return 0.3;
  }

  else
  {
    return v6 / 1000.0;
  }
}

void sub_10B0E88(uint64_t a1, uint64_t a2, int **a3, unsigned int a4, uint64_t a5, unsigned int *a6, int a7)
{
  sub_10B17B4(a1, a3, a5, a6, a7);
  v15 = v14;
  v16 = sub_3F80(a6);
  if (a7 != 2 || *(a5 + 177) != 1)
  {
    goto LABEL_20;
  }

  if (*(a5 + 178) == 1)
  {
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    v17 = *(a1 + 64);
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    v18 = *(a5 + 172);
    v19 = v18 < 0 ? -5 : 5;
    if ((v18 / -10 + v17 + (((-103 * (v19 + v18 % 10)) >> 15) & 1) + ((-103 * (v19 + v18 % 10)) >> 10)) > v16)
    {
      goto LABEL_20;
    }

    v20 = *(a5 + 168);
    v21 = v20 < 0 ? -5 : 5;
    if ((v20 / 10 + v17 + (((103 * (v21 + v20 % 10)) >> 15) & 1) + ((103 * (v21 + v20 % 10)) >> 10)) < v16)
    {
      goto LABEL_20;
    }
  }

  v101 = *(a5 + 179);
  v100[0] = a3;
  v100[1] = &v101;
  v22 = *(a1 + 16);
  v23 = a3[4];
  if (*(a1 + 68) != 1)
  {
    sub_10B765C(&v98, v22, v23 & 0xFFFFFFFFFFFFFFLL, v100, *(v22 + 37));
    v24 = v98;
    v25 = v99;
    if (!v98)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_10B765C(&v98, v22, v23 & 0xFFFFFFFFFFFFFFLL, v100, 0);
  v24 = v98;
  v25 = v99;
  if (v98)
  {
LABEL_18:
    v99 = v24;
    operator delete(v24);
  }

LABEL_19:
  if (v24 != v25)
  {
    goto LABEL_67;
  }

LABEL_20:
  if (!a4)
  {
    return;
  }

  v26 = (*a3 - **a3);
  v27 = 0.0;
  if (*v26 >= 9u)
  {
    v28 = v26[4];
    if (v28)
    {
      LODWORD(v27) = *(*a3 + v28);
      v27 = *&v27;
    }
  }

  v29 = a4 / 1000000000.0 * v27;
  if (v29 >= 0.0)
  {
    if (v29 >= 4.50359963e15)
    {
      goto LABEL_30;
    }

    v30 = (v29 + v29) + 1;
  }

  else
  {
    if (v29 <= -4.50359963e15)
    {
      goto LABEL_30;
    }

    v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
  }

  v29 = (v30 >> 1);
LABEL_30:
  v33 = *&v15 > -1 && ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v15 - 1) < 0xFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 0x7FFFFFFF;
  v36 = -1;
  if (!v33)
  {
    goto LABEL_50;
  }

  if (v15 <= 0.0)
  {
    goto LABEL_50;
  }

  v37 = v29;
  if (v29 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_50;
  }

  v38 = v37 / 10.0 / (v15 / 3.6);
  if (v38 >= 0.0)
  {
    if (v38 < 4.50359963e15)
    {
      v39 = (v38 + v38) + 1;
      goto LABEL_48;
    }
  }

  else if (v38 > -4.50359963e15)
  {
    v39 = (v38 + v38) - 1 + (((v38 + v38) - 1) >> 63);
LABEL_48:
    v38 = (v39 >> 1);
  }

  v36 = v38;
  v35 = v38;
  v34 = v37;
LABEL_50:
  *a2 = v36;
  *(a2 + 4) = v35;
  *(a2 + 8) = v34;
  v40 = (*a3 - **a3);
  if (*v40 < 0x9Bu)
  {
    goto LABEL_68;
  }

  v41 = v40[77];
  if (!v41)
  {
    goto LABEL_68;
  }

  v42 = *(*a3 + v41);
  if ((v42 & 8) != 0)
  {
    *(a2 + 32) = vmulq_f64(*(a5 + 384), *(a2 + 32));
    v49 = *(a5 + 400);
    goto LABEL_69;
  }

  v43 = 1;
  if (*(a3 + 38))
  {
    v43 = 2;
  }

  if ((v42 & v43) == 0)
  {
LABEL_68:
    *(a2 + 32) = vmulq_f64(*(a5 + 288), *(a2 + 32));
    v49 = *(a5 + 304);
LABEL_69:
    *(a2 + 48) = v49 * *(a2 + 48);
    return;
  }

  if ((v42 & 0x400000) != 0)
  {
    v44 = 2;
  }

  else
  {
    v44 = (v42 >> 21) & 1;
  }

  v45 = sub_10A7E3C((a5 + 264), v44);
  v46 = v45[1].f64[0];
  if (v45->f64[0] == INFINITY || v45->f64[1] == INFINITY || v46 == INFINITY)
  {
    goto LABEL_67;
  }

  *(a2 + 32) = vmulq_f64(*v45, *(a2 + 32));
  *(a2 + 48) = v46 * *(a2 + 48);
  v50 = (*a3 - **a3);
  if (*v50 >= 0x2Fu && (v51 = v50[23]) != 0)
  {
    v52 = *(*a3 + v51);
  }

  else
  {
    v52 = 32;
  }

  v53 = sub_10A7E3C((a5 + 736), v52);
  v54 = *v53;
  if (*v53 == INFINITY)
  {
    goto LABEL_67;
  }

  if (v54.f64[1] == INFINITY)
  {
    goto LABEL_67;
  }

  v55 = *(v53 + 16);
  if (v55 == INFINITY)
  {
    goto LABEL_67;
  }

  *(a2 + 32) = vmulq_f64(v54, *(a2 + 32));
  *(a2 + 48) = v55 * *(a2 + 48);
  if ((*(a5 + 435) & 1) == 0 && (v56 = (*a3 - **a3), *v56 >= 0x2Fu) && (v57 = v56[23]) != 0 && (v58 = *(*a3 + v57) - 2, v58 < 0x29) && ((0x14109A04001uLL >> v58) & 1) != 0 || (*(a5 + 436) & 1) == 0 && (v59 = a3[1]) != 0 && (v60 = (v59 - *v59), *v60 >= 0x11u) && (v61 = v60[8]) != 0 && (*(v59 + v61) & 4) != 0)
  {
    v72 = 0;
    goto LABEL_101;
  }

  v62 = *a3;
  v63 = (*a3 - **a3);
  v64 = *v63;
  if (v64 < 0x9B)
  {
    v65 = (a5 + 216);
    if (v64 < 0x1B)
    {
LABEL_96:
      v67 = 0;
      goto LABEL_97;
    }
  }

  else
  {
    if (v63[77] && (*(v62 + v63[77] + 3) & 2) != 0)
    {
      goto LABEL_98;
    }

    v65 = (a5 + 216);
  }

  v66 = v63[13];
  if (!v66)
  {
    goto LABEL_96;
  }

  v67 = *(v62 + v66);
LABEL_97:
  v68 = sub_10A7E3C(v65, v67);
  *(a2 + 32) = vmulq_f64(*v68, *(a2 + 32));
  *(a2 + 48) = v68[1].f64[0] * *(a2 + 48);
LABEL_98:
  v69 = (sub_10B0DA0(*a1, a3) * 100.0 + 0.5);
  v70 = *(a5 + 240);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a5 + 248) - v70) >> 3) > v69)
  {
    v71 = (v70 + 24 * v69);
    *(a2 + 32) = vmulq_f64(*v71, *(a2 + 32));
    *(a2 + 48) = v71[1].f64[0] * *(a2 + 48);
  }

  v72 = 1;
LABEL_101:
  v73 = (a5 + 312);
  v74 = *a3;
  v75 = (*a3 - **a3);
  v76 = *v75;
  if (v76 < 0x9B)
  {
    if (v76 < 0x2F)
    {
LABEL_125:
      v85 = sub_314758(a3);
      v86 = *(a5 + 432) > (sub_3147AC(a3) + v85);
      if (!v72)
      {
        goto LABEL_137;
      }

      goto LABEL_126;
    }
  }

  else if (v75[77] && (*(v74 + v75[77] + 1) & 1) != 0)
  {
    v77 = *v73;
    if (v73->f64[0] == INFINITY)
    {
      goto LABEL_67;
    }

    if (v77.f64[1] == INFINITY)
    {
      goto LABEL_67;
    }

    v78 = *(a5 + 328);
    if (v78 == INFINITY)
    {
      goto LABEL_67;
    }

    *(a2 + 32) = vmulq_f64(v77, *(a2 + 32));
    *(a2 + 48) = v78 * *(a2 + 48);
  }

  v79 = v75[23];
  if (!v75[23])
  {
    goto LABEL_125;
  }

  if (!*(v74 + v79))
  {
    v80 = *(a5 + 336);
    if (v80.f64[0] == INFINITY)
    {
      goto LABEL_67;
    }

    if (v80.f64[1] == INFINITY)
    {
      goto LABEL_67;
    }

    v81 = *(a5 + 352);
    if (v81 == INFINITY)
    {
      goto LABEL_67;
    }

    *(a2 + 32) = vmulq_f64(v80, *(a2 + 32));
    *(a2 + 48) = v81 * *(a2 + 48);
  }

  if (*(v74 + v79) == 22 && (v76 < 0x9B || (v82 = v75[77]) == 0 || (*(v74 + v82 + 3) & 2) == 0 || *(a5 + 434) == 1))
  {
    v83 = *(a5 + 360);
    if (v83.f64[0] == INFINITY)
    {
      goto LABEL_67;
    }

    if (v83.f64[1] == INFINITY)
    {
      goto LABEL_67;
    }

    v84 = *(a5 + 376);
    if (v84 == INFINITY)
    {
      goto LABEL_67;
    }

    *(a2 + 32) = vmulq_f64(v83, *(a2 + 32));
    *(a2 + 48) = v84 * *(a2 + 48);
  }

  if (*(v74 + v79) == 32)
  {
    goto LABEL_125;
  }

  v86 = 0;
  if (!v72)
  {
    goto LABEL_137;
  }

LABEL_126:
  if (!sub_312DF0(a3))
  {
    goto LABEL_137;
  }

  v87 = (*a3 - **a3);
  if (*v87 < 0x9Bu || (v88 = v87[77]) == 0)
  {
    if (!v86)
    {
      goto LABEL_137;
    }

LABEL_132:
    v89 = *(a5 + 408);
    if (v89.f64[0] != INFINITY && v89.f64[1] != INFINITY)
    {
      v90 = *(a5 + 424);
      if (v90 != INFINITY)
      {
        *(a2 + 32) = vmulq_f64(v89, *(a2 + 32));
        *(a2 + 48) = v90 * *(a2 + 48);
        goto LABEL_137;
      }
    }

LABEL_67:
    *(a2 + 56) = 0;
    return;
  }

  if ((v86 | (*(*a3 + v88 + 2) >> 7)))
  {
    goto LABEL_132;
  }

LABEL_137:
  if (*(a5 + 437) == 1)
  {
    v91 = sub_314758(a3);
    if (v91)
    {
      *(a2 + 32) = pow(1.0 / v91, *(a5 + 440)) * *(a2 + 32);
    }
  }

  if (*(a5 + 448) == 1)
  {
    v92 = sub_311A24(*a3, *(a3 + 38));
    if (v92 <= 1)
    {
      v93 = 1;
    }

    else
    {
      v93 = v92;
    }

    *(a2 + 32) = *(a2 + 32) * pow(1.0 / v93, *(a5 + 456));
  }

  if (*(a5 + 464) == 1)
  {
    v94 = a3[1];
    v95 = (v94 - *v94);
    v96 = 0.0;
    if (*v95 >= 0x13u)
    {
      v97 = v95[9];
      if (v97)
      {
        LOWORD(v96) = *(v94 + v97);
        v96 = *&v96;
      }
    }

    *(a2 + 32) = *(a2 + 32) * pow(fmax(v96, 1.0), *(a5 + 472));
  }
}

void sub_10B17B4(uint64_t a1, int **a2, uint64_t a3, unsigned int *a4, int a5)
{
  if (*(a3 + 205) != 1 || !sub_38EC(a4))
  {
    v13 = sub_3F80(a4);
    sub_10B0840(a1, a2, a3, v13, a5);
    return;
  }

  v10 = *a2;
  v11 = (*a2 - **a2);
  v12 = *v11;
  if (*(a2 + 38))
  {
    if (v12 < 0x9B || !v11[77] || (*(v10 + v11[77]) & 0xALL) == 0)
    {
      return;
    }
  }

  else if (v12 < 0x9B || !v11[77] || (*(v10 + v11[77]) & 9) == 0)
  {
    return;
  }

  if (*(a3 + 152) != 1 || (v14 = v11[23]) == 0 || ((v15 = *(v10 + v14), v16 = v15 > 0x2D, v17 = (1 << v15) & 0x208040000000, !v16) ? (v18 = v17 == 0) : (v18 = 1), v18))
  {
    v19 = sub_4C1A94(*a1, a2);
    v20 = *&v19 <= -1 || ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v21 = v20 && (*&v19 - 1) >= 0xFFFFFFFFFFFFFLL;
    v22 = !v21 || (*&v19 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if (v22 && v19 > 0.0)
    {
      if (a5)
      {
        if (*(a3 + 206))
        {
          v23 = *(a1 + 8);
          v24 = a2[4];
          v25 = sub_40A8(a4);
          v26 = sub_41E8(a4);
          v64 = 0;
          v65 = 0;
          v27 = sub_3EC34C(v23, v24 & 0xFFFFFFFFFFFFFFLL);
          if (v27)
          {
            v28 = sub_3EC480(v23, v27, 0, &v64);
            if (v28)
            {
              if (*v28 > 1u)
              {
                v29 = v28 + 4;
                v30 = *v28;
                do
                {
                  v31 = &v29[(2 * v30) & 0x3FFFFFFFCLL];
                  v33 = *v31;
                  v32 = (v31 + 4);
                  v34 = v30 >> 1;
                  v30 += ~(v30 >> 1);
                  if ((1440 * (v25 + 6 - 7 * ((9363 * (v25 + 6)) >> 16))) + v26 < v33)
                  {
                    v30 = v34;
                  }

                  else
                  {
                    v29 = v32;
                  }
                }

                while (v30);
              }
            }
          }
        }
      }

      v35 = sub_3F80(a4);
      if (a5 == 2 && v35 != 0x7FFFFFFF && *(a3 + 176) == 1)
      {
        v36 = *(a1 + 64);
        if (v36 != 0x7FFFFFFF)
        {
          v37 = *(a3 + 172);
          v38 = v37 < 0 ? -5 : 5;
          if ((v37 / -10 + v36 + (((-103 * (v38 + v37 % 10)) >> 15) & 1) + ((-103 * (v38 + v37 % 10)) >> 10)) <= v35)
          {
            v39 = *(a3 + 168);
            v40 = v39 < 0 ? -5 : 5;
            if ((v39 / 10 + v36 + (((103 * (v40 + v39 % 10)) >> 15) & 1) + ((103 * (v40 + v39 % 10)) >> 10)) >= v35)
            {
              v41 = *(a1 + 16);
              v42 = *(a1 + 24);
              v43 = a2[4];
              v44 = sub_31D994(v42 + 16, v43, 1);
              if (v44 && (v45 = &v44[-*v44], *v45 >= 0xBu) && *(v45 + 5) && (v46 = &v44[*(v45 + 5) + *&v44[*(v45 + 5)]], *v46 > ((v43 & 0xFFFFFFFFFFFFFFLL) >> 32)) && (v47 = &v46[8 * ((v43 & 0xFFFFFFFFFFFFFFLL) >> 32)], v49 = *(v47 + 1), v48 = (v47 + 4), v49))
              {
                v50 = sub_33515C(v42, v43 & 0xFFFFFFFFFFFFFFLL, v48);
              }

              else
              {
                v50 = v43 & 0xFFFFFFFFFFFFLL | (((v43 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
              }

              v64 = 0;
              v65 = 0;
              v51 = sub_2BC6DC(v41, v50, &v64);
              if ((*&v51 > -1 && ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v51 - 1) < 0xFFFFFFFFFFFFFLL || (*&v51 & 0x7FFFFFFFFFFFFFFFLL) == 0) && v51 > 0.0)
              {
                v55 = sub_3F80(a4) - *(a1 + 64);
                v56 = *(a3 + 208);
                if (10 * v55 >= v56)
                {
                  v57 = *(a3 + 168);
                  if (10 * v55 < v57)
                  {
                    if (v56 < 0)
                    {
                      v58 = -5;
                    }

                    else
                    {
                      v58 = 5;
                    }

                    v59 = v56 / 10 + (((103 * (v58 + v56 % 10)) >> 15) & 1) + ((103 * (v58 + v56 % 10)) >> 10);
                    v60 = v57 / 10;
                    v61 = v57 % 10;
                    if (v57 < 0)
                    {
                      v62 = -5;
                    }

                    else
                    {
                      v62 = 5;
                    }

                    v63 = (v60 - v59 + (((103 * (v62 + v61)) >> 15) & 1) + ((103 * (v62 + v61)) >> 10));
                    exp((v55 - v59 + v63 * -0.5) * (2.0 / v63 * -4.59511985));
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

void sub_10B1E88(uint64_t a1, uint64_t a2, int **a3, unsigned int a4, uint64_t a5, signed int *a6, int a7)
{
  sub_10B1FD0(a1, a2, a3, a5, *a6, a7);
  if (*(a2 + 56) == 1)
  {
    sub_10B46C4(a1, a2, a3, a4, a5, a6, a7);
    if (*(a2 + 56) == 1)
    {
      v15 = sub_F8634C(a2, (a2 + 32), v14);
      v16 = *(a2 + 16);
      if (!(v16 + v15))
      {
        v19 = 1;
        v20 = 0;
        v18 = 21;
        strcpy(__p, "ZERO_COST_TIE_BREAKER");
        *(a2 + 16) = v16 + 1;
        sub_10AEBD4((a2 + 64), __p);
        if (v18 < 0)
        {
          operator delete(*__p);
        }
      }
    }
  }
}

void sub_10B1FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10B1FD0(uint64_t a1, int32x2_t *a2, int **a3, uint64_t a4, signed int a5, int a6)
{
  v11 = a1;
  if (a6 == 2 && *(a4 + 177) == 1)
  {
    if (*(a4 + 178) != 1 || a5 != 0x7FFFFFFF && (v12 = *(a1 + 64), v12 != 0x7FFFFFFF) && ((v13 = *(a4 + 172), v13 < 0) ? (v14 = -5) : (v14 = 5), (v13 / -10 + v12 + (((-103 * (v14 + v13 % 10)) >> 15) & 1) + ((-103 * (v14 + v13 % 10)) >> 10)) <= a5 && ((v15 = *(a4 + 168), v15 < 0) ? (v16 = -5) : (v16 = 5), (v15 / 10 + v12 + (((103 * (v16 + v15 % 10)) >> 15) & 1) + ((103 * (v16 + v15 % 10)) >> 10)) >= a5)))
    {
      a1 = sub_10B7C14(a1, a3[4] & 0xFFFFFFFFFFFFFFLL, a3[9] & 0xFFFFFFFFFFFFFFLL);
      if (a1)
      {
        operator new();
      }
    }
  }

  if (*(a3 + 38) != *(a3 + 78) && *(a3 + 8) == *(a3 + 18) && *(a3 + 18) == *(a3 + 38))
  {
    v17 = (*a3 - **a3);
    v18 = *v17;
    if (*(a3 + 38))
    {
      if (v18 < 0x9B)
      {
        goto LABEL_28;
      }

      v19 = v17[77];
      if (!v17[77])
      {
        goto LABEL_28;
      }

      v20 = 10;
    }

    else
    {
      if (v18 < 0x9B)
      {
        goto LABEL_28;
      }

      v19 = v17[77];
      if (!v17[77])
      {
        goto LABEL_28;
      }

      v20 = 9;
    }

    if ((*(*a3 + v19) & v20) != 0)
    {
      operator new();
    }
  }

LABEL_28:
  if ((a3[11] & 0x10) != 0 && !*(a3 + 40))
  {
    operator new();
  }

  v21 = a3 + 5;
  v22 = (*a3 - **a3);
  if (*v22 >= 0xDu && (v23 = v22[6]) != 0)
  {
    v24 = *(*a3 + v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = *v21;
  v26 = **v21;
  v27 = -v26;
  v28 = (*v21 - v26);
  if (*v28 < 0xDu)
  {
    if (!v24)
    {
      goto LABEL_39;
    }

LABEL_42:
    v32 = sub_4B6E88(*(v11 + 56), a3, a3 + 5);
    v225 = *sub_10AD680((a4 + 712), v32);
    if (v225 == -1 || ((v33 = *(&v225 + 1), DWORD1(v225) != 0x7FFFFFFF) ? (v34 = *(&v225 + 1) == 0x7FFFFFFFFFFFFFFFLL) : (v34 = 1), v34))
    {
      operator new();
    }

    v227 = 20;
    strcpy(__p, "BORDER_CROSSING_COST");
    a2[2] = vadd_s32(*&v225, a2[2]);
    *&a2[3] += v33;
    a1 = sub_10AEBD4(&a2[8], __p);
    if (v227 < 0)
    {
      operator delete(*__p);
    }

    v25 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

  v29 = v28[6];
  if (v29)
  {
    v29 = *&v25[v29];
  }

  if (v29 != v24)
  {
    goto LABEL_42;
  }

LABEL_39:
  v30 = &v25[v27];
  v31 = *v30;
  if (v31 < 0x2F)
  {
    goto LABEL_56;
  }

LABEL_50:
  if (v30[23])
  {
    v35 = v25[v30[23]];
    v36 = v35 > 0x2D;
    v37 = 0x208040000000uLL >> v35;
    if (v36)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v39 = *a3;
    v40 = (*a3 - **a3);
    v41 = *v40;
    if (v41 < 0x2F)
    {
      goto LABEL_69;
    }

LABEL_57:
    if (v40[23])
    {
      v42 = *(v39 + v40[23]);
      v36 = v42 > 0x2D;
      v43 = (1 << v42) & 0x208040000000;
      v44 = v36 || v43 == 0;
      if (!v44 && v31 >= 0x2F && v30[23])
      {
        v45 = v25[v30[23]];
        v36 = v45 > 0x2D;
        v46 = (1 << v45) & 0x208040000000;
        if (!v36 && v46 != 0)
        {
          goto LABEL_130;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_56:
  v38 = 0;
  v39 = *a3;
  v40 = (*a3 - **a3);
  v41 = *v40;
  if (v41 >= 0x2F)
  {
    goto LABEL_57;
  }

LABEL_69:
  if ((a3[11] & 8) == 0)
  {
    if ((*(a4 + 577) & 1) != 0 || v41 >= 0x2F && (v48 = v40[23]) != 0 && ((v49 = *(v39 + v48), v36 = v49 > 0x36, v50 = (1 << v49) & 0x44000000000008, !v36) ? (v51 = v50 == 0) : (v51 = 1), !v51) || v31 >= 0x2F && (v52 = v30[23]) != 0 && ((v53 = v25[v52], v36 = v53 > 0x36, v54 = (1 << v53) & 0x44000000000008, !v36) ? (v55 = v54 == 0) : (v55 = 1), !v55) || (*(a3 + 42) & 0x4000) == 0)
    {
      if (*(a4 + 578) == 1)
      {
        v56 = *(a3 + 43);
        if (*(a3 + 43))
        {
          v57 = *(a3 + 43);
          if ((*(a4 + 579) & 1) == 0)
          {
            goto LABEL_104;
          }

          v58 = sub_4345A0(*v11, a3[4] & 0xFFFFFFFFFFFFFFLL);
          v59 = sub_4345A0(*v11, a3[9] & 0xFFFFFFFFFFFFFFLL);
          if (v59 <= v58)
          {
            v59 = v58;
          }

          if (!v59)
          {
            v57 = 1;
            goto LABEL_104;
          }

          v60 = v59;
          v61 = *(a4 + 584) * v56;
          if (v61 >= 0.0)
          {
            if (v61 >= 4.50359963e15)
            {
              goto LABEL_101;
            }

            v62 = (v61 + v61) + 1;
          }

          else
          {
            if (v61 <= -4.50359963e15)
            {
              goto LABEL_101;
            }

            v62 = (v61 + v61) - 1 + (((v61 + v61) - 1) >> 63);
          }

          v61 = (v62 >> 1);
LABEL_101:
          if ((v61 / v60) <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = (v61 / v60);
          }

LABEL_104:
          v65 = 3;
          if (!*(a3 + 38))
          {
            v65 = 2;
          }

          v66 = a3[v65];
          if (v66)
          {
            v67 = (v66 - *v66);
            if (*v67 < 7u || (v68 = v67[3]) == 0 || (LOWORD(v66) = *(v66 + v68), v66 == 0xFFFF))
            {
              LOWORD(v66) = 0;
            }
          }

          v69 = 3;
          if (!*(a3 + 78))
          {
            v69 = 2;
          }

          v70 = v21[v69];
          if (v70)
          {
            v71 = (v70 - *v70);
            if (*v71 < 7u || (v72 = v71[3]) == 0 || (LOWORD(v70) = *(v70 + v72), v70 == 0xFFFF))
            {
              LOWORD(v70) = 0;
            }
          }

          LODWORD(v66) = v66;
          if (v66 >= v70)
          {
            LODWORD(v66) = v70;
          }

          if (v66 <= 1)
          {
            LODWORD(v66) = 1;
          }

          v224 = v56 / v66;
          *&v225 = sub_10ADE24(&v224, (a4 + 592));
          *(&v225 + 1) = v73;
          v74 = __clz(v57);
          v222 = sub_108CF40(&v225, ((32 - v74) - ((1 << -__clz(v57 - 1)) - v57) / (0x80000000 >> v74)) * *(a4 + 616), *(a4 + 616));
          v223 = v75;
          v77 = (*a3 - **a3);
          if (*v77 >= 0x9Bu)
          {
            v78 = v77[77];
            if (v78)
            {
              if ((*(*a3 + v78 + 3) & 2) != 0 && (*(a3 + 42) & 0x2000) == 0)
              {
                v222 = sub_F8634C(&v222, (a4 + 624), v76);
                v223 = v79;
                v80 = sub_10B8164(v222, a3);
                v81 = sub_10AD680((a4 + 648), v80);
                v222 = vadd_s32(*v81, v222);
                v223 += *&v81[1];
              }
            }
          }

          operator new();
        }
      }

      else
      {
        v63 = sub_10B8164(a1, a3);
        v64 = sub_10AD680((a4 + 552), v63);
        v227 = 10;
        strcpy(__p, "DELAY_COST");
        a2[2] = vadd_s32(*v64, a2[2]);
        *&a2[3] += *&v64[1];
        sub_10AEBD4(&a2[8], __p);
        if (v227 < 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

LABEL_130:
  v82 = *a3;
  v83 = (*a3 - **a3);
  v84 = *v83;
  if (*(a3 + 38))
  {
    if (v84 < 0x9B)
    {
      goto LABEL_143;
    }

    if (!v83[77])
    {
      goto LABEL_143;
    }

    if ((*(v82 + v83[77]) & 2) == 0)
    {
      goto LABEL_143;
    }

    v85 = v83[39];
    if (!v85 || (*(v82 + v85) & 8) == 0)
    {
      goto LABEL_143;
    }

LABEL_142:
    operator new();
  }

  if (v84 >= 0x9B)
  {
    if (v83[77])
    {
      if (*(v82 + v83[77]))
      {
        v86 = v83[39];
        if (v86)
        {
          if ((*(v82 + v86) & 0x80) != 0)
          {
            goto LABEL_142;
          }
        }
      }
    }
  }

LABEL_143:
  v87 = a3[5];
  v88 = (v87 - *v87);
  v89 = *v88;
  if (*(a3 + 78))
  {
    if (v89 < 0x9B)
    {
      goto LABEL_156;
    }

    if (!v88[77])
    {
      goto LABEL_156;
    }

    if ((*(v87 + v88[77]) & 2) == 0)
    {
      goto LABEL_156;
    }

    v90 = v88[39];
    if (!v90 || (*(v87 + v90) & 0x20) == 0)
    {
      goto LABEL_156;
    }

LABEL_155:
    operator new();
  }

  if (v89 >= 0x9B)
  {
    if (v88[77])
    {
      if (*(v87 + v88[77]))
      {
        v91 = v88[39];
        if (v91)
        {
          if ((*(v87 + v91) & 2) != 0)
          {
            goto LABEL_155;
          }
        }
      }
    }
  }

LABEL_156:
  v92 = *a3;
  v93 = (*a3 - **a3);
  v94 = *v93;
  if (*(a3 + 38))
  {
    if (v94 < 0x9B)
    {
      goto LABEL_172;
    }

    if (!v93[77])
    {
      goto LABEL_172;
    }

    if ((*(v92 + v93[77]) & 2) == 0)
    {
      goto LABEL_172;
    }

    v95 = v93[39];
    if (!v95 || (*(v92 + v95) & 4) == 0)
    {
      goto LABEL_172;
    }

LABEL_168:
    if (*(a4 + 792) != -1 && *(a4 + 796) != 0x7FFFFFFF && *(a4 + 800) != 0x7FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    operator new();
  }

  if (v94 >= 0x9B)
  {
    if (v93[77])
    {
      if (*(v92 + v93[77]))
      {
        v96 = v93[39];
        if (v96)
        {
          if ((*(v92 + v96) & 0x40) != 0)
          {
            goto LABEL_168;
          }
        }
      }
    }
  }

LABEL_172:
  v97 = a3[5];
  v98 = (v97 - *v97);
  v99 = *v98;
  if (*(a3 + 78))
  {
    if (v99 < 0x9B)
    {
      goto LABEL_188;
    }

    if (!v98[77])
    {
      goto LABEL_188;
    }

    if ((*(v97 + v98[77]) & 2) == 0)
    {
      goto LABEL_188;
    }

    v100 = v98[39];
    if (!v100 || (*(v97 + v100) & 0x10) == 0)
    {
      goto LABEL_188;
    }

LABEL_184:
    if (*(a4 + 792) != -1 && *(a4 + 796) != 0x7FFFFFFF && *(a4 + 800) != 0x7FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    operator new();
  }

  if (v99 >= 0x9B)
  {
    if (v98[77])
    {
      if (*(v97 + v98[77]))
      {
        v101 = v98[39];
        if (v101)
        {
          if (*(v97 + v101))
          {
            goto LABEL_184;
          }
        }
      }
    }
  }

LABEL_188:
  if ((a3[11] & 4) != 0 || (v102 = *a3, v103 = (*a3 - **a3), v104 = *v103, v104 >= 0x2F) && v103[23] && (v105 = *(v102 + v103[23]), v105 <= 0x36) && ((1 << v105) & 0x44000000000008) != 0 && (v106 = (*v21 - **v21), *v106 >= 0x2Fu) && (v107 = v106[23]) != 0 && (v108 = *(*v21 + v107), v108 <= 0x36) && ((1 << v108) & 0x44000000000008) != 0)
  {
LABEL_228:
    v128 = *a3;
    v129 = **a3;
    v130 = (*a3 - v129);
    if (*v130 >= 0x1Bu)
    {
      goto LABEL_229;
    }

LABEL_232:
    LODWORD(v131) = 0;
    goto LABEL_233;
  }

  v109 = a3[1];
  v110 = (v109 - *v109);
  v111 = *v110;
  if (*(a3 + 38))
  {
    if (v111 < 5)
    {
      goto LABEL_207;
    }

    v112 = v110[2];
    if (!v112)
    {
      goto LABEL_207;
    }
  }

  else if (v111 < 9 || (v112 = v110[4]) == 0)
  {
LABEL_207:
    v113 = 0;
    v114 = a3[6];
    v115 = (v114 - *v114);
    v116 = *v115;
    if (*(a3 + 78))
    {
      goto LABEL_208;
    }

LABEL_204:
    if (v116 >= 5)
    {
      v117 = v115[2];
      if (v117)
      {
        goto LABEL_210;
      }
    }

    goto LABEL_211;
  }

  v113 = *(v109 + v112);
  v114 = a3[6];
  v115 = (v114 - *v114);
  v116 = *v115;
  if (!*(a3 + 78))
  {
    goto LABEL_204;
  }

LABEL_208:
  if (v116 >= 9)
  {
    v117 = v115[4];
    if (v117)
    {
LABEL_210:
      v118 = *(v114 + v117);
      goto LABEL_212;
    }
  }

LABEL_211:
  v118 = 0;
LABEL_212:
  v119 = v113 + 18000;
  v120 = (v113 + 18000) >> 5;
  v121 = v113 - 18000;
  if (v120 < 0x465)
  {
    v121 = v119;
  }

  v122 = v118 - v121;
  if (v122 > 18000)
  {
    v122 -= 36000;
  }

  if (v122 < -17999)
  {
    v122 += 36000;
  }

  v123 = v122 / 100.0;
  if (v38)
  {
    v124 = sub_10AD680((a4 + 528), vcvtad_u64_f64(fabs(v123)));
    v227 = 21;
    strcpy(__p, "PARKING_LOT_TURN_COST");
    a2[2] = vadd_s32(*v124, a2[2]);
    *&a2[3] += *&v124[1];
    sub_10AEBD4(&a2[8], __p);
    goto LABEL_227;
  }

  if (v104 < 0x9B || (v125 = v103[77]) == 0)
  {
    if (v123 >= 0.0)
    {
      goto LABEL_223;
    }

LABEL_225:
    v126 = 504;
    goto LABEL_226;
  }

  if (((v123 < 0.0) ^ (*(v102 + v125 + 1) >> 7)))
  {
    goto LABEL_225;
  }

LABEL_223:
  v126 = 480;
LABEL_226:
  v127 = sub_10AD680((a4 + v126), fabs(v123));
  v227 = 21;
  strcpy(__p, "ANGLE_BASED_TURN_COST");
  a2[2] = vadd_s32(*v127, a2[2]);
  *&a2[3] += *&v127[1];
  sub_10AEBD4(&a2[8], __p);
LABEL_227:
  if ((v227 & 0x80000000) == 0)
  {
    goto LABEL_228;
  }

  operator delete(*__p);
  v128 = *a3;
  v129 = **a3;
  v130 = (*a3 - v129);
  if (*v130 < 0x1Bu)
  {
    goto LABEL_232;
  }

LABEL_229:
  v131 = v130[13];
  if (v131)
  {
    LODWORD(v131) = *(v128 + v131);
  }

LABEL_233:
  v132 = -v129;
  v133 = (*v21 - **v21);
  if (*v133 >= 0x1Bu)
  {
    v134 = v133[13];
    if (v134)
    {
      if (v131 != *(*v21 + v134))
      {
        goto LABEL_236;
      }

LABEL_247:
      v135 = *(a3 + 38);
      v136 = (v128 + v132);
      v137 = *(v128 + v132) >= 0x4Du;
      if (!*(a3 + 38))
      {
        goto LABEL_239;
      }

      goto LABEL_248;
    }
  }

  if (!v131)
  {
    goto LABEL_247;
  }

LABEL_236:
  v227 = 18;
  strcpy(__p, "FRC_CHANGE_PENALTY");
  a2[2] = vadd_s32(*(a4 + 808), a2[2]);
  *&a2[3] += *(a4 + 816);
  sub_10AEBD4(&a2[8], __p);
  if (v227 < 0)
  {
    operator delete(*__p);
  }

  v128 = *a3;
  v132 = -**a3;
  v135 = *(a3 + 38);
  v136 = (*a3 - **a3);
  v137 = *v136 >= 0x4Du;
  if (!*(a3 + 38))
  {
LABEL_239:
    if (!v137 || !v136[38])
    {
      if (*v136 <= 0x4Cu)
      {
        goto LABEL_265;
      }

      goto LABEL_262;
    }

    if ((*(v128 + v136[38]) & 4) == 0)
    {
      goto LABEL_243;
    }

LABEL_252:
    v227 = 21;
    strcpy(__p, "TRAFFIC_LIGHT_PENALTY");
    a2[2] = vadd_s32(*(a4 + 968), a2[2]);
    *&a2[3] += *(a4 + 976);
    sub_10AEBD4(&a2[8], __p);
    if (v227 < 0)
    {
      operator delete(*__p);
    }

    v128 = *a3;
    v136 = (*a3 - **a3);
    v138 = *v136 >= 0x4Du;
    if (*(a3 + 38))
    {
LABEL_244:
      if (!v138)
      {
        goto LABEL_265;
      }

LABEL_258:
      if (!v136[38] || (*(v128 + v136[38]) & 2) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_264;
    }

    goto LABEL_255;
  }

LABEL_248:
  if (!v137 || !v136[38])
  {
    if (*v136 <= 0x4Cu)
    {
      goto LABEL_265;
    }

    goto LABEL_258;
  }

  if ((*(v128 + v136[38]) & 8) != 0)
  {
    goto LABEL_252;
  }

LABEL_243:
  v136 = (v128 + v132);
  v138 = *(v128 + v132) >= 0x4Du;
  if (v135)
  {
    goto LABEL_244;
  }

LABEL_255:
  if (!v138)
  {
    goto LABEL_265;
  }

LABEL_262:
  if (!v136[38] || (*(v128 + v136[38]) & 1) == 0)
  {
    goto LABEL_265;
  }

LABEL_264:
  v227 = 17;
  strcpy(__p, "STOP_SIGN_PENALTY");
  a2[2] = vadd_s32(*(a4 + 984), a2[2]);
  *&a2[3] += *(a4 + 992);
  sub_10AEBD4(&a2[8], __p);
  if (v227 < 0)
  {
    operator delete(*__p);
    if (a6 != 2)
    {
      goto LABEL_266;
    }

    goto LABEL_268;
  }

LABEL_265:
  if (a6 != 2)
  {
LABEL_266:
    *(v11 + 48) = 0;
    v139 = (v11 + 48);
    goto LABEL_271;
  }

LABEL_268:
  if ((*(a4 + 176) & 1) != 0 || (*(a4 + 177) & 1) != 0 || *(a4 + 1144) || *(a4 + 1148))
  {
    *(v11 + 48) = 1;
    v139 = (v11 + 48);
  }

  else
  {
    v150 = *(a4 + 1152);
    *(v11 + 48) = v150 != 0;
    v139 = (v11 + 48);
    if (!v150)
    {
      goto LABEL_271;
    }
  }

  v140 = sub_2BC10C(*(v11 + 40), a3[4] & 0xFFFFFFFFFFFFFFLL, 0);
  if ((v141 & 1) == 0)
  {
LABEL_271:
    v140 = sub_30F8F8(v11 + 40, a3);
  }

  v142 = v140;
  if (*v139 != 1 || (v143 = sub_2BC10C(*(v11 + 40), a3[9] & 0xFFFFFFFFFFFFFFLL, 0), (v144 & 1) == 0))
  {
    v143 = sub_30F8F8(v11 + 40, a3 + 5);
  }

  if (v142 == v143)
  {
    goto LABEL_280;
  }

  v145 = sub_F925C4(a4 + 1312, v142, v143, a3[11] & 1, (*(a3 + 88) >> 1) & 1);
  v225 = *sub_10AD680((a4 + 688), v145);
  if (v225 == -1 || DWORD1(v225) == 0x7FFFFFFF || (v146 = *(&v225 + 1), *(&v225 + 1) == 0x7FFFFFFFFFFFFFFFLL))
  {
    operator new();
  }

  v227 = 20;
  strcpy(__p, "ZONE_TRANSITION_COST");
  a2[2] = vadd_s32(*&v225, a2[2]);
  *&a2[3] += v146;
  sub_10AEBD4(&a2[8], __p);
  if (v227 < 0)
  {
    operator delete(*__p);
    v147 = *a3;
    v148 = (*a3 - **a3);
    if (*v148 >= 0x9Bu)
    {
      goto LABEL_281;
    }
  }

  else
  {
LABEL_280:
    v147 = *a3;
    v148 = (*a3 - **a3);
    if (*v148 >= 0x9Bu)
    {
LABEL_281:
      v149 = v148[77];
      if (v149 && (*(v147 + v149) & 8) != 0)
      {
        goto LABEL_296;
      }
    }
  }

  v151 = (*v21 - **v21);
  if (*v151 >= 0x9Bu)
  {
    v152 = v151[77];
    if (v152)
    {
      if ((*(*v21 + v152) & 8) != 0)
      {
        v227 = 19;
        strcpy(__p, "FERRY_ENTRY_PENALTY");
        a2[2] = vadd_s32(*(a4 + 920), a2[2]);
        *&a2[3] += *(a4 + 928);
        sub_10AEBD4(&a2[8], __p);
        if (v227 < 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

LABEL_296:
  v153 = (*v21 - **v21);
  if (*v153 >= 0x2Fu)
  {
    v154 = v153[23];
    if (v154)
    {
      if (*(*v21 + v154) == 21)
      {
        v155 = (*a3 - **a3);
        if (*v155 < 0x2Fu || (v156 = v155[23]) == 0 || *(*a3 + v156) != 21)
        {
          v227 = 18;
          strcpy(__p, "FORD_ENTRY_PENALTY");
          a2[2] = vadd_s32(*(a4 + 936), a2[2]);
          *&a2[3] += *(a4 + 944);
          sub_10AEBD4(&a2[8], __p);
          if (v227 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  v157 = *a3;
  v158 = **a3;
  v159 = -v158;
  v160 = (*a3 - v158);
  if ((*v160 < 0x2Fu || (v161 = v160[23]) == 0 || *(v157 + v161)) && (v162 = (*v21 - **v21), *v162 >= 0x2Fu) && (v163 = v162[23]) != 0 && !*(*v21 + v163))
  {
    v227 = 21;
    strcpy(__p, "HIGHWAY_ENTRY_PENALTY");
    a2[2] = vadd_s32(*(a4 + 856), a2[2]);
    *&a2[3] += *(a4 + 864);
    sub_10AEBD4(&a2[8], __p);
    if (v227 < 0)
    {
      operator delete(*__p);
    }

    v157 = *a3;
    v164 = (*a3 - **a3);
    if (*v164 >= 0x9Bu)
    {
LABEL_311:
      v165 = v164[77];
      if (v165 && (*(v157 + v165 + 1) & 1) != 0)
      {
        goto LABEL_322;
      }
    }
  }

  else
  {
    v164 = (v157 + v159);
    if (*v164 >= 0x9Bu)
    {
      goto LABEL_311;
    }
  }

  v166 = (*v21 - **v21);
  if (*v166 >= 0x9Bu)
  {
    v167 = v166[77];
    if (v167)
    {
      if (*(*v21 + v167 + 1))
      {
        v227 = 18;
        strcpy(__p, "TOLL_ENTRY_PENALTY");
        a2[2] = vadd_s32(*(a4 + 824), a2[2]);
        *&a2[3] += *(a4 + 832);
        sub_10AEBD4(&a2[8], __p);
        if (v227 < 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

LABEL_322:
  v168 = a3[6];
  v169 = (v168 - *v168);
  if (*v169 >= 0x11u)
  {
    v170 = v169[8];
    if (v170)
    {
      if ((*(v168 + v170) & 0x10) != 0)
      {
        v171 = a3[1];
        v172 = (v171 - *v171);
        if (*v172 < 0x11u || (v173 = v172[8]) == 0 || (*(v171 + v173) & 0x10) == 0)
        {
          operator new();
        }
      }
    }
  }

  if (sub_10B8408(a3, *(a4 + 34)))
  {
    operator new();
  }

  v174 = *a3;
  v175 = **a3;
  v176 = -v175;
  v177 = (*a3 - v175);
  if (*v177 < 0x9Bu || (v178 = v177[77]) == 0 || (*(v174 + v178 + 1) & 0x20) == 0)
  {
    v179 = (*v21 - **v21);
    if (*v179 >= 0x9Bu)
    {
      v180 = v179[77];
      if (v180)
      {
        if ((*(*v21 + v180 + 1) & 0x20) != 0)
        {
          operator new();
        }
      }
    }
  }

  v181 = (v174 + v176);
  if (*v181 < 0x2Fu || (v182 = v181[23]) == 0 || *(v174 + v182) != 28)
  {
    v183 = (*v21 - **v21);
    if (*v183 >= 0x2Fu)
    {
      v184 = v183[23];
      if (v184)
      {
        if (*(*v21 + v184) == 28)
        {
          operator new();
        }
      }
    }
  }

  v185 = a3[6];
  v186 = (v185 - *v185);
  if (*v186 >= 0x11u)
  {
    v187 = v186[8];
    if (v187)
    {
      if ((*(v185 + v187) & 0x20) != 0)
      {
        v188 = a3[1];
        v189 = (v188 - *v188);
        if (*v189 < 0x11u || (v190 = v189[8]) == 0 || (*(v188 + v190) & 0x20) == 0)
        {
          operator new();
        }
      }
    }
  }

  if ((*(a3 + 42) & 0x400) != 0)
  {
    operator new();
  }

  if ((*(a4 + 577) & 1) != 0 || (v191 = (*a3 - **a3), *v191 >= 0x2Fu) && (v192 = v191[23]) != 0 && (v193 = *(*a3 + v192), v193 <= 0x36) && ((1 << v193) & 0x44000000000008) != 0 || (v194 = (*v21 - **v21), *v194 >= 0x2Fu) && (v195 = v194[23]) != 0 && (v196 = *(*v21 + v195), v196 <= 0x36) && ((1 << v196) & 0x44000000000008) != 0 || (*(a3 + 42) & 0x4000) == 0)
  {
    if (sub_F71E38(a3))
    {
      operator new();
    }

    if (sub_F71F38(a3))
    {
      operator new();
    }
  }

  if (*(a4 + 1112) || *(a4 + 1116) || *(a4 + 1120))
  {
    if (a6 != 2)
    {
      goto LABEL_402;
    }
  }

  else
  {
    if (*(a4 + 1128))
    {
      v197 = 0;
      if (a6 != 2)
      {
        goto LABEL_402;
      }
    }

    else
    {
      v197 = *(a4 + 1136) == 0;
      if (a6 != 2)
      {
        goto LABEL_402;
      }
    }

    if (v197)
    {
      goto LABEL_402;
    }
  }

  LOBYTE(v225) = 0;
  v198 = *(v11 + 16);
  if (*(v11 + 68))
  {
    v199 = 0;
  }

  else
  {
    v199 = *(v198 + 37);
  }

  sub_10B8B8C(v198, a3[4] & 0xFFFFFFFFFFFFFFLL, v199, __p);
  if (*__p == *&__p[8])
  {
    v200 = 1;
    if (!*__p)
    {
      goto LABEL_385;
    }
  }

  else
  {
    v200 = ***__p == 0;
  }

  *&__p[8] = *__p;
  operator delete(*__p);
LABEL_385:
  LOBYTE(v225) = 0;
  v201 = *(v11 + 16);
  if (*(v11 + 68))
  {
    v202 = 0;
  }

  else
  {
    v202 = *(v201 + 37);
  }

  sub_10B8B8C(v201, a3[9] & 0xFFFFFFFFFFFFFFLL, v202, __p);
  if (*__p == *&__p[8])
  {
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  else
  {
    v203 = ***__p + 464 * *(*__p + 8);
    *&__p[8] = *__p;
    operator delete(*__p);
    if (v203)
    {
      v205 = v200;
    }

    else
    {
      v205 = 0;
    }

    if (v205)
    {
      v206 = 0.0;
      if (*(v11 + 5384) == 1 && (*(a4 + 1128) || *(a4 + 1132) || *(a4 + 1136)))
      {
        v206 = sub_112F704(v11 + 72, v203);
      }

      v207 = sub_108CF40((a4 + 1128), v206, v204);
      v209 = *(a4 + 1120) + v208;
      *&v225 = (*(a4 + 1112) + v207) | ((*(a4 + 1116) + HIDWORD(v207)) << 32);
      *(&v225 + 1) = v209;
      operator new();
    }
  }

LABEL_402:
  if (a5 == 0x7FFFFFFFLL || a6 != 2 || *(v11 + 64) == 0x7FFFFFFF || !*(a4 + 1144) && !*(a4 + 1148) && !*(a4 + 1152))
  {
    goto LABEL_403;
  }

  v218 = *(v11 + 16);
  v219 = a3[4] & 0xFFFFFFFFFFFFFFLL;
  if (*(v11 + 68) == 1)
  {
    if (sub_2BDCE4(v218, v219, 0))
    {
      goto LABEL_403;
    }
  }

  else if (sub_2BDCDC(v218, v219))
  {
    goto LABEL_403;
  }

  v220 = *(v11 + 16);
  v221 = a3[9] & 0xFFFFFFFFFFFFFFLL;
  if (*(v11 + 68) == 1)
  {
    if (sub_2BDCE4(v220, v221, 0))
    {
LABEL_428:
      operator new();
    }
  }

  else if (sub_2BDCDC(v220, v221))
  {
    goto LABEL_428;
  }

LABEL_403:
  v210 = (*a3 - **a3);
  if (*v210 < 0x2Fu || (v211 = v210[23]) == 0 || *(*a3 + v211) != 17)
  {
    v212 = (*v21 - **v21);
    if (*v212 >= 0x2Fu)
    {
      v213 = v212[23];
      if (v213)
      {
        if (*(*v21 + v213) == 17)
        {
          v214 = sub_3116D0(a3);
          v215 = *(v11 + 32);
          sub_2B365C(v215, v214, 0, (v215 + 7800));
          v216 = *(v215 + 7800);
          v217 = *(v215 + 7808);
          if (v217 != v216)
          {
            if (((v217 - v216) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }
        }
      }
    }
  }
}

void sub_10B45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_10B46C4(uint64_t a1, uint64_t a2, int **a3, unsigned int a4, uint64_t a5, signed int *a6, int a7)
{
  v14 = sub_10B0840(a1, a3, a5, *a6, a7);
  if (a7 != 2 || *(a5 + 177) != 1)
  {
    goto LABEL_21;
  }

  if (*(a5 + 178) == 1)
  {
    v15 = *a6;
    if (*a6 == 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 64);
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_21;
    }

    v17 = *(a5 + 172);
    v18 = v17 < 0 ? -5 : 5;
    if ((v17 / -10 + v16 + (((-103 * (v18 + v17 % 10)) >> 15) & 1) + ((-103 * (v18 + v17 % 10)) >> 10)) > v15)
    {
      goto LABEL_21;
    }

    v19 = *(a5 + 168);
    v20 = v19 < 0 ? -5 : 5;
    if ((v19 / 10 + v16 + (((103 * (v20 + v19 % 10)) >> 15) & 1) + ((103 * (v20 + v19 % 10)) >> 10)) < v15)
    {
      goto LABEL_21;
    }
  }

  v21 = v14;
  LOBYTE(v99[0].f64[0]) = *(a5 + 179);
  *&__p[0].f64[0] = a3;
  *&__p[0].f64[1] = v99;
  v22 = *(a1 + 16);
  v23 = a3[4];
  if (*(a1 + 68) != 1)
  {
    sub_10B765C(v101, v22, v23 & 0xFFFFFFFFFFFFFFLL, __p, *(v22 + 37));
    v25 = *(&v101[0] + 1);
    v24 = *&v101[0];
    if (!*&v101[0])
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_10B765C(v101, v22, v23 & 0xFFFFFFFFFFFFFFLL, __p, 0);
  v25 = *(&v101[0] + 1);
  v24 = *&v101[0];
  if (*&v101[0])
  {
LABEL_18:
    *(&v101[0] + 1) = v24;
    operator delete(v24);
  }

LABEL_19:
  v14 = v21;
  if (v24 != v25)
  {
    BYTE7(v101[1]) = 18;
    strcpy(v101, "Segment is blocked");
    sub_10A5B18(a2, v101);
LABEL_69:
    if ((SBYTE7(v101[1]) & 0x80000000) == 0)
    {
      return;
    }

    v50 = *v101;
    goto LABEL_71;
  }

LABEL_21:
  if (!a4)
  {
    return;
  }

  v26 = (*a3 - **a3);
  v27 = 0.0;
  if (*v26 >= 9u)
  {
    v28 = v26[4];
    if (v28)
    {
      LODWORD(v27) = *(*a3 + v28);
      v27 = *&v27;
    }
  }

  v29 = a4 / 1000000000.0 * v27;
  if (v29 >= 0.0)
  {
    if (v29 >= 4.50359963e15)
    {
      goto LABEL_31;
    }

    v30 = (v29 + v29) + 1;
  }

  else
  {
    if (v29 <= -4.50359963e15)
    {
      goto LABEL_31;
    }

    v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
  }

  v29 = (v30 >> 1);
LABEL_31:
  _ZF = *&v14 > -1 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 0x7FFFFFFF;
  v36 = -1;
  if (!_ZF || v14 <= 0.0 || v29 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_51;
  }

  v37 = v29 / 10.0 / (v14 / 3.6);
  if (v37 >= 0.0)
  {
    if (v37 < 4.50359963e15)
    {
      v38 = (v37 + v37) + 1;
      goto LABEL_49;
    }
  }

  else if (v37 > -4.50359963e15)
  {
    v38 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
LABEL_49:
    v37 = (v38 >> 1);
  }

  v36 = v37;
  v35 = v37;
  v34 = v29;
LABEL_51:
  *a2 = v36;
  *(a2 + 4) = v35;
  *(a2 + 8) = v34;
  v39 = (*a3 - **a3);
  if (*v39 < 0x9Bu)
  {
    goto LABEL_68;
  }

  v40 = v39[77];
  if (!v40)
  {
    goto LABEL_68;
  }

  v41 = *(*a3 + v40);
  if ((v41 & 8) != 0)
  {
    BYTE7(v101[1]) = 12;
    strcpy(v101, "FERRY_FACTOR");
    *(a2 + 32) = vmulq_f64(*(a5 + 384), *(a2 + 32));
    *(a2 + 48) = *(a5 + 400) * *(a2 + 48);
    sub_10AEFD4((a2 + 104), v101);
    goto LABEL_69;
  }

  v42 = 1;
  if (*(a3 + 38))
  {
    v42 = 2;
  }

  if ((v41 & v42) == 0)
  {
LABEL_68:
    BYTE7(v101[1]) = 14;
    strcpy(v101, "WALKING_FACTOR");
    *(a2 + 32) = vmulq_f64(*(a5 + 288), *(a2 + 32));
    *(a2 + 48) = *(a5 + 304) * *(a2 + 48);
    sub_10AEFD4((a2 + 104), v101);
    goto LABEL_69;
  }

  if ((v41 & 0x400000) != 0)
  {
    v43 = 2;
  }

  else
  {
    v43 = (v41 >> 21) & 1;
  }

  v44 = sub_10A7E3C((a5 + 264), v43);
  v45 = *(v44 + 16);
  v101[0] = *v44;
  *&v101[1] = v45;
  if (*v101 == INFINITY || *(v101 + 1) == INFINITY || (v46 = *&v101[1], *&v101[1] == INFINITY))
  {
    operator new();
  }

  HIBYTE(__p[1].f64[0]) = 21;
  strcpy(__p, "ROAD_CONDITION_FACTOR");
  *(a2 + 32) = vmulq_f64(v101[0], *(a2 + 32));
  *(a2 + 48) = v46 * *(a2 + 48);
  sub_10AEFD4((a2 + 104), __p);
  if (SHIBYTE(__p[1].f64[0]) < 0)
  {
    operator delete(*&__p[0].f64[0]);
  }

  v47 = (*a3 - **a3);
  if (*v47 >= 0x2Fu && (v48 = v47[23]) != 0)
  {
    v49 = *(*a3 + v48);
  }

  else
  {
    v49 = 32;
  }

  v51 = sub_10A7E3C((a5 + 736), v49);
  v52 = *(v51 + 16);
  __p[0] = *v51;
  __p[1].f64[0] = v52;
  if (__p[0].f64[0] == INFINITY || __p[0].f64[1] == INFINITY || (v53 = __p[1].f64[0], __p[1].f64[0] == INFINITY))
  {
    HIBYTE(v99[1].f64[0]) = 18;
    strcpy(v99, "Invalid FoW factor");
    sub_10A5B18(a2, v99);
    goto LABEL_96;
  }

  HIBYTE(v99[1].f64[0]) = 10;
  strcpy(v99, "FOW_FACTOR");
  *(a2 + 32) = vmulq_f64(__p[0], *(a2 + 32));
  *(a2 + 48) = v53 * *(a2 + 48);
  sub_10AEFD4((a2 + 104), v99);
  if (SHIBYTE(v99[1].f64[0]) < 0)
  {
    operator delete(*&v99[0].f64[0]);
  }

  if ((*(a5 + 435) & 1) == 0 && (v54 = (*a3 - **a3), *v54 >= 0x2Fu) && (v55 = v54[23]) != 0 && (v56 = *(*a3 + v55) - 2, v56 < 0x29) && ((0x14109A04001uLL >> v56) & 1) != 0 || (*(a5 + 436) & 1) == 0 && (v57 = a3[1]) != 0 && (v58 = (v57 - *v57), *v58 >= 0x11u) && (v59 = v58[8]) != 0 && (*(v57 + v59) & 4) != 0)
  {
    v70 = 0;
    goto LABEL_108;
  }

  v60 = *a3;
  v61 = (*a3 - **a3);
  v62 = *v61;
  if (v62 < 0x9B)
  {
    v63 = (a5 + 216);
    if (v62 < 0x1B)
    {
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  if (!v61[77] || (*(v60 + v61[77] + 3) & 2) == 0)
  {
    v63 = (a5 + 216);
LABEL_99:
    v64 = v61[13];
    if (v64)
    {
      v65 = *(v60 + v64);
      goto LABEL_102;
    }

LABEL_101:
    v65 = 0;
LABEL_102:
    v66 = sub_10A7E3C(v63, v65);
    sub_3608D0(v99, "ROAD_CLASS_FACTOR");
    sub_10A7CB4(a2, v66, v99);
    if (SHIBYTE(v99[1].f64[0]) < 0)
    {
      operator delete(*&v99[0].f64[0]);
    }
  }

  v67 = (sub_10B0DA0(*a1, a3) * 100.0 + 0.5);
  v68 = *(a5 + 240);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a5 + 248) - v68) >> 3) > v67)
  {
    v69 = (v68 + 24 * v67);
    sub_3608D0(v99, "NORMALIZED_CAPACITY_FACTOR");
    sub_10A7CB4(a2, v69, v99);
    if (SHIBYTE(v99[1].f64[0]) < 0)
    {
      operator delete(*&v99[0].f64[0]);
    }
  }

  v70 = 1;
LABEL_108:
  v71 = *a3;
  v72 = **a3;
  v73 = -v72;
  v74 = (*a3 - v72);
  if (*v74 >= 0x9Bu)
  {
    v75 = v74[77];
    if (v75)
    {
      if (*(v71 + v75 + 1))
      {
        if (*(a5 + 312) == INFINITY || *(a5 + 320) == INFINITY || *(a5 + 328) == INFINITY)
        {
          sub_3608D0(v99, "Invalid toll road factor");
          sub_10A5B18(a2, v99);
          goto LABEL_96;
        }

        sub_3608D0(v99, "TOLL_ROAD_FACTOR");
        sub_10A7CB4(a2, (a5 + 312), v99);
        if (SHIBYTE(v99[1].f64[0]) < 0)
        {
          operator delete(*&v99[0].f64[0]);
        }

        v71 = *a3;
        v73 = -**a3;
      }
    }
  }

  if (*(v71 + v73) >= 0x2Fu && *(v71 + v73 + 46) && !*(v71 + *(v71 + v73 + 46)))
  {
    if (*(a5 + 336) == INFINITY || *(a5 + 344) == INFINITY || *(a5 + 352) == INFINITY)
    {
      sub_3608D0(v99, "Invalid highway factor");
      sub_10A5B18(a2, v99);
      goto LABEL_96;
    }

    sub_3608D0(v99, "HIGHWAY_FACTOR");
    sub_10A7CB4(a2, (a5 + 336), v99);
    if (SHIBYTE(v99[1].f64[0]) < 0)
    {
      operator delete(*&v99[0].f64[0]);
    }

    v71 = *a3;
    v73 = -**a3;
  }

  v76 = v71 + v73;
  v77 = *(v71 + v73);
  if (v77 >= 0x2F)
  {
    if (*(v76 + 23))
    {
      if (*(v71 + *(v76 + 23)) == 22 && (v77 < 0x9B || (v78 = *(v76 + 77)) == 0 || (*(v71 + v78 + 3) & 2) == 0 || *(a5 + 434) == 1))
      {
        if (*(a5 + 360) == INFINITY || *(a5 + 368) == INFINITY || *(a5 + 376) == INFINITY)
        {
          sub_3608D0(v99, "Invalid frontage road factor");
          sub_10A5B18(a2, v99);
          goto LABEL_96;
        }

        sub_3608D0(v99, "FRONTAGE_ROAD_FACTOR");
        sub_10A7CB4(a2, (a5 + 360), v99);
        if (SHIBYTE(v99[1].f64[0]) < 0)
        {
          operator delete(*&v99[0].f64[0]);
        }

        v71 = *a3;
        v73 = -**a3;
      }
    }
  }

  v79 = (v71 + v73);
  if (*v79 >= 0x2Fu && (v80 = v79[23]) != 0 && *(v71 + v80) != 32)
  {
    v82 = 0;
    if (!v70)
    {
      goto LABEL_155;
    }
  }

  else
  {
    v81 = sub_314758(a3);
    v82 = *(a5 + 432) > (sub_3147AC(a3) + v81);
    if (!v70)
    {
      goto LABEL_155;
    }
  }

  if (!sub_312DF0(a3))
  {
    goto LABEL_155;
  }

  v83 = (*a3 - **a3);
  if (*v83 >= 0x9Bu && (v84 = v83[77]) != 0)
  {
    if (((v82 | (*(*a3 + v84 + 2) >> 7)) & 1) == 0)
    {
      goto LABEL_155;
    }
  }

  else if (!v82)
  {
    goto LABEL_155;
  }

  if (*(a5 + 408) != INFINITY && *(a5 + 416) != INFINITY && *(a5 + 424) != INFINITY)
  {
    sub_3608D0(v99, "BACKROAD_FACTOR");
    sub_10A7CB4(a2, (a5 + 408), v99);
    if (SHIBYTE(v99[1].f64[0]) < 0)
    {
      operator delete(*&v99[0].f64[0]);
    }

LABEL_155:
    if (*(a5 + 437) == 1)
    {
      v85 = sub_314758(a3);
      if (v85)
      {
        v99[0].f64[0] = pow(1.0 / v85, *(a5 + 440));
        __asm { FMOV            V0.2D, #1.0 }

        *(v99 + 8) = _Q0;
        sub_3608D0(v97, "DAILY_TRIPS_FACTOR");
        sub_10A7CB4(a2, v99, v97);
        if (v98 < 0)
        {
          operator delete(v97[0]);
        }
      }
    }

    if (*(a5 + 448) == 1)
    {
      v89 = sub_311A24(*a3, *(a3 + 38));
      v90 = v89 <= 1 ? 1 : v89;
      v99[0].f64[0] = pow(1.0 / v90, *(a5 + 456));
      __asm { FMOV            V0.2D, #1.0 }

      *(v99 + 8) = _Q0;
      sub_3608D0(v97, "LANES_FACTOR");
      sub_10A7CB4(a2, v99, v97);
      if (v98 < 0)
      {
        operator delete(v97[0]);
      }
    }

    if (*(a5 + 464) == 1)
    {
      v92 = a3[1];
      v93 = (v92 - *v92);
      v94 = 0.0;
      if (*v93 >= 0x13u)
      {
        v95 = v93[9];
        if (v95)
        {
          LOWORD(v94) = *(v92 + v95);
          v94 = *&v94;
        }
      }

      v99[0].f64[0] = pow(fmax(v94, 1.0), *(a5 + 472));
      __asm { FMOV            V0.2D, #1.0 }

      *(v99 + 8) = _Q0;
      sub_3608D0(v97, "ROAD_CURVINESS_FACTOR");
      sub_10A7CB4(a2, v99, v97);
      if (v98 < 0)
      {
        v50 = *v97;
        goto LABEL_71;
      }
    }

    return;
  }

  sub_3608D0(v99, "Invalid back-road factor");
  sub_10A5B18(a2, v99);
LABEL_96:
  if (SHIBYTE(v99[1].f64[0]) < 0)
  {
    v50 = v99[0].f64[0];
LABEL_71:
    operator delete(*&v50);
  }
}

void sub_10B53F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_10B5488(int32x2_t *a1, int32x2_t *a2, uint64_t a3)
{
  a1[2] = vadd_s32(*a2, a1[2]);
  *&a1[3] += *&a2[1];
  return sub_10AEBD4(&a1[8], a3);
}

void sub_10B54B8(int32x2_t *a1, uint64_t a2, int **a3, unsigned int a4, uint64_t a5, signed int *a6, int a7)
{
  sub_10B558C(a1, a2, a3, a5, *a6, a7);
  if (*(a2 + 56) == 1)
  {
    sub_10AFF14(a1, a2, a3, a4, a5, a6, a7);
    if (*(a2 + 56) == 1)
    {
      v15 = sub_F8634C(a2, (a2 + 32), v14);
      v16 = *(a2 + 16);
      if (!(v16 + v15))
      {
        *(a2 + 16) = v16 + 1;
      }
    }
  }
}

void sub_10B558C(int32x2_t *a1, int32x2_t *a2, int **a3, uint64_t a4, signed int a5, int a6)
{
  v11 = a1;
  if (a6 == 2 && *(a4 + 177) == 1)
  {
    if (*(a4 + 178) != 1 || a5 != 0x7FFFFFFF && (v12 = a1[8].i32[0], v12 != 0x7FFFFFFF) && ((v13 = *(a4 + 172), v13 < 0) ? (v14 = -5) : (v14 = 5), (v13 / -10 + v12 + (((-103 * (v14 + v13 % 10)) >> 15) & 1) + ((-103 * (v14 + v13 % 10)) >> 10)) <= a5 && ((v15 = *(a4 + 168), v15 < 0) ? (v16 = -5) : (v16 = 5), (v15 / 10 + v12 + (((103 * (v16 + v15 % 10)) >> 15) & 1) + ((103 * (v16 + v15 % 10)) >> 10)) >= a5)))
    {
      a1 = sub_10B7C14(a1, a3[4] & 0xFFFFFFFFFFFFFFLL, a3[9] & 0xFFFFFFFFFFFFFFLL);
      if (a1)
      {
        goto LABEL_295;
      }
    }
  }

  if (*(a3 + 38) != *(a3 + 78) && *(a3 + 8) == *(a3 + 18) && *(a3 + 18) == *(a3 + 38))
  {
    v17 = (*a3 - **a3);
    v18 = *v17;
    if (*(a3 + 38))
    {
      if (v18 < 0x9B)
      {
        goto LABEL_27;
      }

      v19 = v17[77];
      if (!v17[77])
      {
        goto LABEL_27;
      }

      v20 = 10;
    }

    else
    {
      if (v18 < 0x9B)
      {
        goto LABEL_27;
      }

      v19 = v17[77];
      if (!v17[77])
      {
        goto LABEL_27;
      }

      v20 = 9;
    }

    if ((*(*a3 + v19) & v20) != 0)
    {
      a2[2] = vadd_s32(*(a4 + 1096), a2[2]);
      *&a2[3] += *(a4 + 1104);
      return;
    }
  }

LABEL_27:
  if ((a3[11] & 0x10) != 0 && !*(a3 + 40))
  {
    a2[2] = vadd_s32(*(a4 + 672), a2[2]);
    *&a2[3] += *(a4 + 680);
  }

  v21 = a3 + 5;
  v22 = (*a3 - **a3);
  if (*v22 >= 0xDu && (v23 = v22[6]) != 0)
  {
    v24 = *(*a3 + v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = *v21;
  v26 = **v21;
  v27 = -v26;
  v28 = (*v21 - v26);
  if (*v28 < 0xDu)
  {
    if (!v24)
    {
      goto LABEL_38;
    }

LABEL_41:
    v32 = sub_4B6E88(*&v11[7], a3, a3 + 5);
    a1 = sub_10AD680((a4 + 712), v32);
    v33 = a1[1];
    if (a1->u32[0] == -1 || HIDWORD(*a1) == 0x7FFFFFFF || *&v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_295;
    }

    a2[2] = vadd_s32(a2[2], *a1);
    *&a2[3] += *&v33;
    v25 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
      goto LABEL_55;
    }

    goto LABEL_49;
  }

  v29 = v28[6];
  if (v29)
  {
    v29 = *&v25[v29];
  }

  if (v29 != v24)
  {
    goto LABEL_41;
  }

LABEL_38:
  v30 = &v25[v27];
  v31 = *v30;
  if (v31 < 0x2F)
  {
    goto LABEL_55;
  }

LABEL_49:
  if (v30[23])
  {
    v36 = v25[v30[23]];
    v37 = v36 > 0x2D;
    v38 = 0x208040000000uLL >> v36;
    if (v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v40 = *a3;
    v41 = (*a3 - **a3);
    v42 = *v41;
    if (v42 < 0x2F)
    {
      goto LABEL_68;
    }

LABEL_56:
    if (v41[23])
    {
      v43 = *(v40 + v41[23]);
      v37 = v43 > 0x2D;
      v44 = (1 << v43) & 0x208040000000;
      v45 = v37 || v44 == 0;
      if (!v45 && v31 >= 0x2F && v30[23])
      {
        v46 = v25[v30[23]];
        v37 = v46 > 0x2D;
        v47 = (1 << v46) & 0x208040000000;
        if (!v37 && v47 != 0)
        {
          goto LABEL_127;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_55:
  v39 = 0;
  v40 = *a3;
  v41 = (*a3 - **a3);
  v42 = *v41;
  if (v42 >= 0x2F)
  {
    goto LABEL_56;
  }

LABEL_68:
  if ((a3[11] & 8) == 0)
  {
    if ((*(a4 + 577) & 1) != 0 || v42 >= 0x2F && (v49 = v41[23]) != 0 && ((v50 = *(v40 + v49), v37 = v50 > 0x36, v51 = (1 << v50) & 0x44000000000008, !v37) ? (v52 = v51 == 0) : (v52 = 1), !v52) || v31 >= 0x2F && (v53 = v30[23]) != 0 && ((v54 = v25[v53], v37 = v54 > 0x36, v55 = (1 << v54) & 0x44000000000008, !v37) ? (v56 = v55 == 0) : (v56 = 1), !v56) || (*(a3 + 42) & 0x4000) == 0)
    {
      if (*(a4 + 578) != 1)
      {
        v64 = sub_10B8164(a1, a3);
        v65 = sub_10AD680((a4 + 552), v64);
        a2[2] = vadd_s32(*v65, a2[2]);
        v66 = (*&v65[1] + *&a2[3]);
LABEL_126:
        a2[3] = v66;
        goto LABEL_127;
      }

      v57 = *(a3 + 43);
      if (!*(a3 + 43))
      {
        goto LABEL_127;
      }

      v58 = *(a3 + 43);
      if (*(a4 + 579))
      {
        v59 = sub_4345A0(*v11, a3[4] & 0xFFFFFFFFFFFFFFLL);
        v60 = sub_4345A0(*v11, a3[9] & 0xFFFFFFFFFFFFFFLL);
        if (v60 <= v59)
        {
          v60 = v59;
        }

        if (v60)
        {
          v61 = v60;
          v62 = *(a4 + 584) * v57;
          if (v62 >= 0.0)
          {
            if (v62 >= 4.50359963e15)
            {
              goto LABEL_99;
            }

            v63 = (v62 + v62) + 1;
          }

          else
          {
            if (v62 <= -4.50359963e15)
            {
              goto LABEL_99;
            }

            v63 = (v62 + v62) - 1 + (((v62 + v62) - 1) >> 63);
          }

          v62 = (v63 >> 1);
LABEL_99:
          if ((v62 / v61) <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = (v62 / v61);
          }

          goto LABEL_102;
        }

        v58 = 1;
      }

LABEL_102:
      v67 = 3;
      if (!*(a3 + 38))
      {
        v67 = 2;
      }

      v68 = a3[v67];
      if (v68)
      {
        v69 = (v68 - *v68);
        if (*v69 < 7u || (v70 = v69[3]) == 0 || (LOWORD(v68) = *(v68 + v70), v68 == 0xFFFF))
        {
          LOWORD(v68) = 0;
        }
      }

      v71 = 3;
      if (!*(a3 + 78))
      {
        v71 = 2;
      }

      v72 = v21[v71];
      if (v72)
      {
        v73 = (v72 - *v72);
        if (*v73 < 7u || (v74 = v73[3]) == 0 || (LOWORD(v72) = *(v72 + v74), v72 == 0xFFFF))
        {
          LOWORD(v72) = 0;
        }
      }

      LODWORD(v68) = v68;
      if (v68 >= v72)
      {
        LODWORD(v68) = v72;
      }

      if (v68 <= 1)
      {
        LODWORD(v68) = 1;
      }

      v244 = v57 / v68;
      v245 = sub_10ADE24(&v244, (a4 + 592));
      v246 = v75;
      v76 = __clz(v58);
      v78 = sub_108CF40(&v245, ((32 - v76) - ((1 << -__clz(v58 - 1)) - v58) / (0x80000000 >> v76)) * *(a4 + 616), *(a4 + 616));
      v242 = v78;
      v243 = v77;
      v79 = (*a3 - **a3);
      if (*v79 >= 0x9Bu)
      {
        v80 = v79[77];
        if (v80)
        {
          if ((*(*a3 + v80 + 3) & 2) != 0 && (*(a3 + 42) & 0x2000) == 0)
          {
            v242 = sub_F8634C(&v242, (a4 + 624), *&v78);
            v243 = v81;
            v82 = sub_10B8164(v242, a3);
            v83 = sub_10AD680((a4 + 648), v82);
            v78 = vadd_s32(*v83, v242);
            v77 = *&v83[1] + v243;
          }
        }
      }

      a2[2] = vadd_s32(a2[2], v78);
      v66 = (v77 + *&a2[3]);
      goto LABEL_126;
    }
  }

LABEL_127:
  v84 = *a3;
  v85 = (*a3 - **a3);
  v86 = *v85;
  if (*(a3 + 38))
  {
    if (v86 < 0x9B)
    {
      goto LABEL_140;
    }

    if (!v85[77])
    {
      goto LABEL_140;
    }

    if ((*(v84 + v85[77]) & 2) == 0)
    {
      goto LABEL_140;
    }

    v87 = v85[39];
    if (!v87 || (*(v84 + v87) & 8) == 0)
    {
      goto LABEL_140;
    }

LABEL_139:
    a2[2] = vadd_s32(*(a4 + 776), a2[2]);
    *&a2[3] += *(a4 + 784);
    goto LABEL_140;
  }

  if (v86 >= 0x9B)
  {
    if (v85[77])
    {
      if (*(v84 + v85[77]))
      {
        v88 = v85[39];
        if (v88)
        {
          if ((*(v84 + v88) & 0x80) != 0)
          {
            goto LABEL_139;
          }
        }
      }
    }
  }

LABEL_140:
  v89 = a3[5];
  v90 = (v89 - *v89);
  v91 = *v90;
  if (*(a3 + 78))
  {
    if (v91 < 0x9B)
    {
      goto LABEL_153;
    }

    if (!v90[77])
    {
      goto LABEL_153;
    }

    if ((*(v89 + v90[77]) & 2) == 0)
    {
      goto LABEL_153;
    }

    v92 = v90[39];
    if (!v92 || (*(v89 + v92) & 0x20) == 0)
    {
      goto LABEL_153;
    }

LABEL_152:
    a2[2] = vadd_s32(*(a4 + 776), a2[2]);
    *&a2[3] += *(a4 + 784);
    goto LABEL_153;
  }

  if (v91 >= 0x9B)
  {
    if (v90[77])
    {
      if (*(v89 + v90[77]))
      {
        v93 = v90[39];
        if (v93)
        {
          if ((*(v89 + v93) & 2) != 0)
          {
            goto LABEL_152;
          }
        }
      }
    }
  }

LABEL_153:
  v94 = *a3;
  v95 = (*a3 - **a3);
  v96 = *v95;
  if (*(a3 + 38))
  {
    if (v96 < 0x9B)
    {
      goto LABEL_169;
    }

    if (!v95[77])
    {
      goto LABEL_169;
    }

    if ((*(v94 + v95[77]) & 2) == 0)
    {
      goto LABEL_169;
    }

    v97 = v95[39];
    if (!v97 || (*(v94 + v97) & 4) == 0)
    {
      goto LABEL_169;
    }
  }

  else
  {
    if (v96 < 0x9B)
    {
      goto LABEL_169;
    }

    if (!v95[77])
    {
      goto LABEL_169;
    }

    if ((*(v94 + v95[77]) & 1) == 0)
    {
      goto LABEL_169;
    }

    v98 = v95[39];
    if (!v98 || (*(v94 + v98) & 0x40) == 0)
    {
      goto LABEL_169;
    }
  }

  v99 = *(a4 + 792);
  if (v99.i32[0] == -1 || v99.i32[1] == 0x7FFFFFFF || *(a4 + 800) == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_295;
  }

  a2[2] = vadd_s32(v99, a2[2]);
  *&a2[3] += *(a4 + 800);
LABEL_169:
  v100 = a3[5];
  v101 = (v100 - *v100);
  v102 = *v101;
  if (*(a3 + 78))
  {
    if (v102 < 0x9B)
    {
      goto LABEL_185;
    }

    if (!v101[77])
    {
      goto LABEL_185;
    }

    if ((*(v100 + v101[77]) & 2) == 0)
    {
      goto LABEL_185;
    }

    v103 = v101[39];
    if (!v103 || (*(v100 + v103) & 0x10) == 0)
    {
      goto LABEL_185;
    }
  }

  else
  {
    if (v102 < 0x9B)
    {
      goto LABEL_185;
    }

    if (!v101[77])
    {
      goto LABEL_185;
    }

    if ((*(v100 + v101[77]) & 1) == 0)
    {
      goto LABEL_185;
    }

    v104 = v101[39];
    if (!v104 || (*(v100 + v104) & 1) == 0)
    {
      goto LABEL_185;
    }
  }

  v105 = *(a4 + 792);
  if (v105.i32[0] == -1 || v105.i32[1] == 0x7FFFFFFF || *(a4 + 800) == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_295;
  }

  a2[2] = vadd_s32(v105, a2[2]);
  *&a2[3] += *(a4 + 800);
LABEL_185:
  if ((a3[11] & 4) == 0)
  {
    v106 = *a3;
    v107 = (*a3 - **a3);
    v108 = *v107;
    if (v108 < 0x2F || !v107[23] || (v109 = *(v106 + v107[23]), v109 > 0x36) || ((1 << v109) & 0x44000000000008) == 0 || (v110 = (*v21 - **v21), *v110 < 0x2Fu) || (v111 = v110[23]) == 0 || (v112 = *(*v21 + v111), v112 > 0x36) || ((1 << v112) & 0x44000000000008) == 0)
    {
      v113 = a3[1];
      v114 = (v113 - *v113);
      v115 = *v114;
      if (*(a3 + 38))
      {
        if (v115 < 5)
        {
          goto LABEL_204;
        }

        v116 = v114[2];
        if (!v116)
        {
          goto LABEL_204;
        }
      }

      else if (v115 < 9 || (v116 = v114[4]) == 0)
      {
LABEL_204:
        v117 = 0;
        v118 = a3[6];
        v119 = (v118 - *v118);
        v120 = *v119;
        if (*(a3 + 78))
        {
          goto LABEL_205;
        }

        goto LABEL_201;
      }

      v117 = *(v113 + v116);
      v118 = a3[6];
      v119 = (v118 - *v118);
      v120 = *v119;
      if (*(a3 + 78))
      {
LABEL_205:
        if (v120 >= 9)
        {
          v121 = v119[4];
          if (v121)
          {
LABEL_207:
            v122 = *(v118 + v121);
            goto LABEL_209;
          }
        }

LABEL_208:
        v122 = 0;
LABEL_209:
        v123 = v117 + 18000;
        v124 = (v117 + 18000) >> 5;
        v125 = v117 - 18000;
        if (v124 < 0x465)
        {
          v125 = v123;
        }

        v126 = v122 - v125;
        if (v126 > 18000)
        {
          v126 -= 36000;
        }

        if (v126 < -17999)
        {
          v126 += 36000;
        }

        v127 = v126 / 100.0;
        if (v39)
        {
          v128 = (a4 + 528);
          v129 = round(fabs(v127));
LABEL_224:
          v132 = sub_10AD680(v128, v129);
          a2[2] = vadd_s32(*v132, a2[2]);
          *&a2[3] += *&v132[1];
          goto LABEL_225;
        }

        if (v108 >= 0x9B && (v130 = v107[77]) != 0)
        {
          if ((((v127 < 0.0) ^ (*(v106 + v130 + 1) >> 7)) & 1) == 0)
          {
LABEL_220:
            v131 = 480;
LABEL_223:
            v128 = (a4 + v131);
            v129 = fabs(v127);
            goto LABEL_224;
          }
        }

        else if (v127 >= 0.0)
        {
          goto LABEL_220;
        }

        v131 = 504;
        goto LABEL_223;
      }

LABEL_201:
      if (v120 >= 5)
      {
        v121 = v119[2];
        if (v121)
        {
          goto LABEL_207;
        }
      }

      goto LABEL_208;
    }
  }

LABEL_225:
  v133 = *a3;
  v134 = **a3;
  v135 = (*a3 - v134);
  if (*v135 < 0x1Bu)
  {
    LODWORD(v136) = 0;
  }

  else
  {
    v136 = v135[13];
    if (v136)
    {
      LODWORD(v136) = *(v133 + v136);
    }
  }

  v137 = -v134;
  v138 = (*v21 - **v21);
  if (*v138 < 0x1Bu || (v139 = v138[13]) == 0)
  {
    if (!v136)
    {
      goto LABEL_235;
    }

    goto LABEL_234;
  }

  if (v136 != *(*v21 + v139))
  {
LABEL_234:
    a2[2] = vadd_s32(*(a4 + 808), a2[2]);
    *&a2[3] += *(a4 + 816);
    v133 = *a3;
    v137 = -**a3;
  }

LABEL_235:
  v140 = *(a3 + 38);
  v141 = (v133 + v137);
  v142 = *(v133 + v137);
  if (*(a3 + 38))
  {
    if (v142 < 0x4D || !v141[38])
    {
      if (*v141 <= 0x4Cu)
      {
        goto LABEL_257;
      }

      goto LABEL_244;
    }

    if ((*(v133 + v141[38]) & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_239;
  }

  if (v142 < 0x4D || !v141[38])
  {
    if (*v141 <= 0x4Cu)
    {
      goto LABEL_257;
    }

    goto LABEL_254;
  }

  if ((*(v133 + v141[38]) & 4) != 0)
  {
LABEL_239:
    a2[2] = vadd_s32(*(a4 + 968), a2[2]);
    *&a2[3] += *(a4 + 976);
    v133 = *a3;
    v140 = *(a3 + 38);
    v137 = -**a3;
  }

LABEL_240:
  v141 = (v133 + v137);
  v143 = *(v133 + v137);
  if (v140)
  {
    if (v143 < 0x4D)
    {
      goto LABEL_257;
    }

LABEL_244:
    if (!v141[38] || (*(v133 + v141[38]) & 2) == 0)
    {
      goto LABEL_257;
    }

LABEL_256:
    a2[2] = vadd_s32(*(a4 + 984), a2[2]);
    *&a2[3] += *(a4 + 992);
    goto LABEL_257;
  }

  if (v143 < 0x4D)
  {
    goto LABEL_257;
  }

LABEL_254:
  if (v141[38] && (*(v133 + v141[38]) & 1) != 0)
  {
    goto LABEL_256;
  }

LABEL_257:
  if (a6 != 2)
  {
    v11[6].i8[0] = 0;
    v144 = v11 + 6;
    goto LABEL_262;
  }

  if ((*(a4 + 176) & 1) != 0 || (*(a4 + 177) & 1) != 0 || *(a4 + 1144) || *(a4 + 1148))
  {
    v11[6].i8[0] = 1;
    v144 = v11 + 6;
  }

  else
  {
    v171 = *(a4 + 1152);
    v11[6].i8[0] = v171 != 0;
    v144 = v11 + 6;
    if (!v171)
    {
      goto LABEL_262;
    }
  }

  v145 = sub_2BC10C(*&v11[5], a3[4] & 0xFFFFFFFFFFFFFFLL, 0);
  if ((v146 & 1) == 0)
  {
LABEL_262:
    v145 = sub_30F8F8(&v11[5], a3);
  }

  v147 = v145;
  if (v144->i8[0] != 1 || (v148 = sub_2BC10C(*&v11[5], a3[9] & 0xFFFFFFFFFFFFFFLL, 0), (v149 & 1) == 0))
  {
    v148 = sub_30F8F8(&v11[5], a3 + 5);
  }

  if (v147 != v148)
  {
    v150 = sub_F925C4(a4 + 1312, v147, v148, a3[11] & 1, (*(a3 + 88) >> 1) & 1);
    v151 = sub_10AD680((a4 + 688), v150);
    v152 = *v151;
    if (v151->u32[0] != -1 && v152.i32[1] != 0x7FFFFFFF)
    {
      v153 = v151[1];
      if (*&v153 != 0x7FFFFFFFFFFFFFFFLL)
      {
        a2[2] = vadd_s32(a2[2], v152);
        *&a2[3] += *&v153;
        goto LABEL_271;
      }
    }

LABEL_295:
    a2[7].i8[0] = 0;
    return;
  }

LABEL_271:
  v154 = (*a3 - **a3);
  if (*v154 < 0x9Bu || (v155 = v154[77]) == 0 || (*(*a3 + v155) & 8) == 0)
  {
    v156 = (*v21 - **v21);
    if (*v156 >= 0x9Bu)
    {
      v157 = v156[77];
      if (v157)
      {
        if ((*(*v21 + v157) & 8) != 0)
        {
          a2[2] = vadd_s32(*(a4 + 920), a2[2]);
          *&a2[3] += *(a4 + 928);
        }
      }
    }
  }

  v158 = (*v21 - **v21);
  if (*v158 >= 0x2Fu)
  {
    v159 = v158[23];
    if (v159)
    {
      if (*(*v21 + v159) == 21)
      {
        v160 = (*a3 - **a3);
        if (*v160 < 0x2Fu || (v161 = v160[23]) == 0 || *(*a3 + v161) != 21)
        {
          a2[2] = vadd_s32(*(a4 + 936), a2[2]);
          *&a2[3] += *(a4 + 944);
        }
      }
    }
  }

  v162 = *a3;
  v163 = **a3;
  v164 = -v163;
  v165 = (*a3 - v163);
  if ((*v165 < 0x2Fu || (v166 = v165[23]) == 0 || *(v162 + v166)) && (v167 = (*v21 - **v21), *v167 >= 0x2Fu) && (v168 = v167[23]) != 0 && !*(*v21 + v168))
  {
    a2[2] = vadd_s32(*(a4 + 856), a2[2]);
    *&a2[3] += *(a4 + 864);
    v162 = *a3;
    v169 = (*a3 - **a3);
    if (*v169 >= 0x9Bu)
    {
      goto LABEL_292;
    }
  }

  else
  {
    v169 = (v162 + v164);
    if (*v169 >= 0x9Bu)
    {
LABEL_292:
      v170 = v169[77];
      if (v170 && (*(v162 + v170 + 1) & 1) != 0)
      {
        goto LABEL_306;
      }
    }
  }

  v172 = (*v21 - **v21);
  if (*v172 >= 0x9Bu)
  {
    v173 = v172[77];
    if (v173)
    {
      if (*(*v21 + v173 + 1))
      {
        a2[2] = vadd_s32(*(a4 + 824), a2[2]);
        *&a2[3] += *(a4 + 832);
      }
    }
  }

LABEL_306:
  v174 = a3[6];
  v175 = (v174 - *v174);
  if (*v175 >= 0x11u)
  {
    v176 = v175[8];
    if (v176)
    {
      if ((*(v174 + v176) & 0x10) != 0)
      {
        v177 = a3[1];
        v178 = (v177 - *v177);
        if (*v178 < 0x11u || (v179 = v178[8]) == 0 || (*(v177 + v179) & 0x10) == 0)
        {
          a2[2] = vadd_s32(*(a4 + 840), a2[2]);
          *&a2[3] += *(a4 + 848);
        }
      }
    }
  }

  if (sub_10B8408(a3, *(a4 + 34)))
  {
    a2[2] = vadd_s32(*(a4 + 888), a2[2]);
    *&a2[3] += *(a4 + 896);
  }

  v180 = *a3;
  v181 = **a3;
  v182 = -v181;
  v183 = (*a3 - v181);
  if (*v183 < 0x9Bu || (v184 = v183[77]) == 0 || (*(v180 + v184 + 1) & 0x20) == 0)
  {
    v185 = (*v21 - **v21);
    if (*v185 >= 0x9Bu)
    {
      v186 = v185[77];
      if (v186)
      {
        if ((*(*v21 + v186 + 1) & 0x20) != 0)
        {
          a2[2] = vadd_s32(*(a4 + 904), a2[2]);
          *&a2[3] += *(a4 + 912);
          v180 = *a3;
          v182 = -**a3;
        }
      }
    }
  }

  v187 = (v180 + v182);
  if (*v187 < 0x2Fu || (v188 = v187[23]) == 0 || *(v180 + v188) != 28)
  {
    v189 = (*v21 - **v21);
    if (*v189 >= 0x2Fu)
    {
      v190 = v189[23];
      if (v190)
      {
        if (*(*v21 + v190) == 28)
        {
          a2[2] = vadd_s32(*(a4 + 872), a2[2]);
          *&a2[3] += *(a4 + 880);
        }
      }
    }
  }

  v191 = a3[6];
  v192 = (v191 - *v191);
  if (*v192 >= 0x11u)
  {
    v193 = v192[8];
    if (v193)
    {
      if ((*(v191 + v193) & 0x20) != 0)
      {
        v194 = a3[1];
        v195 = (v194 - *v194);
        if (*v195 < 0x11u || (v196 = v195[8]) == 0 || (*(v194 + v196) & 0x20) == 0)
        {
          a2[2] = vadd_s32(*(a4 + 952), a2[2]);
          *&a2[3] += *(a4 + 960);
        }
      }
    }
  }

  if ((*(a3 + 42) & 0x400) != 0)
  {
    v197 = a3[1];
    if (v197 && (v198 = (v197 - *v197), *v198 >= 0x11u) && (v199 = v198[8]) != 0 && (*(v197 + v199) & 4) != 0 || (v200 = a3[6]) != 0 && (v201 = (v200 - *v200), *v201 >= 0x11u) && (v202 = v201[8]) != 0 && (*(v200 + v202) & 4) != 0)
    {
      v203 = 1016;
    }

    else
    {
      v203 = 1000;
    }

    v204 = (a4 + v203);
    a2[2] = vadd_s32(*v204, a2[2]);
    *&a2[3] += *&v204[1];
  }

  v205 = a5;
  if ((*(a4 + 577) & 1) != 0 || (v206 = (*a3 - **a3), *v206 >= 0x2Fu) && (v207 = v206[23]) != 0 && (v208 = *(*a3 + v207), v208 <= 0x36) && ((1 << v208) & 0x44000000000008) != 0 || (v209 = (*v21 - **v21), *v209 >= 0x2Fu) && (v210 = v209[23]) != 0 && (v211 = *(*v21 + v210), v211 <= 0x36) && ((1 << v211) & 0x44000000000008) != 0 || (*(a3 + 42) & 0x4000) == 0)
  {
    if (sub_F71E38(a3))
    {
      v212 = 1040;
      v213 = 1036;
      v214 = 1032;
LABEL_361:
      v215 = a2[2].i32[1];
      a2[2].i32[0] += *(a4 + v214);
      a2[2].i32[1] = *(a4 + v213) + v215;
      *&a2[3] += *(a4 + v212);
      goto LABEL_362;
    }

    if (sub_F71F38(a3))
    {
      v212 = 1056;
      v213 = 1052;
      v214 = 1048;
      goto LABEL_361;
    }
  }

LABEL_362:
  if (*(a4 + 1112) || *(a4 + 1116) || *(a4 + 1120))
  {
    if (a6 != 2)
    {
      goto LABEL_396;
    }
  }

  else
  {
    if (*(a4 + 1128))
    {
      v216 = 0;
      if (a6 != 2)
      {
        goto LABEL_396;
      }
    }

    else
    {
      v216 = *(a4 + 1136) == 0;
      if (a6 != 2)
      {
        goto LABEL_396;
      }
    }

    if (v216)
    {
      goto LABEL_396;
    }
  }

  LOBYTE(v242) = 0;
  v217 = v11[2];
  if (v11[8].i8[4])
  {
    v218 = 0;
  }

  else
  {
    v218 = *(*&v217 + 37);
  }

  sub_10B9080(*&v217, a3[4] & 0xFFFFFFFFFFFFFFLL, v218, &v245);
  if (v245 == v246)
  {
    v219 = 1;
    if (!v245)
    {
      goto LABEL_379;
    }
  }

  else
  {
    v219 = **v245 == 0;
  }

  v246 = v245;
  operator delete(v245);
LABEL_379:
  LOBYTE(v242) = 0;
  v220 = v11[2];
  if (v11[8].i8[4])
  {
    v221 = 0;
  }

  else
  {
    v221 = *(*&v220 + 37);
  }

  sub_10B9080(*&v220, a3[9] & 0xFFFFFFFFFFFFFFLL, v221, &v245);
  if (v245 == v246)
  {
    if (v245)
    {
      v246 = v245;
      operator delete(v245);
    }
  }

  else
  {
    v222 = **v245 + 464 * v245[1];
    v246 = v245;
    operator delete(v245);
    if (v222)
    {
      v224 = v219;
    }

    else
    {
      v224 = 0;
    }

    if (v224)
    {
      v225 = 0.0;
      if (v11[673].i8[0] == 1 && (*(a4 + 1128) || *(a4 + 1132) || *(a4 + 1136)))
      {
        v225 = sub_112F704(&v11[9], v222);
      }

      v226 = sub_108CF40((a4 + 1128), v225, v223);
      v228 = *(a4 + 1120) + v227;
      v229 = *(a4 + 1116) + HIDWORD(v226) + a2[2].i32[1];
      a2[2].i32[0] += *(a4 + 1112) + v226;
      a2[2].i32[1] = v229;
      *&a2[3] += v228;
    }
  }

LABEL_396:
  if (v205 == 0x7FFFFFFF || a6 != 2 || v11[8].i32[0] == 0x7FFFFFFF || !*(a4 + 1144) && !*(a4 + 1148) && !*(a4 + 1152))
  {
    goto LABEL_397;
  }

  v238 = v11[2];
  v239 = a3[4] & 0xFFFFFFFFFFFFFFLL;
  if (v11[8].i8[4] == 1)
  {
    if (sub_2BDCE4(v238, v239, 0))
    {
      goto LABEL_397;
    }
  }

  else if (sub_2BDCDC(v238, v239))
  {
    goto LABEL_397;
  }

  v240 = v11[2];
  v241 = a3[9] & 0xFFFFFFFFFFFFFFLL;
  if (v11[8].i8[4] == 1)
  {
    if ((sub_2BDCE4(v240, v241, 0) & 1) == 0)
    {
      goto LABEL_397;
    }
  }

  else if (!sub_2BDCDC(v240, v241))
  {
    goto LABEL_397;
  }

  a2[2] = vadd_s32(*(a4 + 1144), a2[2]);
  *&a2[3] += *(a4 + 1152);
LABEL_397:
  v230 = (*a3 - **a3);
  if (*v230 < 0x2Fu || (v231 = v230[23]) == 0 || *(*a3 + v231) != 17)
  {
    v232 = (*v21 - **v21);
    if (*v232 >= 0x2Fu)
    {
      v233 = v232[23];
      if (v233)
      {
        if (*(*v21 + v233) == 17)
        {
          v234 = sub_3116D0(a3);
          v235 = v11[4];
          sub_2B365C(v235, v234, 0, (v235 + 7800));
          v236 = *(v235 + 7800);
          v237 = *(v235 + 7808);
          if (v237 != v236)
          {
            if (((v237 - v236) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }
        }
      }
    }
  }
}

void sub_10B7014(int32x2_t *a1, uint64_t a2, int **a3, unsigned int a4, uint64_t a5, unsigned int *a6, int a7)
{
  v14 = sub_3F80(a6);
  sub_10B558C(a1, a2, a3, a5, v14, a7);
  if (*(a2 + 56) == 1)
  {
    sub_10B0E88(a1, a2, a3, a4, a5, a6, a7);
    if (*(a2 + 56) == 1)
    {
      v16 = sub_F8634C(a2, (a2 + 32), v15);
      v17 = *(a2 + 16);
      if (!(v17 + v16))
      {
        *(a2 + 16) = v17 + 1;
      }
    }
  }
}

void sub_10B70FC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  *v0 = sub_3B1768(v3);
  v5[1] = sub_3B1090(v4);
  v5[2] = sub_3AF144(v4);
  v5[3] = sub_3B1AF0(v4);
  v6 = sub_3AF6B4(v4);
  v7 = v5[2];
  v5[4] = v6;
  v5[5] = v7;
  *(v5 + 48) = 1;
  v5[7] = sub_3B2A90(v4);
  *(v5 + 16) = sub_2BC500(v5[2]);
  *(v5 + 68) = v2;
  sub_112D984(v9, 2, v4);
  sub_10B850C((v5 + 9), v9);
  *(v5 + 5384) = 1;
  sub_3E3DF0(v9);
  BYTE7(v9[1]) = 18;
  strcpy(v9, "DrivingPathFinding");
  memset(v8, 0, sizeof(v8));
  sub_3AEC94(v4, v9, v8);
  operator new();
}

void sub_10B72F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
    if (*(v23 + v24) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v23 + v24) != 1)
  {
    goto LABEL_3;
  }

  sub_3E3DF0((v23 + 72));
  _Unwind_Resume(a1);
}

uint64_t sub_10B73AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  *(a1 + 56) = a7;
  *(a1 + 64) = sub_2BC500(a4);
  *(a1 + 68) = a8;
  *(a1 + 72) = 0;
  *(a1 + 5384) = 0;
  *(a1 + 5392) = 0;
  *(a1 + 5408) = 0;
  *(a1 + 5400) = 0;
  return a1;
}

uint64_t sub_10B7414(uint64_t a1, uint64_t a2, signed int a3, int a4)
{
  result = 0x7FFFFFFFLL;
  if (a4 == 2 && a3 != 0x7FFFFFFF && *(a2 + 176) == 1)
  {
    v6 = *(a1 + 64);
    if (v6 != 0x7FFFFFFF)
    {
      v7 = *(a2 + 172);
      v8 = v7 < 0 ? -5 : 5;
      if ((v7 / -10 + v6 + (((-103 * (v8 + v7 % 10)) >> 15) & 1) + ((-103 * (v8 + v7 % 10)) >> 10)) <= a3)
      {
        v9 = *(a2 + 168);
        if (v9 < 0)
        {
          v10 = -5;
        }

        else
        {
          v10 = 5;
        }

        if ((v9 / 10 + v6 + (((103 * (v10 + v9 % 10)) >> 15) & 1) + ((103 * (v10 + v9 % 10)) >> 10)) >= a3)
        {
          return v6;
        }

        else
        {
          return 0x7FFFFFFFLL;
        }
      }
    }
  }

  return result;
}

BOOL sub_10B7504(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 0;
  if (a4 == 2 && a3 != 0x7FFFFFFF)
  {
    if (*(a2 + 176) == 1 && (v6 = *(a1 + 64), v6 != 0x7FFFFFFF) && ((v7 = *(a2 + 172), v7 < 0) ? (v8 = -5) : (v8 = 5), (v7 / -10 + v6 + (((-103 * (v8 + v7 % 10)) >> 15) & 1) + ((-103 * (v8 + v7 % 10)) >> 10)) <= a3))
    {
      v9 = *(a2 + 168);
      if (v9 < 0)
      {
        v10 = -5;
      }

      else
      {
        v10 = 5;
      }

      return (v9 / 10 + v6 + (((103 * (v10 + v9 % 10)) >> 15) & 1) + ((103 * (v10 + v9 % 10)) >> 10)) >= a3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10B7604(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    return 0;
  }

  result = 0;
  if (a4 == 2 && *(a1 + 64) != 0x7FFFFFFF)
  {
    return *(a2 + 1144) || *(a2 + 1152) != 0;
  }

  return result;
}

void sub_10B765C(void *a1, uint64_t *a2, unint64_t a3, int ***a4, char a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a2;
  if (*a2)
  {
    v9 = a1;
    v10 = *(v5 + 176);
    v11 = *(v5 + 184);
    v12 = v11 - v10;
    if (v11 - v10 >= 24)
    {
      v13 = (a3 >> 16) & 0xFFFF0000 | (a3 << 32);
      v14 = a3 & 0xFF000000000000;
      if (v12 != 24)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        if (v14)
        {
          v16 = (a3 >> 16) & 0xFFFF0000 | (a3 << 32);
        }

        else
        {
          v16 = v13 + 1;
        }

        do
        {
          v17 = 6 * (v15 >> 2);
          _X17 = &v10[v17];
          __asm { PRFM            #0, [X17] }

          v23 = &v10[6 * (v15 >> 1)];
          _X16 = &v23[v17];
          __asm { PRFM            #0, [X16] }

          v26 = (*v23 << 32) | (*(v23 + 2) << 16);
          if (!*(v23 + 6))
          {
            ++v26;
          }

          if (v26 >= v16)
          {
            v27 = 0;
          }

          else
          {
            v27 = v15 >> 1;
          }

          v10 += 6 * v27;
          v15 -= v15 >> 1;
        }

        while (v15 > 1);
      }

      v28 = (*v10 << 32) | (*(v10 + 2) << 16);
      if (!*(v10 + 6))
      {
        ++v28;
      }

      if (!v14)
      {
        ++v13;
      }

      v10 += 6 * (v28 < v13);
    }

    if (v10 != v11)
    {
      v29 = 0;
      v30 = BYTE6(a3);
      v54 = WORD2(a3);
      v53 = 1 << a5;
      v31 = v10 + 4;
      do
      {
        v32 = v31 - 2;
        if (*(v31 - 4) != a3 || *(v31 - 6) != v54 || *(v31 - 10) != v30)
        {
          break;
        }

        if ((*(v31 - 1) & v53) == 0)
        {
          goto LABEL_20;
        }

        v33 = *(*a2 + 152) + 464 * *v31;
        v34 = **a4;
        v35 = *v34;
        v36 = (v34 - v35);
        v37 = *(v34 - v35);
        if (*(*a4 + 38))
        {
          if (v37 < 0x9B || !v36[77])
          {
            v38 = *v36;
            if (v38 <= 0x9A)
            {
              goto LABEL_44;
            }

LABEL_41:
            if (!v36[77])
            {
LABEL_44:
              if (v38 <= 0x38)
              {
                goto LABEL_62;
              }

              goto LABEL_45;
            }

            v40 = 0;
            if ((*(v34 + v36[77]) & 2) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_51;
          }

          if ((*(v34 + v36[77]) & 2) != 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v37 < 0x9B || !v36[77])
          {
            v38 = *v36;
            if (v38 <= 0x9A)
            {
              goto LABEL_54;
            }

            goto LABEL_49;
          }

          if (*(v34 + v36[77]))
          {
LABEL_29:
            if (sub_38F5C4(*(*a2 + 152) + 464 * *v31))
            {
              goto LABEL_67;
            }

            v34 = **a4;
            v36 = (v34 - *v34);
            v38 = *v36;
            _CF = v38 >= 0x9B;
            if (*(*a4 + 38))
            {
LABEL_39:
              if (!_CF)
              {
                goto LABEL_44;
              }

              goto LABEL_41;
            }

            goto LABEL_31;
          }
        }

        v36 = (v34 - v35);
        v38 = *(v34 - v35);
        _CF = v38 >= 0x9B;
        if (*(*a4 + 38))
        {
          goto LABEL_39;
        }

LABEL_31:
        if (!_CF)
        {
          goto LABEL_54;
        }

LABEL_49:
        if (!v36[77])
        {
LABEL_54:
          if (v38 <= 0x38)
          {
            goto LABEL_62;
          }

          goto LABEL_55;
        }

        v40 = 1;
        if (*(v34 + v36[77]))
        {
          goto LABEL_62;
        }

LABEL_51:
        if (!v40)
        {
          if (v38 < 0x39)
          {
            goto LABEL_62;
          }

LABEL_45:
          v41 = v36[28];
          if (!v41)
          {
            goto LABEL_62;
          }

          v42 = *(v34 + v41);
          if ((v42 & 2) != 0)
          {
            goto LABEL_59;
          }

          goto LABEL_57;
        }

        if (v38 < 0x39)
        {
          goto LABEL_62;
        }

LABEL_55:
        v43 = v36[28];
        if (!v43)
        {
          goto LABEL_62;
        }

        v42 = *(v34 + v43);
        if (v42)
        {
          goto LABEL_59;
        }

LABEL_57:
        if ((v42 & 7) != 4 && (v42 & 0x23) != 0x20)
        {
          goto LABEL_62;
        }

LABEL_59:
        if (sub_38F608(v33))
        {
          goto LABEL_67;
        }

LABEL_62:
        v44 = sub_38F51C(v33, 0);
        if (*(v33 + 96) == 14)
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        if (v45 == 1 && *a4[1] == 1)
        {
LABEL_67:
          if ((sub_38F7F0(*(*a2 + 152) + 464 * *v31) & 1) == 0)
          {
            v52 = v30;
            v51 = v9;
            v46 = v29 >> 4;
            if (((v29 >> 4) + 1) >> 60)
            {
              sub_1794();
            }

            if (v29 >> 4 != -1)
            {
              if (!(((v29 >> 4) + 1) >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v47 = (16 * v46);
            v48 = *v31;
            *v47 = *a2 + 152;
            v47[1] = v48;
            v49 = 16 * v46 + 16;
            memcpy(0, 0, v29);
            v9 = v51;
            *v51 = 0;
            v51[1] = v49;
            v50 = v49;
            v51[2] = 0;
            v30 = v52;
            v29 = v50;
            v51[1] = v50;
          }
        }

LABEL_20:
        v31 += 3;
      }

      while (v32 + 3 != *(v5 + 184));
    }

    if (a2[4])
    {
      v55 = off_26751C8;
      v56 = *a4;
      v57 = &v55;
      sub_2BEDA8(a2, a3, v9, &v55);
      if (v57 == &v55)
      {
        ((*v57)[4])(v57);
      }

      else if (v57)
      {
        (*v57)[5]();
      }
    }
  }
}

void sub_10B7BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    *(a12 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10B7C14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (*(a1 + 68))
  {
    sub_10B7D5C(&v14, v6, a2, 0);
    if (*(a1 + 68))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10B7D5C(&v14, v6, a2, *(v6 + 37));
    if (*(a1 + 68))
    {
      goto LABEL_7;
    }
  }

  if (sub_2BCD18(*(a1 + 16), a2, a3))
  {
    v7 = 1;
    v8 = v14;
    goto LABEL_16;
  }

LABEL_7:
  v8 = v14;
  if (v14 == v15)
  {
LABEL_15:
    v7 = 0;
  }

  else
  {
    v9 = v14;
    while (1)
    {
      v10 = **v9 + 464 * v9[1];
      if (*(v10 + 8) - *v10 == 24)
      {
        v12 = **v10;
        v11 = *(*v10 + 8);
        if (v11 - v12 == 16 && (a2 & 0xFFFFFFFFFFFFFFLL) == (*v12 & 0xFFFFFFFFFFFFFFLL) && (a3 & 0xFFFFFFFFFFFFFFLL) == (*(v11 - 8) & 0xFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v9 += 2;
      if (v9 == v15)
      {
        goto LABEL_15;
      }
    }

    v7 = 1;
  }

LABEL_16:
  if (v8)
  {
    v15 = v8;
    operator delete(v8);
  }

  return v7;
}

void sub_10B7D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10B7D5C(void *a1, uint64_t *a2, unint64_t a3, char a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (*a2)
  {
    v8 = *(v4 + 176);
    v9 = *(v4 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a3 >> 16) & 0xFFFF0000 | (a3 << 32);
      v12 = a3 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a3 >> 16) & 0xFFFF0000 | (a3 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a3);
      v35 = WORD2(a3);
      v34 = 1 << a4;
      v29 = v8 + 4;
      do
      {
        v30 = v29 - 2;
        if (*(v29 - 4) != a3 || *(v29 - 6) != v35 || *(v29 - 10) != v28)
        {
          break;
        }

        if ((*(v29 - 1) & v34) != 0)
        {
          v31 = *(*a2 + 152) + 464 * *v29;
          v32 = sub_38F51C(v31, 0);
          v33 = *(v31 + 96) == 9 ? v32 : 0;
          if (v33 == 1 && (sub_38F7F0(*(*a2 + 152) + 464 * *v29) & 1) == 0)
          {
            operator new();
          }
        }

        v29 += 3;
      }

      while (v30 + 3 != *(v4 + 184));
    }

    if (a2[4])
    {
      v36[0] = off_2675248;
      v37 = v36;
      sub_2BEDA8(a2, a3, a1, v36);
      if (v37 == v36)
      {
        (*(*v37 + 32))(v37);
      }

      else if (v37)
      {
        (*(*v37 + 40))();
      }
    }
  }
}

void sub_10B8120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a12)
  {
    *(a11 + 8) = a12;
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10B8164(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 < 0x9B || !v3[77] || (*&v2[v3[77]] & 0xALL) == 0)
    {
      return 0;
    }
  }

  else if (v4 < 0x9B || !v3[77] || (*&v2[v3[77]] & 9) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 42);
  v6 = v5 & 7;
  v7 = v3[13];
  if (v7)
  {
    v8 = v2[v7];
    v9 = (v6 + 1) >> 1;
    if (v8 <= 5)
    {
      v9 = v5 & 7;
    }

    v10 = v9 + ((v5 >> 2) & 0xE);
    v11 = a2[5];
    v12 = (v11 - *v11);
    if (*v12 < 0x1Bu)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 0;
    v10 = v6 + ((v5 >> 2) & 0xE);
    v11 = a2[5];
    v12 = (v11 - *v11);
    if (*v12 < 0x1Bu)
    {
      goto LABEL_23;
    }
  }

  v14 = v12[13];
  if (v14)
  {
    if (v8 == *(v11 + v14))
    {
      v15 = v10;
    }

    else
    {
      v15 = v10 + 1;
    }

    if (v15 >= 3)
    {
      return 3;
    }

    else
    {
      return v15;
    }
  }

LABEL_23:
  if (v8)
  {
    v16 = v10 + 1;
  }

  else
  {
    v16 = v10;
  }

  if (v16 >= 3)
  {
    return 3;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_10B8278(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (v3 >= 0x9B)
  {
    v4 = v2[77];
    if (v2[77])
    {
      v4 = (*&v1[v4] >> 8) & 1;
    }
  }

  else
  {
    v4 = 0;
    if (v3 < 0x2F)
    {
      v5 = 0;
      goto LABEL_14;
    }
  }

  if (v2[23] && !v1[v2[23]])
  {
    v4 |= 2uLL;
    v5 = 1;
    if (v3 < 0x9B)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 1;
    if (v3 < 0x9B)
    {
      goto LABEL_14;
    }
  }

  if (v2[77] && (v1[v2[77]] & 8) != 0)
  {
    v4 |= 4uLL;
  }

LABEL_14:
  if (*(a1 + 38))
  {
    if (v3 < 0x4D || !v2[38] || (v1[v2[38]] & 2) == 0 && (*&v1[v2[38]] & 8) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v3 < 0x4D || !v2[38] || (v1[v2[38]] & 1) == 0 && (*&v1[v2[38]] & 4) == 0)
  {
LABEL_26:
    v6 = v4 | 0x1B0;
    if (!v5)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v6 = v4 | 0x9B0;
  if (!v5)
  {
    goto LABEL_33;
  }

LABEL_27:
  if (!v2[23] || ((v7 = v1[v2[23]], v8 = v7 > 0x2D, v9 = (1 << v7) & 0x208040000000, !v8) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
LABEL_33:
    if (v3 < 0x1B || !v2[13])
    {
      goto LABEL_42;
    }

    v11 = v3 >= 0x9B && v1[v2[13]] >= 8u;
    if (!v11 || !v2[77] || (v1[v2[77] + 3] & 2) == 0)
    {
      goto LABEL_42;
    }
  }

  v6 |= 0x1000uLL;
LABEL_42:
  if (v3 >= 0x9B)
  {
    v12 = v2[77];
    if (v12)
    {
      if ((*&v1[v12] & 0x600000) != 0)
      {
        v6 |= 0x80000uLL;
      }
    }
  }

  return v6 | 0x200;
}

BOOL sub_10B8408(int **a1, int a2)
{
  v2 = (*a1 - **a1);
  if (*v2 >= 0x9Bu)
  {
    v3 = v2[77];
    if (v3)
    {
      v4 = *(*a1 + v3);
      if ((v4 & 0x1000) != 0 && a2)
      {
        v5 = 0x200000000;
        if (!*(a1 + 38))
        {
          v5 = 0x100000000;
        }

        if ((v5 & v4) == 0)
        {
          goto LABEL_17;
        }
      }

      else if ((v4 & 0x1000) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = a1[5];
  v7 = (v6 - *v6);
  if (*v7 >= 0x9Bu)
  {
    v8 = v7[77];
    if (v8)
    {
      v9 = *(v6 + v8);
      if ((v9 & 0x1000) != 0 && a2)
      {
        v10 = 0x200000000;
        if (!*(a1 + 78))
        {
          v10 = 0x100000000;
        }

        if ((v10 & v9) != 0)
        {
          goto LABEL_17;
        }

        return 1;
      }

      if ((v9 & 0x1000) != 0)
      {
        return 1;
      }
    }
  }

LABEL_17:
  v11 = a1[6];
  if (!v11)
  {
    return 0;
  }

  if (*(a1 + 78))
  {
    v12 = 4096;
  }

  else
  {
    v12 = 2048;
  }

  v13 = (v11 - *v11);
  return *v13 >= 0x11u && (v14 = v13[8]) != 0 && (*(v11 + v14) & v12) != 0;
}

uint64_t sub_10B850C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  v13 = a2[12];
  v14 = a2[13];
  v15 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v14;
  *(a1 + 224) = v15;
  *(a1 + 192) = v13;
  v16 = *(a2 + 248);
  v17 = *(a2 + 264);
  v18 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 37);
  *(a1 + 264) = v17;
  *(a1 + 280) = v18;
  *(a1 + 248) = v16;
  v19 = a2[20];
  v20 = *(a2 + 42);
  *(a1 + 304) = a2[19];
  *(a1 + 320) = v19;
  *(a1 + 336) = v20;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  v22 = *(a2 + 43);
  v21 = *(a2 + 44);
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  memcpy((a1 + 368), a2 + 23, 0x222uLL);
  sub_1073240(a1 + 920, a2 + 920);
  *(a1 + 5120) = a2[320];
  *(a1 + 5136) = 0;
  *(a1 + 5144) = 0u;
  *(a1 + 5136) = a2[321];
  *(a1 + 5152) = *(a2 + 644);
  *(a2 + 644) = 0;
  a2[321] = 0u;
  *(a1 + 5160) = 0u;
  *(a1 + 5176) = 0;
  *(a1 + 5160) = *(a2 + 645);
  *(a1 + 5168) = a2[323];
  *(a2 + 5160) = 0u;
  *(a2 + 647) = 0;
  *(a1 + 5200) = 0;
  *(a1 + 5184) = 0u;
  *(a1 + 5184) = a2[324];
  *(a1 + 5200) = *(a2 + 650);
  *(a2 + 650) = 0;
  a2[324] = 0u;
  *(a1 + 5208) = *(a2 + 651);
  *(a1 + 5216) = *(a2 + 652);
  *(a1 + 5224) = 0;
  *(a1 + 5232) = 0u;
  *(a1 + 5224) = *(a2 + 653);
  *(a1 + 5232) = a2[327];
  *(a2 + 5224) = 0u;
  *(a2 + 655) = 0;
  *(a1 + 5264) = 0;
  *(a1 + 5248) = 0u;
  *(a1 + 5248) = a2[328];
  *(a1 + 5264) = *(a2 + 658);
  *(a2 + 658) = 0;
  a2[328] = 0u;
  v23 = *(a2 + 659);
  *(a2 + 659) = 0;
  *(a1 + 5272) = v23;
  *(a1 + 5280) = *(a2 + 660);
  *(a2 + 660) = 0;
  v24 = *(a2 + 661);
  *(a1 + 5288) = v24;
  v25 = *(a2 + 662);
  *(a1 + 5296) = v25;
  *(a1 + 5304) = *(a2 + 1326);
  if (v25)
  {
    v26 = *(v24 + 8);
    v27 = *(a1 + 5280);
    if ((v27 & (v27 - 1)) != 0)
    {
      if (v26 >= v27)
      {
        v26 %= v27;
      }
    }

    else
    {
      v26 &= v27 - 1;
    }

    *(v23 + 8 * v26) = a1 + 5288;
    *(a2 + 661) = 0;
    *(a2 + 662) = 0;
  }

  return a1;
}

void sub_10B8778(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 344);
  if (v3)
  {
    *(v1 + 352) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10B880C(uint64_t a1, uint64_t a2)
{
  *a2 = off_26751C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10B883C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 38);
  v7 = **v4;
  v8 = (*v4 - v7);
  v9 = *v8;
  if (!v6)
  {
    if (v9 < 0x9B)
    {
      goto LABEL_27;
    }

    if (!v8[77])
    {
      goto LABEL_28;
    }

    if (*(v5 + v8[77]))
    {
      goto LABEL_5;
    }

LABEL_11:
    v8 = (v5 - v7);
    v12 = v9 >= 0x9B;
    if (!v6)
    {
      goto LABEL_22;
    }

LABEL_12:
    if (v12)
    {
      if (v8[77] && (*(v5 + v8[77]) & 2) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (v9 <= 0x38)
    {
      goto LABEL_34;
    }

LABEL_18:
    v13 = v8[28];
    if (!v13)
    {
      goto LABEL_34;
    }

    v14 = *(v5 + v13);
    if ((v14 & 2) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (v9 < 0x9B)
  {
    goto LABEL_17;
  }

  if (!v8[77])
  {
    goto LABEL_18;
  }

  if ((*(v5 + v8[77]) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (sub_38F5C4(a2))
  {
    v10 = 1;
    return v10 & 1;
  }

  v15 = *(a1 + 8);
  v5 = *v15;
  v16 = *(v15 + 38);
  v17 = **v15;
  v18 = -v17;
  v9 = *(v5 - v17);
  v8 = (v5 + v18);
  v12 = v9 >= 0x9B;
  if (v16)
  {
    goto LABEL_12;
  }

LABEL_22:
  if (v12)
  {
    if (v8[77] && (*(v5 + v8[77]) & 1) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (v9 <= 0x38)
  {
    goto LABEL_34;
  }

LABEL_28:
  v19 = v8[28];
  if (!v19)
  {
    goto LABEL_34;
  }

  v14 = *(v5 + v19);
  if ((v14 & 1) == 0)
  {
LABEL_30:
    if ((v14 & 7) != 4 && (v14 & 0x23) != 0x20)
    {
      goto LABEL_34;
    }
  }

LABEL_32:
  if (sub_38F608(a2))
  {
    return 1;
  }

LABEL_34:
  v20 = sub_38F51C(a2, 0);
  v10 = 0;
  if (!v20 || *(a2 + 96) != 14)
  {
    return v10 & 1;
  }

  return **(a1 + 16) & 1;
}

uint64_t sub_10B89DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16DrivingEvaluator10is_blockedERKNS_4data11RoadSegmentINS2_21DirectedRoadSegmentIdEEERKNS0_19DrivingCostFunctionEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16DrivingEvaluator10is_blockedERKNS_4data11RoadSegmentINS2_21DirectedRoadSegmentIdEEERKNS0_19DrivingCostFunctionEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16DrivingEvaluator10is_blockedERKNS_4data11RoadSegmentINS2_21DirectedRoadSegmentIdEEERKNS0_19DrivingCostFunctionEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16DrivingEvaluator10is_blockedERKNS_4data11RoadSegmentINS2_21DirectedRoadSegmentIdEEERKNS0_19DrivingCostFunctionEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_10B8ADC(uint64_t a1, uint64_t a2)
{
  LODWORD(result) = sub_38F51C(a2, 0);
  if (*(a2 + 96) == 9)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10B8B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16DrivingEvaluator31has_simple_maneuver_restrictionENS_4data21DirectedRoadSegmentIdES3_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16DrivingEvaluator31has_simple_maneuver_restrictionENS_4data21DirectedRoadSegmentIdES3_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16DrivingEvaluator31has_simple_maneuver_restrictionENS_4data21DirectedRoadSegmentIdES3_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16DrivingEvaluator31has_simple_maneuver_restrictionENS_4data21DirectedRoadSegmentIdES3_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_10B8B8C(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v12 = a2 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a2);
      v29 = WORD2(a2);
      v32 = 1 << a3;
      v30 = v8 + 4;
      do
      {
        v31 = v30 - 2;
        if (*(v30 - 4) != a2 || *(v30 - 6) != v29 || *(v30 - 10) != v28)
        {
          break;
        }

        if ((*(v30 - 1) & v32) != 0 && sub_38F6F0(*(*a1 + 152) + 464 * *v30) && (sub_38F7F0(*(*a1 + 152) + 464 * *v30) & 1) == 0)
        {
          operator new();
        }

        v30 += 3;
      }

      while (v31 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      v33[0] = off_26752C8;
      v34 = v33;
      sub_2BEDA8(a1, a2, a4, v33);
      if (v34 == v33)
      {
        (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        (*(*v34 + 40))();
      }
    }
  }
}

void sub_10B8F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a13)
  {
    *(a12 + 8) = a13;
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10B9008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK3msl7routing16DrivingEvaluator27accumulate_transition_costsINS0_22FineGrainedAccumulatorEEEvRT_RKNS0_17DrivingRoutingArcERKNS0_19DrivingCostFunctionENS_6common9TimeStampENS0_18RequestTrafficTypeEENKUlRKNS_4data11RoadSegmentINSF_21DirectedRoadSegmentIdEEEE_clESK_EUlRKNSF_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK3msl7routing16DrivingEvaluator27accumulate_transition_costsINS0_22FineGrainedAccumulatorEEEvRT_RKNS0_17DrivingRoutingArcERKNS0_19DrivingCostFunctionENS_6common9TimeStampENS0_18RequestTrafficTypeEENKUlRKNS_4data11RoadSegmentINSF_21DirectedRoadSegmentIdEEEE_clESK_EUlRKNSF_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK3msl7routing16DrivingEvaluator27accumulate_transition_costsINS0_22FineGrainedAccumulatorEEEvRT_RKNS0_17DrivingRoutingArcERKNS0_19DrivingCostFunctionENS_6common9TimeStampENS0_18RequestTrafficTypeEENKUlRKNS_4data11RoadSegmentINSF_21DirectedRoadSegmentIdEEEE_clESK_EUlRKNSF_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK3msl7routing16DrivingEvaluator27accumulate_transition_costsINS0_22FineGrainedAccumulatorEEEvRT_RKNS0_17DrivingRoutingArcERKNS0_19DrivingCostFunctionENS_6common9TimeStampENS0_18RequestTrafficTypeEENKUlRKNS_4data11RoadSegmentINSF_21DirectedRoadSegmentIdEEEE_clESK_EUlRKNSF_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_10B9080(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 184);
    v10 = v9 - v8;
    if (v9 - v8 >= 24)
    {
      v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v12 = a2 & 0xFF000000000000;
      if (v10 != 24)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        if (v12)
        {
          v14 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v14 = v11 + 1;
        }

        do
        {
          v15 = 6 * (v13 >> 2);
          _X17 = &v8[v15];
          __asm { PRFM            #0, [X17] }

          v22 = &v8[6 * (v13 >> 1)];
          _X16 = &v22[v15];
          __asm { PRFM            #0, [X16] }

          v25 = (*v22 << 32) | (*(v22 + 2) << 16);
          if (!*(v22 + 6))
          {
            ++v25;
          }

          if (v25 >= v14)
          {
            v26 = 0;
          }

          else
          {
            v26 = v13 >> 1;
          }

          v8 += 6 * v26;
          v13 -= v13 >> 1;
        }

        while (v13 > 1);
      }

      v27 = (*v8 << 32) | (*(v8 + 2) << 16);
      if (!*(v8 + 6))
      {
        ++v27;
      }

      if (!v12)
      {
        ++v11;
      }

      v8 += 6 * (v27 < v11);
    }

    if (v8 != v9)
    {
      v28 = BYTE6(a2);
      v29 = WORD2(a2);
      v32 = 1 << a3;
      v30 = v8 + 4;
      do
      {
        v31 = v30 - 2;
        if (*(v30 - 4) != a2 || *(v30 - 6) != v29 || *(v30 - 10) != v28)
        {
          break;
        }

        if ((*(v30 - 1) & v32) != 0 && sub_38F6F0(*(*a1 + 152) + 464 * *v30) && (sub_38F7F0(*(*a1 + 152) + 464 * *v30) & 1) == 0)
        {
          operator new();
        }

        v30 += 3;
      }

      while (v31 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      v33[0] = off_2675348;
      v34 = v33;
      sub_2BEDA8(a1, a2, a4, v33);
      if (v34 == v33)
      {
        (*(*v34 + 32))(v34);
      }

      else if (v34)
      {
        (*(*v34 + 40))();
      }
    }
  }
}