void sub_33ACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v10 - 121) < 0)
  {
    operator delete(*(v10 - 144));
    sub_1959728(&a9);
    sub_33D00C(v9);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a9);
  sub_33D00C(v9);
  _Unwind_Resume(a1);
}

char **sub_33AE88(char **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      v7 = a1[1];
      do
      {
        v9 = *(v7 - 3);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 2) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  v10 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  a1[3] = v10;
  v11 = *(a2 + 32);
  *(a1 + 10) = *(a2 + 40);
  a1[4] = v11;
  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  v12 = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a1 + 3) = v12;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  v13 = (a1 + 9);
  v14 = a1[9];
  if (v14)
  {
    v15 = a1[10];
    v16 = a1[9];
    if (v15 == v14)
    {
LABEL_21:
      a1[10] = v14;
      operator delete(v16);
      *v13 = 0;
      a1[10] = 0;
      a1[11] = 0;
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v15 - 1) < 0)
      {
        operator delete(*(v15 - 3));
        v17 = v15 - 6;
        if (*(v15 - 25) < 0)
        {
LABEL_19:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = v15 - 6;
        if (*(v15 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v15 = v17;
      if (v17 == v14)
      {
        v16 = *v13;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a1 + 24) = *(a2 + 96);
  if (*(a1 + 127) < 0)
  {
    operator delete(a1[13]);
  }

  v18 = *(a2 + 104);
  a1[15] = *(a2 + 120);
  *(a1 + 13) = v18;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(a1[16]);
  }

  v19 = *(a2 + 128);
  a1[18] = *(a2 + 144);
  *(a1 + 8) = v19;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  v20 = *(a2 + 168);
  *(a1 + 19) = *(a2 + 152);
  *(a1 + 42) = v20;
  if (*(a1 + 199) < 0)
  {
    operator delete(a1[22]);
  }

  v21 = *(a2 + 176);
  a1[24] = *(a2 + 192);
  *(a1 + 11) = v21;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  v22 = (a1 + 25);
  v23 = a1[25];
  if (v23)
  {
    v24 = a1[26];
    v25 = a1[25];
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v23);
      v25 = *v22;
    }

    a1[26] = v23;
    operator delete(v25);
    *v22 = 0;
    a1[26] = 0;
    a1[27] = 0;
  }

  *(a1 + 25) = *(a2 + 200);
  a1[27] = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v27 = a1[30];
  *(a1 + 14) = *(a2 + 224);
  if (v27)
  {
    a1[31] = v27;
    operator delete(v27);
    a1[30] = 0;
    a1[31] = 0;
    a1[32] = 0;
  }

  *(a1 + 15) = *(a2 + 240);
  a1[32] = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  v28 = a1[33];
  if (v28)
  {
    v29 = a1[34];
    v30 = a1[33];
    if (v29 != v28)
    {
      do
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = a1[33];
    }

    a1[34] = v28;
    operator delete(v30);
    a1[33] = 0;
    a1[34] = 0;
    a1[35] = 0;
  }

  a1[33] = *(a2 + 264);
  *(a1 + 17) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  if (*(a1 + 311) < 0)
  {
    operator delete(a1[36]);
  }

  v32 = *(a2 + 288);
  a1[38] = *(a2 + 304);
  *(a1 + 18) = v32;
  *(a2 + 311) = 0;
  *(a2 + 288) = 0;
  *(a1 + 312) = *(a2 + 312);
  v33 = *(a2 + 352);
  v34 = *(a2 + 336);
  *(a1 + 20) = *(a2 + 320);
  *(a1 + 21) = v34;
  a1[44] = v33;
  if (a1[45])
  {
    sub_335538(a1 + 45);
    operator delete(a1[45]);
    a1[45] = 0;
    a1[46] = 0;
    a1[47] = 0;
  }

  a1[45] = *(a2 + 360);
  *(a1 + 23) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = 0;
  v36 = *(a2 + 416);
  v35 = *(a2 + 432);
  v37 = *(a2 + 400);
  a1[56] = *(a2 + 448);
  *(a1 + 26) = v36;
  *(a1 + 27) = v35;
  *(a1 + 25) = v37;
  *(a1 + 24) = *(a2 + 384);
  *(a1 + 456) = *(a2 + 456);
  return a1;
}

BOOL sub_33B238(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = &a2[1][*a2];
  v71 = *a2;
  v72 = v5;
  v73 = 0x2C700000000;
  result = sub_32BB58(&v71);
  if (result)
  {
    v7 = (a3 + 664);
    v8 = (a3 + 624);
    do
    {
      if (v73 > 5)
      {
        if (v73 <= 7)
        {
          if (v73 != 6)
          {
            v17 = sub_32BDF0(&v71, v72);
            v18 = v17;
            v19 = v71;
            v71 += v17;
            if (v71 > v72)
            {
              goto LABEL_90;
            }

            if (v17 >= 0x17)
            {
              operator new();
            }

            __dst[23] = v17;
            if (v17)
            {
              memmove(__dst, v19, v17);
              __dst[v18] = 0;
              if ((*(a3 + 647) & 0x80000000) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              __dst[0] = 0;
              if ((*(a3 + 647) & 0x80000000) == 0)
              {
LABEL_28:
                *v8 = *__dst;
                *(a3 + 640) = *&__dst[16];
                goto LABEL_4;
              }
            }

            operator delete(*v8);
            goto LABEL_28;
          }

          v25 = sub_32BDF0(&v71, v72);
          v26 = v71;
          v71 += v25;
          if (v71 > v72)
          {
            goto LABEL_90;
          }

          v55 = v26;
          v56 = v25;
          sub_345034(&v55, __dst);
          v27 = *(a3 + 608);
          if (v27 >= *(a3 + 616))
          {
            v42 = sub_33D7F0((a3 + 600), __dst);
            v43 = *&__dst[8];
            *(a3 + 608) = v42;
            if (v43)
            {
              v44 = *&__dst[16];
              v45 = v43;
              if (*&__dst[16] == v43)
              {
LABEL_86:
                *&__dst[16] = v43;
                operator delete(v45);
                goto LABEL_4;
              }

              while (2)
              {
                if (*(v44 - 1) < 0)
                {
                  operator delete(*(v44 - 3));
                  v46 = v44 - 6;
                  if (*(v44 - 25) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  v46 = v44 - 6;
                  if (*(v44 - 25) < 0)
                  {
LABEL_65:
                    operator delete(*v46);
                  }
                }

                v44 = v46;
                if (v46 == v43)
                {
                  v45 = *&__dst[8];
                  goto LABEL_86;
                }

                continue;
              }
            }
          }

          else
          {
            *v27 = __dst[0];
            *(v27 + 16) = 0;
            *(v27 + 24) = 0;
            *(v27 + 8) = 0;
            *(v27 + 8) = *&__dst[8];
            *(v27 + 24) = __p[0];
            *(a3 + 608) = v27 + 32;
          }
        }

        else
        {
          switch(v73)
          {
            case 8:
              v33 = sub_32BDF0(&v71, v72);
              v34 = v71;
              v71 += v33;
              if (v71 > v72)
              {
                goto LABEL_90;
              }

              *__dst = v34;
              *&__dst[8] = v33;
              *(a3 + 648) = sub_345F8C(__dst);
              *(a3 + 656) = v35;
              break;
            case 9:
              v9 = sub_32BDF0(&v71, v72);
              *(a3 + 512) = sub_3460E0(v9);
              break;
            case 0xA:
              v13 = sub_32BDF0(&v71, v72);
              v14 = v13;
              v15 = v71;
              v71 += v13;
              if (v71 > v72)
              {
                goto LABEL_90;
              }

              if (v13 >= 0x17)
              {
                operator new();
              }

              __dst[23] = v13;
              if (v13)
              {
                memmove(__dst, v15, v13);
                __dst[v14] = 0;
                if ((*(a3 + 687) & 0x80000000) == 0)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                __dst[0] = 0;
                if ((*(a3 + 687) & 0x80000000) == 0)
                {
LABEL_19:
                  *v7 = *__dst;
                  *(a3 + 680) = *&__dst[16];
                  break;
                }
              }

              operator delete(*v7);
              goto LABEL_19;
            default:
              goto LABEL_51;
          }
        }
      }

      else if (v73 <= 2)
      {
        if (v73 == 1)
        {
          v20 = sub_32BDF0(&v71, v72);
          v21 = v71;
          v71 += v20;
          if (v71 > v72)
          {
            goto LABEL_90;
          }

          v55 = v21;
          v56 = v20;
          sub_345228(&v55, *(a1 + 24), __dst);
          v22 = *(a3 + 496);
          if (v22 >= *(a3 + 504))
          {
            sub_33D238((a3 + 488), __dst);
          }

          else
          {
            *(v22 + 16) = 0;
            *(v22 + 24) = 0;
            *v22 = 0;
            *(v22 + 8) = 0;
            *v22 = *__dst;
            *(v22 + 16) = *&__dst[16];
            memset(__dst, 0, sizeof(__dst));
            *(v22 + 32) = 0;
            *(v22 + 40) = 0;
            *(v22 + 24) = *__p;
            __p[0] = 0;
            __p[1] = 0;
            *(v22 + 40) = v59;
            *(v22 + 48) = 0;
            *(v22 + 56) = 0;
            *(v22 + 64) = 0;
            *(v22 + 48) = v60;
            *(v22 + 64) = v61;
            *(v22 + 72) = 0;
            v59 = 0;
            v60 = 0uLL;
            v61 = 0;
            *(v22 + 80) = 0;
            *(v22 + 88) = 0;
            *(v22 + 72) = v62;
            v62 = 0uLL;
            *(v22 + 88) = v63;
            *(v22 + 96) = 0;
            *(v22 + 104) = 0;
            *(v22 + 112) = 0;
            *(v22 + 96) = v64;
            *(v22 + 112) = v65;
            v63 = 0;
            v64 = 0uLL;
            v65 = 0;
            v23 = v67;
            *(v22 + 120) = v66;
            *(v22 + 136) = v23;
            *(v22 + 144) = 0;
            *(v22 + 152) = 0;
            *(v22 + 160) = 0;
            *(v22 + 144) = v68;
            *(v22 + 160) = v69;
            v68 = 0uLL;
            v69 = 0;
            *(v22 + 168) = v70;
            v24 = v22 + 176;
            *(a3 + 496) = v22 + 176;
          }

          *(a3 + 496) = v24;
          sub_33D5A0(__dst);
          sub_32114((a3 + 468), (*(a3 + 496) - 48));
        }

        else
        {
          if (v73 != 2)
          {
LABEL_51:
            sub_32BC3C(&v71);
            goto LABEL_4;
          }

          v16 = sub_32BDF0(&v71, v72);
          *(a3 + 568) = sub_342E9C(v16);
        }
      }

      else if (v73 == 3)
      {
        v28 = sub_32BDF0(&v71, v72);
        v29 = v71;
        v71 += v28;
        if (v71 > v72)
        {
          goto LABEL_90;
        }

        v55 = v29;
        v56 = v28;
        sub_344AB4(&v55, __dst);
        v30 = *(a3 + 584);
        if (v30 >= *(a3 + 592))
        {
          v47 = sub_2B1754((a3 + 576), __dst);
          v48 = SHIBYTE(v59);
          *(a3 + 584) = v47;
          if (v48 < 0)
          {
            operator delete(__p[0]);
            if ((__dst[23] & 0x80000000) == 0)
            {
              goto LABEL_4;
            }

LABEL_68:
            operator delete(*__dst);
            goto LABEL_4;
          }

          if ((__dst[23] & 0x80000000) != 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v31 = *__dst;
          *(v30 + 16) = *&__dst[16];
          *v30 = v31;
          memset(__dst, 0, sizeof(__dst));
          v32 = v59;
          *(v30 + 24) = *__p;
          *(v30 + 40) = v32;
          __p[1] = 0;
          v59 = 0;
          __p[0] = 0;
          *(a3 + 584) = v30 + 48;
          if ((__dst[23] & 0x80000000) != 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        if (v73 == 4)
        {
          v36 = sub_32BDF0(&v71, v72);
          v37 = v71;
          v71 += v36;
          if (v71 > v72)
          {
LABEL_90:
            exception = __cxa_allocate_exception(0x40uLL);
            v54 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
          }

          v55 = v37;
          v56 = v36;
          sub_344D7C(&v55, __dst);
          sub_33B9C8((a3 + 520), __dst);
          v38 = __p[0];
          if (__p[0])
          {
            v39 = __p[1];
            v40 = __p[0];
            if (__p[1] == __p[0])
            {
LABEL_73:
              __p[1] = v38;
              operator delete(v40);
              goto LABEL_74;
            }

            while (2)
            {
              if (*(v39 - 1) < 0)
              {
                operator delete(*(v39 - 3));
                v41 = v39 - 6;
                if (*(v39 - 25) < 0)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v41 = v39 - 6;
                if (*(v39 - 25) < 0)
                {
LABEL_50:
                  operator delete(*v41);
                }
              }

              v39 = v41;
              if (v41 == v38)
              {
                v40 = __p[0];
                goto LABEL_73;
              }

              continue;
            }
          }

LABEL_74:
          v49 = *__dst;
          if (!*__dst)
          {
            goto LABEL_4;
          }

          v50 = *&__dst[8];
          v51 = *__dst;
          if (*&__dst[8] == *__dst)
          {
LABEL_84:
            *&__dst[8] = v49;
            operator delete(v51);
            goto LABEL_4;
          }

          while (2)
          {
            if (*(v50 - 1) < 0)
            {
              operator delete(*(v50 - 3));
              v52 = v50 - 6;
              if (*(v50 - 25) < 0)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v52 = v50 - 6;
              if (*(v50 - 25) < 0)
              {
LABEL_82:
                operator delete(*v52);
              }
            }

            v50 = v52;
            if (v52 == v49)
            {
              v51 = *__dst;
              goto LABEL_84;
            }

            continue;
          }
        }

        v10 = sub_32BDF0(&v71, v72);
        v11 = v71;
        v71 += v10;
        if (v71 > v72)
        {
          goto LABEL_90;
        }

        *__dst = v11;
        *&__dst[8] = v10;
        *(a3 + 688) = sub_345E94(__dst);
        *(a3 + 696) = v12;
      }

LABEL_4:
      result = sub_32BB58(&v71);
    }

    while (result);
  }

  return result;
}

void sub_33B98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_33D5A0(va);
  _Unwind_Resume(a1);
}

void sub_33B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB28(va);
  _Unwind_Resume(a1);
}

void sub_33B9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_33DC00(va);
  _Unwind_Resume(a1);
}

void *sub_33B9C8(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 == v4)
    {
LABEL_11:
      a1[1] = v4;
      operator delete(v6);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
        v7 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
LABEL_9:
          operator delete(*v7);
        }
      }

      else
      {
        v7 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v5 = v7;
      if (v7 == v4)
      {
        v6 = *a1;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = (a1 + 3);
  v9 = a1[3];
  if (v9)
  {
    v10 = a1[4];
    v11 = a1[3];
    if (v10 == v9)
    {
LABEL_22:
      a1[4] = v9;
      operator delete(v11);
      *v8 = 0;
      a1[4] = 0;
      a1[5] = 0;
      goto LABEL_23;
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
LABEL_20:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
          goto LABEL_20;
        }
      }

      v10 = v12;
      if (v12 == v9)
      {
        v11 = *v8;
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

BOOL sub_33BB1C@<W0>(char **a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  v3 = (a2 + 40);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = &a1[1][*a1];
  v26 = *a1;
  v27 = v4;
  v28 = 0x2C700000000;
  while (1)
  {
    result = sub_32BB58(&v26);
    if (!result)
    {
      return result;
    }

    switch(v28)
    {
      case 4:
        v12 = sub_32BDF0(&v26, v27);
        v13 = v12;
        v14 = v26;
        v26 += v12;
        if (v26 > v27)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v23 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v32.__locale_) = v12;
        if (v12)
        {
          memmove(&__dst, v14, v12);
          *(&__dst + v13) = 0;
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          LOBYTE(__dst) = 0;
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_22;
          }
        }

        operator delete(*a2);
LABEL_22:
        *a2 = __dst;
        *(a2 + 16) = v32;
        break;
      case 0x1E:
        v9 = *v26;
        v26 += 8;
        if (v26 > v27)
        {
          v18 = __cxa_allocate_exception(0x40uLL);
          v19 = sub_2D390(v18, "Skipping over bytes exceeded message length.", 0x2CuLL);
        }

        if (v9 < 0x7FFFFFFFFFFFFFFFLL)
        {
          *(a2 + 32) = v9;
        }

        else if (sub_7E7E4(3u))
        {
          sub_19594F8(&__dst);
          sub_4A5C(&__dst, "Encountered congestion zone incident with congestion_zone_id ", 61);
          v10 = std::ostream::operator<<();
          sub_4A5C(v10, " that does not fit into an int64_t.", 35);
          if ((v39 & 0x10) != 0)
          {
            v15 = v38;
            v16 = &v34;
            if (v38 < v35)
            {
              v38 = v35;
              v15 = v35;
              v16 = &v34;
            }
          }

          else
          {
            if ((v39 & 8) == 0)
            {
              v11 = 0;
              v30 = 0;
              goto LABEL_39;
            }

            v15 = v33[2];
            v16 = v33;
          }

          v17 = *v16;
          v11 = v15 - *v16;
          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v11 >= 0x17)
          {
            operator new();
          }

          v30 = v15 - *v16;
          if (v11)
          {
            memmove(&__p, v17, v11);
          }

LABEL_39:
          *(&__p + v11) = 0;
          sub_7E854(&__p, 3u);
          if (v30 < 0)
          {
            operator delete(__p);
          }

          *&__dst = v25;
          *(&__dst + *(v25 - 24)) = v24;
          if (v37 < 0)
          {
            operator delete(v36);
          }

          std::locale::~locale(&v32);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        break;
      case 0x20:
        v6 = sub_32BDF0(&v26, v27);
        v7 = v6;
        v8 = v26;
        v26 += v6;
        if (v26 > v27)
        {
          v20 = __cxa_allocate_exception(0x40uLL);
          v21 = sub_2D390(v20, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        if (v6 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v32.__locale_) = v6;
        if (v6)
        {
          memmove(&__dst, v8, v6);
          *(&__dst + v7) = 0;
          if ((*(a2 + 63) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          LOBYTE(__dst) = 0;
          if ((*(a2 + 63) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        operator delete(v3->__locale_);
LABEL_11:
        *&v3->__locale_ = __dst;
        v3[2].__locale_ = v32.__locale_;
        break;
      default:
        sub_32BC3C(&v26);
        break;
    }
  }
}

void sub_33C034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_1959728(&a22);
  sub_33DC98(v22);
  _Unwind_Resume(a1);
}

void sub_33C110(uint64_t a1@<X0>, char **a2@<X1>, uint64_t *a3@<X8>)
{
  __p = 0uLL;
  v83 = 0;
  v81 = 0;
  v80 = 0;
  memset(v45, 0, sizeof(v45));
  v46 = -1;
  v47 = 0x7FFFFFFF;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 3;
  v55 = 0;
  v56 = 0x7FFFFFFFLL;
  v57 = 7;
  v63 = 0;
  v64 = 0;
  memset(v58, 0, sizeof(v58));
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  v69 = 0x7FFFFFFF;
  v70 = 0x7FFFFFFFFFFFFFFFLL;
  v71 = 0x7FFFFFFFFFFFFFFFLL;
  v72 = 0;
  v73 = 0;
  v74 = 0x7FFFFFFF;
  v75 = 0u;
  v76 = 0u;
  memset_pattern16(v77, &unk_22910C0, 0x30uLL);
  v77[24] = -1;
  v78 = 0;
  v79 = 0;
  v6 = &a2[1][*a2];
  v42 = *a2;
  v43 = v6;
  v44 = 0x2C700000000;
  while (sub_32BB58(&v42))
  {
    switch(v44)
    {
      case 1:
        v15 = sub_32BDF0(&v42, v43);
        v16 = v42;
        v42 += v15;
        if (v42 > v43)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v38 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        *__dst = v16;
        *&__dst[8] = v15;
        sub_3386D0(a1, __dst, v45);
        break;
      case 4:
        v12 = sub_32BDF0(&v42, v43);
        v13 = v12;
        v14 = v42;
        v42 += v12;
        if (v42 > v43)
        {
          v39 = __cxa_allocate_exception(0x40uLL);
          v40 = sub_2D390(v39, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        __dst[23] = v12;
        if (v12)
        {
          memmove(__dst, v14, v12);
          __dst[v13] = 0;
          if ((SHIBYTE(v83) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          __dst[0] = 0;
          if ((SHIBYTE(v83) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        operator delete(__p);
LABEL_19:
        __p = *__dst;
        v83 = *&__dst[16];
        break;
      case 0x23:
        v8 = sub_32BDF0(&v42, v43);
        v9 = v42;
        v10 = &v42[v8];
        v42 = v10;
        if (v10 > v43)
        {
          goto LABEL_88;
        }

        v100 = v9;
        v101 = v10;
        v102 = 0x2C700000000;
        if (sub_32BB58(&v100))
        {
          while (v102 != 5)
          {
            sub_32BC3C(&v100);
            if (!sub_32BB58(&v100))
            {
              goto LABEL_11;
            }
          }

          v17 = sub_32BDF0(&v100, v101);
          v18 = v100;
          v100 += v17;
          if (v100 > v101)
          {
LABEL_88:
            v35 = __cxa_allocate_exception(0x40uLL);
            v36 = sub_2D390(v35, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
          }

          v86 = v18;
          v87 = &v18[v17];
          v88 = 0x2C700000000;
          if (sub_32BB58(&v86))
          {
            while (v88 != 2)
            {
              sub_32BC3C(&v86);
              if (!sub_32BB58(&v86))
              {
                goto LABEL_29;
              }
            }

            v24 = sub_32BDF0(&v86, v87);
            v25 = v86;
            v86 += v24;
            if (v86 > v87)
            {
              goto LABEL_88;
            }

            v80 = v25;
            v81 = v24;
          }

          else
          {
LABEL_29:
            if (sub_7E7E4(3u))
            {
              sub_19594F8(__dst);
              sub_4A5C(__dst, "ParsedVendorData does not contain Patch but IncidentMetaType is GEOMETRY_PATCH.", 79);
              if ((v98 & 0x10) != 0)
              {
                v26 = v97;
                v27 = &v92;
                if (v97 < v93)
                {
                  v97 = v93;
                  v26 = v93;
                  v27 = &v92;
                }

                goto LABEL_49;
              }

              if ((v98 & 8) != 0)
              {
                v26 = v91;
                v27 = v90;
LABEL_49:
                v28 = *v27;
                v19 = v26 - *v27;
                if (v19 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v19 >= 0x17)
                {
                  operator new();
                }

                v85 = v26 - *v27;
                if (v19)
                {
                  memmove(&v84, v28, v19);
                }

                goto LABEL_55;
              }

              v19 = 0;
              v85 = 0;
LABEL_55:
              *(&v84 + v19) = 0;
              sub_7E854(&v84, 3u);
              if ((v85 & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

              v23 = v84;
LABEL_57:
              operator delete(v23);
LABEL_58:
              *__dst = v41;
              *&__dst[*(v41 - 24)] = v7;
              if (SHIBYTE(v96) < 0)
              {
                operator delete(v94);
              }

              std::locale::~locale(&__dst[16]);
              std::ostream::~ostream();
              std::ios::~ios();
            }
          }
        }

        else
        {
LABEL_11:
          if (sub_7E7E4(3u))
          {
            sub_19594F8(__dst);
            sub_4A5C(__dst, "Incident.debug does not contain ParsedVendorData but IncidentMetaType is GEOMETRY_PATCH.", 88);
            if ((v98 & 0x10) != 0)
            {
              v20 = v97;
              v21 = &v92;
              if (v97 < v93)
              {
                v97 = v93;
                v20 = v93;
                v21 = &v92;
              }
            }

            else
            {
              if ((v98 & 8) == 0)
              {
                v11 = 0;
                HIBYTE(v88) = 0;
LABEL_42:
                *(&v86 + v11) = 0;
                sub_7E854(&v86, 3u);
                if ((SHIBYTE(v88) & 0x80000000) == 0)
                {
                  goto LABEL_58;
                }

                v23 = v86;
                goto LABEL_57;
              }

              v20 = v91;
              v21 = v90;
            }

            v22 = *v21;
            v11 = v20 - *v21;
            if (v11 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v11 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v88) = v20 - *v21;
            if (v11)
            {
              memmove(&v86, v22, v11);
            }

            goto LABEL_42;
          }
        }

        break;
      default:
        sub_32BC3C(&v42);
        break;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v29 = HIBYTE(v83);
  if (v83 < 0)
  {
    v29 = *(&__p + 1);
  }

  if (v29)
  {
    v30 = v80 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    sub_32C798(&v80, &__p, __dst);
    if (*a3)
    {
      sub_33DCF4(a3);
      operator delete(*a3);
    }

    v31 = *__dst;
    *a3 = *__dst;
    v32 = *&__dst[8];
    *(a3 + 1) = *&__dst[8];
    if (v31 != v32)
    {
      v100 = 0;
      v101 = 0;
      v102 = 0;
      sub_38F46C(v45, __dst);
      sub_33CA70(__dst, &v100);
      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (*&__dst[16])
      {
        v90[0] = *&__dst[16];
        operator delete(*&__dst[16]);
      }

      sub_3120CC(&v100);
      v33 = *a3;
      v34 = a3[1];
      if (*a3 != v34)
      {
        do
        {
          if ((v33 + 288) != &v100)
          {
            sub_30945C((v33 + 288), v100, v101, (v101 - v100) >> 3);
          }

          v33 += 312;
        }

        while (v33 != v34);
      }

      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }
    }
  }

  sub_2C0F28(v45);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p);
  }
}

void sub_33C99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1959728(&STACK[0x260]);
  sub_2C0F28(va);
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_33CA70(uint64_t a1, uint64_t a2)
{
  v19 = *a1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *(a1 + 64);
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a1 + 104);
  v8 = *(a1 + 112);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = sub_3404FC(&v19, &v12, a2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v10;
}

void sub_33CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_33CCC0(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t *sub_33CCEC(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(v3 - v2);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_340FF4(v2, v3, &v18, v5, 1);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_22:
    if (v8 != v7)
    {
      a1[1] = v8;
    }
  }

  else
  {
    v9 = (v8 + 1);
    while (v9 != v7)
    {
      v10 = *(v9 + 1);
      v11 = *v9;
      v12 = *(v9 - 8);
      v13 = *(v9 - 1);
      v9 += 8;
      if (v12 == v11 && v13 == v10)
      {
        v15 = v9 - 16;
        if (v9 != v7)
        {
          do
          {
            v16 = *v9;
            if (v11 != v16 || *(v15 + 1) != HIDWORD(*v9))
            {
              *(v15 + 1) = *v9;
              v15 += 8;
            }

            v9 += 8;
            v11 = v16;
          }

          while (v9 != v7);
          v7 = a1[1];
        }

        v8 = (v15 + 8);
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_33CE04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_33B9C8((a1 + 8), a2 + 8);
  v4 = (a1 + 64);
  v5 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  if (v5)
  {
    v6 = *(a1 + 72);
    v7 = v5;
    if (v6 == v5)
    {
LABEL_11:
      *(a1 + 72) = v5;
      operator delete(v7);
      *v4 = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
        v8 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
LABEL_9:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v6 = v8;
      if (v8 == v5)
      {
        v7 = *v4;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v9 = (a1 + 88);
  v10 = *(a1 + 88);
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = *(a1 + 96);
  v12 = *(a1 + 88);
  if (v11 != v10)
  {
    while (1)
    {
      v14 = *(v11 - 24);
      if (!v14)
      {
        goto LABEL_17;
      }

      v15 = *(v11 - 16);
      v13 = *(v11 - 24);
      if (v15 != v14)
      {
        break;
      }

LABEL_16:
      *(v11 - 16) = v14;
      operator delete(v13);
LABEL_17:
      v11 -= 32;
      if (v11 == v10)
      {
        v12 = *v9;
        goto LABEL_28;
      }
    }

    while (1)
    {
      if (*(v15 - 1) < 0)
      {
        operator delete(*(v15 - 3));
        v16 = v15 - 6;
        if (*(v15 - 25) < 0)
        {
LABEL_26:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = v15 - 6;
        if (*(v15 - 25) < 0)
        {
          goto LABEL_26;
        }
      }

      v15 = v16;
      if (v16 == v14)
      {
        v13 = *(v11 - 24);
        goto LABEL_16;
      }
    }
  }

LABEL_28:
  *(a1 + 96) = v10;
  operator delete(v12);
  *v9 = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
LABEL_29:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v17 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v17;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  *(a1 + 136) = *(a2 + 136);
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v18 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v18;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t sub_33D00C(uint64_t a1)
{
  sub_33D080(a1 + 512);
  v2 = *(a1 + 488);
  if (v2)
  {
    v3 = *(a1 + 496);
    v4 = *(a1 + 488);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_33D5A0(v3 - 176);
      }

      while (v3 != v2);
      v4 = *(a1 + 488);
    }

    *(a1 + 496) = v2;
    operator delete(v4);
  }

  return sub_2C0F28(a1);
}

uint64_t sub_33D080(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      sub_33D164((a1 + 88));
      v2 = *(a1 + 64);
      if (!v2)
      {
        goto LABEL_17;
      }

LABEL_7:
      v3 = *(a1 + 72);
      v4 = v2;
      if (v3 == v2)
      {
LABEL_16:
        *(a1 + 72) = v2;
        operator delete(v4);
        goto LABEL_17;
      }

      while (1)
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
          v5 = v3 - 6;
          if (*(v3 - 25) < 0)
          {
LABEL_14:
            operator delete(*v5);
          }
        }

        else
        {
          v5 = v3 - 6;
          if (*(v3 - 25) < 0)
          {
            goto LABEL_14;
          }
        }

        v3 = v5;
        if (v5 == v2)
        {
          v4 = *(a1 + 64);
          goto LABEL_16;
        }
      }
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  sub_33D164((a1 + 88));
  v2 = *(a1 + 64);
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_17:
  sub_33D6EC((a1 + 8));
  return a1;
}

void **sub_33D164(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v6 = *(v3 - 3);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = *(v3 - 2);
      v5 = *(v3 - 3);
      if (v7 != v6)
      {
        break;
      }

LABEL_5:
      *(v3 - 2) = v6;
      operator delete(v5);
LABEL_6:
      v3 -= 32;
      if (v3 == v2)
      {
        v4 = *a1;
LABEL_17:
        a1[1] = v2;
        operator delete(v4);
        return a1;
      }
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v8 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
LABEL_15:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
          goto LABEL_15;
        }
      }

      v7 = v8;
      if (v8 == v6)
      {
        v5 = *(v3 - 3);
        goto LABEL_5;
      }
    }
  }

  return a1;
}

double sub_33D238(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((a1[1] - *a1) >> 4);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v12 + 24) = *(a2 + 24);
  *(v12 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v12 + 48) = *(a2 + 48);
  *(v12 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v12 + 72) = *(a2 + 72);
  *(v12 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v12 + 96) = *(a2 + 96);
  *(v12 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v6 = *(a2 + 120);
  *(v12 + 136) = *(a2 + 136);
  *(v12 + 120) = v6;
  *(v12 + 144) = *(a2 + 144);
  *(v12 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(v12 + 168) = *(a2 + 168);
  v7 = a1[1];
  v8 = 176 * v2 + *a1 - v7;
  sub_33D420(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = (176 * v2 + 176);
  *(a1 + 1) = v10;
  if (v9)
  {
    operator delete(v9);
    *&v10 = 176 * v2 + 176;
  }

  return *&v10;
}

void sub_33D40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_33D54C(va);
  _Unwind_Resume(a1);
}

void sub_33D420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v7 = *(v6 + 136);
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = v7;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(a4 + 168) = *(v6 + 168);
      v6 += 176;
      a4 += 176;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_33D5A0(v5) + 176;
    }
  }
}

uint64_t sub_33D54C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_33D5A0(i - 176);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_33D5A0(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  sub_33D6EC((a1 + 72));
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 48);
    if (v4 == v3)
    {
LABEL_13:
      *(a1 + 56) = v3;
      operator delete(v5);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        v6 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
LABEL_11:
          operator delete(*v6);
        }
      }

      else
      {
        v6 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          goto LABEL_11;
        }
      }

      v4 = v6;
      if (v6 == v3)
      {
        v5 = *(a1 + 48);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = *(a1 + 8);
    v10 = *a1;
    if (v9 != v8)
    {
      v11 = *(a1 + 8);
      do
      {
        v14 = *(v11 - 3);
        v11 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v9 - 2);
          v12 = v13;
          if (v15 != v13)
          {
            v16 = *(v9 - 2);
            do
            {
              v18 = *(v16 - 3);
              v16 -= 24;
              v17 = v18;
              if (v18)
              {
                *(v15 - 2) = v17;
                operator delete(v17);
              }

              v15 = v16;
            }

            while (v16 != v13);
            v12 = *v11;
          }

          *(v9 - 2) = v13;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *a1;
    }

    *(a1 + 8) = v8;
    operator delete(v10);
  }

  return a1;
}

void ***sub_33D6EC(void ***a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 == v2)
    {
LABEL_11:
      a1[4] = v2;
      operator delete(v4);
      goto LABEL_12;
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
        v4 = a1[3];
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 == v6)
    {
LABEL_22:
      a1[1] = v6;
      operator delete(v8);
      return a1;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
LABEL_20:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 6;
        if (*(v7 - 25) < 0)
        {
          goto LABEL_20;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = *a1;
        goto LABEL_22;
      }
    }
  }

  return a1;
}

uint64_t sub_33D7F0(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  __p = 0;
  v18 = v7;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v19 = 32 * v2 + 32;
  v20 = 0;
  sub_33D9A4(a1, &__p);
  v8 = a1[1];
  v9 = v18;
  v10 = v19;
  if (v19 != v18)
  {
    while (1)
    {
      while (1)
      {
        v13 = v10 - 32;
        v19 = v10 - 32;
        v14 = *(v10 - 24);
        if (v14)
        {
          break;
        }

        v10 -= 32;
        if (v13 == v9)
        {
          goto LABEL_11;
        }
      }

      v15 = *(v10 - 16);
      v12 = *(v10 - 24);
      if (v15 != v14)
      {
        break;
      }

LABEL_15:
      *(v10 - 16) = v14;
      operator delete(v12);
      v10 = v19;
      if (v19 == v9)
      {
        goto LABEL_11;
      }
    }

    while (1)
    {
      if (*(v15 - 1) < 0)
      {
        operator delete(*(v15 - 3));
        v16 = v15 - 6;
        if (*(v15 - 25) < 0)
        {
LABEL_26:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = v15 - 6;
        if (*(v15 - 25) < 0)
        {
          goto LABEL_26;
        }
      }

      v15 = v16;
      if (v16 == v14)
      {
        v12 = *(v10 - 24);
        goto LABEL_15;
      }
    }
  }

LABEL_11:
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_33D990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_33DAEC(va);
  _Unwind_Resume(a1);
}

void sub_33D9A4(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = *v7;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v8 + 8) = *(v7 + 8);
      *(v8 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v7 += 32;
      v8 += 32;
    }

    while (v7 != v4);
    while (1)
    {
      v10 = *(v5 + 8);
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = *(v5 + 16);
      v9 = *(v5 + 8);
      if (v11 != v10)
      {
        break;
      }

LABEL_6:
      *(v5 + 16) = v10;
      operator delete(v9);
LABEL_7:
      v5 += 32;
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 3));
        v12 = v11 - 6;
        if (*(v11 - 25) < 0)
        {
LABEL_16:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v11 - 6;
        if (*(v11 - 25) < 0)
        {
          goto LABEL_16;
        }
      }

      v11 = v12;
      if (v12 == v10)
      {
        v9 = *(v5 + 8);
        goto LABEL_6;
      }
    }
  }

LABEL_17:
  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

void **sub_33DAEC(void **a1)
{
  sub_33DB20(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_33DB20(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v1)
  {
    return;
  }

LABEL_4:
  while (2)
  {
    while (1)
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      v5 = *(v2 - 24);
      if (v5)
      {
        break;
      }

      v2 -= 32;
      if (v4 == v1)
      {
        return;
      }
    }

    v6 = *(v2 - 16);
    v7 = *(v2 - 24);
    if (v6 != v5)
    {
      while (1)
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 3));
          v8 = v6 - 6;
          if (*(v6 - 25) < 0)
          {
LABEL_13:
            operator delete(*v8);
          }
        }

        else
        {
          v8 = v6 - 6;
          if (*(v6 - 25) < 0)
          {
            goto LABEL_13;
          }
        }

        v6 = v8;
        if (v8 == v5)
        {
          v9 = *(v2 - 24);
          *(v2 - 16) = v5;
          operator delete(v9);
          v2 = *(a1 + 16);
          if (v2 == v1)
          {
            return;
          }

          goto LABEL_4;
        }
      }
    }

    *(v2 - 16) = v5;
    operator delete(v7);
    v2 = *(a1 + 16);
    if (v2 != v1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_33DC00(uint64_t a1)
{
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

uint64_t sub_33DC98(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_33DCF4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 144;
    do
    {
      v6 = *(v4 + 120);
      if (v6)
      {
        *(v4 + 128) = v6;
        operator delete(v6);
      }

      v7 = *(v4 + 96);
      if (v7)
      {
        *(v4 + 104) = v7;
        operator delete(v7);
      }

      v8 = *(v4 + 72);
      if (v8)
      {
        *(v4 + 80) = v8;
        operator delete(v8);
      }

      v9 = *(v4 + 48);
      if (v9)
      {
        *(v4 + 56) = v9;
        operator delete(v9);
      }

      v10 = *(v4 + 24);
      if (v10)
      {
        *(v4 + 32) = v10;
        operator delete(v10);
      }

      v11 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v11;
        operator delete(v11);
      }

      v12 = *(v4 - 24);
      if (v12)
      {
        *(v4 - 16) = v12;
        operator delete(v12);
      }

      v13 = *(v4 - 48);
      if (v13)
      {
        *(v4 - 40) = v13;
        operator delete(v13);
      }

      v14 = *(v4 - 72);
      if (v14)
      {
        *(v4 - 64) = v14;
        operator delete(v14);
      }

      v15 = *(v4 - 96);
      if (v15)
      {
        *(v4 - 88) = v15;
        operator delete(v15);
      }

      v16 = *(v4 - 120);
      if (v16)
      {
        *(v4 - 112) = v16;
        operator delete(v16);
      }

      v17 = *(v4 - 144);
      if (v17)
      {
        *(v4 - 136) = v17;
        operator delete(v17);
      }

      if (*(v4 - 145) < 0)
      {
        operator delete(*(v4 - 168));
      }

      v5 = v4 - 168;
      v4 -= 312;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

unint64_t sub_33DE18(uint64_t a1, void *a2, char a3)
{
  sub_2B7A20(a1, *a2 & 0xFFFFFFFFFFFFFFLL, &v46);
  v4 = __p[0];
  if (__p[0] == __p[1])
  {
    v10 = 0xFFFFFFFF00000000;
    v11 = 0xFFFFFFFFLL;
    if (!__p[0])
    {
      return v10 | v11;
    }

    goto LABEL_44;
  }

  if (a3)
  {
    if (!v48)
    {
      v18 = *(__p[1] - 1);
      v19 = sub_2B4D24(v46, v18, 0);
      v20 = &v19[*&v19[-*v19 + 4]];
      v21 = &v20[4 * HIDWORD(v18) + *v20];
      v22 = (v21 + 4 + *(v21 + 4));
      v23 = (v22 + *(v22 - *v22 + 6));
      LODWORD(v23) = *(v23 + *v23) - 1;
      v49 = v46;
      v50 = __p;
      v51 = 0u;
      v52[0] = 0u;
      LODWORD(v52[1]) = ((__p[1] - __p[0]) >> 3) - 1;
      DWORD1(v52[1]) = v23;
      BYTE8(v52[1]) = 0;
      sub_318EF0(&v49);
      goto LABEL_43;
    }

    v49 = v46;
    v50 = __p;
    v51 = 0u;
    memset(v52, 0, 24);
    BYTE8(v52[1]) = 1;
    v5 = *__p[0];
    DWORD2(v52[0]) = v5;
    v6 = sub_2B4D24(v46, v5, 0);
    v7 = &v6[-*v6];
    v8 = *v7;
    if (v8 < 7)
    {
      HIDWORD(v52[0]) = 0;
      if (v8 < 5)
      {
        v29 = 0;
LABEL_24:
        v31 = (v29 + 4 * HIDWORD(v5) + 4 + *(v29 + 4 * HIDWORD(v5) + 4));
        *&v51 = v31;
        v32 = (v31 - *v31);
        v33 = *v32;
        if (v33 <= 6)
        {
          v36 = 0;
          *(&v51 + 1) = 0;
        }

        else
        {
          v34 = v32[3];
          if (v32[3])
          {
            v34 += v31 + *(v31 + v34);
          }

          *(&v51 + 1) = v34;
          if (v33 >= 0xB && (v35 = v32[5]) != 0)
          {
            v36 = v31 + v35 + *(v31 + v35);
          }

          else
          {
            v36 = 0;
          }
        }

        *&v52[0] = v36;
        goto LABEL_43;
      }
    }

    else
    {
      v9 = *(v7 + 3);
      if (*(v7 + 3))
      {
        LODWORD(v9) = *&v6[v9];
      }

      HIDWORD(v52[0]) = v9;
    }

    v29 = *(v7 + 2);
    if (v29)
    {
      v29 += &v6[*&v6[v29]];
    }

    goto LABEL_24;
  }

  if (v48)
  {
    v12 = *(__p[1] - 1);
    v13 = sub_2B4D24(v46, v12, 0);
    v14 = &v13[*&v13[-*v13 + 4]];
    v15 = &v14[4 * HIDWORD(v12) + *v14];
    v16 = (v15 + 4 + *(v15 + 4));
    v17 = (v16 + *(v16 - *v16 + 6));
    LODWORD(v17) = *(v17 + *v17) - 1;
    v49 = v46;
    v50 = __p;
    v51 = 0u;
    v52[0] = 0u;
    LODWORD(v52[1]) = ((__p[1] - __p[0]) >> 3) - 1;
    DWORD1(v52[1]) = v17;
    BYTE8(v52[1]) = 1;
    sub_318EF0(&v49);
    goto LABEL_43;
  }

  v49 = v46;
  v50 = __p;
  v51 = 0u;
  memset(v52, 0, 25);
  v24 = *__p[0];
  DWORD2(v52[0]) = v24;
  v25 = sub_2B4D24(v46, v24, 0);
  v26 = &v25[-*v25];
  v27 = *v26;
  if (v27 >= 7)
  {
    v28 = *(v26 + 3);
    if (*(v26 + 3))
    {
      LODWORD(v28) = *&v25[v28];
    }

    HIDWORD(v52[0]) = v28;
    goto LABEL_21;
  }

  HIDWORD(v52[0]) = 0;
  if (v27 >= 5)
  {
LABEL_21:
    v30 = *(v26 + 2);
    if (v30)
    {
      v30 += &v25[*&v25[v30]];
    }

    goto LABEL_34;
  }

  v30 = 0;
LABEL_34:
  v37 = (v30 + 4 * HIDWORD(v24) + 4 + *(v30 + 4 * HIDWORD(v24) + 4));
  *&v51 = v37;
  v38 = (v37 - *v37);
  v39 = *v38;
  if (v39 <= 6)
  {
    v42 = 0;
    *(&v51 + 1) = 0;
  }

  else
  {
    v40 = v38[3];
    if (v38[3])
    {
      v40 += v37 + *(v37 + v40);
    }

    *(&v51 + 1) = v40;
    if (v39 >= 0xB && (v41 = v38[5]) != 0)
    {
      v42 = v37 + v41 + *(v37 + v41);
    }

    else
    {
      v42 = 0;
    }
  }

  *&v52[0] = v42;
LABEL_43:
  v43 = sub_318DA8(&v49);
  v44 = v43;
  v10 = v43 & 0xFFFFFFFF00000000;
  v4 = __p[0];
  v11 = v44;
  if (__p[0])
  {
LABEL_44:
    __p[1] = v4;
    operator delete(v4);
  }

  return v10 | v11;
}

void sub_33E1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_33E204(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = v7;
LABEL_3:
  v9 = 1 - a4;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = 0x2E8BA2E8BA2E8BA3 * (v11 >> 4);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          return sub_33E6DC(v7, v7 + 176, a2 - 176);
        case 4uLL:
          return sub_33EB00(v7, v7 + 176, v7 + 352, a2 - 176);
        case 5uLL:
          return sub_33EDB4(v7, v7 + 176, v7 + 352, v7 + 528, a2 - 176);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        result = sub_38FD24(a2 - 176, v7);
        if (result)
        {
          v26 = *v7;
          v27 = *(v7 + 16);
          *v7 = 0;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          v28 = *(v7 + 24);
          v29 = *(v7 + 40);
          *(v7 + 24) = 0;
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          v30 = *(v7 + 48);
          v31 = *(v7 + 64);
          *(v7 + 48) = 0;
          *(v7 + 56) = 0;
          *(v7 + 64) = 0;
          v32 = *(v7 + 72);
          v33 = *(v7 + 88);
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 88) = 0;
          v34 = *(v7 + 96);
          v35 = *(v7 + 112);
          *(v7 + 96) = 0;
          *(v7 + 104) = 0;
          *(v7 + 112) = 0;
          v19 = *(v7 + 120);
          v37 = *(v7 + 136);
          v36 = v19;
          v38 = *(v7 + 144);
          v39 = *(v7 + 160);
          *(v7 + 144) = 0;
          *(v7 + 152) = 0;
          *(v7 + 160) = 0;
          v40 = *(v7 + 168);
          sub_33FD90(v7, a2 - 176);
          sub_33FD90(a2 - 176, &v26);
          return sub_33D5A0(&v26);
        }

        return result;
      }
    }

    if (v11 <= 4223)
    {
      if (a5)
      {
        return sub_33F144(v7, a2);
      }

      else
      {
        return sub_33F2D8(v7, a2);
      }
    }

    if (v9 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = v7 + 176 * (v12 >> 1);
    if (v11 < 0x5801)
    {
      sub_33E6DC(v14, v7, a2 - 176);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_33E6DC(v7, v14, a2 - 176);
      sub_33E6DC(v7 + 176, 176 * v13 + v7 - 176, a2 - 352);
      sub_33E6DC(v7 + 352, v7 + 176 + 176 * v13, a2 - 528);
      sub_33E6DC(176 * v13 + v7 - 176, v14, v7 + 176 + 176 * v13);
      v26 = *v7;
      v27 = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v28 = *(v7 + 24);
      v29 = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v30 = *(v7 + 48);
      v31 = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v32 = *(v7 + 72);
      v33 = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v34 = *(v7 + 96);
      v35 = *(v7 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      v15 = *(v7 + 120);
      v37 = *(v7 + 136);
      v36 = v15;
      v38 = *(v7 + 144);
      v39 = *(v7 + 160);
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      v40 = *(v7 + 168);
      sub_33FD90(v7, v14);
      sub_33FD90(v14, &v26);
      sub_33D5A0(&v26);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    if (!sub_38FD24(v7 - 176, v7))
    {
      result = sub_33F43C(v7, a2);
      v8 = result;
      goto LABEL_23;
    }

LABEL_18:
    v16 = sub_33F734(v7, a2);
    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }

    v18 = sub_33FA30(v7, v16);
    v8 = v16 + 176;
    result = sub_33FA30(v16 + 176, a2);
    if (result)
    {
      a4 = -v10;
      a2 = v16;
      if (v18)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v18)
    {
LABEL_21:
      result = sub_33E204(v7, v16, a3, -v10, a5 & 1);
      v8 = v16 + 176;
LABEL_23:
      a5 = 0;
      a4 = -v10;
      goto LABEL_3;
    }
  }

  if (v7 != a2)
  {
    v20 = (v12 - 2) >> 1;
    v21 = v20 + 1;
    v22 = v7 + 176 * v20;
    do
    {
      sub_33FF90(v7, a3, 0x2E8BA2E8BA2E8BA3 * (v11 >> 4), v22);
      v22 -= 176;
      --v21;
    }

    while (v21);
    v23 = 0x2E8BA2E8BA2E8BA3 * (v11 >> 4);
    do
    {
      result = sub_340194(v7, a2, a3, v23);
      a2 -= 176;
    }

    while (v23-- > 2);
  }

  return result;
}

BOOL sub_33E6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_38FD24(a2, a1);
  result = sub_38FD24(a3, a2);
  if (v6)
  {
    if (result)
    {
      v15 = *a1;
      v16 = *(a1 + 16);
      *a1 = 0;
      *(a1 + 8) = 0;
      v17 = *(a1 + 24);
      v18 = *(a1 + 40);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v19 = *(a1 + 48);
      v20 = *(a1 + 64);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      v21 = *(a1 + 72);
      v22 = *(a1 + 88);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      v23 = *(a1 + 96);
      v24 = *(a1 + 112);
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      v8 = *(a1 + 120);
      v26 = *(a1 + 136);
      v25 = v8;
      v27 = *(a1 + 144);
      v28 = *(a1 + 160);
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v29 = *(a1 + 168);
      v9 = a1;
LABEL_9:
      sub_33FD90(v9, a3);
      v12 = a3;
      goto LABEL_10;
    }

    v15 = *a1;
    v16 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v21 = *(a1 + 72);
    v22 = *(a1 + 88);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    v23 = *(a1 + 96);
    v24 = *(a1 + 112);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    v13 = *(a1 + 120);
    v26 = *(a1 + 136);
    v25 = v13;
    v27 = *(a1 + 144);
    v28 = *(a1 + 160);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v29 = *(a1 + 168);
    sub_33FD90(a1, a2);
    sub_33FD90(a2, &v15);
    sub_33D5A0(&v15);
    if (sub_38FD24(a3, a2))
    {
      v15 = *a2;
      v16 = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      v17 = *(a2 + 24);
      v18 = *(a2 + 40);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v19 = *(a2 + 48);
      v20 = *(a2 + 64);
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      v21 = *(a2 + 72);
      v22 = *(a2 + 88);
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v23 = *(a2 + 96);
      v24 = *(a2 + 112);
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      v14 = *(a2 + 120);
      v26 = *(a2 + 136);
      v25 = v14;
      v27 = *(a2 + 144);
      v28 = *(a2 + 160);
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      v29 = *(a2 + 168);
      v9 = a2;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v15 = *a2;
    v16 = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v19 = *(a2 + 48);
    v20 = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v21 = *(a2 + 72);
    v22 = *(a2 + 88);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v23 = *(a2 + 96);
    v24 = *(a2 + 112);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    v10 = *(a2 + 120);
    v26 = *(a2 + 136);
    v25 = v10;
    v27 = *(a2 + 144);
    v28 = *(a2 + 160);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    v29 = *(a2 + 168);
    sub_33FD90(a2, a3);
    sub_33FD90(a3, &v15);
    sub_33D5A0(&v15);
    if (sub_38FD24(a2, a1))
    {
      v15 = *a1;
      v16 = *(a1 + 16);
      *a1 = 0;
      *(a1 + 8) = 0;
      v17 = *(a1 + 24);
      v18 = *(a1 + 40);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v19 = *(a1 + 48);
      v20 = *(a1 + 64);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      v21 = *(a1 + 72);
      v22 = *(a1 + 88);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      v23 = *(a1 + 96);
      v24 = *(a1 + 112);
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      v11 = *(a1 + 120);
      v26 = *(a1 + 136);
      v25 = v11;
      v27 = *(a1 + 144);
      v28 = *(a1 + 160);
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v29 = *(a1 + 168);
      sub_33FD90(a1, a2);
      v12 = a2;
LABEL_10:
      sub_33FD90(v12, &v15);
      sub_33D5A0(&v15);
    }
  }

  return 1;
}

uint64_t sub_33EB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_33E6DC(a1, a2, a3);
  result = sub_38FD24(a4, a3);
  if (result)
  {
    v12 = *a3;
    v13 = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    v14 = *(a3 + 24);
    v15 = *(a3 + 40);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    v16 = *(a3 + 48);
    v17 = *(a3 + 64);
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    v18 = *(a3 + 72);
    v19 = *(a3 + 88);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    v20 = *(a3 + 96);
    v21 = *(a3 + 112);
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    v9 = *(a3 + 120);
    v23 = *(a3 + 136);
    v22 = v9;
    v24 = *(a3 + 144);
    v25 = *(a3 + 160);
    *(a3 + 144) = 0;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0;
    v26 = *(a3 + 168);
    sub_33FD90(a3, a4);
    sub_33FD90(a4, &v12);
    sub_33D5A0(&v12);
    result = sub_38FD24(a3, a2);
    if (result)
    {
      v12 = *a2;
      v13 = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      v14 = *(a2 + 24);
      v15 = *(a2 + 40);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v16 = *(a2 + 48);
      v17 = *(a2 + 64);
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      v18 = *(a2 + 72);
      v19 = *(a2 + 88);
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v20 = *(a2 + 96);
      v21 = *(a2 + 112);
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      v10 = *(a2 + 120);
      v23 = *(a2 + 136);
      v22 = v10;
      v24 = *(a2 + 144);
      v25 = *(a2 + 160);
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      v26 = *(a2 + 168);
      sub_33FD90(a2, a3);
      sub_33FD90(a3, &v12);
      sub_33D5A0(&v12);
      result = sub_38FD24(a2, a1);
      if (result)
      {
        v12 = *a1;
        v13 = *(a1 + 16);
        *a1 = 0;
        *(a1 + 8) = 0;
        v14 = *(a1 + 24);
        v15 = *(a1 + 40);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v16 = *(a1 + 48);
        v17 = *(a1 + 64);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v18 = *(a1 + 72);
        v19 = *(a1 + 88);
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        v20 = *(a1 + 96);
        v21 = *(a1 + 112);
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        v11 = *(a1 + 120);
        v23 = *(a1 + 136);
        v22 = v11;
        v24 = *(a1 + 144);
        v25 = *(a1 + 160);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        v26 = *(a1 + 168);
        sub_33FD90(a1, a2);
        sub_33FD90(a2, &v12);
        return sub_33D5A0(&v12);
      }
    }
  }

  return result;
}

uint64_t sub_33EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_33EB00(a1, a2, a3, a4);
  result = sub_38FD24(a5, a4);
  if (result)
  {
    v15 = *a4;
    v16 = *(a4 + 16);
    *a4 = 0;
    *(a4 + 8) = 0;
    v17 = *(a4 + 24);
    v18 = *(a4 + 40);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    v19 = *(a4 + 48);
    v20 = *(a4 + 64);
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    v21 = *(a4 + 72);
    v22 = *(a4 + 88);
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    v23 = *(a4 + 96);
    v24 = *(a4 + 112);
    *(a4 + 96) = 0;
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
    v11 = *(a4 + 120);
    v26 = *(a4 + 136);
    v25 = v11;
    v27 = *(a4 + 144);
    v28 = *(a4 + 160);
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 160) = 0;
    v29 = *(a4 + 168);
    sub_33FD90(a4, a5);
    sub_33FD90(a5, &v15);
    sub_33D5A0(&v15);
    result = sub_38FD24(a4, a3);
    if (result)
    {
      v15 = *a3;
      v16 = *(a3 + 16);
      *a3 = 0;
      *(a3 + 8) = 0;
      v17 = *(a3 + 24);
      v18 = *(a3 + 40);
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      v19 = *(a3 + 48);
      v20 = *(a3 + 64);
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      v21 = *(a3 + 72);
      v22 = *(a3 + 88);
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      v23 = *(a3 + 96);
      v24 = *(a3 + 112);
      *(a3 + 96) = 0;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      v12 = *(a3 + 120);
      v26 = *(a3 + 136);
      v25 = v12;
      v27 = *(a3 + 144);
      v28 = *(a3 + 160);
      *(a3 + 144) = 0;
      *(a3 + 152) = 0;
      *(a3 + 160) = 0;
      v29 = *(a3 + 168);
      sub_33FD90(a3, a4);
      sub_33FD90(a4, &v15);
      sub_33D5A0(&v15);
      result = sub_38FD24(a3, a2);
      if (result)
      {
        v15 = *a2;
        v16 = *(a2 + 16);
        *a2 = 0;
        *(a2 + 8) = 0;
        v17 = *(a2 + 24);
        v18 = *(a2 + 40);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        v19 = *(a2 + 48);
        v20 = *(a2 + 64);
        *(a2 + 48) = 0;
        *(a2 + 56) = 0;
        v21 = *(a2 + 72);
        v22 = *(a2 + 88);
        *(a2 + 64) = 0;
        *(a2 + 72) = 0;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        v23 = *(a2 + 96);
        v24 = *(a2 + 112);
        *(a2 + 96) = 0;
        *(a2 + 104) = 0;
        *(a2 + 112) = 0;
        v13 = *(a2 + 120);
        v26 = *(a2 + 136);
        v25 = v13;
        v27 = *(a2 + 144);
        v28 = *(a2 + 160);
        *(a2 + 144) = 0;
        *(a2 + 152) = 0;
        *(a2 + 160) = 0;
        v29 = *(a2 + 168);
        sub_33FD90(a2, a3);
        sub_33FD90(a3, &v15);
        sub_33D5A0(&v15);
        result = sub_38FD24(a2, a1);
        if (result)
        {
          v15 = *a1;
          v16 = *(a1 + 16);
          *a1 = 0;
          *(a1 + 8) = 0;
          v17 = *(a1 + 24);
          v18 = *(a1 + 40);
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          v19 = *(a1 + 48);
          v20 = *(a1 + 64);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v21 = *(a1 + 72);
          v22 = *(a1 + 88);
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          v23 = *(a1 + 96);
          v24 = *(a1 + 112);
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          v14 = *(a1 + 120);
          v26 = *(a1 + 136);
          v25 = v14;
          v27 = *(a1 + 144);
          v28 = *(a1 + 160);
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          v29 = *(a1 + 168);
          sub_33FD90(a1, a2);
          sub_33FD90(a2, &v15);
          return sub_33D5A0(&v15);
        }
      }
    }
  }

  return result;
}

uint64_t sub_33F144(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 176;
    if (result + 176 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v4;
        result = sub_38FD24(v4, v6);
        if (result)
        {
          v12 = *v8;
          v13 = *(v6 + 192);
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *v8 = 0;
          v14 = *(v6 + 200);
          v15 = *(v6 + 216);
          *(v6 + 200) = 0;
          *(v6 + 208) = 0;
          v16 = *(v6 + 224);
          v17 = *(v6 + 240);
          *(v6 + 216) = 0;
          *(v6 + 224) = 0;
          *(v6 + 232) = 0;
          *(v6 + 240) = 0;
          v18 = *(v6 + 248);
          v19 = *(v6 + 264);
          *(v6 + 248) = 0;
          *(v6 + 256) = 0;
          v20 = *(v6 + 272);
          v21 = *(v6 + 288);
          *(v6 + 264) = 0;
          *(v6 + 272) = 0;
          *(v6 + 280) = 0;
          *(v6 + 288) = 0;
          v9 = *(v6 + 296);
          v23 = *(v6 + 312);
          v22 = v9;
          v24 = *(v6 + 320);
          v25 = *(v6 + 336);
          *(v6 + 320) = 0;
          *(v6 + 328) = 0;
          *(v6 + 336) = 0;
          v10 = v5;
          v26 = *(v6 + 344);
          do
          {
            sub_33FD90(v3 + v10 + 176, v3 + v10);
            if (!v10)
            {
              v7 = v3;
              goto LABEL_5;
            }

            v11 = sub_38FD24(&v12, v3 + v10 - 176);
            v10 -= 176;
          }

          while (v11);
          v7 = v3 + v10 + 176;
LABEL_5:
          sub_33FD90(v7, &v12);
          result = sub_33D5A0(&v12);
        }

        v4 = v8 + 176;
        v5 += 176;
        v6 = v8;
      }

      while (v8 + 176 != a2);
    }
  }

  return result;
}

uint64_t sub_33F2D8(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 176;
    if (result + 176 != a2)
    {
      do
      {
        v5 = v4;
        result = sub_38FD24(v4, v3);
        if (result)
        {
          v7 = *v5;
          v8 = *(v3 + 192);
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *v5 = 0;
          v9 = *(v3 + 200);
          v10 = *(v3 + 216);
          *(v3 + 200) = 0;
          *(v3 + 208) = 0;
          v11 = *(v3 + 224);
          v12 = *(v3 + 240);
          *(v3 + 216) = 0;
          *(v3 + 224) = 0;
          *(v3 + 232) = 0;
          *(v3 + 240) = 0;
          v13 = *(v3 + 248);
          v14 = *(v3 + 264);
          *(v3 + 248) = 0;
          *(v3 + 256) = 0;
          v15 = *(v3 + 272);
          v16 = *(v3 + 288);
          *(v3 + 264) = 0;
          *(v3 + 272) = 0;
          *(v3 + 280) = 0;
          *(v3 + 288) = 0;
          v6 = *(v3 + 296);
          v18 = *(v3 + 312);
          v17 = v6;
          v19 = *(v3 + 320);
          v20 = *(v3 + 336);
          *(v3 + 320) = 0;
          *(v3 + 328) = 0;
          *(v3 + 336) = 0;
          v21 = *(v3 + 344);
          do
          {
            sub_33FD90(v3 + 176, v3);
            v3 -= 176;
          }

          while (sub_38FD24(&v7, v3));
          sub_33FD90(v3 + 176, &v7);
          result = sub_33D5A0(&v7);
        }

        v4 = v5 + 176;
        v3 = v5;
      }

      while (v5 + 176 != a2);
    }
  }

  return result;
}

unint64_t sub_33F43C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v10 = *a1;
  v11 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v18 = *(a1 + 96);
  v19 = *(a1 + 112);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v4 = *(a1 + 120);
  v21 = *(a1 + 136);
  v20 = v4;
  v22 = *(a1 + 144);
  v23 = *(a1 + 160);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v24 = *(a1 + 168);
  *(a1 + 160) = 0;
  if (sub_38FD24(&v10, a2 - 176))
  {
    v5 = a1;
    do
    {
      v5 += 176;
    }

    while (!sub_38FD24(&v10, v5));
  }

  else
  {
    v6 = a1 + 176;
    do
    {
      v5 = v6;
      if (v6 >= v2)
      {
        break;
      }

      v7 = sub_38FD24(&v10, v6);
      v6 = v5 + 176;
    }

    while (!v7);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 176;
    }

    while (sub_38FD24(&v10, v2));
  }

  while (v5 < v2)
  {
    v25 = *v5;
    v26 = *(v5 + 16);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v27 = *(v5 + 24);
    v28 = *(v5 + 40);
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    v29 = *(v5 + 48);
    v30 = *(v5 + 64);
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    v31 = *(v5 + 72);
    v32 = *(v5 + 88);
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    v33 = *(v5 + 96);
    v34 = *(v5 + 112);
    *(v5 + 96) = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    v8 = *(v5 + 120);
    v36 = *(v5 + 136);
    v35 = v8;
    v37 = *(v5 + 144);
    v38 = *(v5 + 160);
    *(v5 + 144) = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v39 = *(v5 + 168);
    sub_33FD90(v5, v2);
    sub_33FD90(v2, &v25);
    sub_33D5A0(&v25);
    do
    {
      v5 += 176;
    }

    while (!sub_38FD24(&v10, v5));
    do
    {
      v2 -= 176;
    }

    while (sub_38FD24(&v10, v2));
  }

  if (v5 - 176 != a1)
  {
    sub_33FD90(a1, v5 - 176);
  }

  sub_33FD90(v5 - 176, &v10);
  sub_33D5A0(&v10);
  return v5;
}

uint64_t sub_33F734(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v14 = *(a1 + 16);
  v16 = *(a1 + 40);
  v18 = *(a1 + 64);
  v20 = *(a1 + 88);
  v22 = *(a1 + 112);
  v24 = *(a1 + 136);
  v26 = *(a1 + 160);
  v27 = *(a1 + 168);
  v13 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  v15 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v17 = *(a1 + 48);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v19 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v21 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v23 = *(a1 + 120);
  v25 = *(a1 + 144);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  do
  {
    v5 = sub_38FD24(a1 + v4 + 176, &v13);
    v4 += 176;
  }

  while (v5);
  v6 = a1 + v4;
  if (v4 == 176)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      a2 -= 176;
    }

    while (!sub_38FD24(a2, &v13));
  }

  else
  {
    do
    {
      a2 -= 176;
    }

    while (!sub_38FD24(a2, &v13));
  }

  if (v6 >= a2)
  {
    v11 = v6 - 176;
    if (v6 - 176 == a1)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_33FD90(a1, v11);
    goto LABEL_18;
  }

  v7 = a1 + v4;
  v8 = a2;
  do
  {
    v28 = *v7;
    v9 = *(v7 + 16);
    *v7 = 0;
    *(v7 + 8) = 0;
    v30 = *(v7 + 24);
    v10 = *(v7 + 40);
    v29 = v9;
    v31 = v10;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    v32 = *(v7 + 48);
    v33 = *(v7 + 64);
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    *(v7 + 48) = 0;
    v34 = *(v7 + 72);
    v35 = *(v7 + 88);
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 88) = 0;
    v36 = *(v7 + 96);
    v37 = *(v7 + 112);
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    v38 = *(v7 + 120);
    v39 = *(v7 + 136);
    v40 = *(v7 + 144);
    v41 = *(v7 + 160);
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    v42 = *(v7 + 168);
    sub_33FD90(v7, v8);
    sub_33FD90(v8, &v28);
    sub_33D5A0(&v28);
    do
    {
      v7 += 176;
    }

    while (sub_38FD24(v7, &v13));
    do
    {
      v8 -= 176;
    }

    while (!sub_38FD24(v8, &v13));
  }

  while (v7 < v8);
  v11 = v7 - 176;
  if (v11 != a1)
  {
    goto LABEL_17;
  }

LABEL_18:
  sub_33FD90(v11, &v13);
  sub_33D5A0(&v13);
  return v11;
}

BOOL sub_33FA30(uint64_t a1, uint64_t a2)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 176;
        if (sub_38FD24(a2 - 176, a1))
        {
          v15 = *a1;
          v16 = *(a1 + 16);
          *a1 = 0;
          *(a1 + 8) = 0;
          v17 = *(a1 + 24);
          v18 = *(a1 + 40);
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          v19 = *(a1 + 48);
          v20 = *(a1 + 64);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v21 = *(a1 + 72);
          v22 = *(a1 + 88);
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          v23 = *(a1 + 96);
          v24 = *(a1 + 112);
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          v6 = *(a1 + 120);
          v26 = *(a1 + 136);
          v25 = v6;
          v27 = *(a1 + 144);
          v28 = *(a1 + 160);
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          v29 = *(a1 + 168);
          sub_33FD90(a1, v5);
          sub_33FD90(v5, &v15);
          sub_33D5A0(&v15);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_33E6DC(a1, a1 + 176, a2 - 176);
      return 1;
    case 4:
      sub_33EB00(a1, a1 + 176, a1 + 352, a2 - 176);
      return 1;
    case 5:
      sub_33EDB4(a1, a1 + 176, a1 + 352, a1 + 528, a2 - 176);
      return 1;
  }

LABEL_11:
  sub_33E6DC(a1, a1 + 176, a1 + 352);
  v7 = a1 + 528;
  if (a1 + 528 == a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = a1 + 352;
  while (!sub_38FD24(v7, v10))
  {
LABEL_21:
    v10 = v7;
    v8 += 176;
    v7 += 176;
    if (v7 == a2)
    {
      return 1;
    }
  }

  v15 = *v7;
  v16 = *(v7 + 16);
  *v7 = 0;
  *(v7 + 8) = 0;
  v17 = *(v7 + 24);
  v18 = *(v7 + 40);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  v19 = *(v7 + 48);
  v20 = *(v7 + 64);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  v21 = *(v7 + 72);
  v22 = *(v7 + 88);
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  v23 = *(v7 + 96);
  v24 = *(v7 + 112);
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  v11 = *(v7 + 120);
  v26 = *(v7 + 136);
  v25 = v11;
  v27 = *(v7 + 144);
  v28 = *(v7 + 160);
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  v29 = *(v7 + 168);
  v12 = v8;
  *(v7 + 160) = 0;
  while (1)
  {
    sub_33FD90(a1 + v12 + 528, a1 + v12 + 352);
    if (v12 == -352)
    {
      break;
    }

    v13 = sub_38FD24(&v15, a1 + v12 + 176);
    v12 -= 176;
    if (!v13)
    {
      sub_33FD90(a1 + v12 + 528, &v15);
      if (++v9 != 8)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  sub_33FD90(a1, &v15);
  if (++v9 != 8)
  {
LABEL_20:
    sub_33D5A0(&v15);
    goto LABEL_21;
  }

LABEL_25:
  sub_33D5A0(&v15);
  return v7 + 176 == a2;
}

uint64_t sub_33FD90(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      v7 = *(a1 + 8);
      do
      {
        v10 = *(v7 - 3);
        v7 -= 3;
        v9 = v10;
        if (v10)
        {
          v11 = *(v5 - 2);
          v8 = v9;
          if (v11 != v9)
          {
            v12 = *(v5 - 2);
            do
            {
              v14 = *(v12 - 3);
              v12 -= 24;
              v13 = v14;
              if (v14)
              {
                *(v11 - 2) = v13;
                operator delete(v13);
              }

              v11 = v12;
            }

            while (v12 != v9);
            v8 = *v7;
          }

          *(v5 - 2) = v9;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
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
  v15 = *(a1 + 24);
  if (v15)
  {
    *(a1 + 32) = v15;
    operator delete(v15);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v16 = (a1 + 48);
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(a1 + 48);
    if (v18 == v17)
    {
LABEL_27:
      *(a1 + 56) = v17;
      operator delete(v19);
      *v16 = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      goto LABEL_28;
    }

    while (1)
    {
      if (*(v18 - 1) < 0)
      {
        operator delete(*(v18 - 3));
        v20 = v18 - 6;
        if (*(v18 - 25) < 0)
        {
LABEL_25:
          operator delete(*v20);
        }
      }

      else
      {
        v20 = v18 - 6;
        if (*(v18 - 25) < 0)
        {
          goto LABEL_25;
        }
      }

      v18 = v20;
      if (v20 == v17)
      {
        v19 = *v16;
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_33B9C8((a1 + 72), a2 + 72);
  v21 = *(a2 + 136);
  v22 = *(a1 + 144);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v21;
  if (v22)
  {
    *(a1 + 152) = v22;
    operator delete(v22);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t sub_33FF90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x2E8BA2E8BA2E8BA3 * ((a4 - result) >> 4))
    {
      v9 = (0x5D1745D1745D1746 * ((a4 - result) >> 4)) | 1;
      v10 = result + 176 * v9;
      v11 = 0x5D1745D1745D1746 * ((a4 - result) >> 4) + 2;
      if (v11 < a3 && sub_38FD24(result + 176 * v9, v10 + 176))
      {
        v10 += 176;
        v9 = v11;
      }

      result = sub_38FD24(v10, v5);
      if ((result & 1) == 0)
      {
        v15 = *v5;
        v16 = *(v5 + 16);
        *v5 = 0;
        *(v5 + 8) = 0;
        v17 = *(v5 + 24);
        v18 = *(v5 + 40);
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        v19 = *(v5 + 48);
        v20 = *(v5 + 64);
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
        v21 = *(v5 + 72);
        v22 = *(v5 + 88);
        *(v5 + 64) = 0;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 88) = 0;
        v23 = *(v5 + 96);
        v24 = *(v5 + 112);
        *(v5 + 96) = 0;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        v12 = *(v5 + 120);
        v26 = *(v5 + 136);
        v25 = v12;
        v27 = *(v5 + 144);
        v28 = *(v5 + 160);
        *(v5 + 144) = 0;
        *(v5 + 152) = 0;
        v29 = *(v5 + 168);
        *(v5 + 160) = 0;
        do
        {
          v13 = v10;
          sub_33FD90(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v14 = (2 * v9) | 1;
          v10 = v6 + 176 * v14;
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v14;
          }

          else if (sub_38FD24(v6 + 176 * v14, v10 + 176))
          {
            v10 += 176;
          }

          else
          {
            v9 = v14;
          }

          v5 = v13;
        }

        while (!sub_38FD24(v10, &v15));
        sub_33FD90(v13, &v15);
        return sub_33D5A0(&v15);
      }
    }
  }

  return result;
}

uint64_t sub_340194(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = 0;
    v17 = *result;
    v18 = *(result + 16);
    *result = 0;
    *(result + 8) = 0;
    v19 = *(result + 24);
    v20 = *(result + 40);
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    v21 = *(result + 48);
    v22 = *(result + 64);
    *(result + 48) = 0;
    *(result + 56) = 0;
    v23 = *(result + 72);
    v24 = *(result + 88);
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    v25 = *(result + 96);
    v26 = *(result + 112);
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    v7 = *(result + 120);
    v28 = *(result + 136);
    v27 = v7;
    v29 = *(result + 144);
    v30 = *(result + 160);
    *(result + 144) = 0;
    *(result + 152) = 0;
    v31 = *(result + 168);
    v8 = (a4 - 2) >> 1;
    v9 = result;
    v10 = result;
    *(result + 160) = 0;
    do
    {
      v11 = v9 + 176 * v6;
      v12 = v11 + 176;
      v13 = (2 * v6) | 1;
      v14 = 2 * v6 + 2;
      if (v14 < a4)
      {
        v15 = v11 + 352;
        if (sub_38FD24(v11 + 176, v11 + 352))
        {
          v12 = v15;
          v13 = v14;
        }
      }

      sub_33FD90(v9, v12);
      v9 = v12;
      v6 = v13;
    }

    while (v13 <= v8);
    if (v12 == a2 - 176)
    {
      sub_33FD90(v12, &v17);
    }

    else
    {
      sub_33FD90(v12, a2 - 176);
      sub_33FD90(a2 - 176, &v17);
      sub_340394(v10, v12 + 176, a3, 0x2E8BA2E8BA2E8BA3 * ((v12 + 176 - v10) >> 4));
    }

    return sub_33D5A0(&v17);
  }

  return result;
}

void sub_34036C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_33D5A0(va);
  _Unwind_Resume(a1);
}

void sub_340380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_33D5A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_340394(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = result;
    v6 = (a4 - 2) >> 1;
    v7 = result + 176 * v6;
    v8 = (a2 - 176);
    result = sub_38FD24(v7, a2 - 176);
    if (result)
    {
      v13 = *(a2 - 176);
      v14 = *(a2 - 160);
      v9 = v8;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = 0;
      v15 = *(a2 - 152);
      v16 = *(a2 - 136);
      *(a2 - 152) = 0;
      *(a2 - 144) = 0;
      v17 = *(a2 - 128);
      v18 = *(a2 - 112);
      *(a2 - 136) = 0;
      *(a2 - 128) = 0;
      *(a2 - 120) = 0;
      *(a2 - 112) = 0;
      v19 = *(a2 - 104);
      v20 = *(a2 - 88);
      *(a2 - 104) = 0;
      *(a2 - 96) = 0;
      v21 = *(a2 - 80);
      v22 = *(a2 - 64);
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v10 = *(a2 - 56);
      v24 = *(a2 - 40);
      v23 = v10;
      v25 = *(a2 - 32);
      v26 = *(a2 - 16);
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      v27 = *(a2 - 8);
      do
      {
        v11 = v7;
        sub_33FD90(v9, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = v5 + 176 * v6;
        v12 = sub_38FD24(v7, &v13);
        v9 = v11;
      }

      while (v12);
      sub_33FD90(v11, &v13);
      return sub_33D5A0(&v13);
    }
  }

  return result;
}

uint64_t sub_3404FC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v20 = *a1;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v6 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *a2;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v10 = *(a2 + 5);
  v9 = *(a2 + 6);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3407C0(&v20, &v13, a3, v27);
  v11 = v32;
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v11;
}

void sub_340740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_34075C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
    sub_334D18(&a17);
    _Unwind_Resume(a1);
  }

  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_340794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_3407C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v11 = *a1;
  *v12 = v4;
  v13 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = *(a2 + 16);
  v6 = *a2;
  *v7 = v5;
  v8 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *__p = *(a2 + 40);
  v10 = *(a2 + 56);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  sub_3408A4(&v11, &v6, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_340888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_3408A4(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v29 = a1 + 1;
  v40 = *a1;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v6 = *(a1 + 3);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v8 = *(a1 + 5);
  v7 = *(a1 + 6);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a2[1];
  v35 = *a2;
  *v36 = v9;
  v37 = *(a2 + 4);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  __p = *(a2 + 40);
  v39 = *(a2 + 7);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  sub_340C90(&v40, &v35, &v47);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  v10 = v48;
  v33 = v47;
  v48 = 0uLL;
  v11 = v50;
  v27 = v49;
  v49 = 0;
  v50 = 0;
  v34 = v51;
  v51 = 0uLL;
  v32 = v52;
  v26 = v53;
  v53 = 0uLL;
  v12 = v55;
  v13 = v34 == v11;
  v14 = v55 == v56;
  v15 = v13 || v14;
  v16 = v13 ^ v14;
  v54 = 0;
  v55 = 0;
  v28 = v10;
  v17 = v10 + 8;
  v56 = 0uLL;
  while (v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    v18 = v33;
LABEL_28:
    sub_2B5AD0(a3, v18);
    v21 = *(&v33 + 1);
    *&v33 = v18 + 1;
    if (*(&v33 + 1) < (((v34 - v11) >> 3) - 1))
    {
      if (v18 + 1 == v11[*(&v33 + 1)])
      {
        while (1)
        {
          v19 = *(v17 + 8 * v21);
          *&v33 = v19;
          if (((v34 - v11) >> 3) - 2 == v21)
          {
            break;
          }

          v20 = v11[++v21];
          if (v20 != v19)
          {
            goto LABEL_17;
          }
        }

        v21 = ((v34 - v11) >> 3) - 1;
      }

LABEL_17:
      *(&v33 + 1) = v21;
    }
  }

  v18 = v33;
  if (*(&v33 + 1) != *(&v32 + 1) || v33 != v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  if (v12)
  {
    operator delete(v12);
  }

  if (v26)
  {
    operator delete(v26);
  }

  v23 = *(a1 + 2);
  v24 = *(a1 + 5);
  v29[1] = 0u;
  v29[2] = 0u;
  *v29 = 0u;
  if (v24)
  {
    operator delete(v24);
  }

  if (v23)
  {
    operator delete(v23);
  }

  *&v25 = v27;
  *(&v25 + 1) = v11;
  *a4 = v33;
  *(a4 + 16) = v28;
  *(a4 + 32) = v25;
  *(a4 + 48) = v34;
  *(a4 + 64) = a3;
  if (v55)
  {
    *&v56 = v55;
    operator delete(v55);
  }

  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }

  if (v50)
  {
    *&v51 = v50;
    operator delete(v50);
  }

  if (v48)
  {
    *(&v48 + 1) = v48;
    operator delete(v48);
  }
}

void sub_340C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  sub_334D18(&a41);
  sub_334D18(&a49);
  _Unwind_Resume(a1);
}

void sub_340C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    operator delete(a51);
  }

  _Unwind_Resume(exception_object);
}

void sub_340C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_334D18(&a23);
  sub_334D18(&a31);
  sub_3355FC((v31 - 216));
  _Unwind_Resume(a1);
}

void sub_340C90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v10 = *a1;
  *v11 = v3;
  v12 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(a2 + 16);
  v5 = *a2;
  *v6 = v4;
  v7 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *__p = *(a2 + 40);
  v9 = *(a2 + 56);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  sub_340D50(&v10, &v5, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_340D50(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *a1;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v7 = *(a1 + 5);
  v6 = *(a1 + 6);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v14;
  v15 = *a2;
  v9 = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v10 = *(a2 + 5);
  v11 = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v11 - v10;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a3 + 64) = v15;
  *a3 = v13;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (v9)
  {
    operator delete(v9);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v5)
  {

    operator delete(v5);
  }
}

void sub_340FB4(void *a1)
{
  if (v1)
  {
    operator delete(v1);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

uint64_t *sub_340FF4(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
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
      v114 = *v9;
      v125 = *v9;
      v126 = *(a2 - 8);
      if (v126 == v125)
      {
        v127 = *(a2 - 1);
        if (v127 == -1 || v127 >= HIDWORD(v114))
        {
          return result;
        }
      }

      else if (v126 >= v125)
      {
        return result;
      }

      goto LABEL_242;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v128 = v9 + 1;
      v130 = v9 == a2 || v128 == a2;
      if (a5)
      {
        if (v130)
        {
          return result;
        }

        v131 = 0;
        v132 = v9;
LABEL_198:
        v134 = v132;
        v132 = v128;
        v135 = *v134;
        v136 = *v134;
        v137 = *(v134 + 8);
        v138 = v137 >= v136;
        if (v137 == v136)
        {
          v139 = *(v134 + 3);
          v138 = v139 == -1 || v139 >= HIDWORD(v135);
        }

        if (v138)
        {
          goto LABEL_197;
        }

        v140 = v134[1];
        v134[1] = v135;
        v133 = v9;
        if (v134 == v9)
        {
          goto LABEL_196;
        }

        v141 = v131;
        while (1)
        {
          v142 = *(v9 + v141 - 8);
          if (v140 == v142)
          {
            if (HIDWORD(v140) >= HIDWORD(v142))
            {
              v133 = v134;
              goto LABEL_196;
            }
          }

          else if (v140 >= v142)
          {
            v133 = v9 + v141;
LABEL_196:
            *v133 = v140;
LABEL_197:
            v128 = v132 + 1;
            v131 += 8;
            if (v132 + 1 != a2)
            {
              goto LABEL_198;
            }

            return result;
          }

          --v134;
          *(v9 + v141) = v142;
          v141 -= 8;
          if (!v141)
          {
            v133 = v9;
            goto LABEL_196;
          }
        }
      }

      if (v130)
      {
        return result;
      }

      while (1)
      {
        v149 = v8;
        v8 = v128;
        v150 = *v149;
        v151 = *v149;
        v152 = *(v149 + 8);
        v153 = v152 >= v151;
        if (v152 == v151)
        {
          v154 = *(v149 + 3);
          v153 = v154 == -1 || v154 >= HIDWORD(v150);
        }

        if (!v153)
        {
          v155 = *v8;
          v156 = *v8;
          v157 = HIDWORD(*v8);
          do
          {
            while (1)
            {
              v158 = v149;
              v159 = v150;
              v160 = *--v149;
              v150 = v160;
              v149[2] = v159;
              v161 = v160;
              if (v156 == v160)
              {
                break;
              }

              if (v156 >= v161)
              {
                goto LABEL_229;
              }
            }
          }

          while (v157 < HIDWORD(v150));
LABEL_229:
          *v158 = v155;
        }

        v128 = v8 + 1;
        if (v8 + 1 == a2)
        {
          return result;
        }
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_342500(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    if (v12 < 0x81)
    {
      v24 = *v13;
      v25 = *v14;
      v26 = *v9;
      if (v26 == v25)
      {
        v27 = *(v9 + 1);
        if (v27 != -1 && v27 < HIDWORD(v24))
        {
LABEL_26:
          v28 = *v9;
          v29 = *v9;
          v30 = *(a2 - 8);
          if (v30 == v29)
          {
            v31 = *(a2 - 1);
            if (v31 != -1 && v31 < HIDWORD(v28))
            {
LABEL_29:
              *v14 = *(a2 - 1);
              goto LABEL_67;
            }
          }

          else if (v30 < v29)
          {
            goto LABEL_29;
          }

          *v14 = v28;
          *v9 = v24;
          v51 = *(a2 - 8);
          if (v51 == v25)
          {
            v52 = *(a2 - 1);
            if (v52 == -1 || v52 >= HIDWORD(v24))
            {
              goto LABEL_68;
            }
          }

          else if (v51 >= v25)
          {
            goto LABEL_68;
          }

          *v9 = *(a2 - 1);
LABEL_67:
          *(a2 - 1) = v24;
LABEL_68:
          if (a5)
          {
            goto LABEL_154;
          }

          goto LABEL_150;
        }
      }

      else if (v26 < v25)
      {
        goto LABEL_26;
      }

      v36 = *v9;
      v37 = *v9;
      v38 = *(a2 - 8);
      v39 = v38 >= v37;
      if (v38 == v37)
      {
        v40 = *(a2 - 1);
        if (v40 == -1)
        {
          goto LABEL_68;
        }

        v39 = v40 >= HIDWORD(v36);
      }

      if (!v39)
      {
        *v9 = *(a2 - 1);
        *(a2 - 1) = v36;
        v41 = *v14;
        v42 = *v14;
        v43 = *v9;
        if (v43 == v42)
        {
          v44 = *(v9 + 1);
          if (v44 != -1 && v44 < HIDWORD(v41))
          {
LABEL_63:
            *v14 = *v9;
            *v9 = v41;
            if (a5)
            {
              goto LABEL_154;
            }

            goto LABEL_150;
          }
        }

        else if (v43 < v42)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_68;
    }

    v15 = *v9;
    v16 = *v9;
    v17 = *v13;
    if (v17 == v16)
    {
      v18 = *(v13 + 1);
      if (v18 != -1 && v18 < HIDWORD(v15))
      {
LABEL_19:
        v20 = *v13;
        v21 = *v13;
        v22 = *(a2 - 8);
        if (v22 == v21)
        {
          v23 = *(a2 - 1);
          if (v23 != -1 && v23 < HIDWORD(v20))
          {
LABEL_22:
            *v9 = *(a2 - 1);
            goto LABEL_61;
          }
        }

        else if (v22 < v21)
        {
          goto LABEL_22;
        }

        *v9 = v20;
        *v13 = v15;
        v45 = *(a2 - 8);
        if (v45 != v16)
        {
          if (v45 >= v16)
          {
            goto LABEL_72;
          }

LABEL_60:
          *v13 = *(a2 - 1);
LABEL_61:
          *(a2 - 1) = v15;
          goto LABEL_72;
        }

        v46 = *(a2 - 1);
        if (v46 != -1 && v46 < HIDWORD(v15))
        {
          goto LABEL_60;
        }

        goto LABEL_72;
      }
    }

    else if (v17 < v16)
    {
      goto LABEL_19;
    }

    v32 = *v13;
    v33 = *v13;
    v34 = *(a2 - 8);
    if (v34 == v33)
    {
      v35 = *(a2 - 1);
      if (v35 == -1 || v35 >= HIDWORD(v32))
      {
        goto LABEL_72;
      }
    }

    else if (v34 >= v33)
    {
      goto LABEL_72;
    }

    *v13 = *(a2 - 1);
    *(a2 - 1) = v32;
    v47 = *v9;
    v48 = *v9;
    v49 = *v13;
    if (v49 != v48)
    {
      if (v49 >= v48)
      {
        goto LABEL_72;
      }

LABEL_71:
      *v9 = *v13;
      *v13 = v47;
      goto LABEL_72;
    }

    v50 = *(v13 + 1);
    if (v50 != -1 && v50 < HIDWORD(v47))
    {
      goto LABEL_71;
    }

LABEL_72:
    v53 = v13 - 8;
    v54 = *(v13 - 8);
    v55 = v9[1];
    if (v54 == v55)
    {
      v56 = *(v13 - 1);
      if (v56 == -1 || v56 >= HIDWORD(v55))
      {
LABEL_80:
        v61 = *v53;
        v62 = *v53;
        v63 = *(a2 - 16);
        v64 = v63 >= v62;
        if (v63 == v62)
        {
          v65 = *(a2 - 3);
          if (v65 == -1)
          {
            goto LABEL_98;
          }

          v64 = v65 >= HIDWORD(v61);
        }

        if (!v64)
        {
          *v53 = *(a2 - 2);
          *(a2 - 2) = v61;
          v66 = v9[1];
          v67 = *v53;
          if (v67 != v66)
          {
            if (v67 >= v66)
            {
              goto LABEL_98;
            }

LABEL_94:
            v9[1] = *v53;
            *v53 = v66;
            goto LABEL_98;
          }

          v68 = *(v13 - 1);
          if (v68 != -1 && v68 < HIDWORD(v66))
          {
            goto LABEL_94;
          }
        }

        goto LABEL_98;
      }
    }

    else if (v54 >= v55)
    {
      goto LABEL_80;
    }

    v57 = *v53;
    v58 = *v53;
    v59 = *(a2 - 16);
    if (v59 == v58)
    {
      v60 = *(a2 - 3);
      if (v60 != -1 && v60 < HIDWORD(v57))
      {
LABEL_78:
        v9[1] = *(a2 - 2);
        goto LABEL_97;
      }
    }

    else if (v59 < v58)
    {
      goto LABEL_78;
    }

    v9[1] = v57;
    *v53 = v55;
    v69 = *(a2 - 16);
    if (v69 != v55)
    {
      if (v69 >= v55)
      {
        goto LABEL_98;
      }

LABEL_96:
      *v53 = *(a2 - 2);
LABEL_97:
      *(a2 - 2) = v55;
      goto LABEL_98;
    }

    v70 = *(a2 - 3);
    if (v70 != -1 && v70 < HIDWORD(v55))
    {
      goto LABEL_96;
    }

LABEL_98:
    v72 = v13[8];
    v71 = v13 + 8;
    v73 = v9[2];
    v74 = v72 >= v73;
    if (v72 == v73)
    {
      v75 = *(v71 + 1);
      if (v75 != -1 && v75 < HIDWORD(v73))
      {
LABEL_101:
        v76 = *v71;
        v77 = *v71;
        v78 = *(a2 - 24);
        if (v78 == v77)
        {
          v79 = *(a2 - 5);
          if (v79 != -1 && v79 < HIDWORD(v76))
          {
LABEL_104:
            v9[2] = *(a2 - 3);
            goto LABEL_124;
          }
        }

        else if (v78 < v77)
        {
          goto LABEL_104;
        }

        v9[2] = v76;
        *v71 = v73;
        v88 = *(a2 - 24);
        if (v88 == v73)
        {
          v89 = *(a2 - 5);
          if (v89 == -1 || v89 >= HIDWORD(v73))
          {
            goto LABEL_125;
          }

LABEL_123:
          *v71 = *(a2 - 3);
LABEL_124:
          *(a2 - 3) = v73;
          goto LABEL_125;
        }

        if (v88 < v73)
        {
          goto LABEL_123;
        }

        goto LABEL_125;
      }
    }

    else if (!v74)
    {
      goto LABEL_101;
    }

    v80 = *v71;
    v81 = *v71;
    v82 = *(a2 - 24);
    v83 = v82 >= v81;
    if (v82 == v81)
    {
      v84 = *(a2 - 5);
      if (v84 == -1)
      {
        goto LABEL_125;
      }

      v83 = v84 >= HIDWORD(v80);
    }

    if (!v83)
    {
      *v71 = *(a2 - 3);
      *(a2 - 3) = v80;
      v85 = v9[2];
      v86 = *v71;
      if (v86 == v85)
      {
        v87 = *(v71 + 1);
        if (v87 == -1 || v87 >= HIDWORD(v85))
        {
          goto LABEL_125;
        }

LABEL_121:
        v9[2] = *v71;
        *v71 = v85;
        goto LABEL_125;
      }

      if (v86 < v85)
      {
        goto LABEL_121;
      }
    }

LABEL_125:
    v90 = *v53;
    v91 = *v53;
    v92 = *v14;
    if (v92 == v91)
    {
      v93 = *(v14 + 1);
      if (v93 == -1 || v93 >= HIDWORD(v90))
      {
LABEL_133:
        v94 = *v14;
        v98 = *v14;
        v99 = *v71;
        v100 = v99 >= v98;
        if (v99 == v98)
        {
          v101 = *(v71 + 1);
          if (v101 == -1)
          {
            goto LABEL_149;
          }

          v100 = v101 >= HIDWORD(v94);
        }

        if (v100)
        {
LABEL_149:
          v105 = *v9;
          *v9 = v94;
          *v14 = v105;
          if (a5)
          {
            goto LABEL_154;
          }

          goto LABEL_150;
        }

        v102 = *v71;
        *v14 = *v71;
        *v71 = v94;
        if (v102 == v91)
        {
          if (HIDWORD(v102) >= HIDWORD(v90))
          {
            goto LABEL_139;
          }
        }

        else if (v102 >= v91)
        {
LABEL_139:
          v103 = *v9;
          *v9 = v102;
          *v14 = v103;
          if (a5)
          {
            goto LABEL_154;
          }

          goto LABEL_150;
        }

        *v53 = v102;
        v71 = v14;
        v94 = v90;
LABEL_148:
        *v71 = v90;
        goto LABEL_149;
      }
    }

    else if (v92 >= v91)
    {
      goto LABEL_133;
    }

    v94 = *v14;
    v95 = *v14;
    v96 = *v71;
    if (v96 == v95)
    {
      v97 = *(v71 + 1);
      if (v97 != -1 && v97 < HIDWORD(v94))
      {
LABEL_131:
        *v53 = *v71;
        goto LABEL_148;
      }
    }

    else if (v96 < v95)
    {
      goto LABEL_131;
    }

    *v53 = v94;
    *v14 = v90;
    if (v96 == v91)
    {
      v104 = *(v71 + 1);
      if (v104 != -1 && v104 < HIDWORD(v90))
      {
LABEL_145:
        v94 = *v71;
        *v14 = *v71;
        goto LABEL_148;
      }
    }

    else if (v96 < v91)
    {
      goto LABEL_145;
    }

    v113 = *v9;
    *v9 = v90;
    *v14 = v113;
    if (a5)
    {
      goto LABEL_154;
    }

LABEL_150:
    v106 = *v9;
    v107 = *(v9 - 8);
    v108 = v107 >= v106;
    if (v107 == v106)
    {
      v109 = *(v9 - 1);
      if (v109 == -1)
      {
        goto LABEL_162;
      }

      v108 = v109 >= HIDWORD(*v9);
    }

    if (v108)
    {
LABEL_162:
      result = sub_341D64(v9, a2);
      v9 = result;
LABEL_163:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_154:
    v110 = sub_341EA0(v9, a2);
    if ((v111 & 1) == 0)
    {
      goto LABEL_161;
    }

    v112 = sub_341FE4(v9, v110);
    v9 = (v110 + 8);
    result = sub_341FE4((v110 + 8), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v110;
      if (v112)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v112)
    {
LABEL_161:
      result = sub_340FF4(v8, v110, a3, -v11, a5 & 1);
      v9 = (v110 + 8);
      goto LABEL_163;
    }
  }

  if (v12 == 3)
  {
    v114 = *v9;
    v115 = *v9;
    v116 = *(v9 + 8);
    if (v116 == v115)
    {
      v117 = *(v9 + 3);
      if (v117 != -1 && v117 < HIDWORD(v114))
      {
LABEL_171:
        v119 = v9[1];
        v120 = *(a2 - 8);
        if (v120 == v119)
        {
          v121 = *(a2 - 1);
          if (v121 == -1 || v121 >= HIDWORD(v119))
          {
            goto LABEL_245;
          }
        }

        else if (v120 >= v119)
        {
LABEL_245:
          *v9 = v119;
          v9[1] = v114;
          v162 = *(a2 - 8);
          if (v162 == v115)
          {
            v163 = *(a2 - 1);
            if (v163 == -1 || v163 >= HIDWORD(v114))
            {
              return result;
            }
          }

          else if (v162 >= v115)
          {
            return result;
          }

          v9[1] = *(a2 - 1);
LABEL_243:
          *(a2 - 1) = v114;
          return result;
        }

LABEL_242:
        *v9 = *(a2 - 1);
        goto LABEL_243;
      }
    }

    else if (v116 < v115)
    {
      goto LABEL_171;
    }

    v143 = v9[1];
    v144 = *(a2 - 8);
    if (v144 == v143)
    {
      v145 = *(a2 - 1);
      if (v145 == -1 || v145 >= HIDWORD(v143))
      {
        return result;
      }
    }

    else if (v144 >= v143)
    {
      return result;
    }

    v9[1] = *(a2 - 1);
    *(a2 - 1) = v143;
    v164 = *v9;
    v165 = *v9;
    v166 = *(v9 + 8);
    if (v166 == v165)
    {
      v167 = *(v9 + 3);
      if (v167 == -1 || v167 >= HIDWORD(v164))
      {
        return result;
      }
    }

    else if (v166 >= v165)
    {
      return result;
    }

    *v9 = v9[1];
    v9[1] = v164;
    return result;
  }

  if (v12 == 4)
  {

    return sub_341B88(v9, v9 + 8, v9 + 16, a2 - 8);
  }

  if (v12 != 5)
  {
    goto LABEL_11;
  }

  result = sub_341B88(v9, v9 + 8, v9 + 16, v9 + 24);
  v122 = v9[3];
  v123 = *(a2 - 8);
  if (v123 == v122)
  {
    v124 = *(a2 - 1);
    if (v124 == -1 || v124 >= HIDWORD(v122))
    {
      return result;
    }
  }

  else if (v123 >= v122)
  {
    return result;
  }

  v9[3] = *(a2 - 1);
  *(a2 - 1) = v122;
  v146 = v9[2];
  v147 = *(v9 + 24);
  if (v147 == v146)
  {
    v148 = *(v9 + 7);
    if (v148 == -1 || v148 >= HIDWORD(v146))
    {
      return result;
    }
  }

  else if (v147 >= v146)
  {
    return result;
  }

  v168 = v9[3];
  v9[2] = v168;
  v9[3] = v146;
  v169 = v9[1];
  v170 = HIDWORD(v168);
  if (v168 == v169)
  {
    if (v170 >= HIDWORD(v169))
    {
      return result;
    }
  }

  else if (v168 >= v169)
  {
    return result;
  }

  v9[1] = v168;
  v9[2] = v169;
  v171 = *v9;
  v172 = *v9;
  v173 = v168 >= v172;
  if (v168 == v172)
  {
    v173 = v170 >= HIDWORD(v171);
  }

  if (!v173)
  {
    *v9 = v168;
    v9[1] = v171;
  }

  return result;
}

uint64_t *sub_341B88(uint64_t *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *result;
  v5 = *result;
  v6 = *a2;
  if (v6 == v5)
  {
    v7 = *(a2 + 1);
    if (v7 != -1 && v7 < HIDWORD(v4))
    {
LABEL_6:
      v9 = *a2;
      v10 = *a2;
      v11 = *a3;
      if (v11 == v10)
      {
        v12 = *(a3 + 1);
        if (v12 != -1 && v12 < HIDWORD(v9))
        {
          goto LABEL_11;
        }
      }

      else if (v11 < v10)
      {
LABEL_11:
        *result = *a3;
LABEL_32:
        *a3 = v4;
        goto LABEL_35;
      }

      *result = v9;
      *a2 = v4;
      v19 = *a3;
      if (v19 == v5)
      {
        v20 = *(a3 + 1);
        if (v20 == -1 || v20 >= HIDWORD(v4))
        {
          goto LABEL_35;
        }
      }

      else if (v19 >= v5)
      {
        goto LABEL_35;
      }

      *a2 = *a3;
      goto LABEL_32;
    }
  }

  else if (v6 < v5)
  {
    goto LABEL_6;
  }

  v14 = *a2;
  v15 = *a2;
  v16 = *a3;
  if (v16 != v15)
  {
    if (v16 >= v15)
    {
      goto LABEL_35;
    }

LABEL_26:
    *a2 = *a3;
    *a3 = v14;
    v21 = *result;
    v22 = *result;
    v23 = *a2;
    if (v23 == v22)
    {
      v24 = *(a2 + 1);
      if (v24 == -1 || v24 >= HIDWORD(v21))
      {
        goto LABEL_35;
      }
    }

    else if (v23 >= v22)
    {
      goto LABEL_35;
    }

    *result = *a2;
    *a2 = v21;
    goto LABEL_35;
  }

  v17 = *(a3 + 1);
  if (v17 != -1 && v17 < HIDWORD(v14))
  {
    goto LABEL_26;
  }

LABEL_35:
  v25 = *a3;
  v26 = *a3;
  v27 = *a4;
  if (v27 == v26)
  {
    v28 = *(a4 + 1);
    if (v28 == -1 || v28 >= HIDWORD(v25))
    {
      return result;
    }
  }

  else if (v27 >= v26)
  {
    return result;
  }

  *a3 = *a4;
  *a4 = v25;
  v29 = *a2;
  v30 = *a2;
  v31 = *a3;
  v32 = v31 >= v30;
  if (v31 == v30)
  {
    v33 = *(a3 + 1);
    if (v33 == -1)
    {
      return result;
    }

    v32 = v33 >= HIDWORD(v29);
  }

  if (!v32)
  {
    *a2 = *a3;
    *a3 = v29;
    v34 = *result;
    v35 = *result;
    v36 = *a2;
    v37 = v36 >= v35;
    if (v36 == v35)
    {
      v38 = *(a2 + 1);
      if (v38 == -1)
      {
        return result;
      }

      v37 = v38 >= HIDWORD(v34);
    }

    if (!v37)
    {
      *result = *a2;
      *a2 = v34;
    }
  }

  return result;
}

unint64_t *sub_341D64(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = HIDWORD(*a1);
  v5 = *(a2 - 1);
  if (v3 == v5)
  {
    if (v4 >= HIDWORD(v5))
    {
      goto LABEL_3;
    }

LABEL_11:
    for (i = (a1 + 1); ; ++i)
    {
      v8 = *i;
      if (v3 == v8)
      {
        if (v4 < HIDWORD(*i))
        {
          goto LABEL_16;
        }
      }

      else if (v3 < v8)
      {
        goto LABEL_16;
      }
    }
  }

  if (v3 < v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  for (i = (a1 + 1); i < a2; ++i)
  {
    v7 = *i;
    if (v3 == v7)
    {
      if (v4 < HIDWORD(*i))
      {
        break;
      }
    }

    else if (v3 < v7)
    {
      break;
    }
  }

LABEL_16:
  if (i < a2)
  {
    for (--a2; ; --a2)
    {
      if (v3 == v5)
      {
        if (v4 >= HIDWORD(v5))
        {
          break;
        }
      }

      else if (v3 >= v5)
      {
        break;
      }

      v9 = *(a2 - 1);
      v5 = v9;
    }
  }

  if (i < a2)
  {
    v10 = *i;
    v11 = *a2;
    do
    {
      *i++ = v11;
      *a2 = v10;
      while (1)
      {
        v10 = *i;
        v12 = *i;
        if (v3 != v12)
        {
          break;
        }

        if (v4 < HIDWORD(v10))
        {
          goto LABEL_32;
        }

LABEL_27:
        ++i;
      }

      if (v3 >= v12)
      {
        goto LABEL_27;
      }

      do
      {
LABEL_32:
        while (1)
        {
          v13 = *--a2;
          v11 = v13;
          v14 = v13;
          if (v3 == v13)
          {
            break;
          }

          if (v3 >= v14)
          {
            goto LABEL_24;
          }
        }
      }

      while (v4 < HIDWORD(v11));
LABEL_24:
      ;
    }

    while (i < a2);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v2;
  return i;
}

unsigned __int8 *sub_341EA0(unsigned __int8 *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = HIDWORD(*a1);
  while (1)
  {
    v8 = a1[v2 + 8];
    if (v8 == v4)
    {
      break;
    }

    if (v8 >= v4)
    {
      goto LABEL_9;
    }

LABEL_6:
    v2 += 8;
  }

  v6 = *&a1[v2 + 12];
  if (v6 != -1 && v6 < v5)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9 = &a1[v2];
  v10 = &a1[v2 + 8];
  if (v2)
  {
    do
    {
      while (1)
      {
        v11 = *(a2 - 8);
        a2 -= 8;
        v12 = v11 >= v4;
        if (v11 == v4)
        {
          break;
        }

        if (!v12)
        {
          goto LABEL_33;
        }
      }

      v13 = *(a2 + 4);
    }

    while (v13 == -1 || v13 >= v5);
  }

  else if (v10 < a2)
  {
    do
    {
      while (1)
      {
        v18 = *(a2 - 8);
        a2 -= 8;
        v19 = v18 >= v4;
        if (v18 == v4)
        {
          break;
        }

        if (!v19 || v10 >= a2)
        {
          goto LABEL_33;
        }
      }

      v15 = *(a2 + 4);
    }

    while ((v15 >= v5 || v15 == -1) && v10 < a2);
  }

LABEL_33:
  if (v10 >= a2)
  {
    goto LABEL_54;
  }

  v21 = v10;
  v22 = a2;
  while (2)
  {
    v23 = *v21;
    *v21 = *v22;
    v21 += 8;
    *v22 = v23;
    while (2)
    {
      v26 = *v21;
      if (v26 != v4)
      {
        if (v26 >= v4)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      v24 = *(v21 + 1);
      if (v24 != -1 && v24 < v5)
      {
LABEL_41:
        v21 += 8;
        continue;
      }

      break;
    }

    do
    {
LABEL_47:
      while (1)
      {
        v27 = *(v22 - 8);
        v22 -= 8;
        v28 = v27 >= v4;
        if (v27 == v4)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_35;
        }
      }

      v29 = *(v22 + 4);
    }

    while (v29 == -1 || v29 >= v5);
LABEL_35:
    if (v21 < v22)
    {
      continue;
    }

    break;
  }

  v9 = v21 - 8;
LABEL_54:
  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v3;
  return v9;
}

BOOL sub_341FE4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = &a2[-a1] >> 3;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        sub_341B88(a1, (a1 + 8), (a1 + 16), a2 - 8);
        return 1;
      }

      if (v2 == 5)
      {
        sub_341B88(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v6 = *(a1 + 24);
        v7 = *(a2 - 8);
        if (v7 == v6)
        {
          v8 = *(a2 - 1);
          if (v8 == -1 || v8 >= HIDWORD(v6))
          {
            return 1;
          }
        }

        else if (v7 >= v6)
        {
          return 1;
        }

        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        v37 = *(a1 + 16);
        v38 = *(a1 + 24);
        if (v38 == v37)
        {
          v39 = *(a1 + 28);
          if (v39 == -1 || v39 >= HIDWORD(v37))
          {
            return 1;
          }
        }

        else if (v38 >= v37)
        {
          return 1;
        }

        v48 = *(a1 + 24);
        *(a1 + 16) = v48;
        *(a1 + 24) = v37;
        v49 = *(a1 + 8);
        v50 = HIDWORD(v48);
        if (v48 == v49)
        {
          if (v50 >= HIDWORD(v49))
          {
            return 1;
          }
        }

        else if (v48 >= v49)
        {
          return 1;
        }

        *(a1 + 8) = v48;
        *(a1 + 16) = v49;
        v64 = *a1;
        v65 = *a1;
        v66 = v48 >= v65;
        if (v48 == v65)
        {
          v66 = v50 >= HIDWORD(v64);
        }

        if (!v66)
        {
          *a1 = v48;
          *(a1 + 8) = v64;
          return 1;
        }

        return 1;
      }

      goto LABEL_25;
    }

    v9 = *a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    if (v14 == v13)
    {
      v15 = *(a1 + 12);
      if (v15 != -1 && v15 < HIDWORD(v9))
      {
LABEL_21:
        v17 = *(a1 + 8);
        v18 = *(a2 - 8);
        if (v18 == v17)
        {
          v19 = *(a2 - 1);
          if (v19 != -1 && v19 < HIDWORD(v17))
          {
            goto LABEL_51;
          }
        }

        else if (v18 < v17)
        {
          goto LABEL_51;
        }

        *a1 = v17;
        *(a1 + 8) = v9;
        v40 = *(a2 - 8);
        if (v40 == v13)
        {
          v41 = *(a2 - 1);
          if (v41 == -1 || v41 >= HIDWORD(v9))
          {
            return 1;
          }
        }

        else if (v40 >= v13)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v9;
        return 1;
      }
    }

    else if (v14 < v13)
    {
      goto LABEL_21;
    }

    v30 = *(a1 + 8);
    v31 = *(a2 - 8);
    if (v31 == v30)
    {
      v32 = *(a2 - 1);
      if (v32 == -1 || v32 >= HIDWORD(v30))
      {
        return 1;
      }
    }

    else if (v31 >= v30)
    {
      return 1;
    }

    *(a1 + 8) = *(a2 - 1);
    *(a2 - 1) = v30;
    v42 = *a1;
    v43 = *a1;
    v44 = *(a1 + 8);
    if (v44 == v43)
    {
      v45 = *(a1 + 12);
      if (v45 == -1 || v45 >= HIDWORD(v42))
      {
        return 1;
      }
    }

    else if (v44 >= v43)
    {
      return 1;
    }

    *a1 = *(a1 + 8);
    *(a1 + 8) = v42;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v9 = *a1;
    v10 = *a1;
    v11 = *(a2 - 8);
    if (v11 == v10)
    {
      v12 = *(a2 - 1);
      if (v12 == -1 || v12 >= HIDWORD(v9))
      {
        return 1;
      }
    }

    else if (v11 >= v10)
    {
      return 1;
    }

LABEL_51:
    *a1 = *(a2 - 1);
    *(a2 - 1) = v9;
    return 1;
  }

LABEL_25:
  v20 = (a1 + 16);
  v21 = *a1;
  v22 = (a1 + 8);
  v23 = *(a1 + 8);
  v24 = *a1;
  if (v23 == v24)
  {
    v25 = *(a1 + 12);
    if (v25 != -1 && v25 < HIDWORD(v21))
    {
      goto LABEL_28;
    }

LABEL_39:
    v33 = *v22;
    v34 = *v22;
    v35 = *v20;
    if (v35 == v34)
    {
      v36 = *(a1 + 20);
      if (v36 == -1 || v36 >= HIDWORD(v33))
      {
        goto LABEL_84;
      }
    }

    else if (v35 >= v34)
    {
      goto LABEL_84;
    }

    v46 = *v20;
    *v22 = *v20;
    *v20 = v33;
    if (v46 == v24)
    {
      if (HIDWORD(v46) >= HIDWORD(v21))
      {
        goto LABEL_84;
      }
    }

    else if (v46 >= v24)
    {
      goto LABEL_84;
    }

    *a1 = v46;
LABEL_83:
    *v22 = v21;
    goto LABEL_84;
  }

  if (v23 >= v24)
  {
    goto LABEL_39;
  }

LABEL_28:
  v26 = *v22;
  v27 = *v22;
  v28 = *v20;
  if (v28 == v27)
  {
    v29 = *(a1 + 20);
    if (v29 != -1 && v29 < HIDWORD(v26))
    {
      goto LABEL_31;
    }
  }

  else if (v28 < v27)
  {
LABEL_31:
    *a1 = *(a1 + 16);
LABEL_82:
    v22 = (a1 + 16);
    goto LABEL_83;
  }

  *a1 = v26;
  *(a1 + 8) = v21;
  if (v28 == v24)
  {
    v47 = *(a1 + 20);
    if (v47 == -1 || v47 >= HIDWORD(v21))
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  if (v28 < v24)
  {
LABEL_81:
    *v22 = *v20;
    goto LABEL_82;
  }

LABEL_84:
  v51 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v52 = 0;
  v53 = 0;
  while (1)
  {
    v54 = *v20;
    v55 = *v20;
    v56 = *v51;
    v57 = v56 >= v55;
    if (v56 == v55)
    {
      v58 = *(v51 + 1);
      v57 = v58 == -1 || v58 >= HIDWORD(v54);
    }

    if (!v57)
    {
      break;
    }

LABEL_87:
    v20 = v51;
    v52 += 8;
    v51 += 8;
    if (v51 == a2)
    {
      return 1;
    }
  }

  v59 = *v51;
  v60 = *v51;
  v61 = HIDWORD(*v51);
  *v51 = v54;
  v62 = v52;
  while (1)
  {
    v63 = *(a1 + v62 + 8);
    if (v60 != v63)
    {
      break;
    }

    if (v61 >= HIDWORD(v63))
    {
      goto LABEL_98;
    }

LABEL_95:
    *(a1 + v62 + 16) = v63;
    v62 -= 8;
    if (v62 == -16)
    {
      *a1 = v59;
      if (++v53 != 8)
      {
        goto LABEL_87;
      }

      return v51 + 8 == a2;
    }
  }

  if (v60 < v63)
  {
    goto LABEL_95;
  }

LABEL_98:
  *(a1 + v62 + 16) = v59;
  if (++v53 != 8)
  {
    goto LABEL_87;
  }

  return v51 + 8 == a2;
}

unsigned __int8 *sub_342500(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_342768(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *a1;
        v14 = *a1;
        v15 = *v12;
        v16 = v15 >= v14;
        if (v15 == v14)
        {
          v17 = *(v12 + 1);
          v16 = v17 == -1 || v17 >= HIDWORD(v13);
        }

        if (!v16)
        {
          v18 = *v12;
          *v12 = v13;
          *a1 = v18;
          sub_342768(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        if (v8 >= 2)
        {
          v21 = 0;
          v22 = *a1;
          v23 = a1;
          do
          {
            v24 = v23;
            v25 = &v23[v21];
            v23 = v25 + 1;
            v26 = 2 * v21;
            v21 = (2 * v21) | 1;
            v27 = v26 + 2;
            if (v27 < v8)
            {
              v28 = v25 + 2;
              v29 = v25[2];
              v30 = *(v25 + 8);
              v31 = v30 >= v29;
              if (v30 == v29)
              {
                v32 = HIDWORD(v25[2]);
                v33 = *(v25 + 3);
                v31 = v33 == -1 || v33 >= v32;
              }

              if (!v31)
              {
                v23 = v28;
                v21 = v27;
              }
            }

            *v24 = *v23;
          }

          while (v21 <= ((v8 - 2) >> 1));
          v34 = (v6 - 8);
          if (v23 == (v6 - 8))
          {
            *v23 = v22;
          }

          else
          {
            *v23 = *v34;
            *v34 = v22;
            v35 = (v23 - a1 + 8) >> 3;
            v36 = v35 - 2;
            if (v35 >= 2)
            {
              v37 = v36 >> 1;
              v38 = &a1[v36 >> 1];
              v39 = *v23;
              v40 = *v23;
              v41 = *v38;
              v42 = v41 >= v40;
              if (v41 == v40)
              {
                v43 = *(v38 + 1);
                v42 = v43 == -1 || v43 >= HIDWORD(v39);
              }

              if (!v42)
              {
                *v23 = *v38;
                if (v36 >= 2)
                {
                  while (1)
                  {
                    v44 = v37 - 1;
                    v37 = (v37 - 1) >> 1;
                    v45 = &a1[v37];
                    v46 = *v45;
                    if (v46 == v40)
                    {
                      v47 = *(v45 + 1);
                      if (v47 == -1 || v47 >= HIDWORD(v39))
                      {
                        break;
                      }
                    }

                    else if (v46 >= v40)
                    {
                      break;
                    }

                    *v38 = *v45;
                    v38 = &a1[v37];
                    if (v44 <= 1)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                v45 = v38;
LABEL_48:
                *v45 = v39;
              }
            }
          }
        }

        v6 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_342768(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 3)
  {
    return result;
  }

  v6 = v4 >> 2;
  v7 = (v4 >> 2) + 1;
  v8 = (result + 8 * v7);
  v9 = v6 + 2;
  if (v9 < a3)
  {
    v10 = *(v8 + 1);
    v11 = *v8;
    v12 = v11 >= v10;
    if (v11 == v10)
    {
      v13 = *(v8 + 1);
      v12 = v13 == -1 || v13 >= HIDWORD(*(v8 + 1));
    }

    if (!v12)
    {
      v8 += 8;
      v7 = v9;
    }
  }

  v14 = *a4;
  v15 = *a4;
  v16 = *v8;
  if (v16 == v15)
  {
    v17 = *(v8 + 1);
    if (v17 != -1 && v17 < HIDWORD(v14))
    {
      return result;
    }
  }

  else if (v16 < v15)
  {
    return result;
  }

  *a4 = *v8;
  if (v5 >= v7)
  {
    while (1)
    {
      v20 = 2 * v7;
      v7 = (2 * v7) | 1;
      v19 = (result + 8 * v7);
      v21 = v20 + 2;
      if (v21 < a3)
      {
        v22 = *(v19 + 1);
        v23 = *v19;
        v24 = v23 >= v22;
        if (v23 == v22)
        {
          v25 = *(v19 + 1);
          v24 = v25 == -1 || v25 >= HIDWORD(*(v19 + 1));
        }

        if (!v24)
        {
          v19 += 8;
          v7 = v21;
        }
      }

      v26 = *v19;
      if (v26 == v15)
      {
        v27 = *(v19 + 1);
        if (v27 != -1 && v27 < HIDWORD(v14))
        {
LABEL_36:
          *v8 = v14;
          return result;
        }
      }

      else if (v26 < v15)
      {
        goto LABEL_36;
      }

      *v8 = *v19;
      v8 = v19;
      if (v5 < v7)
      {
        goto LABEL_20;
      }
    }
  }

  v19 = v8;
LABEL_20:
  *v19 = v14;
  return result;
}

uint64_t sub_3428B4(unsigned int a1)
{
  if (a1 < 0x14)
  {
    return dword_22910D8[a1];
  }

  v1 = 3;
  if (!sub_7E7E4(3u))
  {
    return v1;
  }

  sub_19594F8(&v8);
  sub_4A5C(&v8, "Unknown incident type encountered: ", 35);
  std::ostream::operator<<();
  if ((v18 & 0x10) != 0)
  {
    v3 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v3 = v14;
    }

    v4 = v13;
    v2 = v3 - v13;
    if (v3 - v13 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }

LABEL_10:
    if (v2 >= 0x17)
    {
      operator new();
    }

    v7 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_15;
  }

  if ((v18 & 8) != 0)
  {
    v4 = v11;
    v2 = v12 - v11;
    if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v2 = 0;
  v7 = 0;
LABEL_15:
  *(&__p + v2) = 0;
  sub_7E854(&__p, 3u);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  std::locale::~locale(&v10);
  std::ostream::~ostream();
  std::ios::~ios();
  return 3;
}

void sub_342B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_342B78(uint64_t result)
{
  if (result <= 13)
  {
    if (result > 5)
    {
      if (result != 6 && result != 12)
      {
        return 64;
      }
    }

    else if (result != 1 && result != 3)
    {
      return 64;
    }
  }

  else
  {
    if (result > 17)
    {
      if (result == 18 || result == 23 || result == 79)
      {
        return result;
      }

      return 64;
    }

    if (result != 14 && result != 15)
    {
      return 64;
    }
  }

  return result;
}

uint64_t sub_342BEC(uint64_t result)
{
  if (result < 5)
  {
    return result;
  }

  LODWORD(result) = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v6);
  sub_4A5C(&v6, "Unknown navigation alert type encountered ", 42);
  std::ostream::operator<<();
  if ((v16 & 0x10) != 0)
  {
    v2 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v1 >= 0x17)
    {
      operator new();
    }

    v5 = v1;
    if (v1)
    {
      memmove(&__p, v3, v1);
    }

    goto LABEL_14;
  }

  if ((v16 & 8) != 0)
  {
    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v1 = 0;
  v5 = 0;
LABEL_14:
  *(&__p + v1) = 0;
  sub_7E854(&__p, 3u);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  std::locale::~locale(&v8);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(result) = 0;
  return result;
}

void sub_342E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_342E9C(_BOOL8 result)
{
  if (result < 0x17)
  {
    return result;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v6);
  sub_4A5C(&v6, "Unknown area event icon encountered: ", 37);
  std::ostream::operator<<();
  if ((v16 & 0x10) != 0)
  {
    v2 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v1 >= 0x17)
    {
      operator new();
    }

    v5 = v1;
    if (v1)
    {
      memmove(&__p, v3, v1);
    }

    goto LABEL_14;
  }

  if ((v16 & 8) != 0)
  {
    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v1 = 0;
  v5 = 0;
LABEL_14:
  *(&__p + v1) = 0;
  sub_7E854(&__p, 3u);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  std::locale::~locale(&v8);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_3430FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_343148(unsigned int a1)
{
  if (a1 >= 6)
  {
    if (!sub_7E7E4(3u))
    {
      return 0;
    }

    sub_19594F8(&v8);
    sub_4A5C(&v8, "Unknown area event RouteScenario encountered: ", 46);
    std::ostream::operator<<();
    if ((v18 & 0x10) != 0)
    {
      v3 = v17;
      if (v17 < v14)
      {
        v17 = v14;
        v3 = v14;
      }

      v4 = v13;
      v2 = v3 - v13;
      if (v3 - v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v18 & 8) == 0)
      {
        v2 = 0;
        v7 = 0;
LABEL_15:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 3u);
        if (v7 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }

        std::locale::~locale(&v10);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v4 = v11;
      v2 = v12 - v11;
      if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_23:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v7 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_15;
  }

  return (a1 + 1);
}

void sub_3433B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_343400(unsigned int a1)
{
  if (a1 < 0xA)
  {
    return byte_2291128[a1];
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v7);
    sub_4A5C(&v7, "Unknown LaneType encountered: ", 30);
    std::ostream::operator<<();
    if ((v17 & 0x10) != 0)
    {
      v3 = v16;
      if (v16 < v13)
      {
        v16 = v13;
        v3 = v13;
      }

      v4 = v12;
      v2 = v3 - v12;
      if (v3 - v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v17 & 8) == 0)
      {
        v2 = 0;
        v6 = 0;
LABEL_15:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 3u);
        if (v6 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        std::locale::~locale(&v9);
        std::ostream::~ostream();
        std::ios::~ios();
        return 7;
      }

      v4 = v10;
      v2 = v11 - v10;
      if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v6 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_15;
  }

  return 7;
}

void sub_343684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_3436D0(_BOOL8 result)
{
  switch(result)
  {
    case 0:
      return result;
    case 7:
      return result;
    case 5:
      return result;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v6);
  sub_4A5C(&v6, "Unknown RouteRestrictionType ", 29);
  std::ostream::operator<<();
  if ((v16 & 0x10) != 0)
  {
    v2 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_23:
      sub_3244();
    }

LABEL_11:
    if (v1 >= 0x17)
    {
      operator new();
    }

    v5 = v1;
    if (v1)
    {
      memmove(&__p, v3, v1);
    }

    goto LABEL_16;
  }

  if ((v16 & 8) != 0)
  {
    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v1 = 0;
  v5 = 0;
LABEL_16:
  *(&__p + v1) = 0;
  sub_7E854(&__p, 3u);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  std::locale::~locale(&v8);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_34393C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_343988(uint64_t result)
{
  if (result < 4)
  {
    return result;
  }

  LODWORD(result) = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v6);
  sub_4A5C(&v6, "Unknown RouteRestrictionOption ", 31);
  std::ostream::operator<<();
  if ((v16 & 0x10) != 0)
  {
    v2 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v1 >= 0x17)
    {
      operator new();
    }

    v5 = v1;
    if (v1)
    {
      memmove(&__p, v3, v1);
    }

    goto LABEL_14;
  }

  if ((v16 & 8) != 0)
  {
    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v1 = 0;
  v5 = 0;
LABEL_14:
  *(&__p + v1) = 0;
  sub_7E854(&__p, 3u);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  std::locale::~locale(&v8);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(result) = 0;
  return result;
}

void sub_343BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

unint64_t sub_343C38(char **a1)
{
  v1 = &a1[1][*a1];
  v6 = *a1;
  v7 = v1;
  v8 = 0x2C700000000;
  if (!sub_32BB58(&v6))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    while (v8 != 3)
    {
      sub_32BC3C(&v6);
      if (!sub_32BB58(&v6))
      {
        return v3 | (v2 << 32);
      }
    }

    v4 = sub_32BDF0(&v6, v7);
    v3 = sub_3428B4(v4);
    v2 = 1;
  }

  while (sub_32BB58(&v6));
  return v3 | (v2 << 32);
}

BOOL sub_343CF0@<W0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = &a1[1][*a1];
  v17 = *a1;
  v18 = v3;
  v19 = 0x2C700000000;
  while (1)
  {
    result = sub_32BB58(&v17);
    if (!result)
    {
      return result;
    }

    if (v19 == 1)
    {
      v8 = sub_32BDF0(&v17, v18);
      v9 = v8;
      v10 = v17;
      v17 += v8;
      if (v17 > v18)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v14 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v16) = v8;
      if (v8)
      {
        memmove(&v15, v10, v8);
        *(&v15 + v9) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      operator delete(*a2);
LABEL_15:
      *a2 = v15;
      *(a2 + 16) = v16;
    }

    else if (v19 == 2)
    {
      v5 = sub_32BDF0(&v17, v18);
      v6 = v5;
      v7 = v17;
      v17 += v5;
      if (v17 > v18)
      {
        v11 = __cxa_allocate_exception(0x40uLL);
        v12 = sub_2D390(v11, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v16) = v5;
      if (v5)
      {
        memmove(&v15, v7, v5);
        *(&v15 + v6) = 0;
        if ((*(a2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
        if ((*(a2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      operator delete(*(a2 + 24));
LABEL_10:
      *(a2 + 24) = v15;
      *(a2 + 40) = v16;
    }

    else
    {
      sub_32BC3C(&v17);
    }
  }
}

uint64_t sub_343FB8(double **a1)
{
  v1 = a1[1] + *a1;
  v11 = *a1;
  v12 = v1;
  v13 = 0x2C700000000;
  if (!sub_32BB58(&v11))
  {
    return -1;
  }

  v2 = -1;
  v3 = 0xFFFFFFFFLL;
  do
  {
    if (v13 == 2)
    {
      v7 = *v11++;
      if (v11 > v12)
      {
LABEL_15:
        exception = __cxa_allocate_exception(0x40uLL);
        v10 = sub_2D390(exception, "Skipping over bytes exceeded message length.", 0x2CuLL);
      }

      v2 = ((v7 + 180.0) / 360.0 * 4294967300.0);
    }

    else if (v13 == 1)
    {
      v4 = *v11++;
      if (v11 > v12)
      {
        goto LABEL_15;
      }

      v5 = sin(fmin(fmax(v4, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      v6 = ((log((v5 + 1.0) / (1.0 - v5)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v6 >= 0xFFFFFFFE)
      {
        v3 = 4294967294;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      sub_32BC3C(&v11);
    }
  }

  while (sub_32BB58(&v11));
  return v2 | (v3 << 32);
}

BOOL sub_344178@<W0>(char **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = &a1[1][*a1];
  v28 = *a1;
  v29 = v3;
  v30 = 0x2C700000000;
  result = sub_32BB58(&v28);
  if (result)
  {
    while (v30 != 7)
    {
      sub_32BC3C(&v28);
      result = sub_32BB58(&v28);
      if (!result)
      {
        return result;
      }
    }

    v5 = sub_32BDF0(&v28, v29);
    v6 = v28;
    v7 = &v28[v5];
    v28 = v7;
    if (v7 > v29)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v22 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    *&v26 = v6;
    *(&v26 + 1) = v7;
    v27 = 0x2C700000000;
    v8 = sub_32CCA4(&v26, 1);
    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    v9 = 0;
    v25 = "Parsed invalid tag.";
    v10 = 19;
    while (1)
    {
      result = sub_32BB58(&v26);
      if (!result)
      {
        break;
      }

      while (v27 != 1)
      {
        sub_32BC3C(&v26);
        result = sub_32BB58(&v26);
        if (!result)
        {
          goto LABEL_55;
        }
      }

      v11 = sub_32BDF0(&v26, *(&v26 + 1));
      v12 = v26;
      v13 = (v26 + v11);
      *&v26 = v13;
      if (v13 > *(&v26 + 1))
      {
        a2[2] = 0;
        *a2 = 0;
        v23 = __cxa_allocate_exception(0x40uLL);
        v24 = sub_2D390(v23, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      v31 = v12;
      v32 = v13;
      v33 = 0x2C700000000;
      v14 = v9;
      v15 = v9 >> 3;
      if ((v15 + 1) >> 61)
      {
        a2[2] = 0;
        *a2 = 0;
        sub_1794();
      }

      if (v15 != -1)
      {
        if (!((v15 + 1) >> 61))
        {
          operator new();
        }

        a2[2] = 0;
        *a2 = 0;
        sub_1808();
      }

      MEMORY[0xFFFFFFFFFFFFFFF8] = 0xFFFFFFFF00000000;
      v9 = 0;
      memcpy(0, 0, v14);
      a2[1] = 0;
      a2[1] = 0;
      if (sub_32BB58(&v31))
      {
        v16 = v33;
        while (1)
        {
          if (v16 == 13)
          {
            MEMORY[0xFFFFFFFFFFFFFFFC] = sub_32BDF0(&v31, v32);
          }

          else if (v16 == 2)
          {
            v17 = sub_32BDF0(&v31, v32);
            if (v17 <= 13)
            {
              if (v17 > 5)
              {
                if (v17 == 6)
                {
                  MEMORY[0xFFFFFFFFFFFFFFF8] = 6;
                }

                else
                {
                  if (v17 != 12)
                  {
                    goto LABEL_52;
                  }

                  MEMORY[0xFFFFFFFFFFFFFFF8] = 12;
                }
              }

              else if (v17 == 1)
              {
                MEMORY[0xFFFFFFFFFFFFFFF8] = 1;
              }

              else
              {
                if (v17 != 3)
                {
                  goto LABEL_52;
                }

                MEMORY[0xFFFFFFFFFFFFFFF8] = 3;
              }
            }

            else if (v17 <= 17)
            {
              if (v17 == 14)
              {
                MEMORY[0xFFFFFFFFFFFFFFF8] = 14;
              }

              else
              {
                if (v17 != 15)
                {
LABEL_52:
                  MEMORY[0xFFFFFFFFFFFFFFF8] = 64;
                  goto LABEL_31;
                }

                MEMORY[0xFFFFFFFFFFFFFFF8] = 15;
              }
            }

            else
            {
              switch(v17)
              {
                case 18:
                  MEMORY[0xFFFFFFFFFFFFFFF8] = 18;
                  break;
                case 23:
                  MEMORY[0xFFFFFFFFFFFFFFF8] = 23;
                  break;
                case 79:
                  MEMORY[0xFFFFFFFFFFFFFFF8] = 79;
                  break;
                default:
                  goto LABEL_52;
              }
            }
          }

          else
          {
            sub_32BC3C(&v31);
          }

LABEL_31:
          if (v31 >= v32)
          {
            break;
          }

          v18 = sub_32BDF0(&v31, v32);
          v16 = v18 >> 3;
          LODWORD(v33) = v18 >> 3;
          if (v18 < 8 || (v18 - 152000) >> 6 < 0x7D)
          {
            goto LABEL_57;
          }

          HIDWORD(v33) = v18 & 7;
          if (HIDWORD(v33) >= 3 && (v18 & 7) != 5)
          {
            v25 = "Unknown wire type.";
            v10 = 18;
LABEL_57:
            a2[2] = 0;
            *a2 = 0;
            v19 = __cxa_allocate_exception(0x40uLL);
            v20 = sub_2D390(v19, v25, v10);
          }
        }
      }

      if (!MEMORY[0xFFFFFFFFFFFFFFF8])
      {
        a2[1] = -8;
        v9 = -8;
      }
    }

LABEL_55:
    a2[2] = 0;
    *a2 = 0;
  }

  return result;
}

void sub_34462C(_Unwind_Exception *exception_object)
{
  v1[2] = v3;
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_344674@<W0>(char **a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = &a1[1][*a1];
  v35 = *a1;
  v36 = v3;
  v37 = 0x2C700000000;
  result = sub_32BB58(&v35);
  if (result)
  {
    while (v37 != 7)
    {
      sub_32BC3C(&v35);
      result = sub_32BB58(&v35);
      if (!result)
      {
        return result;
      }
    }

    v5 = sub_32BDF0(&v35, v36);
    v6 = v35;
    v7 = &v35[v5];
    v35 = v7;
    if (v7 > v36)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v29 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
    }

    v32 = v6;
    v33 = v7;
    v34 = 0x2C700000000;
    v30 = 19;
    v31 = "Parsed invalid tag.";
LABEL_7:
    while (1)
    {
      result = sub_32BB58(&v32);
      if (!result)
      {
        break;
      }

      while (v34 != 1)
      {
        sub_32BC3C(&v32);
        result = sub_32BB58(&v32);
        if (!result)
        {
          return result;
        }
      }

      v8 = sub_32BDF0(&v32, v33);
      v9 = v32;
      v10 = &v32[v8];
      v32 = v10;
      if (v10 > v33)
      {
LABEL_41:
        v31 = "Sub-message length of field exceeded past the end of the message.";
        v25 = 65;
        goto LABEL_42;
      }

      v40 = v9;
      v41 = v10;
      v42 = 0x2C700000000;
      if (sub_32BB58(&v40))
      {
        while (1)
        {
          v11 = v42;
          while (v11 != 14)
          {
            sub_32BC3C(&v40);
            if (v40 >= v41)
            {
              goto LABEL_7;
            }

            v12 = sub_32BDF0(&v40, v41);
            v11 = v12 >> 3;
            LODWORD(v42) = v12 >> 3;
            if (v12 < 8 || (v12 - 152000) >> 6 < 0x7D)
            {
              goto LABEL_43;
            }

            HIDWORD(v42) = v12 & 7;
            if (HIDWORD(v42) >= 3 && (v12 & 7) != 5)
            {
              v31 = "Unknown wire type.";
              v25 = 18;
LABEL_42:
              v30 = v25;
LABEL_43:
              v26 = __cxa_allocate_exception(0x40uLL);
              v27 = sub_2D390(v26, v31, v30);
            }
          }

          v13 = sub_32BDF0(&v40, v41);
          v14 = v13;
          v15 = v40;
          v40 += v13;
          if (v40 > v41)
          {
            goto LABEL_41;
          }

          if (v13 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v39) = v13;
          if (v13)
          {
            memmove(&__dst, v15, v13);
            *(&__dst + v14) = 0;
            v17 = a2[1];
            v16 = a2[2];
            if (v17 >= v16)
            {
LABEL_28:
              v19 = *a2;
              v20 = v17 - *a2;
              v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3) + 1;
              if (v21 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v19) >> 3);
              if (2 * v22 > v21)
              {
                v21 = 2 * v22;
              }

              if (v22 >= 0x555555555555555)
              {
                v23 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v23 = v21;
              }

              if (v23)
              {
                if (v23 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v24 = 8 * (v20 >> 3);
              *v24 = __dst;
              *(v24 + 16) = v39;
              v18 = v24 + 24;
              memcpy((v24 - v20), v19, v20);
              *a2 = (8 * (v20 >> 3) - v20);
              a2[2] = 0;
              if (v19)
              {
                operator delete(v19);
              }

              goto LABEL_39;
            }
          }

          else
          {
            LOBYTE(__dst) = 0;
            v17 = a2[1];
            v16 = a2[2];
            if (v17 >= v16)
            {
              goto LABEL_28;
            }
          }

          *v17 = __dst;
          *(v17 + 2) = v39;
          v18 = (v17 + 24);
LABEL_39:
          a2[1] = v18;
          if (!sub_32BB58(&v40))
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

void sub_344A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    sub_1A104(v22);
    _Unwind_Resume(a1);
  }

  sub_1A104(v22);
  _Unwind_Resume(a1);
}

BOOL sub_344AB4@<W0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = &a1[1][*a1];
  v17 = *a1;
  v18 = v3;
  v19 = 0x2C700000000;
  while (1)
  {
    result = sub_32BB58(&v17);
    if (!result)
    {
      return result;
    }

    if (v19 == 1)
    {
      v8 = sub_32BDF0(&v17, v18);
      v9 = v8;
      v10 = v17;
      v17 += v8;
      if (v17 > v18)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v14 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v16) = v8;
      if (v8)
      {
        memmove(&v15, v10, v8);
        *(&v15 + v9) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }
      }

      operator delete(*a2);
LABEL_15:
      *a2 = v15;
      *(a2 + 16) = v16;
    }

    else if (v19 == 3)
    {
      v5 = sub_32BDF0(&v17, v18);
      v6 = v5;
      v7 = v17;
      v17 += v5;
      if (v17 > v18)
      {
        v11 = __cxa_allocate_exception(0x40uLL);
        v12 = sub_2D390(v11, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v16) = v5;
      if (v5)
      {
        memmove(&v15, v7, v5);
        *(&v15 + v6) = 0;
        if ((*(a2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
        if ((*(a2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      operator delete(*(a2 + 24));
LABEL_10:
      *(a2 + 24) = v15;
      *(a2 + 40) = v16;
    }

    else
    {
      sub_32BC3C(&v17);
    }
  }
}

BOOL sub_344D7C@<W0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = &a1[1][*a1];
  v29 = *a1;
  v30 = v3;
  v31 = 0x2C700000000;
  while (1)
  {
    result = sub_32BB58(&v29);
    if (!result)
    {
      return result;
    }

    if (v31 == 1)
    {
      v10 = sub_32BDF0(&v29, v30);
      v11 = v29;
      v29 += v10;
      if (v29 > v30)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v22 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      v23 = v11;
      v24 = v10;
      sub_344AB4(&v23, v25);
      v12 = *(a2 + 8);
      if (v12 >= *(a2 + 16))
      {
        v17 = sub_2B1754(a2, v25);
        v18 = SHIBYTE(v28);
        *(a2 + 8) = v17;
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        operator delete(__p);
        goto LABEL_14;
      }

      v13 = *v25;
      *(v12 + 16) = v26;
      *v12 = v13;
      v25[1] = 0;
      v26 = 0;
      v25[0] = 0;
      v14 = v28;
      *(v12 + 24) = __p;
      *(v12 + 40) = v14;
      v28 = 0;
      __p = 0uLL;
      *(a2 + 8) = v12 + 48;
LABEL_14:
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }
    }

    else
    {
      if (v31 == 2)
      {
        v5 = sub_32BDF0(&v29, v30);
        v6 = v29;
        v29 += v5;
        if (v29 > v30)
        {
          v19 = __cxa_allocate_exception(0x40uLL);
          v20 = sub_2D390(v19, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
        }

        v23 = v6;
        v24 = v5;
        sub_344AB4(&v23, v25);
        v7 = *(a2 + 32);
        if (v7 >= *(a2 + 40))
        {
          v15 = sub_2B1754((a2 + 24), v25);
          v16 = SHIBYTE(v28);
          *(a2 + 32) = v15;
          if (v16 < 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v8 = *v25;
          *(v7 + 16) = v26;
          *v7 = v8;
          v25[1] = 0;
          v26 = 0;
          v25[0] = 0;
          v9 = v28;
          *(v7 + 24) = __p;
          *(v7 + 40) = v9;
          v28 = 0;
          __p = 0uLL;
          *(a2 + 32) = v7 + 48;
        }

        goto LABEL_14;
      }

      sub_32BC3C(&v29);
    }
  }
}

void sub_344FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AB28(va);
  sub_33D6EC(v4);
  _Unwind_Resume(a1);
}

BOOL sub_345034@<W0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v3 = (a2 + 8);
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = &a1[1][*a1];
  v21 = *a1;
  v22 = v4;
  v23 = 0x2C700000000;
  while (1)
  {
    result = sub_32BB58(&v21);
    if (!result)
    {
      return result;
    }

    if (v23 == 1)
    {
      v11 = sub_32BDF0(&v21, v22);
      *a2 = sub_343148(v11);
    }

    else if (v23 == 6)
    {
      v6 = sub_32BDF0(&v21, v22);
      v7 = v21;
      v21 += v6;
      if (v21 > v22)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v15 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
      }

      v16[0] = v7;
      v16[1] = v6;
      sub_344AB4(v16, __p);
      v8 = *(a2 + 16);
      if (v8 >= *(a2 + 24))
      {
        v12 = sub_2B1754(v3, __p);
        v13 = SHIBYTE(v20);
        *(a2 + 16) = v12;
        if (v13 < 0)
        {
          operator delete(v19);
          if (SHIBYTE(v18) < 0)
          {
LABEL_13:
            operator delete(__p[0]);
          }
        }

        else if (SHIBYTE(v18) < 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = *__p;
        *(v8 + 16) = v18;
        *v8 = v9;
        __p[1] = 0;
        v18 = 0;
        __p[0] = 0;
        v10 = v20;
        *(v8 + 24) = v19;
        *(v8 + 40) = v10;
        v20 = 0;
        v19 = 0uLL;
        *(a2 + 16) = v8 + 48;
        if (SHIBYTE(v18) < 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_32BC3C(&v21);
    }
  }
}

void sub_3451D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AB28(va);
  sub_33DC00(v4);
  _Unwind_Resume(a1);
}

unint64_t sub_345228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 112) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = 0u;
  v5 = (a3 + 48);
  *(a3 + 120) = 0x8000000080000000;
  *(a3 + 128) = -1;
  v6 = (a3 + 128);
  *(a3 + 144) = 0;
  v83 = (a3 + 144);
  *(a3 + 136) = -1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  v7 = *a1 + a1[1];
  *&v100 = *a1;
  *(&v100 + 1) = v7;
  v101 = 0x2C700000000;
  v8 = sub_32CCA4(&v100, 3);
  sub_84D10(v5, v8);
  while (sub_32BB58(&v100))
  {
    if (v101 > 4)
    {
      switch(v101)
      {
        case 5:
          *(a3 + 120) = sub_32C014(&v100, *(&v100 + 1));
          break;
        case 6:
          *(a3 + 124) = sub_32C014(&v100, *(&v100 + 1));
          break;
        case 7:
          if (*(a3 + 168) == 1)
          {
            goto LABEL_121;
          }

          v15 = sub_32BDF0(&v100, *(&v100 + 1));
          v16 = v100;
          *&v100 = v100 + v15;
          if (v100 > *(&v100 + 1))
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v81 = sub_2D390(exception, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
          }

          __dst = v16;
          v85 = v15;
          sub_345C34(&__dst, a2, __p);
          v17 = *(a3 + 24);
          v18 = __p[0];
          v19 = __p[1];
          v20 = ((__p[1] - __p[0]) >> 3) + ((*(a3 + 32) - v17) >> 3);
          if (v20 > (*(a3 + 40) - v17) >> 3)
          {
            if (!(v20 >> 61))
            {
              operator new();
            }

            sub_1794();
          }

          if (__p[0] != __p[1])
          {
            v21 = __p[0];
            do
            {
              sub_2B5AD0(a3 + 24, v21++);
            }

            while (v21 != v19);
          }

          *(a3 + 168) = 2;
          if (v18)
          {
            operator delete(v18);
          }

          break;
        default:
LABEL_2:
          sub_32BC3C(&v100);
          break;
      }
    }

    else
    {
      switch(v101)
      {
        case 1:
          if (*(a3 + 168) == 2)
          {
LABEL_121:
            v93 = 0;
            v99 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            memset(v88, 0, sizeof(v88));
            *__p = 0u;
            v94 = 0x8000000080000000;
            v95 = -1;
            v96 = -1;
            v97 = 0;
            v98 = 0;
            *&v99 = 0;
            BYTE8(v99) = 0;
            sub_33FD90(a3, __p);
            return sub_33D5A0(__p);
          }

          v22 = sub_32BDF0(&v100, *(&v100 + 1));
          v23 = v22;
          v24 = v100;
          *&v100 = v100 + v22;
          if (v100 > *(&v100 + 1))
          {
            v78 = __cxa_allocate_exception(0x40uLL);
            v79 = sub_2D390(v78, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
          }

          if (v22 >= 0x17)
          {
            operator new();
          }

          v86 = v22;
          if (v22)
          {
            memmove(&__dst, v24, v22);
          }

          *(&__dst + v23) = 0;
          sub_50FCC(&__dst, __p);
          v32 = *a3;
          if (*a3)
          {
            v33 = *(a3 + 8);
            v34 = *a3;
            if (v33 != v32)
            {
              v35 = *(a3 + 8);
              do
              {
                v38 = *(v35 - 3);
                v35 -= 3;
                v37 = v38;
                if (v38)
                {
                  v39 = *(v33 - 2);
                  v36 = v37;
                  if (v39 != v37)
                  {
                    v40 = *(v33 - 2);
                    do
                    {
                      v42 = *(v40 - 3);
                      v40 -= 24;
                      v41 = v42;
                      if (v42)
                      {
                        *(v39 - 2) = v41;
                        operator delete(v41);
                      }

                      v39 = v40;
                    }

                    while (v40 != v37);
                    v36 = *v35;
                  }

                  *(v33 - 2) = v37;
                  operator delete(v36);
                }

                v33 = v35;
              }

              while (v35 != v32);
              v34 = *a3;
            }

            *(a3 + 8) = v32;
            operator delete(v34);
          }

          *a3 = *__p;
          *(a3 + 16) = v88[0];
          __p[1] = 0;
          v88[0] = 0;
          __p[0] = 0;
          if (v86 < 0)
          {
            operator delete(__dst);
          }

          *(a3 + 168) = 1;
          break;
        case 3:
          v25 = sub_32BDF0(&v100, *(&v100 + 1));
          v26 = v100;
          *&v100 = v100 + v25;
          if (v100 > *(&v100 + 1))
          {
            v74 = __cxa_allocate_exception(0x40uLL);
            v75 = sub_2D390(v74, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
          }

          __dst = v26;
          v85 = v25;
          sub_344AB4(&__dst, __p);
          v27 = *(a3 + 56);
          if (v27 >= *(a3 + 64))
          {
            v30 = sub_2B1754(v5, __p);
            v31 = SHIBYTE(v88[3]);
            *(a3 + 56) = v30;
            if (v31 < 0)
            {
              operator delete(v88[1]);
              if (SHIBYTE(v88[0]) < 0)
              {
LABEL_44:
                operator delete(__p[0]);
              }
            }

            else if (SHIBYTE(v88[0]) < 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v28 = *__p;
            *(v27 + 16) = v88[0];
            *v27 = v28;
            __p[1] = 0;
            v88[0] = 0;
            __p[0] = 0;
            v29 = v88[3];
            *(v27 + 24) = *&v88[1];
            *(v27 + 40) = v29;
            memset(&v88[1], 0, 24);
            *(a3 + 56) = v27 + 48;
            if (SHIBYTE(v88[0]) < 0)
            {
              goto LABEL_44;
            }
          }

          break;
        case 4:
          v9 = sub_32BDF0(&v100, *(&v100 + 1));
          v10 = v100;
          *&v100 = v100 + v9;
          if (v100 > *(&v100 + 1))
          {
            v76 = __cxa_allocate_exception(0x40uLL);
            v77 = sub_2D390(v76, "Sub-message length of field exceeded past the end of the message.", 0x41uLL);
          }

          __dst = v10;
          v85 = v9;
          sub_344D7C(&__dst, __p);
          sub_33B9C8((a3 + 72), __p);
          v11 = v88[1];
          if (!v88[1])
          {
            goto LABEL_61;
          }

          v12 = v88[2];
          v13 = v88[1];
          if (v88[2] != v88[1])
          {
            while (1)
            {
              if (*(v12 - 1) < 0)
              {
                operator delete(*(v12 - 3));
                v14 = v12 - 6;
                if (*(v12 - 25) < 0)
                {
LABEL_17:
                  operator delete(*v14);
                }
              }

              else
              {
                v14 = v12 - 6;
                if (*(v12 - 25) < 0)
                {
                  goto LABEL_17;
                }
              }

              v12 = v14;
              if (v14 == v11)
              {
                v13 = v88[1];
                break;
              }
            }
          }

          v88[2] = v11;
          operator delete(v13);
LABEL_61:
          v43 = __p[0];
          if (__p[0])
          {
            v44 = __p[1];
            v45 = __p[0];
            if (__p[1] != __p[0])
            {
              while (1)
              {
                if (*(v44 - 1) < 0)
                {
                  operator delete(*(v44 - 3));
                  v46 = v44 - 6;
                  if (*(v44 - 25) < 0)
                  {
LABEL_69:
                    operator delete(*v46);
                  }
                }

                else
                {
                  v46 = v44 - 6;
                  if (*(v44 - 25) < 0)
                  {
                    goto LABEL_69;
                  }
                }

                v44 = v46;
                if (v46 == v43)
                {
                  v45 = __p[0];
                  break;
                }
              }
            }

            __p[1] = v43;
            operator delete(v45);
          }

          break;
        default:
          goto LABEL_2;
      }
    }
  }

  sub_3120CC((a3 + 24));
  v47 = *(a3 + 168);
  if (v47 == 2)
  {
    v71 = *(a3 + 24);
    for (i = *(a3 + 32); v71 != i; ++v71)
    {
      __p[0] = sub_31C47C(a2, *v71 & 0xFFFFFFFFFFFFLL);
      __p[1] = v73;
      sub_32114(v6, __p);
    }
  }

  else if (v47 == 1)
  {
    sub_32318(__p, a3);
    *v6 = *__p;
  }

  v48 = *a3;
  v82 = *(a3 + 8);
  if (*a3 != v82)
  {
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v88[0] = 0;
      sub_2B8B58(v48, 15, __p);
      sub_2B889C(__p);
      v49 = __p[0];
      v50 = __p[1];
      if (__p[0] != __p[1])
      {
        v51 = *(a3 + 152);
        do
        {
          v52 = *(a3 + 160);
          if (v51 < v52)
          {
            *v51 = *v49;
            v51 += 4;
          }

          else
          {
            v53 = *v83;
            v54 = v51 - *v83;
            v55 = v54 >> 2;
            v56 = (v54 >> 2) + 1;
            if (v56 >> 62)
            {
              sub_1794();
            }

            v57 = v52 - v53;
            if (v57 >> 1 > v56)
            {
              v56 = v57 >> 1;
            }

            if (v57 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v58 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v56;
            }

            if (v58)
            {
              if (!(v58 >> 62))
              {
                operator new();
              }

              sub_1808();
            }

            *(4 * v55) = *v49;
            v51 = (4 * v55 + 4);
            memcpy(0, v53, v54);
            *(a3 + 144) = 0;
            *(a3 + 152) = v51;
            *(a3 + 160) = 0;
            if (v53)
            {
              operator delete(v53);
            }
          }

          *(a3 + 152) = v51;
          ++v49;
        }

        while (v49 != v50);
        v49 = __p[0];
      }

      if (v49)
      {
        __p[1] = v49;
        operator delete(v49);
      }

      v48 += 3;
    }

    while (v48 != v82);
  }

  v59 = *(a3 + 144);
  v60 = *(a3 + 152);
  v61 = 126 - 2 * __clz((v60 - v59) >> 2);
  if (v60 == v59)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  result = sub_1C4C(v59, v60, __p, v62, 1);
  v65 = *(a3 + 144);
  v64 = *(a3 + 152);
  if (v65 != v64)
  {
    v66 = v65 + 1;
    while (v66 != v64)
    {
      v68 = *(v66 - 1);
      v67 = *v66++;
      if (v68 == v67)
      {
        v69 = v66 - 2;
        while (v66 != v64)
        {
          v70 = v67;
          v67 = *v66;
          if (v70 != *v66)
          {
            v69[1] = v67;
            ++v69;
          }

          ++v66;
        }

        if (v69 + 1 != v64)
        {
          *(a3 + 152) = v69 + 1;
        }

        return result;
      }
    }
  }

  return result;
}