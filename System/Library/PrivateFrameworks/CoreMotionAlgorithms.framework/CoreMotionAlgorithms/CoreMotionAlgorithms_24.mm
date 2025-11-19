void sub_245E4A954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_245E4B470(&a11);
  a11 = v16 - 112;
  sub_245E4BDB4(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_245E4A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  sub_245E4BE38(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_245E4B4F0((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      sub_245E4B520();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_245E4BFC4(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        sub_245E4BF3C(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_245E4B854(v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_245E4BF3C(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      sub_245E4BC38(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      sub_245E4BD04(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      sub_245E4BE38(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_245E4B578();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_245E4C97C(&v59);
  return v49;
}

uint64_t sub_245E4AEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v48 = a3;
  *(&v48 + 1) = a3;
  v49 = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  sub_245E4B3D8(&v53, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_245E4B4B4(v13 - 8, *(a1 + 28), &v48);
  sub_245E4B4F0(v54 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v54;
  *(v54 - 2) = v6;
  v18 = a3 - a2;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      sub_245E4B520();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          sub_245E4BC38(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          sub_245E4BD04(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          sub_245E4B3D8(&v53, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_245E4B578();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v54 - 12;
        sub_245E4B854(v54 - 12);
        v54 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v50 = *v22;
        *&v50[16] = v27;
        if (v50 != v22)
        {
          sub_245E4CB2C(&v50[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_245E4CCB8(v52, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v52[3] + 5) = *(v17 - 11);
        v52[3] = v28;
        v14 = v26;
      }

      v29 = v54;
      if (v14 == v18)
      {
        v30 = v53;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_245E4B854(v29);
        }

        v54 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v54 - 12;
        sub_245E4B854(v54 - 12);
        v54 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v54;
  }

  while (v53 != v54);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v37 = (*&v50[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  sub_245E4BDB4(v50);
  return v41;
}

void sub_245E4B378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_245E4B470(&a11);
  sub_245E4B470(&a27);
  a27 = v27 - 120;
  sub_245E4BDB4(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_245E4B3D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_245E4B5D0(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_245E4B470(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_245E4B4B4(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_245E4B8FC(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_245E4B4F0(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_245E4BADC(a1, a2 - v2);
  }
}

void sub_245E4B520()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_245E4B578()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t sub_245E4B5D0(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_245DF85A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_245E4B748(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_245E4B7A0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_245E4B8AC(&v16);
  return v15;
}

void sub_245E4B734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_245E4B8AC(va);
  _Unwind_Resume(a1);
}

void sub_245E4B748(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_245DF8694();
}

void sub_245E4B7A0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_245E4B854(v5);
      v5 += 12;
    }
  }
}

void sub_245E4B854(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_245E4B8AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_245E4B854((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_245E4B8FC(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_245DF85A4();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_245E4BA84(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_245E4BA84(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_245DF8694();
}

void sub_245E4BADC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_245DF85A4();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_245E4BBF0(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_245E4BBF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_245DF8694();
}

uint64_t sub_245E4BC38(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_245E4BCB8(result, a4);
  }

  return result;
}

void sub_245E4BC9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E4BCB8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_245E4BA84(a1, a2);
  }

  sub_245DF85A4();
}

uint64_t sub_245E4BD04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_245E4BD78(result, a4);
  }

  return result;
}

void sub_245E4BD5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E4BD78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_245E4BBF0(a1, a2);
  }

  sub_245DF85A4();
}

void sub_245E4BDB4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        sub_245E4B854(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 sub_245E4BE38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_245E4C0B8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_245E4BF3C(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_245E4B854((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_245E4C6B4(a1, 1);
}

int64x2_t sub_245E4BFC4(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_245E4C72C(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_245F304B0);
  a1[2] = result;
  return result;
}

void *sub_245E4C0B8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_245DF89F0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_245E4C28C(a1, &v10);
}

void sub_245E4C240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_245E4C28C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_245DF89F0(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_245E4C394(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_245DF89F0(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_245E4C4A0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_245DF89F0(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_245E4C5A8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_245DF89F0(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_245E4C6B4(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **sub_245E4C72C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_245DF89F0(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_245E4C394(a1, v11);
}

void sub_245E4C930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_245E4C97C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_245E4B854(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_245E4CADC(a1);
}

uint64_t sub_245E4CADC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

_BYTE *sub_245E4CB2C(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_245E4BCB8(a1, v11);
    }

    sub_245DF85A4();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_245E4CCB8(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_245E4BD78(a1, v10);
    }

    sub_245DF85A4();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_245E4CDDC(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_245E4CE18(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_245E4CE18(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_245DF85A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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
      sub_245E4BA84(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

_BYTE *sub_245E4CF94(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245DF891C();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_245E4D044(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_245E4D0B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_245E4D104(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_245E4D104(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_245E4D154(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245DF891C();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_245E4D1E0(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C194410](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_245E4D29C(a1);
  return a1;
}

void sub_245E4D274(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_245E4D29C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_245E4D3A4(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C194320](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_245E4D54C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x24C194330](v13);
  return a1;
}

void sub_245E4D4E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x24C194330](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x245E4D4C4);
}

uint64_t sub_245E4D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      sub_245E4D6D4(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_245E4D6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_245E4D6D4(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245DF891C();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_245E4D784(const std::locale *a1, const char *a2, int a3)
{
  v5 = sub_245E4D81C(a1);
  LODWORD(v5[3].__locale_) = a3;
  *(&v5[3].__locale_ + 4) = 0u;
  *(&v5[5].__locale_ + 4) = 0u;
  HIDWORD(v5[7].__locale_) = 0;
  strlen(a2);
  sub_245E4D87C();
}

void sub_245E4D7FC(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_245E4D044(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

const std::locale *sub_245E4D81C(const std::locale *a1)
{
  v2 = MEMORY[0x24C194410]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  return a1;
}

void sub_245E4DA70()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_245E4DB10(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_245E4E5BC(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_245E4E5BC(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_245E4E4BC();
  }

  return v7;
}

unsigned __int8 *sub_245E4DC80(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_245E4EDC0();
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_245E546C4(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_245E4EE44();
      }
    }

    if (v3 != a3)
    {
      sub_245E5466C();
    }
  }

  return v3;
}

unsigned __int8 *sub_245E4DD34(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_245E54D7C(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_245E5466C();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_245E54D7C(a1, result + 1, a3) != result + 1)
    {
      sub_245E4E4BC();
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_245E4DDD4(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_245E4DC80(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_245E4DC80(a1, v8, v10);
      sub_245E4E4BC();
    }

    operator new();
  }

  return v8;
}

unsigned __int8 *sub_245E4DF44(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_245E4DD34(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_245E4DD34(a1, v8, v10);
      sub_245E4E4BC();
    }

    operator new();
  }

  return v8;
}

void sub_245E4E0B4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_245E4E1A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_245F2B064(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E4E1BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E4E1F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_245E4E224(uint64_t a1, uint64_t a2)
{
  if (sub_245E4E264(a2, &unk_2858D19E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_245E4E264(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_245E4E2B8(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E4E324(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E4E3B0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_245E4E3C4(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E4E430(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

unsigned __int8 *sub_245E4E5BC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_245E4E664(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_245E4E874(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_245E4EABC(a1, v9, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_245E4E664(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v14 = a2[1];
          if (v14 == 66 || v14 == 98)
          {
            sub_245E4EEC8();
          }
        }
      }

      else if (v6 == 94)
      {
        sub_245E4EDC0();
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_245E4EE44();
      }

      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            sub_245E4D81C(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_245E4D87C(v16, a2 + 3, a3);
            v15 = *(a1 + 28);
            sub_245E4EF5C();
          }

          if (v11 == 61)
          {
            sub_245E4D81C(v16);
            v17 = 0u;
            v19 = 0;
            v18 = 0u;
            LODWORD(v17) = *(a1 + 24);
            sub_245E4D87C(v16, a2 + 3, a3);
            v12 = *(a1 + 28);
            sub_245E4EF5C();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_245E4E874(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      sub_245E4FB88();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v8 = (a1 + 36);
        ++*(a1 + 36);
        v9 = sub_245E4DB10(a1, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      sub_245E4FA80(a1);
      v11 = *(a1 + 28);
      v8 = (a1 + 36);
      ++*(a1 + 36);
      v12 = sub_245E4DB10(a1, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          sub_245E4FB08(a1);
LABEL_25:
          --*v8;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    sub_245E4EFFC();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_245E4F964(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return sub_245E4FBE0(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return sub_245E4F8BC(a1, a2, a3);
}

unsigned __int8 *sub_245E4EABC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = *(a1 + 24) & 0x1F0;
  v6 = *a2;
  if (v6 > 0x3E)
  {
    if (v6 == 63)
    {
      v14 = a2 + 1;
      if (v5)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == a3;
      }

      if (!v15)
      {
        *v14;
      }
    }

    else
    {
      if (v6 != 123)
      {
        return a2;
      }

      v8 = a2 + 1;
      v9 = sub_245E54200(a1, a2 + 1, a3, &v21);
      if (v9 == v8)
      {
        goto LABEL_47;
      }

      if (v9 == a3)
      {
        goto LABEL_48;
      }

      v10 = *v9;
      if (v10 != 44)
      {
        if (v10 == 125)
        {
          v11 = v9 + 1;
          if (!v5 && v11 != a3)
          {
            *v11;
          }

          goto LABEL_37;
        }

LABEL_47:
        sub_245E5429C();
      }

      v16 = v9 + 1;
      if (v9 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v16 == 125)
      {
        v17 = v9 + 2;
        if (!v5 && v17 != a3)
        {
          *v17;
        }

        goto LABEL_37;
      }

      v20 = -1;
      v19 = sub_245E54200(a1, v16, a3, &v20);
      if (v19 == v16 || v19 == a3 || *v19 != 125)
      {
LABEL_48:
        sub_245E542F4();
      }

      if (v20 < v21)
      {
        goto LABEL_47;
      }

      if (!v5 && v19 + 1 != a3)
      {
        v13 = v19[1] == 63;
      }
    }

LABEL_37:
    sub_245E54070();
  }

  if (v6 == 42)
  {
    v12 = a2 + 1;
    if (v5)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == a3;
    }

    if (!v13)
    {
      *v12;
    }

    goto LABEL_37;
  }

  if (v6 == 43)
  {
    v7 = a2 + 1;
    if (!v5 && v7 != a3)
    {
      *v7;
    }

    goto LABEL_37;
  }

  return a2;
}

void sub_245E4EFFC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_245E4F054(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E4F0C0(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E4F14C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_245E4F1B4(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E4F220(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E4F2AC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_245E4F300(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1B40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_245E4F38C(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1B40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E4F438(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_245E4F54C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_2858D1B88;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_245E4F5DC(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1B88;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_245E4D044(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_245E4F678(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1B88;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_245E4D044(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x24C194490);
}

void sub_245E4F734(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21 = 0;
  *&v22 = v5;
  *(&v22 + 1) = v5;
  v23 = 0;
  sub_245E4A49C(&__p, v4, &v22);
  v24 = v6;
  v25 = v6;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = v6;
  v29 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_245E4A600(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
  }

  while (v11 > v14++);
LABEL_11:
  v20 = v10;
  operator delete(v10);
}

void sub_245E4F89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_245E4F8BC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_245E4FD48();
    }

    v7 = sub_245E4FDA0(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_245E4FE58(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_245E4FF28(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_245E4F964(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_245E51110();
    }

    sub_245E521CC();
  }

  return a2;
}

uint64_t sub_245E4FA80(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_245E4FB08(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_245E4FB88()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_245E4FBE0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_245E50324(a1);
    }
  }

  return a2;
}

void *sub_245E4FC50(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E4FCBC(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

void sub_245E4FD48()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_245E4FDA0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_245E50324(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        v5 = v7 + 10 * v5 - 48;
        ++v6;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_245E504BC(a1);
        }
      }

LABEL_13:
      sub_245E50464();
    }
  }

  return a2;
}

unsigned __int8 *sub_245E4FE58(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_245E51110();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_245E51110();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_245E51110();
  }

  return a2;
}

unsigned __int8 *sub_245E4FF28(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_72;
        }

        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v10 = -87;
        }

        v6 = 16 * (v10 + v9);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v11 = v4[1];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v12 = -87;
        }

        if (v4 + 2 != a3)
        {
          v13 = v4[2];
          v14 = -48;
          if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v13 |= 0x20u;
          if ((v13 - 97) < 6)
          {
            v14 = -87;
LABEL_55:
            v15 = v14 + v13 + 16 * (v12 + v6 + v11);
            if (!a4)
            {
              sub_245E50324(a1);
            }

            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v15;
            *(a4 + 1) = 0;
            v4 += 3;
            return v4;
          }
        }

LABEL_97:
        sub_245E4FD48();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_72:
        if ((v5 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
        {
          goto LABEL_97;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return a2 + 1;
        }

LABEL_77:
        sub_245E50324(a1);
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 11;
    }

LABEL_90:
    *a4 = v16;
    return a2 + 1;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_72;
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 10;
    }

    goto LABEL_90;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    goto LABEL_77;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  if (!a4)
  {
    sub_245E50324(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7 & 0x1F;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_245E50324(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_245E50464()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_245E504BC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_245E505EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2858D1C18;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_245E50678(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_2858D1A80;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_245F2B064(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_245E506B8(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1C18;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_245E50744(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1C18;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E507F0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_245E50884(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1C60;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_245E50910(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1C60;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E509BC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_245E50A04(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E50A70(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E50AFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_245E50B44(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1CF0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_245E50BD0(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1CF0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E50C7C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_245E50D98(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1D38;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_245E50E24(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1D38;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E50ED0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_245E50F5C(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E50FC8(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

unsigned int *sub_245E51054(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_245E50464();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_245E511A4(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_245E520DC(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_245E520DC(a1 + 40, &v7);
}

uint64_t sub_245E51240(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_2858D1DC8;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_245E51380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_245E4D0B0(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_245E51B60(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_245E5141C(std::locale *a1)
{
  sub_245E51C80(a1);

  JUMPOUT(0x24C194490);
}

void sub_245E51454(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v18 = 0;
    v19 = *(a1 + 168);
    goto LABEL_54;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_31;
  }

  v72 = *v4;
  v6 = v4[1];
  v73 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v72 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v73 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_245E51E20(a1 + 16, &v72, &v74, &__p);
  if ((v71 & 0x80000000) == 0)
  {
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_31:
    v19 = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v72 != *(v10 - 1) || v73 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_245E51D68(a1 + 16, &v72, &v74);
    v12 = *(a1 + 88);
    if (*(a1 + 96) == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (sub_245E49F24((v12 + v13), &__p) > 0 || sub_245E49F24(&__p, (*(a1 + 88) + v13 + 24)) >= 1)
      {
        ++v14;
        v12 = *(a1 + 88);
        v13 += 48;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v17 = 0;
    goto LABEL_130;
  }

  p_p = &__p;
  sub_245E51FCC(a1 + 16, &v72, &v74, &__p);
  v36 = *(a1 + 136);
  v37 = v71;
  v38 = *(a1 + 144) - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      v44 = *(v36 + 23);
      v45 = v44;
      if ((v44 & 0x80u) != 0)
      {
        v44 = *(v36 + 8);
      }

      if (v40 == v44)
      {
        v46 = v45 >= 0 ? v36 : *v36;
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      v36 += 24;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      v66 = *(a1 + 164);
    }

    else
    {
      v63 = *(a1 + 160);
      v64 = *(*(a1 + 24) + 16);
      v65 = *(v64 + 4 * v72);
      if (((v65 & v63) != 0 || v72 == 95 && (v63 & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((*(v64 + 4 * v73) & v63) != 0 || (v63 & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      v66 = *(a1 + 164);
      if ((v65 & v66) != 0 || v72 == 95 && (v66 & 0x80) != 0)
      {
LABEL_147:
        v19 = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v73) & v66) == 0)
      {
        v19 = 1;
        if (v73 != 95 || (v66 & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    v19 = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  v19 = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = **(a2 + 16);
  v72 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v21) = (*(**(a1 + 24) + 40))(*(a1 + 24), v21);
    v72 = v21;
  }

  v22 = *(a1 + 40);
  v23 = *(a1 + 48) - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = *(a1 + 164);
  if (v25 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v21 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v21) & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    v27 = *(a1 + 72);
    v28 = memchr(*(a1 + 64), v21, v27 - *(a1 + 64));
    v29 = !v28 || v28 == v27;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      v19 = 1;
      goto LABEL_54;
    }
  }

  v33 = *(a1 + 88);
  v34 = *(a1 + 96);
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  if (*(a1 + 170) == 1)
  {
    sub_245E51D68(a1 + 16, &v72, &v73);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
  }

  else
  {
    v71 = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (sub_245E49F24((v33 + v47), &__p) > 0 || sub_245E49F24(&__p, (*(a1 + 88) + v47 + 24)) >= 1)
    {
      ++v48;
      v33 = *(a1 + 88);
      v47 += 48;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    v19 = 1;
  }

  if (v71 < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_119:
      v61 = *(a1 + 160);
      if ((v72 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v72) & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      v19 |= v62;
      goto LABEL_54;
    }

    v50 = &__p;
    sub_245E51FCC(a1 + 16, &v72, &v73, &__p);
    v51 = *(a1 + 136);
    v52 = *(a1 + 144) - v51;
    if (v52)
    {
      v67 = v71;
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = v71;
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = *(v51 + 23);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = *(v51 + 8);
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : *v51;
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        v51 += 24;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      v19 = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (*(a1 + 168) == (v19 & 1))
  {
    v31 = 0;
    v32 = -993;
  }

  else
  {
    *(a2 + 16) += v18;
    v31 = *(a1 + 8);
    v32 = -995;
  }

  *a2 = v32;
  *(a2 + 80) = v31;
}

void sub_245E51B60(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_245E51BE4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_245E51BE4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_245E51C3C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *sub_245E51C80(std::locale *a1)
{
  a1->__locale_ = &unk_2858D1DC8;
  v7 = a1 + 17;
  sub_245E4D0B0(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_245E51B60(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2858D1A80;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_245E51D68(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_245E4CF94(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_245E51E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E51E20(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_245E4CF94(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_245E51F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E51FCC(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_245E4CF94(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_245E520C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E520DC(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_245DF85A4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_245E521CC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_245E52224(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v30 = 0uLL;
  v31 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = sub_245E5284C(a1, a2 + 2, a3, &v30);
        v9 = HIBYTE(v31);
        v10 = *(&v30 + 1);
        break;
      case ':':
        v12 = sub_245E527B8(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = sub_245E525FC(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_48;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v15 = v4;
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v16 = *v4;
    if (v16 == 92)
    {
      if (v14)
      {
        v17 = sub_245E52A84(a1, v4 + 1, a3, &v30);
      }

      else
      {
        v17 = sub_245E52914(a1, v4 + 1, a3, &v30, v6);
      }

      v15 = v17;
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v16) = *v4;
  }

  if ((v9 & 0x80) != 0)
  {
    v18 = v30;
    *(&v30 + 1) = 1;
  }

  else
  {
    HIBYTE(v31) = 1;
    v18 = &v30;
  }

  *v18 = v16;
  *(v18 + 1) = 0;
  v15 = v4 + 1;
LABEL_28:
  if (v15 == a3 || (v19 = *v15, v19 == 93) || (v21 = v15 + 1, v15 + 1 == a3) || v19 != 45 || *v21 == 93)
  {
    if (SHIBYTE(v31) < 0)
    {
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) != 1)
        {
          v20 = v30;
LABEL_46:
          sub_245E53168(v6, *v20, *(v20 + 1));
          goto LABEL_47;
        }

        v20 = v30;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v31))
    {
      v20 = &v30;
      if (HIBYTE(v31) != 1)
      {
        goto LABEL_46;
      }

LABEL_37:
      sub_245E511A4(v6, *v20);
    }

LABEL_47:
    v13 = 1;
    v4 = v15;
    goto LABEL_48;
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v4 = v15 + 2;
  if (v15 + 2 != a3 && *v21 == 91 && *v4 == 46)
  {
    v22 = sub_245E5284C(a1, v15 + 3, a3, v28);
LABEL_60:
    v4 = v22;
    goto LABEL_61;
  }

  if ((v14 | 0x40) == 0x40)
  {
    LODWORD(v21) = *v21;
    if (v21 == 92)
    {
      if (v14)
      {
        v22 = sub_245E52A84(a1, v15 + 2, a3, v28);
      }

      else
      {
        v22 = sub_245E52914(a1, v15 + 2, a3, v28, v6);
      }

      goto LABEL_60;
    }
  }

  else
  {
    LOBYTE(v21) = *v21;
  }

  HIBYTE(v29) = 1;
  LOWORD(v28[0]) = v21;
LABEL_61:
  *v26 = v30;
  v27 = v31;
  v31 = 0;
  v30 = 0uLL;
  *__p = *v28;
  v25 = v29;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_245E52D68(v6, v26, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v13 = 1;
LABEL_48:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_245E5259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_245E525FC(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    sub_245E521CC();
  }

  sub_245E5329C(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    sub_245E53244();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  sub_245E53448(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_245E53558((a4 + 136), __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      sub_245E53168(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_245E53244();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      sub_245E511A4(a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_245E52780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_245E527B8(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    sub_245E521CC();
  }

  v9 = sub_245E5387C(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_245E53824();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *sub_245E5284C(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_245E521CC();
  }

  sub_245E5329C(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_245E53244();
  }

  return v6 + 2;
}

unsigned __int8 *sub_245E52914(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_245E4FD48();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        sub_245E511A4(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_245E53950(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_245E4FF28(a1, a2, a3, a4);
}

unsigned __int8 *sub_245E52A84(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_71:
    sub_245E4FD48();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_66;
        }

        goto LABEL_50;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_66;
          }

          goto LABEL_50;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_50;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_66;
      }

LABEL_50:
      sub_245E50324(a1);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_66:
        *a4 = v9;
        return a2 + 1;
      }

      goto LABEL_50;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_71;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (!a4)
  {
    sub_245E50324(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_245E52D68(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_245E53B4C(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_245E53B4C(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_245E539EC(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_245E53C04();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_245E539EC(a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_245E53168(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_245E53D04(v6, v7);
}

void sub_245E53244()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_245E5329C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_245E4CF94(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_245E53414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E53448(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_245E4CF94(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_245E5353C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245E53558(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_245E535F8(a1, a2);
  }

  else
  {
    sub_245E53598(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_245E53598(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_245DF8878(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_245E535F8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_245DF85A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_245E53738(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_245DF8878(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_245E53790(&v17);
  return v11;
}

void sub_245E53724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_245E53790(va);
  _Unwind_Resume(a1);
}

void sub_245E53738(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_245DF8694();
}

uint64_t sub_245E53790(uint64_t a1)
{
  sub_245E537C8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_245E537C8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_245E53824()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t sub_245E5387C(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_245E4CF94(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_245E53934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E53950(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_245E520DC(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_245E520DC(a1 + 64, &v7);
}

uint64_t sub_245E539EC(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_245DF85A4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_245E53C5C(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(result + 8) - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_245E53CB4(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  v3[1] = v8;
  return result;
}

void sub_245E53B4C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_245E4CF94(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_245E53BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245E53C04()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_245E53C5C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_245DF8694();
}

uint64_t sub_245E53CB4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_245E51BE4(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_245E53D04(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_245DF85A4();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_245E53DD4(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_245E53DD4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_245DF8694();
}

void *sub_245E53E18(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E53E84(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E53F10(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_245E53F40(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E53FAC(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E54038(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_245E54200(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_245E5429C();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void sub_245E5429C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_245E542F4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_245E54350(void *a1)
{
  sub_245E544A4(a1);

  JUMPOUT(0x24C194490);
}

unsigned int *sub_245E54388(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_245E54558(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_245E54438(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_245E54558(result, a3);
  }

  return result;
}

void sub_245E5446C(void *a1)
{
  sub_245E544A4(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245E544A4(void *a1)
{
  *a1 = &unk_2858D1F00;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2858D1A80;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_245E54558(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_245E545C0(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_245E545D8(void *a1)
{
  sub_245E544A4(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E5461C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_245E54658(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_245E5466C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C1942C0](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_245E546C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_245E54760(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = (*(a1 + 28) + 1);

  return sub_245E54864(a1, v8, a3);
}

_BYTE *sub_245E54760(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_245E54A28(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_245E4FA80(a1);
      v10 = *(a1 + 28);
      do
      {
        v11 = v9;
        v12 = sub_245E546C4(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        sub_245E4EFFC();
      }

      v7 = v12 + 2;
      sub_245E4FB08(a1);
    }

    else
    {
      v13 = sub_245E54D1C(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *sub_245E54864(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_245E54070();
    }

    if (a2 + 1 != a3 && v4 == 92 && a2[1] == 123)
    {
      v7 = a2 + 2;
      v13 = 0;
      v8 = sub_245E54200(a1, a2 + 2, a3, &v13);
      if (v8 == v7)
      {
        goto LABEL_24;
      }

      if (v8 != a3)
      {
        v9 = v8 + 1;
        v10 = *v8;
        if (v10 == 44)
        {
          v12 = -1;
          v11 = sub_245E54200(a1, v9, a3, &v12);
          if (v11 != a3 && v11 + 1 != a3 && *v11 == 92 && v11[1] == 125)
          {
            if (v12 == -1 || v12 >= v13)
            {
              sub_245E54070();
            }

LABEL_24:
            sub_245E5429C();
          }
        }

        else if (v9 != a3 && v10 == 92 && *v9 == 125)
        {
          sub_245E54070();
        }
      }

      sub_245E542F4();
    }
  }

  return a2;
}

_BYTE *sub_245E54A28(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_245E50324(a1);
    }

    v8 = sub_245E54B6C(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_12;
    }

    return v9;
  }

  v9 = sub_245E54B6C(a1, a2, a3);
  if (v9 != a2)
  {
    return v9;
  }

LABEL_12:

  return sub_245E4F964(a1, a2, a3);
}

_BYTE *sub_245E54B6C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_245E50324(a1);
    }
  }

  return a2;
}

void *sub_245E54BE4(void *a1)
{
  *a1 = &unk_2858D1A80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_245E54C50(void *a1)
{
  *a1 = &unk_2858D1A80;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C194490);
}

uint64_t sub_245E54CDC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_245E54D1C(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_245E504BC(a1);
    }

    sub_245E50464();
  }

  return 0;
}

unsigned __int8 *sub_245E54D7C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_245E54DDC(a1, a2, a3);
  if (v6 == a2)
  {
    sub_245E5466C();
  }

  do
  {
    v7 = v6;
    v6 = sub_245E54DDC(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_245E54DDC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_245E54F20(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_245E4EE44();
      case '(':
        sub_245E4FA80(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_245E4DD34(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_245E4EFFC();
        }

        sub_245E4FB08(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_245E4EDC0();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_245E4EABC(a1, v9, a3);
}

unsigned __int8 *sub_245E54F20(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_245E55014(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_245E550A0(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_245E4F964(a1, a2, a3);
}

unsigned __int8 *sub_245E55014(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_245E50324(a1);
  }

  return a2;
}

unsigned __int8 *sub_245E550A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    sub_245E50324(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_245E54D1C(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_245E52A84(a1, v4, a3, 0);
}

void *sub_245E55178(void *a1)
{
  *a1 = &unk_2858D2050;
  bzero(a1 + 1, 0x2B0uLL);
  bzero(a1 + 88, 0xC9CuLL);
  return a1;
}

void sub_245E551CC(PB::Base *this)
{
  *this = &unk_2858D2050;
  v2 = *(this + 490);
  *(this + 490) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 489);
  *(this + 489) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 488);
  *(this + 488) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 487);
  *(this + 487) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 486);
  *(this + 486) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 485);
  *(this + 485) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 484);
  *(this + 484) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 483);
  *(this + 483) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 482);
  *(this + 482) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 481);
  *(this + 481) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 480);
  *(this + 480) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 479);
  *(this + 479) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 478);
  *(this + 478) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 477);
  *(this + 477) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 476);
  *(this + 476) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 475);
  *(this + 475) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 474);
  *(this + 474) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 473);
  *(this + 473) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 472);
  *(this + 472) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 471);
  *(this + 471) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 470);
  *(this + 470) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 469);
  *(this + 469) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 468);
  *(this + 468) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 467);
  *(this + 467) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 466);
  *(this + 466) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 465);
  *(this + 465) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 464);
  *(this + 464) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(this + 463);
  *(this + 463) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 462);
  *(this + 462) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 461);
  *(this + 461) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(this + 460);
  *(this + 460) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 459);
  *(this + 459) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(this + 458);
  *(this + 458) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(this + 457);
  *(this + 457) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(this + 456);
  *(this + 456) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(this + 455);
  *(this + 455) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(this + 454);
  *(this + 454) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(this + 453);
  *(this + 453) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(this + 452);
  *(this + 452) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(this + 451);
  *(this + 451) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(this + 450);
  *(this + 450) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(this + 449);
  *(this + 449) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(this + 448);
  *(this + 448) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(this + 447);
  *(this + 447) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *(this + 446);
  *(this + 446) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(this + 445);
  *(this + 445) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(this + 444);
  *(this + 444) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(this + 443);
  *(this + 443) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(this + 442);
  *(this + 442) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v51 = *(this + 441);
  *(this + 441) = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  v52 = *(this + 440);
  *(this + 440) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(this + 439);
  *(this + 439) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *(this + 438);
  *(this + 438) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(this + 437);
  *(this + 437) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(this + 436);
  *(this + 436) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(this + 435);
  *(this + 435) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  v58 = *(this + 434);
  *(this + 434) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *(this + 433);
  *(this + 433) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *(this + 432);
  *(this + 432) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  v61 = *(this + 431);
  *(this + 431) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *(this + 430);
  *(this + 430) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *(this + 429);
  *(this + 429) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *(this + 428);
  *(this + 428) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *(this + 427);
  *(this + 427) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *(this + 426);
  *(this + 426) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *(this + 425);
  *(this + 425) = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  v68 = *(this + 424);
  *(this + 424) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  v69 = *(this + 423);
  *(this + 423) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *(this + 422);
  *(this + 422) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = *(this + 421);
  *(this + 421) = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  v72 = *(this + 420);
  *(this + 420) = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  v73 = *(this + 419);
  *(this + 419) = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  v74 = *(this + 418);
  *(this + 418) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = *(this + 417);
  *(this + 417) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = *(this + 416);
  *(this + 416) = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  v77 = *(this + 415);
  *(this + 415) = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  v78 = *(this + 414);
  *(this + 414) = 0;
  if (v78)
  {
    (*(*v78 + 8))(v78);
  }

  v79 = *(this + 413);
  *(this + 413) = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = *(this + 412);
  *(this + 412) = 0;
  if (v80)
  {
    (*(*v80 + 8))(v80);
  }

  v81 = *(this + 411);
  *(this + 411) = 0;
  if (v81)
  {
    (*(*v81 + 8))(v81);
  }

  v82 = *(this + 410);
  *(this + 410) = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  v83 = *(this + 409);
  *(this + 409) = 0;
  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  v84 = *(this + 408);
  *(this + 408) = 0;
  if (v84)
  {
    (*(*v84 + 8))(v84);
  }

  v85 = *(this + 407);
  *(this + 407) = 0;
  if (v85)
  {
    (*(*v85 + 8))(v85);
  }

  v86 = *(this + 406);
  *(this + 406) = 0;
  if (v86)
  {
    (*(*v86 + 8))(v86);
  }

  v87 = *(this + 405);
  *(this + 405) = 0;
  if (v87)
  {
    (*(*v87 + 8))(v87);
  }

  v88 = *(this + 404);
  *(this + 404) = 0;
  if (v88)
  {
    (*(*v88 + 8))(v88);
  }

  v89 = *(this + 403);
  *(this + 403) = 0;
  if (v89)
  {
    (*(*v89 + 8))(v89);
  }

  v90 = *(this + 402);
  *(this + 402) = 0;
  if (v90)
  {
    (*(*v90 + 8))(v90);
  }

  v91 = *(this + 401);
  *(this + 401) = 0;
  if (v91)
  {
    (*(*v91 + 8))(v91);
  }

  v92 = *(this + 400);
  *(this + 400) = 0;
  if (v92)
  {
    (*(*v92 + 8))(v92);
  }

  v93 = *(this + 399);
  *(this + 399) = 0;
  if (v93)
  {
    (*(*v93 + 8))(v93);
  }

  v94 = *(this + 398);
  *(this + 398) = 0;
  if (v94)
  {
    (*(*v94 + 8))(v94);
  }

  v95 = *(this + 397);
  *(this + 397) = 0;
  if (v95)
  {
    (*(*v95 + 8))(v95);
  }

  v96 = *(this + 396);
  *(this + 396) = 0;
  if (v96)
  {
    (*(*v96 + 8))(v96);
  }

  v97 = *(this + 395);
  *(this + 395) = 0;
  if (v97)
  {
    (*(*v97 + 8))(v97);
  }

  v98 = *(this + 394);
  *(this + 394) = 0;
  if (v98)
  {
    (*(*v98 + 8))(v98);
  }

  v99 = *(this + 393);
  *(this + 393) = 0;
  if (v99)
  {
    (*(*v99 + 8))(v99);
  }

  v100 = *(this + 392);
  *(this + 392) = 0;
  if (v100)
  {
    (*(*v100 + 8))(v100);
  }

  v101 = *(this + 391);
  *(this + 391) = 0;
  if (v101)
  {
    (*(*v101 + 8))(v101);
  }

  v102 = *(this + 390);
  *(this + 390) = 0;
  if (v102)
  {
    (*(*v102 + 8))(v102);
  }

  v103 = *(this + 389);
  *(this + 389) = 0;
  if (v103)
  {
    (*(*v103 + 8))(v103);
  }

  v104 = *(this + 388);
  *(this + 388) = 0;
  if (v104)
  {
    (*(*v104 + 8))(v104);
  }

  v105 = *(this + 387);
  *(this + 387) = 0;
  if (v105)
  {
    (*(*v105 + 8))(v105);
  }

  v106 = *(this + 386);
  *(this + 386) = 0;
  if (v106)
  {
    (*(*v106 + 8))(v106);
  }

  v107 = *(this + 385);
  *(this + 385) = 0;
  if (v107)
  {
    (*(*v107 + 8))(v107);
  }

  v108 = *(this + 384);
  *(this + 384) = 0;
  if (v108)
  {
    (*(*v108 + 8))(v108);
  }

  v109 = *(this + 383);
  *(this + 383) = 0;
  if (v109)
  {
    (*(*v109 + 8))(v109);
  }

  v110 = *(this + 382);
  *(this + 382) = 0;
  if (v110)
  {
    (*(*v110 + 8))(v110);
  }

  v111 = *(this + 381);
  *(this + 381) = 0;
  if (v111)
  {
    (*(*v111 + 8))(v111);
  }

  v112 = *(this + 380);
  *(this + 380) = 0;
  if (v112)
  {
    (*(*v112 + 8))(v112);
  }

  v113 = *(this + 379);
  *(this + 379) = 0;
  if (v113)
  {
    (*(*v113 + 8))(v113);
  }

  v114 = *(this + 378);
  *(this + 378) = 0;
  if (v114)
  {
    (*(*v114 + 8))(v114);
  }

  v115 = *(this + 377);
  *(this + 377) = 0;
  if (v115)
  {
    (*(*v115 + 8))(v115);
  }

  v116 = *(this + 376);
  *(this + 376) = 0;
  if (v116)
  {
    (*(*v116 + 8))(v116);
  }

  v117 = *(this + 375);
  *(this + 375) = 0;
  if (v117)
  {
    (*(*v117 + 8))(v117);
  }

  v118 = *(this + 374);
  *(this + 374) = 0;
  if (v118)
  {
    (*(*v118 + 8))(v118);
  }

  v119 = *(this + 373);
  *(this + 373) = 0;
  if (v119)
  {
    (*(*v119 + 8))(v119);
  }

  v120 = *(this + 372);
  *(this + 372) = 0;
  if (v120)
  {
    (*(*v120 + 8))(v120);
  }

  v121 = *(this + 371);
  *(this + 371) = 0;
  if (v121)
  {
    (*(*v121 + 8))(v121);
  }

  v122 = *(this + 370);
  *(this + 370) = 0;
  if (v122)
  {
    (*(*v122 + 8))(v122);
  }

  v123 = *(this + 369);
  *(this + 369) = 0;
  if (v123)
  {
    (*(*v123 + 8))(v123);
  }

  v124 = *(this + 368);
  *(this + 368) = 0;
  if (v124)
  {
    (*(*v124 + 8))(v124);
  }

  v125 = *(this + 367);
  *(this + 367) = 0;
  if (v125)
  {
    (*(*v125 + 8))(v125);
  }

  v126 = *(this + 366);
  *(this + 366) = 0;
  if (v126)
  {
    (*(*v126 + 8))(v126);
  }

  v127 = *(this + 365);
  *(this + 365) = 0;
  if (v127)
  {
    (*(*v127 + 8))(v127);
  }

  v128 = *(this + 364);
  *(this + 364) = 0;
  if (v128)
  {
    (*(*v128 + 8))(v128);
  }

  v129 = *(this + 363);
  *(this + 363) = 0;
  if (v129)
  {
    (*(*v129 + 8))(v129);
  }

  v130 = *(this + 362);
  *(this + 362) = 0;
  if (v130)
  {
    (*(*v130 + 8))(v130);
  }

  v131 = *(this + 361);
  *(this + 361) = 0;
  if (v131)
  {
    (*(*v131 + 8))(v131);
  }

  v132 = *(this + 360);
  *(this + 360) = 0;
  if (v132)
  {
    (*(*v132 + 8))(v132);
  }

  v133 = *(this + 359);
  *(this + 359) = 0;
  if (v133)
  {
    (*(*v133 + 8))(v133);
  }

  v134 = *(this + 358);
  *(this + 358) = 0;
  if (v134)
  {
    (*(*v134 + 8))(v134);
  }

  v135 = *(this + 357);
  *(this + 357) = 0;
  if (v135)
  {
    (*(*v135 + 8))(v135);
  }

  v136 = *(this + 356);
  *(this + 356) = 0;
  if (v136)
  {
    (*(*v136 + 8))(v136);
  }

  v137 = *(this + 355);
  *(this + 355) = 0;
  if (v137)
  {
    (*(*v137 + 8))(v137);
  }

  v138 = *(this + 354);
  *(this + 354) = 0;
  if (v138)
  {
    (*(*v138 + 8))(v138);
  }

  v139 = *(this + 353);
  *(this + 353) = 0;
  if (v139)
  {
    (*(*v139 + 8))(v139);
  }

  v140 = *(this + 352);
  *(this + 352) = 0;
  if (v140)
  {
    (*(*v140 + 8))(v140);
  }

  v141 = *(this + 351);
  *(this + 351) = 0;
  if (v141)
  {
    (*(*v141 + 8))(v141);
  }

  v142 = *(this + 350);
  *(this + 350) = 0;
  if (v142)
  {
    (*(*v142 + 8))(v142);
  }

  v143 = *(this + 349);
  *(this + 349) = 0;
  if (v143)
  {
    (*(*v143 + 8))(v143);
  }

  v144 = *(this + 348);
  *(this + 348) = 0;
  if (v144)
  {
    (*(*v144 + 8))(v144);
  }

  v145 = *(this + 347);
  *(this + 347) = 0;
  if (v145)
  {
    (*(*v145 + 8))(v145);
  }

  v146 = *(this + 346);
  *(this + 346) = 0;
  if (v146)
  {
    (*(*v146 + 8))(v146);
  }

  v147 = *(this + 345);
  *(this + 345) = 0;
  if (v147)
  {
    (*(*v147 + 8))(v147);
  }

  v148 = *(this + 344);
  *(this + 344) = 0;
  if (v148)
  {
    (*(*v148 + 8))(v148);
  }

  v149 = *(this + 343);
  *(this + 343) = 0;
  if (v149)
  {
    (*(*v149 + 8))(v149);
  }

  v150 = *(this + 342);
  *(this + 342) = 0;
  if (v150)
  {
    (*(*v150 + 8))(v150);
  }

  v151 = *(this + 341);
  *(this + 341) = 0;
  if (v151)
  {
    (*(*v151 + 8))(v151);
  }

  v152 = *(this + 340);
  *(this + 340) = 0;
  if (v152)
  {
    (*(*v152 + 8))(v152);
  }

  v153 = *(this + 339);
  *(this + 339) = 0;
  if (v153)
  {
    (*(*v153 + 8))(v153);
  }

  v154 = *(this + 338);
  *(this + 338) = 0;
  if (v154)
  {
    (*(*v154 + 8))(v154);
  }

  v155 = *(this + 337);
  *(this + 337) = 0;
  if (v155)
  {
    (*(*v155 + 8))(v155);
  }

  v156 = *(this + 336);
  *(this + 336) = 0;
  if (v156)
  {
    (*(*v156 + 8))(v156);
  }

  v157 = *(this + 335);
  *(this + 335) = 0;
  if (v157)
  {
    (*(*v157 + 8))(v157);
  }

  v158 = *(this + 334);
  *(this + 334) = 0;
  if (v158)
  {
    (*(*v158 + 8))(v158);
  }

  v159 = *(this + 333);
  *(this + 333) = 0;
  if (v159)
  {
    (*(*v159 + 8))(v159);
  }

  v160 = *(this + 332);
  *(this + 332) = 0;
  if (v160)
  {
    (*(*v160 + 8))(v160);
  }

  v161 = *(this + 331);
  *(this + 331) = 0;
  if (v161)
  {
    (*(*v161 + 8))(v161);
  }

  v162 = *(this + 330);
  *(this + 330) = 0;
  if (v162)
  {
    (*(*v162 + 8))(v162);
  }

  v163 = *(this + 329);
  *(this + 329) = 0;
  if (v163)
  {
    (*(*v163 + 8))(v163);
  }

  v164 = *(this + 328);
  *(this + 328) = 0;
  if (v164)
  {
    (*(*v164 + 8))(v164);
  }

  v165 = *(this + 327);
  *(this + 327) = 0;
  if (v165)
  {
    (*(*v165 + 8))(v165);
  }

  v166 = *(this + 326);
  *(this + 326) = 0;
  if (v166)
  {
    (*(*v166 + 8))(v166);
  }

  v167 = *(this + 325);
  *(this + 325) = 0;
  if (v167)
  {
    (*(*v167 + 8))(v167);
  }

  v168 = *(this + 324);
  *(this + 324) = 0;
  if (v168)
  {
    (*(*v168 + 8))(v168);
  }

  v169 = *(this + 323);
  *(this + 323) = 0;
  if (v169)
  {
    (*(*v169 + 8))(v169);
  }

  v170 = *(this + 322);
  *(this + 322) = 0;
  if (v170)
  {
    (*(*v170 + 8))(v170);
  }

  v171 = *(this + 321);
  *(this + 321) = 0;
  if (v171)
  {
    (*(*v171 + 8))(v171);
  }

  v172 = *(this + 320);
  *(this + 320) = 0;
  if (v172)
  {
    (*(*v172 + 8))(v172);
  }

  v173 = *(this + 319);
  *(this + 319) = 0;
  if (v173)
  {
    (*(*v173 + 8))(v173);
  }

  v174 = *(this + 318);
  *(this + 318) = 0;
  if (v174)
  {
    (*(*v174 + 8))(v174);
  }

  v175 = *(this + 317);
  *(this + 317) = 0;
  if (v175)
  {
    (*(*v175 + 8))(v175);
  }

  v176 = *(this + 316);
  *(this + 316) = 0;
  if (v176)
  {
    (*(*v176 + 8))(v176);
  }

  v177 = *(this + 315);
  *(this + 315) = 0;
  if (v177)
  {
    (*(*v177 + 8))(v177);
  }

  v178 = *(this + 314);
  *(this + 314) = 0;
  if (v178)
  {
    (*(*v178 + 8))(v178);
  }

  v179 = *(this + 313);
  *(this + 313) = 0;
  if (v179)
  {
    (*(*v179 + 8))(v179);
  }

  v180 = *(this + 312);
  *(this + 312) = 0;
  if (v180)
  {
    (*(*v180 + 8))(v180);
  }

  v181 = *(this + 311);
  *(this + 311) = 0;
  if (v181)
  {
    (*(*v181 + 8))(v181);
  }

  v182 = *(this + 310);
  *(this + 310) = 0;
  if (v182)
  {
    (*(*v182 + 8))(v182);
  }

  v183 = *(this + 309);
  *(this + 309) = 0;
  if (v183)
  {
    (*(*v183 + 8))(v183);
  }

  v184 = *(this + 308);
  *(this + 308) = 0;
  if (v184)
  {
    (*(*v184 + 8))(v184);
  }

  v185 = *(this + 307);
  *(this + 307) = 0;
  if (v185)
  {
    (*(*v185 + 8))(v185);
  }

  v186 = *(this + 306);
  *(this + 306) = 0;
  if (v186)
  {
    (*(*v186 + 8))(v186);
  }

  v187 = *(this + 305);
  *(this + 305) = 0;
  if (v187)
  {
    (*(*v187 + 8))(v187);
  }

  v188 = *(this + 304);
  *(this + 304) = 0;
  if (v188)
  {
    (*(*v188 + 8))(v188);
  }

  v189 = *(this + 303);
  *(this + 303) = 0;
  if (v189)
  {
    (*(*v189 + 8))(v189);
  }

  v190 = *(this + 302);
  *(this + 302) = 0;
  if (v190)
  {
    (*(*v190 + 8))(v190);
  }

  v191 = *(this + 301);
  *(this + 301) = 0;
  if (v191)
  {
    (*(*v191 + 8))(v191);
  }

  v192 = *(this + 300);
  *(this + 300) = 0;
  if (v192)
  {
    (*(*v192 + 8))(v192);
  }

  v193 = *(this + 299);
  *(this + 299) = 0;
  if (v193)
  {
    (*(*v193 + 8))(v193);
  }

  v194 = *(this + 298);
  *(this + 298) = 0;
  if (v194)
  {
    (*(*v194 + 8))(v194);
  }

  v195 = *(this + 297);
  *(this + 297) = 0;
  if (v195)
  {
    (*(*v195 + 8))(v195);
  }

  v196 = *(this + 296);
  *(this + 296) = 0;
  if (v196)
  {
    (*(*v196 + 8))(v196);
  }

  v197 = *(this + 295);
  *(this + 295) = 0;
  if (v197)
  {
    (*(*v197 + 8))(v197);
  }

  v198 = *(this + 294);
  *(this + 294) = 0;
  if (v198)
  {
    (*(*v198 + 8))(v198);
  }

  v199 = *(this + 293);
  *(this + 293) = 0;
  if (v199)
  {
    (*(*v199 + 8))(v199);
  }

  v200 = *(this + 292);
  *(this + 292) = 0;
  if (v200)
  {
    (*(*v200 + 8))(v200);
  }

  v201 = *(this + 291);
  *(this + 291) = 0;
  if (v201)
  {
    (*(*v201 + 8))(v201);
  }

  v202 = *(this + 290);
  *(this + 290) = 0;
  if (v202)
  {
    (*(*v202 + 8))(v202);
  }

  v203 = *(this + 289);
  *(this + 289) = 0;
  if (v203)
  {
    (*(*v203 + 8))(v203);
  }

  v204 = *(this + 288);
  *(this + 288) = 0;
  if (v204)
  {
    (*(*v204 + 8))(v204);
  }

  v205 = *(this + 287);
  *(this + 287) = 0;
  if (v205)
  {
    (*(*v205 + 8))(v205);
  }

  v206 = *(this + 286);
  *(this + 286) = 0;
  if (v206)
  {
    (*(*v206 + 8))(v206);
  }

  v207 = *(this + 285);
  *(this + 285) = 0;
  if (v207)
  {
    (*(*v207 + 8))(v207);
  }

  v208 = *(this + 284);
  *(this + 284) = 0;
  if (v208)
  {
    (*(*v208 + 8))(v208);
  }

  v209 = *(this + 283);
  *(this + 283) = 0;
  if (v209)
  {
    (*(*v209 + 8))(v209);
  }

  v210 = *(this + 282);
  *(this + 282) = 0;
  if (v210)
  {
    (*(*v210 + 8))(v210);
  }

  v211 = *(this + 281);
  *(this + 281) = 0;
  if (v211)
  {
    (*(*v211 + 8))(v211);
  }

  v212 = *(this + 280);
  *(this + 280) = 0;
  if (v212)
  {
    (*(*v212 + 8))(v212);
  }

  v213 = *(this + 279);
  *(this + 279) = 0;
  if (v213)
  {
    (*(*v213 + 8))(v213);
  }

  v214 = *(this + 278);
  *(this + 278) = 0;
  if (v214)
  {
    (*(*v214 + 8))(v214);
  }

  v215 = *(this + 277);
  *(this + 277) = 0;
  if (v215)
  {
    (*(*v215 + 8))(v215);
  }

  v216 = *(this + 276);
  *(this + 276) = 0;
  if (v216)
  {
    (*(*v216 + 8))(v216);
  }

  v217 = *(this + 275);
  *(this + 275) = 0;
  if (v217)
  {
    (*(*v217 + 8))(v217);
  }

  v218 = *(this + 274);
  *(this + 274) = 0;
  if (v218)
  {
    (*(*v218 + 8))(v218);
  }

  v219 = *(this + 273);
  *(this + 273) = 0;
  if (v219)
  {
    (*(*v219 + 8))(v219);
  }

  v220 = *(this + 272);
  *(this + 272) = 0;
  if (v220)
  {
    (*(*v220 + 8))(v220);
  }

  v221 = *(this + 271);
  *(this + 271) = 0;
  if (v221)
  {
    (*(*v221 + 8))(v221);
  }

  v222 = *(this + 270);
  *(this + 270) = 0;
  if (v222)
  {
    (*(*v222 + 8))(v222);
  }

  v223 = *(this + 269);
  *(this + 269) = 0;
  if (v223)
  {
    (*(*v223 + 8))(v223);
  }

  v224 = *(this + 268);
  *(this + 268) = 0;
  if (v224)
  {
    (*(*v224 + 8))(v224);
  }

  v225 = *(this + 267);
  *(this + 267) = 0;
  if (v225)
  {
    (*(*v225 + 8))(v225);
  }

  v226 = *(this + 266);
  *(this + 266) = 0;
  if (v226)
  {
    (*(*v226 + 8))(v226);
  }

  v227 = *(this + 265);
  *(this + 265) = 0;
  if (v227)
  {
    (*(*v227 + 8))(v227);
  }

  v228 = *(this + 264);
  *(this + 264) = 0;
  if (v228)
  {
    (*(*v228 + 8))(v228);
  }

  v229 = *(this + 263);
  *(this + 263) = 0;
  if (v229)
  {
    (*(*v229 + 8))(v229);
  }

  v230 = *(this + 262);
  *(this + 262) = 0;
  if (v230)
  {
    (*(*v230 + 8))(v230);
  }

  v231 = *(this + 261);
  *(this + 261) = 0;
  if (v231)
  {
    (*(*v231 + 8))(v231);
  }

  v232 = *(this + 260);
  *(this + 260) = 0;
  if (v232)
  {
    (*(*v232 + 8))(v232);
  }

  v233 = *(this + 259);
  *(this + 259) = 0;
  if (v233)
  {
    (*(*v233 + 8))(v233);
  }

  v234 = *(this + 258);
  *(this + 258) = 0;
  if (v234)
  {
    (*(*v234 + 8))(v234);
  }

  v235 = *(this + 257);
  *(this + 257) = 0;
  if (v235)
  {
    (*(*v235 + 8))(v235);
  }

  v236 = *(this + 256);
  *(this + 256) = 0;
  if (v236)
  {
    (*(*v236 + 8))(v236);
  }

  v237 = *(this + 255);
  *(this + 255) = 0;
  if (v237)
  {
    (*(*v237 + 8))(v237);
  }

  v238 = *(this + 254);
  *(this + 254) = 0;
  if (v238)
  {
    (*(*v238 + 8))(v238);
  }

  v239 = *(this + 253);
  *(this + 253) = 0;
  if (v239)
  {
    (*(*v239 + 8))(v239);
  }

  v240 = *(this + 252);
  *(this + 252) = 0;
  if (v240)
  {
    (*(*v240 + 8))(v240);
  }

  v241 = *(this + 251);
  *(this + 251) = 0;
  if (v241)
  {
    (*(*v241 + 8))(v241);
  }

  v242 = *(this + 250);
  *(this + 250) = 0;
  if (v242)
  {
    (*(*v242 + 8))(v242);
  }

  v243 = *(this + 249);
  *(this + 249) = 0;
  if (v243)
  {
    (*(*v243 + 8))(v243);
  }

  v244 = *(this + 248);
  *(this + 248) = 0;
  if (v244)
  {
    (*(*v244 + 8))(v244);
  }

  v245 = *(this + 247);
  *(this + 247) = 0;
  if (v245)
  {
    (*(*v245 + 8))(v245);
  }

  v246 = *(this + 246);
  *(this + 246) = 0;
  if (v246)
  {
    (*(*v246 + 8))(v246);
  }

  v247 = *(this + 245);
  *(this + 245) = 0;
  if (v247)
  {
    (*(*v247 + 8))(v247);
  }

  v248 = *(this + 244);
  *(this + 244) = 0;
  if (v248)
  {
    (*(*v248 + 8))(v248);
  }

  v249 = *(this + 243);
  *(this + 243) = 0;
  if (v249)
  {
    (*(*v249 + 8))(v249);
  }

  v250 = *(this + 242);
  *(this + 242) = 0;
  if (v250)
  {
    (*(*v250 + 8))(v250);
  }

  v251 = *(this + 241);
  *(this + 241) = 0;
  if (v251)
  {
    (*(*v251 + 8))(v251);
  }

  v252 = *(this + 240);
  *(this + 240) = 0;
  if (v252)
  {
    (*(*v252 + 8))(v252);
  }

  v253 = *(this + 239);
  *(this + 239) = 0;
  if (v253)
  {
    (*(*v253 + 8))(v253);
  }

  v254 = *(this + 238);
  *(this + 238) = 0;
  if (v254)
  {
    (*(*v254 + 8))(v254);
  }

  v255 = *(this + 237);
  *(this + 237) = 0;
  if (v255)
  {
    (*(*v255 + 8))(v255);
  }

  v256 = *(this + 236);
  *(this + 236) = 0;
  if (v256)
  {
    (*(*v256 + 8))(v256);
  }

  v257 = *(this + 235);
  *(this + 235) = 0;
  if (v257)
  {
    (*(*v257 + 8))(v257);
  }

  v258 = *(this + 234);
  *(this + 234) = 0;
  if (v258)
  {
    (*(*v258 + 8))(v258);
  }

  v259 = *(this + 233);
  *(this + 233) = 0;
  if (v259)
  {
    (*(*v259 + 8))(v259);
  }

  v260 = *(this + 232);
  *(this + 232) = 0;
  if (v260)
  {
    (*(*v260 + 8))(v260);
  }

  v261 = *(this + 231);
  *(this + 231) = 0;
  if (v261)
  {
    (*(*v261 + 8))(v261);
  }

  v262 = *(this + 230);
  *(this + 230) = 0;
  if (v262)
  {
    (*(*v262 + 8))(v262);
  }

  v263 = *(this + 229);
  *(this + 229) = 0;
  if (v263)
  {
    (*(*v263 + 8))(v263);
  }

  v264 = *(this + 228);
  *(this + 228) = 0;
  if (v264)
  {
    (*(*v264 + 8))(v264);
  }

  v265 = *(this + 227);
  *(this + 227) = 0;
  if (v265)
  {
    (*(*v265 + 8))(v265);
  }

  v266 = *(this + 226);
  *(this + 226) = 0;
  if (v266)
  {
    (*(*v266 + 8))(v266);
  }

  v267 = *(this + 225);
  *(this + 225) = 0;
  if (v267)
  {
    (*(*v267 + 8))(v267);
  }

  v268 = *(this + 224);
  *(this + 224) = 0;
  if (v268)
  {
    (*(*v268 + 8))(v268);
  }

  v269 = *(this + 223);
  *(this + 223) = 0;
  if (v269)
  {
    (*(*v269 + 8))(v269);
  }

  v270 = *(this + 222);
  *(this + 222) = 0;
  if (v270)
  {
    (*(*v270 + 8))(v270);
  }

  v271 = *(this + 221);
  *(this + 221) = 0;
  if (v271)
  {
    (*(*v271 + 8))(v271);
  }

  v272 = *(this + 220);
  *(this + 220) = 0;
  if (v272)
  {
    (*(*v272 + 8))(v272);
  }

  v273 = *(this + 219);
  *(this + 219) = 0;
  if (v273)
  {
    (*(*v273 + 8))(v273);
  }

  v274 = *(this + 218);
  *(this + 218) = 0;
  if (v274)
  {
    (*(*v274 + 8))(v274);
  }

  v275 = *(this + 217);
  *(this + 217) = 0;
  if (v275)
  {
    (*(*v275 + 8))(v275);
  }

  v276 = *(this + 216);
  *(this + 216) = 0;
  if (v276)
  {
    (*(*v276 + 8))(v276);
  }

  v277 = *(this + 215);
  *(this + 215) = 0;
  if (v277)
  {
    (*(*v277 + 8))(v277);
  }

  v278 = *(this + 214);
  *(this + 214) = 0;
  if (v278)
  {
    (*(*v278 + 8))(v278);
  }

  v279 = *(this + 213);
  *(this + 213) = 0;
  if (v279)
  {
    (*(*v279 + 8))(v279);
  }

  v280 = *(this + 212);
  *(this + 212) = 0;
  if (v280)
  {
    (*(*v280 + 8))(v280);
  }

  v281 = *(this + 211);
  *(this + 211) = 0;
  if (v281)
  {
    (*(*v281 + 8))(v281);
  }

  v282 = *(this + 210);
  *(this + 210) = 0;
  if (v282)
  {
    (*(*v282 + 8))(v282);
  }

  v283 = *(this + 209);
  *(this + 209) = 0;
  if (v283)
  {
    (*(*v283 + 8))(v283);
  }

  v284 = *(this + 208);
  *(this + 208) = 0;
  if (v284)
  {
    (*(*v284 + 8))(v284);
  }

  v285 = *(this + 207);
  *(this + 207) = 0;
  if (v285)
  {
    (*(*v285 + 8))(v285);
  }

  v286 = *(this + 206);
  *(this + 206) = 0;
  if (v286)
  {
    (*(*v286 + 8))(v286);
  }

  v287 = *(this + 205);
  *(this + 205) = 0;
  if (v287)
  {
    (*(*v287 + 8))(v287);
  }

  v288 = *(this + 204);
  *(this + 204) = 0;
  if (v288)
  {
    (*(*v288 + 8))(v288);
  }

  v289 = *(this + 203);
  *(this + 203) = 0;
  if (v289)
  {
    (*(*v289 + 8))(v289);
  }

  v290 = *(this + 202);
  *(this + 202) = 0;
  if (v290)
  {
    (*(*v290 + 8))(v290);
  }

  v291 = *(this + 201);
  *(this + 201) = 0;
  if (v291)
  {
    (*(*v291 + 8))(v291);
  }

  v292 = *(this + 200);
  *(this + 200) = 0;
  if (v292)
  {
    (*(*v292 + 8))(v292);
  }

  v293 = *(this + 199);
  *(this + 199) = 0;
  if (v293)
  {
    (*(*v293 + 8))(v293);
  }

  v294 = *(this + 198);
  *(this + 198) = 0;
  if (v294)
  {
    (*(*v294 + 8))(v294);
  }

  v295 = *(this + 197);
  *(this + 197) = 0;
  if (v295)
  {
    (*(*v295 + 8))(v295);
  }

  v296 = *(this + 196);
  *(this + 196) = 0;
  if (v296)
  {
    (*(*v296 + 8))(v296);
  }

  v297 = *(this + 195);
  *(this + 195) = 0;
  if (v297)
  {
    (*(*v297 + 8))(v297);
  }

  v298 = *(this + 194);
  *(this + 194) = 0;
  if (v298)
  {
    (*(*v298 + 8))(v298);
  }

  v299 = *(this + 193);
  *(this + 193) = 0;
  if (v299)
  {
    (*(*v299 + 8))(v299);
  }

  v300 = *(this + 192);
  *(this + 192) = 0;
  if (v300)
  {
    (*(*v300 + 8))(v300);
  }

  v301 = *(this + 191);
  *(this + 191) = 0;
  if (v301)
  {
    (*(*v301 + 8))(v301);
  }

  v302 = *(this + 190);
  *(this + 190) = 0;
  if (v302)
  {
    (*(*v302 + 8))(v302);
  }

  v303 = *(this + 189);
  *(this + 189) = 0;
  if (v303)
  {
    (*(*v303 + 8))(v303);
  }

  v304 = *(this + 188);
  *(this + 188) = 0;
  if (v304)
  {
    (*(*v304 + 8))(v304);
  }

  v305 = *(this + 187);
  *(this + 187) = 0;
  if (v305)
  {
    (*(*v305 + 8))(v305);
  }

  v306 = *(this + 186);
  *(this + 186) = 0;
  if (v306)
  {
    (*(*v306 + 8))(v306);
  }

  v307 = *(this + 185);
  *(this + 185) = 0;
  if (v307)
  {
    (*(*v307 + 8))(v307);
  }

  v308 = *(this + 184);
  *(this + 184) = 0;
  if (v308)
  {
    (*(*v308 + 8))(v308);
  }

  v309 = *(this + 183);
  *(this + 183) = 0;
  if (v309)
  {
    (*(*v309 + 8))(v309);
  }

  v310 = *(this + 182);
  *(this + 182) = 0;
  if (v310)
  {
    (*(*v310 + 8))(v310);
  }

  v311 = *(this + 181);
  *(this + 181) = 0;
  if (v311)
  {
    (*(*v311 + 8))(v311);
  }

  v312 = *(this + 180);
  *(this + 180) = 0;
  if (v312)
  {
    (*(*v312 + 8))(v312);
  }

  v313 = *(this + 179);
  *(this + 179) = 0;
  if (v313)
  {
    (*(*v313 + 8))(v313);
  }

  v314 = *(this + 178);
  *(this + 178) = 0;
  if (v314)
  {
    (*(*v314 + 8))(v314);
  }

  v315 = *(this + 177);
  *(this + 177) = 0;
  if (v315)
  {
    (*(*v315 + 8))(v315);
  }

  v316 = *(this + 176);
  *(this + 176) = 0;
  if (v316)
  {
    (*(*v316 + 8))(v316);
  }

  v317 = *(this + 175);
  *(this + 175) = 0;
  if (v317)
  {
    (*(*v317 + 8))(v317);
  }

  v318 = *(this + 174);
  *(this + 174) = 0;
  if (v318)
  {
    (*(*v318 + 8))(v318);
  }

  v319 = *(this + 173);
  *(this + 173) = 0;
  if (v319)
  {
    (*(*v319 + 8))(v319);
  }

  v320 = *(this + 172);
  *(this + 172) = 0;
  if (v320)
  {
    (*(*v320 + 8))(v320);
  }

  v321 = *(this + 171);
  *(this + 171) = 0;
  if (v321)
  {
    (*(*v321 + 8))(v321);
  }

  v322 = *(this + 170);
  *(this + 170) = 0;
  if (v322)
  {
    (*(*v322 + 8))(v322);
  }

  v323 = *(this + 169);
  *(this + 169) = 0;
  if (v323)
  {
    (*(*v323 + 8))(v323);
  }

  v324 = *(this + 168);
  *(this + 168) = 0;
  if (v324)
  {
    (*(*v324 + 8))(v324);
  }

  v325 = *(this + 167);
  *(this + 167) = 0;
  if (v325)
  {
    (*(*v325 + 8))(v325);
  }

  v326 = *(this + 166);
  *(this + 166) = 0;
  if (v326)
  {
    (*(*v326 + 8))(v326);
  }

  v327 = *(this + 165);
  *(this + 165) = 0;
  if (v327)
  {
    (*(*v327 + 8))(v327);
  }

  v328 = *(this + 164);
  *(this + 164) = 0;
  if (v328)
  {
    (*(*v328 + 8))(v328);
  }

  v329 = *(this + 163);
  *(this + 163) = 0;
  if (v329)
  {
    (*(*v329 + 8))(v329);
  }

  v330 = *(this + 162);
  *(this + 162) = 0;
  if (v330)
  {
    (*(*v330 + 8))(v330);
  }

  v331 = *(this + 161);
  *(this + 161) = 0;
  if (v331)
  {
    (*(*v331 + 8))(v331);
  }

  v332 = *(this + 160);
  *(this + 160) = 0;
  if (v332)
  {
    (*(*v332 + 8))(v332);
  }

  v333 = *(this + 159);
  *(this + 159) = 0;
  if (v333)
  {
    (*(*v333 + 8))(v333);
  }

  v334 = *(this + 158);
  *(this + 158) = 0;
  if (v334)
  {
    (*(*v334 + 8))(v334);
  }

  v335 = *(this + 157);
  *(this + 157) = 0;
  if (v335)
  {
    (*(*v335 + 8))(v335);
  }

  v336 = *(this + 156);
  *(this + 156) = 0;
  if (v336)
  {
    (*(*v336 + 8))(v336);
  }

  v337 = *(this + 155);
  *(this + 155) = 0;
  if (v337)
  {
    (*(*v337 + 8))(v337);
  }

  v338 = *(this + 154);
  *(this + 154) = 0;
  if (v338)
  {
    (*(*v338 + 8))(v338);
  }

  v339 = *(this + 153);
  *(this + 153) = 0;
  if (v339)
  {
    (*(*v339 + 8))(v339);
  }

  v340 = *(this + 152);
  *(this + 152) = 0;
  if (v340)
  {
    (*(*v340 + 8))(v340);
  }

  v341 = *(this + 151);
  *(this + 151) = 0;
  if (v341)
  {
    (*(*v341 + 8))(v341);
  }

  v342 = *(this + 150);
  *(this + 150) = 0;
  if (v342)
  {
    (*(*v342 + 8))(v342);
  }

  v343 = *(this + 149);
  *(this + 149) = 0;
  if (v343)
  {
    (*(*v343 + 8))(v343);
  }

  v344 = *(this + 148);
  *(this + 148) = 0;
  if (v344)
  {
    (*(*v344 + 8))(v344);
  }

  v345 = *(this + 147);
  *(this + 147) = 0;
  if (v345)
  {
    (*(*v345 + 8))(v345);
  }

  v346 = *(this + 146);
  *(this + 146) = 0;
  if (v346)
  {
    (*(*v346 + 8))(v346);
  }

  v347 = *(this + 145);
  *(this + 145) = 0;
  if (v347)
  {
    (*(*v347 + 8))(v347);
  }

  v348 = *(this + 144);
  *(this + 144) = 0;
  if (v348)
  {
    (*(*v348 + 8))(v348);
  }

  v349 = *(this + 143);
  *(this + 143) = 0;
  if (v349)
  {
    (*(*v349 + 8))(v349);
  }

  v350 = *(this + 142);
  *(this + 142) = 0;
  if (v350)
  {
    (*(*v350 + 8))(v350);
  }

  v351 = *(this + 141);
  *(this + 141) = 0;
  if (v351)
  {
    (*(*v351 + 8))(v351);
  }

  v352 = *(this + 140);
  *(this + 140) = 0;
  if (v352)
  {
    (*(*v352 + 8))(v352);
  }

  v353 = *(this + 139);
  *(this + 139) = 0;
  if (v353)
  {
    (*(*v353 + 8))(v353);
  }

  v354 = *(this + 138);
  *(this + 138) = 0;
  if (v354)
  {
    (*(*v354 + 8))(v354);
  }

  v355 = *(this + 137);
  *(this + 137) = 0;
  if (v355)
  {
    (*(*v355 + 8))(v355);
  }

  v356 = *(this + 136);
  *(this + 136) = 0;
  if (v356)
  {
    (*(*v356 + 8))(v356);
  }

  v357 = *(this + 135);
  *(this + 135) = 0;
  if (v357)
  {
    (*(*v357 + 8))(v357);
  }

  v358 = *(this + 134);
  *(this + 134) = 0;
  if (v358)
  {
    (*(*v358 + 8))(v358);
  }

  v359 = *(this + 133);
  *(this + 133) = 0;
  if (v359)
  {
    (*(*v359 + 8))(v359);
  }

  v360 = *(this + 132);
  *(this + 132) = 0;
  if (v360)
  {
    (*(*v360 + 8))(v360);
  }

  v361 = *(this + 131);
  *(this + 131) = 0;
  if (v361)
  {
    (*(*v361 + 8))(v361);
  }

  v362 = *(this + 130);
  *(this + 130) = 0;
  if (v362)
  {
    (*(*v362 + 8))(v362);
  }

  v363 = *(this + 129);
  *(this + 129) = 0;
  if (v363)
  {
    (*(*v363 + 8))(v363);
  }

  v364 = *(this + 128);
  *(this + 128) = 0;
  if (v364)
  {
    (*(*v364 + 8))(v364);
  }

  v365 = *(this + 127);
  *(this + 127) = 0;
  if (v365)
  {
    (*(*v365 + 8))(v365);
  }

  v366 = *(this + 126);
  *(this + 126) = 0;
  if (v366)
  {
    (*(*v366 + 8))(v366);
  }

  v367 = *(this + 125);
  *(this + 125) = 0;
  if (v367)
  {
    (*(*v367 + 8))(v367);
  }

  v368 = *(this + 124);
  *(this + 124) = 0;
  if (v368)
  {
    (*(*v368 + 8))(v368);
  }

  v369 = *(this + 123);
  *(this + 123) = 0;
  if (v369)
  {
    (*(*v369 + 8))(v369);
  }

  v370 = *(this + 122);
  *(this + 122) = 0;
  if (v370)
  {
    (*(*v370 + 8))(v370);
  }

  v371 = *(this + 121);
  *(this + 121) = 0;
  if (v371)
  {
    (*(*v371 + 8))(v371);
  }

  v372 = *(this + 120);
  *(this + 120) = 0;
  if (v372)
  {
    (*(*v372 + 8))(v372);
  }

  v373 = *(this + 119);
  *(this + 119) = 0;
  if (v373)
  {
    (*(*v373 + 8))(v373);
  }

  v374 = *(this + 118);
  *(this + 118) = 0;
  if (v374)
  {
    (*(*v374 + 8))(v374);
  }

  v375 = *(this + 117);
  *(this + 117) = 0;
  if (v375)
  {
    (*(*v375 + 8))(v375);
  }

  v376 = *(this + 116);
  *(this + 116) = 0;
  if (v376)
  {
    (*(*v376 + 8))(v376);
  }

  v377 = *(this + 115);
  *(this + 115) = 0;
  if (v377)
  {
    (*(*v377 + 8))(v377);
  }

  v378 = *(this + 114);
  *(this + 114) = 0;
  if (v378)
  {
    (*(*v378 + 8))(v378);
  }

  v379 = *(this + 113);
  *(this + 113) = 0;
  if (v379)
  {
    (*(*v379 + 8))(v379);
  }

  v380 = *(this + 112);
  *(this + 112) = 0;
  if (v380)
  {
    (*(*v380 + 8))(v380);
  }

  v381 = *(this + 111);
  *(this + 111) = 0;
  if (v381)
  {
    (*(*v381 + 8))(v381);
  }

  v382 = *(this + 110);
  *(this + 110) = 0;
  if (v382)
  {
    (*(*v382 + 8))(v382);
  }

  v383 = *(this + 109);
  *(this + 109) = 0;
  if (v383)
  {
    (*(*v383 + 8))(v383);
  }

  v384 = *(this + 108);
  *(this + 108) = 0;
  if (v384)
  {
    (*(*v384 + 8))(v384);
  }

  v385 = *(this + 107);
  *(this + 107) = 0;
  if (v385)
  {
    (*(*v385 + 8))(v385);
  }

  v386 = *(this + 106);
  *(this + 106) = 0;
  if (v386)
  {
    (*(*v386 + 8))(v386);
  }

  v387 = *(this + 105);
  *(this + 105) = 0;
  if (v387)
  {
    (*(*v387 + 8))(v387);
  }

  v388 = *(this + 104);
  *(this + 104) = 0;
  if (v388)
  {
    (*(*v388 + 8))(v388);
  }

  v389 = *(this + 103);
  *(this + 103) = 0;
  if (v389)
  {
    (*(*v389 + 8))(v389);
  }

  v390 = *(this + 102);
  *(this + 102) = 0;
  if (v390)
  {
    (*(*v390 + 8))(v390);
  }

  v391 = *(this + 101);
  *(this + 101) = 0;
  if (v391)
  {
    (*(*v391 + 8))(v391);
  }

  v392 = *(this + 100);
  *(this + 100) = 0;
  if (v392)
  {
    (*(*v392 + 8))(v392);
  }

  v393 = *(this + 99);
  *(this + 99) = 0;
  if (v393)
  {
    (*(*v393 + 8))(v393);
  }

  v394 = *(this + 98);
  *(this + 98) = 0;
  if (v394)
  {
    (*(*v394 + 8))(v394);
  }

  v395 = *(this + 97);
  *(this + 97) = 0;
  if (v395)
  {
    (*(*v395 + 8))(v395);
  }

  v396 = *(this + 96);
  *(this + 96) = 0;
  if (v396)
  {
    (*(*v396 + 8))(v396);
  }

  v397 = *(this + 95);
  *(this + 95) = 0;
  if (v397)
  {
    (*(*v397 + 8))(v397);
  }

  v398 = *(this + 94);
  *(this + 94) = 0;
  if (v398)
  {
    (*(*v398 + 8))(v398);
  }

  v399 = *(this + 93);
  *(this + 93) = 0;
  if (v399)
  {
    (*(*v399 + 8))(v399);
  }

  v400 = *(this + 92);
  *(this + 92) = 0;
  if (v400)
  {
    (*(*v400 + 8))(v400);
  }

  v401 = *(this + 91);
  *(this + 91) = 0;
  if (v401)
  {
    (*(*v401 + 8))(v401);
  }

  v402 = *(this + 90);
  *(this + 90) = 0;
  if (v402)
  {
    (*(*v402 + 8))(v402);
  }

  v403 = *(this + 89);
  *(this + 89) = 0;
  if (v403)
  {
    (*(*v403 + 8))(v403);
  }

  v404 = *(this + 88);
  *(this + 88) = 0;
  if (v404)
  {
    (*(*v404 + 8))(v404);
  }

  v405 = *(this + 86);
  *(this + 86) = 0;
  if (v405)
  {
    (*(*v405 + 8))(v405);
  }

  v406 = *(this + 85);
  *(this + 85) = 0;
  if (v406)
  {
    (*(*v406 + 8))(v406);
  }

  v407 = *(this + 84);
  *(this + 84) = 0;
  if (v407)
  {
    (*(*v407 + 8))(v407);
  }

  v408 = *(this + 83);
  *(this + 83) = 0;
  if (v408)
  {
    (*(*v408 + 8))(v408);
  }

  v409 = *(this + 82);
  *(this + 82) = 0;
  if (v409)
  {
    (*(*v409 + 8))(v409);
  }

  v410 = *(this + 81);
  *(this + 81) = 0;
  if (v410)
  {
    (*(*v410 + 8))(v410);
  }

  v411 = *(this + 80);
  *(this + 80) = 0;
  if (v411)
  {
    (*(*v411 + 8))(v411);
  }

  v412 = *(this + 79);
  *(this + 79) = 0;
  if (v412)
  {
    (*(*v412 + 8))(v412);
  }

  v413 = *(this + 78);
  *(this + 78) = 0;
  if (v413)
  {
    (*(*v413 + 8))(v413);
  }

  v414 = *(this + 77);
  *(this + 77) = 0;
  if (v414)
  {
    (*(*v414 + 8))(v414);
  }

  v415 = *(this + 76);
  *(this + 76) = 0;
  if (v415)
  {
    (*(*v415 + 8))(v415);
  }

  v416 = *(this + 75);
  *(this + 75) = 0;
  if (v416)
  {
    (*(*v416 + 8))(v416);
  }

  v417 = *(this + 74);
  *(this + 74) = 0;
  if (v417)
  {
    (*(*v417 + 8))(v417);
  }

  v418 = *(this + 73);
  *(this + 73) = 0;
  if (v418)
  {
    (*(*v418 + 8))(v418);
  }

  v419 = *(this + 72);
  *(this + 72) = 0;
  if (v419)
  {
    (*(*v419 + 8))(v419);
  }

  v420 = *(this + 71);
  *(this + 71) = 0;
  if (v420)
  {
    (*(*v420 + 8))(v420);
  }

  v421 = *(this + 70);
  *(this + 70) = 0;
  if (v421)
  {
    (*(*v421 + 8))(v421);
  }

  v422 = *(this + 69);
  *(this + 69) = 0;
  if (v422)
  {
    (*(*v422 + 8))(v422);
  }

  v423 = *(this + 68);
  *(this + 68) = 0;
  if (v423)
  {
    (*(*v423 + 8))(v423);
  }

  v424 = *(this + 67);
  *(this + 67) = 0;
  if (v424)
  {
    (*(*v424 + 8))(v424);
  }

  v425 = *(this + 66);
  *(this + 66) = 0;
  if (v425)
  {
    (*(*v425 + 8))(v425);
  }

  v426 = *(this + 65);
  *(this + 65) = 0;
  if (v426)
  {
    (*(*v426 + 8))(v426);
  }

  v427 = *(this + 64);
  *(this + 64) = 0;
  if (v427)
  {
    (*(*v427 + 8))(v427);
  }

  v428 = *(this + 63);
  *(this + 63) = 0;
  if (v428)
  {
    (*(*v428 + 8))(v428);
  }

  v429 = *(this + 62);
  *(this + 62) = 0;
  if (v429)
  {
    (*(*v429 + 8))(v429);
  }

  v430 = *(this + 61);
  *(this + 61) = 0;
  if (v430)
  {
    (*(*v430 + 8))(v430);
  }

  v431 = *(this + 60);
  *(this + 60) = 0;
  if (v431)
  {
    (*(*v431 + 8))(v431);
  }

  v432 = *(this + 59);
  *(this + 59) = 0;
  if (v432)
  {
    (*(*v432 + 8))(v432);
  }

  v433 = *(this + 58);
  *(this + 58) = 0;
  if (v433)
  {
    (*(*v433 + 8))(v433);
  }

  v434 = *(this + 57);
  *(this + 57) = 0;
  if (v434)
  {
    (*(*v434 + 8))(v434);
  }

  v435 = *(this + 56);
  *(this + 56) = 0;
  if (v435)
  {
    (*(*v435 + 8))(v435);
  }

  v436 = *(this + 55);
  *(this + 55) = 0;
  if (v436)
  {
    (*(*v436 + 8))(v436);
  }

  v437 = *(this + 54);
  *(this + 54) = 0;
  if (v437)
  {
    (*(*v437 + 8))(v437);
  }

  v438 = *(this + 53);
  *(this + 53) = 0;
  if (v438)
  {
    (*(*v438 + 8))(v438);
  }

  v439 = *(this + 52);
  *(this + 52) = 0;
  if (v439)
  {
    (*(*v439 + 8))(v439);
  }

  v440 = *(this + 51);
  *(this + 51) = 0;
  if (v440)
  {
    (*(*v440 + 8))(v440);
  }

  v441 = *(this + 50);
  *(this + 50) = 0;
  if (v441)
  {
    (*(*v441 + 8))(v441);
  }

  v442 = *(this + 49);
  *(this + 49) = 0;
  if (v442)
  {
    (*(*v442 + 8))(v442);
  }

  v443 = *(this + 48);
  *(this + 48) = 0;
  if (v443)
  {
    (*(*v443 + 8))(v443);
  }

  v444 = *(this + 47);
  *(this + 47) = 0;
  if (v444)
  {
    (*(*v444 + 8))(v444);
  }

  v445 = *(this + 46);
  *(this + 46) = 0;
  if (v445)
  {
    (*(*v445 + 8))(v445);
  }

  v446 = *(this + 45);
  *(this + 45) = 0;
  if (v446)
  {
    (*(*v446 + 8))(v446);
  }

  v447 = *(this + 44);
  *(this + 44) = 0;
  if (v447)
  {
    (*(*v447 + 8))(v447);
  }

  v448 = *(this + 43);
  *(this + 43) = 0;
  if (v448)
  {
    (*(*v448 + 8))(v448);
  }

  v449 = *(this + 42);
  *(this + 42) = 0;
  if (v449)
  {
    (*(*v449 + 8))(v449);
  }

  v450 = *(this + 41);
  *(this + 41) = 0;
  if (v450)
  {
    (*(*v450 + 8))(v450);
  }

  v451 = *(this + 40);
  *(this + 40) = 0;
  if (v451)
  {
    (*(*v451 + 8))(v451);
  }

  v452 = *(this + 39);
  *(this + 39) = 0;
  if (v452)
  {
    (*(*v452 + 8))(v452);
  }

  v453 = *(this + 38);
  *(this + 38) = 0;
  if (v453)
  {
    (*(*v453 + 8))(v453);
  }

  v454 = *(this + 37);
  *(this + 37) = 0;
  if (v454)
  {
    (*(*v454 + 8))(v454);
  }

  v455 = *(this + 36);
  *(this + 36) = 0;
  if (v455)
  {
    (*(*v455 + 8))(v455);
  }

  v456 = *(this + 35);
  *(this + 35) = 0;
  if (v456)
  {
    (*(*v456 + 8))(v456);
  }

  v457 = *(this + 34);
  *(this + 34) = 0;
  if (v457)
  {
    (*(*v457 + 8))(v457);
  }

  v458 = *(this + 33);
  *(this + 33) = 0;
  if (v458)
  {
    (*(*v458 + 8))(v458);
  }

  v459 = *(this + 32);
  *(this + 32) = 0;
  if (v459)
  {
    (*(*v459 + 8))(v459);
  }

  v460 = *(this + 31);
  *(this + 31) = 0;
  if (v460)
  {
    (*(*v460 + 8))(v460);
  }

  v461 = *(this + 30);
  *(this + 30) = 0;
  if (v461)
  {
    (*(*v461 + 8))(v461);
  }

  v462 = *(this + 29);
  *(this + 29) = 0;
  if (v462)
  {
    (*(*v462 + 8))(v462);
  }

  v463 = *(this + 28);
  *(this + 28) = 0;
  if (v463)
  {
    (*(*v463 + 8))(v463);
  }

  v464 = *(this + 27);
  *(this + 27) = 0;
  if (v464)
  {
    (*(*v464 + 8))(v464);
  }

  v465 = *(this + 26);
  *(this + 26) = 0;
  if (v465)
  {
    (*(*v465 + 8))(v465);
  }

  v466 = *(this + 25);
  *(this + 25) = 0;
  if (v466)
  {
    (*(*v466 + 8))(v466);
  }

  v467 = *(this + 24);
  *(this + 24) = 0;
  if (v467)
  {
    (*(*v467 + 8))(v467);
  }

  v468 = *(this + 23);
  *(this + 23) = 0;
  if (v468)
  {
    (*(*v468 + 8))(v468);
  }

  v469 = *(this + 22);
  *(this + 22) = 0;
  if (v469)
  {
    (*(*v469 + 8))(v469);
  }

  v470 = *(this + 21);
  *(this + 21) = 0;
  if (v470)
  {
    (*(*v470 + 8))(v470);
  }

  v471 = *(this + 20);
  *(this + 20) = 0;
  if (v471)
  {
    (*(*v471 + 8))(v471);
  }

  v472 = *(this + 19);
  *(this + 19) = 0;
  if (v472)
  {
    (*(*v472 + 8))(v472);
  }

  v473 = *(this + 18);
  *(this + 18) = 0;
  if (v473)
  {
    (*(*v473 + 8))(v473);
  }

  v474 = *(this + 17);
  *(this + 17) = 0;
  if (v474)
  {
    (*(*v474 + 8))(v474);
  }

  v475 = *(this + 16);
  *(this + 16) = 0;
  if (v475)
  {
    (*(*v475 + 8))(v475);
  }

  v476 = *(this + 15);
  *(this + 15) = 0;
  if (v476)
  {
    (*(*v476 + 8))(v476);
  }

  v477 = *(this + 14);
  *(this + 14) = 0;
  if (v477)
  {
    (*(*v477 + 8))(v477);
  }

  v478 = *(this + 13);
  *(this + 13) = 0;
  if (v478)
  {
    (*(*v478 + 8))(v478);
  }

  v479 = *(this + 12);
  *(this + 12) = 0;
  if (v479)
  {
    (*(*v479 + 8))(v479);
  }

  v480 = *(this + 11);
  *(this + 11) = 0;
  if (v480)
  {
    (*(*v480 + 8))(v480);
  }

  v481 = *(this + 10);
  *(this + 10) = 0;
  if (v481)
  {
    (*(*v481 + 8))(v481);
  }

  v482 = *(this + 9);
  *(this + 9) = 0;
  if (v482)
  {
    (*(*v482 + 8))(v482);
  }

  v483 = *(this + 8);
  *(this + 8) = 0;
  if (v483)
  {
    (*(*v483 + 8))(v483);
  }

  v484 = *(this + 7);
  *(this + 7) = 0;
  if (v484)
  {
    (*(*v484 + 8))(v484);
  }

  v485 = *(this + 6);
  *(this + 6) = 0;
  if (v485)
  {
    (*(*v485 + 8))(v485);
  }

  v486 = *(this + 5);
  *(this + 5) = 0;
  if (v486)
  {
    (*(*v486 + 8))(v486);
  }

  v487 = *(this + 4);
  *(this + 4) = 0;
  if (v487)
  {
    (*(*v487 + 8))(v487);
  }

  v488 = *(this + 3);
  *(this + 3) = 0;
  if (v488)
  {
    (*(*v488 + 8))(v488);
  }

  v489 = *(this + 2);
  *(this + 2) = 0;
  if (v489)
  {
    (*(*v489 + 8))(v489);
  }

  v490 = *(this + 1);
  *(this + 1) = 0;
  if (v490)
  {
    (*(*v490 + 8))(v490);
  }

  PB::Base::~Base(this);
}