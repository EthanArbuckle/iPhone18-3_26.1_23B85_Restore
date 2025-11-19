void sub_EAEAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EAEAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EAEAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EAEB10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = nullsub_1(a5);
  v11[0] = 0;
  v12 = 0;
  if (*(v7 + 128) == 1)
  {
    sub_4F1328(v11, v7);
    v12 = 1;
  }

  result = sub_4EE138(a5, 0);
  if (v12)
  {
    sub_58BBC(a2);
    sub_EE3CD8(v10, *a1);
  }

  return result;
}

void sub_EAEE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_CE2648(va);
  sub_4EC948(v8 - 224);
  _Unwind_Resume(a1);
}

uint64_t sub_EAEEB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = sub_5CC07C(a2);
  if (!result)
  {
    return result;
  }

  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  while (v8 != v9)
  {
    v12 = *(a4 + 112);
    if (v12 && (v13 = *(a4 + 104), v13 < *v12))
    {
      *(a4 + 104) = v13 + 1;
      v11 = *&v12[2 * v13 + 2];
    }

    else
    {
      sub_14BAE64(*(a4 + 96));
      v11 = sub_19593CC(a4 + 96, v10);
    }

    sub_64D110(v8, v11);
    v8 += 20;
  }

  v14 = *(a2 + 144);
  v15 = *(a2 + 152);
  while (v14 != v15)
  {
    v18 = *(a4 + 136);
    if (v18 && (v19 = *(a4 + 128), v19 < *v18))
    {
      *(a4 + 128) = v19 + 1;
      v17 = *&v18[2 * v19 + 2];
    }

    else
    {
      sub_14BAE64(*(a4 + 120));
      v17 = sub_19593CC(a4 + 120, v16);
    }

    sub_64D110(v14, v17);
    v14 += 20;
  }

  *(a4 + 16) |= 8u;
  v20 = *(a4 + 192);
  if (!v20)
  {
    v21 = *(a4 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_14BAE64(v22);
    v20 = v23;
    *(a4 + 192) = v23;
  }

  sub_64D110((a2 + 168), v20);
  *(a4 + 16) |= 1u;
  v24 = *(a4 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a4 + 168), (a2 + 8), v25);
  v26 = *(a2 + 752);
  *(a4 + 16) |= 0x2000000u;
  *(a4 + 297) = v26;
  if (sub_5CBACC(a2 + 120))
  {
    *(a4 + 16) |= 0x10u;
    v27 = *(a4 + 200);
    if (!v27)
    {
      v28 = *(a4 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_14BAE64(v29);
      v27 = v30;
      *(a4 + 200) = v30;
    }

    sub_64D110((a2 + 328), v27);
    if (!sub_5CBB30((a2 + 496)))
    {
LABEL_24:
      if (!sub_5CBB44(a2 + 496))
      {
        goto LABEL_25;
      }

LABEL_36:
      v35 = *(a2 + 512);
      v36 = v35 / 100;
      v37 = v35 % 100;
      if (v35 < 0)
      {
        v38 = -50;
      }

      else
      {
        v38 = 50;
      }

      *(a4 + 16) |= 0x400u;
      *(a4 + 244) = v36 + ((5243 * (v38 + v37)) >> 19) + ((5243 * (v38 + v37)) >> 31);
      if (!sub_5CC010(a2))
      {
        goto LABEL_51;
      }

      goto LABEL_40;
    }
  }

  else if (!sub_5CBB30((a2 + 496)))
  {
    goto LABEL_24;
  }

  v31 = *(a2 + 496);
  v32 = v31 / 100;
  v33 = v31 % 100;
  if (v31 < 0)
  {
    v34 = -50;
  }

  else
  {
    v34 = 50;
  }

  *(a4 + 16) |= 0x200u;
  *(a4 + 240) = v32 + ((5243 * (v34 + v33)) >> 19) + ((5243 * (v34 + v33)) >> 31);
  if (sub_5CBB44(a2 + 496))
  {
    goto LABEL_36;
  }

LABEL_25:
  if (!sub_5CC010(a2))
  {
    goto LABEL_51;
  }

LABEL_40:
  v39 = *(a2 + 712);
  v40 = *(v39 + 40);
  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = *(v39 + 23);
    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v42 = v40 / 100;
    v43 = v40 % 100;
    if (v40 < 0)
    {
      v44 = -50;
    }

    else
    {
      v44 = 50;
    }

    *(a4 + 16) |= 0x800u;
    *(a4 + 248) = v42 + ((5243 * (v44 + v43)) >> 19) + ((5243 * (v44 + v43)) >> 31);
    v41 = *(v39 + 23);
    if ((v41 & 0x8000000000000000) == 0)
    {
LABEL_42:
      if (!v41)
      {
        goto LABEL_51;
      }

LABEL_49:
      v45 = sub_EB01A4(a3, v39);
      if (!v45)
      {
        sub_49EC("unordered_map::at: key not found");
      }

      v46 = *(v45 + 10);
      *(a4 + 16) |= 0x1000u;
      *(a4 + 252) = v46;
      goto LABEL_51;
    }
  }

  if (*(v39 + 8))
  {
    goto LABEL_49;
  }

LABEL_51:
  v47 = *(a2 + 488);
  if (v47 != 0x7FFFFFFF)
  {
    v48 = v47 / 10;
    v49 = v47 % 10;
    if (v47 < 0)
    {
      v50 = -5;
    }

    else
    {
      v50 = 5;
    }

    *(a4 + 16) |= 0x8000u;
    *(a4 + 264) = v48 + (((103 * (v50 + v49)) >> 15) & 1) + ((103 * (v50 + v49)) >> 10);
  }

  v51 = *(a2 + 756) - 1;
  if (v51 <= 3)
  {
    *(a4 + 16) |= 0x2000u;
    *(a4 + 256) = v51;
  }

  v52 = sub_ECB304(*a2);
  *(a4 + 16) |= 0x4000u;
  *(a4 + 260) = v52;
  result = sub_5CC218(a2);
  if (result)
  {
    v53 = *(a2 + 760);
    v54 = *(a2 + 768);
    while (v53 != v54)
    {
      v57 = *(a4 + 160);
      if (v57 && (v58 = *(a4 + 152), v58 < *v57))
      {
        *(a4 + 152) = v58 + 1;
        v56 = *&v57[2 * v58 + 2];
      }

      else
      {
        v55 = sub_14BDBB8(*(a4 + 144));
        v56 = sub_19593CC(a4 + 144, v55);
      }

      sub_ECA9F0(v53, v56);
      v53 += 168;
    }

    v59 = *(a2 + 784);
    *(a4 + 16) |= 0x10000u;
    *(a4 + 268) = v59;
    if (sub_5CBB58(a2 + 496))
    {
      v60 = *(a2 + 528);
      v61 = v60 / 10;
      v62 = v60 % 10;
      if (v60 < 0)
      {
        v63 = -5;
      }

      else
      {
        v63 = 5;
      }

      *(a4 + 16) |= 0x800000u;
      *(a4 + 292) = v61 + (((103 * (v63 + v62)) >> 15) & 1) + ((103 * (v63 + v62)) >> 10);
    }

    result = sub_5CBFD0(a2);
    *(a4 + 16) |= 0x4000000u;
    *(a4 + 298) = result;
  }

  return result;
}

uint64_t sub_EAF414(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = sub_57478(a2);
  v7 = v6;
  if (*(a3 + 202) == 1 && sub_68C99C(v6))
  {
    v8 = sub_68C988(v7);
    if (v8 < 0)
    {
      v9 = -5;
    }

    else
    {
      v9 = 5;
    }

    a4[10] |= 0x80u;
    a4[127] = v8 / 10 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10);
  }

  if (*(a3 + 203) == 1 && sub_68C900(v7))
  {
    v10 = sub_68C8EC(v7);
    if (v10 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    a4[10] |= 0x800u;
    a4[131] = v10 / 10 + (((103 * (v11 + v10 % 10)) >> 15) & 1) + ((103 * (v11 + v10 % 10)) >> 10);
  }

  if (sub_68CA38(v7))
  {
    v13 = sub_68CA24(v7);
    if (v13 < 0)
    {
      v14 = -5;
    }

    else
    {
      v14 = 5;
    }

    a4[10] |= 0x100u;
    a4[128] = v13 / 10 + (((103 * (v14 + v13 % 10)) >> 15) & 1) + ((103 * (v14 + v13 % 10)) >> 10);
    if (!sub_68C864(v7))
    {
LABEL_15:
      result = sub_68CAD4(v7);
      if (!result)
      {
        return result;
      }

      goto LABEL_25;
    }
  }

  else if (!sub_68C864(v7))
  {
    goto LABEL_15;
  }

  v15 = sub_68C850(v7);
  if (v15 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  a4[10] |= 0x200u;
  a4[129] = v15 / 10 + (((103 * (v16 + v15 % 10)) >> 15) & 1) + ((103 * (v16 + v15 % 10)) >> 10);
  result = sub_68CAD4(v7);
  if (result)
  {
LABEL_25:
    result = sub_68CAC0(v7);
    if (result < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    a4[10] |= 0x400u;
    a4[130] = result / 10 + (((103 * (v17 + result % 10)) >> 15) & 1) + ((103 * (v17 + result % 10)) >> 10);
  }

  return result;
}

void sub_EAF6BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 7416);
  for (i = *(a2 + 7424); v4 != i; v4 += 1120)
  {
    v12 = *(a4 + 200);
    if (sub_EAFBBC(a3, v4 + 48))
    {
      sub_EAFD74(a3, v4 + 48);
    }

    else
    {
      *(sub_EAFD74(a3, v4 + 48) + 10) = v12;
      v14 = *(a4 + 208);
      if (v14 && (v15 = *(a4 + 200), v15 < *v14))
      {
        *(a4 + 200) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        v17 = sub_14BDE5C(*(a4 + 192));
        v16 = sub_19593CC(a4 + 192, v17);
      }

      sub_EC6F6C(v4, v16, 0, v13);
    }

    v8 = *(v4 + 464);
    v9 = v8 / 100;
    v10 = v8 % 100;
    if (v8 < 0)
    {
      v11 = -50;
    }

    else
    {
      v11 = 50;
    }

    sub_ECA844(v9 + ((5243 * (v11 + v10)) >> 19) + ((5243 * (v11 + v10)) >> 31), a4);
  }
}

void sub_EAF83C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_69D1F4(a2, &v15);
  v6 = v15;
  if (v15 != v16)
  {
    v7 = *(a4 + 200);
    v17 = v15 + 8;
    *(sub_EAFD74(a3, (v15 + 8)) + 10) = v7;
    v9 = *(a4 + 208);
    if (v9 && (v10 = *(a4 + 200), v10 < *v9))
    {
      *(a4 + 200) = v10 + 1;
      v11 = *&v9[2 * v10 + 2];
    }

    else
    {
      v12 = sub_14BDE5C(*(a4 + 192));
      v11 = sub_19593CC(a4 + 192, v12);
    }

    sub_EC83B0(v6, v11, v8);
  }

  if (v15)
  {
    v13 = v16;
    v14 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = sub_52A624(v13 - 168);
      }

      while (v13 != v6);
      v14 = v15;
    }

    v16 = v6;
    operator delete(v14);
  }
}

void sub_EAF9C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_EAF9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 2u;
  v4 = *(a3 + 56);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_14BF344(v7);
    v4 = v8;
    *(a3 + 56) = v8;
  }

  v25 = *(a2 + 2208);
  v26 = *(a2 + 2224);
  if (sub_4566B4(&v25))
  {
    v9 = sub_4470E4(&v25);
    *(v4 + 16) |= 0x40u;
    *(v4 + 56) = v9;
  }

  sub_3EDBB0(&v17, (a2 + 2448));
  v10 = v17 == 0x7FFFFFFF || v18[7] == 0x7FFFFFFF;
  if (!v10 && sub_4566B4(v18) && v24)
  {
    if (v24 == 2)
    {
      if (v23 > 0xFFFFFFFEFFFFFFFFLL || !v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v24 != 1)
      {
        sub_5AF20();
      }

      if (v23 == -1)
      {
        goto LABEL_24;
      }
    }

    v11 = v17 / 10;
    v12 = v17 % 10;
    if (v17 < 0)
    {
      v13 = -5;
    }

    else
    {
      v13 = 5;
    }

    *(v4 + 16) |= 2u;
    *(v4 + 32) = v11 + (((103 * (v13 + v12)) >> 15) & 1) + ((103 * (v13 + v12)) >> 10);
    v14 = sub_447084(v18);
    v15 = *(v4 + 16);
    *(v4 + 16) = v15 | 1;
    *(v4 + 24) = v14;
    if (v24 == 1)
    {
      v16 = v23;
      *(v4 + 16) = v15 | 9;
      *(v4 + 40) = v16;
    }
  }

LABEL_24:
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_EAFBA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49A8F8(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EAFBBC(void *a1, uint64_t a2)
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
        if (v20 == v8)
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
      if (v16 == v8)
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

uint64_t **sub_EAFD74(void *a1, uint64_t a2)
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

void sub_EB0178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EB018C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EB01A4(void *a1, uint64_t a2)
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

void sub_EB035C()
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
  xmmword_27BAFB0 = 0u;
  unk_27BAFC0 = 0u;
  dword_27BAFD0 = 1065353216;
  sub_3A9A34(&xmmword_27BAFB0, v0);
  sub_3A9A34(&xmmword_27BAFB0, v3);
  sub_3A9A34(&xmmword_27BAFB0, __p);
  sub_3A9A34(&xmmword_27BAFB0, v9);
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
    qword_27BAF88 = 0;
    qword_27BAF90 = 0;
    qword_27BAF80 = 0;
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

void sub_EB05A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BAF98)
  {
    qword_27BAFA0 = qword_27BAF98;
    operator delete(qword_27BAF98);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB07BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_EB0824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_14CA0A8(a6, 0, 0);
  *(a6 + 40) |= 0x80u;
  *(a6 + 248) = 0;
  sub_58568(v23);
  sub_585EC(v23, __p);
  *(a6 + 40) |= 2u;
  v12 = *(a6 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA30((a6 + 200), __p, v13);
  if (v25 < 0)
  {
    operator delete(__p[0]);
    if (*(a2 + 204))
    {
      goto LABEL_12;
    }
  }

  else if (*(a2 + 204))
  {
    goto LABEL_12;
  }

  v14 = *a1;
  *(a6 + 40) |= 0x10u;
  v15 = *(a6 + 224);
  if (!v15)
  {
    v16 = *(a6 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_14D5A00(v17);
    v15 = v18;
    *(a6 + 224) = v18;
  }

  sub_EB0A24(a3, a2, v14, v15);
LABEL_12:
  sub_EB0E34(a3, a4, *a1, a2, a5);
  v19 = sub_57478(a3);
  result = sub_73EC4(v19);
  if (*result != 0x7FFFFFFF && *(result + 4) != 0x7FFFFFFF && *(result + 16) != 0x7FFFFFFFFFFFFFFFLL && *(result + 8) != 0x7FFFFFFF)
  {
    v21 = sub_57478(a3);
    result = sub_73EC4(v21);
    if (*result <= 978307199)
    {
      v22 = 0;
    }

    else
    {
      v22 = *result - 978307200;
    }

    *(a6 + 40) |= 0x100u;
    *(a6 + 252) = v22;
  }

  return result;
}

void sub_EB09E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_14CA828(v17);
    _Unwind_Resume(a1);
  }

  sub_14CA828(v17);
  _Unwind_Resume(a1);
}

void sub_EB0A24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = nullsub_1(a1);
  if (*(v8 + 23) >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *v8;
  }

  v10 = *v9;
  *(a4 + 16) |= 4u;
  *(a4 + 160) = v10;
  v11 = sub_5EB608(a1);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (*v11 != v13)
  {
    do
    {
      while (1)
      {
        v16 = *(a4 + 40);
        if (v16)
        {
          v17 = *(a4 + 32);
          if (v17 < *v16)
          {
            break;
          }
        }

        v14 = sub_14D59A4(*(a4 + 24));
        v15 = sub_19593CC(a4 + 24, v14);
        sub_EB11B4(v12, v15);
        v12 += 1582;
        if (v12 == v13)
        {
          goto LABEL_10;
        }
      }

      *(a4 + 32) = v17 + 1;
      sub_EB11B4(v12, *&v16[2 * v17 + 2]);
      v12 += 1582;
    }

    while (v12 != v13);
  }

LABEL_10:
  v18 = sub_5EB608(a1);
  v19 = 0x5DDB1ADCB91F64A7 * ((v18[1] - *v18) >> 4);
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = v19 & 0x7FFFFFFF;
    do
    {
      v22 = sub_5EBC20(a1, v20);
      sub_EB2AA8(v22, a3, a2, *(*(a4 + 40) + 8 * v20++ + 8));
    }

    while (v21 != v20);
  }

  if (*(a2 + 200))
  {
    v23 = sub_5EBCF8(a1);
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      for (i = 0; i != v24; ++i)
      {
        v27 = sub_5EBC20(a1, i);
        sub_EC6954((v27 + 7392), *(*(a4 + 40) + (v25 >> 29) + 8));
        v25 += 0x100000000;
      }
    }
  }

  *(a4 + 16) |= 2u;
  v28 = *(a4 + 152);
  if (!v28)
  {
    v29 = *(a4 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_14BD1EC(v30);
    *(a4 + 152) = v28;
  }

  sub_EB13BC(a1, v28);
  *(a4 + 16) |= 1u;
  v31 = *(a4 + 144);
  if (!v31)
  {
    v32 = *(a4 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_14BCA7C(v33);
    *(a4 + 144) = v31;
  }

  sub_EB146C(a1, a2, v31);
  v34 = sub_57478(a1);
  v35 = sub_68F800(v34);
  if (!sub_4D1F6C(v35))
  {
    v36 = v35[20];
    if (v36 != v35[21] && !sub_4D1F6C(v36))
    {
      v48 = v35[20];
      v49 = v35[21];
      while (v48 != v49)
      {
        v52 = *(a4 + 136);
        if (v52 && (v53 = *(a4 + 128), v53 < *v52))
        {
          *(a4 + 128) = v53 + 1;
          v51 = *&v52[2 * v53 + 2];
        }

        else
        {
          sub_14BAE64(*(a4 + 120));
          v51 = sub_19593CC(a4 + 120, v50);
        }

        sub_64D110(v48, v51);
        v48 += 20;
      }
    }
  }

  *__p = 0u;
  v55 = 0u;
  v56 = 1065353216;
  if (*(a2 + 201) == 1)
  {
    sub_EB1700(a1, __p, a4);
    v37 = sub_5EBC28(a1);
    v38 = *v37;
    v39 = v37[1];
    if (*v37 != v39)
    {
      do
      {
        v40 = *(a4 + 88);
        if (v40 && (v41 = *(a4 + 80), v41 < *v40))
        {
          *(a4 + 80) = v41 + 1;
          v42 = *&v40[2 * v41 + 2];
        }

        else
        {
          sub_14BDC34(*(a4 + 72));
          v42 = sub_19593CC(a4 + 72, v43);
        }

        sub_EB1F70(v38, __p, a2, v42);
        v38 += 816;
      }

      while (v38 != v39);
    }
  }

  sub_EB242C(a1, a2, a3);
  v44 = v55;
  if (v55)
  {
    do
    {
      v46 = *v44;
      if (*(v44 + 39) < 0)
      {
        v47 = v44;
        operator delete(v44[2]);
        v44 = v47;
      }

      operator delete(v44);
      v44 = v46;
    }

    while (v46);
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_EB0DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EB0E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_EB0E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EB0E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = nullsub_1(a5);
  v11[0] = 0;
  v12 = 0;
  if (*(v7 + 128) == 1)
  {
    sub_4F1328(v11, v7);
    v12 = 1;
  }

  result = sub_4EE138(a5, 0);
  if (v12)
  {
    sub_58BBC(a1);
    sub_EE3CD8(v10, a3);
  }

  return result;
}

void sub_EB1124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_CE2648(va);
  sub_4EC948(v8 - 224);
  _Unwind_Resume(a1);
}

void sub_EB11B4(void *a1, uint64_t a2)
{
  v4 = a1[141];
  v5 = a1[142];
  while (v4 != v5)
  {
    v8 = *(a2 + 64);
    if (v8 && (v9 = *(a2 + 56), v9 < *v8))
    {
      *(a2 + 56) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      v6 = sub_14D5948(*(a2 + 48));
      v7 = sub_19593CC(a2 + 48, v6);
    }

    sub_EB2800(v4, v7);
    v4 += 654;
  }

  *(a2 + 40) |= 0x20u;
  v10 = *(a2 + 496);
  if (!v10)
  {
    v11 = *(a2 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v10 = sub_14BD1EC(v12);
    *(a2 + 496) = v10;
  }

  v13 = sub_4D20C0(a1, 8);
  *(v10 + 16) |= 1u;
  *(v10 + 24) = v13 ^ 1;
  if (sub_4D20B0(a1, 3))
  {
    v14 = 1;
  }

  else
  {
    v14 = 1;
    if ((sub_4D20C0(a1, 9) & 1) == 0 && (sub_4D20B0(a1, 1) & 1) == 0)
    {
      v14 = sub_4D20C0(a1, 12);
    }
  }

  *(v10 + 16) |= 2u;
  *(v10 + 25) = v14;
  v15 = a1[1272];
  v16 = a1[1273];
  while (v15 != v16)
  {
    v19 = *(a2 + 400);
    if (v19 && (v20 = *(a2 + 392), v20 < *v19))
    {
      *(a2 + 392) = v20 + 1;
      v18 = *&v19[2 * v20 + 2];
    }

    else
    {
      v17 = sub_14BA560(*(a2 + 384));
      v18 = sub_19593CC(a2 + 384, v17);
    }

    sub_ECB328(v15, v18);
    v15 += 616;
  }

  v21 = a1[1269];
  v22 = a1[1270];
  while (v21 != v22)
  {
    v25 = *(a2 + 448);
    if (v25 && (v26 = *(a2 + 440), v26 < *v25))
    {
      *(a2 + 440) = v26 + 1;
      v24 = *&v25[2 * v26 + 2];
    }

    else
    {
      v23 = sub_14BA560(*(a2 + 432));
      v24 = sub_19593CC(a2 + 432, v23);
    }

    sub_ECB328(v21, v24);
    v21 += 616;
  }
}

uint64_t sub_EB13BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_57478(a1);
  v5 = sub_68D8A8(v4, 8);
  *(a2 + 16) |= 1u;
  *(a2 + 24) = v5 ^ 1;
  v6 = sub_57478(a1);
  result = sub_68D828(v6, 3);
  if (result)
  {
    v8 = 1;
  }

  else
  {
    result = sub_68D8A8(v6, 9);
    v8 = 1;
    if ((result & 1) == 0)
    {
      result = sub_68D828(v6, 1);
      if ((result & 1) == 0)
      {
        result = sub_68D8A8(v6, 12);
        v8 = result;
      }
    }
  }

  *(a2 + 16) |= 2u;
  *(a2 + 25) = v8;
  return result;
}

uint64_t sub_EB146C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = sub_57478(a1);
  if (sub_68C864(v5))
  {
    v6 = sub_68C850(v5);
    if (v6 < 0)
    {
      v7 = -5;
    }

    else
    {
      v7 = 5;
    }

    a3[4] |= 1u;
    a3[6] = v6 / 10 + (((103 * (v7 + v6 % 10)) >> 15) & 1) + ((103 * (v7 + v6 % 10)) >> 10);
  }

  if (*(a2 + 202) == 1 && sub_68C99C(v5))
  {
    v8 = sub_68C988(v5);
    if (v8 < 0)
    {
      v9 = -5;
    }

    else
    {
      v9 = 5;
    }

    a3[4] |= 2u;
    a3[7] = v8 / 10 + (((103 * (v9 + v8 % 10)) >> 15) & 1) + ((103 * (v9 + v8 % 10)) >> 10);
  }

  if (*(a2 + 203) == 1 && sub_68C900(v5))
  {
    v10 = sub_68C8EC(v5);
    if (v10 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    a3[4] |= 4u;
    a3[8] = v10 / 10 + (((103 * (v11 + v10 % 10)) >> 15) & 1) + ((103 * (v11 + v10 % 10)) >> 10);
  }

  if (!sub_68CA38(v5))
  {
    result = sub_68CAD4(v5);
    if (!result)
    {
      return result;
    }

    goto LABEL_25;
  }

  v13 = sub_68CA24(v5);
  if (v13 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  a3[4] |= 8u;
  a3[9] = v13 / 10 + (((103 * (v14 + v13 % 10)) >> 15) & 1) + ((103 * (v14 + v13 % 10)) >> 10);
  result = sub_68CAD4(v5);
  if (result)
  {
LABEL_25:
    result = sub_68CAC0(v5);
    if (result < 0)
    {
      v15 = -5;
    }

    else
    {
      v15 = 5;
    }

    a3[4] |= 0x10u;
    a3[10] = result / 10 + (((103 * (v15 + result % 10)) >> 15) & 1) + ((103 * (v15 + result % 10)) >> 10);
  }

  return result;
}

void sub_EB1700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (*(a2 + 24))
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      do
      {
        v8 = *v5;
        if (*(v5 + 39) < 0)
        {
          operator delete(v5[2]);
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8);
    }

    v4[2] = 0;
    v6 = v4[1];
    if (v6)
    {
      bzero(*v4, 8 * *&v6);
    }

    v4[3] = 0;
  }

  v86 = sub_5EBCF8(a1);
  if (v86)
  {
    v7 = 0;
    v92 = a3;
    v96 = v4;
    do
    {
      v88 = v7;
      v89 = sub_5EBC20(a1, v7);
      v10 = *(*(a3 + 40) + 8 * v7 + 8);
      v11 = *(v89 + 7416);
      v94 = *(v89 + 7424);
      if (v11 == v94)
      {
        goto LABEL_119;
      }

      do
      {
LABEL_17:
        v12 = *(v11 + 71);
        if (v12 >= 0)
        {
          v13 = (v11 + 48);
        }

        else
        {
          v13 = *(v11 + 48);
        }

        if (v12 >= 0)
        {
          v14 = *(v11 + 71);
        }

        else
        {
          v14 = *(v11 + 56);
        }

        v15 = sub_AAD8(&__p, v13, v14);
        v16 = v4[1];
        if (!*&v16)
        {
          goto LABEL_62;
        }

        v17 = v15;
        v18 = vcnt_s8(v16);
        v18.i16[0] = vaddlv_u8(v18);
        if (v18.u32[0] > 1uLL)
        {
          v19 = v15;
          v20 = v96;
          if (v15 >= *&v16)
          {
            v19 = v15 % *&v16;
          }
        }

        else
        {
          v19 = (*&v16 - 1) & v15;
          v20 = v96;
        }

        v21 = *(*v20 + 8 * v19);
        if (!v21 || (v22 = *v21) == 0)
        {
LABEL_62:
          a3 = v92;
          v38 = *(v92 + 56);
          __p = (v11 + 48);
          *(sub_EB37EC(v96, v11 + 48) + 10) = v38;
          v40 = *(v92 + 64);
          if (v40 && (v41 = *(v92 + 56), v41 < *v40))
          {
            *(v92 + 56) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_14BDE5C(*(v92 + 48));
            v42 = sub_19593CC(v92 + 48, v43);
          }

          sub_EC6F6C(v11, v42, 1, v39);
          v23 = *(v11 + 71);
          v37 = *(v11 + 48);
          v36 = *(v11 + 56);
          v24 = *(v11 + 71);
          goto LABEL_67;
        }

        v23 = *(v11 + 71);
        v24 = v23;
        v90 = *(v11 + 48);
        v91 = *(v11 + 56);
        if ((v23 & 0x80u) == 0)
        {
          v25 = *(v11 + 71);
        }

        else
        {
          v25 = *(v11 + 56);
        }

        if ((v23 & 0x80u) == 0)
        {
          v26 = (v11 + 48);
        }

        else
        {
          v26 = *(v11 + 48);
        }

        __s2 = v26;
        if (v18.u32[0] < 2uLL)
        {
          v27 = *&v16 - 1;
          while (1)
          {
            v32 = v22[1];
            if (v17 == v32)
            {
              v33 = *(v22 + 39);
              v34 = v33;
              if (v33 < 0)
              {
                v33 = v22[3];
              }

              if (v33 == v25)
              {
                v35 = v34 >= 0 ? (v22 + 2) : v22[2];
                if (!memcmp(v35, __s2, v25))
                {
                  goto LABEL_61;
                }
              }
            }

            else if ((v32 & v27) != v19)
            {
              goto LABEL_62;
            }

            v22 = *v22;
            if (!v22)
            {
              goto LABEL_62;
            }
          }
        }

        while (1)
        {
          v28 = v22[1];
          if (v17 == v28)
          {
            break;
          }

          if (v28 >= *&v16)
          {
            v28 %= *&v16;
          }

          if (v28 != v19)
          {
            goto LABEL_62;
          }

LABEL_39:
          v22 = *v22;
          if (!v22)
          {
            goto LABEL_62;
          }
        }

        v29 = *(v22 + 39);
        v30 = v29;
        if (v29 < 0)
        {
          v29 = v22[3];
        }

        if (v29 != v25)
        {
          goto LABEL_39;
        }

        v31 = v30 >= 0 ? (v22 + 2) : v22[2];
        if (memcmp(v31, __s2, v25))
        {
          goto LABEL_39;
        }

LABEL_61:
        v36 = v91;
        a3 = v92;
        v37 = v90;
LABEL_67:
        if (v24 >= 0)
        {
          v44 = (v11 + 48);
        }

        else
        {
          v44 = v37;
        }

        if (v24 >= 0)
        {
          v45 = v23;
        }

        else
        {
          v45 = v36;
        }

        v46 = sub_AAD8(&__p, v44, v45);
        v47 = v96[1];
        if (!*&v47)
        {
          goto LABEL_147;
        }

        v48 = v46;
        v49 = vcnt_s8(v47);
        v49.i16[0] = vaddlv_u8(v49);
        if (v49.u32[0] > 1uLL)
        {
          v50 = v46;
          if (v46 >= *&v47)
          {
            v50 = v46 % *&v47;
          }
        }

        else
        {
          v50 = (*&v47 - 1) & v46;
        }

        v51 = *(*v96 + 8 * v50);
        if (!v51 || (v52 = *v51) == 0)
        {
LABEL_147:
          sub_49EC("unordered_map::at: key not found");
        }

        v53 = *(v11 + 71);
        if (v53 >= 0)
        {
          v54 = *(v11 + 71);
        }

        else
        {
          v54 = *(v11 + 56);
        }

        if (v53 >= 0)
        {
          v55 = (v11 + 48);
        }

        else
        {
          v55 = *(v11 + 48);
        }

        if (v49.u32[0] < 2uLL)
        {
          v56 = *&v47 - 1;
          while (1)
          {
            v61 = v52[1];
            if (v61 == v48)
            {
              v62 = *(v52 + 39);
              v63 = v62;
              if ((v62 & 0x80u) != 0)
              {
                v62 = v52[3];
              }

              if (v62 == v54)
              {
                v64 = v63 >= 0 ? v52 + 2 : v52[2];
                if (!memcmp(v64, v55, v54))
                {
                  goto LABEL_111;
                }
              }
            }

            else if ((v61 & v56) != v50)
            {
              goto LABEL_147;
            }

            v52 = *v52;
            if (!v52)
            {
              goto LABEL_147;
            }
          }
        }

        while (2)
        {
          v57 = v52[1];
          if (v57 != v48)
          {
            if (v57 >= *&v47)
            {
              v57 %= *&v47;
            }

            if (v57 != v50)
            {
              goto LABEL_147;
            }

LABEL_89:
            v52 = *v52;
            if (!v52)
            {
              goto LABEL_147;
            }

            continue;
          }

          break;
        }

        v58 = *(v52 + 39);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v52[3];
        }

        if (v58 != v54)
        {
          goto LABEL_89;
        }

        v60 = v59 >= 0 ? v52 + 2 : v52[2];
        if (memcmp(v60, v55, v54))
        {
          goto LABEL_89;
        }

LABEL_111:
        v65 = *(v52 + 10);
        v66 = *(v10 + 360);
        v4 = v96;
        v93 = (v10 + 264);
        if (v66 == *(v10 + 364))
        {
          v67 = v66 + 1;
          sub_1958E5C((v10 + 360), v66 + 1);
          *(*(v10 + 368) + 4 * v66) = v65;
        }

        else
        {
          *(*(v10 + 368) + 4 * v66) = v65;
          v67 = v66 + 1;
        }

        *(v10 + 360) = v67;
        v68 = *(v11 + 464);
        v69 = v68 / 100;
        v70 = v68 % 100;
        if (v68 < 0)
        {
          v71 = -50;
        }

        else
        {
          v71 = 50;
        }

        v72 = v69 + ((5243 * (v71 + v70)) >> 19) + ((5243 * (v71 + v70)) >> 31);
        v73 = *(v10 + 264);
        if (v73 != *(v10 + 268))
        {
          *(*(v10 + 272) + 4 * v73) = v72;
          *v93 = v73 + 1;
          v11 += 1120;
          if (v11 == v94)
          {
            break;
          }

          goto LABEL_17;
        }

        sub_1958E5C(v93, v73 + 1);
        *(*(v10 + 272) + 4 * v73) = v72;
        *v93 = v73 + 1;
        v11 += 1120;
      }

      while (v11 != v94);
LABEL_119:
      sub_69D1F4(v89, &__p);
      v74 = __p;
      if (__p != v98)
      {
        v75 = *(a3 + 56);
        v99 = __p + 8;
        *(sub_EB37EC(v4, __p + 8) + 10) = v75;
        v77 = *(a3 + 64);
        if (v77 && (v78 = *(a3 + 56), v78 < *v77))
        {
          *(a3 + 56) = v78 + 1;
          v79 = *&v77[2 * v78 + 2];
        }

        else
        {
          v80 = sub_14BDE5C(*(a3 + 48));
          v79 = sub_19593CC(a3 + 48, v80);
        }

        sub_EC83B0(v74, v79, v76);
      }

      if (__p)
      {
        v81 = v98;
        v9 = __p;
        if (v98 == __p)
        {
LABEL_12:
          v98 = v74;
          operator delete(v9);
          goto LABEL_13;
        }

        while (2)
        {
          if (*(v81 - 9) < 0)
          {
            operator delete(*(v81 - 4));
            v82 = *(v81 - 8);
            if (v82)
            {
              goto LABEL_136;
            }

LABEL_131:
            if ((*(v81 - 65) & 0x80000000) == 0)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v82 = *(v81 - 8);
            if (!v82)
            {
              goto LABEL_131;
            }

LABEL_136:
            v83 = *(v81 - 7);
            if (v83 == v82)
            {
              *(v81 - 7) = v82;
              operator delete(v82);
              if (*(v81 - 65) < 0)
              {
                break;
              }

LABEL_132:
              if ((*(v81 - 89) & 0x80000000) == 0)
              {
LABEL_133:
                if (*(v81 - 137) < 0)
                {
LABEL_145:
                  operator delete(*(v81 - 20));
                }

LABEL_128:
                v81 -= 21;
                if (v81 == v74)
                {
                  v9 = __p;
                  goto LABEL_12;
                }

                continue;
              }

LABEL_144:
              operator delete(*(v81 - 14));
              if (*(v81 - 137) < 0)
              {
                goto LABEL_145;
              }

              goto LABEL_128;
            }

            do
            {
              v84 = *(v83 - 1);
              v83 -= 3;
              if (v84 < 0)
              {
                operator delete(*v83);
              }
            }

            while (v83 != v82);
            v85 = *(v81 - 8);
            *(v81 - 7) = v82;
            operator delete(v85);
            if ((*(v81 - 65) & 0x80000000) == 0)
            {
              goto LABEL_132;
            }
          }

          break;
        }

        operator delete(*(v81 - 11));
        if ((*(v81 - 89) & 0x80000000) == 0)
        {
          goto LABEL_133;
        }

        goto LABEL_144;
      }

LABEL_13:
      v7 = v88 + 1;
    }

    while (v88 + 1 != v86);
  }
}

void sub_EB1F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_EB1F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

std::string *sub_EB1F70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) |= 1u;
  v8 = *(a4 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  sub_194EA1C((a4 + 168), (a1 + 8), v9);
  v10 = sub_ECB304(*a1);
  v12 = *(a4 + 16);
  *(a4 + 16) = v12 | 0x4000;
  *(a4 + 260) = v10;
  if (*(a3 + 38) == 1)
  {
    *(a4 + 16) = v12 | 0x4100;
    v13 = *(a4 + 232);
    if (!v13)
    {
      v14 = *(a4 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_14BDA20(v15);
      *(a4 + 232) = v13;
    }

    sub_ECAC00((a1 + 56), v13, v11);
  }

  if (*(a3 + 36) == 1)
  {
    *(a4 + 16) |= 4u;
    v16 = *(a4 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a4 + 184), (a1 + 32), v17);
  }

  sub_EB34A8(a1, a3, a4, *&v11);
  if (sub_5CC2A4(a1))
  {
    v18 = sub_ECAA80(*(a1 + 756));
    *(a4 + 16) |= 0x2000u;
    *(a4 + 256) = v18;
  }

  sub_EB2FB4(a1 + 120, a4);
  sub_EB3170((a1 + 496), *(a3 + 36), a4);
  if (sub_5CBBA4(a1 + 536))
  {
    sub_EB3390(a1, a3, a4);
  }

  if (sub_5CC010(a1))
  {
    v19 = *(a1 + 712);
    v20 = *(v19 + 40);
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = *(v19 + 23);
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v42 = v20 / 100;
      v43 = v20 % 100;
      if (v20 < 0)
      {
        v44 = -50;
      }

      else
      {
        v44 = 50;
      }

      *(a4 + 16) |= 0x800u;
      *(a4 + 248) = v42 + ((5243 * (v44 + v43)) >> 19) + ((5243 * (v44 + v43)) >> 31);
      v21 = *(v19 + 23);
      if ((v21 & 0x8000000000000000) == 0)
      {
LABEL_20:
        if (!v21)
        {
          goto LABEL_21;
        }

LABEL_54:
        v45 = sub_589204(a2, v19);
        if (!v45)
        {
          sub_49EC("unordered_map::at: key not found");
        }

        v46 = *(v45 + 10);
        *(a4 + 16) |= 0x1000u;
        *(a4 + 252) = v46;
        v22 = *(a1 + 488);
        if (v22 != 0x7FFFFFFF)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

    if (*(v19 + 8))
    {
      goto LABEL_54;
    }
  }

LABEL_21:
  v22 = *(a1 + 488);
  if (v22 != 0x7FFFFFFF)
  {
LABEL_22:
    v23 = v22 / 10;
    v24 = v22 % 10;
    if (v22 < 0)
    {
      v25 = -5;
    }

    else
    {
      v25 = 5;
    }

    *(a4 + 16) |= 0x8000u;
    *(a4 + 264) = v23 + (((103 * (v25 + v24)) >> 15) & 1) + ((103 * (v25 + v24)) >> 10);
  }

LABEL_26:
  v26 = *(a1 + 760);
  v27 = *(a1 + 768);
  while (v26 != v27)
  {
    v30 = *(a4 + 160);
    if (v30 && (v31 = *(a4 + 152), v31 < *v30))
    {
      *(a4 + 152) = v31 + 1;
      v29 = *&v30[2 * v31 + 2];
    }

    else
    {
      v28 = sub_14BDBB8(*(a4 + 144));
      v29 = sub_19593CC(a4 + 144, v28);
    }

    sub_ECA9F0(v26, v29);
    v26 += 168;
  }

  if ((*(a1 + 788) & 1) != 0 && *(a3 + 38) == 1)
  {
    *(a4 + 16) |= 0x200000u;
    *(a4 + 288) = 1;
  }

  if (*(a1 + 760) == *(a1 + 768))
  {
    v33 = *(a4 + 16);
    if (*(a3 + 36) != 1)
    {
      goto LABEL_61;
    }

    goto LABEL_42;
  }

  v32 = *(a1 + 784);
  v33 = *(a4 + 16);
  if (v32 != -1)
  {
    v33 |= 0x10000u;
    *(a4 + 16) = v33;
    *(a4 + 268) = v32;
  }

  if (*(a3 + 36) == 1)
  {
LABEL_42:
    *(a4 + 276) = *(a1 + 576);
    v34 = *(a1 + 789);
    v35 = v33 | 0x440000;
    *(a4 + 16) = v33 | 0x440000;
    *(a4 + 289) = v34;
    v36 = *(a1 + 592);
    if (v36 != 0x7FFFFFFF)
    {
      v37 = v36 / 10;
      v38 = v36 % 10;
      if (v36 < 0)
      {
        v39 = -5;
      }

      else
      {
        v39 = 5;
      }

      v40 = v37 + (((103 * (v39 + v38)) >> 15) & 1) + ((103 * (v39 + v38)) >> 10);
      v35 = v33 | 0x540000;
      *(a4 + 16) = v33 | 0x540000;
      *(a4 + 284) = v40;
    }

    v41 = *(a1 + 588);
    if (v41 == 0x7FFFFFFF)
    {
      v33 = v35;
    }

    else
    {
      v47 = v41 / 10;
      v48 = v41 % 10;
      if (v41 < 0)
      {
        v49 = -5;
      }

      else
      {
        v49 = 5;
      }

      v50 = v47 + (((103 * (v49 + v48)) >> 15) & 1) + ((103 * (v49 + v48)) >> 10);
      v33 = v35 | 0x80000;
      *(a4 + 280) = v50;
    }
  }

LABEL_61:
  *(a4 + 16) = v33 | 2;
  v51 = *(a4 + 8);
  v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
  if (v51)
  {
    v52 = *v52;
  }

  return sub_194EA1C((a4 + 176), (a1 + 792), v52);
}

void *sub_EB242C(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_58BBC(a1);
  if (*result != result[1])
  {
    sub_EFC5B8(v6, a3, a2, 0);
  }

  return result;
}

void sub_EB2750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    sub_EB35C8(&STACK[0x260]);
    sub_EB3644(&STACK[0x9E8]);
    _Unwind_Resume(a1);
  }

  sub_EB35C8(&STACK[0x260]);
  sub_EB3644(&STACK[0x9E8]);
  _Unwind_Resume(a1);
}

void sub_EB2800(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 40);
  *(a2 + 40) = v5 | 8;
  v6 = a1[254];
  v7 = v6 / 10;
  v8 = v6 % 10;
  if (v6 < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  *(a2 + 40) = v5 | 0x18;
  *(a2 + 72) = v4;
  *(a2 + 76) = v7 + (((103 * (v9 + v8)) >> 15) & 1) + ((103 * (v9 + v8)) >> 10);
  v10 = sub_4566AC((a1 + 552));
  if (v10 != 0x7FFFFFFF && HIDWORD(v10) != 0x7FFFFFFF && v10 <= SHIDWORD(v10))
  {
    *(a2 + 40) |= 4u;
    v11 = *(a2 + 64);
    if (!v11)
    {
      v12 = *(a2 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_14BC730(v13);
      *(a2 + 64) = v11;
    }

    sub_ECB220(a1 + 552, v11);
  }

  if (*(a1 + 303) != *(a1 + 304))
  {
    *(a2 + 40) |= 1u;
    v14 = *(a2 + 48);
    if (!v14)
    {
      v15 = *(a2 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BA684(v16);
      v14 = v17;
      *(a2 + 48) = v17;
    }

    v18 = *(a1 + 304);
    v19 = *(a1 + 303);
    if (v18 != v19)
    {
      v20 = *(a1 + 304);
      do
      {
        while (1)
        {
          v21 = *(v20 - 16);
          v20 -= 16;
          v22 = v21 / 100;
          v23 = v21 % 100;
          v24 = v21 < 0 ? -50 : 50;
          v25 = v22 + ((5243 * (v24 + v23)) >> 19) + ((5243 * (v24 + v23)) >> 31);
          v26 = *(v14 + 16);
          if (v26 == *(v14 + 20))
          {
            v27 = v26 + 1;
            sub_1958E5C((v14 + 16), v26 + 1);
            *(*(v14 + 24) + 4 * v26) = v25;
          }

          else
          {
            *(*(v14 + 24) + 4 * v26) = v25;
            v27 = v26 + 1;
          }

          *(v14 + 16) = v27;
          v28 = *(v18 - 8);
          v29 = v28 / 10;
          v30 = v28 % 10;
          v31 = v28 < 0 ? -5 : 5;
          v32 = v29 + (((103 * (v31 + v30)) >> 15) & 1) + ((103 * (v31 + v30)) >> 10);
          v33 = *(v14 + 40);
          if (v33 == *(v14 + 44))
          {
            break;
          }

          *(*(v14 + 48) + 4 * v33) = v32;
          *(v14 + 40) = v33 + 1;
          v18 = v20;
          if (v20 == v19)
          {
            return;
          }
        }

        sub_1958E5C((v14 + 40), v33 + 1);
        *(*(v14 + 48) + 4 * v33) = v32;
        *(v14 + 40) = v33 + 1;
        v18 = v20;
      }

      while (v20 != v19);
    }
  }
}

void sub_EB2AA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_3B1D8C(a2);
  v8 = sub_3EB950(a1);
  sub_2AD1B4(v7, *(v8 + 136), *(v8 + 144), v66);
  *(a4 + 40) |= 8u;
  v9 = *(a4 + 480);
  if (!v9)
  {
    v10 = *(a4 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_14BC9E8(v11);
    v9 = v12;
    *(a4 + 480) = v12;
  }

  sub_EC92BC(v66, v8, a1 + 10344, v9);
  v13 = sub_4D1DB0(a1);
  sub_2AD1B4(v7, *(v13 + 136), *(v13 + 144), v57);
  *(a4 + 40) |= 0x10u;
  v14 = *(a4 + 488);
  if (!v14)
  {
    v15 = *(a4 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_14BC9E8(v16);
    v14 = v17;
    *(a4 + 488) = v17;
  }

  sub_EC92BC(v57, v13, a1 + 11088, v14);
  if (*(a3 + 167) == 1)
  {
    if (sub_4D1F6C((a1 + 10816)))
    {
      goto LABEL_30;
    }

    *(a4 + 40) |= 8u;
    v19 = *(a4 + 480);
    if (v19)
    {
      *(v19 + 16) |= 8u;
      v20 = *(v19 + 48);
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = *(a4 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v18 = sub_14BC9E8(v22);
      v19 = v23;
      *(a4 + 480) = v23;
      *(v23 + 16) |= 8u;
      v20 = *(v23 + 48);
      if (v20)
      {
LABEL_20:
        sub_586C94(a1 + 10976, v20, *&v18);
        *(a4 + 40) |= 8u;
        v26 = *(a4 + 480);
        if (v26)
        {
          *(v26 + 16) |= 0x100u;
          v27 = *(v26 + 88);
          if (v27)
          {
LABEL_29:
            sub_64D110((a1 + 10816), v27);
LABEL_30:
            if (sub_4D1F6C((a1 + 11560)))
            {
              goto LABEL_50;
            }

            *(a4 + 40) |= 0x10u;
            v35 = *(a4 + 488);
            if (v35)
            {
              *(v35 + 16) |= 8u;
              v36 = *(v35 + 48);
              if (v36)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v37 = *(a4 + 8);
              v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
              if (v37)
              {
                v38 = *v38;
              }

              v34 = sub_14BC9E8(v38);
              v35 = v39;
              *(a4 + 488) = v39;
              *(v39 + 16) |= 8u;
              v36 = *(v39 + 48);
              if (v36)
              {
LABEL_40:
                sub_586C94(a1 + 11720, v36, *&v34);
                *(a4 + 40) |= 0x10u;
                v42 = *(a4 + 488);
                if (v42)
                {
                  *(v42 + 16) |= 0x100u;
                  v43 = *(v42 + 88);
                  if (v43)
                  {
LABEL_49:
                    sub_64D110((a1 + 11560), v43);
                    goto LABEL_50;
                  }
                }

                else
                {
                  v44 = *(a4 + 8);
                  v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v44)
                  {
                    v45 = *v45;
                  }

                  sub_14BC9E8(v45);
                  v42 = v46;
                  *(a4 + 488) = v46;
                  *(v46 + 16) |= 0x100u;
                  v43 = *(v46 + 88);
                  if (v43)
                  {
                    goto LABEL_49;
                  }
                }

                v47 = *(v42 + 8);
                v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
                if (v47)
                {
                  v48 = *v48;
                }

                sub_14BAE64(v48);
                v43 = v49;
                *(v42 + 88) = v49;
                goto LABEL_49;
              }
            }

            v40 = *(v35 + 8);
            v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
            if (v40)
            {
              v41 = *v41;
            }

            v36 = sub_14BF484(v41);
            *(v35 + 48) = v36;
            goto LABEL_40;
          }
        }

        else
        {
          v28 = *(a4 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_14BC9E8(v29);
          v26 = v30;
          *(a4 + 480) = v30;
          *(v30 + 16) |= 0x100u;
          v27 = *(v30 + 88);
          if (v27)
          {
            goto LABEL_29;
          }
        }

        v31 = *(v26 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_14BAE64(v32);
        v27 = v33;
        *(v26 + 88) = v33;
        goto LABEL_29;
      }
    }

    v24 = *(v19 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v20 = sub_14BF484(v25);
    *(v19 + 48) = v20;
    goto LABEL_20;
  }

LABEL_50:
  sub_99F0C(&v65);
  v50 = __p;
  if (__p)
  {
    v51 = v64;
    v52 = __p;
    if (v64 != __p)
    {
      do
      {
        v53 = *(v51 - 1);
        v51 -= 3;
        if (v53 < 0)
        {
          operator delete(*v51);
        }
      }

      while (v51 != v50);
      v52 = __p;
    }

    v64 = v50;
    operator delete(v52);
  }

  if (v62 < 0)
  {
    operator delete(v61);
    if ((v60 & 0x80000000) == 0)
    {
LABEL_60:
      if ((v58 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_68;
    }
  }

  else if ((v60 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

  operator delete(v59);
  if ((v58 & 0x80000000) == 0)
  {
LABEL_61:
    sub_99F0C(v74);
    v54 = v72;
    if (!v72)
    {
      goto LABEL_62;
    }

LABEL_69:
    v55 = v73;
    if (v73 == v54)
    {
      v73 = v54;
      operator delete(v54);
      if (v71 < 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      do
      {
        v56 = *(v55 - 1);
        v55 -= 3;
        if (v56 < 0)
        {
          operator delete(*v55);
        }
      }

      while (v55 != v54);
      v73 = v54;
      operator delete(v72);
      if (v71 < 0)
      {
        goto LABEL_76;
      }
    }

LABEL_63:
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_77;
  }

LABEL_68:
  operator delete(v57[0]);
  sub_99F0C(v74);
  v54 = v72;
  if (v72)
  {
    goto LABEL_69;
  }

LABEL_62:
  if ((v71 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_76:
  operator delete(v70);
  if ((v69 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v67 & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(v66[0]);
    return;
  }

LABEL_77:
  operator delete(v68);
  if (v67 < 0)
  {
    goto LABEL_78;
  }
}

void sub_EB2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_2AE47C(&a9);
  sub_2AE47C(&a55);
  _Unwind_Resume(a1);
}

void sub_EB2FB4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  while (v4 != v5)
  {
    v8 = *(a2 + 112);
    if (v8 && (v9 = *(a2 + 104), v9 < *v8))
    {
      *(a2 + 104) = v9 + 1;
      v7 = *&v8[2 * v9 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 96));
      v7 = sub_19593CC(a2 + 96, v6);
    }

    sub_64D110(v4, v7);
    v4 += 20;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  while (v10 != v11)
  {
    v14 = *(a2 + 136);
    if (v14 && (v15 = *(a2 + 128), v15 < *v14))
    {
      *(a2 + 128) = v15 + 1;
      v13 = *&v14[2 * v15 + 2];
    }

    else
    {
      sub_14BAE64(*(a2 + 120));
      v13 = sub_19593CC(a2 + 120, v12);
    }

    sub_64D110(v10, v13);
    v10 += 20;
  }

  if (sub_5CBAEC(a1))
  {
    *(a2 + 16) |= 8u;
    v16 = *(a2 + 192);
    if (!v16)
    {
      v17 = *(a2 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_14BAE64(v18);
      v16 = v19;
      *(a2 + 192) = v19;
    }

    sub_64D110((a1 + 48), v16);
  }

  if (sub_5CBACC(a1))
  {
    *(a2 + 16) |= 0x10u;
    v20 = *(a2 + 200);
    if (v20)
    {
      v21 = (a1 + 208);
    }

    else
    {
      v22 = *(a2 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_14BAE64(v23);
      v20 = v24;
      *(a2 + 200) = v24;
      v21 = (a1 + 208);
    }

    sub_64D110(v21, v20);
  }
}

BOOL sub_EB3170(void *a1, int a2, uint64_t a3)
{
  v4 = a1;
  if (!a2)
  {
    if (sub_5CBB30(a1))
    {
      v7 = *v4 / 100;
      v8 = *v4 % 100;
      if (*v4 < 0)
      {
        v9 = -50;
      }

      else
      {
        v9 = 50;
      }

      *(a3 + 16) |= 0x200u;
      *(a3 + 240) = v7 + ((5243 * (v9 + v8)) >> 19) + ((5243 * (v9 + v8)) >> 31);
      if (!sub_5CBB44(v4))
      {
LABEL_8:
        result = sub_5CBB58(v4);
        if (!result)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (!sub_5CBB44(v4))
    {
      goto LABEL_8;
    }

    v10 = *(v4 + 16);
    v11 = v10 / 100;
    v12 = v10 % 100;
    if (v10 < 0)
    {
      v13 = -50;
    }

    else
    {
      v13 = 50;
    }

    *(a3 + 16) |= 0x400u;
    *(a3 + 244) = v11 + ((5243 * (v13 + v12)) >> 19) + ((5243 * (v13 + v12)) >> 31);
    result = sub_5CBB58(v4);
    if (!result)
    {
      return result;
    }

LABEL_18:
    v14 = *(v4 + 32);
    v15 = v14 / 10;
    v16 = v14 % 10;
    if (v14 < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    *(a3 + 16) |= 0x800000u;
    *(a3 + 292) = v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10);
    return result;
  }

  *(a3 + 16) |= 0x20u;
  v5 = *(a3 + 208);
  if (v5)
  {
  }

  else
  {
    v18 = *(a3 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v5 = sub_14BDB38(v19);
    *(a3 + 208) = v5;
    a1 = v4;
  }

  return sub_ECAA94(a1, v5);
}

uint64_t sub_EB3390(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*(a2 + 36) == 1)
  {
    result = sub_5CBB6C(result + 536);
    if ((result & 1) == 0)
    {
      *(a3 + 16) |= 0x40u;
      v5 = *(a3 + 216);
      if (v5)
      {
        v6 = v4 + 536;
      }

      else
      {
        v7 = *(a3 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v5 = sub_14BDB38(v8);
        *(a3 + 216) = v5;
        v6 = v4 + 536;
      }

      return sub_ECAA94(v6, v5);
    }
  }

  else if (*(a2 + 37))
  {
    if (*(result + 760) != *(result + 768) || (v9 = *(result + 528)) != 0 && v9 != 0x7FFFFFFF)
    {
      result = sub_5CBFD0(result);
      *(a3 + 16) |= 0x4000000u;
      *(a3 + 298) = result;
    }
  }

  else
  {
    *(a3 + 16) |= 0x4000000u;
    *(a3 + 298) = 1;
  }

  return result;
}

void sub_EB34A8(uint64_t a1, uint64_t a2, uint64_t a3, uint8x8_t a4)
{
  if (*(a2 + 36) != 1)
  {
    return;
  }

  v4 = (a1 + 600);
  v5 = *(a1 + 632);
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if (*v4 == -1)
      {
        return;
      }
    }

    else if (v5 != 2 || *(a1 + 604) == -1 && *(a1 + 600) == -1 && *(a1 + 608) == *(a1 + 616))
    {
      return;
    }

    goto LABEL_14;
  }

  if (v5 == 3 || v5 == 4)
  {
    v6 = *(a1 + 623);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a1 + 608);
    }

    if (v6)
    {
LABEL_14:
      *(a3 + 16) |= 0x80u;
      v7 = *(a3 + 224);
      if (v7)
      {
        v8 = a1 + 600;
      }

      else
      {
        v10 = *(a3 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v7 = sub_14BF484(v11);
        *(a3 + 224) = v7;
        v8 = v4;
      }

      sub_586C94(v8, v7, a4);
    }
  }
}

void ***sub_EB35C8(uint64_t a1)
{
  sub_5C0F34(a1 + 1112);
  v2 = *(a1 + 1088);
  if (v2)
  {
    for (i = *(a1 + 1096); i != v2; sub_5EBD80(a1 + 1088, i))
    {
      i -= 1120;
    }

    *(a1 + 1096) = v2;
    operator delete(*(a1 + 1088));
  }

  return sub_559E70(a1);
}

void *sub_EB3644(void *a1)
{
  sub_4773BC((a1 + 148));
  v2 = a1 + 13;
  a1[13] = off_266AC30;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[13] = &off_266AB88;
  v11 = a1[40];
  if (v11)
  {
    a1[41] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_EB3760(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_14BD4AC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_EB37DC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_EB37EC(void *a1, uint64_t a2)
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

void sub_EB3BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EB3C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EB3C1C(void *a1, uint64_t a2)
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
        if (v20 == v8)
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
      if (v16 == v8)
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

void sub_EB3DD4(uint64_t a1@<X8>)
{
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
}

void sub_EB3DE8()
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
  xmmword_27BB008 = 0u;
  unk_27BB018 = 0u;
  dword_27BB028 = 1065353216;
  sub_3A9A34(&xmmword_27BB008, v0);
  sub_3A9A34(&xmmword_27BB008, v3);
  sub_3A9A34(&xmmword_27BB008, __p);
  sub_3A9A34(&xmmword_27BB008, v9);
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
    qword_27BAFE0 = 0;
    qword_27BAFE8 = 0;
    qword_27BAFD8 = 0;
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

void sub_EB4030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BAFF0)
  {
    qword_27BAFF8 = qword_27BAFF0;
    operator delete(qword_27BAFF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB40DC(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  sub_14D4048(a6, 0, 0);
  *(a6 + 40) |= 0x20u;
  *(a6 + 160) = 0;
  v11 = *a2;
  v10 = a2[1];
  v58 = a2;
  if (*a2 == v10)
  {
LABEL_9:
    *(a6 + 160) = 20;
    return;
  }

  v12 = *a2;
  while (*(v12 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v12 + 36) == 0x7FFFFFFF)
  {
    v12 += 376;
    if (v12 == v10)
    {
      goto LABEL_9;
    }
  }

  v14 = 0x51B3BEA3677D46CFLL * ((v10 - v11) >> 3);
  v15 = (v11 + 36);
  v16 = (*a3 + 36);
  do
  {
    if (*(v15 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v15 != 0x7FFFFFFF && *(v16 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v16 != 0x7FFFFFFF)
    {
      v57 = 1;
      goto LABEL_18;
    }

    v15 += 94;
    v16 += 94;
    --v14;
  }

  while (v14);
  v57 = 0;
LABEL_18:
  v17 = sub_EC7E7C(3u);
  *(a6 + 40) |= 4u;
  v18 = *(a6 + 136);
  if (v18)
  {
    v19 = *(v18 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *(a6 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_14D5D9C(v21);
    v18 = v22;
    *(a6 + 136) = v22;
    v19 = *(v22 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  v23 = *(v18 + 32);
  if (v23 < *v19)
  {
    *(v18 + 32) = v23 + 1;
    v24 = *&v19[2 * v23 + 2];
    goto LABEL_27;
  }

LABEL_26:
  v25 = sub_14D5CF8(*(v18 + 24));
  v24 = sub_19593CC(v18 + 24, v25);
LABEL_27:
  v24[4] |= 0xCu;
  v24[16] = v17;
  v24[17] = 20;
  v26 = v57;
  if (*(a4 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  if (v26 == 1 && *(a4 + 36) != 0x7FFFFFFF)
  {
    sub_EB45F4(a1, a4, a5, v24);
    v24[4] |= 8u;
    v24[17] = 0;
  }

  v54 = a3;
  v27 = a2[1] - *a2;
  if (v27)
  {
    v28 = 0;
    for (i = 0x51B3BEA3677D46CFLL * (v27 >> 3); i; --i)
    {
      v30 = *(a6 + 64);
      if (v30 && (v31 = *(a6 + 56), v31 < *v30))
      {
        *(a6 + 56) = v31 + 1;
        v32 = *&v30[2 * v31 + 2];
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_14D5D9C(*(a6 + 48));
        v32 = sub_19593CC(a6 + 48, v34);
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      v35 = *(a6 + 104);
      if (v35 < *v33)
      {
        *(a6 + 104) = v35 + 1;
        v36 = *&v33[2 * v35 + 2];
        v37 = *(v32 + 40);
        if (!v37)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

LABEL_44:
      sub_14D5D9C(*(a6 + 96));
      v36 = sub_19593CC(a6 + 96, v38);
      v37 = *(v32 + 40);
      if (!v37)
      {
        goto LABEL_47;
      }

LABEL_45:
      v39 = *(v32 + 32);
      if (v39 >= *v37)
      {
LABEL_47:
        v41 = sub_14D5CF8(*(v32 + 24));
        v40 = sub_19593CC(v32 + 24, v41);
        goto LABEL_48;
      }

      *(v32 + 32) = v39 + 1;
      v40 = *&v37[2 * v39 + 2];
LABEL_48:
      v43 = v40 + 4;
      v42 = v40[4];
      v40[16] = v17;
      v40[4] = v42 | 0xC;
      v40[17] = 20;
      v44 = v40 + 17;
      v45 = *(v36 + 40);
      if (v45 && (v46 = *(v36 + 32), v46 < *v45))
      {
        *(v36 + 32) = v46 + 1;
        v47 = *&v45[2 * v46 + 2];
      }

      else
      {
        v48 = sub_14D5CF8(*(v36 + 24));
        v47 = sub_19593CC(v36 + 24, v48);
      }

      v49 = v47[4];
      v47[16] = v17;
      v47[4] = v49 | 0xC;
      v47[17] = 20;
      v50 = *v58;
      v51 = *v58 + v28;
      v52 = *(v51 + 24);
      if (v57)
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        if (*(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        v53 = *v54 + v28;
        if (*(v53 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v53 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB45F4(a1, v51, a5, v40);
        *v43 |= 8u;
        *v44 = 0;
        sub_EB45F4(a1, *v54 + v28, a5, v47);
        v43 = v47 + 4;
        v44 = v47 + 17;
      }

      else
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL || *(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB45F4(a1, v51, a5, v40);
      }

      *v43 |= 8u;
      *v44 = 0;
LABEL_35:
      v28 += 376;
    }
  }
}

void sub_EB45F4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  sub_EB64E4(a1, (a2 + 32), a3, a4);
  if (a3[5] == 1)
  {
    v7 = *(a2 + 24);
    v8 = v7 / 100;
    v9 = v7 % 100;
    if (v7 < 0)
    {
      v10 = -50;
    }

    else
    {
      v10 = 50;
    }

    *(a4 + 16) |= 0x80u;
    *(a4 + 88) = v8 + ((5243 * (v10 + v9)) >> 19) + ((5243 * (v10 + v9)) >> 31);
  }

  if (a3[6] == 1)
  {
    v11 = *(a2 + 328);
    v12 = *(a2 + 336);
    while (v11 != v12)
    {
      v15 = *(a4 + 40);
      if (v15 && (v16 = *(a4 + 32), v16 < *v15))
      {
        *(a4 + 32) = v16 + 1;
        v14 = *&v15[2 * v16 + 2];
      }

      else
      {
        sub_14BAE64(*(a4 + 24));
        v14 = sub_19593CC(a4 + 24, v13);
      }

      sub_64D110(v11, v14);
      v11 += 20;
    }
  }

  if (a3[7] == 1)
  {
    v17 = *a2;
    if (*a2 != *(a2 + 8))
    {
      *(a4 + 16) |= 1u;
      v18 = *(a4 + 48);
      if (!v18)
      {
        v19 = *(a4 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_14BEF24(v20);
        *(a4 + 48) = v18;
        v17 = *a2;
      }

      *(v18 + 16) |= 1u;
      v21 = *(v18 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_194EA1C((v18 + 24), v17, v22);
      sub_74B1D0(v17, __p);
      *(v18 + 16) |= 2u;
      v23 = *(v18 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA30((v18 + 32), __p, v24);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      *(v18 + 16) |= 4u;
      v25 = *(v18 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_194EA1C((v18 + 40), v17 + 8, v26);
    }
  }
}

void sub_EB4810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB482C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  sub_14D4048(a6, 0, 0);
  *(a6 + 40) |= 0x20u;
  *(a6 + 160) = 0;
  v11 = *a2;
  v10 = a2[1];
  v58 = a2;
  if (*a2 == v10)
  {
LABEL_9:
    *(a6 + 160) = 20;
    return;
  }

  v12 = *a2;
  while (*(v12 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v12 + 36) == 0x7FFFFFFF)
  {
    v12 += 376;
    if (v12 == v10)
    {
      goto LABEL_9;
    }
  }

  v14 = 0x51B3BEA3677D46CFLL * ((v10 - v11) >> 3);
  v15 = (v11 + 36);
  v16 = (*a3 + 36);
  do
  {
    if (*(v15 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v15 != 0x7FFFFFFF && *(v16 - 3) != 0x7FFFFFFFFFFFFFFFLL && *v16 != 0x7FFFFFFF)
    {
      v57 = 1;
      goto LABEL_18;
    }

    v15 += 94;
    v16 += 94;
    --v14;
  }

  while (v14);
  v57 = 0;
LABEL_18:
  v17 = sub_EC7E7C(0);
  *(a6 + 40) |= 4u;
  v18 = *(a6 + 136);
  if (v18)
  {
    v19 = *(v18 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *(a6 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_14D5D9C(v21);
    v18 = v22;
    *(a6 + 136) = v22;
    v19 = *(v22 + 40);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  v23 = *(v18 + 32);
  if (v23 < *v19)
  {
    *(v18 + 32) = v23 + 1;
    v24 = *&v19[2 * v23 + 2];
    goto LABEL_27;
  }

LABEL_26:
  v25 = sub_14D5CF8(*(v18 + 24));
  v24 = sub_19593CC(v18 + 24, v25);
LABEL_27:
  v24[4] |= 0xCu;
  v24[16] = v17;
  v24[17] = 20;
  v26 = v57;
  if (*(a4 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  if (v26 == 1 && *(a4 + 36) != 0x7FFFFFFF)
  {
    sub_EB4D44(a1, a4, a5, v24);
    v24[4] |= 8u;
    v24[17] = 0;
  }

  v54 = a3;
  v27 = a2[1] - *a2;
  if (v27)
  {
    v28 = 0;
    for (i = 0x51B3BEA3677D46CFLL * (v27 >> 3); i; --i)
    {
      v30 = *(a6 + 64);
      if (v30 && (v31 = *(a6 + 56), v31 < *v30))
      {
        *(a6 + 56) = v31 + 1;
        v32 = *&v30[2 * v31 + 2];
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_14D5D9C(*(a6 + 48));
        v32 = sub_19593CC(a6 + 48, v34);
        v33 = *(a6 + 112);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      v35 = *(a6 + 104);
      if (v35 < *v33)
      {
        *(a6 + 104) = v35 + 1;
        v36 = *&v33[2 * v35 + 2];
        v37 = *(v32 + 40);
        if (!v37)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

LABEL_44:
      sub_14D5D9C(*(a6 + 96));
      v36 = sub_19593CC(a6 + 96, v38);
      v37 = *(v32 + 40);
      if (!v37)
      {
        goto LABEL_47;
      }

LABEL_45:
      v39 = *(v32 + 32);
      if (v39 >= *v37)
      {
LABEL_47:
        v41 = sub_14D5CF8(*(v32 + 24));
        v40 = sub_19593CC(v32 + 24, v41);
        goto LABEL_48;
      }

      *(v32 + 32) = v39 + 1;
      v40 = *&v37[2 * v39 + 2];
LABEL_48:
      v43 = v40 + 4;
      v42 = v40[4];
      v40[16] = v17;
      v40[4] = v42 | 0xC;
      v40[17] = 20;
      v44 = v40 + 17;
      v45 = *(v36 + 40);
      if (v45 && (v46 = *(v36 + 32), v46 < *v45))
      {
        *(v36 + 32) = v46 + 1;
        v47 = *&v45[2 * v46 + 2];
      }

      else
      {
        v48 = sub_14D5CF8(*(v36 + 24));
        v47 = sub_19593CC(v36 + 24, v48);
      }

      v49 = v47[4];
      v47[16] = v17;
      v47[4] = v49 | 0xC;
      v47[17] = 20;
      v50 = *v58;
      v51 = *v58 + v28;
      v52 = *(v51 + 24);
      if (v57)
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        if (*(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        v53 = *v54 + v28;
        if (*(v53 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v53 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB4D44(a1, v51, a5, v40);
        *v43 |= 8u;
        *v44 = 0;
        sub_EB4D44(a1, *v54 + v28, a5, v47);
        v43 = v47 + 4;
        v44 = v47 + 17;
      }

      else
      {
        if (v52 == 0x7FFFFFFFFFFFFFFFLL || *(v50 + v28 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        sub_EB4D44(a1, v51, a5, v40);
      }

      *v43 |= 8u;
      *v44 = 0;
LABEL_35:
      v28 += 376;
    }
  }
}

void sub_EB4D44(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  sub_EB64E4(a1, (a2 + 32), a3, a4);
  if (a3[5] == 1)
  {
    v7 = *(a2 + 24);
    v8 = v7 / 100;
    v9 = v7 % 100;
    if (v7 < 0)
    {
      v10 = -50;
    }

    else
    {
      v10 = 50;
    }

    *(a4 + 16) |= 0x80u;
    *(a4 + 88) = v8 + ((5243 * (v10 + v9)) >> 19) + ((5243 * (v10 + v9)) >> 31);
  }

  if (a3[6] == 1)
  {
    v11 = *(a2 + 328);
    v12 = *(a2 + 336);
    while (v11 != v12)
    {
      v15 = *(a4 + 40);
      if (v15 && (v16 = *(a4 + 32), v16 < *v15))
      {
        *(a4 + 32) = v16 + 1;
        v14 = *&v15[2 * v16 + 2];
      }

      else
      {
        sub_14BAE64(*(a4 + 24));
        v14 = sub_19593CC(a4 + 24, v13);
      }

      sub_64D110(v11, v14);
      v11 += 20;
    }
  }

  if (a3[7] == 1)
  {
    v17 = *a2;
    if (*a2 != *(a2 + 8))
    {
      *(a4 + 16) |= 1u;
      v18 = *(a4 + 48);
      if (!v18)
      {
        v19 = *(a4 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_14BEF24(v20);
        *(a4 + 48) = v18;
        v17 = *a2;
      }

      *(v18 + 16) |= 1u;
      v21 = *(v18 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_194EA1C((v18 + 24), v17, v22);
      sub_74B1D0(v17, __p);
      *(v18 + 16) |= 2u;
      v23 = *(v18 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA30((v18 + 32), __p, v24);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      *(v18 + 16) |= 4u;
      v25 = *(v18 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_194EA1C((v18 + 40), v17 + 8, v26);
    }
  }
}

void sub_EB4F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB4F7C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  sub_14D4048(a7, 0, 0);
  v14 = 0x51B3BEA3677D46CFLL * ((a2[1] - *a2) >> 3);
  v15 = 0x51B3BEA3677D46CFLL * ((a4[1] - *a4) >> 3);
  if (v14 <= 0x51B3BEA3677D46CFLL * ((a3[1] - *a3) >> 3))
  {
    v14 = 0x51B3BEA3677D46CFLL * ((a3[1] - *a3) >> 3);
  }

  if (v14 <= v15)
  {
    v16 = 0x51B3BEA3677D46CFLL * ((a4[1] - *a4) >> 3);
  }

  else
  {
    v16 = v14;
  }

  if (v14 < v15)
  {
    v14 = 0x51B3BEA3677D46CFLL * ((a4[1] - *a4) >> 3);
  }

  if (v16 >= 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4);
  }

  if (!v17)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_62:
      *(a7 + 40) |= 0x20u;
      *(a7 + 160) = 20;
      return;
    }

    sub_19594F8(&v51);
    sub_4A5C(&v51, "ETARequest did not contain any destinations", 43);
    if ((v61 & 0x10) != 0)
    {
      v47 = v60;
      if (v60 < v57)
      {
        v60 = v57;
        v47 = v57;
      }

      v48 = v56;
      v18 = v47 - v56;
      if (v47 - v56 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((v61 & 8) == 0)
      {
        v18 = 0;
        v50 = 0;
LABEL_57:
        *(&__p + v18) = 0;
        sub_7E854(&__p, 1u);
        if (v50 < 0)
        {
          operator delete(__p);
        }

        if (v59 < 0)
        {
          operator delete(v58);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_62;
      }

      v48 = v54;
      v18 = v55 - v54;
      if ((v55 - v54) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_65:
        sub_3244();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v50 = v18;
    if (v18)
    {
      memmove(&__p, v48, v18);
    }

    goto LABEL_57;
  }

  do
  {
    v19 = *(a7 + 64);
    if (v19 && (v20 = *(a7 + 56), v20 < *v19))
    {
      *(a7 + 56) = v20 + 1;
    }

    else
    {
      sub_14D5D9C(*(a7 + 48));
      sub_19593CC(a7 + 48, v21);
    }

    --v17;
  }

  while (v17);
  sub_EB5504(a1, a2, a6, a7);
  sub_EB5678(a1, a3, a6, a7);
  sub_EB5B34(a1, a4, a6, a7);
  sub_EB5CA8(v22, a5, a6, a7);
  sub_EB5F78(v24, v23, a7);
  *(a7 + 40) |= 0x20u;
  *(a7 + 160) = 20;
  v25 = *(a7 + 64);
  if (v25)
  {
    v26 = v25 + 8;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(a7 + 56);
  if (v27)
  {
    v28 = v26 + 8 * v27;
    v29 = v26;
    while (1)
    {
      v30 = *(*v29 + 32);
      v31 = *(*v29 + 40);
      v32 = v31 ? v31 + 8 : 0;
      if (v30)
      {
        break;
      }

LABEL_26:
      v29 += 8;
      if (v29 == v28)
      {
        goto LABEL_36;
      }
    }

    v33 = 8 * v30;
    while (*(*v32 + 68))
    {
      v32 += 8;
      v33 -= 8;
      if (!v33)
      {
        goto LABEL_26;
      }
    }

    *(a7 + 160) = 0;
LABEL_36:
    if (a6[8])
    {
      do
      {
        v34 = *v26;
        v35 = *(*v26 + 40);
        v38 = *(v35 + 8);
        v37 = (v35 + 8);
        v36 = v38;
        v39 = v38[17];
        v40 = *(*v26 + 16);
        v41 = v40 | 2;
        v34[4] = v40 | 2;
        v34[20] = v39;
        v42 = v38[4];
        if ((v42 & 0x10) != 0)
        {
          v44 = v36[18];
          v41 = v40 | 6;
          v34[4] = v40 | 6;
          v34[21] = v44;
          v42 = v36[4];
          if ((v42 & 0x20) == 0)
          {
LABEL_41:
            if ((v42 & 0x80) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_46;
          }
        }

        else if ((v42 & 0x20) == 0)
        {
          goto LABEL_41;
        }

        v45 = v36[19];
        v41 |= 8u;
        v34[4] = v41;
        v34[22] = v45;
        if ((v36[4] & 0x80) == 0)
        {
LABEL_42:
          v43 = v34[8];
          if (v43 >= 1)
          {
            goto LABEL_47;
          }

          goto LABEL_38;
        }

LABEL_46:
        v46 = v36[22];
        v34[4] = v41 | 0x10;
        v34[23] = v46;
        v43 = v34[8];
        if (v43 >= 1)
        {
          do
          {
LABEL_47:
            sub_14D141C(*v37++);
            --v43;
          }

          while (v43);
          v34[8] = 0;
        }

LABEL_38:
        v26 += 8;
      }

      while (v26 != v28);
    }
  }
}

void sub_EB5468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_14D4598(v15);
  _Unwind_Resume(a1);
}

void sub_EB5504(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 1736263375 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = v5 & 0x7FFFFFFF;
      v11 = 8;
      do
      {
        while (1)
        {
          v12 = *a2;
          v13 = *(*(a4 + 64) + v11);
          v14 = *(v13 + 40);
          if (v14 && (v15 = *(v13 + 32), v15 < *v14))
          {
            *(v13 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14D5CF8(*(v13 + 24));
            v16 = sub_19593CC(v13 + 24, v17);
          }

          v18 = v16[4];
          v16[4] = v18 | 4;
          v16[16] = 3;
          if (*(v12 + v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && *(v12 + v9 + 36) != 0x7FFFFFFF)
          {
            break;
          }

          v16[4] = v18 | 0xC;
          v16[17] = 20;
          v11 += 8;
          v9 += 376;
          if (!--v10)
          {
            return;
          }
        }

        sub_EB45F4(a1, v12 + v9, a3, v16);
        v16[4] |= 8u;
        v16[17] = 0;
        v11 += 8;
        v9 += 376;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_EB5678(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 1736263375 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      v8 = 0;
      v39 = v5 & 0x7FFFFFFF;
      while (1)
      {
        v9 = *a2;
        v10 = *(*(a4 + 64) + 8 * v8 + 8);
        v11 = *(v10 + 40);
        if (v11 && (v12 = *(v10 + 32), v12 < *v11))
        {
          *(v10 + 32) = v12 + 1;
          v13 = *&v11[2 * v12 + 2];
        }

        else
        {
          v14 = sub_14D5CF8(*(v10 + 24));
          v13 = sub_19593CC(v10 + 24, v14);
        }

        v15 = v9 + 376 * v8;
        v16 = *(v13 + 16);
        *(v13 + 16) = v16 | 4;
        *(v13 + 64) = 0;
        if (*(v15 + 24) == 0x7FFFFFFFFFFFFFFFLL || *(v15 + 36) == 0x7FFFFFFF)
        {
          *(v13 + 16) = v16 | 0xC;
          *(v13 + 68) = 20;
          goto LABEL_5;
        }

        sub_EB4D44(a1, v15, a3, v13);
        if (a3[7] == 1)
        {
          break;
        }

LABEL_21:
        *(v13 + 16) |= 8u;
        *(v13 + 68) = 0;
        v23 = *(v15 + 352);
        v22 = *(v15 + 360);
        if (v23 != v22)
        {
          while (1)
          {
            sub_52B7D8(v40, v23);
            v25 = *(*(a4 + 64) + 8 * v8 + 8);
            v26 = *(v25 + 64);
            if (v26 && (v27 = *(v25 + 56), v27 < *v26))
            {
              *(v25 + 56) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_14BDEB8(*(v25 + 48));
              v28 = sub_19593CC(v25 + 48, v29);
            }

            v30 = *(v28 + 16);
            *(v28 + 32) = v41;
            *(v28 + 16) = v30 | 3;
            v31 = *(v28 + 24);
            if (!v31)
            {
              v32 = *(v28 + 8);
              v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
              if (v32)
              {
                v33 = *v33;
              }

              v31 = sub_14BDE5C(v33);
              *(v28 + 24) = v31;
            }

            sub_EC6F6C(v40, v31, 0, v24);
            if (v70 != 1)
            {
              v54 = off_26696C8;
              if ((v56 & 0x80000000) == 0)
              {
                goto LABEL_34;
              }

              goto LABEL_60;
            }

            v34 = __p;
            if (__p)
            {
              break;
            }

LABEL_54:
            if (v67 < 0)
            {
              operator delete(v66);
              if ((v65 & 0x80000000) == 0)
              {
LABEL_56:
                if ((v63 & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

                goto LABEL_69;
              }
            }

            else if ((v65 & 0x80000000) == 0)
            {
              goto LABEL_56;
            }

            operator delete(v64);
            if ((v63 & 0x80000000) == 0)
            {
LABEL_57:
              if ((v61 & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_70:
              operator delete(v60);
              if ((v59 & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

              goto LABEL_71;
            }

LABEL_69:
            operator delete(v62);
            if (v61 < 0)
            {
              goto LABEL_70;
            }

LABEL_58:
            if ((v59 & 0x80000000) == 0)
            {
              goto LABEL_59;
            }

LABEL_71:
            operator delete(v58);
LABEL_59:
            sub_33D080(&v57);
            v54 = off_26696C8;
            if ((v56 & 0x80000000) == 0)
            {
LABEL_34:
              if ((v53 & 0x80000000) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_61;
            }

LABEL_60:
            operator delete(v55);
            if ((v53 & 0x80000000) == 0)
            {
LABEL_35:
              if ((v51 & 0x80000000) == 0)
              {
                goto LABEL_36;
              }

              goto LABEL_62;
            }

LABEL_61:
            operator delete(v52);
            if ((v51 & 0x80000000) == 0)
            {
LABEL_36:
              if ((v49 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_63;
            }

LABEL_62:
            operator delete(v50);
            if ((v49 & 0x80000000) == 0)
            {
LABEL_37:
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_64;
            }

LABEL_63:
            operator delete(v48);
            if ((v47 & 0x80000000) == 0)
            {
LABEL_38:
              if ((v45 & 0x80000000) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_65;
            }

LABEL_64:
            operator delete(v46);
            if ((v45 & 0x80000000) == 0)
            {
LABEL_39:
              if (v43 < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_23;
            }

LABEL_65:
            operator delete(v44);
            if (v43 < 0)
            {
LABEL_66:
              operator delete(v42);
            }

LABEL_23:
            sub_2C0F28(v40);
            v23 += 1120;
            if (v23 == v22)
            {
              goto LABEL_5;
            }
          }

          v35 = v69;
          v36 = __p;
          if (v69 == __p)
          {
LABEL_53:
            v69 = v34;
            operator delete(v36);
            goto LABEL_54;
          }

          while (2)
          {
            if (*(v35 - 1) < 0)
            {
              operator delete(*(v35 - 24));
              if (*(v35 - 25) < 0)
              {
                goto LABEL_50;
              }

LABEL_47:
              if (*(v35 - 49) < 0)
              {
LABEL_51:
                operator delete(*(v35 - 72));
              }
            }

            else
            {
              if ((*(v35 - 25) & 0x80000000) == 0)
              {
                goto LABEL_47;
              }

LABEL_50:
              operator delete(*(v35 - 48));
              if (*(v35 - 49) < 0)
              {
                goto LABEL_51;
              }
            }

            v35 -= 248;
            sub_33D5A0(v35);
            if (v35 == v34)
            {
              v36 = __p;
              goto LABEL_53;
            }

            continue;
          }
        }

LABEL_5:
        if (++v8 == v39)
        {
          return;
        }
      }

      v17 = *(v15 + 320);
      if (v17 > 5)
      {
        v18 = 0;
        *(v13 + 16) |= 1u;
        v19 = *(v13 + 48);
        if (!v19)
        {
LABEL_17:
          v20 = *(v13 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_14BEF24(v21);
          *(v13 + 48) = v19;
        }
      }

      else
      {
        v18 = dword_22ACFA0[v17];
        *(v13 + 16) |= 1u;
        v19 = *(v13 + 48);
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      *(v19 + 16) |= 8u;
      *(v19 + 48) = v18;
      goto LABEL_21;
    }
  }
}

void sub_EB5B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3E52A0(va);
  _Unwind_Resume(a1);
}

void sub_EB5B34(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 1736263375 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = v5 & 0x7FFFFFFF;
      v11 = 8;
      do
      {
        while (1)
        {
          v12 = *a2;
          v13 = *(*(a4 + 64) + v11);
          v14 = *(v13 + 40);
          if (v14 && (v15 = *(v13 + 32), v15 < *v14))
          {
            *(v13 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14D5CF8(*(v13 + 24));
            v16 = sub_19593CC(v13 + 24, v17);
          }

          v18 = v16[4];
          v16[4] = v18 | 4;
          v16[16] = 2;
          if (*(v12 + v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && *(v12 + v9 + 36) != 0x7FFFFFFF)
          {
            break;
          }

          v16[4] = v18 | 0xC;
          v16[17] = 20;
          v11 += 8;
          v9 += 376;
          if (!--v10)
          {
            return;
          }
        }

        sub_EB62AC(a1, v12 + v9, a3, v16);
        v16[4] |= 8u;
        v16[17] = 0;
        v11 += 8;
        v9 += 376;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_EB5CA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = -1431655765 * ((v4 - *a2) >> 4);
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = v5 & 0x7FFFFFFF;
      do
      {
        while (1)
        {
          v12 = *a2;
          v13 = *(*(a4 + 64) + 8 * v9 + 8);
          v14 = *(v13 + 40);
          if (v14 && (v15 = *(v13 + 32), v15 < *v14))
          {
            *(v13 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14D5CF8(*(v13 + 24));
            v16 = sub_19593CC(v13 + 24, v17);
          }

          v18 = (v12 + 48 * v9);
          v19 = *(v16 + 16);
          *(v16 + 16) = v19 | 4;
          *(v16 + 64) = 1;
          v20 = v18[2];
          if (v20 != 0x7FFFFFFF)
          {
            break;
          }

          *(v16 + 16) = v19 | 0xC;
          *(v16 + 68) = 20;
          if (++v9 == v10)
          {
            return;
          }
        }

        v21 = v20 / 10;
        v22 = v20 % 10;
        if (v20 < 0)
        {
          v23 = -5;
        }

        else
        {
          v23 = 5;
        }

        *(v16 + 16) = v19 | 0x14;
        *(v16 + 72) = v21 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
        v24 = *v18 + -978307200.0;
        v11 = v19 | 0x54;
        *(v16 + 16) = v19 | 0x54;
        *(v16 + 80) = v24;
        if (*(a3 + 5) == 1)
        {
          v25 = *(v18 + 2);
          v26 = v25 / 100;
          v27 = v25 % 100;
          if (v25 < 0)
          {
            v28 = -50;
          }

          else
          {
            v28 = 50;
          }

          v29 = v26 + ((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31);
          v11 = v19 | 0xD4;
          *(v16 + 16) = v19 | 0xD4;
          *(v16 + 88) = v29;
        }

        if (*(a3 + 6) == 1)
        {
          v30 = *(v18 + 3);
          v31 = *(v18 + 4);
          if (v30 != v31)
          {
            do
            {
              while (1)
              {
                v34 = *(v16 + 40);
                if (v34)
                {
                  v35 = *(v16 + 32);
                  if (v35 < *v34)
                  {
                    break;
                  }
                }

                sub_14BAE64(*(v16 + 24));
                v33 = sub_19593CC(v16 + 24, v32);
                sub_64D110(v30, v33);
                v30 += 20;
                if (v30 == v31)
                {
                  goto LABEL_4;
                }
              }

              *(v16 + 32) = v35 + 1;
              sub_64D110(v30, *&v34[2 * v35 + 2]);
              v30 += 20;
            }

            while (v30 != v31);
LABEL_4:
            v11 = *(v16 + 16);
          }
        }

        *(v16 + 16) = v11 | 8;
        *(v16 + 68) = 0;
        ++v9;
      }

      while (v9 != v10);
    }
  }
}

void sub_EB5F78(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a3 + 56);
  if (v5)
  {
    v6 = &v4[v5];
    do
    {
      v7 = *v4;
      v8 = *(*v4 + 40);
      if (v8)
      {
        v9 = (v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v7 + 32);
      v11 = &v9[v10];
      if (v10)
      {
        v12 = 8 * v10;
        while (!*(*v9 + 68) && (*(*v9 + 16) & 0x10) != 0)
        {
          ++v9;
          v12 -= 8;
          if (v9 == v11)
          {
            goto LABEL_36;
          }
        }

        v14 = v11 - 1;
        do
        {
          v12 -= 8;
          if (!v12)
          {
            v11 = v9;
            goto LABEL_36;
          }

          v15 = *v14--;
          v16 = *(v15 + 16) & 0x10;
          --v11;
          if (*(v15 + 68))
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }
        }

        while (v17);
        v18 = v12 >> 3;
        v19 = v18 + 1;
        if (v18 < 3)
        {
          v20 = 0;
          v24 = 0;
        }

        else
        {
          if (v19 >= 0x124924924924924)
          {
            v20 = 0x124924924924924;
          }

          else
          {
            v20 = v18 + 1;
          }

          while (1)
          {
            v21 = operator new(112 * v20, &std::nothrow);
            if (v21)
            {
              break;
            }

            v22 = v20 >> 1;
            v23 = v20 > 1;
            v20 >>= 1;
            if (!v23)
            {
              v24 = 0;
              v20 = v22;
              goto LABEL_34;
            }
          }

          v24 = v21;
        }

LABEL_34:
        v11 = sub_EB6738(v9, v11, v19, v24, v20);
        if (v24)
        {
          operator delete(v24);
        }
      }

LABEL_36:
      v25 = *(v7 + 40);
      if (v25)
      {
        v26 = (v25 + 8);
      }

      else
      {
        v26 = 0;
      }

      v27 = v11;
      v28 = v11 - v26;
      if (v11 != v26)
      {
        while (*(*v26 + 64) == 2 && *(*v26 + 72) < 0x259u)
        {
          ++v26;
          v28 -= 8;
          if (v26 == v11)
          {
            v27 = v11;
            goto LABEL_60;
          }
        }

        v29 = v11 - 1;
        v30 = v11;
        do
        {
          if (v29 == v26)
          {
            v27 = v26;
            goto LABEL_60;
          }

          v32 = *v29--;
          v31 = v32;
          --v30;
          v28 -= 8;
        }

        while (*(v32 + 64) != 2 || *(v31 + 72) > 0x258u);
        v33 = v28 >> 3;
        v34 = v33 + 1;
        if (v33 < 3)
        {
          v35 = 0;
          v38 = 0;
        }

        else
        {
          if (v34 >= 0x124924924924924)
          {
            v35 = 0x124924924924924;
          }

          else
          {
            v35 = v33 + 1;
          }

          while (1)
          {
            v36 = operator new(112 * v35, &std::nothrow);
            if (v36)
            {
              break;
            }

            v37 = v35 >> 1;
            v23 = v35 > 1;
            v35 >>= 1;
            if (!v23)
            {
              v38 = 0;
              v35 = v37;
              goto LABEL_58;
            }
          }

          v38 = v36;
        }

LABEL_58:
        v27 = sub_EB6FAC(v26, v30, v34, v38, v35);
        if (v38)
        {
          operator delete(v38);
        }
      }

LABEL_60:
      v39 = v11 - v27;
      if (v39 < 1)
      {
        v43 = 0;
        v40 = 0;
      }

      else
      {
        if (v39 >= 0x124924924924924)
        {
          v40 = 0x124924924924924;
        }

        else
        {
          v40 = v11 - v27;
        }

        while (1)
        {
          v41 = operator new(112 * v40, &std::nothrow);
          if (v41)
          {
            break;
          }

          v42 = v40 >> 1;
          v23 = v40 > 1;
          v40 >>= 1;
          if (!v23)
          {
            v43 = 0;
            v40 = v42;
            goto LABEL_69;
          }
        }

        v43 = v41;
      }

LABEL_69:
      a1.n128_f64[0] = sub_EB7524(v27, v11, v11 - v27, v43, v40, a1);
      if (v43)
      {
        operator delete(v43);
      }

      ++v4;
    }

    while (v4 != v6);
  }
}

void sub_EB628C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB62AC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  sub_EB64E4(a1, (a2 + 32), a3, a4);
  if (a3[5] == 1)
  {
    v7 = *(a2 + 24);
    v8 = v7 / 100;
    v9 = v7 % 100;
    if (v7 < 0)
    {
      v10 = -50;
    }

    else
    {
      v10 = 50;
    }

    *(a4 + 16) |= 0x80u;
    *(a4 + 88) = v8 + ((5243 * (v10 + v9)) >> 19) + ((5243 * (v10 + v9)) >> 31);
  }

  if (a3[6] == 1)
  {
    v11 = *(a2 + 328);
    v12 = *(a2 + 336);
    while (v11 != v12)
    {
      v15 = *(a4 + 40);
      if (v15 && (v16 = *(a4 + 32), v16 < *v15))
      {
        *(a4 + 32) = v16 + 1;
        v14 = *&v15[2 * v16 + 2];
      }

      else
      {
        sub_14BAE64(*(a4 + 24));
        v14 = sub_19593CC(a4 + 24, v13);
      }

      sub_64D110(v11, v14);
      v11 += 20;
    }
  }

  if (a3[7] == 1)
  {
    v17 = *a2;
    if (*a2 != *(a2 + 8))
    {
      *(a4 + 16) |= 1u;
      v18 = *(a4 + 48);
      if (!v18)
      {
        v19 = *(a4 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_14BEF24(v20);
        *(a4 + 48) = v18;
        v17 = *a2;
      }

      *(v18 + 16) |= 1u;
      v21 = *(v18 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_194EA1C((v18 + 24), v17, v22);
      sub_74B1D0(v17, __p);
      *(v18 + 16) |= 2u;
      v23 = *(v18 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA30((v18 + 32), __p, v24);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      *(v18 + 16) |= 4u;
      v25 = *(v18 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_194EA1C((v18 + 40), v17 + 8, v26);
    }
  }
}

void sub_EB64C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EB64E4(uint64_t a1, _DWORD *a2, _BYTE *a3, _DWORD *a4)
{
  if (*a3 == 1)
  {
    v4 = a2[1];
    v5 = v4 / 10;
    v6 = v4 % 10;
    if (v4 < 0)
    {
      v7 = -5;
    }

    else
    {
      v7 = 5;
    }

    a4[4] |= 0x10u;
    a4[18] = v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10);
    if (a3[1] != 1)
    {
LABEL_3:
      if (a3[2] != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if (a3[1] != 1)
  {
    goto LABEL_3;
  }

  v8 = a2[67];
  v9 = v8 / 10;
  v10 = v8 % 10;
  if (v8 < 0)
  {
    v11 = -5;
  }

  else
  {
    v11 = 5;
  }

  a4[4] |= 0x20u;
  a4[19] = v9 + (((103 * (v11 + v10)) >> 15) & 1) + ((103 * (v11 + v10)) >> 10);
  if (a3[2] != 1)
  {
LABEL_4:
    if (a3[3] != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  v12 = a2[66];
  v13 = v12 / 10;
  v14 = v12 % 10;
  if (v12 < 0)
  {
    v15 = -5;
  }

  else
  {
    v15 = 5;
  }

  a4[4] |= 0x400u;
  a4[25] = v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10);
  if (a3[3] != 1)
  {
LABEL_5:
    if (a3[4] != 1)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_19:
  v16 = a2[69];
  v17 = v16 / 10;
  v18 = v16 % 10;
  if (v16 < 0)
  {
    v19 = -5;
  }

  else
  {
    v19 = 5;
  }

  a4[4] |= 0x200u;
  a4[24] = v17 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10);
  if (a3[4] == 1)
  {
LABEL_23:
    v20 = a2[70];
    v21 = v20 / 10;
    v22 = v20 % 10;
    if (v20 < 0)
    {
      v23 = -5;
    }

    else
    {
      v23 = 5;
    }

    a4[4] |= 0x100u;
    a4[23] = v21 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
  }
}

uint64_t *sub_EB6738(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v11 = a1 + 1;
    v10 = a1[1];
    if (*(v10 + 68))
    {
      v12 = 1;
    }

    else
    {
      v12 = (*(v10 + 16) & 0x10) == 0;
    }

    if (!v12)
    {
      v26 = *a1;
      if (v10 != *v6)
      {
        v27 = *(v26 + 8);
        if ((v27 & 2) != 0)
        {
          v27 = 0;
        }

        else if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v46 = *(v10 + 8);
        if ((v46 & 2) != 0)
        {
          v46 = 0;
        }

        else if (v46)
        {
          v46 = *(v46 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v51 = v6[1];
        if (v27 == v46)
        {
          sub_14D2840(v26, v51);
          v7 = *v11;
          v8 = *a2;
          if (*a2 == *v11)
          {
            return a2;
          }

          goto LABEL_81;
        }

        sub_1956DC4(v26, v51);
      }

      v7 = *v11;
      v8 = *a2;
      if (*a2 == *v11)
      {
        return a2;
      }

LABEL_81:
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v40 = *(v8 + 8);
      if ((v40 & 2) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_90;
    }

    v13 = *a2;
    if (*a2 != v10)
    {
      v14 = *(v10 + 8);
      if ((v14 & 2) != 0)
      {
        v14 = 0;
      }

      else if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v45 = *(v13 + 8);
      if ((v45 & 2) != 0)
      {
        v45 = 0;
      }

      else if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v47 = a1[1];
      if (v14 == v45)
      {
        sub_14D2840(v47, v13);
        v48 = *v6;
        v49 = v6[1];
        if (v49 == *v6)
        {
          return v11;
        }

LABEL_74:
        v50 = *(v48 + 8);
        if ((v50 & 2) != 0)
        {
          v50 = 0;
        }

        else if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v52 = *(v49 + 8);
        if ((v52 & 2) != 0)
        {
          v52 = 0;
        }

        else if (v52)
        {
          v52 = *(v52 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v50 == v52)
        {
          sub_14D2840(v48, v49);
        }

        else
        {
          sub_1956DC4(v48, v49);
        }

        return v11;
      }

      sub_1956DC4(v47, v13);
    }

    v48 = *v6;
    v49 = v6[1];
    if (v49 == *v6)
    {
      return v11;
    }

    goto LABEL_74;
  }

  if (a3 == 2)
  {
    v7 = *a1;
    v8 = *a2;
    if (*a2 != *v6)
    {
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v40 = *(v8 + 8);
      if ((v40 & 2) == 0)
      {
LABEL_59:
        if (v40)
        {
          v40 = *(v40 & 0xFFFFFFFFFFFFFFFCLL);
        }

        goto LABEL_91;
      }

LABEL_90:
      v40 = 0;
LABEL_91:
      if (v9 == v40)
      {
        sub_14D2840(v7, v8);
      }

      else
      {
        sub_1956DC4(v7, v8);
      }

      return a2;
    }

    return a2;
  }

  v15 = a4;
  if (a5 >= a3)
  {
    v28 = a1 + 1;
    sub_EB6C98(a4, *a1);
    v30 = v15 + 112;
    for (i = 1; v28 != a2; ++v28)
    {
      while (1)
      {
        v32 = *v28;
        if (!*(*v28 + 68) && (*(*v28 + 16) & 0x10) != 0)
        {
          break;
        }

        sub_EB6C98(v30, v32);
        ++i;
        v30 += 112;
        if (++v28 == a2)
        {
          goto LABEL_53;
        }
      }

      v34 = *v6;
      if (*v6 != v32)
      {
        v35 = *(v34 + 8);
        if ((v35 & 2) != 0)
        {
          v35 = 0;
        }

        else if (v35)
        {
          v35 = *(v35 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v36 = *(v32 + 8);
        if ((v36 & 2) != 0)
        {
          v36 = 0;
        }

        else if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v35 == v36)
        {
          v29 = sub_14D2840(v34, v32);
        }

        else
        {
          sub_14D2790(v34, v32);
        }
      }

      ++v6;
    }

LABEL_53:
    v37 = *v28;
    v38 = *v6;
    if (*v6 != *v28)
    {
      v39 = *(v38 + 8);
      if ((v39 & 2) != 0)
      {
        v39 = 0;
      }

      else if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v53 = *(v37 + 8);
      if ((v53 & 2) != 0)
      {
        v53 = 0;
      }

      else if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v39 == v53)
      {
        v29 = sub_14D2840(v38, v37);
      }

      else
      {
        sub_14D2790(v38, v37);
      }
    }

    v11 = v6 + 1;
    if (v30 > v15)
    {
      v62 = v15;
      v63 = v6 + 1;
      do
      {
        v64 = *v63;
        if (v62 != *v63)
        {
          v65 = *(v64 + 8);
          if ((v65 & 2) != 0)
          {
            v65 = 0;
          }

          else if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v66 = *(v62 + 8);
          if ((v66 & 2) != 0)
          {
            v66 = 0;
          }

          else if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v65 == v66)
          {
            v29 = sub_14D2840(v64, v62);
          }

          else
          {
            sub_14D2790(v64, v62);
          }
        }

        v62 += 112;
        ++v63;
      }

      while (v62 < v30);
    }

    if (v15 && i)
    {
      for (j = 0; j < i; ++j)
      {
        sub_14D13E0(v15, v29);
        v15 += 112;
      }
    }
  }

  else
  {
    v16 = a3 / 2;
    v17 = &a1[a3 / 2];
    v19 = *(v17 - 1);
    v18 = v17 - 1;
    v20 = *(v19 + 16) & 0x10;
    if (*(v19 + 68))
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == 0;
    }

    if (v21)
    {
      v22 = 8 - 8 * v16;
      v41 = a3 / 2;
      while (v22)
      {
        --v41;
        v23 = *--v18;
        v24 = *(v23 + 16) & 0x10;
        v22 += 8;
        if (*(v23 + 68))
        {
          v25 = 1;
        }

        else
        {
          v25 = v24 == 0;
        }

        if (!v25)
        {
          goto LABEL_61;
        }
      }

      v44 = a1;
    }

    else
    {
      v41 = a3 / 2;
LABEL_61:
      v42 = a3;
      v43 = sub_EB6738(a1, v18, v41, a4);
      a3 = v42;
      v44 = v43;
    }

    v54 = v6[v16];
    v55 = a3 - v16;
    if (*(v54 + 68))
    {
      v56 = 1;
    }

    else
    {
      v56 = (*(v54 + 16) & 0x10) == 0;
    }

    if (v56)
    {
      v58 = v17;
LABEL_118:
      v11 = sub_EB6738(v58, a2, v55, v15);
    }

    else
    {
      v11 = a2 + 1;
      v57 = v17 + 1;
      v58 = v17;
      while (v57 != a2)
      {
        --v55;
        v59 = *v57++;
        v60 = *(v59 + 16) & 0x10;
        ++v58;
        if (*(v59 + 68))
        {
          v61 = 1;
        }

        else
        {
          v61 = v60 == 0;
        }

        if (v61)
        {
          goto LABEL_118;
        }
      }
    }

    if (v44 != v17)
    {
      if (v17 == v11)
      {
        return v44;
      }

      else
      {
        return sub_EB6D98(v44, v17, v11);
      }
    }
  }

  return v11;
}

uint64_t sub_EB6C98(uint64_t a1, uint64_t a2)
{
  sub_14D12C8(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_14D2840(a1, a2);
    }

    else
    {
      sub_14D2790(a1, a2);
    }
  }

  return a1;
}

uint64_t *sub_EB6D38(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      do
      {
        ++v4;
        sub_14D13E0();
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t *sub_EB6D98(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = a1 + 1;
  v6 = a2 + 1;
  v7 = a1 + 1;
  v8 = *a1;
  v9 = *a2;
  if (v9 != v8)
  {
    goto LABEL_2;
  }

LABEL_12:
  while (v6 != a3)
  {
    while (1)
    {
      if (v7 == v4)
      {
        v4 = v6;
      }

      ++v7;
      ++v5;
      ++v6;
      v8 = *(v7 - 1);
      v9 = *(v6 - 1);
      if (v9 == v8)
      {
        break;
      }

LABEL_2:
      v10 = *(v8 + 8);
      if ((v10 & 2) != 0)
      {
        v10 = 0;
      }

      else if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v11 = *(v9 + 8);
      if ((v11 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v10 != v11)
      {
        sub_1956DC4(v8, v9);
        goto LABEL_12;
      }

      sub_14D2840(v8, v9);
      if (v6 == a3)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
  if (v7 != v4)
  {
    v12 = v4;
    while (1)
    {
      v13 = *v7;
      v14 = *v12;
      if (*v12 == *v7)
      {
        goto LABEL_33;
      }

      v15 = *(v13 + 8);
      if ((v15 & 2) != 0)
      {
        v15 = 0;
      }

      else if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v16 = *(v14 + 8);
      if ((v16 & 2) != 0)
      {
        v16 = 0;
      }

      else if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v15 == v16)
      {
        break;
      }

      sub_1956DC4(v13, v14);
LABEL_33:
      ++v7;
      ++v12;
      v17 = v7 == v4;
      if (v12 == a3)
      {
        goto LABEL_34;
      }

LABEL_20:
      if (v17)
      {
        v4 = v12;
      }
    }

    sub_14D2840(v13, v14);
    ++v7;
    ++v12;
    v17 = v7 == v4;
    if (v12 != a3)
    {
      goto LABEL_20;
    }

LABEL_34:
    if (v7 != v4)
    {
      v12 = v4 + 1;
      while (1)
      {
        v18 = *v7;
        v19 = *v4;
        if (*v4 == *v7)
        {
          goto LABEL_47;
        }

        v20 = *(v18 + 8);
        if ((v20 & 2) != 0)
        {
          v20 = 0;
        }

        else if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v21 = *(v19 + 8);
        if ((v21 & 2) != 0)
        {
          v21 = 0;
        }

        else if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v20 != v21)
        {
          break;
        }

        sub_14D2840(v18, v19);
        v17 = ++v7 == v4;
        if (v12 != a3)
        {
          goto LABEL_20;
        }

LABEL_48:
        if (v7 == v4)
        {
          return v5;
        }
      }

      sub_1956DC4(v18, v19);
LABEL_47:
      v17 = ++v7 == v4;
      if (v12 != a3)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }
  }

  return v5;
}

uint64_t *sub_EB6FAC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v11 = a1 + 1;
    v10 = a1[1];
    if (*(v10 + 64) == 2 && *(v10 + 72) <= 0x258u)
    {
      v12 = *a1;
      if (v10 != *v6)
      {
        v13 = *(v12 + 8);
        if ((v13 & 2) != 0)
        {
          v13 = 0;
        }

        else if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v53 = *(v10 + 8);
        if ((v53 & 2) != 0)
        {
          v53 = 0;
        }

        else if (v53)
        {
          v53 = *(v53 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v54 = v6[1];
        if (v13 == v53)
        {
          sub_14D2840(v12, v54);
          v7 = *v11;
          v8 = *a2;
          if (*a2 == *v11)
          {
            return a2;
          }

          goto LABEL_84;
        }

        sub_1956DC4(v12, v54);
      }

      v7 = *v11;
      v8 = *a2;
      if (*a2 == *v11)
      {
        return a2;
      }

LABEL_84:
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v33 = *(v8 + 8);
      if ((v33 & 2) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_89;
    }

    v20 = *a2;
    if (*a2 != v10)
    {
      v21 = *(v10 + 8);
      if ((v21 & 2) != 0)
      {
        v21 = 0;
      }

      else if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v47 = *(v20 + 8);
      if ((v47 & 2) != 0)
      {
        v47 = 0;
      }

      else if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v48 = a1[1];
      if (v21 == v47)
      {
        sub_14D2840(v48, v20);
        v49 = *v6;
        v50 = v6[1];
        if (v50 == *v6)
        {
          return v11;
        }

LABEL_66:
        v51 = *(v49 + 8);
        if ((v51 & 2) != 0)
        {
          v51 = 0;
        }

        else if (v51)
        {
          v51 = *(v51 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v52 = *(v50 + 8);
        if ((v52 & 2) != 0)
        {
          v52 = 0;
        }

        else if (v52)
        {
          v52 = *(v52 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v51 == v52)
        {
          sub_14D2840(v49, v50);
        }

        else
        {
          sub_1956DC4(v49, v50);
        }

        return v11;
      }

      sub_1956DC4(v48, v20);
    }

    v49 = *v6;
    v50 = v6[1];
    if (v50 == *v6)
    {
      return v11;
    }

    goto LABEL_66;
  }

  if (a3 == 2)
  {
    v7 = *a1;
    v8 = *a2;
    if (*a2 != *v6)
    {
      v9 = *(v7 + 8);
      if ((v9 & 2) != 0)
      {
        v9 = 0;
      }

      else if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v33 = *(v8 + 8);
      if ((v33 & 2) == 0)
      {
LABEL_45:
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFCLL);
        }

        goto LABEL_90;
      }

LABEL_89:
      v33 = 0;
LABEL_90:
      if (v9 == v33)
      {
        sub_14D2840(v7, v8);
      }

      else
      {
        sub_1956DC4(v7, v8);
      }

      return a2;
    }

    return a2;
  }

  v14 = a4;
  if (a5 < a3)
  {
    v15 = a3 / 2;
    v16 = &a1[a3 / 2];
    v17 = v16 - 1;
    v18 = *(v16 - 1);
    if (*(v18 + 64) == 2 && *(v18 + 72) < 0x259u)
    {
      v19 = a3 / 2;
LABEL_51:
      v38 = sub_EB6FAC(a1, v17, v19, a4);
      v39 = a3;
      v40 = v38;
      v41 = v39 - v15;
      v42 = v6[v15];
      if (*(v42 + 64) == 2)
      {
LABEL_52:
        if (*(v42 + 72) <= 0x258u)
        {
          v11 = a2 + 1;
          v43 = v16 + 1;
          v44 = v16;
          while (v43 != a2)
          {
            --v41;
            v46 = *v43++;
            v45 = v46;
            ++v44;
            if (*(v46 + 64) != 2 || *(v45 + 72) >= 0x259u)
            {
              goto LABEL_104;
            }
          }

          goto LABEL_105;
        }

        v44 = v16;
LABEL_104:
        v11 = sub_EB6FAC(v44, a2, v41, v14);
LABEL_105:
        if (v40 != v16)
        {
          if (v16 == v11)
          {
            return v40;
          }

          else
          {
            return sub_EB6D98(v40, v16, v11);
          }
        }

        return v11;
      }
    }

    else
    {
      v34 = 8 - 8 * v15;
      v19 = a3 / 2;
      while (v34)
      {
        --v19;
        v36 = *--v17;
        v35 = v36;
        v34 += 8;
        if (*(v36 + 64) == 2 && *(v35 + 72) <= 0x258u)
        {
          goto LABEL_51;
        }
      }

      v40 = a1;
      v41 = a3 - v15;
      v42 = a1[v15];
      if (*(v42 + 64) == 2)
      {
        goto LABEL_52;
      }
    }

    v44 = v16;
    goto LABEL_104;
  }

  v22 = a1 + 1;
  sub_EB6C98(a4, *a1);
  v24 = v14 + 112;
  for (i = 1; v22 != a2; ++v22)
  {
    while (1)
    {
      v26 = *v22;
      if (*(*v22 + 64) == 2 && *(v26 + 72) <= 0x258u)
      {
        break;
      }

      sub_EB6C98(v24, v26);
      ++i;
      v24 += 112;
      if (++v22 == a2)
      {
        goto LABEL_39;
      }
    }

    v27 = *v6;
    if (*v6 != v26)
    {
      v28 = *(v27 + 8);
      if ((v28 & 2) != 0)
      {
        v28 = 0;
      }

      else if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v29 = *(v26 + 8);
      if ((v29 & 2) != 0)
      {
        v29 = 0;
      }

      else if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v28 == v29)
      {
        v23 = sub_14D2840(v27, v26);
      }

      else
      {
        sub_14D2790(v27, v26);
      }
    }

    ++v6;
  }

LABEL_39:
  v30 = *v22;
  v31 = *v6;
  if (*v6 != *v22)
  {
    v32 = *(v31 + 8);
    if ((v32 & 2) != 0)
    {
      v32 = 0;
    }

    else if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v55 = *(v30 + 8);
    if ((v55 & 2) != 0)
    {
      v55 = 0;
    }

    else if (v55)
    {
      v55 = *(v55 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v32 == v55)
    {
      v23 = sub_14D2840(v31, v30);
    }

    else
    {
      sub_14D2790(v31, v30);
    }
  }

  v11 = v6 + 1;
  if (v24 > v14)
  {
    v56 = v14;
    v57 = v6 + 1;
    do
    {
      v58 = *v57;
      if (v56 != *v57)
      {
        v59 = *(v58 + 8);
        if ((v59 & 2) != 0)
        {
          v59 = 0;
        }

        else if (v59)
        {
          v59 = *(v59 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v60 = *(v56 + 8);
        if ((v60 & 2) != 0)
        {
          v60 = 0;
        }

        else if (v60)
        {
          v60 = *(v60 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v59 == v60)
        {
          v23 = sub_14D2840(v58, v56);
        }

        else
        {
          sub_14D2790(v58, v56);
        }
      }

      v56 += 112;
      ++v57;
    }

    while (v56 < v24);
  }

  if (v14 && i)
  {
    for (j = 0; j < i; ++j)
    {
      sub_14D13E0(v14, v23);
      v14 += 112;
    }
  }

  return v11;
}

double sub_EB7524(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *a1;
      if (v8 != *v7 && *(v8 + 72) < *(*v7 + 72))
      {
        v11 = *(v9 + 8);
        if ((v11 & 2) != 0)
        {
          v11 = 0;
        }

        else if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v50 = *(v8 + 8);
        if ((v50 & 2) != 0)
        {
          v50 = 0;
        }

        else if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v11 == v50)
        {

          a6.n128_u64[0] = sub_14D2840(v9, v8).n128_u64[0];
        }

        else
        {

          sub_1956DC4(v9, v8);
        }
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v19 = a1 + 1;
        if (a1 + 1 != a2)
        {
          v20 = 0;
          v21 = a1;
          do
          {
            v23 = v19;
            if (*(*v19 + 72) < *(*v21 + 72))
            {
              sub_EB6C98(&v53, *v19);
              v24 = *v21;
              v25 = v20;
              while (1)
              {
                v26 = *(v7 + v25 + 8);
                if (v26 != v24)
                {
                  v27 = *(v26 + 8);
                  if ((v27 & 2) != 0)
                  {
                    v27 = 0;
                  }

                  else if (v27)
                  {
                    v27 = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  v28 = *(v24 + 8);
                  if ((v28 & 2) != 0)
                  {
                    v28 = 0;
                  }

                  else if (v28)
                  {
                    v28 = *(v28 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  if (v27 == v28)
                  {
                    v22 = sub_14D2840(v26, v24);
                  }

                  else
                  {
                    sub_14D2790(v26, v24);
                  }
                }

                if (!v25)
                {
                  break;
                }

                v24 = *(v7 + v25 - 8);
                v25 -= 8;
                if (v55 >= *(v24 + 72))
                {
                  v29 = *(v7 + v25 + 8);
                  if (v29 == &v53)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_41;
                }
              }

              v29 = *v7;
              if (*v7 == &v53)
              {
                goto LABEL_20;
              }

LABEL_41:
              v30 = v29[1];
              if ((v30 & 2) != 0)
              {
                v30 = 0;
              }

              else if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v31 = v54;
              if ((v54 & 2) != 0)
              {
                v31 = 0;
              }

              else if (v54)
              {
                v31 = *(v54 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v30 == v31)
              {
                v22 = sub_14D2840(v29, &v53);
              }

              else
              {
                sub_14D2790(v29, &v53);
              }

LABEL_20:
              sub_14D13E0(&v53, v22);
            }

            v19 = v23 + 1;
            v20 += 8;
            v21 = v23;
          }

          while (v23 + 1 != a2);
        }
      }
    }

    else
    {
      v12 = a4;
      v13 = a3 >> 1;
      v14 = &a1[a3 >> 1];
      if (a3 <= a5)
      {
        v52 = 0;
        v53 = a4;
        v54 = &v52;
        sub_EB7AAC(a1, &a1[a3 >> 1], a3 >> 1, a4);
        v52 = v13;
        v32 = a3 - v13;
        v33 = v12 + 112 * v13;
        sub_EB7AAC(v14, a2, v32, v33);
        v52 = a3;
        v34 = v12 + 112 * a3;
        v35 = v33;
        while (v35 != v34)
        {
          v36 = *v7;
          if (*(v35 + 72) >= *(v12 + 72))
          {
            if (v36 != v12)
            {
              v38 = *(v36 + 8);
              if ((v38 & 2) != 0)
              {
                v38 = 0;
              }

              else if (v38)
              {
                v38 = *(v38 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v40 = *(v12 + 8);
              if ((v40 & 2) != 0)
              {
                v40 = 0;
              }

              else if (v40)
              {
                v40 = *(v40 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v38 == v40)
              {
                a6 = sub_14D2840(v36, v12);
              }

              else
              {
                sub_14D2790(v36, v12);
              }
            }

            v12 += 112;
            ++v7;
            if (v12 == v33)
            {
LABEL_97:
              while (v35 != v34)
              {
                v44 = *v7;
                if (v35 != *v7)
                {
                  v45 = *(v44 + 8);
                  if ((v45 & 2) != 0)
                  {
                    v45 = 0;
                  }

                  else if (v45)
                  {
                    v45 = *(v45 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  v46 = *(v35 + 8);
                  if ((v46 & 2) != 0)
                  {
                    v46 = 0;
                  }

                  else if (v46)
                  {
                    v46 = *(v46 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  if (v45 == v46)
                  {
                    a6 = sub_14D2840(v44, v35);
                  }

                  else
                  {
                    sub_14D2790(v44, v35);
                  }
                }

                v35 += 112;
                ++v7;
              }

              goto LABEL_109;
            }
          }

          else
          {
            if (v36 != v35)
            {
              v37 = *(v36 + 8);
              if ((v37 & 2) != 0)
              {
                v37 = 0;
              }

              else if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v39 = *(v35 + 8);
              if ((v39 & 2) != 0)
              {
                v39 = 0;
              }

              else if (v39)
              {
                v39 = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v37 == v39)
              {
                a6 = sub_14D2840(v36, v35);
              }

              else
              {
                sub_14D2790(v36, v35);
              }
            }

            v35 += 112;
            ++v7;
            if (v12 == v33)
            {
              goto LABEL_97;
            }
          }
        }

        while (v12 != v33)
        {
          v41 = *v7;
          if (v12 != *v7)
          {
            v42 = *(v41 + 8);
            if ((v42 & 2) != 0)
            {
              v42 = 0;
            }

            else if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v43 = *(v12 + 8);
            if ((v43 & 2) != 0)
            {
              v43 = 0;
            }

            else if (v43)
            {
              v43 = *(v43 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (v42 == v43)
            {
              a6 = sub_14D2840(v41, v12);
            }

            else
            {
              sub_14D2790(v41, v12);
            }
          }

          v12 += 112;
          ++v7;
        }

LABEL_109:
        v47 = v53;
        if (v53)
        {
          v48 = v54;
          if (*v54)
          {
            v49 = 0;
            do
            {
              ++v49;
              v47 = sub_14D13E0(v47, a6) + 112;
            }

            while (v49 < *v48);
          }
        }
      }

      else
      {
        sub_EB7524(a1, &a1[a3 >> 1], a3 >> 1, a4, a5);
        v17 = a3 - v13;
        sub_EB7524(v14, a2, v17, v12, a5);

        a6.n128_f64[0] = sub_EB7DAC(v7, v14, a2, v13, v17, v12, a5, v18);
      }
    }
  }

  return a6.n128_f64[0];
}

void sub_EB7A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_EB6D38(va);
  _Unwind_Resume(a1);
}

void sub_EB7AAC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = a1;
    if (a3 == 2)
    {
      v9 = *(a2 - 1);
      if (*(v9 + 72) >= *(*a1 + 72))
      {
        sub_EB6C98(a4, *a1);
        v7 = *(a2 - 1);
      }

      else
      {
        sub_EB6C98(a4, v9);
        v7 = *v6;
      }

      v8 = v4 + 112;

      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v7 = *a1;
      v8 = a4;

LABEL_6:
      sub_EB6C98(v8, v7);
      return;
    }

    if (a3 > 8)
    {
      v22 = a3 >> 1;
      v23 = &a1[a3 >> 1];
      sub_EB7524(a1, v23, v22, a4, v22);
      sub_EB7524(v23, a2, a3 - v22, v4 + 112 * v22, a3 - v22);
      v25 = v23;
      while (v25 != a2)
      {
        if (*(*v25 + 72) >= *(*v6 + 72))
        {
          sub_EB6C98(v4, *v6++);
          v4 += 112;
          if (v6 == v23)
          {
            goto LABEL_58;
          }
        }

        else
        {
          sub_EB6C98(v4, *v25++);
          v4 += 112;
          if (v6 == v23)
          {
LABEL_58:
            while (v25 != a2)
            {
              v27 = *v25++;
              sub_EB6C98(v4, v27);
              v4 += 112;
            }

            return;
          }
        }
      }

      while (v6 != v23)
      {
        v26 = *v6++;
        sub_EB6C98(v4, v26);
        v4 += 112;
      }
    }

    else if (a1 != a2)
    {
      v10 = a1 + 1;
      sub_EB6C98(a4, *a1);
      if (v10 != a2)
      {
        v11 = 0;
        v12 = v4;
        do
        {
          v13 = v12;
          v12 += 112;
          if (*(*v10 + 72) >= *(v13 + 72))
          {
            sub_EB6C98(v12, *v10);
          }

          else
          {
            sub_EB6C98(v12, v13);
            v14 = v4;
            if (v13 != v4)
            {
              v15 = v11;
              while (1)
              {
                v14 = v4 + v15;
                if (*(*v10 + 72) >= *(v4 + v15 - 40))
                {
                  break;
                }

                v16 = *(v14 + 8);
                if ((v16 & 2) != 0)
                {
                  v16 = 0;
                }

                else if (v16)
                {
                  v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
                }

                v17 = *(v4 + v15 - 104);
                if ((v17 & 2) != 0)
                {
                  v17 = 0;
                }

                else if (v17)
                {
                  v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
                }

                v18 = v14 - 112;
                if (v16 == v17)
                {
                  sub_14D2840(v14, v18);
                }

                else
                {
                  sub_14D2790(v14, v18);
                }

                v15 -= 112;
                if (!v15)
                {
                  v14 = v4;
                  break;
                }
              }
            }

            v19 = *v10;
            if (v14 != *v10)
            {
              v20 = *(v14 + 8);
              if ((v20 & 2) != 0)
              {
                v20 = 0;
              }

              else if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
              }

              v21 = *(v19 + 8);
              if ((v21 & 2) != 0)
              {
                v21 = 0;
              }

              else if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (v20 == v21)
              {
                sub_14D2840(v14, v19);
              }

              else
              {
                sub_14D2790(v14, v19);
              }
            }
          }

          ++v10;
          v11 += 112;
        }

        while (v10 != a2);
      }
    }
  }
}

double sub_EB7DAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  if (!a5)
  {
    return a8.n128_f64[0];
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return a8.n128_f64[0];
    }

    v12 = 0;
    v13 = *a2;
    v14 = -a4;
    while (1)
    {
      v15 = a1[v12 / 8];
      if (*(*a2 + 72) < *(v15 + 72))
      {
        break;
      }

      v12 += 8;
      if (__CFADD__(v14++, 1))
      {
        return a8.n128_f64[0];
      }
    }

    v17 = -v14;
    v18 = &a1[v12 / 8];
    v79 = a3;
    v80 = a6;
    if (-v14 < a5)
    {
      v19 = a5 / 2;
      v20 = &a2[a5 / 2];
      v21 = a2;
      if (a2 - a1 != v12)
      {
        v22 = (a2 - a1 - v12) >> 3;
        v21 = &a1[v12 / 8];
        do
        {
          v23 = v22 >> 1;
          v24 = &v21[v22 >> 1];
          v26 = *v24;
          v25 = v24 + 1;
          v22 += ~(v22 >> 1);
          if (*(v26 + 72) > *(*v20 + 72))
          {
            v22 = v23;
          }

          else
          {
            v21 = v25;
          }
        }

        while (v22);
      }

      v27 = (v21 - a1 - v12) >> 3;
      a3 = &a2[a5 / 2];
      if (v21 == a2)
      {
        goto LABEL_29;
      }

LABEL_27:
      a3 = v21;
      if (a2 != v20)
      {
        v34 = a2;
        v35 = a5;
        v36 = a7;
        v37 = sub_EB6D98(v21, v34, v20);
        v18 = &a1[v12 / 8];
        a7 = v36;
        a5 = v35;
        a3 = v37;
      }

      goto LABEL_29;
    }

    if (v14 == -1)
    {
      if (v13 != v15)
      {
        v71 = *(v15 + 8);
        if ((v71 & 2) != 0)
        {
          v71 = 0;
        }

        else if (v71)
        {
          v71 = *(v71 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v77 = *(v13 + 8);
        if ((v77 & 2) != 0)
        {
          v77 = 0;
        }

        else if (v77)
        {
          v77 = *(v77 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v71 == v77)
        {

          a8.n128_u64[0] = sub_14D2840(v15, v13).n128_u64[0];
        }

        else
        {

          sub_1956DC4(v15, v13);
        }
      }

      return a8.n128_f64[0];
    }

    v27 = v17 / 2;
    v28 = &a1[v17 / 2];
    v20 = a2;
    if (a2 != a3)
    {
      v29 = a3 - a2;
      v20 = a2;
      do
      {
        v30 = v29 >> 1;
        v31 = &v20[v29 >> 1];
        v33 = *v31;
        v32 = v31 + 1;
        v29 += ~(v29 >> 1);
        if (*(v33 + 72) < *(v28[v12 / 8] + 72))
        {
          v20 = v32;
        }

        else
        {
          v29 = v30;
        }
      }

      while (v29);
    }

    v19 = v20 - a2;
    v21 = &v28[v12 / 8];
    a3 = v20;
    if (&v28[v12 / 8] != a2)
    {
      goto LABEL_27;
    }

LABEL_29:
    v38 = -(v27 + v14);
    v39 = a5 - v19;
    if (v27 + v19 >= a5 - (v27 + v19) - v14)
    {
      v44 = a7;
      a1 = v18;
      sub_EB7DAC(a3, v20, v79, v38, a5 - v19, v80);
      a4 = v27;
      a6 = v80;
      a5 = v19;
      a2 = v21;
      a7 = v44;
      if (!v19)
      {
        return a8.n128_f64[0];
      }
    }

    else
    {
      v40 = &a1[v12 / 8];
      v41 = -(v27 + v14);
      v42 = v27;
      a6 = v80;
      v43 = a7;
      sub_EB7DAC(v40, v21, a3, v42, v19, v80);
      a4 = v41;
      a1 = a3;
      a3 = v79;
      a5 = v39;
      a2 = v20;
      a7 = v43;
      if (!v39)
      {
        return a8.n128_f64[0];
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 == a1)
    {
      return a8.n128_f64[0];
    }

    v45 = 0;
    v57 = a6;
    v58 = a1;
    do
    {
      v59 = *v58++;
      sub_EB6C98(v57, v59);
      ++v45;
      v57 += 112;
    }

    while (v58 != a2);
    v60 = a6;
    while (a2 != a3)
    {
      v61 = *a2;
      v62 = *a1;
      if (*(*a2 + 72) >= *(v60 + 72))
      {
        if (v62 != v60)
        {
          v64 = *(v62 + 8);
          if ((v64 & 2) != 0)
          {
            v64 = 0;
          }

          else if (v64)
          {
            v64 = *(v64 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v66 = *(v60 + 8);
          if ((v66 & 2) != 0)
          {
            v66 = 0;
          }

          else if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v64 == v66)
          {
            a8 = sub_14D2840(v62, v60);
          }

          else
          {
            sub_14D2790(v62, v60);
          }
        }

        v60 += 112;
        ++a1;
        if (v57 == v60)
        {
          goto LABEL_133;
        }
      }

      else
      {
        if (v62 != v61)
        {
          v63 = *(v62 + 8);
          if ((v63 & 2) != 0)
          {
            v63 = 0;
          }

          else if (v63)
          {
            v63 = *(v63 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v65 = *(v61 + 8);
          if ((v65 & 2) != 0)
          {
            v65 = 0;
          }

          else if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v63 == v65)
          {
            a8 = sub_14D2840(v62, v61);
          }

          else
          {
            sub_14D2790(v62, v61);
          }
        }

        ++a2;
        ++a1;
        if (v57 == v60)
        {
          goto LABEL_133;
        }
      }
    }

    do
    {
      v68 = *a1;
      if (v60 != *a1)
      {
        v69 = *(v68 + 8);
        if ((v69 & 2) != 0)
        {
          v69 = 0;
        }

        else if (v69)
        {
          v69 = *(v69 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v70 = *(v60 + 8);
        if ((v70 & 2) != 0)
        {
          v70 = 0;
        }

        else if (v70)
        {
          v70 = *(v70 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v69 == v70)
        {
          a8 = sub_14D2840(v68, v60);
        }

        else
        {
          sub_14D2790(v68, v60);
        }
      }

      ++a1;
      v67 = v57 - 112 == v60;
      v60 += 112;
    }

    while (!v67);
  }

  else
  {
    if (a2 == a3)
    {
      return a8.n128_f64[0];
    }

    v45 = 0;
    v46 = a6;
    v47 = a2;
    do
    {
      v48 = *v47++;
      sub_EB6C98(v46, v48);
      ++v45;
      v46 += 112;
    }

    while (v47 != a3);
    while (a2 != a1)
    {
      v49 = a2 - 1;
      v50 = *(a2 - 1);
      v52 = *--a3;
      v51 = v52;
      if (*(v46 - 40) >= *(v50 + 72))
      {
        if (v51 == v46 - 112)
        {
          v49 = a2;
          v46 -= 112;
        }

        else
        {
          v54 = *(v51 + 8);
          if ((v54 & 2) != 0)
          {
            v54 = 0;
          }

          else if (v54)
          {
            v54 = *(v54 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v56 = *(v46 - 104);
          if ((v56 & 2) != 0)
          {
            v56 = 0;
          }

          else if (v56)
          {
            v56 = *(v56 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v54 == v56)
          {
            a8 = sub_14D2840(v51, v46 - 112);
          }

          else
          {
            sub_14D2790(v51, v46 - 112);
          }

          v49 = a2;
          v46 -= 112;
        }
      }

      else if (v51 != v50)
      {
        v53 = *(v51 + 8);
        if ((v53 & 2) != 0)
        {
          v53 = 0;
        }

        else if (v53)
        {
          v53 = *(v53 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v55 = *(v50 + 8);
        if ((v55 & 2) != 0)
        {
          v55 = 0;
        }

        else if (v55)
        {
          v55 = *(v55 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v53 == v55)
        {
          a8 = sub_14D2840(v51, v50);
        }

        else
        {
          sub_14D2790(v51, v50);
        }
      }

      a2 = v49;
      if (v46 == a6)
      {
        goto LABEL_133;
      }
    }

    if (v46 != a6)
    {
      v72 = v46 - 112;
      v73 = 0x1FFFFFFFFFFFFFFFLL;
      do
      {
        v74 = a3[v73];
        if (v72 != v74)
        {
          v75 = *(v74 + 8);
          if ((v75 & 2) != 0)
          {
            v75 = 0;
          }

          else if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v76 = *(v72 + 8);
          if ((v76 & 2) != 0)
          {
            v76 = 0;
          }

          else if (v76)
          {
            v76 = *(v76 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v75 == v76)
          {
            a8 = sub_14D2840(v74, v72);
          }

          else
          {
            sub_14D2790(v74, v72);
          }
        }

        --v73;
        v67 = v72 == a6;
        v72 -= 112;
      }

      while (!v67);
    }
  }

LABEL_133:
  if (a6 && v45)
  {
    do
    {
      sub_14D13E0(a6, a8);
      a6 += 112;
      --v45;
    }

    while (v45);
  }

  return a8.n128_f64[0];
}

void sub_EB846C()
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
  xmmword_27BB060 = 0u;
  *algn_27BB070 = 0u;
  dword_27BB080 = 1065353216;
  sub_3A9A34(&xmmword_27BB060, v0);
  sub_3A9A34(&xmmword_27BB060, v3);
  sub_3A9A34(&xmmword_27BB060, __p);
  sub_3A9A34(&xmmword_27BB060, v9);
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
    qword_27BB038 = 0;
    qword_27BB040 = 0;
    qword_27BB030 = 0;
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

void sub_EB86B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BB048)
  {
    qword_27BB050 = qword_27BB048;
    operator delete(qword_27BB048);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EB8760()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = sub_74700();
  cat = v6->__cat_;
  result = sub_7E7E4(3u);
  if (cat == &off_2669FE0)
  {
    if (!result)
    {
      goto LABEL_75;
    }

    sub_19594F8(&v46);
    LODWORD(v43) = sub_7421C(v8);
    sub_7230C(&v43, __p);
    if (v45 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v45 >= 0)
    {
      v23 = HIBYTE(v45);
    }

    else
    {
      v23 = __p[1];
    }

    v24 = sub_4A5C(&v46, v22, v23);
    v25 = sub_4A5C(v24, " failed (SubError: ", 19);
    std::error_condition::message(&v42, v6);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v42;
    }

    else
    {
      v26 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    v28 = sub_4A5C(v25, v26, size);
    v29 = sub_4A5C(v28, "): ", 3);
    v30 = sub_73F1C(v8);
    v31 = *(v30 + 23);
    if (v31 >= 0)
    {
      v32 = v30;
    }

    else
    {
      v32 = *v30;
    }

    if (v31 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    sub_4A5C(v29, v32, v33);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
LABEL_40:
        v34 = v56;
        if ((v56 & 0x10) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_62;
      }
    }

    else if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    operator delete(__p[0]);
    v34 = v56;
    if ((v56 & 0x10) == 0)
    {
LABEL_41:
      if ((v34 & 8) == 0)
      {
        v35 = 0;
        HIBYTE(v45) = 0;
LABEL_70:
        *(__p + v35) = 0;
        sub_7E854(__p, 3u);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p[0]);
        }

        if (v54 < 0)
        {
          operator delete(v53);
        }

        std::locale::~locale(&v48);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_75:
        v41 = sub_3AF4C0(v7);
        sub_21E2C18(v41, 1, *(v4 + 60));
      }

      v40 = v49;
      v35 = v50 - v49;
      if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }

LABEL_65:
      if (v35 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v45) = v35;
      if (v35)
      {
        memmove(__p, v40, v35);
      }

      goto LABEL_70;
    }

LABEL_62:
    v39 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v39 = v52;
    }

    v40 = v51;
    v35 = v39 - v51;
    if (v39 - v51 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_77;
    }

    goto LABEL_65;
  }

  if (!result)
  {
    goto LABEL_57;
  }

  sub_19594F8(&v46);
  LODWORD(v42.__r_.__value_.__l.__data_) = sub_7421C(v8);
  sub_7230C(&v42, __p);
  if (v45 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v45 >= 0)
  {
    v12 = HIBYTE(v45);
  }

  else
  {
    v12 = __p[1];
  }

  v13 = sub_4A5C(&v46, v11, v12);
  sub_4A5C(v13, " failed (ErrorCode: ", 20);
  v14 = std::ostream::operator<<();
  v15 = sub_4A5C(v14, "): ", 3);
  v16 = sub_73F1C(v8);
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  sub_4A5C(v15, v18, v19);
  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    v20 = v56;
    if ((v56 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    v36 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v36 = v52;
    }

    v37 = v51;
    v21 = v36 - v51;
    if (v36 - v51 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

LABEL_47:
    if (v21 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v45) = v21;
    if (v21)
    {
      memmove(__p, v37, v21);
    }

    goto LABEL_52;
  }

  operator delete(__p[0]);
  v20 = v56;
  if ((v56 & 0x10) != 0)
  {
    goto LABEL_44;
  }

LABEL_17:
  if ((v20 & 8) != 0)
  {
    v37 = v49;
    v21 = v50 - v49;
    if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v21 = 0;
  HIBYTE(v45) = 0;
LABEL_52:
  *(__p + v21) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  std::locale::~locale(&v48);
  std::ostream::~ostream();
  result = std::ios::~ios();
LABEL_57:
  val = v6->__val_;
  *(v2 + 40) |= 0x400000u;
  *(v2 + 552) = val;
  return result;
}

void sub_EBAE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a32);
  sub_14AFBC8(&a22);
  sub_EBB868(&a29);
  sub_559B98(&STACK[0xAD0]);
  sub_1F1A8(v32 - 128);
  sub_1F1A8(v32 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_EBB3C4(unsigned int a1)
{
  if (a1 > 0x2C || ((1 << a1) & 0xFFFFEFFFAFELL) != 0)
  {
    return 1;
  }

  if (((1 << a1) & 0x1000500) == 0)
  {
    *&v11.__val_ = a1;
    v11.__cat_ = &off_2669FE0;
    std::error_condition::message(&v13, &v11);
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v11);
      v2 = sub_4A5C(&v11, "Unexpected error code: ", 23);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v3 = &v13;
      }

      else
      {
        v3 = v13.__r_.__value_.__r.__words[0];
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      sub_4A5C(v2, v3, size);
      sub_1959680(&v11, __p);
      sub_7E854(__p, 3u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(&v11);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v12 & 0x80u) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = *&v11.__val_;
    }

    if ((v12 & 0x80u) == 0)
    {
      cat = v12;
    }

    else
    {
      cat = v11.__cat_;
    }

    v8 = sub_2D390(exception, v6, cat);
  }

  return 0;
}

void sub_EBB540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EBB5E8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v5 = sub_EBFC40(a1, a2);
    a1[1] = v5;
    return v5 - 32;
  }

  else
  {
    sub_EBFDD4(a1, a1[1], a2);
    a1[1] = v3 + 32;
    a1[1] = v3 + 32;
    return v3;
  }
}

void sub_EBB65C(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sub_14A5204(a3, 0, 0);
  v6 = v5[4];
  v5[4] = v6 | 1;
  v5[6] = a1;
  if (a2 != 0x7FFFFFFF)
  {
    v5[4] = v6 | 3;
    v5[7] = a2;
  }
}

uint64_t sub_EBB6B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7)
{
  v13 = sub_9274F4(*a1, a3);
  *(a7 + 16) |= 2u;
  v14 = *(a7 + 8);
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  sub_194EA1C((a7 + 32), v13, v15);
  sub_64B998(v22);
  v16 = *(a4 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a4 + 8);
  }

  if (v16)
  {
    sub_EBE908(a1, a2, a4, a5, v22);
  }

  sub_64C184(v22, v13);
  if (a6)
  {
    sub_64C06C(v22, "{VehicleName}");
  }

  *(a7 + 16) |= 8u;
  v17 = *(a7 + 48);
  if (!v17)
  {
    v18 = *(a7 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_14BAE64(v19);
    v17 = v20;
    *(a7 + 48) = v20;
  }

  sub_64D110(v22, v17);
  return sub_53A868(v22);
}

void sub_EBB82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A868(&a16);
    _Unwind_Resume(a1);
  }

  sub_53A868(&a16);
  _Unwind_Resume(a1);
}

void **sub_EBB868(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_14A52AC(v3 - 32);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_EBB8C4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = sub_74700();
  cat = v6->__cat_;
  result = sub_7E7E4(3u);
  if (cat == &off_2669FE0)
  {
    if (!result)
    {
      goto LABEL_75;
    }

    sub_19594F8(&v46);
    LODWORD(v43) = sub_7421C(v8);
    sub_7230C(&v43, __p);
    if (v45 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v45 >= 0)
    {
      v23 = HIBYTE(v45);
    }

    else
    {
      v23 = __p[1];
    }

    v24 = sub_4A5C(&v46, v22, v23);
    v25 = sub_4A5C(v24, " failed (SubError: ", 19);
    std::error_condition::message(&v42, v6);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v42;
    }

    else
    {
      v26 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    v28 = sub_4A5C(v25, v26, size);
    v29 = sub_4A5C(v28, "): ", 3);
    v30 = sub_73F1C(v8);
    v31 = *(v30 + 23);
    if (v31 >= 0)
    {
      v32 = v30;
    }

    else
    {
      v32 = *v30;
    }

    if (v31 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    sub_4A5C(v29, v32, v33);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
LABEL_40:
        v34 = v56;
        if ((v56 & 0x10) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_62;
      }
    }

    else if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    operator delete(__p[0]);
    v34 = v56;
    if ((v56 & 0x10) == 0)
    {
LABEL_41:
      if ((v34 & 8) == 0)
      {
        v35 = 0;
        HIBYTE(v45) = 0;
LABEL_70:
        *(__p + v35) = 0;
        sub_7E854(__p, 3u);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p[0]);
        }

        if (v54 < 0)
        {
          operator delete(v53);
        }

        std::locale::~locale(&v48);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_75:
        v41 = sub_3AF4C0(v7);
        sub_21E2C18(v41, 1, *(v4 + 60));
      }

      v40 = v49;
      v35 = v50 - v49;
      if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }

LABEL_65:
      if (v35 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v45) = v35;
      if (v35)
      {
        memmove(__p, v40, v35);
      }

      goto LABEL_70;
    }

LABEL_62:
    v39 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v39 = v52;
    }

    v40 = v51;
    v35 = v39 - v51;
    if (v39 - v51 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_77;
    }

    goto LABEL_65;
  }

  if (!result)
  {
    goto LABEL_57;
  }

  sub_19594F8(&v46);
  LODWORD(v42.__r_.__value_.__l.__data_) = sub_7421C(v8);
  sub_7230C(&v42, __p);
  if (v45 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v45 >= 0)
  {
    v12 = HIBYTE(v45);
  }

  else
  {
    v12 = __p[1];
  }

  v13 = sub_4A5C(&v46, v11, v12);
  sub_4A5C(v13, " failed (ErrorCode: ", 20);
  v14 = std::ostream::operator<<();
  v15 = sub_4A5C(v14, "): ", 3);
  v16 = sub_73F1C(v8);
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  sub_4A5C(v15, v18, v19);
  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    v20 = v56;
    if ((v56 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    v36 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v36 = v52;
    }

    v37 = v51;
    v21 = v36 - v51;
    if (v36 - v51 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

LABEL_47:
    if (v21 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v45) = v21;
    if (v21)
    {
      memmove(__p, v37, v21);
    }

    goto LABEL_52;
  }

  operator delete(__p[0]);
  v20 = v56;
  if ((v56 & 0x10) != 0)
  {
    goto LABEL_44;
  }

LABEL_17:
  if ((v20 & 8) != 0)
  {
    v37 = v49;
    v21 = v50 - v49;
    if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v21 = 0;
  HIBYTE(v45) = 0;
LABEL_52:
  *(__p + v21) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  std::locale::~locale(&v48);
  std::ostream::~ostream();
  result = std::ios::~ios();
LABEL_57:
  val = v6->__val_;
  *(v2 + 40) |= 0x80u;
  *(v2 + 248) = val;
  return result;
}

void sub_EBDF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a32);
  sub_14AFBC8(&a22);
  sub_EBB868(&a29);
  sub_559B98(&STACK[0xAD0]);
  sub_1F1A8(v32 - 128);
  sub_1F1A8(v32 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_EBE4E0(unsigned int a1)
{
  result = 0;
  if (a1 <= 0x2C)
  {
    if (((1 << a1) & 0x61C2E17E00) != 0)
    {
      return 1;
    }

    else if (((1 << a1) & 0x100000000001) != 0)
    {
      *&v12.__val_ = a1;
      v12.__cat_ = &off_2669FE0;
      std::error_condition::message(&v14, &v12);
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v12);
        v3 = sub_4A5C(&v12, "Unexpected error code: ", 23);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = &v14;
        }

        else
        {
          v4 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v14.__r_.__value_.__l.__size_;
        }

        sub_4A5C(v3, v4, size);
        sub_1959680(&v12, __p);
        sub_7E854(__p, 3u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&v12);
      }

      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      if ((v13 & 0x80u) == 0)
      {
        v7 = &v12;
      }

      else
      {
        v7 = *&v12.__val_;
      }

      if ((v13 & 0x80u) == 0)
      {
        cat = v13;
      }

      else
      {
        cat = v12.__cat_;
      }

      v9 = sub_2D390(exception, v7, cat);
    }
  }

  return result;
}

void sub_EBE64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EBE6F4(unsigned int a1)
{
  result = 0;
  if (a1 <= 0x2C)
  {
    if (((1 << a1) & 0x408108024) != 0)
    {
      return 1;
    }

    else if (((1 << a1) & 0x100000000001) != 0)
    {
      *&v12.__val_ = a1;
      v12.__cat_ = &off_2669FE0;
      std::error_condition::message(&v14, &v12);
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v12);
        v3 = sub_4A5C(&v12, "Unexpected error code: ", 23);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v4 = &v14;
        }

        else
        {
          v4 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v14.__r_.__value_.__l.__size_;
        }

        sub_4A5C(v3, v4, size);
        sub_1959680(&v12, __p);
        sub_7E854(__p, 3u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&v12);
      }

      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      if ((v13 & 0x80u) == 0)
      {
        v7 = &v12;
      }

      else
      {
        v7 = *&v12.__val_;
      }

      if ((v13 & 0x80u) == 0)
      {
        cat = v13;
      }

      else
      {
        cat = v12.__cat_;
      }

      v9 = sub_2D390(exception, v7, cat);
    }
  }

  return result;
}

void sub_EBE860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_EBE908(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_9274F4(*a1, a3);
  sub_64C184(a5, v6);
  sub_649B9C(v7, "{toDestination}", 17);
  operator new();
}

void sub_EBFB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_4B98C4(&a11);
  if (*(v35 - 121) < 0)
  {
    operator delete(v34[4]);
    if ((*(v35 - 153) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        sub_662AC8(&a20);
        sub_5C42C0(&a34);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(__p);
      goto LABEL_8;
    }
  }

  else if ((*(v35 - 153) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v34);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_EBFC08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_EBFC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_662AC8(&a17);
  sub_5C42C0(&a31);
  _Unwind_Resume(a1);
}