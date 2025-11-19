void sub_DF79D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733AC8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D772D8(&STACK[0x608]);
  sub_D1D638(v15);
  _Unwind_Resume(a1);
}

uint64_t *sub_DF7B18(uint64_t *result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xF128CFC4A33F128DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_4547F0(v10 - 552);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x76B981DAE6076BLL)
    {
      v12 = 0xF128CFC4A33F128DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x3B5CC0ED7303B5)
      {
        v14 = 0x76B981DAE6076BLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x76B981DAE6076BLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xF128CFC4A33F128DLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_DF7DB8(v8, v5);
        v5 += 552;
        v8 += 552;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 552;
      result = sub_4547F0(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &a2[v16];
    if (v15 != v8)
    {
      do
      {
        result = sub_DF7DB8(v8, v5);
        v5 += 552;
        v8 += 552;
        v16 -= 552;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_49EA74(v15 + v19, &v17[v19]);
        v19 += 552;
      }

      while (&v17[v19] != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_DF7D8C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 552;
    v7 = -v4;
    do
    {
      v6 = sub_4547F0(v6) - 552;
      v7 += 552;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_DF7DB8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (a1 == a2)
  {
    v5 = *(a2 + 3);
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 64) = v6;
    *(a1 + 80) = v7;
    *(a1 + 48) = v5;
    v8 = *(a2 + 11);
    v9 = *(a2 + 12);
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 176) = v8;
    *(a1 + 192) = v9;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      if ((a2[23] & 0x80u) == 0)
      {
        v10 = a2[23];
      }

      else
      {
        a2 = *a2;
        v10 = *(v2 + 1);
      }

      sub_13B38(a1, a2, v10);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      sub_13A68(a1, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
    }

    sub_DF7FAC((a1 + 24), *(v2 + 3), *(v2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 4) - *(v2 + 3)) >> 5));
    v11 = *(v2 + 3);
    v12 = *(v2 + 4);
    v13 = *(v2 + 5);
    *(a1 + 96) = *(v2 + 12);
    *(a1 + 64) = v12;
    *(a1 + 80) = v13;
    *(a1 + 48) = v11;
    sub_DF8140((a1 + 104), *(v2 + 13), *(v2 + 14), 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 14) - *(v2 + 13)) >> 3));
    sub_4D7C64((a1 + 128), *(v2 + 16), *(v2 + 17), 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 17) - *(v2 + 16)) >> 3));
    sub_31F64((a1 + 152), *(v2 + 19), *(v2 + 20), (*(v2 + 20) - *(v2 + 19)) >> 3);
    v14 = *(v2 + 11);
    v15 = *(v2 + 12);
    *(a1 + 208) = *(v2 + 26);
    *(a1 + 176) = v14;
    *(a1 + 192) = v15;
    sub_4D88D0((a1 + 216), *(v2 + 27), *(v2 + 28), (*(v2 + 28) - *(v2 + 27)) >> 4);
    sub_4D88D0((a1 + 240), *(v2 + 30), *(v2 + 31), (*(v2 + 31) - *(v2 + 30)) >> 4);
  }

  v16 = *(v2 + 264);
  v17 = *(v2 + 296);
  *(a1 + 280) = *(v2 + 280);
  *(a1 + 296) = v17;
  *(a1 + 264) = v16;
  v18 = *(v2 + 424);
  v20 = *(v2 + 376);
  v19 = *(v2 + 392);
  *(a1 + 408) = *(v2 + 408);
  *(a1 + 424) = v18;
  *(a1 + 376) = v20;
  *(a1 + 392) = v19;
  v21 = *(v2 + 488);
  v23 = *(v2 + 440);
  v22 = *(v2 + 456);
  *(a1 + 472) = *(v2 + 472);
  *(a1 + 488) = v21;
  *(a1 + 440) = v23;
  *(a1 + 456) = v22;
  v24 = *(v2 + 312);
  v25 = *(v2 + 328);
  v26 = *(v2 + 360);
  *(a1 + 344) = *(v2 + 344);
  *(a1 + 360) = v26;
  *(a1 + 312) = v24;
  *(a1 + 328) = v25;
  sub_3E428((a1 + 504), (v2 + 504));
  if (a1 != v2)
  {
    sub_31F64((a1 + 528), *(v2 + 66), *(v2 + 67), (*(v2 + 67) - *(v2 + 66)) >> 3);
  }

  return a1;
}

char *sub_DF7FAC(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 5) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 5);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x155555555555555)
      {
        v11 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 5) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_DF8140(void **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 3);
          if (v12)
          {
            *(v10 - 2) = v12;
            operator delete(v12);
          }

          v10 -= 7;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x492492492492492)
    {
      v19 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x249249249249249)
      {
        v21 = 0x492492492492492;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v18 = v5[1];
        *v8 = *v5;
        *(v8 + 1) = v18;
        if (v5 != v8)
        {
          sub_3865E0(v8 + 4, *(v5 + 4), *(v5 + 5), (*(v5 + 5) - *(v5 + 4)) >> 4);
        }

        v5 = (v5 + 56);
        v8 += 7;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v22 = *(v13 - 24);
      if (v22)
      {
        *(v13 - 16) = v22;
        operator delete(v22);
      }

      v13 -= 56;
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = v13 - v8;
      v16 = a2;
      do
      {
        v17 = v16[1];
        *v8 = *v16;
        *(v8 + 1) = v17;
        if (v16 != v8)
        {
          sub_3865E0(v8 + 4, *(v16 + 4), *(v16 + 5), (*(v16 + 5) - *(v16 + 4)) >> 4);
        }

        v16 = (v16 + 56);
        v8 += 7;
        v15 -= 56;
      }

      while (v15);
      v13 = a1[1];
    }

    a1[1] = sub_49EE6C(a1, (v5 + v14), a3, v13);
  }
}

void sub_DF83B4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  bzero((a5 + 8), 0x248uLL);
  sub_1757EA4(a5 + 8, 0, 0);
  *(a5 + 584) = 0;
  if (*(a1 + 8) == &off_2669FE0 && *a1 == 0)
  {
    sub_7E9A4(v82);
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v79 = v12;
    sub_E83114(v11, &__p);
    v14 = __p;
    v15 = v88.n128_u64[0];
    if (__p)
    {
      v16 = __p;
      if (__p != v88.n128_u64[0])
      {
        v17 = v88.n128_u64[0];
        do
        {
          v18 = *(v17 - 1);
          v17 -= 3;
          if (v18 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v14);
        v16 = __p;
      }

      v88.n128_u64[0] = v14;
      operator delete(v16);
    }

    v80 = v14 != v15;
    v81 = v13;
    sub_D2F93C(&v79, &__p);
    sub_DF61B4(a5, &__p);
    if (__p == 1)
    {
      sub_1758FB8(&v88);
    }

    else
    {
      v22 = v89;
      if (v89)
      {
        v23 = *(&v89 + 1);
        v24 = v89;
        if (*(&v89 + 1) != v89)
        {
          do
          {
            if (*(v23 - 1) < 0)
            {
              operator delete(*(v23 - 24));
            }

            v23 -= 32;
          }

          while (v23 != v22);
          v24 = v89;
        }

        *(&v89 + 1) = v22;
        operator delete(v24);
      }
    }

    v28 = sub_7EAB4(v82);
    v29 = v28;
    v30 = *(a1 + 84);
    v31 = v30 != 0x7FFFFFFF && v30 <= v28;
    if (!v31 || !sub_7E7E4(1u))
    {
LABEL_86:
      v51 = *(a1 + 88);
      if (v51 != 0x7FFFFFFF && v51 <= v29)
      {
        v77.n128_u64[0] = 10;
        v77.n128_u64[1] = &off_2669FE0;
        sub_434934(&__dst, &v77);
        LOBYTE(__p) = 0;
        v88 = __dst;
        v89 = v84;
        v90 = v85;
        v84 = 0uLL;
        v85 = 0;
        LODWORD(v91) = v86;
        sub_DF61B4(a5, &__p);
        if (__p == 1)
        {
          sub_1758FB8(&v88);
        }

        else
        {
          v52 = v89;
          if (v89)
          {
            v53 = *(&v89 + 1);
            v54 = v89;
            if (*(&v89 + 1) != v89)
            {
              do
              {
                if (*(v53 - 1) < 0)
                {
                  operator delete(*(v53 - 24));
                }

                v53 -= 32;
              }

              while (v53 != v52);
              v54 = v89;
            }

            *(&v89 + 1) = v52;
            operator delete(v54);
          }
        }

        v55 = v84;
        if (v84)
        {
          v56 = *(&v84 + 1);
          v57 = v84;
          if (*(&v84 + 1) != v84)
          {
            do
            {
              if (*(v56 - 1) < 0)
              {
                operator delete(*(v56 - 24));
              }

              v56 -= 32;
            }

            while (v56 != v55);
            v57 = v84;
          }

          *(&v84 + 1) = v55;
          operator delete(v57);
        }
      }

      v58 = *(a1 + 64);
      sub_DF608C(a5, &__p);
      sub_7CA38(v58, a3, &__p, *(a1 + 72));
      v59 = v89;
      if (v89)
      {
        v60 = *(&v89 + 1);
        v61 = v89;
        if (*(&v89 + 1) != v89)
        {
          do
          {
            v62 = *(v60 - 25);
            v60 -= 6;
            if (v62 < 0)
            {
              operator delete(*v60);
            }
          }

          while (v60 != v59);
          v61 = v89;
        }

        *(&v89 + 1) = v59;
        operator delete(v61);
      }

      if (v88.n128_i8[15] < 0)
      {
        operator delete(__p);
        if (*a5 == 1)
        {
          goto LABEL_116;
        }
      }

      else if (*a5 == 1)
      {
LABEL_116:
        sub_175C1D0(*a4, a5 + 8);
        return;
      }

      sub_DEBB90(*(a1 + 64), (a5 + 8), *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_150:
        sub_434B40(a1, a5 + 8);
        return;
      }

      sub_19594F8(&__p);
      sub_7B538(*(a1 + 64), &__dst);
      if ((SBYTE7(v84) & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.n128_u64[0];
      }

      if ((SBYTE7(v84) & 0x80u) == 0)
      {
        v64 = BYTE7(v84);
      }

      else
      {
        v64 = __dst.n128_i64[1];
      }

      v65 = sub_4A5C(&__p, p_dst, v64);
      sub_4A5C(v65, " failed in step ", 16);
      v66 = std::ostream::operator<<();
      v67 = sub_4A5C(v66, " (", 2);
      if ((atomic_load_explicit(&qword_2733BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733BC8))
      {
        sub_89C64(0, "RawPathResponseBuilderModule", 28, &qword_2733BB0);
        __cxa_guard_release(&qword_2733BC8);
      }

      if (byte_2733BC7 >= 0)
      {
        v68 = byte_2733BC7;
      }

      else
      {
        v68 = unk_2733BB8;
      }

      if (byte_2733BC7 >= 0)
      {
        v69 = &qword_2733BB0;
      }

      else
      {
        v69 = qword_2733BB0;
      }

      v70 = sub_4A5C(v67, v69, v68);
      v71 = sub_4A5C(v70, ") with error: ", 14);
      sub_D72C3C(v71, a5 + 8);
      if (SBYTE7(v84) < 0)
      {
        operator delete(__dst.n128_u64[0]);
        v72 = v96;
        if ((v96 & 0x10) == 0)
        {
LABEL_134:
          if ((v72 & 8) == 0)
          {
            v73 = 0;
            BYTE7(v84) = 0;
LABEL_145:
            __dst.n128_u8[v73] = 0;
            sub_7E854(&__dst, 3u);
            if (SBYTE7(v84) < 0)
            {
              operator delete(__dst.n128_u64[0]);
            }

            if (v94 < 0)
            {
              operator delete(v93);
            }

            std::locale::~locale(&v88.n128_i8[8]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_150;
          }

          v75 = v89;
          v73 = v90 - v89;
          if ((v90 - v89) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_155:
            sub_3244();
          }

LABEL_140:
          if (v73 >= 0x17)
          {
            operator new();
          }

          BYTE7(v84) = v73;
          if (v73)
          {
            memmove(&__dst, v75, v73);
          }

          goto LABEL_145;
        }
      }

      else
      {
        v72 = v96;
        if ((v96 & 0x10) == 0)
        {
          goto LABEL_134;
        }
      }

      v74 = v95;
      if (v95 < v92)
      {
        v95 = v92;
        v74 = v92;
      }

      v75 = v91;
      v73 = v74 - v91;
      if (v74 - v91 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_155;
      }

      goto LABEL_140;
    }

    sub_19594F8(&__p);
    v32 = sub_4A5C(&__p, "Found long running (", 20);
    v33 = sub_72140(v32, v29);
    v34 = sub_4A5C(v33, ") ", 2);
    if ((atomic_load_explicit(&qword_2733BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733BC8))
    {
      sub_89C64(0, "RawPathResponseBuilderModule", 28, &qword_2733BB0);
      __cxa_guard_release(&qword_2733BC8);
    }

    if (byte_2733BC7 >= 0)
    {
      v35 = byte_2733BC7;
    }

    else
    {
      v35 = unk_2733BB8;
    }

    if (byte_2733BC7 >= 0)
    {
      v36 = &qword_2733BB0;
    }

    else
    {
      v36 = qword_2733BB0;
    }

    v37 = sub_4A5C(v34, v36, v35);
    v38 = sub_4A5C(v37, " in ", 4);
    sub_7B538(*(a1 + 64), &__dst);
    if ((SBYTE7(v84) & 0x80u) == 0)
    {
      v39 = &__dst;
    }

    else
    {
      v39 = __dst.n128_u64[0];
    }

    if ((SBYTE7(v84) & 0x80u) == 0)
    {
      v40 = BYTE7(v84);
    }

    else
    {
      v40 = __dst.n128_i64[1];
    }

    v41 = sub_4A5C(v38, v39, v40);
    sub_4A5C(v41, " step ", 6);
    v42 = std::ostream::operator<<();
    v43 = sub_4A5C(v42, " (request: ", 11);
    sub_17541D0(v76);
    sub_E9209C(v76, *(a1 + 56), &v77);
    if ((v78 & 0x80u) == 0)
    {
      v44 = &v77;
    }

    else
    {
      v44 = v77.n128_u64[0];
    }

    if ((v78 & 0x80u) == 0)
    {
      v45 = v78;
    }

    else
    {
      v45 = v77.n128_i64[1];
    }

    v46 = sub_4A5C(v43, v44, v45);
    sub_4A5C(v46, ")", 1);
    if (v78 < 0)
    {
      operator delete(v77.n128_u64[0]);
      sub_1754598(v76);
      if ((SBYTE7(v84) & 0x80000000) == 0)
      {
LABEL_68:
        v47 = v96;
        if ((v96 & 0x10) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_73;
      }
    }

    else
    {
      sub_1754598(v76);
      if ((SBYTE7(v84) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }
    }

    operator delete(__dst.n128_u64[0]);
    v47 = v96;
    if ((v96 & 0x10) == 0)
    {
LABEL_69:
      if ((v47 & 8) == 0)
      {
        v48 = 0;
        BYTE7(v84) = 0;
LABEL_81:
        __dst.n128_u8[v48] = 0;
        sub_7E854(&__dst, 1u);
        if (SBYTE7(v84) < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (v94 < 0)
        {
          operator delete(v93);
        }

        std::locale::~locale(&v88.n128_i8[8]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_86;
      }

      v50 = v89;
      v48 = v90 - v89;
      if ((v90 - v89) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_153:
        sub_3244();
      }

LABEL_76:
      if (v48 >= 0x17)
      {
        operator new();
      }

      BYTE7(v84) = v48;
      if (v48)
      {
        memmove(&__dst, v50, v48);
      }

      goto LABEL_81;
    }

LABEL_73:
    v49 = v95;
    if (v95 < v92)
    {
      v95 = v92;
      v49 = v92;
    }

    v50 = v91;
    v48 = v49 - v91;
    if (v49 - v91 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_153;
    }

    goto LABEL_76;
  }

  sub_434934(&__dst, a1);
  LOBYTE(__p) = 0;
  v88 = __dst;
  v89 = v84;
  v90 = v85;
  v84 = 0uLL;
  v85 = 0;
  LODWORD(v91) = v86;
  sub_DF61B4(a5, &__p);
  if (__p == 1)
  {
    sub_1758FB8(&v88);
  }

  else
  {
    v19 = v89;
    if (v89)
    {
      v20 = *(&v89 + 1);
      v21 = v89;
      if (*(&v89 + 1) != v89)
      {
        do
        {
          if (*(v20 - 1) < 0)
          {
            operator delete(*(v20 - 24));
          }

          v20 -= 32;
        }

        while (v20 != v19);
        v21 = v89;
      }

      *(&v89 + 1) = v19;
      operator delete(v21);
    }
  }

  v25 = v84;
  if (v84)
  {
    v26 = *(&v84 + 1);
    v27 = v84;
    if (*(&v84 + 1) != v84)
    {
      do
      {
        if (*(v26 - 1) < 0)
        {
          operator delete(*(v26 - 24));
        }

        v26 -= 32;
      }

      while (v26 != v25);
      v27 = v84;
    }

    *(&v84 + 1) = v25;
    operator delete(v27);
  }
}

void sub_DF8F24(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2733BC8);
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  sub_1959728(&STACK[0x2A8]);
  sub_DF2040(v1);
  _Unwind_Resume(a1);
}

void sub_DF90D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x2B8uLL);
  *(a3 + 456) = 0x3FF0000000000000;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 5;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0x7FFFFFFF;
  *(a3 + 632) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 609) = 0u;
  *(a3 + 648) = -1;
  *(a3 + 656) = 0x7FFFFFFF;
  *(a3 + 660) = 0;
  *(a3 + 668) = 0;
  *(a3 + 672) = -1;
  *(a3 + 680) = -1;
  *(a3 + 704) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v13);
    sub_D4104C(v12, *a2, *(a2 + 8), **(a2 + 16));
  }

  sub_434934(&__dst, a1);
  LOBYTE(v18) = 0;
  v19 = __dst;
  __p = v15;
  v21 = v16;
  v15 = 0uLL;
  v16 = 0;
  v22 = v17;
  sub_D72D60(a3, &v18);
  if (v18 == 1)
  {
    sub_5287C0(&v19);
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

  v9 = v15;
  if (v15)
  {
    v10 = *(&v15 + 1);
    v11 = v15;
    if (*(&v15 + 1) != v15)
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
      v11 = v15;
    }

    *(&v15 + 1) = v9;
    operator delete(v11);
  }
}

void sub_DF98C4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
    sub_1959728(&STACK[0x2B0]);
    sub_D40D4C(v1);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D40D4C(v1);
  _Unwind_Resume(a1);
}

void sub_DF9A18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

void sub_DFA6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t *sub_DFA7E4(uint64_t *result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xF128CFC4A33F128DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_4547F0(v10 - 552);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x76B981DAE6076BLL)
    {
      v12 = 0xF128CFC4A33F128DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x3B5CC0ED7303B5)
      {
        v14 = 0x76B981DAE6076BLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x76B981DAE6076BLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xF128CFC4A33F128DLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_DFAA84(v8, v5);
        v5 += 552;
        v8 += 552;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 552;
      result = sub_4547F0(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &a2[v16];
    if (v15 != v8)
    {
      do
      {
        result = sub_DFAA84(v8, v5);
        v5 += 552;
        v8 += 552;
        v16 -= 552;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_49F780(v15 + v19, &v17[v19]);
        v19 += 552;
      }

      while (&v17[v19] != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_DFAA58(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 552;
    v7 = -v4;
    do
    {
      v6 = sub_4547F0(v6) - 552;
      v7 += 552;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_DFAA84(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (a1 == a2)
  {
    v5 = *(a2 + 3);
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 64) = v6;
    *(a1 + 80) = v7;
    *(a1 + 48) = v5;
    v8 = *(a2 + 11);
    v9 = *(a2 + 12);
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 176) = v8;
    *(a1 + 192) = v9;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      if ((a2[23] & 0x80u) == 0)
      {
        v10 = a2[23];
      }

      else
      {
        a2 = *a2;
        v10 = *(v2 + 1);
      }

      sub_13B38(a1, a2, v10);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      sub_13A68(a1, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
    }

    sub_DFAC80((a1 + 24), *(v2 + 3), *(v2 + 4), 0x2E8BA2E8BA2E8BA3 * ((*(v2 + 4) - *(v2 + 3)) >> 3));
    v11 = *(v2 + 3);
    v12 = *(v2 + 4);
    v13 = *(v2 + 5);
    *(a1 + 96) = *(v2 + 12);
    *(a1 + 64) = v12;
    *(a1 + 80) = v13;
    *(a1 + 48) = v11;
    sub_DFAE20((a1 + 104), *(v2 + 13), *(v2 + 14), 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 14) - *(v2 + 13)) >> 3));
    sub_4D7C64((a1 + 128), *(v2 + 16), *(v2 + 17), 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 17) - *(v2 + 16)) >> 3));
    sub_31F64((a1 + 152), *(v2 + 19), *(v2 + 20), (*(v2 + 20) - *(v2 + 19)) >> 3);
    v14 = *(v2 + 11);
    v15 = *(v2 + 12);
    *(a1 + 208) = *(v2 + 26);
    *(a1 + 176) = v14;
    *(a1 + 192) = v15;
    sub_4D88D0((a1 + 216), *(v2 + 27), *(v2 + 28), (*(v2 + 28) - *(v2 + 27)) >> 4);
    sub_4D88D0((a1 + 240), *(v2 + 30), *(v2 + 31), (*(v2 + 31) - *(v2 + 30)) >> 4);
  }

  v16 = *(v2 + 264);
  v17 = *(v2 + 296);
  *(a1 + 280) = *(v2 + 280);
  *(a1 + 296) = v17;
  *(a1 + 264) = v16;
  v18 = *(v2 + 424);
  v20 = *(v2 + 376);
  v19 = *(v2 + 392);
  *(a1 + 408) = *(v2 + 408);
  *(a1 + 424) = v18;
  *(a1 + 376) = v20;
  *(a1 + 392) = v19;
  v21 = *(v2 + 488);
  v23 = *(v2 + 440);
  v22 = *(v2 + 456);
  *(a1 + 472) = *(v2 + 472);
  *(a1 + 488) = v21;
  *(a1 + 440) = v23;
  *(a1 + 456) = v22;
  v24 = *(v2 + 312);
  v25 = *(v2 + 328);
  v26 = *(v2 + 360);
  *(a1 + 344) = *(v2 + 344);
  *(a1 + 360) = v26;
  *(a1 + 312) = v24;
  *(a1 + 328) = v25;
  sub_3E428((a1 + 504), (v2 + 504));
  if (a1 != v2)
  {
    sub_31F64((a1 + 528), *(v2 + 66), *(v2 + 67), (*(v2 + 67) - *(v2 + 66)) >> 3);
  }

  return a1;
}

char *sub_DFAC80(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v9 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1745D1745D1745DLL)
      {
        v11 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x2E8BA2E8BA2E8BA3 * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_DFAE20(void **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 3);
          if (v12)
          {
            *(v10 - 2) = v12;
            operator delete(v12);
          }

          v10 -= 7;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x492492492492492)
    {
      v19 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x249249249249249)
      {
        v21 = 0x492492492492492;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v18 = v5[1];
        *v8 = *v5;
        *(v8 + 1) = v18;
        if (v5 != v8)
        {
          sub_3865E0(v8 + 4, *(v5 + 4), *(v5 + 5), (*(v5 + 5) - *(v5 + 4)) >> 4);
        }

        v5 = (v5 + 56);
        v8 += 7;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v22 = *(v13 - 24);
      if (v22)
      {
        *(v13 - 16) = v22;
        operator delete(v22);
      }

      v13 -= 56;
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = v13 - v8;
      v16 = a2;
      do
      {
        v17 = v16[1];
        *v8 = *v16;
        *(v8 + 1) = v17;
        if (v16 != v8)
        {
          sub_3865E0(v8 + 4, *(v16 + 4), *(v16 + 5), (*(v16 + 5) - *(v16 + 4)) >> 4);
        }

        v16 = (v16 + 56);
        v8 += 7;
        v15 -= 56;
      }

      while (v15);
      v13 = a1[1];
    }

    a1[1] = sub_49FB84(a1, (v5 + v14), a3, v13);
  }
}

void sub_DFB094(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  bzero((a5 + 8), 0x248uLL);
  sub_1757EA4(a5 + 8, 0, 0);
  *(a5 + 584) = 0;
  if (*(a1 + 8) == &off_2669FE0 && *a1 == 0)
  {
    sub_7E9A4(v82);
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v79 = v12;
    sub_E83114(v11, &__p);
    v14 = __p;
    v15 = v88.n128_u64[0];
    if (__p)
    {
      v16 = __p;
      if (__p != v88.n128_u64[0])
      {
        v17 = v88.n128_u64[0];
        do
        {
          v18 = *(v17 - 1);
          v17 -= 3;
          if (v18 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v14);
        v16 = __p;
      }

      v88.n128_u64[0] = v14;
      operator delete(v16);
    }

    v80 = v14 != v15;
    v81 = v13;
    sub_D31084(&v79, &__p);
    sub_DF61B4(a5, &__p);
    if (__p == 1)
    {
      sub_1758FB8(&v88);
    }

    else
    {
      v22 = v89;
      if (v89)
      {
        v23 = *(&v89 + 1);
        v24 = v89;
        if (*(&v89 + 1) != v89)
        {
          do
          {
            if (*(v23 - 1) < 0)
            {
              operator delete(*(v23 - 24));
            }

            v23 -= 32;
          }

          while (v23 != v22);
          v24 = v89;
        }

        *(&v89 + 1) = v22;
        operator delete(v24);
      }
    }

    v28 = sub_7EAB4(v82);
    v29 = v28;
    v30 = *(a1 + 84);
    v31 = v30 != 0x7FFFFFFF && v30 <= v28;
    if (!v31 || !sub_7E7E4(1u))
    {
LABEL_86:
      v51 = *(a1 + 88);
      if (v51 != 0x7FFFFFFF && v51 <= v29)
      {
        v77.n128_u64[0] = 10;
        v77.n128_u64[1] = &off_2669FE0;
        sub_434934(&__dst, &v77);
        LOBYTE(__p) = 0;
        v88 = __dst;
        v89 = v84;
        v90 = v85;
        v84 = 0uLL;
        v85 = 0;
        LODWORD(v91) = v86;
        sub_DF61B4(a5, &__p);
        if (__p == 1)
        {
          sub_1758FB8(&v88);
        }

        else
        {
          v52 = v89;
          if (v89)
          {
            v53 = *(&v89 + 1);
            v54 = v89;
            if (*(&v89 + 1) != v89)
            {
              do
              {
                if (*(v53 - 1) < 0)
                {
                  operator delete(*(v53 - 24));
                }

                v53 -= 32;
              }

              while (v53 != v52);
              v54 = v89;
            }

            *(&v89 + 1) = v52;
            operator delete(v54);
          }
        }

        v55 = v84;
        if (v84)
        {
          v56 = *(&v84 + 1);
          v57 = v84;
          if (*(&v84 + 1) != v84)
          {
            do
            {
              if (*(v56 - 1) < 0)
              {
                operator delete(*(v56 - 24));
              }

              v56 -= 32;
            }

            while (v56 != v55);
            v57 = v84;
          }

          *(&v84 + 1) = v55;
          operator delete(v57);
        }
      }

      v58 = *(a1 + 64);
      sub_DF608C(a5, &__p);
      sub_7CA38(v58, a3, &__p, *(a1 + 72));
      v59 = v89;
      if (v89)
      {
        v60 = *(&v89 + 1);
        v61 = v89;
        if (*(&v89 + 1) != v89)
        {
          do
          {
            v62 = *(v60 - 25);
            v60 -= 6;
            if (v62 < 0)
            {
              operator delete(*v60);
            }
          }

          while (v60 != v59);
          v61 = v89;
        }

        *(&v89 + 1) = v59;
        operator delete(v61);
      }

      if (v88.n128_i8[15] < 0)
      {
        operator delete(__p);
        if (*a5 == 1)
        {
          goto LABEL_116;
        }
      }

      else if (*a5 == 1)
      {
LABEL_116:
        sub_175C1D0(*a4, a5 + 8);
        return;
      }

      sub_DEBB90(*(a1 + 64), (a5 + 8), *(a1 + 48), *(a1 + 72));
      if (!sub_7E7E4(3u))
      {
LABEL_150:
        sub_434B40(a1, a5 + 8);
        return;
      }

      sub_19594F8(&__p);
      sub_7B538(*(a1 + 64), &__dst);
      if ((SBYTE7(v84) & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.n128_u64[0];
      }

      if ((SBYTE7(v84) & 0x80u) == 0)
      {
        v64 = BYTE7(v84);
      }

      else
      {
        v64 = __dst.n128_i64[1];
      }

      v65 = sub_4A5C(&__p, p_dst, v64);
      sub_4A5C(v65, " failed in step ", 16);
      v66 = std::ostream::operator<<();
      v67 = sub_4A5C(v66, " (", 2);
      if ((atomic_load_explicit(&qword_2733C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C08))
      {
        sub_89C64(2u, "RawPathResponseBuilderModule", 28, &qword_2733BF0);
        __cxa_guard_release(&qword_2733C08);
      }

      if (byte_2733C07 >= 0)
      {
        v68 = byte_2733C07;
      }

      else
      {
        v68 = unk_2733BF8;
      }

      if (byte_2733C07 >= 0)
      {
        v69 = &qword_2733BF0;
      }

      else
      {
        v69 = qword_2733BF0;
      }

      v70 = sub_4A5C(v67, v69, v68);
      v71 = sub_4A5C(v70, ") with error: ", 14);
      sub_D72C3C(v71, a5 + 8);
      if (SBYTE7(v84) < 0)
      {
        operator delete(__dst.n128_u64[0]);
        v72 = v96;
        if ((v96 & 0x10) == 0)
        {
LABEL_134:
          if ((v72 & 8) == 0)
          {
            v73 = 0;
            BYTE7(v84) = 0;
LABEL_145:
            __dst.n128_u8[v73] = 0;
            sub_7E854(&__dst, 3u);
            if (SBYTE7(v84) < 0)
            {
              operator delete(__dst.n128_u64[0]);
            }

            if (v94 < 0)
            {
              operator delete(v93);
            }

            std::locale::~locale(&v88.n128_i8[8]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_150;
          }

          v75 = v89;
          v73 = v90 - v89;
          if ((v90 - v89) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_155:
            sub_3244();
          }

LABEL_140:
          if (v73 >= 0x17)
          {
            operator new();
          }

          BYTE7(v84) = v73;
          if (v73)
          {
            memmove(&__dst, v75, v73);
          }

          goto LABEL_145;
        }
      }

      else
      {
        v72 = v96;
        if ((v96 & 0x10) == 0)
        {
          goto LABEL_134;
        }
      }

      v74 = v95;
      if (v95 < v92)
      {
        v95 = v92;
        v74 = v92;
      }

      v75 = v91;
      v73 = v74 - v91;
      if (v74 - v91 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_155;
      }

      goto LABEL_140;
    }

    sub_19594F8(&__p);
    v32 = sub_4A5C(&__p, "Found long running (", 20);
    v33 = sub_72140(v32, v29);
    v34 = sub_4A5C(v33, ") ", 2);
    if ((atomic_load_explicit(&qword_2733C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733C08))
    {
      sub_89C64(2u, "RawPathResponseBuilderModule", 28, &qword_2733BF0);
      __cxa_guard_release(&qword_2733C08);
    }

    if (byte_2733C07 >= 0)
    {
      v35 = byte_2733C07;
    }

    else
    {
      v35 = unk_2733BF8;
    }

    if (byte_2733C07 >= 0)
    {
      v36 = &qword_2733BF0;
    }

    else
    {
      v36 = qword_2733BF0;
    }

    v37 = sub_4A5C(v34, v36, v35);
    v38 = sub_4A5C(v37, " in ", 4);
    sub_7B538(*(a1 + 64), &__dst);
    if ((SBYTE7(v84) & 0x80u) == 0)
    {
      v39 = &__dst;
    }

    else
    {
      v39 = __dst.n128_u64[0];
    }

    if ((SBYTE7(v84) & 0x80u) == 0)
    {
      v40 = BYTE7(v84);
    }

    else
    {
      v40 = __dst.n128_i64[1];
    }

    v41 = sub_4A5C(v38, v39, v40);
    sub_4A5C(v41, " step ", 6);
    v42 = std::ostream::operator<<();
    v43 = sub_4A5C(v42, " (request: ", 11);
    sub_17541D0(v76);
    sub_E9209C(v76, *(a1 + 56), &v77);
    if ((v78 & 0x80u) == 0)
    {
      v44 = &v77;
    }

    else
    {
      v44 = v77.n128_u64[0];
    }

    if ((v78 & 0x80u) == 0)
    {
      v45 = v78;
    }

    else
    {
      v45 = v77.n128_i64[1];
    }

    v46 = sub_4A5C(v43, v44, v45);
    sub_4A5C(v46, ")", 1);
    if (v78 < 0)
    {
      operator delete(v77.n128_u64[0]);
      sub_1754598(v76);
      if ((SBYTE7(v84) & 0x80000000) == 0)
      {
LABEL_68:
        v47 = v96;
        if ((v96 & 0x10) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_73;
      }
    }

    else
    {
      sub_1754598(v76);
      if ((SBYTE7(v84) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }
    }

    operator delete(__dst.n128_u64[0]);
    v47 = v96;
    if ((v96 & 0x10) == 0)
    {
LABEL_69:
      if ((v47 & 8) == 0)
      {
        v48 = 0;
        BYTE7(v84) = 0;
LABEL_81:
        __dst.n128_u8[v48] = 0;
        sub_7E854(&__dst, 1u);
        if (SBYTE7(v84) < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (v94 < 0)
        {
          operator delete(v93);
        }

        std::locale::~locale(&v88.n128_i8[8]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_86;
      }

      v50 = v89;
      v48 = v90 - v89;
      if ((v90 - v89) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_153:
        sub_3244();
      }

LABEL_76:
      if (v48 >= 0x17)
      {
        operator new();
      }

      BYTE7(v84) = v48;
      if (v48)
      {
        memmove(&__dst, v50, v48);
      }

      goto LABEL_81;
    }

LABEL_73:
    v49 = v95;
    if (v95 < v92)
    {
      v95 = v92;
      v49 = v92;
    }

    v50 = v91;
    v48 = v49 - v91;
    if (v49 - v91 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_153;
    }

    goto LABEL_76;
  }

  sub_434934(&__dst, a1);
  LOBYTE(__p) = 0;
  v88 = __dst;
  v89 = v84;
  v90 = v85;
  v84 = 0uLL;
  v85 = 0;
  LODWORD(v91) = v86;
  sub_DF61B4(a5, &__p);
  if (__p == 1)
  {
    sub_1758FB8(&v88);
  }

  else
  {
    v19 = v89;
    if (v89)
    {
      v20 = *(&v89 + 1);
      v21 = v89;
      if (*(&v89 + 1) != v89)
      {
        do
        {
          if (*(v20 - 1) < 0)
          {
            operator delete(*(v20 - 24));
          }

          v20 -= 32;
        }

        while (v20 != v19);
        v21 = v89;
      }

      *(&v89 + 1) = v19;
      operator delete(v21);
    }
  }

  v25 = v84;
  if (v84)
  {
    v26 = *(&v84 + 1);
    v27 = v84;
    if (*(&v84 + 1) != v84)
    {
      do
      {
        if (*(v26 - 1) < 0)
        {
          operator delete(*(v26 - 24));
        }

        v26 -= 32;
      }

      while (v26 != v25);
      v27 = v84;
    }

    *(&v84 + 1) = v25;
    operator delete(v27);
  }
}

void sub_DFBC04(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2733C08);
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  sub_1959728(&STACK[0x2A8]);
  sub_DF2040(v1);
  _Unwind_Resume(a1);
}

void sub_DFBDB4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_7E9A4(&v8);
  v7 = 24;
  v6 = sub_E7A5E0(v3);
  v4 = *sub_3B8500(v2);
  sub_DEB6E0(24, v3, v2);
  sub_D72984(&v5, v3, 0x18u, v4, v2);
}

void sub_DFDCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3EECC8((v5 + 24));
  sub_3ECF74(&STACK[0x31E0]);
  sub_49AE64(&STACK[0x8E8]);
  sub_616CD4(va);
  v8 = STACK[0x21E8];
  if (STACK[0x21E8])
  {
    STACK[0x21F0] = v8;
    operator delete(v8);
  }

  sub_1758FB8(v6 + 576);
  sub_1758FB8(&STACK[0x2500]);
  sub_D9F480(&STACK[0x2980]);
  sub_5C010(&STACK[0x2B88]);
  sub_DFE1F4(&STACK[0x2BB0]);
  sub_1A104(&STACK[0x2CF8]);
  sub_77A2F0(&STACK[0x2D10]);
  sub_D72350(&STACK[0x2D28]);
  sub_D71244(&STACK[0x2D40]);
  sub_419F70(&STACK[0x2D60]);
  sub_D02C48(&STACK[0x2DE8]);
  sub_D71208(&STACK[0x2E00]);
  if (LOBYTE(STACK[0x2E30]) == 1)
  {
    v9 = STACK[0x2E18];
    if (STACK[0x2E18])
    {
      STACK[0x2E20] = v9;
      operator delete(v9);
    }
  }

  sub_454784(&STACK[0x2E38]);
  sub_E02C74(&STACK[0x2E68]);
  sub_44FD90(&STACK[0x2E80]);
  sub_5287C0(&STACK[0x2E98]);
  sub_CF3C94(&STACK[0x3150]);
  _Unwind_Resume(a1);
}

void sub_DFE1CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_DFE1D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_DFE1DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_DFE1E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0xDFE1E8);
  }

  _Unwind_Resume(a1);
}

void sub_DFE1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xDFE1F0);
  }

  sub_4A48(a1);
}

uint64_t sub_DFE1F4(uint64_t a1)
{
  if (*(a1 + 304))
  {
    sub_D72204((a1 + 304));
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 280))
  {
    sub_D71280((a1 + 280));
    operator delete(*(a1 + 280));
  }

  v2 = *(a1 + 256);
  if (v2)
  {
    v3 = *(a1 + 264);
    v4 = *(a1 + 256);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_12D8D7C(v3 - 64);
      }

      while (v3 != v2);
      v4 = *(a1 + 256);
    }

    *(a1 + 264) = v2;
    operator delete(v4);
  }

  return sub_12C41EC(a1);
}

void sub_DFE290()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_7E9A4(&v8);
  v7 = 25;
  v6 = sub_E7A5E0(v3);
  v4 = *sub_3B8500(v2);
  sub_DEB6E0(25, v3, v2);
  sub_D72984(&v5, v3, 0x19u, v4, v2);
}

void sub_E00198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3EECC8((v5 + 24));
  sub_3ECF74(&STACK[0x3200]);
  sub_49AE64(&STACK[0x8F0]);
  sub_616CD4(va);
  v8 = STACK[0x2208];
  if (STACK[0x2208])
  {
    STACK[0x2210] = v8;
    operator delete(v8);
  }

  sub_1758FB8(v6 + 576);
  sub_1758FB8(&STACK[0x2520]);
  sub_D9F480(&STACK[0x29A0]);
  sub_5C010(&STACK[0x2BA8]);
  sub_DFE1F4(&STACK[0x2BD0]);
  sub_1A104(&STACK[0x2D18]);
  sub_5DAA94(&STACK[0x2D30]);
  sub_D9F6A0(&STACK[0x2D48]);
  sub_CEFBD8(&STACK[0x2D60]);
  sub_419F70(&STACK[0x2D80]);
  sub_D02C48(&STACK[0x2E08]);
  sub_D71208(&STACK[0x2E20]);
  if (LOBYTE(STACK[0x2E50]) == 1)
  {
    v9 = STACK[0x2E38];
    if (STACK[0x2E38])
    {
      STACK[0x2E40] = v9;
      operator delete(v9);
    }
  }

  sub_454784(&STACK[0x2E58]);
  sub_DCEA84(&STACK[0x2E88]);
  sub_44FD90(&STACK[0x2EA0]);
  sub_5287C0(&STACK[0x2EB8]);
  sub_CF3C94(&STACK[0x3170]);
  _Unwind_Resume(a1);
}

void sub_E006A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E006B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E006B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E006C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0xE006C4);
  }

  _Unwind_Resume(a1);
}

void sub_E006C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xE006CCLL);
  }

  sub_4A48(a1);
}

void sub_E006D0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_7E9A4(&v8);
  v7 = 26;
  v6 = sub_E7A5E0(v3);
  v4 = *sub_3B8500(v2);
  sub_DEB6E0(26, v3, v2);
  sub_D72984(&v5, v3, 0x1Au, v4, v2);
}

void sub_E025D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3EECC8((v5 + 24));
  sub_3ECF74(&STACK[0x31E0]);
  sub_49AE64(&STACK[0x8E8]);
  sub_616CD4(va);
  v8 = STACK[0x21E8];
  if (STACK[0x21E8])
  {
    STACK[0x21F0] = v8;
    operator delete(v8);
  }

  sub_1758FB8(v6 + 576);
  sub_1758FB8(&STACK[0x2500]);
  sub_D9F480(&STACK[0x2980]);
  sub_5C010(&STACK[0x2B88]);
  sub_DFE1F4(&STACK[0x2BB0]);
  sub_1A104(&STACK[0x2CF8]);
  sub_785D84(&STACK[0x2D10]);
  sub_9B91D8(&STACK[0x2D28]);
  sub_DE353C(&STACK[0x2D40]);
  sub_419F70(&STACK[0x2D60]);
  sub_D02C48(&STACK[0x2DE8]);
  sub_D71208(&STACK[0x2E00]);
  if (LOBYTE(STACK[0x2E30]) == 1)
  {
    v9 = STACK[0x2E18];
    if (STACK[0x2E18])
    {
      STACK[0x2E20] = v9;
      operator delete(v9);
    }
  }

  sub_454784(&STACK[0x2E38]);
  sub_CDC398(&STACK[0x2E68]);
  sub_44FD90(&STACK[0x2E80]);
  sub_5287C0(&STACK[0x2E98]);
  sub_CF3C94(&STACK[0x3150]);
  _Unwind_Resume(a1);
}

void sub_E02AE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E02AF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E02AF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E02B00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0xE02B04);
  }

  _Unwind_Resume(a1);
}

void sub_E02B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xE02B0CLL);
  }

  sub_4A48(a1);
}

void sub_E02B10(uint64_t a1, void *a2)
{
  v3 = a2[25];
  if (v3)
  {
    v4 = a2[26];
    v5 = a2[25];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 24);
        if (v7)
        {
          v8 = *(v4 - 16);
          v6 = *(v4 - 24);
          if (v8 != v7)
          {
            do
            {
              v9 = *(v8 - 9);
              v8 -= 4;
              if (v9 < 0)
              {
                operator delete(*v8);
              }
            }

            while (v8 != v7);
            v6 = *(v4 - 24);
          }

          *(v4 - 16) = v7;
          operator delete(v6);
        }

        v4 -= 104;
      }

      while (v4 != v3);
      v5 = a2[25];
    }

    a2[26] = v3;
    operator delete(v5);
  }

  v10 = a2[22];
  if (v10)
  {
    v11 = a2[23];
    v12 = a2[22];
    if (v11 != v10)
    {
      do
      {
        v14 = *(v11 - 24);
        if (v14)
        {
          v15 = *(v11 - 16);
          v13 = *(v11 - 24);
          if (v15 != v14)
          {
            do
            {
              v16 = *(v15 - 9);
              v15 -= 4;
              if (v16 < 0)
              {
                operator delete(*v15);
              }
            }

            while (v15 != v14);
            v13 = *(v11 - 24);
          }

          *(v11 - 16) = v14;
          operator delete(v13);
        }

        v11 -= 104;
      }

      while (v11 != v10);
      v12 = a2[22];
    }

    a2[23] = v10;
    operator delete(v12);
  }

  v17 = a2[19];
  if (v17)
  {
    operator delete(v17);
  }

  v18 = a2[9];
  if (v18)
  {
    a2[10] = v18;

    operator delete(v18);
  }
}

uint64_t sub_E02C74(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_DCEAE8(a1, i))
    {
      i -= 3;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_E02CD8(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_E02F70((a1 + 8));
      v3 = *v2;
LABEL_12:
      operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v3 = *(a1 + 24);
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
        v3 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      goto LABEL_12;
    }
  }

  return a1;
}

void sub_E02D74(void ***a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 != *a1)
  {
    v3 = a1[1];
    v23 = *a1;
    do
    {
      v6 = *(v3 - 3);
      v3 -= 3;
      v5 = v6;
      if (v6)
      {
        v25 = v3;
        v7 = *(v1 - 2);
        v4 = v5;
        if (v7 != v5)
        {
          v24 = v1;
          while (1)
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 3));
              v9 = *(v7 - 13);
              if (v9)
              {
LABEL_17:
                v12 = *(v7 - 12);
                v13 = v9;
                if (v12 != v9)
                {
                  do
                  {
                    v12 = sub_3EEA68(v12 - 1096);
                  }

                  while (v12 != v9);
                  v13 = *(v7 - 13);
                }

                *(v7 - 12) = v9;
                operator delete(v13);
                v10 = v7 - 16;
                v11 = *(v7 - 16);
                if (!v11)
                {
                  goto LABEL_11;
                }

LABEL_21:
                v14 = *(v7 - 15);
                v8 = v11;
                if (v14 != v11)
                {
                  do
                  {
                    v15 = *(v14 - 3);
                    if (v15)
                    {
                      v16 = *(v14 - 2);
                      v17 = *(v14 - 3);
                      if (v16 != v15)
                      {
                        do
                        {
                          v18 = v16 - 32;
                          v19 = *(v16 - 2);
                          if (v19 != -1)
                          {
                            (off_2674078[v19])(&v26, v16 - 32);
                          }

                          *(v16 - 2) = -1;
                          v16 -= 32;
                        }

                        while (v18 != v15);
                        v17 = *(v14 - 3);
                      }

                      *(v14 - 2) = v15;
                      operator delete(v17);
                    }

                    v20 = *(v14 - 8);
                    if (v20 != -1)
                    {
                      (off_2674078[v20])(&v27, v14 - 7);
                    }

                    v21 = v14 - 10;
                    *(v14 - 8) = -1;
                    if (*(v14 - 57) < 0)
                    {
                      operator delete(*v21);
                    }

                    v14 -= 10;
                  }

                  while (v21 != v11);
                  v8 = *v10;
                }

                *(v7 - 15) = v11;
                operator delete(v8);
                goto LABEL_11;
              }
            }

            else
            {
              v9 = *(v7 - 13);
              if (v9)
              {
                goto LABEL_17;
              }
            }

            v10 = v7 - 16;
            v11 = *(v7 - 16);
            if (v11)
            {
              goto LABEL_21;
            }

LABEL_11:
            v7 = v10;
            if (v10 == v5)
            {
              v1 = v24;
              v4 = *v25;
              v2 = v23;
              break;
            }
          }
        }

        *(v1 - 2) = v5;
        operator delete(v4);
        v3 = v25;
      }

      v1 = v3;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void sub_E02F70(void ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = *(v2 - 3);
      if (v4)
      {
        v5 = *(v2 - 2);
        v6 = *(v2 - 3);
        if (v5 != v4)
        {
          do
          {
            v8 = *(v5 - 4);
            if (v8)
            {
              do
              {
                v9 = *v8;
                operator delete(v8);
                v8 = v9;
              }

              while (v9);
            }

            v10 = *(v5 - 6);
            *(v5 - 6) = 0;
            if (v10)
            {
              operator delete(v10);
            }

            v11 = *(v5 - 9);
            if (v11)
            {
              do
              {
                v12 = *v11;
                operator delete(v11);
                v11 = v12;
              }

              while (v12);
            }

            v13 = *(v5 - 11);
            *(v5 - 11) = 0;
            if (v13)
            {
              operator delete(v13);
            }

            v14 = v5 - 14;
            v15 = *(v5 - 14);
            if (v15)
            {
              v16 = *(v5 - 13);
              v7 = *(v5 - 14);
              if (v16 != v15)
              {
                v17 = *(v5 - 13);
                do
                {
                  v19 = *(v17 - 5);
                  v17 -= 40;
                  v18 = v19;
                  if (v19)
                  {
                    *(v16 - 4) = v18;
                    operator delete(v18);
                  }

                  v16 = v17;
                }

                while (v17 != v15);
                v7 = *v14;
              }

              *(v5 - 13) = v15;
              operator delete(v7);
            }

            v5 -= 14;
          }

          while (v14 != v4);
          v6 = *(v2 - 3);
        }

        *(v2 - 2) = v4;
        operator delete(v6);
      }

      if (*(v2 - 25) < 0)
      {
        operator delete(*(v2 - 6));
        v20 = *(v2 - 16);
        if (v20)
        {
LABEL_33:
          v23 = *(v2 - 15);
          v24 = v20;
          if (v23 != v20)
          {
            do
            {
              v23 = sub_3EEA68(v23 - 1096);
            }

            while (v23 != v20);
            v24 = *(v2 - 16);
          }

          *(v2 - 15) = v20;
          operator delete(v24);
          v21 = v2 - 19;
          v22 = *(v2 - 19);
          if (!v22)
          {
            goto LABEL_5;
          }

LABEL_37:
          v25 = *(v2 - 18);
          v3 = v22;
          if (v25 != v22)
          {
            do
            {
              v26 = *(v25 - 3);
              if (v26)
              {
                v27 = *(v25 - 2);
                v28 = *(v25 - 3);
                if (v27 != v26)
                {
                  do
                  {
                    v29 = v27 - 32;
                    v30 = *(v27 - 2);
                    if (v30 != -1)
                    {
                      (off_2674078[v30])(&v34, v27 - 32);
                    }

                    *(v27 - 2) = -1;
                    v27 -= 32;
                  }

                  while (v29 != v26);
                  v28 = *(v25 - 3);
                }

                *(v25 - 2) = v26;
                operator delete(v28);
              }

              v31 = *(v25 - 8);
              if (v31 != -1)
              {
                (off_2674078[v31])(&v35, v25 - 7);
              }

              v32 = v25 - 10;
              *(v25 - 8) = -1;
              if (*(v25 - 57) < 0)
              {
                operator delete(*v32);
              }

              v25 -= 10;
            }

            while (v32 != v22);
            v3 = *v21;
          }

          *(v2 - 18) = v22;
          operator delete(v3);
          goto LABEL_5;
        }
      }

      else
      {
        v20 = *(v2 - 16);
        if (v20)
        {
          goto LABEL_33;
        }
      }

      v21 = v2 - 19;
      v22 = *(v2 - 19);
      if (v22)
      {
        goto LABEL_37;
      }

LABEL_5:
      v2 = v21;
    }

    while (v21 != v1);
  }

  a1[1] = v1;
}

void sub_E031F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x2B8uLL);
  *(a3 + 456) = 0x3FF0000000000000;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 5;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0x7FFFFFFF;
  *(a3 + 632) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 609) = 0u;
  *(a3 + 648) = -1;
  *(a3 + 656) = 0x7FFFFFFF;
  *(a3 + 660) = 0;
  *(a3 + 668) = 0;
  *(a3 + 672) = -1;
  *(a3 + 680) = -1;
  *(a3 + 704) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v13);
    sub_D4104C(v12, *a2, *(a2 + 8), **(a2 + 16));
  }

  sub_434934(&__dst, a1);
  LOBYTE(v18) = 0;
  v19 = __dst;
  __p = v15;
  v21 = v16;
  v15 = 0uLL;
  v16 = 0;
  v22 = v17;
  sub_D72D60(a3, &v18);
  if (v18 == 1)
  {
    sub_5287C0(&v19);
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

  v9 = v15;
  if (v15)
  {
    v10 = *(&v15 + 1);
    v11 = v15;
    if (*(&v15 + 1) != v15)
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
      v11 = v15;
    }

    *(&v15 + 1) = v9;
    operator delete(v11);
  }
}

void sub_E039E0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
    sub_1959728(&STACK[0x2B0]);
    sub_D40D4C(v1);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D40D4C(v1);
  _Unwind_Resume(a1);
}

void sub_E03B34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE **a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0;
  v7 = (a5 + 8);
  if (*(a1 + 8) != &off_2669FE0 || *a1 != 0)
  {
    sub_434934(v69, a1);
    v9 = v69[2].n128_u64[0];
    v10 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v69[1];
    *(a5 + 40) = v9;
    *(a5 + 48) = v10;
    *a5 = 0;
    return;
  }

  sub_7E9A4(v77);
  v14 = sub_D33CCC(v76, *a2, **(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_D32E24(v14, v69);
  v15 = v69[0].n128_u8[0];
  if (*a5 == 1)
  {
    if (!v69[0].n128_u8[0])
    {
      goto LABEL_16;
    }

LABEL_19:
    LOBYTE(v7->__val_) = v69[0].n128_u8[8];
    *a5 = v15;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (v69[0].n128_u8[0])
  {
    v16 = *(a5 + 24);
    if (v16)
    {
      v17 = *(a5 + 32);
      v18 = *(a5 + 24);
      if (v17 != v16)
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
        v18 = *(a5 + 24);
      }

      *(a5 + 32) = v16;
      operator delete(v18);
      v15 = v69[0].n128_u8[0];
    }

    goto LABEL_19;
  }

LABEL_16:
  *v7 = *(v69 + 8);
  *(a5 + 24) = *(&v69[1] + 8);
  *(a5 + 40) = v69[2].n128_u64[1];
  memset(&v69[1].n128_i8[8], 0, 24);
  *(a5 + 48) = v70;
  *a5 = v15;
LABEL_20:
  v19 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v20 = v69[2].n128_u64[0];
    v21 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        if (*(v20 - 1) < 0)
        {
          operator delete(*(v20 - 24));
        }

        v20 -= 32;
      }

      while (v20 != v19);
      v21 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v19;
    operator delete(v21);
  }

LABEL_28:
  v22 = sub_7EAB4(v77);
  v23 = v22;
  v24 = *(a1 + 84);
  v25 = v24 != 0x7FFFFFFF && v24 <= v22;
  if (!v25 || !sub_7E7E4(1u))
  {
    goto LABEL_66;
  }

  sub_19594F8(v69);
  v26 = sub_4A5C(v69, "Found long running (", 20);
  v27 = sub_72140(v26, v23);
  v28 = sub_4A5C(v27, ") ", 2);
  v29 = sub_4A5C(v28, "RequestValidationModule", 23);
  v30 = sub_4A5C(v29, " in ", 4);
  sub_7B538(*(a1 + 64), &__dst);
  if ((v68 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.n128_u64[0];
  }

  if ((v68 & 0x80u) == 0)
  {
    v32 = v68;
  }

  else
  {
    v32 = __dst.n128_i64[1];
  }

  v33 = sub_4A5C(v30, p_dst, v32);
  sub_4A5C(v33, " step ", 6);
  v34 = std::ostream::operator<<();
  v35 = sub_4A5C(v34, " (request: ", 11);
  sub_17541D0(v64);
  sub_E9209C(v64, *(a1 + 56), v65);
  if ((v66 & 0x80u) == 0)
  {
    v36 = v65;
  }

  else
  {
    v36 = v65[0];
  }

  if ((v66 & 0x80u) == 0)
  {
    v37 = v66;
  }

  else
  {
    v37 = v65[1];
  }

  v38 = sub_4A5C(v35, v36, v37);
  sub_4A5C(v38, ")", 1);
  if (v66 < 0)
  {
    operator delete(v65[0]);
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
LABEL_48:
      v39 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_49;
      }

LABEL_53:
      v41 = v74;
      if (v74 < v71)
      {
        v74 = v71;
        v41 = v71;
      }

      v42 = v70;
      v40 = v41 - v70;
      if (v41 - v70 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_110:
        sub_3244();
      }

LABEL_56:
      if (v40 >= 0x17)
      {
        operator new();
      }

      v68 = v40;
      if (v40)
      {
        memmove(&__dst, v42, v40);
      }

      goto LABEL_61;
    }
  }

  else
  {
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__dst.n128_u64[0]);
  v39 = v75;
  if ((v75 & 0x10) != 0)
  {
    goto LABEL_53;
  }

LABEL_49:
  if ((v39 & 8) != 0)
  {
    v42 = v69[1].n128_u64[1];
    v40 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
    if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_110;
    }

    goto LABEL_56;
  }

  v40 = 0;
  v68 = 0;
LABEL_61:
  __dst.n128_u8[v40] = 0;
  sub_7E854(&__dst, 1u);
  if (v68 < 0)
  {
    operator delete(__dst.n128_u64[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  std::locale::~locale(&v69[1]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_66:
  v43 = *(a1 + 88);
  if (v43 == 0x7FFFFFFF || v43 > v23)
  {
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
    if (*a5)
    {
      sub_D73B78(a5);
    }
  }

  else
  {
    __dst.n128_u64[0] = 10;
    __dst.n128_u64[1] = &off_2669FE0;
    sub_434934(v69, &__dst);
    v44 = v69[2].n128_u64[0];
    v45 = v69[1];
    v46 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v45;
    *(a5 + 40) = v44;
    *(a5 + 48) = v46;
    *a5 = 0;
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
  }

  memset(v69, 0, sizeof(v69));
  sub_7CA38(v48, a3, v69, *(a1 + 72));
  v49 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v50 = v69[2].n128_u64[0];
    v51 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        v52 = *(v50 - 25);
        v50 -= 6;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v49;
    operator delete(v51);
  }

  if (v69[1].n128_i8[7] < 0)
  {
    operator delete(v69[0].n128_u64[0]);
    if (*a5 == 1)
    {
      goto LABEL_81;
    }
  }

  else if (*a5 == 1)
  {
LABEL_81:
    **a4 = 1;
    return;
  }

  sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
  if (sub_7E7E4(3u))
  {
    sub_19594F8(v69);
    sub_7B538(*v47, &__dst);
    if ((v68 & 0x80u) == 0)
    {
      v53 = &__dst;
    }

    else
    {
      v53 = __dst.n128_u64[0];
    }

    if ((v68 & 0x80u) == 0)
    {
      v54 = v68;
    }

    else
    {
      v54 = __dst.n128_i64[1];
    }

    v55 = sub_4A5C(v69, v53, v54);
    sub_4A5C(v55, " failed in step ", 16);
    v56 = std::ostream::operator<<();
    v57 = sub_4A5C(v56, " (", 2);
    v58 = sub_4A5C(v57, "RequestValidationModule", 23);
    v59 = sub_4A5C(v58, ") with error: ", 14);
    sub_D72C3C(v59, v7);
    if (v68 < 0)
    {
      operator delete(__dst.n128_u64[0]);
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
LABEL_92:
        if ((v60 & 8) == 0)
        {
          v61 = 0;
          v68 = 0;
LABEL_103:
          __dst.n128_u8[v61] = 0;
          sub_7E854(&__dst, 3u);
          if (v68 < 0)
          {
            operator delete(__dst.n128_u64[0]);
          }

          if (v73 < 0)
          {
            operator delete(v72);
          }

          std::locale::~locale(&v69[1]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_108;
        }

        v63 = v69[1].n128_u64[1];
        v61 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
        if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_112:
          sub_3244();
        }

LABEL_98:
        if (v61 >= 0x17)
        {
          operator new();
        }

        v68 = v61;
        if (v61)
        {
          memmove(&__dst, v63, v61);
        }

        goto LABEL_103;
      }
    }

    else
    {
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_92;
      }
    }

    v62 = v74;
    if (v74 < v71)
    {
      v74 = v71;
      v62 = v71;
    }

    v63 = v70;
    v61 = v62 - v70;
    if (v62 - v70 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

LABEL_108:
  sub_434B40(a1, v7);
}

void sub_E044A4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  sub_1959728(&STACK[0x250]);
  sub_CD6274(v1);
  _Unwind_Resume(a1);
}

void sub_E04618(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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

void sub_E050FC(_Unwind_Exception *a1)
{
  if (*(v2 - 121) < 0)
  {
    operator delete(*(v2 - 144));
  }

  sub_1959728(&STACK[0x240]);
  sub_D130AC(v1);
  _Unwind_Resume(a1);
}

void sub_E05270(uint64_t **a1, uint64_t *a2)
{
  if (*a1 != a2)
  {
    sub_CD80CC(*a1, *a2, a2[1], 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  }

  sub_4E3D18(&v2);
  sub_44D46C(v3);
}

void sub_E0535C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_454784(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_E05370(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6FB586FB586FB587 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_44FDEC(v10 - 440);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x94F2094F2094F2)
    {
      v12 = 0x6FB586FB586FB587 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x4A7904A7904A79)
      {
        v14 = 0x94F2094F2094F2;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x94F2094F2094F2)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x6FB586FB586FB587 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5FFC40(v8, v5);
        v5 += 440;
        v8 += 440;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 440;
      result = sub_44FDEC(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_5FFC40(v8, v5);
        v5 += 440;
        v8 += 440;
        v16 -= 440;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_4E9DA4(v15 + v19, v17 + v19);
        v19 += 440;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_E055E4(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 440;
    v7 = -v4;
    do
    {
      v6 = sub_44FDEC(v6) - 440;
      v7 += 440;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_E05610(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

void sub_E06360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733A08);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D772D8(&STACK[0x608]);
  sub_D1D638(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_E064A4(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v23 = a1;
  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 24 * v1;
  __p = 0;
  v20 = v5;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  v21 = 24 * v1 + 24;
  v22 = 0;
  sub_CDD28C(a1, &__p);
  v6 = a1[1];
  v7 = v20;
  v8 = v21;
  if (v21 != v20)
  {
    v9 = v21;
    while (1)
    {
      v12 = *(v9 - 3);
      v9 -= 3;
      v11 = v12;
      v21 = v9;
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *(v8 - 16);
      v10 = v11;
      if (v13 != v11)
      {
        break;
      }

LABEL_13:
      *(v8 - 16) = v11;
      operator delete(v10);
      v9 = v21;
LABEL_14:
      v8 = v9;
      if (v9 == v7)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
LABEL_24:
          v16 = *(v13 - 5);
          v17 = v15;
          if (v16 != v15)
          {
            do
            {
              v16 = sub_4547F0(v16 - 552);
            }

            while (v16 != v15);
            v17 = *v14;
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }
      }

      else
      {
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      v13 = v14;
      if (v14 == v11)
      {
        v10 = *v9;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_E06670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void sub_E06684(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
    sub_D0062C(&v21, &v15);
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

void sub_E07188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733A28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D71434(v15);
  _Unwind_Resume(a1);
}

void sub_E07324(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void ****a4@<X3>, uint64_t a5@<X8>)
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
    sub_E081E8(a2, &v83);
    sub_D384C0(&v83, v76);
    sub_D7A394(a5, v76);
    if (LOBYTE(v76[0]) == 1)
    {
      sub_D3AEDC(&v76[1]);
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
        sub_D7A394(a5, v76);
        if (LOBYTE(v76[0]) == 1)
        {
          sub_D3AEDC(&v76[1]);
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
        sub_D7A5D4(a5);
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
        sub_E08020(a4, v7);
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
      if ((atomic_load_explicit(&qword_2733A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733A48))
      {
        sub_89C64(3u, "RouteBuilderModule", 18, &qword_2733A30);
        __cxa_guard_release(&qword_2733A48);
      }

      if (byte_2733A47 >= 0)
      {
        v60 = byte_2733A47;
      }

      else
      {
        v60 = unk_2733A38;
      }

      if (byte_2733A47 >= 0)
      {
        v61 = &qword_2733A30;
      }

      else
      {
        v61 = qword_2733A30;
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
    if ((atomic_load_explicit(&qword_2733A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733A48))
    {
      sub_89C64(3u, "RouteBuilderModule", 18, &qword_2733A30);
      __cxa_guard_release(&qword_2733A48);
    }

    if (byte_2733A47 >= 0)
    {
      v27 = byte_2733A47;
    }

    else
    {
      v27 = unk_2733A38;
    }

    if (byte_2733A47 >= 0)
    {
      v28 = &qword_2733A30;
    }

    else
    {
      v28 = qword_2733A30;
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
  sub_D7A394(a5, v76);
  if (LOBYTE(v76[0]) == 1)
  {
    sub_D3AEDC(&v76[1]);
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

void sub_E07EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733A48);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D7A354(&STACK[0x378]);
  sub_D3AE40(v15);
  _Unwind_Resume(a1);
}

void sub_E08020(void ****a1, uint64_t a2)
{
  v4 = *a1;
  if (**a1)
  {
    sub_D72788(*a1);
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

void sub_E081D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

__n128 sub_E081E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_E082D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_D7B058(a2, v13);
  if (v13[0] == 1)
  {
    if (!v14.n128_u64[0])
    {
      goto LABEL_16;
    }

    sub_D7238C(&v14);
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

void sub_E08DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_528AB4(&STACK[0x380]);
  sub_D716C4(v15);
  _Unwind_Resume(a1);
}

void sub_E08EA8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  ++*(v0 + 80);
  *v1 = 1;
  bzero(v1 + 8, 0x13D0uLL);
  sub_D098AC((v2 + 8));
}

void sub_E09AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_guard_abort(&qword_2733A68);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x930]);
  sub_D7E748(&STACK[0x268]);
  sub_D0ECD8(v14);
  _Unwind_Resume(a1);
}

void sub_E09CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_E09D08(uint64_t a1, uint64_t a2)
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
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_D3B9CC(a1, i + 4);
  }

  return a1;
}

uint64_t sub_E09E4C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_CDF41C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
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

void sub_E09F28(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void *sub_E09F58(void *result, uint64_t a2, unint64_t a3)
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

void sub_E0A060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_E0A080(&a11);
  *(v11 + 8) = v12;
  sub_E0A120(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_E0A080(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *v2;
      do
      {
        v8 = *(v6 - 3);
        v6 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v4 - 2);
          v10 = v7;
          if (v9 != v7)
          {
            do
            {
              v9 -= 128;
              sub_60B38C(v9);
            }

            while (v9 != v7);
            v10 = *v6;
          }

          *(v4 - 2) = v7;
          operator delete(v10);
        }

        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ***sub_E0A120(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_D72788(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_E0A170(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
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
    sub_E0AE9C(&v83, *a2, *(a2 + 8), *(a2 + 16), **(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 72), *(a2 + 80), 0, *(a2 + 88), *(a2 + 96));
    sub_CD0114();
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
        sub_D8138C(&v83);
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
      if ((atomic_load_explicit(&qword_2733A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733A88))
      {
        sub_89C64(3u, "AnalyticsModule", 15, &qword_2733A70);
        __cxa_guard_release(&qword_2733A88);
      }

      if (byte_2733A87 >= 0)
      {
        v60 = byte_2733A87;
      }

      else
      {
        v60 = unk_2733A78;
      }

      if (byte_2733A87 >= 0)
      {
        v61 = &qword_2733A70;
      }

      else
      {
        v61 = qword_2733A70;
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
    if ((atomic_load_explicit(&qword_2733A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733A88))
    {
      sub_89C64(3u, "AnalyticsModule", 15, &qword_2733A70);
      __cxa_guard_release(&qword_2733A88);
    }

    if (byte_2733A87 >= 0)
    {
      v26 = byte_2733A87;
    }

    else
    {
      v26 = unk_2733A78;
    }

    if (byte_2733A87 >= 0)
    {
      v27 = &qword_2733A70;
    }

    else
    {
      v27 = qword_2733A70;
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

void sub_E0AD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_guard_abort(&qword_2733A88);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D8138C(&STACK[0x468]);
  sub_CD15B8(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_E0AE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14)
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

void sub_E0B054(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44D36C((v1 + 168));
  sub_4F3AA4(v1 + 112);
  sub_49AE64(v2);
  _Unwind_Resume(a1);
}

void sub_E0B0D4()
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
    sub_E0BD98(v2, v17);
    sub_D352B8(v17, &v13);
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

void sub_E0BC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733AA8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D827EC(&STACK[0x728]);
  sub_D35A8C(v15);
  _Unwind_Resume(a1);
}

void sub_E0BD98(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  sub_E0C07C(a2, v4, v5, v6, v7, v8, &v30, &v29, v25, v9, &v24, v11, &__p);
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

void sub_E0BF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_E0BF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5706DC((v10 + 1088));
  sub_559E70(va);
  _Unwind_Resume(a1);
}

void sub_E0BF88(uint64_t *a1, uint64_t a2)
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

uint64_t sub_E0C07C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _OWORD *a6, void *a7, uint64_t *a8, uint64_t *a9, void *a10, uint64_t *a11, uint64_t a12, uint64_t a13)
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
  v23 = sub_D81AEC(a2, a4, a3, a5);
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
  sub_D81C5C(a1, a3, a4, a5, v25, &v81, &v80, &v69, v48, v21, v59, v22, v23, v24 & 0xFFFFFFFFFFLL, &v57, &v55, &v54, v27, v52, __p, v28);
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

void sub_E0C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
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

void sub_E0C5CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x2B8uLL);
  *(a3 + 456) = 0x3FF0000000000000;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 5;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0x7FFFFFFF;
  *(a3 + 632) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 609) = 0u;
  *(a3 + 648) = -1;
  *(a3 + 656) = 0x7FFFFFFF;
  *(a3 + 660) = 0;
  *(a3 + 668) = 0;
  *(a3 + 672) = -1;
  *(a3 + 680) = -1;
  *(a3 + 704) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v13);
    sub_D4104C(v12, *a2, *(a2 + 8), **(a2 + 16));
  }

  sub_434934(&__dst, a1);
  LOBYTE(v18) = 0;
  v19 = __dst;
  __p = v15;
  v21 = v16;
  v15 = 0uLL;
  v16 = 0;
  v22 = v17;
  sub_D72D60(a3, &v18);
  if (v18 == 1)
  {
    sub_5287C0(&v19);
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

  v9 = v15;
  if (v15)
  {
    v10 = *(&v15 + 1);
    v11 = v15;
    if (*(&v15 + 1) != v15)
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
      v11 = v15;
    }

    *(&v15 + 1) = v9;
    operator delete(v11);
  }
}

void sub_E0CDBC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
    sub_1959728(&STACK[0x2B0]);
    sub_D40D4C(v1);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D40D4C(v1);
  _Unwind_Resume(a1);
}

void sub_E0CF10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE **a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0;
  v7 = (a5 + 8);
  if (*(a1 + 8) != &off_2669FE0 || *a1 != 0)
  {
    sub_434934(v69, a1);
    v9 = v69[2].n128_u64[0];
    v10 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v69[1];
    *(a5 + 40) = v9;
    *(a5 + 48) = v10;
    *a5 = 0;
    return;
  }

  sub_7E9A4(v77);
  v14 = sub_D33CCC(v76, *a2, **(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_D32E24(v14, v69);
  v15 = v69[0].n128_u8[0];
  if (*a5 == 1)
  {
    if (!v69[0].n128_u8[0])
    {
      goto LABEL_16;
    }

LABEL_19:
    LOBYTE(v7->__val_) = v69[0].n128_u8[8];
    *a5 = v15;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (v69[0].n128_u8[0])
  {
    v16 = *(a5 + 24);
    if (v16)
    {
      v17 = *(a5 + 32);
      v18 = *(a5 + 24);
      if (v17 != v16)
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
        v18 = *(a5 + 24);
      }

      *(a5 + 32) = v16;
      operator delete(v18);
      v15 = v69[0].n128_u8[0];
    }

    goto LABEL_19;
  }

LABEL_16:
  *v7 = *(v69 + 8);
  *(a5 + 24) = *(&v69[1] + 8);
  *(a5 + 40) = v69[2].n128_u64[1];
  memset(&v69[1].n128_i8[8], 0, 24);
  *(a5 + 48) = v70;
  *a5 = v15;
LABEL_20:
  v19 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v20 = v69[2].n128_u64[0];
    v21 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        if (*(v20 - 1) < 0)
        {
          operator delete(*(v20 - 24));
        }

        v20 -= 32;
      }

      while (v20 != v19);
      v21 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v19;
    operator delete(v21);
  }

LABEL_28:
  v22 = sub_7EAB4(v77);
  v23 = v22;
  v24 = *(a1 + 84);
  v25 = v24 != 0x7FFFFFFF && v24 <= v22;
  if (!v25 || !sub_7E7E4(1u))
  {
    goto LABEL_66;
  }

  sub_19594F8(v69);
  v26 = sub_4A5C(v69, "Found long running (", 20);
  v27 = sub_72140(v26, v23);
  v28 = sub_4A5C(v27, ") ", 2);
  v29 = sub_4A5C(v28, "RequestValidationModule", 23);
  v30 = sub_4A5C(v29, " in ", 4);
  sub_7B538(*(a1 + 64), &__dst);
  if ((v68 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.n128_u64[0];
  }

  if ((v68 & 0x80u) == 0)
  {
    v32 = v68;
  }

  else
  {
    v32 = __dst.n128_i64[1];
  }

  v33 = sub_4A5C(v30, p_dst, v32);
  sub_4A5C(v33, " step ", 6);
  v34 = std::ostream::operator<<();
  v35 = sub_4A5C(v34, " (request: ", 11);
  sub_17541D0(v64);
  sub_E9209C(v64, *(a1 + 56), v65);
  if ((v66 & 0x80u) == 0)
  {
    v36 = v65;
  }

  else
  {
    v36 = v65[0];
  }

  if ((v66 & 0x80u) == 0)
  {
    v37 = v66;
  }

  else
  {
    v37 = v65[1];
  }

  v38 = sub_4A5C(v35, v36, v37);
  sub_4A5C(v38, ")", 1);
  if (v66 < 0)
  {
    operator delete(v65[0]);
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
LABEL_48:
      v39 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_49;
      }

LABEL_53:
      v41 = v74;
      if (v74 < v71)
      {
        v74 = v71;
        v41 = v71;
      }

      v42 = v70;
      v40 = v41 - v70;
      if (v41 - v70 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_110:
        sub_3244();
      }

LABEL_56:
      if (v40 >= 0x17)
      {
        operator new();
      }

      v68 = v40;
      if (v40)
      {
        memmove(&__dst, v42, v40);
      }

      goto LABEL_61;
    }
  }

  else
  {
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__dst.n128_u64[0]);
  v39 = v75;
  if ((v75 & 0x10) != 0)
  {
    goto LABEL_53;
  }

LABEL_49:
  if ((v39 & 8) != 0)
  {
    v42 = v69[1].n128_u64[1];
    v40 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
    if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_110;
    }

    goto LABEL_56;
  }

  v40 = 0;
  v68 = 0;
LABEL_61:
  __dst.n128_u8[v40] = 0;
  sub_7E854(&__dst, 1u);
  if (v68 < 0)
  {
    operator delete(__dst.n128_u64[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  std::locale::~locale(&v69[1]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_66:
  v43 = *(a1 + 88);
  if (v43 == 0x7FFFFFFF || v43 > v23)
  {
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
    if (*a5)
    {
      sub_D73B78(a5);
    }
  }

  else
  {
    __dst.n128_u64[0] = 10;
    __dst.n128_u64[1] = &off_2669FE0;
    sub_434934(v69, &__dst);
    v44 = v69[2].n128_u64[0];
    v45 = v69[1];
    v46 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v45;
    *(a5 + 40) = v44;
    *(a5 + 48) = v46;
    *a5 = 0;
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
  }

  memset(v69, 0, sizeof(v69));
  sub_7CA38(v48, a3, v69, *(a1 + 72));
  v49 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v50 = v69[2].n128_u64[0];
    v51 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        v52 = *(v50 - 25);
        v50 -= 6;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v49;
    operator delete(v51);
  }

  if (v69[1].n128_i8[7] < 0)
  {
    operator delete(v69[0].n128_u64[0]);
    if (*a5 == 1)
    {
      goto LABEL_81;
    }
  }

  else if (*a5 == 1)
  {
LABEL_81:
    **a4 = 1;
    return;
  }

  sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
  if (sub_7E7E4(3u))
  {
    sub_19594F8(v69);
    sub_7B538(*v47, &__dst);
    if ((v68 & 0x80u) == 0)
    {
      v53 = &__dst;
    }

    else
    {
      v53 = __dst.n128_u64[0];
    }

    if ((v68 & 0x80u) == 0)
    {
      v54 = v68;
    }

    else
    {
      v54 = __dst.n128_i64[1];
    }

    v55 = sub_4A5C(v69, v53, v54);
    sub_4A5C(v55, " failed in step ", 16);
    v56 = std::ostream::operator<<();
    v57 = sub_4A5C(v56, " (", 2);
    v58 = sub_4A5C(v57, "RequestValidationModule", 23);
    v59 = sub_4A5C(v58, ") with error: ", 14);
    sub_D72C3C(v59, v7);
    if (v68 < 0)
    {
      operator delete(__dst.n128_u64[0]);
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
LABEL_92:
        if ((v60 & 8) == 0)
        {
          v61 = 0;
          v68 = 0;
LABEL_103:
          __dst.n128_u8[v61] = 0;
          sub_7E854(&__dst, 3u);
          if (v68 < 0)
          {
            operator delete(__dst.n128_u64[0]);
          }

          if (v73 < 0)
          {
            operator delete(v72);
          }

          std::locale::~locale(&v69[1]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_108;
        }

        v63 = v69[1].n128_u64[1];
        v61 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
        if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_112:
          sub_3244();
        }

LABEL_98:
        if (v61 >= 0x17)
        {
          operator new();
        }

        v68 = v61;
        if (v61)
        {
          memmove(&__dst, v63, v61);
        }

        goto LABEL_103;
      }
    }

    else
    {
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_92;
      }
    }

    v62 = v74;
    if (v74 < v71)
    {
      v74 = v71;
      v62 = v71;
    }

    v63 = v70;
    v61 = v62 - v70;
    if (v62 - v70 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

LABEL_108:
  sub_434B40(a1, v7);
}

void sub_E0D880(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  sub_1959728(&STACK[0x250]);
  sub_CD6274(v1);
  _Unwind_Resume(a1);
}

void sub_E0D9F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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

void sub_E0E4D8(_Unwind_Exception *a1)
{
  if (*(v2 - 121) < 0)
  {
    operator delete(*(v2 - 144));
  }

  sub_1959728(&STACK[0x240]);
  sub_D130AC(v1);
  _Unwind_Resume(a1);
}

void sub_E0E64C(uint64_t **a1, uint64_t *a2)
{
  if (*a1 != a2)
  {
    sub_CD80CC(*a1, *a2, a2[1], 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  }

  sub_4E3D18(&v2);
  sub_44D46C(v3);
}

void sub_E0E738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_454784(va);
  _Unwind_Resume(a1);
}

void sub_E0E74C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

void sub_E0F49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733AC8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D772D8(&STACK[0x608]);
  sub_D1D638(v15);
  _Unwind_Resume(a1);
}

void sub_E0F5E0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void ****a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0u;
  v7 = a5 + 8;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  if (*(a1 + 8) != &off_2669FE0 || *a1 != 0)
  {
    sub_434934(&v83, a1);
    LOBYTE(v75[0]) = 0;
    *&v75[1] = v83;
    *&v75[3] = v84;
    v75[5] = v85;
    v84 = 0uLL;
    v85 = 0;
    LODWORD(v76) = v86;
    sub_DAB02C(a5, v75);
    sub_D71434(v75);
    v9 = v84;
    if (v84)
    {
      v10 = *(&v84 + 1);
      v11 = v84;
      if (*(&v84 + 1) != v84)
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
        v11 = v84;
      }

      *(&v84 + 1) = v9;
      operator delete(v11);
    }

    return;
  }

  sub_7E9A4(v82);
  v16 = *a2;
  v15 = a2[1];
  v18 = a2[2];
  v17 = a2[3];
  v83.n128_u64[0] = v15;
  v19 = sub_3B6890(v17);
  v20 = *v19;
  LODWORD(v84) = *(v19 + 8);
  v83.n128_u64[1] = v20;
  BYTE4(v84) = sub_E7A3D0(v16);
  *(&v84 + 1) = v18;
  LOBYTE(v85) = 1;
  v86 = v17;
  sub_D01A24(&v83, v75);
  sub_DAB02C(a5, v75);
  sub_D71434(v75);
  v21 = sub_7EAB4(v82);
  v22 = v21;
  v23 = *(a1 + 84);
  if (v23 != 0x7FFFFFFF && v23 <= v21 && sub_7E7E4(1u))
  {
    sub_19594F8(v75);
    v24 = sub_4A5C(v75, "Found long running (", 20);
    v25 = sub_72140(v24, v22);
    v26 = sub_4A5C(v25, ") ", 2);
    if ((atomic_load_explicit(&qword_2733B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733B08))
    {
      sub_89C64(0, "ETAModule", 9, &qword_2733AF0);
      __cxa_guard_release(&qword_2733B08);
    }

    if (byte_2733B07 >= 0)
    {
      v27 = byte_2733B07;
    }

    else
    {
      v27 = unk_2733AF8;
    }

    if (byte_2733B07 >= 0)
    {
      v28 = &qword_2733AF0;
    }

    else
    {
      v28 = qword_2733AF0;
    }

    v29 = sub_4A5C(v26, v28, v27);
    v30 = sub_4A5C(v29, " in ", 4);
    sub_7B538(*(a1 + 64), __dst);
    if ((SBYTE7(v69) & 0x80u) == 0)
    {
      v31 = __dst;
    }

    else
    {
      v31 = __dst[0];
    }

    if ((SBYTE7(v69) & 0x80u) == 0)
    {
      v32 = BYTE7(v69);
    }

    else
    {
      v32 = __dst[1];
    }

    v33 = sub_4A5C(v30, v31, v32);
    sub_4A5C(v33, " step ", 6);
    v34 = std::ostream::operator<<();
    v35 = sub_4A5C(v34, " (request: ", 11);
    sub_17541D0(v72);
    sub_E9209C(v72, *(a1 + 56), &__p);
    if ((v74 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.n128_u64[0];
    }

    if ((v74 & 0x80u) == 0)
    {
      v37 = v74;
    }

    else
    {
      v37 = __p.n128_i64[1];
    }

    v38 = sub_4A5C(v35, p_p, v37);
    sub_4A5C(v38, ")", 1);
    if (v74 < 0)
    {
      operator delete(__p.n128_u64[0]);
      sub_1754598(v72);
      if ((SBYTE7(v69) & 0x80000000) == 0)
      {
LABEL_35:
        v39 = v81;
        if ((v81 & 0x10) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }
    }

    else
    {
      sub_1754598(v72);
      if ((SBYTE7(v69) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    operator delete(__dst[0]);
    v39 = v81;
    if ((v81 & 0x10) == 0)
    {
LABEL_36:
      if ((v39 & 8) == 0)
      {
        v40 = 0;
        BYTE7(v69) = 0;
LABEL_50:
        *(__dst + v40) = 0;
        sub_7E854(__dst, 1u);
        if (SBYTE7(v69) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v79 < 0)
        {
          operator delete(v78);
        }

        std::locale::~locale(&v75[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_55;
      }

      v42 = v75[3];
      v40 = v75[5] - v75[3];
      if ((v75[5] - v75[3]) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_119:
        sub_3244();
      }

LABEL_45:
      if (v40 >= 0x17)
      {
        operator new();
      }

      BYTE7(v69) = v40;
      if (v40)
      {
        memmove(__dst, v42, v40);
      }

      goto LABEL_50;
    }

LABEL_42:
    v41 = v80;
    if (v80 < v77)
    {
      v80 = v77;
      v41 = v77;
    }

    v42 = v76;
    v40 = v41 - v76;
    if (v41 - v76 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_119;
    }

    goto LABEL_45;
  }

LABEL_55:
  v43 = *(a1 + 88);
  if (v43 != 0x7FFFFFFF && v43 <= v22)
  {
    __p.n128_u64[0] = 10;
    __p.n128_u64[1] = &off_2669FE0;
    sub_434934(__dst, &__p);
    LOBYTE(v75[0]) = 0;
    *&v75[1] = *__dst;
    *&v75[3] = v69;
    v75[5] = v70;
    v69 = 0uLL;
    v70 = 0;
    LODWORD(v76) = v71;
    sub_DAB02C(a5, v75);
    sub_D71434(v75);
    v44 = v69;
    if (v69)
    {
      v45 = *(&v69 + 1);
      v46 = v69;
      if (*(&v69 + 1) != v69)
      {
        do
        {
          if (*(v45 - 1) < 0)
          {
            operator delete(*(v45 - 24));
          }

          v45 -= 32;
        }

        while (v45 != v44);
        v46 = v69;
      }

      *(&v69 + 1) = v44;
      operator delete(v46);
    }
  }

  v47 = *(a1 + 64);
  if (*a5 == 1)
  {
    v48 = sub_DAB214(a5);
    sub_DAB314(v48 + 48, v75);
  }

  else
  {
    memset(v75, 0, sizeof(v75));
  }

  sub_7CA38(v47, a3, v75, *(a1 + 72));
  v49 = v75[3];
  if (v75[3])
  {
    v50 = v75[4];
    v51 = v75[3];
    if (v75[4] != v75[3])
    {
      do
      {
        v52 = *(v50 - 25);
        v50 -= 6;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = v75[3];
    }

    v75[4] = v49;
    operator delete(v51);
  }

  if (SHIBYTE(v75[2]) < 0)
  {
    operator delete(v75[0]);
    if (*a5 == 1)
    {
      goto LABEL_78;
    }

LABEL_84:
    sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
    if (!sub_7E7E4(3u))
    {
LABEL_116:
      sub_434B40(a1, v7);
      return;
    }

    sub_19594F8(v75);
    sub_7B538(*(a1 + 64), __dst);
    if ((SBYTE7(v69) & 0x80u) == 0)
    {
      v55 = __dst;
    }

    else
    {
      v55 = __dst[0];
    }

    if ((SBYTE7(v69) & 0x80u) == 0)
    {
      v56 = BYTE7(v69);
    }

    else
    {
      v56 = __dst[1];
    }

    v57 = sub_4A5C(v75, v55, v56);
    sub_4A5C(v57, " failed in step ", 16);
    v58 = std::ostream::operator<<();
    v59 = sub_4A5C(v58, " (", 2);
    if ((atomic_load_explicit(&qword_2733B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733B08))
    {
      sub_89C64(0, "ETAModule", 9, &qword_2733AF0);
      __cxa_guard_release(&qword_2733B08);
    }

    if (byte_2733B07 >= 0)
    {
      v60 = byte_2733B07;
    }

    else
    {
      v60 = unk_2733AF8;
    }

    if (byte_2733B07 >= 0)
    {
      v61 = &qword_2733AF0;
    }

    else
    {
      v61 = qword_2733AF0;
    }

    v62 = sub_4A5C(v59, v61, v60);
    v63 = sub_4A5C(v62, ") with error: ", 14);
    sub_D72C3C(v63, v7);
    if (SBYTE7(v69) < 0)
    {
      operator delete(__dst[0]);
      v64 = v81;
      if ((v81 & 0x10) == 0)
      {
LABEL_100:
        if ((v64 & 8) == 0)
        {
          v65 = 0;
          BYTE7(v69) = 0;
LABEL_111:
          *(__dst + v65) = 0;
          sub_7E854(__dst, 3u);
          if (SBYTE7(v69) < 0)
          {
            operator delete(__dst[0]);
          }

          if (v79 < 0)
          {
            operator delete(v78);
          }

          std::locale::~locale(&v75[2]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_116;
        }

        v67 = v75[3];
        v65 = v75[5] - v75[3];
        if ((v75[5] - v75[3]) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_121:
          sub_3244();
        }

LABEL_106:
        if (v65 >= 0x17)
        {
          operator new();
        }

        BYTE7(v69) = v65;
        if (v65)
        {
          memmove(__dst, v67, v65);
        }

        goto LABEL_111;
      }
    }

    else
    {
      v64 = v81;
      if ((v81 & 0x10) == 0)
      {
        goto LABEL_100;
      }
    }

    v66 = v80;
    if (v80 < v77)
    {
      v80 = v77;
      v66 = v77;
    }

    v67 = v76;
    v65 = v66 - v76;
    if (v66 - v76 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_121;
    }

    goto LABEL_106;
  }

  if (*a5 != 1)
  {
    goto LABEL_84;
  }

LABEL_78:
  v53 = *a4;
  if (**a4)
  {
    sub_D7260C(*a4);
    operator delete(*v53);
    *v53 = 0;
    v53[1] = 0;
    v53[2] = 0;
  }

  *v53 = *(a5 + 8);
  v53[2] = *(a5 + 24);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v54 = a4[1];
  if (*v54)
  {
    sub_D714EC(a4[1]);
    operator delete(*v54);
    *v54 = 0;
    v54[1] = 0;
    v54[2] = 0;
  }

  *v54 = *(a5 + 32);
  v54[2] = *(a5 + 48);
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
}

void sub_E10088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733B08);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D71434(v15);
  _Unwind_Resume(a1);
}

void sub_E10220(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 88) = 1065353216;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v20);
    sub_E110E4(a2, &v16);
    sub_D3A150(&v16, &v11);
  }

  sub_434934(&v16, a1);
  LOBYTE(v11) = 0;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v17 = 0uLL;
  v18 = 0;
  v15 = v19;
  sub_D3BF04(a3, &v11);
  if (v11 == 1)
  {
    sub_D3C144(&v12);
  }

  else
  {
    v5 = v13;
    if (v13)
    {
      v6 = *(&v13 + 1);
      v7 = v13;
      if (*(&v13 + 1) != v13)
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
        v7 = v13;
      }

      *(&v13 + 1) = v5;
      operator delete(v7);
    }
  }

  v8 = v17;
  if (v17)
  {
    v9 = *(&v17 + 1);
    v10 = v17;
    if (*(&v17 + 1) != v17)
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
      v10 = v17;
    }

    *(&v17 + 1) = v8;
    operator delete(v10);
  }
}

void sub_E10DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733B28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_D7A354(&STACK[0x378]);
  sub_D3C228(v15);
  _Unwind_Resume(a1);
}

void sub_E10F1C(void ****a1, uint64_t a2)
{
  v4 = *a1;
  if (**a1)
  {
    sub_CEFC14(*a1);
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

void sub_E110D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

__n128 sub_E110E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_E111D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_DAE540(a2, v13);
  if (v13[0] == 1)
  {
    if (!v14.n128_u64[0])
    {
      goto LABEL_16;
    }

    sub_D9F6DC(&v14);
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

void sub_E11C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_528AB4(&STACK[0x380]);
  sub_D9F560(v15);
  _Unwind_Resume(a1);
}

void sub_E11DA4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  ++*(v0 + 80);
  *v1 = 1;
  bzero(v1 + 8, 0x13D0uLL);
  sub_D0F290((v2 + 8));
}

void sub_E129DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_guard_abort(&qword_2733B48);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x930]);
  sub_D7E748(&STACK[0x268]);
  sub_D0F460(v14);
  _Unwind_Resume(a1);
}

void sub_E12BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(&a13);
  _Unwind_Resume(a1);
}

void *sub_E12C04(void *result, uint64_t a2, unint64_t a3)
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

void sub_E12D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_E0A080(&a11);
  *(v11 + 8) = v12;
  sub_DC11B4(&a9);
  _Unwind_Resume(a1);
}

void sub_E12D2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
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
    sub_DAEED4(&v83, *a2, *(a2 + 8), *(a2 + 16), **(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 72), *(a2 + 80), 0, *(a2 + 88), *(a2 + 96));
    sub_CD1654();
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
        sub_D8138C(&v83);
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
      if ((atomic_load_explicit(&qword_2733B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733B68))
      {
        sub_89C64(0, "AnalyticsModule", 15, &qword_2733B50);
        __cxa_guard_release(&qword_2733B68);
      }

      if (byte_2733B67 >= 0)
      {
        v60 = byte_2733B67;
      }

      else
      {
        v60 = unk_2733B58;
      }

      if (byte_2733B67 >= 0)
      {
        v61 = &qword_2733B50;
      }

      else
      {
        v61 = qword_2733B50;
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
    if ((atomic_load_explicit(&qword_2733B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733B68))
    {
      sub_89C64(0, "AnalyticsModule", 15, &qword_2733B50);
      __cxa_guard_release(&qword_2733B68);
    }

    if (byte_2733B67 >= 0)
    {
      v26 = byte_2733B67;
    }

    else
    {
      v26 = unk_2733B58;
    }

    if (byte_2733B67 >= 0)
    {
      v27 = &qword_2733B50;
    }

    else
    {
      v27 = qword_2733B50;
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

void sub_E13928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_guard_abort(&qword_2733B68);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D8138C(&STACK[0x468]);
  sub_CD15B8(v23);
  _Unwind_Resume(a1);
}

void sub_E13A58()
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
    sub_E1471C(v2, v17);
    sub_D35B30(v17, &v13);
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

void sub_E145D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&qword_2733B88);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x270]);
  sub_DB048C(&STACK[0x728]);
  sub_D35A8C(v15);
  _Unwind_Resume(a1);
}

void sub_E1471C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  sub_DAF1A0(a2, v4, v5, v6, v7, v8, &v30, &v29, v25, v9, &v24, v11, &__p);
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

void sub_E148C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_E148EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5706DC((v10 + 1088));
  sub_559E70(va);
  _Unwind_Resume(a1);
}

void sub_E1490C(uint64_t *a1, uint64_t a2)
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

void sub_E14A00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  bzero((a3 + 8), 0x2B8uLL);
  *(a3 + 456) = 0x3FF0000000000000;
  *(a3 + 464) = 0;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 5;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 0u;
  *(a3 + 528) = 0u;
  *(a3 + 544) = 0x7FFFFFFF;
  *(a3 + 632) = 0u;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 609) = 0u;
  *(a3 + 648) = -1;
  *(a3 + 656) = 0x7FFFFFFF;
  *(a3 + 660) = 0;
  *(a3 + 668) = 0;
  *(a3 + 672) = -1;
  *(a3 + 680) = -1;
  *(a3 + 704) = 0;
  if (*(a1 + 8) == &off_2669FE0 && !*a1)
  {
    sub_7E9A4(v13);
    sub_D4104C(v12, *a2, *(a2 + 8), **(a2 + 16));
  }

  sub_434934(&__dst, a1);
  LOBYTE(v18) = 0;
  v19 = __dst;
  __p = v15;
  v21 = v16;
  v15 = 0uLL;
  v16 = 0;
  v22 = v17;
  sub_D72D60(a3, &v18);
  if (v18 == 1)
  {
    sub_5287C0(&v19);
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

  v9 = v15;
  if (v15)
  {
    v10 = *(&v15 + 1);
    v11 = v15;
    if (*(&v15 + 1) != v15)
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
      v11 = v15;
    }

    *(&v15 + 1) = v9;
    operator delete(v11);
  }
}

void sub_E151F0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
    sub_1959728(&STACK[0x2B0]);
    sub_D40D4C(v1);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x2B0]);
  sub_D40D4C(v1);
  _Unwind_Resume(a1);
}

void sub_E15344(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE **a4@<X3>, uint64_t a5@<X8>)
{
  ++*(a1 + 80);
  *a5 = 1;
  *(a5 + 8) = 0;
  v7 = (a5 + 8);
  if (*(a1 + 8) != &off_2669FE0 || *a1 != 0)
  {
    sub_434934(v69, a1);
    v9 = v69[2].n128_u64[0];
    v10 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v69[1];
    *(a5 + 40) = v9;
    *(a5 + 48) = v10;
    *a5 = 0;
    return;
  }

  sub_7E9A4(v77);
  v14 = sub_D33CCC(v76, *a2, **(a2 + 8), *(a2 + 16), *(a2 + 24));
  sub_D32E24(v14, v69);
  v15 = v69[0].n128_u8[0];
  if (*a5 == 1)
  {
    if (!v69[0].n128_u8[0])
    {
      goto LABEL_16;
    }

LABEL_19:
    LOBYTE(v7->__val_) = v69[0].n128_u8[8];
    *a5 = v15;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (v69[0].n128_u8[0])
  {
    v16 = *(a5 + 24);
    if (v16)
    {
      v17 = *(a5 + 32);
      v18 = *(a5 + 24);
      if (v17 != v16)
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
        v18 = *(a5 + 24);
      }

      *(a5 + 32) = v16;
      operator delete(v18);
      v15 = v69[0].n128_u8[0];
    }

    goto LABEL_19;
  }

LABEL_16:
  *v7 = *(v69 + 8);
  *(a5 + 24) = *(&v69[1] + 8);
  *(a5 + 40) = v69[2].n128_u64[1];
  memset(&v69[1].n128_i8[8], 0, 24);
  *(a5 + 48) = v70;
  *a5 = v15;
LABEL_20:
  v19 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v20 = v69[2].n128_u64[0];
    v21 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        if (*(v20 - 1) < 0)
        {
          operator delete(*(v20 - 24));
        }

        v20 -= 32;
      }

      while (v20 != v19);
      v21 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v19;
    operator delete(v21);
  }

LABEL_28:
  v22 = sub_7EAB4(v77);
  v23 = v22;
  v24 = *(a1 + 84);
  v25 = v24 != 0x7FFFFFFF && v24 <= v22;
  if (!v25 || !sub_7E7E4(1u))
  {
    goto LABEL_66;
  }

  sub_19594F8(v69);
  v26 = sub_4A5C(v69, "Found long running (", 20);
  v27 = sub_72140(v26, v23);
  v28 = sub_4A5C(v27, ") ", 2);
  v29 = sub_4A5C(v28, "RequestValidationModule", 23);
  v30 = sub_4A5C(v29, " in ", 4);
  sub_7B538(*(a1 + 64), &__dst);
  if ((v68 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.n128_u64[0];
  }

  if ((v68 & 0x80u) == 0)
  {
    v32 = v68;
  }

  else
  {
    v32 = __dst.n128_i64[1];
  }

  v33 = sub_4A5C(v30, p_dst, v32);
  sub_4A5C(v33, " step ", 6);
  v34 = std::ostream::operator<<();
  v35 = sub_4A5C(v34, " (request: ", 11);
  sub_17541D0(v64);
  sub_E9209C(v64, *(a1 + 56), v65);
  if ((v66 & 0x80u) == 0)
  {
    v36 = v65;
  }

  else
  {
    v36 = v65[0];
  }

  if ((v66 & 0x80u) == 0)
  {
    v37 = v66;
  }

  else
  {
    v37 = v65[1];
  }

  v38 = sub_4A5C(v35, v36, v37);
  sub_4A5C(v38, ")", 1);
  if (v66 < 0)
  {
    operator delete(v65[0]);
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
LABEL_48:
      v39 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_49;
      }

LABEL_53:
      v41 = v74;
      if (v74 < v71)
      {
        v74 = v71;
        v41 = v71;
      }

      v42 = v70;
      v40 = v41 - v70;
      if (v41 - v70 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_110:
        sub_3244();
      }

LABEL_56:
      if (v40 >= 0x17)
      {
        operator new();
      }

      v68 = v40;
      if (v40)
      {
        memmove(&__dst, v42, v40);
      }

      goto LABEL_61;
    }
  }

  else
  {
    sub_1754598(v64);
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__dst.n128_u64[0]);
  v39 = v75;
  if ((v75 & 0x10) != 0)
  {
    goto LABEL_53;
  }

LABEL_49:
  if ((v39 & 8) != 0)
  {
    v42 = v69[1].n128_u64[1];
    v40 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
    if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_110;
    }

    goto LABEL_56;
  }

  v40 = 0;
  v68 = 0;
LABEL_61:
  __dst.n128_u8[v40] = 0;
  sub_7E854(&__dst, 1u);
  if (v68 < 0)
  {
    operator delete(__dst.n128_u64[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  std::locale::~locale(&v69[1]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_66:
  v43 = *(a1 + 88);
  if (v43 == 0x7FFFFFFF || v43 > v23)
  {
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
    if (*a5)
    {
      sub_D73B78(a5);
    }
  }

  else
  {
    __dst.n128_u64[0] = 10;
    __dst.n128_u64[1] = &off_2669FE0;
    sub_434934(v69, &__dst);
    v44 = v69[2].n128_u64[0];
    v45 = v69[1];
    v46 = v69[2].n128_u32[2];
    *(a5 + 8) = v69[0].n128_u8[0];
    *(a5 + 9) = *(v69[0].n128_u64 + 1);
    *(a5 + 16) = v69[0].n128_u64[1];
    *(a5 + 24) = v45;
    *(a5 + 40) = v44;
    *(a5 + 48) = v46;
    *a5 = 0;
    v47 = (a1 + 64);
    v48 = *(a1 + 64);
  }

  memset(v69, 0, sizeof(v69));
  sub_7CA38(v48, a3, v69, *(a1 + 72));
  v49 = v69[1].n128_u64[1];
  if (v69[1].n128_u64[1])
  {
    v50 = v69[2].n128_u64[0];
    v51 = v69[1].n128_u64[1];
    if (v69[2].n128_u64[0] != v69[1].n128_u64[1])
    {
      do
      {
        v52 = *(v50 - 25);
        v50 -= 6;
        if (v52 < 0)
        {
          operator delete(*v50);
        }
      }

      while (v50 != v49);
      v51 = v69[1].n128_u64[1];
    }

    v69[2].n128_u64[0] = v49;
    operator delete(v51);
  }

  if (v69[1].n128_i8[7] < 0)
  {
    operator delete(v69[0].n128_u64[0]);
    if (*a5 == 1)
    {
      goto LABEL_81;
    }
  }

  else if (*a5 == 1)
  {
LABEL_81:
    **a4 = 1;
    return;
  }

  sub_DEBB90(*(a1 + 64), v7, *(a1 + 48), *(a1 + 72));
  if (sub_7E7E4(3u))
  {
    sub_19594F8(v69);
    sub_7B538(*v47, &__dst);
    if ((v68 & 0x80u) == 0)
    {
      v53 = &__dst;
    }

    else
    {
      v53 = __dst.n128_u64[0];
    }

    if ((v68 & 0x80u) == 0)
    {
      v54 = v68;
    }

    else
    {
      v54 = __dst.n128_i64[1];
    }

    v55 = sub_4A5C(v69, v53, v54);
    sub_4A5C(v55, " failed in step ", 16);
    v56 = std::ostream::operator<<();
    v57 = sub_4A5C(v56, " (", 2);
    v58 = sub_4A5C(v57, "RequestValidationModule", 23);
    v59 = sub_4A5C(v58, ") with error: ", 14);
    sub_D72C3C(v59, v7);
    if (v68 < 0)
    {
      operator delete(__dst.n128_u64[0]);
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
LABEL_92:
        if ((v60 & 8) == 0)
        {
          v61 = 0;
          v68 = 0;
LABEL_103:
          __dst.n128_u8[v61] = 0;
          sub_7E854(&__dst, 3u);
          if (v68 < 0)
          {
            operator delete(__dst.n128_u64[0]);
          }

          if (v73 < 0)
          {
            operator delete(v72);
          }

          std::locale::~locale(&v69[1]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_108;
        }

        v63 = v69[1].n128_u64[1];
        v61 = v69[2].n128_u64[1] - v69[1].n128_u64[1];
        if (v69[2].n128_u64[1] - v69[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_112:
          sub_3244();
        }

LABEL_98:
        if (v61 >= 0x17)
        {
          operator new();
        }

        v68 = v61;
        if (v61)
        {
          memmove(&__dst, v63, v61);
        }

        goto LABEL_103;
      }
    }

    else
    {
      v60 = v75;
      if ((v75 & 0x10) == 0)
      {
        goto LABEL_92;
      }
    }

    v62 = v74;
    if (v74 < v71)
    {
      v74 = v71;
      v62 = v71;
    }

    v63 = v70;
    v61 = v62 - v70;
    if (v62 - v70 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

LABEL_108:
  sub_434B40(a1, v7);
}