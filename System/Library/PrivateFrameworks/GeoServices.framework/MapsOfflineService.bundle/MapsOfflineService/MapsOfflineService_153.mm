void **sub_9750B4(void **a1)
{
  sub_53A868((a1 + 85));
  sub_973B5C(a1 + 73);

  return sub_973C60(a1);
}

uint64_t sub_9750F8(uint64_t a1)
{
  v2 = *(a1 + 5680);
  if (v2)
  {
    *(a1 + 5688) = v2;
    operator delete(v2);
  }

  sub_559E70((a1 + 4584));
  sub_559E70((a1 + 3496));
  v3 = *(a1 + 3472);
  if (v3)
  {
    *(a1 + 3480) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 3448);
  if (v4)
  {
    *(a1 + 3456) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 3424);
  if (v5)
  {
    v6 = *(a1 + 3432);
    v7 = *(a1 + 3424);
    if (v6 != v5)
    {
      do
      {
        v6 -= 464;
        sub_974D90(v6);
      }

      while (v6 != v5);
      v7 = *(a1 + 3424);
    }

    *(a1 + 3432) = v5;
    operator delete(v7);
  }

  sub_974F1C((a1 + 2224));
  v8 = *(a1 + 2200);
  if (v8)
  {
    *(a1 + 2208) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 2152);
  if (v9)
  {
    *(a1 + 2160) = v9;
    operator delete(v9);
  }

  if (*(a1 + 2144) == 1)
  {
    v10 = *(a1 + 2112);
    if (v10)
    {
      v11 = *(a1 + 2120);
      v12 = *(a1 + 2112);
      if (v11 != v10)
      {
        do
        {
          if (*(v11 - 17) < 0)
          {
            operator delete(*(v11 - 40));
          }

          v11 -= 48;
        }

        while (v11 != v10);
        v12 = *(a1 + 2112);
      }

      *(a1 + 2120) = v10;
      operator delete(v12);
    }
  }

  if (*(a1 + 2104) == 1)
  {
    v13 = *(a1 + 2072);
    if (v13)
    {
      *(a1 + 2080) = v13;
      operator delete(v13);
    }

    if (*(a1 + 2055) < 0)
    {
      operator delete(*(a1 + 2032));
    }
  }

  v14 = *(a1 + 2000);
  if (v14)
  {
    *(a1 + 2008) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 1944);
  if (v15)
  {
    *(a1 + 1952) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 1920);
  if (v16)
  {
    *(a1 + 1928) = v16;
    operator delete(v16);
  }

  v23 = (a1 + 1864);
  sub_973FB8(&v23);
  sub_53A868(a1 + 1696);
  sub_973B5C((a1 + 1600));
  sub_973C60((a1 + 1016));
  if (*(a1 + 1000) == 1)
  {
    v17 = *(a1 + 968);
    if (v17)
    {
      *(a1 + 976) = v17;
      operator delete(v17);
    }
  }

  if (*(a1 + 952) == 1)
  {
    v18 = *(a1 + 920);
    if (v18)
    {
      *(a1 + 928) = v18;
      operator delete(v18);
    }

    v19 = *(a1 + 880);
    if (v19)
    {
      v20 = *(a1 + 888);
      v21 = *(a1 + 880);
      if (v20 != v19)
      {
        do
        {
          if (*(v20 - 9) < 0)
          {
            operator delete(*(v20 - 32));
          }

          v20 -= 40;
        }

        while (v20 != v19);
        v21 = *(a1 + 880);
      }

      *(a1 + 888) = v19;
      operator delete(v21);
    }
  }

  if (*(a1 + 840) != 1 || (*(a1 + 839) & 0x80000000) == 0)
  {
    if (*(a1 + 792) != 1)
    {
      goto LABEL_53;
    }

LABEL_56:
    sub_973264(a1 + 88);
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_57;
  }

  operator delete(*(a1 + 816));
  if (*(a1 + 792) == 1)
  {
    goto LABEL_56;
  }

LABEL_53:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_57:
  operator delete(*(a1 + 16));
  return a1;
}

uint64_t sub_975394(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2C1C04((a1 + 48), a3);
  *(a1 + 72) = a4;
  sub_64B998(a1 + 80);
  sub_975468((a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  sub_975588(a2, (a1 + 24));
  return a1;
}

void sub_975420(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 80);
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_975468(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t *sub_975588(__int128 **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        sub_325C(__p, *v3, *(v3 + 1));
        v13 = 1;
        v7 = a2[1];
        if (v7 >= a2[2])
        {
LABEL_9:
          v8 = sub_667410(a2, __p);
          v9 = SHIBYTE(v12);
          a2[1] = v8;
          if (v9 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_4;
        }
      }

      else
      {
        v6 = *v3;
        v12 = *(v3 + 2);
        *__p = v6;
        v13 = 1;
        v7 = a2[1];
        if (v7 >= a2[2])
        {
          goto LABEL_9;
        }
      }

      v5 = *__p;
      *(v7 + 16) = v12;
      *v7 = v5;
      __p[1] = 0;
      v12 = 0;
      __p[0] = 0;
      *(v7 + 24) = v13;
      a2[1] = v7 + 32;
LABEL_4:
      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  return a2;
}

void sub_975670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_97568C()
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
  xmmword_27B1CD0 = 0u;
  unk_27B1CE0 = 0u;
  dword_27B1CF0 = 1065353216;
  sub_3A9A34(&xmmword_27B1CD0, v0);
  sub_3A9A34(&xmmword_27B1CD0, v3);
  sub_3A9A34(&xmmword_27B1CD0, __p);
  sub_3A9A34(&xmmword_27B1CD0, v9);
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
    qword_27B1C78 = 0;
    qword_27B1C80 = 0;
    qword_27B1C70 = 0;
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

void sub_975964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1C88)
  {
    qword_27B1C90 = qword_27B1C88;
    operator delete(qword_27B1C88);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_975A28(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AFC64(a2);
  a1[2] = sub_3AFB1C(a2);
  a1[3] = sub_3AFEE8(a2);
  nullsub_1(a1 + 4);
  return a1;
}

void sub_975CA4(_Unwind_Exception *a1)
{
  sub_9778C4(v1);
  sub_1F1A8(v2 - 112);
  _Unwind_Resume(a1);
}

void *sub_975D04(void *result, unint64_t a2)
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

double sub_975E80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 48);
  v6 = *(a3 + 56);
  if (v5 == v6)
  {
LABEL_26:

    return sub_64B998(a5);
  }

  else
  {
    v7 = *(a3 + 48);
    while (1)
    {
      v8 = *v7;
      v9 = v7[1];
      if (*v7 != v9)
      {
        while (*v8)
        {
          v8 += 144;
          if (v8 == v9)
          {
            goto LABEL_32;
          }
        }
      }

      if (v8 == v9)
      {
        goto LABEL_32;
      }

      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (v10 != v11)
      {
        break;
      }

LABEL_3:
      v7 += 8;
      if (v7 == v6)
      {
        while (1)
        {
          v13 = *v5;
          v14 = v5[1];
          if (*v5 != v14)
          {
            while (*v13)
            {
              v13 += 144;
              if (v13 == v14)
              {
                goto LABEL_32;
              }
            }
          }

          if (v13 == v14)
          {
            break;
          }

          v15 = *(v13 + 8);
          for (i = *(v13 + 16); v15 != i; v15 += 1136)
          {
            if (*(v15 + 1128) == 3)
            {

              sub_977394(a1, a2, v15);
            }
          }

          v5 += 8;
          if (v5 == v6)
          {
            goto LABEL_26;
          }
        }

LABEL_32:
        exception = __cxa_allocate_exception(0x40uLL);
        v18 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
      }
    }

    while (v10[282])
    {
      v10 += 284;
      if (v10 == v11)
      {
        goto LABEL_3;
      }
    }

    sub_975FDC(a1, a2, v10, a4, a5);
  }

  return result;
}

void sub_975FDC(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_3A25A8(a1[1], a3[2] | (a3[1] << 32), 0, "trip");
  v11 = *(v10 + *(v10 - *v10 + 6));
  v12 = sub_92FC60(a1[1], v11, 0, "line");
  v13 = *(v12 + *(v12 - *v12 + 6));
  v15 = a3[1];
  v14 = a3[2];
  v16 = a3[4];
  v17 = sub_3A231C(a1[1], v14 | (v15 << 32), 0);
  v18 = &v17[-*v17];
  if (*v18 < 5u)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v18 + 2);
    if (*(v18 + 2))
    {
      v19 += &v17[*&v17[v19]];
    }
  }

  v20 = (v19 + 4 * v15 + 4 + *(v19 + 4 * v15 + 4));
  v21 = (v20 - *v20);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = *(v20 + v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = *&v17[24 * v23 + 4 + 24 * v16 + *(v18 + 3) + *&v17[*(v18 + 3)]];
  v180 = 0uLL;
  v181 = 0;
  v178 = 0uLL;
  v179 = 0;
  v176 = 0uLL;
  v177 = 0;
  v25 = sub_92FC60(a1[1], v11, 0, "line");
  v26 = (v25 - *v25);
  if (*v26 < 0x35u || (v27 = v26[26]) == 0 || !*(v25 + v27))
  {
    v28 = sub_92FC60(a1[1], v11, 0, "line");
    v29 = (v28 - *v28);
    if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
    {
      v31 = (v28 + v30 + *(v28 + v30));
      memset(__p, 0, 24);
      sub_943AEC(__p, *v31);
      *&__dst = v31 + 1;
      v171[0] = &v31[*v31 + 1];
      sub_943E24(&__dst, v171, __p, sub_509164);
      v32 = *__p;
      v33 = __p[2];
    }

    else
    {
      v33 = 0;
      v32 = 0uLL;
    }

    v175[0] = v32;
    *&v175[1] = v33;
    sub_9D6590(v175, a4, __p);
    sub_9D4538(__p, &__dst);
    if (SHIBYTE(v181) < 0)
    {
      operator delete(v180);
    }

    v180 = __dst;
    v181 = v174;
    v34 = __p[0];
    if (!__p[0])
    {
      goto LABEL_28;
    }

    v35 = __p[1];
    v36 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_27:
      __p[1] = v34;
      operator delete(v36);
LABEL_28:
      v38 = *&v175[0];
      if (*&v175[0])
      {
        v39 = *(&v175[0] + 1);
        v40 = *&v175[0];
        if (*(&v175[0] + 1) != *&v175[0])
        {
          v161 = v13;
          v41 = v11;
          v42 = a4;
          v43 = v24;
          v44 = a2;
          v45 = a5;
          do
          {
            v46 = *(v39 - 24);
            if (v46)
            {
              v47 = *(v39 - 16);
              v48 = *(v39 - 24);
              if (v47 != v46)
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
                v48 = *(v39 - 24);
              }

              *(v39 - 16) = v46;
              operator delete(v48);
            }

            v49 = (v39 - 64);
            if (*(v39 - 41) < 0)
            {
              operator delete(*v49);
            }

            v39 -= 64;
          }

          while (v49 != v38);
          v40 = *&v175[0];
          a5 = v45;
          a2 = v44;
          v24 = v43;
          a4 = v42;
          v11 = v41;
          v13 = v161;
        }

        *(&v175[0] + 1) = v38;
        operator delete(v40);
      }

      goto LABEL_44;
    }

    while (1)
    {
      if (*(v35 - 1) < 0)
      {
        operator delete(*(v35 - 3));
        v37 = v35 - 7;
        if ((*(v35 - 33) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_25:
        operator delete(*v37);
        v35 = v37;
        if (v37 == v34)
        {
LABEL_26:
          v36 = __p[0];
          goto LABEL_27;
        }
      }

      else
      {
        v37 = v35 - 7;
        if (*(v35 - 33) < 0)
        {
          goto LABEL_25;
        }

LABEL_22:
        v35 = v37;
        if (v37 == v34)
        {
          goto LABEL_26;
        }
      }
    }
  }

LABEL_44:
  v50 = sub_93E04C(a1[3], v13, 0, "system");
  v51 = (v50 - *v50);
  if (*v51 >= 0x13u)
  {
    v52 = v51[9];
    if (v52)
    {
      if (*(v50 + v52))
      {
        goto LABEL_79;
      }
    }
  }

  v53 = sub_93E04C(a1[3], v13, 0, "system");
  v54 = (v53 - *v53);
  if (*v54 >= 7u && (v55 = v54[3]) != 0)
  {
    v56 = (v53 + v55 + *(v53 + v55));
    memset(__p, 0, 24);
    sub_943AEC(__p, *v56);
    *&__dst = v56 + 1;
    v171[0] = &v56[*v56 + 1];
    sub_943E24(&__dst, v171, __p, sub_509164);
    v57 = *__p;
    v58 = __p[2];
  }

  else
  {
    v58 = 0;
    v57 = 0uLL;
  }

  v175[0] = v57;
  *&v175[1] = v58;
  sub_9D6590(v175, a4, __p);
  sub_9D43A4(__p, &__dst);
  if (SHIBYTE(v179) < 0)
  {
    operator delete(v178);
  }

  v178 = __dst;
  v179 = v174;
  v59 = __p[0];
  if (__p[0])
  {
    v60 = __p[1];
    v61 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_62:
      __p[1] = v59;
      operator delete(v61);
      goto LABEL_63;
    }

    while (1)
    {
      if (*(v60 - 1) < 0)
      {
        operator delete(*(v60 - 3));
        v62 = v60 - 7;
        if ((*(v60 - 33) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

LABEL_60:
        operator delete(*v62);
        v60 = v62;
        if (v62 == v59)
        {
LABEL_61:
          v61 = __p[0];
          goto LABEL_62;
        }
      }

      else
      {
        v62 = v60 - 7;
        if (*(v60 - 33) < 0)
        {
          goto LABEL_60;
        }

LABEL_57:
        v60 = v62;
        if (v62 == v59)
        {
          goto LABEL_61;
        }
      }
    }
  }

LABEL_63:
  v63 = *&v175[0];
  if (*&v175[0])
  {
    v64 = *(&v175[0] + 1);
    v65 = *&v175[0];
    if (*(&v175[0] + 1) != *&v175[0])
    {
      do
      {
        v66 = *(v64 - 24);
        if (v66)
        {
          v67 = *(v64 - 16);
          v68 = *(v64 - 24);
          if (v67 != v66)
          {
            do
            {
              if (*(v67 - 1) < 0)
              {
                operator delete(*(v67 - 24));
              }

              v67 -= 32;
            }

            while (v67 != v66);
            v68 = *(v64 - 24);
          }

          *(v64 - 16) = v66;
          operator delete(v68);
        }

        v69 = (v64 - 64);
        if (*(v64 - 41) < 0)
        {
          operator delete(*v69);
        }

        v64 -= 64;
      }

      while (v69 != v63);
      v65 = *&v175[0];
    }

    *(&v175[0] + 1) = v63;
    operator delete(v65);
  }

LABEL_79:
  memset(v175, 0, 24);
  v70 = sub_502FF8(a1[2], v24, 0, "stop");
  v71 = *(v70 + *(v70 - *v70 + 10));
  if (v71 > 0xFFFFFFFEFFFFFFFFLL || v71 == 0)
  {
    goto LABEL_148;
  }

  v73 = sub_93D2F4(a1[2], v71, 0, "hall");
  v74 = (v73 - *v73);
  if (*v74 >= 9u && (v75 = v74[4]) != 0)
  {
    v76 = (v73 + v75 + *(v73 + v75));
    memset(__p, 0, 24);
    sub_943AEC(__p, *v76);
    v171[0] = v76 + 1;
    v183[0] = &v76[*v76 + 1];
    sub_943E24(v171, v183, __p, sub_509164);
    v77 = *__p;
    v78 = __p[2];
  }

  else
  {
    v78 = 0;
    v77 = 0uLL;
  }

  __dst = v77;
  v174 = v78;
  sub_9D6590(&__dst, a4, __p);
  v79 = *&v175[0];
  if (*&v175[0])
  {
    v80 = *(&v175[0] + 1);
    v81 = *&v175[0];
    if (*(&v175[0] + 1) == *&v175[0])
    {
LABEL_96:
      *(&v175[0] + 1) = v79;
      operator delete(v81);
      goto LABEL_97;
    }

    while (1)
    {
      if (*(v80 - 1) < 0)
      {
        operator delete(*(v80 - 3));
        v82 = v80 - 7;
        if ((*(v80 - 33) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

LABEL_94:
        operator delete(*v82);
        v80 = v82;
        if (v82 == v79)
        {
LABEL_95:
          v81 = *&v175[0];
          goto LABEL_96;
        }
      }

      else
      {
        v82 = v80 - 7;
        if (*(v80 - 33) < 0)
        {
          goto LABEL_94;
        }

LABEL_91:
        v80 = v82;
        if (v82 == v79)
        {
          goto LABEL_95;
        }
      }
    }
  }

LABEL_97:
  *&v175[0] = __p[0];
  *(v175 + 8) = *&__p[1];
  if (__p[0] == __p[1])
  {
    v83 = sub_93D2F4(a1[2], v71, 0, "hall");
    v84 = *(v83 + *(v83 - *v83 + 10));
    if (v84 <= 0xFFFFFFFEFFFFFFFFLL && v84 != 0)
    {
      v86 = sub_93D480(a1[2], v84, 0, "station");
      v87 = (v86 - *v86);
      if (*v87 >= 9u && (v88 = v87[4]) != 0)
      {
        v89 = (v86 + v88 + *(v86 + v88));
        memset(__p, 0, 24);
        sub_943AEC(__p, *v89);
        v183[0] = v89 + 1;
        v182 = &v89[*v89 + 1];
        sub_943E24(v183, &v182, __p, sub_509164);
        v90 = *__p;
        v91 = __p[2];
      }

      else
      {
        v91 = 0;
        v90 = 0uLL;
      }

      *v171 = v90;
      v172 = v91;
      sub_9D6590(v171, a4, __p);
      v92 = *&v175[0];
      if (!*&v175[0])
      {
LABEL_116:
        v175[0] = *__p;
        *&v175[1] = __p[2];
        v96 = v171[0];
        if (v171[0])
        {
          v97 = v171[1];
          v98 = v171[0];
          if (v171[1] != v171[0])
          {
            do
            {
              v99 = *(v97 - 3);
              if (v99)
              {
                v100 = *(v97 - 2);
                v101 = *(v97 - 3);
                if (v100 != v99)
                {
                  do
                  {
                    if (*(v100 - 1) < 0)
                    {
                      operator delete(*(v100 - 24));
                    }

                    v100 -= 32;
                  }

                  while (v100 != v99);
                  v101 = *(v97 - 3);
                }

                *(v97 - 2) = v99;
                operator delete(v101);
              }

              v102 = (v97 - 64);
              if (*(v97 - 41) < 0)
              {
                operator delete(*v102);
              }

              v97 -= 64;
            }

            while (v102 != v96);
            v98 = v171[0];
          }

          v171[1] = v96;
          operator delete(v98);
        }

        goto LABEL_132;
      }

      v93 = *(&v175[0] + 1);
      v94 = *&v175[0];
      if (*(&v175[0] + 1) == *&v175[0])
      {
LABEL_115:
        *(&v175[0] + 1) = v92;
        operator delete(v94);
        goto LABEL_116;
      }

      while (1)
      {
        if (*(v93 - 1) < 0)
        {
          operator delete(*(v93 - 3));
          v95 = v93 - 7;
          if ((*(v93 - 33) & 0x80000000) == 0)
          {
            goto LABEL_110;
          }

LABEL_113:
          operator delete(*v95);
          v93 = v95;
          if (v95 == v92)
          {
LABEL_114:
            v94 = *&v175[0];
            goto LABEL_115;
          }
        }

        else
        {
          v95 = v93 - 7;
          if (*(v93 - 33) < 0)
          {
            goto LABEL_113;
          }

LABEL_110:
          v93 = v95;
          if (v95 == v92)
          {
            goto LABEL_114;
          }
        }
      }
    }
  }

LABEL_132:
  v103 = __dst;
  if (__dst)
  {
    v104 = *(&__dst + 1);
    v105 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v106 = *(v104 - 24);
        if (v106)
        {
          v107 = *(v104 - 16);
          v108 = *(v104 - 24);
          if (v107 != v106)
          {
            do
            {
              if (*(v107 - 1) < 0)
              {
                operator delete(*(v107 - 24));
              }

              v107 -= 32;
            }

            while (v107 != v106);
            v108 = *(v104 - 24);
          }

          *(v104 - 16) = v106;
          operator delete(v108);
        }

        v109 = (v104 - 64);
        if (*(v104 - 41) < 0)
        {
          operator delete(*v109);
        }

        v104 -= 64;
      }

      while (v109 != v103);
      v105 = __dst;
    }

    *(&__dst + 1) = v103;
    operator delete(v105);
  }

LABEL_148:
  if (*&v175[0] != *(&v175[0] + 1))
  {
    goto LABEL_179;
  }

  v110 = sub_502FF8(a1[2], v24, 0, "stop");
  v111 = (v110 - *v110);
  if (*v111 >= 9u && (v112 = v111[4]) != 0)
  {
    v113 = (v110 + v112 + *(v110 + v112));
    memset(__p, 0, 24);
    sub_943AEC(__p, *v113);
    v171[0] = v113 + 1;
    v183[0] = &v113[*v113 + 1];
    sub_943E24(v171, v183, __p, sub_509164);
    v114 = *__p;
    v115 = __p[2];
  }

  else
  {
    v115 = 0;
    v114 = 0uLL;
  }

  __dst = v114;
  v174 = v115;
  sub_9D6590(&__dst, a4, __p);
  v116 = *&v175[0];
  if (*&v175[0])
  {
    v117 = *(&v175[0] + 1);
    v118 = *&v175[0];
    if (*(&v175[0] + 1) == *&v175[0])
    {
LABEL_162:
      *(&v175[0] + 1) = v116;
      operator delete(v118);
      goto LABEL_163;
    }

    while (1)
    {
      if (*(v117 - 1) < 0)
      {
        operator delete(*(v117 - 3));
        v119 = v117 - 7;
        if ((*(v117 - 33) & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

LABEL_160:
        operator delete(*v119);
        v117 = v119;
        if (v119 == v116)
        {
LABEL_161:
          v118 = *&v175[0];
          goto LABEL_162;
        }
      }

      else
      {
        v119 = v117 - 7;
        if (*(v117 - 33) < 0)
        {
          goto LABEL_160;
        }

LABEL_157:
        v117 = v119;
        if (v119 == v116)
        {
          goto LABEL_161;
        }
      }
    }
  }

LABEL_163:
  v175[0] = *__p;
  *&v175[1] = __p[2];
  v120 = __dst;
  if (__dst)
  {
    v121 = *(&__dst + 1);
    v122 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v123 = *(v121 - 24);
        if (v123)
        {
          v124 = *(v121 - 16);
          v125 = *(v121 - 24);
          if (v124 != v123)
          {
            do
            {
              if (*(v124 - 1) < 0)
              {
                operator delete(*(v124 - 24));
              }

              v124 -= 32;
            }

            while (v124 != v123);
            v125 = *(v121 - 24);
          }

          *(v121 - 16) = v123;
          operator delete(v125);
        }

        v126 = (v121 - 64);
        if (*(v121 - 41) < 0)
        {
          operator delete(*v126);
        }

        v121 -= 64;
      }

      while (v126 != v120);
      v122 = __dst;
    }

    *(&__dst + 1) = v120;
    operator delete(v122);
  }

LABEL_179:
  sub_9D43A4(v175, __p);
  if (SHIBYTE(v177) < 0)
  {
    operator delete(v176);
  }

  v177 = __p[2];
  v176 = *__p;
  v127 = __p[2] >> 56;
  if (SHIBYTE(__p[2]) < 0)
  {
    v127 = *(&v176 + 1);
  }

  if (!v127 && sub_7E7E4(1u))
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "Could not resolve any name for stop ", 36);
    v128 = a1[2];
    v129 = sub_502FF8(v128, v24, 0, "stop");
    v130 = (v129 - *v129);
    if (*v130 >= 5u && (v131 = v130[2]) != 0)
    {
      v132 = *(v129 + v131);
    }

    else
    {
      v132 = 0;
    }

    v133 = sub_2C939C(v128, 1u, 0);
    if (!v133 || (v134 = &v133[-*v133], *v134 < 0xDu) || (v135 = *(v134 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v160 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v136 = &v133[v135 + *&v133[v135]];
    v137 = &v136[-*v136];
    if (*v137 >= 0xBu)
    {
      v138 = *(v137 + 5);
      if (v138)
      {
        if (v136[v138])
        {
          nullsub_1(v132);
        }
      }
    }

    std::ostream::operator<<();
    if ((v170 & 0x10) != 0)
    {
      v140 = v169;
      if (v169 < v166)
      {
        v169 = v166;
        v140 = v166;
      }

      v141 = v165;
      v139 = v140 - v165;
      if (v140 - v165 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_263;
      }
    }

    else
    {
      if ((v170 & 8) == 0)
      {
        v139 = 0;
        HIBYTE(v174) = 0;
LABEL_207:
        *(&__dst + v139) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v174) < 0)
        {
          operator delete(__dst);
        }

        if (v168 < 0)
        {
          operator delete(v167);
        }

        std::locale::~locale(&__p[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_212;
      }

      v141 = __p[3];
      v139 = v164 - __p[3];
      if (v164 - __p[3] >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_263:
        sub_3244();
      }
    }

    if (v139 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v174) = v139;
    if (v139)
    {
      memmove(&__dst, v141, v139);
    }

    goto LABEL_207;
  }

LABEL_212:
  v142 = sub_92FC60(a1[1], v11, 0, "line");
  v143 = (v142 - *v142);
  v145 = *v143 >= 0x2Du && (v144 = v143[22]) != 0 && *(v142 + v144) != 0;
  v146 = sub_92FC60(a1[1], v11, 0, "line");
  v147 = (v146 - *v146);
  if (*v147 >= 0x2Bu && (v148 = v147[21]) != 0)
  {
    v149 = *(v146 + v148);
  }

  else
  {
    v149 = 2;
  }

  memset(__p, 0, sizeof(__p));
  v163 = 1065353216;
  v150 = HIBYTE(v181);
  if (SHIBYTE(v181) < 0)
  {
    v150 = *(&v180 + 1);
  }

  if (v150)
  {
    sub_977A7C(__p, "{Line}");
  }

  v151 = HIBYTE(v179);
  if (SHIBYTE(v179) < 0)
  {
    v151 = *(&v178 + 1);
  }

  if (v151)
  {
    sub_977A7C(__p, "{System}");
  }

  sub_977A7C(__p, "{Stop}");
  if (byte_27B1D6F < 0)
  {
    sub_325C(&__dst, xmmword_27B1D58, *(&xmmword_27B1D58 + 1));
  }

  else
  {
    __dst = xmmword_27B1D58;
    v174 = unk_27B1D68;
  }

  sub_9CD974(__p, v149, v145, 1, a2, &__dst);
  sub_6A5584(&__dst, __p, a2, 0, v171);
  sub_64BC20(a5, v171);
  if ((SHIBYTE(v172) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v174) & 0x80000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_236;
  }

  operator delete(v171[0]);
  if (SHIBYTE(v174) < 0)
  {
LABEL_236:
    operator delete(__dst);
    v152 = __p[2];
    if (!__p[2])
    {
      goto LABEL_243;
    }

    while (1)
    {
LABEL_240:
      v153 = *v152;
      if (v152[63] < 0)
      {
        operator delete(*(v152 + 5));
        if ((v152[39] & 0x80000000) == 0)
        {
          goto LABEL_239;
        }

LABEL_242:
        operator delete(*(v152 + 2));
        operator delete(v152);
        v152 = v153;
        if (!v153)
        {
          goto LABEL_243;
        }
      }

      else
      {
        if (v152[39] < 0)
        {
          goto LABEL_242;
        }

LABEL_239:
        operator delete(v152);
        v152 = v153;
        if (!v153)
        {
          goto LABEL_243;
        }
      }
    }
  }

LABEL_233:
  v152 = __p[2];
  if (__p[2])
  {
    goto LABEL_240;
  }

LABEL_243:
  v154 = __p[0];
  __p[0] = 0;
  if (v154)
  {
    operator delete(v154);
  }

  v155 = *&v175[0];
  if (*&v175[0])
  {
    v156 = *(&v175[0] + 1);
    v157 = *&v175[0];
    if (*(&v175[0] + 1) == *&v175[0])
    {
LABEL_254:
      *(&v175[0] + 1) = v155;
      operator delete(v157);
      goto LABEL_255;
    }

    while (1)
    {
      if (*(v156 - 1) < 0)
      {
        operator delete(*(v156 - 3));
        v158 = v156 - 7;
        if ((*(v156 - 33) & 0x80000000) == 0)
        {
          goto LABEL_249;
        }

LABEL_252:
        operator delete(*v158);
        v156 = v158;
        if (v158 == v155)
        {
LABEL_253:
          v157 = *&v175[0];
          goto LABEL_254;
        }
      }

      else
      {
        v158 = v156 - 7;
        if (*(v156 - 33) < 0)
        {
          goto LABEL_252;
        }

LABEL_249:
        v156 = v158;
        if (v158 == v155)
        {
          goto LABEL_253;
        }
      }
    }
  }

LABEL_255:
  if (SHIBYTE(v177) < 0)
  {
    operator delete(v176);
    if ((SHIBYTE(v179) & 0x80000000) == 0)
    {
LABEL_257:
      if ((SHIBYTE(v181) & 0x80000000) == 0)
      {
        return;
      }

LABEL_261:
      operator delete(v180);
      return;
    }
  }

  else if ((SHIBYTE(v179) & 0x80000000) == 0)
  {
    goto LABEL_257;
  }

  operator delete(v178);
  if (SHIBYTE(v181) < 0)
  {
    goto LABEL_261;
  }
}

void sub_9771E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  sub_941AEC(&a11);
  sub_941AEC((v50 - 256));
  sub_9354C4((v50 - 224));
  if (*(v50 - 169) < 0)
  {
    operator delete(*(v50 - 192));
    if ((*(v50 - 137) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v50 - 137) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v50 - 105) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(*(v50 - 160));
  if (*(v50 - 105) < 0)
  {
LABEL_4:
    operator delete(*(v50 - 128));
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void sub_977540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5EBF44(va);
  _Unwind_Resume(a1);
}

void sub_977554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a9);
  sub_5EBF44(&a15);
  _Unwind_Resume(a1);
}

void sub_977588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_2CD04(&a9);
  sub_1AB28(&a18);
  sub_5EBF44(&a15);
  _Unwind_Resume(a1);
}

void sub_9775AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5EBF44(va);
  _Unwind_Resume(a1);
}

void sub_9775C4(uint64_t a1, void *a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = sub_694AE4(&__p, a1);
  v6 = v3;
  sub_79163C(v3 - 12656, a2);
  sub_791A1C((v3 - 12656), a2);
  sub_7E1EB4(&v4, a2);
}

void sub_9776D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6910B8(va);
  _Unwind_Resume(a1);
}

void sub_9776E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6910B8(va);
  _Unwind_Resume(a1);
}

void sub_9776FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6910B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_977710(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *v7 = 0x8000000080000000;
  *(v7 + 8) = 0x7FFFFFFF;
  *(v7 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  v8 = v7 + 48;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      v12 = *v10;
      *(v11 + 16) = v10[2];
      *v11 = v12;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = *(v10 + 3);
      *(v11 + 40) = v10[5];
      v10[3] = 0;
      v10[4] = 0;
      v10[5] = 0;
      v10 += 6;
      v11 += 48;
    }

    while (v10 != v2);
    do
    {
      v13 = v1[3];
      if (v13)
      {
        v14 = v1[4];
        v15 = v1[3];
        if (v14 != v13)
        {
          do
          {
            v14 = sub_6081F0(v14 - 160);
          }

          while (v14 != v13);
          v15 = v1[3];
        }

        v1[4] = v13;
        operator delete(v15);
      }

      v1 += 6;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

void **sub_9778C4(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v6 = sub_6081F0(v6 - 160);
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

_BYTE *sub_977960(_BYTE *a1, char *__s, __int128 *a3)
{
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

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_977A60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_977A7C(void *a1, uint64_t a2)
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
    sub_977E50();
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

void sub_977E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

void sub_977F10(_Unwind_Exception *a1)
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

void sub_977F48()
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
  xmmword_27B1D70 = 0u;
  unk_27B1D80 = 0u;
  dword_27B1D90 = 1065353216;
  sub_3A9A34(&xmmword_27B1D70, v0);
  sub_3A9A34(&xmmword_27B1D70, v3);
  sub_3A9A34(&xmmword_27B1D70, __p);
  sub_3A9A34(&xmmword_27B1D70, v9);
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
    qword_27B1D00 = 0;
    qword_27B1D08 = 0;
    qword_27B1CF8 = 0;
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

void sub_978260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1D10)
  {
    qword_27B1D18 = qword_27B1D10;
    operator delete(qword_27B1D10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_978324(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = sub_985F68(a1, a2, a3);
  *result = off_266E608;
  return result;
}

void sub_97835C(uint64_t a1, uint64_t *a2)
{
  memset(&__dst, 0, sizeof(__dst));
  v20 = 0uLL;
  v21 = 0;
  sub_A07024(a1, &v16);
  if (v18)
  {
    if (v19 - 1 >= 2)
    {
      v6 = v16 == 0x7FFFFFFF || v19 != 0 || v18 != 1 || v17 == 0x7FFFFFFF;
      if (v6 || v16 / 60 != v17 / 60)
      {
        if (v17 <= v16)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }

        sub_195A048(&__dst, "Now {LiveDepartureTime} {RT_Symbol}", 0x23uLL);
        v15[0] = v17;
        sub_64E308(a2, "{LiveDepartureTime}", v15, a1 + 144, 0);
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v9 = sub_9274F4(*(a1 + 24), &__dst);
          if (&v20 != v9)
          {
            v10 = *(v9 + 23);
            if (SHIBYTE(v21) < 0)
            {
              if (v10 >= 0)
              {
                v13 = v9;
              }

              else
              {
                v13 = *v9;
              }

              if (v10 >= 0)
              {
                v14 = *(v9 + 23);
              }

              else
              {
                v14 = v9[1];
              }

              sub_13B38(&v20, v13, v14);
            }

            else if ((*(v9 + 23) & 0x80) != 0)
            {
              sub_13A68(&v20, *v9, v9[1]);
            }

            else
            {
              v11 = *v9;
              v21 = v9[2];
              v20 = v11;
            }
          }
        }

        v12 = 2;
      }

      else
      {
        HIBYTE(v21) = 11;
        strcpy(&v20, "{RT_Symbol}");
        v7 = 1;
        v12 = 1;
      }

      LOBYTE(v15[0]) = 0;
      sub_64C770(a2, &v20, &unk_22A4E40, v12, v15);
      sub_9CE3F8(a2, v7);
      sub_588850(1, v15);
      sub_64BF94(a2, "{RT_Symbol}");
    }

    sub_9870F0(a1, a2);
  }

  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v20);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }
}

void sub_97860C(_Unwind_Exception *a1)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
    if ((*(v1 - 41) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 - 41) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 - 64));
  _Unwind_Resume(a1);
}

double sub_978680@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0x100000000000000;
  *&result = 32;
  *a1 = xmmword_22A4E70;
  return result;
}

void sub_97869C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_9873FC(a1))
  {
    sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4E88);
    sub_A077A4();
  }

  sub_A074B0(a1, a2);
}

uint64_t sub_978724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_986084(a1, a2);
  if (*(a1 + 173) != 1)
  {
    return sub_978784(a1, a2);
  }

  result = sub_9873FC(a1);
  if (result)
  {
    return sub_978784(a1, a2);
  }

  return result;
}

uint64_t sub_978784(uint64_t a1, void *a2)
{
  result = sub_A072C8(a1);
  v5 = *result;
  if (*result != 0x7FFFFFFF)
  {
    v6 = *(result + 31);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(result + 16);
    }

    if (v6 && *(*(a1 + 32) + 1177) >= 8u)
    {
      __dst = 0uLL;
      v8 = 0;
      if (v5)
      {
        sub_64EFAC(a2, "{TotalPrice}");
      }

      operator new();
    }
  }

  return result;
}

void sub_978A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 25) < 0)
  {
    operator delete(*(v14 - 48));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_978AF4(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_9873FC(a1))
  {
    sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4E88);
    sub_A08E84();
  }

  sub_A08A68(a1, a2);
}

void sub_978B9C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_9873FC(a1))
  {
    sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4EA0);
    if (sub_A07178(a1) && sub_A07080(a1))
    {
      v4 = sub_A0701C(a1);
      v5 = 1;
      v6 = 144;
    }

    else
    {
      v4 = sub_A07108(a1);
      v5 = 0;
      v6 = 96;
    }

    sub_986F10(a1, a2, v4, a1 + v6, 1);
    if (!v5)
    {
      sub_A08E84();
    }

    sub_A0995C(a1, a2);
  }

  else
  {

    sub_A098D4(a1, a2);
  }
}

uint64_t sub_978CD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A4EA0);
  if (sub_9873FC(a1) && sub_A07008(a1))
  {
    sub_A08E84();
  }

  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_986F10(a1, a2, 0x7FFFFFFF, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_A09DFC(a1, a2);
}

void sub_978D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A868(v15);
    _Unwind_Resume(a1);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_978DB0(void *a1)
{
  *a1 = off_266EEA8;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_978E88(a1);
}

void sub_978E14(void *a1)
{
  *a1 = off_266EEA8;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    operator delete(v2);
  }

  sub_978E88(a1);

  operator delete();
}

uint64_t sub_978E88(uint64_t a1)
{
  *a1 = off_266F900;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      operator delete(*(a1 + 96));
      v3 = *(a1 + 56);
      if (!v3)
      {
        return a1;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 120));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(a1 + 56);
  if (v3)
  {
LABEL_7:
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_978F34()
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
  xmmword_27B1DF8 = 0u;
  unk_27B1E08 = 0u;
  dword_27B1E18 = 1065353216;
  sub_3A9A34(&xmmword_27B1DF8, v0);
  sub_3A9A34(&xmmword_27B1DF8, v3);
  sub_3A9A34(&xmmword_27B1DF8, __p);
  sub_3A9A34(&xmmword_27B1DF8, v9);
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
    qword_27B1DA0 = 0;
    qword_27B1DA8 = 0;
    qword_27B1D98 = 0;
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

void sub_97920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1DB0)
  {
    qword_27B1DB8 = qword_27B1DB0;
    operator delete(qword_27B1DB0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_9792D0@<X0>(int *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(*(a2 + 16) + 1444) > 1u)
  {
    result = sub_A21B20(result);
    v4 = *result;
    if (*result <= 3)
    {
      switch(v4)
      {
        case 1:
          sub_97FFB4();
        case 2:
          sub_97FBBC();
        case 3:
          sub_9803E4();
      }
    }

    else if (v4 > 6)
    {
      if (v4 == 7)
      {
        sub_9801CC();
      }

      if (v4 == 8)
      {
        sub_980814();
      }
    }

    else
    {
      if (v4 == 4)
      {
        sub_9805FC();
      }

      if (v4 == 5)
      {
        sub_97FDB8();
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_97944C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_98A79C(a1, a2, a3);
  *v5 = off_266E6C0;
  sub_A1328C(v5 + 72, a1 + 552, *a3, a3[2]);
  if (*(a1 + 128) == 3)
  {
    *(a1 + 128) = 2;
  }

  v6 = *(a1 + 72);
  v7 = (v6 + 312);
  v8 = *(v6 + 344);
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      if (*v7 == -1)
      {
        return a1;
      }
    }

    else if (v8 != 2 || *(v6 + 316) == -1 && *v7 == -1 && *(v6 + 320) == *(v6 + 328))
    {
      return a1;
    }

LABEL_14:
    if (*(a1 + 480) < *(a1 + 488))
    {
      sub_64A2C8(*(a1 + 480), "{Platform}");
    }

    sub_650C7C((a1 + 472), "{Platform}");
  }

  if (v8 == 3 || v8 == 4)
  {
    if ((*(v6 + 335) & 0x8000000000000000) != 0)
    {
      if (!*(v6 + 320))
      {
        return a1;
      }
    }

    else if (!*(v6 + 335))
    {
      return a1;
    }

    goto LABEL_14;
  }

  return a1;
}

void sub_9795A8(_Unwind_Exception *a1)
{
  v1[60] = v2;
  sub_97E630(v1);
  _Unwind_Resume(a1);
}

void sub_9795D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 72);
  if ((*(*(a1 + 112) + 41) & 1) != 0 && *(v4 + 424) == 1)
  {
    v5 = *(v4 + 56);
    v6 = **(a1 + 80);
    if (0xCF3CF3CF3CF3CF3DLL * ((*(*(a1 + 80) + 8) - v6) >> 3) <= v5)
    {
      sub_6FAB4();
    }

    v7 = *(v6 + 168 * v5 + 162);
    switch(v7)
    {
      case 2:
        operator new();
      case 1:
        operator new();
      case 0:
        HIBYTE(v23[2]) = 18;
        strcpy(v23, "Notice_Platform_RT");
        v21 = 1;
        goto LABEL_10;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
    v5 = *(v4 + 56);
  }

  sub_A198E8(a1, *(a1 + 72), v5, v23);
LABEL_10:
  v8 = sub_9274F4(*(a1 + 96), v23);
  if (*(v8 + 23) < 0)
  {
    sub_325C(&v22, *v8, v8[1]);
  }

  else
  {
    v9 = *v8;
    v22.__r_.__value_.__r.__words[2] = v8[2];
    *&v22.__r_.__value_.__l.__data_ = v9;
  }

  sub_64B9C4(a2, (*(a1 + 88) + 1177));
  v10 = (v4 + 312);
  v11 = *(v4 + 344);
  if (v11 > 2)
  {
    if (v11 != 3 && v11 != 4)
    {
      goto LABEL_26;
    }

    if ((*(v4 + 335) & 0x8000000000000000) != 0)
    {
      if (*(v4 + 320))
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 335))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v11 != 1)
    {
      if (v11 != 2 || *(v4 + 316) == -1 && *v10 == -1 && *(v4 + 320) == *(v4 + 328))
      {
        goto LABEL_26;
      }

LABEL_24:
      sub_64BF94(a2, "{Platform}");
    }

    if (*v10 != -1)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v22;
  }

  else
  {
    v13 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  if (size >= 10)
  {
    v14 = v13 + size;
    v15 = v13;
    do
    {
      v16 = memchr(v15, 123, size - 9);
      if (!v16)
      {
        break;
      }

      if (*v16 == 0x726F6674616C507BLL && *(v16 + 4) == 32109)
      {
        if (v16 != v14 && v16 - v13 != -1)
        {
          v18 = *(v4 + 271);
          if (v18 >= 0)
          {
            v19 = (v4 + 248);
          }

          else
          {
            v19 = *(v4 + 248);
          }

          if (v18 >= 0)
          {
            v20 = *(v4 + 271);
          }

          else
          {
            v20 = *(v4 + 256);
          }

          std::string::replace(&v22, v16 - v13, 0xAuLL, v19, v20);
        }

        break;
      }

      v15 = (v16 + 1);
      size = v14 - v15;
    }

    while (v14 - v15 >= 10);
  }

  sub_64C184(a2, &v22);
  if (v21)
  {
    sub_588850(1, v24);
    sub_64BF94(a2, "{RT_Symbol}");
  }

  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v23[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_57:
    operator delete(v23[0]);
    return;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23[2]) < 0)
  {
    goto LABEL_57;
  }
}

void sub_9799D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_53E440(&a22);
  sub_53A868(v22);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

void sub_979A44(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 != 2)
  {
    if (a2 == 2)
    {
      a2 = 1;
    }

    sub_98AE98(a1, a2, a3, a4);
    return;
  }

  sub_64B9C4(a4, (*(a1 + 88) + 1177));
  if (sub_A1989C(a1, *(a1 + 72)))
  {
    sub_9795D4(a1, __p);
    sub_53D784(a4, __p);
    sub_53A868(__p);
  }

  memset(__p, 0, 24);
  sub_64FB18(a4, qword_22A5088, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (*(a1 + 248) == 5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  operator delete(__p[0]);
  if (*(a1 + 248) != 5)
  {
LABEL_13:
    sub_97BD78(a1, a4, 1);
  }

LABEL_14:
  sub_A1A024(a1, a4, v6, v7);
  memset(__p, 0, 24);
  v8 = *(a1 + 161);
  if (v8 == 3)
  {
    HIBYTE(__p[2]) = 22;
    qmemcpy(__p, "PickupCoordinateDriver", 22);
  }

  else
  {
    if (v8 != 2)
    {
      return;
    }

    HIBYTE(__p[2]) = 19;
    *(&__p[1] + 7) = 2036559461;
    *__p = *"PickupContactAgency";
  }

  v9 = sub_9274F4(*(a1 + 96), __p);
  sub_64C184(a4, v9);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_979C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A868(v14);
    _Unwind_Resume(a1);
  }

  sub_53A868(v14);
  _Unwind_Resume(a1);
}

void sub_979C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 1008);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      sub_979C8C(a1, a2);
    }

    else if (v2 == 2)
    {
      sub_979D68(a1, a2);
    }
  }

  else
  {
    switch(v2)
    {
      case 3:
        sub_979E00(a1, a2);
      case 4:
        sub_97A180(a1, a2);
      case 5:
        sub_97A5FC(a1, a2);
        break;
    }
  }
}

uint64_t sub_979C8C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a2 + 8) == *a2)
  {
    sub_6FAB4();
  }

  sub_97A7A0(a1, *a2, 1, 0, v6);
  sub_53D784(v2 + 32, v6);
  sub_53D784(v2 + 192, v7);
  *(v2 + 352) = v8;
  sub_53A868(v7);
  sub_53A868(v6);
  sub_97A7A0(a1, v2, 1, 1, v6);
  sub_53D784(a2 + 872, v6);
  sub_53D784(a2 + 1032, v7);
  *(a2 + 1192) = v8;
  sub_53A868(v7);
  return sub_53A868(v6);
}

uint64_t sub_979D68(uint64_t a1, void *a2)
{
  sub_97B1CC(a1, 0, v5);
  if (a2[1] == *a2)
  {
    sub_6FAB4();
  }

  sub_53D784(*a2 + 32, v5);
  sub_53A868(v5);
  sub_97B1CC(a1, 1, v5);
  sub_53D784((a2 + 109), v5);
  return sub_53A868(v5);
}

void sub_979E00(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    goto LABEL_6;
  }

  if (!*(*(a1 + 112) + 16) && v6 == 696)
  {
    v15[0] = *v5;
    *(v15 + 12) = *(v5 + 12);
    operator new();
  }

  sub_97A7A0(a1, *a2, 1, 0, v12);
  sub_53D784(v5 + 32, v12);
  sub_53D784(v5 + 192, v13);
  *(v5 + 352) = v14;
  sub_53A868(v13);
  sub_53A868(v12);
  if (v6 == 696)
  {
LABEL_6:
    sub_97AAF0(a1, 0, v12);
  }

  v7 = 0x66FD0EB66FD0EB67 * (v6 >> 3);
  v8 = 1;
  while (1)
  {
    v10 = *a2 + 696 * v8;
    if (v8 >= *(*(a1 + 112) + 16) && v8 + 1 == 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3))
    {
      v15[0] = *v10;
      *(v15 + 12) = *(v10 + 12);
      operator new();
    }

    if (*(v10 - 692) == 0x7FFFFFFF)
    {
      v11 = 0;
      if (*(v10 + 4) == 0x7FFFFFFF)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = *(v10 - 688) == 1;
      if (*(v10 + 4) == 0x7FFFFFFF)
      {
LABEL_17:
        v9 = 0;
        goto LABEL_9;
      }
    }

    v9 = *(v10 + 8) == 1;
LABEL_9:
    sub_97A7A0(a1, *a2 + 696 * v8, v11 ^ v9, 0, v12);
    sub_53D784(v10 + 32, v12);
    sub_53D784(v10 + 192, v13);
    *(v10 + 352) = v14;
    sub_53A868(v13);
    sub_53A868(v12);
    if (++v8 == v7)
    {
      goto LABEL_6;
    }
  }
}

void sub_97A180(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*(a2 + 8) != *a2)
  {
    v5[0] = *v3;
    *(v5 + 12) = *(v3 + 12);
    v7 = 0;
    v8 = 0;
    __p = 0;
    operator new();
  }

  sub_97B1CC(a1, 0, v4);
  sub_97AE38(a1, *(a1 + 568), 1, 0, v9);
}

void sub_97A578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  sub_53A868(&a9);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_97A5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 516) != 0x7FFFFFFF && *(v2 + 520) != 0x7FFFFFFF)
  {
    v5 = *(a1 + 96);
    v9 = 17;
    strcpy(__p, "ServiceHoursTitle");
    v6 = sub_9274F4(v5, __p);
    if (*(v6 + 23) < 0)
    {
      sub_325C(&v13, *v6, v6[1]);
    }

    else
    {
      v7 = *v6;
      v14 = v6[2];
      v13 = v7;
    }

    if (v9 < 0)
    {
      operator delete(*__p);
    }

    v12[0] = a1;
    v12[1] = &v13;
    sub_97B450(__p, v12, 0);
    sub_53D784(a2 + 216, __p);
    sub_53D784(a2 + 376, v10);
    *(a2 + 536) = v11;
    sub_53A868(v10);
    sub_53A868(__p);
    sub_97B450(__p, v12, 1);
    sub_53D784(a2 + 872, __p);
    sub_53D784(a2 + 1032, v10);
    *(a2 + 1192) = v11;
    sub_53A868(v10);
    sub_53A868(__p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13);
    }
  }
}

void sub_97A76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 41) < 0)
  {
    operator delete(*(v14 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_97A7A0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  sub_64B998(a5);
  sub_64B998(a5 + 160);
  *(a5 + 320) = 0;
  sub_97B5BC(a1, a2, a3, 1, a4, v11);
  sub_53D784(a5, v11);
  sub_53A868(v11);
  if (!*(a2 + 8) || *(a2 + 9) - 1 < 2 || *a2 == 0x7FFFFFFF || *(a2 + 9) || *(a2 + 8) != 1 || (v10 = *(a2 + 4), v10 == 0x7FFFFFFF) || *a2 / 60 != v10 / 60)
  {
    sub_64B9C4(v11, (*(a1 + 88) + 1177));
    sub_53D784(a5 + 160, v11);
    sub_53A868(v11);
    sub_97B8C8(a1, a2, 0, (a5 + 160));
  }

  else
  {
    sub_97B8C8(a1, a2, 0, a5);
  }
}

void sub_97A8F8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_97A930(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 96);
  HIBYTE(__p[2]) = 18;
  strcpy(__p, "Next at {TimeList}");
  v7 = sub_9274F4(v6, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_64BC50(a3, v7, (*(a1 + 88) + 1177));
  memset(__p, 0, 24);
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * ((v8 - *a2) >> 2)) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  __p[5] = __p;
  v9 = sub_96DB98(a1);
  sub_64E398(a3, "{TimeList}", __p, v9, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_97AAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_97AAF0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 72);
  memset(v11, 0, sizeof(v11));
  v7 = *(v6 + 2232);
  v8 = *(v6 + 2224);
  if (v7 != v8)
  {
    if ((0x66FD0EB66FD0EB67 * ((v7 - v8) >> 3)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = v11;
  sub_64B998(a3);
  sub_64B998(a3 + 160);
  *(a3 + 320) = 0;
  sub_97B5BC(a1, v11[0], 1, 1, a2, __p);
  sub_53D784(a3, __p);
  sub_53A868(__p);
  operator new();
}

void sub_97ADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    operator delete(v19);
  }

  sub_53A868(v18 + 160);
  sub_53A868(v18);
  v22 = *(v20 - 88);
  if (v22)
  {
    *(v20 - 80) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_97AE38(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W4>, uint64_t a5@<X8>)
{
  sub_64B998(a5);
  sub_64B998(a5 + 160);
  *(a5 + 320) = 0;
  sub_64B9EC(&__dst, (*(a1 + 88) + 1177), &xmmword_22A50A0);
  sub_53D784(a5, &__dst);
  sub_53A868(&__dst);
  if (a4)
  {
    sub_A13298(a1 + 576, *(a1 + 72), 1, &__dst);
    if (v20 != v21)
    {
      sub_64C184(a5, "{LineArt}");
      sub_64BF94(a5, "{LineArt}");
    }

    sub_97E978(&__dst);
  }

  memset(&__dst, 0, sizeof(__dst));
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  memset(&__p, 0, sizeof(__p));
  v10 = sub_9BCF58(a2);
  v11 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 2);
  if (v10 & 1 | ((a3 & 1) == 0))
  {
    if (!a3)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 15;
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 15;
        p_dst = &__dst;
      }

      strcpy(p_dst, "{CountdownList}");
      HIBYTE(v18) = 3;
      strcpy(v17, "Now");
LABEL_16:
      v15 = *(a1 + 96);
      sub_96DB98(a1);
      sub_9CDAFC(a2, &__dst, &__p, v17, v15);
    }

    sub_195A048(&__dst, "Departs in {CountdownList}", 0x1AuLL);
    HIBYTE(v18) = 11;
    strcpy(v17, "Departs now");
    if (v11 < 2)
    {
      goto LABEL_16;
    }

    v12 = "Departs now, {CountdownList}";
    v13 = 28;
  }

  else
  {
    sub_195A048(&__dst, "Scheduled in {CountdownList}", 0x1CuLL);
    HIBYTE(v18) = 13;
    strcpy(v17, "Scheduled now");
    if (v11 <= 1)
    {
      goto LABEL_16;
    }

    v12 = "Scheduled now, {CountdownList}";
    v13 = 30;
  }

  sub_195A048(&__p, v12, v13);
  goto LABEL_16;
}

void sub_97B10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
LABEL_3:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(a17);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    sub_53A868(v28 + 160);
    sub_53A868(v28);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(a23);
  goto LABEL_5;
}

void sub_97B1CC(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  sub_9CBE3C(*(a1 + 132), v15);
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  memset(&v17, 0, sizeof(v17));
  *(&v17.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    if ((v16 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v15[0];
    }

    memmove(&v17, v7, v6);
  }

  v17.__r_.__value_.__s.__data_[v6] = 0;
  v8 = std::string::append(&v17, " runs every {TripFrequency}", 0x1BuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v10 = sub_9274F4(*(a1 + 96), __p);
  sub_64B9EC(a3, (*(a1 + 88) + 1177), &xmmword_22A50A0);
  if (a2)
  {
    sub_A13298(a1 + 576, *(a1 + 72), 1, &v17);
    if (v18 != v19)
    {
      sub_64C184(a3, "{LineArt}");
      sub_64BF94(a3, "{LineArt}");
    }

    sub_97E978(&v17);
  }

  sub_64C184(a3, v10);
  v11 = nullsub_1(*(a1 + 72) + 144);
  v12 = sub_B718(*(a1 + 72) + 144);
  sub_64BDC8(a3, "{TripFrequency}", v11, v12);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v15[0]);
    return;
  }

  operator delete(__p[0]);
  if (v16 < 0)
  {
    goto LABEL_22;
  }
}

void sub_97B3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_97E978(&a21);
  sub_53A868(v26);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_97B450(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *a2;
  sub_64B998(a1);
  sub_64B998(v7 + 160);
  *(a1 + 320) = 0;
  sub_64B9EC(v9, (*(v6 + 88) + 1177), &xmmword_22A50A0);
  sub_53D784(a1, v9);
  sub_53A868(v9);
  if (a3)
  {
    sub_A13298(v6 + 576, *(v6 + 72), 1, v9);
    if (v9[3] != v9[4])
    {
      sub_64C184(a1, "{LineArt}");
      sub_64BF94(a1, "{LineArt}");
    }

    sub_97E978(v9);
  }

  sub_64C184(a1, a2[1]);
  sub_64B9C4(v9, (*(v6 + 88) + 1177));
  sub_53D784(a1 + 160, v9);
  sub_53A868(v9);
  return sub_97BD78(v6, (a1 + 160), 0);
}

void sub_97B560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_97E978(&a9);
  sub_53A868(v9 + 160);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

void sub_97B584(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_97B5BC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  if (a3)
  {
    if (*(a2 + 8) == 1)
    {
      v11 = "DepartureBar_Board_LowFreq";
    }

    else
    {
      v11 = "Scheduled at {DepartureTime}";
    }

    if (*(a2 + 4) == 0x7FFFFFFF)
    {
      v12 = "Scheduled at {DepartureTime}";
    }

    else
    {
      v12 = v11;
    }

    v13 = *(a1 + 96);
    v14 = strlen(v12);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v28 = v14;
    if (v14)
    {
      memcpy(&__dst, v12, v14);
    }

    *(&__dst + v15) = 0;
    v16 = sub_9274F4(v13, &__dst);
    if (__p != v16)
    {
      v17 = *(v16 + 23);
      if (SHIBYTE(v26) < 0)
      {
        if (v17 >= 0)
        {
          v19 = v16;
        }

        else
        {
          v19 = *v16;
        }

        if (v17 >= 0)
        {
          v20 = *(v16 + 23);
        }

        else
        {
          v20 = v16[1];
        }

        sub_13B38(__p, v19, v20);
      }

      else if ((*(v16 + 23) & 0x80) != 0)
      {
        sub_13A68(__p, *v16, v16[1]);
      }

      else
      {
        v18 = *v16;
        v26 = v16[2];
        *__p = v18;
      }
    }

    if (v28 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v26 = 0xF00000000000000;
    strcpy(__p, "{DepartureTime}");
  }

  v21 = sub_96DB98(a1);
  sub_64B9EC(a6, (*(a1 + 88) + 1177), &xmmword_22A50A0);
  if (a5)
  {
    sub_A13298(a1 + 576, *(a1 + 72), 1, &__dst);
    if (v29 != v30)
    {
      sub_64C184(a6, "{LineArt}");
      sub_64BF94(a6, "{LineArt}");
    }

    sub_97E978(&__dst);
  }

  sub_64C184(a6, __p);
  if (*(a2 + 4) == 0x7FFFFFFF)
  {
    v22 = 1;
  }

  else
  {
    v22 = a4;
  }

  v23 = v22 == 0;
  v24 = 4;
  if (!v23)
  {
    v24 = 0;
  }

  LODWORD(__dst) = *(a2 + v24);
  sub_64E308(a6, "{DepartureTime}", &__dst, v21, 0);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_97B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_97E978(&a15);
  sub_53A868(v20);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_97B8C8(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (!*(a2 + 8) || (v5 = *(a2 + 9), v5 == 1))
  {
    v10 = 0;
    __dst[0] = 0;
    __dst[1] = 0;
    v23 = 0;
    goto LABEL_37;
  }

  if (v5 != 2)
  {
    v11 = *(a2 + 4);
    v14 = *a2 == 0x7FFFFFFF || v5 != 0 || *(a2 + 8) != 1 || v11 == 0x7FFFFFFF;
    if (v14 || *a2 / 60 != v11 / 60)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v23 = 0;
      operator new();
    }

    __dst[1] = 0;
    v23 = 0xB00000000000000;
    *(__dst + 7) = 2104258402;
    __dst[0] = *"{RT_Symbol}";
    v15 = 1;
    v10 = 1;
    v16 = 1;
    goto LABEL_36;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v23 = 0;
  v6 = *(a1 + 96);
  v21 = 9;
  strcpy(__p, "Cancelled");
  v7 = sub_9274F4(v6, __p);
  if (__dst != v7)
  {
    v8 = *(v7 + 23);
    if (SHIBYTE(v23) < 0)
    {
      if (v8 >= 0)
      {
        v17 = v7;
      }

      else
      {
        v17 = *v7;
      }

      if (v8 >= 0)
      {
        v18 = *(v7 + 23);
      }

      else
      {
        v18 = v7[1];
      }

      sub_13B38(__dst, v17, v18);
    }

    else if ((*(v7 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *v7, v7[1]);
    }

    else
    {
      v9 = *v7;
      v23 = v7[2];
      *__dst = v9;
    }
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 0;
  v16 = 2;
  v15 = 4;
  v19 = HIBYTE(v23);
  if (v23 < 0)
  {
    v19 = __dst[1];
  }

  if (v19)
  {
LABEL_36:
    LOBYTE(__p[0]) = 0;
    sub_64C770(a4, __dst, &unk_22A5130, v16, __p);
    sub_9CE3F8(a4, v15);
  }

LABEL_37:
  if (v10)
  {
    sub_588850(1, __p);
    sub_64BF94(a4, "{RT_Symbol}");
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_97BCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_97BD78(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(result + 72);
  if (*(v3 + 516) != 0x7FFFFFFF && *(v3 + 520) != 0x7FFFFFFF)
  {
    if (a3)
    {
      v5 = "ServiceHours";
    }

    else
    {
      v5 = "ServiceHoursRange";
    }

    v6 = result;
    v7 = *(result + 96);
    if (a3)
    {
      v8 = 12;
    }

    else
    {
      v8 = 17;
    }

    v12 = v8;
    memcpy(__dst, v5, v8);
    *(__dst + v8) = 0;
    v9 = sub_9274F4(v7, __dst);
    sub_64C184(a2, v9);
    if (v12 < 0)
    {
      operator delete(__dst[0]);
    }

    v10 = sub_96DB98(v6);
    sub_64E308(a2, "{ServiceBeginTime}", (v3 + 516), v10, 0);
    return sub_64E308(a2, "{ServiceEndTime}", (v3 + 520), v10, 0);
  }

  return result;
}

void sub_97BE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_97BEA0(uint64_t a1@<X8>)
{
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  v2 = a1 + 160;
  sub_64B998(a1);
  sub_64B998(v2);
  *(a1 + 320) = 0;
}

void sub_97BF20(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1);
  *(v1 + 160) = 0;
}

uint64_t sub_97BF5C(uint64_t a1, int a2, int a3)
{
  if ((a2 - 4) < 2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v4 = *(a1 + 72);
    if ((*(v4 + 792) & 1) == 0)
    {
      sub_4F0F0C();
    }

    LODWORD(result) = sub_A1989C(a1, *(a1 + 72));
    if (*(v4 + 424) == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_98B558(a1, a2, a3);
  }
}

uint64_t sub_97BFE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_989C18(a1, a2, a3);
  *v4 = &off_266E778;
  v5 = sub_A182F0(v4);
  if (*v5 != 2)
  {
    return a1;
  }

  v6 = *(v5 + 344);
  if (v6 > 2)
  {
    if (v6 != 3 && v6 != 4)
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 335);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v5 + 320);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v6 != 1)
  {
    if (v6 != 2 || *(v5 + 316) == -1 && *(v5 + 312) == -1 && *(v5 + 320) == *(v5 + 328))
    {
      goto LABEL_14;
    }

LABEL_17:
    if (*(a1 + 480) < *(a1 + 488))
    {
      sub_64A2C8(*(a1 + 480), "{Platform}");
    }

    sub_650C7C((a1 + 472), "{Platform}");
  }

  if (*(v5 + 312) != -1)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (*(a1 + 128) != 6)
  {
    return a1;
  }

  v8 = sub_A16D3C(a1);
  v9 = *(*(a1 + 80) + 96);
  if (0x4EC4EC4EC4EC4EC5 * ((*(*(a1 + 80) + 104) - v9) >> 4) <= v8)
  {
    sub_6FAB4();
  }

  v10 = v9 + 208 * v8;
  v11 = *(v10 + 120);
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      if (*(v10 + 88) == -1)
      {
        return a1;
      }
    }

    else if (v11 != 2 || *(v10 + 92) == -1 && *(v10 + 88) == -1 && *(v10 + 96) == *(v10 + 104))
    {
      return a1;
    }

LABEL_33:
    v13 = *(a1 + 96);
    v20 = 20;
    strcpy(__p, "{System} {SystemArt}");
    v14 = sub_9274F4(v13, __p);
    if (v20 < 0)
    {
      operator delete(*__p);
      v15 = *(a1 + 504);
      if (v15 < *(a1 + 512))
      {
LABEL_35:
        *(v15 + 16) = 0x800000000000000;
        *v15 = *"{System}";
        if (*(v14 + 23) < 0)
        {
          sub_325C((v15 + 24), *v14, v14[1]);
        }

        else
        {
          v16 = *v14;
          *(v15 + 40) = v14[2];
          *(v15 + 24) = v16;
        }

        *(a1 + 504) = v15 + 48;
        *(a1 + 504) = v15 + 48;
        v17 = *(a1 + 480);
        if (v17 >= *(a1 + 488))
        {
LABEL_44:
          sub_650C7C((a1 + 472), "{SystemArt}");
        }

LABEL_39:
        sub_64A2C8(v17, "{SystemArt}");
      }
    }

    else
    {
      v15 = *(a1 + 504);
      if (v15 < *(a1 + 512))
      {
        goto LABEL_35;
      }
    }

    *(a1 + 504) = sub_97EB64(a1 + 496, "{System}", v14);
    v17 = *(a1 + 480);
    if (v17 >= *(a1 + 488))
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v11 == 3 || v11 == 4)
  {
    v12 = *(v10 + 111);
    if (v12 < 0)
    {
      v12 = *(v10 + 96);
    }

    if (v12)
    {
      goto LABEL_33;
    }
  }

  return a1;
}

void sub_97C310(_Unwind_Exception *a1)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 504) = v2;
  sub_96BE24(v1);
  _Unwind_Resume(a1);
}

void sub_97C338(_Unwind_Exception *a1)
{
  v3 = v2;
  *(v1 + 480) = v3;
  sub_96BE24(v1);
  _Unwind_Resume(a1);
}

void sub_97C39C(void *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = sub_A16A78(a1, 2);
  v8 = a1[10];
  v9 = *(v7 + 94);
  v10 = *(v8 + 72);
  if (0x66FD0EB66FD0EB67 * ((*(v8 + 80) - v10) >> 3) <= v9)
  {
    sub_6FAB4();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v11 = *a3;
  v12 = a3[1];
  __p[0] = &v19;
  LOBYTE(__p[1]) = 0;
  if (v12 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 5) < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }

  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  sub_A1DE44(a1, a2, &v19, __p, *(v10 + 696 * v9 + 556), *(v10 + 696 * v9 + 560), a4);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v14 -= 160;
        sub_97EDE0(v14);
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_97C6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_97C72C(va);
  _Unwind_Resume(a1);
}

void sub_97C6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_97C72C(&a18);
  _Unwind_Resume(a1);
}

void sub_97C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_97EEA8(va);
  _Unwind_Resume(a1);
}

void sub_97C6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    v6 = v4 - 160;
    v7 = -v3;
    do
    {
      sub_97EDE0(v6);
      v6 -= 160;
      v7 += 160;
    }

    while (v7);
  }

  sub_97EEA8(va);
  _Unwind_Resume(a1);
}

void **sub_97C72C(void **a1)
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
        v3 -= 160;
        sub_97EDE0(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_97C790(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 2 && a3 == 1)
  {
    v6 = sub_A182F0(a1);
    sub_64B998(&v29);
    sub_64B998(v28);
    if (*(a1 + 128) == 6 || *v6 == 2 && sub_A1989C(a1, v6) || sub_970E78(a1))
    {
      sub_98A3E8(a1, *(a1 + 128) == 6, *(*(a1 + 112) + 41), &v27);
      sub_53D784(&v29, &v27);
      sub_53A868(&v27);
      if (*(*(a1 + 112) + 41) == 1 && !sub_4D1F6C(&v29) && *v6 == 2 && *(v6 + 424) == 1)
      {
        sub_588850(1, &v27);
        sub_64BF94(&v29, "{RT_Symbol}");
      }

LABEL_25:
      if (*(a1 + 128) == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    sub_A18308(a1, &v27);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v27.__r_.__value_.__l.__size_;
      operator delete(v27.__r_.__value_.__l.__data_);
      if (size)
      {
LABEL_17:
        v26 = 15;
        strcpy(v25, "Transfer to the");
        v7 = sub_A16A78(a1, 2);
        sub_A1D550(a1, v7, 1, __p);
        sub_97C39C(a1, v25, __p, &v27);
        sub_53D784(&v29, &v27);
        sub_53A868(&v27);
        v8 = *__p;
        if (*__p)
        {
          v9 = *&__p[8];
          v10 = *__p;
          if (*&__p[8] != *__p)
          {
            do
            {
              v9 -= 160;
              sub_97EDE0(v9);
            }

            while (v9 != v8);
            v10 = *__p;
          }

          *&__p[8] = v8;
          operator delete(v10);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
          if (*(a1 + 128) == 6)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        goto LABEL_25;
      }
    }

    else if (*(&v27.__r_.__value_.__s + 23))
    {
      goto LABEL_17;
    }

    sub_A1CB48(a1, 2, 1, &v27);
    sub_53D784(&v29, &v27);
    sub_53A868(&v27);
    if (*(a1 + 128) == 6)
    {
LABEL_26:
      v11 = sub_A16A78(a1, 2);
      sub_A1D550(a1, v11, 1, v25);
      if (!sub_A1DE00(a1, v25))
      {
        v24 = 20;
        strcpy(__p, "Follow signs for the");
        sub_97C39C(a1, __p, v25, &v27);
        sub_53D784(v28, &v27);
        sub_53A868(&v27);
        if (v24 < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_34;
      }

      sub_A18308(a1, &v27);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v27.__r_.__value_.__l.__size_;
        operator delete(v27.__r_.__value_.__l.__data_);
        if (v12)
        {
          goto LABEL_34;
        }
      }

      else if (*(&v27.__r_.__value_.__s + 23))
      {
        goto LABEL_34;
      }

      sub_A1CB48(a1, 1, 1, &v27);
      sub_53D784(v28, &v27);
      sub_53A868(&v27);
LABEL_34:
      v13 = v25[0];
      if (v25[0])
      {
        v14 = v25[1];
        v15 = v25[0];
        if (v25[1] != v25[0])
        {
          do
          {
            v14 -= 160;
            sub_97EDE0(v14);
          }

          while (v14 != v13);
          v15 = v25[0];
        }

        v25[1] = v13;
        operator delete(v15);
      }
    }

LABEL_39:
    if (!sub_4D1F6C(v28))
    {
      operator new();
    }

    *a4 = v29;
    v16 = v32;
    *(a4 + 16) = v30;
    v29 = 0uLL;
    *(a4 + 24) = v31;
    *(a4 + 40) = v16;
    v30 = 0;
    v31 = 0uLL;
    v32 = 0;
    *(a4 + 48) = v33;
    v17 = v36;
    *(a4 + 64) = v34;
    v33 = 0uLL;
    *(a4 + 72) = v35;
    v34 = 0;
    v35 = 0uLL;
    v36 = 0;
    v18 = v37;
    *(a4 + 88) = v17;
    *(a4 + 96) = v18;
    LODWORD(v18) = v38;
    *(a4 + 108) = v39;
    *(a4 + 104) = v18;
    v19 = v40;
    v20 = v43;
    *(a4 + 128) = v41;
    *(a4 + 112) = v19;
    v37 = 0;
    v40 = 0uLL;
    v21 = v42;
    *(a4 + 152) = v20;
    *(a4 + 136) = v21;
    v43 = 0;
    v41 = 0;
    v42 = 0uLL;
    sub_53A868(v28);
    sub_53A868(&v29);
    return;
  }

  sub_64B998(a4);
}

void sub_97CF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_53A868(&a46);
  sub_53A868(v46 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_97D058(uint64_t a1, int a2, int a3)
{
  if (a2 == 1 && a3 == 2)
  {
    v5 = sub_A182F0(a1);
    if (*v5 == 2)
    {
      v6 = v5;
      result = sub_A1989C(a1, v5);
      if (result)
      {
        return *(v6 + 424) == 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_A16E90();
  }

  return result;
}

uint64_t sub_97D0D8(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0;
  }

  else
  {
    return sub_96F77C(a1, a2);
  }
}

void sub_97D0EC(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 == 1 && *(a1 + 163) == 1)
  {
    v5 = *(*(a1 + 72) + 856);
    v6 = *(*(a1 + 80) + 120);
    if (0x86BCA1AF286BCA1BLL * ((*(*(a1 + 80) + 128) - v6) >> 4) <= v5)
    {
      sub_6FAB4();
    }

    v7 = v6 + 304 * v5;
    v8 = v7 + 192;
    v9 = *(v7 + 224);
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        if (*v8 == -1)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 2 || *(v8 + 4) == -1 && *v8 == -1 && *(v8 + 8) == *(v8 + 16))
      {
        goto LABEL_39;
      }

LABEL_16:
      *(a4 + 57) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      sub_64B998(a4 + 80);
      if (*(a1 + 520) != *(a1 + 528))
      {
        sub_96F984(a1, a2, 1, __p);
        sub_96CCDC(a4, __p);
        sub_9721FC(__p);
        v13 = *(a4 + 24);
        *__p = *"{AccessPointArt}";
        v23 = 0x1000000000000000;
        v24 = 0;
        sub_97D408((a4 + 24), v13, __p);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        sub_97D73C((a4 + 48), *(a4 + 48), &xmmword_22A50A0);
        goto LABEL_46;
      }

      sub_A1778C(a1, __p);
      if (*(v8 + 32) == 1)
      {
        if (v23 >= 0)
        {
          v14 = HIBYTE(v23);
        }

        else
        {
          v14 = __p[1];
        }

        v15 = *(v8 + 31);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v8 + 16);
        }

        v17 = "Follow signs for {AccessPointArt} {AccessPointExit}";
        if (v14 == v15)
        {
          if (v23 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          v19 = (v8 + 8);
          if (v16 < 0)
          {
            v19 = *(v8 + 8);
          }

          v20 = memcmp(v18, v19, v14);
          if (v20)
          {
            v17 = "Follow signs for {AccessPointArt} {AccessPointExit}";
          }

          else
          {
            v17 = "Follow signs for {AccessPointArt}";
          }

          if (v20)
          {
            v21 = 51;
          }

          else
          {
            v21 = 33;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v17 = "Follow signs for {AccessPointArt} {AccessPointExit}";
      }

      v21 = 51;
LABEL_44:
      sub_195A048(a4, v17, v21);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_46:
      sub_64BF94((a4 + 80), "{AccessPointArt}");
    }

    if (v9 == 3 || v9 == 4)
    {
      v10 = *(v8 + 23);
      if (v10 < 0)
      {
        v10 = *(v8 + 8);
      }

      if (v10)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_39:

  sub_96F984(a1, a2, a3, a4);
}

void sub_97D394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_9721FC(v14);
    _Unwind_Resume(a1);
  }

  sub_9721FC(v14);
  _Unwind_Resume(a1);
}

void sub_97D3DC(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_4B98C4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_97D408(uint64_t *a1, char *a2, __n128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = ((v7 - *a1) >> 5) + 1;
    if (v17 >> 59)
    {
      sub_1794();
    }

    v18 = v6 - v16;
    if (v18 >> 4 > v17)
    {
      v17 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    v42 = a1;
    if (v19)
    {
      if (!(v19 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v38 = 0;
    v39 = 32 * ((a2 - v16) >> 5);
    v40 = v39;
    v41 = 0;
    sub_97F818(&v38, a3);
    v22 = v39;
    v23 = a1[1];
    v24 = v39;
    v25 = v4;
    if (v23 != v4)
    {
      v26 = v40;
      v27 = v4;
      do
      {
        v28 = *v27;
        *(v26 + 16) = *(v27 + 2);
        *v26 = v28;
        *(v27 + 1) = 0;
        *(v27 + 2) = 0;
        *v27 = 0;
        *(v26 + 24) = *(v27 + 24);
        v27 += 2;
        v26 += 32;
      }

      while (v27 != v23);
      v29 = v4;
      do
      {
        if (*(v29 + 23) < 0)
        {
          operator delete(*v29);
        }

        v29 += 2;
      }

      while (v29 != v23);
      v25 = a1[1];
      v24 = v39;
    }

    v30 = v40 + v25 - v4;
    v40 = v30;
    a1[1] = v4;
    v31 = *a1;
    v32 = v24 + *a1 - v4;
    if (*a1 != v4)
    {
      v33 = *a1;
      v34 = v24 + *a1 - v4;
      do
      {
        v35 = *v33;
        *(v34 + 16) = *(v33 + 2);
        *v34 = v35;
        *(v33 + 1) = 0;
        *(v33 + 2) = 0;
        *v33 = 0;
        *(v34 + 24) = *(v33 + 24);
        v33 += 2;
        v34 += 32;
      }

      while (v33 != v4);
      do
      {
        if (*(v31 + 23) < 0)
        {
          operator delete(*v31);
        }

        v31 += 32;
      }

      while (v31 != v4);
      v31 = *a1;
      v30 = v40;
    }

    *a1 = v32;
    a1[1] = v30;
    v36 = a1[2];
    a1[2] = v41;
    v40 = v31;
    v41 = v36;
    v38 = v31;
    v39 = v31;
    if (v31)
    {
      operator delete(v31);
    }

    return v22;
  }

  else if (a2 == v7)
  {
    v21 = *a3;
    *(v7 + 16) = a3[1].n128_u64[0];
    *v7 = v21;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    *(v7 + 24) = a3[1].n128_u8[8];
    a1[1] = v7 + 32;
  }

  else
  {
    v8 = (v7 - 32);
    v9 = a1[1];
    if (v7 >= 0x20)
    {
      v9 = v7 + 32;
      v10 = *v8;
      *(v7 + 16) = *(v7 - 16);
      *v7 = v10;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *v8 = 0;
      *(v7 + 24) = *(v7 - 8);
    }

    a1[1] = v9;
    if (v7 != a2 + 32)
    {
      v11 = 0;
      v12 = &a2[-v7 + 32];
      do
      {
        v14 = v7 + v11;
        v15 = (v7 + v11 - 32);
        if (*(v7 + v11 - 9) < 0)
        {
          operator delete(*v15);
        }

        v13 = *(v14 - 64);
        *(v7 + v11 - 16) = *(v14 - 48);
        *v15 = v13;
        *(v14 - 41) = 0;
        *(v14 - 64) = 0;
        *(v14 - 8) = *(v14 - 40);
        v11 -= 32;
      }

      while (v12 != v11);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v20 = *a3;
    *(v4 + 2) = a3[1].n128_u64[0];
    *v4 = v20;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
    *(v4 + 24) = a3[1].n128_u8[8];
  }

  return v4;
}

void sub_97D728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

const void **sub_97D73C(void *a1, _OWORD *a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v39 = a1;
    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v36 = 0;
    v37 = 8 * ((a2 - v16) >> 3);
    v38 = v37;
    sub_97F9D8(&v36, a3);
    v26 = v37;
    memcpy(v38, v4, a1[1] - v4);
    v27 = *a1;
    v28 = v37;
    *&v38 = v38 + a1[1] - v4;
    a1[1] = v4;
    v29 = v4 - v27;
    v30 = (v28 - (v4 - v27));
    memcpy(v30, v27, v29);
    v31 = *a1;
    *a1 = v30;
    v32 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v31;
    *(&v38 + 1) = v32;
    v36 = v31;
    v37 = v31;
    if (v31)
    {
      operator delete(v31);
    }

    return v26;
  }

  else if (a2 == v7)
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(a1[1], *a3, *(a3 + 8));
    }

    else
    {
      v25 = *a3;
      *(v7 + 16) = *(a3 + 16);
      *v7 = v25;
    }

    a1[1] = v7 + 24;
  }

  else
  {
    v8 = (v7 - 24);
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = v7 + 24;
      v10 = *v8;
      *(v7 + 16) = *(v7 - 8);
      *v7 = v10;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      *v8 = 0;
    }

    a1[1] = v9;
    if (v7 != (a2 + 24))
    {
      v11 = 0;
      v12 = a2 - v7 + 24;
      do
      {
        v14 = v7 + v11;
        v15 = v7 + v11 - 24;
        if (*(v7 + v11 - 1) < 0)
        {
          operator delete(*v15);
        }

        v11 -= 24;
        v13 = *(v14 - 48);
        *(v15 + 16) = *(v14 - 32);
        *v15 = v13;
        *(v14 - 25) = 0;
        *(v14 - 48) = 0;
      }

      while (v12 != v11);
      v9 = a1[1];
    }

    v20 = v9 <= a3 || v4 > a3;
    v21 = 24;
    if (v20)
    {
      v21 = 0;
    }

    v22 = (a3 + v21);
    if (v4 != v22)
    {
      v23 = *(v22 + 23);
      if (*(v4 + 23) < 0)
      {
        if (v23 >= 0)
        {
          v33 = v22;
        }

        else
        {
          v33 = *v22;
        }

        if (v23 >= 0)
        {
          v34 = *(v22 + 23);
        }

        else
        {
          v34 = v22[1];
        }

        sub_13B38(v4, v33, v34);
      }

      else if ((*(v22 + 23) & 0x80) != 0)
      {
        sub_13A68(v4, *v22, v22[1]);
      }

      else
      {
        v24 = *v22;
        v4[2] = v22[2];
        *v4 = v24;
      }
    }
  }

  return v4;
}

void sub_97D9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

double sub_97DA0C@<D0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 == 2)
  {
    a2 = 1;
  }

  return sub_98957C(a1, a2, a3, a4);
}

void sub_97DA18(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 2 && a3 == 1)
  {
    sub_64B998(a4);
  }

  else
  {
    sub_A1CB48(a1, a2, a3, a4);
  }
}

double sub_97DA34@<D0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 != 2)
  {
LABEL_11:

    sub_98C830(a1, a2, a3, a4);
    return result;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v5 = a1[9];
      if (sub_A1D4E8(a1) && *(v5 + 88) != 0x7FFFFFFF && *(v5 + 96) && *(v5 + 97) == 1)
      {
        v7 = *(a1[9] + 56);

        sub_A1D1DC(a1, v7, a4);
      }

      else
      {

        return sub_64B998(a4);
      }

      return result;
    }

    goto LABEL_11;
  }

  sub_A1CB48(a1, 1, 2, a4);
  return result;
}

uint64_t sub_97DB30(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 456);
      sub_64B9C4(v15, (v4[11] + 1177));
      v6 = sub_64B9C4(v14, (v4[11] + 1177));
      if (v5)
      {
        (*(*v4 + 16))(__p, v4, 1, 0, v6);
        sub_53D784(v15, __p);
        sub_53A868(__p);
        (*(*v4 + 16))(__p, v4, 1, 1);
        sub_53D784(v14, __p);
        sub_53A868(__p);
      }

      else
      {
        v7 = v4[12];
        v13 = 9;
        strcpy(__p, "Exit Soon");
        v8 = sub_9274F4(v7, __p);
        sub_64C184(v15, v8);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v9 = *(v4[9] + 56);
        v10 = *v4[10];
        if (0xCF3CF3CF3CF3CF3DLL * ((*(v4[10] + 8) - v10) >> 3) <= v9)
        {
          sub_6FAB4();
        }

        v11 = sub_A18C04(v4, v10 + 168 * v9);
        sub_9D43A4(v11, __p);
        sub_64C184(v14, __p);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_594568(v2, v15);
      sub_594568(v2 + 160, v14);
      sub_53A868(v14);
      result = sub_53A868(v15);
      v2 += 464;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_97DD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A868(&a32);
    sub_53A868(v32 - 240);
    _Unwind_Resume(a1);
  }

  sub_53A868(&a32);
  sub_53A868(v32 - 240);
  _Unwind_Resume(a1);
}

void sub_97DD9C(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1);
  *(v1 + 160) = 0;
}

uint64_t sub_97DDFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_971560(a1, a2, a3);
  *v5 = &off_266EAF8;
  sub_3320D0(v5 + 66, *a3, a3[1]);
  sub_A1328C((a1 + 544), a1 + 528, *a3, a3[2]);
  if ((*(a1 + 520) & 1) == 0)
  {
    if (*(a1 + 216))
    {
      v6 = 0;
    }

    else
    {
      sub_A17784(a1, &__p);
      v7 = v11;
      if (v12 >= 0)
      {
        v7 = v12;
      }

      v6 = v7 != 0;
      if ((v12 & 0x8000000000000000) != 0)
      {
        operator delete(__p);
      }
    }

    sub_A1777C(a1, &__p);
    if (v12 < 0)
    {
      v8 = v11 == 0;
      operator delete(__p);
    }

    else
    {
      v8 = v12 == 0;
    }

    sub_A14668(a1 + 544, *(a1 + 72), 1, &__p);
    if (__p != v11)
    {
      if (v6)
      {
        if (*(a1 + 480) < *(a1 + 488))
        {
          sub_64A2C8(*(a1 + 480), "{System}");
        }

        sub_650C7C((a1 + 472), "{System}");
      }

      if (!v8)
      {
        if (*(a1 + 480) < *(a1 + 488))
        {
          sub_64A2C8(*(a1 + 480), "{Line}");
        }

        sub_650C7C((a1 + 472), "{Line}");
      }
    }

    sub_97E978(&__p);
  }

  return a1;
}

void sub_97DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;
  *(v9 + 480) = v11;
  sub_97E978(&a9);
  sub_96BE24(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_97E088(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_96BE24(a1);
}

void sub_97E0EC(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    operator delete(v2);
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_97E164(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_97E19C(void *a1)
{
  *a1 = off_266E240;
  v2 = a1[65];
  if (v2)
  {
    v3 = a1[66];
    v4 = a1[65];
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
      v4 = a1[65];
    }

    a1[66] = v2;
    operator delete(v4);
  }

  return sub_96BE24(a1);
}

void sub_97E23C(void *a1)
{
  *a1 = off_266E240;
  v2 = a1[65];
  if (v2)
  {
    v3 = a1[66];
    v4 = a1[65];
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
      v4 = a1[65];
    }

    a1[66] = v2;
    operator delete(v4);
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_97E2F4(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

void sub_97E330(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_97E368(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 520));
    a1 = v3;
  }

  return sub_96BE24(a1);
}

void sub_97E3DC(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_97E454(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

void sub_97E48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0uLL;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 24) = v9;
      v10 = *(v7 + 40);
      *(v7 + 40) = 0uLL;
      *(a4 + 40) = v10;
      v11 = *(v7 + 56);
      *(v7 + 56) = 0;
      *(a4 + 56) = v11;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0uLL;
      *(a4 + 64) = *(v7 + 64);
      v12 = *(v7 + 88);
      *(a4 + 80) = *(v7 + 80);
      *(v7 + 64) = 0uLL;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(a4 + 88) = v12;
      LODWORD(v11) = *(v7 + 96);
      *(a4 + 100) = *(v7 + 100);
      *(a4 + 96) = v11;
      v13 = *(v7 + 104);
      *(v7 + 104) = 0uLL;
      *(a4 + 104) = v13;
      v14 = *(v7 + 120);
      *(v7 + 120) = 0uLL;
      *(a4 + 120) = v14;
      *(a4 + 136) = *(v7 + 136);
      v7 += 144;
      a4 += 144;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_55A0A0(a1, v5);
        v5 += 144;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_97E5C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 144;
        sub_55A0A0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_97E630(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_96BE24(a1);
}

uint64_t *sub_97E694(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_97E6FC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_97E764(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*v1);
LABEL_4:

    operator delete();
  }

  return result;
}

uint64_t *sub_97E7E8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_97E850(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      operator delete(*result);
    }

    operator delete();
  }

  return result;
}

void ***sub_97E8E8(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v3 = v1[1];
      v4 = *v1;
      if (v3 != v2)
      {
        do
        {
          v3 = sub_972094(v3 - 168);
        }

        while (v3 != v2);
        v4 = *v1;
      }

      v1[1] = v2;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void **sub_97E978(uint64_t a1)
{
  if ((*(a1 + 263) & 0x80000000) == 0)
  {
    if ((*(a1 + 231) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 208));
    v2 = *(a1 + 192);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 240));
  if (*(a1 + 231) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
LABEL_7:
    (off_266EC40[v2])(&v5, a1 + 160);
  }

LABEL_8:
  *(a1 + 192) = -1;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_10:
      v3 = *(a1 + 80);
      if (v3 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(a1 + 96));
  v3 = *(a1 + 80);
  if (v3 != -1)
  {
LABEL_14:
    (off_266EC40[v3])(&v6, a1 + 48);
  }

LABEL_15:
  *(a1 + 80) = -1;
  sub_97EA80((a1 + 24));
  return sub_97EA80(a1);
}

void **sub_97EA80(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 8));
        v5 = v3 - 14;
        v6 = *(v3 - 20);
        if (v6 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266EC40[v6])(&v8, v5);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = v3 - 14;
    v6 = *(v3 - 20);
    if (v6 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 20) = -1;
    v3 = v5;
  }

  while (v5 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_97EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((*(a1 + 8) - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C((v7 + 24), *a3, *(a3 + 8));
  }

  else
  {
    *(v7 + 24) = *a3;
    *(v7 + 40) = *(a3 + 16);
  }

  v8 = *(a1 + 8) - *a1;
  v9 = v7 - v8;
  memcpy((v7 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7 + 48;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 48;
}

void sub_97ECD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    sub_84E7C(va);
    _Unwind_Resume(a1);
  }

  sub_84E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_97ED0C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  sub_55F1E8(a1 + 48, (a2 + 3));
  return a1;
}

void sub_97ED94(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_97EDE0(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    v2 = *(a1 + 80);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
LABEL_7:
    (off_266EC40[v2])(&v3, a1 + 48);
  }

LABEL_8:
  *(a1 + 80) = -1;
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(*a1);
    return;
  }

  operator delete(*(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    goto LABEL_12;
  }
}

void ***sub_97EEA8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 160;
          sub_97EDE0(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_97EF20(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 4);
    if (v12 > 0x1C71C71C71C71C7)
    {
      sub_1794();
    }

    v13 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0xE38E38E38E38E3)
    {
      v14 = 0x1C71C71C71C71C7;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1808();
    }

    v41 = 16 * ((a2 - v11) >> 4);
    v57 = v41;
    v42 = 144 * a5;
    v43 = v41 + 144 * a5;
    do
    {
      sub_55C01C(v41, v7);
      v41 += 144;
      v7 += 9;
      v42 -= 144;
    }

    while (v42);
    sub_97E48C(a1, v5, a1[1], v43);
    v44 = *a1;
    v58 = v43 + a1[1] - v5;
    a1[1] = v5;
    v45 = v57 + v44 - v5;
    sub_97E48C(a1, v44, v5, v45);
    v46 = *a1;
    *a1 = v45;
    a1[1] = v58;
    a1[2] = 0;
    if (v46)
    {
      operator delete(v46);
    }

    return v57;
  }

  v15 = v10 - a2;
  if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 4)) >= a5)
  {
    v30 = 144 * a5;
    v31 = a2 + 144 * a5;
    v32 = (v10 - 144 * a5);
    if (v32 >= v10)
    {
      a1[1] = v10;
      if (v10 == v31)
      {
LABEL_34:
        v50 = &v7[9 * a5];
        v51 = v5;
        do
        {
          sub_594AD4(v51, v7);
          v7 += 9;
          v51 += 144;
        }

        while (v7 != v50);
        return v5;
      }
    }

    else
    {
      v33 = a1[1];
      do
      {
        v34 = *v32;
        *(v33 + 16) = *(v32 + 2);
        *v33 = v34;
        *(v32 + 8) = 0uLL;
        *v32 = 0;
        v35 = *(v32 + 3);
        *(v33 + 32) = *(v32 + 8);
        *(v33 + 24) = v35;
        v36 = *(v32 + 40);
        *(v32 + 40) = 0uLL;
        *(v33 + 40) = v36;
        v37 = *(v32 + 7);
        *(v32 + 7) = 0;
        *(v33 + 56) = v37;
        *(v33 + 64) = 0;
        *(v33 + 72) = 0uLL;
        *(v33 + 64) = v32[4];
        *(v33 + 80) = *(v32 + 10);
        v32[4] = 0uLL;
        v38 = *(v32 + 11);
        *(v32 + 10) = 0;
        *(v32 + 11) = 0;
        *(v33 + 88) = v38;
        LODWORD(v38) = *(v32 + 24);
        *(v33 + 100) = *(v32 + 100);
        *(v33 + 96) = v38;
        v39 = *(v32 + 104);
        *(v32 + 104) = 0uLL;
        *(v33 + 104) = v39;
        v40 = *(v32 + 120);
        *(v32 + 120) = 0uLL;
        *(v33 + 120) = v40;
        *(v33 + 136) = *(v32 + 34);
        v32 += 9;
        v33 += 144;
      }

      while (v32 < v10);
      a1[1] = v33;
      if (v10 == v31)
      {
        goto LABEL_34;
      }
    }

    v47 = v10 - 144;
    v48 = a2 + v30 - v10;
    v49 = (v10 - 144 - v30);
    do
    {
      sub_97F40C(v47, v49);
      v47 -= 144;
      v49 -= 9;
      v48 += 144;
    }

    while (v48);
    goto LABEL_34;
  }

  v17 = (a3 + v15);
  v59 = a1[1];
  v18 = v59;
  if ((a3 + v15) != a4)
  {
    v19 = (a3 + v15);
    do
    {
      sub_55C01C(v18, v19);
      v19 += 9;
      v18 = v59 + 144;
      v59 += 144;
    }

    while (v19 != a4);
  }

  a1[1] = v18;
  if (v15 >= 1)
  {
    v20 = 144 * a5;
    v21 = v18 - 144 * a5;
    if (v21 >= v10)
    {
      v22 = v18;
    }

    else
    {
      v22 = v18;
      do
      {
        v23 = *v21;
        *(v22 + 16) = *(v21 + 16);
        *v22 = v23;
        *(v21 + 8) = 0uLL;
        *v21 = 0;
        v24 = *(v21 + 24);
        *(v22 + 32) = *(v21 + 32);
        *(v22 + 24) = v24;
        v25 = *(v21 + 40);
        *(v21 + 40) = 0uLL;
        *(v22 + 40) = v25;
        v26 = *(v21 + 56);
        *(v21 + 56) = 0;
        *(v22 + 56) = v26;
        *(v22 + 64) = 0;
        *(v22 + 72) = 0uLL;
        *(v22 + 64) = *(v21 + 64);
        *(v22 + 80) = *(v21 + 80);
        *(v21 + 64) = 0uLL;
        v27 = *(v21 + 88);
        *(v21 + 80) = 0;
        *(v21 + 88) = 0;
        *(v22 + 88) = v27;
        LODWORD(v27) = *(v21 + 96);
        *(v22 + 100) = *(v21 + 100);
        *(v22 + 96) = v27;
        v28 = *(v21 + 104);
        *(v21 + 104) = 0uLL;
        *(v22 + 104) = v28;
        v29 = *(v21 + 120);
        *(v21 + 120) = 0uLL;
        *(v22 + 120) = v29;
        *(v22 + 136) = *(v21 + 136);
        v21 += 144;
        v22 += 144;
      }

      while (v21 < v10);
    }

    a1[1] = v22;
    if (v18 != v5 + 144 * a5)
    {
      v52 = v18 - 144;
      v53 = v5 + v20 - v18;
      v54 = (v18 - 144 - v20);
      do
      {
        sub_97F40C(v52, v54);
        v52 -= 144;
        v54 -= 9;
        v53 += 144;
      }

      while (v53);
    }

    v55 = v5;
    do
    {
      sub_594AD4(v55, v7);
      v7 += 9;
      v55 += 144;
    }

    while (v7 != v17);
  }

  return v5;
}

void sub_97F3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

void sub_97F3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_97E5C8(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_97F3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6508E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_97F40C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 24) = v5;
  v6 = *(a2 + 5);
  if (!v6)
  {
    sub_97E694((a1 + 40));
    v8 = *(a2 + 6);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_62:
    sub_97E6FC((a1 + 48));
    v10 = *(a2 + 7);
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_63:
    sub_593634((a1 + 56));
    v13 = a1 + 64;
    v14 = *(a1 + 64);
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  *(a2 + 5) = 0;
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
  if (v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v8 = *(a2 + 6);
  if (!v8)
  {
    goto LABEL_62;
  }

LABEL_9:
  *(a2 + 6) = 0;
  v9 = *(a1 + 48);
  *(a1 + 48) = v8;
  if (v9)
  {
    if (*(v9 + 31) < 0)
    {
      operator delete(*(v9 + 8));
    }

    operator delete();
  }

  v10 = *(a2 + 7);
  if (!v10)
  {
    goto LABEL_63;
  }

LABEL_14:
  *(a2 + 7) = 0;
  v11 = *(a1 + 56);
  *(a1 + 56) = v10;
  if (v11)
  {
    if (*(v11 + 103) < 0)
    {
      operator delete(*(v11 + 80));
      if ((*(v11 + 71) & 0x80000000) == 0)
      {
LABEL_17:
        v12 = *(v11 + 32);
        if (v12 == -1)
        {
LABEL_22:
          *(v11 + 32) = -1;
          operator delete();
        }

LABEL_21:
        (off_266EC40[v12])(&v33, v11);
        goto LABEL_22;
      }
    }

    else if ((*(v11 + 71) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(*(v11 + 48));
    v12 = *(v11 + 32);
    if (v12 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v13 = a1 + 64;
  v14 = *(a1 + 64);
  if (v14)
  {
LABEL_24:
    v15 = *(a1 + 72);
    v16 = v14;
    if (v15 != v14)
    {
      do
      {
        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 4));
        }

        v15 -= 5;
      }

      while (v15 != v14);
      v16 = *v13;
    }

    *(a1 + 72) = v14;
    operator delete(v16);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
  }

LABEL_31:
  *(a1 + 64) = a2[4];
  v17 = *(a2 + 11);
  *(a1 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  if (v17)
  {
    *(a2 + 11) = 0;
    v18 = *(a1 + 88);
    *(a1 + 88) = v17;
    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v18 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v18)
  {
LABEL_33:
    sub_55CE04(a1 + 88, v18);
  }

LABEL_34:
  v19 = *(a2 + 24);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v19;
  v20 = *(a2 + 13);
  if (!v20)
  {
    sub_97E764((a1 + 104));
    v22 = *(a2 + 14);
    if (v22)
    {
      goto LABEL_40;
    }

LABEL_68:
    sub_97E7E8((a1 + 112));
    v25 = *(a2 + 15);
    if (v25)
    {
      goto LABEL_45;
    }

    goto LABEL_69;
  }

  *(a2 + 13) = 0;
  v21 = *(a1 + 104);
  *(a1 + 104) = v20;
  if (v21)
  {
    if (*(v21 + 47) < 0)
    {
      operator delete(*(v21 + 24));
      if ((*(v21 + 23) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((*(v21 + 23) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(*v21);
LABEL_38:
    operator delete();
  }

  v22 = *(a2 + 14);
  if (!v22)
  {
    goto LABEL_68;
  }

LABEL_40:
  *(a2 + 14) = 0;
  v23 = *(a1 + 112);
  *(a1 + 112) = v22;
  if (v23)
  {
    v24 = *(v23 + 8);
    if (v24)
    {
      *(v23 + 16) = v24;
      operator delete(v24);
    }

    operator delete();
  }

  v25 = *(a2 + 15);
  if (v25)
  {
LABEL_45:
    *(a2 + 15) = 0;
    v26 = *(a1 + 120);
    *(a1 + 120) = v25;
    if (v26)
    {
      if (*(v26 + 24) == 1 && *(v26 + 23) < 0)
      {
        operator delete(*v26);
      }

      operator delete();
    }

    v27 = *(a2 + 16);
    if (v27)
    {
      goto LABEL_51;
    }

LABEL_70:
    sub_97E8E8((a1 + 128));
    goto LABEL_58;
  }

LABEL_69:
  sub_97E850((a1 + 120));
  v27 = *(a2 + 16);
  if (!v27)
  {
    goto LABEL_70;
  }

LABEL_51:
  *(a2 + 16) = 0;
  v28 = *(a1 + 128);
  *(a1 + 128) = v27;
  if (v28)
  {
    v29 = *v28;
    if (*v28)
    {
      v30 = v28[1];
      v31 = *v28;
      if (v30 != v29)
      {
        do
        {
          v30 = sub_972094(v30 - 168);
        }

        while (v30 != v29);
        v31 = *v28;
      }

      v28[1] = v29;
      operator delete(v31);
    }

    operator delete();
  }

LABEL_58:
  *(a1 + 136) = *(a2 + 34);
  return a1;
}

__n128 sub_97F818(__int128 **a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v4 - *a1;
      }

      if (!(v10 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = &v6[-2 * (((v7 >> 5) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v9 = *v6;
        *(v5 + 2) = *(v6 + 2);
        *v5 = v9;
        *(v6 + 23) = 0;
        *v6 = 0;
        *(v5 + 24) = *(v6 + 24);
        v6 += 2;
        v5 += 2;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[2 * v8];
    a1[2] = v5;
  }

  result = *a2;
  *(v5 + 2) = a2[1].n128_u64[0];
  *v5 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(v5 + 24) = a2[1].n128_u8[8];
  a1[2] += 2;
  return result;
}

void sub_97F9D8(__int128 **a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v10 = 1;
      }

      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
    v5 = (v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2));
    if (v6 != v4)
    {
      do
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v9 = *v6;
        *(v5 + 2) = *(v6 + 2);
        *v5 = v9;
        v5 = (v5 + 24);
        *(v6 + 23) = 0;
        *v6 = 0;
        v6 = (v6 + 24);
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = (v6 + 24 * v8);
    a1[2] = v5;
  }

  if (*(a2 + 23) < 0)
  {
    sub_325C(v5, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(v5 + 2) = *(a2 + 2);
    *v5 = v11;
  }

  a1[2] = (a1[2] + 24);
}

void sub_97FD04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_97FD3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_97FF00(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_97FF38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266ECC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980118(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980150(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266ED18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980330(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980368(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266ED68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980548(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980580(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_980760(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980798(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_98095C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_980994(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266EE58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_980A10(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      sub_1794();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x924924924924924)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = (4 * ((v3 - *v2) >> 2));
    *v12 = *a2;
    *(v12 + 12) = *(a2 + 12);
    v13 = 28 * v7 + 28;
    v14 = 28 * v7 - (v3 - v6);
    memcpy(v12 - (v3 - v6), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 12) = *(a2 + 12);
    *v3 = v5;
    *(v2 + 8) = v3 + 28;
  }

  return result;
}

void sub_980B80()
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
  xmmword_27B1E80 = 0u;
  *algn_27B1E90 = 0u;
  dword_27B1EA0 = 1065353216;
  sub_3A9A34(&xmmword_27B1E80, v0);
  sub_3A9A34(&xmmword_27B1E80, v3);
  sub_3A9A34(&xmmword_27B1E80, __p);
  sub_3A9A34(&xmmword_27B1E80, v9);
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
    qword_27B1E28 = 0;
    qword_27B1E30 = 0;
    qword_27B1E20 = 0;
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

void sub_980E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1E38)
  {
    qword_27B1E40 = qword_27B1E38;
    operator delete(qword_27B1E38);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_980F1C(uint64_t *a1, void *a2)
{
  *a1 = sub_3B0030(a2);
  a1[1] = sub_3AFC64(a2);
  a1[2] = sub_3AFB1C(a2);
  a1[3] = 0;
  return a1;
}

double sub_980F68@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      sub_981094(a1, v4, __p);
      sub_981D00(a3, *(a3 + 8), __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 2));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v4 += 144;
    }

    while (v4 != v5);
  }

  sub_981244(a3, __p);
  v7 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v7;
    operator delete(v7);
  }

  result = *__p;
  *a3 = *__p;
  *(a3 + 16) = v10;
  return result;
}

void sub_981044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (!*v10)
  {
    _Unwind_Resume(exception_object);
  }

  *(v10 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(exception_object);
}

double sub_981094@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16) - v4;
  if (!v5)
  {
    sub_6FAB4();
  }

  v6 = *(v4 + 1128);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (!v6)
  {
    v9 = 0x193D4BB7E327A977 * (v5 >> 4);
    v10 = 2264;
    v11 = 1;
    do
    {
      v12 = *(a2 + 8);
      if (*(v12 + v10 - 1136))
      {
        break;
      }

      v13 = v11 < 0x193D4BB7E327A977 * ((*(a2 + 16) - v12) >> 4) && *(v12 + v10) == 0;
      sub_98134C(a1, (v12 + v10 - 2264), v11 != 1, v13, __p);
      sub_981D00(a3, *(a3 + 8), __p[0], __p[1], 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 2));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v10 += 1136;
      ++v11;
      --v9;
    }

    while (v9);
    sub_981244(a3, __p);
    v14 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v14;
      operator delete(v14);
    }

    result = *__p;
    *a3 = *__p;
    *(a3 + 16) = v17;
  }

  return result;
}

void sub_9811F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_981244(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (&v5[-v4] >> 2));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_98223C(v4, v5, v7, 1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v10 = *a1;
  v11 = a1[1];
  while (v10 != v11)
  {
    v12 = a2[1];
    if (*a2 != v12 && *(v12 - 28) == *v10 && *(v12 - 24) == *(v10 + 4))
    {
      v8.i32[0] = *(v10 + 24);
      v9.i32[0] = *(v12 - 4);
      v13 = vorr_s8(*&vmovl_u8(v9), *&vmovl_u8(v8));
      *(v12 - 4) = vuzp1_s8(v13, v13).u32[0];
      v9 = *(v12 - 12);
      v8 = vorr_s8(v9, *(v10 + 16));
      *(v12 - 12) = v8;
    }

    else
    {
      sub_981B9C(a2, v10);
    }

    v10 += 28;
  }
}

void sub_981330(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_98134C(uint64_t *a1@<X0>, _DWORD *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  if (*(*a1 + 11688))
  {
    v8 = a1;
    sub_7E9A4(v71);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v9 = sub_3A25A8(v8[1], a2[2] | (a2[1] << 32), 0, "trip");
    v61 = *(v9 + *(v9 - *v9 + 6));
    v10 = a2[4];
    if (v10 <= a2[5])
    {
      v11 = 0;
      v62 = v8;
      v63 = a3;
      do
      {
        v13 = v8[1];
        v14 = a2[1];
        v15 = sub_3A231C(v13, a2[2] | (v14 << 32), 0);
        v16 = &v15[-*v15];
        if (*v16 < 5u)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(v16 + 2);
          if (*(v16 + 2))
          {
            v17 += &v15[*&v15[v17]];
          }
        }

        v18 = (v17 + 4 * v14 + 4 + *(v17 + 4 * v14 + 4));
        v19 = (v18 - *v18);
        if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
        {
          v21 = *(v18 + v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = *&v15[24 * v21 + 4 + 24 * v10 + *(v16 + 3) + *&v15[*(v16 + 3)]];
        v23 = v62[1];
        v24 = a2[1];
        v25 = a2[2] | (v24 << 32);
        if (v10 >= a2[5])
        {
          v29 = sub_3A231C(v23, v25, 0);
          v30 = &v29[-*v29];
          if (*v30 < 5u)
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v30 + 2);
            if (*(v30 + 2))
            {
              v31 += &v29[*&v29[v31]];
            }
          }

          v38 = (v31 + 4 * v24 + 4 + *(v31 + 4 * v24 + 4));
          v39 = (v38 - *v38);
          if (*v39 >= 0xDu && (v40 = v39[6]) != 0)
          {
            v41 = *(v38 + v40);
          }

          else
          {
            v41 = -1;
          }

          v37 = *&v29[24 * v10 - 20 + 24 * v41 + *(v30 + 3) + *&v29[*(v30 + 3)]];
          v36 = 0xFFFFFFFF00000000;
        }

        else
        {
          v26 = sub_3A231C(v23, v25, 0);
          v27 = &v26[-*v26];
          if (*v27 < 5u)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v27 + 2);
            if (*(v27 + 2))
            {
              v28 += &v26[*&v26[v28]];
            }
          }

          v32 = (v28 + 4 * v24 + 4 + *(v28 + 4 * v24 + 4));
          v33 = (v32 - *v32);
          if (*v33 >= 0xDu && (v34 = v33[6]) != 0)
          {
            v35 = *(v32 + v34);
          }

          else
          {
            v35 = -1;
          }

          v36 = *&v26[24 * v10 + 28 + 24 * v35 + *(v27 + 3) + *&v26[*(v27 + 3)]];
          v37 = 0xFFFFFFFF00000000;
        }

        v42 = *v62;
        v43 = a2[6];
        v44 = a2[9];
        *&v65 = v37;
        *(&v65 + 1) = v22;
        v67[0] = v22;
        v67[1] = v36;
        v69 = 0;
        v70 = 0;
        __p = 0;
        sub_95DCF4(v42, v22, 0, v43, v44, 1, v61, &v65, v67, &__p);
        v46 = __p;
        v45 = v69;
        if (__p != v69)
        {
          v47 = a2[4];
          do
          {
            if (v10 == v47 && (a3 & 1) == 0 && (*(v46 + 24) & 1) != 0 || (v51 = a2[5], v10 == v51) && (a4 & 1) == 0 && (*(v46 + 23) & 1) != 0 || v10 != v51 && *(v46 + 25) == 1)
            {
              v52 = a5[2];
              if (v11 < v52)
              {
                v48 = *v46;
                *(v11 + 12) = *(v46 + 12);
                *v11 = v48;
                v11 += 28;
              }

              else
              {
                v53 = *a5;
                v54 = &v11[-*a5];
                v55 = 0x6DB6DB6DB6DB6DB7 * (v54 >> 2) + 1;
                if (v55 > 0x924924924924924)
                {
                  sub_1794();
                }

                v56 = 0x6DB6DB6DB6DB6DB7 * ((v52 - v53) >> 2);
                if (2 * v56 > v55)
                {
                  v55 = 2 * v56;
                }

                if (v56 >= 0x492492492492492)
                {
                  v57 = 0x924924924924924;
                }

                else
                {
                  v57 = v55;
                }

                if (v57)
                {
                  if (v57 <= 0x924924924924924)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v58 = (4 * (v54 >> 2));
                v59 = *v46;
                *(v58 + 12) = *(v46 + 12);
                *v58 = v59;
                v11 = v58 + 28;
                v60 = v58 - v54;
                memcpy(v58 - v54, v53, v54);
                *a5 = v60;
                a5[1] = v11;
                a5[2] = 0;
                if (v53)
                {
                  operator delete(v53);
                }

                a3 = v63;
              }

              a5[1] = v11;
              v47 = a2[4];
              v49 = *(v11 - 4);
              if (v10 != v47)
              {
                v49 = 0;
              }

              *(v11 - 4) = v49;
              v50 = *(v11 - 5);
              if (v10 != a2[5])
              {
                v50 = 0;
              }

              *(v11 - 5) = v50;
            }

            v46 = (v46 + 28);
          }

          while (v46 != v45);
          v46 = __p;
        }

        if (v46)
        {
          v69 = v46;
          operator delete(v46);
        }

        ++v10;
        v8 = v62;
      }

      while (v10 <= a2[5]);
    }

    else
    {
      v11 = 0;
    }

    sub_95D75C(*v8, v61, 0, a2[6], a2[9], &__p);
    sub_981D00(a5, v11, __p, v69, 0x6DB6DB6DB6DB6DB7 * ((v69 - __p) >> 2));
    sub_981244(a5, &v65);
    v12 = *a5;
    if (*a5)
    {
      a5[1] = v12;
      operator delete(v12);
    }

    *a5 = v65;
    a5[2] = v66;
    *(v8 + 3) = sub_7EA60(v71) + *(v8 + 3);
    if (__p)
    {
      v69 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void sub_9818B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    v24 = *v22;
    if (!*v22)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v24 = *v22;
    if (!*v22)
    {
      goto LABEL_3;
    }
  }

  *(v22 + 8) = v24;
  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void sub_98194C(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(*a1 + 11688))
  {
    sub_7E9A4(v12);
    v6 = a2[8];
    sub_981AB0(a1, a2 + 1, a2[7], v6, a3);
    sub_981AB0(a1, a2 + 4, a2[7], v6, &__p);
    sub_981D00(a3, *(a3 + 8), __p, v11, 0x6DB6DB6DB6DB6DB7 * ((v11 - __p) >> 2));
    sub_981244(a3, &v8);
    v7 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v7;
      operator delete(v7);
    }

    *a3 = v8;
    *(a3 + 16) = v9;
    *(a1 + 24) = sub_7EA60(v12) + *(a1 + 24);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_981A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
    v16 = *v14;
    if (!*v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 8) = v16;
  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_981AB0(uint64_t *a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  if (*a2)
  {
    if (*a2 == 3)
    {
      v7 = a2[1];
      v6 = a2[2];
      v8 = *a1;
      a5[1] = 0;
      a5[2] = 0;
      *a5 = 0;
      if (v6)
      {
        v9 = v7 == -1;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        sub_981FD0(v8, v6 | (v7 << 32), 0, a3, a4, a5);
      }
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
    }
  }

  else
  {
    v10 = *a1;
    v11 = a2[2] | (a2[1] << 32);
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    *&v12 = 0xFFFFFFFF00000000;
    *(&v12 + 1) = 0xFFFFFFFF00000000;
    v13 = v12;
    v14 = v12;
    sub_95DCF4(v10, v11, 0, a3, a4, 1, 0xFFFFFFFF00000000, &v14, &v13, a5);
  }
}

void sub_981B7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_981B9C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 12) = *(a2 + 12);
    *v3 = v5;
    v6 = v3 + 28;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x924924924924924)
  {
    sub_1794();
  }

  v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x492492492492492)
  {
    v11 = 0x924924924924924;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x924924924924924)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = (4 * ((v3 - *a1) >> 2));
  *v12 = *a2;
  *(v12 + 12) = *(a2 + 12);
  v6 = 28 * v8 + 28;
  v13 = 28 * v8 - (v3 - v7);
  memcpy(v12 - (v3 - v7), v7, v3 - v7);
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

void *sub_981D00(uint64_t a1, char *__dst, _OWORD *__src, __int128 *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 2) < a5)
  {
    v8 = *a1;
    v9 = a5 + 0x6DB6DB6DB6DB6DB7 * (&v7[-*a1] >> 2);
    if (v9 > 0x924924924924924)
    {
      sub_1794();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x492492492492492)
    {
      v11 = 0x924924924924924;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x924924924924924)
      {
        operator new();
      }

      sub_1808();
    }

    v28 = 4 * ((__dst - v8) >> 2);
    v29 = 28 * a5;
    v30 = v28 + 28 * a5;
    v31 = v28;
    do
    {
      v32 = *__src;
      *(v31 + 12) = *(__src + 12);
      *v31 = v32;
      v31 = (v31 + 28);
      __src = (__src + 28);
      v29 -= 28;
    }

    while (v29);
    v33 = *(a1 + 8) - __dst;
    memcpy((v28 + 28 * a5), __dst, v33);
    v35 = v30 + v33;
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = v5 - *a1;
    v38 = v28 - v37;
    memcpy((v28 - v37), *a1, v37);
    *a1 = v38;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v28;
  }

  v12 = v7 - __dst;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - __dst) >> 2) >= a5)
  {
    v12 = 28 * a5;
    v23 = &__dst[28 * a5];
    v24 = &v7[-28 * a5];
    for (i = *(a1 + 8); v24 < v7; v24 += 28)
    {
      v26 = *v24;
      *(i + 12) = *(v24 + 12);
      *i = v26;
      i = (i + 28);
    }

    *(a1 + 8) = i;
    if (v7 == v23)
    {
      goto LABEL_25;
    }

    v21 = v7 - v23;
    v22 = &v7[-v21];
    goto LABEL_24;
  }

  v13 = (__src + v12);
  v14 = *(a1 + 8);
  for (j = v14; v13 != a4; v14 = (v14 + 28))
  {
    v16 = *v13;
    *(j + 12) = *(v13 + 12);
    *j = v16;
    j = (j + 28);
    v13 = (v13 + 28);
  }

  *(a1 + 8) = v14;
  if (v12 >= 1)
  {
    v17 = &__dst[28 * a5];
    v18 = (v14 - 28 * a5);
    for (k = v14; v18 < v7; v18 = (v18 + 28))
    {
      v20 = *v18;
      *(k + 12) = *(v18 + 12);
      *k = v20;
      k = (k + 28);
    }

    *(a1 + 8) = k;
    if (j == v17)
    {
      goto LABEL_25;
    }

    v21 = v14 - v17;
    v22 = &__dst[28 * a5];
LABEL_24:
    v27 = __src;
    memmove(v22, __dst, v21);
    __src = v27;
LABEL_25:
    memmove(v5, __src, v12);
  }

  return v5;
}

void sub_981FD0(uint64_t a1, unint64_t a2, int a3, int a4, int a5, void *a6)
{
  if (a2)
  {
    v10 = HIDWORD(a2);
  }

  else
  {
    v10 = -1;
  }

  if (HIDWORD(a2) == 0xFFFFFFFF || a2 == 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v36 = __PAIR64__(v10, v12);
  v13 = sub_3A8760((*(a1 + 11688) + 64), &v36);
  v14 = &unk_22A54C8;
  if (v13)
  {
    v14 = (v13 + 3);
  }

  v15 = *v14;
  v16 = v14[1];
  if (*v14 != v16)
  {
    v35 = a3;
    v33 = a4;
    v34 = a6;
    do
    {
      v18 = v15[2];
      if (v18 <= a5)
      {
        v19 = v15[3];
        if (v19 >= a4)
        {
          v20 = *(v15 + 4);
          if (!a3 || (v15[1] & 1) != 0)
          {
            v21 = *v15;
            v22 = v19 == 0x7FFFFFFF || v18 == 0x7FFFFFFF;
            if (!v22 && v21 != -1)
            {
              v24 = a6[1];
              v25 = a6[2];
              if (v24 < v25)
              {
                *v24 = v21;
                *(v24 + 4) = v20;
                *(v24 + 8) = v18;
                *(v24 + 12) = v19;
                *(v24 + 16) = 1;
                *(v24 + 17) = 0;
                *(v24 + 25) = 0;
                v17 = v24 + 28;
                *(v24 + 27) = 1;
              }

              else
              {
                v26 = *a6;
                v27 = 0x6DB6DB6DB6DB6DB7 * ((v24 - *a6) >> 2);
                v28 = v27 + 1;
                if ((v27 + 1) > 0x924924924924924)
                {
                  sub_1794();
                }

                v29 = 0x6DB6DB6DB6DB6DB7 * ((v25 - v26) >> 2);
                if (2 * v29 > v28)
                {
                  v28 = 2 * v29;
                }

                if (v29 >= 0x492492492492492)
                {
                  v30 = 0x924924924924924;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  if (v30 <= 0x924924924924924)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                a6 = v34;
                v31 = 28 * v27;
                *v31 = v21;
                *(v31 + 4) = v20;
                *(v31 + 8) = v18;
                *(v31 + 12) = v19;
                *(v31 + 16) = 1;
                *(v31 + 17) = 0;
                *(v31 + 25) = 0;
                *(v31 + 27) = 1;
                v17 = 28 * v27 + 28;
                v32 = (28 * v27 - (v24 - v26));
                memcpy(v32, v26, v24 - v26);
                *v34 = v32;
                v34[1] = v17;
                v34[2] = 0;
                if (v26)
                {
                  operator delete(v26);
                }

                a4 = v33;
              }

              a6[1] = v17;
              a3 = v35;
            }
          }
        }
      }

      v15 += 4;
    }

    while (v15 != v16);
  }
}

void sub_98223C(uint64_t a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 28);
  v9 = (a2 - 56);
  v10 = (a2 - 84);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = &a2[-v11];
    v13 = 0x6DB6DB6DB6DB6DB7 * (&a2[-v11] >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v147 = *(a2 - 7);
        v146 = a2 - 28;
        v148 = v147 == *v11;
        v149 = v147 < *v11;
        if (v148)
        {
          v149 = v146[4] < *(v11 + 4);
        }

        if (v149)
        {
          *&v261[12] = *(v11 + 12);
          *v261 = *v11;
          v150 = *v146;
          *(v11 + 12) = *(v146 + 12);
          *v11 = v150;
          *(v146 + 12) = *&v261[12];
          *v146 = *v261;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_983778(v11, (v11 + 28), v11 + 56, (a2 - 28));
      return;
    }

    if (v13 == 5)
    {
      sub_983778(v11, (v11 + 28), v11 + 56, v11 + 84);
      v134 = *(a2 - 7);
      v133 = a2 - 28;
      v135 = *(v11 + 84);
      v136 = v134 < v135;
      if (v134 == v135)
      {
        v136 = v133[4] < *(v11 + 88);
      }

      if (v136)
      {
        *v257 = *(v11 + 84);
        *&v257[12] = *(v11 + 96);
        v137 = *v133;
        *(v11 + 96) = *(v133 + 12);
        *(v11 + 84) = v137;
        *(v133 + 12) = *&v257[12];
        *v133 = *v257;
        v138 = *(v11 + 84);
        v139 = *(v11 + 56);
        v148 = v138 == v139;
        v140 = v138 < v139;
        if (v148)
        {
          v140 = *(v11 + 88) < *(v11 + 60);
        }

        if (v140)
        {
          *v258 = *(v11 + 56);
          *&v258[12] = *(v11 + 68);
          *(v11 + 56) = *(v11 + 84);
          *(v11 + 68) = *(v11 + 96);
          *(v11 + 84) = *v258;
          *(v11 + 96) = *&v258[12];
          v141 = *(v11 + 56);
          v142 = *(v11 + 28);
          v148 = v141 == v142;
          v143 = v141 < v142;
          if (v148)
          {
            v143 = *(v11 + 60) < *(v11 + 32);
          }

          if (v143)
          {
            *v259 = *(v11 + 28);
            *&v259[12] = *(v11 + 40);
            *(v11 + 28) = *(v11 + 56);
            *(v11 + 40) = *(v11 + 68);
            *(v11 + 56) = *v259;
            *(v11 + 68) = *&v259[12];
            v144 = *(v11 + 28);
            v148 = v144 == *v11;
            v145 = v144 < *v11;
            if (v148)
            {
              v145 = *(v11 + 32) < *(v11 + 4);
            }

            if (v145)
            {
              *&v260[12] = *(v11 + 12);
              *v260 = *v11;
              *v11 = *(v11 + 28);
              *(v11 + 12) = *(v11 + 40);
              *(v11 + 28) = *v260;
              *(v11 + 40) = *&v260[12];
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v12 <= 671)
    {
      v160 = (v11 + 28);
      v162 = v11 == a2 || v160 == a2;
      if (a4)
      {
        if (!v162)
        {
          v163 = 0;
          v164 = v11;
          do
          {
            v166 = v160;
            v167 = *(v164 + 28);
            v168 = *(v164 + 32);
            v169 = v167 < *v164;
            if (v167 == *v164)
            {
              v169 = v168 < *(v164 + 4);
            }

            if (v169)
            {
              *v263 = *(v164 + 33);
              *&v263[15] = *(v164 + 48);
              v170 = v163;
              do
              {
                v171 = v11 + v170;
                *(v171 + 28) = *(v11 + v170);
                *(v171 + 40) = *(v11 + v170 + 12);
                if (!v170)
                {
                  v165 = v11;
                  goto LABEL_202;
                }

                v172 = *(v171 - 28);
                v173 = v168 < *(v171 - 24);
                v148 = v167 == v172;
                v174 = v167 < v172;
                if (!v148)
                {
                  v173 = v174;
                }

                v170 -= 28;
              }

              while (v173);
              v165 = v11 + v170 + 28;
LABEL_202:
              *v165 = v167;
              *(v165 + 4) = v168;
              *(v165 + 20) = *&v263[15];
              *(v165 + 5) = *v263;
            }

            v160 = v166 + 28;
            v163 += 28;
            v164 = v166;
          }

          while (v166 + 28 != a2);
        }
      }

      else if (!v162)
      {
        v219 = v11 + 33;
        do
        {
          v220 = v160;
          v221 = *(a1 + 28);
          v222 = *(a1 + 32);
          v223 = v221 < *a1;
          if (v221 == *a1)
          {
            v223 = v222 < *(a1 + 4);
          }

          if (v223)
          {
            *v268 = *(a1 + 33);
            *&v268[15] = *(a1 + 48);
            v224 = v219;
            do
            {
              *(v224 - 5) = *(v224 - 33);
              *(v224 + 7) = *(v224 - 21);
              v225 = *(v224 - 61);
              v148 = v221 == v225;
              v226 = v221 < v225;
              if (v148)
              {
                v226 = v222 < *(v224 - 57);
              }

              v224 -= 28;
            }

            while (v226);
            *(v224 - 5) = v221;
            *(v224 - 1) = v222;
            *(v224 + 15) = *&v268[15];
            *v224 = *v268;
          }

          v160 = (v220 + 28);
          v219 += 28;
          a1 = v220;
        }

        while ((v220 + 28) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v175 = (v13 - 2) >> 1;
        v176 = v175;
        do
        {
          v177 = v176;
          if (v175 >= v176)
          {
            v178 = (2 * v176) | 1;
            v179 = v11 + 28 * v178;
            if (2 * v177 + 2 >= v13)
            {
              v180 = *v179;
            }

            else
            {
              v180 = *(v179 + 28);
              v181 = *(v179 + 4) < *(v179 + 32);
              if (*v179 != v180)
              {
                v181 = *v179 < v180;
              }

              if (v181)
              {
                v179 += 28;
                v178 = 2 * v177 + 2;
              }

              else
              {
                v180 = *v179;
              }
            }

            v182 = v11 + 28 * v177;
            v183 = *v182;
            v184 = *(v182 + 4);
            v148 = v180 == *v182;
            v185 = v180 < *v182;
            if (v148)
            {
              v185 = *(v179 + 4) < v184;
            }

            if (!v185)
            {
              *&v264[15] = *(v182 + 20);
              *v264 = *(v182 + 5);
              do
              {
                v191 = v182;
                v182 = v179;
                v192 = *v179;
                *(v191 + 12) = *(v179 + 12);
                *v191 = v192;
                if (v175 < v178)
                {
                  break;
                }

                v193 = (2 * v178) | 1;
                v179 = v11 + 28 * v193;
                v178 = 2 * v178 + 2;
                if (v178 < v13)
                {
                  v186 = *v179;
                  v187 = *(v179 + 28);
                  v188 = *(v179 + 4) < *(v179 + 32);
                  if (*v179 != v187)
                  {
                    v188 = *v179 < v187;
                  }

                  if (v188)
                  {
                    v186 = *(v179 + 28);
                    v179 += 28;
                  }

                  else
                  {
                    v178 = v193;
                  }
                }

                else
                {
                  v186 = *v179;
                  v178 = v193;
                }

                v189 = *(v179 + 4) < v184;
                v148 = v186 == v183;
                v190 = v186 < v183;
                if (!v148)
                {
                  v189 = v190;
                }
              }

              while (!v189);
              *v182 = v183;
              *(v182 + 4) = v184;
              *(v182 + 20) = *&v264[15];
              *(v182 + 5) = *v264;
            }
          }

          v176 = v177 - 1;
        }

        while (v177);
        v194 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 2);
        do
        {
          v196 = 0;
          *&v265[12] = *(v11 + 12);
          *v265 = *v11;
          v197 = v11;
          do
          {
            v204 = v197 + 28 * v196;
            v202 = v204 + 28;
            v205 = (2 * v196) | 1;
            v196 = 2 * v196 + 2;
            if (v196 < v194)
            {
              v199 = *(v204 + 14);
              v198 = v204 + 56;
              v200 = *(v198 - 7);
              v201 = v200 < v199;
              if (v200 == v199)
              {
                v201 = *(v198 - 24) < v198[4];
              }

              if (v201)
              {
                v202 = v198;
              }

              else
              {
                v196 = v205;
              }
            }

            else
            {
              v196 = v205;
            }

            v203 = *v202;
            *(v197 + 12) = *(v202 + 12);
            *v197 = v203;
            v197 = v202;
          }

          while (v196 <= ((v194 - 2) >> 1));
          a2 -= 28;
          if (v202 == a2)
          {
            *(v202 + 12) = *&v265[12];
            *v202 = *v265;
          }

          else
          {
            v206 = *a2;
            *(v202 + 12) = *(a2 + 12);
            *v202 = v206;
            *(a2 + 12) = *&v265[12];
            *a2 = *v265;
            v207 = &v202[-v11 + 28];
            if (v207 >= 29)
            {
              v208 = (0x6DB6DB6DB6DB6DB7 * (v207 >> 2) - 2) >> 1;
              v209 = v11 + 28 * v208;
              v210 = *v202;
              v211 = v202[4];
              v212 = *v209 < *v202;
              if (*v209 == *v202)
              {
                v212 = *(v209 + 4) < v211;
              }

              if (v212)
              {
                *&v233[15] = *(v202 + 20);
                *v233 = *(v202 + 5);
                do
                {
                  v213 = v202;
                  v202 = v209;
                  v214 = *v209;
                  *(v213 + 12) = *(v209 + 12);
                  *v213 = v214;
                  if (!v208)
                  {
                    break;
                  }

                  v208 = (v208 - 1) >> 1;
                  v209 = v11 + 28 * v208;
                  v215 = *v209 < v210;
                  if (*v209 == v210)
                  {
                    v215 = *(v209 + 4) < v211;
                  }
                }

                while (v215);
                *v202 = v210;
                v202[4] = v211;
                *(v202 + 20) = *&v233[15];
                *(v202 + 5) = *v233;
              }
            }
          }
        }

        while (v194-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v11 + 28 * (v13 >> 1);
    v16 = *(a2 - 7);
    v17 = *(a2 - 24);
    if (v12 < 0xE01)
    {
      v24 = *v11;
      v25 = *(v11 + 4);
      v26 = *v11 < *v15;
      if (*v11 == *v15)
      {
        v26 = v25 < *(v15 + 4);
      }

      v27 = v17 < v25;
      v148 = v16 == v24;
      v28 = v16 < v24;
      if (v148)
      {
        v28 = v27;
      }

      if (v26)
      {
        if (v28)
        {
          *&v235[12] = *(v15 + 12);
          *v235 = *v15;
          v29 = *v8;
          *(v15 + 12) = *(a2 - 1);
          *v15 = v29;
          goto LABEL_58;
        }

        *&v244[12] = *(v15 + 12);
        *v244 = *v15;
        v58 = *v11;
        *(v15 + 12) = *(v11 + 12);
        *v15 = v58;
        *(v11 + 12) = *&v244[12];
        *v11 = *v244;
        v59 = *(a2 - 7);
        v148 = v59 == *v11;
        v60 = v59 < *v11;
        if (v148)
        {
          v60 = *(a2 - 24) < *(v11 + 4);
        }

        if (v60)
        {
          *&v235[12] = *(v11 + 12);
          *v235 = *v11;
          v61 = *v8;
          *(v11 + 12) = *(a2 - 1);
          *v11 = v61;
LABEL_58:
          *(a2 - 1) = *&v235[12];
          *v8 = *v235;
        }
      }

      else if (v28)
      {
        *&v238[12] = *(v11 + 12);
        *v238 = *v11;
        v33 = *v8;
        *(v11 + 12) = *(a2 - 1);
        *v11 = v33;
        *(a2 - 1) = *&v238[12];
        *v8 = *v238;
        v34 = *v11 < *v15;
        if (*v11 == *v15)
        {
          v34 = *(v11 + 4) < *(v15 + 4);
        }

        if (v34)
        {
          *&v239[12] = *(v15 + 12);
          *v239 = *v15;
          v35 = *v11;
          *(v15 + 12) = *(v11 + 12);
          *v15 = v35;
          *(v11 + 12) = *&v239[12];
          *v11 = *v239;
          --a3;
          v36 = *v11;
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_101;
        }
      }

      --a3;
      v36 = *v11;
      if (a4)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    v18 = *v15;
    v19 = *(v15 + 4);
    v20 = *v15 < *v11;
    if (*v15 == *v11)
    {
      v20 = v19 < *(v11 + 4);
    }

    v21 = v17 < v19;
    v148 = v16 == v18;
    v22 = v16 < v18;
    if (v148)
    {
      v22 = v21;
    }

    if (v20)
    {
      if (v22)
      {
        *&v234[12] = *(v11 + 12);
        *v234 = *v11;
        v23 = *v8;
        *(v11 + 12) = *(a2 - 1);
        *v11 = v23;
LABEL_41:
        *(a2 - 1) = *&v234[12];
        *v8 = *v234;
        goto LABEL_42;
      }

      *&v240[12] = *(v11 + 12);
      *v240 = *v11;
      v37 = *v15;
      *(v11 + 12) = *(v15 + 12);
      *v11 = v37;
      *(v15 + 12) = *&v240[12];
      *v15 = *v240;
      v38 = *(a2 - 7);
      v148 = v38 == *v15;
      v39 = v38 < *v15;
      if (v148)
      {
        v39 = *(a2 - 24) < *(v15 + 4);
      }

      if (v39)
      {
        *&v234[12] = *(v15 + 12);
        *v234 = *v15;
        v40 = *v8;
        *(v15 + 12) = *(a2 - 1);
        *v15 = v40;
        goto LABEL_41;
      }
    }

    else if (v22)
    {
      *&v236[12] = *(v15 + 12);
      *v236 = *v15;
      v30 = *v8;
      *(v15 + 12) = *(a2 - 1);
      *v15 = v30;
      *(a2 - 1) = *&v236[12];
      *v8 = *v236;
      v31 = *v15 < *v11;
      if (*v15 == *v11)
      {
        v31 = *(v15 + 4) < *(v11 + 4);
      }

      if (v31)
      {
        *&v237[12] = *(v11 + 12);
        *v237 = *v11;
        v32 = *v15;
        *(v11 + 12) = *(v15 + 12);
        *v11 = v32;
        *(v15 + 12) = *&v237[12];
        *v15 = *v237;
      }
    }

LABEL_42:
    v41 = (v11 + 28);
    v42 = *(v11 + 28);
    v43 = v11 + 28 * v14;
    v46 = *(v43 - 28);
    v44 = v43 - 28;
    v45 = v46;
    v47 = *(v44 + 4);
    v48 = v47 < *(v11 + 32);
    v148 = v46 == v42;
    v49 = v46 < v42;
    if (!v148)
    {
      v48 = v49;
    }

    v50 = *(a2 - 14);
    v51 = *(a2 - 52) < v47;
    v148 = v50 == v45;
    v52 = v50 < v45;
    if (v148)
    {
      v52 = v51;
    }

    if (v48)
    {
      if (v52)
      {
        *v241 = *v41;
        *&v241[12] = *(v11 + 40);
        v53 = *v9;
        *(v11 + 40) = *(a2 - 44);
        *v41 = v53;
LABEL_65:
        *(a2 - 44) = *&v241[12];
        *v9 = *v241;
        goto LABEL_66;
      }

      *v245 = *v41;
      *&v245[12] = *(v11 + 40);
      v63 = *v44;
      *(v11 + 40) = *(v44 + 12);
      *v41 = v63;
      *(v44 + 12) = *&v245[12];
      *v44 = *v245;
      v64 = *(a2 - 14);
      v148 = v64 == *v44;
      v65 = v64 < *v44;
      if (v148)
      {
        v65 = *(a2 - 52) < *(v44 + 4);
      }

      if (v65)
      {
        *&v241[12] = *(v44 + 12);
        *v241 = *v44;
        v66 = *v9;
        *(v44 + 12) = *(a2 - 44);
        *v44 = v66;
        goto LABEL_65;
      }
    }

    else if (v52)
    {
      *&v242[12] = *(v44 + 12);
      *v242 = *v44;
      v54 = *v9;
      *(v44 + 12) = *(a2 - 44);
      *v44 = v54;
      *(a2 - 44) = *&v242[12];
      *v9 = *v242;
      v55 = *(v11 + 28);
      v56 = *v44 < v55;
      if (*v44 == v55)
      {
        v56 = *(v44 + 4) < *(v11 + 32);
      }

      if (v56)
      {
        *v243 = *v41;
        *&v243[12] = *(v11 + 40);
        v57 = *v44;
        *(v11 + 40) = *(v44 + 12);
        *v41 = v57;
        *(v44 + 12) = *&v243[12];
        *v44 = *v243;
      }
    }

LABEL_66:
    v67 = (v11 + 56);
    v68 = *(v11 + 56);
    v69 = v11 + 28 * v14;
    v72 = *(v69 + 28);
    v70 = v69 + 28;
    v71 = v72;
    v73 = *(v70 + 4);
    v74 = v73 < *(v11 + 60);
    v148 = v72 == v68;
    v75 = v72 < v68;
    if (!v148)
    {
      v74 = v75;
    }

    v76 = *(a2 - 21);
    v77 = *(a2 - 80) < v73;
    v148 = v76 == v71;
    v78 = v76 < v71;
    if (v148)
    {
      v78 = v77;
    }

    if (v74)
    {
      if (v78)
      {
        *v246 = *v67;
        *&v246[12] = *(v11 + 68);
        v79 = *v10;
        *(v11 + 68) = *(a2 - 72);
        *v67 = v79;
LABEL_82:
        *(a2 - 72) = *&v246[12];
        *v10 = *v246;
        goto LABEL_83;
      }

      *v249 = *v67;
      *&v249[12] = *(v11 + 68);
      v84 = *v70;
      *(v11 + 68) = *(v70 + 12);
      *v67 = v84;
      *(v70 + 12) = *&v249[12];
      *v70 = *v249;
      v85 = *(a2 - 21);
      v148 = v85 == *v70;
      v86 = v85 < *v70;
      if (v148)
      {
        v86 = *(a2 - 80) < *(v70 + 4);
      }

      if (v86)
      {
        *&v246[12] = *(v70 + 12);
        *v246 = *v70;
        v87 = *v10;
        *(v70 + 12) = *(a2 - 72);
        *v70 = v87;
        goto LABEL_82;
      }
    }

    else if (v78)
    {
      *&v247[12] = *(v70 + 12);
      *v247 = *v70;
      v80 = *v10;
      *(v70 + 12) = *(a2 - 72);
      *v70 = v80;
      *(a2 - 72) = *&v247[12];
      *v10 = *v247;
      v81 = *(v11 + 56);
      v82 = *v70 < v81;
      if (*v70 == v81)
      {
        v82 = *(v70 + 4) < *(v11 + 60);
      }

      if (v82)
      {
        *v248 = *v67;
        *&v248[12] = *(v11 + 68);
        v83 = *v70;
        *(v11 + 68) = *(v70 + 12);
        *v67 = v83;
        *(v70 + 12) = *&v248[12];
        *v70 = *v248;
      }
    }

LABEL_83:
    v88 = *v15;
    v89 = *(v15 + 4);
    v90 = *v15 < *v44;
    if (*v15 == *v44)
    {
      v90 = v89 < *(v44 + 4);
    }

    v91 = *(v70 + 4) < v89;
    v148 = *v70 == v88;
    v92 = *v70 < v88;
    if (v148)
    {
      v92 = v91;
    }

    if (v90)
    {
      if (v92)
      {
        *&v250[12] = *(v44 + 12);
        *v250 = *v44;
        *v44 = *v70;
        *(v44 + 12) = *(v70 + 12);
LABEL_99:
        *(v70 + 12) = *&v250[12];
        *v70 = *v250;
        goto LABEL_100;
      }

      *&v253[12] = *(v44 + 12);
      *v253 = *v44;
      *v44 = *v15;
      *(v44 + 12) = *(v15 + 12);
      *(v15 + 12) = *&v253[12];
      *v15 = *v253;
      v94 = *v70 < *v15;
      if (*v70 == *v15)
      {
        v94 = *(v70 + 4) < *(v15 + 4);
      }

      if (v94)
      {
        *&v250[12] = *(v15 + 12);
        *v250 = *v15;
        *v15 = *v70;
        *(v15 + 12) = *(v70 + 12);
        goto LABEL_99;
      }
    }

    else if (v92)
    {
      *&v251[12] = *(v15 + 12);
      *v251 = *v15;
      *v15 = *v70;
      *(v15 + 12) = *(v70 + 12);
      *(v70 + 12) = *&v251[12];
      *v70 = *v251;
      v93 = *v15 < *v44;
      if (*v15 == *v44)
      {
        v93 = *(v15 + 4) < *(v44 + 4);
      }

      if (v93)
      {
        *&v252[12] = *(v44 + 12);
        *v252 = *v44;
        *v44 = *v15;
        *(v44 + 12) = *(v15 + 12);
        *(v15 + 12) = *&v252[12];
        *v15 = *v252;
      }
    }

LABEL_100:
    *&v254[12] = *(v11 + 12);
    *v254 = *v11;
    v95 = *v15;
    *(v11 + 12) = *(v15 + 12);
    *v11 = v95;
    *(v15 + 12) = *&v254[12];
    *v15 = *v254;
    --a3;
    v36 = *v11;
    if (a4)
    {
LABEL_60:
      v62 = *(v11 + 4);
      goto LABEL_104;
    }

LABEL_101:
    v96 = *(v11 - 28);
    v62 = *(v11 + 4);
    v148 = v96 == v36;
    v97 = v96 < v36;
    if (v148)
    {
      v97 = *(v11 - 24) < v62;
    }

    if (v97)
    {
LABEL_104:
      v98 = 0;
      *&v231[15] = *(v11 + 20);
      *v231 = *(v11 + 5);
      do
      {
        v99 = *(v11 + v98 + 28);
        v100 = *(v11 + v98 + 32) < v62;
        v148 = v99 == v36;
        v101 = v99 < v36;
        if (!v148)
        {
          v100 = v101;
        }

        v98 += 28;
      }

      while (v100);
      v102 = v11 + v98;
      v103 = a2;
      if (v98 == 28)
      {
        v103 = a2;
        do
        {
          if (v102 >= v103)
          {
            break;
          }

          v106 = *(v103 - 7);
          v103 = (v103 - 28);
          v107 = v106 < v36;
          if (v106 == v36)
          {
            v107 = *(v103 + 4) < v62;
          }
        }

        while (!v107);
      }

      else
      {
        do
        {
          v104 = *(v103 - 7);
          v103 = (v103 - 28);
          v105 = v104 < v36;
          if (v104 == v36)
          {
            v105 = *(v103 + 4) < v62;
          }
        }

        while (!v105);
      }

      v11 = v102;
      if (v102 < v103)
      {
        v108 = v103;
        do
        {
          *&v255[12] = *(v11 + 12);
          *v255 = *v11;
          v109 = *v108;
          *(v11 + 12) = *(v108 + 12);
          *v11 = v109;
          *(v108 + 12) = *&v255[12];
          *v108 = *v255;
          do
          {
            v110 = *(v11 + 28);
            v11 += 28;
            v111 = v110 < v36;
            if (v110 == v36)
            {
              v111 = *(v11 + 4) < v62;
            }
          }

          while (v111);
          do
          {
            v112 = *(v108 - 28);
            v108 -= 28;
            v113 = v112 < v36;
            if (v112 == v36)
            {
              v113 = *(v108 + 4) < v62;
            }
          }

          while (!v113);
        }

        while (v11 < v108);
      }

      if (v11 - 28 != a1)
      {
        v114 = *(v11 - 28);
        *(a1 + 12) = *(v11 - 16);
        *a1 = v114;
      }

      *(v11 - 28) = v36;
      *(v11 - 24) = v62;
      *(v11 - 8) = *&v231[15];
      *(v11 - 23) = *v231;
      if (v102 < v103)
      {
        goto LABEL_133;
      }

      v115 = sub_983A24(a1, v11 - 28);
      if (sub_983A24(v11, a2))
      {
        a2 = (v11 - 28);
        if (!v115)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v115)
      {
LABEL_133:
        sub_98223C(a1, v11 - 28, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      *&v232[15] = *(v11 + 20);
      *v232 = *(v11 + 5);
      v116 = *(a2 - 7);
      v148 = v36 == v116;
      v117 = v36 < v116;
      if (v148)
      {
        v117 = v62 < *(a2 - 24);
      }

      if (v117)
      {
        do
        {
          v118 = *(v11 + 28);
          v11 += 28;
          v119 = v36 < v118;
          if (v36 == v118)
          {
            v119 = v62 < *(v11 + 4);
          }
        }

        while (!v119);
      }

      else
      {
        v120 = (v11 + 28);
        do
        {
          v11 = v120;
          if (v120 >= a2)
          {
            break;
          }

          v121 = *v120;
          v122 = v62 < *(v11 + 4);
          v148 = v36 == v121;
          v123 = v36 < v121;
          if (!v148)
          {
            v122 = v123;
          }

          v120 = (v11 + 28);
        }

        while (!v122);
      }

      v124 = a2;
      if (v11 < a2)
      {
        v124 = a2;
        do
        {
          v125 = *(v124 - 7);
          v124 = (v124 - 28);
          v126 = v36 < v125;
          if (v36 == v125)
          {
            v126 = v62 < *(v124 + 4);
          }
        }

        while (v126);
      }

      while (v11 < v124)
      {
        *&v256[12] = *(v11 + 12);
        *v256 = *v11;
        v127 = *v124;
        *(v11 + 12) = *(v124 + 12);
        *v11 = v127;
        *(v124 + 12) = *&v256[12];
        *v124 = *v256;
        do
        {
          v128 = *(v11 + 28);
          v11 += 28;
          v129 = v36 < v128;
          if (v36 == v128)
          {
            v129 = v62 < *(v11 + 4);
          }
        }

        while (!v129);
        do
        {
          v130 = *(v124 - 7);
          v124 = (v124 - 28);
          v131 = v36 < v130;
          if (v36 == v130)
          {
            v131 = v62 < *(v124 + 4);
          }
        }

        while (v131);
      }

      if (v11 - 28 != a1)
      {
        v132 = *(v11 - 28);
        *(a1 + 12) = *(v11 - 16);
        *a1 = v132;
      }

      a4 = 0;
      *(v11 - 28) = v36;
      *(v11 - 24) = v62;
      *(v11 - 8) = *&v232[15];
      *(v11 - 23) = *v232;
    }
  }

  v151 = (v11 + 28);
  v152 = *(v11 + 28);
  v153 = (a2 - 28);
  v154 = *(a2 - 7);
  v155 = *(v11 + 32);
  v156 = v152 < *v11;
  if (v152 == *v11)
  {
    v156 = v155 < *(v11 + 4);
  }

  v157 = *(a2 - 24) < v155;
  v148 = v154 == v152;
  v158 = v154 < v152;
  if (v148)
  {
    v158 = v157;
  }

  if (v156)
  {
    if (v158)
    {
      *&v262[12] = *(v11 + 12);
      *v262 = *v11;
      v159 = *v153;
      *(v11 + 12) = *(a2 - 1);
      *v11 = v159;
    }

    else
    {
      *&v269[12] = *(v11 + 12);
      *v269 = *v11;
      *v11 = *v151;
      *(v11 + 12) = *(v11 + 40);
      *v151 = *v269;
      *(v11 + 40) = *&v269[12];
      v227 = *(a2 - 7);
      v228 = *(v11 + 28);
      v148 = v227 == v228;
      v229 = v227 < v228;
      if (v148)
      {
        v229 = *(a2 - 24) < *(v11 + 32);
      }

      if (!v229)
      {
        return;
      }

      *v262 = *v151;
      *&v262[12] = *(v11 + 40);
      v230 = *v153;
      *(v11 + 40) = *(a2 - 1);
      *v151 = v230;
    }

    *(a2 - 1) = *&v262[12];
    *v153 = *v262;
    return;
  }

  if (v158)
  {
    *v266 = *v151;
    *&v266[12] = *(v11 + 40);
    v216 = *v153;
    *(v11 + 40) = *(a2 - 1);
    *v151 = v216;
    *(a2 - 1) = *&v266[12];
    *v153 = *v266;
    v217 = *(v11 + 28);
    v148 = v217 == *v11;
    v218 = v217 < *v11;
    if (v148)
    {
      v218 = *(v11 + 32) < *(v11 + 4);
    }

    if (v218)
    {
      *&v267[12] = *(v11 + 12);
      *v267 = *v11;
      *v11 = *v151;
      *(v11 + 12) = *(v11 + 40);
      *v151 = *v267;
      *(v11 + 40) = *&v267[12];
    }
  }
}

__n128 sub_983778(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v6 = v5 < *(a1 + 4);
  }

  v7 = *(a3 + 4) < v5;
  v8 = *a3 == v4;
  v9 = *a3 < v4;
  if (v8)
  {
    v9 = v7;
  }

  if (v6)
  {
    if (v9)
    {
      *v24 = *a1;
      *&v24[12] = *(a1 + 12);
      v10 = *(a3 + 12);
      *a1 = *a3;
      *(a1 + 12) = v10;
LABEL_17:
      *(a3 + 12) = *&v24[12];
      result = *v24;
      *a3 = *v24;
      goto LABEL_18;
    }

    *v27 = *a1;
    *&v27[12] = *(a1 + 12);
    v15 = *(a2 + 3);
    *a1 = *a2;
    *(a1 + 12) = v15;
    *(a2 + 3) = *&v27[12];
    result = *v27;
    *a2 = *v27;
    v16 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v16 = *(a3 + 4) < *(a2 + 4);
    }

    if (v16)
    {
      *v24 = *a2;
      *&v24[12] = *(a2 + 3);
      v17 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 3) = v17;
      goto LABEL_17;
    }
  }

  else if (v9)
  {
    *v25 = *a2;
    *&v25[12] = *(a2 + 3);
    v11 = *(a3 + 12);
    *a2 = *a3;
    *(a2 + 3) = v11;
    *(a3 + 12) = *&v25[12];
    result = *v25;
    *a3 = *v25;
    v13 = *a2 < *a1;
    if (*a2 == *a1)
    {
      v13 = *(a2 + 4) < *(a1 + 4);
    }

    if (v13)
    {
      *v26 = *a1;
      *&v26[12] = *(a1 + 12);
      v14 = *(a2 + 3);
      *a1 = *a2;
      *(a1 + 12) = v14;
      *(a2 + 3) = *&v26[12];
      result = *v26;
      *a2 = *v26;
    }
  }

LABEL_18:
  v18 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v18 = *(a4 + 4) < *(a3 + 4);
  }

  if (v18)
  {
    *v28 = *a3;
    *&v28[12] = *(a3 + 12);
    v19 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 12) = v19;
    *(a4 + 12) = *&v28[12];
    result = *v28;
    *a4 = *v28;
    v20 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v20 = *(a3 + 4) < *(a2 + 4);
    }

    if (v20)
    {
      *v29 = *a2;
      *&v29[12] = *(a2 + 3);
      v21 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 3) = v21;
      *(a3 + 12) = *&v29[12];
      result = *v29;
      *a3 = *v29;
      v22 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v22 = *(a2 + 4) < *(a1 + 4);
      }

      if (v22)
      {
        *v30 = *a1;
        *&v30[12] = *(a1 + 12);
        v23 = *(a2 + 3);
        *a1 = *a2;
        *(a1 + 12) = v23;
        *(a2 + 3) = *&v30[12];
        result = *v30;
        *a2 = *v30;
      }
    }
  }

  return result;
}

BOOL sub_983A24(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v23 = (a1 + 28);
        v24 = *(a1 + 28);
        v25 = (a2 - 28);
        v26 = *(a2 - 28);
        v27 = *(a1 + 32);
        v28 = v24 < *a1;
        if (v24 == *a1)
        {
          v28 = v27 < *(a1 + 4);
        }

        v29 = *(a2 - 24) < v27;
        v12 = v26 == v24;
        v30 = v26 < v24;
        if (v12)
        {
          v30 = v29;
        }

        if (!v28)
        {
          if (v30)
          {
            *v77 = *v23;
            *&v77[12] = *(a1 + 40);
            v43 = *(a2 - 16);
            *v23 = *v25;
            *(a1 + 40) = v43;
            *(a2 - 16) = *&v77[12];
            *v25 = *v77;
            v44 = *(a1 + 28);
            v12 = v44 == *a1;
            v45 = v44 < *a1;
            if (v12)
            {
              v45 = *(a1 + 32) < *(a1 + 4);
            }

            if (v45)
            {
              *v78 = *a1;
              *&v78[12] = *(a1 + 12);
              *a1 = *v23;
              *(a1 + 12) = *(a1 + 40);
              *v23 = *v78;
              *(a1 + 40) = *&v78[12];
            }
          }

          return 1;
        }

        if (v30)
        {
          *v75 = *a1;
          *&v75[12] = *(a1 + 12);
          v31 = *(a2 - 16);
          *a1 = *v25;
          *(a1 + 12) = v31;
        }

        else
        {
          *v81 = *a1;
          *&v81[12] = *(a1 + 12);
          *a1 = *v23;
          *(a1 + 12) = *(a1 + 40);
          *v23 = *v81;
          *(a1 + 40) = *&v81[12];
          v49 = *(a2 - 28);
          v50 = *(a1 + 28);
          v12 = v49 == v50;
          v51 = v49 < v50;
          if (v12)
          {
            v51 = *(a2 - 24) < *(a1 + 32);
          }

          if (!v51)
          {
            return 1;
          }

          *v75 = *v23;
          *&v75[12] = *(a1 + 40);
          v52 = *(a2 - 16);
          *v23 = *v25;
          *(a1 + 40) = v52;
        }

        *(a2 - 16) = *&v75[12];
        *v25 = *v75;
        break;
      case 4:
        sub_983778(a1, (a1 + 28), a1 + 56, a2 - 28);
        break;
      case 5:
        sub_983778(a1, (a1 + 28), a1 + 56, a1 + 84);
        v9 = (a2 - 28);
        v10 = *(a2 - 28);
        v11 = *(a1 + 84);
        v12 = v10 == v11;
        v13 = v10 < v11;
        if (v12)
        {
          v13 = *(a2 - 24) < *(a1 + 88);
        }

        if (v13)
        {
          *v71 = *(a1 + 84);
          *&v71[12] = *(a1 + 96);
          v14 = *(a2 - 16);
          *(a1 + 84) = *v9;
          *(a1 + 96) = v14;
          *(a2 - 16) = *&v71[12];
          *v9 = *v71;
          v15 = *(a1 + 84);
          v16 = *(a1 + 56);
          v12 = v15 == v16;
          v17 = v15 < v16;
          if (v12)
          {
            v17 = *(a1 + 88) < *(a1 + 60);
          }

          if (v17)
          {
            *v72 = *(a1 + 56);
            *&v72[12] = *(a1 + 68);
            *(a1 + 56) = *(a1 + 84);
            *(a1 + 68) = *(a1 + 96);
            *(a1 + 84) = *v72;
            *(a1 + 96) = *&v72[12];
            v18 = *(a1 + 56);
            v19 = *(a1 + 28);
            v12 = v18 == v19;
            v20 = v18 < v19;
            if (v12)
            {
              v20 = *(a1 + 60) < *(a1 + 32);
            }

            if (v20)
            {
              *v73 = *(a1 + 28);
              *&v73[12] = *(a1 + 40);
              *(a1 + 28) = *(a1 + 56);
              *(a1 + 40) = *(a1 + 68);
              *(a1 + 56) = *v73;
              *(a1 + 68) = *&v73[12];
              v21 = *(a1 + 28);
              v12 = v21 == *a1;
              v22 = v21 < *a1;
              if (v12)
              {
                v22 = *(a1 + 32) < *(a1 + 4);
              }

              if (v22)
              {
                *v74 = *a1;
                *&v74[12] = *(a1 + 12);
                *a1 = *(a1 + 28);
                *(a1 + 12) = *(a1 + 40);
                *(a1 + 28) = *v74;
                *(a1 + 40) = *&v74[12];
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 28);
    v3 = a2 - 28;
    v5 = v4 < *a1;
    if (v4 == *a1)
    {
      v5 = *(v3 + 4) < *(a1 + 4);
    }

    if (v5)
    {
      *v70 = *a1;
      *&v70[12] = *(a1 + 12);
      v6 = *(v3 + 12);
      *a1 = *v3;
      *(a1 + 12) = v6;
      *(v3 + 12) = *&v70[12];
      *v3 = *v70;
    }

    return 1;
  }

LABEL_31:
  v32 = a1 + 56;
  v33 = *(a1 + 56);
  v34 = (a1 + 28);
  v35 = *(a1 + 28);
  v36 = *(a1 + 32);
  v37 = *a1;
  v38 = *(a1 + 4);
  v39 = v35 < *a1;
  if (v35 == *a1)
  {
    v39 = v36 < v38;
  }

  v40 = *(a1 + 60);
  v41 = v40 < v36;
  v12 = v33 == v35;
  v42 = v33 < v35;
  if (v12)
  {
    v42 = v41;
  }

  if (v39)
  {
    if (v42)
    {
      *v76 = *a1;
      *&v76[12] = *(a1 + 12);
      *a1 = *v32;
      *(a1 + 12) = *(a1 + 68);
LABEL_58:
      *v32 = *v76;
      *(a1 + 68) = *&v76[12];
      goto LABEL_59;
    }

    *v82 = *a1;
    *&v82[12] = *(a1 + 12);
    *a1 = *v34;
    *(a1 + 12) = *(a1 + 40);
    *v34 = *v82;
    *(a1 + 40) = *&v82[12];
    v53 = *(a1 + 28);
    v12 = v33 == v53;
    v54 = v33 < v53;
    if (v12)
    {
      v54 = v40 < *(a1 + 32);
    }

    if (v54)
    {
      *v76 = *v34;
      *&v76[12] = *(a1 + 40);
      *v34 = *v32;
      *(a1 + 40) = *(a1 + 68);
      goto LABEL_58;
    }
  }

  else if (v42)
  {
    *v79 = *v34;
    *&v79[12] = *(a1 + 40);
    *v34 = *v32;
    *(a1 + 40) = *(a1 + 68);
    *v32 = *v79;
    *(a1 + 68) = *&v79[12];
    v46 = *(a1 + 28);
    v47 = *(a1 + 32) < v38;
    v12 = v46 == v37;
    v48 = v46 < v37;
    if (v12)
    {
      v48 = v47;
    }

    if (v48)
    {
      *v80 = *a1;
      *&v80[12] = *(a1 + 12);
      *a1 = *v34;
      *(a1 + 12) = *(a1 + 40);
      *v34 = *v80;
      *(a1 + 40) = *&v80[12];
    }
  }

LABEL_59:
  v55 = a1 + 84;
  if (a1 + 84 == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  while (1)
  {
    v59 = *v55;
    v60 = *(v55 + 4);
    v61 = *v32;
    v62 = v60 < *(v32 + 4);
    v12 = *v55 == v61;
    v63 = *v55 < v61;
    if (!v12)
    {
      v62 = v63;
    }

    if (v62)
    {
      *v83 = *(v55 + 5);
      *&v83[15] = *(v55 + 20);
      v64 = v56;
      do
      {
        v65 = a1 + v64;
        *(v65 + 84) = *(a1 + v64 + 56);
        *(v65 + 96) = *(a1 + v64 + 68);
        if (v64 == -56)
        {
          v58 = a1;
          goto LABEL_62;
        }

        v66 = *(v65 + 28);
        v67 = v60 < *(v65 + 32);
        v12 = v59 == v66;
        v68 = v59 < v66;
        if (!v12)
        {
          v67 = v68;
        }

        v64 -= 28;
      }

      while (v67);
      v58 = a1 + v64 + 84;
LABEL_62:
      *v58 = v59;
      *(v58 + 4) = v60;
      *(v58 + 5) = *v83;
      *(v58 + 20) = *&v83[15];
      if (++v57 == 8)
      {
        return v55 + 28 == a2;
      }
    }

    v32 = v55;
    v56 += 28;
    v55 += 28;
    if (v55 == a2)
    {
      return 1;
    }
  }
}