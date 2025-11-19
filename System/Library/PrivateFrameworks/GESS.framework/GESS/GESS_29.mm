void sub_24BED7BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v27 - 80) = &a23;
  sub_24BCC961C((v27 - 80));
  sub_24BE7F218(&a27);
  _Unwind_Resume(a1);
}

void sub_24BED7C88(uint64_t a1@<X0>, uint64_t ***a2@<X1>, const void ****a3@<X2>, int **a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a3;
  v10 = ((**a3)[1] - ***a3) >> 2;
  LODWORD(v33) = 0;
  sub_24BD0E524(&v36, v10);
  v11 = *v9;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_24BCC9A1C(&v33, *v11, v11[1], (v11[1] - *v11) >> 2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  LODWORD(v29[0]) = 0;
  sub_24BC97D60(&v30, v29);
  v13 = *a2;
  v12 = a2[1];
  while (v13 != v12)
  {
    LODWORD(v29[0]) = sub_24BD1EEAC(v13, *(a1 + 20));
    sub_24BC97D60(&v30, v29);
    v13 += 2;
  }

  v14 = v30;
  v15 = v31;
  v16 = v30 + 4;
  if (v30 != v31 && v16 != v31)
  {
    v18 = *v30;
    do
    {
      v18 += *v16;
      *v16++ = v18;
    }

    while (v16 != v15);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v20 = *a4;
  v19 = a4[1];
  if (v20 != v19)
  {
    do
    {
      v21 = v30 + 4 * *v20;
      v22 = v36;
      v36[*(a1 + 20)] = *v21;
      *(v33 + *(a1 + 20)) = v21[1];
      v27 = 0;
      v28 = 0;
      v26 = 0;
      sub_24BCC9A1C(&v26, v22, v37, (v37 - v22) >> 2);
      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_24BCC9A1C(&__p, v33, v34, (v34 - v33) >> 2);
      sub_24BEA8020(v9, &v26, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v29);
      sub_24BCE1720(a5, v29);
      sub_24BE7F218(v29);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      ++v20;
    }

    while (v20 != v19);
    v14 = v30;
  }

  if (v14)
  {
    v31 = v14;
    operator delete(v14);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void sub_24BED7E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    *(v22 - 64) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BED7F28(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  sub_24BC94F74(&__p, (*(a4 + 8) - *a4) >> 2);
  v8 = __p;
  v9 = v26;
  if (__p != v26)
  {
    v10 = 0;
    v11 = (v26 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  v17 = 126 - 2 * __clz(v9 - v8);
  v24[0] = a4;
  if (v9 == v8)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_24BEEF480(v8, v9, v24, v18, 1);
  memset(v24, 0, sizeof(v24));
  v19 = *a2;
  if (a2[1] != *a2)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      if (v22 >= ((*(a4 + 8) - *a4) >> 2) || (v23 = *(__p + v22), v21 != *(*a4 + 4 * v23)))
      {
        sub_24BEA52D0((v19 + v20), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      sub_24BE811EC(v24, (*a3 + 16 * v23));
      ++v22;
      ++v21;
      v19 = *a2;
      v20 += 16;
    }

    while (v21 < (a2[1] - *a2) >> 4);
  }

  sub_24BEAA09C(v24, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED819C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char *a16)
{
  sub_24BE7F218(&a16);
  a16 = &a10;
  sub_24BCC961C(&a16);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BED81EC(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1] - *a3;
  if (!v6)
  {
LABEL_6:
    sub_24BEAA09C(a2, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v8 = 0;
  v9 = v6 >> 2;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  while (1)
  {
    v11 = *v5++;
    v10 = v11;
    if ((v11 & 0x80000000) == 0)
    {
      break;
    }

    v8 += 2;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  memset(v23, 0, sizeof(v23));
  sub_24BD1EEAC(&(*a2)[v8], v10);
  v12 = *(a1 + 20);
  if (v12 < v10)
  {
    v13 = v12;
  }

  else
  {
    v13 = (v12 + 1);
  }

  v14 = (*a2)[v8];
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  v15 = *a3;
  if (a3[1] == *a3)
  {
LABEL_19:
    sub_24BEAA09C(v23, v13, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = v15[v17];
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    if (v10 != v18)
    {
      sub_24BEACB34(&(*a2)[v16], v18, v10, *(a1 + 8), *(a1 + 16) | 0x100000000, v24);
      sub_24BCE1720(v23, v24);
      v20 = v24;
      goto LABEL_17;
    }

    sub_24BE811EC(v23, &(*a2)[v16]);
LABEL_18:
    ++v17;
    v15 = *a3;
    v16 += 2;
    if (v17 >= a3[1] - *a3)
    {
      goto LABEL_19;
    }
  }

  v19 = sub_24BD1EEAC(&(*a2)[v16], *(a1 + 20));
  *(__p[0] + v13) = v19;
  sub_24BEA5B3C(&(*a2)[v16], v10, *(a1 + 8), *(a1 + 16) | 0x100000000, &v21);
  sub_24BEA4DE0(&v21, __p, *(a1 + 8), *(a1 + 16) | 0x100000000, v24);
  sub_24BCE1720(v23, v24);
  sub_24BE7F218(v24);
  v20 = &v21;
LABEL_17:
  sub_24BE7F218(v20);
  goto LABEL_18;
}

void sub_24BED8524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char *a13, char *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a21;
  sub_24BCC961C(&__p);
  sub_24BE7F218(&a19);
  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  a13 = &a16;
  sub_24BCC961C(&a13);
  _Unwind_Resume(a1);
}

void sub_24BED862C(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_24BECB2C0(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  memset(v7, 0, sizeof(v7));
  sub_24BCC9984(v7, v9, &v10, 1uLL);
  sub_24BEEF168(a4, v7, a3);
  v8 = v7;
  sub_24BCC961C(&v8);
  sub_24BE7F218(v9);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BED86F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BED8720@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_24BCC9548(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

uint64_t sub_24BED873C@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_24BCC9548(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

void sub_24BED8820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED8864(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, int **a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = ((*a1)[1] - **a1) >> 2;
  LODWORD(v36) = 0;
  sub_24BD0E524(&v35, v7);
  v8 = *a1;
  memset(v34, 0, sizeof(v34));
  sub_24BCC9A1C(v34, *v8, v8[1], (v8[1] - *v8) >> 2);
  v9 = *a1;
  memset(v33, 0, sizeof(v33));
  sub_24BCC9A1C(v33, *v9, v9[1], (v9[1] - *v9) >> 2);
  v10 = ((*a1)[1] - **a1) >> 2;
  if (v10 - 1 >= 2)
  {
    v11 = *a5;
    v12 = (v35 + 4);
    v13 = (v34[0] + 4);
    v14 = (v33[0] + 4);
    v15 = v10 - 2;
    do
    {
      *v14++ += 2 * *v11;
      *v13++ += *v11;
      v16 = *v11++;
      *v12++ += v16;
      --v15;
    }

    while (v15);
  }

  v36 = 1;
  sub_24BEF03F8(&v32, v10);
  v17 = (*a1)[1] - **a1;
  v18 = (v17 >> 2) - 2;
  if (((v17 >> 2) - 2) >= 0)
  {
    v19 = v32;
    v20 = *(v32 + 8 * v18 + 8);
    v21 = v33[0] + 4;
    do
    {
      v20 *= *(v21 + 4 * v18);
      *(v19 + 8 * v18--) = v20;
    }

    while (v18 != -1);
  }

  LODWORD(v36) = 0;
  sub_24BD0E524(&v30, (v17 >> 2) - 2);
  if (v30 != v31)
  {
    v22 = 0;
    v23 = (v31 - v30 - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v26 = (v30 + 8);
    do
    {
      v27 = vdupq_n_s64(v22);
      v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v28, *v24.i8).u8[0])
      {
        *(v26 - 2) = v22 + 1;
      }

      if (vuzp1_s16(v28, *&v24).i8[2])
      {
        *(v26 - 1) = v22 + 2;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_24BFBC5E0)))).i32[1])
      {
        *v26 = v22 + 3;
        v26[1] = v22 + 4;
      }

      v22 += 4;
      v26 += 4;
    }

    while (v25 != v22);
  }

  v29 = (*a1)[7];
  sub_24BCD0924();
}

void sub_24BED8F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v44);
  sub_24BE7F218(&a19);
  sub_24BE7F218(&a29);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  sub_24BE7F218(&a44);
  v47 = *(v45 - 256);
  if (v47)
  {
    *(v45 - 248) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 232);
  if (v48)
  {
    *(v45 - 224) = v48;
    operator delete(v48);
  }

  v49 = *(v45 - 208);
  if (v49)
  {
    *(v45 - 200) = v49;
    operator delete(v49);
  }

  v50 = *(v45 - 184);
  if (v50)
  {
    *(v45 - 176) = v50;
    operator delete(v50);
  }

  v51 = *(v45 - 160);
  if (v51)
  {
    *(v45 - 152) = v51;
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BED910C@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t ***a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a2;
  v6 = *a3;
  v64[0] = result;
  v8 = *a4;
  v7 = *(a4 + 8);
  if (*a4 != v7)
  {
    v9 = result;
    v51 = *(a4 + 8);
    while (1)
    {
      if (!*v8)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        sub_24BCC9A1C(&v61, *(result + 24), *(result + 32), (*(result + 32) - *(result + 24)) >> 2);
        v58 = 0;
        v59 = 0;
        v60 = 0;
        sub_24BCC9A1C(&v58, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 2);
        v20 = v61;
        v21 = v62;
        if (v62 == v61)
        {
          v29 = (v62 - v61) >> 2;
        }

        else
        {
          v22 = 0;
          do
          {
            v23 = *(*(v9 + 72) + 4 * v22);
            v24 = sub_24BD1EEAC(v5 + 2, v22 + 1);
            *(v61 + 4 * v22) = (v24 - 1) * v23 - *(*(v9 + 24) + 4 * v22);
            v25 = *(*(v9 + 96) + 4 * v22);
            v26 = sub_24BD1EEAC(v5, v22 + 1);
            v27 = *(*(v9 + 48) + 4 * v22);
            v28 = sub_24BD1EEAC(v6, v22 + 1);
            v58[v22] = v27 - v27 * v28 + (v26 - 1) * v25 + *(*(v9 + 24) + 4 * v22);
            v20 = v61;
            v21 = v62;
            v29 = (v62 - v61) >> 2;
            ++v22;
          }

          while (v29 > v22);
        }

        if (v20 == v21)
        {
          v30 = 0;
        }

        else
        {
          LOBYTE(v30) = 0;
          v31 = v20;
          do
          {
            v32 = *v31++;
            v30 = v30 & 1 | (v32 >> 31);
          }

          while (v31 != v21);
        }

        for (i = v58; i != v59; ++i)
        {
          v34 = *i;
          v30 = v30 & 1 | (v34 >> 31);
        }

        v55 = 0;
        v56 = 0;
        v57 = 0;
        sub_24BCC9A1C(&v55, v20, v21, v29);
        v52 = 0;
        v53 = 0;
        v54 = 0;
        sub_24BCC9A1C(&v52, v58, v59, v59 - v58);
        if (v30)
        {
          v35 = v55;
          v36 = v56;
          while (v35 != v36)
          {
            *v35 &= ~(*v35 >> 31);
            ++v35;
          }

          v37 = v52;
          v38 = v53;
          while (v37 != v38)
          {
            *v37 &= ~(*v37 >> 31);
            ++v37;
          }
        }

        sub_24BED9FE8(v64, v5 + 2, 0, 1, 0xFFFFFFFFLL);
      }

      if (*v8 == 1)
      {
        break;
      }

      if (++v8 == v7)
      {
        return result;
      }
    }

    v10 = *(result + 96);
    v11 = *(result + 104);
    v12 = v11 - v10;
    if (v11 == v10)
    {
      goto LABEL_15;
    }

    v13 = 0;
    v14 = v12 >> 2;
    v15 = v14 <= 1 ? 1 : v14;
    v16 = 1;
    do
    {
      v17 = *(v10 + 4 * v13) == 1 && *(*(result + 72) + 4 * v13) == 1;
      v16 &= v17;
      ++v13;
    }

    while (v15 != v13);
    if (v16)
    {
LABEL_15:
      if ((*(result + 124) & 1) == 0)
      {
        if (*(result + 120) == 1)
        {
          v18 = *(result + 8);
          v19 = *(result + 16) | 0x100000000;
          sub_24BED8864(v5, (v5 + 2), v6, result + 48, (result + 24));
        }

LABEL_44:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        sub_24BCC9A1C(&v61, *(result + 24), *(result + 32), (*(result + 32) - *(result + 24)) >> 2);
        v58 = 0;
        v59 = 0;
        v60 = 0;
        sub_24BCC9A1C(&v58, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 2);
        if (v59 != v58)
        {
          v43 = 0;
          do
          {
            v44 = *(*(v9 + 96) + 4 * v43);
            v45 = sub_24BD1EEAC(v5, v43 + 1);
            v46 = *(*(v9 + 48) + 4 * v43);
            v47 = sub_24BD1EEAC(v6, v43 + 1);
            v48 = *(*(v9 + 72) + 4 * v43);
            v49 = sub_24BD1EEAC(v5 + 2, v43 + 1);
            v50 = v58;
            v58[v43] = (v49 - 1) * v48 + (v47 - 1) * v46 - (*(*(v9 + 24) + 4 * v43) + (v45 - 1) * v44);
            ++v43;
          }

          while (v43 < (v59 - v50) >> 2);
        }

        sub_24BEAD410(v6, 0, 0xFFFFFFFFLL, *(v9 + 8), *(v9 + 16) | 0x100000000);
      }
    }

    else if ((*(result + 124) & 1) == 0)
    {
      goto LABEL_44;
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    sub_24BCC9A1C(&v61, *(result + 24), *(result + 32), (*(result + 32) - *(result + 24)) >> 2);
    if (v62 != v61)
    {
      v39 = 0;
      do
      {
        v40 = *(*(v9 + 72) + 4 * v39);
        v41 = sub_24BD1EEAC(v5 + 2, v39 + 1);
        v42 = v61;
        *(v61 + 4 * v39) = (v41 - 1) * v40 - *(*(v9 + 24) + 4 * v39);
        ++v39;
      }

      while (v39 < (v62 - v42) >> 2);
    }

    sub_24BED9FE8(v64, v6, -1, 0, 0xFFFFFFFFLL);
  }

  return result;
}

void sub_24BED9C6C(_Unwind_Exception *a1)
{
  sub_24BE7F218(v2 - 128);
  *(v2 - 128) = v1;
  sub_24BCC961C((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24BED9FE8(void *a1, const void ***a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = (*a1 + 120);
  if (*v7 >= 2)
  {
    v11 = *a2;
    v20 = 0uLL;
    v19 = 0;
    sub_24BCC9A1C(&v19, *v11, v11[1], (v11[1] - *v11) >> 2);
    v12 = (((v20 - v19) >> 2) - 1) & (a3 >> 31);
    sub_24BEAAF40(&v19, v19 + 4 * v12, v7);
    v13 = v19;
    *(v19 + v12 + 1) /= *(v6 + 120);
    __p = v13;
    v17 = v20;
    v20 = 0uLL;
    v19 = 0;
    sub_24BEA4500(a2, &__p, *(v6 + 8), *(v6 + 16) | 0x100000000, v18);
    sub_24BEAD410(v18, a4, a5, *(v6 + 8), *(v6 + 16) | 0x100000000);
  }

  v14 = *(v6 + 8);
  v15 = *(v6 + 16) | 0x100000000;

  sub_24BEAD410(a2, 0, 0xFFFFFFFFLL, v14, v15);
}

void sub_24BEDA190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_24BE7F218(&a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BEDA1E4(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 24;
  v7 = *(a2 + 24);
  if (v6 != *(v8 + 8) - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56) - v9;
  v11 = *(a2 + 48);
  if (v10 != *(a2 + 56) - v11)
  {
    return 0;
  }

  if (!memcmp(v9, v11, v10) && (v12 = *(a1 + 72), v13 = *(a1 + 80) - v12, v14 = *(a2 + 72), v13 == *(a2 + 80) - v14) && !memcmp(v12, v14, v13) && (v15 = *(a1 + 96), v16 = *(a1 + 104) - v15, v17 = *(a2 + 96), v16 == *(a2 + 104) - v17) && !memcmp(v15, v17, v16) && *(a1 + 120) == *(a2 + 120))
  {
    return *(a1 + 124) == *(a2 + 124);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BEDA2B0@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_24BCC9548(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

uint64_t sub_24BEDA2CC@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_24BCC9548(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

void sub_24BEDA2E8(uint64_t a1, uint64_t ***a2)
{
  v3[8] = *MEMORY[0x277D85DE8];
  v2 = (*a2)[1];
  v3[0] = **a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA48EC(v3, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDA3CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void **);
  sub_24BCC961C(va1);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDA428(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  sub_24BEB85C8(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDA520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDA674(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  sub_24BEB9694(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDA740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDA830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDA860(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X2>, int **a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1] - 16 * *(a1 + 20);
  memset(v17, 0, sizeof(v17));
  sub_24BEF04D0(v17, v9, v10, (v10 - v9) >> 4);
  v11 = *(a1 + 48);
  if (!v11)
  {
    sub_24BCA1F3C();
  }

  (*(*v11 + 48))(v16);
  v13 = *a3;
  v12 = a3[1];
  while (v13 != v12)
  {
    sub_24BE811EC(v16, v13++);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_24BE9CDA0(a5, a4[1] - *a4);
  v15 = *a4;
  v14 = a4[1];
  while (v15 != v14)
  {
    sub_24BE811EC(a5, &v16[0][2 * *v15++]);
  }

  v18 = v16;
  sub_24BCC961C(&v18);
  v16[0] = v17;
  sub_24BCC961C(v16);
}

void sub_24BEDA998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void ***a16)
{
  sub_24BCC961C(&a16);
  a16 = &a10;
  sub_24BCC961C(&a16);
  a10 = &a13;
  sub_24BCC961C(&a10);
  _Unwind_Resume(a1);
}

void sub_24BEDA9E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1] - 16 * *(a1 + 20);
  memset(v10, 0, sizeof(v10));
  sub_24BEF04D0(v10, v7, v8, (v8 - v7) >> 4);
  v9 = *(a1 + 80);
  if (!v9)
  {
    sub_24BCA1F3C();
  }

  (*(*v9 + 48))(v9, v10, a3, a4);
  v11 = v10;
  sub_24BCC961C(&v11);
}

void sub_24BEDAA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_24BCC961C(&a12);
  _Unwind_Resume(a1);
}

void sub_24BEDAAB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1] - 16 * *(a1 + 20);
  v7 = v6 - *a2;
  memset(v15, 0, sizeof(v15));
  sub_24BEF04D0(v15, v5, v6, v7 >> 4);
  v8 = *a3;
  v9 = a3[1] - 4 * *(a1 + 20);
  v10 = (v9 - *a3) >> 2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BEA2D98(&__p, v8, v9, v10);
  v11 = *(a1 + 112);
  if (!v11)
  {
    sub_24BCA1F3C();
  }

  (*(*v11 + 48))(v11, v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  __p = v15;
  sub_24BCC961C(&__p);
}

void sub_24BEDAB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

void *sub_24BEDABD0@<X0>(void *a1@<X1>, void *a2@<X2>, int **a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v10 = *v5;
      if (v10 >= (a2[1] - *a2) >> 4)
      {
        sub_24BEA52D0((*a1 + 16 * v10), a1, v4);
      }

      result = sub_24BE811EC(a4, (*a2 + 16 * v10));
      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_24BEDAC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_24BE7F218(&a9);
  sub_24BCC961C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDACAC@<X0>(uint64_t result@<X0>, void **a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a4 != *(a4 + 8))
  {
    if (**a4)
    {
      sub_24BEA3FE8(*a3, *a2, *(result + 8), *(result + 16) | 0x100000000);
    }

    sub_24BEB2920(*a3, *a2 + 2, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BE7F218(va);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDAE4C@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    sub_24BEA52D0((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDAFA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDB090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v16 + 16);
  sub_24BE7F218(&a16);
  _Unwind_Resume(a1);
}

void sub_24BEDB0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = *MEMORY[0x277D85DE8];
  v4[0] = a4;
  v4[1] = a3;
  v4[2] = a2;
  v4[3] = a1;
  sub_24BEDB23C(v4, 0);
}

void sub_24BEDB204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

void sub_24BEDB23C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (*(**a1 + 4 * a2))
  {
    sub_24BEA3FE8((**(a1 + 8) + 16 * a2), **(a1 + 16), *(v2 + 8), *(v2 + 16) | 0x100000000);
  }

  v3 = *(a1 + 16);
  v4 = (**(a1 + 8) + 16 * a2);
  v5 = *(v2 + 8);
  v6 = (*v3 + 16);
  v7 = *(v2 + 16) | 0x100000000;

  sub_24BEB2920(v4, v6, v5, v7);
}

void sub_24BEDB360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

void sub_24BEDB394(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEB2920(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDB4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void *sub_24BEDB520@<X0>(void *result@<X0>, void **a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a4;
  v6 = *(a4 + 8);
  if (*a4 != v6)
  {
    v9 = result;
    do
    {
      if (*v5)
      {
        sub_24BEB2920(*a2, *a2 + 2, v9[1], *(v9 + 4) | 0x100000000);
      }

      result = sub_24BE811EC(a5, *a3);
      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_24BEDB648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEDB698(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11[0] = a4;
  v11[1] = a3;
  v11[2] = a2;
  v11[3] = a1;
  sub_24BEDB7F8(v11, 0, &v10);
  if (a4[1] - *a4 >= 5uLL)
  {
    sub_24BEDB7F8(v11, 1u, &v9);
    sub_24BEA3D40(&v10, &v9, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v12 = v10;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_24BCC9984(a5, &v12, v13, 1uLL);
  sub_24BE7F218(&v12);
  sub_24BE7F218(&v10);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_24BEDB7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDB7F8@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>)
{
  if (*(**result + 4 * a2))
  {
    sub_24BEB2920(**(result + 16), (**(result + 16) + 16), *(*(result + 24) + 8), *(*(result + 24) + 16) | 0x100000000);
  }

  v3 = *(**(result + 8) + 16 * a2);
  *a3 = v3;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BEDB90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

void sub_24BEDB934(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEB7A34(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDBA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEDBAC0(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEADA04(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDBBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDBC4C@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    sub_24BEA52D0((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDBD08(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  sub_24BF02B58(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BEA51FC(__p);
}

void sub_24BEDBDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDBE20(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BEDBF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  sub_24BE7F218(v2 - 56);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  sub_24BE7F218(va3);
  _Unwind_Resume(a1);
}

void sub_24BEDC0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDC0D0(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BEDC208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_24BE7F218(va3);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BEDC260(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BEDC3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  sub_24BE7F218(v2 - 56);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  sub_24BE7F218(va3);
  _Unwind_Resume(a1);
}

void sub_24BEDC4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDC5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDC5C8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  sub_24BEB6BDC(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDC694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDC784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDC7B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *(**a5 + 56);
  sub_24BCCBB70();
}

void sub_24BEDC8A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDC8E0(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  sub_24BEB6BDC(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDC9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDCA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

BOOL sub_24BEDCACC(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 24;
  v7 = *(a2 + 24);
  return v6 == *(v8 + 8) - v7 && !memcmp(v4, v7, v6) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49);
}

void sub_24BEDCB38(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_24BD7E680(&v21, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 3);
  v6 = *v4;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_24BCC9A1C(&v18, *v6, v6[1], (v6[1] - *v6) >> 2);
  if ((v5 & 0x80000000) == 0)
  {
    v7 = v21;
    v8 = v22;
    if (v21 != v22)
    {
      v9 = *(a1 + 49);
      v10 = v18;
      do
      {
        v11 = *v7;
        if (*v7 >= v5)
        {
          *v7 = ++v11;
        }

        if (v9)
        {
          v12 = *(v10 + 4 * v11);
          v13 = v12 / 2;
          v14 = 2 * v12 - 2;
          if (*(a1 + 48) != 1)
          {
            v14 = v13 + 1;
          }

          *(v10 + 4 * v11) = v14;
        }

        ++v7;
      }

      while (v7 != v8);
    }
  }

  memset(v17, 0, sizeof(v17));
  sub_24BCC9A1C(v17, v18, v19, (v19 - v18) >> 2);
  if (*(a1 + 49) == 1 && (*(a1 + 48) & 1) != 0)
  {
    v15 = &qword_24BFBF988;
  }

  else
  {
    v15 = &qword_24BFF0468;
  }

  v16 = *v15;
  sub_24BEF0568();
}

void sub_24BEDCDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a25;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v26 - 88);
  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v26 - 104);
  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (a18)
  {
    sub_24BC9EC78(a18);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  v28 = v25[3];
  if (v28)
  {
    v25[4] = v28;
    operator delete(v28);
  }

  v29 = v25[6];
  if (v29)
  {
    v25[7] = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDCEC4(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X8>)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v37 = 0;
  v38 = 0;
  v36 = 0;
  sub_24BEF06AC(&v36, v8, v9, (v9 - v8) >> 3);
  v10 = *(a1 + 48);
  if (*(a1 + 49) == 1)
  {
    if (*(a1 + 48))
    {
      sub_24BE9BD54(*a3, &v36, *(a1 + 8), *(a1 + 16) | 0x100000000, &v35);
      v11 = (*(v35 + 8) - *v35) >> 2;
      LODWORD(v39) = 0;
      sub_24BD0E524(&v41, v11);
      v12 = *v7;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      sub_24BCC9A1C(&v32, *v12, v12[1], (v12[1] - *v12) >> 2);
      v30 = 0;
      v31 = 0;
      v29 = 0;
      sub_24BCC9A1C(&v29, v41, v42, (v42 - v41) >> 2);
      __p = 0;
      v27 = 0;
      v28 = 0;
      sub_24BCC9A1C(&__p, v32, v33, (v33 - v32) >> 2);
      sub_24BEA8020(&v35, &v29, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, &v39);
      v13 = v39;
      v39 = 0uLL;
      v14 = *(&v35 + 1);
      v35 = v13;
      if (v14)
      {
        sub_24BC9EC78(v14);
      }

      sub_24BE7F218(&v39);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      v24 = 0;
      v25 = 0;
      v23 = 0;
      sub_24BCC9A1C(&v23, *v35, *(v35 + 8), (*(v35 + 8) - *v35) >> 2);
      v15 = v23;
      *(v23 + *(*(a1 + 32) - 8)) -= 2;
      memset(v22, 0, sizeof(v22));
      sub_24BCC9A1C(v22, v15, v24, (v24 - v15) >> 2);
      v16 = *(a1 + 8);
      v17 = *(a1 + 16) | 0x100000000;
      sub_24BEDD5D8(v22);
    }

    v39 = 0uLL;
    v40 = 0;
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    while (v18 != v19)
    {
      sub_24BC97D60(&v39, (**v7 + 4 * *v18++));
    }

    sub_24BE9BC9C(*a3, &v39, &v36, *(a1 + 8), *(a1 + 16) | 0x100000000, v21);
    sub_24BEA3B14(v21, *(*v7 + 14), *(a1 + 8), *(a1 + 16) | 0x100000000, &v41);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    sub_24BCC9984(a4, &v41, v43, 1uLL);
    sub_24BE7F218(&v41);
    sub_24BE7F218(v21);
    if (v39)
    {
      *(&v39 + 1) = v39;
      operator delete(v39);
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      sub_24BE9BE34(*a3, &v36, *(a1 + 8), *(a1 + 16) | 0x100000000, &v39);
    }

    else
    {
      sub_24BE9BD54(*a3, &v36, *(a1 + 8), *(a1 + 16) | 0x100000000, &v39);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    sub_24BCC9984(a4, &v39, &v40, 1uLL);
    sub_24BE7F218(&v39);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_24BEDD428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_24BE7F218(v38 - 96);
  sub_24BE7F218(&a10);
  v40 = *(v38 - 144);
  if (v40)
  {
    *(v38 - 136) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 176);
  if (v41)
  {
    *(v38 - 168) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDD5D8(uint64_t a1)
{
  *__p = *a1;
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_24BE80D1C();
  sub_24BCCBB70();
}

void sub_24BEDD694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDD6C8(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((*(a1 + 48) & *(a1 + 49)) != 0)
  {
    sub_24BE9C008(v5, *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_24BCC9984(a3, v7, &v8, 1uLL);
  }

  else if (*(a1 + 49))
  {
    sub_24BE9BF28(v5, *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_24BCC9984(a3, v7, &v8, 1uLL);
  }

  else
  {
    if (*(a1 + 48))
    {
      sub_24BE9BE48(v5, *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
    }

    else
    {
      sub_24BE9BD68(v5, *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_24BCC9984(a3, v7, &v8, 1uLL);
  }

  sub_24BE7F218(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEDD820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDD910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDD9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDDABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDDAD8@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_24BCC9548(a2, *a1, a1[1], (a1[1] - *a1) >> 4);
}

void sub_24BEDDAF4(uint64_t a1, uint64_t ***a2)
{
  __p[11] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **a2;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  v4 = (*v2)[7];
  operator new();
}

void sub_24BEDDCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_24BCC961C(&a20);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a18);
  _Unwind_Resume(a1);
}

void sub_24BEDDD60(uint64_t a1, uint64_t a2, int **a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *a2 + 16;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  sub_24BEF04D0(&v30, v7, v5, (v5 - v7) >> 4);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_24BCC9A1C(&v27, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  memset(v26, 0, sizeof(v26));
  sub_24BCC9A1C(v26, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v8 = *a3;
  v9 = a3[1];
  v10 = (*a3 + 1);
  v11 = **a3;
  if (v10 != v9)
  {
    v12 = (*a3 + 1);
    do
    {
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      ++v12;
      ++v10;
    }

    while (v12 != v9);
    v10 = a3[1];
  }

LABEL_6:
  if (v9 == v10)
  {
    if (v11 < 0)
    {
      LODWORD(v13) = -1;
    }

    else
    {
      LODWORD(v13) = **a3;
    }
  }

  else
  {
    v13 = *v10;
    if ((v9 - v8) >= 5)
    {
      v14 = 0;
      v15 = 1;
      while (1)
      {
        v16 = v8[v15];
        if (v13 != v16)
        {
          break;
        }

        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

LABEL_18:
        ++v15;
        v8 = *a3;
        v14 += 2;
        if (v15 >= a3[1] - *a3)
        {
          goto LABEL_23;
        }
      }

      if ((v16 & 0x80000000) != 0)
      {
LABEL_14:
        sub_24BEA5B3C(&v30[v14], v13, *(a1 + 8), *(a1 + 16) | 0x100000000, v25);
      }

      else
      {
        sub_24BEACB34(&v30[v14], v16, v13, *(a1 + 8), *(a1 + 16) | 0x100000000, v25);
      }

      v17 = *v25;
      v25[0] = 0;
      v25[1] = 0;
      v18 = v30[v14 + 1];
      *&v30[v14] = v17;
      if (v18)
      {
        sub_24BC9EC78(v18);
      }

      sub_24BE7F218(v25);
      goto LABEL_18;
    }
  }

LABEL_23:
  if (v30 == v31)
  {
    if (v11 < 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v19 = (*(*v30 + 8) - **v30) >> 2;
    if (v11 < 0)
    {
      goto LABEL_35;
    }
  }

  v20 = v27;
  v21 = v28;
  while (v20 != v21)
  {
    if (*v20 >= *v8)
    {
      ++*v20;
    }

    ++v20;
  }

  if (v9 != v10)
  {
    v22 = sub_24BD1EEAC(v6, *v8);
    sub_24BEA36B8(0, v22, *(a1 + 8), *(a1 + 16) | 0x100000000, v24);
  }

  v23 = v26[0];
  LODWORD(v25[0]) = sub_24BD1EEAC(v6, v13);
  sub_24BEA7474(v26, &v23[4 * v13], v25);
LABEL_35:
  sub_24BEBC9A8(v6, &v30, &v27, v26, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDE220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  sub_24BE7F218(&a11);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  v29 = a26;
  if (a26)
  {
    *(v26 + 8) = a26;
    operator delete(v29);
  }

  a26 = (v27 - 144);
  sub_24BCC961C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDE310@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, unsigned int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    v4 = result;
    v5 = **a3;
    if (v5 >= 1)
    {
      v6 = (*a2)[2 * v5];
      v7 = *(v4 + 8);
      v8 = v6[7] & 0xFFFFFFFFFFLL;
      v9 = *(v4 + 16) | 0x100000000;
      sub_24BEA51FC(v6);
    }

    sub_24BEA52D0(*a2, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDE44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEDE4AC(uint64_t a1, void *a2, uint64_t ***a3, void *a4)
{
  v9[5] = *MEMORY[0x277D85DE8];
  if (a4[1] - *a4 <= 4uLL && !**a4)
  {
    v6 = a2[1];
    v7 = *a2 + 16;
    memset(v9, 0, 24);
    sub_24BEF04D0(v9, v7, v6, (v6 - v7) >> 4);
    sub_24BEBC9A8(*a3, v9, (a1 + 24), a1 + 48, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[gather] Cannot calculate JVP with respect to indices.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEDE5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_24BE7F218(&a12);
  a12 = &a9;
  sub_24BCC961C(&a12);
  _Unwind_Resume(a1);
}

BOOL sub_24BEDE620(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11))
  {
    return memcmp(v9, v11, v10) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_24BEDE690(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEADF58(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDE7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDE81C@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    sub_24BEA52D0((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDE8D8(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  sub_24BF02B58(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BEA51FC(__p);
}

void sub_24BEDE998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDE9CC(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEA5D70(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDEAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDEB58@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    sub_24BEA52D0((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDEC14(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  sub_24BF02B58(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BEA51FC(__p);
}

void sub_24BEDECD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDED08(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BEF0720();
}

void sub_24BEDEDD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDEE9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDEF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDEFAC(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEAE200(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDF0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDF138@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    sub_24BEA52D0((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDF1F4(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  sub_24BF02B58(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BEA51FC(__p);
}

void sub_24BEDF2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDF2E8(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEAE4A8(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEDF410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEDF474@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    sub_24BEA52D0((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEDF530(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  sub_24BF02B58(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BEA51FC(__p);
}

void sub_24BEDF5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDF784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

void sub_24BEDF7BC(uint64_t a1, uint64_t ***a2)
{
  __p[11] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **a2;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  v4 = (*v2)[7];
  operator new();
}

void sub_24BEDF988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  sub_24BCC961C(&a21);
  sub_24BE7F218(v21 - 72);
  a21 = &a10;
  sub_24BCC961C(&a21);
  sub_24BE7F218(v21 - 88);
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEDFA28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(**a2 + 56);
  v4 = *a3;
  sub_24BCCBB70();
}

void sub_24BEDFB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDFC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDFD08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDFDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEDFEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEDFFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEDFFC0(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEB0598(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE00E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEE0210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEE02D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE02F4(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEAEF38(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE041C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEE0480(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = (*a2)[1];
  v7[0] = **a2;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6[0] = v5;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BEB02F0(v7, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE0618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BEE0690(uint64_t a1, void **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = (*a2)[1];
  v7[0] = **a2;
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6[0] = v5;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BEB02F0(v7, v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE0854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a17);
  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  _Unwind_Resume(a1);
}

void sub_24BEE08B8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = **(a1 + 8);
  if (*(**a1 + 4 * a2))
  {
    v4 = *(**(a1 + 16) + 56);
    sub_24BCCBB70();
  }

  v5 = *(a1 + 16);
  v7 = *v5;
  v6 = v5[1];
  v8[0] = v7;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BEA3FE8((v3 + 16 * a2), v8, *(v2 + 8), *(v2 + 16) | 0x100000000);
}

void sub_24BEE09C0(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEBAD00(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE0AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEE0B4C(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_24BC94F74(&v22, (*(**a3 + 8) - ***a3) >> 2);
  v8 = v22;
  v9 = v23;
  if (v22 != v23)
  {
    v10 = 0;
    v11 = (v23 - v22 - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = v22 + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  v17 = *(v9 - 2);
  *(v9 - 2) = *(v9 - 1);
  *(v9 - 1) = v17;
  if (*a4 != *(a4 + 8))
  {
    if (**a4)
    {
      v18 = *a2;
      memset(v20, 0, sizeof(v20));
      sub_24BCC9A1C(v20, v22, v23, (v23 - v22) >> 2);
      sub_24BEACEBC(v18, v20, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    v19 = *a2;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v22, v23, (v23 - v22) >> 2);
    sub_24BEACEBC(v19 + 2, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }
}

void sub_24BEE0E50(uint64_t a1, void **a2, unsigned int **a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = **a3;
  if (v7 < 1)
  {
    v8 = v6[1];
    v13[0] = *v6;
    v13[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34(v6, v7, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
  }

  v9 = *a2;
  v10 = (*a3)[1];
  if (v10 < 1)
  {
    v11 = v9[3];
    v12[0] = v9[2];
    v12[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34((v9 + 2), v10, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v12);
  }

  sub_24BEBB9E0(v13, v12, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE1060(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *a2;
  memset(v8, 0, sizeof(v8));
  if (*a3 != *(a3 + 8))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (**a3)
    {
      sub_24BEAE4A8(v4, v4 + 2, v5, v6 | 0x100000000);
    }

    sub_24BEADF58(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BCC9548(a4, 0, 0, 0);
  v7 = v8;
  sub_24BCC961C(&v7);
}

void sub_24BEE1170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  a12 = &a14;
  sub_24BCC961C(&a12);
  _Unwind_Resume(a1);
}

void sub_24BEE11B0(uint64_t a1, void **a2, uint64_t a3, _DWORD **a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (**a4)
  {
    sub_24BEAE4A8(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  sub_24BEADF58(v4, v4 + 2, v5, v6 | 0x100000000);
}

void sub_24BEE1388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a13);
  _Unwind_Resume(a1);
}

void sub_24BEE13D0(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEA9B4C(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE14F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEE155C@<X0>(uint64_t result@<X0>, void **a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (*a3 != *(a3 + 8))
  {
    v5 = *(result + 8);
    v6 = *(result + 16);
    if (**a3)
    {
      sub_24BEA5D70(v4, v4 + 2, v5, v6 | 0x100000000);
    }

    sub_24BEAE200(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  return result;
}

void sub_24BEE1634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEE166C(uint64_t a1, void **a2, uint64_t a3, _DWORD **a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (**a4)
  {
    sub_24BEA5D70(v4, v4 + 2, v5, v6 | 0x100000000);
  }

  sub_24BEAE200(v4, v4 + 2, v5, v6 | 0x100000000);
}

void sub_24BEE1844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a13);
  _Unwind_Resume(a1);
}

void sub_24BEE188C(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEA9DF4(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE19B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEE1B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEE1BC0@<X0>(uint64_t result@<X0>, void *a2@<X1>, void **a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a4 != a4[1])
  {
    sub_24BEA3FE8((*a2 + 16 * (1 - **a4)), *a3, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEE1C94(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEA3FE8(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE1DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEE1E20(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v4[7] = *MEMORY[0x277D85DE8];
  v4[0] = a4;
  v4[1] = a2;
  v4[2] = a1;
  v4[3] = a3;
  sub_24BEE1F90(v4, **a4);
}

void sub_24BEE1F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE1F90(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *(**a1 + 4 * a2);
  if (v4 != 1)
  {
    if (!v4)
    {
      v5 = **(a1 + 8);
      v6 = *(v3 + 8);
      v7 = *(v3 + 16) | 0x100000000;

      sub_24BEA52D0(v5, v6, v7);
    }

    sub_24BEAF560(**(a1 + 8), *(v3 + 8), *(v3 + 16) | 0x100000000);
  }

  v8 = **(a1 + 8);
  v10 = *v8;
  v9 = v8[1];
  v11[0] = v10;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, *(*(**(a1 + 24) + 16) + 56), *(v3 + 8), *(v3 + 16) | 0x100000000, v12);
  sub_24BEA3FE8(v12, (**(a1 + 24) + 16), *(v3 + 8), *(v3 + 16) | 0x100000000);
}

void sub_24BEE2118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEE2158@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, void **a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a4;
  v6 = a4[1];
  if (*a4 != v6)
  {
    v8 = result;
    do
    {
      v9 = *v5;
      if (*v5 == 2)
      {
        sub_24BEAF560(*a2, *(result + 8), *(result + 16) | 0x100000000);
      }

      if (v9 == 1)
      {
        v10 = (*a2)[1];
        v11[0] = **a2;
        v11[1] = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        sub_24BEA3B14(v11, *(**a3 + 56), *(result + 8), *(result + 16) | 0x100000000, v12);
        sub_24BEA3FE8(v12, *a3, *(v8 + 8), *(v8 + 16) | 0x100000000);
      }

      if (!v9)
      {
        sub_24BEA52D0(*a2, *(result + 8), *(result + 16) | 0x100000000);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_24BEE230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  sub_24BCC961C(va2);
  _Unwind_Resume(a1);
}

void sub_24BEE2390(uint64_t a1, uint64_t **a2, int **a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (**a3 == -1 && v4[1] == -1 && v4[2] == -1)
  {
    v59 = *a2;
    v60 = (*a2)[1];
    *&v64 = **a2;
    *(&v64 + 1) = v60;
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = v59[3];
    *&v65 = v59[2];
    *(&v65 + 1) = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v63 = v59[4];
    v62 = v59[5];
    *&v66 = v63;
    *(&v66 + 1) = v62;
    if (v62)
    {
      atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
    }

    v67 = -1;
  }

  else
  {
    v5 = *a2;
    v6 = **a2;
    v7 = (*a2)[1];
    *&v82 = v6;
    *(&v82 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v5 = *a2;
    }

    v8 = v5[2];
    v9 = v5[3];
    *&v79 = v8;
    *(&v79 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v5 = *a2;
    }

    v10 = v5[4];
    v11 = v5[5];
    *&v78 = v10;
    *(&v78 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(v6 + 8) - *v6;
    v13 = v12 >> 2;
    v14 = **a3;
    v15 = (*a3)[1];
    if (v14 == -1)
    {
      ++v13;
    }

    v16 = v8[1] - *v8;
    v17 = v16 >> 2;
    if (v15 == -1)
    {
      ++v17;
    }

    v18 = v10[1] - *v10;
    v19 = v18 >> 2;
    v20 = (*a3)[2];
    if (v20 == -1)
    {
      ++v19;
    }

    if (v13 > v17)
    {
      v17 = v13;
    }

    if (v17 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v17;
    }

    v22 = *(a1 + 8);
    v76 = *(a1 + 16);
    v77 = v21;
    v74[0] = v6;
    v74[1] = *(&v82 + 1);
    v75 = v22;
    if (*(&v82 + 1))
    {
      atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEEF374(&v75, v74, &v80);
    v23 = v80;
    v80 = 0uLL;
    v24 = *(&v82 + 1);
    v82 = v23;
    if (v24)
    {
      sub_24BC9EC78(v24);
    }

    sub_24BE7F218(&v80);
    sub_24BE7F218(v74);
    v73 = v79;
    if (*(&v79 + 1))
    {
      atomic_fetch_add_explicit((*(&v79 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEEF374(&v75, &v73, &v80);
    v25 = v80;
    v80 = 0uLL;
    v26 = *(&v79 + 1);
    v79 = v25;
    if (v26)
    {
      sub_24BC9EC78(v26);
    }

    sub_24BE7F218(&v80);
    sub_24BE7F218(&v73);
    v72 = v78;
    if (*(&v78 + 1))
    {
      atomic_fetch_add_explicit((*(&v78 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEEF374(&v75, &v72, &v80);
    v27 = v21 - (v16 >> 2);
    v28 = v14 + v21 - (v12 >> 2);
    v29 = v15 + v27;
    v30 = v80;
    v80 = 0uLL;
    v31 = *(&v78 + 1);
    v78 = v30;
    if (v31)
    {
      sub_24BC9EC78(v31);
    }

    sub_24BE7F218(&v80);
    sub_24BE7F218(&v72);
    if (v28 != v29)
    {
      v32 = v79;
      v71 = v79;
      if (*(&v79 + 1))
      {
        atomic_fetch_add_explicit((*(&v79 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(__p[0]) = v29;
      sub_24BC94F74(&v80, (v32[1] - *v32) >> 2);
      v34 = *(&v80 + 1);
      v33 = v80;
      if (v80 != *(&v80 + 1))
      {
        v35 = 0;
        v36 = (*(&v80 + 1) - v80 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = (v80 + 8);
        do
        {
          v40 = vdupq_n_s64(v35);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_24BFBC5B0)));
          if (vuzp1_s16(v41, *v37.i8).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, *&v37).i8[2])
          {
            *(v39 - 1) = v35 + 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_24BFBC5E0)))).i32[1])
          {
            *v39 = v35 + 2;
            v39[1] = v35 + 3;
          }

          v35 += 4;
          v39 += 4;
        }

        while (v38 != v35);
      }

      v42 = v33 + 4 * v29;
      v43 = v34 - (v42 + 4);
      if (v34 != v42 + 4)
      {
        memmove(v42, (v42 + 4), v34 - (v42 + 4));
        v33 = v80;
      }

      *(&v80 + 1) = v42 + v43;
      sub_24BEAAF40(&v80, (v33 + 4 * v28), __p);
      v44 = v80;
      sub_24BE7F218(&v71);
      memset(__p, 0, sizeof(__p));
      sub_24BCC9A1C(__p, v44, *(&v44 + 1), (*(&v44 + 1) - v44) >> 2);
      sub_24BEACEBC(&v79, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    v45 = v20 + v21 - (v18 >> 2);
    if (v28 != v45)
    {
      v46 = v78;
      v69 = v78;
      if (*(&v78 + 1))
      {
        atomic_fetch_add_explicit((*(&v78 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *v68 = v20 + v21 - (v18 >> 2);
      sub_24BC94F74(&v80, (v46[1] - *v46) >> 2);
      v48 = *(&v80 + 1);
      v47 = v80;
      if (v80 != *(&v80 + 1))
      {
        v49 = 0;
        v50 = (*(&v80 + 1) - v80 - 4) >> 2;
        v51 = vdupq_n_s64(v50);
        v52 = (v50 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v53 = (v80 + 8);
        do
        {
          v54 = vdupq_n_s64(v49);
          v55 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v54, xmmword_24BFBC5B0)));
          if (vuzp1_s16(v55, *v51.i8).u8[0])
          {
            *(v53 - 2) = v49;
          }

          if (vuzp1_s16(v55, *&v51).i8[2])
          {
            *(v53 - 1) = v49 + 1;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v54, xmmword_24BFBC5E0)))).i32[1])
          {
            *v53 = v49 + 2;
            v53[1] = v49 + 3;
          }

          v49 += 4;
          v53 += 4;
        }

        while (v52 != v49);
      }

      v56 = v47 + 4 * v45;
      v57 = v48 - (v56 + 4);
      if (v48 != v56 + 4)
      {
        memmove(v56, (v56 + 4), v48 - (v56 + 4));
        v47 = v80;
      }

      *(&v80 + 1) = v56 + v57;
      sub_24BEAAF40(&v80, (v47 + 4 * v28), v68);
      v58 = v80;
      sub_24BE7F218(&v69);
      v81 = 0;
      v80 = 0uLL;
      sub_24BCC9A1C(&v80, v58, *(&v58 + 1), (*(&v58 + 1) - v58) >> 2);
      sub_24BEACEBC(&v78, &v80, *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    v64 = v82;
    if (*(&v82 + 1))
    {
      atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v65 = v79;
    if (*(&v79 + 1))
    {
      atomic_fetch_add_explicit((*(&v79 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v66 = v78;
    if (*(&v78 + 1))
    {
      atomic_fetch_add_explicit((*(&v78 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v67 = v28;
    sub_24BE7F218(&v78);
    sub_24BE7F218(&v79);
    sub_24BE7F218(&v82);
  }

  sub_24BEA615C(&v64, &v65, &v66, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE2ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  v34 = *(v32 - 160);
  if (v34)
  {
    *(v32 - 152) = v34;
    operator delete(v34);
  }

  if (v31)
  {
    operator delete(v31);
  }

  sub_24BE7F218(v32 - 192);
  sub_24BE7F218(v32 - 176);
  sub_24BE7F218(v32 - 128);
  _Unwind_Resume(a1);
}

void sub_24BEE2CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE2D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE2DB8(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[6] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEADCB0(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE2EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_24BCC961C(va1);
  sub_24BE7F218(v5 - 56);
  sub_24BE7F218(v4 + 16);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEE2EF0@<X0>(uint64_t result@<X0>, void *a2@<X1>, int **a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != a3[1])
  {
    sub_24BEA52D0((*a2 + 16 * **a3), *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BEE2FAC(uint64_t a1, uint64_t ***a2)
{
  __p[5] = *MEMORY[0x277D85DE8];
  sub_24BF02B58(**a2, (*a2)[2], __p);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BEA51FC(__p);
}

void sub_24BEE306C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEE30A0(uint64_t a1@<X0>, const void ****a2@<X2>, void *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = ((**a2)[1] - ***a2) >> 2;
  LODWORD(v24) = 0;
  sub_24BD0E524(&v27, v6);
  v7 = *v5;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_24BCC9A1C(&v24, *v7, v7[1], (v7[1] - *v7) >> 2);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = v27;
  if (v8 != v9)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    v13 = v24;
    do
    {
      v14 = *v8++;
      v10[v14] = *(v11 + 4 * v14);
      v13[v14] -= *(v12 + 4 * v14);
    }

    while (v8 != v9);
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_24BCC9A1C(&v19, v10, v28, (v28 - v10) >> 2);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_24BCC9A1C(&__p, v24, v25, (v25 - v24) >> 2);
  sub_24BEA8020(v5, &v19, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, &v22);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v29[0] = v22;
  v29[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v29, &v30, 1uLL);
  sub_24BE7F218(v29);
  sub_24BE7F218(&v22);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24BEE3264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_24BE7F218(v19 - 56);
  sub_24BE7F218(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void sub_24BEE32E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(**a3 + 56);
  sub_24BCD0924();
}

void sub_24BEE33E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_24BE7F218(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a15);
  _Unwind_Resume(a1);
}

void sub_24BEE3424()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Pad vmap is NYI.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

BOOL sub_24BEE3480(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4] - v4;
  v6 = a1[3];
  if (v5 == a1[4] - v6 && !memcmp(v4, v6, v5) && (v7 = a2[6], v8 = a2[7] - v7, v9 = a1[6], v8 == a1[7] - v9) && !memcmp(v7, v9, v8) && (v10 = a2[9], v11 = a2[10] - v10, v12 = a1[9], v11 == a1[10] - v12))
  {
    return memcmp(v10, v12, v11) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_24BEE3618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE3758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE378C(uint64_t a1, const void ****a2, int **a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a3;
  v4 = *(a1 + 24);
  v5 = v3 >= 0 && v3 <= v4;
  v6 = *a2;
  if (v5)
  {
    v7 = (v4 + 1);
  }

  else
  {
    v7 = v4;
  }

  sub_24BEB5460(v6, v7, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE3868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEE38C4@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a3 != *(a3 + 8))
  {
    if (**a3)
    {
      v5 = *a4;
      sub_24BEB697C(*a2, *(result + 8), *(result + 16) | 0x100000000);
    }

    v6 = (**a2)[7];
    sub_24BCD0924();
  }

  return result;
}

void sub_24BEE3ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_24BE7F218(&a9);
  sub_24BCC961C(&a15);
  _Unwind_Resume(a1);
}

void sub_24BEE3CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_24BE7F218(&a17);
  a17 = &a9;
  sub_24BCC961C(&a17);
  sub_24BE7F218(&a12);
  _Unwind_Resume(a1);
}

void sub_24BEE3D58(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEC0120(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE3E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEE3EE4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QuantizedMatmul::vmap NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

uint64_t sub_24BEE3F40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (*a4 != *(a4 + 8))
  {
    if (!**a4)
    {
      v6 = (*a3)[1];
      v16[0] = **a3;
      v16[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
      }

      v7 = *a2;
      v8 = *(*a2 + 24);
      v15[0] = *(*a2 + 16);
      v15[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
        v7 = *a2;
      }

      v9 = v7[5];
      v14[0] = v7[4];
      v14[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v7 = *a2;
      }

      v11 = v7[6];
      v10 = v7[7];
      v13[0] = v11;
      v13[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      sub_24BEC3A74(v16, v15, v14, v13, (*(result + 28) & 1) == 0, *(result + 20), *(result + 24), a5, *(result + 8), *(result + 16) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "QuantizedMatmul::vjp no gradient wrt the quantized matrix yet.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  return result;
}

void sub_24BEE40BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEE411C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QuantizedMatmul::jvp NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BEE41B4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherQMM::vmap NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

uint64_t sub_24BEE4210@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a4;
  if (*a4 != *(a4 + 8))
  {
    v6 = *a3;
    if (!*v5)
    {
      sub_24BEA52D0(*a2, *(result + 8), *(result + 16) | 0x100000000);
    }

    v7 = *v5;
    exception = __cxa_allocate_exception(0x10uLL);
    v9 = exception;
    if (v7 < 4)
    {
      std::runtime_error::runtime_error(exception, "GatherQMM::vjp no gradient wrt the quantized matrix yet.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "GatherQMM::vjp cannot compute the gradient wrt the indices.");
    }

    __cxa_throw(v9, &unk_285F93280, MEMORY[0x277D82600]);
  }

  return result;
}

void sub_24BEE4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  *(v33 - 80) = v31;
  sub_24BCC961C((v33 - 80));
  _Unwind_Resume(a1);
}

void sub_24BEE4540()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherQMM::jvp NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BEE45D8(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v24[7] = *MEMORY[0x277D85DE8];
  v4 = **a2;
  v5 = (*a2)[1];
  v24[0] = v4;
  v24[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = **a3;
  v7 = (v4[1] - *v4) >> 2;
  if (v7 - 1 == v6)
  {
    sub_24BC94F74(&v21, v7);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      v10 = 0;
      v11 = (v22 - v21 - 4) >> 2;
      v12 = vdupq_n_s64(v11);
      v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v14 = (v21 + 8);
      do
      {
        v15 = vdupq_n_s64(v10);
        v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v16, *v12.i8).u8[0])
        {
          *(v14 - 2) = v10;
        }

        if (vuzp1_s16(v16, *&v12).i8[2])
        {
          *(v14 - 1) = v10 + 1;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
        {
          *v14 = v10 + 2;
          v14[1] = v10 + 3;
        }

        v10 += 4;
        v14 += 4;
      }

      while (v13 != v10);
    }

    v17 = *(v8 + 4 * v6);
    *(v8 + 4 * v6) = *(v8 + 4 * (v6 - 1));
    *(v8 + 4 * (v6 - 1)) = v17;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v8, v9, (v9 - v8) >> 2);
    sub_24BEACEBC(v24, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_24BCC9A1C(&v21, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  if ((v6 & 0x80000000) == 0)
  {
    sub_24BEAAF40(&v21, (v21 + 4 * v6), (*v24[0] + 4 * v6));
  }

  v18 = *(a1 + 48);
  memset(v19, 0, sizeof(v19));
  sub_24BCC9A1C(v19, v21, v22, (v22 - v21) >> 2);
  sub_24BEF07EC();
}

void sub_24BEE49B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v26 + 24);
  if (v29)
  {
    *(v26 + 32) = v29;
    operator delete(v29);
  }

  sub_24BE7F218(v27 - 128);
  _Unwind_Resume(a1);
}

BOOL sub_24BEE4AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void sub_24BEE4AE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = (*a3)[1];
  v7[0] = **a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v7, *(**a2 + 56), *(a1 + 8), *(a1 + 16) | 0x100000000, v8);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BCC9984(a4, v8, &v9, 1uLL);
  sub_24BE7F218(v8);
  sub_24BE7F218(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEE4BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE4BD0(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BECCB28(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v5, &v6, 1uLL);
  sub_24BE7F218(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_24BEE4C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE4C84(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_24BECCB28(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  memset(v7, 0, sizeof(v7));
  sub_24BCC9984(v7, v9, &v10, 1uLL);
  sub_24BEEF168(a4, v7, a3);
  v8 = v7;
  sub_24BCC961C(&v8);
  sub_24BE7F218(v9);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEE4D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE4D78(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v31 = **a3;
  if ((v31 & 0x80000000) == 0)
  {
    sub_24BC94F74(&__src, ((*v6)[1] - **v6) >> 2);
    v7 = __src;
    v8 = v29;
    if (__src != v29)
    {
      v9 = 0;
      v10 = (v29 - __src - 4) >> 2;
      v11 = vdupq_n_s64(v10);
      v12 = (v10 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = __src + 8;
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v9;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v9 + 1;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_24BFBC5E0)))).i32[1])
        {
          *v13 = v9 + 2;
          v13[1] = v9 + 3;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v12 != v9);
    }

    v16 = &v7[4 * v31];
    v17 = (v8 - (v16 + 4));
    if (v8 != v16 + 4)
    {
      memmove(&v7[4 * v31], v16 + 4, v8 - (v16 + 4));
      v7 = __src;
    }

    v29 = &v17[v16];
    sub_24BEAAF40(&__src, v7, &v31);
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, __src, v29, (v29 - __src) >> 2);
    sub_24BEACEBC(v6, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_24BCC9A1C(&v19, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  sub_24BEA4500(v6, &v19, *(a1 + 8), *(a1 + 16) | 0x100000000, &v32);
  __src = 0;
  v29 = 0;
  v30 = 0;
  sub_24BCC9984(&__src, &v32, v33, 1uLL);
  v26 = v31;
  v23 = 0;
  v24 = 0;
  p_src = 0;
  sub_24BCC9910(&p_src, &v26, &v27, 1uLL);
  sub_24BEEF168(a4, &__src, &p_src);
  if (p_src)
  {
    v23 = p_src;
    operator delete(p_src);
  }

  p_src = &__src;
  sub_24BCC961C(&p_src);
  sub_24BE7F218(&v32);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_24BEE5104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t *__p, uint64_t *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  __p = &a25;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v26 - 96);
  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_24BEE5208(uint64_t a1@<X0>, uint64_t ***a2@<X1>, const void ****a3@<X2>, void *a4@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = **a2;
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  sub_24BEA4500(v6, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v12);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BCC9984(a4, v12, &v13, 1uLL);
  sub_24BE7F218(v12);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_24BEE52E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEE5318(uint64_t a1@<X0>, const void ****a2@<X2>, void *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  sub_24BEA4500(v5, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v10, &v11, 1uLL);
  sub_24BE7F218(v10);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEE53EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BEE5420(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void sub_24BEE5464(uint64_t a1@<X0>, uint64_t ***a2@<X1>, const void ****a3@<X2>, void **a4@<X4>, void *a5@<X8>)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v9 = **a2;
  v10 = (*a2)[1];
  v52[0] = v9;
  v52[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_24BCC9A1C(&v49, *v9, v9[1], (v9[1] - *v9) >> 2);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  if (v11 != v12)
  {
    v13 = v49;
    v14 = *(a1 + 24);
    do
    {
      v15 = *v14++;
      v13[v15] = 1;
    }

    while (v14 != v12);
  }

  v16 = *a3;
  v17 = *(a1 + 20);
  if ((v17 - 4) < 2)
  {
    v31 = **a4;
    v32 = (*a4)[1];
    *&v54 = v31;
    *(&v54 + 1) = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    if (v31[1] - *v31 != v52[0][1] - *v52[0])
    {
      sub_24BEA7634(&v54, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v41);
      v33 = *v41;
      v41[0] = 0;
      v41[1] = 0;
      v34 = *(&v54 + 1);
      v54 = v33;
      if (v34)
      {
        sub_24BC9EC78(v34);
      }

      sub_24BE7F218(v41);
    }

    sub_24BEADA04(v52, &v54, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      v18 = *(a1 + 8);
      v45 = *(a1 + 16);
      v43 = &v44;
      v44 = v18;
      if ((v12 - v11) >= 5)
      {
        v54 = 0uLL;
        v55[0] = 0;
        v41[0] = 0;
        v41[1] = 0;
        v42 = 0;
        memset(v40, 0, sizeof(v40));
        LODWORD(v38[0]) = 0;
        v19 = v52[0];
        v20 = *v52[0];
        if (v52[0][1] != *v52[0])
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = *(a1 + 24);
            if (v21 < ((*(a1 + 32) - v23) >> 2) && *(v23 + 4 * v21) == v22)
            {
              ++v21;
            }

            else
            {
              sub_24BC97D60(&v54, v38);
              v24 = SLODWORD(v38[0]);
              v25 = (v52[0][1] - *v52[0]) >> 2;
              if (SLODWORD(v38[0]) < 0)
              {
                v24 = SLODWORD(v38[0]) + v25;
              }

              if (v25 <= v24)
              {
                sub_24BC923C0();
              }

              LODWORD(v53) = *(*v52[0] + 4 * v24);
              sub_24BC97D60(v40, &v53);
              v22 = v38[0];
              v19 = v52[0];
              v20 = *v52[0];
            }

            LODWORD(v38[0]) = ++v22;
          }

          while (v22 < ((v19[1] - v20) >> 2));
          v11 = *(a1 + 24);
          v12 = *(a1 + 32);
        }

        while (v11 != v12)
        {
          LODWORD(v38[0]) = *v11;
          sub_24BC97D60(&v54, v38);
          v11 += 4;
        }

        LODWORD(v38[0]) = -1;
        sub_24BC97D60(v40, v38);
        sub_24BC8CAB0(v41, (*(&v54 + 1) - v54) >> 2);
        v26 = v54;
        v27 = (*(&v54 + 1) - v54) >> 2;
        if (*(&v54 + 1) != v54)
        {
          v28 = 0;
          v29 = v41[0];
          if (v27 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = (*(&v54 + 1) - v54) >> 2;
          }

          do
          {
            v29[*(v26 + 4 * v28)] = v28;
            ++v28;
          }

          while (v30 != v28);
        }

        memset(__p, 0, sizeof(__p));
        sub_24BCC9A1C(__p, v26, *(&v26 + 1), v27);
        sub_24BEACEBC(v52, __p, v44, v45 | 0x100000000);
      }

      memset(v37, 0, sizeof(v37));
      sub_24BCC9A1C(v37, v49, v50, (v50 - v49) >> 2);
      sub_24BEA4500(v16, v37, v44, v45 | 0x100000000, v41);
      sub_24BEE5EBC(&v43, v52, v41, **(a1 + 24));
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Reduce type VJP not yet implemented.");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v47 = 0;
  v48 = 0;
  v46 = 0;
  sub_24BCC9A1C(&v46, v49, v50, (v50 - v49) >> 2);
  sub_24BEA4500(v16, &v46, *(a1 + 8), *(a1 + 16) | 0x100000000, v41);
  sub_24BEA4DE0(v41, v52[0], *(a1 + 8), *(a1 + 16) | 0x100000000, &v54);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_24BCC9984(a5, &v54, v55, 1uLL);
  sub_24BE7F218(&v54);
  sub_24BE7F218(v41);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  sub_24BE7F218(v52);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_24BEE5C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  sub_24BE7F218(v40 - 128);
  sub_24BE7F218(&a27);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(v40 - 112);
  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  v42 = *(v40 - 96);
  if (v42)
  {
    *(v40 - 88) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 168);
  if (v43)
  {
    *(v40 - 160) = v43;
    operator delete(v43);
  }

  sub_24BE7F218(v40 - 144);
  _Unwind_Resume(a1);
}

void sub_24BEE5FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a13);
  _Unwind_Resume(a1);
}

void sub_24BEE5FE0(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = **a3;
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_24BCC9A1C(&__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = __p;
    v10 = v16;
    while (v9 != v10)
    {
      if (*v9 >= v8)
      {
        ++*v9;
      }

      ++v9;
    }
  }

  v11 = *a2;
  memset(v14, 0, sizeof(v14));
  v12 = *(a1 + 20);
  if (v12 > 2)
  {
    switch(v12)
    {
      case 3:
        sub_24BEB32FC(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
        sub_24BCE1720(v14, v13);
        break;
      case 4:
        sub_24BEB3DD8(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
        sub_24BCE1720(v14, v13);
        break;
      case 5:
        sub_24BEB38AC(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
        sub_24BCE1720(v14, v13);
        break;
      default:
        goto LABEL_21;
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      sub_24BEB110C(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
      sub_24BCE1720(v14, v13);
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_21;
      }

      sub_24BEB160C(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
      sub_24BCE1720(v14, v13);
    }
  }

  else
  {
    sub_24BEB07FC(v11, &__p, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v13);
    sub_24BCE1720(v14, v13);
  }

  sub_24BE7F218(v13);
LABEL_21:
  sub_24BEEF2F4(a4, v14, a3);
  v13[0] = v14;
  sub_24BCC961C(v13);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_24BEE61F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_24BE7F218(&a9);
  a9 = &a11;
  sub_24BCC961C(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BEE625C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20) && (v3 = a1 + 24, v2 = *(a1 + 24), v4 = *(v3 + 8) - v2, v6 = a2 + 24, v5 = *(a2 + 24), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_24BEE62B0(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = **a2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  sub_24BCC9A1C(&v11, *v5, v5[1], (v5[1] - *v5) >> 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  for (i = v11; v6 != v7; i[v9] = 1)
  {
    v9 = *v6++;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_24BCC9A1C(&__p, i, v12, (v12 - i) >> 2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCE220C(a3, &__p, &v17, 1uLL);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_24BEE63AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEE64A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE6588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE65B8(uint64_t a1, uint64_t ***a2, _DWORD **a3)
{
  __p[11] = *MEMORY[0x277D85DE8];
  v4 = **a2;
  if (!v4[7])
  {
    *(a1 + 20);
  }

  if ((**a3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 24);
  }

  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v4, v4[1], (v4[1] - *v4) >> 2);
  v6 = *(a1 + 24);
  operator new();
}

void sub_24BEE67DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char a22)
{
  sub_24BCC961C(&a21);
  sub_24BE7F218(v22 - 88);
  a21 = &a10;
  sub_24BCC961C(&a21);
  sub_24BE7F218(&a22);
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEE6858(uint64_t a1, uint64_t ***a2, uint64_t ***a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 20);
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      sub_24BEC04C0(*a3, *(a1 + 24), (*(a1 + 28) & 1) == 0, *(a1 + 29), *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VJP is not implemented for cumulative min/max");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v4 = (*a2)[1];
  v6[0] = **a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEC0810(v6, *(a1 + 24), *(a1 + 28), (*(a1 + 29) & 1) == 0, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE6D60(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) == 2)
  {
    sub_24BEC04C0(*a3, *(a1 + 24), *(a1 + 28), *(a1 + 29), *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "JVP is not implemented for cumulative prod/min/max");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

BOOL sub_24BEE6EC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20) && (v3 = a1 + 24, v2 = *(a1 + 24), v4 = *(v3 + 8) - v2, v6 = a2 + 24, v5 = *(a2 + 24), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_24BEE6F14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X2>, int **a4@<X3>, void **a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = *(a1 + 20);
  if (v7 >= 3 && v7 != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[scatter] VJP not implemented for scatter_prod");
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  v13 = *a5;
  v14 = (*(a2 + 8) - 16);
  v34 = *a2;
  memset(v38, 0, sizeof(v38));
  sub_24BEF04D0(v38, (v34 + 2), v14, (v14 - (v34 + 2)) >> 4);
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v16 = *a4;
  v15 = a4[1];
  if (*a4 != v15)
  {
    while (1)
    {
      v17 = *v16;
      if (v17)
      {
        break;
      }

      v25 = *(a1 + 20);
      if (v25 < 2)
      {
        sub_24BEADA04(v13, v34, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v25 != 2)
      {
        if (v25 == 4)
        {
          v26 = *a3;
          sub_24BEA52D0(v14, *(a1 + 8), *(a1 + 16) | 0x100000000);
        }

LABEL_31:
        v32 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v32, &unk_24C0435AF);
        goto LABEL_32;
      }

      sub_24BE811EC(a6, *a3);
      if (++v16 == v15)
      {
        goto LABEL_29;
      }
    }

    if (((*(a2 + 8) - *a2) >> 4) - 1 == v17)
    {
      v18 = *(a1 + 20);
      if (v18 < 2)
      {
        v27 = **a3;
        v36 = 0;
        v37 = 0;
        __p = 0;
        sub_24BCC9A1C(&__p, *v27, v27[1], (v27[1] - *v27) >> 2);
        v28 = *(a1 + 24);
        v29 = *(a1 + 32);
        if (v28 != v29)
        {
          v30 = __p;
          do
          {
            v31 = *v28++;
            v30[v31] = 1;
          }

          while (v28 != v29);
        }

        sub_24BEBC9A8(*a3, v38, (a1 + 24), &__p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (v18 == 4 || v18 == 2)
      {
        v20 = **a3;
        v36 = 0;
        v37 = 0;
        __p = 0;
        sub_24BCC9A1C(&__p, *v20, v20[1], (v20[1] - *v20) >> 2);
        v21 = *(a1 + 24);
        v22 = *(a1 + 32);
        if (v21 != v22)
        {
          v23 = __p;
          do
          {
            v24 = *v21++;
            v23[v24] = 1;
          }

          while (v21 != v22);
        }

        sub_24BEBC9A8(*a3, v38, (a1 + 24), &__p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      goto LABEL_31;
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v32, "[scatter] Cannot calculate VJP with respect to indices.");
LABEL_32:
    v32->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v32, &unk_285F94708, MEMORY[0x277D82610]);
  }

LABEL_29:
  __p = v38;
  sub_24BCC961C(&__p);
}

void sub_24BEE7450()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[scatter] JVP not yet implemented");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BEE74AC(uint64_t a1, uint64_t *a2, int **a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0uLL;
  v33 = 0;
  sub_24BCC9548(&v32, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v31, 0, sizeof(v31));
  sub_24BCC9A1C(v31, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v5 = *a3;
  v6 = a3[1];
  v7 = **a3;
  v30 = v7;
  v8 = v5;
  if (v5 != v6)
  {
    do
    {
      v7 = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      ++v8;
    }

    while (v8 != v6);
    v7 = *v6;
    v8 = v6;
  }

LABEL_5:
  if ((v7 & 0x80000000) == 0)
  {
    v9 = sub_24BD1EEAC((v32 + 4 * (v8 - v5)), v7);
    if (v30 < 0)
    {
      v30 = 0;
      sub_24BEA5B3C(v32, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v26);
      sub_24BEAAC98(v26, v9, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, __p);
      v10 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v11 = *(v32 + 8);
      *v32 = v10;
      if (v11)
      {
        sub_24BC9EC78(v11);
      }

      sub_24BE7F218(__p);
      sub_24BE7F218(v26);
    }

    v12 = *a3;
    if ((a3[1] - *a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = 0;
      v14 = 16;
      do
      {
        v15 = v12[v13 + 1];
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        sub_24BEACB34(v32 + v14, v15, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, __p);
        v16 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v17 = *(v32 + v14 + 8);
        *(v32 + v14) = v16;
        if (v17)
        {
          sub_24BC9EC78(v17);
        }

        sub_24BE7F218(__p);
        if ((*a3)[v13 + 1] < 0)
        {
LABEL_16:
          v18 = *(v32 + v14);
          __p[1] = 0;
          v29 = 0;
          __p[0] = 0;
          sub_24BCC9A1C(__p, *v18, v18[1], (v18[1] - *v18) >> 2);
          sub_24BEA5B3C((v32 + v14), 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v27);
          sub_24BEAAC98(&v27, v9, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v26);
          v19 = *v26;
          v26[0] = 0;
          v26[1] = 0;
          v20 = *(v32 + v14 + 8);
          *(v32 + v14) = v19;
          if (v20)
          {
            sub_24BC9EC78(v20);
          }

          sub_24BE7F218(v26);
          sub_24BE7F218(&v27);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        v21 = *(v31[0] + 4 * v13);
        if (v21 >= v30)
        {
          *(v31[0] + 4 * v13) = v21 + 1;
        }

        v12 = *a3;
        v22 = v13 + 2;
        ++v13;
        v14 += 16;
      }

      while (a3[1] - *a3 - 1 > v22);
    }

    sub_24BEA3560((*(*(v32 + 16) + 56) & 0xFFFFFFFFFFLL), *(a1 + 8), *(a1 + 16) | 0x100000000, &v27, v9);
  }

  v23 = *v32;
  v24 = *(*v32 + 56);
  memset(v25, 0, sizeof(v25));
  sub_24BCC9A1C(v25, *v23, v23[1], (v23[1] - *v23) >> 2);
  sub_24BEF0AD0();
}

void sub_24BEE7B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(&a25);
  v30 = *(v28 - 152);
  if (v30)
  {
    *(v28 - 144) = v30;
    operator delete(v30);
  }

  *(v28 - 152) = v28 - 128;
  sub_24BCC961C((v28 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_24BEE7CE0(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_24BC8E01C();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v18[4] = a1;
    if (v15)
    {
      sub_24BCB53E8(a1, v15);
    }

    v18[0] = 0;
    v18[1] = (16 * v16);
    v18[2] = (16 * v16);
    v18[3] = 0;
    sub_24BEF09B4(v18, a3);
    v4 = sub_24BE9D078(a1, v18, v4);
    sub_24BCC98C0(v18);
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    *(a1 + 8) = v6 + 1;
  }

  else
  {
    sub_24BE9D014(a1, a2, v6, &a2[1]);
    v8 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v9 = *(v4 + 8);
    *v4 = v8;
    if (v9)
    {
      sub_24BC9EC78(v9);
    }
  }

  return v4;
}

void sub_24BEE7E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

void sub_24BEE7E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(**a5 + 56);
  sub_24BCCBB70();
}

void sub_24BEE7F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE80A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE81C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE8214(uint64_t a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = **a2;
  v3 = *(a1 + 8);
  v4 = v2[7] & 0xFFFFFFFFFFLL;
  v5 = *(a1 + 16) | 0x100000000;
  sub_24BEA51FC(v2);
}

void sub_24BEE82B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE8398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE83EC(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  sub_24BEB8820(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE84B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE85A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE85FC(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  sub_24BEB98EC(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE86C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEE87B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEE87E8(uint64_t a1@<X0>, uint64_t ***a2@<X1>, unsigned int **a3@<X2>, void *a4@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_24BCC9A1C(&v32, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_24BCC9A1C(&v29, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_24BCC9A1C(&v26, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v8 = **a3;
  v9 = *a2;
  if ((v8 & 0x80000000) == 0)
  {
    LODWORD(v25[0]) = 0;
    sub_24BEA7474(&v32, &v32[4 * v8], v25);
    v10 = v29;
    LODWORD(v25[0]) = sub_24BD1EEAC(v9, v8);
    sub_24BEA7474(&v29, &v10[4 * v8], v25);
    LODWORD(v25[0]) = 1;
    sub_24BEA7474(&v26, v26 + 4 * v8, v25);
  }

  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_24BCC9A1C(&v22, v32, v33, (v33 - v32) >> 2);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_24BCC9A1C(&v19, v29, v30, (v30 - v29) >> 2);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_24BCC9A1C(&v16, v26, v27, (v27 - v26) >> 2);
  sub_24BEA7AB0(v9, &v22, &v19, &v16, *(a1 + 8), *(a1 + 16) | 0x100000000, v35);
  memset(v25, 0, sizeof(v25));
  sub_24BCC9984(v25, v35, &v36, 1uLL);
  v12 = v8;
  v14 = 0;
  v15 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v12, &__p, 1uLL);
  sub_24BEEF168(a4, v25, &__p);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  __p = v25;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v35);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_24BEE8A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    v25[1] = __p;
    operator delete(__p);
  }

  v27 = v25[3];
  if (v27)
  {
    v25[4] = v27;
    operator delete(v27);
  }

  v28 = v25[6];
  if (v28)
  {
    v25[7] = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEE8B64(uint64_t a1, uint64_t ***a2, uint64_t **a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  LODWORD(v38) = 0;
  v6 = *(a1 + 24);
  if (*(a1 + 32) != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 4 * v7);
      v9 = *(*(a1 + 72) + 4 * v7);
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9 == 1;
      }

      if (!v10)
      {
        if (v9 == 1)
        {
          sub_24BE80CFC();
          sub_24BCD0924();
        }

        sub_24BEA3638(v8, *(*(a1 + 48) + 4 * v7), v9, *(a1 + 8), *(a1 + 16) | 0x100000000, &v22);
      }

      v7 = v38 + 1;
      LODWORD(v38) = v38 + 1;
      v6 = *(a1 + 24);
    }

    while (v7 < (*(a1 + 32) - v6) >> 2);
  }

  v11 = (*a3)[1];
  v24 = **a3;
  v25 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v38) = 1;
  sub_24BD0E524(&v22, (v36 - v35) >> 4);
  v13 = v35;
  v12 = v36;
  if (v36 != v35)
  {
    v14 = 0;
    v15 = 0;
    v16 = v22;
    do
    {
      v16[v15] = *(*(v13 + v14) + 48);
      v20 = 0;
      v21 = 0;
      v19 = 0;
      sub_24BCC9A1C(&v19, v16, v23, (v23 - v16) >> 2);
      sub_24BEA4500((v13 + v14), &v19, *(a1 + 8), *(a1 + 16) | 0x100000000, &v38);
      v17 = v38;
      v38 = 0uLL;
      v18 = *&v35[v14 + 8];
      *&v35[16 * v15] = v17;
      if (v18)
      {
        sub_24BC9EC78(v18);
      }

      sub_24BE7F218(&v38);
      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      v16 = v22;
      *(v22 + v15++) = 1;
      v13 = v35;
      v12 = v36;
      v14 += 16;
    }

    while (v15 < (v36 - v35) >> 4);
  }

  sub_24BEF0BF8(&v35, v12, v29, v30, (v30 - v29) >> 4);
  sub_24BCA2788(&v32, v33, v26, v27, (v27 - v26) >> 2);
  sub_24BEA52D0(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEE90D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char *a29, char *a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  if (a16)
  {
    operator delete(a16);
  }

  v34 = *(v32 - 112);
  if (v34)
  {
    *(v32 - 104) = v34;
    operator delete(v34);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  sub_24BE7F218(&a27);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  a29 = &a32;
  sub_24BCC961C(&a29);
  v35 = *(v32 - 160);
  if (v35)
  {
    *(v32 - 152) = v35;
    operator delete(v35);
  }

  *(v32 - 160) = v32 - 136;
  sub_24BCC961C((v32 - 160));
  _Unwind_Resume(a1);
}

void sub_24BEE9218(uint64_t a1@<X0>, const void ****a2@<X2>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_24BCC9A1C(&v13, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_24BCC9A1C(&v10, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_24BCC9A1C(&__p, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  sub_24BEA7AB0(v5, &v13, &v10, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v16);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v16, &v17, 1uLL);
  sub_24BE7F218(v16);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEE934C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_24BE7F218(v16 - 56);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BEE93B0(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11) && !memcmp(v9, v11, v10) && (v12 = a1[9], v13 = a1[10] - v12, v14 = a2[9], v13 == a2[10] - v14))
  {
    return memcmp(v12, v14, v13) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_24BEE9440(uint64_t a1@<X0>, void **a2@<X1>, unsigned int **a3@<X2>, void *a4@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sub_24BCC9A1C(&v61, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  sub_24BCC9A1C(&v58, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  sub_24BCC9A1C(&v55, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v8 = *a2;
  v9 = (*a2)[1];
  *&v54 = **a2;
  *(&v54 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *a2;
  }

  v11 = v8[2];
  v10 = v8[3];
  *&v53 = v11;
  *(&v53 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *a3;
  v13 = **a3;
  v14 = *(v12 + 4);
  if (__PAIR64__(v14, v13) == -1)
  {
    v49 = 0;
    v50 = 0;
    v48 = 0;
    sub_24BCC9A1C(&v48, v61, v62, (v62 - v61) >> 2);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    sub_24BCC9A1C(&v45, v58, v59, (v59 - v58) >> 2);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    sub_24BCC9A1C(&v42, v55, v56, (v56 - v55) >> 2);
    sub_24BEA8154(&v54, &v53, &v48, &v45, &v42, *(a1 + 8), *(a1 + 16) | 0x100000000, v64);
    v51[0] = 0;
    v51[1] = 0;
    v52 = 0;
    sub_24BCC9984(v51, v64, &v65, 1uLL);
    v39 = -1;
    __p[1] = 0;
    v41 = 0;
    __p[0] = 0;
    sub_24BCC9910(__p, &v39, __p, 1uLL);
    sub_24BEEF168(a4, v51, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = v51;
    sub_24BCC961C(__p);
    sub_24BE7F218(v64);
    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    v15 = v48;
    if (v48)
    {
      v49 = v48;
LABEL_44:
      operator delete(v15);
    }
  }

  else
  {
    if (v13 == -1)
    {
      sub_24BEA5B3C(&v54, v14, *(a1 + 8), *(a1 + 16) | 0x100000000, v51);
      v16 = *v51;
      v51[0] = 0;
      v51[1] = 0;
      v17 = *(&v54 + 1);
      v54 = v16;
      if (v17)
      {
        sub_24BC9EC78(v17);
      }

      sub_24BE7F218(v51);
      v51[1] = 0;
      v52 = 0;
      v51[0] = 0;
      sub_24BCC9A1C(v51, *v54, *(v54 + 8), (*(v54 + 8) - *v54) >> 2);
      v18 = (*(v53 + 8) - *v53) >> 2;
      v19 = v14 + v18;
      if (v14 >= 0)
      {
        v19 = v14;
      }

      if (v18 <= v19)
      {
        sub_24BC923C0();
      }

      *(v51[0] + v14) = *(*v53 + 4 * v19);
      sub_24BEA4DE0(&v54, v51, *(a1 + 8), *(a1 + 16) | 0x100000000, __p);
      v20 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v21 = *(&v54 + 1);
      v54 = v20;
      if (v21)
      {
        sub_24BC9EC78(v21);
      }

      sub_24BE7F218(__p);
      if (v51[0])
      {
        v51[1] = v51[0];
        operator delete(v51[0]);
      }

      v13 = v14;
    }

    if (v14 == -1)
    {
      sub_24BEA5B3C(&v53, v13, *(a1 + 8), *(a1 + 16) | 0x100000000, v51);
      v22 = *v51;
      v51[0] = 0;
      v51[1] = 0;
      v23 = *(&v53 + 1);
      v53 = v22;
      if (v23)
      {
        sub_24BC9EC78(v23);
      }

      sub_24BE7F218(v51);
      v14 = v13;
    }

    if (v13 != v14)
    {
      sub_24BEACB34(&v53, v14, v13, *(a1 + 8), *(a1 + 16) | 0x100000000, v51);
      v24 = *v51;
      v51[0] = 0;
      v51[1] = 0;
      v25 = *(&v53 + 1);
      v53 = v24;
      if (v25)
      {
        sub_24BC9EC78(v25);
      }

      sub_24BE7F218(v51);
    }

    LODWORD(v51[0]) = 0;
    sub_24BEA7474(&v61, &v61[4 * v13], v51);
    v26 = (*(v54 + 8) - *v54) >> 2;
    v27 = v13 + v26;
    if (v13 >= 0)
    {
      v27 = v13;
    }

    if (v26 <= v27)
    {
      sub_24BC923C0();
    }

    v28 = 4 * v13;
    LODWORD(v51[0]) = *(*v54 + 4 * v27);
    sub_24BEA7474(&v58, &v58[v28], v51);
    LODWORD(v51[0]) = 1;
    sub_24BEA7474(&v55, &v55[v28], v51);
    v37 = 0;
    v38 = 0;
    v36 = 0;
    sub_24BCC9A1C(&v36, v61, v62, (v62 - v61) >> 2);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    sub_24BCC9A1C(&v33, v58, v59, (v59 - v58) >> 2);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_24BCC9A1C(&v30, v55, v56, (v56 - v55) >> 2);
    sub_24BEA8154(&v54, &v53, &v36, &v33, &v30, *(a1 + 8), *(a1 + 16) | 0x100000000, v64);
    v51[0] = 0;
    v51[1] = 0;
    v52 = 0;
    sub_24BCC9984(v51, v64, &v65, 1uLL);
    v39 = v13;
    __p[1] = 0;
    v41 = 0;
    __p[0] = 0;
    sub_24BCC9910(__p, &v39, __p, 1uLL);
    sub_24BEEF168(a4, v51, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    __p[0] = v51;
    sub_24BCC961C(__p);
    sub_24BE7F218(v64);
    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    v15 = v36;
    if (v36)
    {
      v37 = v36;
      goto LABEL_44;
    }
  }

  sub_24BE7F218(&v53);
  sub_24BE7F218(&v54);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_24BEE99F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v32 - 176);
  sub_24BE7F218(v32 - 160);
  v34 = *(v32 - 144);
  if (v34)
  {
    *(v32 - 136) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 120);
  if (v35)
  {
    *(v32 - 112) = v35;
    operator delete(v35);
  }

  v36 = *(v32 - 96);
  if (v36)
  {
    *(v32 - 88) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void sub_24BEE9B98(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void ****a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *a3;
  v6 = *a2;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v7 = *a4;
  v8 = *(a4 + 8);
  if (*a4 != v8)
  {
    do
    {
      if (!*v7)
      {
        sub_24BEA52D0((v6 + 16), *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      v18 = 0;
      v19 = 0;
      v17 = 0;
      sub_24BCC9A1C(&v17, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      sub_24BCC9A1C(&v14, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
      __p = 0;
      v12 = 0;
      v13 = 0;
      sub_24BCC9A1C(&__p, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
      sub_24BEA7AB0(v5, &v17, &v14, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, &v20);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      sub_24BE811EC(a5, &v20);
      sub_24BE7F218(&v20);
      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_24BEE9D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  *(v23 - 64) = v22;
  sub_24BCC961C((v23 - 64));
  _Unwind_Resume(a1);
}

void sub_24BEE9E68(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_24BCC9A1C(&v13, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_24BCC9A1C(&v10, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_24BCC9A1C(&__p, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  sub_24BEA8154(v5, (v5 + 16), &v13, &v10, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v16);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v16, &v17, 1uLL);
  sub_24BE7F218(v16);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEE9FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_24BE7F218(v16 - 56);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BEEA004(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11) && !memcmp(v9, v11, v10) && (v12 = a1[9], v13 = a1[10] - v12, v14 = a2[9], v13 == a2[10] - v14))
  {
    return memcmp(v12, v14, v13) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_24BEEA094(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  __p = 0;
  v12 = 0;
  v13 = 0;
  v8 = **a3;
  if ((v8 & 0x80000000) != 0 || (((**a2)[1] - ***a2) >> 2) - 1 <= v8)
  {
    LODWORD(v10[0]) = -2;
    sub_24BC97D60(&__p, v10);
  }

  else
  {
    LODWORD(v10[0]) = -1;
    sub_24BC97D60(&__p, v10);
  }

  sub_24BEBFB50(*a2, &__p, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v15);
  memset(v10, 0, sizeof(v10));
  sub_24BCC9984(v10, v15, &v16, 1uLL);
  sub_24BEEF168(a4, v10, a3);
  v14 = v10;
  sub_24BCC961C(&v14);
  sub_24BE7F218(v15);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_24BEEA1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEEA364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(&a16);
  sub_24BE7F218(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a18);
  _Unwind_Resume(a1);
}

void sub_24BEEA3C8(uint64_t a1, uint64_t ***a2, void **a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = -1;
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v6, &v7, 1uLL);
  sub_24BEBFB50(v5, &__p, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v11);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_24BEA3FE8(v11, *a3, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEA574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a11);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(&a15);
  sub_24BE7F218(v18 - 72);
  _Unwind_Resume(a1);
}

void sub_24BEEA5E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BEEA5D0);
}

void sub_24BEEA614(uint64_t a1, uint64_t ***a2, int **a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a3;
  v4 = *(a1 + 20);
  v5 = v3 >= 0 && v3 <= v4;
  v6 = *a2;
  if (v5)
  {
    v7 = (v4 + 1);
  }

  else
  {
    v7 = v4;
  }

  sub_24BEB4D70(v6, v7, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEA6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEA840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEA888(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = **a3;
  v7 = *(a1 + 48);
  if (v6 >= 0 && v6 <= v7)
  {
    v9 = (v7 + 1);
  }

  else
  {
    v9 = v7;
  }

  sub_24BEA8718(*a2, (a1 + 24), v9, *(a1 + 8), *(a1 + 16) | 0x100000000, v10);
  sub_24BEEF168(a4, v10, a3);
  v11 = v10;
  sub_24BCC961C(&v11);
}

void sub_24BEEA914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEEA9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

BOOL sub_24BEEAA04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && (v3 = a1 + 24, v2 = *(a1 + 24), v4 = *(v3 + 8) - v2, v6 = a2 + 24, v5 = *(a2 + 24), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_24BEEAA7C(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCD0924();
}

void sub_24BEEAB6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEEAC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEAC9C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(*v5 + 56);
  if (*(a1 + 20) == 1)
  {
    sub_24BEB2920(*a5, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  sub_24BCCCD5C();
}

void sub_24BEEAE44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  sub_24BE7F218(va3);
  _Unwind_Resume(a1);
}

void sub_24BEEAEC0(uint64_t a1, uint64_t ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) == 1)
  {
    sub_24BEBF910(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  sub_24BEB2E9C(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEB048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEB084(uint64_t a1, uint64_t ***a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) == 1)
  {
    sub_24BEBF910(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  sub_24BEB2E9C(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEB1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEB2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEB2EC(uint64_t a1@<X0>, void **a2@<X2>, int **a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      v9 = *v4;
      v10 = (*a2)[1];
      *&v11 = **a2;
      *(&v11 + 1) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      if (v9 == 1)
      {
        sub_24BEB6EE8(&v11, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      sub_24BE811EC(a4, &v11);
      sub_24BE7F218(&v11);
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_24BEEB3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEEB3E4(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (**a3 == 1)
  {
    sub_24BEB6EE8(v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v7 = *(v6 + 8);
  *&v12 = *v6;
  *(&v12 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (a3[1] - *a3 >= 5uLL)
  {
    v8 = *a2;
    if (*(*a3 + 4) == 1)
    {
      sub_24BEB6EE8((v8 + 16), *(a1 + 8), *(a1 + 16) | 0x100000000);
    }

    v9 = *(v8 + 24);
    v11[0] = *(v8 + 16);
    v11[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEA3D40(&v12, v11, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v13 = v12;
  if (*(&v12 + 1))
  {
    atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BCC9984(a4, &v13, v14, 1uLL);
  sub_24BE7F218(&v13);
  sub_24BE7F218(&v12);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_24BEEB570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEEB5A8(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEB02F0(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEB6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BEEB850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEEB94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEBA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEEBB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BEEBBC4(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a2;
  sub_24BC94F74(&v24, (*(**a2 + 8) - ***a2) >> 2);
  v7 = v25;
  if (v24 != v25)
  {
    v8 = 0;
    v9 = (v25 - v24 - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = (v24 + 8);
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5E0)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  v15 = *(v7 - 8);
  *(v7 - 8) = *(v7 - 4);
  *(v7 - 4) = v15;
  v16 = *a1;
  v17 = a1[1] - *a1;
  if (v17 == 80 || v17 == 48)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v18 = a3[1];
  if (*a3 == v18)
  {
    if (v17 <= 0x30)
    {
      v23 = 0;
LABEL_22:
      if (!v23 || *(*(v16 + 16 * v22 + 16) + 56))
      {
        v20 = *(*v6 + 56);
        sub_24BCD0924();
      }

LABEL_25:
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[BlockMaskedMM] Cannot calculate VJP with respect to BOOLean masks.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    v23 = 1;
  }

  else
  {
    v19 = *(v18 - 4);
    v23 = v19 == v22 + 1;
    if (v19 != v22)
    {
      goto LABEL_22;
    }
  }

  if (!*(*(v16 + 16 * v22) + 56))
  {
    goto LABEL_25;
  }

  goto LABEL_22;
}

void sub_24BEECE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    *(v18 - 104) = v20;
    operator delete(v20);
  }

  *(v18 - 112) = a18;
  sub_24BCC961C((v18 - 112));
  _Unwind_Resume(a1);
}

void sub_24BEED26C()
{
  v1 = *(v0 - 232);
  if (v1)
  {
    *(v0 - 224) = v1;
    JUMPOUT(0x24BEED27CLL);
  }

  JUMPOUT(0x24BEED22CLL);
}

void sub_24BEED284(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *a2;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_24BCC9A1C(&v44, *v10, v10[1], (v10[1] - *v10) >> 2);
  v47 = -3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v47, &v48, 2uLL);
  sub_24BEA7634(a2, &__p, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v11 = v43;
  v43 = 0uLL;
  v12 = *(a2 + 8);
  *a2 = v11;
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  sub_24BE7F218(&v43);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  v13 = *a2;
  v41 = 0;
  v42 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  v14 = __p;
  v15 = v41 - __p;
  v16 = *(v9 + 20);
  *(__p + ((((v41 - __p) << 30) - 0x100000000) >> 30)) = v16;
  *&v14[((v15 << 30) - 0x300000000) >> 30] = v16;
  sub_24BEA4DE0(a2, &__p, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v17 = v43;
  v43 = 0uLL;
  v18 = *(a2 + 8);
  *a2 = v17;
  if (v18)
  {
    sub_24BC9EC78(v18);
  }

  sub_24BE7F218(&v43);
  v19 = v44;
  v20 = v45;
  v21 = v45 - v44;
  v22 = ((v45 - v44) << 30) - 0x200000000;
  *&v44[v22 >> 30] *= *(v9 + 20);
  v23 = (v21 << 30) - 0x100000000;
  *&v19[v23 >> 30] *= *(v9 + 20);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  sub_24BCC9A1C(&v37, v19, v20, v21 >> 2);
  sub_24BEA4500(a2, &v37, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v24 = v43;
  v43 = 0uLL;
  v25 = *(a2 + 8);
  *a2 = v24;
  if (v25)
  {
    sub_24BC9EC78(v25);
  }

  v26 = v21 << 30;
  v27 = v22 >> 32;
  v28 = v23 >> 32;
  sub_24BE7F218(&v43);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  v29 = v44;
  *&v44[4 * v27] = a3;
  *&v29[4 * v28] = a4;
  LODWORD(v47) = 0;
  sub_24BD0E524(v36, v26 >> 32);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_24BCC9A1C(&v33, v44, v45, (v45 - v44) >> 2);
  sub_24BEA8020(a2, v36, &v33, *(v9 + 8), *(v9 + 16) | 0x100000000, &v43);
  v30 = v43;
  v43 = 0uLL;
  v31 = *(a2 + 8);
  *a2 = v30;
  if (v31)
  {
    sub_24BC9EC78(v31);
  }

  sub_24BE7F218(&v43);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  *a5 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_24BEED598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v21 = *(v19 - 104);
  if (v21)
  {
    *(v19 - 96) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEED964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 96);
  if (v28)
  {
    *(v26 - 88) = v28;
    operator delete(v28);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  sub_24BE7F218(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEEDA10@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*(**a3 + 8) - ***a3 <= 4uLL)
  {
    sub_24BC923C0();
  }

  v5 = (**a2)[1];
  if (v5 == ***a2)
  {
    sub_24BC923C0();
  }

  v6 = *a4;
  if (*a4 != *(a4 + 8))
  {
    v7 = *(**a3 + 8);
    v8 = *(v7 - 4);
    v12 = *(v7 - 8);
    v9 = *(v5 - 4);
    if (*v6 != 1)
    {
      if (!*v6)
      {
        sub_24BEA52D0(*a2, *(result + 8), *(result + 16) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[GatherMM] Cannot calculate VJP with respect to indices.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BEA52D0(*a2 + 2, *(result + 8), *(result + 16) | 0x100000000);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEEE000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, int a47, __int16 a48, char a49, char a50)
{
  *(v51 - 168) = v50;
  sub_24BCC961C((v51 - 168));
  _Unwind_Resume(a1);
}

void sub_24BEEE1B0(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 32);
  v6 = (a1 + 24);
  sub_24BC94F74(&v13, (*(a1 + 32) - *(a1 + 24)) >> 2);
  v7 = *v6;
  v8 = v13;
  if (*v5 != *v6)
  {
    v9 = 0;
    v10 = (*v5 - *v6) >> 2;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v8[*(v7 + 4 * v9)] = v9;
      ++v9;
    }

    while (v10 != v9);
  }

  v11 = *a3;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, v8, v14, (v14 - v8) >> 2);
  sub_24BEACEBC(v11, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEE2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_24BE7F218(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_24BEEE344(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  __p[5] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  sub_24BEACEBC(v4, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEE418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEEE44C(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = **a3;
  v12 = v5;
  if ((v5 & 0x80000000) == 0)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v6 = (a1 + 24);
    if (v7 != v8)
    {
      v9 = *(a1 + 24);
      do
      {
        if (*v9 >= v5)
        {
          ++*v9;
        }

        ++v9;
      }

      while (v9 != v8);
    }

    sub_24BEAAF40(v6, &v7[v5], &v12);
  }

  v10 = *a2;
  memset(v11, 0, sizeof(v11));
  sub_24BCC9A1C(v11, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  sub_24BEACEBC(v10, v11, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEE5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v16 - 56);
  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BEEE630(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void sub_24BEEE674(uint64_t *a1, uint64_t a2, int **a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_24BCC9A1C(&v12, a1[3], a1[4], (a1[4] - a1[3]) >> 2);
  v5 = **a3;
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v12;
    v7 = v13;
    while (v6 != v7)
    {
      if (*v6 >= v5)
      {
        ++*v6;
      }

      ++v6;
    }
  }

  v10 = 0;
  v11 = 0;
  __p = 0;
  v8 = *(a1 + 52);
  sub_24BEF0E00();
}

void sub_24BEEE88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v24 - 72);
  sub_24BE7F218(v24 - 112);
  v26 = *(v23 + 16);
  if (v26)
  {
    *(v23 + 24) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BEEE93C(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 24;
  v7 = *(a2 + 24);
  return v6 == *(v8 + 8) - v7 && !memcmp(v4, v7, v6) && *(a1 + 48) == *(a2 + 48) && *(a1 + 52) == *(a2 + 52);
}

void sub_24BEEE9A8(uint64_t a1, uint64_t *a2, int **a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (**a3 < 1)
  {
    v5 = *(v4 + 8);
    v6[0] = *v4;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34(v4, **a3, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v6);
  }

  sub_24BEA00DC(v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEEB1C(uint64_t a1, uint64_t *a2, int **a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (**a3 < 1)
  {
    v5 = *(v4 + 8);
    v6[0] = *v4;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34(v4, **a3, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v6);
  }

  sub_24BEA0B40(v6, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEECC4(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_24BECBE1C(*a2, (a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  memset(v7, 0, sizeof(v7));
  sub_24BCC9984(v7, v9, &v10, 1uLL);
  sub_24BEEF168(a4, v7, a3);
  v8 = v7;
  sub_24BCC961C(&v8);
  sub_24BE7F218(v9);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BEEED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void *sub_24BEEEDBC(uint64_t a1, void *a2)
{
  v3 = sub_24BC95264(a2, "View", 4);

  return sub_24BF031F4(v3, (a1 + 20));
}

void sub_24BEEEE1C(uint64_t a1, uint64_t ***a2, int **a3)
{
  v7[7] = *MEMORY[0x277D85DE8];
  v5 = **a3;
  v6 = *a2;
  if ((((**a2)[1] - ***a2) >> 2) - 1 == v5)
  {
    sub_24BEACB34(v6, v5, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
    sub_24BEA6A00(v7, *(a1 + 20) | 0x100000000, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  sub_24BEA6A00(v6, *(a1 + 20) | 0x100000000, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BEEEFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *__p, char *a18)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  __p = &a10;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a15);
  _Unwind_Resume(a1);
}

void sub_24BEEF138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void *sub_24BEEF168(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9548(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BCC9A1C((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_24BEEF1D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEEF1E8(uint64_t a1@<X0>, const void ***a2@<X1>, const void ***a3@<X8>)
{
  v6 = *a2;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_24BCC9A1C(&v12, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = *(a1 + 12) - ((v13 - v12) >> 2);
  v11 = 1;
  sub_24BEAB510(&v12, v12, v7, &v11);
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, v12, v13, (v13 - v12) >> 2);
  sub_24BEA4500(a2, &__p, *a1, *(a1 + 8) | 0x100000000, a3);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_24BEEF2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BEEF2F4(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9548(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BCC9A1C((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_24BEEF35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BEEF374(uint64_t a1@<X0>, const void ***a2@<X1>, const void ***a3@<X8>)
{
  v6 = *a2;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_24BCC9A1C(&v12, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = *(a1 + 12) - ((v13 - v12) >> 2);
  v11 = 1;
  sub_24BEAB510(&v12, v12, v7, &v11);
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, v12, v13, (v13 - v12) >> 2);
  sub_24BEA4500(a2, &__p, *a1, *(a1 + 8) | 0x100000000, a3);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_24BEEF448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BEEF480(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v81 = *(a2 - 1);
        v82 = *v10;
        if (*(**a3 + 4 * v81) < *(**a3 + 4 * v82))
        {
          *v10 = v81;
          *(a2 - 1) = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v89 = v10 + 1;
      v90 = v10[1];
      v91 = v10 + 2;
      v92 = v10[2];
      v93 = *v10;
      v94 = **a3;
      v95 = *(v94 + 4 * v90);
      v96 = *v10;
      result = *(v94 + 4 * v96);
      v97 = v92;
      v98 = *(v94 + 4 * v92);
      if (v95 >= result)
      {
        if (v98 < v95)
        {
          *v89 = v92;
          *v91 = v90;
          result = *(v94 + 4 * v92);
          v96 = v90;
          v99 = v10;
          v100 = v10 + 1;
          v97 = v90;
          if (result < *(v94 + 4 * v93))
          {
            goto LABEL_180;
          }

LABEL_182:
          v147 = *(a2 - 1);
          if (*(v94 + 4 * v147) < *(v94 + 4 * v97))
          {
            *v91 = v147;
            *(a2 - 1) = v90;
            v148 = *v91;
            v149 = *v89;
            if (*(v94 + 4 * v148) < *(v94 + 4 * v149))
            {
              v10[1] = v148;
              v10[2] = v149;
              v150 = *v10;
              if (*(v94 + 4 * v148) < *(v94 + 4 * v150))
              {
                *v10 = v148;
                v10[1] = v150;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v98 < v95)
        {
          v99 = v10;
          v100 = v10 + 2;
          v90 = *v10;
          goto LABEL_180;
        }

        *v10 = v90;
        v10[1] = v93;
        result = *(v94 + 4 * v92);
        v99 = v10 + 1;
        v100 = v10 + 2;
        v90 = v93;
        if (result < *(v94 + 4 * v93))
        {
LABEL_180:
          *v99 = v92;
          *v100 = v93;
          v97 = v96;
          goto LABEL_182;
        }
      }

      v90 = v92;
      goto LABEL_182;
    }

    if (v11 == 5)
    {

      return sub_24BEEFF14(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v101 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v102 = 0;
            v103 = **a3;
            v104 = v10;
            do
            {
              v105 = v104[1];
              v106 = *v104;
              v104 = v101;
              if (*(v103 + 4 * v105) < *(v103 + 4 * v106))
              {
                v107 = v102;
                while (1)
                {
                  *(v10 + v107 + 4) = v106;
                  if (!v107)
                  {
                    break;
                  }

                  v106 = *(v10 + v107 - 4);
                  v107 -= 4;
                  if (*(v103 + 4 * v105) >= *(v103 + 4 * v106))
                  {
                    v108 = (v10 + v107 + 4);
                    goto LABEL_124;
                  }
                }

                v108 = v10;
LABEL_124:
                *v108 = v105;
              }

              v101 = v104 + 1;
              v102 += 4;
            }

            while (v104 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v142 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v143 = **a3;
          do
          {
            v144 = v9[1];
            v145 = *v9;
            v9 = v142;
            if (*(v143 + 4 * v144) < *(v143 + 4 * v145))
            {
              do
              {
                *v142 = v145;
                v145 = *(v142 - 2);
                --v142;
              }

              while (*(v143 + 4 * v144) < *(v143 + 4 * v145));
              *v142 = v144;
            }

            v142 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v109 = (v11 - 2) >> 1;
        v110 = *a3;
        v111 = v109;
        do
        {
          v112 = v111;
          if (v109 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = &v10[v113];
            v115 = *v114;
            if (2 * v112 + 2 >= v11)
            {
              v116 = *v110;
            }

            else
            {
              v116 = *v110;
              if (*(*v110 + 4 * v115) < *(*v110 + 4 * v114[1]))
              {
                v115 = v114[1];
                ++v114;
                v113 = 2 * v112 + 2;
              }
            }

            v117 = &v10[v112];
            v118 = *v117;
            if (*(v116 + 4 * v115) >= *(v116 + 4 * *v117))
            {
              do
              {
                v119 = v114;
                *v117 = v115;
                if (v109 < v113)
                {
                  break;
                }

                v120 = (2 * v113) | 1;
                v114 = &v10[v120];
                v113 = 2 * v113 + 2;
                v115 = *v114;
                if (v113 >= v11)
                {
                  v113 = v120;
                }

                else if (*(v116 + 4 * v115) >= *(v116 + 4 * v114[1]))
                {
                  v113 = v120;
                }

                else
                {
                  v115 = v114[1];
                  ++v114;
                }

                v117 = v119;
              }

              while (*(v116 + 4 * v115) >= *(v116 + 4 * v118));
              *v119 = v118;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        do
        {
          v121 = 0;
          v122 = *v10;
          v123 = *a3;
          v124 = v10;
          do
          {
            v125 = &v124[v121];
            v126 = v125 + 1;
            v127 = v125[1];
            result = 2 * v121;
            v128 = (2 * v121) | 1;
            v121 = 2 * v121 + 2;
            if (v121 >= v11)
            {
              v121 = v128;
            }

            else
            {
              v130 = v125[2];
              v129 = v125 + 2;
              result = v130;
              if (*(*v123 + 4 * v127) >= *(*v123 + 4 * v130))
              {
                v121 = v128;
              }

              else
              {
                v127 = result;
                v126 = v129;
              }
            }

            *v124 = v127;
            v124 = v126;
          }

          while (v121 <= ((v11 - 2) >> 1));
          if (v126 == --a2)
          {
            *v126 = v122;
          }

          else
          {
            *v126 = *a2;
            *a2 = v122;
            v131 = (v126 - v10 + 4) >> 2;
            v132 = v131 < 2;
            v133 = v131 - 2;
            if (!v132)
            {
              v134 = v133 >> 1;
              v135 = &v10[v134];
              v136 = *v135;
              v137 = *v126;
              v138 = *v123;
              if (*(v138 + 4 * v136) < *(v138 + 4 * *v126))
              {
                do
                {
                  v139 = v135;
                  *v126 = v136;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = &v10[v134];
                  v136 = *v135;
                  v126 = v139;
                }

                while (*(v138 + 4 * v136) < *(v138 + 4 * v137));
                *v139 = v137;
              }
            }
          }

          v132 = v11-- <= 2;
        }

        while (!v132);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      if (v19 >= *(v14 + 4 * *v10))
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v12;
          v24 = *v10;
          if (*(v14 + 4 * v23) < *(v14 + 4 * v24))
          {
            *v10 = v23;
            *v12 = v24;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 4 * v27) < *(v14 + 4 * v18))
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 4 * v29);
      v32 = *(a2 - 2);
      v33 = *(v14 + 4 * v32);
      if (v31 >= *(v14 + 4 * v30))
      {
        if (v33 < v31)
        {
          *v28 = v32;
          *(a2 - 2) = v29;
          v34 = *v28;
          v35 = v10[1];
          if (*(v14 + 4 * v34) < *(v14 + 4 * v35))
          {
            v10[1] = v34;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v10[1] = v32;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 4 * v37) < *(v14 + 4 * v30))
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v14 + 4 * v43);
      if (v42 >= *(v14 + 4 * v41))
      {
        if (v44 < v42)
        {
          *v38 = v43;
          *(a2 - 3) = v39;
          v45 = *v38;
          v46 = v10[2];
          if (*(v14 + 4 * v45) < *(v14 + 4 * v46))
          {
            v10[2] = v45;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v44 < v42)
        {
          v10[2] = v43;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 4 * v47) < *(v14 + 4 * v41))
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + 4 * v48);
      v51 = *v38;
      v52 = *(v14 + 4 * *v38);
      if (v50 >= *(v14 + 4 * *v28))
      {
        if (v52 >= v50)
        {
          goto LABEL_56;
        }

        *v13 = v51;
        *v38 = v48;
        v38 = v13;
        LODWORD(v48) = v49;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        LODWORD(v48) = v51;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v49;
LABEL_56:
          v53 = *v10;
          *v10 = v48;
          *v13 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v38 = v49;
      goto LABEL_56;
    }

    v20 = *v10;
    v21 = *v13;
    v22 = *(v14 + 4 * v20);
    if (v22 >= *(v14 + 4 * *v13))
    {
      if (v16 < v22)
      {
        *v10 = v15;
        *(a2 - 1) = v20;
        v25 = *v10;
        v26 = *v13;
        if (*(v14 + 4 * v25) < *(v14 + 4 * v26))
        {
          *v13 = v25;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v22)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v10 = v21;
    v36 = *(a2 - 1);
    if (*(v14 + 4 * v36) < *(v14 + 4 * v21))
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v10;
    if (a5)
    {
      v55 = *(v14 + 4 * v54);
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v10[++v56];
      }

      while (*(v14 + 4 * v57) < v55);
      v58 = &v10[v56];
      v59 = a2;
      if (v56 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v14 + 4 * v61) >= v55);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v14 + 4 * v60) >= v55);
      }

      if (v58 >= v59)
      {
        v69 = v58 - 1;
      }

      else
      {
        v62 = *v59;
        v63 = v57;
        v64 = v58;
        v65 = v59;
        do
        {
          *v64 = v62;
          *v65 = v63;
          v66 = *(v14 + 4 * v54);
          do
          {
            v67 = v64[1];
            ++v64;
            v63 = v67;
          }

          while (*(v14 + 4 * v67) < v66);
          do
          {
            v68 = *--v65;
            v62 = v68;
          }

          while (*(v14 + 4 * v68) >= v66);
        }

        while (v64 < v65);
        v69 = v64 - 1;
      }

      if (v69 != v10)
      {
        *v10 = *v69;
      }

      *v69 = v54;
      if (v58 < v59)
      {
        goto LABEL_81;
      }

      v70 = sub_24BEF00AC(v10, v69, a3);
      v10 = v69 + 1;
      result = sub_24BEF00AC(v69 + 1, a2, a3);
      if (result)
      {
        a2 = v69;
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        result = sub_24BEEF480(v9, v69, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v69 + 1;
      }
    }

    else
    {
      v55 = *(v14 + 4 * v54);
      if (*(v14 + 4 * *(v10 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v14 + 4 * *(a2 - 1)))
      {
        v72 = v10 + 1;
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          ++v72;
        }

        while (v55 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v55 >= *(v14 + 4 * v71));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v55 < *(v14 + 4 * v74));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          v77 = *(v14 + 4 * v54);
          do
          {
            v78 = v10[1];
            ++v10;
            v75 = v78;
          }

          while (v77 >= *(v14 + 4 * v78));
          do
          {
            v79 = *--v73;
            v76 = v79;
          }

          while (v77 < *(v14 + 4 * v79));
        }

        while (v10 < v73);
      }

      v80 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v80;
      }

      a5 = 0;
      *v80 = v54;
    }
  }

  v83 = *v10;
  v84 = v10[1];
  v85 = **a3;
  v86 = *(v85 + 4 * v84);
  v87 = *(a2 - 1);
  v88 = *(v85 + 4 * v87);
  if (v86 >= *(v85 + 4 * *v10))
  {
    if (v88 < v86)
    {
      v10[1] = v87;
      *(a2 - 1) = v84;
      v141 = *v10;
      v140 = v10[1];
      if (*(v85 + 4 * v140) < *(v85 + 4 * v141))
      {
        *v10 = v140;
        v10[1] = v141;
      }
    }
  }

  else
  {
    if (v88 >= v86)
    {
      *v10 = v84;
      v10[1] = v83;
      v146 = *(a2 - 1);
      if (*(v85 + 4 * v146) >= *(v85 + 4 * v83))
      {
        return result;
      }

      v10[1] = v146;
    }

    else
    {
      *v10 = v87;
    }

    *(a2 - 1) = v83;
  }

  return result;
}

int *sub_24BEEFF14(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t **a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = **a6;
  v9 = *(v8 + 4 * *a2);
  v10 = *a3;
  v11 = *(v8 + 4 * *a3);
  if (v9 >= *(v8 + 4 * *result))
  {
    if (v11 >= v9)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(v8 + 4 * v13) >= *(v8 + 4 * v14))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 >= v9)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(v8 + 4 * *a3) < *(v8 + 4 * v7))
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(v8 + 4 * v15) < *(v8 + 4 * v12))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(v8 + 4 * v16) < *(v8 + 4 * v17))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(v8 + 4 * v18) < *(v8 + 4 * v19))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(v8 + 4 * v20) < *(v8 + 4 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(v8 + 4 * v22) < *(v8 + 4 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(v8 + 4 * v24) < *(v8 + 4 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(v8 + 4 * v26) < *(v8 + 4 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BEF00AC(int *a1, int *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = **a3;
      v9 = *(v8 + 4 * v7);
      v10 = *(a2 - 1);
      v11 = *(v8 + 4 * v10);
      if (v9 >= *(v8 + 4 * *a1))
      {
        if (v11 < v9)
        {
          a1[1] = v10;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v45 = *(a2 - 1);
        if (*(v8 + 4 * v45) >= *(v8 + 4 * v6))
        {
          return 1;
        }

        a1[1] = v45;
      }

      else
      {
        *a1 = v10;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_24BEEFF14(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = **a3;
    v29 = *(v28 + 4 * v24);
    v30 = *a1;
    v31 = v26;
    v32 = *(v28 + 4 * v26);
    if (v29 >= *(v28 + 4 * v30))
    {
      if (v32 < v29)
      {
        *v23 = v26;
        *v25 = v24;
        v30 = v24;
        v33 = a1;
        v34 = a1 + 1;
        v31 = v24;
        if (*(v28 + 4 * v26) >= *(v28 + 4 * v27))
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v32 < v29)
      {
        v33 = a1;
        v34 = a1 + 2;
        v24 = *a1;
LABEL_44:
        *v33 = v26;
        *v34 = v27;
        v31 = v30;
LABEL_46:
        v46 = *(a2 - 1);
        if (*(v28 + 4 * v46) < *(v28 + 4 * v31))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          if (*(v28 + 4 * v47) < *(v28 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v49 = *a1;
            if (*(v28 + 4 * v47) < *(v28 + 4 * v49))
            {
              *a1 = v47;
              a1[1] = v49;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v27;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v24 = v27;
      if (*(v28 + 4 * v26) < *(v28 + 4 * v27))
      {
        goto LABEL_44;
      }
    }

    v24 = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(**a3 + 4 * v4) < *(**a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v13 = a1[2];
  v14 = a1[1];
  v15 = **a3;
  v16 = *(v15 + 4 * v14);
  v17 = *a1;
  v18 = *(v15 + 4 * v13);
  if (v16 >= *(v15 + 4 * *a1))
  {
    if (v18 >= v16)
    {
      goto LABEL_26;
    }

    a1[1] = v13;
    *v12 = v14;
    v21 = *(v15 + 4 * v13);
    v22 = *(v15 + 4 * v17);
    v19 = a1;
    v20 = a1 + 1;
LABEL_24:
    if (v21 >= v22)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v19 = a1;
  v20 = a1 + 2;
  if (v18 >= v16)
  {
    *a1 = v14;
    a1[1] = v17;
    v21 = *(v15 + 4 * v13);
    v22 = *(v15 + 4 * v17);
    v19 = a1 + 1;
    v20 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v19 = v13;
  *v20 = v17;
LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v12;
    if (*(v15 + 4 * *v37) < *(v15 + 4 * v41))
    {
      v42 = i;
      while (1)
      {
        *(a1 + v42) = v41;
        v43 = v42 - 4;
        if (v42 == 4)
        {
          break;
        }

        v41 = *(a1 + v42 - 8);
        v42 -= 4;
        if (*(v15 + 4 * v40) >= *(v15 + 4 * v41))
        {
          v44 = (a1 + v43);
          goto LABEL_34;
        }
      }

      v44 = a1;
LABEL_34:
      *v44 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v12 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

void *sub_24BEF03F8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BEF04B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BEF04D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCC95E0(result, a4);
  }

  return result;
}

uint64_t sub_24BEF05F4(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4, char *a5)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F989A8;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *a4;
  v9 = *a5;
  *(a1 + 48) = 0;
  v10 = a1 + 48;
  *(v10 - 8) = v7;
  *(v10 - 24) = &unk_285F9CCB0;
  *(v10 - 16) = v6;
  *(v10 + 8) = 0u;
  sub_24BD7E680(v10, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 72) = v8;
  *(a1 + 73) = v9;
  return a1;
}

uint64_t sub_24BEF06AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BEF0704(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF0788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BEF0870(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F9A918;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a4;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 24) = &unk_285F9DC18;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  sub_24BCC9A1C(v8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = v7;
  return a1;
}

void sub_24BEF0938(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BEF09B4(__int128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      sub_24BCB53E8(v9, v8);
    }

    v6 = (v5 - *a1 + 1 + ((v5 - *a1 + 1) >> 63)) >> 1;
    sub_24BDFEB14(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    a1[1] -= v6;
    a1[2] = v7;
  }

  result = *a2;
  *v4 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[2];
  return result;
}

uint64_t sub_24BEF0B54(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F9A2B8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 4) = v7;
  *(v8 - 24) = &unk_285F9DF48;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  sub_24BCC9A1C(v8, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

uint64_t sub_24BEF0BF8(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if (a5 <= (v8 - v9) >> 4)
    {
      v16 = (v9 - a2) >> 4;
      if (v16 >= a5)
      {
        sub_24BE9D014(a1, a2, a1[1], &a2[2 * a5]);
        v23 = &v7[2 * a5];
        v24 = v5;
        do
        {
          sub_24BECD238(v24, v7);
          v7 += 2;
          v24 += 2;
        }

        while (v7 != v23);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        v18 = a1[1];
        if (v17 != a4)
        {
          v18 = a1[1];
          v19 = (a3 + v9 - a2);
          v20 = v18;
          do
          {
            v21 = v19[1];
            *v20 = *v19;
            v20[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            v19 += 2;
            v20 += 2;
            v18 += 2;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          sub_24BE9D014(a1, a2, v9, &a2[2 * a5]);
          if (v9 != v5)
          {
            v22 = v5;
            do
            {
              sub_24BECD238(v22, v7);
              v7 += 2;
              v22 += 2;
            }

            while (v7 != v17);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + ((v9 - *a1) >> 4);
      if (v11 >> 60)
      {
        sub_24BC8E01C();
      }

      v12 = a2 - v10;
      v13 = v8 - v10;
      if (v13 >> 3 > v11)
      {
        v11 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      v15 = v12 >> 4;
      v28[4] = a1;
      if (v14)
      {
        sub_24BCB53E8(a1, v14);
      }

      v25 = (16 * v15);
      v28[0] = 0;
      v28[1] = 16 * v15;
      v28[3] = 0;
      do
      {
        v26 = v7[1];
        *v25 = *v7;
        v25[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v25 += 2;
        v7 += 2;
      }

      while (v25 != (16 * v15 + 16 * a5));
      v28[2] = 16 * v15 + 16 * a5;
      v5 = sub_24BE9D078(a1, v28, v5);
      sub_24BCC98C0(v28);
    }
  }

  return v5;
}

void sub_24BEF0DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

void *sub_24BEF0E8C(void *a1, uint64_t *a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9A678;
  sub_24BEF0F08(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

double sub_24BEF0F08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char *a5, uint64_t *a6)
{
  v9 = *a3;
  v10 = *(a3 + 2);
  v15 = 0;
  v14 = 0uLL;
  sub_24BCC9A1C(&v14, *a4, a4[1], (a4[1] - *a4) >> 2);
  v11 = *a5;
  v12 = *a6;
  *(a2 + 16) = v10;
  *a2 = &unk_285F9D8E8;
  *(a2 + 8) = v9;
  result = *&v14;
  *(a2 + 24) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v11;
  *(a2 + 52) = v12;
  return result;
}

void sub_24BEF0FDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = __ROR8__(a1, 32);
  v3 = sub_24BE80CCC();
  sub_24BEF456C(a2, v4, 2, (v3 & 0xFFFFFFFFFFLL));
}

uint64_t sub_24BEF10A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24BEF1148(a1, a2, 0, &v10);
  v5 = v10;
  if (*a1 != v10)
  {
    v6 = *(&v10 + 1);
    if (*(&v10 + 1))
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = a1[1];
    *a1 = v5;
    a1[1] = v6;
    if (v7)
    {
      sub_24BC9EC78(v7);
    }
  }

  v8 = v11[1];
  *a3 = v11[0];
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BE7F218(v11);
  return sub_24BE7F218(&v10);
}

void sub_24BEF1148(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = sub_24BF02A98(a2, a3);
  v8 = v7 | 0x100000000;
  sub_24BEF1978(a1, 2, v6, v8);
  sub_24BEA92B8(&v22, 2, v6, v8, v23);
  sub_24BE7F218(&v22);
  v9 = v23[0];
  v18 = 2;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_24BCC9910(&v19, &v18, &v19, 1uLL);
  sub_24BEA4500(v9, &v19, v6, v8, &v22);
  v10 = v23[0];
  v13 = 2;
  v15 = 0;
  v16 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v13, &__p, 1uLL);
  sub_24BEA4500((v10 + 16), &__p, v6, v8, &v17);
  v11 = v22;
  v22 = 0uLL;
  v12 = v17;
  *a4 = v11;
  a4[1] = v12;
  v17 = 0uLL;
  sub_24BE7F218(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(&v22);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  *&v22 = v23;
  sub_24BCC961C(&v22);
}

void sub_24BEF12B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  if (a16)
  {
    operator delete(a16);
  }

  a19 = v19 - 72;
  sub_24BCC961C(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEF131C(uint64_t a1)
{
  v2 = sub_24BEF1354();

  sub_24BEF1054(v2, a1);
}

void *sub_24BEF1354()
{
  if ((atomic_load_explicit(&qword_27F079020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079020))
  {
    v1.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_24BEF0FDC(v1.__d_.__rep_ / 1000, &unk_27F079010);
  }

  return &unk_27F079010;
}

void sub_24BEF1410(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = a2;
  if (*(a3 + 16) == 1)
  {
    v10 = *a3;
    v9 = *(a3 + 8);
    v31[0] = *a3;
    v31[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = sub_24BEF1354();
    sub_24BEF10A8(v11, v12, v31);
    v10 = v31[0];
  }

  if (*(v10 + 14) != 3)
  {
    sub_24BCE1268(&v33);
    v18 = sub_24BC95264(&v33, "[bits] Expected key type uint32 but received ", 45);
    v19 = v31[0][7];
    LODWORD(v35.__r_.__value_.__l.__data_) = v19;
    v35.__r_.__value_.__s.__data_[4] = BYTE4(v19);
    v20 = sub_24BF031F4(v18, &v35);
    sub_24BC95264(v20, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v35);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  LODWORD(v35.__r_.__value_.__l.__data_) = 2;
  v34 = 0;
  v33 = 0uLL;
  sub_24BCC9910(&v33, &v35, v35.__r_.__value_.__r.__words + 4, 1uLL);
  v13 = *v10;
  v14 = v10[1] - *v10;
  v15 = v33;
  if (v14 == *(&v33 + 1) - v33)
  {
    v16 = memcmp(v13, v33, v14) != 0;
    if (!v15)
    {
LABEL_11:
      if (!v16)
      {
        memset(__p, 0, sizeof(__p));
        sub_24BCC9A1C(__p, *a1, a1[1], (a1[1] - *a1) >> 2);
        if (a2 != 1 && a2 != 4 && a2 != 2)
        {
          sub_24BCE1268(&v33);
          v25 = sub_24BC95264(&v33, "[bits] Bit width must be in {1, 2, 4} but got ", 46);
          v26 = MEMORY[0x24C2543C0](v25, a2);
          sub_24BC95264(v26, ".", 1);
          v27 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v27, &v35);
          v27->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v27, &unk_285F94708, MEMORY[0x277D82610]);
        }

        v28 = sub_24BF02A98(a4, a5);
        v29 = v17;
        sub_24BEF4930();
      }

      sub_24BCE1268(&v33);
      v22 = sub_24BC95264(&v33, "[bits] Expected key shape (2) but received ", 43);
      v23 = sub_24BF02DB8(v22, v31[0]);
      sub_24BC95264(v23, ".", 1);
      v24 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v24, &v35);
      v24->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v24, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  else
  {
    v16 = 1;
    if (!v33)
    {
      goto LABEL_11;
    }
  }

  *(&v33 + 1) = v15;
  operator delete(v15);
  goto LABEL_11;
}

void sub_24BEF1860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a23);
      if (__p)
      {
        operator delete(__p);
      }

      sub_24BE7F218(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEF1978(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = 2;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_24BCC9910(&__p, v14, &v15, 2uLL);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = 1;
  sub_24BEF1410(&__p, 4, v9, a3, a4);
  sub_24BE7F218(v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_24BEF1A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_24BE7F218(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEF1A88(int a1)
{
  if (a1 != 11)
  {
    if (a1 == 9)
    {

      sub_24BEF4A5C();
    }

    nextafterf(-1.0, 0.0);

    sub_24BCCBB70();
  }

  sub_24BEF4E58();
}

void sub_24BEF1B34(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a4;
  if (sub_24BE80D54(&v21, dword_24BFEEC80))
  {
    v12 = sub_24BF02A98(a6, a7);
    v13 = a1[1];
    v19[0] = *a1;
    v19[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    v14 = v11 | 0x100000000;
    sub_24BEA3B14(v19, v21, v12, v14, v20);
    sub_24BE7F218(v19);
    v15 = a2[1];
    v17[0] = *a2;
    v17[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(v17, v21, v12, v14, v18);
    sub_24BE7F218(v17);
    sub_24BEB02F0(v18, v20, v12, v14);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[uniform] Can only generate uniform numbers with real floating point type.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEF1F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a18);
      v22 = *(v20 - 192);
      if (v22)
      {
        *(v20 - 184) = v22;
        operator delete(v22);
      }

      sub_24BE7F218(v20 - 168);
      sub_24BE7F218(v20 - 136);
      sub_24BE7F218(v20 - 104);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_24BEF2168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEF2378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_24BE7F218(va);
  sub_24BE7F218(v3);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BEF23DC(uint64_t **a1, uint64_t **a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_24BF02A98(a6, a7);
  if (a4 == 10)
  {
    v13 = v12;
    v14 = **a1;
    v15 = (*a1)[1];
    v16 = **a1;
    if (v15 == v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[multivariate_normal] mean must have at least one dimension.");
    }

    else if (((*a2)[1] - **a2) <= 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[multivariate_normal] cov must have at least two dimensions.");
    }

    else
    {
      v17 = *((*a2)[1] - 4);
      if (v17 == *((*a2)[1] - 8))
      {
        v18 = *(v15 - 4);
        if (v18 == v17)
        {
          v19 = v11;
          memset(v43, 0, 24);
          sub_24BEA2D98(v43, v16, v15 - 4, (v15 - 4 - v16) >> 2);
          v20 = **a2;
          v21 = (*a2)[1] - 8;
          memset(v42, 0, sizeof(v42));
          sub_24BEA2D98(v42, v20, v21, (v21 - v20) >> 2);
          sub_24BF02B58(v42, v43, &__p);
          sub_24BF02B58(&__p, a3, &v36);
          if (__p)
          {
            v40 = __p;
            operator delete(__p);
          }

          v22 = v36;
          v23 = v37;
          __p = v36;
          v40 = v37;
          v41 = v38;
          if (v37 >= v38)
          {
            v25 = v37 - v36;
            v26 = (v37 - v36) >> 2;
            v27 = v26 + 1;
            if ((v26 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v28 = v38 - v36;
            if ((v38 - v36) >> 1 > v27)
            {
              v27 = v28 >> 1;
            }

            v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
            v30 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v29)
            {
              v30 = v27;
            }

            if (v30)
            {
              sub_24BC92E0C(&__p, v30);
            }

            *(4 * v26) = v18;
            v24 = 4 * v26 + 4;
            memcpy(0, v22, v25);
            v31 = __p;
            __p = 0;
            v40 = v24;
            v41 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v37 = v18;
            v24 = (v23 + 1);
          }

          v40 = v24;
          v32 = a2[1];
          v34[0] = *a2;
          v34[1] = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(v32 + 1, 1uLL, memory_order_relaxed);
          }

          sub_24BEA3B14(v34, 10, v19, v13 | 0x100000000, v35);
          sub_24BE7F218(v34);
          sub_24BEA00DC(v35, v19, v13 | 0x100000000);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BD4D730(exception, "[multivariate_normal] mean and cov must have compatible shapes.");
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BD4D730(exception, "[multivariate_normal] last two dimensions of cov must be equal.");
      }
    }
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[multivariate_normal] dtype must be float32.");
  }

  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEF29A0(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a4;
  if (!sub_24BE80D54(&v14, &dword_24BFF086C))
  {
    sub_24BEF1B34(a1, a2, a3, 0x40000000ALL, a5, a6, a7);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[randint] randint only accepts integer dtypes and BOOL.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEF2AE4(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v3 = v1;
  v4 = BYTE4(v1);
  if (sub_24BE80D54(&v3, dword_24BFEEC80))
  {
    nextafterf(4295000000.0, 3.4028e38);
    sub_24BCCBB70();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEF2D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEF2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  if (sub_24BE80D54(&v5, dword_24BFEEC80))
  {
    sub_24BCCCD5C();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[trunc_normal] trunc_normal only accepts floating point dtypes.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEF3150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEF3260(uint64_t a1, uint64_t a2)
{
  result = (a2 & (a1 >> 31)) + a1;
  if (result < 0 || result >= a2)
  {
    sub_24BCE1268(v11);
    v5 = sub_24BC95264(v11, "[categorical] Invalid axis ", 27);
    v6 = MEMORY[0x24C2543C0](v5, a1);
    v7 = sub_24BC95264(v6, " for logits with ", 17);
    v8 = MEMORY[0x24C2543C0](v7, a2);
    sub_24BC95264(v8, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v10);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_24BEF3364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BEF33AC(uint64_t **a1, int a2, uint64_t *a3)
{
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  v7 = *a3;
  v6 = a3[1];
  v8 = **a1;
  v9 = (*a1)[1];
  v10 = __p[0];
  v11[0] = sub_24BD1EEAC(a1, a2);
  sub_24BEA7474(__p, &v10[4 * (((v6 - v7) >> 2) + a2 - ((v9 - v8) >> 2)) + 4], v11);
  sub_24BEF316C();
}

void sub_24BEF34E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_24BE7F218(&a10);
  sub_24BE7F218(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEF3524(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_24BEF3260(a2, ((*a1)[1] - **a1) >> 2);
  v6 = *a1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_24BCC9A1C(&v19, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = v19 + 4 * v5;
  v8 = v20 - (v7 + 4);
  if (v20 != v7 + 4)
  {
    memmove((v19 + 4 * v5), (v7 + 4), v20 - (v7 + 4));
  }

  v20 = v7 + v8;
  sub_24BF02B58(a3, &v19, &v17);
  v9 = v17;
  if (v18 - v17 == a3[1] - *a3)
  {
    v10 = memcmp(v17, *a3, v18 - v17) != 0;
    if (!v9)
    {
LABEL_8:
      if (!v10)
      {
        sub_24BEF33AC(a1, v5, a3);
      }

      sub_24BCE1268(&v17);
      v11 = sub_24BC95264(&v17, "[categorical] Requested shape ", 30);
      v12 = sub_24BF02DB8(v11, a3);
      v13 = sub_24BC95264(v12, " is not broadcast compatable with reduced logits shape", 54);
      v14 = sub_24BF02DB8(v13, &v19);
      sub_24BC95264(v14, ".", 1);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v16);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  else
  {
    v10 = 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v18 = v9;
  operator delete(v9);
  goto LABEL_8;
}

void sub_24BEF372C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a16);
      v20 = *(v18 - 104);
      if (v20)
      {
        *(v18 - 96) = v20;
        operator delete(v20);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_24BEF3794(const void ***a1, uint64_t a2, int a3)
{
  v5 = sub_24BEF3260(a2, ((*a1)[1] - **a1) >> 2);
  sub_24BEA5B3C(a1, 0xFFFFFFFFLL, v6, 0, v12);
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v12[0], v12[0][1], (v12[0][1] - *v12[0]) >> 2);
  v7 = __p + 4 * v5;
  v8 = v10 - (v7 + 4);
  if (v10 != v7 + 4)
  {
    memmove(__p + 4 * v5, v7 + 4, v10 - (v7 + 4));
  }

  v10 = &v7[v8];
  *(v10 - 1) = a3;
  sub_24BEF33AC(v12, v5, &__p);
}

void sub_24BEF38A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a13);
  _Unwind_Resume(a1);
}

void sub_24BEF38CC(uint64_t **a1, uint64_t a2)
{
  v3 = sub_24BEF3260(a2, ((*a1)[1] - **a1) >> 2);
  v4 = *a1;
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
  v5 = __p + 4 * v3;
  v6 = v8 - (v5 + 4);
  if (v8 != v5 + 4)
  {
    memmove(__p + 4 * v3, v5 + 4, v8 - (v5 + 4));
  }

  v8 = &v5[v6];
  sub_24BEF33AC(a1, v3, &__p);
}

void sub_24BEF39B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF3C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_24BE7F218(va);
  sub_24BE7F218(v9);
  sub_24BE7F218(va1);
  sub_24BE7F218(v10 - 96);
  _Unwind_Resume(a1);
}

void sub_24BEF3D40(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v7, __p, 1uLL);
  sub_24BEF1410(__p, 4, a2, a3, a4);
}

void sub_24BEF3DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEF3E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEF3EB4(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}