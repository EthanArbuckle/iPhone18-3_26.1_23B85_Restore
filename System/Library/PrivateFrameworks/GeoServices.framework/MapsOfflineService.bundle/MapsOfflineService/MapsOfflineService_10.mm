uint64_t **sub_9604C(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(v24, a2, v5);
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
    sub_96420();
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

void sub_96408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

void sub_964E0(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    sub_2CC94(v1);
    _Unwind_Resume(a1);
  }

  sub_2CC94(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_96518(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(v24, a2, v5);
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
    sub_968E4();
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

void sub_968CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_969E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_262EB50[v4])(&v7, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_96AA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_8DBE8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_96B28@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_96DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_96DB8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

uint64_t sub_96DCC(uint64_t result, char a2, int a3, int a4, char a5)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  return result;
}

BOOL sub_96DDC(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = *(a1 + 4);
  return v1 != 0x7FFFFFFF && v1 != 0;
}

uint64_t sub_96E6C(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v4;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

BOOL sub_96E88(unsigned int *a1, void *a2)
{
  v2 = (*a2 + *(*a2 - **a2 + 6));
  v4 = *v2;
  v3 = v2[1];
  if (v3 >= 0xFFFFFFFE)
  {
    v5 = -2;
  }

  else
  {
    v5 = v3;
  }

  v6 = a1[1];
  if (!*(a1 + 24))
  {
    v22 = sqrt(((*a1 - v4) * (*a1 - v4) + (v6 - v5) * (v6 - v5))) / 100.0 * 100.0;
    if (v22 >= 4.50359963e15)
    {
      if (v22 < 9.22337204e18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = (((v22 + v22) + 1) >> 1);
      if (v22 < 9.22337204e18)
      {
        goto LABEL_29;
      }
    }

LABEL_25:
    v25 = 0x7FFFFFFFFFFFFFFELL;
    return v25 > *(a1 + 2);
  }

  v7 = *a1;
  if (*a1 != -1 || v6 != -1)
  {
    v9 = a1;
    v10 = exp(3.14159265 - v6 * 6.28318531 / 4294967300.0);
    v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795 * 0.0174532925;
    v12.i64[0] = v7;
    v12.i64[1] = v4;
    v13 = exp(3.14159265 - v5 * 6.28318531 / 4294967300.0);
    v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
    v15 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v28 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0];
    v16 = sin((v11 - v14) * 0.5);
    v17 = v16 * v16;
    v18 = cos(v11);
    v19 = cos(v14) * v18;
    v20 = sin(0.5 * v28);
    v21 = atan2(sqrt(v20 * v20 * v19 + v17), sqrt(1.0 - (v20 * v20 * v19 + v17)));
    v22 = (v21 + v21) * 6372797.56 * 100.0;
    if (v22 >= 0.0)
    {
      v23 = v22;
      if (v22 >= 4.50359963e15)
      {
        goto LABEL_21;
      }

      v24 = (v22 + v22) + 1;
    }

    else
    {
      v23 = v22;
      if (v22 <= -4.50359963e15)
      {
        goto LABEL_21;
      }

      v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    }

    v23 = (v24 >> 1);
LABEL_21:
    a1 = v9;
    if (v23 < 9.22337204e18)
    {
      if (v22 >= 0.0)
      {
        if (v22 < 4.50359963e15)
        {
          v26 = (v22 + v22) + 1;
          goto LABEL_28;
        }
      }

      else if (v22 > -4.50359963e15)
      {
        v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
LABEL_28:
        v22 = (v26 >> 1);
      }

LABEL_29:
      v25 = v22;
      return v25 > *(a1 + 2);
    }

    goto LABEL_25;
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
  return v25 > *(a1 + 2);
}

uint64_t sub_971D0(int *a1)
{
  v1 = (a1 - *a1);
  v2 = *v1;
  if (v2 < 0xB)
  {
    return 2;
  }

  if (v1[5] && *(a1 + v1[5]))
  {
    return 0;
  }

  if (v2 < 0xD)
  {
    return 2;
  }

  v4 = v1[6];
  if (!v4)
  {
    return 2;
  }

  if (*(a1 + v4))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_9723C(uint64_t result)
{
  if (result >= 2)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t sub_9724C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*(a1 - v4) < 7u || !*(a1 - v4 + 6))
  {
    memset(v87, 0, sizeof(v87));
    v11 = (a1 - v4);
    if (*v11 >= 5u)
    {
      goto LABEL_117;
    }

LABEL_120:
    v85[0] = 0;
    v85[1] = 0;
    v86 = 0;
LABEL_121:
    operator new();
  }

  v5 = (a1 + *(a1 - v4 + 6) + *(a1 + *(a1 - v4 + 6)));
  v6 = *v5;
  if (*(v5 - v6) >= 5u && (v7 = *(v5 - v6 + 4), *(v5 - v6 + 4)))
  {
    v8 = v5 + v7;
    v9 = *(v5 + v7);
    v10 = *&v8[v9];
    if (v10 >= 0x17)
    {
      operator new();
    }

    v89 = *&v8[v9];
    if (v10)
    {
      memcpy(&__dst, &v8[v9 + 4], v10);
    }

    *(&__dst + v10) = 0;
    v12 = -*v5;
    v13 = (v5 - *v5);
    if (*v13 < 7u)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = -v6;
    v89 = 0;
    LOBYTE(__dst) = 0;
    v13 = (v5 + v12);
    if (*(v5 + v12) < 7u)
    {
      goto LABEL_19;
    }
  }

  v14 = v13[3];
  if (v14)
  {
    v15 = v5 + v14;
    v16 = *(v5 + v14);
    v17 = *&v15[v16];
    if (v17 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v86) = *&v15[v16];
    if (v17)
    {
      memcpy(v85, &v15[v16 + 4], v17);
    }

    *(v85 + v17) = 0;
    v12 = -*v5;
    v18 = (v5 - *v5);
    if (*v18 < 9u)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_19:
  HIBYTE(v86) = 0;
  LOBYTE(v85[0]) = 0;
  v18 = (v5 + v12);
  if (*(v5 + v12) < 9u)
  {
    goto LABEL_28;
  }

LABEL_24:
  v19 = v18[4];
  if (v19)
  {
    v20 = v5 + v19;
    v21 = *(v5 + v19);
    v22 = *&v20[v21];
    if (v22 >= 0x17)
    {
      operator new();
    }

    v84 = *&v20[v21];
    if (v22)
    {
      memcpy(v83, &v20[v21 + 4], v22);
    }

    *(v83 + v22) = 0;
    v12 = -*v5;
    v23 = (v5 - *v5);
    if (*v23 < 0xBu)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_28:
  v84 = 0;
  LOBYTE(v83[0]) = 0;
  v23 = (v5 + v12);
  if (*(v5 + v12) < 0xBu)
  {
    goto LABEL_37;
  }

LABEL_33:
  v24 = v23[5];
  if (v24)
  {
    v25 = v5 + v24;
    v26 = *(v5 + v24);
    v27 = *&v25[v26];
    if (v27 >= 0x17)
    {
      operator new();
    }

    v82 = *&v25[v26];
    if (v27)
    {
      memcpy(v81, &v25[v26 + 4], v27);
    }

    *(v81 + v27) = 0;
    v12 = -*v5;
    v28 = (v5 - *v5);
    if (*v28 < 0xDu)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_37:
  v82 = 0;
  LOBYTE(v81[0]) = 0;
  v28 = (v5 + v12);
  if (*(v5 + v12) < 0xDu)
  {
    goto LABEL_46;
  }

LABEL_42:
  v29 = v28[6];
  if (v29)
  {
    v30 = v5 + v29;
    v31 = *(v5 + v29);
    v32 = *&v30[v31];
    if (v32 >= 0x17)
    {
      operator new();
    }

    v80 = *&v30[v31];
    if (v32)
    {
      memcpy(v79, &v30[v31 + 4], v32);
    }

    *(v79 + v32) = 0;
    v12 = -*v5;
    v33 = (v5 - *v5);
    if (*v33 < 0xFu)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

LABEL_46:
  v80 = 0;
  LOBYTE(v79[0]) = 0;
  v33 = (v5 + v12);
  if (*(v5 + v12) < 0xFu)
  {
    goto LABEL_55;
  }

LABEL_51:
  v34 = v33[7];
  if (v34)
  {
    v35 = v5 + v34;
    v36 = *(v5 + v34);
    v37 = *&v35[v36];
    if (v37 >= 0x17)
    {
      operator new();
    }

    v78 = *&v35[v36];
    if (v37)
    {
      memcpy(v77, &v35[v36 + 4], v37);
    }

    *(v77 + v37) = 0;
    v12 = -*v5;
    v38 = (v5 - *v5);
    if (*v38 < 0x11u)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_55:
  v78 = 0;
  LOBYTE(v77[0]) = 0;
  v38 = (v5 + v12);
  if (*(v5 + v12) < 0x11u)
  {
    goto LABEL_64;
  }

LABEL_60:
  v39 = v38[8];
  if (v39)
  {
    v40 = v5 + v39;
    v41 = *(v5 + v39);
    v42 = *&v40[v41];
    if (v42 >= 0x17)
    {
      operator new();
    }

    v76 = *&v40[v41];
    if (v42)
    {
      memcpy(v75, &v40[v41 + 4], v42);
    }

    *(v75 + v42) = 0;
    v12 = -*v5;
    v43 = (v5 - *v5);
    if (*v43 < 0x13u)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

LABEL_64:
  v76 = 0;
  LOBYTE(v75[0]) = 0;
  v43 = (v5 + v12);
  if (*(v5 + v12) < 0x13u)
  {
    goto LABEL_73;
  }

LABEL_69:
  v44 = v43[9];
  if (v44)
  {
    v45 = v5 + v44;
    v46 = *(v5 + v44);
    v47 = *&v45[v46];
    if (v47 >= 0x17)
    {
      operator new();
    }

    v74 = *&v45[v46];
    if (v47)
    {
      memcpy(v73, &v45[v46 + 4], v47);
    }

    *(v73 + v47) = 0;
    v12 = -*v5;
    v48 = (v5 - *v5);
    if (*v48 < 0x15u)
    {
      goto LABEL_82;
    }

    goto LABEL_78;
  }

LABEL_73:
  v74 = 0;
  LOBYTE(v73[0]) = 0;
  v48 = (v5 + v12);
  if (*(v5 + v12) < 0x15u)
  {
    goto LABEL_82;
  }

LABEL_78:
  v49 = v48[10];
  if (v49)
  {
    v50 = v5 + v49;
    v51 = *(v5 + v49);
    v52 = *&v50[v51];
    if (v52 >= 0x17)
    {
      operator new();
    }

    v72 = *&v50[v51];
    if (v52)
    {
      memcpy(v71, &v50[v51 + 4], v52);
    }

    *(v71 + v52) = 0;
    v53 = (v5 - *v5);
    if (*v53 < 0x17u)
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

LABEL_82:
  v72 = 0;
  LOBYTE(v71[0]) = 0;
  v53 = (v5 + v12);
  if (*v53 < 0x17u)
  {
    goto LABEL_91;
  }

LABEL_87:
  v54 = v53[11];
  if (!v54)
  {
LABEL_91:
    v70 = 0;
    LOBYTE(__p[0]) = 0;
    goto LABEL_95;
  }

  v55 = (v5 + v54);
  v56 = *v55;
  v57 = *(v55 + v56);
  if (v57 >= 0x17)
  {
    operator new();
  }

  v70 = *(v55 + v56);
  if (v57)
  {
    memcpy(__p, v55 + v56 + 4, v57);
  }

  *(__p + v57) = 0;
LABEL_95:
  sub_996B8(v87, &__dst, v85, v83, v81, v79, v77, v75, v73, v71, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
    if ((v72 & 0x80000000) == 0)
    {
LABEL_97:
      if ((v74 & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_109;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_97;
  }

  operator delete(v71[0]);
  if ((v74 & 0x80000000) == 0)
  {
LABEL_98:
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_110;
  }

LABEL_109:
  operator delete(v73[0]);
  if ((v76 & 0x80000000) == 0)
  {
LABEL_99:
    if ((v78 & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_111;
  }

LABEL_110:
  operator delete(v75[0]);
  if ((v78 & 0x80000000) == 0)
  {
LABEL_100:
    if ((v80 & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_112;
  }

LABEL_111:
  operator delete(v77[0]);
  if ((v80 & 0x80000000) == 0)
  {
LABEL_101:
    if ((v82 & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_113;
  }

LABEL_112:
  operator delete(v79[0]);
  if ((v82 & 0x80000000) == 0)
  {
LABEL_102:
    if ((v84 & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_114;
  }

LABEL_113:
  operator delete(v81[0]);
  if ((v84 & 0x80000000) == 0)
  {
LABEL_103:
    if ((SHIBYTE(v86) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v83[0]);
  if ((SHIBYTE(v86) & 0x80000000) == 0)
  {
LABEL_104:
    if ((v89 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v85[0]);
  if (v89 < 0)
  {
LABEL_116:
    operator delete(__dst);
    v11 = (a1 - *a1);
    if (*v11 >= 5u)
    {
      goto LABEL_117;
    }

    goto LABEL_120;
  }

LABEL_105:
  v11 = (a1 - *a1);
  if (*v11 < 5u)
  {
    goto LABEL_120;
  }

LABEL_117:
  v58 = v11[2];
  if (!v58)
  {
    goto LABEL_120;
  }

  v59 = (a1 + v58 + *(a1 + v58));
  v85[0] = 0;
  v85[1] = 0;
  v86 = 0;
  if (*v59)
  {
    goto LABEL_121;
  }

  v60 = (a1 - *a1);
  if (*v60 >= 9u && (v61 = v60[4]) != 0)
  {
    v62 = *(a1 + v61);
    if (v62 == 2)
    {
      v63 = 2;
    }

    else
    {
      v63 = v62 == 1;
    }
  }

  else
  {
    v63 = 0;
  }

  sub_99A14(a2, v85);
  sub_99BE0(a2 + 24, v87);
  *(a2 + 264) = v63;
  v64 = v85[0];
  if (v85[0])
  {
    v65 = v85[1];
    v66 = v85[0];
    if (v85[1] != v85[0])
    {
      do
      {
        v67 = *(v65 - 1);
        v65 -= 3;
        if (v67 < 0)
        {
          operator delete(*v65);
        }
      }

      while (v65 != v64);
      v66 = v85[0];
    }

    v85[1] = v64;
    operator delete(v66);
  }

  return sub_99F0C(v87);
}

void sub_97CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a20 < 0)
  {
    operator delete(a15);
    if (a26 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (a26 < 0)
  {
    goto LABEL_3;
  }

  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if (a38 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a27);
  if (a38 < 0)
  {
LABEL_5:
    operator delete(a33);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  if ((a44 & 0x80000000) == 0)
  {
LABEL_6:
    if (a50 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a39);
  if (a50 < 0)
  {
LABEL_7:
    operator delete(a45);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  if ((a56 & 0x80000000) == 0)
  {
LABEL_8:
    if (a62 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a51);
  if (a62 < 0)
  {
LABEL_9:
    operator delete(a57);
    if (*(v62 - 97) < 0)
    {
LABEL_19:
      operator delete(*(v62 - 120));
      _Unwind_Resume(a1);
    }

LABEL_20:
    _Unwind_Resume(a1);
  }

LABEL_18:
  if (*(v62 - 97) < 0)
  {
    goto LABEL_19;
  }

  goto LABEL_20;
}

void sub_97EC8(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 - *a1);
  if (*v3 >= 7u && (v4 = v3[3]) != 0)
  {
    v5 = (a1 + v4 + *(a1 + v4));
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_9A708(a2, *v5);
  v6 = *v5;
  if (v6)
  {
    v7 = 0;
    v8 = 4 * v6;
    while (1)
    {
      v10 = v5[v7 / 4 + 1];
      v11 = &v5[v7 / 4] + v10 - *(&v5[v7 / 4 + 1] + v10);
      if (*(v11 + 2) < 5u)
      {
        break;
      }

      v12 = *(v11 + 4);
      if (!v12)
      {
        break;
      }

      v13 = v5 + v10 + v12 + v7 + *(&v5[v7 / 4 + 1] + v10 + v12);
      v14 = *(v13 + 1);
      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v22) = *(v13 + 1);
      if (v14)
      {
        memcpy(&__dst, v13 + 8, v14);
        *(&__dst + v14) = 0;
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(&__dst + v14) = 0;
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      v18 = __dst;
      sub_325C(__p, __dst, *(&__dst + 1));
      operator delete(v18);
      v15 = a2[1];
      if (v15 >= a2[2])
      {
LABEL_17:
        v16 = sub_9A838(a2, __p);
        v17 = SHIBYTE(v20);
        a2[1] = v16;
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_8;
      }

LABEL_7:
      v9 = *__p;
      *(v15 + 16) = v20;
      *v15 = v9;
      a2[1] = v15 + 24;
LABEL_8:
      v7 += 4;
      if (v8 == v7)
      {
        return;
      }
    }

    HIBYTE(v22) = 0;
    LOBYTE(__dst) = 0;
LABEL_16:
    *__p = __dst;
    v20 = v22;
    v15 = a2[1];
    if (v15 >= a2[2])
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }
}

void sub_980D4(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_98104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(v14);
  _Unwind_Resume(a1);
}

void sub_98128(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_97EC8(a1, &v19);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));
  }

  else
  {
    v6 = 0;
  }

  sub_9724C(v6, &__p);
  sub_99A14(a2, &__p);
  sub_99BE0(a2 + 24, v17);
  *(a2 + 264) = v18;
  sub_9A028((a2 + 272), &v19);
  sub_99F0C(v17);
  v7 = __p;
  if (__p)
  {
    v8 = v16;
    v9 = __p;
    if (v16 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v16 = v7;
    operator delete(v9);
  }

  v11 = v19;
  if (v19)
  {
    v12 = v20;
    v13 = v19;
    if (v20 != v19)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v19;
    }

    v20 = v11;
    operator delete(v13);
  }
}

void sub_9826C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_982E4(v9);
  sub_982E4(&a9);
  sub_1A104((v10 - 64));
  _Unwind_Resume(a1);
}

void sub_98290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_1A104(v9);
  sub_982E4(&a9);
  sub_1A104((v10 - 64));
  _Unwind_Resume(a1);
}

void sub_982B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_982E4(&a9);
  sub_1A104((v9 - 64));
  _Unwind_Resume(a1);
}

void ***sub_982E4(void ***a1)
{
  sub_99F0C((a1 + 3));
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_98360(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_9836C(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_98378(uint64_t result)
{
  if ((result - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void sub_98388(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 - *a1);
  v5 = *v4;
  if (v5 < 5)
  {
    v50 = 0;
    v6 = 0;
LABEL_20:
    v9 = 0;
    v11 = 0;
    v12 = 1;
    goto LABEL_21;
  }

  if (!v4[2])
  {
    v6 = 0;
    if (v5 >= 7)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (*(a1 + v4[2]) - 1 >= 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + v4[2]);
  }

  if (v5 < 7)
  {
LABEL_19:
    v50 = 0;
    goto LABEL_20;
  }

LABEL_7:
  v7 = v4[3];
  if (v4[3])
  {
    v8 = *(a1 + v7);
    LODWORD(v7) = 8u >> (v8 & 0xF);
    if (v8 <= 3)
    {
      v9 = v8;
    }

    else
    {
      LOBYTE(v7) = 0;
      v9 = 0;
    }

    if (v5 >= 0xD)
    {
LABEL_12:
      if (v4[6])
      {
        v10 = *(a1 + v4[6]);
        if (v10 >= 4)
        {
          LOBYTE(v10) = 0;
        }

        v50 = v10;
        if (v5 <= 0x12)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v50 = 0;
        if (v5 <= 0x12)
        {
          goto LABEL_57;
        }
      }

      if (v4[9])
      {
        v25 = *(a1 + v4[9]);
        v12 = 1;
        if (v25 != 1)
        {
          v12 = (v7 & 1) != 0 ? 2 : 1;
          if (v25 == 2)
          {
            v12 = 2;
          }
        }

        goto LABEL_60;
      }

LABEL_57:
      if (v7)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v9 = 0;
    if (v5 >= 0xD)
    {
      goto LABEL_12;
    }
  }

  v50 = 0;
  if (v7)
  {
    v9 = 3;
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v5 < 9)
  {
    v11 = 0;
    goto LABEL_21;
  }

LABEL_60:
  v26 = v4[4];
  if (!v26)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v27 = *(a1 + v26);
  if (v27 <= 0x20C49B)
  {
    v11 = 1000 * v27;
    goto LABEL_21;
  }

  if (!sub_7E7E4(1u))
  {
    v11 = 0x7FFFFFFF;
    goto LABEL_21;
  }

  sub_19594F8(&v53);
  sub_4A5C(&v53, "Excessive power (", 17);
  v32 = std::ostream::operator<<();
  sub_4A5C(v32, " kW) in EV port.", 16);
  if ((v63 & 0x10) != 0)
  {
    v47 = v62;
    if (v62 < v59)
    {
      v62 = v59;
      v47 = v59;
    }

    v48 = &v58;
    goto LABEL_122;
  }

  if ((v63 & 8) != 0)
  {
    v48 = v56;
    v47 = v57;
LABEL_122:
    v49 = *v48;
    v33 = v47 - *v48;
    if (v33 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v33 >= 0x17)
    {
      operator new();
    }

    v52 = v47 - *v48;
    if (v33)
    {
      memmove(&__dst, v49, v33);
    }

    goto LABEL_128;
  }

  v33 = 0;
  v52 = 0;
LABEL_128:
  *(&__dst + v33) = 0;
  sub_7E854(&__dst, 1u);
  if (v52 < 0)
  {
    operator delete(__dst);
  }

  if (v61 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v55);
  std::ostream::~ostream();
  std::ios::~ios();
  v11 = 0x7FFFFFFF;
LABEL_21:
  v13 = (a1 - *a1);
  if (*v13 >= 0xFu && (v14 = v13[7]) != 0)
  {
    v15 = *(a1 + v14);
    if (v15 <= 0x20C49B)
    {
      v16 = 1000 * v15;
      v17 = (a1 - *a1);
      if (*v17 < 0x11u)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(&v53);
        sub_4A5C(&v53, "Excessive voltage (", 19);
        v21 = std::ostream::operator<<();
        sub_4A5C(v21, " V) in EV port.", 15);
        if ((v63 & 0x10) != 0)
        {
          v28 = v62;
          if (v62 < v59)
          {
            v62 = v59;
            v28 = v59;
          }

          v29 = &v58;
        }

        else
        {
          if ((v63 & 8) == 0)
          {
            v22 = 0;
            v52 = 0;
            goto LABEL_83;
          }

          v29 = v56;
          v28 = v57;
        }

        v34 = *v29;
        v22 = v28 - *v29;
        if (v22 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v22 >= 0x17)
        {
          operator new();
        }

        v52 = v28 - *v29;
        if (v22)
        {
          memmove(&__dst, v34, v22);
        }

LABEL_83:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 1u);
        if (v52 < 0)
        {
          operator delete(__dst);
        }

        if (v61 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v55);
        std::ostream::~ostream();
        std::ios::~ios();
        v16 = 0x7FFFFFFF;
        v17 = (a1 - *a1);
        if (*v17 < 0x11u)
        {
          goto LABEL_88;
        }

        goto LABEL_27;
      }

      v16 = 0x7FFFFFFF;
      v17 = (a1 - *a1);
      if (*v17 < 0x11u)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = (a1 - *a1);
    if (*v17 < 0x11u)
    {
LABEL_88:
      v20 = 0;
      goto LABEL_89;
    }
  }

LABEL_27:
  v18 = v17[8];
  if (!v18)
  {
    goto LABEL_88;
  }

  v19 = *(a1 + v18);
  if (v19 <= 0x20C49B)
  {
    v20 = 1000 * v19;
    goto LABEL_89;
  }

  if (!sub_7E7E4(1u))
  {
    v20 = 0x7FFFFFFF;
    goto LABEL_89;
  }

  sub_19594F8(&v53);
  sub_4A5C(&v53, "Excessive current (", 19);
  v23 = std::ostream::operator<<();
  sub_4A5C(v23, " A) in EV port.", 15);
  if ((v63 & 0x10) != 0)
  {
    v30 = v62;
    if (v62 < v59)
    {
      v62 = v59;
      v30 = v59;
    }

    v31 = &v58;
    goto LABEL_107;
  }

  if ((v63 & 8) != 0)
  {
    v31 = v56;
    v30 = v57;
LABEL_107:
    v46 = *v31;
    v24 = v30 - *v31;
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v52 = v30 - *v31;
    if (v24)
    {
      memmove(&__dst, v46, v24);
    }

    goto LABEL_113;
  }

  v24 = 0;
  v52 = 0;
LABEL_113:
  *(&__dst + v24) = 0;
  sub_7E854(&__dst, 1u);
  if (v52 < 0)
  {
    operator delete(__dst);
  }

  if (v61 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v55);
  std::ostream::~ostream();
  std::ios::~ios();
  v20 = 0x7FFFFFFF;
LABEL_89:
  *(&__dst + 3) = 0;
  LODWORD(__dst) = 0;
  v35 = *a1;
  v36 = -v35;
  v37 = (a1 - v35);
  if (*v37 < 0x15u)
  {
    v42 = 0;
    v43 = 0;
    LOBYTE(v38) = 0;
    v44 = (a1 + v36);
    if (*v44 >= 0xBu)
    {
      goto LABEL_95;
    }

    goto LABEL_102;
  }

  v38 = v37[10];
  if (!v38)
  {
    v42 = 0;
    v43 = 0;
    v44 = (a1 + v36);
    if (*v44 >= 0xBu)
    {
      goto LABEL_95;
    }

LABEL_102:
    LODWORD(v45) = 0;
    goto LABEL_103;
  }

  v39 = (a1 + v38);
  v40 = *v39;
  v41 = *(v39 + v40);
  if (v41 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v55.__locale_) = *(v39 + v40);
  if (v41)
  {
    memcpy(&v53, v39 + v40 + 4, v41);
  }

  *(&v53 + v41) = 0;
  v42 = v53;
  v43 = v54;
  LODWORD(__dst) = v55.__locale_;
  *(&__dst + 3) = *(&v55.__locale_ + 3);
  LOBYTE(v38) = HIBYTE(v55.__locale_);
  v44 = (a1 - *a1);
  if (*v44 < 0xBu)
  {
    goto LABEL_102;
  }

LABEL_95:
  v45 = v44[5];
  if (v45)
  {
    LODWORD(v45) = 10 * *(a1 + v45);
  }

LABEL_103:
  *a2 = v6;
  *(a2 + 1) = v9;
  *(a2 + 2) = v50;
  *(a2 + 4) = v11;
  *(a2 + 8) = v16;
  *(a2 + 12) = v20;
  *(a2 + 16) = v12;
  *(a2 + 20) = v45;
  if ((v38 & 0x80) != 0)
  {
    sub_325C((a2 + 24), v42, v43);
    operator delete(v42);
  }

  else
  {
    *(a2 + 24) = v42;
    *(a2 + 32) = v43;
    *(a2 + 40) = __dst;
    *(a2 + 43) = *(&__dst + 3);
    *(a2 + 47) = v38;
  }
}

void sub_98EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void *sub_98F80@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 4)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_9905C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_99078(char **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 16;
  if (v3 <= 0xF)
  {
    result = 0;
    v5 = v2;
    do
    {
LABEL_8:
      v13 = *v5;
      v5 += 16;
      result |= 1 << v13;
    }

    while (v5 != v1);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 4) + 1;
  v5 = &v2[16 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v9 = v2 + 16;
  v10 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 16);
    v12 = *v9;
    v9 += 32;
    v6 |= 1 << v11;
    v7 |= 1 << v12;
    v10 -= 2;
  }

  while (v10);
  result = v7 | v6;
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_99114(char *a1)
{
  v1 = a1[23];
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v31 = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
    *(&__dst + v3) = 0;
    if (v31 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    do
    {
      *p_dst = __tolower(*v2);
      p_dst = (p_dst + 1);
      ++v2;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(__dst) = 0;
  }

  v6 = sub_9AAC8(&xmmword_278EE78, &__dst);
  if (!v6)
  {
    if (!sub_7E7E4(3u))
    {
      v7 = 0;
      if ((v31 & 0x80000000) == 0)
      {
        return v7;
      }

      goto LABEL_18;
    }

    sub_19594F8(&v19);
    v9 = sub_4A5C(&v19, "Connector type ", 15);
    v10 = a1[23];
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (v10 >= 0)
    {
      v12 = a1[23];
    }

    else
    {
      v12 = *(a1 + 1);
    }

    v13 = sub_4A5C(v9, v11, v12);
    sub_4A5C(v13, " is not defined.", 16);
    if ((v29 & 0x10) != 0)
    {
      v15 = v28;
      if (v28 < v25)
      {
        v28 = v25;
        v15 = v25;
      }

      v16 = v24;
      v14 = v15 - v24;
      if (v15 - v24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if ((v29 & 8) == 0)
      {
        v14 = 0;
        v18 = 0;
        goto LABEL_41;
      }

      v16 = v22;
      v14 = v23 - v22;
      if ((v23 - v22) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_48:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v18 = v14;
    if (v14)
    {
      memmove(&__p, v16, v14);
    }

LABEL_41:
    *(&__p + v14) = 0;
    sub_7E854(&__p, 3u);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    std::locale::~locale(&v21);
    std::ostream::~ostream();
    std::ios::~ios();
    v7 = 0;
    if (v31 < 0)
    {
      goto LABEL_18;
    }

    return v7;
  }

  v7 = *(v6 + 40);
  if (v31 < 0)
  {
LABEL_18:
    operator delete(__dst);
  }

  return v7;
}

void sub_9949C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v16 - 65) < 0)
  {
    operator delete(*(v16 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_994EC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 4)
  {
    if (result <= 7)
    {
      if (result == 5)
      {
        a2[23] = 4;
        strcpy(a2, "CCS2");
      }

      else
      {
        a2[23] = 4;
        if (result == 6)
        {
          strcpy(a2, "GBT1");
        }

        else
        {
          strcpy(a2, "GBT2");
        }
      }

      return result;
    }

    switch(result)
    {
      case 8:
        a2[23] = 8;
        strcpy(a2, "MENNEKES");
        return result;
      case 9:
        a2[23] = 7;
        strcpy(a2, "NACS_AC");
        return result;
      case 0xA:
        a2[23] = 7;
        strcpy(a2, "NACS_DC");
        return result;
    }

LABEL_16:
    a2[23] = 0;
    *a2 = 0;
    return result;
  }

  if (result <= 1)
  {
    if (result == 1)
    {
      a2[23] = 7;
      strcpy(a2, "CHADEMO");
      return result;
    }

    goto LABEL_16;
  }

  if (result == 2)
  {
    a2[23] = 5;
    *a2 = 926363978;
    a2[4] = 50;
    a2[5] = 0;
  }

  else if (result == 3)
  {
    a2[23] = 5;
    *a2 = 1280525652;
    a2[4] = 65;
    a2[5] = 0;
  }

  else
  {
    a2[23] = 4;
    strcpy(a2, "CCS1");
  }

  return result;
}

uint64_t sub_996B8(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10, __int128 *a11)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v18;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v19 = *a3;
      *(a1 + 40) = *(a3 + 2);
      *(a1 + 24) = v19;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 24), *a3, *(a3 + 1));
LABEL_6:
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v20 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v20;
  }

  if (*(a5 + 23) < 0)
  {
    sub_325C((a1 + 72), *a5, *(a5 + 1));
  }

  else
  {
    v21 = *a5;
    *(a1 + 88) = *(a5 + 2);
    *(a1 + 72) = v21;
  }

  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 96), *a6, *(a6 + 1));
  }

  else
  {
    v22 = *a6;
    *(a1 + 112) = *(a6 + 2);
    *(a1 + 96) = v22;
  }

  if (*(a7 + 23) < 0)
  {
    sub_325C((a1 + 120), *a7, *(a7 + 1));
  }

  else
  {
    v23 = *a7;
    *(a1 + 136) = *(a7 + 2);
    *(a1 + 120) = v23;
  }

  if (*(a8 + 23) < 0)
  {
    sub_325C((a1 + 144), *a8, *(a8 + 1));
  }

  else
  {
    v24 = *a8;
    *(a1 + 160) = *(a8 + 2);
    *(a1 + 144) = v24;
  }

  if (*(a9 + 23) < 0)
  {
    sub_325C((a1 + 168), *a9, *(a9 + 1));
  }

  else
  {
    v25 = *a9;
    *(a1 + 184) = *(a9 + 2);
    *(a1 + 168) = v25;
  }

  if (*(a10 + 23) < 0)
  {
    sub_325C((a1 + 192), *a10, *(a10 + 1));
  }

  else
  {
    v26 = *a10;
    *(a1 + 208) = *(a10 + 2);
    *(a1 + 192) = v26;
  }

  if (*(a11 + 23) < 0)
  {
    sub_325C((a1 + 216), *a11, *(a11 + 1));
  }

  else
  {
    v27 = *a11;
    *(a1 + 232) = *(a11 + 2);
    *(a1 + 216) = v27;
  }

  return a1;
}

void sub_998B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 167) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v1 + 191) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 168));
  if ((*(v1 + 167) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(v1 + 144));
  if ((*(v1 + 143) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v1 + 120));
  if ((*(v1 + 119) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v1 + 96));
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v1 + 72));
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v1 + 48));
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void *sub_99A14(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_99B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_746A0(&a11);
  *(v11 + 8) = v12;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

void ****sub_99B5C(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_99BE0(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_325C((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_325C((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_325C((a1 + 144), *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_325C((a1 + 168), *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 23);
    *(a1 + 168) = v11;
  }

  if (*(a2 + 215) < 0)
  {
    sub_325C((a1 + 192), *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = a2[12];
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 192) = v12;
  }

  if (*(a2 + 239) < 0)
  {
    sub_325C((a1 + 216), *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v13 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 29);
    *(a1 + 216) = v13;
  }

  return a1;
}

void sub_99DA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 167) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v1 + 191) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 168));
  if ((*(v1 + 167) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(v1 + 144));
  if ((*(v1 + 143) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v1 + 120));
  if ((*(v1 + 119) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v1 + 96));
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v1 + 72));
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v1 + 48));
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_99F0C(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
    if ((*(a1 + 215) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 191) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 215) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 192));
  if ((*(a1 + 191) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(a1 + 168));
  if ((*(a1 + 167) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 144));
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_21;
  }

LABEL_19:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_21:
  operator delete(*a1);
  return a1;
}

void *sub_9A028(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9A150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_746A0(&a11);
  *(v11 + 8) = v12;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_9A170(void *a1, uint64_t a2)
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

void sub_9A574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_9A588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_9A5A0(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = result;
    v11 = 24 * v6;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v12 = 24 * v6 + 24;
    v13 = *v2;
    v14 = *(v2 + 8) - *v2;
    v15 = v11 - v14;
    memcpy((v11 - v14), *v2, v14);
    *v2 = v15;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }

    result = v10;
    *(v2 + 8) = v12;
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v2 + 8) = v3 + 24;
  }

  return result;
}

void *sub_9A708(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_9A838(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      v12 += 24;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v11 = (v11 + 24);
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 24;
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

uint64_t *sub_9A99C(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t **sub_9AAC8(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
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
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_9AC80()
{
  v1 = 263;
  strcpy(v0, "chademo");
  v3 = 517;
  strcpy(v2, "j1772");
  v5 = 773;
  strcpy(v4, "tesla");
  v7 = 1028;
  strcpy(v6, "ccs1");
  v9 = 1284;
  strcpy(v8, "ccs2");
  v11 = 1540;
  strcpy(v10, "gbt1");
  v13 = 4;
  strcpy(v12, "gbt2");
  v14 = 7;
  v16 = 2056;
  strcpy(v15, "mennekes");
  v18 = 2311;
  strcpy(v17, "nacs_ac");
  v20 = 2567;
  strcpy(__p, "nacs_dc");
  xmmword_278EE78 = 0u;
  unk_278EE88 = 0u;
  dword_278EE98 = 1065353216;
  sub_9A170(&xmmword_278EE78, v0);
  sub_9A170(&xmmword_278EE78, v2);
  sub_9A170(&xmmword_278EE78, v4);
  sub_9A170(&xmmword_278EE78, v6);
  sub_9A170(&xmmword_278EE78, v8);
  sub_9A170(&xmmword_278EE78, v10);
  sub_9A170(&xmmword_278EE78, v12);
  sub_9A170(&xmmword_278EE78, v15);
  sub_9A170(&xmmword_278EE78, v17);
  sub_9A170(&xmmword_278EE78, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v17[0]);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v15[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v12[0]);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v10[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v8[0]);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v6[0]);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v4[0]);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v0[0]);
    return;
  }

LABEL_20:
  operator delete(v2[0]);
  if (v1 < 0)
  {
    goto LABEL_21;
  }
}

void sub_9AFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  sub_23D9C(&xmmword_278EE78);
  if (a73 < 0)
  {
    operator delete(__p);
    if ((a71 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a64 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a71 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a66);
  if ((a64 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a57 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a59);
  if ((a57 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a52);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a43 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a45);
  if ((a43 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a36 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a38);
  if ((a36 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a29 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a31);
  if ((a29 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_21:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_9B404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_6BB60(&a10);
  sub_5BF68(&a22);
  sub_9BA14(v22 + 488);
  sub_AD01C(v22);
  _Unwind_Resume(a1);
}

void sub_9B480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18)
{
  sub_5BF68(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
    sub_9BA14(v18 + 488);
    sub_AD01C(v18);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9B468);
}

void sub_9B4C0(uint64_t a1)
{
  v2 = 17;
  strcpy(__p, "ROAD_TYPE_FREEWAY");
  sub_ADCF4(a1, __p, 0.0);
  if (v2 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_9B638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9B654(uint64_t a1)
{
  v2 = 14;
  strcpy(__p, "road_speed_mps");
  sub_AD190(a1, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_9B9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9BA14(va);
  _Unwind_Resume(a1);
}

void sub_9B9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9BA14(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + 104) + v4;
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v4 += 24;
        --v3;
      }

      while (v3);
      v2 = *(a1 + 104);
    }

    free(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 32));
  return a1;
}

void sub_9BBBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9C4B4(va);
  _Unwind_Resume(a1);
}

void sub_9BCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9BD0C(uint64_t a1)
{
  if (*(a1 + 440) == 0.0)
  {
    v9 = 0.0;
    v2 = 0.0;
  }

  else
  {
    sub_B1EA8(a1, 0);
    v9 = v4;
    v2 = v4;
    if (v4 < 0.0)
    {
      v3 = 1;
      if (v4 > -4.50359963e15)
      {
        v4 = (((v4 + v4) - 1) / 2);
      }

      if (v4 < -2147484.0)
      {
LABEL_19:
        sub_9C0FC("CustomEVConsumptionModel expression produced an out-of-range energy value: ", " Wh.", __p);
        sub_AB520(a1 + 344, __p);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }

        operator new();
      }

LABEL_12:
      if (v3)
      {
        v5 = v2;
        if (v2 <= -4.50359963e15)
        {
          goto LABEL_18;
        }

        v6 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
      }

      else
      {
        v5 = v2;
        if (v2 >= 4.50359963e15)
        {
          goto LABEL_18;
        }

        v6 = (v2 + v2) + 1;
      }

      v5 = (v6 >> 1);
LABEL_18:
      if (v5 <= 2147484.0)
      {
        operator new();
      }

      goto LABEL_19;
    }

    if (v4 >= 4.50359963e15)
    {
      v3 = 0;
      if (v4 < -2147484.0)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }
  }

  v3 = 0;
  if ((((v2 + v2) + 1) >> 1) < -2147484.0)
  {
    goto LABEL_19;
  }

  goto LABEL_12;
}

void sub_9C0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9C0FC@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_9C38C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_9C498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9C4B4(uint64_t a1)
{
  v2 = *(a1 + 592);
  if (v2)
  {
    v3 = *(a1 + 560);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(a1 + 592) + v4;
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v4 += 24;
        --v3;
      }

      while (v3);
      v2 = *(a1 + 592);
    }

    free(v2);
  }

  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
    if ((*(a1 + 543) & 0x80000000) == 0)
    {
LABEL_11:
      v6 = a1;

      return sub_AD01C(v6);
    }
  }

  else if ((*(a1 + 543) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(*(a1 + 520));
  v6 = a1;

  return sub_AD01C(v6);
}

uint64_t sub_9C584(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  if ((*(a2 + 25) & 1) == 0)
  {
    sub_9CDC0(v16, a2, 0x20uLL);
    sub_9C758(a1, v16);
    v7 = v21;
    if (v21)
    {
      v8 = v18;
      if (v18)
      {
        v9 = 0;
        do
        {
          if (*(v21 + v9 + 23) < 0)
          {
            operator delete(*(v21 + v9));
          }

          v9 += 24;
          --v8;
        }

        while (v8);
        v7 = v21;
      }

      free(v7);
    }

    if (v20 < 0)
    {
      operator delete(__p);
      if ((v17 & 0x80000000) == 0)
      {
        return a1;
      }
    }

    else if ((v17 & 0x80000000) == 0)
    {
      return a1;
    }

    operator delete(*&v16[4]);
    return a1;
  }

  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 55);
  if (*(a1 + 55) < 0)
  {
    v11 = *(a2 + 40);
    if ((v4 & 0x80u) == 0)
    {
      v12 = (a2 + 32);
    }

    else
    {
      v12 = *(a2 + 32);
    }

    if ((v4 & 0x80u) == 0)
    {
      v13 = v4;
    }

    else
    {
      v13 = v11;
    }

    sub_13B38(a1 + 32, v12, v13);
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((v4 & 0x80) != 0)
  {
    sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  if (*(a1 + 103) < 0)
  {
LABEL_25:
    operator delete(*(a1 + 80));
  }

LABEL_26:
  v14 = a2;
  if (*(a2 + 103) < 0)
  {
    sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
    v14 = a2;
  }

  else
  {
    v15 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v15;
  }

  sub_9C964(a1, v14, 4uLL);
  return a1;
}

uint64x2_t sub_9C758(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 16);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *a2 = v5;
  *(a2 + 16) = v4;
  v7 = *(a1 + 32);
  __p[0] = *(a1 + 40);
  *(__p + 7) = *(a1 + 47);
  v8 = *(a1 + 55);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  *(a2 + 47) = *(__p + 7);
  v10 = __p[0];
  *(a2 + 32) = v7;
  *(a2 + 40) = v10;
  *(a2 + 55) = v8;
  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  v12 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  v13 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v13;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    *__p = *(a1 + 80);
    v18 = *(a1 + 96);
    if (*(a2 + 103) < 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v14 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v14;
    goto LABEL_9;
  }

  sub_325C(__p, *(a1 + 80), *(a1 + 88));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 103) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
LABEL_9:
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
LABEL_11:
    *(a2 + 80) = *__p;
    *(a2 + 96) = v18;
    goto LABEL_15;
  }

  sub_325C((a2 + 80), __p[0], __p[1]);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
  v15 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v15;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
  *(a1 + 24) = 0;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a2 + 16), *(a2 + 72))));
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

void sub_9C948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9C964(float32x2_t *a1, void *a2, unint64_t a3)
{
  v5 = a2[8] - a2[7];
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (a1[2].f32[0] * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_9CFBC(a1, v6);
  v7 = a2[13];
  v8 = a2[9];
  v70 = a1;
  v68 = a2;
  if (v8)
  {
    v11 = a2[10];
    v10 = a2 + 10;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = v10[1];
    }

    if (v12 >= 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    v15 = *(v10 - 3);
    v16 = *(v10 - 25);
    if (v16 >= 0)
    {
      v17 = *(v10 - 25);
    }

    else
    {
      v17 = *(v10 - 5);
    }

    v20 = *(v10 - 6);
    v19 = v10 - 6;
    v18 = v20;
    if (v16 >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    if (v15)
    {
      v22 = 24 * v8;
      v23 = v7;
      while (1)
      {
        v24 = *(v23 + 23);
        v25 = v24 >= 0 ? *(v23 + 23) : *(v23 + 1);
        if (v13 != v25 || (v24 >= 0 ? (v26 = v23) : (v26 = *v23), memcmp(v14, v26, v13)))
        {
          if (v17 != v25)
          {
            break;
          }

          v27 = v24 >= 0 ? v23 : *v23;
          if (memcmp(v21, v27, v17))
          {
            break;
          }
        }

        v23 = (v23 + 24);
        v22 -= 24;
        if (!v22)
        {
          goto LABEL_112;
        }
      }
    }

    else
    {
      v63 = 24 * v8;
      v23 = v7;
      while (1)
      {
        v64 = *(v23 + 23);
        v65 = v64;
        if ((v64 & 0x80u) != 0)
        {
          v64 = *(v23 + 1);
        }

        if (v13 != v64)
        {
          break;
        }

        v66 = v65 >= 0 ? v23 : *v23;
        if (memcmp(v14, v66, v13))
        {
          break;
        }

        v23 = (v23 + 24);
        v63 -= 24;
        if (!v63)
        {
          goto LABEL_112;
        }
      }
    }
  }

  else
  {
    v23 = a2[13];
  }

  v69 = (v7 + 24 * v8);
  if (v23 != v69)
  {
    do
    {
      v28 = v70[9];
      v29 = *(v23 + 23);
      if (v29 >= 0)
      {
        v30 = v23;
      }

      else
      {
        v30 = *v23;
      }

      if (v29 >= 0)
      {
        v31 = *(v23 + 23);
      }

      else
      {
        v31 = *(v23 + 1);
      }

      v32 = sub_AAD8(&v71, v30, v31);
      v33 = *&v28 - 1;
      v34 = v70[13];
      if (v70[12].i8[7] >= 0)
      {
        v35 = v70[12].u8[7];
      }

      else
      {
        v35 = v70[11];
      }

      v36 = 0;
      if (v70[12].i8[7] < 0)
      {
        while (1)
        {
          v47 = v32 & v33;
          v38 = *&v34 + 24 * (v32 & v33);
          v48 = *(v38 + 23);
          v49 = *(v38 + 8);
          if ((v48 & 0x80000000) == 0)
          {
            v49 = *(v38 + 23);
          }

          if (v35 == v49)
          {
            v41 = *v38;
            v50 = (v48 & 0x80000000) == 0 ? (*&v34 + 24 * (v32 & v33)) : *v38;
            if (!memcmp(*&v70[10], v50, v35))
            {
              break;
            }
          }

          v32 = ++v36 + v47;
        }

        v51 = v48 >> 63;
        v44 = v70;
        v45 = v68;
        if (!v51)
        {
          goto LABEL_61;
        }
      }

      else
      {
        while (1)
        {
          v37 = v32 & v33;
          v38 = *&v34 + 24 * (v32 & v33);
          v39 = *(v38 + 23);
          v40 = *(v38 + 8);
          if ((v39 & 0x80000000) == 0)
          {
            v40 = *(v38 + 23);
          }

          if (v35 == v40)
          {
            v41 = *v38;
            v42 = (v39 & 0x80000000) == 0 ? (*&v34 + 24 * (v32 & v33)) : *v38;
            if (!memcmp(&v70[10], v42, v35))
            {
              break;
            }
          }

          v32 = ++v36 + v37;
        }

        v43 = v39 >> 63;
        v44 = v70;
        v45 = v68;
        if (!v43)
        {
          goto LABEL_61;
        }
      }

      operator delete(v41);
LABEL_61:
      if (*(v23 + 23) < 0)
      {
        sub_325C(v38, *v23, *(v23 + 1));
      }

      else
      {
        v46 = *v23;
        *(v38 + 16) = *(v23 + 2);
        *v38 = v46;
      }

      ++*&v44[8];
      v23 = (v23 + 24);
      if (v23 != v69)
      {
        v52 = *(v45 + 103);
        if (v52 >= 0)
        {
          v53 = *(v45 + 103);
        }

        else
        {
          v53 = v45[11];
        }

        if (v52 >= 0)
        {
          v54 = v68 + 10;
        }

        else
        {
          v54 = v45[10];
        }

        v55 = v45[7];
        v56 = *(v45 + 55);
        if (v56 >= 0)
        {
          v57 = *(v45 + 55);
        }

        else
        {
          v57 = v45[5];
        }

        if (v56 >= 0)
        {
          v58 = v68 + 4;
        }

        else
        {
          v58 = v45[4];
        }

        do
        {
          v59 = *(v23 + 23);
          if (v59 >= 0)
          {
            v60 = *(v23 + 23);
          }

          else
          {
            v60 = *(v23 + 1);
          }

          if (v53 != v60 || (v59 >= 0 ? (v61 = v23) : (v61 = *v23), memcmp(v54, v61, v53)))
          {
            if (!v55 || v57 != v60)
            {
              break;
            }

            v62 = v59 >= 0 ? v23 : *v23;
            if (memcmp(v58, v62, v57))
            {
              break;
            }
          }

          v23 = (v23 + 24);
        }

        while (v23 != v69);
      }
    }

    while (v23 != (v45[13] + 24 * v45[9]));
  }

LABEL_112:
  ++v70[3].i32[1];
}

float32x2_t *sub_9CDC0(float32x2_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 16);
  *a1->f32 = *a2;
  *a1[2].f32 = v6;
  if (*(a2 + 55) < 0)
  {
    sub_325C(&a1[4], *(a2 + 32), *(a2 + 40));
    a1[7] = 0;
    a1[8] = 0;
    a1[9] = 0;
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a2 + 32);
    a1[6] = *(a2 + 48);
    *a1[4].f32 = v7;
    a1[7] = 0;
    a1[8] = 0;
    a1[9] = 0;
    if ((*(a2 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      v8 = *(a2 + 80);
      a1[12] = *(a2 + 96);
      *a1[10].f32 = v8;
      goto LABEL_6;
    }
  }

  sub_325C(&a1[10], *(a2 + 80), *(a2 + 88));
LABEL_6:
  a1[13] = 0;
  if (*(a2 + 25))
  {
    *a1->f32 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(a1[2], a1[9])));
    a1[3].i8[0] = 0;
    sub_9C964(a1, a2, a3);
    return a1;
  }

  else
  {
    v10 = 4;
    if (a3 > 4)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = a1[2].f32[0] * v10;
      if (*(a2 + 64) - *(a2 + 56) < v11)
      {
        break;
      }

      do
      {
LABEL_10:
        if ((v10 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v10 *= 2;
      }

      while (v10 < a3);
    }

    a1[9] = v10;
    v12 = a1[2].f32[1] * v10;
    *a1 = v11;
    a1[1] = v12;
    a1[3].i8[0] = 0;
    return a1;
  }
}

void sub_9CF60(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 55) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v1 + 32));
  _Unwind_Resume(exception_object);
}

uint64x2_t sub_9CFBC(float32x2_t *a1, unint64_t a2)
{
  v4 = a1[13];
  if (!v4)
  {
    v8 = malloc_type_malloc(24 * a2, 0x1012040EC159624uLL);
LABEL_12:
    a1[13] = v8;
    v4 = v8;
    goto LABEL_13;
  }

  v5 = a1[9];
  if (!*&v5)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = 0;
  do
  {
    v7 = *&a1[13] + v6;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v6 += 24;
    --*&v5;
  }

  while (v5);
  v4 = a1[13];
  if (*&a1[9] != a2)
  {
LABEL_11:
    v9 = v4;
    v8 = malloc_type_realloc(v4, 24 * a2, 0x1012040EC159624uLL);
    if (!v8)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v9);
      exit(1);
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_9D0FC(a1, v4, v4 + 24 * a2);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(a1[2], a2)));
  *a1->f32 = result;
  a1[3].i8[0] = 0;
  return result;
}

char *sub_9D0FC(char *result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a2;
    do
    {
      if (v4[103] < 0)
      {
        result = sub_325C(v6, *(v4 + 10), *(v4 + 11));
      }

      else
      {
        v7 = *(v4 + 5);
        *(v6 + 16) = *(v4 + 12);
        *v6 = v7;
      }

      v6 += 24;
      v5 -= 24;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_9D180(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t sub_9D1CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 72);
  v5 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v31, a2, v6);
  v8 = 0;
  v30 = v4 - 1;
  v9 = *(a1 + 104);
  v29 = *(a1 + 103);
  if (v29 >= 0)
  {
    v10 = *(a1 + 103);
  }

  else
  {
    v10 = *(a1 + 88);
  }

  v11 = *(v2 + 23);
  if (v11 >= 0)
  {
    v12 = *(v2 + 23);
  }

  else
  {
    v12 = *(v2 + 8);
  }

  if (v11 >= 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = *v2;
  }

  __s1 = v13;
  v27 = -1;
  while (1)
  {
    v15 = v7 & v30;
    v16 = (v9 + 24 * (v7 & v30));
    v17 = *(v16 + 23);
    v18 = v17 >= 0 ? *(v16 + 23) : v16[1];
    if (v10 == v18)
    {
      v19 = v29 >= 0 ? (a1 + 80) : *(a1 + 80);
      v20 = v17 >= 0 ? v16 : *v16;
      if (!memcmp(v19, v20, v10))
      {
        return -1;
      }
    }

    if (!*(a1 + 56))
    {
      goto LABEL_50;
    }

    v21 = *(a1 + 55);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 40);
    }

    if (v21 == v18 && (v22 >= 0 ? (v23 = (a1 + 32)) : (v23 = *(a1 + 32)), v17 >= 0 ? (v24 = v16) : (v24 = *v16), !memcmp(v23, v24, v18)))
    {
      v14 = v27;
      if (v27 == -1)
      {
        v14 = v15;
      }

      v27 = v14;
    }

    else
    {
LABEL_50:
      if (v12 == v18)
      {
        v25 = v17 >= 0 ? v16 : *v16;
        if (!memcmp(__s1, v25, v12))
        {
          return v15;
        }
      }
    }

    v7 = ++v8 + v15;
  }
}

void sub_9D390()
{
  byte_278EEB7 = 3;
  LODWORD(qword_278EEA0) = 5136193;
  byte_278EECF = 3;
  LODWORD(qword_278EEB8) = 5136194;
  byte_278EEE7 = 3;
  LODWORD(qword_278EED0) = 5136195;
  byte_278EEFF = 15;
  strcpy(&qword_278EEE8, "vehicle_mass_kg");
  byte_278EF17 = 21;
  strcpy(&xmmword_278EF00, "vehicle_cargo_mass_kg");
  byte_278EF2F = 19;
  strcpy(&qword_278EF18, "vehicle_aux_power_w");
  byte_278EF47 = 15;
  strcpy(&qword_278EF30, "dcdc_efficiency");
  strcpy(&qword_278EF48, "drive_train_efficiency");
  HIBYTE(word_278EF5E) = 22;
  operator new();
}

void sub_9D4E4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278EF5E) < 0)
  {
    sub_21E0F74();
  }

  sub_21E0F80();
  _Unwind_Resume(a1);
}

void sub_9D70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  sub_A1C98(v16);
  sub_A2740(v15);
  _Unwind_Resume(a1);
}

void sub_9D788(void *a1, void *a2, uint64_t a3)
{
  sub_5F328(v8);
  HIBYTE(__p[2]) = 16;
  strcpy(__p, "model_parameters");
  v6 = sub_5FAAC(a2, __p, v8);
  sub_B4DD4(a1, v6);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_B4DD4(a1, a3);
  memset(__p, 0, sizeof(__p));
  operator new();
}

void sub_9DB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5BF68(&a16);
  sub_5C010(&a19);
  _Unwind_Resume(a1);
}

void sub_9DB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_5C010(&a19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9DB78);
}

uint64_t sub_9DBC4(void *a1)
{
  v1 = a1[82];
  a1[82] = 0;
  if (v1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      *(v1 + 72) = v2;
      operator delete(v2);
    }

    *v1 = off_262ECC8;
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    operator delete();
  }

  return sub_A2740(a1);
}

void sub_9DC58(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  sub_A3014(a1);
  if (*(*(a1 + 656) + 60) == 1)
  {
    sub_9DFD0(a1);
  }

  v6 = *(a1 + 576);
  if (v6 < -0.00001)
  {
    sub_9E46C("Negative initialization time in EV charging curve formula (", "seconds).", __p);
    sub_B363C(a1 + 368, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(a1 + 576);
  }

  v7 = *(a1 + 448);
  if (v6 > v7)
  {
    sub_9E708("Initialization time in EV charging curve formula (", " hours) exceeds maximum allowed charging time (", " hours).", __p);
    sub_B363C(a1 + 368, __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(a1 + 448);
    v6 = *(a1 + 576);
  }

  if (v7 < v6)
  {
    v6 = v7;
  }

  v8 = fmax(v6, 0.0) * 10.0;
  if (v8 < 4.50359963e15)
  {
    v8 = (((v8 + v8) + 1) >> 1);
  }

  v9 = v8;
  sub_9E9D8(a1, a2, __p);
  *a3 = v9;
  *(a3 + 8) = *__p;
  *(a3 + 24) = v11;
  operator new();
}

void sub_9DF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9DFD0(void *a1)
{
  v2 = a1[73];
  v3 = a1[74];
  if (v2 == v3)
  {
    v6 = 0;
  }

  else
  {
    v4 = v2 + 8;
    do
    {
      v5 = *(v4 - 8);
      v6 = v5 != INFINITY;
      v7 = v5 != INFINITY || v4 == v3;
      v4 += 8;
    }

    while (!v7);
  }

  v8 = a1[7];
  v9 = a1[5];
  v10 = a1[66];
  v11 = a1[76];
  v12 = a1[77];
  if (v11 != v12)
  {
    while (*v11 == INFINITY)
    {
      if (++v11 == v12)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    operator new();
  }

LABEL_13:
  if (v6)
  {
    goto LABEL_14;
  }

  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = a1[77];
  v14 = a1[76];
  v15 = v13 - v14;
  if (v13 != v14)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = a1[1];
  a1[7] = v16;
  a1[5] = v16;
  v17 = a1[82];
  v19 = *(v17 + 64);
  v18 = *(v17 + 72);
  if (v19 == v18)
  {
    sub_9FB20("Custom function generate_curve_from_charging_time() must not be called without parameters.", &__p);
    sub_B36D4((a1 + 46), &__p);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
      v24 = v15;
      if (*(v17 + 72) == *(v17 + 64))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = v15;
      if (!(*(v17 + 72) - *(v17 + 64)))
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v24 = v15;
    if (!(v18 - v19))
    {
      goto LABEL_30;
    }
  }

  sub_9FD90("Generated EV charging curve exceeds the maximum allowed number of interpolation points (", ").", &__p);
  sub_B36D4((a1 + 46), &__p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  v22 = a1[73];
  if (v22)
  {
    a1[74] = v22;
    operator delete(v22);
    a1[73] = 0;
    a1[74] = 0;
    a1[75] = 0;
  }

  a1[73] = 0;
  a1[74] = 0;
  a1[75] = 0;
  v23 = a1[76];
  if (v23)
  {
    a1[77] = v23;
    operator delete(v23);
    a1[76] = 0;
    a1[77] = 0;
    a1[78] = 0;
  }

  a1[76] = 0;
  a1[77] = v24;
  a1[78] = v24;
  a1[7] = v8;
  a1[5] = v9;
  a1[66] = v10;
}

void sub_9E3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if (!v20)
    {
LABEL_3:
      if (!v19)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v19);
      goto LABEL_8;
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

  operator delete(v20);
  if (!v19)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_9E46C@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_9E6F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9E708@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_9E9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_9E9D8(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 584);
  v6 = *(a1 + 608);
  v7 = *(a1 + 592);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v8 = &unk_2266000;
  if (v5 == v7)
  {
    goto LABEL_98;
  }

  v9 = (a1 + 16);
  while (1)
  {
    v78 = *v5;
    v11 = v78;
    v12 = *v6;
    v74 = *v6;
    if (v78 == INFINITY || v12 == INFINITY)
    {
      goto LABEL_98;
    }

    if (v78 < -0.00001)
    {
      sub_A02C8("Negative charging time in EV charging curve (", " seconds).", &__p);
      sub_B363C(a1 + 368, &__p);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p);
      }

      v11 = v78;
    }

    v14 = *(a1 + 448);
    if (v11 > v14 + 0.00001 && (sub_A0564("Evaluated charging time in EV charging curve (", " hours) exceeds maximum allowed charging time (", " hours).", &__p), sub_B363C(a1 + 368, &__p), SHIBYTE(v73) < 0))
    {
      operator delete(__p);
      v15 = v74;
      if (v74 >= -0.00001)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = v74;
      if (v74 >= -0.00001)
      {
        goto LABEL_20;
      }
    }

    sub_A0834("Negative energy after charging in EV charging curve (", " Wh).", &__p);
    sub_B363C(a1 + 368, &__p);
    if (SHIBYTE(v73) < 0)
    {
      operator delete(__p);
    }

    v15 = v74;
LABEL_20:
    if (v15 > *v9 + 0.00001)
    {
      break;
    }

    v16 = 0.0;
    v17 = 0.0;
    if (v78 >= 0.0)
    {
      v19 = *(a1 + 448);
      if (v19 >= v78)
      {
        v19 = v78;
      }

      v17 = v19 * 10.0;
      if (v15 < 0.0)
      {
LABEL_23:
        if (v17 < 0.0)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }
    }

    else if (v15 < 0.0)
    {
      goto LABEL_23;
    }

    v20 = &v74;
    if (*v9 < v15)
    {
      v20 = (a1 + 16);
    }

    v16 = *v20 * 1000.0;
    if (v17 < 0.0)
    {
LABEL_24:
      if (v17 <= -4.50359963e15)
      {
        goto LABEL_35;
      }

      v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
      goto LABEL_34;
    }

LABEL_32:
    if (v17 >= 4.50359963e15)
    {
      goto LABEL_35;
    }

    v18 = (v17 + v17) + 1;
LABEL_34:
    v17 = (v18 >> 1);
LABEL_35:
    v21 = v17 / 10.0;
    if (v16 >= 0.0)
    {
      if (v16 >= 4.50359963e15)
      {
        goto LABEL_41;
      }

      v22 = (v16 + v16) + 1;
    }

    else
    {
      if (v16 <= -4.50359963e15)
      {
        goto LABEL_41;
      }

      v22 = (v16 + v16) - 1 + (((v16 + v16) - 1) >> 63);
    }

    v16 = (v22 >> 1);
LABEL_41:
    v23 = v16 / 1000.0;
    v25 = v75;
    v24 = v76;
    if (v75 == v76 || v21 > *(v76 - 2) && v23 >= *(v76 - 1))
    {
      if (v76 < v77)
      {
        *v76 = v21;
        v24[1] = v23;
        v10 = (v24 + 2);
      }

      else
      {
        v26 = a3;
        v27 = v76 - v75;
        v28 = (v76 - v75) >> 4;
        v29 = v28 + 1;
        if ((v28 + 1) >> 60)
        {
          sub_1794();
        }

        v30 = v77 - v75;
        if ((v77 - v75) >> 3 > v29)
        {
          v29 = v30 >> 3;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF0)
        {
          v31 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v32 = (v76 - v75) >> 4;
        v33 = (16 * v28);
        *v33 = v21;
        v33[1] = v23;
        v10 = 16 * v28 + 16;
        v34 = 16 * v28 - 16 * v32;
        memcpy(&v33[-2 * v32], v25, v27);
        v75 = v34;
        v77 = 0;
        if (v25)
        {
          operator delete(v25);
        }

        a3 = v26;
        v8 = &unk_2266000;
      }

      v76 = v10;
    }

    else
    {
      sub_A0DA0("Dropping interpolation point (", " seconds, ", " Wh) from charging curve since it would violate the requirement that its points must be increasing in time and non-decreasing in energy; predecessor on the curve is (", " seconds, ", &__p, " Wh).");
      sub_B363C(a1 + 368, &__p);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p);
      }
    }

    ++v5;
    ++v6;
    if (v5 == v7)
    {
      goto LABEL_98;
    }
  }

  sub_A0AD0("Evaluated energy after charging in EV charging curve (", " Wh) exceeds the battery capacity (", " Wh).", &__p);
  sub_B363C(a1 + 368, &__p);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
  }

  v49 = *(a1 + 448);
  if (v49 >= v78)
  {
    v50 = v78;
  }

  else
  {
    v50 = *(a1 + 448);
  }

  v52 = v75;
  v51 = v76;
  if (v75 == v76)
  {
    v55 = fmax(v50, 0.0);
    v57 = v77;
    if (v76 < v77)
    {
      goto LABEL_97;
    }

    goto LABEL_122;
  }

  v53 = *(v76 - 2);
  v54 = *(v76 - 1);
  if (v49 >= v78 * ((*v9 - v54) / (v74 - v54)) + v53 * (1.0 - (*v9 - v54) / (v74 - v54)))
  {
    v55 = v78 * ((*v9 - v54) / (v74 - v54)) + v53 * (1.0 - (*v9 - v54) / (v74 - v54));
  }

  else
  {
    v55 = *(a1 + 448);
  }

  if (v55 <= v53 || *v9 <= v54)
  {
LABEL_98:
    v38 = v75;
    v59 = v76;
    if (v75 == v76)
    {
      goto LABEL_61;
    }

LABEL_99:
    v35 = a2;
    if ((v59 - v38) <= 0x10)
    {
      goto LABEL_100;
    }

    goto LABEL_64;
  }

  v57 = v77;
  if (v76 < v77)
  {
LABEL_97:
    v58 = *v9;
    *v76 = v55;
    v51[1] = v58;
    v76 = v51 + 2;
    goto LABEL_98;
  }

LABEL_122:
  v62 = v76 - v75;
  v63 = (v76 - v75) >> 4;
  v64 = v63 + 1;
  if ((v63 + 1) >> 60)
  {
    sub_1794();
  }

  v65 = v57 - v75;
  if (v65 >> 3 > v64)
  {
    v64 = v65 >> 3;
  }

  if (v65 >= 0x7FFFFFFFFFFFFFF0)
  {
    v66 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v66 = v64;
  }

  if (v66)
  {
    if (!(v66 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v67 = (v76 - v75) >> 4;
  v68 = 16 * v63;
  v69 = *v9;
  *v68 = v55;
  *(v68 + 8) = v69;
  v59 = 16 * v63 + 16;
  v70 = (v68 - 16 * v67);
  memcpy(v70, v52, v62);
  v75 = v70;
  v77 = 0;
  if (v52)
  {
    operator delete(v52);
  }

  v76 = v59;
  v38 = v75;
  if (v75 != v59)
  {
    goto LABEL_99;
  }

LABEL_61:
  sub_A10D0("EV charging curve is empty.", &__p);
  v35 = a2;
  sub_B36D4(a1 + 368, &__p);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
    v36 = v76;
    v37 = v77;
    if (v76 >= v77)
    {
      goto LABEL_74;
    }

LABEL_63:
    *v36 = 0.0;
    v36[1] = 0.0;
    v76 = v36 + 2;
    v38 = v75;
    if (((v36 + 2) - v75) > 0x10)
    {
      goto LABEL_64;
    }

LABEL_100:
    sub_A1340("EV charging curve has less than two interpolation points.", &__p);
    sub_B363C(a1 + 368, &__p);
    if (SHIBYTE(v73) < 0)
    {
      operator delete(__p);
    }

    v38 = v75;
    v39 = *v75;
    v40 = v75[1];
    if (v40 >= *v75)
    {
      v60 = *v75;
    }

    else
    {
      v60 = v75[1];
    }

    if (v60 > v8[326])
    {
      goto LABEL_68;
    }

LABEL_106:
    v42 = v76;
    if (v35 < 3)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

  v36 = v76;
  v37 = v77;
  if (v76 < v77)
  {
    goto LABEL_63;
  }

LABEL_74:
  v43 = v75;
  v44 = v36 - v75;
  v45 = (v36 - v75) >> 4;
  v46 = v45 + 1;
  if ((v45 + 1) >> 60)
  {
    sub_1794();
  }

  v47 = v37 - v75;
  if (v47 >> 3 > v46)
  {
    v46 = v47 >> 3;
  }

  if (v47 >= 0x7FFFFFFFFFFFFFF0)
  {
    v48 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v46;
  }

  if (v48)
  {
    if (!(v48 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v61 = (16 * v45);
  *v61 = 0;
  v61[1] = 0;
  memcpy(0, v43, v44);
  v75 = 0;
  v77 = 0;
  if (v43)
  {
    operator delete(v43);
  }

  v8 = &unk_2266000;
  v76 = (16 * v45 + 16);
  v38 = v75;
  if ((v76 - v75) <= 0x10)
  {
    goto LABEL_100;
  }

LABEL_64:
  v39 = *v38;
  v40 = v38[1];
  if (v40 >= *v38)
  {
    v41 = *v38;
  }

  else
  {
    v41 = v38[1];
  }

  if (v41 <= v8[326])
  {
    goto LABEL_106;
  }

LABEL_68:
  v78 = v39;
  v74 = v40;
  sub_A15B0("First point of the EV charging curve must be zero in at least one dimension, got ", " seconds and ", " Wh.", &__p);
  sub_B36D4(a1 + 368, &__p);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
    v38 = v75;
    v42 = v76;
    if (v35 < 3)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v38 = v75;
    v42 = v76;
    if (v35 < 3)
    {
      goto LABEL_111;
    }
  }

LABEL_107:
  if (v35 < ((v42 - v38) >> 4))
  {
    __p = 0;
    v73 = 0uLL;
    sub_4216C(&v75, v35, 0.0, 0, 2, &__p);
    if (__p)
    {
      operator delete(__p);
    }

    v38 = v75;
    v42 = v76;
  }

LABEL_111:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v42 != v38)
  {
    if (!(((v42 - v38) >> 4) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  __p = a3;
  if (v38)
  {
    v76 = v38;
    operator delete(v38);
  }
}

void sub_9F524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9FA18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_9FB20@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v10);
  v4 = strlen(a1);
  sub_4A5C(&v11, a1, v4);
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_12:
  a2[v5] = 0;
  v11 = v8;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_9FD7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9FD90@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A0018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A002C@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A02B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A02C8@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A0550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A0564@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A0820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A0834@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A0ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A0AD0@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A0D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A0DA0@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, const char *a4@<X6>, _BYTE *a5@<X8>, char *__s)
{
  sub_D7B0(v25);
  v11 = strlen(a1);
  sub_4A5C(&v26, a1, v11);
  v12 = std::ostream::operator<<();
  v13 = strlen(a2);
  sub_4A5C(v12, a2, v13);
  v14 = std::ostream::operator<<();
  v15 = strlen(a3);
  sub_4A5C(v14, a3, v15);
  v16 = std::ostream::operator<<();
  v17 = strlen(a4);
  sub_4A5C(v16, a4, v17);
  v18 = std::ostream::operator<<();
  v19 = strlen(__s);
  sub_4A5C(v18, __s, v19);
  if ((v36 & 0x10) != 0)
  {
    v21 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v21 = v32;
    }

    v22 = __src;
    v20 = v21 - __src;
    if (v21 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v20 = 0;
      a5[23] = 0;
      goto LABEL_12;
    }

    v22 = v29;
    v20 = v30 - v29;
    if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a5[23] = v20;
  if (v20)
  {
    memmove(a5, v22, v20);
  }

LABEL_12:
  a5[v20] = 0;
  v26 = v23;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_A10D0@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v10);
  v4 = strlen(a1);
  sub_4A5C(&v11, a1, v4);
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_12:
  a2[v5] = 0;
  v11 = v8;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A132C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A1340@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v10);
  v4 = strlen(a1);
  sub_4A5C(&v11, a1, v4);
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_12:
  a2[v5] = 0;
  v11 = v8;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A159C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A15B0@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A186C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void **sub_A1880(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 16;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_262EBE0[v6])(&v8, v3 - 16);
        }

        *(v3 - 2) = -1;
        v3 -= 16;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A1928(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  *a1 = off_262ECC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_A1998(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  *a1 = off_262ECC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

double sub_A1A18(uint64_t a1, void *a2)
{
  *(a1 + 60) = 1;
  v2 = *(a1 + 72);
  if (*(a1 + 64) == v2)
  {
    v5 = a2[1] - *a2;
    if (v5)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      do
      {
        v9 = *(*a2 + v7);
        v10 = *(a1 + 80);
        if (v2 < v10)
        {
          *v2 = *v9;
          v2 += 8;
        }

        else
        {
          v11 = *(a1 + 64);
          v12 = v2 - v11;
          v13 = (v2 - v11) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            sub_1794();
          }

          v15 = v10 - v11;
          if (v15 >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v17 = v13;
          v18 = (8 * v13);
          v19 = *v9;
          v20 = &v18[-v17];
          *v18 = v19;
          v2 = (v18 + 1);
          memcpy(v20, v11, v12);
          *(a1 + 64) = v20;
          *(a1 + 72) = v2;
          *(a1 + 80) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        *(a1 + 72) = v2;
        v7 += 24;
        --v8;
      }

      while (v8);
    }
  }

  return 0.0;
}

uint64_t sub_A1B9C(uint64_t result)
{
  *result = off_262ECC8;
  if (*(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    return v1;
  }

  return result;
}

void sub_A1BF8(uint64_t a1)
{
  *a1 = off_262ECC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

uint64_t *sub_A1C98(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      *(v1 + 72) = v2;
      operator delete(v2);
    }

    *v1 = off_262ECC8;
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    operator delete();
  }

  return result;
}

uint64_t **sub_A1D1C(void *a1, uint64_t a2)
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

void sub_A2100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5B450(va);
  _Unwind_Resume(a1);
}

void *sub_A2118(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_A2228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A2264(va);
  _Unwind_Resume(a1);
}

void sub_A223C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_5BB74(v4);
  sub_5E830(va1);
  *(v2 + 8) = v3;
  sub_A2264(va);
  _Unwind_Resume(a1);
}

void ***sub_A2264(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 16;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_262EBE0[v7])(&v9, v4 - 16);
          }

          *(v4 - 2) = -1;
          v4 -= 16;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t *sub_A2324(uint64_t *result, void *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(8 * v7) = *a2;
    v12 = 8 * v7 + 8;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

double sub_A2448(uint64_t a1, int a2)
{
  result = a2 / 1000.0;
  *(a1 + 40) = result;
  return result;
}

double sub_A2464(uint64_t a1, int a2)
{
  result = a2 / 1000.0;
  *(a1 + 528) = result;
  return result;
}

double sub_A2480(uint64_t a1, int a2)
{
  result = a2 / 1000.0;
  *(a1 + 536) = result;
  return result;
}

double sub_A249C(uint64_t a1, int a2, int a3)
{
  v3 = 0.0;
  if (a2 == 2)
  {
    v3 = 1.0;
  }

  *(a1 + 560) = v3;
  result = a3 / 1000.0;
  *(a1 + 544) = result;
  return result;
}

double sub_A24CC(uint64_t a1, int a2)
{
  result = a2 / 1000.0;
  *(a1 + 552) = result;
  return result;
}

double sub_A24E8(uint64_t a1, int a2)
{
  result = a2 / 10.0;
  *(a1 + 568) = result;
  return result;
}

void sub_A264C(_Unwind_Exception *a1)
{
  v5 = v1[81];
  v1[81] = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = *v3;
  if (*v3)
  {
    v1[77] = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_4:
      v8 = v1[62];
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_4;
    }
  }

  v1[74] = v7;
  operator delete(v7);
  v8 = v1[62];
  if (!v8)
  {
LABEL_5:
    v9 = v1[58];
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  v1[63] = v8;
  operator delete(v8);
  v9 = v1[58];
  if (!v9)
  {
LABEL_6:
    sub_B4A40(v1);
    _Unwind_Resume(a1);
  }

LABEL_11:
  v1[59] = v9;
  operator delete(v9);
  sub_B4A40(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A2740(void *a1)
{
  v2 = a1[81];
  a1[81] = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = a1[76];
  if (v3)
  {
    a1[77] = v3;
    operator delete(v3);
  }

  v4 = a1[73];
  if (v4)
  {
    a1[74] = v4;
    operator delete(v4);
  }

  v5 = a1[62];
  if (v5)
  {
    a1[63] = v5;
    operator delete(v5);
  }

  v6 = a1[58];
  if (v6)
  {
    a1[59] = v6;
    operator delete(v6);
  }

  return sub_B4A40(a1);
}

void sub_A2F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3014(uint64_t a1)
{
  sub_6F37C((a1 + 464));
  sub_6F37C((a1 + 496));
  *(a1 + 632) = 0x7FF0000000000000;
  *(a1 + 640) = 0x7FF0000000000000;
  *(a1 + 576) = 0;
  v2 = *(a1 + 584);
  v3 = *(a1 + 592) - v2;
  if (v3 >= 1)
  {
    memset_pattern16(v2, &unk_2266A10, v3);
  }

  v4 = *(a1 + 608);
  v5 = *(a1 + 616) - v4;
  if (v5 >= 1)
  {
    memset_pattern16(v4, &unk_2266A10, v5);
  }

  v6 = *(a1 + 560) != 0.0;

  return sub_B690C(a1, v6);
}

void sub_A3158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A3174(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  sub_6F3A0(a1);
  v7 = sub_6F544(a1, v6) * 0.00001;
  if (sub_6F47C(a1, v7))
  {
    if (sub_6F3B0(a1, 0, v7))
    {
      return 1;
    }

    sub_A3620(v9, &v13);
    sub_A39E0("Custom function ", a2, " called on a charging function with the following subdomains:", v9, " but this function is not monotonically increasing.", __p);
    sub_B36D4(a3, __p);
  }

  else
  {
    sub_A3620(v9, &v13);
    sub_A3328("Custom function ", a2, " called on a charging function with the following subdomains: ", v9, " but this function is not continuous.", __p);
    sub_B36D4(a3, __p);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
    if ((v10 & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_10:
    operator delete(v9[0]);
    return 0;
  }

  if (v10 < 0)
  {
    goto LABEL_10;
  }

  return 0;
}

void sub_A32C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A3328@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v30);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v31, a1, v12);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_4A5C(v13, v15, v16);
  v18 = strlen(a3);
  v19 = sub_4A5C(v17, a3, v18);
  v20 = *(a4 + 23);
  if (v20 >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 23);
  }

  else
  {
    v22 = *(a4 + 8);
  }

  v23 = sub_4A5C(v19, v21, v22);
  v24 = strlen(a5);
  sub_4A5C(v23, a5, v24);
  if ((v41 & 0x10) != 0)
  {
    v26 = v40;
    if (v40 < v37)
    {
      v40 = v37;
      v26 = v37;
    }

    v27 = v36;
    v25 = v26 - v36;
    if (v26 - v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a6[23] = 0;
      goto LABEL_24;
    }

    v27 = v34;
    v25 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a6[23] = v25;
  if (v25)
  {
    memmove(a6, v27, v25);
  }

LABEL_24:
  a6[v25] = 0;
  v31 = v28;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A360C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A3620(_BYTE *a1, uint64_t **a2)
{
  sub_D7B0(v19);
  v18[0] = sub_6F30C(*a2);
  v18[1] = v4;
  while (1)
  {
    v17[0] = sub_6F344(*a2);
    v17[1] = v5;
    if (!sub_6FCD4(v18, v17))
    {
      break;
    }

    v6 = sub_6FCE8(v18);
    v7 = sub_6FD4C(v18);
    sub_4A5C(&v20, " energy range [", 15);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, ", ", 2);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, "] Wh, time range [", 18);
    sub_6FDF0(v18, v6);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, ", ", 2);
    sub_6FDF0(v18, v7);
    v11 = std::ostream::operator<<();
    sub_4A5C(v11, "] seconds;", 10);
    sub_6FC50(v18);
  }

  if ((v30 & 0x10) != 0)
  {
    v13 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v13 = v26;
    }

    v14 = v25;
    v12 = v13 - v25;
    if (v13 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v12 = 0;
      a1[23] = 0;
      goto LABEL_15;
    }

    v14 = v23;
    v12 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_19:
      sub_3244();
    }
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a1[23] = v12;
  if (v12)
  {
    memmove(a1, v14, v12);
  }

LABEL_15:
  a1[v12] = 0;
  v20 = v15;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A3968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A3990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A39A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A39CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A39E0@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v30);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v31, a1, v12);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_4A5C(v13, v15, v16);
  v18 = strlen(a3);
  v19 = sub_4A5C(v17, a3, v18);
  v20 = *(a4 + 23);
  if (v20 >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 23);
  }

  else
  {
    v22 = *(a4 + 8);
  }

  v23 = sub_4A5C(v19, v21, v22);
  v24 = strlen(a5);
  sub_4A5C(v23, a5, v24);
  if ((v41 & 0x10) != 0)
  {
    v26 = v40;
    if (v40 < v37)
    {
      v40 = v37;
      v26 = v37;
    }

    v27 = v36;
    v25 = v26 - v36;
    if (v26 - v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a6[23] = 0;
      goto LABEL_24;
    }

    v27 = v34;
    v25 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a6[23] = v25;
  if (v25)
  {
    memmove(a6, v27, v25);
  }

LABEL_24:
  a6[v25] = 0;
  v31 = v28;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A3CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_A3CD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_lane_s64(v11, 0);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_lane_s64(v20, 0);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

double sub_A3EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = xmmword_2266B40;
  *(a1 + 32) = 2;
  *(a1 + 40) = a2;
  *a1 = off_262ED50;
  *(a1 + 64) = 256;
  *(a1 + 72) = xmmword_2266B40;
  *(a1 + 88) = 3;
  *(a1 + 96) = a2;
  *(a1 + 48) = a9;
  *(a1 + 56) = off_262EE58;
  *(a1 + 120) = 0;
  *(a1 + 128) = xmmword_2266B40;
  *(a1 + 144) = 1;
  *(a1 + 152) = a2;
  *(a1 + 104) = a9;
  *(a1 + 112) = off_262EF38;
  *(a1 + 121) = 1;
  *(a1 + 176) = 256;
  *(a1 + 184) = xmmword_2266B40;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 160) = a9;
  *(a1 + 168) = off_262F018;
  *(a1 + 216) = a3;
  *(a1 + 224) = a9;
  *(a1 + 240) = 256;
  *(a1 + 248) = xmmword_2266B40;
  *(a1 + 264) = 2;
  *(a1 + 272) = a3;
  *(a1 + 232) = off_262F0F8;
  *(a1 + 296) = 0;
  *(a1 + 304) = xmmword_2266B40;
  *(a1 + 320) = 5;
  *(a1 + 328) = a3;
  *(a1 + 280) = a9;
  *(a1 + 288) = off_262F1D8;
  *(a1 + 297) = 1;
  *(a1 + 352) = 256;
  *(a1 + 360) = 0;
  *(a1 + 368) = xmmword_2266B50;
  *(a1 + 336) = a9;
  *(a1 + 344) = off_262F2B8;
  *(a1 + 384) = a3;
  *(a1 + 392) = a9;
  *(a1 + 408) = 256;
  *(a1 + 416) = xmmword_2266B40;
  *(a1 + 432) = 2;
  *(a1 + 440) = a3;
  *(a1 + 400) = off_262F398;
  *(a1 + 448) = a4;
  *(a1 + 456) = a5;
  *(a1 + 480) = 256;
  *(a1 + 488) = 0;
  *(a1 + 496) = xmmword_22661F0;
  *(a1 + 464) = a9;
  *(a1 + 472) = off_262F478;
  *(a1 + 512) = a3;
  *(a1 + 520) = a6;
  *(a1 + 528) = a7;
  *(a1 + 536) = a9;
  *(a1 + 552) = 0;
  *(a1 + 560) = xmmword_2266B40;
  *(a1 + 576) = 1;
  *(a1 + 544) = off_262F558;
  *(a1 + 584) = a8;
  *(a1 + 592) = a9;
  return result;
}

double sub_A410C(uint64_t a1, double *a2, double *a3)
{
  if (*a2 <= 0.0 || *a3 <= 0.0)
  {
    v6 = *(a1 + 48);
    sub_A4308("Custom function power_function_add_constant_segment() expects strictly positive arguments, got energy ", " Wh and power ", " W instead.", __p);
    sub_B363C(v6, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
      v13 = sub_6F390(*(a1 + 40));
      v8 = 0.0;
      if (!v13)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v7 = sub_6F390(*(a1 + 40));
  v8 = 0.0;
  if (v7)
  {
LABEL_5:
    sub_6F3A0(*(a1 + 40));
    v8 = v9;
  }

LABEL_6:
  v10 = *a2;
  if (*a2 > v8 && *a3 > 0.0)
  {
    v11 = *(a1 + 40);
    __p[0] = *a3;
    v16 = 1;
    sub_6F5F4(v11, __p, v8, v10);
  }

  return 0.0;
}

void sub_A4208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4308@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A45C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A45EC(uint64_t a1, double *a2, double *a3, double *a4)
{
  if (*a2 > 0.0 && *a3 >= 0.0 || (v8 = *(a1 + 48), sub_A47AC("Custom function power_function_add_linear_segment() expects strictly positive energy argument and non-negative power argument, got energy ", " Wh and power ", " W instead.", __p), sub_B363C(v8, __p), (v20 & 0x80000000) == 0))
  {
    v9 = sub_6F390(*(a1 + 40));
    v10 = 0.0;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  operator delete(__p[0]);
  v17 = sub_6F390(*(a1 + 40));
  v10 = 0.0;
  if (v17)
  {
LABEL_5:
    sub_6F3A0(*(a1 + 40));
  }

LABEL_6:
  v11 = *a2;
  if (*a3 >= 0.0)
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0.0;
  }

  if (v11 > v10)
  {
    v13 = *a4;
    if (fabs(*a4) > 0.00001)
    {
      v14 = *(a1 + 40);
      __p[0] = *a4;
      *&__p[1] = v12 - v11 * v13;
      v15 = 2;
LABEL_14:
      v21 = v15;
      sub_6F5F4(v14, __p, v10, v11);
      return 0.0;
    }

    if (*a3 > 0.0)
    {
      v14 = *(a1 + 40);
      __p[0] = *a3;
      v15 = 1;
      goto LABEL_14;
    }

    v18 = *(a1 + 48);
    sub_A4A7C("Custom function power_function_add_linear_segment() expects that either the power or the slope argument is not zero, got power ", " W and slope ", " instead.", __p);
    sub_B36D4(v18, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0.0;
}

void sub_A478C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A47AC@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A4A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A4A7C@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A4D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A4D60(uint64_t a1, double *a2)
{
  if (!sub_6F390(*(a1 + 40)))
  {
    operator new();
  }

  if (*a2 > 0.0)
  {
    sub_6F6D0(*(a1 + 40), __p, *a2);
    v4 = *(a1 + 40);
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    *v4 = *__p;
    *(v4 + 16) = v9;
    *(v4 + 24) = v10;
    return 0.0;
  }

  v7 = *(a1 + 48);
  sub_A4EB8("Custom function power_function_cap() expects strictly positive power argument, got ", " W instead.", __p);
  sub_B36D4(v7, __p);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    return 0.0;
  }

  operator delete(__p[0]);
  return 0.0;
}

void sub_A4E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4EB8@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A5140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A5168(uint64_t a1)
{
  if (!sub_6F390(*(a1 + 40)))
  {
    operator new();
  }

  if (sub_6F390(*(a1 + 48)))
  {
    operator new();
  }

  v25[0] = sub_6F30C(*(a1 + 40));
  v25[1] = v2;
  __p[0] = sub_6F344(*(a1 + 40));
  __p[1] = v3;
  if (sub_6FCD4(v25, __p))
  {
    v4 = 0.0;
    do
    {
      v9 = sub_6FC60(v25);
      v10 = sub_6FCE8(v25);
      v24 = v10;
      v23 = sub_6FD4C(v25);
      v11 = *(v9 + 32);
      if (v11 == 1)
      {
        goto LABEL_6;
      }

      if (v11 != 2)
      {
        sub_5AF20();
      }

      if (*v9 == 0.0)
      {
LABEL_6:
        v5 = sub_6FDF0(v25, 0.0);
        v6 = v4 + (v23 - v10) * 3600.0 / v5;
        v7 = *(a1 + 48);
        *__p = (v6 - v4) / (v23 - v10);
        *&__p[1] = v6 - v23 * *__p;
        v28 = 2;
        sub_6F5F4(v7, __p, v10, v23);
        v4 = v6;
      }

      else
      {
        if (sub_6F0BC(v9, v10) < 0.00001)
        {
          v19 = *(a1 + 56);
          v21.f64[0] = sub_6F0BC(v9, v10);
          sub_A55A8("Custom function power_function_transform_to_charging_function() called on a linear segment that is not strictly positive at its left sub-domain border ", " Wh (function value: ", " W).", __p);
          sub_B36D4(v19, __p);
          if (SBYTE7(v27) < 0)
          {
            operator delete(__p[0]);
          }

          return 0.0;
        }

        if (sub_6F0BC(v9, v23) < -0.00001)
        {
          v12 = *(a1 + 56);
          v21.f64[0] = sub_6F0BC(v9, v23);
          sub_A5878("Custom function power_function_transform_to_charging_function() called on a linear segment that is negative at its right sub-domain border ", " Wh (function value: ", " W).", __p);
          sub_B363C(v12, __p);
          if (SBYTE7(v27) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 = *v9;
        v13 = -*(v9 + 8) / *v9;
        if (sub_6F0BC(v9, v23) >= 0.00001)
        {
          v14 = v23;
        }

        else
        {
          v14 = v13 * 0.995;
        }

        if (v10 >= v14)
        {
          return 0.0;
        }

        v15 = exp(v4 * v20 / 3600.0);
        v16.f64[0] = v20;
        v16.f64[1] = (v10 - v13) / v15;
        v21 = vdivq_f64(xmmword_2266B90, v16);
        v22 = COERCE_UNSIGNED_INT64(-v13 / v16.f64[1]);
        v17 = *(a1 + 48);
        *__p = v21;
        v27 = v22;
        v28 = 5;
        sub_6F5F4(v17, __p, v10, v14);
        v4 = sub_6F114(v21.f64, v14);
      }

      sub_6FC50(v25);
      __p[0] = sub_6F344(*(a1 + 40));
      __p[1] = v8;
    }

    while (sub_6FCD4(v25, __p));
  }

  return 0.0;
}

void sub_A5580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A55A8@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A5864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5878@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A5B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A5B5C(uint64_t a1, double *a2, double *a3)
{
  if ((*a2 <= 0.0 || *a3 <= 0.0) && (v6 = *(a1 + 48), sub_A5CC8("Custom function charging_function_add_linear_segment() expects strictly positive arguments, got energy ", " Wh and time ", " seconds instead.", __p), sub_B363C(v6, __p), v15 < 0))
  {
    operator delete(__p[0]);
    v7 = 0.0;
    v8 = 0.0;
    if (!sub_6F390(*(a1 + 40)))
    {
LABEL_5:
      if (!sub_6F390(*(a1 + 40)))
      {
        goto LABEL_6;
      }

LABEL_11:
      v7 = sub_6F544(*(a1 + 40), v8);
      v9 = *a2;
      if (*a2 <= v8)
      {
        return 0.0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (!sub_6F390(*(a1 + 40)))
    {
      goto LABEL_5;
    }
  }

  sub_6F3A0(*(a1 + 40));
  v8 = v13;
  if (sub_6F390(*(a1 + 40)))
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = *a2;
  if (*a2 > v8)
  {
LABEL_7:
    v10 = *a3 - v9 * ((*a3 - v7) / (v9 - v8));
    v11 = *(a1 + 40);
    *__p = (*a3 - v7) / (v9 - v8);
    __p[1] = *&v10;
    v16 = 2;
    sub_6F5F4(v11, __p, v8, v9);
  }

  return 0.0;
}

void sub_A5CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A5CC8@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A5F84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A5FAC(uint64_t a1, double *a2, void **a3, void **a4, uint64_t *a5, uint64_t *a6)
{
  if (*a2 <= 0.0)
  {
    v12 = *(a1 + 48);
    sub_A60CC("Custom function charging_function_add_polynomial_segment() expects a strictly positive max_energy argument, got ", " Wh instead.", __p);
    sub_B363C(v12, __p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = sub_6F390(*(a1 + 40));
  v18 = 0.0;
  if (v17)
  {
    sub_6F3A0(*(a1 + 40));
    v18 = v19;
  }

  v20 = *a2;
  if (*a2 > v18)
  {
    v21 = *(a1 + 40);
    __p[0] = v13;
    __p[1] = v14;
    v24 = v15;
    v25 = v16;
    v26 = 3;
    sub_6F5F4(v21, __p, v18, v20);
  }

  return 0.0;
}

void sub_A60B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A60CC@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_A6354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_A637C(uint64_t a1, double *a2, void **a3, void **a4, double *a5, uint64_t *a6)
{
  if (*a2 <= 0.0)
  {
    v12 = *(a1 + 48);
    sub_A6538("Custom function charging_function_add_logarithmic_segment() expects a strictly positive max_energy argument, got ", " Wh instead.", __p);
    sub_B363C(v12, __p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *a6;
  v17 = sub_6F390(*(a1 + 40));
  v18 = 0.0;
  if (v17)
  {
    sub_6F3A0(*(a1 + 40));
  }

  v19 = *a2;
  if (v18 * *a4 + *a5 <= 0.0 || v19 * *a4 + *a5 <= 0.0)
  {
    v21 = *(a1 + 48);
    sub_A67D4("Custom function charging_function_add_logarithmic_segment(max_energy, a, b, c, d) expects that b * x + c is strictly positive for all x in the sub-domain of the logarithmic segment, got b = ", ", c = ", ", and the sub-domain is [", ", ", __p, "].");
    sub_B36D4(v21, __p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (v19 > v18)
  {
    v20 = *(a1 + 40);
    __p[0] = v13;
    __p[1] = v14;
    v24 = v15;
    v25 = v16;
    v26 = 5;
    sub_6F5F4(v20, __p, v18, v19);
  }

  return 0.0;
}

void sub_A6518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A6538@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}