uint64_t sub_76A404(uint64_t *a1, int **a2, void *a3)
{
  if (*(a1[3] + 1159) != 1)
  {
    return 0;
  }

  v3 = (*a2 - **a2);
  if (*v3 < 0x63u)
  {
    return 0;
  }

  v4 = v3[49];
  if (!v4 || *(*a2 + v4) != 12)
  {
    return 0;
  }

  sub_31BCE0(*a1, a2, a2 + 32);
  v8 = a2[32];
  v9 = a2[33];
  if (v8 != v9)
  {
    while (1)
    {
      v10 = (*v8 - **v8);
      if (*v10 >= 0x63u)
      {
        v11 = v10[49];
        if (v11)
        {
          if (*(*v8 + v11) == 12)
          {
            break;
          }
        }
      }

      v8 += 10;
      if (v8 == v9)
      {
        return 0;
      }
    }
  }

  if (v8 == v9)
  {
    return 0;
  }

  v12 = sub_70E2E0(a1[1], a2 + 10, a2);
  v13 = sub_6B8D68(a3 + 1, 0);
  v14 = (*v13 - **v13);
  if (*v14 >= 0x9Bu && (v15 = v14[77]) != 0 && (*(*v13 + v15 + 1) & 0x80) != 0)
  {
    v24 = 0;
    v20 = a1;
    v21 = a2;
  }

  else
  {
    v16 = sub_6B8D68(a3 + 1, 0);
    v17 = *v16;
    v18 = *(v16 + 38);
    v19 = (*v16 - **v16);
    v20 = a1;
    v21 = a2;
    if (v18)
    {
      if (*v19 >= 0x9Bu)
      {
        v22 = v19[77];
        if (v22)
        {
          v23 = 2;
LABEL_22:
          v24 = (*(v17 + v22) & v23) != 0;
          goto LABEL_25;
        }
      }
    }

    else if (*v19 >= 0x9Bu)
    {
      v22 = v19[77];
      if (v22)
      {
        v23 = 1;
        goto LABEL_22;
      }
    }

    v24 = 0;
  }

LABEL_25:
  v25 = v21[32];
  v26 = v21[33];
  if (v25 != v26)
  {
    if (v24)
    {
      while (1)
      {
        if (*(v25 + 18) != *(v21 + 58) || v25[8] != *(v21 + 28))
        {
          v28 = sub_70E2E0(v20[1], a2 + 10, v25);
          v21 = a2;
          v20 = a1;
          if (v28 > v12)
          {
            break;
          }
        }

        v25 += 10;
        if (v25 == v26)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      while (1)
      {
        if (*(v25 + 18) != *(v21 + 58) || v25[8] != *(v21 + 28))
        {
          v30 = sub_70E2E0(v20[1], a2 + 10, v25);
          v21 = a2;
          v20 = a1;
          if (v30 < v12)
          {
            break;
          }
        }

        v25 += 10;
        if (v25 == v26)
        {
LABEL_42:
          v25 = v26;
          break;
        }
      }
    }
  }

  if (v25 != v21[33])
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0x1000000000000;
    v37 = 0;
    v31 = *v25;
    v32 = *(v25 + 1);
    v36 = *(v25 + 4);
    v34 = v31;
    v35 = v32;
    sub_76AC3C(v20, &v34, 0, a3);
    return 1;
  }

  return 0;
}

uint64_t sub_76A6A8(uint64_t *a1, uint64_t a2, void *a3)
{
  result = sub_31B8F4(*a1, a2, (a2 + 256));
  v12 = 0u;
  v13 = 0u;
  v14 = 0x1000000000000;
  v16 = 0;
  v7 = *(a2 + 256);
  v8 = *(a2 + 264);
  v9 = v7;
  if (v7 != v8)
  {
    v9 = *(a2 + 256);
    while ((v9[4] & 0xFFFFFFFFFFFFFFLL) != (*(a2 + 72) & 0xFFFFFFFFFFFFFFLL))
    {
      v9 += 5;
      if (v9 == v8)
      {
        v9 = *(a2 + 264);
        break;
      }
    }
  }

  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a2 + 160;
  v15 = v9 != v8;
  *(a2 + 281) |= v9 != v8;
  if (v9 == v8)
  {
    v18[0] = v17;
    v18[1] = a1;
    if (v7 != v8)
    {
      while (1)
      {
        result = sub_76CAA0(v18, v7);
        if (result)
        {
          break;
        }

        v7 += 5;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }

      v8 = *(a2 + 264);
    }

    v9 = v7;
    if (v7 == v8)
    {
      v9 = *(a2 + 256);
      v18[0] = v17;
      if (v9 != v8)
      {
        while (1)
        {
          result = sub_76C674(v18, v9);
          if (result)
          {
            break;
          }

          v9 += 5;
          if (v9 == v8)
          {
            v9 = v8;
            break;
          }
        }

        v8 = *(a2 + 264);
      }
    }
  }

  if (v9 != v8)
  {
    v10 = v9[4];
    v11 = *(v9 + 1);
    v12 = *v9;
    v13 = v11;
    v14 = v10;
    if (v10)
    {
      if (v12)
      {
        if (*(&v12 + 1))
        {
          return sub_76AC3C(a1, &v12, 0, a3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_76A830(uint64_t *a1, __int128 *a2, char a3, uint64_t a4)
{
  *&v15[14] = *(a2 + 30);
  v5 = a2[1];
  v14 = *a2;
  *v15 = v5;
  v6 = *(a2 + 39);
  v16 = *(a2 + 38) == 0;
  v17 = v6;
  v19 = 1;
  v7 = (v14 - *v14);
  if (*v7 >= 0x63u && (v8 = v7[49]) != 0 && *(v14 + v8) == 12)
  {
    if (*(a2 + 28) == *(a2 + 38))
    {
      v9 = *(a2 + 78);
      v10 = *(a2 + 58);
      goto LABEL_8;
    }
  }

  else if (*(a2 + 8) == *(a2 + 18))
  {
    v9 = *(a2 + 38);
    v10 = *(a2 + 18);
LABEL_8:
    v18 = *(a4 + 88) == -1 && v10 == v9;
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v18 = 0;
  if (a3)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (*(a2 + 58) && *(a2 + 25) && *(a2 + 26))
  {
    v11 = a1;
    sub_76AC3C(a1, a2 + 25, *(a2 + 31), a4);
    a1 = v11;
  }

LABEL_15:
  sub_76AC3C(a1, &v14, *(a4 + 128), a4);
  result = sub_765EDC(*(a4 + 72) - 104);
  v13 = result + 18000;
  if (((result + 18000) >> 5) >= 0x465u)
  {
    v13 = result - 18000;
  }

  *(a4 + 152) = v13;
  return result;
}

uint64_t *sub_76A998(uint64_t *result, int **a2, uint64_t a3, void *a4)
{
  v5 = a3 + 200;
  if (*(a3 + 232))
  {
    v6 = *(a3 + 200) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && *(a3 + 208) != 0)
  {
    v12 = (*a2 - **a2);
    if (*v12 < 0x63u || (v13 = v12[49]) == 0 || *(*a2 + v13) != 12 || (v14 = *(a4[2] - 40), v15 = (v14 - *v14), *v15 < 0x63u) || (v16 = v15[49]) == 0 || *(v14 + v16) != 12 || (v17 = result, v18 = a4, v19 = a2, v20 = sub_3116D0(a2), v21 = sub_3116D0(v5), a2 = v19, a4 = v18, v22 = v21, result = v17, v20 != v22))
    {
      v29 = result;
      v30 = a2;
      v31 = a4;
      sub_76AC3C(result, v5, *(a3 + 248), a4);
      v32 = v31[16];
      v33 = v29;
      v34 = v30;
      v35 = v31;
LABEL_26:
      result = sub_76AC3C(v33, v34, v32, v35);
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(a3 + 232) = 0x1000000000000;
      return result;
    }

    v23 = sub_712D18(v17[1], v19);
    v24 = v19;
    v25 = v18;
    if (v23)
    {
      goto LABEL_22;
    }

    v37 = (*v19 - **v19);
    v38 = *v37;
    if (*(v19 + 38))
    {
      if (v38 < 0x9B)
      {
        goto LABEL_38;
      }

      v39 = v37[77];
      if (!v39)
      {
        goto LABEL_38;
      }

      v40 = 2;
    }

    else
    {
      if (v38 < 0x9B)
      {
        goto LABEL_38;
      }

      v39 = v37[77];
      if (!v39)
      {
        goto LABEL_38;
      }

      v40 = 1;
    }

    if ((*(*v19 + v39) & v40) != 0)
    {
LABEL_22:
      if (*(a3 + 240) == 1)
      {
        v26 = sub_70E2E0(v17[1], v5, (a3 + 120));
        v27 = sub_70E2E0(v17[1], v19, (a3 + 120));
        v24 = v19;
        v25 = v18;
        if (fabs(v27) < fabs(v26))
        {
          v28 = *(a3 + 240);
          *(a3 + 240) = *(v19 + 40);
          *(v19 + 40) = v28;
        }
      }
    }

LABEL_38:
    sub_76AC3C(v17, v24, *(a3 + 248), v25);
    v32 = v25[16];
    v33 = v17;
    v34 = v5;
    v35 = v25;
    goto LABEL_26;
  }

  if (*(result[3] + 1159) == 1 && (v8 = (*a2 - **a2), *v8 >= 0x63u) && (v9 = v8[49]) != 0 && *(*a2 + v9) == 12)
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *(a3 + 226) = *(a2 + 26);
    *v5 = v10;
    *(a3 + 216) = v11;
    *(a3 + 248) = a4[16];
  }

  else
  {
    v36 = a4[16];

    return sub_76AC3C(result, a2, v36, a4);
  }

  return result;
}

uint64_t sub_76AC3C(uint64_t *a1, int **a2, uint64_t a3, void *a4)
{
  v8 = a4[9];
  v9 = (a4 + 8);
  if (a4[8] != v8)
  {
    result = sub_76B500(a1, a2, v8 - 104);
    if (result)
    {
      v11 = a4[9] - 104;
      v12 = 1;
      if (a2[5])
      {
        goto LABEL_8;
      }

LABEL_6:
      result = sub_712D18(a1[1], a2);
      if (result)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v15 = *a2;
        v16 = (*a2 - **a2);
        v17 = *v16;
        if (*(a2 + 38))
        {
          if (v17 >= 0x9B)
          {
            v18 = v16[77];
            if (v18)
            {
              if (!(v12 & 1 | ((*(v15 + v18) & 2) == 0)))
              {
                goto LABEL_8;
              }
            }
          }
        }

        else if (v17 >= 0x9B)
        {
          v19 = v16[77];
          if (v19)
          {
            if (!(v12 & 1 | ((*(v15 + v19) & 1) == 0)))
            {
              goto LABEL_8;
            }
          }
        }
      }

      v14 = 80;
      v13 = v11;
      goto LABEL_18;
    }
  }

  result = sub_7690EC(v9);
  v11 = result;
  v12 = 0;
  if ((a2[5] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v13 = v11 + 40;
  v14 = 88;
LABEL_18:
  v20 = *a2;
  v21 = *(a2 + 1);
  *(v13 + 32) = a2[4];
  *v13 = v20;
  *(v13 + 16) = v21;
  *(v11 + v14) = a3;
  v22 = *a2;
  v23 = (*a2 - **a2);
  v24 = *v23;
  if (v24 < 0x2F || (v25 = v23[23]) == 0)
  {
    *(v11 + 96) = *(v11 + 96);
    if (*(a2 + 40) != 1)
    {
      return result;
    }

    goto LABEL_27;
  }

  v26 = *(v22 + v25);
  if (v26 > 0x2A)
  {
    if (v26 == 44)
    {
      goto LABEL_34;
    }

    if (v26 != 43)
    {
      goto LABEL_36;
    }
  }

  else if (v26 != 6 && v26 != 12)
  {
LABEL_36:
    *(v11 + 96) |= *(v22 + v25) == 14;
    if (*(a2 + 40) != 1)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v24 >= 0x9B)
  {
    v28 = v23[77];
    if (v28)
    {
      if ((*(v22 + v28 + 2) & 0x20) != 0)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_34:
  *(v11 + 96) |= 1u;
  if (*(a2 + 40) == 1)
  {
LABEL_27:
    a4[11] = 0x4EC4EC4EC4EC4EC5 * ((a4[9] - a4[8]) >> 3) - 1;
  }

  return result;
}

BOOL sub_76AE6C(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v17 = a1;
  sub_76AF78(&v17, a2, v13);
  sub_76AF78(&v17, a3, v10);
  v4 = v14;
  if (v14)
  {
    while (!sub_138B0(v10, (v4 + 2)))
    {
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_11;
  }

LABEL_4:
  v5 = v15;
  if (v15)
  {
    while (!sub_76C7DC(v11, v5 + 4))
    {
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_11:
    v8 = 1;
    goto LABEL_12;
  }

LABEL_7:
  v6 = v16;
  if (v16)
  {
    while (1)
    {
      v7 = sub_3A8760(v12, v6 + 2);
      v8 = v7 != 0;
      if (v7)
      {
        break;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

LABEL_12:
  sub_76C408(v10);
  sub_76C408(v13);
  return v8;
}

void sub_76AF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_76C408(va);
  _Unwind_Resume(a1);
}

void sub_76AF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_76C408(va);
  sub_76C408(va1);
  _Unwind_Resume(a1);
}

void sub_76AF78(uint64_t **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[1];
  v77 = *a2;
  v78 = v5;
  v79 = *(a2 + 4);
  v75 = 0uLL;
  v76 = 0;
  *v72 = 0u;
  v73 = 0u;
  v74 = 1065353216;
  *v69 = 0u;
  v70 = 0u;
  v71 = 1065353216;
  *v66 = 0u;
  *v67 = 0u;
  v68 = 1065353216;
  v6 = v4[3];
  if (*(v6 + 1048) >= 1)
  {
    v7 = 0;
    v8 = vdup_n_s32(0x4650u);
    v9 = vdup_n_s32(0xB9B0u);
    v10 = vdup_n_s32(0x8CA0u);
    v11 = vdup_n_s32(0xFFFF7360);
    v12 = vdup_n_s32(0xFFFFB9B1);
    v61 = vdupq_n_s64(0x4059000000000000uLL);
    do
    {
      if (v67[1] >= *(v6 + 1156))
      {
        break;
      }

      v62[0] = sub_3116D0(&v77);
      sub_76B888(v66, v62);
      if ((v15 & 1) == 0)
      {
        break;
      }

      if (v67[1] < *(v4[3] + 1157))
      {
        v16 = *v4;
        v17 = sub_31DDCC(*v4, v79 & 0xFFFFFFFFFFFFFFLL);
        sub_40C59C(v16, v17, __p);
        v18 = v65;
        if ((v65 & 0x80u) != 0)
        {
          v18 = __p[1];
        }

        if (v18)
        {
          sub_23914(v72, __p);
        }

        v19 = sub_2B51D8(*v4, v79 & 0xFFFFFFFFFFFFLL);
        v20 = (v19 - *v19);
        if (*v20 < 0x25u)
        {
          goto LABEL_19;
        }

        v21 = v20[18];
        if (!v21)
        {
          goto LABEL_19;
        }

        v22 = (v19 + v21 + *(v19 + v21));
        if (!*v22)
        {
          goto LABEL_19;
        }

        sub_310550((v22 + v22[1] + 4), v62);
        v23 = v63;
        v24 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v24 = v62[2];
        }

        if (v24)
        {
          sub_76BC00(v69, v62);
          v23 = v63;
        }

        if ((v23 & 0x80) == 0)
        {
LABEL_19:
          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          operator delete(__p[0]);
          goto LABEL_21;
        }

        operator delete(v62[1]);
        if (v65 < 0)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      sub_31B8F4(*v4, &v77, &v75);
      v25 = v75;
      if (v75 == *(&v75 + 1))
      {
        break;
      }

      v26 = (v77 - *v77);
      v27 = *v26;
      if (v27 < 9)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26[4];
        if (v26[4])
        {
          v28 = *(v77 + v28);
        }
      }

      for (i = (v75 + 40); i != *(&v75 + 1); i += 5)
      {
        if (BYTE6(v79))
        {
          if (v27 >= 0x49)
          {
            v37 = v26[36];
            if (v26[36])
            {
              goto LABEL_38;
            }
          }
        }

        else if (v27 >= 0x4B)
        {
          v37 = v26[37];
          if (v26[37])
          {
LABEL_38:
            v38 = *(v77 + v37);
            v39 = *i;
            v40 = (*i - **i);
            v41 = *v40;
            if (*(i + 38))
            {
              goto LABEL_43;
            }

            goto LABEL_39;
          }
        }

        v38 = 0xFFFF;
        v39 = *i;
        v40 = (*i - **i);
        v41 = *v40;
        if (*(i + 38))
        {
LABEL_43:
          if (v41 >= 0x4B)
          {
            v42 = v40[37];
            if (v42)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_49;
        }

LABEL_39:
        if (v41 >= 0x49)
        {
          v42 = v40[36];
          if (v42)
          {
LABEL_45:
            v43 = *(v39 + v42);
            if (!BYTE6(v79))
            {
              goto LABEL_46;
            }

            goto LABEL_50;
          }
        }

LABEL_49:
        v43 = 0xFFFF;
        if (!BYTE6(v79))
        {
LABEL_46:
          if (v27 >= 0x4B)
          {
            v44 = v26[37];
            if (v26[37])
            {
              goto LABEL_52;
            }
          }

          goto LABEL_56;
        }

LABEL_50:
        if (v27 >= 0x49)
        {
          v44 = v26[36];
          if (v26[36])
          {
LABEL_52:
            v45 = *(v77 + v44);
            v46 = *v25;
            v47 = (*v25 - **v25);
            v48 = *v47;
            if (*(v25 + 38))
            {
              goto LABEL_57;
            }

            goto LABEL_53;
          }
        }

LABEL_56:
        v45 = 0xFFFF;
        v46 = *v25;
        v47 = (*v25 - **v25);
        v48 = *v47;
        if (*(v25 + 38))
        {
LABEL_57:
          if (v48 >= 0x4B)
          {
            v49 = v47[37];
            if (v49)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_28;
        }

LABEL_53:
        if (v48 >= 0x49)
        {
          v49 = v47[36];
          if (v49)
          {
LABEL_59:
            v30 = *(v46 + v49);
            goto LABEL_29;
          }
        }

LABEL_28:
        v30 = 0xFFFF;
LABEL_29:
        v31 = vadd_s32(__PAIR64__(v45, v38), v8);
        v32 = vsub_s32(__PAIR64__(v30, v43), vand_s8(vbsl_s8(vcgt_u32(v10, vand_s8(v31, 0xFFFF0000FFFFLL)), v31, vadd_s32(__PAIR64__(v45, v38), v9)), 0xFFFF0000FFFFLL));
        v33 = vadd_s32(v32, vand_s8(vcgt_s32(v32, v8), v11));
        v34 = vadd_s32(v33, vand_s8(vcgt_s32(v12, v33), v10));
        v35.i64[0] = v34.i32[0];
        v35.i64[1] = v34.i32[1];
        v36 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v35), v61));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v36, 1), v36)).u8[0])
        {
          v25 = i;
        }
      }

      v7 += v28;
      v13 = *v25;
      v14 = *(v25 + 1);
      v79 = v25[4];
      v77 = v13;
      v78 = v14;
      v6 = v4[3];
    }

    while (v7 < *(v6 + 1048));
  }

  sub_76C088(a3, v72, v69, v66);
  v50 = v67[0];
  if (v67[0])
  {
    do
    {
      v51 = *v50;
      operator delete(v50);
      v50 = v51;
    }

    while (v51);
  }

  v52 = v66[0];
  v66[0] = 0;
  if (v52)
  {
    operator delete(v52);
  }

  v53 = v70;
  if (v70)
  {
    do
    {
      v57 = *v53;
      if (*(v53 + 47) < 0)
      {
        v58 = v53;
        operator delete(v53[3]);
        v53 = v58;
      }

      operator delete(v53);
      v53 = v57;
    }

    while (v57);
  }

  v54 = v69[0];
  v69[0] = 0;
  if (v54)
  {
    operator delete(v54);
  }

  v55 = v73;
  if (v73)
  {
    do
    {
      v59 = *v55;
      if (*(v55 + 39) < 0)
      {
        v60 = v55;
        operator delete(v55[2]);
        v55 = v60;
      }

      operator delete(v55);
      v55 = v59;
    }

    while (v59);
  }

  v56 = v72[0];
  v72[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }
}

void sub_76B48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_11BD8(&a25);
  sub_37AFB0(&a31);
  sub_23D9C(&a37);
  v39 = *(v37 - 176);
  if (v39)
  {
    *(v37 - 168) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

BOOL sub_76B500(uint64_t *a1, int **a2, uint64_t a3)
{
  if (sub_712D18(a1[1], a2))
  {
    v6 = 1;
    if (*(a3 + 32))
    {
      v7 = *a3 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      goto LABEL_26;
    }

LABEL_7:
    if (v6)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v10 = (*a2 - **a2);
  v11 = *v10;
  if (*(a2 + 38))
  {
    if (v11 >= 0x9B)
    {
      v12 = v10[77];
      if (v12)
      {
        v13 = 2;
        goto LABEL_17;
      }
    }
  }

  else if (v11 >= 0x9B)
  {
    v12 = v10[77];
    if (v12)
    {
      v13 = 1;
LABEL_17:
      v6 = (*(*a2 + v12) & v13) != 0;
      if (*(a3 + 32))
      {
        v14 = *a3 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  v6 = 0;
  if (*(a3 + 32))
  {
    v15 = *a3 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    goto LABEL_7;
  }

LABEL_26:
  if (*(a3 + 8) != 0 || v6)
  {
    return 0;
  }

LABEL_27:
  v16 = (*a2 - **a2);
  if (*v16 >= 0x2Fu && (v17 = v16[23]) != 0)
  {
    v18 = *(*a2 + v17);
    v19 = *(a3 + 40);
    v20 = (v19 - *v19);
    if (*v20 < 0x2Fu)
    {
LABEL_35:
      if (v18 == 32)
      {
        goto LABEL_36;
      }

      return 0;
    }
  }

  else
  {
    v18 = 32;
    v19 = *(a3 + 40);
    v20 = (v19 - *v19);
    if (*v20 < 0x2Fu)
    {
      goto LABEL_35;
    }
  }

  v21 = v20[23];
  if (!v21)
  {
    goto LABEL_35;
  }

  if (v18 != *(v19 + v21))
  {
    return 0;
  }

LABEL_36:
  v22 = sub_31DDCC(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL);
  v23 = 0;
  if (v22 <= 0xFFFFFFFEFFFFFFFFLL && v22)
  {
    v23 = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, *(a3 + 72) & 0xFFFFFFFFFFFFFFLL);
  }

  v24 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
  v25 = (v24 - *v24);
  v27 = *v25 >= 0x25u && (v26 = v25[18]) != 0 && *(v24 + v26 + *(v24 + v26)) && sub_31CB7C(*a1, *(a2 + 8) | (*(a2 + 18) << 32), *(a3 + 72) | (*(a3 + 76) << 32));
  v28 = sub_3116D0(a2);
  v29 = sub_3116D0((a3 + 40));
  v30 = *a2;
  v31 = (*a2 - **a2);
  v32 = *v31;
  if (v32 < 0x2F)
  {
    return (v28 == v29) & (v23 | v27);
  }

  if (!v31[23] || *(v30 + v31[23]) != 23)
  {
    if (v32 < 0x9B)
    {
      return (v28 == v29) & (v23 | v27);
    }

    v33 = v31[77];
    if (!v33 || (*(v30 + v33) & 4) == 0)
    {
      return (v28 == v29) & (v23 | v27);
    }
  }

  v34 = *(a3 + 40);
  v35 = (v34 - *v34);
  v36 = *v35;
  if (v36 < 0x2F)
  {
    return (v28 == v29) & (v23 | v27);
  }

  if (!v35[23] || *(v34 + v35[23]) != 23)
  {
    if (v36 >= 0x9B)
    {
      v38 = v35[77];
      if (v38)
      {
        v37 = (*(v34 + v38) & 4) == 0;
        goto LABEL_57;
      }
    }

    return (v28 == v29) & (v23 | v27);
  }

  v37 = 0;
LABEL_57:
  v8 = (v28 == v29) & (v23 | v27);
  if (((v28 == v29) & (v23 | v27)) != 0 || v37)
  {
    return v8;
  }

  if ((v28 == v29) | (v23 | v27) & 1)
  {
    return 1;
  }

  return sub_76AE6C(a1, a2, (a3 + 40));
}

uint64_t *sub_76B888(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void *sub_76BC00(void *a1, unsigned int *a2)
{
  v4 = sub_76BFA0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_3106C0((v10 + 2), a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_3106C0((v10 + 2), a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_76BF78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_37A7C4(va);
  _Unwind_Resume(a1);
}

void sub_76BF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_37A7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_76BFA0(uint64_t a1, unsigned int *a2)
{
  v3 = *(a2 + 32);
  if (*(a2 + 31) < 0)
  {
    sub_325C(__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *__p = *(a2 + 2);
    v11 = *(a2 + 3);
  }

  if (v11 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v11 >= 0)
  {
    v5 = HIBYTE(v11);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_AAD8(&v12, v4, v5);
  if (SHIBYTE(v11) < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  v8 = (v6 + ((v3 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v3 ^ 0x385FFF1BDBLL;
  return ((v8 << 6) + (v8 >> 2) + *a2 + 2654435769) ^ v8;
}

uint64_t sub_76C088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v9 = *(a1 + 8);
    v10 = prime >= *&v9;
    if (prime > *&v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v10)
  {
    v11 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v9 < 3uLL || (v12 = vcnt_s8(v9), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v11);
    }

    else
    {
      v13 = 1 << -__clz(v11 - 1);
      if (v11 >= 2)
      {
        v11 = v13;
      }
    }

    if (prime <= v11)
    {
      prime = v11;
    }

    if (prime < *&v9)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_23914(a1, (i + 2));
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a3 + 32);
  v15 = *(a3 + 8);
  if (v15 == 1)
  {
    v15 = 2;
LABEL_36:
    sub_B07C(a1 + 40, v15);
    goto LABEL_37;
  }

  if ((v15 & (v15 - 1)) != 0)
  {
    v15 = std::__next_prime(*(a3 + 8));
    v16 = *(a1 + 48);
    v17 = v15 >= *&v16;
    if (v15 > *&v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v16 = 0;
    v17 = 1;
    if (v15)
    {
      goto LABEL_36;
    }
  }

  if (!v17)
  {
    v18 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v16 < 3uLL || (v19 = vcnt_s8(v16), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
    {
      v18 = std::__next_prime(v18);
    }

    else
    {
      v20 = 1 << -__clz(v18 - 1);
      if (v18 >= 2)
      {
        v18 = v20;
      }
    }

    if (v15 <= v18)
    {
      v15 = v18;
    }

    if (v15 < *&v16)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  for (j = *(a3 + 16); j; j = *j)
  {
    sub_76BC00((a1 + 40), j + 4);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = *(a4 + 32);
  v22 = *(a4 + 8);
  if (v22 == 1)
  {
    v22 = 2;
LABEL_55:
    sub_B07C(a1 + 80, v22);
    goto LABEL_56;
  }

  if ((v22 & (v22 - 1)) != 0)
  {
    v22 = std::__next_prime(*(a4 + 8));
    v23 = *(a1 + 88);
    v24 = v22 >= *&v23;
    if (v22 > *&v23)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v23 = 0;
    v24 = 1;
    if (v22)
    {
      goto LABEL_55;
    }
  }

  if (!v24)
  {
    v25 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v23 < 3uLL || (v26 = vcnt_s8(v23), v26.i16[0] = vaddlv_u8(v26), v26.u32[0] > 1uLL))
    {
      v25 = std::__next_prime(v25);
    }

    else
    {
      v27 = 1 << -__clz(v25 - 1);
      if (v25 >= 2)
      {
        v25 = v27;
      }
    }

    if (v22 <= v25)
    {
      v22 = v25;
    }

    if (v22 < *&v23)
    {
      goto LABEL_55;
    }
  }

LABEL_56:
  for (k = *(a4 + 16); k; k = *k)
  {
    sub_70B7A8((a1 + 80), k + 2);
  }

  return a1;
}

void sub_76C398(_Unwind_Exception *a1)
{
  sub_11BD8(v3);
  sub_37AFB0(v2);
  sub_23D9C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_76C408(uint64_t a1)
{
  v2 = *(a1 + 96);
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

  v4 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    do
    {
      v10 = *v5;
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      operator delete(v5);
      v5 = v10;
    }

    while (v10);
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v11 = *v7;
      if (*(v7 + 39) < 0)
      {
        operator delete(v7[2]);
      }

      operator delete(v7);
      v7 = v11;
    }

    while (v11);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

BOOL sub_76C4DC(uint64_t **a1, int **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  v6 = (*a2 - **a2);
  if (*v6 >= 0x2Fu)
  {
    v7 = v6[23];
    if (v7)
    {
      v8 = *(*a2 + v7);
      v9 = v8 > 0x36;
      v10 = (1 << v8) & 0x44000000000008;
      if (!v9 && v10 != 0)
      {
        return 0;
      }
    }
  }

  v12 = v3[1];
  v13 = sub_70E2E0(*(v5 + 8), v12, v3[2]);
  v14 = sub_70E2E0(*(v5 + 8), v12, a2);
  v15 = *v12;
  v16 = (*v12 - **v12);
  v17 = *v16;
  if (*(v12 + 38))
  {
    if (v17 < 0x9B)
    {
      goto LABEL_19;
    }

    v18 = v16[77];
    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = 2;
    v20 = *(v15 + v18);
    if ((v20 & 0x8000) != 0)
    {
      goto LABEL_19;
    }
  }

  else if (v17 < 0x9B || (v21 = v16[77]) == 0 || (v19 = 1, v20 = *(v15 + v21), (v20 & 0x8000) != 0))
  {
LABEL_19:
    if (v14 > v13)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if ((v20 & v19) == 0)
  {
    goto LABEL_19;
  }

  if (v14 < v13)
  {
    return 0;
  }

LABEL_21:
  if (sub_70EE0C(v4[1], a2))
  {
    return 1;
  }

  v23 = (*a2 - **a2);
  v24 = *v23;
  if (*(a2 + 38))
  {
    if (v24 < 0x9B)
    {
      return 0;
    }

    v25 = v23[77];
    if (!v25)
    {
      return 0;
    }

    v26 = 2;
  }

  else
  {
    if (v24 < 0x9B)
    {
      return 0;
    }

    v25 = v23[77];
    if (!v25)
    {
      return 0;
    }

    v26 = 1;
  }

  return (*(*a2 + v25) & v26) != 0;
}

uint64_t sub_76C674(uint64_t **a1, int **a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a2 - **a2);
  if (*v5 >= 0x2Fu)
  {
    v6 = v5[23];
    if (v6)
    {
      v7 = *(*a2 + v6);
      v8 = v7 > 0x36;
      v9 = (1 << v7) & 0x44000000000008;
      if (!v8 && v9 != 0)
      {
        return 0;
      }
    }
  }

  v11 = v3[1];
  v12 = sub_70E2E0(*(v4 + 8), v11, v3[2]);
  v13 = sub_70E2E0(*(v4 + 8), v11, a2);
  v14 = *v11;
  v15 = (*v11 - **v11);
  v16 = *v15;
  if (*(v11 + 38))
  {
    if (v16 < 0x9B)
    {
      goto LABEL_19;
    }

    v17 = v15[77];
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = 2;
    v19 = *(v14 + v17);
    if ((v19 & 0x8000) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16 < 0x9B)
    {
      goto LABEL_19;
    }

    v20 = v15[77];
    if (!v20)
    {
      goto LABEL_19;
    }

    v18 = 1;
    v19 = *(v14 + v20);
    if ((v19 & 0x8000) != 0)
    {
      goto LABEL_19;
    }
  }

  if ((v19 & v18) != 0)
  {
    if (v13 >= v12)
    {
      goto LABEL_20;
    }

    return 0;
  }

LABEL_19:
  if (v13 > v12)
  {
    return 0;
  }

LABEL_20:
  v21 = (*a2 - **a2);
  if (*v21 < 0x9Bu)
  {
    return 0;
  }

  v22 = v21[77];
  if (!v22)
  {
    return 0;
  }

  v23 = *(*a2 + v22);
  if (v23)
  {
    return 1;
  }

  else
  {
    return (v23 >> 1) & 1;
  }
}

void *sub_76C7DC(void *a1, unsigned int *a2)
{
  v4 = sub_76BFA0(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v6 == v12)
        {
          if (sub_3106C0((v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v13 = v9[1];
      if (v6 == v13)
      {
        if (sub_3106C0((v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void sub_76C914(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 16) = a2[1];
    *(v3 + 32) = v6;
    *v3 = v5;
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[5];
    *(v3 + 96) = *(a2 + 12);
    *(v3 + 64) = v8;
    *(v3 + 80) = v9;
    *(v3 + 48) = v7;
    v10 = v3 + 104;
LABEL_3:
    *(a1 + 8) = v10;
    return;
  }

  v11 = *a1;
  v12 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 3);
  v13 = v12 + 1;
  if ((v12 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  v14 = 0x4EC4EC4EC4EC4EC5 * ((v4 - v11) >> 3);
  if (2 * v14 > v13)
  {
    v13 = 2 * v14;
  }

  if (v14 >= 0x13B13B13B13B13BLL)
  {
    v15 = 0x276276276276276;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (v15 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = a2[5];
  v17 = 8 * ((v3 - *a1) >> 3);
  *(v17 + 64) = a2[4];
  *(v17 + 80) = v16;
  *(v17 + 96) = *(a2 + 12);
  v18 = a2[1];
  *v17 = *a2;
  *(v17 + 16) = v18;
  v19 = a2[3];
  *(v17 + 32) = a2[2];
  *(v17 + 48) = v19;
  v10 = 104 * v12 + 104;
  v20 = 104 * v12 - (v3 - v11);
  memcpy((v17 - (v3 - v11)), v11, v3 - v11);
  *a1 = v20;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  *(a1 + 8) = v10;
}

BOOL sub_76CAA0(uint64_t **a1, int **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  v6 = (*a2 - **a2);
  if (*v6 >= 0x2Fu)
  {
    v7 = v6[23];
    if (v7)
    {
      v8 = *(*a2 + v7);
      v9 = v8 > 0x36;
      v10 = (1 << v8) & 0x44000000000008;
      if (!v9 && v10 != 0)
      {
        return 0;
      }
    }
  }

  v12 = v3[1];
  v13 = sub_70E2E0(*(v5 + 8), v12, v3[2]);
  v14 = sub_70E2E0(*(v5 + 8), v12, a2);
  v15 = *v12;
  v16 = (*v12 - **v12);
  v17 = *v16;
  if (*(v12 + 38))
  {
    if (v17 < 0x9B)
    {
      goto LABEL_19;
    }

    v18 = v16[77];
    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = 2;
    v20 = *(v15 + v18);
    if ((v20 & 0x8000) != 0)
    {
      goto LABEL_19;
    }
  }

  else if (v17 < 0x9B || (v21 = v16[77]) == 0 || (v19 = 1, v20 = *(v15 + v21), (v20 & 0x8000) != 0))
  {
LABEL_19:
    if (v14 > v13)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if ((v20 & v19) == 0)
  {
    goto LABEL_19;
  }

  if (v14 < v13)
  {
    return 0;
  }

LABEL_21:
  if (sub_712D18(v4[1], a2))
  {
    return 1;
  }

  v23 = (*a2 - **a2);
  v24 = *v23;
  if (*(a2 + 38))
  {
    if (v24 < 0x9B)
    {
      return 0;
    }

    v25 = v23[77];
    if (!v25)
    {
      return 0;
    }

    v26 = 2;
  }

  else
  {
    if (v24 < 0x9B)
    {
      return 0;
    }

    v25 = v23[77];
    if (!v25)
    {
      return 0;
    }

    v26 = 1;
  }

  return (*(*a2 + v25) & v26) != 0;
}

void sub_76CC38()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A64B8 = 0u;
  unk_27A64C8 = 0u;
  dword_27A64D8 = 1065353216;
  sub_3A9A34(&xmmword_27A64B8, v0);
  sub_3A9A34(&xmmword_27A64B8, v3);
  sub_3A9A34(&xmmword_27A64B8, __p);
  sub_3A9A34(&xmmword_27A64B8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A6490 = 0;
    qword_27A6498 = 0;
    qword_27A6488 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_76CE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A64A0)
  {
    qword_27A64A8 = qword_27A64A0;
    operator delete(qword_27A64A0);
  }

  _Unwind_Resume(exception_object);
}

void sub_76CF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v8[23] = 21;
  strcpy(v8, "RouteAlertPrioritizer");
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v8, __p);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = vnegq_f64(v5);
  *(a1 + 24) = v6;
  *(a1 + 40) = 0x8000000080000000;
  *(a1 + 48) = v6;
  *(a1 + 65) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_7721F4();
}

void sub_76D048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_76D070@<W0>(void *a1@<X1>, void *a2@<X8>)
{
  result = sub_4D1F6C(a1);
  if (!result)
  {
    sub_68C454(a1, 0);
    sub_68D820(a1);

    sub_76D0FC();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_76D0FC()
{
  v0 = __chkstk_darwin();
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  sub_7B3848(v2, *v0, *(v0 + 8));
}

void sub_76D65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5C0E04(va);
  sub_5C0E04(&STACK[0x808]);
  sub_5706DC(&STACK[0xFE0]);
  sub_60E098(&STACK[0xFF8]);
  sub_5C0CC8(v7);
  _Unwind_Resume(a1);
}

void sub_76D70C(_Unwind_Exception *a1)
{
  sub_60E098(&STACK[0xFF8]);
  sub_5C0CC8(v1);
  _Unwind_Resume(a1);
}

void sub_76DE10(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0xC38]) == 1)
  {
    sub_3A9518(&STACK[0x7D8]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_76DE44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_E6F06C(a1[2]);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    a3[2000] = 0;
    return result;
  }

  v7 = sub_73F54(a2);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  if (v9 != v8)
  {
    while (*v9 != 10)
    {
      v9 += 16;
      if (v9 == v8)
      {
        v9 = *(v7 + 48);
        break;
      }
    }
  }

  v10 = *(sub_73F54(a2) + 48);
  v11 = sub_E6F808(a1[2], 10);
  if (!sub_614B2C(a1[1]) || v11 || v9 == v10)
  {
    v12 = *a1;
    v28 = 9;
    strcpy(v27, "EVRouting");
    __p = 0;
    v25 = 0;
    v26 = 0;
    sub_3AEC94(v12, v27, &__p);
    v13 = __p;
    if (__p)
    {
      v14 = v25;
      v15 = __p;
      if (v25 != __p)
      {
        do
        {
          v16 = *(v14 - 1);
          v14 -= 3;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v15 = __p;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    operator new();
  }

  sub_570F80(v27);
  sub_5D7978(a3, v27);
  a3[2000] = 1;
  if (v45 < 0)
  {
    operator delete(v44);
    if (v43 != 1)
    {
      goto LABEL_37;
    }
  }

  else if (v43 != 1)
  {
    goto LABEL_37;
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  v17 = v39;
  if (v39)
  {
    v18 = v40;
    v19 = v39;
    if (v40 != v39)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = v39;
    }

    v40 = v17;
    operator delete(v19);
  }

  if (v38 < 0)
  {
    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_36:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_46:
      operator delete(v33);
      v21 = v31;
      if (v31)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v35);
  if (v34 < 0)
  {
    goto LABEL_46;
  }

LABEL_37:
  v21 = v31;
  if (v31)
  {
LABEL_38:
    v22 = v32;
    v23 = v21;
    if (v32 != v21)
    {
      do
      {
        v22 = sub_3A9518(v22 - 1120);
      }

      while (v22 != v21);
      v23 = v31;
    }

    v32 = v21;
    operator delete(v23);
  }

LABEL_42:
  result = sub_570440(&v30);
  if (v29 == 1)
  {
    return sub_3A9518(&v27[1]);
  }

  return result;
}

void sub_76E804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a38);
  if (a26 < 0)
  {
    operator delete(a21);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_76E930(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v88 = 0;
  v89[0] = sub_4D1DB8(a4);
  v86 = 0;
  v87 = 0;
  v10 = *a2;
  v9 = a2[1];
  v61 = a2;
  if (*a2 != v9)
  {
    do
    {
      if (sub_770764(a1, v10, v89))
      {
        v12 = v87;
        if (v87 >= v88)
        {
          v11 = sub_603684(&v86, v10);
        }

        else
        {
          sub_52B7D8(v87, v10);
          v11 = v12 + 1120;
        }

        v87 = v11;
      }

      v10 += 1120;
    }

    while (v10 != v9);
    v13 = v86;
    v14 = v87;
    if (v86 != v87)
    {
      do
      {
        if (sub_659540(v13))
        {
          sub_570FB0(v13, v63);
        }

        else
        {
          sub_570E84(v13, v63);
        }

        v15 = a5[1];
        if (v15 >= a5[2])
        {
          v16 = sub_772648(a5, v63);
        }

        else
        {
          sub_5C3640(a5[1], v63);
          v16 = v15 + 2000;
        }

        a5[1] = v16;
        if (v81 < 0)
        {
          operator delete(__p);
          if (v79 != 1)
          {
            goto LABEL_39;
          }
        }

        else if (v79 != 1)
        {
          goto LABEL_39;
        }

        if (v78 < 0)
        {
          operator delete(v77);
          v17 = v75;
          if (!v75)
          {
LABEL_36:
            if (v74 < 0)
            {
              goto LABEL_26;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v17 = v75;
          if (!v75)
          {
            goto LABEL_36;
          }
        }

        v18 = v76;
        if (v76 == v17)
        {
          v76 = v17;
          operator delete(v17);
          if (v74 < 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          do
          {
            v20 = *(v18 - 1);
            v18 -= 3;
            if (v20 < 0)
            {
              operator delete(*v18);
            }
          }

          while (v18 != v17);
          v76 = v17;
          operator delete(v75);
          if (v74 < 0)
          {
LABEL_26:
            operator delete(v73);
            if (v72 < 0)
            {
              goto LABEL_27;
            }

            goto LABEL_38;
          }
        }

LABEL_37:
        if (v72 < 0)
        {
LABEL_27:
          operator delete(v71);
          if (v70 < 0)
          {
            goto LABEL_28;
          }

          goto LABEL_39;
        }

LABEL_38:
        if (v70 < 0)
        {
LABEL_28:
          operator delete(v69);
          v19 = v67;
          if (!v67)
          {
            goto LABEL_86;
          }

LABEL_40:
          v21 = v68;
          v22 = v19;
          if (v68 == v19)
          {
LABEL_85:
            v68 = v19;
            operator delete(v22);
            goto LABEL_86;
          }

          while (2)
          {
            if (*(v21 - 16) != 1)
            {
              *(v21 - 416) = off_26696C8;
              if (*(v21 - 385) < 0)
              {
                goto LABEL_64;
              }

              goto LABEL_71;
            }

            v23 = *(v21 - 40);
            if (!v23)
            {
              goto LABEL_58;
            }

            v24 = *(v21 - 32);
            v25 = *(v21 - 40);
            if (v24 == v23)
            {
LABEL_57:
              *(v21 - 32) = v23;
              operator delete(v25);
LABEL_58:
              if (*(v21 - 49) < 0)
              {
                operator delete(*(v21 - 72));
                if (*(v21 - 81) < 0)
                {
                  goto LABEL_80;
                }

LABEL_60:
                if ((*(v21 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_61;
                }

LABEL_81:
                operator delete(*(v21 - 136));
                if (*(v21 - 137) < 0)
                {
                  goto LABEL_82;
                }

LABEL_62:
                if (*(v21 - 161) < 0)
                {
LABEL_83:
                  operator delete(*(v21 - 184));
                }
              }

              else
              {
                if ((*(v21 - 81) & 0x80000000) == 0)
                {
                  goto LABEL_60;
                }

LABEL_80:
                operator delete(*(v21 - 104));
                if (*(v21 - 113) < 0)
                {
                  goto LABEL_81;
                }

LABEL_61:
                if ((*(v21 - 137) & 0x80000000) == 0)
                {
                  goto LABEL_62;
                }

LABEL_82:
                operator delete(*(v21 - 160));
                if (*(v21 - 161) < 0)
                {
                  goto LABEL_83;
                }
              }

              sub_33D080(v21 - 376);
              *(v21 - 416) = off_26696C8;
              if (*(v21 - 385) < 0)
              {
LABEL_64:
                operator delete(*(v21 - 408));
                if (*(v21 - 465) < 0)
                {
                  goto LABEL_65;
                }

LABEL_72:
                if ((*(v21 - 497) & 0x80000000) == 0)
                {
                  goto LABEL_73;
                }

LABEL_66:
                operator delete(*(v21 - 520));
                if (*(v21 - 521) < 0)
                {
                  goto LABEL_67;
                }

LABEL_74:
                if ((*(v21 - 561) & 0x80000000) == 0)
                {
                  goto LABEL_75;
                }

LABEL_68:
                operator delete(*(v21 - 584));
                if (*(v21 - 593) < 0)
                {
                  goto LABEL_42;
                }

LABEL_76:
                if ((*(v21 - 617) & 0x80000000) == 0)
                {
LABEL_43:
                  v21 -= 1120;
                  sub_2C0F28(v21);
                  if (v21 == v19)
                  {
                    goto LABEL_84;
                  }

                  continue;
                }

                goto LABEL_77;
              }

LABEL_71:
              if ((*(v21 - 465) & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

LABEL_65:
              operator delete(*(v21 - 488));
              if (*(v21 - 497) < 0)
              {
                goto LABEL_66;
              }

LABEL_73:
              if ((*(v21 - 521) & 0x80000000) == 0)
              {
                goto LABEL_74;
              }

LABEL_67:
              operator delete(*(v21 - 544));
              if (*(v21 - 561) < 0)
              {
                goto LABEL_68;
              }

LABEL_75:
              if ((*(v21 - 593) & 0x80000000) == 0)
              {
                goto LABEL_76;
              }

LABEL_42:
              operator delete(*(v21 - 616));
              if ((*(v21 - 617) & 0x80000000) == 0)
              {
                goto LABEL_43;
              }

LABEL_77:
              operator delete(*(v21 - 640));
              v21 -= 1120;
              sub_2C0F28(v21);
              if (v21 == v19)
              {
LABEL_84:
                v22 = v67;
                goto LABEL_85;
              }

              continue;
            }

            break;
          }

          while (2)
          {
            while (2)
            {
              if (*(v24 - 1) < 0)
              {
                operator delete(*(v24 - 24));
                if ((*(v24 - 25) & 0x80000000) == 0)
                {
                  goto LABEL_54;
                }

LABEL_48:
                operator delete(*(v24 - 48));
                if ((*(v24 - 49) & 0x80000000) == 0)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (*(v24 - 25) < 0)
                {
                  goto LABEL_48;
                }

LABEL_54:
                if ((*(v24 - 49) & 0x80000000) == 0)
                {
LABEL_49:
                  v24 -= 248;
                  sub_33D5A0(v24);
                  if (v24 == v23)
                  {
                    goto LABEL_56;
                  }

                  continue;
                }
              }

              break;
            }

            operator delete(*(v24 - 72));
            v24 -= 248;
            sub_33D5A0(v24);
            if (v24 == v23)
            {
LABEL_56:
              v25 = *(v21 - 40);
              goto LABEL_57;
            }

            continue;
          }
        }

LABEL_39:
        v19 = v67;
        if (v67)
        {
          goto LABEL_40;
        }

LABEL_86:
        sub_570440(v66);
        if (v65 == 1)
        {
          sub_3A9518(v64);
        }

        v13 += 1120;
      }

      while (v13 != v14);
    }
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  v27 = *a3;
  v26 = a3[1];
  if (*a3 != v26)
  {
    do
    {
      if (*(v27 + 128) == 1)
      {
        v29 = *(v27 + 32);
        v30 = a1[3];
        if (v29 >= v30 && v89[0] >= v30 + v29 && v29 <= a1[4] && (sub_614B14(a1[1], (v27 + 8)) & 1) == 0)
        {
          v31 = v84;
          if (v84 >= v85)
          {
            v28 = sub_773060(&v83, v27);
          }

          else
          {
            sub_52A464(v84, v27);
            v28 = v31 + 168;
          }

          v84 = v28;
        }
      }

      v27 += 168;
    }

    while (v27 != v26);
    v32 = v83;
    v33 = v84;
    while (v32 != v33)
    {
      sub_570FC4(v32, v63);
      v34 = a5[1];
      if (v34 >= a5[2])
      {
        v35 = sub_772648(a5, v63);
      }

      else
      {
        sub_5C3640(a5[1], v63);
        v35 = v34 + 2000;
      }

      a5[1] = v35;
      if (v81 < 0)
      {
        operator delete(__p);
        if (v79 != 1)
        {
          goto LABEL_127;
        }
      }

      else if (v79 != 1)
      {
        goto LABEL_127;
      }

      if (v78 < 0)
      {
        operator delete(v77);
        v36 = v75;
        if (!v75)
        {
LABEL_124:
          if (v74 < 0)
          {
            goto LABEL_114;
          }

          goto LABEL_125;
        }
      }

      else
      {
        v36 = v75;
        if (!v75)
        {
          goto LABEL_124;
        }
      }

      v37 = v76;
      if (v76 == v36)
      {
        v76 = v36;
        operator delete(v36);
        if (v74 < 0)
        {
          goto LABEL_114;
        }
      }

      else
      {
        do
        {
          v39 = *(v37 - 1);
          v37 -= 3;
          if (v39 < 0)
          {
            operator delete(*v37);
          }
        }

        while (v37 != v36);
        v76 = v36;
        operator delete(v75);
        if (v74 < 0)
        {
LABEL_114:
          operator delete(v73);
          if (v72 < 0)
          {
            goto LABEL_115;
          }

          goto LABEL_126;
        }
      }

LABEL_125:
      if (v72 < 0)
      {
LABEL_115:
        operator delete(v71);
        if (v70 < 0)
        {
          goto LABEL_116;
        }

        goto LABEL_127;
      }

LABEL_126:
      if (v70 < 0)
      {
LABEL_116:
        operator delete(v69);
        v38 = v67;
        if (!v67)
        {
          goto LABEL_174;
        }

LABEL_128:
        v40 = v68;
        v41 = v38;
        if (v68 == v38)
        {
LABEL_173:
          v68 = v38;
          operator delete(v41);
          goto LABEL_174;
        }

        while (2)
        {
          if (*(v40 - 16) != 1)
          {
            *(v40 - 416) = off_26696C8;
            if (*(v40 - 385) < 0)
            {
              goto LABEL_152;
            }

            goto LABEL_159;
          }

          v42 = *(v40 - 40);
          if (!v42)
          {
            goto LABEL_146;
          }

          v43 = *(v40 - 32);
          v44 = *(v40 - 40);
          if (v43 == v42)
          {
LABEL_145:
            *(v40 - 32) = v42;
            operator delete(v44);
LABEL_146:
            if (*(v40 - 49) < 0)
            {
              operator delete(*(v40 - 72));
              if (*(v40 - 81) < 0)
              {
                goto LABEL_168;
              }

LABEL_148:
              if ((*(v40 - 113) & 0x80000000) == 0)
              {
                goto LABEL_149;
              }

LABEL_169:
              operator delete(*(v40 - 136));
              if (*(v40 - 137) < 0)
              {
                goto LABEL_170;
              }

LABEL_150:
              if (*(v40 - 161) < 0)
              {
LABEL_171:
                operator delete(*(v40 - 184));
              }
            }

            else
            {
              if ((*(v40 - 81) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

LABEL_168:
              operator delete(*(v40 - 104));
              if (*(v40 - 113) < 0)
              {
                goto LABEL_169;
              }

LABEL_149:
              if ((*(v40 - 137) & 0x80000000) == 0)
              {
                goto LABEL_150;
              }

LABEL_170:
              operator delete(*(v40 - 160));
              if (*(v40 - 161) < 0)
              {
                goto LABEL_171;
              }
            }

            sub_33D080(v40 - 376);
            *(v40 - 416) = off_26696C8;
            if (*(v40 - 385) < 0)
            {
LABEL_152:
              operator delete(*(v40 - 408));
              if (*(v40 - 465) < 0)
              {
                goto LABEL_153;
              }

LABEL_160:
              if ((*(v40 - 497) & 0x80000000) == 0)
              {
                goto LABEL_161;
              }

LABEL_154:
              operator delete(*(v40 - 520));
              if (*(v40 - 521) < 0)
              {
                goto LABEL_155;
              }

LABEL_162:
              if ((*(v40 - 561) & 0x80000000) == 0)
              {
                goto LABEL_163;
              }

LABEL_156:
              operator delete(*(v40 - 584));
              if (*(v40 - 593) < 0)
              {
                goto LABEL_130;
              }

LABEL_164:
              if ((*(v40 - 617) & 0x80000000) == 0)
              {
LABEL_131:
                v40 -= 1120;
                sub_2C0F28(v40);
                if (v40 == v38)
                {
                  goto LABEL_172;
                }

                continue;
              }

              goto LABEL_165;
            }

LABEL_159:
            if ((*(v40 - 465) & 0x80000000) == 0)
            {
              goto LABEL_160;
            }

LABEL_153:
            operator delete(*(v40 - 488));
            if (*(v40 - 497) < 0)
            {
              goto LABEL_154;
            }

LABEL_161:
            if ((*(v40 - 521) & 0x80000000) == 0)
            {
              goto LABEL_162;
            }

LABEL_155:
            operator delete(*(v40 - 544));
            if (*(v40 - 561) < 0)
            {
              goto LABEL_156;
            }

LABEL_163:
            if ((*(v40 - 593) & 0x80000000) == 0)
            {
              goto LABEL_164;
            }

LABEL_130:
            operator delete(*(v40 - 616));
            if ((*(v40 - 617) & 0x80000000) == 0)
            {
              goto LABEL_131;
            }

LABEL_165:
            operator delete(*(v40 - 640));
            v40 -= 1120;
            sub_2C0F28(v40);
            if (v40 == v38)
            {
LABEL_172:
              v41 = v67;
              goto LABEL_173;
            }

            continue;
          }

          break;
        }

        while (2)
        {
          while (2)
          {
            if (*(v43 - 1) < 0)
            {
              operator delete(*(v43 - 24));
              if ((*(v43 - 25) & 0x80000000) == 0)
              {
                goto LABEL_142;
              }

LABEL_136:
              operator delete(*(v43 - 48));
              if ((*(v43 - 49) & 0x80000000) == 0)
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (*(v43 - 25) < 0)
              {
                goto LABEL_136;
              }

LABEL_142:
              if ((*(v43 - 49) & 0x80000000) == 0)
              {
LABEL_137:
                v43 -= 248;
                sub_33D5A0(v43);
                if (v43 == v42)
                {
                  goto LABEL_144;
                }

                continue;
              }
            }

            break;
          }

          operator delete(*(v43 - 72));
          v43 -= 248;
          sub_33D5A0(v43);
          if (v43 == v42)
          {
LABEL_144:
            v44 = *(v40 - 40);
            goto LABEL_145;
          }

          continue;
        }
      }

LABEL_127:
      v38 = v67;
      if (v67)
      {
        goto LABEL_128;
      }

LABEL_174:
      sub_570440(v66);
      if (v65 == 1)
      {
        sub_3A9518(v64);
      }

      v32 += 168;
    }
  }

  sub_770134(a1, v61, (a4 + 10176), v89, v63);
  v45 = a5[1];
  if (v82 == 1)
  {
    if (v45 >= a5[2])
    {
      v45 = sub_772648(a5, v63);
    }

    else
    {
      sub_5C3640(a5[1], v63);
      v45 += 2000;
    }

    a5[1] = v45;
  }

  v46 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v45 - *a5) >> 4));
  if (v45 == *a5)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  sub_77327C(*a5, v45, v47, 1);
  if (v82 == 1)
  {
    if (v81 < 0)
    {
      operator delete(__p);
      if (v79 != 1)
      {
        goto LABEL_202;
      }
    }

    else if (v79 != 1)
    {
LABEL_202:
      v52 = v67;
      if (v67)
      {
LABEL_203:
        v53 = v68;
        v54 = v52;
        if (v68 != v52)
        {
          do
          {
            v53 = sub_3A9518(v53 - 1120);
          }

          while (v53 != v52);
          v54 = v67;
        }

        v68 = v52;
        operator delete(v54);
      }

LABEL_207:
      sub_570440(v66);
      if (v65 == 1)
      {
        sub_3A9518(v64);
      }

      goto LABEL_209;
    }

    if (v78 < 0)
    {
      operator delete(v77);
    }

    v48 = v75;
    if (v75)
    {
      v49 = v76;
      v50 = v75;
      if (v76 != v75)
      {
        do
        {
          v51 = *(v49 - 1);
          v49 -= 3;
          if (v51 < 0)
          {
            operator delete(*v49);
          }
        }

        while (v49 != v48);
        v50 = v75;
      }

      v76 = v48;
      operator delete(v50);
    }

    if (v74 < 0)
    {
      operator delete(v73);
      if ((v72 & 0x80000000) == 0)
      {
LABEL_201:
        if ((v70 & 0x80000000) == 0)
        {
          goto LABEL_202;
        }

        goto LABEL_222;
      }
    }

    else if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_201;
    }

    operator delete(v71);
    if ((v70 & 0x80000000) == 0)
    {
      goto LABEL_202;
    }

LABEL_222:
    operator delete(v69);
    v52 = v67;
    if (v67)
    {
      goto LABEL_203;
    }

    goto LABEL_207;
  }

LABEL_209:
  v55 = v83;
  if (v83)
  {
    v56 = v84;
    v57 = v83;
    if (v84 != v83)
    {
      do
      {
        v56 = sub_52A624((v56 - 168));
      }

      while (v56 != v55);
      v57 = v83;
    }

    v84 = v55;
    operator delete(v57);
  }

  v58 = v86;
  if (v86)
  {
    v59 = v87;
    v60 = v86;
    if (v87 != v86)
    {
      do
      {
        v59 = sub_3A9518(v59 - 1120);
      }

      while (v59 != v58);
      v60 = v86;
    }

    v87 = v58;
    operator delete(v60);
  }
}

void sub_76F538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5C0E04(va);
  sub_51B6E0((v5 - 144));
  sub_5706DC((v5 - 120));
  sub_5C0CC8(v4);
  _Unwind_Resume(a1);
}

void sub_76F610(_Unwind_Exception *a1)
{
  sub_5706DC((v2 - 120));
  sub_5C0CC8(v1);
  _Unwind_Resume(a1);
}

void sub_76FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  v18 = *(v16 - 120);
  if (v18)
  {
    *(v16 - 112) = v18;
    operator delete(v18);
    v19 = __p;
    if (!__p)
    {
LABEL_3:
      sub_772CE0(&a16);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  sub_772CE0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_76FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  if (v4)
  {
    for (i = 0; ; i += sub_4D23F8(v5, v7++, v18))
    {
      sub_4D0568();
      v10 = v9;
      v12 = v11;
      v13 = sub_4D1DC0(v5);
      v14 = v13;
      if (v10)
      {
        v15 = sub_4D1DC0(v10);
        if (v7 >= v14 || v12 >= v15)
        {
          if (v7 < v14 == v12 < v15)
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v16 = sub_4D1F50(v5, v7);
          if (v16 == sub_4D1F50(v10, v12))
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }

      else if (v7 >= v13)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v17 = *(sub_4D1F50(v5, v7) + 32);
      if (__PAIR64__(*(a3 + 4), *a3) == __PAIR64__(WORD2(v17), v17) && *(a3 + 6) == BYTE6(v17))
      {
        break;
      }
    }
  }

  else
  {
    sub_4D0568();
    if (v19)
    {
      v21 = v20;
      i = 0;
      while (v21 < sub_4D1DC0(v19))
      {
        v23 = *(sub_4D1F50(0, v7) + 32);
        if (__PAIR64__(*(a3 + 4), *a3) == __PAIR64__(WORD2(v23), v23) && *(a3 + 6) == BYTE6(v23))
        {
          return i;
        }

        i += sub_4D23F8(0, v7++, v24);
        sub_4D0568();
        v21 = v22;
        if (!v19)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return i;
}

uint64_t sub_76FD70@<X0>(const char *a1@<X0>, const char *a2@<X1>, const char *a3@<X3>, const char *a4@<X5>, uint64_t a5@<X6>, const char *a6@<X7>, _BYTE *a7@<X8>, uint64_t a8, char *__s, uint64_t a10, char *a11, uint64_t a12)
{
  sub_D7B0(v50);
  v19 = strlen(a1);
  v20 = sub_4A5C(&v51, a1, v19);
  v21 = strlen(a2);
  v22 = sub_4A5C(v20, a2, v21);
  std::ostream::operator<<();
  v23 = strlen(a3);
  v24 = sub_4A5C(v22, a3, v23);
  std::ostream::operator<<();
  v25 = strlen(a4);
  v26 = sub_4A5C(v24, a4, v25);
  v27 = sub_58948(v26, a5);
  v28 = strlen(a6);
  v29 = sub_4A5C(v27, a6, v28);
  v30 = *(a8 + 23);
  if (v30 >= 0)
  {
    v31 = a8;
  }

  else
  {
    v31 = *a8;
  }

  if (v30 >= 0)
  {
    v32 = *(a8 + 23);
  }

  else
  {
    v32 = *(a8 + 8);
  }

  v33 = sub_4A5C(v29, v31, v32);
  v34 = strlen(__s);
  v35 = sub_4A5C(v33, __s, v34);
  v36 = *(a10 + 23);
  if (v36 >= 0)
  {
    v37 = a10;
  }

  else
  {
    v37 = *a10;
  }

  if (v36 >= 0)
  {
    v38 = *(a10 + 23);
  }

  else
  {
    v38 = *(a10 + 8);
  }

  v39 = sub_4A5C(v35, v37, v38);
  v40 = strlen(a11);
  v41 = sub_4A5C(v39, a11, v40);
  v42 = *(a12 + 23);
  if (v42 >= 0)
  {
    v43 = a12;
  }

  else
  {
    v43 = *a12;
  }

  if (v42 >= 0)
  {
    v44 = *(a12 + 23);
  }

  else
  {
    v44 = *(a12 + 8);
  }

  sub_4A5C(v41, v43, v44);
  if ((v61 & 0x10) != 0)
  {
    v46 = v60;
    if (v60 < v57)
    {
      v60 = v57;
      v46 = v57;
    }

    v47 = __src;
    v45 = v46 - __src;
    if (v46 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if ((v61 & 8) == 0)
    {
      v45 = 0;
      a7[23] = 0;
      goto LABEL_30;
    }

    v47 = v54;
    v45 = v55 - v54;
    if ((v55 - v54) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_34:
      sub_3244();
    }
  }

  if (v45 >= 0x17)
  {
    operator new();
  }

  a7[23] = v45;
  if (v45)
  {
    memmove(a7, v47, v45);
  }

LABEL_30:
  a7[v45] = 0;
  v51 = v48;
  if (v59 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v53);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_770134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  sub_770378(a1, a3, v40);
  sub_7704C8(a1, v40, a2, *a4, &v38);
  v9 = v38;
  if (v38 == v39)
  {
    *a5 = 0;
    a5[2000] = 0;
    if (!v9)
    {
      return sub_570440(v40);
    }

    goto LABEL_29;
  }

  sub_570E98(v40, &v38, &v20);
  sub_5D7978(a5, &v20);
  a5[2000] = 1;
  if (v37 < 0)
  {
    operator delete(__p);
    if (v35 != 1)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (v34 < 0)
    {
      operator delete(v33);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 != v31)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v31;
      }

      v32 = v10;
      operator delete(v12);
    }

    if (v30 < 0)
    {
      operator delete(v29);
      if ((v28 & 0x80000000) == 0)
      {
LABEL_20:
        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_36;
      }
    }

    else if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_36:
    operator delete(v25);
    v14 = v23;
    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v35 == 1)
  {
    goto LABEL_8;
  }

LABEL_21:
  v14 = v23;
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_22:
  v15 = v24;
  v16 = v14;
  if (v24 != v14)
  {
    do
    {
      v15 = sub_3A9518(v15 - 1120);
    }

    while (v15 != v14);
    v16 = v23;
  }

  v24 = v14;
  operator delete(v16);
LABEL_26:
  sub_570440(&v22);
  if (v21[1120] == 1)
  {
    sub_3A9518(v21);
  }

  v9 = v38;
  if (v38)
  {
LABEL_29:
    v17 = v39;
    v18 = v9;
    if (v39 != v9)
    {
      do
      {
        v17 = sub_3A9518(v17 - 1120);
      }

      while (v17 != v9);
      v18 = v38;
    }

    v39 = v9;
    operator delete(v18);
  }

  return sub_570440(v40);
}

void sub_770348(_Unwind_Exception *a1)
{
  sub_5706DC(&STACK[0x7D0]);
  sub_570440(&STACK[0x7E8]);
  _Unwind_Resume(a1);
}

double sub_770378@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  if (v5 != v4)
  {
    while (*(v5 + 80) < *(a1 + 40))
    {
      v5 += 616;
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_9:
    bzero(a3, 0x268uLL);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = vnegq_f64(v7);
    *(a3 + 56) = 0;
    *(a3 + 8) = v8;
    *(a3 + 24) = -1;
    *(a3 + 32) = -1;
    *(a3 + 40) = v8;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0x8000000080000000;
    sub_64B998(a3 + 96);
    sub_64B998(a3 + 256);
    *(a3 + 448) = 0;
    *(a3 + 456) = -1;
    *(a3 + 459) = -1;
    *(a3 + 471) = 0;
    *(a3 + 479) = 0;
    *(a3 + 463) = 0;
    *(a3 + 487) = 0;
    *(a3 + 504) = 0;
    *(a3 + 512) = 0;
    *(a3 + 496) = 0;
    *(a3 + 520) = 0;
    result = 0.0;
    *(a3 + 528) = 0u;
    *(a3 + 544) = 0u;
    *(a3 + 560) = 0u;
    *(a3 + 576) = 1;
    *(a3 + 584) = 0u;
    *(a3 + 600) = 0u;
  }

  else
  {

    sub_571154(a3, v5);
  }

  return result;
}

void sub_77049C(_Unwind_Exception *a1)
{
  sub_53A868((v2 + 5));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_7704C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a4;
  if (*(a1 + 64) != 1 || *a3 == a3[1] || !sub_685B80(a2) || (v9 = *(a2 + 8), v9 < *(a1 + 48)) || v9 > *(a1 + 56))
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v10 = a3;
  v11 = *a3;
  v12 = v10[1];
  if (v11 != v12)
  {
    while ((*(*(a1 + 8) + 1524) & 1) != 0 || !sub_770764(a1, v11, &v32))
    {
      v14 = *(v11 + 96);
      v18 = v14 > 5;
      v15 = (1 << v14) & 0x33;
      v16 = v18 || v15 == 0;
      if (!v16 && *(v11 + 472) == 1)
      {
        v17 = *(v11 + 464);
        v18 = v17 >= *(a2 + 8) && v17 <= *(a2 + 16);
        if (v18)
        {
          v19 = *(a1 + 8);
          sub_57480(v11, &__p);
          v20 = sub_614B0C(v19);
          if (v28 < 0)
          {
            v21 = v20;
            operator delete(__p);
            v20 = v21;
          }

          if ((v20 & 1) == 0)
          {
            v22 = v30;
            if (v30 >= v31)
            {
              v13 = sub_603684(&v29, v11);
            }

            else
            {
              sub_52B7D8(v30, v11);
              v13 = v22 + 1120;
            }

            v30 = v13;
          }
        }
      }

      v11 += 1120;
      if (v11 == v12)
      {
        v24 = v29;
        v23 = v30;
        if (v29 != v30)
        {
          if ((*(v30 - 648) & 1) == 0)
          {
            sub_4F0F0C();
          }

          if ((*(v30 - 656) - *(a2 + 8)) / (*(a2 + 16) - *(a2 + 8)) >= *(a1 + 72))
          {
            *a5 = v29;
            a5[1] = v23;
            a5[2] = v31;
            return;
          }
        }

        goto LABEL_35;
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v24 = v29;
    if (!v29)
    {
      return;
    }

    goto LABEL_38;
  }

  v24 = 0;
LABEL_35:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v24)
  {
LABEL_38:
    v25 = v30;
    v26 = v24;
    if (v30 != v24)
    {
      do
      {
        v25 = sub_3A9518(v25 - 1120);
      }

      while (v25 != v24);
      v26 = v29;
    }

    v30 = v24;
    operator delete(v26);
  }
}

BOOL sub_770764(void *a1, uint64_t a2, void *a3)
{
  if (sub_38F674(a2))
  {
    return 0;
  }

  result = sub_38F78C(a2);
  if (result)
  {
    v7 = sub_659540(a2);
    v8 = a1[1];
    v9 = (a2 + 48);
    if (v7)
    {
      if (sub_614B10(v8, v9))
      {
        return 0;
      }
    }

    else if (sub_614B08(v8, v9))
    {
      return 0;
    }

    if ((*(a2 + 472) & 1) == 0)
    {
      sub_4F0F0C();
    }

    v10 = *(a2 + 464);
    v11 = a1[3];
    if (v10 >= v11)
    {
      return *a3 >= v11 + v10 && v10 <= a1[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_770870@<D0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_770948(a2, &v10);
  v6 = v11;
  *a3 = v10;
  *(a3 + 16) = v6;
  sub_771110(a2, &v10);
  v7 = v11;
  *(a3 + 24) = v10;
  *(a3 + 40) = v7;
  sub_771808(a1, a2, &v10);
  v8 = v11;
  result = *&v10;
  *(a3 + 48) = v10;
  *(a3 + 64) = v8;
  return result;
}

void sub_770948(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_68F328(a1);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v4 = *v3;
  v5 = v3[1];
  v24 = &v42;
  v25[0] = 0;
  if (v5 != v4)
  {
    if (0xAF8AF8AF8AF8AF8BLL * ((v5 - v4) >> 5) < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = sub_772D50(v42, v43, &v42);
  v7 = v43;
  if (v6 != v43)
  {
    v8 = v43;
    v7 = v6;
    while (v8 != v6)
    {
      v8 = sub_3A9518(v8 - 1120);
    }

    v43 = v6;
  }

  sub_7720C4(a2, 0xAF8AF8AF8AF8AF8BLL * ((v7 - v42) >> 5));
  v9 = v42;
  v10 = v43;
  if (v42 != v43)
  {
    while (1)
    {
      sub_570FB0(v9, &v24);
      v11 = a2[1];
      if (v11 >= a2[2])
      {
        v12 = sub_772EFC(a2, &v24);
      }

      else
      {
        v12 = sub_5D7978(v11, &v24) + 2000;
      }

      a2[1] = v12;
      if (v41 < 0)
      {
        operator delete(__p);
        if (v39 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v39 != 1)
      {
        goto LABEL_36;
      }

      if (v38 < 0)
      {
        operator delete(v37);
        v13 = v35;
        if (!v35)
        {
LABEL_33:
          if (v34 < 0)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v13 = v35;
        if (!v35)
        {
          goto LABEL_33;
        }
      }

      v14 = v36;
      if (v36 == v13)
      {
        v36 = v13;
        operator delete(v13);
        if (v34 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        do
        {
          v16 = *(v14 - 1);
          v14 -= 3;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v36 = v13;
        operator delete(v35);
        if (v34 < 0)
        {
LABEL_23:
          operator delete(v33);
          if (v32 < 0)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

LABEL_34:
      if (v32 < 0)
      {
LABEL_24:
        operator delete(v31);
        if (v30 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

LABEL_35:
      if (v30 < 0)
      {
LABEL_25:
        operator delete(v29);
        v15 = v27;
        if (!v27)
        {
          goto LABEL_83;
        }

LABEL_37:
        v17 = v28;
        v18 = v15;
        if (v28 == v15)
        {
LABEL_82:
          v28 = v15;
          operator delete(v18);
          goto LABEL_83;
        }

        while (2)
        {
          if (*(v17 - 16) != 1)
          {
            *(v17 - 416) = off_26696C8;
            if (*(v17 - 385) < 0)
            {
              goto LABEL_61;
            }

            goto LABEL_68;
          }

          v19 = *(v17 - 40);
          if (!v19)
          {
            goto LABEL_55;
          }

          v20 = *(v17 - 32);
          v21 = *(v17 - 40);
          if (v20 == v19)
          {
LABEL_54:
            *(v17 - 32) = v19;
            operator delete(v21);
LABEL_55:
            if (*(v17 - 49) < 0)
            {
              operator delete(*(v17 - 72));
              if (*(v17 - 81) < 0)
              {
                goto LABEL_77;
              }

LABEL_57:
              if ((*(v17 - 113) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_78:
              operator delete(*(v17 - 136));
              if (*(v17 - 137) < 0)
              {
                goto LABEL_79;
              }

LABEL_59:
              if (*(v17 - 161) < 0)
              {
LABEL_80:
                operator delete(*(v17 - 184));
              }
            }

            else
            {
              if ((*(v17 - 81) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

LABEL_77:
              operator delete(*(v17 - 104));
              if (*(v17 - 113) < 0)
              {
                goto LABEL_78;
              }

LABEL_58:
              if ((*(v17 - 137) & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

LABEL_79:
              operator delete(*(v17 - 160));
              if (*(v17 - 161) < 0)
              {
                goto LABEL_80;
              }
            }

            sub_33D080(v17 - 376);
            *(v17 - 416) = off_26696C8;
            if (*(v17 - 385) < 0)
            {
LABEL_61:
              operator delete(*(v17 - 408));
              if (*(v17 - 465) < 0)
              {
                goto LABEL_62;
              }

LABEL_69:
              if ((*(v17 - 497) & 0x80000000) == 0)
              {
                goto LABEL_70;
              }

LABEL_63:
              operator delete(*(v17 - 520));
              if (*(v17 - 521) < 0)
              {
                goto LABEL_64;
              }

LABEL_71:
              if ((*(v17 - 561) & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

LABEL_65:
              operator delete(*(v17 - 584));
              if (*(v17 - 593) < 0)
              {
                goto LABEL_39;
              }

LABEL_73:
              if ((*(v17 - 617) & 0x80000000) == 0)
              {
LABEL_40:
                v17 -= 1120;
                sub_2C0F28(v17);
                if (v17 == v15)
                {
                  goto LABEL_81;
                }

                continue;
              }

              goto LABEL_74;
            }

LABEL_68:
            if ((*(v17 - 465) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_62:
            operator delete(*(v17 - 488));
            if (*(v17 - 497) < 0)
            {
              goto LABEL_63;
            }

LABEL_70:
            if ((*(v17 - 521) & 0x80000000) == 0)
            {
              goto LABEL_71;
            }

LABEL_64:
            operator delete(*(v17 - 544));
            if (*(v17 - 561) < 0)
            {
              goto LABEL_65;
            }

LABEL_72:
            if ((*(v17 - 593) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

LABEL_39:
            operator delete(*(v17 - 616));
            if ((*(v17 - 617) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

LABEL_74:
            operator delete(*(v17 - 640));
            v17 -= 1120;
            sub_2C0F28(v17);
            if (v17 == v15)
            {
LABEL_81:
              v18 = v27;
              goto LABEL_82;
            }

            continue;
          }

          break;
        }

        while (2)
        {
          while (2)
          {
            if (*(v20 - 1) < 0)
            {
              operator delete(*(v20 - 24));
              if ((*(v20 - 25) & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

LABEL_45:
              operator delete(*(v20 - 48));
              if ((*(v20 - 49) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              if (*(v20 - 25) < 0)
              {
                goto LABEL_45;
              }

LABEL_51:
              if ((*(v20 - 49) & 0x80000000) == 0)
              {
LABEL_46:
                v20 -= 248;
                sub_33D5A0(v20);
                if (v20 == v19)
                {
                  goto LABEL_53;
                }

                continue;
              }
            }

            break;
          }

          operator delete(*(v20 - 72));
          v20 -= 248;
          sub_33D5A0(v20);
          if (v20 == v19)
          {
LABEL_53:
            v21 = *(v17 - 40);
            goto LABEL_54;
          }

          continue;
        }
      }

LABEL_36:
      v15 = v27;
      if (v27)
      {
        goto LABEL_37;
      }

LABEL_83:
      sub_570440(&v26);
      if (v25[1120] == 1)
      {
        sub_3A9518(v25);
      }

      v9 += 1120;
      if (v9 == v10)
      {
        v9 = v42;
        break;
      }
    }
  }

  if (v9)
  {
    v22 = v43;
    v23 = v9;
    if (v43 != v9)
    {
      do
      {
        v22 = sub_3A9518(v22 - 1120);
      }

      while (v22 != v9);
      v23 = v42;
    }

    v43 = v9;
    operator delete(v23);
  }
}

void sub_771068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_571510(va);
  sub_5C0CC8(v2);
  _Unwind_Resume(a1);
}

void sub_771084(_Unwind_Exception *a1)
{
  sub_5706DC((v2 - 104));
  sub_5C0CC8(v1);
  _Unwind_Resume(a1);
}

void sub_7710D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v5)
  {
    v8 = v4 - 1120;
    v9 = -v5;
    do
    {
      v8 = sub_3A9518(v8) - 1120;
      v9 += 1120;
    }

    while (v9);
  }

  *(v6 - 96) = v3;
  sub_571510(va);
  sub_5C0CC8(v2);
  _Unwind_Resume(a1);
}

void sub_771110(void *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_68C454(a1, 0);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = *(v3 + 7416);
  v5 = *(v3 + 7424);
  v23 = &v41;
  v24[0] = 0;
  v6 = v5 - v4;
  if (v5 != v4)
  {
    if (0xAF8AF8AF8AF8AF8BLL * (v6 >> 5) < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = v42;
  if (v6 != v42)
  {
    while (v7 != v6)
    {
      v7 -= 1120;
      sub_3A9518(v7);
    }

    v42 = v5 - v4;
  }

  sub_7720C4(a2, 0xAF8AF8AF8AF8AF8BLL * ((v6 - v41) >> 5));
  v8 = v41;
  v9 = v42;
  if (v41 != v42)
  {
    while (1)
    {
      sub_570E84(v8, &v23);
      v10 = a2[1];
      if (v10 >= a2[2])
      {
        v11 = sub_772EFC(a2, &v23);
      }

      else
      {
        v11 = sub_5D7978(v10, &v23) + 2000;
      }

      a2[1] = v11;
      if (v40 < 0)
      {
        operator delete(__p);
        if (v38 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v38 != 1)
      {
        goto LABEL_36;
      }

      if (v37 < 0)
      {
        operator delete(v36);
        v12 = v34;
        if (!v34)
        {
LABEL_33:
          if (v33 < 0)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v12 = v34;
        if (!v34)
        {
          goto LABEL_33;
        }
      }

      v13 = v35;
      if (v35 == v12)
      {
        v35 = v12;
        operator delete(v12);
        if (v33 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v35 = v12;
        operator delete(v34);
        if (v33 < 0)
        {
LABEL_23:
          operator delete(v32);
          if (v31 < 0)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

LABEL_34:
      if (v31 < 0)
      {
LABEL_24:
        operator delete(v30);
        if (v29 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

LABEL_35:
      if (v29 < 0)
      {
LABEL_25:
        operator delete(v28);
        v14 = v26;
        if (!v26)
        {
          goto LABEL_83;
        }

LABEL_37:
        v16 = v27;
        v17 = v14;
        if (v27 == v14)
        {
LABEL_82:
          v27 = v14;
          operator delete(v17);
          goto LABEL_83;
        }

        while (2)
        {
          if (*(v16 - 16) != 1)
          {
            *(v16 - 416) = off_26696C8;
            if (*(v16 - 385) < 0)
            {
              goto LABEL_61;
            }

            goto LABEL_68;
          }

          v18 = *(v16 - 40);
          if (!v18)
          {
            goto LABEL_55;
          }

          v19 = *(v16 - 32);
          v20 = *(v16 - 40);
          if (v19 == v18)
          {
LABEL_54:
            *(v16 - 32) = v18;
            operator delete(v20);
LABEL_55:
            if (*(v16 - 49) < 0)
            {
              operator delete(*(v16 - 72));
              if (*(v16 - 81) < 0)
              {
                goto LABEL_77;
              }

LABEL_57:
              if ((*(v16 - 113) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_78:
              operator delete(*(v16 - 136));
              if (*(v16 - 137) < 0)
              {
                goto LABEL_79;
              }

LABEL_59:
              if (*(v16 - 161) < 0)
              {
LABEL_80:
                operator delete(*(v16 - 184));
              }
            }

            else
            {
              if ((*(v16 - 81) & 0x80000000) == 0)
              {
                goto LABEL_57;
              }

LABEL_77:
              operator delete(*(v16 - 104));
              if (*(v16 - 113) < 0)
              {
                goto LABEL_78;
              }

LABEL_58:
              if ((*(v16 - 137) & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

LABEL_79:
              operator delete(*(v16 - 160));
              if (*(v16 - 161) < 0)
              {
                goto LABEL_80;
              }
            }

            sub_33D080(v16 - 376);
            *(v16 - 416) = off_26696C8;
            if (*(v16 - 385) < 0)
            {
LABEL_61:
              operator delete(*(v16 - 408));
              if (*(v16 - 465) < 0)
              {
                goto LABEL_62;
              }

LABEL_69:
              if ((*(v16 - 497) & 0x80000000) == 0)
              {
                goto LABEL_70;
              }

LABEL_63:
              operator delete(*(v16 - 520));
              if (*(v16 - 521) < 0)
              {
                goto LABEL_64;
              }

LABEL_71:
              if ((*(v16 - 561) & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

LABEL_65:
              operator delete(*(v16 - 584));
              if (*(v16 - 593) < 0)
              {
                goto LABEL_39;
              }

LABEL_73:
              if ((*(v16 - 617) & 0x80000000) == 0)
              {
LABEL_40:
                v16 -= 1120;
                sub_2C0F28(v16);
                if (v16 == v14)
                {
                  goto LABEL_81;
                }

                continue;
              }

              goto LABEL_74;
            }

LABEL_68:
            if ((*(v16 - 465) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_62:
            operator delete(*(v16 - 488));
            if (*(v16 - 497) < 0)
            {
              goto LABEL_63;
            }

LABEL_70:
            if ((*(v16 - 521) & 0x80000000) == 0)
            {
              goto LABEL_71;
            }

LABEL_64:
            operator delete(*(v16 - 544));
            if (*(v16 - 561) < 0)
            {
              goto LABEL_65;
            }

LABEL_72:
            if ((*(v16 - 593) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

LABEL_39:
            operator delete(*(v16 - 616));
            if ((*(v16 - 617) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

LABEL_74:
            operator delete(*(v16 - 640));
            v16 -= 1120;
            sub_2C0F28(v16);
            if (v16 == v14)
            {
LABEL_81:
              v17 = v26;
              goto LABEL_82;
            }

            continue;
          }

          break;
        }

        while (2)
        {
          while (2)
          {
            if (*(v19 - 1) < 0)
            {
              operator delete(*(v19 - 24));
              if ((*(v19 - 25) & 0x80000000) == 0)
              {
                goto LABEL_51;
              }

LABEL_45:
              operator delete(*(v19 - 48));
              if ((*(v19 - 49) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              if (*(v19 - 25) < 0)
              {
                goto LABEL_45;
              }

LABEL_51:
              if ((*(v19 - 49) & 0x80000000) == 0)
              {
LABEL_46:
                v19 -= 248;
                sub_33D5A0(v19);
                if (v19 == v18)
                {
                  goto LABEL_53;
                }

                continue;
              }
            }

            break;
          }

          operator delete(*(v19 - 72));
          v19 -= 248;
          sub_33D5A0(v19);
          if (v19 == v18)
          {
LABEL_53:
            v20 = *(v16 - 40);
            goto LABEL_54;
          }

          continue;
        }
      }

LABEL_36:
      v14 = v26;
      if (v26)
      {
        goto LABEL_37;
      }

LABEL_83:
      sub_570440(&v25);
      if (v24[1120] == 1)
      {
        sub_3A9518(v24);
      }

      v8 += 1120;
      if (v8 == v9)
      {
        v8 = v41;
        break;
      }
    }
  }

  if (v8)
  {
    v21 = v42;
    v22 = v8;
    if (v42 != v8)
    {
      do
      {
        v21 = sub_3A9518(v21 - 1120);
      }

      while (v21 != v8);
      v22 = v41;
    }

    v42 = v8;
    operator delete(v22);
  }
}

void sub_771750(_Unwind_Exception *a1)
{
  sub_5706DC((v2 - 104));
  sub_5C0CC8(v1);
  _Unwind_Resume(a1);
}

void sub_7717CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v5)
  {
    v8 = v3 - 1120;
    v9 = -v5;
    do
    {
      v8 = sub_3A9518(v8) - 1120;
      v9 += 1120;
    }

    while (v9);
  }

  *(v6 - 96) = v4;
  sub_571510(va);
  sub_5C0CC8(v2);
  _Unwind_Resume(a1);
}

void sub_771808(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = sub_68F438(a2);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    v38 = a1;
    do
    {
      if (sub_67DFE4(v6))
      {
        v8 = sub_67E004(v6);
        sub_570E70(v8, v41);
        v9 = a3[1];
        if (v9 >= a3[2])
        {
          v10 = sub_772EFC(a3, v41);
        }

        else
        {
          v10 = sub_5D7978(v9, v41) + 2000;
        }

        a3[1] = v10;
        if (v59 < 0)
        {
          operator delete(__p);
          if (v57 != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v57 != 1)
        {
LABEL_22:
          v17 = v45;
          if (v45)
          {
            goto LABEL_23;
          }

LABEL_68:
          sub_570440(v44);
          if (v43 == 1)
          {
            sub_3A9518(v42);
          }

          goto LABEL_5;
        }

        if (v56 < 0)
        {
          operator delete(v55);
          v16 = v53;
          if (v53)
          {
            goto LABEL_75;
          }

LABEL_19:
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v16 = v53;
          if (!v53)
          {
            goto LABEL_19;
          }

LABEL_75:
          v23 = v54;
          if (v54 == v16)
          {
            v54 = v16;
            operator delete(v16);
            if (v52 < 0)
            {
              goto LABEL_82;
            }

LABEL_20:
            if ((v50 & 0x80000000) == 0)
            {
LABEL_21:
              if ((v48 & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_84;
            }

LABEL_83:
            operator delete(v49);
            if ((v48 & 0x80000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_84:
            operator delete(v47);
            v17 = v45;
            if (!v45)
            {
              goto LABEL_68;
            }

LABEL_23:
            v18 = v46;
            v19 = v17;
            if (v46 == v17)
            {
LABEL_67:
              v46 = v17;
              operator delete(v19);
              goto LABEL_68;
            }

            while (2)
            {
              if (*(v18 - 16) != 1)
              {
                *(v18 - 416) = off_26696C8;
                if ((*(v18 - 385) & 0x80000000) == 0)
                {
                  goto LABEL_28;
                }

LABEL_54:
                operator delete(*(v18 - 408));
                if (*(v18 - 465) < 0)
                {
                  goto LABEL_55;
                }

LABEL_29:
                if ((*(v18 - 497) & 0x80000000) == 0)
                {
                  goto LABEL_30;
                }

LABEL_56:
                operator delete(*(v18 - 520));
                if (*(v18 - 521) < 0)
                {
                  goto LABEL_57;
                }

LABEL_31:
                if ((*(v18 - 561) & 0x80000000) == 0)
                {
                  goto LABEL_32;
                }

LABEL_58:
                operator delete(*(v18 - 584));
                if (*(v18 - 593) < 0)
                {
                  goto LABEL_59;
                }

LABEL_33:
                if (*(v18 - 617) < 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_25;
              }

              v20 = *(v18 - 40);
              if (v20)
              {
                v21 = *(v18 - 32);
                v22 = *(v18 - 40);
                if (v21 == v20)
                {
LABEL_47:
                  *(v18 - 32) = v20;
                  operator delete(v22);
                  goto LABEL_48;
                }

                while (2)
                {
                  if (*(v21 - 1) < 0)
                  {
                    operator delete(*(v21 - 24));
                    if (*(v21 - 25) < 0)
                    {
                      goto LABEL_44;
                    }

LABEL_41:
                    if (*(v21 - 49) < 0)
                    {
LABEL_45:
                      operator delete(*(v21 - 72));
                    }
                  }

                  else
                  {
                    if ((*(v21 - 25) & 0x80000000) == 0)
                    {
                      goto LABEL_41;
                    }

LABEL_44:
                    operator delete(*(v21 - 48));
                    if (*(v21 - 49) < 0)
                    {
                      goto LABEL_45;
                    }
                  }

                  v21 -= 248;
                  sub_33D5A0(v21);
                  if (v21 == v20)
                  {
                    v22 = *(v18 - 40);
                    goto LABEL_47;
                  }

                  continue;
                }
              }

LABEL_48:
              if (*(v18 - 49) < 0)
              {
                operator delete(*(v18 - 72));
                if (*(v18 - 81) < 0)
                {
                  goto LABEL_62;
                }

LABEL_50:
                if ((*(v18 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_51;
                }

LABEL_63:
                operator delete(*(v18 - 136));
                if (*(v18 - 137) < 0)
                {
                  goto LABEL_64;
                }

LABEL_52:
                if (*(v18 - 161) < 0)
                {
LABEL_65:
                  operator delete(*(v18 - 184));
                }
              }

              else
              {
                if ((*(v18 - 81) & 0x80000000) == 0)
                {
                  goto LABEL_50;
                }

LABEL_62:
                operator delete(*(v18 - 104));
                if (*(v18 - 113) < 0)
                {
                  goto LABEL_63;
                }

LABEL_51:
                if ((*(v18 - 137) & 0x80000000) == 0)
                {
                  goto LABEL_52;
                }

LABEL_64:
                operator delete(*(v18 - 160));
                if (*(v18 - 161) < 0)
                {
                  goto LABEL_65;
                }
              }

              sub_33D080(v18 - 376);
              *(v18 - 416) = off_26696C8;
              if (*(v18 - 385) < 0)
              {
                goto LABEL_54;
              }

LABEL_28:
              if ((*(v18 - 465) & 0x80000000) == 0)
              {
                goto LABEL_29;
              }

LABEL_55:
              operator delete(*(v18 - 488));
              if (*(v18 - 497) < 0)
              {
                goto LABEL_56;
              }

LABEL_30:
              if ((*(v18 - 521) & 0x80000000) == 0)
              {
                goto LABEL_31;
              }

LABEL_57:
              operator delete(*(v18 - 544));
              if (*(v18 - 561) < 0)
              {
                goto LABEL_58;
              }

LABEL_32:
              if ((*(v18 - 593) & 0x80000000) == 0)
              {
                goto LABEL_33;
              }

LABEL_59:
              operator delete(*(v18 - 616));
              if (*(v18 - 617) < 0)
              {
LABEL_60:
                operator delete(*(v18 - 640));
              }

LABEL_25:
              v18 -= 1120;
              sub_2C0F28(v18);
              if (v18 == v17)
              {
                v19 = v45;
                goto LABEL_67;
              }

              continue;
            }
          }

          do
          {
            v24 = *(v23 - 1);
            v23 -= 3;
            if (v24 < 0)
            {
              operator delete(*v23);
            }
          }

          while (v23 != v16);
          v54 = v16;
          operator delete(v53);
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_82:
        operator delete(v51);
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_83;
      }

      if (!sub_67DFF4(v6))
      {
        goto LABEL_5;
      }

      v11 = sub_3AF6B4(*a1);
      v12 = sub_67E020(v6);
      v13 = sub_31DDCC(v11, *v12);
      sub_40C59C(v11, v13, v39);
      sub_570FF0(v39, v41);
      v14 = a3[1];
      if (v14 >= a3[2])
      {
        v15 = sub_772EFC(a3, v41);
      }

      else
      {
        v15 = sub_5D7978(v14, v41) + 2000;
      }

      a3[1] = v15;
      if (v59 < 0)
      {
        operator delete(__p);
        if (v57 != 1)
        {
          goto LABEL_92;
        }
      }

      else if (v57 != 1)
      {
        goto LABEL_92;
      }

      if (v56 < 0)
      {
        operator delete(v55);
        v25 = v53;
        if (!v53)
        {
LABEL_89:
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_90;
          }

          goto LABEL_135;
        }
      }

      else
      {
        v25 = v53;
        if (!v53)
        {
          goto LABEL_89;
        }
      }

      v36 = v54;
      if (v54 == v25)
      {
        v54 = v25;
        operator delete(v25);
        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        do
        {
          v37 = *(v36 - 1);
          v36 -= 3;
          if (v37 < 0)
          {
            operator delete(*v36);
          }
        }

        while (v36 != v25);
        v54 = v25;
        operator delete(v53);
        if ((v52 & 0x80000000) == 0)
        {
LABEL_90:
          if ((v50 & 0x80000000) == 0)
          {
            goto LABEL_91;
          }

          goto LABEL_136;
        }
      }

LABEL_135:
      operator delete(v51);
      if ((v50 & 0x80000000) == 0)
      {
LABEL_91:
        if (v48 < 0)
        {
          goto LABEL_137;
        }

        goto LABEL_92;
      }

LABEL_136:
      operator delete(v49);
      if (v48 < 0)
      {
LABEL_137:
        operator delete(v47);
        v26 = v45;
        if (!v45)
        {
          goto LABEL_125;
        }

        goto LABEL_93;
      }

LABEL_92:
      v26 = v45;
      if (!v45)
      {
        goto LABEL_125;
      }

LABEL_93:
      v27 = v46;
      v28 = v26;
      if (v46 == v26)
      {
        goto LABEL_124;
      }

      v29 = 0;
      do
      {
        v30 = &v27[v29];
        if (v27[v29 - 16] != 1)
        {
          goto LABEL_103;
        }

        v60 = (v30 - 40);
        sub_5293E8(&v60);
        if (*(v30 - 49) < 0)
        {
          operator delete(*&v27[v29 - 72]);
          v31 = &v27[v29];
          if ((v27[v29 - 81] & 0x80000000) == 0)
          {
LABEL_99:
            if ((*(v31 - 113) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

            goto LABEL_120;
          }
        }

        else
        {
          v31 = &v27[v29];
          if ((v27[v29 - 81] & 0x80000000) == 0)
          {
            goto LABEL_99;
          }
        }

        operator delete(*(v31 - 13));
        if ((*(v31 - 113) & 0x80000000) == 0)
        {
LABEL_100:
          v32 = &v27[v29];
          if ((v27[v29 - 137] & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

          goto LABEL_121;
        }

LABEL_120:
        operator delete(*&v27[v29 - 136]);
        v32 = &v27[v29];
        if ((v27[v29 - 137] & 0x80000000) == 0)
        {
LABEL_101:
          if (*(v32 - 161) < 0)
          {
            goto LABEL_122;
          }

          goto LABEL_102;
        }

LABEL_121:
        operator delete(*(v31 - 20));
        if (*(v32 - 161) < 0)
        {
LABEL_122:
          operator delete(*&v27[v29 - 184]);
        }

LABEL_102:
        sub_33D080((v30 - 376));
LABEL_103:
        *(v30 - 52) = off_26696C8;
        if (*(v30 - 385) < 0)
        {
          operator delete(*&v27[v29 - 408]);
          v33 = &v27[v29];
          if ((v27[v29 - 465] & 0x80000000) == 0)
          {
LABEL_105:
            if ((*(v33 - 497) & 0x80000000) == 0)
            {
              goto LABEL_106;
            }

            goto LABEL_113;
          }
        }

        else
        {
          v33 = &v27[v29];
          if ((v27[v29 - 465] & 0x80000000) == 0)
          {
            goto LABEL_105;
          }
        }

        operator delete(*(v33 - 61));
        if ((*(v33 - 497) & 0x80000000) == 0)
        {
LABEL_106:
          v34 = &v27[v29];
          if ((v27[v29 - 521] & 0x80000000) == 0)
          {
            goto LABEL_107;
          }

          goto LABEL_114;
        }

LABEL_113:
        operator delete(*&v27[v29 - 520]);
        v34 = &v27[v29];
        if ((v27[v29 - 521] & 0x80000000) == 0)
        {
LABEL_107:
          if ((*(v34 - 561) & 0x80000000) == 0)
          {
            goto LABEL_108;
          }

          goto LABEL_115;
        }

LABEL_114:
        operator delete(*(v34 - 68));
        if ((*(v34 - 561) & 0x80000000) == 0)
        {
LABEL_108:
          v35 = &v27[v29];
          if (v27[v29 - 593] < 0)
          {
            goto LABEL_116;
          }

          goto LABEL_109;
        }

LABEL_115:
        operator delete(*&v27[v29 - 584]);
        v35 = &v27[v29];
        if (v27[v29 - 593] < 0)
        {
LABEL_116:
          operator delete(*(v33 - 77));
          if ((*(v35 - 617) & 0x80000000) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_117;
        }

LABEL_109:
        if ((*(v35 - 617) & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

LABEL_117:
        operator delete(*&v27[v29 - 640]);
LABEL_95:
        sub_2C0F28((v30 - 1120));
        v29 -= 1120;
      }

      while (&v27[v29] != v26);
      v28 = v45;
      a1 = v38;
LABEL_124:
      v46 = v26;
      operator delete(v28);
LABEL_125:
      sub_570440(v44);
      if (v43 == 1)
      {
        sub_3A9518(v42);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

LABEL_5:
      v6 += 1128;
    }

    while (v6 != v7);
  }
}

void *sub_7720C4(void *result, unint64_t a2)
{
  if (0x1CAC083126E978D5 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x20C49BA5E353F8)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_772608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_772648(uint64_t *a1, uint64_t a2)
{
  v2 = 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x20C49BA5E353F7)
  {
    sub_1794();
  }

  if (0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x1CAC083126E978D5 * ((a1[2] - *a1) >> 4)) >= 0x10624DD2F1A9FBLL)
  {
    v5 = 0x20C49BA5E353F7;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x20C49BA5E353F7)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_5C3640(v15, a2);
  v6 = 2000 * v2 + 2000;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_5D7978(v12, v11);
      v11 += 2000;
      v12 = v13 + 2000;
    }

    while (v11 != v8);
    do
    {
      sub_5C0D2C(v7);
      v7 += 2000;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_7727C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7727D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7727D4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2000;
    sub_5C0D2C(i - 2000);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_772828(uint64_t a1)
{
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
    if ((*(a1 + 599) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 519) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      operator delete(*(a1 + 496));
      v2 = *(a1 + 432);
      if (!v2)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(a1 + 599) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 576));
  if (*(a1 + 519) < 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v2 = *(a1 + 432);
  if (!v2)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_5:
    v3 = *v2;
    sub_253B4((v2 + 2));
    operator delete(v2);
    v2 = v3;
  }

  while (v3);
LABEL_6:
  v4 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

char *sub_7728D4(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x1CAC083126E978D5 * ((v9 - v10) >> 4) >= a5)
    {
      v15 = v10 - a2;
      if (0x1CAC083126E978D5 * ((v10 - a2) >> 4) >= a5)
      {
        v19 = &a2[2000 * a5];
        v20 = v10 - 2000 * a5;
        for (i = a1[1]; v20 < v10; i = v22 + 2000)
        {
          v22 = sub_5D7978(i, v20);
          v20 += 2000;
        }

        a1[1] = i;
        if (v10 != v19)
        {
          v23 = v10 - 2000;
          v24 = &v5[2000 * a5 - v10];
          v25 = v10 - 2000 - 2000 * a5;
          do
          {
            sub_5D82BC(v23, v25);
            v23 -= 2000;
            v25 -= 2000;
            v24 += 2000;
          }

          while (v24);
        }

        v26 = v7 + 2000 * a5;
        v27 = v5;
        do
        {
          sub_5D8878(v27, v7);
          v7 += 2000;
          v27 += 2000;
        }

        while (v7 != v26);
      }

      else
      {
        v17 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v18 = a1[1];
          a1[1] = v10;
          if (v15 < 1)
          {
            return v5;
          }
        }

        else
        {
          v44 = 0;
          do
          {
            sub_5C3640(v10 + v44, v17 + v44);
            v44 += 2000;
          }

          while (v17 + v44 != a4);
          v18 = v10 + v44;
          a1[1] = v10 + v44;
          if (v15 < 1)
          {
            return v5;
          }
        }

        v45 = v18 - 2000 * a5;
        for (j = v18; v45 < v10; j = v47 + 2000)
        {
          v47 = sub_5D7978(j, v45);
          v45 += 2000;
        }

        a1[1] = j;
        if (v18 != &v5[2000 * a5])
        {
          v48 = v18 - 2000;
          v49 = &v5[2000 * a5 - v18];
          v50 = v18 - 2000 - 2000 * a5;
          do
          {
            sub_5D82BC(v48, v50);
            v48 -= 2000;
            v50 -= 2000;
            v49 += 2000;
          }

          while (v49);
        }

        v51 = v5;
        do
        {
          sub_5D8878(v51, v7);
          v7 += 2000;
          v51 += 2000;
        }

        while (v7 != v17);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x1CAC083126E978D5 * ((v10 - *a1) >> 4);
      if (v12 > 0x20C49BA5E353F7)
      {
        sub_1794();
      }

      v13 = 0x1CAC083126E978D5 * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x10624DD2F1A9FBLL)
      {
        v14 = 0x20C49BA5E353F7;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x20C49BA5E353F7)
        {
          operator new();
        }

        sub_1808();
      }

      v28 = 16 * ((a2 - v11) >> 4);
      v53 = v28;
      v29 = 2000 * a5;
      v30 = v28 + 2000 * a5;
      do
      {
        sub_5C3640(v28, v7);
        v28 += 2000;
        v7 += 2000;
        v29 -= 2000;
      }

      while (v29);
      v31 = a1[1];
      v32 = v5;
      if (v31 != v5)
      {
        v33 = v5;
        v34 = v30;
        do
        {
          v35 = sub_5D7978(v34, v33);
          v33 += 2000;
          v34 = v35 + 2000;
        }

        while (v33 != v31);
        v36 = v5;
        do
        {
          sub_5C0D2C(v36);
          v36 += 2000;
        }

        while (v36 != v31);
        v32 = a1[1];
      }

      v37 = v30 + v32 - v5;
      a1[1] = v5;
      v38 = *a1;
      v39 = *a1 - v5;
      v40 = v53 + v39;
      if (*a1 != v5)
      {
        v41 = *a1;
        v42 = v53 + v39;
        do
        {
          v43 = sub_5D7978(v42, v41);
          v41 += 2000;
          v42 = v43 + 2000;
        }

        while (v41 != v5);
        do
        {
          sub_5C0D2C(v38);
          v38 += 2000;
        }

        while (v38 != v5);
        v38 = *a1;
      }

      *a1 = v40;
      a1[1] = v37;
      a1[2] = 0;
      if (v38)
      {
        operator delete(v38);
      }

      return v53;
    }
  }

  return v5;
}

void sub_772CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7727D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_772CE0(uint64_t a1)
{
  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  v2 = *(a1 + 432);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_253B4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_772D50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  if (a2 != a1)
  {
    v6 = a3[1];
    if (*a3 == v6)
    {
      v5 = a1 + 1120 * ((a2 - a1 - 1120) / 0x460uLL) + 1120;
    }

    else
    {
      while (1)
      {
        v14 = *a3;
        if (*a3 != v6)
        {
          while (1)
          {
            if (sub_6591C4(v14, v5))
            {
              v15 = *(v14 + 236);
              v16 = *(v5 + 236);
              if (v15 > v16 || v15 == v16 && (sub_658FC4(v14, v5) & 1) != 0)
              {
                break;
              }
            }

            v14 += 1120;
            if (v14 == v6)
            {
              v14 = v6;
              break;
            }
          }

          v6 = a3[1];
          if (v14 != v6)
          {
            break;
          }
        }

        v5 += 1120;
        if (v5 == a2)
        {
          return a2;
        }
      }
    }
  }

  if (v5 == a2)
  {
    return a2;
  }

  v7 = v5 + 1120;
  if (v5 + 1120 == a2)
  {
    return v5;
  }

  v8 = v5;
  do
  {
    v9 = v7;
    v10 = *a3;
    v11 = a3[1];
    if (*a3 == v11)
    {
      goto LABEL_18;
    }

    while (1)
    {
      if (sub_6591C4(v10, v9))
      {
        v12 = *(v10 + 236);
        v13 = *(v5 + 1356);
        if (v12 > v13 || v12 == v13 && (sub_658FC4(v10, v9) & 1) != 0)
        {
          break;
        }
      }

      v10 += 1120;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    if (v10 == a3[1])
    {
LABEL_18:
      sub_52BE74(v8, v9);
      v8 += 1120;
    }

    v7 = v9 + 1120;
    v5 = v9;
  }

  while (v9 + 1120 != a2);
  return v8;
}

uint64_t sub_772EFC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x20C49BA5E353F7)
  {
    sub_1794();
  }

  if (0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x395810624DD2F1AALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x1CAC083126E978D5 * ((a1[2] - *a1) >> 4)) >= 0x10624DD2F1A9FBLL)
  {
    v5 = 0x20C49BA5E353F7;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x20C49BA5E353F7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  sub_5D7978(v6, a2);
  v7 = 2000 * v2 + 2000;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_5D7978(v12, v11);
      v11 += 2000;
      v12 = v13 + 2000;
    }

    while (v11 != v9);
    do
    {
      sub_5C0D2C(v8);
      v8 += 2000;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_773060(void **a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v5 = 0x186186186186186;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_52A464(v18, a2);
  v6 = 168 * v2 + 168;
  v7 = *a1;
  v8 = a1[1];
  v9 = v18 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v18 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 8);
      *(v11 + 24) = *(v10 + 3);
      *(v11 + 8) = v12;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 1) = 0;
      v13 = *(v10 + 2);
      *(v11 + 48) = *(v10 + 12);
      *(v11 + 32) = v13;
      v14 = *(v10 + 56);
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 56) = v14;
      *(v10 + 8) = 0;
      *(v10 + 9) = 0;
      *(v10 + 7) = 0;
      v15 = *(v10 + 5);
      *(v11 + 96) = *(v10 + 12);
      *(v11 + 80) = v15;
      *(v10 + 10) = 0;
      *(v10 + 11) = 0;
      *(v10 + 12) = 0;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      *(v11 + 120) = 0;
      *(v11 + 104) = *(v10 + 104);
      *(v11 + 120) = *(v10 + 15);
      *(v10 + 13) = 0;
      *(v10 + 14) = 0;
      *(v10 + 15) = 0;
      *(v11 + 128) = *(v10 + 16);
      v16 = *(v10 + 136);
      *(v11 + 152) = *(v10 + 19);
      *(v11 + 136) = v16;
      *(v10 + 18) = 0;
      *(v10 + 19) = 0;
      *(v10 + 17) = 0;
      *(v11 + 160) = *(v10 + 80);
      v10 += 168;
      v11 += 168;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_52A624(v7) + 168);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_773268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_530BBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_77327C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = 0x1CAC083126E978D5;
LABEL_2:
  v30 = a2 - 2000;
  v8 = v6;
LABEL_3:
  v9 = 1 - a3;
  while (1)
  {
    v6 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = ((a2 - v8) >> 4) * v7;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v24 = sub_570CBC(v30);
      result = sub_570CBC(v8);
      if (v24 < result)
      {
        v25 = v8;
        v26 = v30;
        goto LABEL_34;
      }

      return result;
    }

LABEL_11:
    if (v11 <= 47999)
    {
      if (a4)
      {

        return sub_77394C(v8, a2);
      }

      else
      {

        return sub_773DFC(v8, a2);
      }
    }

    if (v10 == 1)
    {

      return sub_774280(v8, a2, a2);
    }

    v13 = v12 >> 1;
    v14 = v8 + 2000 * (v12 >> 1);
    if (v11 < 0x3E801)
    {
      sub_7736A4(v14, v8, v30);
      if (a4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_7736A4(v8, v14, v30);
      v15 = v8 + 2000;
      v16 = v7;
      v17 = 2000 * v13;
      v18 = 2000 * v13 + v6 - 2000;
      sub_7736A4(v6 + 2000, v18, a2 - 4000);
      sub_7736A4(v6 + 4000, v15 + v17, a2 - 6000);
      v19 = v15 + v17;
      v7 = v16;
      sub_7736A4(v18, v14, v19);
      sub_77560C(v6, v14);
      if (a4)
      {
        goto LABEL_18;
      }
    }

    v20 = sub_570CBC(v6 - 2000);
    if (v20 >= sub_570CBC(v6))
    {
      result = sub_774C50(v6, a2);
      v8 = result;
      goto LABEL_23;
    }

LABEL_18:
    v21 = sub_774F54(v6, a2);
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

    v23 = sub_775254(v6, v21);
    v8 = v21 + 2000;
    result = sub_775254(v21 + 2000, a2);
    if (result)
    {
      a3 = -v10;
      a2 = v21;
      if (v23)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v23)
    {
LABEL_21:
      result = sub_77327C(v6, v21, -v10, a4 & 1);
      v8 = v21 + 2000;
LABEL_23:
      a4 = 0;
      a3 = -v10;
      goto LABEL_3;
    }
  }

  if (v12 == 3)
  {

    return sub_7736A4(v8, v8 + 2000, v30);
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      return sub_7737D0(v8, v8 + 2000, v8 + 4000, v8 + 6000, v30);
    }

    goto LABEL_11;
  }

  sub_7736A4(v8, v8 + 2000, v8 + 4000);
  v27 = sub_570CBC(v30);
  result = sub_570CBC(v8 + 4000);
  if (v27 < result)
  {
    sub_77560C(v8 + 4000, v30);
    v28 = sub_570CBC(v8 + 4000);
    result = sub_570CBC(v8 + 2000);
    if (v28 < result)
    {
      sub_77560C(v8 + 2000, v8 + 4000);
      v29 = sub_570CBC(v8 + 2000);
      result = sub_570CBC(v8);
      if (v29 < result)
      {
        v26 = v8 + 2000;
        v25 = v8;
LABEL_34:

        return sub_77560C(v25, v26);
      }
    }
  }

  return result;
}

uint64_t sub_7736A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_570CBC(a2);
  v7 = sub_570CBC(a1);
  v8 = sub_570CBC(a3);
  result = sub_570CBC(a2);
  if (v6 >= v7)
  {
    if (v8 < result)
    {
      sub_77560C(a2, a3);
      v11 = sub_570CBC(a2);
      result = sub_570CBC(a1);
      if (v11 < result)
      {
        v10 = a1;
        v12 = a2;

        return sub_77560C(v10, v12);
      }
    }
  }

  else
  {
    if (v8 < result)
    {
      v10 = a1;
      goto LABEL_11;
    }

    sub_77560C(a1, a2);
    v13 = sub_570CBC(a3);
    result = sub_570CBC(a2);
    if (v13 < result)
    {
      v10 = a2;
LABEL_11:
      v12 = a3;

      return sub_77560C(v10, v12);
    }
  }

  return result;
}

uint64_t sub_7737D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_7736A4(a1, a2, a3);
  v10 = sub_570CBC(a4);
  if (v10 < sub_570CBC(a3))
  {
    sub_77560C(a3, a4);
    v11 = sub_570CBC(a3);
    if (v11 < sub_570CBC(a2))
    {
      sub_77560C(a2, a3);
      v12 = sub_570CBC(a2);
      if (v12 < sub_570CBC(a1))
      {
        sub_77560C(a1, a2);
      }
    }
  }

  v13 = sub_570CBC(a5);
  result = sub_570CBC(a4);
  if (v13 < result)
  {
    sub_77560C(a4, a5);
    v15 = sub_570CBC(a4);
    result = sub_570CBC(a3);
    if (v15 < result)
    {
      sub_77560C(a3, a4);
      v16 = sub_570CBC(a3);
      result = sub_570CBC(a2);
      if (v16 < result)
      {
        sub_77560C(a2, a3);
        v17 = sub_570CBC(a2);
        result = sub_570CBC(a1);
        if (v17 < result)
        {

          return sub_77560C(a1, a2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_77394C(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2000;
    if (result + 2000 != a2)
    {
      v5 = 0;
      v6 = result;
      while (1)
      {
        v7 = v6;
        v6 = v4;
        v8 = sub_570CBC(v4);
        result = sub_570CBC(v7);
        if (v8 < result)
        {
          break;
        }

LABEL_4:
        v4 = v6 + 2000;
        v5 += 2000;
        if (v6 + 2000 == a2)
        {
          return result;
        }
      }

      sub_5D7978(&v21, v6);
      v9 = v5;
      while (1)
      {
        sub_5D82BC(v3 + v9 + 2000, v3 + v9);
        if (!v9)
        {
          break;
        }

        v10 = sub_570CBC(&v21);
        v11 = sub_570CBC(v3 + v9 - 2000);
        v9 -= 2000;
        if (v10 >= v11)
        {
          sub_5D82BC(v3 + v9 + 2000, &v21);
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      sub_5D82BC(v3, &v21);
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_12:
      operator delete(__p);
LABEL_13:
      if (v36 != 1)
      {
        goto LABEL_19;
      }

      if (v35 < 0)
      {
        operator delete(v34);
        v12 = v32;
        if (!v32)
        {
LABEL_16:
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_75:
          operator delete(v30);
          if ((v29 & 0x80000000) == 0)
          {
LABEL_18:
            if ((v27 & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_77:
            operator delete(v26);
            v13 = v24;
            if (!v24)
            {
LABEL_65:
              result = sub_570440(&v23);
              if (v22[1120] == 1)
              {
                result = sub_3A9518(v22);
              }

              goto LABEL_4;
            }

LABEL_20:
            v14 = v25;
            v15 = v13;
            if (v25 == v13)
            {
              goto LABEL_64;
            }

            while (1)
            {
              if (*(v14 - 16) != 1)
              {
                *(v14 - 416) = off_26696C8;
                if ((*(v14 - 385) & 0x80000000) == 0)
                {
                  goto LABEL_25;
                }

                goto LABEL_51;
              }

              v16 = *(v14 - 40);
              if (v16)
              {
                break;
              }

LABEL_45:
              if (*(v14 - 49) < 0)
              {
                operator delete(*(v14 - 72));
                if ((*(v14 - 81) & 0x80000000) == 0)
                {
LABEL_47:
                  if ((*(v14 - 113) & 0x80000000) == 0)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_60;
                }
              }

              else if ((*(v14 - 81) & 0x80000000) == 0)
              {
                goto LABEL_47;
              }

              operator delete(*(v14 - 104));
              if ((*(v14 - 113) & 0x80000000) == 0)
              {
LABEL_48:
                if ((*(v14 - 137) & 0x80000000) == 0)
                {
                  goto LABEL_49;
                }

LABEL_61:
                operator delete(*(v14 - 160));
                if ((*(v14 - 161) & 0x80000000) == 0)
                {
                  goto LABEL_50;
                }

                goto LABEL_62;
              }

LABEL_60:
              operator delete(*(v14 - 136));
              if (*(v14 - 137) < 0)
              {
                goto LABEL_61;
              }

LABEL_49:
              if ((*(v14 - 161) & 0x80000000) == 0)
              {
                goto LABEL_50;
              }

LABEL_62:
              operator delete(*(v14 - 184));
LABEL_50:
              sub_33D080(v14 - 376);
              *(v14 - 416) = off_26696C8;
              if ((*(v14 - 385) & 0x80000000) == 0)
              {
LABEL_25:
                if ((*(v14 - 465) & 0x80000000) == 0)
                {
                  goto LABEL_26;
                }

                goto LABEL_52;
              }

LABEL_51:
              operator delete(*(v14 - 408));
              if ((*(v14 - 465) & 0x80000000) == 0)
              {
LABEL_26:
                if ((*(v14 - 497) & 0x80000000) == 0)
                {
                  goto LABEL_27;
                }

                goto LABEL_53;
              }

LABEL_52:
              operator delete(*(v14 - 488));
              if ((*(v14 - 497) & 0x80000000) == 0)
              {
LABEL_27:
                if ((*(v14 - 521) & 0x80000000) == 0)
                {
                  goto LABEL_28;
                }

                goto LABEL_54;
              }

LABEL_53:
              operator delete(*(v14 - 520));
              if ((*(v14 - 521) & 0x80000000) == 0)
              {
LABEL_28:
                if ((*(v14 - 561) & 0x80000000) == 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_55;
              }

LABEL_54:
              operator delete(*(v14 - 544));
              if ((*(v14 - 561) & 0x80000000) == 0)
              {
LABEL_29:
                if ((*(v14 - 593) & 0x80000000) == 0)
                {
                  goto LABEL_30;
                }

                goto LABEL_56;
              }

LABEL_55:
              operator delete(*(v14 - 584));
              if ((*(v14 - 593) & 0x80000000) == 0)
              {
LABEL_30:
                if (*(v14 - 617) < 0)
                {
                  goto LABEL_57;
                }

                goto LABEL_22;
              }

LABEL_56:
              operator delete(*(v14 - 616));
              if (*(v14 - 617) < 0)
              {
LABEL_57:
                operator delete(*(v14 - 640));
              }

LABEL_22:
              v14 -= 1120;
              sub_2C0F28(v14);
              if (v14 == v13)
              {
                v15 = v24;
LABEL_64:
                v25 = v13;
                operator delete(v15);
                goto LABEL_65;
              }
            }

            v17 = *(v14 - 32);
            v18 = *(v14 - 40);
            if (v17 == v16)
            {
LABEL_44:
              *(v14 - 32) = v16;
              operator delete(v18);
              goto LABEL_45;
            }

            while (1)
            {
              if (*(v17 - 1) < 0)
              {
                operator delete(*(v17 - 24));
                if ((*(v17 - 25) & 0x80000000) == 0)
                {
LABEL_38:
                  if (*(v17 - 49) < 0)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_35;
                }
              }

              else if ((*(v17 - 25) & 0x80000000) == 0)
              {
                goto LABEL_38;
              }

              operator delete(*(v17 - 48));
              if (*(v17 - 49) < 0)
              {
LABEL_42:
                operator delete(*(v17 - 72));
              }

LABEL_35:
              v17 -= 248;
              sub_33D5A0(v17);
              if (v17 == v16)
              {
                v18 = *(v14 - 40);
                goto LABEL_44;
              }
            }
          }

          goto LABEL_76;
        }
      }

      else
      {
        v12 = v32;
        if (!v32)
        {
          goto LABEL_16;
        }
      }

      v19 = v33;
      if (v33 == v12)
      {
        v33 = v12;
        operator delete(v12);
        if (v31 < 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        do
        {
          v20 = *(v19 - 1);
          v19 -= 3;
          if (v20 < 0)
          {
            operator delete(*v19);
          }
        }

        while (v19 != v12);
        v33 = v12;
        operator delete(v32);
        if (v31 < 0)
        {
          goto LABEL_75;
        }
      }

LABEL_17:
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_76:
      operator delete(v28);
      if (v27 < 0)
      {
        goto LABEL_77;
      }

LABEL_19:
      v13 = v24;
      if (!v24)
      {
        goto LABEL_65;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_773DFC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2000;
    if (result + 2000 != a2)
    {
      while (1)
      {
        v5 = v4;
        v6 = sub_570CBC(v4);
        result = sub_570CBC(v3);
        if (v6 < result)
        {
          break;
        }

LABEL_4:
        v4 = v5 + 2000;
        v3 = v5;
        if (v5 + 2000 == a2)
        {
          return result;
        }
      }

      sub_5D7978(&v17, v5);
      do
      {
        sub_5D82BC(v3 + 2000, v3);
        v7 = sub_570CBC(&v17);
        v3 -= 2000;
      }

      while (v7 < sub_570CBC(v3));
      sub_5D82BC(v3 + 2000, &v17);
      if (v34 < 0)
      {
        operator delete(__p);
        if (v32 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v32 != 1)
      {
LABEL_17:
        v9 = v20;
        if (!v20)
        {
          goto LABEL_63;
        }

        goto LABEL_18;
      }

      if (v31 < 0)
      {
        operator delete(v30);
        v8 = v28;
        if (!v28)
        {
LABEL_14:
          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_73:
          operator delete(v26);
          if ((v25 & 0x80000000) == 0)
          {
LABEL_16:
            if ((v23 & 0x80000000) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_75;
          }

LABEL_74:
          operator delete(v24);
          if ((v23 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_75:
          operator delete(v22);
          v9 = v20;
          if (!v20)
          {
LABEL_63:
            result = sub_570440(&v19);
            if (v18[1120] == 1)
            {
              result = sub_3A9518(v18);
            }

            goto LABEL_4;
          }

LABEL_18:
          v10 = v21;
          v11 = v9;
          if (v21 == v9)
          {
            goto LABEL_62;
          }

          while (1)
          {
            if (*(v10 - 16) != 1)
            {
              *(v10 - 416) = off_26696C8;
              if ((*(v10 - 385) & 0x80000000) == 0)
              {
                goto LABEL_23;
              }

              goto LABEL_49;
            }

            v12 = *(v10 - 40);
            if (v12)
            {
              break;
            }

LABEL_43:
            if (*(v10 - 49) < 0)
            {
              operator delete(*(v10 - 72));
              if ((*(v10 - 81) & 0x80000000) == 0)
              {
LABEL_45:
                if ((*(v10 - 113) & 0x80000000) == 0)
                {
                  goto LABEL_46;
                }

                goto LABEL_58;
              }
            }

            else if ((*(v10 - 81) & 0x80000000) == 0)
            {
              goto LABEL_45;
            }

            operator delete(*(v10 - 104));
            if ((*(v10 - 113) & 0x80000000) == 0)
            {
LABEL_46:
              if ((*(v10 - 137) & 0x80000000) == 0)
              {
                goto LABEL_47;
              }

LABEL_59:
              operator delete(*(v10 - 160));
              if ((*(v10 - 161) & 0x80000000) == 0)
              {
                goto LABEL_48;
              }

              goto LABEL_60;
            }

LABEL_58:
            operator delete(*(v10 - 136));
            if (*(v10 - 137) < 0)
            {
              goto LABEL_59;
            }

LABEL_47:
            if ((*(v10 - 161) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_60:
            operator delete(*(v10 - 184));
LABEL_48:
            sub_33D080(v10 - 376);
            *(v10 - 416) = off_26696C8;
            if ((*(v10 - 385) & 0x80000000) == 0)
            {
LABEL_23:
              if ((*(v10 - 465) & 0x80000000) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_50;
            }

LABEL_49:
            operator delete(*(v10 - 408));
            if ((*(v10 - 465) & 0x80000000) == 0)
            {
LABEL_24:
              if ((*(v10 - 497) & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_51;
            }

LABEL_50:
            operator delete(*(v10 - 488));
            if ((*(v10 - 497) & 0x80000000) == 0)
            {
LABEL_25:
              if ((*(v10 - 521) & 0x80000000) == 0)
              {
                goto LABEL_26;
              }

              goto LABEL_52;
            }

LABEL_51:
            operator delete(*(v10 - 520));
            if ((*(v10 - 521) & 0x80000000) == 0)
            {
LABEL_26:
              if ((*(v10 - 561) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_53;
            }

LABEL_52:
            operator delete(*(v10 - 544));
            if ((*(v10 - 561) & 0x80000000) == 0)
            {
LABEL_27:
              if ((*(v10 - 593) & 0x80000000) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_54;
            }

LABEL_53:
            operator delete(*(v10 - 584));
            if ((*(v10 - 593) & 0x80000000) == 0)
            {
LABEL_28:
              if (*(v10 - 617) < 0)
              {
                goto LABEL_55;
              }

              goto LABEL_20;
            }

LABEL_54:
            operator delete(*(v10 - 616));
            if (*(v10 - 617) < 0)
            {
LABEL_55:
              operator delete(*(v10 - 640));
            }

LABEL_20:
            v10 -= 1120;
            sub_2C0F28(v10);
            if (v10 == v9)
            {
              v11 = v20;
LABEL_62:
              v21 = v9;
              operator delete(v11);
              goto LABEL_63;
            }
          }

          v13 = *(v10 - 32);
          v14 = *(v10 - 40);
          if (v13 == v12)
          {
LABEL_42:
            *(v10 - 32) = v12;
            operator delete(v14);
            goto LABEL_43;
          }

          while (1)
          {
            if (*(v13 - 1) < 0)
            {
              operator delete(*(v13 - 24));
              if ((*(v13 - 25) & 0x80000000) == 0)
              {
LABEL_36:
                if (*(v13 - 49) < 0)
                {
                  goto LABEL_40;
                }

                goto LABEL_33;
              }
            }

            else if ((*(v13 - 25) & 0x80000000) == 0)
            {
              goto LABEL_36;
            }

            operator delete(*(v13 - 48));
            if (*(v13 - 49) < 0)
            {
LABEL_40:
              operator delete(*(v13 - 72));
            }

LABEL_33:
            v13 -= 248;
            sub_33D5A0(v13);
            if (v13 == v12)
            {
              v14 = *(v10 - 40);
              goto LABEL_42;
            }
          }
        }
      }

      else
      {
        v8 = v28;
        if (!v28)
        {
          goto LABEL_14;
        }
      }

      v15 = v29;
      if (v29 == v8)
      {
        v29 = v8;
        operator delete(v8);
        if (v27 < 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        do
        {
          v16 = *(v15 - 1);
          v15 -= 3;
          if (v16 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v8);
        v29 = v8;
        operator delete(v28);
        if (v27 < 0)
        {
          goto LABEL_73;
        }
      }

LABEL_15:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_74;
    }
  }

  return result;
}

uint64_t sub_774280(uint64_t result, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  if (result != a2)
  {
    v4 = result;
    v5 = a2 - result;
    v6 = 0x1CAC083126E978D5 * ((a2 - result) >> 4);
    if (a2 - result >= 2001)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = result + 2000 * v7;
      do
      {
        result = sub_77578C(v4, v6, v9);
        v9 -= 2000;
        --v8;
      }

      while (v8);
    }

    if (v53 != a3)
    {
      v10 = v53;
      do
      {
        v11 = sub_570CBC(v10);
        result = sub_570CBC(v4);
        if (v11 < result)
        {
          sub_77560C(v10, v4);
          result = sub_77578C(v4, v6, v4);
        }

        v10 += 2000;
      }

      while (v10 != a3);
    }

    if (v5 >= 2001)
    {
      v12 = 0x1CAC083126E978D5 * (v5 >> 4);
      do
      {
        sub_5D7978(v54, v4);
        v14 = 0;
        v15 = v4;
        do
        {
          v16 = v15 + 2000 * v14;
          v17 = v16 + 2000;
          v18 = (2 * v14) | 1;
          v19 = 2 * v14 + 2;
          if (v19 < v12)
          {
            v20 = sub_570CBC(v16 + 2000);
            v21 = v16 + 4000;
            if (v20 < sub_570CBC(v21))
            {
              v17 = v21;
              v18 = v19;
            }
          }

          sub_5D82BC(v15, v17);
          v15 = v17;
          v14 = v18;
        }

        while (v18 <= ((v12 - 2) >> 1));
        v22 = v53 - 2000;
        v23 = v17 == v53 - 2000;
        v53 -= 2000;
        if (v23)
        {
          sub_5D82BC(v17, v54);
          goto LABEL_29;
        }

        sub_5D82BC(v17, v22);
        sub_5D82BC(v22, v54);
        v24 = v17 - v4 + 2000;
        if (v24 >= 2001)
        {
          v25 = (0x1CAC083126E978D5 * (v24 >> 4) - 2) >> 1;
          v26 = v4 + 2000 * v25;
          v27 = sub_570CBC(v26);
          if (v27 < sub_570CBC(v17))
          {
            sub_5D7978(v72, v17);
            do
            {
              v28 = v26;
              sub_5D82BC(v17, v26);
              if (!v25)
              {
                break;
              }

              v25 = (v25 - 1) >> 1;
              v26 = v4 + 2000 * v25;
              v29 = sub_570CBC(v26);
              v17 = v28;
            }

            while (v29 < sub_570CBC(v72));
            sub_5D82BC(v28, v72);
            if (v89 < 0)
            {
              operator delete(v88);
              if (v87 != 1)
              {
                goto LABEL_112;
              }
            }

            else if (v87 != 1)
            {
LABEL_112:
              v43 = v75;
              if (!v75)
              {
                goto LABEL_145;
              }

              goto LABEL_113;
            }

            if (v86 < 0)
            {
              operator delete(v85);
            }

            v39 = v83;
            if (v83)
            {
              v40 = v84;
              v41 = v83;
              if (v84 != v83)
              {
                do
                {
                  v42 = *(v40 - 1);
                  v40 -= 3;
                  if (v42 < 0)
                  {
                    operator delete(*v40);
                  }
                }

                while (v40 != v39);
                v41 = v83;
              }

              v84 = v39;
              operator delete(v41);
            }

            if (v82 < 0)
            {
              operator delete(v81);
              if ((v80 & 0x80000000) == 0)
              {
LABEL_111:
                if ((v78 & 0x80000000) == 0)
                {
                  goto LABEL_112;
                }

                goto LABEL_149;
              }
            }

            else if ((v80 & 0x80000000) == 0)
            {
              goto LABEL_111;
            }

            operator delete(v79);
            if ((v78 & 0x80000000) == 0)
            {
              goto LABEL_112;
            }

LABEL_149:
            operator delete(v77);
            v43 = v75;
            if (!v75)
            {
              goto LABEL_145;
            }

LABEL_113:
            v44 = v76;
            v45 = v43;
            if (v76 == v43)
            {
              goto LABEL_144;
            }

            v46 = 0;
            while (1)
            {
              v47 = &v44[v46];
              if (v44[v46 - 16] != 1)
              {
                goto LABEL_123;
              }

              v90 = (v47 - 40);
              sub_5293E8(&v90);
              if (*(v47 - 49) < 0)
              {
                operator delete(*&v44[v46 - 72]);
                v48 = &v44[v46];
                if ((v44[v46 - 81] & 0x80000000) == 0)
                {
LABEL_119:
                  if ((*(v48 - 113) & 0x80000000) == 0)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_140;
                }
              }

              else
              {
                v48 = &v44[v46];
                if ((v44[v46 - 81] & 0x80000000) == 0)
                {
                  goto LABEL_119;
                }
              }

              operator delete(*(v48 - 13));
              if ((*(v48 - 113) & 0x80000000) == 0)
              {
LABEL_120:
                v49 = &v44[v46];
                if ((v44[v46 - 137] & 0x80000000) == 0)
                {
                  goto LABEL_121;
                }

                goto LABEL_141;
              }

LABEL_140:
              operator delete(*&v44[v46 - 136]);
              v49 = &v44[v46];
              if ((v44[v46 - 137] & 0x80000000) == 0)
              {
LABEL_121:
                if (*(v49 - 161) < 0)
                {
                  goto LABEL_142;
                }

                goto LABEL_122;
              }

LABEL_141:
              operator delete(*(v48 - 20));
              if (*(v49 - 161) < 0)
              {
LABEL_142:
                operator delete(*&v44[v46 - 184]);
              }

LABEL_122:
              sub_33D080((v47 - 376));
LABEL_123:
              *(v47 - 52) = off_26696C8;
              if (*(v47 - 385) < 0)
              {
                operator delete(*&v44[v46 - 408]);
                v50 = &v44[v46];
                if ((v44[v46 - 465] & 0x80000000) == 0)
                {
LABEL_125:
                  if ((*(v50 - 497) & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_133;
                }
              }

              else
              {
                v50 = &v44[v46];
                if ((v44[v46 - 465] & 0x80000000) == 0)
                {
                  goto LABEL_125;
                }
              }

              operator delete(*(v50 - 61));
              if ((*(v50 - 497) & 0x80000000) == 0)
              {
LABEL_126:
                v51 = &v44[v46];
                if ((v44[v46 - 521] & 0x80000000) == 0)
                {
                  goto LABEL_127;
                }

                goto LABEL_134;
              }

LABEL_133:
              operator delete(*&v44[v46 - 520]);
              v51 = &v44[v46];
              if ((v44[v46 - 521] & 0x80000000) == 0)
              {
LABEL_127:
                if ((*(v51 - 561) & 0x80000000) == 0)
                {
                  goto LABEL_128;
                }

                goto LABEL_135;
              }

LABEL_134:
              operator delete(*(v51 - 68));
              if ((*(v51 - 561) & 0x80000000) == 0)
              {
LABEL_128:
                v52 = &v44[v46];
                if ((v44[v46 - 593] & 0x80000000) == 0)
                {
                  goto LABEL_129;
                }

                goto LABEL_136;
              }

LABEL_135:
              operator delete(*&v44[v46 - 584]);
              v52 = &v44[v46];
              if ((v44[v46 - 593] & 0x80000000) == 0)
              {
LABEL_129:
                if (*(v52 - 617) < 0)
                {
                  goto LABEL_137;
                }

                goto LABEL_115;
              }

LABEL_136:
              operator delete(*(v50 - 77));
              if (*(v52 - 617) < 0)
              {
LABEL_137:
                operator delete(*&v44[v46 - 640]);
              }

LABEL_115:
              sub_2C0F28((v47 - 1120));
              v46 -= 1120;
              if (&v44[v46] == v43)
              {
                v45 = v75;
LABEL_144:
                v76 = v43;
                operator delete(v45);
LABEL_145:
                sub_570440(&v74);
                if (v73[1120] == 1)
                {
                  sub_3A9518(v73);
                }

                break;
              }
            }
          }
        }

LABEL_29:
        if (v71 < 0)
        {
          operator delete(__p);
          if (v69 != 1)
          {
            goto LABEL_38;
          }
        }

        else if (v69 != 1)
        {
          goto LABEL_38;
        }

        if (v68 < 0)
        {
          operator delete(v67);
          v30 = v65;
          if (!v65)
          {
LABEL_35:
            if ((v64 & 0x80000000) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_94;
          }
        }

        else
        {
          v30 = v65;
          if (!v65)
          {
            goto LABEL_35;
          }
        }

        v37 = v66;
        if (v66 == v30)
        {
          v66 = v30;
          operator delete(v30);
          if ((v64 & 0x80000000) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          do
          {
            v38 = *(v37 - 1);
            v37 -= 3;
            if (v38 < 0)
            {
              operator delete(*v37);
            }
          }

          while (v37 != v30);
          v66 = v30;
          operator delete(v65);
          if ((v64 & 0x80000000) == 0)
          {
LABEL_36:
            if ((v62 & 0x80000000) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_95;
          }
        }

LABEL_94:
        operator delete(v63);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_37:
          if (v60 < 0)
          {
            goto LABEL_96;
          }

          goto LABEL_38;
        }

LABEL_95:
        operator delete(v61);
        if (v60 < 0)
        {
LABEL_96:
          operator delete(v59);
          v31 = v57;
          if (!v57)
          {
            goto LABEL_84;
          }

LABEL_39:
          v32 = v58;
          v33 = v31;
          if (v58 == v31)
          {
LABEL_83:
            v58 = v31;
            operator delete(v33);
            goto LABEL_84;
          }

          while (2)
          {
            if (*(v32 - 16) != 1)
            {
              *(v32 - 416) = off_26696C8;
              if ((*(v32 - 385) & 0x80000000) == 0)
              {
                goto LABEL_44;
              }

LABEL_70:
              operator delete(*(v32 - 408));
              if (*(v32 - 465) < 0)
              {
                goto LABEL_71;
              }

LABEL_45:
              if ((*(v32 - 497) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }

LABEL_72:
              operator delete(*(v32 - 520));
              if (*(v32 - 521) < 0)
              {
                goto LABEL_73;
              }

LABEL_47:
              if ((*(v32 - 561) & 0x80000000) == 0)
              {
                goto LABEL_48;
              }

LABEL_74:
              operator delete(*(v32 - 584));
              if (*(v32 - 593) < 0)
              {
                goto LABEL_75;
              }

LABEL_49:
              if (*(v32 - 617) < 0)
              {
                goto LABEL_76;
              }

              goto LABEL_41;
            }

            v34 = *(v32 - 40);
            if (v34)
            {
              v35 = *(v32 - 32);
              v36 = *(v32 - 40);
              if (v35 == v34)
              {
LABEL_63:
                *(v32 - 32) = v34;
                operator delete(v36);
                goto LABEL_64;
              }

              while (2)
              {
                if (*(v35 - 1) < 0)
                {
                  operator delete(*(v35 - 24));
                  if (*(v35 - 25) < 0)
                  {
                    goto LABEL_60;
                  }

LABEL_57:
                  if (*(v35 - 49) < 0)
                  {
LABEL_61:
                    operator delete(*(v35 - 72));
                  }
                }

                else
                {
                  if ((*(v35 - 25) & 0x80000000) == 0)
                  {
                    goto LABEL_57;
                  }

LABEL_60:
                  operator delete(*(v35 - 48));
                  if (*(v35 - 49) < 0)
                  {
                    goto LABEL_61;
                  }
                }

                v35 -= 248;
                sub_33D5A0(v35);
                if (v35 == v34)
                {
                  v36 = *(v32 - 40);
                  goto LABEL_63;
                }

                continue;
              }
            }

LABEL_64:
            if (*(v32 - 49) < 0)
            {
              operator delete(*(v32 - 72));
              if (*(v32 - 81) < 0)
              {
                goto LABEL_78;
              }

LABEL_66:
              if ((*(v32 - 113) & 0x80000000) == 0)
              {
                goto LABEL_67;
              }

LABEL_79:
              operator delete(*(v32 - 136));
              if (*(v32 - 137) < 0)
              {
                goto LABEL_80;
              }

LABEL_68:
              if (*(v32 - 161) < 0)
              {
LABEL_81:
                operator delete(*(v32 - 184));
              }
            }

            else
            {
              if ((*(v32 - 81) & 0x80000000) == 0)
              {
                goto LABEL_66;
              }

LABEL_78:
              operator delete(*(v32 - 104));
              if (*(v32 - 113) < 0)
              {
                goto LABEL_79;
              }

LABEL_67:
              if ((*(v32 - 137) & 0x80000000) == 0)
              {
                goto LABEL_68;
              }

LABEL_80:
              operator delete(*(v32 - 160));
              if (*(v32 - 161) < 0)
              {
                goto LABEL_81;
              }
            }

            sub_33D080(v32 - 376);
            *(v32 - 416) = off_26696C8;
            if (*(v32 - 385) < 0)
            {
              goto LABEL_70;
            }

LABEL_44:
            if ((*(v32 - 465) & 0x80000000) == 0)
            {
              goto LABEL_45;
            }

LABEL_71:
            operator delete(*(v32 - 488));
            if (*(v32 - 497) < 0)
            {
              goto LABEL_72;
            }

LABEL_46:
            if ((*(v32 - 521) & 0x80000000) == 0)
            {
              goto LABEL_47;
            }

LABEL_73:
            operator delete(*(v32 - 544));
            if (*(v32 - 561) < 0)
            {
              goto LABEL_74;
            }

LABEL_48:
            if ((*(v32 - 593) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

LABEL_75:
            operator delete(*(v32 - 616));
            if (*(v32 - 617) < 0)
            {
LABEL_76:
              operator delete(*(v32 - 640));
            }

LABEL_41:
            v32 -= 1120;
            sub_2C0F28(v32);
            if (v32 == v31)
            {
              v33 = v57;
              goto LABEL_83;
            }

            continue;
          }
        }

LABEL_38:
        v31 = v57;
        if (v57)
        {
          goto LABEL_39;
        }

LABEL_84:
        result = sub_570440(&v56);
        if (v55[1120] == 1)
        {
          result = sub_3A9518(v55);
        }
      }

      while (v12-- > 2);
    }
  }

  return result;
}

void sub_774C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

void sub_774C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C3A5C(&STACK[0x7E0]);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

void sub_774C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_774C50(uint64_t a1, unint64_t a2)
{
  sub_5D7978(&v21, a1);
  v4 = sub_570CBC(&v21);
  if (v4 >= sub_570CBC(a2 - 2000))
  {
    v7 = a1 + 2000;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = sub_570CBC(&v21);
      v9 = sub_570CBC(v5);
      v7 = v5 + 2000;
    }

    while (v8 >= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = sub_570CBC(&v21);
      v5 += 2000;
    }

    while (v6 >= sub_570CBC(v5));
  }

  if (v5 < a2)
  {
    do
    {
      v10 = sub_570CBC(&v21);
      a2 -= 2000;
    }

    while (v10 < sub_570CBC(a2));
  }

  while (v5 < a2)
  {
    sub_77560C(v5, a2);
    do
    {
      v11 = sub_570CBC(&v21);
      v5 += 2000;
    }

    while (v11 >= sub_570CBC(v5));
    do
    {
      v12 = sub_570CBC(&v21);
      a2 -= 2000;
    }

    while (v12 < sub_570CBC(a2));
  }

  if (v5 - 2000 != a1)
  {
    sub_5D82BC(a1, v5 - 2000);
  }

  sub_5D82BC(v5 - 2000, &v21);
  if (v38 < 0)
  {
    operator delete(__p);
    if (v36 != 1)
    {
      goto LABEL_34;
    }

LABEL_21:
    if (v35 < 0)
    {
      operator delete(v34);
    }

    v13 = v32;
    if (v32)
    {
      v14 = v33;
      v15 = v32;
      if (v33 != v32)
      {
        do
        {
          v16 = *(v14 - 1);
          v14 -= 3;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v15 = v32;
      }

      v33 = v13;
      operator delete(v15);
    }

    if (v31 < 0)
    {
      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_44;
      }
    }

    else if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v28);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_44:
    operator delete(v26);
    v17 = v24;
    if (!v24)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v36 == 1)
  {
    goto LABEL_21;
  }

LABEL_34:
  v17 = v24;
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_35:
  v18 = v25;
  v19 = v17;
  if (v25 != v17)
  {
    do
    {
      v18 = sub_3A9518(v18 - 1120);
    }

    while (v18 != v17);
    v19 = v24;
  }

  v25 = v17;
  operator delete(v19);
LABEL_39:
  sub_570440(&v23);
  if (v22[1120] == 1)
  {
    sub_3A9518(v22);
  }

  return v5;
}

uint64_t sub_774F54(uint64_t a1, unint64_t a2)
{
  sub_5D7978(&v22, a1);
  v4 = 0;
  do
  {
    v5 = sub_570CBC(a1 + v4 + 2000);
    v4 += 2000;
  }

  while (v5 < sub_570CBC(&v22));
  v6 = a1 + v4;
  if (v4 == 2000)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      a2 -= 2000;
      v8 = sub_570CBC(a2);
    }

    while (v8 >= sub_570CBC(&v22));
  }

  else
  {
    do
    {
      a2 -= 2000;
      v7 = sub_570CBC(a2);
    }

    while (v7 >= sub_570CBC(&v22));
  }

  if (v6 >= a2)
  {
    v13 = v6 - 2000;
    if (v6 - 2000 == a1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = a1 + v4;
  v10 = a2;
  do
  {
    sub_77560C(v9, v10);
    do
    {
      v9 += 2000;
      v11 = sub_570CBC(v9);
    }

    while (v11 < sub_570CBC(&v22));
    do
    {
      v10 -= 2000;
      v12 = sub_570CBC(v10);
    }

    while (v12 >= sub_570CBC(&v22));
  }

  while (v9 < v10);
  v13 = v9 - 2000;
  if (v13 != a1)
  {
LABEL_17:
    sub_5D82BC(a1, v13);
  }

LABEL_18:
  sub_5D82BC(v13, &v22);
  if (v39 < 0)
  {
    operator delete(__p);
    if (v37 != 1)
    {
      goto LABEL_35;
    }

LABEL_22:
    if (v36 < 0)
    {
      operator delete(v35);
    }

    v14 = v33;
    if (v33)
    {
      v15 = v34;
      v16 = v33;
      if (v34 != v33)
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v16 = v33;
      }

      v34 = v14;
      operator delete(v16);
    }

    if (v32 < 0)
    {
      operator delete(v31);
      if ((v30 & 0x80000000) == 0)
      {
LABEL_34:
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_45;
      }
    }

    else if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_45:
    operator delete(v27);
    v18 = v25;
    if (!v25)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if (v37 == 1)
  {
    goto LABEL_22;
  }

LABEL_35:
  v18 = v25;
  if (!v25)
  {
    goto LABEL_40;
  }

LABEL_36:
  v19 = v26;
  v20 = v18;
  if (v26 != v18)
  {
    do
    {
      v19 = sub_3A9518(v19 - 1120);
    }

    while (v19 != v18);
    v20 = v25;
  }

  v26 = v18;
  operator delete(v20);
LABEL_40:
  sub_570440(&v24);
  if (v23[1120] == 1)
  {
    sub_3A9518(v23);
  }

  return v13;
}

BOOL sub_775254(uint64_t a1, uint64_t a2)
{
  v4 = 0x1CAC083126E978D5 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_7736A4(a1, a1 + 2000, a2 - 2000);
        return 1;
      case 4:
        v26 = a2 - 2000;
        sub_7736A4(a1, a1 + 2000, a1 + 4000);
        v27 = sub_570CBC(v26);
        if (v27 >= sub_570CBC(a1 + 4000))
        {
          return 1;
        }

        sub_77560C(a1 + 4000, v26);
        v28 = sub_570CBC(a1 + 4000);
        if (v28 >= sub_570CBC(a1 + 2000))
        {
          return 1;
        }

        sub_77560C(a1 + 2000, a1 + 4000);
        v29 = sub_570CBC(a1 + 2000);
        if (v29 >= sub_570CBC(a1))
        {
          return 1;
        }

        v8 = a1 + 2000;
        v7 = a1;
        goto LABEL_6;
      case 5:
        sub_7737D0(a1, a1 + 2000, a1 + 4000, a1 + 6000, a2 - 2000);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 2000;
      v6 = sub_570CBC(a2 - 2000);
      if (v6 < sub_570CBC(a1))
      {
        v7 = a1;
        v8 = v5;
LABEL_6:
        sub_77560C(v7, v8);
      }

      return 1;
    }
  }

  v9 = a1 + 4000;
  sub_7736A4(a1, a1 + 2000, a1 + 4000);
  v10 = a1 + 6000;
  if (a1 + 6000 == a2)
  {
    return 1;
  }

  v11 = 0;
  for (i = -4000; ; i -= 2000)
  {
    v13 = sub_570CBC(v10);
    if (v13 < sub_570CBC(v9))
    {
      break;
    }

LABEL_15:
    v9 = v10;
    v10 += 2000;
    if (v10 == a2)
    {
      return 1;
    }
  }

  sub_5D7978(v31, v10);
  v14 = i;
  v15 = v10;
  while (1)
  {
    v16 = v15 - 2000;
    sub_5D82BC(v15, v15 - 2000);
    if (!v14)
    {
      break;
    }

    v17 = sub_570CBC(v31);
    v18 = sub_570CBC(v15 - 4000);
    v14 += 2000;
    v15 -= 2000;
    if (v17 >= v18)
    {
      sub_5D82BC(v16, v31);
      if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      operator delete(__p);
      if (v46 == 1)
      {
        goto LABEL_25;
      }

LABEL_38:
      v23 = v34;
      if (!v34)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }
  }

  sub_5D82BC(a1, v31);
  if (v48 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v46 != 1)
  {
    goto LABEL_38;
  }

LABEL_25:
  if (v45 < 0)
  {
    operator delete(v44);
  }

  v19 = v42;
  if (v42)
  {
    v20 = v43;
    v21 = v42;
    if (v43 != v42)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v42;
    }

    v43 = v19;
    operator delete(v21);
  }

  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_37:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_47:
  operator delete(v36);
  v23 = v34;
  if (!v34)
  {
    goto LABEL_43;
  }

LABEL_39:
  v24 = v35;
  v25 = v23;
  if (v35 != v23)
  {
    do
    {
      v24 = sub_3A9518(v24 - 1120);
    }

    while (v24 != v23);
    v25 = v34;
  }

  v35 = v23;
  operator delete(v25);
LABEL_43:
  sub_570440(&v33);
  if (v32[1120] == 1)
  {
    sub_3A9518(v32);
  }

  if (++v11 != 8)
  {
    goto LABEL_15;
  }

  return v10 + 2000 == a2;
}

void sub_7755F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C3A5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_77560C(uint64_t a1, uint64_t a2)
{
  sub_5D7978(&v12, a1);
  sub_5D82BC(a1, a2);
  sub_5D82BC(a2, &v12);
  if (v29 < 0)
  {
    operator delete(__p);
    if (v27 != 1)
    {
      goto LABEL_18;
    }

LABEL_5:
    if (v26 < 0)
    {
      operator delete(v25);
    }

    v4 = v23;
    if (v23)
    {
      v5 = v24;
      v6 = v23;
      if (v24 != v23)
      {
        do
        {
          v7 = *(v5 - 1);
          v5 -= 3;
          if (v7 < 0)
          {
            operator delete(*v5);
          }
        }

        while (v5 != v4);
        v6 = v23;
      }

      v24 = v4;
      operator delete(v6);
    }

    if (v22 < 0)
    {
      operator delete(v21);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_17:
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

    else if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(v19);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_28:
    operator delete(v17);
    v8 = v15;
    if (!v15)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v27 == 1)
  {
    goto LABEL_5;
  }

LABEL_18:
  v8 = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_19:
  v9 = v16;
  v10 = v8;
  if (v16 != v8)
  {
    do
    {
      v9 = sub_3A9518(v9 - 1120);
    }

    while (v9 != v8);
    v10 = v15;
  }

  v16 = v8;
  operator delete(v10);
LABEL_23:
  result = sub_570440(&v14);
  if (v13[1120] == 1)
  {
    return sub_3A9518(v13);
  }

  return result;
}

uint64_t sub_77578C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x1CAC083126E978D5 * ((a3 - result) >> 4))
    {
      v8 = (0x395810624DD2F1AALL * ((a3 - result) >> 4)) | 1;
      v9 = result + 2000 * v8;
      v10 = 0x395810624DD2F1AALL * ((a3 - result) >> 4) + 2;
      if (v10 < a2)
      {
        v11 = sub_570CBC(result + 2000 * v8);
        if (v11 < sub_570CBC(v9 + 2000))
        {
          v9 += 2000;
          v8 = v10;
        }
      }

      v12 = sub_570CBC(v9);
      result = sub_570CBC(v4);
      if (v12 >= result)
      {
        sub_5D7978(v24, v4);
        do
        {
          v13 = v9;
          sub_5D82BC(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v14 = (2 * v8) | 1;
          v9 = v5 + 2000 * v14;
          v8 = 2 * v8 + 2;
          if (v8 >= a2)
          {
            v8 = v14;
          }

          else
          {
            v15 = sub_570CBC(v5 + 2000 * v14);
            if (v15 >= sub_570CBC(v9 + 2000))
            {
              v8 = v14;
            }

            else
            {
              v9 += 2000;
            }
          }

          v16 = sub_570CBC(v9);
          v4 = v13;
        }

        while (v16 >= sub_570CBC(v24));
        sub_5D82BC(v13, v24);
        if (v41 < 0)
        {
          operator delete(__p);
        }

        if (v39 == 1)
        {
          if (v38 < 0)
          {
            operator delete(v37);
          }

          v17 = v35;
          if (v35)
          {
            v18 = v36;
            v19 = v35;
            if (v36 != v35)
            {
              do
              {
                v20 = *(v18 - 1);
                v18 -= 3;
                if (v20 < 0)
                {
                  operator delete(*v18);
                }
              }

              while (v18 != v17);
              v19 = v35;
            }

            v36 = v17;
            operator delete(v19);
          }

          if (v34 < 0)
          {
            operator delete(v33);
            if ((v32 & 0x80000000) == 0)
            {
LABEL_30:
              if ((v30 & 0x80000000) == 0)
              {
                goto LABEL_31;
              }

LABEL_41:
              operator delete(v29);
              v21 = v27;
              if (v27)
              {
                goto LABEL_32;
              }

              goto LABEL_36;
            }
          }

          else if ((v32 & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          operator delete(v31);
          if (v30 < 0)
          {
            goto LABEL_41;
          }
        }

LABEL_31:
        v21 = v27;
        if (v27)
        {
LABEL_32:
          v22 = v28;
          v23 = v21;
          if (v28 != v21)
          {
            do
            {
              v22 = sub_3A9518(v22 - 1120);
            }

            while (v22 != v21);
            v23 = v27;
          }

          v28 = v21;
          operator delete(v23);
        }

LABEL_36:
        result = sub_570440(&v26);
        if (v25[1120] == 1)
        {
          return sub_3A9518(v25);
        }
      }
    }
  }

  return result;
}