void sub_E15CB4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  sub_1959728(&STACK[0x250]);
  sub_CD6274(v1);
  _Unwind_Resume(a1);
}

void sub_E15E28(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 66) = 0u;
  *(a3 + 82) = 1;
  *(a3 + 88) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v26);
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v21 = v5;
    v22 = 1;
    v23 = v6;
    v24 = sub_E88F70(&v21);
    v25 = v7;
    sub_D11BD4(&v21, &v16);
  }

  sub_434934(&__dst, a1);
  LOBYTE(v16) = 0;
  v17 = __dst;
  __p = v28;
  v19 = v29;
  v28 = 0uLL;
  v29 = 0;
  v20 = v30;
  sub_D12F1C(a3, &v16);
  if (v16 == 1)
  {
    v8 = v17.n128_u64[0];
    if (!v17.n128_u64[0])
    {
      goto LABEL_19;
    }

    v9 = v17.n128_i64[1];
    v10 = v17.n128_u64[0];
    if (v17.n128_u64[1] != v17.n128_u64[0])
    {
      do
      {
        v9 -= 440;
        sub_44FDEC(v9);
      }

      while (v9 != v8);
      v10 = v17.n128_u64[0];
    }

    v17.n128_u64[1] = v8;
  }

  else
  {
    v11 = __p;
    if (!__p)
    {
      goto LABEL_19;
    }

    v12 = *(&__p + 1);
    v10 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 24));
        }

        v12 -= 32;
      }

      while (v12 != v11);
      v10 = __p;
    }

    *(&__p + 1) = v11;
  }

  operator delete(v10);
LABEL_19:
  v13 = v28;
  if (v28)
  {
    v14 = *(&v28 + 1);
    v15 = v28;
    if (*(&v28 + 1) != v28)
    {
      do
      {
        if (*(v14 - 1) < 0)
        {
          operator delete(*(v14 - 24));
        }

        v14 -= 32;
      }

      while (v14 != v13);
      v15 = v28;
    }

    *(&v28 + 1) = v13;
    operator delete(v15);
  }
}

void sub_E1690C(_Unwind_Exception *a1)
{
  if (*(v2 - 121) < 0)
  {
    operator delete(*(v2 - 144));
  }

  sub_1959728(&STACK[0x240]);
  sub_D130AC(v1);
  _Unwind_Resume(a1);
}

void sub_E16A80(uint64_t **a1, uint64_t *a2)
{
  if (*a1 != a2)
  {
    sub_CD80CC(*a1, *a2, a2[1], 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  }

  sub_4E3D18(&v2);
  sub_44D46C(v3);
}

void sub_E16B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_454784(va);
  _Unwind_Resume(a1);
}

void sub_E16B80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x368uLL);
  sub_4E3D18((a3 + 8));
  sub_4E3D18((a3 + 56));
  *(a3 + 104) = -1;
  *(a3 + 288) = 0;
  *(a3 + 296) = 0;
  *(a3 + 424) = 0;
  *(a3 + 556) = 0;
  *(a3 + 544) = 0;
  *(a3 + 552) = 0;
  *(a3 + 560) = 0u;
  *(a3 + 576) = 0u;
  *(a3 + 592) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 524) = 0u;
  *(a3 + 608) = 0x3FF0000000000000;
  *(a3 + 632) = 0;
  *(a3 + 616) = 0u;
  *(a3 + 640) = 5;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0u;
  *(a3 + 680) = 0u;
  *(a3 + 696) = 0x7FFFFFFF;
  *(a3 + 784) = 0u;
  *(a3 + 704) = 0u;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 761) = 0u;
  *(a3 + 800) = -1;
  *(a3 + 808) = 0x7FFFFFFF;
  *(a3 + 812) = 0;
  *(a3 + 820) = 0;
  *(a3 + 824) = -1;
  *(a3 + 832) = -1;
  *(a3 + 840) = 0;
  *(a3 + 848) = 0;
  *(a3 + 872) = 0;
  *(a3 + 880) = 0;
  *(a3 + 888) = 0;
  *(a3 + 896) = 0u;
  *(a3 + 912) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v21);
    sub_D75B84(&v17, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  }

  sub_434934(&v17, a1);
  LOBYTE(v12) = 0;
  v13 = v17;
  __p = v18;
  v15 = v19;
  v18 = 0uLL;
  v19 = 0;
  v16 = v20;
  sub_D1E024(a3, &v12);
  if (v12 == 1)
  {
    sub_D1D6D4(&v13);
  }

  else
  {
    v6 = __p;
    if (__p)
    {
      v7 = *(&__p + 1);
      v8 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v8 = __p;
      }

      *(&__p + 1) = v6;
      operator delete(v8);
    }
  }

  v9 = v18;
  if (v18)
  {
    v10 = *(&v18 + 1);
    v11 = v18;
    if (*(&v18 + 1) != v18)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v18;
    }

    *(&v18 + 1) = v9;
    operator delete(v11);
  }
}

void sub_E178D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733BE8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D772D8(&STACK[0x608]);
  sub_D1D638(v15);
  _Unwind_Resume(a1);
}

void sub_E17A14(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  if (*(a1 + 8) == &off_2669FE0 && *a1 == 0)
  {
    sub_7E9A4(v20);
    v10 = *a2;
    v9 = a2[1];
    v12 = a2[2];
    v11 = a2[3];
    v21.n128_u64[0] = v9;
    v13 = sub_3B6890(v11);
    v14 = *v13;
    LODWORD(v22) = *(v13 + 8);
    v21.n128_u64[1] = v14;
    BYTE4(v22) = sub_E7A3D0(v10);
    *(&v22 + 1) = v12;
    LOBYTE(v23) = 1;
    v24 = v11;
    sub_D00C48(&v21, &v15);
  }

  sub_434934(&v21, a1);
  LOBYTE(v15) = 0;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v22 = 0uLL;
  v23 = 0;
  v19 = v24;
  sub_D79D84(a3, &v15);
  sub_D71434(&v15);
  v5 = v22;
  if (v22)
  {
    v6 = *(&v22 + 1);
    v7 = v22;
    if (*(&v22 + 1) != v22)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = v22;
    }

    *(&v22 + 1) = v5;
    operator delete(v7);
  }
}

void sub_E18518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733C28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D71434(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_E186B4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E187B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void ****a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  v7 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 88) = 1065353216;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v90);
    sub_E198B8(a2, &v83);
    sub_D39308(&v83, v76);
    sub_E19678(a5, v76);
    if (LOBYTE(v76[0]) == 1)
    {
      sub_D3B548(&v76[1]);
    }

    else
    {
      v14 = v76[3];
      if (v76[3])
      {
        v15 = v76[4];
        v16 = v76[3];
        if (v76[4] != v76[3])
        {
          do
          {
            if (*(v15 - 1) < 0)
            {
              operator delete(*(v15 - 3));
            }

            v15 -= 4;
          }

          while (v15 != v14);
          v16 = v76[3];
        }

        v76[4] = v14;
        operator delete(v16);
      }
    }

    v20 = sub_7EAB4(v90);
    v21 = v20;
    v22 = *(a1 + 84);
    v23 = v22 != 0x7FFFFFFF && v22 <= v20;
    if (!v23 || !sub_7E7E4(1u))
    {
LABEL_76:
      v43 = *(a1 + 88);
      if (v43 != 0x7FFFFFFF && v43 <= v21)
      {
        __p.n128_u64[0] = 10;
        __p.n128_u64[1] = &off_2669FE0;
        sub_434934(__dst, &__p);
        LOBYTE(v76[0]) = 0;
        *&v76[1] = *__dst;
        *&v76[3] = v70;
        v76[5] = v71;
        v70 = 0uLL;
        v71 = 0;
        LODWORD(v77) = v72;
        sub_E19678(a5, v76);
        if (LOBYTE(v76[0]) == 1)
        {
          sub_D3B548(&v76[1]);
        }

        else
        {
          v44 = v76[3];
          if (v76[3])
          {
            v45 = v76[4];
            v46 = v76[3];
            if (v76[4] != v76[3])
            {
              do
              {
                if (*(v45 - 1) < 0)
                {
                  operator delete(*(v45 - 3));
                }

                v45 -= 4;
              }

              while (v45 != v44);
              v46 = v76[3];
            }

            v76[4] = v44;
            operator delete(v46);
          }
        }

        v47 = v70;
        if (v70)
        {
          v48 = *(&v70 + 1);
          v49 = v70;
          if (*(&v70 + 1) != v70)
          {
            do
            {
              if (*(v48 - 1) < 0)
              {
                operator delete(*(v48 - 24));
              }

              v48 -= 32;
            }

            while (v48 != v47);
            v49 = v70;
          }

          *(&v70 + 1) = v47;
          operator delete(v49);
        }
      }

      v50 = *(a1 + 64);
      if (*a5 == 1)
      {
        sub_E199A8(a5);
        memset(v76, 0, sizeof(v76));
        operator new();
      }

      memset(v76, 0, sizeof(v76));
      sub_7CA38(v50, a3, v76, *(a1 + 72));
      v51 = v76[3];
      if (v76[3])
      {
        v52 = v76[4];
        v53 = v76[3];
        if (v76[4] != v76[3])
        {
          do
          {
            v54 = *(v52 - 25);
            v52 -= 6;
            if (v54 < 0)
            {
              operator delete(*v52);
            }
          }

          while (v52 != v51);
          v53 = v76[3];
        }

        v76[4] = v51;
        operator delete(v53);
      }

      if (SHIBYTE(v76[2]) < 0)
      {
        operator delete(v76[0]);
        if (*a5 == 1)
        {
          goto LABEL_108;
        }
      }

      else if (*a5 == 1)
      {
LABEL_108:
        sub_E194B0(a4, v7);
        goto LABEL_143;
      }

      sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_142:
        sub_434B40(a1, v7);
LABEL_143:
        if (v89)
        {
          operator delete(v89);
        }

        v19 = v87;
        if (v87)
        {
          v88 = v87;
LABEL_147:
          operator delete(v19);
          return;
        }

        return;
      }

      sub_19594F8(v76);
      sub_7B538(*(a1 + 64), __dst);
      if ((SBYTE7(v70) & 0x80u) == 0)
      {
        v55 = __dst;
      }

      else
      {
        v55 = __dst[0];
      }

      if ((SBYTE7(v70) & 0x80u) == 0)
      {
        v56 = BYTE7(v70);
      }

      else
      {
        v56 = __dst[1];
      }

      v57 = sub_4A5C(v76, v55, v56);
      sub_4A5C(v57, " failed in step ", 16);
      v58 = std::ostream::operator<<();
      v59 = sub_4A5C(v58, " (", 2);
      if ((atomic_load_explicit(&qword_2733C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C48))
      {
        sub_89C64(2u, "RouteBuilderModule", 18, &qword_2733C30);
        __cxa_guard_release(&qword_2733C48);
      }

      if (byte_2733C47 >= 0)
      {
        v60 = byte_2733C47;
      }

      else
      {
        v60 = unk_2733C38;
      }

      if (byte_2733C47 >= 0)
      {
        v61 = &qword_2733C30;
      }

      else
      {
        v61 = qword_2733C30;
      }

      v62 = sub_4A5C(v59, v61, v60);
      v63 = sub_4A5C(v62, ") with error: ", 14);
      sub_D72C3C(v63, v7);
      if (SBYTE7(v70) < 0)
      {
        operator delete(__dst[0]);
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
LABEL_126:
          if ((v64 & 8) == 0)
          {
            v65 = 0;
            BYTE7(v70) = 0;
LABEL_137:
            *(__dst + v65) = 0;
            sub_7E854(__dst, 3u);
            if (SBYTE7(v70) < 0)
            {
              operator delete(__dst[0]);
            }

            if (v80 < 0)
            {
              operator delete(v79);
            }

            std::locale::~locale(&v76[2]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_142;
          }

          v67 = v76[3];
          v65 = v76[5] - v76[3];
          if ((v76[5] - v76[3]) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_152:
            sub_3244();
          }

LABEL_132:
          if (v65 >= 0x17)
          {
            operator new();
          }

          BYTE7(v70) = v65;
          if (v65)
          {
            memmove(__dst, v67, v65);
          }

          goto LABEL_137;
        }
      }

      else
      {
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_126;
        }
      }

      v66 = v81;
      if (v81 < v78)
      {
        v81 = v78;
        v66 = v78;
      }

      v67 = v77;
      v65 = v66 - v77;
      if (v66 - v77 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_152;
      }

      goto LABEL_132;
    }

    sub_19594F8(v76);
    v24 = sub_4A5C(v76, "Found long running (", 20);
    v25 = sub_72140(v24, v21);
    v26 = sub_4A5C(v25, ") ", 2);
    if ((atomic_load_explicit(&qword_2733C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C48))
    {
      sub_89C64(2u, "RouteBuilderModule", 18, &qword_2733C30);
      __cxa_guard_release(&qword_2733C48);
    }

    if (byte_2733C47 >= 0)
    {
      v27 = byte_2733C47;
    }

    else
    {
      v27 = unk_2733C38;
    }

    if (byte_2733C47 >= 0)
    {
      v28 = &qword_2733C30;
    }

    else
    {
      v28 = qword_2733C30;
    }

    v29 = sub_4A5C(v26, v28, v27);
    v30 = sub_4A5C(v29, " in ", 4);
    sub_7B538(*(a1 + 64), __dst);
    if ((SBYTE7(v70) & 0x80u) == 0)
    {
      v31 = __dst;
    }

    else
    {
      v31 = __dst[0];
    }

    if ((SBYTE7(v70) & 0x80u) == 0)
    {
      v32 = BYTE7(v70);
    }

    else
    {
      v32 = __dst[1];
    }

    v33 = sub_4A5C(v30, v31, v32);
    sub_4A5C(v33, " step ", 6);
    v34 = std::ostream::operator<<();
    v35 = sub_4A5C(v34, " (request: ", 11);
    sub_17541D0(v73);
    sub_E9209C(v73, *(a1 + 56), &__p);
    if ((v75 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.n128_u64[0];
    }

    if ((v75 & 0x80u) == 0)
    {
      v37 = v75;
    }

    else
    {
      v37 = __p.n128_i64[1];
    }

    v38 = sub_4A5C(v35, p_p, v37);
    sub_4A5C(v38, ")", 1);
    if (v75 < 0)
    {
      operator delete(__p.n128_u64[0]);
      sub_1754598(v73);
      if ((SBYTE7(v70) & 0x80000000) == 0)
      {
LABEL_58:
        v39 = v82;
        v68 = a3;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }
    }

    else
    {
      sub_1754598(v73);
      if ((SBYTE7(v70) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    operator delete(__dst[0]);
    v39 = v82;
    v68 = a3;
    if ((v82 & 0x10) == 0)
    {
LABEL_59:
      if ((v39 & 8) == 0)
      {
        v40 = 0;
        BYTE7(v70) = 0;
LABEL_71:
        *(__dst + v40) = 0;
        sub_7E854(__dst, 1u);
        if (SBYTE7(v70) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        std::locale::~locale(&v76[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        a3 = v68;
        goto LABEL_76;
      }

      v42 = v76[3];
      v40 = v76[5] - v76[3];
      if ((v76[5] - v76[3]) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_150:
        sub_3244();
      }

LABEL_66:
      if (v40 >= 0x17)
      {
        operator new();
      }

      BYTE7(v70) = v40;
      if (v40)
      {
        memmove(__dst, v42, v40);
      }

      goto LABEL_71;
    }

LABEL_63:
    v41 = v81;
    if (v81 < v78)
    {
      v81 = v78;
      v41 = v78;
    }

    v42 = v77;
    v40 = v41 - v77;
    if (v41 - v77 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_150;
    }

    goto LABEL_66;
  }

  sub_434934(&v83, a1);
  LOBYTE(v76[0]) = 0;
  *&v76[1] = v83;
  *&v76[3] = v84;
  v76[5] = v85;
  v84 = 0uLL;
  v85 = 0;
  LODWORD(v77) = v86;
  sub_E19678(a5, v76);
  if (LOBYTE(v76[0]) == 1)
  {
    sub_D3B548(&v76[1]);
  }

  else
  {
    v11 = v76[3];
    if (v76[3])
    {
      v12 = v76[4];
      v13 = v76[3];
      if (v76[4] != v76[3])
      {
        do
        {
          if (*(v12 - 1) < 0)
          {
            operator delete(*(v12 - 3));
          }

          v12 -= 4;
        }

        while (v12 != v11);
        v13 = v76[3];
      }

      v76[4] = v11;
      operator delete(v13);
    }
  }

  v17 = v84;
  if (v84)
  {
    v18 = *(&v84 + 1);
    v19 = v84;
    if (*(&v84 + 1) != v84)
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 24));
        }

        v18 -= 32;
      }

      while (v18 != v17);
      v19 = v84;
    }

    *(&v84 + 1) = v17;
    goto LABEL_147;
  }
}

void sub_E19378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733C48);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D7A354(&STACK[0x378]);
  sub_D3B4AC(v15);
  _Unwind_Resume(a1);
}

void sub_E194B0(void ****a1, uint64_t a2)
{
  v4 = *a1;
  if (**a1)
  {
    sub_E02D74(*a1);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a1[1] = ***a1;
  v5 = *a1[1];
  v6 = sub_4EDB30(a1[2]);
  sub_4C516C(v5, v6);
  sub_4C515C(*a1[1], 1);
  v7 = a1[3];
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = *v7;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *v7;
    }

    v7[1] = v8;
    operator delete(v10);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *v7 = *(a2 + 24);
  v7[2] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = sub_4C5074(*a1[1], 1);
  if (*a1[4] == 3)
  {
    if (v12)
    {
      v13 = a1[5];
      v17.n128_u64[0] = 13;
      v17.n128_u64[1] = &off_2669FE0;
      sub_434934(&v18, &v17);
      sub_434B40(v13, &v18);
      v14 = __p;
      if (__p)
      {
        v15 = v20;
        v16 = __p;
        if (v20 != __p)
        {
          do
          {
            if (*(v15 - 1) < 0)
            {
              operator delete(*(v15 - 3));
            }

            v15 -= 4;
          }

          while (v15 != v14);
          v16 = __p;
        }

        v20 = v14;
        operator delete(v16);
      }
    }
  }
}

void sub_E19664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E19678(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_E02D74((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = (a1 + 32);
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 32);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 1);
            v7 -= 3;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *v5;
        }

        *(a1 + 40) = v6;
        operator delete(v8);
        *v5 = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      sub_CEBD3C(a1 + 56, (a2 + 56));
LABEL_31:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_32;
    }

    sub_D3B548((a1 + 8));
  }

  else if (*a2)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      if (v11 != v10)
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = *(a1 + 24);
      }

      *(a1 + 32) = v10;
      operator delete(v12);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v13 = *(a2 + 72);
    *(a1 + 32) = *(a2 + 32);
    v14 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 72) = v13;
    v15 = *(a2 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a2 + 64) = 0;
    v16 = *(a2 + 80);
    *(a1 + 80) = v16;
    *(a1 + 88) = *(a2 + 88);
    if (v16)
    {
      v17 = *(v13 + 8);
      v18 = *(a1 + 64);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v17 >= v18)
        {
          v17 %= v18;
        }
      }

      else
      {
        v17 &= v18 - 1;
      }

      *(v14 + 8 * v17) = a1 + 72;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
    }

    goto LABEL_31;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_32:
  *a1 = *a2;
  return a1;
}

__n128 sub_E198B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = **(a1 + 48);
  v8 = *(a1 + 64);
  v9 = *(v8 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v4;
  v14 = v5;
  *(a2 + 24) = sub_FF3C1C(v3, v5, 2);
  *(a2 + 32) = sub_6EECC();
  *(a2 + 36) = v7;
  *(a2 + 40) = v6;
  sub_E80194(v3, a2 + 48);
  v10 = *(a2 + 36) - 1;
  if (v10 < 0xD && ((0x1543u >> v10) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_E89630(v3);
  }

  *(a2 + 224) = v11;
  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  result = v14;
  *(a2 + 232) = v14;
  *(a2 + 248) = v12;
  return result;
}

uint64_t sub_E199A8(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E19AA8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ++*(a1 + 80);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v18);
    sub_E78844(v13);
  }

  sub_434934(&v9, a1);
  v13[0] = 0;
  v14 = v9;
  __p = v10;
  v16 = v11;
  v10 = 0uLL;
  v11 = 0;
  v17 = v12;
  sub_E1A678(a2, v13);
  if (v13[0] == 1)
  {
    if (!v14.n128_u64[0])
    {
      goto LABEL_16;
    }

    sub_E02F70(&v14);
    v3 = v14.n128_u64[0];
  }

  else
  {
    v4 = __p;
    if (!__p)
    {
      goto LABEL_16;
    }

    v5 = *(&__p + 1);
    v3 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 32;
      }

      while (v5 != v4);
      v3 = __p;
    }

    *(&__p + 1) = v4;
  }

  operator delete(v3);
LABEL_16:
  v6 = v10;
  if (v10)
  {
    v7 = *(&v10 + 1);
    v8 = v10;
    if (*(&v10 + 1) != v10)
    {
      do
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 24));
        }

        v7 -= 32;
      }

      while (v7 != v6);
      v8 = v10;
    }

    *(&v10 + 1) = v6;
    operator delete(v8);
  }
}

void sub_E1A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_528AB4(&STACK[0x380]);
  sub_E02CD8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_E1A678(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_E02F70(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v6 = *(a2 + 64);
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      *(a1 + 92) = *(a2 + 92);
LABEL_21:
      *(a1 + 64) = v6;
      *(a1 + 80) = v5;
      *(a1 + 48) = v7;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_22;
    }

    v11 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_E02F70(v11);
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_21;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_22:
  *a1 = *a2;
  return a1;
}

uint64_t sub_E1A7F4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E1A8F4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  ++*(v0 + 80);
  *v1 = 1;
  bzero(v1 + 8, 0x13D0uLL);
  sub_D0EECC((v2 + 8));
}

void sub_E1B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_guard_abort(&qword_2733C68);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x930]);
  sub_D7E748(&STACK[0x268]);
  sub_D0F09C(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_E1B65C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_E1B748(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_D0F138(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_D7DE54(a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_E1B748(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_78B5C0(v5 - 7808);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_CFD5E4((a1 + 24), a2 + 24);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = (a1 + 1112);
    v9 = *(a1 + 1120);
    v10 = *(a1 + 1112);
    if (v9 != v7)
    {
      do
      {
        v9 = sub_3A9518(v9 - 1120);
      }

      while (v9 != v7);
      v10 = *v8;
    }

    *(a1 + 1120) = v7;
    operator delete(v10);
    *v8 = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
  }

  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1128) = 0;
  *(a2 + 1112) = 0u;
  sub_D09358(a1 + 1136, a2 + 1136);
  v11 = *(a2 + 1968);
  *(a1 + 1952) = *(a2 + 1952);
  *(a1 + 1968) = v11;
  v12 = *(a2 + 2000);
  v13 = *(a2 + 2016);
  v14 = *(a2 + 2032);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 2032) = v14;
  *(a1 + 2016) = v13;
  *(a1 + 2000) = v12;
  v15 = *(a2 + 2064);
  v16 = *(a2 + 2080);
  v17 = *(a2 + 2096);
  *(a1 + 2048) = *(a2 + 2048);
  *(a1 + 2096) = v17;
  *(a1 + 2080) = v16;
  *(a1 + 2064) = v15;
  v18 = *(a2 + 2128);
  v19 = *(a2 + 2144);
  v20 = *(a2 + 2154);
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2154) = v20;
  *(a1 + 2144) = v19;
  *(a1 + 2128) = v18;
  memcpy((a1 + 2176), (a2 + 2176), 0xAF0uLL);
  v21 = *(a1 + 4976);
  if (v21)
  {
    *(a1 + 4984) = v21;
    operator delete(v21);
    *(a1 + 4976) = 0;
    *(a1 + 4984) = 0;
    *(a1 + 4992) = 0;
  }

  *(a1 + 4976) = *(a2 + 4976);
  *(a1 + 4992) = *(a2 + 4992);
  *(a2 + 4992) = 0;
  *(a2 + 4976) = 0u;
  v22 = (a1 + 5000);
  if (*(a1 + 5023) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 5000);
  *(a1 + 5016) = *(a2 + 5016);
  *v22 = v23;
  *(a2 + 5023) = 0;
  *(a2 + 5000) = 0;
  sub_6BA20(a1 + 5024, (a2 + 5024));
  *(a1 + 5064) = *(a2 + 5064);
  return a1;
}

void sub_E1BA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(&a13);
  _Unwind_Resume(a1);
}

void sub_E1BA68(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_D71E14(a1, *a3, a3[1], 0x6FB586FB586FB587 * ((a3[1] - *a3) >> 3));
  sub_E78844((a1 + 3));
}

void sub_E1BC0C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1680) = v4;
    operator delete(v4);
  }

  sub_616CD4(v1 + 1632);
  sub_528AB4(v1 + 24);
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E1BC74(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E1BD74(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_9B8E8C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_E1BE50(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void *sub_E1BE80(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_E1BF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_E0A080(&a11);
  *(v11 + 8) = v12;
  sub_E1BFA8(&a9);
  _Unwind_Resume(a1);
}

void ***sub_E1BFA8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_E02D74(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_E1BFF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0u;
  *(a5 + 216) = 0u;
  *(a5 + 232) = 0u;
  *(a5 + 248) = 0u;
  *(a5 + 264) = 0u;
  *(a5 + 280) = 0u;
  *(a5 + 296) = 0u;
  *(a5 + 312) = 0u;
  *(a5 + 328) = 0u;
  *(a5 + 344) = 0u;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 392) = 0u;
  *(a5 + 408) = 0u;
  *(a5 + 424) = 0u;
  sub_12C408C(a5 + 8, 0, 0);
  *(a5 + 412) = 0;
  *(a5 + 404) = 0;
  *(a5 + 420) = 0;
  *(a5 + 424) = 0;
  *(a5 + 431) = 0;
  *(a5 + 264) = 0u;
  *(a5 + 280) = 0u;
  *(a5 + 296) = 0u;
  *(a5 + 312) = 0u;
  *(a5 + 328) = 0u;
  *(a5 + 344) = 0u;
  *(a5 + 360) = 0u;
  *(a5 + 376) = 0u;
  *(a5 + 385) = 0u;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v88);
    sub_E1CD24(&v83, *a2, *(a2 + 8), *(a2 + 16), **(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 72), *(a2 + 80), 0, *(a2 + 88), *(a2 + 96));
    sub_CD4144(&v83, v76);
    sub_D7E7C4(a5, v76);
    if (v76[0].n128_u8[0] == 1)
    {
      sub_D71800(v76, &v76[0].n128_i64[1]);
    }

    else
    {
      v13 = v76[1].n128_u64[1];
      if (v76[1].n128_u64[1])
      {
        v14 = v76[2].n128_u64[0];
        v15 = v76[1].n128_u64[1];
        if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
        {
          do
          {
            if (*(v14 - 1) < 0)
            {
              operator delete(*(v14 - 24));
            }

            v14 -= 32;
          }

          while (v14 != v13);
          v15 = v76[1].n128_u64[1];
        }

        v76[2].n128_u64[0] = v13;
        operator delete(v15);
      }
    }

    v19 = sub_7EAB4(v88);
    v20 = v19;
    v21 = *(a1 + 84);
    v22 = v21 != 0x7FFFFFFF && v21 <= v19;
    if (!v22 || !sub_7E7E4(1u))
    {
LABEL_76:
      v42 = *(a1 + 88);
      if (v42 != 0x7FFFFFFF && v42 <= v20)
      {
        v74.n128_u64[0] = 10;
        v74.n128_u64[1] = &off_2669FE0;
        sub_434934(__dst, &v74);
        v76[0].n128_u8[0] = 0;
        *(v76 + 8) = *__dst;
        *(&v76[1] + 8) = v70;
        v76[2].n128_u64[1] = v71;
        v70 = 0uLL;
        v71 = 0;
        LODWORD(v77) = v72;
        sub_D7E7C4(a5, v76);
        if (v76[0].n128_u8[0] == 1)
        {
          sub_D71800(v76, &v76[0].n128_i64[1]);
        }

        else
        {
          v43 = v76[1].n128_u64[1];
          if (v76[1].n128_u64[1])
          {
            v44 = v76[2].n128_u64[0];
            v45 = v76[1].n128_u64[1];
            if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
            {
              do
              {
                if (*(v44 - 1) < 0)
                {
                  operator delete(*(v44 - 24));
                }

                v44 -= 32;
              }

              while (v44 != v43);
              v45 = v76[1].n128_u64[1];
            }

            v76[2].n128_u64[0] = v43;
            operator delete(v45);
          }
        }

        v46 = v70.n128_u64[0];
        if (v70.n128_u64[0])
        {
          v47 = v70.n128_u64[1];
          v48 = v70.n128_u64[0];
          if (v70.n128_u64[1] != v70.n128_u64[0])
          {
            do
            {
              if (*(v47 - 1) < 0)
              {
                operator delete(*(v47 - 24));
              }

              v47 -= 32;
            }

            while (v47 != v46);
            v48 = v70.n128_u64[0];
          }

          v70.n128_u64[1] = v46;
          operator delete(v48);
        }
      }

      v49 = *(a1 + 64);
      if (*a5 == 1)
      {
        v50 = sub_D7ED0C(a5);
        sub_D7EE0C(v50 + 328, v76);
      }

      else
      {
        memset(v76, 0, sizeof(v76));
      }

      sub_7CA38(v49, a3, v76, *(a1 + 72));
      v51 = v76[1].n128_u64[1];
      if (v76[1].n128_u64[1])
      {
        v52 = v76[2].n128_u64[0];
        v53 = v76[1].n128_u64[1];
        if (v76[2].n128_u64[0] != v76[1].n128_u64[1])
        {
          do
          {
            v54 = *(v52 - 25);
            v52 -= 6;
            if (v54 < 0)
            {
              operator delete(*v52);
            }
          }

          while (v52 != v51);
          v53 = v76[1].n128_u64[1];
        }

        v76[2].n128_u64[0] = v51;
        operator delete(v53);
      }

      if (v76[1].n128_i8[7] < 0)
      {
        operator delete(v76[0].n128_u64[0]);
        if (*a5 == 1)
        {
          goto LABEL_109;
        }
      }

      else if (*a5 == 1)
      {
LABEL_109:
        sub_D7E910(*a4, a5 + 8);
LABEL_144:
        sub_E1CF5C(&v83);
        return;
      }

      sub_DEBB90(*(a1 + 64), (a5 + 8), *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_143:
        sub_434B40(a1, a5 + 8);
        goto LABEL_144;
      }

      sub_19594F8(v76);
      sub_7B538(*(a1 + 64), __dst);
      if (v70.n128_i8[7] >= 0)
      {
        v55 = __dst;
      }

      else
      {
        v55 = __dst[0];
      }

      if (v70.n128_i8[7] >= 0)
      {
        v56 = v70.n128_u8[7];
      }

      else
      {
        v56 = __dst[1];
      }

      v57 = sub_4A5C(v76, v55, v56);
      sub_4A5C(v57, " failed in step ", 16);
      v58 = std::ostream::operator<<();
      v59 = sub_4A5C(v58, " (", 2);
      if ((atomic_load_explicit(&qword_2733C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C88))
      {
        sub_89C64(2u, "AnalyticsModule", 15, &qword_2733C70);
        __cxa_guard_release(&qword_2733C88);
      }

      if (byte_2733C87 >= 0)
      {
        v60 = byte_2733C87;
      }

      else
      {
        v60 = unk_2733C78;
      }

      if (byte_2733C87 >= 0)
      {
        v61 = &qword_2733C70;
      }

      else
      {
        v61 = qword_2733C70;
      }

      v62 = sub_4A5C(v59, v61, v60);
      v63 = sub_4A5C(v62, ") with error: ", 14);
      sub_D72C3C(v63, a5 + 8);
      if (v70.n128_i8[7] < 0)
      {
        operator delete(__dst[0]);
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
LABEL_127:
          if ((v64 & 8) == 0)
          {
            v65 = 0;
            v70.n128_u8[7] = 0;
LABEL_138:
            *(__dst + v65) = 0;
            sub_7E854(__dst, 3u);
            if (v70.n128_i8[7] < 0)
            {
              operator delete(__dst[0]);
            }

            if (v80 < 0)
            {
              operator delete(v79);
            }

            std::locale::~locale(&v76[1]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_143;
          }

          v67 = v76[1].n128_u64[1];
          v65 = v76[2].n128_u64[1] - v76[1].n128_u64[1];
          if (v76[2].n128_u64[1] - v76[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_149:
            sub_3244();
          }

LABEL_133:
          if (v65 >= 0x17)
          {
            operator new();
          }

          v70.n128_u8[7] = v65;
          if (v65)
          {
            memmove(__dst, v67, v65);
          }

          goto LABEL_138;
        }
      }

      else
      {
        v64 = v82;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_127;
        }
      }

      v66 = v81;
      if (v81 < v78)
      {
        v81 = v78;
        v66 = v78;
      }

      v67 = v77;
      v65 = v66 - v77;
      if (v66 - v77 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_149;
      }

      goto LABEL_133;
    }

    sub_19594F8(v76);
    v23 = sub_4A5C(v76, "Found long running (", 20);
    v24 = sub_72140(v23, v20);
    v25 = sub_4A5C(v24, ") ", 2);
    if ((atomic_load_explicit(&qword_2733C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C88))
    {
      sub_89C64(2u, "AnalyticsModule", 15, &qword_2733C70);
      __cxa_guard_release(&qword_2733C88);
    }

    if (byte_2733C87 >= 0)
    {
      v26 = byte_2733C87;
    }

    else
    {
      v26 = unk_2733C78;
    }

    if (byte_2733C87 >= 0)
    {
      v27 = &qword_2733C70;
    }

    else
    {
      v27 = qword_2733C70;
    }

    v28 = sub_4A5C(v25, v27, v26);
    v29 = sub_4A5C(v28, " in ", 4);
    sub_7B538(*(a1 + 64), __dst);
    if (v70.n128_i8[7] >= 0)
    {
      v30 = __dst;
    }

    else
    {
      v30 = __dst[0];
    }

    if (v70.n128_i8[7] >= 0)
    {
      v31 = v70.n128_u8[7];
    }

    else
    {
      v31 = __dst[1];
    }

    v32 = sub_4A5C(v29, v30, v31);
    sub_4A5C(v32, " step ", 6);
    v33 = std::ostream::operator<<();
    v34 = sub_4A5C(v33, " (request: ", 11);
    sub_17541D0(v73);
    sub_E9209C(v73, *(a1 + 56), &v74);
    if ((v75 & 0x80u) == 0)
    {
      v35 = &v74;
    }

    else
    {
      v35 = v74.n128_u64[0];
    }

    if ((v75 & 0x80u) == 0)
    {
      v36 = v75;
    }

    else
    {
      v36 = v74.n128_i64[1];
    }

    v37 = sub_4A5C(v34, v35, v36);
    sub_4A5C(v37, ")", 1);
    if (v75 < 0)
    {
      operator delete(v74.n128_u64[0]);
      sub_1754598(v73);
      if ((v70.n128_i8[7] & 0x80000000) == 0)
      {
LABEL_58:
        v38 = v82;
        v68 = a3;
        if ((v82 & 0x10) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }
    }

    else
    {
      sub_1754598(v73);
      if ((v70.n128_i8[7] & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    operator delete(__dst[0]);
    v38 = v82;
    v68 = a3;
    if ((v82 & 0x10) == 0)
    {
LABEL_59:
      if ((v38 & 8) == 0)
      {
        v39 = 0;
        v70.n128_u8[7] = 0;
LABEL_71:
        *(__dst + v39) = 0;
        sub_7E854(__dst, 1u);
        if (v70.n128_i8[7] < 0)
        {
          operator delete(__dst[0]);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        std::locale::~locale(&v76[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        a3 = v68;
        goto LABEL_76;
      }

      v41 = v76[1].n128_u64[1];
      v39 = v76[2].n128_u64[1] - v76[1].n128_u64[1];
      if (v76[2].n128_u64[1] - v76[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_147:
        sub_3244();
      }

LABEL_66:
      if (v39 >= 0x17)
      {
        operator new();
      }

      v70.n128_u8[7] = v39;
      if (v39)
      {
        memmove(__dst, v41, v39);
      }

      goto LABEL_71;
    }

LABEL_63:
    v40 = v81;
    if (v81 < v78)
    {
      v81 = v78;
      v40 = v78;
    }

    v41 = v77;
    v39 = v40 - v77;
    if (v40 - v77 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_147;
    }

    goto LABEL_66;
  }

  sub_434934(v76, a1);
  LOBYTE(v83) = 0;
  v84 = v76[0];
  __p = v76[1];
  v86 = v76[2].n128_u64[0];
  memset(&v76[1], 0, 24);
  v87 = v76[2].n128_u32[2];
  sub_D7E7C4(a5, &v83);
  if (v83 == 1)
  {
    sub_D71800(&v83, &v84);
  }

  else
  {
    v10 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v11 = __p.n128_i64[1];
      v12 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v10;
      operator delete(v12);
    }
  }

  v16 = v76[1].n128_u64[0];
  if (v76[1].n128_u64[0])
  {
    v17 = v76[1].n128_u64[1];
    v18 = v76[1].n128_u64[0];
    if (v76[1].n128_u64[1] != v76[1].n128_u64[0])
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 24));
        }

        v17 -= 32;
      }

      while (v17 != v16);
      v18 = v76[1].n128_u64[0];
    }

    v76[1].n128_u64[1] = v16;
    operator delete(v18);
  }
}

void sub_E1CBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_guard_abort(&qword_2733C88);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_E1CF5C(&STACK[0x468]);
  sub_CD15B8(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_E1CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 72) = a10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v15 = a11[1];
  if (v15 != *a11)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v15 - *a11) >> 4) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = a12;
  *(a1 + 105) = sub_44F320(a4);
  sub_4ED880(a13, a1 + 112);
  *(a1 + 144) = a13;
  *(a1 + 152) = sub_4EF390(a13);
  *(a1 + 160) = v16;
  sub_E80194(*(a1 + 16), a1 + 168);
  v17 = *a14;
  v18 = *(a14 + 8);
  if (*a14 != v18)
  {
    while (v17[44] != 2)
    {
      v17 += 110;
      if (v17 == v18)
      {
        goto LABEL_9;
      }
    }
  }

  if (v17 == v18)
  {
LABEL_9:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v17 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 344, v17);
  return a1;
}

void sub_E1CEDC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44D36C((v1 + 168));
  sub_4F3AA4(v1 + 112);
  sub_49AE64(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_E1CF5C(uint64_t a1)
{
  sub_44FDEC(a1 + 344);
  v2 = *(a1 + 320);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    *(a1 + 248) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = *(a1 + 128);
    v6 = *(a1 + 120);
    if (v5 != v4)
    {
      do
      {
        v5 -= 72;
        sub_3E4690(v5);
      }

      while (v5 != v4);
      v6 = *(a1 + 120);
    }

    *(a1 + 128) = v4;
    operator delete(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    for (i = *(a1 + 88); i != v7; sub_E02B10(a1 + 80, i))
    {
      i -= 30;
    }

    *(a1 + 88) = v7;
    operator delete(*(a1 + 80));
  }

  return a1;
}

void sub_E1D020()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  ++*(v0 + 80);
  *v4 = 1;
  bzero(v4 + 8, 0x4A8uLL);
  sub_1757EA4(v5 + 8, 0, 0);
  sub_1757EA4(v5 + 584, 0, 0);
  *(v5 + 1192) = 0;
  *(v5 + 1160) = 0u;
  *(v5 + 1176) = 0u;
  if (*(v3 + 8) == &off_2669FE0 && *v3 == 0)
  {
    sub_7E9A4(v23);
    sub_E1DCE4(v2, v17);
    sub_D36E10(v17, &v13);
  }

  sub_434934(&v13, v3);
  v17[0] = 0;
  v18 = v13;
  __p = v14;
  v20 = v15;
  v14 = 0uLL;
  v15 = 0;
  v21 = v16;
  sub_D8144C(v5, v17);
  if (v17[0] == 1)
  {
    sub_1758FB8(&v22);
    sub_1758FB8(&v18);
  }

  else
  {
    v7 = __p;
    if (__p)
    {
      v8 = *(&__p + 1);
      v9 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v8 - 1) < 0)
          {
            operator delete(*(v8 - 24));
          }

          v8 -= 32;
        }

        while (v8 != v7);
        v9 = __p;
      }

      *(&__p + 1) = v7;
      operator delete(v9);
    }
  }

  v10 = v14;
  if (v14)
  {
    v11 = *(&v14 + 1);
    v12 = v14;
    if (*(&v14 + 1) != v14)
    {
      do
      {
        if (*(v11 - 1) < 0)
        {
          operator delete(*(v11 - 24));
        }

        v11 -= 32;
      }

      while (v11 != v10);
      v12 = v14;
    }

    *(&v14 + 1) = v10;
    operator delete(v12);
  }
}

void sub_E1DBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733CA8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_E1EB50(&STACK[0x728]);
  sub_D35A8C(v15);
  _Unwind_Resume(a1);
}

void sub_E1DCE4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v8 = a1[4];
  v29 = a1[5];
  sub_559C9C(v25);
  bzero(&v26, 0x348uLL);
  sub_5C0A00(v28);
  v9 = a1[6];
  v10 = a1[7];
  v23 = 0;
  v24 = v10;
  v11 = a1[8];
  __p = 0;
  v22 = 0;
  sub_E1DFC8(a2, v4, v5, v6, v7, v8, &v30, &v29, v25, v9, &v24, v11, &__p);
  v12 = __p;
  if (__p)
  {
    v13 = v22;
    v14 = __p;
    if (v22 == __p)
    {
LABEL_13:
      v22 = v12;
      operator delete(v14);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = *(v13 - 6);
        if (v15)
        {
          do
          {
LABEL_7:
            v16 = *v15;
            operator delete(v15);
            v15 = v16;
          }

          while (v16);
        }
      }

      else
      {
        v15 = *(v13 - 6);
        if (v15)
        {
          goto LABEL_7;
        }
      }

      v17 = *(v13 - 8);
      *(v13 - 8) = 0;
      if (v17)
      {
        operator delete(v17);
      }

      v13 -= 9;
      if (v13 == v12)
      {
        v14 = __p;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  sub_5C0F34(v28);
  v18 = v26;
  if (v26)
  {
    v19 = v27;
    v20 = v26;
    if (v27 != v26)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = v26;
    }

    v27 = v18;
    operator delete(v20);
  }

  sub_559E70(v25);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_E1DE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_D71160(va);
  sub_D0AA6C(va1);
  v8 = *(v6 - 104);
  if (v8)
  {
    *(v6 - 96) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void sub_E1DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5706DC((v10 + 1088));
  sub_559E70(va);
  _Unwind_Resume(a1);
}

void sub_E1DED4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    v5 = *(v4 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_175C55C(v4, a2);
    }

    else
    {
      sub_175C1D0(v4, a2);
    }
  }

  v7 = *a1;
  if (*a1 != a2)
  {
    v8 = *(v7 + 584);
    if ((v8 & 2) != 0)
    {
      v8 = 0;
    }

    else if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v9 = *(a2 + 584);
    if ((v9 & 2) != 0)
    {
      v9 = 0;
    }

    else if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v8 == v9)
    {
      sub_175C55C(v7 + 576, a2 + 576);
    }

    else
    {
      sub_175C1D0(v7 + 576, a2 + 576);
    }
  }
}

uint64_t sub_E1DFC8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _OWORD *a6, void *a7, uint64_t *a8, uint64_t *a9, void *a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v18 = a7[1];
  if (v18 != *a7)
  {
    if (((v18 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v80 = *a8;
  v19 = sub_3B2E6C(a5);
  sub_2C1B08(v62, v19);
  v68 = 1;
  sub_E85008(a2, v62, &v69);
  v20 = sub_3B6890(a5);
  v48 = *v20;
  v21 = *(v20 + 8);
  sub_5F4380(v59, a9);
  memset(v60, 0, sizeof(v60));
  sub_5713F4(v60, a9[136], a9[137], 0xAF8AF8AF8AF8AF8BLL * ((a9[137] - a9[136]) >> 5));
  sub_5DAD70(v61, (a9 + 139));
  v22 = sub_E7A5E0(a2);
  v23 = sub_E1E518(a2, a4, a3, a5);
  v24 = sub_E7FD98(a2);
  v25 = a6;
  v57 = sub_E80738(a2);
  v58 = v26;
  sub_99A14(&v55, a10);
  v54 = *a11;
  v27 = sub_E7AAC4(a2);
  sub_5ADDC(v52, a12);
  *__p = *a13;
  v51 = *(a13 + 16);
  *(a13 + 8) = 0;
  *(a13 + 16) = 0;
  *a13 = 0;
  v28 = sub_E89630(a2);
  sub_E1E688(a1, a3, a4, a5, v25, &v81, &v80, &v69, v48, v21, v59, v22, v23, v24 & 0xFFFFFFFFFFLL, &v57, &v55, &v54, v27, v52, __p, v28);
  v29 = __p[0];
  if (__p[0])
  {
    v30 = __p[1];
    v31 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_16:
      __p[1] = v29;
      operator delete(v31);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v30 - 1) < 0)
      {
        operator delete(*(v30 - 3));
        v32 = *(v30 - 6);
        if (v32)
        {
          do
          {
LABEL_10:
            v33 = *v32;
            operator delete(v32);
            v32 = v33;
          }

          while (v33);
        }
      }

      else
      {
        v32 = *(v30 - 6);
        if (v32)
        {
          goto LABEL_10;
        }
      }

      v34 = *(v30 - 8);
      *(v30 - 8) = 0;
      if (v34)
      {
        operator delete(v34);
      }

      v30 -= 9;
      if (v30 == v29)
      {
        v31 = __p[0];
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v35 = v53;
  if (v53)
  {
    do
    {
      v36 = *v35;
      v37 = *(v35 + 12);
      if (v37 != -1)
      {
        (off_26740A8[v37])(&v80, v35 + 5);
      }

      *(v35 + 12) = -1;
      if (*(v35 + 39) < 0)
      {
        operator delete(v35[2]);
      }

      operator delete(v35);
      v35 = v36;
    }

    while (v36);
  }

  v38 = v52[0];
  v52[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = v55;
  if (v55)
  {
    v40 = v56;
    v41 = v55;
    if (v56 != v55)
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
      v41 = v55;
    }

    v56 = v39;
    operator delete(v41);
  }

  sub_5C0F34(v61);
  v43 = v60[0];
  if (v60[0])
  {
    v44 = v60[1];
    v45 = v60[0];
    if (v60[1] != v60[0])
    {
      do
      {
        v44 = sub_3A9518(v44 - 1120);
      }

      while (v44 != v43);
      v45 = v60[0];
    }

    v60[1] = v43;
    operator delete(v45);
  }

  sub_559E70(v59);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v77 < 0)
  {
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68 == 1)
  {
    if (v67 < 0)
    {
      operator delete(v66);
      if ((v65 & 0x80000000) == 0)
      {
LABEL_52:
        if ((v63 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_58:
        operator delete(v62[0]);
        v46 = v81;
        if (!v81)
        {
          return a1;
        }

        goto LABEL_54;
      }
    }

    else if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v64);
    if (v63 < 0)
    {
      goto LABEL_58;
    }
  }

LABEL_53:
  v46 = v81;
  if (v81)
  {
LABEL_54:
    v82 = v46;
    operator delete(v46);
  }

  return a1;
}

void sub_E1E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
{
  sub_5706DC((v38 + 1088));
  sub_559E70(&a38);
  sub_D71D0C(&STACK[0x8C0]);
  sub_D71D80(&STACK[0x870]);
  v41 = *(v39 - 112);
  if (v41)
  {
    *(v39 - 104) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E1E518(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_E7A5E0(a1);
  result = sub_EA7118(v7);
  if (result)
  {
    if (*a2 == a2[1])
    {
      return 0;
    }

    else if (*a3 == a3[1])
    {
      return 0;
    }

    else
    {
      v20 = 15;
      v18 = 0;
      strcpy(v19, "RerouteCategory");
      __p = 0;
      v17 = 0;
      v9 = sub_3AEC94(a4, v19, &__p);
      sub_4EB344(&v21, v9);
      result = sub_6EECC();
      v10 = __p;
      if (__p)
      {
        v11 = result;
        v12 = v17;
        v13 = __p;
        if (v17 != __p)
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

          while (v12 != v10);
          v13 = __p;
        }

        v17 = v10;
        operator delete(v13);
        result = v11;
      }

      if (v20 < 0)
      {
        v15 = result;
        operator delete(v19[0]);
        return v15;
      }
    }
  }

  return result;
}

void sub_E1E664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E1E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, void *a7, int *a8, uint64_t a9, int a10, uint64_t a11, char a12, char a13, uint64_t a14, uint64_t *a15, uint64_t a16, void *a17, char a18, uint64_t *a19, uint64_t a20, uint64_t a21)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *a6;
  *(a1 + 24) = *(a6 + 16);
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a1 + 32) = 0u;
  v27 = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 32) = *a11;
  *(a1 + 48) = *(a11 + 16);
  *(a11 + 16) = 0;
  *a11 = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a11 + 24);
  *(a1 + 72) = *(a11 + 40);
  *(a11 + 40) = 0;
  *(a11 + 24) = 0u;
  sub_55A4D0(a1 + 80, a11 + 48);
  sub_55A4D0(v27 + 544, a11 + 544);
  *(v27 + 1056) = 0;
  *(v27 + 1040) = 0u;
  *(v27 + 1040) = *(a11 + 1040);
  *(v27 + 1056) = *(a11 + 1056);
  *(a11 + 1056) = 0;
  *(a11 + 1040) = 0u;
  *(v27 + 1080) = 0;
  *(v27 + 1064) = 0u;
  *(v27 + 1064) = *(a11 + 1064);
  *(v27 + 1072) = *(a11 + 1072);
  *(a11 + 1080) = 0;
  *(a11 + 1064) = 0u;
  *(v27 + 1104) = 0;
  *(v27 + 1088) = 0u;
  *(v27 + 1088) = *(a11 + 1088);
  *(v27 + 1104) = *(a11 + 1104);
  *(a11 + 1104) = 0;
  *(a11 + 1088) = 0u;
  sub_5DB550(v27 + 1112, a11 + 1112);
  v28 = *a8;
  *(v27 + 1931) = *(a8 + 3);
  *(v27 + 1928) = v28;
  *(v27 + 1936) = 0;
  *(v27 + 1952) = 0;
  *(v27 + 1944) = 0;
  *(v27 + 1936) = *(a8 + 2);
  *(v27 + 1952) = *(a8 + 3);
  *(a8 + 1) = 0;
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  v29 = *(a8 + 3);
  *(v27 + 1960) = *(a8 + 2);
  *(v27 + 1976) = v29;
  *(v27 + 1992) = a8[16];
  *(v27 + 2016) = 0;
  *(v27 + 2008) = 0;
  *(v27 + 2000) = 0;
  *(v27 + 2000) = *(a8 + 18);
  *(v27 + 2016) = *(a8 + 11);
  *(a8 + 10) = 0;
  *(a8 + 11) = 0;
  *(a8 + 9) = 0;
  *(v27 + 2024) = a8[24];
  *(v27 + 2032) = 0;
  *(v27 + 2048) = 0;
  *(v27 + 2040) = 0;
  *(v27 + 2032) = *(a8 + 26);
  *(v27 + 2048) = *(a8 + 15);
  *(a8 + 13) = 0;
  *(a8 + 14) = 0;
  *(a8 + 15) = 0;
  v30 = *(a8 + 8);
  *(v27 + 2072) = *(a8 + 18);
  *(v27 + 2056) = v30;
  *(a8 + 17) = 0;
  *(a8 + 18) = 0;
  *(a8 + 16) = 0;
  *(v27 + 2080) = *(a8 + 152);
  v31 = *(a8 + 20);
  *(v27 + 2096) = *(a8 + 168);
  *(v27 + 2088) = v31;
  *(v27 + 2104) = 0;
  *(v27 + 2120) = 0;
  *(v27 + 2112) = 0;
  *(v27 + 2104) = *(a8 + 11);
  *(v27 + 2120) = *(a8 + 24);
  *(a8 + 22) = 0;
  *(a8 + 23) = 0;
  *(a8 + 24) = 0;
  *(v27 + 2128) = a4;
  v32 = *a3;
  v33 = *(a3 + 8);
  if (*a3 != v33)
  {
    while (v32[44] != 1)
    {
      v32 += 110;
      if (v32 == v33)
      {
        goto LABEL_6;
      }
    }
  }

  if (v32 == v33)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v32 = &unk_27337E8;
  }

  sub_4E9DA4(v27 + 2136, v32);
  v34 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    while (v34[44] != 2)
    {
      v34 += 110;
      if (v34 == v35)
      {
        goto LABEL_13;
      }
    }
  }

  if (v34 == v35)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v34 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 2608, v34);
  *(a1 + 3048) = *a7;
  *(a1 + 3056) = a3;
  *(a1 + 3064) = a9;
  *(a1 + 3072) = a10;
  *(a1 + 3076) = a12;
  *(a1 + 3077) = a13;
  *(a1 + 3080) = a14;
  v36 = *a15;
  *(a1 + 3096) = *(a15 + 2);
  *(a1 + 3088) = v36;
  *(a1 + 3104) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3104) = *a16;
  *(a1 + 3120) = *(a16 + 16);
  *a16 = 0;
  *(a16 + 8) = 0;
  *(a16 + 16) = 0;
  *(a1 + 3128) = *a17;
  *(a1 + 3136) = *a5;
  *(a1 + 3152) = a18;
  v37 = *a19;
  *(a1 + 3168) = a19[1];
  *a19 = 0;
  *(a1 + 3160) = v37;
  a19[1] = 0;
  v38 = a19[3];
  v39 = *(a19 + 8);
  v40 = a19[2];
  *(a1 + 3176) = v40;
  *(a1 + 3184) = v38;
  *(a1 + 3192) = v39;
  if (v38)
  {
    v41 = *(v40 + 8);
    v42 = *(a1 + 3168);
    if ((v42 & (v42 - 1)) != 0)
    {
      if (v41 >= v42)
      {
        v41 %= v42;
      }
    }

    else
    {
      v41 &= v42 - 1;
    }

    *(v37 + 8 * v41) = a1 + 3176;
    a19[2] = 0;
    a19[3] = 0;
  }

  *(a1 + 3216) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3200) = *a20;
  *(a1 + 3216) = *(a20 + 16);
  *a20 = 0;
  *(a20 + 8) = 0;
  *(a20 + 16) = 0;
  *(a1 + 3224) = a21;
  return a1;
}

void sub_E1EAEC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44FDEC(v2 + 2136);
  sub_D71D0C(v3);
  sub_D0AA6C(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E1EB50(uint64_t a1)
{
  v2 = *(a1 + 3200);
  if (v2)
  {
    v3 = *(a1 + 3208);
    v4 = *(a1 + 3200);
    if (v3 == v2)
    {
LABEL_13:
      *(a1 + 3208) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (v5)
        {
          do
          {
LABEL_7:
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 3200);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v8 = *(a1 + 3176);
  if (v8)
  {
    do
    {
      v9 = *v8;
      v10 = *(v8 + 12);
      if (v10 != -1)
      {
        (off_26740A8[v10])(&v25, v8 + 5);
      }

      *(v8 + 12) = -1;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v11 = *(a1 + 3160);
  *(a1 + 3160) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 3104);
  if (v12)
  {
    v13 = *(a1 + 3112);
    v14 = *(a1 + 3104);
    if (v13 != v12)
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
      v14 = *(a1 + 3104);
    }

    *(a1 + 3112) = v12;
    operator delete(v14);
  }

  sub_44FDEC(a1 + 2608);
  sub_44FDEC(a1 + 2168);
  v16 = *(a1 + 2136);
  if (v16)
  {
    *(a1 + 2144) = v16;
    operator delete(v16);
  }

  if (*(a1 + 2111) < 0)
  {
    operator delete(*(a1 + 2088));
  }

  v17 = *(a1 + 2064);
  if (v17)
  {
    *(a1 + 2072) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 2032);
  if (v18)
  {
    *(a1 + 2040) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 1968);
  if (v19)
  {
    *(a1 + 1976) = v19;
    operator delete(v19);
  }

  sub_5C0F34(a1 + 1144);
  v20 = *(a1 + 1120);
  if (v20)
  {
    v21 = *(a1 + 1128);
    v22 = *(a1 + 1120);
    if (v21 != v20)
    {
      do
      {
        v21 = sub_3A9518(v21 - 1120);
      }

      while (v21 != v20);
      v22 = *(a1 + 1120);
    }

    *(a1 + 1128) = v20;
    operator delete(v22);
  }

  sub_559E70((a1 + 32));
  v23 = *(a1 + 8);
  if (v23)
  {
    *(a1 + 16) = v23;
    operator delete(v23);
  }

  return a1;
}

void sub_E1ED7C()
{
  byte_27B911F = 3;
  LODWORD(qword_27B9108) = 5136193;
  byte_27B9137 = 3;
  LODWORD(qword_27B9120) = 5136194;
  byte_27B914F = 3;
  LODWORD(qword_27B9138) = 5136195;
  byte_27B9167 = 15;
  strcpy(&qword_27B9150, "vehicle_mass_kg");
  byte_27B917F = 21;
  strcpy(&xmmword_27B9168, "vehicle_cargo_mass_kg");
  byte_27B9197 = 19;
  strcpy(&qword_27B9180, "vehicle_aux_power_w");
  byte_27B91AF = 15;
  strcpy(&qword_27B9198, "dcdc_efficiency");
  strcpy(&qword_27B91B0, "drive_train_efficiency");
  HIBYTE(word_27B91C6) = 22;
  operator new();
}

void sub_E1F184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B90C8)
  {
    qword_27B90D0 = qword_27B90C8;
    operator delete(qword_27B90C8);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_E1F278()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = *sub_3B8500(v3);
  __dst = 0uLL;
  *&v21 = 0;
  v28 = 1851878480;
  v29 = 4;
  sub_D89468(v30, &__dst);
  v7 = __dst;
  if (__dst)
  {
    v8 = *(&__dst + 1);
    v9 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v10 = *(v8 - 25);
        v8 -= 6;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __dst;
    }

    *(&__dst + 1) = v7;
    operator delete(v9);
  }

  BYTE7(v21) = 12;
  strcpy(&__dst, "Plan.Started");
  sub_7BDA0(13, &__dst, v6);
  if (SBYTE7(v21) < 0)
  {
    operator delete(__dst);
  }

  sub_7E9A4(v27);
  v26[1] = v5;
  v26[2] = v27;
  v26[3] = v2;
  v26[4] = v4;
  *&__dst = v5;
  sub_D3CA48(&__dst, v25);
  if (v25[0])
  {
    v21 = 0u;
    v22 = 0u;
    __dst = 0u;
    sub_195A048(&__dst, "RouteHandleParserModule", 0x17uLL);
    if (v25[80] == 1)
    {
      LOBYTE(__p) = 1;
      v11 = v22;
      if (v22 >= *(&v22 + 1))
      {
        v12 = sub_D0ACE4(&v21 + 1, "Runtime", &__p, v26);
      }

      else
      {
        sub_D0AE98(v22, "Runtime", &__p, v26);
        v12 = v11 + 48;
      }

      *&v22 = v12;
    }

    sub_7C9C0(13, &__dst, v6);
    v13 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v14 = v22;
      v15 = *(&v21 + 1);
      if (v22 != *(&v21 + 1))
      {
        do
        {
          v16 = *(v14 - 25);
          v14 -= 6;
          if (v16 < 0)
          {
            operator delete(*v14);
          }
        }

        while (v14 != v13);
        v15 = *(&v21 + 1);
      }

      *&v22 = v13;
      operator delete(v15);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(__dst);
    }

    v17 = sub_3B6890(v4);
    v18 = *v17;
    v24 = *(v17 + 8);
    v23[12] = v18;
    *&__dst = v5;
    DWORD2(__dst) = 1;
    *&v21 = v4;
    BYTE8(v21) = sub_E88F70(&__dst);
    *&v22 = 0;
    sub_D11BD4(&__dst, v23);
  }

  operator new();
}

void sub_E2009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(__p, a7);
  va_start(va, a7);
  v10 = va_arg(__p, void);
  v12 = va_arg(__p, void);
  v13 = va_arg(__p, void);
  v14 = va_arg(__p, void);
  v15 = va_arg(__p, void);
  v16 = va_arg(__p, void);
  v17 = va_arg(__p, void);
  v18 = va_arg(__p, void);
  v19 = va_arg(__p, void);
  sub_1758FB8(v7 + 576);
  sub_1758FB8(&STACK[0x6A0]);
  sub_E21954(__p);
  sub_D41964(va);
  sub_9FCEE0(&STACK[0x10B0]);
  sub_DE462C(&STACK[0x1368]);
  sub_E25E10(v8 - 160);
  sub_D130AC(&STACK[0x1878]);
  sub_E25EC8(&STACK[0x18E8]);
  sub_9DA0(v8 - 208);
  _Unwind_Resume(a1);
}

void sub_E20360(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x6B7]) < 0)
  {
    operator delete(*v1);
    sub_9DA0(v2 - 208);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE20328);
}

void sub_E20384(_Unwind_Exception *a1)
{
  if (*(v1 + 1583) < 0)
  {
    operator delete(*(v1 + 1560));
  }

  sub_9E38(&STACK[0x6A0]);
  _Unwind_Resume(a1);
}

void sub_E203A8(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v19);
  v6 = sub_4A5C(&v19, "[transit directions] ", 21);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  sub_4A5C(v6, v8, v9);
  if ((v29 & 0x10) != 0)
  {
    v11 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v11 = v25;
    }

    v12 = v24;
    v10 = v11 - v24;
    if (v11 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v10 = 0;
      v18 = 0;
LABEL_19:
      *(&__dst + v10) = 0;
      sub_7E854(&__dst, 3u);
      if (v18 < 0)
      {
        operator delete(__dst);
      }

      if (v27 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v21);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_24:
      v13 = *a1;
      v14 = sub_7EA0C(a1[1]);
      v30 = v13;
      v31 = v14;
      sub_434934(&v15, a3);
      sub_D7189C(v16, 1, &v15, a1[3], *a1);
    }

    v12 = v22;
    v10 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v18 = v10;
  if (v10)
  {
    memmove(&__dst, v12, v10);
  }

  goto LABEL_19;
}

void sub_E207B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_E2085C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v5 = 0;
    do
    {
      if (v5 >= *(a2 + 16))
      {
        result = sub_4EA43C(a2, v2);
        v5 = result;
      }

      else
      {
        result = sub_4E9DA4(v5, v2);
        v5 += 440;
      }

      *(a2 + 8) = v5;
      v2 += 440;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_E208F8(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E20910(uint64_t a1)
{
  if (*(a1 + 2568) == 1)
  {
    v2 = *(a1 + 2536);
    if (v2)
    {
      *(a1 + 2544) = v2;
      operator delete(v2);
    }

    if (*(a1 + 2535) < 0)
    {
      operator delete(*(a1 + 2512));
    }
  }

  v3 = *(a1 + 2480);
  if (v3)
  {
    *(a1 + 2488) = v3;
    operator delete(v3);
  }

  sub_528AB4(a1 + 880);
  sub_44FDEC(a1 + 440);

  return sub_44FDEC(a1);
}

uint64_t sub_E20990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"TransitGuidanceModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 21;
  *(a2 + 13) = *"ceModule";
  v31 = 1;
  v30 = round(*a1);
  v4 = sub_D8B2BC((a2 + 24), "Runtime", &v31, &v30);
  v5 = v4;
  v6 = *(a2 + 40);
  v7 = *(a1 + 8);
  *(a2 + 32) = v4;
  v31 = 1;
  v30 = round(v7);
  if (v4 >= v6)
  {
    v8 = sub_E22580((a2 + 24), "Runtime.RouteBuilder", &v31, &v30);
  }

  else
  {
    sub_E22734(v4, "Runtime.RouteBuilder", &v31, &v30);
    v8 = v5 + 48;
  }

  *(a2 + 32) = v8;
  v31 = 1;
  v30 = round(*(a1 + 16));
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_E2288C((a2 + 24), "Runtime.RouteBuilder.FeatureDataBuilder", &v31, &v30);
  }

  else
  {
    sub_E22A40(v8, "Runtime.RouteBuilder.FeatureDataBuilder", &v31, &v30);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v31 = 1;
  v30 = round(*(a1 + 24));
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_E22B98((a2 + 24), "Runtime.RouteBuilder.WalkingRouteBuilder", &v31, &v30);
  }

  else
  {
    sub_E22D4C(v9, "Runtime.RouteBuilder.WalkingRouteBuilder", &v31, &v30);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v31 = 1;
  v30 = round(*(a1 + 104));
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_E22EA4((a2 + 24), "Runtime.RouteBuilder.IncidentsResolver", &v31, &v30);
  }

  else
  {
    sub_E23058(v10, "Runtime.RouteBuilder.IncidentsResolver", &v31, &v30);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  v31 = 1;
  v30 = round(*(a1 + 64));
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_E231B0((a2 + 24), "Runtime.TimeDisplayTypeAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23364(v11, "Runtime.TimeDisplayTypeAnnotation", &v31, &v30);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  v31 = 1;
  v30 = round(*(a1 + 72));
  if (v12 >= *(a2 + 40))
  {
    v13 = sub_E234BC((a2 + 24), "Runtime.BoardingInfoAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23670(v12, "Runtime.BoardingInfoAnnotation", &v31, &v30);
    v13 = v12 + 48;
  }

  *(a2 + 32) = v13;
  v31 = 1;
  v30 = round(*(a1 + 80));
  if (v13 >= *(a2 + 40))
  {
    v14 = sub_E237C8((a2 + 24), "Runtime.StepBadgeAnnotation", &v31, &v30);
  }

  else
  {
    sub_E2397C(v13, "Runtime.StepBadgeAnnotation", &v31, &v30);
    v14 = v13 + 48;
  }

  *(a2 + 32) = v14;
  v31 = 1;
  v30 = round(*(a1 + 88));
  if (v14 >= *(a2 + 40))
  {
    v15 = sub_E23AD4((a2 + 24), "Runtime.VehiclePositionInfoAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23C88(v14, "Runtime.VehiclePositionInfoAnnotation", &v31, &v30);
    v15 = v14 + 48;
  }

  *(a2 + 32) = v15;
  v31 = 1;
  v30 = round(*(a1 + 96));
  if (v15 >= *(a2 + 40))
  {
    v16 = sub_E234BC((a2 + 24), "Runtime.ScheduleInfoAnnotation", &v31, &v30);
  }

  else
  {
    sub_E23670(v15, "Runtime.ScheduleInfoAnnotation", &v31, &v30);
    v16 = v15 + 48;
  }

  *(a2 + 32) = v16;
  v31 = 1;
  v30 = round(*(a1 + 112));
  if (v16 >= *(a2 + 40))
  {
    v17 = sub_E237C8((a2 + 24), "Runtime.IncidentsAnnotation", &v31, &v30);
  }

  else
  {
    sub_E2397C(v16, "Runtime.IncidentsAnnotation", &v31, &v30);
    v17 = v16 + 48;
  }

  *(a2 + 32) = v17;
  v31 = 1;
  v30 = round(*(a1 + 120));
  if (v17 >= *(a2 + 40))
  {
    v18 = sub_E23DE0((a2 + 24), "Runtime.InstructionBuilder", &v31, &v30);
  }

  else
  {
    sub_E23F94(v17, "Runtime.InstructionBuilder", &v31, &v30);
    v18 = v17 + 48;
  }

  *(a2 + 32) = v18;
  v31 = 1;
  v30 = round(*(a1 + 128));
  if (v18 >= *(a2 + 40))
  {
    v19 = sub_E240EC((a2 + 24), "Runtime.AdvisoryBuilder", &v31, &v30);
  }

  else
  {
    sub_E242A0(v18, "Runtime.AdvisoryBuilder", &v31, &v30);
    v19 = v18 + 48;
  }

  *(a2 + 32) = v19;
  v31 = 1;
  v30 = round(*(a1 + 136));
  if (v19 >= *(a2 + 40))
  {
    v20 = sub_E243F8((a2 + 24), "Runtime.ArtworkBuilder", &v31, &v30);
  }

  else
  {
    sub_E245AC(v19, "Runtime.ArtworkBuilder", &v31, &v30);
    v20 = v19 + 48;
  }

  *(a2 + 32) = v20;
  v31 = 1;
  v30 = round(*(a1 + 152));
  if (v20 >= *(a2 + 40))
  {
    v21 = sub_E234BC((a2 + 24), "Runtime.StyleAttributesBuilder", &v31, &v30);
  }

  else
  {
    sub_E23670(v20, "Runtime.StyleAttributesBuilder", &v31, &v30);
    v21 = v20 + 48;
  }

  *(a2 + 32) = v21;
  v31 = 1;
  v30 = round(*(a1 + 160));
  if (v21 >= *(a2 + 40))
  {
    v22 = sub_E24704((a2 + 24), "Runtime.RouteHandleAnnotation", &v31, &v30);
  }

  else
  {
    sub_E248B8(v21, "Runtime.RouteHandleAnnotation", &v31, &v30);
    v22 = v21 + 48;
  }

  *(a2 + 32) = v22;
  v31 = 1;
  v30 = round(*(a1 + 168));
  if (v22 >= *(a2 + 40))
  {
    v23 = sub_E24A10((a2 + 24), "Runtime.StepPaymentMethodIdAnnotationBuilder", &v31, &v30);
  }

  else
  {
    sub_E24BC4(v22, "Runtime.StepPaymentMethodIdAnnotationBuilder", &v31, &v30);
    v23 = v22 + 48;
  }

  *(a2 + 32) = v23;
  v31 = 1;
  v30 = round(*(a1 + 176));
  if (v23 >= *(a2 + 40))
  {
    v24 = sub_E24D1C((a2 + 24), "Runtime.RoutePaymentSuggestionAnnotationBuilder", &v31, &v30);
  }

  else
  {
    sub_E24ED0(v23, "Runtime.RoutePaymentSuggestionAnnotationBuilder", &v31, &v30);
    v24 = v23 + 48;
  }

  *(a2 + 32) = v24;
  v31 = 1;
  v30 = round(*(a1 + 144));
  if (v24 >= *(a2 + 40))
  {
    v25 = sub_E25028((a2 + 24), "Runtime.WalkToAccessPointConnector", &v31, &v30);
  }

  else
  {
    sub_E251DC(v24, "Runtime.WalkToAccessPointConnector", &v31, &v30);
    v25 = v24 + 48;
  }

  *(a2 + 32) = v25;
  v31 = 1;
  v30 = round(*(a1 + 184));
  if (v25 >= *(a2 + 40))
  {
    v26 = sub_E25334((a2 + 24), "Runtime.TicketingURLsAnnotation", &v31, &v30);
    *(a2 + 32) = v26;
    v27 = *(a1 + 40);
    if (v27 != 1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    sub_E254E8(v25, "Runtime.TicketingURLsAnnotation", &v31, &v30);
    v26 = v25 + 48;
    *(a2 + 32) = v26;
    v27 = *(a1 + 40);
    if (v27 != 1)
    {
      goto LABEL_63;
    }
  }

  v31 = v27;
  v30 = round(*(a1 + 32));
  if (v26 >= *(a2 + 40))
  {
    v26 = sub_E25640((a2 + 24), "Runtime.RouteBuilder.TransferInstructionFinder", &v31, &v30);
  }

  else
  {
    sub_E257F4(v26, "Runtime.RouteBuilder.TransferInstructionFinder", &v31, &v30);
    v26 += 48;
  }

  *(a2 + 32) = v26;
LABEL_63:
  v31 = 1;
  v30 = round(*(a1 + 48));
  if (v26 >= *(a2 + 40))
  {
    result = sub_E231B0((a2 + 24), "Runtime.RouteBuilder.FareResolver", &v31, &v30);
    v29 = result;
    *(a2 + 32) = result;
    if (*(a1 + 56) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_E23364(v26, "Runtime.RouteBuilder.FareResolver", &v31, &v30);
    v29 = v26 + 48;
    *(a2 + 32) = v29;
    if (*(a1 + 56) != 1)
    {
      return result;
    }
  }

  v31 = 4;
  LODWORD(v30) = 1;
  if (v29 >= *(a2 + 40))
  {
    result = sub_D824E8((a2 + 24), "RouteBuilder.ResponseContainsFares", &v31, &v30);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D8269C(v29, "RouteBuilder.ResponseContainsFares", &v31, &v30);
    result = v29 + 48;
    *(a2 + 32) = v29 + 48;
  }

  return result;
}

void sub_E212C0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E214E4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitDirectionsAnalyticsModule", 0x20uLL);
  v7 = 1;
  v6 = round(*a1);
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D8B2BC((a2 + 24), "Runtime", &v7, &v6);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D8B470(*(a2 + 32), "Runtime", &v7, &v6);
    result = v4 + 48;
    *(a2 + 32) = v4 + 48;
  }

  return result;
}

void sub_E215BC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E215E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v16 = sub_3B2E6C(a4);
  sub_2C1B08(v18, v16);
  v24 = 1;
  sub_E85008(a2, v18, &v25);
  sub_E25A54(a1, a3, a4, a5, a6, a7, &v25, a8);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v24 == 1)
  {
    if (v23 < 0)
    {
      operator delete(v22);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v19 & 0x80000000) == 0)
        {
          return a1;
        }

LABEL_18:
        operator delete(v18[0]);
        return a1;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_18;
  }

  return a1;
}

void sub_E21740(_Unwind_Exception *a1, uint64_t a2, ...)
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
  sub_D71D0C(va1);
  sub_D71D80(va);
  _Unwind_Resume(a1);
}

void sub_E2175C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D71D80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E21770(uint64_t a1)
{
  sub_44FDEC(a1 + 672);
  sub_44FDEC(a1 + 232);
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_E217F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitResponseBuilderModule", 0x1CuLL);
  v6 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D0ACE4((a2 + 24), "Runtime", &v6, a1);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v6, a1);
    result = v4 + 48;
    *(a2 + 32) = v4 + 48;
  }

  return result;
}

void sub_E218C0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E218EC(uint64_t *a1, char *a2, char *a3, double *a4, int *a5)
{
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    v8 = sub_DEFC2C(a1, a2, a3, a4, a5);
    a1[1] = v8;
    return v8 - 48;
  }

  else
  {
    sub_DEFDF0(a1[1], a2, a3, a4, a5);
    a1[1] = v6 + 48;
    a1[1] = v6 + 48;
    return v6;
  }
}

uint64_t sub_E21954(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 584);
    *(a1 + 584) = 0;
    if (v2)
    {
      sub_1758FB8(v2);
      operator delete();
    }

    sub_1758FB8(a1 + 8);
    return a1;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return a1;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 24);
  if (v5 != v4)
  {
    do
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
      }

      v5 -= 32;
    }

    while (v5 != v4);
    v6 = *(a1 + 24);
  }

  *(a1 + 32) = v4;
  operator delete(v6);
  return a1;
}

uint64_t sub_E21A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  sub_E830CC(a3, a1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = a5[2];
  if (v10 > 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v34 = sub_2D390(exception, "Unknown request type supplied to transit journey planner module input", 0x45uLL);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = v10;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    v13 = 0;
    do
    {
      if (*(v11 + 224) == 1)
      {
        if (v13 >= *(a1 + 72))
        {
          v13 = sub_C2DA94(a1 + 56, v11);
        }

        else
        {
          sub_93AFE8(v13, v11);
          v13 += 36;
        }

        *(a1 + 64) = v13;
      }

      v11 += 288;
    }

    while (v11 != v12);
    v11 = *a4;
    v12 = a4[1];
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v11 != v12)
  {
    v14 = 0;
    do
    {
      if (*(v11 + 224) == 2)
      {
        if (v14 >= *(a1 + 96))
        {
          v14 = sub_C2DA94(a1 + 80, v11);
        }

        else
        {
          sub_93AFE8(v14, v11);
          v14 += 36;
        }

        *(a1 + 88) = v14;
      }

      v11 += 288;
    }

    while (v11 != v12);
  }

  *(a1 + 104) = *a5;
  *(a1 + 108) = a5[1];
  *(a1 + 112) = *(a3 + 536);
  v15 = *(a3 + 336);
  if (!v15)
  {
    v15 = &off_2772E28;
  }

  v16 = v15[12];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &off_2773798;
  }

  sub_E87768(v17, (a1 + 120));
  *(a1 + 144) = sub_E7A75C(a3);
  v18 = *(a3 + 360);
  if (!v18)
  {
    v18 = &off_2776700;
  }

  *(a1 + 145) = *(v18 + 234);
  v19 = sub_E7A78C(a3);
  v20 = *(a3 + 336);
  if (!v20)
  {
    v20 = &off_2772E28;
  }

  v21 = v20[12];
  if (!v21)
  {
    v21 = &off_2773798;
  }

  v22 = v21[8];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &off_2773778;
  }

  v24 = sub_E7A7A8(v23);
  v25 = *(a3 + 336);
  if (!v25)
  {
    v25 = &off_2772E28;
  }

  v26 = v25[12];
  if (!v26)
  {
    v26 = &off_2773798;
  }

  v27 = v26[8];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &off_2773778;
  }

  v29 = sub_E7A7BC(v28);
  v30 = sub_3B2E6C(a2);
  *(a1 + 152) = v19;
  *(a1 + 153) = v24;
  *(a1 + 154) = v29;
  if (*(v30 + 47) < 0)
  {
    sub_325C((a1 + 160), *(v30 + 24), *(v30 + 32));
  }

  else
  {
    v31 = *(v30 + 24);
    *(a1 + 176) = *(v30 + 40);
    *(a1 + 160) = v31;
  }

  *(a1 + 184) = sub_E7A7CC(a3);
  *(a1 + 188) = sub_E85C7C(a3);
  return a1;
}

void sub_E21CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E21D78(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v15 = *a2;
  v14 = a2[1];
  if (*a2 == v14)
  {
    v17 = __p;
    v16 = v33;
    if (__p != v33)
    {
LABEL_9:
      while (*(v17 + 44) != 1)
      {
        v17 += 440;
        if (v17 == v16)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v16 = v33;
    do
    {
      while (v16 >= v34)
      {
        v16 = sub_4EA43C(&__p, v15);
        v33 = v16;
        v15 += 440;
        if (v15 == v14)
        {
          goto LABEL_6;
        }
      }

      sub_4E9DA4(v16, v15);
      v16 += 440;
      v33 = v16;
      v15 += 440;
    }

    while (v15 != v14);
LABEL_6:
    v17 = __p;
    if (__p != v16)
    {
      goto LABEL_9;
    }
  }

  if (v17 == v16)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v17 = &unk_27337E8;
  }

  sub_4E9DA4(a1, v17);
  v18 = __p;
  if (__p)
  {
    v19 = v33;
    v20 = __p;
    if (v33 != __p)
    {
      do
      {
        v19 = sub_44FDEC(v19 - 440);
      }

      while (v19 != v18);
      v20 = __p;
    }

    v33 = v18;
    operator delete(v20);
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v22 = *a2;
  v21 = a2[1];
  if (*a2 == v21)
  {
    v24 = __p;
    v23 = v33;
    if (__p != v33)
    {
LABEL_28:
      while (*(v24 + 44) != 2)
      {
        v24 += 440;
        if (v24 == v23)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v23 = v33;
    do
    {
      while (v23 >= v34)
      {
        v23 = sub_4EA43C(&__p, v22);
        v33 = v23;
        v22 += 440;
        if (v22 == v21)
        {
          goto LABEL_25;
        }
      }

      sub_4E9DA4(v23, v22);
      v23 += 440;
      v33 = v23;
      v22 += 440;
    }

    while (v22 != v21);
LABEL_25:
    v24 = __p;
    if (__p != v23)
    {
      goto LABEL_28;
    }
  }

  if (v24 == v23)
  {
LABEL_32:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v24 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 440, v24);
  v25 = __p;
  if (__p)
  {
    v26 = v33;
    v27 = __p;
    if (v33 != __p)
    {
      do
      {
        v26 = sub_44FDEC(v26 - 440);
      }

      while (v26 != v25);
      v27 = __p;
    }

    v33 = v25;
    operator delete(v27);
  }

  sub_527724(a1 + 880, a3);
  *(a1 + 2456) = a4;
  *(a1 + 2464) = a5;
  *(a1 + 2472) = a7;
  *(a1 + 2480) = 0;
  *(a1 + 2496) = 0;
  *(a1 + 2488) = 0;
  v28 = a6[1] - *a6;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 2504) = 0;
  *(a1 + 2568) = 0;
  if (*(a8 + 64) == 1)
  {
    sub_D3D26C(a1 + 2504, a8);
    *(a1 + 2568) = 1;
  }

  return a1;
}

void sub_E22118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  sub_44FDEC(v4);
  _Unwind_Resume(a1);
}

void sub_E22140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  _Unwind_Resume(a1);
}

void sub_E22160(_Unwind_Exception *a1)
{
  sub_D3D38C(v1 + 2504);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 2488) = v4;
    operator delete(v4);
  }

  sub_528AB4(v1 + 880);
  sub_44FDEC(v1 + 440);
  sub_44FDEC(v1);
  _Unwind_Resume(a1);
}

void sub_E221F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_44FD90(va);
  sub_44FDEC(v4);
  _Unwind_Resume(a1);
}

void sub_E22218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_44FD90(va);
  _Unwind_Resume(a1);
}

void sub_E2222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_44FD90(va);
  _Unwind_Resume(a1);
}

void *sub_E22244(void *result, unint64_t a2)
{
  if (0x6FB586FB586FB587 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x94F2094F2094F3)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_E22334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22348(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = *v8;
      v10 = *(v8 + 16);
      v11 = *(v8 + 32);
      v12 = *(v8 + 48);
      *(v9 + 63) = *(v8 + 63);
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      *(v9 + 16) = v10;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = 0;
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      v13 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v13;
      v14 = *(v8 + 120);
      *(v9 + 136) = *(v8 + 136);
      *(v9 + 120) = v14;
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 160) = *(v8 + 160);
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      v15 = *(v8 + 176);
      *(v9 + 184) = *(v8 + 184);
      *(v9 + 176) = v15;
      v16 = *(v8 + 192);
      *(v9 + 208) = *(v8 + 208);
      *(v9 + 192) = v16;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 192) = 0;
      v17 = *(v8 + 216);
      *(v9 + 232) = *(v8 + 232);
      *(v9 + 216) = v17;
      *(v8 + 224) = 0;
      *(v8 + 232) = 0;
      *(v8 + 216) = 0;
      v18 = *(v8 + 240);
      *(v9 + 256) = *(v8 + 256);
      *(v9 + 240) = v18;
      *(v8 + 240) = 0;
      *(v8 + 248) = 0;
      *(v8 + 256) = 0;
      v19 = *(v8 + 264);
      *(v9 + 280) = *(v8 + 280);
      *(v9 + 264) = v19;
      *(v8 + 264) = 0;
      *(v8 + 272) = 0;
      *(v8 + 280) = 0;
      v20 = *(v8 + 304);
      *(v9 + 288) = *(v8 + 288);
      *(v9 + 304) = v20;
      *(v9 + 312) = 0;
      *(v9 + 320) = 0;
      *(v9 + 328) = 0;
      *(v9 + 312) = *(v8 + 312);
      *(v9 + 320) = *(v8 + 320);
      *(v8 + 312) = 0;
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v9 + 336) = 0;
      *(v9 + 344) = 0;
      *(v9 + 352) = 0;
      *(v9 + 336) = *(v8 + 336);
      *(v9 + 352) = *(v8 + 352);
      *(v8 + 336) = 0;
      *(v8 + 344) = 0;
      *(v8 + 352) = 0;
      *(v9 + 360) = 0;
      *(v9 + 368) = 0;
      *(v9 + 376) = 0;
      *(v9 + 360) = *(v8 + 360);
      *(v9 + 368) = *(v8 + 368);
      *(v8 + 368) = 0;
      *(v8 + 376) = 0;
      *(v8 + 360) = 0;
      *(v9 + 384) = *(v8 + 384);
      *(v9 + 408) = 0;
      *(v9 + 416) = 0;
      *(v9 + 400) = 0;
      *(v9 + 400) = *(v8 + 400);
      *(v9 + 416) = *(v8 + 416);
      *(v8 + 400) = 0;
      *(v8 + 408) = 0;
      *(v8 + 416) = 0;
      *(v9 + 424) = *(v8 + 424);
      *(v9 + 432) = *(v8 + 432);
      v8 += 440;
      v9 += 440;
    }

    while (v8 != v5);
    do
    {
      result = sub_44FDEC(result) + 440;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v21 = *a1;
  *a1 = v7;
  a1[1] = v21;
  a2[1] = v21;
  v22 = a1[1];
  a1[1] = a2[2];
  a2[2] = v22;
  v23 = a1[2];
  a1[2] = a2[3];
  a2[3] = v23;
  *a2 = a2[1];
  return result;
}

uint64_t sub_E22580(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E22734(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E22720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22734(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E2288C(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E22A40(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E22A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22A40(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E22B98(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E22D4C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E22D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E22D4C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E22EA4(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E23058(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E23044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23058(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E231B0(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E23364(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E23350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23364(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E234BC(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E23670(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E2365C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23670(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E237C8(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E2397C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E23968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E2397C(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E23AD4(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E23C88(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E23C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23C88(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E23DE0(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E23F94(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E23F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E23F94(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E240EC(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E242A0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E2428C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E242A0(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E243F8(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E245AC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E24598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E245AC(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E24704(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E248B8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E248A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E248B8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E24A10(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E24BC4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E24BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E24BC4(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E24D1C(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E24ED0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E24EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E24ED0(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E25028(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E251DC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E251C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E251DC(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E25334(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E254E8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E254D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E254E8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E25640(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_E257F4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_E257E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E257F4(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void *sub_E2594C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2674138[v4])(&v12, v2 + 5);
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

  v5 = a1[12];
  a1[12] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_A30978(v9 - 232);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_E25A54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _OWORD *a8)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  sub_D71F30(a1 + 32, a7);
  __p = 0;
  v27 = 0;
  v28 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v11 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
    v14 = __p;
    v13 = v27;
    if (__p != v27)
    {
LABEL_9:
      while (*(v14 + 44) != 1)
      {
        v14 += 440;
        if (v14 == v13)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v13 = v27;
    do
    {
      while (v13 >= v28)
      {
        v13 = sub_4EA43C(&__p, v11);
        v27 = v13;
        v11 += 440;
        if (v11 == v12)
        {
          goto LABEL_6;
        }
      }

      sub_4E9DA4(v13, v11);
      v13 += 440;
      v27 = v13;
      v11 += 440;
    }

    while (v11 != v12);
LABEL_6:
    v14 = __p;
    if (__p != v13)
    {
      goto LABEL_9;
    }
  }

  if (v14 == v13)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v14 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 232, v14);
  v15 = __p;
  if (__p)
  {
    v16 = v27;
    v17 = __p;
    if (v27 != __p)
    {
      do
      {
        v16 = sub_44FDEC(v16 - 440);
      }

      while (v16 != v15);
      v17 = __p;
    }

    v27 = v15;
    operator delete(v17);
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v18 = *a2;
  v19 = a2[1];
  if (*a2 == v19)
  {
    v21 = __p;
    v20 = v27;
    if (__p != v27)
    {
LABEL_28:
      while (*(v21 + 44) != 2)
      {
        v21 += 440;
        if (v21 == v20)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v20 = v27;
    do
    {
      while (v20 >= v28)
      {
        v20 = sub_4EA43C(&__p, v18);
        v27 = v20;
        v18 += 440;
        if (v18 == v19)
        {
          goto LABEL_25;
        }
      }

      sub_4E9DA4(v20, v18);
      v20 += 440;
      v27 = v20;
      v18 += 440;
    }

    while (v18 != v19);
LABEL_25:
    v21 = __p;
    if (__p != v20)
    {
      goto LABEL_28;
    }
  }

  if (v21 == v20)
  {
LABEL_32:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v21 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 672, v21);
  v22 = __p;
  if (__p)
  {
    v23 = v27;
    v24 = __p;
    if (v27 != __p)
    {
      do
      {
        v23 = sub_44FDEC(v23 - 440);
      }

      while (v23 != v22);
      v24 = __p;
    }

    v27 = v22;
    operator delete(v24);
  }

  *(a1 + 1112) = *a8;
  return a1;
}

void sub_E25D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  sub_44FDEC(v2 + 232);
  sub_D71D0C(v2 + 32);
  _Unwind_Resume(a1);
}

void sub_E25DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44FD90(va);
  sub_D71D0C(v2 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_E25E10(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 36;
          sub_93ABFC(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_E25EC8(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 72) != 1)
    {
      return a1;
    }

    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }

    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    operator delete(*(a1 + 16));
    return a1;
  }

  else
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      return a1;
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 24);
    if (v5 != v4)
    {
      do
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 32;
      }

      while (v5 != v4);
      v6 = *(a1 + 24);
    }

    *(a1 + 32) = v4;
    operator delete(v6);
    return a1;
  }
}

void sub_E25F9C()
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
  xmmword_27B9210 = 0u;
  unk_27B9220 = 0u;
  dword_27B9230 = 1065353216;
  sub_3A9A34(&xmmword_27B9210, v0);
  sub_3A9A34(&xmmword_27B9210, v3);
  sub_3A9A34(&xmmword_27B9210, __p);
  sub_3A9A34(&xmmword_27B9210, v9);
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
    qword_27B91E8 = 0;
    qword_27B91F0 = 0;
    qword_27B91E0 = 0;
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

void sub_E261E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B91F8)
  {
    qword_27B9200 = qword_27B91F8;
    operator delete(qword_27B91F8);
  }

  _Unwind_Resume(exception_object);
}

void sub_E26290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *sub_3B8500(a2);
  v32 = a4;
  v33 = a3;
  v22 = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  __p = 0uLL;
  v19 = 1851878480;
  v20 = 4;
  v14 = 0;
  sub_D89468(&v21, &__p);
  v9 = __p;
  if (__p)
  {
    v10 = *(&__p + 1);
    v11 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    *(&__p + 1) = v9;
    operator delete(v11);
  }

  HIBYTE(v14) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(27, &__p, v8);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(v18);
  if (sub_E6A348(a1))
  {
    *&__p = a1;
    DWORD2(__p) = 6;
    v14 = a2;
    LOBYTE(v15) = sub_E88F70(&__p);
    v16 = 0;
    sub_D11BD4(&__p, v17);
  }

  operator new();
}

void sub_E27008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p)
{
  sub_9DA0(&__p);
  sub_DE6C64(&a10);
  sub_DE6D00(v39 - 160);
  sub_E276B4(&STACK[0x758]);
  sub_D28608(&STACK[0x7A8]);
  sub_D130AC(&STACK[0xE28]);
  sub_9DA0(&STACK[0xEA0]);
  _Unwind_Resume(a1);
}

uint64_t sub_E272A0(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v8 = sub_4A5C(&v21, "[transit nearby payment method lookup] ", 39);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  sub_4A5C(v8, v10, v11);
  if ((v31 & 0x10) != 0)
  {
    v13 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v13 = v27;
    }

    v14 = v26;
    v12 = v13 - v26;
    if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_3244();
    }

LABEL_14:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__p, v14, v12);
    }

    goto LABEL_19;
  }

  if ((v31 & 8) != 0)
  {
    v14 = v24;
    v12 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v12 = 0;
  v20 = 0;
LABEL_19:
  *(&__p + v12) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_18FD3D0(&v21, 0, 0);
  v15 = sub_EC7E5C(*a3);
  LODWORD(v25) = v25 | 0x20;
  v32 = v15;
  v16 = *(*a1 + 24);
  if (v16)
  {
    (*(*v16 + 48))(v16, a4);
  }

  v17 = *(a1[1] + 24);
  if (!v17)
  {
    sub_2B7420();
  }

  (*(*v17 + 48))(v17, &v21);
  return sub_18FDA18(&v21);
}

void sub_E275BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E27600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E27614(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_E2765C(uint64_t a1)
{
  if (*(a1 + 288) == 1)
  {
    v2 = *(a1 + 264);
    if (v2)
    {
      *(a1 + 272) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 240);
    if (v3)
    {
      *(a1 + 248) = v3;
      operator delete(v3);
    }

    sub_49AEC0(a1);
  }

  return a1;
}

uint64_t sub_E276B4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 32);
          if (v5)
          {
            *(v3 - 24) = v5;
            operator delete(v5);
          }

          v3 -= 40;
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_18:
      operator delete(v4);
    }
  }

  else
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v6;
      goto LABEL_18;
    }
  }

  return a1;
}

void sub_E2777C()
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
  xmmword_27B9268 = 0u;
  unk_27B9278 = 0u;
  dword_27B9288 = 1065353216;
  sub_3A9A34(&xmmword_27B9268, v0);
  sub_3A9A34(&xmmword_27B9268, v3);
  sub_3A9A34(&xmmword_27B9268, __p);
  sub_3A9A34(&xmmword_27B9268, v9);
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
    qword_27B9240 = 0;
    qword_27B9248 = 0;
    qword_27B9238 = 0;
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

void sub_E279C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B9250)
  {
    qword_27B9258 = qword_27B9250;
    operator delete(qword_27B9250);
  }

  _Unwind_Resume(exception_object);
}

void sub_E27A70()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = *sub_3B8500(v5);
  v34 = v2;
  v35 = v4;
  v22 = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v32) = 0;
  v33 = 0;
  __p = 0uLL;
  v19 = 1851878480;
  v20 = 4;
  v14 = 0;
  sub_D89468(&v21, &__p);
  v9 = __p;
  if (__p)
  {
    v10 = *(&__p + 1);
    v11 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    *(&__p + 1) = v9;
    operator delete(v11);
  }

  HIBYTE(v14) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(19, &__p, v8);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(&v18);
  if (sub_E6A348(v7))
  {
    *&__p = v7;
    DWORD2(__p) = 6;
    v14 = v6;
    LOBYTE(v15) = sub_E88F70(&__p);
    v16 = 0;
    sub_D11BD4(&__p, &v17);
  }

  operator new();
}

void sub_E28A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p)
{
  sub_9DA0(&__p);
  sub_DE6C64(&a12);
  sub_DE6D00(v41 - 160);
  sub_DE6E78(&STACK[0x770]);
  sub_D28608(&STACK[0x9B0]);
  sub_D4D890(&STACK[0x1030]);
  sub_D130AC(&STACK[0x1178]);
  sub_9DA0(&STACK[0x11F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_E28D88(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v8 = sub_4A5C(&v21, "[transit nearby schedule lookup] ", 33);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  sub_4A5C(v8, v10, v11);
  if ((v31 & 0x10) != 0)
  {
    v13 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v13 = v27;
    }

    v14 = v26;
    v12 = v13 - v26;
    if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_3244();
    }

LABEL_14:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__p, v14, v12);
    }

    goto LABEL_19;
  }

  if ((v31 & 8) != 0)
  {
    v14 = v24;
    v12 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v12 = 0;
  v20 = 0;
LABEL_19:
  *(&__p + v12) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_18FD3D0(&v21, 0, 0);
  v15 = sub_EC7E5C(*a3);
  LODWORD(v25) = v25 | 0x20;
  v32 = v15;
  v16 = *(*a1 + 24);
  if (v16)
  {
    (*(*v16 + 48))(v16, a4);
  }

  v17 = *(a1[1] + 24);
  if (!v17)
  {
    sub_2B7420();
  }

  (*(*v17 + 48))(v17, &v21);
  return sub_18FDA18(&v21);
}

void sub_E290A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E290E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E290FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_E29144(void *a1)
{
  sub_D4EE94((a1 + 3));
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 30;
        sub_D4ED7C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_E291B0()
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
  xmmword_27B92C0 = 0u;
  *algn_27B92D0 = 0u;
  dword_27B92E0 = 1065353216;
  sub_3A9A34(&xmmword_27B92C0, v0);
  sub_3A9A34(&xmmword_27B92C0, v3);
  sub_3A9A34(&xmmword_27B92C0, __p);
  sub_3A9A34(&xmmword_27B92C0, v9);
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
    qword_27B9298 = 0;
    qword_27B92A0 = 0;
    qword_27B9290 = 0;
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

void sub_E293F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B92A8)
  {
    qword_27B92B0 = qword_27B92A8;
    operator delete(qword_27B92A8);
  }

  _Unwind_Resume(exception_object);
}

void sub_E294A4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = *sub_3B8500(v3);
  v23[3] = v4;
  v23[4] = v5;
  v23[5] = v2;
  __p[1] = 0;
  __p[0] = 0;
  v16[0] = 0;
  v21 = 1851878480;
  v22 = 4;
  sub_D89468(v23, __p);
  v7 = __p[0];
  if (__p[0])
  {
    v8 = __p[1];
    v9 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v10 = *(v8 - 25);
        v8 -= 6;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p[0];
    }

    __p[1] = v7;
    operator delete(v9);
  }

  HIBYTE(v16[0]) = 12;
  strcpy(__p, "Plan.Started");
  sub_7BDA0(16, __p, v6);
  if (SHIBYTE(v16[0]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_7E9A4(v20);
  sub_EA51A8(v5, __p);
  v19 = *__p;
  v11 = v16[0];
  if (v16[0])
  {
    v12 = v16[1];
    v13 = v16[0];
    if (v16[1] != v16[0])
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 3));
        }

        v12 -= 4;
      }

      while (v12 != v11);
      v13 = v16[0];
    }

    v16[1] = v11;
    operator delete(v13);
  }

  if (*(&v19 + 1) != &off_2669FE0 || v19 != 0)
  {
    operator new();
  }

  sub_3B6890(v4);
  __p[0] = v5;
  LODWORD(__p[1]) = 5;
  v16[0] = v4;
  LOBYTE(v16[1]) = sub_E88F70(__p);
  *v17 = 0;
  sub_D11BD4(__p, &v18);
}

void sub_E2A234(_Unwind_Exception *a1)
{
  sub_E2B594(&STACK[0x1030]);
  sub_E2B64C(&STACK[0x10A0]);
  sub_E2B708(&STACK[0x1128]);
  sub_D130AC(&STACK[0x1150]);
  sub_9DA0(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_E2A4D8(_Unwind_Exception *a1)
{
  if (*(v1 + 2943) < 0)
  {
    operator delete(*(v2 - 168));
  }

  sub_9E38(&STACK[0x670]);
  _Unwind_Resume(a1);
}

uint64_t sub_E2A4FC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v18);
  v6 = sub_4A5C(&v18, "[transit route update] ", 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  sub_4A5C(v6, v8, v9);
  if ((v28 & 0x10) != 0)
  {
    v11 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v11 = v24;
    }

    v12 = v23;
    v10 = v11 - v23;
    if (v11 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_27:
      sub_3244();
    }

LABEL_14:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v17 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_19;
  }

  if ((v28 & 8) != 0)
  {
    v12 = v21;
    v10 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v10 = 0;
  v17 = 0;
LABEL_19:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_143ACEC(&v18, 0, 0);
  v13 = sub_EC7E5C(*a3);
  LODWORD(v22) = v22 | 0x20;
  v29 = v13;
  sub_F256DC(*a1, *(*(a1 + 8) + 120) & 0xFFFFFFFFFFFFFFFELL, &v18);
  v14 = *(*(a1 + 16) + 24);
  if (!v14)
  {
    sub_2B7420();
  }

  (*(*v14 + 48))(v14, &v18);
  return sub_143B10C(&v18);
}

void sub_E2A7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E2A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_143B10C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E2A84C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitGuidanceUpdaterModule", 0x1CuLL);
  v15 = 1;
  v14 = round(*a1);
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D8B2BC((a2 + 24), "Runtime", &v15, &v14);
  }

  else
  {
    sub_D8B470(*(a2 + 32), "Runtime", &v15, &v14);
    v5 = v4 + 48;
  }

  *(a2 + 32) = v5;
  v15 = 1;
  v14 = round(a1[1]);
  if (v5 >= *(a2 + 40))
  {
    v6 = sub_E22580((a2 + 24), "Runtime.RouteBuilder", &v15, &v14);
  }

  else
  {
    sub_E22734(v5, "Runtime.RouteBuilder", &v15, &v14);
    v6 = v5 + 48;
  }

  *(a2 + 32) = v6;
  v15 = 1;
  v14 = round(a1[2]);
  if (v6 >= *(a2 + 40))
  {
    v7 = sub_E2288C((a2 + 24), "Runtime.RouteBuilder.FeatureDataBuilder", &v15, &v14);
  }

  else
  {
    sub_E22A40(v6, "Runtime.RouteBuilder.FeatureDataBuilder", &v15, &v14);
    v7 = v6 + 48;
  }

  *(a2 + 32) = v7;
  v15 = 1;
  v14 = round(a1[3]);
  if (v7 >= *(a2 + 40))
  {
    v8 = sub_E231B0((a2 + 24), "Runtime.TimeDisplayTypeAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23364(v7, "Runtime.TimeDisplayTypeAnnotation", &v15, &v14);
    v8 = v7 + 48;
  }

  *(a2 + 32) = v8;
  v15 = 1;
  v14 = round(a1[4]);
  if (v8 >= *(a2 + 40))
  {
    v9 = sub_E234BC((a2 + 24), "Runtime.BoardingInfoAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23670(v8, "Runtime.BoardingInfoAnnotation", &v15, &v14);
    v9 = v8 + 48;
  }

  *(a2 + 32) = v9;
  v15 = 1;
  v14 = round(a1[5]);
  if (v9 >= *(a2 + 40))
  {
    v10 = sub_E23AD4((a2 + 24), "Runtime.VehiclePositionInfoAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23C88(v9, "Runtime.VehiclePositionInfoAnnotation", &v15, &v14);
    v10 = v9 + 48;
  }

  *(a2 + 32) = v10;
  v15 = 1;
  v14 = round(a1[6]);
  if (v10 >= *(a2 + 40))
  {
    v11 = sub_E234BC((a2 + 24), "Runtime.ScheduleInfoAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23670(v10, "Runtime.ScheduleInfoAnnotation", &v15, &v14);
    v11 = v10 + 48;
  }

  *(a2 + 32) = v11;
  v15 = 1;
  v14 = round(a1[7]);
  if (v11 >= *(a2 + 40))
  {
    v12 = sub_E24704((a2 + 24), "Runtime.RouteHandleAnnotation", &v15, &v14);
  }

  else
  {
    sub_E248B8(v11, "Runtime.RouteHandleAnnotation", &v15, &v14);
    v12 = v11 + 48;
  }

  *(a2 + 32) = v12;
  v15 = 1;
  v14 = round(a1[8]);
  if (v12 >= *(a2 + 40))
  {
    result = sub_E234BC((a2 + 24), "Runtime.GuidanceUpdatesBuilder", &v15, &v14);
    *(a2 + 32) = result;
  }

  else
  {
    sub_E23670(v12, "Runtime.GuidanceUpdatesBuilder", &v15, &v14);
    result = v12 + 48;
    *(a2 + 32) = v12 + 48;
  }

  return result;
}

void sub_E2AC24(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E2AD10@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitRouteUpdateResponseBuilderModule", 0x27uLL);
  v7 = 1;
  v6 = round(*a1);
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D8B2BC((a2 + 24), "Runtime", &v7, &v6);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D8B470(*(a2 + 32), "Runtime", &v7, &v6);
    result = v4 + 48;
    *(a2 + 32) = v4 + 48;
  }

  return result;
}

void sub_E2ADE8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E2AE14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_E2AE5C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
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
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[3];
    if (v7 != v6)
    {
      do
      {
        v7 = sub_A30978(v7 - 232);
      }

      while (v7 != v6);
      v8 = a1[3];
    }

    a1[4] = v6;
    operator delete(v8);
  }

  return a1;
}

void *sub_E2AF08(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v8 = *a3;
  v9 = a3[1];
  __p = a1 + 1;
  LOBYTE(v26) = 0;
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  a1[4] = a6;
  sub_D28710((a1 + 5), a5);
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a4[1] - *a4) >> 3));
  v10 = *a4;
  v11 = a4[1];
  if (*a4 == v11)
  {
    v12 = v26;
  }

  else
  {
    v12 = v26;
    do
    {
      if (v12 >= v27)
      {
        v12 = sub_4EA43C(&__p, v10);
      }

      else
      {
        sub_4E9DA4(v12, v10);
        v12 += 440;
      }

      v26 = v12;
      v10 += 440;
    }

    while (v10 != v11);
  }

  v13 = __p;
  if (__p != v12)
  {
    while (*(v13 + 44) != 1)
    {
      v13 += 440;
      if (v13 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  if (v13 == v12)
  {
LABEL_16:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v13 = &unk_27337E8;
  }

  sub_4E9DA4((a1 + 202), v13);
  v14 = __p;
  if (__p)
  {
    v15 = v26;
    v16 = __p;
    if (v26 != __p)
    {
      do
      {
        v15 = sub_44FDEC(v15 - 440);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v26 = v14;
    operator delete(v16);
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a4[1] - *a4) >> 3));
  v18 = *a4;
  v17 = a4[1];
  if (v18 == v17)
  {
    v20 = __p;
    v19 = v26;
    if (__p != v26)
    {
LABEL_31:
      while (*(v20 + 44) != 2)
      {
        v20 += 440;
        if (v20 == v19)
        {
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    v19 = v26;
    do
    {
      while (v19 >= v27)
      {
        v19 = sub_4EA43C(&__p, v18);
        v26 = v19;
        v18 += 440;
        if (v18 == v17)
        {
          goto LABEL_28;
        }
      }

      sub_4E9DA4(v19, v18);
      v19 += 440;
      v26 = v19;
      v18 += 440;
    }

    while (v18 != v17);
LABEL_28:
    v20 = __p;
    if (__p != v19)
    {
      goto LABEL_31;
    }
  }

  if (v20 == v19)
  {
LABEL_35:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v20 = &unk_27337E8;
  }

  sub_4E9DA4((a1 + 257), v20);
  v21 = __p;
  if (__p)
  {
    v22 = v26;
    v23 = __p;
    if (v26 != __p)
    {
      do
      {
        v22 = sub_44FDEC(v22 - 440);
      }

      while (v22 != v21);
      v23 = __p;
    }

    v26 = v21;
    operator delete(v23);
  }

  return a1;
}

void sub_E2B27C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  sub_44FDEC(v2 + 1616);
  sub_528AB4(v2 + 40);
  sub_1AA90(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_E2B348(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      v6 += 3;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_E2B424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_E2B448(uint64_t a1)
{
  sub_44FDEC(a1 + 2056);
  sub_44FDEC(a1 + 1616);
  sub_528AB4(a1 + 40);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 16) = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 8);
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_E2B4F8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_143B10C(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_E2B594(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 1064;
          sub_9C0DEC(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}