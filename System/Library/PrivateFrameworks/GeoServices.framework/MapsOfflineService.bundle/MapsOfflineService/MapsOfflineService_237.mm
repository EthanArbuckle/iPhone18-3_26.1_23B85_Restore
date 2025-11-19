void sub_E9F9B0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, __n128 *a5@<X8>)
{
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v10 = *(a1 + 8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  sub_EA292C(v12, &v12[*(a1 + 8)], &v86);
  *v83 = 0u;
  *v84 = 0u;
  v85 = 1065353216;
  v13 = v86;
  v14 = v87;
  if (v86 == v87)
  {
    v15 = 0;
    v16 = v86;
  }

  else
  {
    do
    {
      sub_EA2594(v83, v13);
      v13 += 24;
    }

    while (v13 != v14);
    v15 = v84[1];
    v13 = v86;
    v16 = v87;
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v13) >> 3);
  if (v15 < v17)
  {
    operator new();
  }

  v18 = *(a1 + 8);
  if (v17 < v18)
  {
    operator new();
  }

  v19 = *(a2 + 32);
  if (!v19)
  {
    v75[0] = 0;
    v75[1] = &off_2669FE0;
    sub_434934(a5, v75);
    goto LABEL_120;
  }

  v20 = *(a2 + 40);
  v21 = (v20 + 8);
  if (!v20)
  {
    v21 = 0;
  }

  v22 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v22)
  {
    v33 = 0;
    v27 = v21;
LABEL_33:
    v34 = &v21[v19];
    do
    {
      v35 = *v27++;
      v36 = *(v35 + 488);
      if (!v36)
      {
        v36 = &off_2772310;
      }

      if (*(v36 + 26) == 1)
      {
        ++v33;
      }
    }

    while (v27 != v34);
    goto LABEL_39;
  }

  v23 = 0;
  v24 = 0;
  v25 = v22 + 1;
  v26 = (v22 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v27 = &v21[v26];
  v28 = v21 + 1;
  v29 = v26;
  do
  {
    v30 = *(*(v28 - 1) + 488);
    v31 = *(*v28 + 488);
    if (!v30)
    {
      v30 = &off_2772310;
    }

    if (!v31)
    {
      v31 = &off_2772310;
    }

    v32 = *(v31 + 26);
    if (*(v30 + 26) == 1)
    {
      ++v23;
    }

    if (v32 == 1)
    {
      ++v24;
    }

    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  v33 = v24 + v23;
  if (v25 != v26)
  {
    goto LABEL_33;
  }

LABEL_39:
  __p = 0;
  v81 = 0;
  v82 = 0;
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(*(*(a2 + 40) + 8) + 480))
  {
    v37 = *(*(*(a2 + 40) + 8) + 480);
  }

  else
  {
    v37 = &off_2772310;
  }

  sub_E82D18(v37, &v78);
  if (sub_585D8(&v78))
  {
    v38 = v81;
    if (v81 >= v82)
    {
      v41 = __p;
      v42 = v81 - __p;
      v43 = 0xAAAAAAAAAAAAAAABLL * ((v81 - __p) >> 3);
      v44 = v43 + 1;
      if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      if (0x5555555555555556 * ((v82 - __p) >> 3) > v44)
      {
        v44 = 0x5555555555555556 * ((v82 - __p) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v82 - __p) >> 3) >= 0x555555555555555)
      {
        v45 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        if (v45 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v46 = 8 * ((v81 - __p) >> 3);
      *v46 = v78;
      *(v46 + 16) = v79;
      v40 = 24 * v43 + 24;
      v47 = (v46 - v42);
      if (v41 != v38)
      {
        v48 = v47;
        do
        {
          v49 = *v41;
          v48[2] = *(v41 + 2);
          *v48 = v49;
          v48 += 3;
          v41 += 24;
        }

        while (v41 != v38);
        v41 = __p;
      }

      __p = v47;
      v81 = (v46 + 24);
      v82 = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      v39 = v78;
      *(v81 + 2) = v79;
      *v38 = v39;
      v40 = (v38 + 24);
    }

    v81 = v40;
  }

  v50 = *(a2 + 40);
  if (v50)
  {
    v51 = v50 + 8;
  }

  else
  {
    v51 = 0;
  }

  v52 = *(a2 + 32);
  if (v52)
  {
    v53 = 8 * v52;
    do
    {
      if (*(*v51 + 488))
      {
        v54 = *(*v51 + 488);
      }

      else
      {
        v54 = &off_2772310;
      }

      if (*(v54 + 26) == 1)
      {
        sub_E82D18(v54, v75);
        if (sub_585D8(v75))
        {
          if (*(*v51 + 488))
          {
            v55 = *(*v51 + 488);
          }

          else
          {
            v55 = &off_2772310;
          }

          sub_E82D18(v55, v75);
          sub_EA2434(&__p, v75);
        }
      }

      v51 += 8;
      v53 -= 8;
    }

    while (v53);
  }

  *v75 = 0u;
  *v76 = 0u;
  v77 = 1065353216;
  v56 = __p;
  v57 = v81;
  if (__p == v81)
  {
    v58 = 0;
  }

  else
  {
    do
    {
      if (sub_585D8(v56))
      {
        sub_EA2594(v75, v56);
      }

      v56 += 24;
    }

    while (v56 != v57);
    v58 = v76[1];
    v56 = __p;
    v57 = v81;
  }

  v59 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3);
  if (v58 < v59)
  {
    operator new();
  }

  if (v59 <= v33)
  {
    operator new();
  }

  v60 = v86;
  if (a3 == 1)
  {
    v61 = 0;
  }

  else
  {
    v61 = 24;
  }

  v62 = &v56[v61];
  v63 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
  v64 = (v57 - v62) >> 3;
  if ((0xAAAAAAAAAAAAAAABLL * v64) < v63)
  {
    v63 = 0xAAAAAAAAAAAAAAABLL * v64;
  }

  if (v63)
  {
    v65 = &v86[24 * v63];
    v66 = 24 * v63;
    while (sub_588E8(v60, v62))
    {
      v60 += 24;
      v62 += 24;
      v66 -= 24;
      if (!v66)
      {
        v60 = v65;
        break;
      }
    }
  }

  if (a4 == 7)
  {
    if (v60 == v86 || __p == v62)
    {
      sub_3608D0(&v73, "Got a request for changing waypoints during a nav session in which the UUIDs of the origin (in the input waypoints and the original user route, respectively) do not match, but the origin must not be deleted.");
      sub_434A40(9, &v73, a5);
    }

    else
    {
      if (v60 != v87 || v81 != v62)
      {
        goto LABEL_103;
      }

      sub_3608D0(&v73, "Got a request for changing waypoints during a nav session, but waypoint UUIDs in the input are the same as in the original user route.");
      sub_434A40(9, &v73, a5);
    }

LABEL_112:
    if (v74 < 0)
    {
      operator delete(v73.n128_u64[0]);
    }

    goto LABEL_114;
  }

  if (a3 == 1)
  {
    if (v60 == v87 && v81 == v62)
    {
      goto LABEL_103;
    }

    goto LABEL_111;
  }

  if (v60 != v87)
  {
LABEL_111:
    sub_3608D0(&v73, "Request has waypoint UUID inconsistency between input waypoints and original user route.");
    sub_434A40(9, &v73, a5);
    goto LABEL_112;
  }

LABEL_103:
  v73.n128_u64[0] = 0;
  v73.n128_u64[1] = &off_2669FE0;
  sub_434934(a5, &v73);
LABEL_114:
  v67 = v76[0];
  if (v76[0])
  {
    do
    {
      v68 = *v67;
      operator delete(v67);
      v67 = v68;
    }

    while (v68);
  }

  v69 = v75[0];
  v75[0] = 0;
  if (v69)
  {
    operator delete(v69);
  }

  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

LABEL_120:
  v70 = v84[0];
  if (v84[0])
  {
    do
    {
      v71 = *v70;
      operator delete(v70);
      v70 = v71;
    }

    while (v71);
  }

  v72 = v83[0];
  v83[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_EA025C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_11BD8(&a16);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  sub_11BD8(&a31);
  v33 = *(v31 - 104);
  if (v33)
  {
    *(v31 - 96) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_EA0334(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a3, __p);
  sub_E9B860(v33, a1, a2, a3);
  if (sub_585D8(v33))
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 40);
    if ((v7 & 0x20) != 0)
    {
      operator new();
    }

    if ((v7 & 0x100) == 0)
    {
      operator new();
    }

    if (*(a1 + 64) >= 1)
    {
      operator new();
    }

    if (!v6)
    {
      operator new();
    }

    if (v6 >= 2 && *(a1 + 160) >= 1)
    {
      operator new();
    }

    if (*(a1 + 41))
    {
      sub_E9C020(*(a1 + 312), __p);
      sub_E9BBFC(v33, __p);
      v8 = v31;
      if (v31)
      {
        v9 = v32;
        v10 = v31;
        if (v32 != v31)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 3));
            }

            v9 -= 4;
          }

          while (v9 != v8);
          v10 = v31;
        }

        v32 = v8;
        operator delete(v10);
      }
    }

    v11 = *(a1 + 96);
    if (v11)
    {
      v12 = (v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 88);
    if (v13)
    {
      v14 = &v12[v13];
      do
      {
        sub_E9C020(*v12, __p);
        sub_E9BBFC(v33, __p);
        v16 = v31;
        if (v31)
        {
          v17 = v32;
          v15 = v31;
          if (v32 != v31)
          {
            do
            {
              if (*(v17 - 1) < 0)
              {
                operator delete(*(v17 - 3));
              }

              v17 -= 4;
            }

            while (v17 != v16);
            v15 = v31;
          }

          v32 = v16;
          operator delete(v15);
        }

        ++v12;
      }

      while (v12 != v14);
    }

    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = (v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 160);
    if (v20)
    {
      v21 = &v19[v20];
      do
      {
        sub_E9C020(*v19, __p);
        sub_E9BBFC(v33, __p);
        v23 = v31;
        if (v31)
        {
          v24 = v32;
          v22 = v31;
          if (v32 != v31)
          {
            do
            {
              if (*(v24 - 1) < 0)
              {
                operator delete(*(v24 - 3));
              }

              v24 -= 4;
            }

            while (v24 != v23);
            v22 = v31;
          }

          v32 = v23;
          operator delete(v22);
        }

        ++v19;
      }

      while (v19 != v21);
    }

    if (sub_E81C28(a1))
    {
      v25 = sub_394BD0();
      v26 = *(a1 + 384) ? *(a1 + 384) : &off_27721B8;
      sub_E9EC48(a1 + 152, v26, 3, v25, __p);
      sub_E9BBFC(v33, __p);
      v27 = v31;
      if (v31)
      {
        v28 = v32;
        v29 = v31;
        if (v32 != v31)
        {
          do
          {
            if (*(v28 - 1) < 0)
            {
              operator delete(*(v28 - 3));
            }

            v28 -= 4;
          }

          while (v28 != v27);
          v29 = v31;
        }

        v32 = v27;
        operator delete(v29);
      }
    }
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }
}

void sub_EA0840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(v25);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_CF3C94(v25);
  _Unwind_Resume(a1);
}

uint64_t sub_EA0910(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA0A90((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA0A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA0A90(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA0BB0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA0D30((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA0D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA0D30(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA0E50(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA0FD0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA0FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA0FD0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA10F0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA1270((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA125C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA1270(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA1390(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA1510((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA14FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA1510(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA1630(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA17B0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA179C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA17B0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA18D0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA1A50((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA1A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA1A50(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA1B70(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA1CF0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA1CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA1CF0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA1E10(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA1F90((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA1F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA1F90(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA20B0(uint64_t *a1, char *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_EA2230((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_EA221C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_EA2230(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_EA2350(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      sub_14CD334(v9, *v6);
      sub_E88C3C(v9, &v10);
      v7 = sub_585D8(&v10);
      sub_154CF7C(v9);
      if (v7)
      {
        sub_14CD334(v8, *v6);
        sub_E88C3C(v8, &v10);
        sub_EA2434(a3, &v10);
        sub_154CF7C(v8);
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_EA240C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

void sub_EA2420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

void sub_EA2434(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  if (v7 != v3)
  {
    v14 = v13;
    do
    {
      v15 = *v7;
      *(v14 + 16) = v7[2];
      *v14 = v15;
      v14 += 24;
      v7 += 3;
    }

    while (v7 != v3);
    v7 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

unsigned __int8 *sub_EA2594(void *a1, unsigned __int8 *a2)
{
  v4 = (sub_588E0(a2) + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = (sub_588D8(a2) + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = (0x2127599BF4325C37 * (v5 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v5 ^ (v5 >> 23))) >> 47);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (0x2127599BF4325C37 * (v5 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v5 ^ (v5 >> 23))) >> 47);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = *(v11 + 1);
      if (v13 == v6)
      {
        if (sub_588E8(v11 + 16, a2))
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = *(v11 + 1);
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (!sub_588E8(v11 + 16, a2))
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t sub_EA292C(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      sub_14CD334(v9, *v6);
      sub_E88C3C(v9, &v10);
      v7 = sub_585D8(&v10);
      sub_154CF7C(v9);
      if (v7)
      {
        sub_14CD334(v8, *v6);
        sub_E88C3C(v8, &v10);
        sub_EA2434(a3, &v10);
        sub_154CF7C(v8);
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_EA29E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

void sub_EA29FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EA2A10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      v6 = *(a2 + 47);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 32);
      }

      if (v6)
      {
        v7 = result;
        v8 = result;
        sub_38004(a3, result);
        sub_1211C30(v43, 0, 0);
        sub_194DB28(v43, a2);
        if ((atomic_load_explicit(&qword_27BACB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27BACB8))
        {
          sub_EA3394(&unk_27BACC0);
        }

        v9 = *a3;
        if ((v44 & 2) == 0)
        {
          goto LABEL_13;
        }

        v10 = sin(fmin(fmax(v48 / 10000000.0, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        v11 = ((log((v10 + 1.0) / (1.0 - v10)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v11 >= 0xFFFFFFFE)
        {
          v11 = -2;
        }

        v9[1] = v11;
        if ((v44 & 1) == 0)
        {
          goto LABEL_13;
        }

        sub_121100C(v37, v47 & 0xFFFFFFFFFFFFFFFELL);
        v36 = sub_1211464(v37, byte_27BADBC);
        if (v7 != 1)
        {
          v35 = v7;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = v48;
          v16 = v48 >> 63;
          v17 = 1;
          v18 = 4;
          do
          {
            if (v14 < v45 && v17 - v13 == *(v46 + 4 * v14))
            {
              ++v14;
              v13 = v17;
              LOBYTE(v16) = v16 ^ 1;
            }

            v19 = sub_1211840(v37, v36);
            v20 = v19;
            if (v16)
            {
              v20 = -v19;
            }

            v15 += v20;
            if (v15 != v15)
            {
              break;
            }

            v21 = *a3;
            v22 = sin(fmin(fmax(v15 / 10000000.0, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            v23 = ((log((v22 + 1.0) / (1.0 - v22)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v23 >= 0xFFFFFFFE)
            {
              v23 = -2;
            }

            v21[v18] = v23;
            v12 = ++v17 >= v8;
            v18 += 3;
          }

          while (v8 != v17);
          v7 = v35;
          if (!v12)
          {
            v9 = *a3;
LABEL_13:
            a3[1] = v9;
            return sub_1211D48(v43);
          }
        }

        sub_1211C30(v37, 0, 0);
        sub_194DB28(v37, a2 + 24);
        if ((atomic_load_explicit(&qword_27BACB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27BACB8))
        {
          sub_EA3394(&unk_27BACC0);
        }

        v24 = *a3;
        if ((v38 & 2) != 0)
        {
          *v24 = ((v42 / 10000000.0 + 180.0) / 360.0 * 4294967300.0);
          if (v38)
          {
            sub_121100C(v49, v41 & 0xFFFFFFFFFFFFFFFELL);
            v25 = sub_1211464(v49, byte_27BADBC);
            if (v7 == 1)
            {
              goto LABEL_32;
            }

            v26 = v25;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = v42;
            v31 = v42 >> 63;
            for (i = 1; i != v7; v27 = i >= v7)
            {
              if (v29 < v39 && i - v28 == *(v40 + 4 * v29))
              {
                ++v29;
                v28 = i;
                LOBYTE(v31) = v31 ^ 1;
              }

              v33 = sub_1211840(v49, v26);
              v34 = v33;
              if (v31)
              {
                v34 = -v33;
              }

              v30 += v34;
              if (v30 != v30)
              {
                break;
              }

              *(*a3 + 12 * i++) = ((v30 / 10000000.0 + 180.0) / 360.0 * 4294967300.0);
            }

            if (v27)
            {
              goto LABEL_32;
            }

            v24 = *a3;
          }
        }

        a3[1] = v24;
LABEL_32:
        sub_1211D48(v37);
        return sub_1211D48(v43);
      }
    }
  }

  return result;
}

void sub_EA2EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  __cxa_guard_abort(&qword_27BACB8);
  sub_1211D48(va);
  sub_1211D48(va1);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EA2F78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      v6 = result;
      sub_32EF70(a3, result);
      sub_1211C30(v17, 0, 0);
      sub_194DB28(v17, a2);
      if ((atomic_load_explicit(&qword_27BACB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27BACB8))
      {
        sub_EA3394(&unk_27BACC0);
      }

      if ((v18 & 2) == 0)
      {
        goto LABEL_8;
      }

      **a3 = v22;
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }

      sub_121100C(v23, v21 & 0xFFFFFFFFFFFFFFFELL);
      v7 = sub_1211464(v23, byte_27BADBC);
      if (v6 != 1)
      {
        v8 = v7;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v22;
        v13 = v22 >> 63;
        for (i = 1; i != v6; v9 = i >= v6)
        {
          if (v11 < v19 && i - v10 == *(v20 + 4 * v11))
          {
            ++v11;
            v10 = i;
            LOBYTE(v13) = v13 ^ 1;
          }

          v15 = sub_1211840(v23, v8);
          v16 = v15;
          if (v13)
          {
            v16 = -v15;
          }

          v12 += v16;
          if (v12 != v12)
          {
            break;
          }

          *(*a3 + 8 * i++) = v12;
        }

        if (!v9)
        {
LABEL_8:
          a3[1] = *a3;
        }
      }

      return sub_1211D48(v17);
    }
  }

  return result;
}

void sub_EA3134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_guard_abort(&qword_27BACB8);
  sub_1211D48(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_EA3180@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      v6 = result;
      sub_617214(a3, result);
      sub_1212598(v19, 0, 0);
      if (sub_194DB28(v19, a2))
      {
        if ((atomic_load_explicit(&qword_27BACB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27BACB8))
        {
          sub_EA3394(&unk_27BACC0);
        }

        v7 = *a3;
        if ((v20 & 2) == 0)
        {
          goto LABEL_20;
        }

        *v7 = v24 + 978307200;
        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        sub_121100C(v25, v23 & 0xFFFFFFFFFFFFFFFELL);
        v8 = sub_1211464(v25, byte_27BADBC);
        if (v6 == 1)
        {
          return sub_12126B4(v19);
        }

        v9 = v8;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = v24;
        v14 = v24 >> 63;
        for (i = 1; i != v6; v10 = i >= v6)
        {
          if (v12 < v21 && i - v11 == *(v22 + 4 * v12))
          {
            ++v12;
            v11 = i;
            LOBYTE(v14) = v14 ^ 1;
          }

          v16 = sub_1211840(v25, v9);
          v17 = v16;
          if (v14)
          {
            v17 = -v16;
          }

          v18 = __OFADD__(v13, v17);
          v13 += v17;
          if (v18)
          {
            break;
          }

          *(*a3 + 4 * i++) = v13 + 978307200;
        }

        if (v10)
        {
          return sub_12126B4(v19);
        }
      }

      v7 = *a3;
LABEL_20:
      a3[1] = v7;
      return sub_12126B4(v19);
    }
  }

  return result;
}

void sub_EA3348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27BACB8);
  sub_12126B4(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_EA3394(uint64_t a1)
{
  *a1 = 0x4039000000000000;
  *(a1 + 8) = 5000;
  *(a1 + 16) = xmmword_2297CF0;
  *(a1 + 32) = xmmword_2297D00;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 20000000;
  *(a1 + 64) = 0x3FF199999999999ALL;
  *(a1 + 72) = 0x3E800002710;
  *(a1 + 80) = 10000;
  *(a1 + 84) = 10;
  *(a1 + 88) = 0x3200000064;
  *(a1 + 96) = 2;
  *(a1 + 104) = 0x4049000000000000;
  *(a1 + 112) = 0x7D000000000;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 128) = 0xBB800000258;
  *(a1 + 208) = 0;
  *(a1 + 136) = xmmword_22ACE20;
  *(a1 + 200) = 0x3FD999999999999ALL;
  *(a1 + 184) = unk_22ACE50;
  *(a1 + 168) = xmmword_22ACE40;
  *(a1 + 152) = unk_22ACE30;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  operator new();
}

void sub_EA3518(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 216) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA3534(uint64_t a1, uint64_t a2, double a3)
{
  *(a2 + 16) |= 1u;
  v5 = *(a2 + 24);
  if (!v5)
  {
    v6 = *(a2 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v5 = sub_16F5828(v7);
    *(a2 + 24) = v5;
  }

  LODWORD(a3) = *(a1 + 4);
  v8 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
  v9 = atan((v8 + -1.0 / v8) * 0.5);
  HIDWORD(v10) = 1078765020;
  v11 = *(v5 + 40);
  *(v5 + 40) = v11 | 1;
  LODWORD(v10) = *a1;
  *(v5 + 40) = v11 | 3;
  *(v5 + 48) = v9 * 57.2957795;
  *(v5 + 56) = v10 * 360.0 / 4294967300.0 + -180.0;
  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  if (v13 == v12)
  {
    v20 = 0;
    v21 = *(a2 + 16);
    *(a2 + 36) = 0;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    goto LABEL_104;
  }

  v14 = v12 - v13 - 4;
  v15 = (v14 >> 2) + 1;
  if (v14 < 0xC)
  {
    LOBYTE(v16) = 0;
    LOBYTE(v17) = 0;
    LOBYTE(v18) = 0;
    v19 = *(a1 + 72);
    goto LABEL_20;
  }

  if (v14 < 0x7C)
  {
    v16 = 0;
    LOWORD(v17) = 0;
    v18 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  v23 = 0uLL;
  v22 = v15 & 0x7FFFFFFFFFFFFFE0;
  v24.i64[0] = 0x400000004;
  v24.i64[1] = 0x400000004;
  v25 = v13 + 4;
  v26.i64[0] = 0x500000005;
  v26.i64[1] = 0x500000005;
  v27.i64[0] = 0x300000003;
  v27.i64[1] = 0x300000003;
  v28 = v15 & 0x7FFFFFFFFFFFFFE0;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  do
  {
    v35 = v25[-2];
    v34 = v25[-1];
    v37 = v25[-4];
    v36 = v25[-3];
    v39 = v25[2];
    v38 = v25[3];
    v41 = *v25;
    v40 = v25[1];
    v25 += 8;
    v23 = vorrq_s8(v23, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v37, v24), vceqq_s32(v36, v24)), vuzp1q_s16(vceqq_s32(v35, v24), vceqq_s32(v34, v24))));
    v29 = vorrq_s8(v29, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v41, v24), vceqq_s32(v40, v24)), vuzp1q_s16(vceqq_s32(v39, v24), vceqq_s32(v38, v24))));
    v32 = vorrq_s8(v32, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v37, v26), vceqq_s32(v36, v26)), vuzp1q_s16(vceqq_s32(v35, v26), vceqq_s32(v34, v26))));
    v33 = vorrq_s8(v33, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v41, v26), vceqq_s32(v40, v26)), vuzp1q_s16(vceqq_s32(v39, v26), vceqq_s32(v38, v26))));
    v30 = vorrq_s8(v30, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v37, v27), vceqq_s32(v36, v27)), vuzp1q_s16(vceqq_s32(v35, v27), vceqq_s32(v34, v27))));
    v31 = vorrq_s8(v31, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v41, v27), vceqq_s32(v40, v27)), vuzp1q_s16(vceqq_s32(v39, v27), vceqq_s32(v38, v27))));
    v28 -= 32;
  }

  while (v28);
  v16 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v29, v23), 7uLL))) & 1;
  v17 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v31, v30), 7uLL))) & 1;
  v18 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v33, v32), 7uLL))) & 1;
  if (v15 == v22)
  {
    goto LABEL_21;
  }

  if ((v15 & 0x1C) != 0)
  {
LABEL_15:
    v42 = v16;
    v43 = v17;
    v44 = v18;
    v19 = (v13 + 4 * (v15 & 0x7FFFFFFFFFFFFFFCLL));
    v45 = (v13 + 4 * v22);
    v46 = v22 - (v15 & 0x7FFFFFFFFFFFFFFCLL);
    v47.i64[0] = 0x400000004;
    v47.i64[1] = 0x400000004;
    v48.i64[0] = 0x500000005;
    v48.i64[1] = 0x500000005;
    v49.i64[0] = 0x300000003;
    v49.i64[1] = 0x300000003;
    do
    {
      v50 = *v45++;
      v42 = vorr_s8(v42, vmovn_s32(vceqq_s32(v50, v47)));
      v44 = vorr_s8(v44, vmovn_s32(vceqq_s32(v50, v48)));
      v43 = vorr_s8(v43, vmovn_s32(vceqq_s32(v50, v49)));
      v46 += 4;
    }

    while (v46);
    v16 = vmaxv_u16(vcltz_s16(vshl_n_s16(v42, 0xFuLL))) & 1;
    LOWORD(v17) = vmaxv_u16(vcltz_s16(vshl_n_s16(v43, 0xFuLL))) & 1;
    v18 = vmaxv_u16(vcltz_s16(vshl_n_s16(v44, 0xFuLL))) & 1;
    if (v15 == (v15 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = (v13 + 4 * v22);
  do
  {
LABEL_20:
    v51 = v19->i32[0];
    v19 = (v19 + 4);
    LOBYTE(v16) = v16 | (v51 == 4);
    LOBYTE(v18) = v18 | (v51 == 5);
    LOBYTE(v17) = v17 | (v51 == 3);
  }

  while (v19 != v12);
LABEL_21:
  if ((v18 & 1 & v16) != 0)
  {
    v52 = 3;
  }

  else
  {
    v52 = 1;
  }

  if (v18)
  {
    if ((v16 & 1) == 0)
    {
      v52 = 2;
    }
  }

  else
  {
    if (v17)
    {
      v53 = 4;
    }

    else
    {
      v53 = 0;
    }

    if ((v16 & 1) == 0)
    {
      v52 = v53;
    }
  }

  v21 = *(a2 + 16);
  *(a2 + 40) = v52;
  if (v14 < 0xC)
  {
    LOBYTE(v54) = 0;
    LOBYTE(v55) = 0;
    LOBYTE(v56) = 0;
    v57 = v13;
    goto LABEL_45;
  }

  if (v14 < 0x7C)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v58 = 0;
    goto LABEL_40;
  }

  v59 = 0uLL;
  v58 = v15 & 0x7FFFFFFFFFFFFFE0;
  v60.i64[0] = 0x100000001;
  v60.i64[1] = 0x100000001;
  v61 = v13 + 4;
  v62.i64[0] = 0x200000002;
  v62.i64[1] = 0x200000002;
  v63 = v15 & 0x7FFFFFFFFFFFFFE0;
  v64 = 0uLL;
  v65 = 0uLL;
  v66 = 0uLL;
  v67 = 0uLL;
  v68 = 0uLL;
  do
  {
    v70 = v61[-2];
    v69 = v61[-1];
    v72 = v61[-4];
    v71 = v61[-3];
    v74 = v61[2];
    v73 = v61[3];
    v76 = *v61;
    v75 = v61[1];
    v61 += 8;
    v59 = vorrq_s8(v59, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v72, v60), vceqq_s32(v71, v60)), vuzp1q_s16(vceqq_s32(v70, v60), vceqq_s32(v69, v60))));
    v64 = vorrq_s8(v64, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v76, v60), vceqq_s32(v75, v60)), vuzp1q_s16(vceqq_s32(v74, v60), vceqq_s32(v73, v60))));
    v67 = vorrq_s8(v67, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v72, v62), vceqq_s32(v71, v62)), vuzp1q_s16(vceqq_s32(v70, v62), vceqq_s32(v69, v62))));
    v68 = vorrq_s8(v68, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v76, v62), vceqq_s32(v75, v62)), vuzp1q_s16(vceqq_s32(v74, v62), vceqq_s32(v73, v62))));
    v65 = vorrq_s8(v65, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v72), vceqzq_s32(v71)), vuzp1q_s16(vceqzq_s32(v70), vceqzq_s32(v69))));
    v66 = vorrq_s8(v66, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v76), vceqzq_s32(v75)), vuzp1q_s16(vceqzq_s32(v74), vceqzq_s32(v73))));
    v63 -= 32;
  }

  while (v63);
  v54 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v64, v59), 7uLL))) & 1;
  v55 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v66, v65), 7uLL))) & 1;
  v56 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v68, v67), 7uLL))) & 1;
  if (v15 == v58)
  {
    goto LABEL_46;
  }

  if ((v15 & 0x1C) != 0)
  {
LABEL_40:
    v57 = (v13 + 4 * (v15 & 0x7FFFFFFFFFFFFFFCLL));
    v77 = v54;
    v78 = v55;
    v79 = v56;
    v80 = (v13 + 4 * v58);
    v81 = v58 - (v15 & 0x7FFFFFFFFFFFFFFCLL);
    v82.i64[0] = 0x100000001;
    v82.i64[1] = 0x100000001;
    v83.i64[0] = 0x200000002;
    v83.i64[1] = 0x200000002;
    do
    {
      v84 = *v80++;
      v77 = vorr_s8(v77, vmovn_s32(vceqq_s32(v84, v82)));
      v79 = vorr_s8(v79, vmovn_s32(vceqq_s32(v84, v83)));
      v78 = vorr_s8(v78, vmovn_s32(vceqzq_s32(v84)));
      v81 += 4;
    }

    while (v81);
    v54 = vmaxv_u16(vcltz_s16(vshl_n_s16(v77, 0xFuLL))) & 1;
    v55 = vmaxv_u16(vcltz_s16(vshl_n_s16(v78, 0xFuLL))) & 1;
    v56 = vmaxv_u16(vcltz_s16(vshl_n_s16(v79, 0xFuLL))) & 1;
    if (v15 == (v15 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v57 = (v13 + 4 * v58);
  do
  {
LABEL_45:
    v85 = v57->i32[0];
    v57 = (v57 + 4);
    LOBYTE(v54) = v54 | (v85 == 1);
    LOBYTE(v56) = v56 | (v85 == 2);
    LOBYTE(v55) = v55 | (v85 == 0);
  }

  while (v57 != v12);
LABEL_46:
  if ((v56 & 1 & v54) != 0)
  {
    v86 = 3;
  }

  else
  {
    v86 = 1;
  }

  if (v56)
  {
    if ((v54 & 1) == 0)
    {
      v86 = 2;
    }
  }

  else
  {
    if (v55)
    {
      v87 = 4;
    }

    else
    {
      v87 = 0;
    }

    if ((v54 & 1) == 0)
    {
      v86 = v87;
    }
  }

  *(a2 + 36) = v86;
  if (v14 < 0xC)
  {
    LOBYTE(v88) = 0;
    LOBYTE(v89) = 0;
    LOBYTE(v90) = 0;
    v91 = v13;
    goto LABEL_70;
  }

  if (v14 < 0x7C)
  {
    v88 = 0;
    LOWORD(v89) = 0;
    v90 = 0;
    v92 = 0;
    goto LABEL_65;
  }

  v93 = 0uLL;
  v92 = v15 & 0x7FFFFFFFFFFFFFE0;
  v94.i64[0] = 0x700000007;
  v94.i64[1] = 0x700000007;
  v95 = v13 + 4;
  v96.i64[0] = 0x800000008;
  v96.i64[1] = 0x800000008;
  v97.i64[0] = 0x600000006;
  v97.i64[1] = 0x600000006;
  v98 = v15 & 0x7FFFFFFFFFFFFFE0;
  v99 = 0uLL;
  v100 = 0uLL;
  v101 = 0uLL;
  v102 = 0uLL;
  v103 = 0uLL;
  do
  {
    v105 = v95[-2];
    v104 = v95[-1];
    v107 = v95[-4];
    v106 = v95[-3];
    v109 = v95[2];
    v108 = v95[3];
    v111 = *v95;
    v110 = v95[1];
    v95 += 8;
    v93 = vorrq_s8(v93, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v107, v94), vceqq_s32(v106, v94)), vuzp1q_s16(vceqq_s32(v105, v94), vceqq_s32(v104, v94))));
    v99 = vorrq_s8(v99, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v111, v94), vceqq_s32(v110, v94)), vuzp1q_s16(vceqq_s32(v109, v94), vceqq_s32(v108, v94))));
    v102 = vorrq_s8(v102, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v107, v96), vceqq_s32(v106, v96)), vuzp1q_s16(vceqq_s32(v105, v96), vceqq_s32(v104, v96))));
    v103 = vorrq_s8(v103, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v111, v96), vceqq_s32(v110, v96)), vuzp1q_s16(vceqq_s32(v109, v96), vceqq_s32(v108, v96))));
    v100 = vorrq_s8(v100, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v107, v97), vceqq_s32(v106, v97)), vuzp1q_s16(vceqq_s32(v105, v97), vceqq_s32(v104, v97))));
    v101 = vorrq_s8(v101, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v111, v97), vceqq_s32(v110, v97)), vuzp1q_s16(vceqq_s32(v109, v97), vceqq_s32(v108, v97))));
    v98 -= 32;
  }

  while (v98);
  v88 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v99, v93), 7uLL))) & 1;
  v89 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v101, v100), 7uLL))) & 1;
  v90 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v103, v102), 7uLL))) & 1;
  if (v15 == v92)
  {
    goto LABEL_71;
  }

  if ((v15 & 0x1C) != 0)
  {
LABEL_65:
    v112 = v88;
    v113 = v89;
    v114 = v90;
    v91 = (v13 + 4 * (v15 & 0x7FFFFFFFFFFFFFFCLL));
    v115 = (v13 + 4 * v92);
    v116 = v92 - (v15 & 0x7FFFFFFFFFFFFFFCLL);
    v117.i64[0] = 0x700000007;
    v117.i64[1] = 0x700000007;
    v118.i64[0] = 0x800000008;
    v118.i64[1] = 0x800000008;
    v119.i64[0] = 0x600000006;
    v119.i64[1] = 0x600000006;
    do
    {
      v120 = *v115++;
      v112 = vorr_s8(v112, vmovn_s32(vceqq_s32(v120, v117)));
      v114 = vorr_s8(v114, vmovn_s32(vceqq_s32(v120, v118)));
      v113 = vorr_s8(v113, vmovn_s32(vceqq_s32(v120, v119)));
      v116 += 4;
    }

    while (v116);
    v88 = vmaxv_u16(vcltz_s16(vshl_n_s16(v112, 0xFuLL))) & 1;
    LOWORD(v89) = vmaxv_u16(vcltz_s16(vshl_n_s16(v113, 0xFuLL))) & 1;
    v90 = vmaxv_u16(vcltz_s16(vshl_n_s16(v114, 0xFuLL))) & 1;
    if (v15 == (v15 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v91 = (v13 + 4 * v92);
  do
  {
LABEL_70:
    v121 = v91->i32[0];
    v91 = (v91 + 4);
    LOBYTE(v88) = v88 | (v121 == 7);
    LOBYTE(v90) = v90 | (v121 == 8);
    LOBYTE(v89) = v89 | (v121 == 6);
  }

  while (v91 != v12);
LABEL_71:
  if ((v90 & 1 & v88) != 0)
  {
    v122 = 3;
  }

  else
  {
    v122 = 1;
  }

  if (v90)
  {
    if ((v88 & 1) == 0)
    {
      v122 = 2;
    }
  }

  else
  {
    if (v89)
    {
      v123 = 4;
    }

    else
    {
      v123 = 0;
    }

    if ((v88 & 1) == 0)
    {
      v122 = v123;
    }
  }

  *(a2 + 56) = v122;
  if (v14 < 0xC)
  {
    LOBYTE(v124) = 0;
    LOBYTE(v125) = 0;
    v126 = v13;
    goto LABEL_95;
  }

  if (v14 >= 0x7C)
  {
    v127 = v15 & 0x7FFFFFFFFFFFFFE0;
    v128 = v13 + 4;
    v129 = 0uLL;
    v130.i64[0] = 0x900000009;
    v130.i64[1] = 0x900000009;
    v131.i64[0] = 0xA0000000ALL;
    v131.i64[1] = 0xA0000000ALL;
    v132 = v15 & 0x7FFFFFFFFFFFFFE0;
    v133 = 0uLL;
    v134 = 0uLL;
    v135 = 0uLL;
    do
    {
      v137 = v128[-2];
      v136 = v128[-1];
      v139 = v128[-4];
      v138 = v128[-3];
      v141 = v128[2];
      v140 = v128[3];
      v143 = *v128;
      v142 = v128[1];
      v128 += 8;
      v129 = vorrq_s8(v129, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v139, v130), vceqq_s32(v138, v130)), vuzp1q_s16(vceqq_s32(v137, v130), vceqq_s32(v136, v130))));
      v133 = vorrq_s8(v133, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v143, v130), vceqq_s32(v142, v130)), vuzp1q_s16(vceqq_s32(v141, v130), vceqq_s32(v140, v130))));
      v134 = vorrq_s8(v134, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v139, v131), vceqq_s32(v138, v131)), vuzp1q_s16(vceqq_s32(v137, v131), vceqq_s32(v136, v131))));
      v135 = vorrq_s8(v135, vuzp1q_s8(vuzp1q_s16(vceqq_s32(v143, v131), vceqq_s32(v142, v131)), vuzp1q_s16(vceqq_s32(v141, v131), vceqq_s32(v140, v131))));
      v132 -= 32;
    }

    while (v132);
    v124 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v133, v129), 7uLL))) & 1;
    v125 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v135, v134), 7uLL))) & 1;
    if (v15 == v127)
    {
      goto LABEL_96;
    }

    if ((v15 & 0x1C) == 0)
    {
      v126 = (v13 + 4 * v127);
      do
      {
LABEL_95:
        v151 = v126->i32[0];
        v126 = (v126 + 4);
        LOBYTE(v124) = v124 | (v151 == 9);
        LOBYTE(v125) = v125 | (v151 == 10);
      }

      while (v126 != v12);
      goto LABEL_96;
    }
  }

  else
  {
    v124 = 0;
    v125 = 0;
    v127 = 0;
  }

  v126 = (v13 + 4 * (v15 & 0x7FFFFFFFFFFFFFFCLL));
  v144 = v124;
  v145 = v125;
  v146 = (v13 + 4 * v127);
  v147 = v127 - (v15 & 0x7FFFFFFFFFFFFFFCLL);
  v148.i64[0] = 0x900000009;
  v148.i64[1] = 0x900000009;
  v149.i64[0] = 0xA0000000ALL;
  v149.i64[1] = 0xA0000000ALL;
  do
  {
    v150 = *v146++;
    v144 = vorr_s8(v144, vmovn_s32(vceqq_s32(v150, v148)));
    v145 = vorr_s8(v145, vmovn_s32(vceqq_s32(v150, v149)));
    v147 += 4;
  }

  while (v147);
  v124 = vmaxv_u16(vcltz_s16(vshl_n_s16(v144, 0xFuLL))) & 1;
  v125 = vmaxv_u16(vcltz_s16(vshl_n_s16(v145, 0xFuLL))) & 1;
  if (v15 != (v15 & 0x7FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_95;
  }

LABEL_96:
  if ((v124 & 1 & v125) != 0)
  {
    v152 = 3;
  }

  else
  {
    v152 = 1;
  }

  if (v125)
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  if (v124)
  {
    v20 = v152;
  }

LABEL_104:
  v153 = v21 | 0x28C;
  *(a2 + 16) = v21 | 0x28C;
  *(a2 + 64) = v20;
  v154 = *(a1 + 96);
  if ((v154 - 1) > 1)
  {
    v155 = *(a1 + 104);
    if (v155 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

LABEL_108:
    *(a2 + 16) = v153 | 0x20;
    *(a2 + 48) = v155;
    return;
  }

  v153 = v21 | 0x29C;
  *(a2 + 16) = v21 | 0x29C;
  *(a2 + 44) = v154;
  v155 = *(a1 + 104);
  if (v155 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_108;
  }
}

void sub_EA40DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    v3 = &off_277E5E8;
  }

  if ((~*(v3 + 10) & 3) != 0)
  {
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    *a2 = -1;
    *(a2 + 8) = 0x7FFFFFFF;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;
    *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 48) = -1935635296;
    *(a2 + 56) = 0;
    *(a2 + 63) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 112) = 100;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = vnegq_f64(v12);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    return;
  }

  v5 = *(v3 + 7);
  v6 = -1;
  if (v5 <= 180.0)
  {
    v7 = *(v3 + 6);
    if (fabs(v7) <= 85.0511288 && v5 >= -180.0)
    {
      v8 = sin(fmin(fmax(v7, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v9) = ((log((v8 + 1.0) / (1.0 - v8)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v9 >= 0xFFFFFFFE)
      {
        v9 = 4294967294;
      }

      else
      {
        v9 = v9;
      }

      v6 = ((v5 + 180.0) / 360.0 * 4294967300.0) | (v9 << 32);
    }
  }

  v29 = v6;
  LODWORD(v30) = 0x7FFFFFFF;
  sub_E6793C(&v22, &v29);
  v10 = 0;
  v11 = *(a1 + 36);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      operator new();
    }

    if (v11 == 4)
    {
      operator new();
    }
  }

  else
  {
    if (v11 == 1)
    {
      operator new();
    }

    if (v11 == 2)
    {
      operator new();
    }
  }

  v13 = *(a1 + 40);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      operator new();
    }

    if (v13 == 4)
    {
      operator new();
    }
  }

  else
  {
    if (v13 == 1)
    {
      operator new();
    }

    if (v13 == 2)
    {
      operator new();
    }
  }

  v14 = *(a1 + 56);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      operator new();
    }

    if (v14 == 4)
    {
      operator new();
    }
  }

  else
  {
    if (v14 == 1)
    {
      operator new();
    }

    if (v14 == 2)
    {
      operator new();
    }
  }

  v15 = *(a1 + 64);
  if (v15 <= 2)
  {
    if (v15 == 1)
    {
      operator new();
    }

    if (v15 == 2)
    {
      operator new();
    }

    goto LABEL_55;
  }

  if (v15 == 3)
  {
    operator new();
  }

  if (v15 == 4 && sub_7E7E4(1u))
  {
    sub_19594F8(&v29);
    sub_4A5C(&v29, "Unexpected Parking RoadAccessPoint with Destination direction.", 62);
    if ((v38 & 0x10) != 0)
    {
      v17 = v37;
      if (v37 < v34)
      {
        v37 = v34;
        v17 = v34;
      }

      v18 = &v33;
    }

    else
    {
      if ((v38 & 8) == 0)
      {
        v16 = 0;
        v28 = 0;
        goto LABEL_69;
      }

      v18 = v32;
      v17 = v32[2];
    }

    v21 = *v18;
    v16 = v17 - *v18;
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v28 = v17 - *v18;
    if (v16)
    {
      memmove(&__dst, v21, v16);
    }

LABEL_69:
    *(&__dst + v16) = 0;
    sub_7E854(&__dst, 1u);
    if (v28 < 0)
    {
      operator delete(__dst);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    std::locale::~locale(&v31);
    std::ostream::~ostream();
    std::ios::~ios();
    v19 = __p;
    if (!__p)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_55:
  v19 = __p;
  if (__p)
  {
LABEL_56:
    v24 = v19;
    operator delete(v19);
  }

LABEL_57:
  __p = 0;
  v24 = 0;
  v25 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  *(a2 + 63) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = vnegq_f64(v20);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  if (v26)
  {
    operator delete(v26);
    v10 = __p;
  }

  if (v10)
  {
    v24 = v10;
    operator delete(v10);
  }
}

void sub_EA50AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (v37)
  {
    operator delete(v37);
  }

  sub_44D36C(&a9);
  _Unwind_Resume(a1);
}

double sub_EA51A8@<D0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *(a1 + 152);
  if (!v4)
  {
    v4 = &off_2772E28;
  }

  v5 = v4[10];
  if (!v5)
  {
    v5 = &off_2772DF8;
  }

  if ((v5[2] & 1) != 0 && *(a1 + 80) > 1 && *(a1 + 56))
  {
    v7.n128_u64[0] = 0;
    v7.n128_u64[1] = &off_2669FE0;
    *&result = sub_434934(a2, &v7).n128_u64[0];
  }

  else
  {
    v7.n128_u64[0] = 1;
    v7.n128_u64[1] = &off_2669FE0;
    *&result = sub_434934(a2, &v7).n128_u64[0];
  }

  return result;
}

void sub_EA5248(char *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[23];
  LOBYTE(v7) = v6;
  v8 = *(a1 + 1);
  if ((v6 & 0x80u) == 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9 == 20)
  {
    if ((v6 & 0x80u) == 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    v11 = *v10;
    v12 = __toupper(116);
    if (v12 == __toupper(v11))
    {
      v13 = v10[1];
      v14 = __toupper(114);
      if (v14 == __toupper(v13))
      {
        v15 = v10[2];
        v16 = __toupper(97);
        if (v16 == __toupper(v15))
        {
          v17 = v10[3];
          v18 = __toupper(110);
          if (v18 == __toupper(v17))
          {
            v19 = v10[4];
            v20 = __toupper(115);
            if (v20 == __toupper(v19))
            {
              v21 = v10[5];
              v22 = __toupper(105);
              if (v22 == __toupper(v21))
              {
                v23 = v10[6];
                v24 = __toupper(116);
                if (v24 == __toupper(v23))
                {
                  v25 = v10[7];
                  v26 = __toupper(46);
                  if (v26 == __toupper(v25))
                  {
                    v27 = v10[8];
                    v28 = __toupper(102);
                    if (v28 == __toupper(v27))
                    {
                      v29 = v10[9];
                      v30 = __toupper(101);
                      if (v30 == __toupper(v29))
                      {
                        v31 = v10[10];
                        v32 = __toupper(108);
                        if (v32 == __toupper(v31))
                        {
                          v33 = v10[11];
                          v34 = __toupper(105);
                          if (v34 == __toupper(v33))
                          {
                            v35 = v10[12];
                            v36 = __toupper(99);
                            if (v36 == __toupper(v35))
                            {
                              v37 = v10[13];
                              v38 = __toupper(97);
                              if (v38 == __toupper(v37))
                              {
                                v39 = v10[14];
                                v40 = __toupper(46);
                                if (v40 == __toupper(v39))
                                {
                                  v41 = v10[15];
                                  v42 = __toupper(115);
                                  if (v42 == __toupper(v41))
                                  {
                                    v43 = v10[16];
                                    v44 = __toupper(117);
                                    if (v44 == __toupper(v43))
                                    {
                                      v45 = v10[17];
                                      v46 = __toupper(105);
                                      if (v46 == __toupper(v45))
                                      {
                                        v47 = v10[18];
                                        v48 = __toupper(99);
                                        if (v48 == __toupper(v47))
                                        {
                                          v49 = v10[19];
                                          v50 = __toupper(97);
                                          if (v50 == __toupper(v49))
                                          {
                                            goto LABEL_64;
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

    v6 = a1[23];
    v8 = *(a1 + 1);
    LOBYTE(v7) = a1[23];
  }

  if ((v7 & 0x80u) == 0)
  {
    v51 = v6;
  }

  else
  {
    v51 = v8;
  }

  if (v51 == 19)
  {
    if ((v7 & 0x80u) == 0)
    {
      v52 = a1;
    }

    else
    {
      v52 = *a1;
    }

    v53 = *v52;
    v54 = __toupper(116);
    if (v54 != __toupper(v53) || (v55 = v52[1], v56 = __toupper(114), v56 != __toupper(v55)) || (v57 = v52[2], v58 = __toupper(97), v58 != __toupper(v57)) || (v59 = v52[3], v60 = __toupper(110), v60 != __toupper(v59)) || (v61 = v52[4], v62 = __toupper(115), v62 != __toupper(v61)) || (v63 = v52[5], v64 = __toupper(105), v64 != __toupper(v63)) || (v65 = v52[6], v66 = __toupper(116), v66 != __toupper(v65)) || (v67 = v52[7], v68 = __toupper(46), v68 != __toupper(v67)) || (v69 = v52[8], v70 = __toupper(102), v70 != __toupper(v69)) || (v71 = v52[9], v72 = __toupper(101), v72 != __toupper(v71)) || (v73 = v52[10], v74 = __toupper(108), v74 != __toupper(v73)) || (v75 = v52[11], v76 = __toupper(105), v76 != __toupper(v75)) || (v77 = v52[12], v78 = __toupper(99), v78 != __toupper(v77)) || (v79 = v52[13], v80 = __toupper(97), v80 != __toupper(v79)) || (v81 = v52[14], v82 = __toupper(46), v82 != __toupper(v81)) || (v83 = v52[15], v84 = __toupper(99), v84 != __toupper(v83)) || (v85 = v52[16], v86 = __toupper(106), v86 != __toupper(v85)) || (v87 = v52[17], v88 = __toupper(114), v88 != __toupper(v87)) || (v89 = v52[18], v90 = __toupper(99), v90 != __toupper(v89)))
    {
      v6 = a1[23];
      v8 = *(a1 + 1);
      LOBYTE(v7) = a1[23];
      goto LABEL_56;
    }

LABEL_64:
    v95 = a2[23];
    v96 = v95;
    if ((v95 & 0x80u) != 0)
    {
      v95 = *(a2 + 1);
    }

    if ((v95 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v96 < 0)
      {
        v97 = *a2;
        if (*(a2 + 1) != 3)
        {
          LOWORD(v98) = 0;
LABEL_146:
          v164 = *v97;
          BYTE2(__dst) = v97[1];
          LOWORD(__dst) = v98 | (v164 << 8);
          HIBYTE(v179.__locale_) = 1;
          LOWORD(v177) = 45;
          sub_EA63D4(&v177, 0, a3);
          if (SHIBYTE(v179.__locale_) < 0)
          {
            operator delete(v177);
          }

          return;
        }
      }

      else
      {
        v97 = a2;
        if (v96 != 3)
        {
          LOWORD(v98) = 0;
          v97 = a2;
          goto LABEL_146;
        }
      }

      v157 = v97[2];
      v98 = (v157 >> 4) & 3;
      if (v157 >= 0x40)
      {
        LOWORD(v98) = v157 >> 6;
      }

      if (!v157)
      {
        LOWORD(v98) = 0;
      }

      v97 = *a2;
      if (v96 >= 0)
      {
        v97 = a2;
      }

      goto LABEL_146;
    }

    if (!sub_7E7E4(1u))
    {
LABEL_178:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    }

    sub_19594F8(&v177);
    v107 = sub_4A5C(&v177, "Incorrect number of bytes in Suica station code: 0x", 51);
    v173 = 0;
    LOBYTE(v172[0]) = 0;
    if ((a2[23] & 0x80u) == 0)
    {
      v108 = a2[23];
    }

    else
    {
      v108 = *(a2 + 1);
    }

    v189 = 0;
    v190 = 0;
    __dst = 0;
    if (v108)
    {
      if ((v108 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_D29624(&__dst, v172, 2, &__p);
    if (__dst)
    {
      v189 = __dst;
      operator delete(__dst);
    }

    if ((v176 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v176 & 0x80u) == 0)
    {
      v166 = v176;
    }

    else
    {
      v166 = v175;
    }

    sub_4A5C(v107, p_p, v166);
    if (v176 < 0)
    {
      operator delete(__p);
      if ((v173 & 0x80000000) == 0)
      {
LABEL_158:
        v167 = v187;
        if ((v187 & 0x10) == 0)
        {
LABEL_159:
          if ((v167 & 8) == 0)
          {
            v168 = 0;
            HIBYTE(v190) = 0;
LABEL_173:
            *(&__dst + v168) = 0;
            sub_7E854(&__dst, 1u);
            if (SHIBYTE(v190) < 0)
            {
              operator delete(__dst);
            }

            if (v185 < 0)
            {
              operator delete(v184);
            }

            std::locale::~locale(&v179);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_178;
          }

          v170 = &v180;
          v169 = v181;
LABEL_167:
          v171 = *v170;
          v168 = v169 - *v170;
          if (v168 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v168 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v190) = v169 - *v170;
          if (v168)
          {
            memmove(&__dst, v171, v168);
          }

          goto LABEL_173;
        }

LABEL_163:
        v169 = v186;
        if (v186 < v183)
        {
          v186 = v183;
          v169 = v183;
        }

        v170 = &v182;
        goto LABEL_167;
      }
    }

    else if ((v173 & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    operator delete(v172[0]);
    v167 = v187;
    if ((v187 & 0x10) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_163;
  }

LABEL_56:
  v7 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v6 = v8;
  }

  if (v6 == 30)
  {
    v91 = 0;
    if (v7 >= 0)
    {
      v92 = a1;
    }

    else
    {
      v92 = *a1;
    }

    while (1)
    {
      v93 = *(v92 + v91);
      v94 = __toupper(aComAppleTransi[v91]);
      if (v94 != __toupper(v93))
      {
        break;
      }

      if (++v91 == 30)
      {
        goto LABEL_64;
      }
    }
  }

  v99 = a2[23];
  if ((v99 & 0x8000000000000000) == 0)
  {
    if (v99 < 9)
    {
      v100 = &a2[v99];
      v101 = v100 - a2;
      if (v100 != a2)
      {
        goto LABEL_73;
      }

      goto LABEL_84;
    }

LABEL_76:
    if (!sub_7E7E4(1u))
    {
LABEL_142:
      *(a3 + 23) = 0;
      *a3 = 0;
      return;
    }

    sub_19594F8(&v177);
    v105 = sub_4A5C(&v177, "More than 8 bytes in station code: 0x", 37);
    v173 = 0;
    LOBYTE(v172[0]) = 0;
    if ((a2[23] & 0x80u) == 0)
    {
      v106 = a2[23];
    }

    else
    {
      v106 = *(a2 + 1);
    }

    v189 = 0;
    v190 = 0;
    __dst = 0;
    if (v106)
    {
      if ((v106 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_D29624(&__dst, v172, 2, &__p);
    if (__dst)
    {
      v189 = __dst;
      operator delete(__dst);
    }

    if ((v176 & 0x80u) == 0)
    {
      v158 = &__p;
    }

    else
    {
      v158 = __p;
    }

    if ((v176 & 0x80u) == 0)
    {
      v159 = v176;
    }

    else
    {
      v159 = v175;
    }

    sub_4A5C(v105, v158, v159);
    if (v176 < 0)
    {
      operator delete(__p);
      if ((v173 & 0x80000000) == 0)
      {
LABEL_124:
        v160 = v187;
        if ((v187 & 0x10) == 0)
        {
          goto LABEL_125;
        }

        goto LABEL_129;
      }
    }

    else if ((v173 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    operator delete(v172[0]);
    v160 = v187;
    if ((v187 & 0x10) == 0)
    {
LABEL_125:
      if ((v160 & 8) == 0)
      {
        v161 = 0;
        HIBYTE(v190) = 0;
LABEL_137:
        *(&__dst + v161) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v190) < 0)
        {
          operator delete(__dst);
        }

        if (v185 < 0)
        {
          operator delete(v184);
        }

        std::locale::~locale(&v179);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_142;
      }

      v163 = v180;
      v161 = v181 - v180;
      if (v181 - v180 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_144:
        sub_3244();
      }

LABEL_132:
      if (v161 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v190) = v161;
      if (v161)
      {
        memmove(&__dst, v163, v161);
      }

      goto LABEL_137;
    }

LABEL_129:
    v162 = v186;
    if (v186 < v183)
    {
      v186 = v183;
      v162 = v183;
    }

    v163 = v182;
    v161 = v162 - v182;
    if (v162 - v182 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_144;
    }

    goto LABEL_132;
  }

  v104 = *(a2 + 1);
  if (v104 > 8)
  {
    goto LABEL_76;
  }

  a2 = *a2;
  v100 = &a2[v104];
  v101 = v100 - a2;
  if (v100 != a2)
  {
LABEL_73:
    if (v101 < 4)
    {
      v102 = 0;
      v103 = v100;
LABEL_101:
      v155 = 8 * v100 - 8 * v103;
      do
      {
        v156 = *--v103;
        v102 |= v156 << v155;
        v155 += 8;
      }

      while (v103 != a2);
      goto LABEL_103;
    }

    v109 = vdupq_n_s64(v100);
    if (v101 >= 0x10)
    {
      v110 = v101 & 0xFFFFFFFFFFFFFFF0;
      v103 = v100 - (v101 & 0xFFFFFFFFFFFFFFF0);
      v111 = 0uLL;
      v112 = v101 & 0xFFFFFFFFFFFFFFF0;
      v113 = v100;
      v114 = 0uLL;
      v115 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v120 = 0uLL;
      do
      {
        v121 = vdupq_n_s64(v113);
        v122 = vaddq_s64(v121, xmmword_2266B40);
        v123 = vsubq_s64(v109, v122);
        v124 = vrev64q_s8(*(v122.i64[0] - 16));
        v125 = vextq_s8(v124, v124, 8uLL);
        v126 = vmovl_high_u8(v125);
        v127 = vmovl_high_u16(v126);
        v128.i64[0] = v127.u32[0];
        v128.i64[1] = v127.u32[1];
        v129 = v128;
        v130 = vmovl_u16(*v126.i8);
        v128.i64[0] = v130.u32[2];
        v128.i64[1] = v130.u32[3];
        v131 = v128;
        v132 = vmovl_u8(*v125.i8);
        v133 = vmovl_high_u16(v132);
        v128.i64[0] = v133.u32[2];
        v128.i64[1] = v133.u32[3];
        v134 = v128;
        v128.i64[0] = v130.u32[0];
        v128.i64[1] = v130.u32[1];
        v135 = v128;
        v128.i64[0] = v133.u32[0];
        v128.i64[1] = v133.u32[1];
        v136 = v128;
        v137 = vmovl_u16(*v132.i8);
        v128.i64[0] = v137.u32[2];
        v128.i64[1] = v137.u32[3];
        v138 = v128;
        v128.i64[0] = v137.u32[0];
        v128.i64[1] = v137.u32[1];
        v139 = vsubq_s64(v109, v121);
        v140 = vshlq_u64(v128, vshlq_n_s64(v123, 3uLL));
        v128.i64[0] = v127.u32[2];
        v128.i64[1] = v127.u32[3];
        v120 = vorrq_s8(vshlq_u64(v128, vshlq_n_s64(vsubq_s64(v139, xmmword_22ACE80), 3uLL)), v120);
        v119 = vorrq_s8(vshlq_u64(v129, vshlq_n_s64(vsubq_s64(v139, xmmword_22ACE90), 3uLL)), v119);
        v118 = vorrq_s8(vshlq_u64(v131, vshlq_n_s64(vsubq_s64(v139, xmmword_22ACEA0), 3uLL)), v118);
        v116 = vorrq_s8(vshlq_u64(v134, vshlq_n_s64(vsubq_s64(v139, xmmword_22ACEB0), 3uLL)), v116);
        v117 = vorrq_s8(vshlq_u64(v135, vshlq_n_s64(vsubq_s64(v139, xmmword_22ACEC0), 3uLL)), v117);
        v115 = vorrq_s8(vshlq_u64(v136, vshlq_n_s64(vsubq_s64(v139, xmmword_22ACED0), 3uLL)), v115);
        v114 = vorrq_s8(vshlq_u64(v138, vshlq_n_s64(vsubq_s64(v139, xmmword_22ACEE0), 3uLL)), v114);
        v111 = vorrq_s8(v140, v111);
        v113 -= 16;
        v112 -= 16;
      }

      while (v112);
      v141 = vorrq_s8(vorrq_s8(vorrq_s8(v111, v117), vorrq_s8(v115, v119)), vorrq_s8(vorrq_s8(v114, v118), vorrq_s8(v116, v120)));
      v102 = vorr_s8(*v141.i8, *&vextq_s8(v141, v141, 8uLL));
      if (v101 == v110)
      {
        goto LABEL_103;
      }

      if ((v101 & 0xC) == 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v102 = 0;
      v110 = 0;
      v103 = v100;
    }

    v142 = v103;
    v103 = v100 - (v101 & 0xFFFFFFFFFFFFFFFCLL);
    v143 = 0uLL;
    v144 = v102;
    v145 = v110 - (v101 & 0xFFFFFFFFFFFFFFFCLL);
    v146.i64[0] = 255;
    v146.i64[1] = 255;
    do
    {
      v147 = vdupq_n_s64(v142);
      v148 = vaddq_s64(v147, xmmword_2266B40);
      v149 = vsubq_s64(v109, v148);
      v148.i32[0] = *(v148.i64[0] - 4);
      v148.i64[0] = vmovl_u8(*v148.i8).u64[0];
      v150.i64[0] = v148.u16[1];
      v150.i64[1] = v148.u16[0];
      v151 = v148.u16[3];
      v152 = v148.u16[2];
      v153 = vandq_s8(v150, v146);
      v150.i64[0] = v151;
      v150.i64[1] = v152;
      v143 = vorrq_s8(vshlq_u64(v153, vshlq_n_s64(vsubq_s64(vsubq_s64(v109, v147), xmmword_22ACEE0), 3uLL)), v143);
      v144 = vorrq_s8(vshlq_u64(vandq_s8(v150, v146), vshlq_n_s64(v149, 3uLL)), v144);
      v142 -= 4;
      v145 += 4;
    }

    while (v145);
    v154 = vorrq_s8(v144, v143);
    v102 = vorr_s8(*v154.i8, *&vextq_s8(v154, v154, 8uLL));
    if (v101 == (v101 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

LABEL_84:
  v102 = 0;
LABEL_103:

  std::to_string(a3, v102);
}

void sub_EA62DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 97) < 0)
  {
    operator delete(*(v26 - 120));
  }

  sub_1959728(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_EA63D4@<X0>(uint64_t a1@<X1>, int a2@<W2>, _BYTE *a3@<X8>)
{
  sub_19594F8(&v24);
  v6 = *(v24 - 3);
  v7 = std::locale::classic();
  std::ios_base::getloc((&v24 + v6));
  std::ios_base::imbue((&v24 + v6), v7);
  std::locale::~locale(&v36);
  v8 = *(&v28 + v6);
  if (v8)
  {
    (*(v8->__locale_ + 2))(v8, v7);
    std::locale::locale(&v35, v8 + 1);
    std::locale::operator=(v8 + 1, v7);
    std::locale::~locale(&v35);
  }

  std::locale::~locale(&v23);
  v9 = v24;
  v10 = v24;
  *(&v24 + *(v24 - 3) + 8) = *(&v24 + *(v24 - 3) + 8) & 0xFFFFFFB5 | 8;
  v11 = (&v24 + *(v10 - 3));
  if (v11[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v11);
    v12 = std::locale::use_facet(&v36, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 32);
    std::locale::~locale(&v36);
    v9 = v24;
  }

  v11[1].__fmtflags_ = 48;
  *(v27 + *(v9 - 3)) = a2;
  std::ostream::operator<<();
  v13 = *(a1 + 23);
  if (v13 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v13 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  sub_4A5C(&v24, v14, v15);
  *(v27 + *(v24 - 3)) = a2;
  std::ostream::operator<<();
  v16 = *(a1 + 23);
  if (v16 >= 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = *a1;
  }

  if (v16 >= 0)
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = *(a1 + 8);
  }

  sub_4A5C(&v24, v17, v18);
  *(v27 + *(v24 - 3)) = a2;
  std::ostream::operator<<();
  if ((v34 & 0x10) != 0)
  {
    v20 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v20 = v30;
    }

    v21 = v29;
    v19 = v20 - v29;
    if (v20 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v19 = 0;
      a3[23] = 0;
      goto LABEL_28;
    }

    v21 = v27[0];
    v19 = v28 - v27[0];
    if ((v28 - v27[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a3[23] = v19;
  if (v19)
  {
    memmove(a3, v21, v19);
  }

LABEL_28:
  a3[v19] = 0;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v26);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_EA6814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EA6828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale((v2 - 72));
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EA6850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EA6864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_EA6878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EA688C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 4;
      strcpy(a2, "NONE");
      break;
    case 1:
      a2[23] = 9;
      strcpy(a2, "REROUTING");
      break;
    case 2:
      operator new();
    case 3:
      a2[23] = 15;
      strcpy(a2, "ROUTE_RETRIEVAL");
      break;
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      a2[23] = 16;
      strcpy(a2, "CHANGE_WAYPOINTS");
      break;
    case 8:
      a2[23] = 14;
      strcpy(a2, "CHANGE_ANCHORS");
      break;
    case 9:
      a2[23] = 12;
      strcpy(a2, "RESUME_ROUTE");
      break;
    case 10:
      a2[23] = 21;
      strcpy(a2, "CHANGE_TRANSPORT_MODE");
      break;
    case 11:
      a2[23] = 22;
      strcpy(a2, "RESUME_NAV_AFTER_PAUSE");
      break;
    case 12:
      operator new();
    case 13:
      operator new();
    default:
      a2[23] = 7;
      strcpy(a2, "UNKNOWN");
      break;
  }

  return result;
}

uint64_t sub_EA6CB8(char *a1, uint64_t a2)
{
  if (a2 > 22)
  {
LABEL_9:
    if (a2 == 23)
    {
      v27 = 0;
      while (1)
      {
        v28 = a1[v27];
        v29 = __toupper(aLoadAnchorPoin[v27]);
        if (v29 != __toupper(v28))
        {
          break;
        }

        if (a2 == ++v27)
        {
          return 4;
        }
      }
    }

    if (a2 == 24)
    {
      v13 = 0;
      while (1)
      {
        v14 = a1[v13];
        v15 = __toupper(aBiasedDirectio[v13]);
        if (v15 != __toupper(v14))
        {
          break;
        }

        if (++v13 == 24)
        {
          return 5;
        }
      }
    }

    if (a2 == 26)
    {
      v8 = "BIASED_DIRECTIONS_FROM_POI";
      v9 = 26;
      for (i = a1; ; ++i)
      {
        v11 = *i;
        v12 = __toupper(*v8);
        if (v12 != __toupper(v11))
        {
          break;
        }

        ++v8;
        if (!--v9)
        {
          return 6;
        }
      }
    }

    goto LABEL_34;
  }

  switch(a2)
  {
    case 4:
      v16 = *a1;
      v17 = __toupper(78);
      if (v17 == __toupper(v16))
      {
        v18 = a1[1];
        v19 = __toupper(79);
        if (v19 == __toupper(v18))
        {
          v20 = a1[2];
          v21 = __toupper(78);
          if (v21 == __toupper(v20))
          {
            v22 = a1[3];
            v23 = __toupper(69);
            if (v23 == __toupper(v22))
            {
              return 0;
            }
          }
        }
      }

      break;
    case 9:
      v24 = 0;
      while (1)
      {
        v25 = a1[v24];
        v26 = __toupper(aRerouting_0[v24]);
        if (v26 != __toupper(v25))
        {
          break;
        }

        if (++v24 == 9)
        {
          return 1;
        }
      }

      break;
    case 15:
      v4 = 0;
      while (1)
      {
        v5 = a1[v4];
        v6 = __toupper(aRouteRetrieval[v4]);
        if (v6 != __toupper(v5))
        {
          break;
        }

        if (++v4 == 15)
        {
          return 3;
        }
      }

      goto LABEL_9;
  }

LABEL_34:
  if (sub_5258C(a1, a2, "CHANGE_WAYPOINTS", 16))
  {
    return 7;
  }

  if (sub_5258C(a1, a2, "CHANGE_ANCHORS", 14))
  {
    return 8;
  }

  if (sub_5258C(a1, a2, "RESUME_ROUTE", 12))
  {
    return 9;
  }

  if (sub_5258C(a1, a2, "CHANGE_TRANSPORT_MODE", 21))
  {
    return 10;
  }

  if (sub_5258C(a1, a2, "RESUME_NAV_AFTER_PAUSE", 22))
  {
    return 11;
  }

  if (sub_5258C(a1, a2, "OFFLINE_TO_ONLINE_NAV_TRANSITION", 32))
  {
    return 12;
  }

  if (sub_5258C(a1, a2, "OFFLINE_TO_ONLINE_NEW_ROUTE", 27))
  {
    return 13;
  }

  return 0;
}

uint64_t sub_EA7178@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    a2[23] = 15;
    strcpy(a2, "OFFLINE_SERVICE");
  }

  else if (result == 1)
  {
    a2[23] = 14;
    strcpy(a2, "ONLINE_SERVICE");
  }

  else
  {
    a2[23] = 7;
    strcpy(a2, "UNKNOWN");
  }

  return result;
}

void *sub_EA7200(void *a1, int *a2)
{
  *a1 = &off_2674490;
  sub_D71F30((a1 + 1), a2);
  return a1;
}

uint64_t sub_EA7244(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_4D1F6C(a2);
  if ((result & 1) == 0)
  {
    sub_EA7354(a1, a2, a3);
    v7 = sub_68E508(a2);
    *(a3 + 40) |= 0x40u;
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_194EA1C((a3 + 752), v7, v9);
    v10 = sub_68E634(a2);
    *(a3 + 40) |= 0x80u;
    v11 = *(a3 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a3 + 760), v10, v12);
    result = nullsub_1(a2);
    v13 = *result;
    v14 = *(result + 8);
    if (*result != v14)
    {
      do
      {
        sub_EA754C(a1, v13, a3);
        sub_EA76FC(a1, v13, a3);
        result = sub_EA7870(a1, v13, a3);
        v13 += 12656;
      }

      while (v13 != v14);
    }
  }

  return result;
}

void sub_EA7354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x200u;
  v4 = *(a3 + 776);
  if (!v4)
  {
    v6 = *(a3 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_14BB174(v7);
    v4 = v8;
    *(a3 + 776) = v8;
  }

  v9 = sub_73EEC(a2);
  *(v4 + 16) |= 2u;
  v10 = *(v4 + 32);
  if (!v10)
  {
    v11 = v9;
    v12 = *(v4 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    sub_14BAE64(v13);
    v10 = v14;
    *(v4 + 32) = v14;
    v9 = v11;
  }

  sub_64D110(v9, v10);
  v15 = sub_68DCC4(a2);
  *(v4 + 16) |= 4u;
  v16 = *(v4 + 40);
  if (v16)
  {
    sub_64D110(v15, v16);
    v17 = sub_68DD18(a2);
    if (sub_4D1F6C(v17))
    {
      return;
    }

    goto LABEL_15;
  }

  v18 = v15;
  v19 = *(v4 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_14BAE64(v20);
  *(v4 + 40) = v21;
  sub_64D110(v18, v21);
  v22 = sub_68DD18(a2);
  if (!sub_4D1F6C(v22))
  {
LABEL_15:
    v23 = sub_68DD18(a2);
    *(v4 + 16) |= 4u;
    v24 = *(v4 + 40);
    if (v24)
    {
    }

    else
    {
      v25 = v23;
      v26 = *(v4 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_14BAE64(v27);
      v24 = v28;
      *(v4 + 40) = v28;
      v23 = v25;
    }

    sub_64D110(v23, v24);
  }
}

uint64_t sub_EA74EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EA754C(a1, a2, a3);
  sub_EA76FC(a1, a2, a3);

  return sub_EA7870(a1, a2, a3);
}

void sub_EA754C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_682474(a2 + 7584))
  {
    v5 = sub_68233C(a2 + 7584);
    *(a3 + 40) |= 0x40000u;
    v6 = *(a3 + 848);
    if (v6)
    {
      *(v6 + 16) |= 1u;
      v7 = *(v6 + 96);
      if (v7)
      {
LABEL_11:
        sub_64D110(v5, v7);
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(a3 + 8);
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (v8)
      {
        v9 = *v9;
      }

      v6 = sub_14BB0C4(v9);
      *(a3 + 848) = v6;
      *(v6 + 16) |= 1u;
      v7 = *(v6 + 96);
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_14BAE64(v11);
    v7 = v12;
    *(v6 + 96) = v12;
    goto LABEL_11;
  }

LABEL_12:
  if (sub_682474(a2 + 8440))
  {
    v13 = sub_68233C(a2 + 8440);
    *(a3 + 40) |= 0x80000u;
    v14 = *(a3 + 856);
    if (v14)
    {
      *(v14 + 16) |= 1u;
      v15 = *(v14 + 96);
      if (v15)
      {
LABEL_15:
        v16 = v13;

LABEL_17:
        sub_64D110(v16, v15);
        return;
      }
    }

    else
    {
      v17 = *(a3 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v14 = sub_14BB0C4(v18);
      *(a3 + 856) = v14;
      *(v14 + 16) |= 1u;
      v15 = *(v14 + 96);
      if (v15)
      {
        goto LABEL_15;
      }
    }

    v19 = *(v14 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_14BAE64(v20);
    v15 = v21;
    *(v14 + 96) = v21;
    v16 = v13;

    goto LABEL_17;
  }
}

void sub_EA76FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 7536);
  v6 = *(a2 + 7544);
  if (v5 != v6)
  {
    while (sub_681D38(v5) != 55)
    {
      v5 += 448;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = *(a2 + 7544);
  }

  if (v5 != v6)
  {
    v7 = sub_681D7C(v5);
    v8 = *v7;
    v9 = *(v7 + 8);
    while (v8 != v9)
    {
      v12 = *(a3 + 336);
      if (v12 && (v13 = *(a3 + 328), v13 < *v12))
      {
        *(a3 + 328) = v13 + 1;
        v11 = *&v12[2 * v13 + 2];
      }

      else
      {
        sub_14BAE64(*(a3 + 320));
        v11 = sub_19593CC(a3 + 320, v10);
      }

      sub_64D110(v8, v11);
      v8 += 20;
    }
  }

  v14 = *(a2 + 7536);
  v15 = *(a2 + 7544);
  if (v14 != v15)
  {
    while (sub_681D38(v14) != 69)
    {
      v14 += 448;
      if (v14 == v15)
      {
        v14 = v15;
        break;
      }
    }

    v15 = *(a2 + 7544);
  }

  if (v14 != v15)
  {
    v16 = sub_681D7C(v14);
    v17 = *v16;
    v18 = *(v16 + 8);
    while (v17 != v18)
    {
      v21 = *(a3 + 360);
      if (v21 && (v22 = *(a3 + 352), v22 < *v21))
      {
        *(a3 + 352) = v22 + 1;
        v20 = *&v21[2 * v22 + 2];
      }

      else
      {
        sub_14BAE64(*(a3 + 344));
        v20 = sub_19593CC(a3 + 344, v19);
      }

      sub_64D110(v17, v20);
      v17 += 20;
    }
  }
}

uint64_t sub_EA7870(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -210151305 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3);
  if (v3)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      v8 = sub_50EA30((a2 + 1104), i);
      v9 = *(*(a3 + 72) + 8 * i + 8);
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);
      v12 = v10;
      if (v10 != v11)
      {
        v12 = *(v6 + 16);
        while (*v12 != 3)
        {
          if (++v12 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      if (v12 != v11)
      {
        sub_EA7C68(v6, v8, *(*(a3 + 72) + 8 * i + 8));
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
      }

LABEL_11:
      if (v10 != v11)
      {
        while (*v10 != 2)
        {
          if (++v10 == v11)
          {
            goto LABEL_3;
          }
        }

        if (v10 != v11)
        {
          sub_EA7D94(v6, v8, v9);
        }
      }

LABEL_3:
      sub_EA8184(v6, v8, v9);
      sub_EA7ADC(v6, v8, v9);
      result = (**v6)(v6, v8, v9);
    }
  }

  return result;
}

void sub_EA79F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v3;
  if (v3 != v4)
  {
    v5 = *(a1 + 16);
    while (*v5 != 3)
    {
      if (++v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    sub_EA7C68(a1, a2, a3);
    a1 = v6;
    a2 = v7;
    a3 = v8;
    v3 = *(v6 + 16);
    v4 = *(v6 + 24);
  }

  while (1)
  {
LABEL_10:
    if (v3 == v4)
    {
      goto LABEL_11;
    }

    if (*v3 == 2)
    {
      break;
    }

    ++v3;
  }

  if (v3 == v4)
  {
LABEL_11:

    goto LABEL_13;
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  sub_EA7D94(a1, a2, a3);
  a1 = v9;
  a2 = v10;
  a3 = v11;

LABEL_13:
  sub_EA8184(a1, a2, a3);
}

void sub_EA7ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10u;
  v4 = *(a3 + 208);
  if (!v4)
  {
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v4 = sub_14BB45C(v8);
    *(a3 + 208) = v4;
    *(v4 + 40) |= 0x20u;
    v5 = *(v4 + 88);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  *(v4 + 40) |= 0x20u;
  v5 = *(v4 + 88);
  if (!v5)
  {
LABEL_7:
    v9 = *(v4 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v5 = sub_14BB0C4(v10);
    *(v4 + 88) = v5;
  }

LABEL_10:
  v11 = *(a2 + 1888);
  v12 = *(a2 + 1896);
  while (v11 != v12)
  {
    v13 = sub_681D7C(v11);
    v14 = *v13;
    v15 = *(v13 + 8);
    while (v14 != v15)
    {
      v20 = sub_681D38(v11);
      if (v20 == 2)
      {
        v23 = *(v5 + 88);
        if (v23)
        {
          v24 = *(v5 + 80);
          if (v24 < *v23)
          {
            *(v5 + 80) = v24 + 1;
            v19 = *&v23[2 * v24 + 2];
            goto LABEL_16;
          }
        }

        sub_14BAE64(*(v5 + 72));
        v17 = v25;
        v18 = v5 + 72;
        goto LABEL_15;
      }

      if (v20 == 1)
      {
        v21 = *(v5 + 64);
        if (v21)
        {
          v22 = *(v5 + 56);
          if (v22 < *v21)
          {
            *(v5 + 56) = v22 + 1;
            v19 = *&v21[2 * v22 + 2];
            goto LABEL_16;
          }
        }

        sub_14BAE64(*(v5 + 48));
        v17 = v16;
        v18 = v5 + 48;
LABEL_15:
        v19 = sub_19593CC(v18, v17);
LABEL_16:
        sub_64D110(v14, v19);
      }

      v14 += 20;
    }

    v11 += 1120;
  }
}

std::string *sub_EA7C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_681D7C(a2 + 1032);
  v5 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0] == result->__r_.__value_.__l.__size_ || *v5 == v5[1])
  {
    return result;
  }

  *(a3 + 40) |= 0x10u;
  v6 = *(a3 + 208);
  if (!v6)
  {
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    v6 = sub_14BB45C(v9);
    *(a3 + 208) = v6;
    *(v6 + 40) |= 4u;
    v7 = *(v6 + 64);
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  *(v6 + 40) |= 4u;
  v7 = *(v6 + 64);
  if (!v7)
  {
LABEL_10:
    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v7 = sub_14BB2A0(v11);
    *(v6 + 64) = v7;
  }

LABEL_13:
  v12 = *v5;
  *(v7 + 4) |= 1u;
  v13 = v7[1];
  v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v13)
  {
    v14 = *v14;
    v15 = (v7 + 3);
  }

  else
  {
    v15 = (v7 + 3);
  }

  return sub_194EA1C(v15, v12, v14);
}

void sub_EA7D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_6823AC(a2 + 1032))
  {
    return;
  }

  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x40u;
    v6 = *(v5 + 96);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = *(v5 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v6 = sub_14BB0C4(v12);
    *(v5 + 96) = v6;
    v7 = *sub_681D7C(a2 + 1032);
    v8 = *(v6 + 40);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v9 = *(a3 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  v5 = sub_14BB45C(v10);
  *(a3 + 208) = v5;
  *(v5 + 40) |= 0x40u;
  v6 = *(v5 + 96);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *sub_681D7C(a2 + 1032);
  v8 = *(v6 + 40);
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_12:
  v13 = *(v6 + 32);
  if (v13 < *v8)
  {
    *(v6 + 32) = v13 + 1;
    sub_64D110(v7, *&v8[2 * v13 + 2]);
    if (sub_682474(a2 + 1032))
    {
      goto LABEL_23;
    }

LABEL_14:
    v14 = sub_68238C(a2 + 1032);
    *(v6 + 16) |= 1u;
    v15 = *(v6 + 96);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_15:
    sub_64D110(v14, v15);
    v16 = sub_682394(a2 + 1032);
    v17 = v16[8];
    if (v17 > 2)
    {
      goto LABEL_27;
    }

LABEL_16:
    if (v17 == 1)
    {
      if (*v16 == -1)
      {
        goto LABEL_39;
      }
    }

    else if (v17 != 2 || v16[1] == -1 && *v16 == -1 && *(v16 + 1) == *(v16 + 2))
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_22:
  sub_14BAE64(*(v6 + 24));
  v19 = sub_19593CC(v6 + 24, v18);
  sub_64D110(v7, v19);
  if (!sub_682474(a2 + 1032))
  {
    goto LABEL_14;
  }

LABEL_23:
  v14 = sub_68233C(a2 + 1032);
  *(v6 + 16) |= 1u;
  v15 = *(v6 + 96);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_24:
  v20 = v14;
  v21 = *(v6 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_14BAE64(v22);
  *(v6 + 96) = v23;
  sub_64D110(v20, v23);
  v16 = sub_682394(a2 + 1032);
  v17 = v16[8];
  if (v17 <= 2)
  {
    goto LABEL_16;
  }

LABEL_27:
  if (v17 == 3 || v17 == 4)
  {
    v24 = *(v16 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v16 + 1);
    }

    if (v24)
    {
LABEL_34:
      v25 = sub_682394(a2 + 1032);
      *(a3 + 40) |= 0x100u;
      v27 = *(a3 + 240);
      if (!v27)
      {
        v28 = v25;
        v29 = *(a3 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v27 = sub_14BF484(v30);
        *(a3 + 240) = v27;
        v25 = v28;
      }

      sub_586C94(v25, v27, v26);
    }
  }

LABEL_39:
  v31 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  sub_682344((a2 + 1032), __p);
  v32 = *(v31 + 88);
  if (!v32)
  {
    v34 = *(v31 + 84);
LABEL_47:
    sub_1959254(v31 + 72, v34 + 1);
    v32 = *(v31 + 88);
    v34 = *v32;
    goto LABEL_48;
  }

  v33 = *(v31 + 80);
  v34 = *v32;
  if (v33 < *v32)
  {
    *(v31 + 80) = v33 + 1;
    v35 = *&v32[2 * v33 + 2];
    if (*(v35 + 23) < 0)
    {
      operator delete(*v35);
    }

    v36 = *__p;
    *(v35 + 16) = v44;
    *v35 = v36;
    return;
  }

  if (v34 == *(v31 + 84))
  {
    goto LABEL_47;
  }

LABEL_48:
  *v32 = v34 + 1;
  v37 = *(v31 + 72);
  if (!v37)
  {
    operator new();
  }

  *v39 = v38;
  v39[1] = sub_195A650;
  v40 = *__p;
  *(v38 + 16) = v44;
  *v38 = v40;
  __p[1] = 0;
  v44 = 0;
  __p[0] = 0;
  v41 = *(v31 + 80);
  v42 = *(v31 + 88) + 8 * v41;
  *(v31 + 80) = v41 + 1;
  *(v42 + 8) = v38;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_EA8168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA8184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10u;
  v4 = *(a3 + 208);
  if (v4)
  {
    *(v4 + 40) |= 0x20u;
    v5 = *(v4 + 88);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v7 = *(a3 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  v4 = sub_14BB45C(v8);
  *(a3 + 208) = v4;
  *(v4 + 40) |= 0x20u;
  v5 = *(v4 + 88);
  if (!v5)
  {
LABEL_7:
    v9 = *(v4 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v5 = sub_14BB0C4(v10);
    *(v4 + 88) = v5;
  }

LABEL_10:
  v11 = *(a2 + 1888);
  v12 = *(a2 + 1896);
  if (v11 != v12)
  {
    while (sub_681D38(v11) != 3)
    {
      v11 += 1120;
      if (v11 == v12)
      {
        return;
      }
    }

    if (sub_681EB0(v11))
    {
      v13 = sub_681D7C(v11);
      v14 = *v13;
      v15 = *(v13 + 8);
      while (v14 != v15)
      {
        v18 = *(v5 + 40);
        if (v18 && (v19 = *(v5 + 32), v19 < *v18))
        {
          *(v5 + 32) = v19 + 1;
          v17 = *&v18[2 * v19 + 2];
        }

        else
        {
          sub_14BAE64(*(v5 + 24));
          v17 = sub_19593CC(v5 + 24, v16);
        }

        sub_64D110(v14, v17);
        v14 += 20;
      }

      v20 = sub_68238C(v11);
      *(v5 + 16) |= 1u;
      v21 = *(v5 + 96);
      if (v21)
      {
      }

      else
      {
        v22 = v20;
        v23 = *(v5 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        sub_14BAE64(v24);
        v21 = v25;
        *(v5 + 96) = v25;
        v20 = v22;
      }

      sub_64D110(v20, v21);
    }
  }
}

void sub_EA8358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v5 = sub_14BB45C(v10);
    *(a3 + 208) = v5;
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
LABEL_3:
      v7 = *(a2 + 1912);
      v8 = *(a2 + 1920);
      if (v7 == v8)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v11 = *(v5 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v6 = sub_14BB1FC(v12);
  *(v5 + 104) = v6;
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
LABEL_11:
    v13 = 0;
    do
    {
      v14 = sub_681D7C(v7);
      v15 = *v14;
      v16 = *(v14 + 8);
      while (v15 != v16)
      {
        v19 = sub_681D38(v7);
        if (v19 <= 42)
        {
          if (v19 == 30)
          {
            *(v6 + 16) |= 4u;
            v18 = *(v6 + 64);
            if (!v18)
            {
              v31 = *(v6 + 8);
              v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
              if (v31)
              {
                v32 = *v32;
              }

              sub_14BAE64(v32);
              v18 = v33;
              *(v6 + 64) = v33;
            }

            goto LABEL_15;
          }

          if (v19 == 32)
          {
            *(v6 + 16) |= 8u;
            v18 = *(v6 + 72);
            if (!v18)
            {
              v22 = *(v6 + 8);
              v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v23 = *v23;
              }

              sub_14BAE64(v23);
              v18 = v24;
              *(v6 + 72) = v24;
            }

            goto LABEL_15;
          }
        }

        else
        {
          switch(v19)
          {
            case '+':
              *(v6 + 16) |= 2u;
              v18 = *(v6 + 56);
              if (!v18)
              {
                v25 = *(v6 + 8);
                v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
                if (v25)
                {
                  v26 = *v26;
                }

                sub_14BAE64(v26);
                v18 = v27;
                *(v6 + 56) = v27;
              }

              goto LABEL_15;
            case ',':
              *(v6 + 16) |= 1u;
              v18 = *(v6 + 48);
              if (!v18)
              {
                v28 = *(v6 + 8);
                v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
                if (v28)
                {
                  v29 = *v29;
                }

                sub_14BAE64(v29);
                v18 = v30;
                *(v6 + 48) = v30;
              }

              goto LABEL_15;
            case '-':
              v13 = sub_682A60(v7);
              v20 = *(v6 + 40);
              if (v20 && (v21 = *(v6 + 32), v21 < *v20))
              {
                *(v6 + 32) = v21 + 1;
                v18 = *&v20[2 * v21 + 2];
              }

              else
              {
                sub_14BAE64(*(v6 + 24));
                v18 = sub_19593CC(v6 + 24, v17);
              }

LABEL_15:
              sub_64D110(v15, v18);
              break;
          }
        }

        v15 += 20;
      }

      if (sub_682A60(v7))
      {
        *(a3 + 40) |= 0x400000u;
        *(a3 + 292) = 1;
      }

      *(v6 + 16) |= 0x10u;
      *(v6 + 80) = v13;
      v7 += 448;
    }

    while (v7 != v8);
  }
}

void *sub_EA8604(void *a1, int *a2)
{
  *a1 = &off_26744A8;
  sub_D71F30((a1 + 1), a2);
  return a1;
}

uint64_t sub_EA8648(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_4D1F6C(a2);
  if ((result & 1) == 0)
  {
    sub_EA7354(a1, a2, a3);
    v7 = sub_68E508(a2);
    *(a3 + 40) |= 0x40u;
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_194EA1C((a3 + 752), v7, v9);
    v10 = sub_68E634(a2);
    *(a3 + 40) |= 0x80u;
    v11 = *(a3 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a3 + 760), v10, v12);
    result = nullsub_1(a2);
    v13 = *result;
    v14 = *(result + 8);
    if (*result != v14)
    {
      do
      {
        sub_EA754C(a1, v13, a3);
        sub_EA76FC(a1, v13, a3);
        result = sub_EA87B8(a1, v13, a3);
        v13 += 12656;
      }

      while (v13 != v14);
    }
  }

  return result;
}

uint64_t sub_EA8758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EA754C(a1, a2, a3);
  sub_EA76FC(a1, a2, a3);

  return sub_EA87B8(a1, a2, a3);
}

uint64_t sub_EA87B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -210151305 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3);
  if (v3)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      v8 = sub_50EA30((a2 + 1104), i);
      v9 = *(*(a3 + 72) + 8 * i + 8);
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);
      v12 = v10;
      if (v10 != v11)
      {
        v12 = *(v6 + 16);
        while (*v12 != 3)
        {
          if (++v12 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      if (v12 != v11)
      {
        sub_EA7C68(v6, v8, *(*(a3 + 72) + 8 * i + 8));
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
      }

LABEL_11:
      if (v10 != v11)
      {
        while (*v10 != 2)
        {
          if (++v10 == v11)
          {
            goto LABEL_3;
          }
        }

        if (v10 != v11)
        {
          sub_EA8A24(v6, v8, v9);
        }
      }

LABEL_3:
      sub_EA8184(v6, v8, v9);
      sub_EA7ADC(v6, v8, v9);
      result = (**v6)(v6, v8, v9);
    }
  }

  return result;
}

void sub_EA8938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v3;
  if (v3 != v4)
  {
    v5 = *(a1 + 16);
    while (*v5 != 3)
    {
      if (++v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    sub_EA7C68(a1, a2, a3);
    a1 = v6;
    a2 = v7;
    a3 = v8;
    v3 = *(v6 + 16);
    v4 = *(v6 + 24);
  }

  while (1)
  {
LABEL_10:
    if (v3 == v4)
    {
      goto LABEL_11;
    }

    if (*v3 == 2)
    {
      break;
    }

    ++v3;
  }

  if (v3 == v4)
  {
LABEL_11:

    goto LABEL_13;
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  sub_EA8A24(a1, a2, a3);
  a1 = v9;
  a2 = v10;
  a3 = v11;

LABEL_13:
  sub_EA8184(a1, a2, a3);
}

void sub_EA8A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_6823AC(a2 + 1032))
  {
    return;
  }

  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x40u;
    v6 = *(v5 + 96);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = *(v5 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v6 = sub_14BB0C4(v12);
    *(v5 + 96) = v6;
    v7 = *sub_681D7C(a2 + 1032);
    v8 = *(v6 + 40);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v9 = *(a3 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  v5 = sub_14BB45C(v10);
  *(a3 + 208) = v5;
  *(v5 + 40) |= 0x40u;
  v6 = *(v5 + 96);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *sub_681D7C(a2 + 1032);
  v8 = *(v6 + 40);
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_12:
  v13 = *(v6 + 32);
  if (v13 < *v8)
  {
    *(v6 + 32) = v13 + 1;
    sub_64D110(v7, *&v8[2 * v13 + 2]);
    if (sub_682474(a2 + 1032))
    {
      goto LABEL_23;
    }

LABEL_14:
    v14 = sub_68238C(a2 + 1032);
    *(v6 + 16) |= 1u;
    v15 = *(v6 + 96);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_15:
    sub_64D110(v14, v15);
    v16 = sub_682394(a2 + 1032);
    v17 = v16[8];
    if (v17 > 2)
    {
      goto LABEL_27;
    }

LABEL_16:
    if (v17 == 1)
    {
      if (*v16 == -1)
      {
        goto LABEL_39;
      }
    }

    else if (v17 != 2 || v16[1] == -1 && *v16 == -1 && *(v16 + 1) == *(v16 + 2))
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_22:
  sub_14BAE64(*(v6 + 24));
  v19 = sub_19593CC(v6 + 24, v18);
  sub_64D110(v7, v19);
  if (!sub_682474(a2 + 1032))
  {
    goto LABEL_14;
  }

LABEL_23:
  v14 = sub_68233C(a2 + 1032);
  *(v6 + 16) |= 1u;
  v15 = *(v6 + 96);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_24:
  v20 = v14;
  v21 = *(v6 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_14BAE64(v22);
  *(v6 + 96) = v23;
  sub_64D110(v20, v23);
  v16 = sub_682394(a2 + 1032);
  v17 = v16[8];
  if (v17 <= 2)
  {
    goto LABEL_16;
  }

LABEL_27:
  if (v17 == 3 || v17 == 4)
  {
    v24 = *(v16 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v16 + 1);
    }

    if (v24)
    {
LABEL_34:
      v25 = sub_682394(a2 + 1032);
      *(a3 + 40) |= 0x100u;
      v27 = *(a3 + 240);
      if (!v27)
      {
        v28 = v25;
        v29 = *(a3 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v27 = sub_14BF484(v30);
        *(a3 + 240) = v27;
        v25 = v28;
      }

      sub_586C94(v25, v27, v26);
    }
  }

LABEL_39:
  v31 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  sub_682344((a2 + 1032), __p);
  v32 = *(v31 + 88);
  if (!v32)
  {
    v34 = *(v31 + 84);
LABEL_47:
    sub_1959254(v31 + 72, v34 + 1);
    v32 = *(v31 + 88);
    v34 = *v32;
    goto LABEL_48;
  }

  v33 = *(v31 + 80);
  v34 = *v32;
  if (v33 < *v32)
  {
    *(v31 + 80) = v33 + 1;
    v35 = *&v32[2 * v33 + 2];
    if (*(v35 + 23) < 0)
    {
      operator delete(*v35);
    }

    v36 = *__p;
    *(v35 + 16) = v44;
    *v35 = v36;
    return;
  }

  if (v34 == *(v31 + 84))
  {
    goto LABEL_47;
  }

LABEL_48:
  *v32 = v34 + 1;
  v37 = *(v31 + 72);
  if (!v37)
  {
    operator new();
  }

  *v39 = v38;
  v39[1] = sub_195A650;
  v40 = *__p;
  *(v38 + 16) = v44;
  *v38 = v40;
  __p[1] = 0;
  v44 = 0;
  __p[0] = 0;
  v41 = *(v31 + 80);
  v42 = *(v31 + 88) + 8 * v41;
  *(v31 + 80) = v41 + 1;
  *(v42 + 8) = v38;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_EA8DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA8E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v5 = sub_14BB45C(v10);
    *(a3 + 208) = v5;
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
LABEL_3:
      v7 = *(a2 + 1912);
      v8 = *(a2 + 1920);
      if (v7 == v8)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v11 = *(v5 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v6 = sub_14BB1FC(v12);
  *(v5 + 104) = v6;
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
LABEL_11:
    v13 = 0;
    do
    {
      v14 = sub_681D7C(v7);
      v15 = *v14;
      v16 = *(v14 + 8);
      while (v15 != v16)
      {
        v19 = sub_681D38(v7);
        if (v19 <= 42)
        {
          if (v19 == 30)
          {
            *(v6 + 16) |= 4u;
            v18 = *(v6 + 64);
            if (!v18)
            {
              v31 = *(v6 + 8);
              v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
              if (v31)
              {
                v32 = *v32;
              }

              sub_14BAE64(v32);
              v18 = v33;
              *(v6 + 64) = v33;
            }

            goto LABEL_15;
          }

          if (v19 == 32)
          {
            *(v6 + 16) |= 8u;
            v18 = *(v6 + 72);
            if (!v18)
            {
              v22 = *(v6 + 8);
              v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v23 = *v23;
              }

              sub_14BAE64(v23);
              v18 = v24;
              *(v6 + 72) = v24;
            }

            goto LABEL_15;
          }
        }

        else
        {
          switch(v19)
          {
            case '+':
              *(v6 + 16) |= 2u;
              v18 = *(v6 + 56);
              if (!v18)
              {
                v25 = *(v6 + 8);
                v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
                if (v25)
                {
                  v26 = *v26;
                }

                sub_14BAE64(v26);
                v18 = v27;
                *(v6 + 56) = v27;
              }

              goto LABEL_15;
            case ',':
              *(v6 + 16) |= 1u;
              v18 = *(v6 + 48);
              if (!v18)
              {
                v28 = *(v6 + 8);
                v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
                if (v28)
                {
                  v29 = *v29;
                }

                sub_14BAE64(v29);
                v18 = v30;
                *(v6 + 48) = v30;
              }

              goto LABEL_15;
            case '-':
              v13 = sub_682A60(v7);
              v20 = *(v6 + 40);
              if (v20 && (v21 = *(v6 + 32), v21 < *v20))
              {
                *(v6 + 32) = v21 + 1;
                v18 = *&v20[2 * v21 + 2];
              }

              else
              {
                sub_14BAE64(*(v6 + 24));
                v18 = sub_19593CC(v6 + 24, v17);
              }

LABEL_15:
              sub_64D110(v15, v18);
              break;
          }
        }

        v15 += 20;
      }

      if (sub_682A60(v7))
      {
        *(a3 + 40) |= 0x400000u;
        *(a3 + 292) = 1;
      }

      *(v6 + 16) |= 0x10u;
      *(v6 + 80) = v13;
      v7 += 448;
    }

    while (v7 != v8);
  }
}

void *sub_EA90C0(void *a1, int *a2)
{
  *a1 = &off_26744C0;
  sub_D71F30((a1 + 1), a2);
  return a1;
}

uint64_t sub_EA9104(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_4D1F6C(a2);
  if ((result & 1) == 0)
  {
    sub_EA7354(a1, a2, a3);
    v7 = sub_68E508(a2);
    *(a3 + 40) |= 0x40u;
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_194EA1C((a3 + 752), v7, v9);
    v10 = sub_68E634(a2);
    *(a3 + 40) |= 0x80u;
    v11 = *(a3 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a3 + 760), v10, v12);
    result = nullsub_1(a2);
    v13 = *result;
    v14 = *(result + 8);
    if (*result != v14)
    {
      do
      {
        sub_EA754C(a1, v13, a3);
        sub_EA76FC(a1, v13, a3);
        result = sub_EA9274(a1, v13, a3);
        v13 += 12656;
      }

      while (v13 != v14);
    }
  }

  return result;
}

uint64_t sub_EA9214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EA754C(a1, a2, a3);
  sub_EA76FC(a1, a2, a3);

  return sub_EA9274(a1, a2, a3);
}

uint64_t sub_EA9274(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -210151305 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3);
  if (v3)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      v8 = sub_50EA30((a2 + 1104), i);
      v9 = *(*(a3 + 72) + 8 * i + 8);
      v10 = *(v6 + 16);
      v11 = *(v6 + 24);
      v12 = v10;
      if (v10 != v11)
      {
        v12 = *(v6 + 16);
        while (*v12 != 3)
        {
          if (++v12 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      if (v12 != v11)
      {
        sub_EA7C68(v6, v8, *(*(a3 + 72) + 8 * i + 8));
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
      }

LABEL_11:
      if (v10 != v11)
      {
        while (*v10 != 2)
        {
          if (++v10 == v11)
          {
            goto LABEL_3;
          }
        }

        if (v10 != v11)
        {
          sub_EA94E0(v6, v8, v9);
        }
      }

LABEL_3:
      sub_EA8184(v6, v8, v9);
      sub_EA7ADC(v6, v8, v9);
      result = (**v6)(v6, v8, v9);
    }
  }

  return result;
}

void sub_EA93F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v3;
  if (v3 != v4)
  {
    v5 = *(a1 + 16);
    while (*v5 != 3)
    {
      if (++v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    sub_EA7C68(a1, a2, a3);
    a1 = v6;
    a2 = v7;
    a3 = v8;
    v3 = *(v6 + 16);
    v4 = *(v6 + 24);
  }

  while (1)
  {
LABEL_10:
    if (v3 == v4)
    {
      goto LABEL_11;
    }

    if (*v3 == 2)
    {
      break;
    }

    ++v3;
  }

  if (v3 == v4)
  {
LABEL_11:

    goto LABEL_13;
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  sub_EA94E0(a1, a2, a3);
  a1 = v9;
  a2 = v10;
  a3 = v11;

LABEL_13:
  sub_EA8184(a1, a2, a3);
}

void sub_EA94E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_6823AC(a2 + 1032))
  {
    return;
  }

  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x40u;
    v6 = *(v5 + 96);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = *(v5 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v6 = sub_14BB0C4(v12);
    *(v5 + 96) = v6;
    v7 = *sub_681D7C(a2 + 1032);
    v8 = *(v6 + 40);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v9 = *(a3 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  v5 = sub_14BB45C(v10);
  *(a3 + 208) = v5;
  *(v5 + 40) |= 0x40u;
  v6 = *(v5 + 96);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *sub_681D7C(a2 + 1032);
  v8 = *(v6 + 40);
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_12:
  v13 = *(v6 + 32);
  if (v13 < *v8)
  {
    *(v6 + 32) = v13 + 1;
    sub_64D110(v7, *&v8[2 * v13 + 2]);
    if (sub_682474(a2 + 1032))
    {
      goto LABEL_23;
    }

LABEL_14:
    v14 = sub_68238C(a2 + 1032);
    *(v6 + 16) |= 1u;
    v15 = *(v6 + 96);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_15:
    sub_64D110(v14, v15);
    v16 = sub_682394(a2 + 1032);
    v17 = v16[8];
    if (v17 > 2)
    {
      goto LABEL_27;
    }

LABEL_16:
    if (v17 == 1)
    {
      if (*v16 == -1)
      {
        goto LABEL_39;
      }
    }

    else if (v17 != 2 || v16[1] == -1 && *v16 == -1 && *(v16 + 1) == *(v16 + 2))
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_22:
  sub_14BAE64(*(v6 + 24));
  v19 = sub_19593CC(v6 + 24, v18);
  sub_64D110(v7, v19);
  if (!sub_682474(a2 + 1032))
  {
    goto LABEL_14;
  }

LABEL_23:
  v14 = sub_68233C(a2 + 1032);
  *(v6 + 16) |= 1u;
  v15 = *(v6 + 96);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_24:
  v20 = v14;
  v21 = *(v6 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_14BAE64(v22);
  *(v6 + 96) = v23;
  sub_64D110(v20, v23);
  v16 = sub_682394(a2 + 1032);
  v17 = v16[8];
  if (v17 <= 2)
  {
    goto LABEL_16;
  }

LABEL_27:
  if (v17 == 3 || v17 == 4)
  {
    v24 = *(v16 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v16 + 1);
    }

    if (v24)
    {
LABEL_34:
      v25 = sub_682394(a2 + 1032);
      *(a3 + 40) |= 0x100u;
      v27 = *(a3 + 240);
      if (!v27)
      {
        v28 = v25;
        v29 = *(a3 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v27 = sub_14BF484(v30);
        *(a3 + 240) = v27;
        v25 = v28;
      }

      sub_586C94(v25, v27, v26);
    }
  }

LABEL_39:
  v31 = sub_1950D4C((a3 + 16), dword_278D0E8, 11, &off_2769CA8, 0);
  sub_682344((a2 + 1032), __p);
  v32 = *(v31 + 88);
  if (!v32)
  {
    v34 = *(v31 + 84);
LABEL_47:
    sub_1959254(v31 + 72, v34 + 1);
    v32 = *(v31 + 88);
    v34 = *v32;
    goto LABEL_48;
  }

  v33 = *(v31 + 80);
  v34 = *v32;
  if (v33 < *v32)
  {
    *(v31 + 80) = v33 + 1;
    v35 = *&v32[2 * v33 + 2];
    if (*(v35 + 23) < 0)
    {
      operator delete(*v35);
    }

    v36 = *__p;
    *(v35 + 16) = v44;
    *v35 = v36;
    return;
  }

  if (v34 == *(v31 + 84))
  {
    goto LABEL_47;
  }

LABEL_48:
  *v32 = v34 + 1;
  v37 = *(v31 + 72);
  if (!v37)
  {
    operator new();
  }

  *v39 = v38;
  v39[1] = sub_195A650;
  v40 = *__p;
  *(v38 + 16) = v44;
  *v38 = v40;
  __p[1] = 0;
  v44 = 0;
  __p[0] = 0;
  v41 = *(v31 + 80);
  v42 = *(v31 + 88) + 8 * v41;
  *(v31 + 80) = v41 + 1;
  *(v42 + 8) = v38;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_EA98B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EA98D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) |= 0x10u;
  v5 = *(a3 + 208);
  if (v5)
  {
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v5 = sub_14BB45C(v10);
    *(a3 + 208) = v5;
    *(v5 + 40) |= 0x80u;
    v6 = *(v5 + 104);
    if (v6)
    {
LABEL_3:
      v7 = *(a2 + 1912);
      v8 = *(a2 + 1920);
      if (v7 == v8)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v11 = *(v5 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v6 = sub_14BB1FC(v12);
  *(v5 + 104) = v6;
  v7 = *(a2 + 1912);
  v8 = *(a2 + 1920);
  if (v7 != v8)
  {
LABEL_11:
    v13 = 0;
    do
    {
      v14 = sub_681D7C(v7);
      v15 = *v14;
      v16 = *(v14 + 8);
      while (v15 != v16)
      {
        v19 = sub_681D38(v7);
        if (v19 <= 42)
        {
          if (v19 == 30)
          {
            *(v6 + 16) |= 4u;
            v18 = *(v6 + 64);
            if (!v18)
            {
              v31 = *(v6 + 8);
              v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
              if (v31)
              {
                v32 = *v32;
              }

              sub_14BAE64(v32);
              v18 = v33;
              *(v6 + 64) = v33;
            }

            goto LABEL_15;
          }

          if (v19 == 32)
          {
            *(v6 + 16) |= 8u;
            v18 = *(v6 + 72);
            if (!v18)
            {
              v22 = *(v6 + 8);
              v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
              if (v22)
              {
                v23 = *v23;
              }

              sub_14BAE64(v23);
              v18 = v24;
              *(v6 + 72) = v24;
            }

            goto LABEL_15;
          }
        }

        else
        {
          switch(v19)
          {
            case '+':
              *(v6 + 16) |= 2u;
              v18 = *(v6 + 56);
              if (!v18)
              {
                v25 = *(v6 + 8);
                v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
                if (v25)
                {
                  v26 = *v26;
                }

                sub_14BAE64(v26);
                v18 = v27;
                *(v6 + 56) = v27;
              }

              goto LABEL_15;
            case ',':
              *(v6 + 16) |= 1u;
              v18 = *(v6 + 48);
              if (!v18)
              {
                v28 = *(v6 + 8);
                v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
                if (v28)
                {
                  v29 = *v29;
                }

                sub_14BAE64(v29);
                v18 = v30;
                *(v6 + 48) = v30;
              }

              goto LABEL_15;
            case '-':
              v13 = sub_682A60(v7);
              v20 = *(v6 + 40);
              if (v20 && (v21 = *(v6 + 32), v21 < *v20))
              {
                *(v6 + 32) = v21 + 1;
                v18 = *&v20[2 * v21 + 2];
              }

              else
              {
                sub_14BAE64(*(v6 + 24));
                v18 = sub_19593CC(v6 + 24, v17);
              }

LABEL_15:
              sub_64D110(v15, v18);
              break;
          }
        }

        v15 += 20;
      }

      if (sub_682A60(v7))
      {
        *(a3 + 40) |= 0x400000u;
        *(a3 + 292) = 1;
      }

      *(v6 + 16) |= 0x10u;
      *(v6 + 80) = v13;
      v7 += 448;
    }

    while (v7 != v8);
  }
}

void sub_EA9B7C()
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
  xmmword_27BAE00 = 0u;
  *algn_27BAE10 = 0u;
  dword_27BAE20 = 1065353216;
  sub_3A9A34(&xmmword_27BAE00, v0);
  sub_3A9A34(&xmmword_27BAE00, v3);
  sub_3A9A34(&xmmword_27BAE00, __p);
  sub_3A9A34(&xmmword_27BAE00, v9);
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
    qword_27BADD8 = 0;
    qword_27BADE0 = 0;
    qword_27BADD0 = 0;
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

void sub_EA9DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BADE8)
  {
    qword_27BADF0 = qword_27BADE8;
    operator delete(qword_27BADE8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_EA9E70(uint64_t a1))()
{
  v1 = *(a1 + 80);
  switch(v1)
  {
    case 2:
      v6 = *(a1 + 24);
      if (!v6)
      {
        v6 = &off_2776E58;
      }

      v5 = v6[10];
      goto LABEL_14;
    case 3:
      v3 = *(a1 + 32);
      v4 = &off_2776ED0;
LABEL_8:
      if (!v3)
      {
        v3 = v4;
      }

      v5 = v3[6];
LABEL_14:
      if (v5)
      {
        return v5;
      }

      else
      {
        return &off_277E5E8;
      }

    case 4:
      v2 = *(a1 + 40);
      if (!v2)
      {
        v2 = &off_2776F10;
      }

      v3 = v2[6];
      v4 = &off_277E738;
      goto LABEL_8;
  }

  result = &unk_27BAEE8;
  if ((atomic_load_explicit(&qword_27BAE28, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27BAE28))
    {
      sub_16E4CA4(&unk_27BAEE8, 0, 0);
      __cxa_guard_release(&qword_27BAE28);
    }

    return &unk_27BAEE8;
  }

  return result;
}

void sub_EAAA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
    if ((a55 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a55 & 0x80000000) == 0)
  {
LABEL_3:
    if (a49 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a50);
  if (a49 < 0)
  {
LABEL_4:
    operator delete(a44);
    if ((a43 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a43 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a37 & 0x80000000) == 0)
    {
LABEL_12:
      __cxa_guard_abort(&qword_27BAE38);
      if (a20 < 0)
      {
        operator delete(a15);
      }

      if (a26 < 0)
      {
        operator delete(a21);
        _Unwind_Resume(a1);
      }

      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(a32);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_EAB960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a37 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a44 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a37 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a32);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

uint64_t sub_EABAE8(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_EABB60(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_EABB60(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_EABE94()
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
  xmmword_27BAE70 = 0u;
  unk_27BAE80 = 0u;
  dword_27BAE90 = 1065353216;
  sub_3A9A34(&xmmword_27BAE70, v0);
  sub_3A9A34(&xmmword_27BAE70, v3);
  sub_3A9A34(&xmmword_27BAE70, __p);
  sub_3A9A34(&xmmword_27BAE70, v9);
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
    qword_27BAE48 = 0;
    qword_27BAE50 = 0;
    qword_27BAE40 = 0;
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

void sub_EAC0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BAE58)
  {
    qword_27BAE60 = qword_27BAE58;
    operator delete(qword_27BAE58);
  }

  _Unwind_Resume(exception_object);
}

void *sub_EAC188(void *a1, uint64_t *a2, uint64_t a3, unsigned int a4, int a5, int a6, double a7)
{
  v23 = a5;
  v22 = a7;
  v21 = a6;
  if (a4 == -1)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  }

  else
  {
    v12 = a4;
  }

  v20 = v12;
  v19 = 0;
  sub_538D0(a2, __p);
  v13 = a1[1];
  if (v13 >= a1[2])
  {
    a1[1] = sub_EACA9C(a1, &v19, __p, a3, &v20, &v23, &v22, &v21);
    if (SHIBYTE(v18) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v13 = 0;
    if (SHIBYTE(v18) < 0)
    {
      sub_325C((v13 + 8), __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      *(v13 + 24) = v18;
      *(v13 + 8) = v14;
    }

    if (*(a3 + 23) < 0)
    {
      sub_325C((v13 + 32), *a3, *(a3 + 8));
    }

    else
    {
      v16 = *a3;
      *(v13 + 48) = *(a3 + 16);
      *(v13 + 32) = v16;
    }

    *(v13 + 56) = v12;
    *(v13 + 60) = a5;
    *(v13 + 64) = a7;
    *(v13 + 72) = a6;
    a1[1] = v13 + 80;
    a1[1] = v13 + 80;
    if (SHIBYTE(v18) < 0)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_EAC2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v15);
  }

  *(v14 + 8) = v16;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_EAC330(void *a1, void *a2, uint64_t a3, unsigned int a4, int a5, int a6, double a7)
{
  v23 = a5;
  v22 = a7;
  v21 = a6;
  if (a4 == -1)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  }

  else
  {
    v12 = a4;
  }

  v20 = v12;
  v19 = 0;
  sub_53FB4(a2, __p);
  v13 = a1[1];
  if (v13 >= a1[2])
  {
    a1[1] = sub_EACA9C(a1, &v19, __p, a3, &v20, &v23, &v22, &v21);
    if (SHIBYTE(v18) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v13 = 0;
    if (SHIBYTE(v18) < 0)
    {
      sub_325C((v13 + 8), __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      *(v13 + 24) = v18;
      *(v13 + 8) = v14;
    }

    if (*(a3 + 23) < 0)
    {
      sub_325C((v13 + 32), *a3, *(a3 + 8));
    }

    else
    {
      v16 = *a3;
      *(v13 + 48) = *(a3 + 16);
      *(v13 + 32) = v16;
    }

    *(v13 + 56) = v12;
    *(v13 + 60) = a5;
    *(v13 + 64) = a7;
    *(v13 + 72) = a6;
    a1[1] = v13 + 80;
    a1[1] = v13 + 80;
    if (SHIBYTE(v18) < 0)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_EAC494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v15);
  }

  *(v14 + 8) = v16;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_EAC4D8(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, double a7)
{
  v28 = a5;
  v27 = a7;
  v26 = a6;
  if (a4 == -1)
  {
    v11 = a1[1];
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 4);
    v25 = v9;
    v24 = 1;
    if (v11 < a1[2])
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = sub_EACF0C(a1, &v24, a2, a3, &v25, &v28, &v27, &v26);
    goto LABEL_12;
  }

  LODWORD(v9) = a4;
  v11 = a1[1];
  v10 = a1[2];
  v25 = a4;
  v24 = 1;
  if (v11 >= v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  *v11 = 1;
  if (*(a2 + 23) < 0)
  {
    v14 = a6;
    v15 = a7;
    v16 = a5;
    sub_325C((v11 + 8), *a2, *(a2 + 8));
    a5 = v16;
    a7 = v15;
    a6 = v14;
  }

  else
  {
    v12 = *a2;
    *(v11 + 24) = *(a2 + 16);
    *(v11 + 8) = v12;
  }

  if (*(a3 + 23) < 0)
  {
    v18 = *a3;
    v19 = *(a3 + 8);
    v20 = a6;
    v21 = a7;
    v22 = a5;
    sub_325C((v11 + 32), v18, v19);
    a5 = v22;
    a7 = v21;
    a6 = v20;
  }

  else
  {
    v17 = *a3;
    *(v11 + 48) = *(a3 + 16);
    *(v11 + 32) = v17;
  }

  *(v11 + 56) = v9;
  *(v11 + 60) = a5;
  *(v11 + 64) = a7;
  *(v11 + 72) = a6;
  v13 = v11 + 80;
  a1[1] = v11 + 80;
LABEL_12:
  a1[1] = v13;
  return a1;
}

void sub_EAC650(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
    *(v1 + 8) = v3;
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void *sub_EAC680@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_EAD16C(a2, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (1)
    {
      sub_12CBD00(&v13, 0, 0);
      v7 = v15;
      if (!*v5)
      {
        break;
      }

      if (*v5 == 1)
      {
        v8 = 3;
LABEL_8:
        v7 = v15 | 8;
        v19 = v8;
      }

      v18 = *(v5 + 56);
      v15 = v7 | 5;
      v9 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v9 = *v9;
      }

      sub_194EA1C(&v16, (v5 + 32), v9);
      v15 |= 2u;
      v10 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v10 = *v10;
      }

      v11 = v5 + 8;
      sub_194EA1C(&v17, (v5 + 8), v10);
      v12 = a2[1];
      if (v12 >= a2[2])
      {
        a2[1] = sub_EAD3AC(a2, &v13);
        result = sub_12CBDFC(&v13);
        v5 = v11 + 72;
        if (v11 + 72 == v6)
        {
          return result;
        }
      }

      else
      {
        sub_EAD318(a2, a2[1], &v13);
        a2[1] = v12 + 48;
        result = sub_12CBDFC(&v13);
        v5 = v11 + 72;
        if (v11 + 72 == v6)
        {
          return result;
        }
      }
    }

    v8 = 2;
    goto LABEL_8;
  }

  return result;
}

void *sub_EAC850@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_EAD564(a2, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (1)
    {
      sub_12CC64C(v16, 0, 0);
      v7 = v18;
      if (!*v5)
      {
        break;
      }

      if (*v5 == 1)
      {
        v8 = 3;
LABEL_8:
        v7 = v18 | 0x40;
        v25 = v8;
      }

      v21 = *(v5 + 56);
      v18 = v7 | 5;
      v9 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v9 = *v9;
      }

      sub_194EA1C(&v19, (v5 + 32), v9);
      v18 |= 2u;
      v10 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v10 = *v10;
      }

      v11 = v5 + 8;
      sub_194EA1C(&v20, (v5 + 8), v10);
      v23 = *(v5 + 64);
      v12 = *(v5 + 72);
      v18 |= 0x18u;
      v22 = v12;
      v13 = sub_685BF4(v12);
      if (v13 <= 4)
      {
        v18 |= 0x20u;
        v24 = v13;
        v14 = *(v5 + 60);
        if ((v14 - 1) <= 9)
        {
          goto LABEL_18;
        }

LABEL_15:
        v15 = a2[1];
        if (v15 < a2[2])
        {
          goto LABEL_19;
        }

LABEL_3:
        a2[1] = sub_EAD7B0(a2, v16);
        result = sub_12CC74C(v16);
        v5 = v11 + 72;
        if (v11 + 72 == v6)
        {
          return result;
        }
      }

      else
      {
        v14 = *(v5 + 60);
        if ((v14 - 1) > 9)
        {
          goto LABEL_15;
        }

LABEL_18:
        v18 |= 0x80u;
        v26 = v14 + 2;
        v15 = a2[1];
        if (v15 >= a2[2])
        {
          goto LABEL_3;
        }

LABEL_19:
        sub_EAD71C(a2, v15, v16);
        a2[1] = v15 + 72;
        result = sub_12CC74C(v16);
        v5 = v11 + 72;
        if (v11 + 72 == v6)
        {
          return result;
        }
      }
    }

    v8 = 2;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_EACA9C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int *a6, uint64_t *a7, int *a8)
{
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v8 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v11 = 0x333333333333333;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    if (v11 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((*(a1 + 8) - *a1) >> 4);
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  *v12 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v12 + 8), *a3, *(a3 + 8));
  }

  else
  {
    *(v12 + 8) = *a3;
    *(v12 + 24) = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((v12 + 32), *a4, *(a4 + 8));
  }

  else
  {
    *(v12 + 32) = *a4;
    *(v12 + 48) = *(a4 + 16);
  }

  *(v12 + 56) = v13;
  *(v12 + 60) = v14;
  *(v12 + 64) = v15;
  *(v12 + 72) = v16;
  v17 = *(a1 + 8);
  v18 = v12 + *a1 - v17;
  sub_EACD24(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v12 + 80;
  *(a1 + 16) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v12 + 80;
}

void sub_EACC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
    sub_EACCA0(va);
    _Unwind_Resume(a1);
  }

  sub_EACCA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EACCA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
      if ((*(i - 49) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 49) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EACD24(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2 + 2;
    do
    {
      v10 = v7 - 2;
      *v4 = *(v7 - 32);
      if (*(v7 - 1) < 0)
      {
        sub_325C((v4 + 8), *(v7 - 3), *(v7 - 2));
      }

      else
      {
        v11 = *(v7 - 24);
        *(v4 + 24) = *(v7 - 1);
        *(v4 + 8) = v11;
      }

      if (*(v7 + 23) < 0)
      {
        sub_325C((v4 + 32), *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        *(v4 + 48) = *(v7 + 2);
        *(v4 + 32) = v8;
      }

      v9 = *(v7 + 24);
      *(v4 + 72) = *(v7 + 10);
      *(v4 + 56) = v9;
      v4 = v12 + 80;
      v12 += 80;
      v7 += 5;
    }

    while (v10 + 5 != a3);
    while (1)
    {
      if (v6 == a3)
      {
        return;
      }

      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 4));
        if ((*(v6 + 31) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((*(v6 + 31) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(*(v6 + 1));
LABEL_10:
      v6 += 5;
    }
  }
}

void sub_EACE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_EACE8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_EACE8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 48));
        if ((*(v3 - 49) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((*(v3 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      operator delete(*(v3 - 72));
LABEL_4:
      v3 -= 80;
    }
  }

  return a1;
}

uint64_t sub_EACF0C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int *a6, uint64_t *a7, int *a8)
{
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v8 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v11 = 0x333333333333333;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    if (v11 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((*(a1 + 8) - *a1) >> 4);
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  *v12 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v12 + 8), *a3, *(a3 + 8));
  }

  else
  {
    *(v12 + 8) = *a3;
    *(v12 + 24) = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((v12 + 32), *a4, *(a4 + 8));
  }

  else
  {
    *(v12 + 32) = *a4;
    *(v12 + 48) = *(a4 + 16);
  }

  *(v12 + 56) = v13;
  *(v12 + 60) = v14;
  *(v12 + 64) = v15;
  *(v12 + 72) = v16;
  v17 = *(a1 + 8);
  v18 = v12 + *a1 - v17;
  sub_EACD24(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v12 + 80;
  *(a1 + 16) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v12 + 80;
}

void sub_EAD0D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
    sub_EACCA0(va);
    _Unwind_Resume(a1);
  }

  sub_EACCA0(va);
  _Unwind_Resume(a1);
}

void **sub_EAD110(void **a1)
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
        v3 = sub_12CC74C(v3 - 72);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_EAD16C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_EAD2C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_12CBDFC(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EAD318(uint64_t a1, void *a2, uint64_t a3)
{
  sub_12CBD00(a2, 0, 0);
  if (v4 != a3)
  {
    size = v4->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a3 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v6)
    {
      sub_12CC5D8(v4, a3);
    }

    else
    {
      sub_12CC584(v4, a3);
    }
  }
}

uint64_t sub_EAD3AC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (16 * ((a1[1] - *a1) >> 4));
  sub_EAD318(a1, v15, a2);
  v6 = 48 * v2 + 48;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = (v15 + v9);
    do
    {
      sub_EAD318(a1, v13, v12);
      v12 += 48;
      v13 += 6;
      v11 -= 48;
    }

    while (v12 != v8);
    do
    {
      sub_12CBDFC(v7);
      v7 += 48;
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

void sub_EAD524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_EAD2C4(va);
  _Unwind_Resume(a1);
}

void sub_EAD538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 48;
    do
    {
      v5 = sub_12CBDFC(v5) - 48;
      v3 += 48;
    }

    while (v3);
  }

  sub_EAD2C4(va);
  _Unwind_Resume(a1);
}

void *sub_EAD564(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_EAD6C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_12CC74C(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_EAD71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_12CC64C(a2, 0, 0);
  if (v4 != a3)
  {
    size = v4->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v7 = *(a3 + 8);
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v7)
    {
      *&result = sub_12CD378(v4, a3).n128_u64[0];
    }

    else
    {
      sub_12CD324(v4, a3);
    }
  }

  return result;
}

uint64_t sub_EAD7B0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_EAD71C(a1, v15, a2);
  v6 = 72 * v2 + 72;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v15 + v9;
    do
    {
      sub_EAD71C(a1, v13, v12);
      v12 += 72;
      v13 += 72;
      v11 -= 72;
    }

    while (v12 != v8);
    do
    {
      sub_12CC74C(v7);
      v7 += 72;
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

void sub_EAD940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_EAD6C8(va);
  _Unwind_Resume(a1);
}

void sub_EAD954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 72;
    do
    {
      v5 = sub_12CC74C(v5) - 72;
      v3 += 72;
    }

    while (v3);
  }

  sub_EAD6C8(va);
  _Unwind_Resume(a1);
}

void sub_EAD980(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v9 = *(*(a2 + 64) + v6);
      if (*(v9 + 884) <= 1u)
      {
        v10 = *a1;
        *(v9 + 40) |= 0x400u;
        v8 = *(v9 + 784);
        if (!v8)
        {
          v11 = *(v9 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          sub_14BCBFC(v12);
          v8 = v7;
          *(v9 + 784) = v7;
        }

        sub_ECB0E0((v10 + 3200 * v5++), v8);
      }

      v6 += 8;
      --v2;
    }

    while (v2);
  }
}

void sub_EADA40()
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
  xmmword_27BAF30 = 0u;
  unk_27BAF40 = 0u;
  dword_27BAF50 = 1065353216;
  sub_3A9A34(&xmmword_27BAF30, v0);
  sub_3A9A34(&xmmword_27BAF30, v3);
  sub_3A9A34(&xmmword_27BAF30, __p);
  sub_3A9A34(&xmmword_27BAF30, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_EADC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BAF30);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_EADC88(void *a1, uint64_t a2)
{
  v2 = *(a2 + 288);
  if (v2 >= 1)
  {
    v5 = 0;
    for (i = 8; ; i += 8)
    {
      v9 = *(*(a2 + 296) + i);
      if (*(v9 + 292) > 1u)
      {
        goto LABEL_5;
      }

      *(v9 + 40) |= 0x10u;
      v10 = *(v9 + 264);
      if (!v10)
      {
        break;
      }

      *(v10 + 4) |= 1u;
      v8 = v10[3];
      if (!v8)
      {
        goto LABEL_13;
      }

LABEL_4:
      sub_ECB0E0((*a1 + 3200 * v5++), v8);
LABEL_5:
      if (!--v2)
      {
        return;
      }
    }

    v11 = *(v9 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v10 = sub_14BD174(v12);
    *(v9 + 264) = v10;
    *(v10 + 4) |= 1u;
    v8 = v10[3];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:
    v13 = v10[1];
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_14BCBFC(v14);
    v8 = v7;
    v10[3] = v7;
    goto LABEL_4;
  }
}

void sub_EADD94()
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
  xmmword_27BAF58 = 0u;
  unk_27BAF68 = 0u;
  dword_27BAF78 = 1065353216;
  sub_3A9A34(&xmmword_27BAF58, v0);
  sub_3A9A34(&xmmword_27BAF58, v3);
  sub_3A9A34(&xmmword_27BAF58, __p);
  sub_3A9A34(&xmmword_27BAF58, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_EADF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BAF58);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_EADFDC(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_14CA0A8(a2, 0, 0);
  *(a2 + 40) |= 0x80u;
  *(a2 + 248) = 0;
  sub_58568(v11);
  sub_585EC(v11, __p);
  *(a2 + 40) |= 2u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA30((a2 + 200), __p, v5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a2 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(a2 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v7 = *(a2 + 56);
  if (v7 < *v6)
  {
    *(a2 + 56) = v7 + 1;
    goto LABEL_10;
  }

LABEL_9:
  v8 = sub_14D59A4(*(a2 + 48));
  sub_19593CC(a2 + 48, v8);
LABEL_10:
  sub_ED2508(v11, *a1);
}

void sub_EAE3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1758FB8(&a13);
  sub_14CA828(v18);
  _Unwind_Resume(a1);
}

void sub_EAE444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 56);
  if (v4)
  {
    v8 = *(a3 + 64);
    if (v8)
    {
      v9 = (v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = 8 * v4;
    do
    {
      while (1)
      {
        v13 = *v9;
        v14 = *(a2 + 112);
        if (v14)
        {
          v15 = *(a2 + 104);
          if (v15 < *v14)
          {
            break;
          }
        }

        v11 = sub_14BD738(*(a2 + 96));
        v12 = sub_19593CC(a2 + 96, v11);
        sub_1490E10(v12, v13);
        ++v9;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      *(a2 + 104) = v15 + 1;
      sub_1490E10(*&v14[2 * v15 + 2], v13);
      ++v9;
      v10 -= 8;
    }

    while (v10);
LABEL_10:
    if (a4)
    {
      v16 = *(a3 + 112);
      if (v16)
      {
        v17 = (v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a3 + 104);
      if (v18)
      {
        v19 = 8 * v18;
        do
        {
          while (1)
          {
            v22 = *v17;
            v23 = *(a2 + 232);
            if (v23)
            {
              v24 = *(a2 + 224);
              if (v24 < *v23)
              {
                break;
              }
            }

            v20 = sub_14BDE5C(*(a2 + 216));
            v21 = sub_19593CC(a2 + 216, v20);
            sub_149EC4C(v21, v22);
            ++v17;
            v19 -= 8;
            if (!v19)
            {
              goto LABEL_20;
            }
          }

          *(a2 + 224) = v24 + 1;
          sub_149EC4C(*&v23[2 * v24 + 2], v22);
          ++v17;
          v19 -= 8;
        }

        while (v19);
      }

LABEL_20:
      v25 = *(a3 + 136);
      if (v25)
      {
        v26 = (v25 + 8);
      }

      else
      {
        v26 = 0;
      }

      v27 = *(a3 + 128);
      if (v27)
      {
        v28 = 8 * v27;
        do
        {
          while (1)
          {
            v31 = *v26;
            v32 = *(a2 + 256);
            if (v32)
            {
              v33 = *(a2 + 248);
              if (v33 < *v32)
              {
                break;
              }
            }

            v29 = sub_14BDE5C(*(a2 + 240));
            v30 = sub_19593CC(a2 + 240, v29);
            sub_149EC4C(v30, v31);
            ++v26;
            v28 -= 8;
            if (!v28)
            {
              return;
            }
          }

          *(a2 + 248) = v33 + 1;
          sub_149EC4C(*&v32[2 * v33 + 2], v31);
          ++v26;
          v28 -= 8;
        }

        while (v28);
      }
    }
  }
}

BOOL sub_EAE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = nullsub_1(a2);
  *(a4 + 40) |= 1u;
  v7 = *(a4 + 8);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    v8 = *v8;
  }

  sub_194EA1C((a4 + 456), v6, v8);
  v58 = a2;
  v9 = sub_5EB608(a2);
  v10 = *v9;
  v59 = *(v9 + 1);
  if (*v9 != v59)
  {
    v61 = a4;
    while (1)
    {
      v11 = *(v10 + 1128);
      v60 = v10;
      v62 = *(v10 + 1136);
      if (v11 != v62)
      {
        break;
      }

LABEL_5:
      v10 = v60 + 12656;
      if (v60 + 12656 == v59)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      v12 = *(a4 + 64);
      if (v12 && (v13 = *(a4 + 56), v13 < *v12))
      {
        *(a4 + 56) = v13 + 1;
        v14 = *&v12[2 * v13 + 2];
      }

      else
      {
        v15 = sub_14D5948(*(a4 + 48));
        v9 = sub_19593CC(a4 + 48, v15);
        v14 = v9;
      }

      v16 = *v11;
      v17 = *(v14 + 40);
      *(v14 + 40) = v17 | 8;
      v18 = *(v11 + 1016);
      v19 = v18 / 10;
      v20 = v18 % 10;
      if (v18 < 0)
      {
        v21 = -5;
      }

      else
      {
        v21 = 5;
      }

      *(v14 + 40) = v17 | 0x18;
      *(v14 + 72) = v16;
      *(v14 + 76) = v19 + (((103 * (v21 + v20)) >> 15) & 1) + ((103 * (v21 + v20)) >> 10);
      v22 = *(v11 + 2424);
      v23 = *(v11 + 2432);
      if (v22 != v23)
      {
        *(v14 + 40) = v17 | 0x19;
        v24 = *(v14 + 48);
        if (v24)
        {
          if (v23 != v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v25 = *(v14 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          sub_14BA684(v26);
          v24 = v9;
          *(v14 + 48) = v9;
          v23 = *(v11 + 2432);
          if (v23 != *(v11 + 2424))
          {
LABEL_23:
            v27 = v23;
            do
            {
              while (1)
              {
                v28 = *(v27 - 16);
                v27 -= 16;
                v29 = v28 / 100;
                v30 = v28 % 100;
                v31 = v28 < 0 ? -50 : 50;
                v32 = v29 + ((5243 * (v31 + v30)) >> 19) + ((5243 * (v31 + v30)) >> 31);
                v33 = v24[4];
                if (v33 == v24[5])
                {
                  v34 = v33 + 1;
                  sub_1958E5C(v24 + 4, v33 + 1);
                  *(*(v24 + 3) + 4 * v33) = v32;
                }

                else
                {
                  *(*(v24 + 3) + 4 * v33) = v32;
                  v34 = v33 + 1;
                }

                v24[4] = v34;
                v35 = *(v23 - 8);
                v36 = v35 / 10;
                v37 = v35 % 10;
                v38 = v35 < 0 ? -5 : 5;
                v39 = v36 + (((103 * (v38 + v37)) >> 15) & 1) + ((103 * (v38 + v37)) >> 10);
                v40 = v24[10];
                if (v40 == v24[11])
                {
                  break;
                }

                *(*(v24 + 6) + 4 * v40) = v39;
                v24[10] = v40 + 1;
                v23 = v27;
                if (v27 == *(v11 + 2424))
                {
                  goto LABEL_8;
                }
              }

              sub_1958E5C(v24 + 10, v40 + 1);
              *(*(v24 + 6) + 4 * v40) = v39;
              v24[10] = v40 + 1;
              v23 = v27;
            }

            while (v27 != *(v11 + 2424));
          }
        }
      }

LABEL_8:
      sub_EAF9D4(v9, v11, v14);
      v11 += 2616;
      a4 = v61;
      if (v11 == v62)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_37:
  if (*(a3 + 201))
  {
    *__p = 0u;
    *v64 = 0u;
    v65 = 1065353216;
    v41 = sub_5EB608(v58);
    v43 = *v41;
    v42 = v41[1];
    if (*v41 != v42)
    {
      do
      {
        sub_EAF6BC(v41, v43, __p, a4);
        v43 += 12656;
      }

      while (v43 != v42);
    }

    v44 = sub_5EB608(v58);
    v46 = *v44;
    v45 = v44[1];
    if (*v44 != v45)
    {
      do
      {
        sub_EAF83C(v44, v46, __p, a4);
        v46 += 12656;
      }

      while (v46 != v45);
    }

    if (sub_5EBC70(v58))
    {
      v47 = sub_5EBC28(v58);
      v48 = *v47;
      *(a4 + 40) |= 4u;
      v49 = *(a4 + 472);
      if (!v49)
      {
        v50 = *(a4 + 8);
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v51 = *v51;
        }

        sub_14BDC34(v51);
        v49 = v47;
        *(a4 + 472) = v47;
      }

      sub_EAEEB0(v47, v48, __p, v49);
    }

    v52 = v64[0];
    if (v64[0])
    {
      do
      {
        v56 = *v52;
        if (*(v52 + 39) < 0)
        {
          operator delete(v52[2]);
        }

        operator delete(v52);
        v52 = v56;
      }

      while (v56);
    }

    v9 = __p[0];
    __p[0] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  sub_EAF414(v9, v58, a3, a4);
  result = sub_5EBC70(v58);
  if (result)
  {
    v54 = *sub_5EBC28(v58);
    v55 = *v54;
    result = sub_5CC07C(v54);
    if (result && (v55 - 10) <= 2)
    {
      *(a4 + 40) |= 0x40u;
      *(a4 + 504) = 1;
    }
  }

  return result;
}