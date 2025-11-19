void sub_DC5B60(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void **sub_DC5B8C(void **a1)
{
  v2 = a1[209];
  if (v2)
  {
    a1[210] = v2;
    operator delete(v2);
  }

  v3 = a1[206];
  if (v3)
  {
    do
    {
      v9 = *v3;
      v10 = v3[8];
      if (v10)
      {
        do
        {
          v11 = *v10;
          operator delete(v10);
          v10 = v11;
        }

        while (v11);
      }

      v12 = v3[6];
      v3[6] = 0;
      if (v12)
      {
        operator delete(v12);
      }

      operator delete(v3);
      v3 = v9;
    }

    while (v9);
  }

  v4 = a1[204];
  a1[204] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  sub_528AB4((a1 + 3));
  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_44FDEC(v6 - 440);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_DC5C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"DooMGuidanceModule";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 18;
  *(a2 + 16) = 25964;
  v4 = 1;
  result = sub_D0ACE4((a2 + 24), "Runtime", &v4, a1);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_DC5CE8(uint64_t a1)
{
  v2 = *(a1 + 3232);
  if (v2)
  {
    v3 = *(a1 + 3240);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5EB19C(v3 - 3200);
      }

      while (v3 != v2);
      v4 = *(a1 + 3232);
    }

    *(a1 + 3240) = v2;
    operator delete(v4);
  }

  return sub_DB048C(a1);
}

uint64_t sub_DC5D54(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_D8B2BC(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_D8B470(a1[1], a2, a3, a4);
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_DC5DBC(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_D8B5C8(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_D8B77C(a1[1], a2, a3, a4);
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_DC5E24(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_D8B8D4(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_D8BA88(a1[1], a2, a3, a4);
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_DC5E8C(uint64_t a1)
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
          v3 -= 3200;
          sub_5EB19C(v3);
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

uint64_t sub_DC5F44(uint64_t a1, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  sub_D89468((a1 + 24), a3);
  return a1;
}

void sub_DC5FB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DC5FCC(uint64_t *a1, char *a2, char *a3, int *a4)
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
  sub_DC6180(v17, a2, a3, a4);
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

void sub_DC616C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC6180(uint64_t a1, char *__s, char *a3, int *a4)
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

uint64_t sub_DC62D0(uint64_t *a1, uint64_t a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DC64AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC64C0(uint64_t a1)
{
  v2 = sub_559C9C(a1);
  bzero((v2 + 1088), 0x348uLL);
  sub_5C0A00(a1 + 1112);
  return a1;
}

void sub_DC64FC(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1088));
  sub_559E70(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DC6518(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = a2[1];
  v5 = a2[2];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F4380(a1 + 32, a2 + 4);
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  sub_5713F4(a1 + 1120, a2[140], a2[141], 0xAF8AF8AF8AF8AF8BLL * ((a2[141] - a2[140]) >> 5));
  sub_5DAD70(a1 + 1144, (a2 + 143));
  sub_D71F30(a1 + 1960, a2 + 490);
  *(a1 + 2160) = a2[270];
  sub_4E9DA4(a1 + 2168, (a2 + 271));
  sub_4E9DA4(a1 + 2608, (a2 + 326));
  *(a1 + 3048) = a2[381];
  v7 = *(a2 + 191);
  v8 = *(a2 + 192);
  *(a1 + 3084) = *(a2 + 3084);
  *(a1 + 3072) = v8;
  *(a1 + 3056) = v7;
  sub_99A14((a1 + 3104), a2 + 388);
  *(a1 + 3128) = a2[391];
  v9 = *(a2 + 196);
  *(a1 + 3152) = *(a2 + 3152);
  *(a1 + 3136) = v9;
  sub_5ADDC(a1 + 3160, (a2 + 395));
  sub_DAF6F0((a1 + 3200), a2 + 400);
  *(a1 + 3224) = a2[403];
  return a1;
}

void sub_DC66A8(_Unwind_Exception *a1)
{
  sub_5C010(v1 + 3160);
  sub_1A104((v1 + 3104));
  sub_44FDEC(v1 + 2608);
  sub_44FDEC(v1 + 2168);
  sub_D71D0C(v1 + 1960);
  sub_D0AA6C(v1 + 32);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_DC6748(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = **a1;
    if (v1[1] != v2)
    {
      v25 = a1;
      v26 = v1;
      v5 = v1[1];
      v6 = v5;
      v27 = v2;
      do
      {
        v9 = *(v5 - 3);
        v5 -= 3;
        v8 = v9;
        if (v9)
        {
          v29 = v5;
          v10 = *(v6 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            v28 = v6;
            while (1)
            {
              if (*(v10 - 1) < 0)
              {
                operator delete(*(v10 - 3));
                v12 = *(v10 - 13);
                if (v12)
                {
LABEL_18:
                  v15 = *(v10 - 12);
                  v16 = v12;
                  if (v15 != v12)
                  {
                    do
                    {
                      v15 = sub_3EEA68(v15 - 1096);
                    }

                    while (v15 != v12);
                    v16 = *(v10 - 13);
                  }

                  *(v10 - 12) = v12;
                  operator delete(v16);
                  v13 = v10 - 16;
                  v14 = *(v10 - 16);
                  if (!v14)
                  {
                    goto LABEL_12;
                  }

LABEL_22:
                  v17 = *(v10 - 15);
                  v11 = v14;
                  if (v17 != v14)
                  {
                    do
                    {
                      v18 = *(v17 - 3);
                      if (v18)
                      {
                        v19 = *(v17 - 2);
                        v20 = *(v17 - 3);
                        if (v19 != v18)
                        {
                          do
                          {
                            v21 = v19 - 32;
                            v22 = *(v19 - 2);
                            if (v22 != -1)
                            {
                              (off_2673F58[v22])(&v30, v19 - 32);
                            }

                            *(v19 - 2) = -1;
                            v19 -= 32;
                          }

                          while (v21 != v18);
                          v20 = *(v17 - 3);
                        }

                        *(v17 - 2) = v18;
                        operator delete(v20);
                      }

                      v23 = *(v17 - 8);
                      if (v23 != -1)
                      {
                        (off_2673F58[v23])(&v31, v17 - 7);
                      }

                      v24 = v17 - 10;
                      *(v17 - 8) = -1;
                      if (*(v17 - 57) < 0)
                      {
                        operator delete(*v24);
                      }

                      v17 -= 10;
                    }

                    while (v24 != v14);
                    v11 = *v13;
                  }

                  *(v10 - 15) = v14;
                  operator delete(v11);
                  goto LABEL_12;
                }
              }

              else
              {
                v12 = *(v10 - 13);
                if (v12)
                {
                  goto LABEL_18;
                }
              }

              v13 = v10 - 16;
              v14 = *(v10 - 16);
              if (v14)
              {
                goto LABEL_22;
              }

LABEL_12:
              v10 = v13;
              if (v13 == v8)
              {
                v6 = v28;
                v7 = *v29;
                v2 = v27;
                break;
              }
            }
          }

          *(v6 - 2) = v8;
          operator delete(v7);
          v5 = v29;
        }

        v6 = v5;
      }

      while (v5 != v2);
      v4 = **v25;
      v1 = v26;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_DC696C(uint64_t a1, uint64_t a2)
{
  sub_1757EA4(a1, 0, 0);
  sub_DC69D4(a1, a2);
  sub_1757EA4(a1 + 576, 0, 0);
  return a1;
}

uint64_t sub_DC69D4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 8);
    if ((v2 & 2) != 0)
    {
      v2 = 0;
    }

    else if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v3 = *(a2 + 8);
    if ((v3 & 2) != 0)
    {
      v3 = 0;
    }

    else if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v4 = result;
    if (v2 == v3)
    {
      sub_175C55C(result, a2);
    }

    else
    {
      sub_175C1D0(result, a2);
    }

    return v4;
  }

  return result;
}

void sub_DC6AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_60A84C(va);
  _Unwind_Resume(a1);
}

void *sub_DC6AEC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_DC6BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_DC6748(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DC6BE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 7)
    {
      v15 = v10 - a2;
      v16 = (v10 - a2) >> 7;
      if (v16 >= a5)
      {
        v20 = a5 << 7;
        v21 = v10 - (a5 << 7);
        for (i = a1[1]; v21 < v10; i += 128)
        {
          *i = 0;
          *(i + 8) = 0;
          *(i + 16) = 0;
          *i = *v21;
          *(i + 16) = *(v21 + 16);
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *(i + 24) = 0;
          *(i + 32) = 0;
          *(i + 40) = 0;
          *(i + 24) = *(v21 + 24);
          *(i + 40) = *(v21 + 40);
          *(v21 + 24) = 0;
          *(v21 + 32) = 0;
          *(v21 + 40) = 0;
          v23 = *(v21 + 48);
          v24 = *(v21 + 64);
          v25 = *(v21 + 80);
          *(i + 94) = *(v21 + 94);
          *(i + 64) = v24;
          *(i + 80) = v25;
          *(i + 48) = v23;
          v26 = *(v21 + 104);
          *(i + 120) = *(v21 + 120);
          *(i + 104) = v26;
          *(v21 + 112) = 0;
          *(v21 + 120) = 0;
          *(v21 + 104) = 0;
          v21 += 128;
        }

        a1[1] = i;
        if (v10 != a2 + (a5 << 7))
        {
          v27 = v10 - 128;
          v28 = a2 + v20 - v10;
          v29 = v10 - 128 - v20;
          do
          {
            sub_D7A6D4(v27, v29);
            v27 -= 128;
            v29 -= 128;
            v28 += 128;
          }

          while (v28);
        }

        v30 = 0;
        v31 = v7 + (a5 << 7);
        do
        {
          v35 = v5 + v30;
          if (v7 == v5)
          {
            v32 = *(v7 + v30 + 48);
            v33 = *(v7 + v30 + 64);
            v34 = *(v7 + v30 + 80);
            *(v35 + 94) = *(v7 + v30 + 94);
            *(v35 + 64) = v33;
            *(v35 + 80) = v34;
            *(v35 + 48) = v32;
          }

          else
          {
            v36 = v7 + v30;
            sub_9FD394((v5 + v30), *(v7 + v30), *(v7 + v30 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v7 + v30 + 8) - *(v7 + v30)) >> 4));
            sub_DB7DB4((v35 + 24), *(v36 + 24), *(v36 + 32), 0xE21A291C077975B9 * ((*(v36 + 32) - *(v36 + 24)) >> 3));
            v37 = *(v7 + v30 + 48);
            v38 = *(v7 + v30 + 64);
            v39 = *(v7 + v30 + 80);
            *(v35 + 94) = *(v7 + v30 + 94);
            *(v35 + 64) = v38;
            *(v35 + 80) = v39;
            *(v35 + 48) = v37;
            v40 = (v7 + v30 + 104);
            v41 = *(v7 + v30 + 127);
            if (*(v35 + 127) < 0)
            {
              if (v41 >= 0)
              {
                v43 = (v36 + 104);
              }

              else
              {
                v43 = *v40;
              }

              if (v41 >= 0)
              {
                v44 = *(v36 + 127);
              }

              else
              {
                v44 = *(v36 + 112);
              }

              sub_13B38(v35 + 104, v43, v44);
            }

            else if ((*(v7 + v30 + 127) & 0x80) != 0)
            {
              sub_13A68((v35 + 104), *v40, *(v7 + v30 + 112));
            }

            else
            {
              v42 = *v40;
              *(v35 + 120) = *(v36 + 120);
              *(v35 + 104) = v42;
            }
          }

          v30 += 128;
        }

        while (v7 + v30 != v31);
      }

      else
      {
        v18 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v19 = a1[1];
          a1[1] = v10;
          if (v16 < 1)
          {
            return v5;
          }
        }

        else
        {
          v51 = 0;
          do
          {
            sub_CE37CC(v10 + v51, v18 + v51);
            v51 += 128;
          }

          while (v18 + v51 != a4);
          v19 = v10 + v51;
          a1[1] = v10 + v51;
          if (v16 < 1)
          {
            return v5;
          }
        }

        v52 = a5 << 7;
        v53 = v19 - (a5 << 7);
        for (j = v19; v53 < v10; j += 128)
        {
          *j = 0;
          *(j + 8) = 0;
          *(j + 16) = 0;
          *j = *v53;
          *(j + 16) = *(v53 + 16);
          *v53 = 0;
          *(v53 + 8) = 0;
          *(v53 + 16) = 0;
          *(j + 24) = 0;
          *(j + 32) = 0;
          *(j + 40) = 0;
          *(j + 24) = *(v53 + 24);
          *(j + 40) = *(v53 + 40);
          *(v53 + 24) = 0;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0;
          v55 = *(v53 + 48);
          v56 = *(v53 + 64);
          v57 = *(v53 + 80);
          *(j + 94) = *(v53 + 94);
          *(j + 64) = v56;
          *(j + 80) = v57;
          *(j + 48) = v55;
          v58 = *(v53 + 104);
          *(j + 120) = *(v53 + 120);
          *(j + 104) = v58;
          *(v53 + 112) = 0;
          *(v53 + 120) = 0;
          *(v53 + 104) = 0;
          v53 += 128;
        }

        a1[1] = j;
        if (v19 != v5 + (a5 << 7))
        {
          v59 = v19 - 128;
          v60 = v5 + v52 - v19;
          v61 = v19 - 128 - v52;
          do
          {
            sub_D7A6D4(v59, v61);
            v59 -= 128;
            v61 -= 128;
            v60 += 128;
          }

          while (v60);
        }

        if (v10 != v5)
        {
          v62 = 0;
          do
          {
            v66 = v5 + v62;
            if (v7 == v5)
            {
              v63 = *(v7 + v62 + 48);
              v64 = *(v7 + v62 + 64);
              v65 = *(v7 + v62 + 80);
              *(v66 + 94) = *(v7 + v62 + 94);
              *(v66 + 64) = v64;
              *(v66 + 80) = v65;
              *(v66 + 48) = v63;
            }

            else
            {
              v67 = v7 + v62;
              sub_9FD394((v5 + v62), *(v7 + v62), *(v7 + v62 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v7 + v62 + 8) - *(v7 + v62)) >> 4));
              sub_DB7DB4((v66 + 24), *(v67 + 24), *(v67 + 32), 0xE21A291C077975B9 * ((*(v67 + 32) - *(v67 + 24)) >> 3));
              v68 = *(v7 + v62 + 48);
              v69 = *(v7 + v62 + 64);
              v70 = *(v7 + v62 + 80);
              *(v66 + 94) = *(v7 + v62 + 94);
              *(v66 + 64) = v69;
              *(v66 + 80) = v70;
              *(v66 + 48) = v68;
              v71 = (v7 + v62 + 104);
              v72 = *(v7 + v62 + 127);
              if (*(v66 + 127) < 0)
              {
                if (v72 >= 0)
                {
                  v74 = (v67 + 104);
                }

                else
                {
                  v74 = *v71;
                }

                if (v72 >= 0)
                {
                  v75 = *(v67 + 127);
                }

                else
                {
                  v75 = *(v67 + 112);
                }

                sub_13B38(v66 + 104, v74, v75);
              }

              else if ((*(v7 + v62 + 127) & 0x80) != 0)
              {
                sub_13A68((v66 + 104), *v71, *(v7 + v62 + 112));
              }

              else
              {
                v73 = *v71;
                *(v66 + 120) = *(v67 + 120);
                *(v66 + 104) = v73;
              }
            }

            v62 += 128;
          }

          while (v7 + v62 != v18);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 7);
      if (v12 >> 57)
      {
        sub_1794();
      }

      v13 = v9 - v11;
      if (v13 >> 6 > v12)
      {
        v12 = v13 >> 6;
      }

      if (v13 >= 0x7FFFFFFFFFFFFF80)
      {
        v14 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v80 = a1;
      if (v14)
      {
        if (!(v14 >> 57))
        {
          operator new();
        }

        sub_1808();
      }

      v45 = (a2 - v11) >> 7 << 7;
      __p = 0;
      v77 = v45;
      v78 = v45;
      v79 = 0;
      v46 = a5 << 7;
      v47 = v45 + (a5 << 7);
      do
      {
        sub_CE37CC(v45, v7);
        v45 += 128;
        v7 += 128;
        v46 -= 128;
      }

      while (v46);
      v78 = v47;
      v5 = sub_DC71C4(a1, &__p, v5);
      v49 = v77;
      for (k = v78; v78 != v49; k = v78)
      {
        v78 = k - 128;
        sub_60B38C(k - 128);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_DC7168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

void sub_DC717C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v2 - 128;
    v7 = -v4;
    do
    {
      sub_60B38C(v6);
      v6 -= 128;
      v7 += 128;
    }

    while (v7);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_DC71AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC71C4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      v12 = *(v9 + 80);
      *(v8 + 94) = *(v9 + 94);
      *(v8 + 64) = v11;
      *(v8 + 80) = v12;
      *(v8 + 48) = v10;
      v13 = *(v9 + 104);
      *(v8 + 120) = *(v9 + 120);
      *(v8 + 104) = v13;
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v9 + 104) = 0;
      v9 += 128;
      v8 += 128;
    }

    while (v9 != v7);
    v14 = a3;
    do
    {
      sub_60B38C(v14);
      v14 += 128;
    }

    while (v14 != v7);
  }

  v15 = *a1;
  v16 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v17 = v16 + v15 - a3;
  if (v15 != a3)
  {
    v18 = v15;
    v19 = v16 + v15 - a3;
    do
    {
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *v19 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 24) = *(v18 + 24);
      *(v19 + 40) = *(v18 + 40);
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v22 = *(v18 + 80);
      *(v19 + 94) = *(v18 + 94);
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      *(v19 + 48) = v20;
      v23 = *(v18 + 104);
      *(v19 + 120) = *(v18 + 120);
      *(v19 + 104) = v23;
      *(v18 + 112) = 0;
      *(v18 + 120) = 0;
      *(v18 + 104) = 0;
      v18 += 128;
      v19 += 128;
    }

    while (v18 != a3);
    do
    {
      sub_60B38C(v15);
      v15 += 128;
    }

    while (v15 != a3);
  }

  a2[1] = v17;
  v24 = *a1;
  *a1 = v17;
  a1[1] = v24;
  a2[1] = v24;
  v25 = a1[1];
  a1[1] = a2[2];
  a2[2] = v25;
  v26 = a1[2];
  a1[2] = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return v6;
}

void sub_DC73A8(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_D71E14(a1, *a3, a3[1], 0x6FB586FB586FB587 * ((a3[1] - *a3) >> 3));
  sub_E78844((a1 + 3));
}

void sub_DC7630(_Unwind_Exception *a1)
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

void sub_DC76A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x147AE147AE147BLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_DC77C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v13 = v10 + v11 - 3200;
    v14 = -v11;
    do
    {
      v13 = sub_5EB19C(v13) - 3200;
      v14 += 3200;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_DC7830(&a9);
  _Unwind_Resume(a1);
}

void ***sub_DC7830(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5EB19C(v4 - 3200);
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

void sub_DC78A8()
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
  xmmword_27B8A30 = 0u;
  unk_27B8A40 = 0u;
  dword_27B8A50 = 1065353216;
  sub_3A9A34(&xmmword_27B8A30, v0);
  sub_3A9A34(&xmmword_27B8A30, v3);
  sub_3A9A34(&xmmword_27B8A30, __p);
  sub_3A9A34(&xmmword_27B8A30, v9);
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
    qword_27B89D8 = 0;
    qword_27B89E0 = 0;
    qword_27B89D0 = 0;
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

void sub_DC7CC0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (byte_27B8B17 < 0)
  {
    sub_21E4A24();
  }

  sub_21E4A44(a1, a2, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_DC7CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B89E8)
  {
    qword_27B89F0 = qword_27B89E8;
    operator delete(qword_27B89E8);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_DC7DB4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  sub_7E9A4(&v6);
  v4 = *sub_3B8500(v2);
  sub_DEB870(5, v3, v2);
  sub_DCEBCC(&v5, v3, 5u, v4, v2);
}

void sub_DCDE44(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2733B28);
  if (*(v1 + 2135) < 0)
  {
    operator delete(*(v2 - 208));
  }

  sub_1959728(&STACK[0x3890]);
  sub_D7A354(&STACK[0x36B0]);
  sub_D3C228(&STACK[0x23D8]);
  if (*(v1 + 2111) < 0)
  {
    operator delete(*(v2 - 232));
  }

  sub_44FD90(&STACK[0x2440]);
  sub_44D36C(&STACK[0x34E0]);
  sub_DCEA48(&STACK[0x2470]);
  sub_14CA828(&STACK[0x2C78]);
  sub_14CA828(&STACK[0x2B78]);
  sub_D9F480(&STACK[0x2D78]);
  sub_5C010(&STACK[0x2F80]);
  sub_CD5434(&STACK[0x2FA8]);
  sub_1A104(&STACK[0x30F0]);
  sub_60A84C(&STACK[0x3110]);
  sub_D71208(&STACK[0x3130]);
  sub_454784(&STACK[0x3150]);
  sub_DCEA84(&STACK[0x3188]);
  sub_44FD90(&STACK[0x31A0]);
  sub_5287C0(&STACK[0x31B8]);
  sub_CF3C94(&STACK[0x3468]);
  _Unwind_Resume(a1);
}

uint64_t sub_DCE8A4(void ***a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = (16 * ((a1[1] - *a1) >> 4));
  sub_4E3D18(v12);
  v5 = 48 * v1 + 48;
  v6 = *a1;
  v7 = a1[1];
  v8 = (v12 + *a1 - v7);
  if (v7 != *a1)
  {
    v9 = *a1;
    v10 = (v12 + *a1 - v7);
    do
    {
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      *v10 = *v9;
      v10[2] = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v10[3] = 0;
      v10[4] = 0;
      v10[5] = 0;
      *(v10 + 3) = *(v9 + 3);
      v10[5] = v9[5];
      v9[3] = 0;
      v9[4] = 0;
      v9[5] = 0;
      v9 += 6;
      v10 += 6;
    }

    while (v9 != v7);
    do
    {
      sub_D02FC8(v6);
      v6 += 6;
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v8;
  a1[1] = v5;
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5;
}

void sub_DCEA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D030CC(va);
  _Unwind_Resume(a1);
}

void ***sub_DCEA48(void ***a1)
{
  if (*a1)
  {
    sub_D714EC(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_DCEA84(uint64_t a1)
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

void sub_DCEAE8(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return;
  }

  v4 = a2[1];
  v5 = *a2;
  if (v4 != v2)
  {
    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        v6 = v4 - 6;
        v7 = *(v4 - 6);
        if (v7)
        {
LABEL_10:
          v8 = *(v4 - 5);
          v9 = v7;
          if (v8 != v7)
          {
            do
            {
              v8 = sub_4547F0(v8 - 552);
            }

            while (v8 != v7);
            v9 = *v6;
          }

          *(v4 - 5) = v7;
          operator delete(v9);
        }
      }

      else
      {
        v6 = v4 - 6;
        v7 = *(v4 - 6);
        if (v7)
        {
          goto LABEL_10;
        }
      }

      v4 = v6;
      if (v6 == v2)
      {
        v5 = *a2;
        break;
      }
    }
  }

  a2[1] = v2;

  operator delete(v5);
}

void sub_DCEBCC(__n128 *a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v19[0].n128_u64[0] = 0;
  v19[0].n128_u64[1] = &off_2669FE0;
  sub_434934(a1, v19);
  *(v10 + 48) = a2;
  v11 = sub_3B6890(a5);
  a1[5].n128_u32[2] = 0x7FFFFFFF;
  a1[3].n128_u64[1] = v11;
  a1[4].n128_u8[0] = a3;
  a1[4].n128_u64[1] = a4;
  a1[5].n128_f64[0] = -NAN;
  v19[1].n128_u8[7] = 21;
  strcpy(v19, "QueryPlanModuleRunner");
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_3AEC94(a5, v19, &__p);
  v12 = __p;
  if (__p)
  {
    v13 = v17;
    v14 = __p;
    if (v17 != __p)
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
      v14 = __p;
    }

    v17 = v12;
    operator delete(v14);
  }

  if (v19[1].n128_i8[7] < 0)
  {
    operator delete(v19[0].n128_u64[0]);
  }

  operator new();
}

void sub_DCEDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v18);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v18);
  _Unwind_Resume(a1);
}

void *sub_DCEE34(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_DCEFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DCF0F0(va);
  _Unwind_Resume(a1);
}

void sub_DCF000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  sub_DCF06C(va1);
  sub_4E3C94((v3 + v4));
  if (v4)
  {
    v6 = (v3 + v4 - 48);
    v7 = -v4;
    do
    {
      sub_D02FC8(v6);
      v6 -= 6;
      v7 += 48;
    }

    while (v7);
  }

  *(a2 + 8) = v3;
  sub_DCF0F0(va);
  _Unwind_Resume(a1);
}

void ***sub_DCF06C(void ***a1)
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
          v6 = *(v4 - 5);
          if (v6)
          {
            *(v4 - 4) = v6;
            operator delete(v6);
          }

          v4 -= 56;
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

void ***sub_DCF0F0(void ***result)
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
          v4 -= 6;
          sub_D02FC8(v4);
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

void ***sub_DCF168(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_D714EC(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

__n128 sub_DCF1B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v19 = *(a1 + 24);
  v4 = **(a1 + 40);
  v5 = **(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = **(a1 + 72);
  v9 = **(a1 + 80);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v9;
  *(a2 + 32) = v4;
  *(a2 + 36) = v5;
  *(a2 + 40) = v6;
  v10 = v7[2];
  v11 = v7[3];
  LODWORD(v3) = *(v7 + 63);
  v13 = *v7;
  v12 = v7[1];
  *(a2 + 120) = 0;
  *(a2 + 48) = v13;
  *(a2 + 111) = v3;
  *(a2 + 96) = v11;
  *(a2 + 80) = v10;
  *(a2 + 64) = v12;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v15 = *(v7 + 9);
  v14 = *(v7 + 10);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = v7[6];
  *(a2 + 160) = *(v7 + 112);
  *(a2 + 144) = v16;
  v17 = *(v7 + 120);
  *(a2 + 184) = *(v7 + 136);
  *(a2 + 168) = v17;
  sub_81988((a2 + 200), v7 + 152);
  *(a2 + 224) = v8;
  result = v19;
  *(a2 + 232) = v19;
  *(a2 + 248) = 0;
  return result;
}

void sub_DCF2E8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DCF304(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      sub_D7E910(a1 + 8, a2 + 8);
      *(a1 + 336) = *(a2 + 336);
      v4 = *(a2 + 400);
      v6 = *(a2 + 352);
      v5 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 400) = v4;
      *(a1 + 352) = v6;
      *(a1 + 368) = v5;
      v8 = *(a2 + 432);
      v7 = *(a2 + 448);
      v9 = *(a2 + 416);
      *(a1 + 462) = *(a2 + 462);
      *(a1 + 432) = v8;
      *(a1 + 448) = v7;
      *(a1 + 416) = v9;
      goto LABEL_16;
    }

    sub_D71800(a1, a1 + 8);
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

  sub_CFBFF0((a1 + 8), a2 + 8);
  *(a1 + 336) = *(a2 + 336);
  v13 = *(a2 + 352);
  v14 = *(a2 + 368);
  v15 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v15;
  *(a1 + 352) = v13;
  *(a1 + 368) = v14;
  v16 = *(a2 + 416);
  v17 = *(a2 + 432);
  v18 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v18;
  *(a1 + 416) = v16;
  *(a1 + 432) = v17;
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DCF458(uint64_t a1)
{
  v2 = *(a1 + 1784);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 1704);
  if (v3)
  {
    *(a1 + 1712) = v3;
    operator delete(v3);
  }

  if (*(a1 + 1631) < 0)
  {
    operator delete(*(a1 + 1608));
  }

  sub_615488((a1 + 1584));

  return sub_528AB4(a1);
}

uint64_t sub_DCF4C0(uint64_t a1)
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

uint64_t sub_DCF5C0(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      sub_DCF6D4(a1 + 8, a2 + 8);
      goto LABEL_16;
    }

    sub_14CA828(a1 + 264);
    sub_14CA828(a1 + 8);
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

  v4 = *(a1 + 24);
  if (v4)
  {
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
  }

  sub_CFE344(a1 + 8, a2 + 8);
  sub_CFE344(a1 + 264, a2 + 264);
  *(a1 + 520) = *(a2 + 520);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DCF6D4(uint64_t a1, uint64_t a2)
{
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
      sub_14CC448(a1, a2);
    }

    else
    {
      sub_14CC34C(a1, a2);
    }

    v6 = *(a1 + 264);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v7 = *(a2 + 264);
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v6 == v7)
    {
      sub_14CC448(a1 + 256, a2 + 256);
    }

    else
    {
      sub_14CC34C(a1 + 256, a2 + 256);
    }
  }

  *(a1 + 512) = *(a2 + 512);
  return a1;
}

uint64_t sub_DCF7CC(uint64_t a1)
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

void sub_DCF8CC()
{
  byte_27B8BCF = 3;
  LODWORD(qword_27B8BB8) = 5136193;
  byte_27B8BE7 = 3;
  LODWORD(qword_27B8BD0) = 5136194;
  byte_27B8BFF = 3;
  LODWORD(qword_27B8BE8) = 5136195;
  byte_27B8C17 = 15;
  strcpy(&qword_27B8C00, "vehicle_mass_kg");
  byte_27B8C2F = 21;
  strcpy(&xmmword_27B8C18, "vehicle_cargo_mass_kg");
  byte_27B8C47 = 19;
  strcpy(&qword_27B8C30, "vehicle_aux_power_w");
  byte_27B8C5F = 15;
  strcpy(&qword_27B8C48, "dcdc_efficiency");
  strcpy(&qword_27B8C60, "drive_train_efficiency");
  HIBYTE(word_27B8C76) = 22;
  operator new();
}

void sub_DCFCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B8B78)
  {
    qword_27B8B80 = qword_27B8B78;
    operator delete(qword_27B8B78);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_DCFDC8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  sub_3B8500(v3);
  sub_DEBA00(7, v5, v4);
  sub_7E9A4(v90);
  v88 = 0;
  v87 = 0;
  v89 = 0;
  v61 = 0u;
  v62 = 0;
  v63 = 0x7FFFFFFFFFFFFFFFLL;
  v64 = 0x8000000080000000;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  *&v6 = 0x8000000080000000;
  *(&v6 + 1) = 0x8000000080000000;
  v80 = 0u;
  v81 = v6;
  v82 = v6;
  v65 = 0x7FFFFFFF;
  v83 = 5;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v59 = 0;
  v58 = 0;
  v60 = 0;
  sub_E867B8(v5, v57);
  v7 = sub_394BD0();
  sub_4FC024(3, v7, v57);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v35 = -1;
  v36 = 0x7FFFFFFF;
  v37 = -1;
  v38 = -1;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  v40 = 0;
  v41 = -1935635296;
  v42[0] = 0;
  *(v42 + 7) = 0;
  memset(&v42[2], 0, 24);
  v43 = 0;
  v44 = 0x7FFFFFFFFFFFFFFFLL;
  v45 = 100;
  v47 = 0;
  v46 = 0;
  v48 = vnegq_f64(v8);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v55 = 0;
  v54 = 1;
  v56 = 0;
  sub_E86CA0(v31);
  sub_4E3D18(v28);
  sub_D33C84(&__t, v5, 7, v4);
  sub_D32E24(&__t, v24);
  if (v24[0])
  {
    __t.__d_.__rep_ = v5;
    LODWORD(v92) = 3;
    v93 = v4;
    LOBYTE(__p) = sub_E88F70(&__t);
    *v95 = 0;
    sub_D11BD4(&__t, v23);
  }

  sub_DD41B8(&__dst, &v25);
  sub_D876F8(&__t, &__dst);
  v9 = *(v2 + 24);
  if (!v9)
  {
    sub_2B7420();
  }

  (*(*v9 + 48))(v9, &__t);
  sub_14D4598(&v96);
  sub_14D4598(&__t);
  sub_14D4598(&__dst);
  if ((v24[0] & 1) == 0)
  {
    v10 = v26;
    if (v26)
    {
      v11 = v27;
      v12 = v26;
      if (v27 != v26)
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 3));
          }

          v11 -= 4;
        }

        while (v11 != v10);
        v12 = v26;
      }

      v27 = v10;
      operator delete(v12);
    }
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  v13 = v28[0];
  if (v28[0])
  {
    v14 = v28[1];
    v15 = v28[0];
    if (v28[1] != v28[0])
    {
      do
      {
        v14 = sub_4547F0(v14 - 552);
      }

      while (v14 != v13);
      v15 = v28[0];
    }

    v28[1] = v13;
    operator delete(v15);
  }

  if (v34)
  {
    operator delete(v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  sub_49AEC0(&v35);
  sub_5287C0(v57);
  v16 = v58;
  if (v58)
  {
    v17 = v59;
    v18 = v58;
    if (v59 != v58)
    {
      do
      {
        v17 = sub_60DD90(v17 - 376);
      }

      while (v17 != v16);
      v18 = v58;
    }

    v59 = v16;
    operator delete(v18);
  }

  sub_60DD90(&v61);
  v19 = v87;
  if (v87)
  {
    v20 = v88;
    v21 = v87;
    if (v88 != v87)
    {
      do
      {
        v20 = sub_60DD90(v20 - 376);
      }

      while (v20 != v19);
      v21 = v87;
    }

    v88 = v19;
    operator delete(v21);
  }
}

void sub_DD39BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(STACK[0x1050]);
  }

  sub_1959728(&STACK[0xCB0]);
  sub_14D4598(&STACK[0xB58]);
  sub_D9F480(va);
  sub_CF4478(&STACK[0x250]);
  sub_D130AC(&STACK[0x328]);
  sub_CD6274(&STACK[0x388]);
  sub_454784(&STACK[0x3C0]);
  sub_44D36C(&STACK[0x3F8]);
  sub_49AEC0(&STACK[0x4A8]);
  sub_5287C0(&STACK[0x598]);
  sub_60E03C(&STACK[0x848]);
  sub_60DD90(&STACK[0x860]);
  sub_60E03C(&STACK[0x9D8]);
  _Unwind_Resume(a1);
}

uint64_t sub_DD41B8(uint64_t a1, void (****a2)(std::error_category *__hidden this))
{
  sub_14D4048(a1, 0, 0);
  if (a2[1] != &off_2669FE0)
  {
    v4 = *a2;
    goto LABEL_29;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v23);
    v5 = sub_4A5C(&v23, "SubError: ", 10);
    std::error_condition::message(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v5, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = v33;
      if ((v33 & 0x10) == 0)
      {
LABEL_12:
        if ((v8 & 8) == 0)
        {
          v9 = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_23:
          __p.__r_.__value_.__s.__data_[v9] = 0;
          sub_7E854(&__p, 3u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v31 < 0)
          {
            operator delete(v30);
          }

          std::locale::~locale(&v25);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_28;
        }

        v11 = v26;
        v9 = v27 - v26;
        if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_56:
          sub_3244();
        }

LABEL_18:
        if (v9 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v9;
        if (v9)
        {
          memmove(&__p, v11, v9);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v8 = v33;
      if ((v33 & 0x10) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v10 = v29;
    }

    v11 = v28;
    v9 = v10 - v28;
    if (v10 - v28 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_56;
    }

    goto LABEL_18;
  }

LABEL_28:
  v4 = sub_EC7E5C(*a2);
LABEL_29:
  *(a1 + 40) |= 0x20u;
  *(a1 + 160) = v4;
  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v23);
  v13 = sub_4A5C(&v23, "ETARequest: ", 12);
  v14 = sub_74700();
  v15 = sub_73F1C(v14);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  sub_4A5C(v13, v17, v18);
  if ((v33 & 0x10) != 0)
  {
    v20 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v20 = v29;
    }

    v21 = v28;
    v19 = v20 - v28;
    if (v20 - v28 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_54:
      sub_3244();
    }

LABEL_42:
    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__p, v21, v19);
    }

    goto LABEL_47;
  }

  if ((v33 & 8) != 0)
  {
    v21 = v26;
    v19 = v27 - v26;
    if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_54;
    }

    goto LABEL_42;
  }

  v19 = 0;
  *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_47:
  __p.__r_.__value_.__s.__data_[v19] = 0;
  sub_7E854(&__p, 3u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_DD46EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_14D4598(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_14D4598(v15);
  _Unwind_Resume(a1);
}

void sub_DD47B4(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x51B3BEA3677D46CFLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 376 * a2;
      *&v10 = 0x8000000080000000;
      *(&v10 + 1) = 0x8000000080000000;
      do
      {
        *(v3 + 320) = 0;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(v3 + 32) = 0x8000000080000000;
        *(v3 + 40) = 0x7FFFFFFF;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 112) = 0uLL;
        *(v3 + 112) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 144) = 0uLL;
        *(v3 + 144) = 0uLL;
        *(v3 + 160) = 0uLL;
        *(v3 + 160) = 0uLL;
        *(v3 + 176) = 0uLL;
        *(v3 + 176) = 0uLL;
        *(v3 + 192) = 0uLL;
        *(v3 + 192) = 0uLL;
        *(v3 + 208) = 0uLL;
        *(v3 + 208) = 0uLL;
        *(v3 + 224) = 0uLL;
        *(v3 + 224) = 0uLL;
        *(v3 + 240) = 0uLL;
        *(v3 + 240) = 0uLL;
        *(v3 + 256) = 0uLL;
        *(v3 + 256) = 0uLL;
        *(v3 + 272) = 0uLL;
        *(v3 + 272) = 0uLL;
        *(v3 + 288) = 0uLL;
        *(v3 + 288) = v10;
        *(v3 + 304) = 0uLL;
        *(v3 + 304) = v10;
        *(v3 + 320) = 5;
        v11 = (v3 + 328);
        *(v3 + 344) = 0uLL;
        *(v3 + 360) = 0uLL;
        v3 += 376;
        *v11 = 0uLL;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x51B3BEA3677D46CFLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAE4C415C9882B9)
    {
      sub_1794();
    }

    v7 = 0x51B3BEA3677D46CFLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x572620AE4C415CLL)
    {
      v8 = 0xAE4C415C9882B9;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAE4C415C9882B9)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 376 * v5;
    v13 = 376 * v5 + 376 * a2;
    *&v14 = 0x8000000080000000;
    *(&v14 + 1) = 0x8000000080000000;
    v15 = 376 * v5;
    do
    {
      *(v15 + 320) = 0;
      *(v15 + 32) = 0uLL;
      *(v15 + 48) = 0uLL;
      *v15 = 0uLL;
      *(v15 + 16) = 0uLL;
      *(v15 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(v15 + 32) = 0x8000000080000000;
      *(v15 + 40) = 0x7FFFFFFF;
      *(v15 + 48) = 0uLL;
      *(v15 + 64) = 0uLL;
      *(v15 + 64) = 0uLL;
      *(v15 + 80) = 0uLL;
      *(v15 + 80) = 0uLL;
      *(v15 + 96) = 0uLL;
      *(v15 + 96) = 0uLL;
      *(v15 + 112) = 0uLL;
      *(v15 + 112) = 0uLL;
      *(v15 + 128) = 0uLL;
      *(v15 + 128) = 0uLL;
      *(v15 + 144) = 0uLL;
      *(v15 + 144) = 0uLL;
      *(v15 + 160) = 0uLL;
      *(v15 + 160) = 0uLL;
      *(v15 + 176) = 0uLL;
      *(v15 + 176) = 0uLL;
      *(v15 + 192) = 0uLL;
      *(v15 + 192) = 0uLL;
      *(v15 + 208) = 0uLL;
      *(v15 + 208) = 0uLL;
      *(v15 + 224) = 0uLL;
      *(v15 + 224) = 0uLL;
      *(v15 + 240) = 0uLL;
      *(v15 + 240) = 0uLL;
      *(v15 + 256) = 0uLL;
      *(v15 + 256) = 0uLL;
      *(v15 + 272) = 0uLL;
      *(v15 + 272) = 0uLL;
      *(v15 + 288) = 0uLL;
      *(v15 + 288) = v14;
      *(v15 + 304) = 0uLL;
      *(v15 + 304) = v14;
      *(v15 + 320) = 5;
      v16 = (v15 + 328);
      *(v15 + 344) = 0uLL;
      *(v15 + 360) = 0uLL;
      v15 += 376;
      *v16 = 0uLL;
    }

    while (v15 != v13);
    v17 = *a1;
    v18 = a1[1];
    v19 = v12 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = *a1;
      v21 = v12 + *a1 - v18;
      do
      {
        sub_D8AF48(v21, v20);
        v20 += 376;
        v21 = v22 + 376;
      }

      while (v20 != v18);
      do
      {
        sub_60DD90(v17);
        v17 += 376;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = v13;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_DD4A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  sub_3B8500(a9);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_FF3DEC(a7, a8, 0);
  v15 = a7[51];
  if (!v15)
  {
    v15 = &off_2774478;
  }

  v16 = sub_100E6AC(*(v15 + 6));
  v17 = 0;
  sub_DD6044(v18, a7, a2, a3, a4, &v17, 1, a8, a9, v16);
}

void sub_DD5E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a52);
  sub_DD6D24(v52 - 160);
  sub_D3C228(&a19);
  sub_D02B88(&a32);
  a52 = &a49;
  sub_DC1694(&a52);
  sub_CEBCA0(&STACK[0x250]);
  sub_DAAEFC(&STACK[0x4D0]);
  sub_60E03C(a12);
  _Unwind_Resume(a1);
}

void sub_DD5FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_DAAEFC(&STACK[0x4D0]);
  sub_60E03C(a12);
  _Unwind_Resume(a1);
}

void sub_DD6044(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_E82258(a2, a9, a1 + 128);
  *(a1 + 176) = a8;
  *(a1 + 184) = a7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a9;
  *(a1 + 216) = a10;
  *(a1 + 224) = sub_E82FA0(a2);
  *(a1 + 232) = *a6;
  v15 = sub_3B6890(*(a1 + 208));
  v16 = *v15;
  *(a1 + 140) = *(v15 + 8);
  *(a1 + 132) = v16;
  sub_1019024();
}

void sub_DD65C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  v53 = *v51;
  if (*v51)
  {
    *(v51 + 8) = v53;
    operator delete(v53);
  }

  *(v48 + 64) = v51;
  sub_D78EB0(&__p);
  sub_D78EB0(&a48);
  v54 = *(v48 + 104);
  if (v54)
  {
    *(v48 + 112) = v54;
    operator delete(v54);
  }

  sub_5ECEBC(v50);
  sub_39393C((v48 + 56));
  sub_39393C(v49);
  v55 = *v48;
  if (*v48)
  {
    *(v48 + 8) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void sub_DD66A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_DD682C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DC1694(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DD687C(uint64_t a1)
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
        v4 -= 3;
        sub_DCEAE8(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t *sub_DD68E4(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = sub_3B2E6C(a4);
  sub_2C1B08(v10, v8);
  v16 = 1;
  sub_E84AEC(a3, v10, (a1 + 3));
  if (v16 == 1)
  {
    if (v15 < 0)
    {
      operator delete(__p);
      if ((v13 & 0x80000000) == 0)
      {
LABEL_4:
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_8:
        operator delete(v10[0]);
        goto LABEL_5;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_5:
  a1[17] = a4;
  sub_60BAC4(a1, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  sub_DD6A28(*a2, a2[1], a1);
  return a1;
}

void sub_DD69D8(_Unwind_Exception *a1)
{
  sub_5285C8((v1 + 3));
  sub_60A84C(v1);
  _Unwind_Resume(a1);
}

void sub_DD69F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D71D80(&a9);
  sub_60A84C(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_DD6A28(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 3)
    {
      v7 = *i;
      if (*i == i[1])
      {
        v35 = 0u;
        *v36 = 0u;
        v34 = 0u;
        *__p = 0u;
        memset(v33, 0, sizeof(v33));
        *&v36[16] = 0xFFFFFFFFLL;
        v37 = 0uLL;
        v38 = 0;
        v12 = a3[1];
        if (v12 < a3[2])
        {
LABEL_9:
          *(v12 + 16) = 0;
          *(v12 + 24) = 0;
          *v12 = 0;
          *(v12 + 8) = 0;
          *v12 = *__p;
          *(v12 + 16) = v33[0];
          __p[0] = 0;
          __p[1] = 0;
          v33[0] = 0;
          *(v12 + 32) = 0;
          *(v12 + 40) = 0;
          *(v12 + 24) = *&v33[1];
          *(v12 + 40) = v33[3];
          memset(&v33[1], 0, 24);
          v13 = v34;
          v14 = v35;
          v15 = *v36;
          *(v12 + 94) = *&v36[14];
          *(v12 + 64) = v14;
          *(v12 + 80) = v15;
          *(v12 + 48) = v13;
          v16 = v37;
          *(v12 + 120) = v38;
          *(v12 + 104) = v16;
          v38 = 0;
          v37 = 0uLL;
          a3[1] = v12 + 128;
          v17 = v33[1];
          if (v33[1])
          {
            goto LABEL_14;
          }

          goto LABEL_18;
        }
      }

      else
      {
        *__p = *v7;
        v33[0] = *(v7 + 16);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *&v33[1] = *(v7 + 24);
        v33[3] = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        v8 = *(v7 + 48);
        v9 = *(v7 + 64);
        v10 = *(v7 + 80);
        *&v36[14] = *(v7 + 94);
        v35 = v9;
        *v36 = v10;
        v34 = v8;
        v11 = *(v7 + 104);
        v38 = *(v7 + 120);
        v37 = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 120) = 0;
        v12 = a3[1];
        if (v12 < a3[2])
        {
          goto LABEL_9;
        }
      }

      v18 = sub_60BC14(a3, __p);
      v19 = SHIBYTE(v38);
      a3[1] = v18;
      if (v19 < 0)
      {
        operator delete(v37);
        v17 = v33[1];
        if (v33[1])
        {
LABEL_14:
          v20 = v33[2];
          v21 = v17;
          if (v33[2] != v17)
          {
            do
            {
              v20 = sub_3EEA68(v20 - 1096);
            }

            while (v20 != v17);
            v21 = v33[1];
          }

          v33[2] = v17;
          operator delete(v21);
        }
      }

      else
      {
        v17 = v33[1];
        if (v33[1])
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      v22 = __p[0];
      if (__p[0])
      {
        v23 = __p[1];
        v6 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v24 = *(v23 - 3);
            if (v24)
            {
              v25 = *(v23 - 2);
              v26 = *(v23 - 3);
              if (v25 != v24)
              {
                do
                {
                  v27 = v25 - 32;
                  v28 = *(v25 - 8);
                  if (v28 != -1)
                  {
                    (off_2673FD0[v28])(v39, v25 - 32);
                  }

                  *(v25 - 8) = -1;
                  v25 -= 32;
                }

                while (v27 != v24);
                v26 = *(v23 - 3);
              }

              *(v23 - 2) = v24;
              operator delete(v26);
            }

            v29 = *(v23 - 8);
            if (v29 != -1)
            {
              (off_2673FD0[v29])(v39, v23 - 7);
            }

            v30 = (v23 - 10);
            *(v23 - 8) = -1;
            if (*(v23 - 57) < 0)
            {
              operator delete(*v30);
            }

            v23 -= 10;
          }

          while (v30 != v22);
          v6 = __p[0];
        }

        __p[1] = v22;
        operator delete(v6);
      }
    }
  }

  return a3;
}

void sub_DD6D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DD6D24(uint64_t a1)
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
          v3 -= 376;
          sub_60DD90(v3);
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

uint64_t sub_DD6DDC(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    sub_5ED940(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  sub_419B60(a1 + 32, (a2 + 32));
  *(a1 + 320) = *(a2 + 320);
  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = *(a1 + 336);
    v6 = *(a1 + 328);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *(a1 + 328);
    }

    *(a1 + 336) = v4;
    operator delete(v6);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  v7 = *(a1 + 352);
  if (v7)
  {
    for (i = *(a1 + 360); i != v7; sub_5EBD80(a1 + 352, i))
    {
      i -= 1120;
    }

    *(a1 + 360) = v7;
    operator delete(*(a1 + 352));
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  return a1;
}

uint64_t sub_DD6F10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "SARReferencePointComputationModuleInput", 0x27uLL);
  LOBYTE(v16) = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D0ACE4((a2 + 24), "Runtime", &v16, a1);
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v16, a1);
    v5 = v4 + 48;
  }

  *(a2 + 32) = v5;
  v17 = 7;
  v6 = a1[1];
  v7 = v6 / 100;
  v8 = v6 % 100;
  if (v6 < 0)
  {
    v9 = -50;
  }

  else
  {
    v9 = 50;
  }

  v16 = v7 + (((5243 * (v9 + v8)) >> 19) + ((5243 * (v9 + v8)) >> 31));
  if (v5 >= *(a2 + 40))
  {
    v10 = sub_DD7224((a2 + 24), "UserRouteLength", &v17, &v16);
  }

  else
  {
    sub_DD73D8(v5, "UserRouteLength", &v17, &v16);
    v10 = v5 + 48;
  }

  *(a2 + 32) = v10;
  v17 = 7;
  v11 = a1[2];
  v12 = v11 / 100;
  v13 = v11 % 100;
  if (v11 < 0)
  {
    v14 = -50;
  }

  else
  {
    v14 = 50;
  }

  v16 = v12 + (((5243 * (v14 + v13)) >> 19) + ((5243 * (v14 + v13)) >> 31));
  if (v10 >= *(a2 + 40))
  {
    result = sub_DD7528((a2 + 24), "ComputedReferencePointDistance", &v17, &v16);
    *(a2 + 32) = result;
  }

  else
  {
    sub_DD76DC(v10, "ComputedReferencePointDistance", &v17, &v16);
    result = v10 + 48;
    *(a2 + 32) = v10 + 48;
  }

  return result;
}

void sub_DD712C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DD7188(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_49AEC0((a1 + 8));
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

uint64_t sub_DD7224(uint64_t *a1, char *a2, char *a3, void *a4)
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
  sub_DD73D8(v17, a2, a3, a4);
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

void sub_DD73C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DD73D8(uint64_t a1, char *__s, char *a3, void *a4)
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

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DD7528(uint64_t *a1, char *a2, char *a3, void *a4)
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
  sub_DD76DC(v17, a2, a3, a4);
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

void sub_DD76C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DD76DC(uint64_t a1, char *__s, char *a3, void *a4)
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

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

void ***sub_DD782C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_60DD90(v4 - 376);
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

uint64_t sub_DD78A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_5EFB28(a1, *a2, *(a2 + 8), 0x86BCA1AF286BCA1BLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = *(a2 + 24);
  sub_3EDCF4(a1 + 32, (a2 + 32));
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  sub_5CEC4C(a1 + 328, *(a2 + 328), *(a2 + 336), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 336) - *(a2 + 328)) >> 5));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  sub_5713F4(a1 + 352, *(a2 + 352), *(a2 + 360), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 360) - *(a2 + 352)) >> 5));
  return a1;
}

void sub_DD7970(_Unwind_Exception *a1)
{
  sub_5C0ED8((v1 + 328));
  sub_3EE9A4((v1 + 32));
  sub_593FC8(v1);
  _Unwind_Resume(a1);
}

void **sub_DD79B0(void **a1)
{
  sub_60DD90((a1 + 6));
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_60DD90(v3 - 376);
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_60DD90(v6 - 376);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_DD7A4C()
{
  byte_27B8CFF = 3;
  LODWORD(qword_27B8CE8) = 5136193;
  byte_27B8D17 = 3;
  LODWORD(qword_27B8D00) = 5136194;
  byte_27B8D2F = 3;
  LODWORD(qword_27B8D18) = 5136195;
  byte_27B8D47 = 15;
  strcpy(&qword_27B8D30, "vehicle_mass_kg");
  byte_27B8D5F = 21;
  strcpy(&xmmword_27B8D48, "vehicle_cargo_mass_kg");
  byte_27B8D77 = 19;
  strcpy(&qword_27B8D60, "vehicle_aux_power_w");
  byte_27B8D8F = 15;
  strcpy(&qword_27B8D78, "dcdc_efficiency");
  strcpy(&qword_27B8D90, "drive_train_efficiency");
  HIBYTE(word_27B8DA6) = 22;
  operator new();
}

void sub_DD7DDC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (SHIBYTE(word_27B8DA6) < 0)
  {
    sub_21E4C10();
  }

  sub_21E4C1C(a1, a2, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_DD7E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B8CC0);
  if (a36 < 0)
  {
    operator delete(a31);
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
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

void sub_DD7E88()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  sub_3B8500(v3);
  sub_DEBA00(8, v5, v4);
  sub_7E9A4(v42);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  if (sub_E81ED4(v5))
  {
    v6 = sub_3B6AFC(v4) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (sub_E81E8C(v5))
  {
    v29 = sub_3B6DDC(v4) ^ 1;
  }

  else
  {
    v29 = 0;
  }

  if (sub_E81708(v5))
  {
    v28 = sub_3B739C(v4) ^ 1;
  }

  else
  {
    v28 = 0;
  }

  if (sub_E81F00(v5))
  {
    v27 = sub_3B70BC(v4) ^ 1;
  }

  else
  {
    v27 = 0;
  }

  if (sub_E81ED4(v5))
  {
    v7 = sub_3B6AFC(v4);
  }

  else
  {
    v7 = 0;
  }

  if (sub_E81E8C(v5))
  {
    v8 = sub_3B6DDC(v4);
  }

  else
  {
    v8 = 0;
  }

  if (sub_E81708(v5))
  {
    v9 = sub_3B739C(v4);
  }

  else
  {
    v9 = 0;
  }

  if (sub_E81F00(v5))
  {
    v10 = sub_3B70BC(v4);
    if ((v7 | v8 | v9))
    {
LABEL_27:
      operator new();
    }
  }

  else
  {
    v10 = 0;
    if ((v7 | v8 | v9))
    {
      goto LABEL_27;
    }
  }

  if (v10)
  {
    goto LABEL_27;
  }

  if ((v6 | v29 | v28 | v27))
  {
    sub_D33C84(__p, v5, 8, v4);
    sub_D32E24(__p, v31);
    if (v31[0])
    {
      __p[0] = v5;
      LODWORD(__p[1]) = 3;
      v46[0] = v4;
      LOBYTE(v46[1]) = sub_E88F70(__p);
      v47[0] = 0;
      sub_D11BD4(__p, v30);
    }

    operator new();
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "Dropping ETA request that consists only of disabled transport types.", 68);
    if ((v52 & 0x10) != 0)
    {
      v12 = v51;
      if (v51 < v48[1])
      {
        v51 = v48[1];
        v12 = v48[1];
      }

      v13 = v48[0];
      v11 = v12 - v48[0];
      if ((v12 - v48[0]) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v44[0]) = 0;
LABEL_44:
        *(__dst + v11) = 0;
        sub_7E854(__dst, 1u);
        if (SHIBYTE(v44[0]) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v50 < 0)
        {
          operator delete(v49);
        }

        std::locale::~locale(v46);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_49;
      }

      v13 = v46[1];
      v11 = v47[1] - v46[1];
      if ((v47[1] - v46[1]) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_52:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v44[0]) = v11;
    if (v11)
    {
      memmove(__dst, v13, v11);
    }

    goto LABEL_44;
  }

LABEL_49:
  v54.__r_.__value_.__r.__words[0] = 1;
  v54.__r_.__value_.__l.__size_ = &off_2669FE0;
  sub_DDEEF4(__dst, &v54);
  sub_D876F8(__p, __dst);
  v14 = *(v2 + 24);
  if (!v14)
  {
    sub_2B7420();
  }

  (*(*v14 + 48))(v14, __p);
  sub_14D4598(&v53);
  sub_14D4598(__p);
  sub_14D4598(__dst);
  v15 = v32[0];
  if (v32[0])
  {
    v16 = v32[1];
    v17 = v32[0];
    if (v32[1] != v32[0])
    {
      do
      {
        v18 = *(v16 - 3);
        if (v18)
        {
          v19 = *(v16 - 2);
          v20 = *(v16 - 3);
          if (v19 != v18)
          {
            do
            {
              v19 = sub_53A868(v19 - 160);
            }

            while (v19 != v18);
            v20 = *(v16 - 3);
          }

          *(v16 - 2) = v18;
          operator delete(v20);
        }

        v16 -= 48;
      }

      while (v16 != v15);
      v17 = v32[0];
    }

    v32[1] = v15;
    operator delete(v17);
  }

  if (v34[0])
  {
    v21 = v34[1];
    v22 = v34[0];
    if (v34[1] != v34[0])
    {
      do
      {
        v21 -= 376;
        sub_DE148C(v21);
      }

      while (v21 != v34[0]);
      v22 = v34[0];
    }

    v34[1] = v34[0];
    operator delete(v22);
  }

  if (v36)
  {
    v23 = v37;
    v24 = v36;
    if (v37 != v36)
    {
      do
      {
        v23 -= 376;
        sub_DE0144(v23);
      }

      while (v23 != v36);
      v24 = v36;
    }

    v37 = v36;
    operator delete(v24);
  }

  if (v39)
  {
    v25 = v40;
    v26 = v39;
    if (v40 != v39)
    {
      do
      {
        v25 -= 376;
        sub_DDF868(v25);
      }

      while (v25 != v39);
      v26 = v39;
    }

    v40 = v39;
    operator delete(v26);
  }
}

void sub_DDDE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  sub_1959728(&a67);
  sub_DDF714(&STACK[0xA38]);
  sub_DDF7CC(&STACK[0x480]);
  sub_5287C0(&STACK[0x520]);
  sub_D3AE40(&STACK[0xDA0]);
  sub_D02B88(&STACK[0xA70]);
  STACK[0x520] = &STACK[0x4F0];
  sub_DC1694(&STACK[0x520]);
  sub_D71398(&STACK[0x1010]);
  sub_CF4478(&STACK[0xB20]);
  sub_D130AC(&STACK[0xFB0]);
  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  sub_D78340(&a17);
  sub_D130AC(&a28);
  sub_CD6274(&a40);
  sub_D03D60(&a47);
  sub_DDF4F0(&a51);
  sub_60E03C(&a55);
  sub_CFFA9C(&a58);
  _Unwind_Resume(a1);
}

std::string *sub_DDED84(std::string *this, int a2, int a3, int a4, int a5)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    std::string::append(this, "[", 1uLL);
    std::string::append(this, "Cycling", 7uLL);
  }

  if (a3)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v10 = "+";
    }

    else
    {
      v10 = "[";
    }

    std::string::append(this, v10, 1uLL);
    std::string::append(this, "Drive", 5uLL);
  }

  if (a4)
  {
    v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = this->__r_.__value_.__l.__size_;
    }

    if (v11)
    {
      v12 = "+";
    }

    else
    {
      v12 = "[";
    }

    std::string::append(this, v12, 1uLL);
    std::string::append(this, "Walk", 4uLL);
  }

  if (a5)
  {
    v13 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v13 = this->__r_.__value_.__l.__size_;
    }

    if (v13)
    {
      v14 = "+";
    }

    else
    {
      v14 = "[";
    }

    std::string::append(this, v14, 1uLL);
    std::string::append(this, "Transit", 7uLL);
  }

  return std::string::append(this, "]", 1uLL);
}

void sub_DDEED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DDEEF4(uint64_t a1, void (****a2)(std::error_category *__hidden this))
{
  sub_14D4048(a1, 0, 0);
  if (a2[1] != &off_2669FE0)
  {
    v4 = *a2;
    goto LABEL_29;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v23);
    v5 = sub_4A5C(&v23, "SubError: ", 10);
    std::error_condition::message(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v5, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = v33;
      if ((v33 & 0x10) == 0)
      {
LABEL_12:
        if ((v8 & 8) == 0)
        {
          v9 = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_23:
          __p.__r_.__value_.__s.__data_[v9] = 0;
          sub_7E854(&__p, 3u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v31 < 0)
          {
            operator delete(v30);
          }

          std::locale::~locale(&v25);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_28;
        }

        v11 = v26;
        v9 = v27 - v26;
        if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_56:
          sub_3244();
        }

LABEL_18:
        if (v9 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v9;
        if (v9)
        {
          memmove(&__p, v11, v9);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v8 = v33;
      if ((v33 & 0x10) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v10 = v29;
    }

    v11 = v28;
    v9 = v10 - v28;
    if (v10 - v28 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_56;
    }

    goto LABEL_18;
  }

LABEL_28:
  v4 = sub_EC7E5C(*a2);
LABEL_29:
  *(a1 + 40) |= 0x20u;
  *(a1 + 160) = v4;
  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v23);
  v13 = sub_4A5C(&v23, "ETARequest: ", 12);
  v14 = sub_74700();
  v15 = sub_73F1C(v14);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  sub_4A5C(v13, v17, v18);
  if ((v33 & 0x10) != 0)
  {
    v20 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v20 = v29;
    }

    v21 = v28;
    v19 = v20 - v28;
    if (v20 - v28 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_54:
      sub_3244();
    }

LABEL_42:
    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__p, v21, v19);
    }

    goto LABEL_47;
  }

  if ((v33 & 8) != 0)
  {
    v21 = v26;
    v19 = v27 - v26;
    if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_54;
    }

    goto LABEL_42;
  }

  v19 = 0;
  *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_47:
  __p.__r_.__value_.__s.__data_[v19] = 0;
  sub_7E854(&__p, 3u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_DDF428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_14D4598(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_14D4598(v15);
  _Unwind_Resume(a1);
}

void **sub_DDF4F0(void **a1)
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
        v3 -= 376;
        sub_DE148C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_DDF554(_OWORD *a1@<X8>)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  operator new();
}

uint64_t sub_DDF61C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "ETAForSearchResponseBuilderModule", 0x21uLL);
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

void sub_DDF6E8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DDF714(uint64_t a1)
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
          v3 -= 376;
          sub_DDF868(v3);
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

uint64_t sub_DDF7CC(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D71244((a1 + 8));
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

void sub_DDF868(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    for (i = *(a1 + 360); i != v2; sub_5EBD80(a1 + 352, i))
    {
      i -= 1120;
    }

    *(a1 + 360) = v2;
    operator delete(*(a1 + 352));
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = *(a1 + 336);
    v6 = *(a1 + 328);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *(a1 + 328);
    }

    *(a1 + 336) = v4;
    operator delete(v6);
  }

  sub_3EE9A4((a1 + 32));
  v7 = a1;
  sub_7C05E4(&v7);
}

uint64_t sub_DDF91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 1;
  v5 = sub_E80E0C(a2);
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 72) = 0u;
  v7 = (a1 + 72);
  *(a1 + 17) = v5;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v8 = *a1;
  v38[23] = 20;
  strcpy(v38, "CyclingCoverageCheck");
  __p = 0;
  v36 = 0;
  v37 = 0;
  v9 = sub_3AEC94(v8, v38, &__p);
  sub_5ADDC(v39, v9);
  v10 = __p;
  if (__p)
  {
    v11 = v36;
    v12 = __p;
    if (v36 != __p)
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
      v12 = __p;
    }

    v36 = v10;
    operator delete(v12);
  }

  if ((v38[23] & 0x80000000) != 0)
  {
    operator delete(*v38);
  }

  *(a1 + 18) = sub_5F9D0(v39, "enable_coverage_check");
  sub_63960(v39, &qword_27B8DF0, v38);
  v14 = *v6;
  if (*v6)
  {
    v15 = *(a1 + 32);
    v16 = *v6;
    if (v15 != v14)
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
      v16 = *v6;
    }

    *(a1 + 32) = v14;
    operator delete(v16);
    *v6 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *v38;
  *(a1 + 40) = *&v38[16];
  sub_63960(v39, &qword_27B8E08, v38);
  v18 = *v7;
  if (*v7)
  {
    v19 = *(a1 + 80);
    v20 = *v7;
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = *v7;
    }

    *(a1 + 80) = v18;
    operator delete(v20);
    *v7 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *v38;
  *(a1 + 88) = *&v38[16];
  sub_63960(v39, "supported_regions", v38);
  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = *(a1 + 56);
    v24 = *(a1 + 48);
    if (v23 != v22)
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *(a1 + 48);
    }

    *(a1 + 56) = v22;
    operator delete(v24);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *v38;
  *(a1 + 64) = *&v38[16];
  sub_63960(v39, "preflight_regions", v38);
  v26 = *(a1 + 96);
  if (v26)
  {
    v27 = *(a1 + 104);
    v28 = *(a1 + 96);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = *(a1 + 96);
    }

    *(a1 + 104) = v26;
    operator delete(v28);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *v38;
  *(a1 + 112) = *&v38[16];
  v30 = v40;
  if (v40)
  {
    do
    {
      v31 = *v30;
      v32 = *(v30 + 12);
      if (v32 != -1)
      {
        (off_2674000[v32])(v38, v30 + 5);
      }

      *(v30 + 12) = -1;
      if (*(v30 + 39) < 0)
      {
        operator delete(v30[2]);
      }

      operator delete(v30);
      v30 = v31;
    }

    while (v31);
  }

  v33 = v39[0];
  v39[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  return a1;
}

void sub_DDFC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_5C010(va);
  sub_1A104((v8 + 96));
  sub_1A104(v10);
  sub_1A104((v8 + 48));
  sub_1A104(v9);
  _Unwind_Resume(a1);
}

void sub_DDFCD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0xDDFCA8);
}

void sub_DDFCF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_DDFE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DC1694(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DDFED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v8 = v6 - 24;
      sub_49D1B0(v4, *(v6 - 3), *(v6 - 2), 0xF128CFC4A33F128DLL * ((*(v6 - 2) - *(v6 - 3)) >> 3));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 24), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v7;
      }

      v4 = v10 + 48;
      v10 += 48;
      v6 += 3;
    }

    while (v8 + 48 != a3);
  }

  return v4;
}

void sub_DDFFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_487EC4(v9);
  sub_DC1500(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DDFFE0(uint64_t a1)
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
        v4 -= 3;
        sub_DCEAE8(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_DE0048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = sub_E80E0C(a2);
  v7 = sub_E7FE50(a2);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = BYTE1(v7) & 1;
  }

  if ((v7 & 0x10000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  *(a1 + 25) = v9;
  *(a1 + 28) = sub_6EECC();
  return a1;
}

void **sub_DE00BC(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 376;
        sub_DDF868(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

void sub_DE0144(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    for (i = *(a1 + 360); i != v2; sub_5EBD80(a1 + 352, i))
    {
      i -= 1120;
    }

    *(a1 + 360) = v2;
    operator delete(*(a1 + 352));
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = *(a1 + 336);
    v6 = *(a1 + 328);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *(a1 + 328);
    }

    *(a1 + 336) = v4;
    operator delete(v6);
  }

  sub_3EE9A4((a1 + 32));
  v7 = a1;
  sub_7C05E4(&v7);
}

void sub_DE01F8(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a3;
  sub_E833E0(a2, a1 + 1);
  operator new();
}

void sub_DE03F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D9FE7C(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_DE0448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = sub_E8237C(a2);
  v17 = sub_6EECC();
  *(a1 + 8) = 0u;
  *(a1 + 4) = v17;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 104) = -1;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a8;
  *(a1 + 272) = a9;
  *(a1 + 280) = a4;
  *(a1 + 288) = a5;
  *(a1 + 296) = a6;
  *(a1 + 304) = sub_FF3DEC(a2, a7, 1);
  sub_DE05C8(a2, a7, a1 + 8, a1 + 136, a3, *(a1 + 272), a8, a1 + 312);
  *(a1 + 656) = sub_E7FE50(a2);
  *(a1 + 664) = v18;
  *(a1 + 668) = sub_E80E0C(a2);
  *(a1 + 669) = sub_44F320(a7);
  *(a1 + 672) = a3;
  return a1;
}

void sub_DE0588(_Unwind_Exception *a1)
{
  sub_419F70(v1 + 128);
  sub_419F70(v1);
  _Unwind_Resume(a1);
}

void sub_DE05A4(_Unwind_Exception *a1)
{
  sub_DACA48((v1 + 312));
  sub_419F70(v2 + 128);
  sub_419F70(v2);
  _Unwind_Resume(a1);
}

void sub_DE05C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = sub_68F8AC();
  v12 = sub_E84290(a1);
  v13 = sub_394BD0();
  v14 = sub_394BD0();
  if (*(nullsub_1(a6) + 128) == 1)
  {
    v15 = nullsub_1(a6);
    v16 = sub_4F96C8(v15);
  }

  else
  {
    v16 = 0;
  }

  v60 = sub_E7FE50(a1);
  v61 = v17;
  v18 = sub_3B6890(a7);
  v19 = *(v18 + 4);
  v20 = *(v18 + 8);
  sub_E86CA0(v56);
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  if (!v20)
  {
    v21 = *a5;
    v22 = a5[1];
    if (*a5 != v22)
    {
      while (*(v21 + 176) == 1)
      {
        v21 += 440;
        if (v21 == v22)
        {
          goto LABEL_11;
        }
      }
    }

    if (v21 == v22)
    {
LABEL_11:
      v45[0] = 0;
      v45[1] = 0;
      v46 = 0;
    }

    else
    {
      *v45 = *(v21 + 288);
      v46 = *(v21 + 304);
    }

    HIBYTE(v53) = 15;
    strcpy(v52, "RerouteCategory");
    memset(__p, 0, 24);
    v23 = sub_3AEC94(a7, v52, __p);
    sub_4EB344(&v47, v23);
    v24 = sub_4EB3E0(v56, &v47);
    v25 = __p[0];
    if (__p[0])
    {
      v26 = __p[1];
      v27 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v28 = *(v26 - 1);
          v26 -= 3;
          if (v28 < 0)
          {
            operator delete(*v26);
          }
        }

        while (v26 != v25);
        v27 = __p[0];
      }

      __p[1] = v25;
      operator delete(v27);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    strcpy(__p, "FilteredRerouteHistory");
    HIBYTE(__p[2]) = 22;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v29 = sub_3AEC94(a7, __p, &v47);
    sub_4EAA24(v50, v29);
    sub_4EAA28(a6, v45, v19, v14, v24, v50, v52);
    v30 = v47;
    *v54 = *v52;
    v55 = v53;
    v52[1] = 0;
    v53 = 0;
    v52[0] = 0;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
      {
        do
        {
          v33 = *(v31 - 1);
          v31 -= 3;
          if (v33 < 0)
          {
            operator delete(*v31);
          }
        }

        while (v31 != v30);
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v52[0] = sub_4EF368(a6);
  LODWORD(v52[1]) = v34;
  sub_4ED880(a6, v45);
  v35 = sub_4EF5DC(a6);
  v36 = sub_4EF360(a6);
  sub_DAC7F8(a8, a3, a4, a2, v40, v12, v13, v14, v16, &v60, v54, v56, v52, v45, v35, v36);
  v37 = v45[1];
  if (v45[1])
  {
    v38 = v46;
    v39 = v45[1];
    if (v46 != v45[1])
    {
      do
      {
        v38 -= 72;
        sub_3E4690(v38);
      }

      while (v38 != v37);
      v39 = v45[1];
    }

    v46 = v37;
    operator delete(v39);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  if (v59)
  {
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

void sub_DE095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_44D36C(&a48);
  _Unwind_Resume(a1);
}

void **sub_DE09D0(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 376;
        sub_DE0144(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

uint64_t sub_DE0A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "WalkingRouteFindingModule", 0x19uLL);
  LOBYTE(v14) = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D0ACE4((a2 + 24), "Runtime", &v14, a1);
    *(a2 + 32) = v5;
    LOBYTE(v14) = 4;
    if (v5 >= *(a2 + 40))
    {
LABEL_3:
      v6 = sub_DA5180((a2 + 24), "Paths.OutOfCoverage", &v14, (a1 + 8));
      *(a2 + 32) = v6;
      LOBYTE(v14) = 4;
      if (v6 >= *(a2 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v14, a1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    LOBYTE(v14) = 4;
    if (v5 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_DA5334(v5, "Paths.OutOfCoverage", &v14, (a1 + 8));
  v6 = v5 + 48;
  *(a2 + 32) = v6;
  LOBYTE(v14) = 4;
  if (v6 >= *(a2 + 40))
  {
LABEL_4:
    v7 = sub_DA4E7C((a2 + 24), "Paths.NoResult", &v14, (a1 + 12));
    *(a2 + 32) = v7;
    LOBYTE(v14) = 4;
    if (v7 >= *(a2 + 40))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_DA5030(v6, "Paths.NoResult", &v14, (a1 + 12));
  v7 = v6 + 48;
  *(a2 + 32) = v7;
  LOBYTE(v14) = 4;
  if (v7 >= *(a2 + 40))
  {
LABEL_5:
    v8 = sub_D0DA20((a2 + 24), "Paths.TooLong", &v14, (a1 + 16));
    *(a2 + 32) = v8;
    LOBYTE(v14) = 4;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_D79558(v8, "NumScannedNodes", &v14, (a1 + 24));
    v9 = v8 + 48;
    *(a2 + 32) = v9;
    v10 = (a1 + 32);
    if (!*(a1 + 32))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_11:
  sub_D0DBD4(v7, "Paths.TooLong", &v14, (a1 + 16));
  v8 = v7 + 48;
  *(a2 + 32) = v8;
  LOBYTE(v14) = 4;
  if (v8 < *(a2 + 40))
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = sub_D793A4((a2 + 24), "NumScannedNodes", &v14, (a1 + 24));
  *(a2 + 32) = v9;
  v10 = (a1 + 32);
  if (!*(a1 + 32))
  {
LABEL_15:
    LOBYTE(v14) = 4;
    if (v9 < *(a2 + 40))
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_13:
  LOBYTE(v14) = 4;
  if (v9 >= *(a2 + 40))
  {
    v9 = sub_D0ACE4((a2 + 24), "Anchors", &v14, v10);
    *(a2 + 32) = v9;
    if (*v10 != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_D0AE98(v9, "Anchors", &v14, v10);
    v9 += 48;
    *(a2 + 32) = v9;
    if (*v10 != 2)
    {
      goto LABEL_15;
    }
  }

  v15 = 4;
  v14 = 1;
  if (v9 >= *(a2 + 40))
  {
    v9 = sub_DE1D58((a2 + 24), "Anchors.EqualsTwo", &v15, &v14);
  }

  else
  {
    sub_DE1F0C(v9, "Anchors.EqualsTwo", &v15, &v14);
    v9 += 48;
  }

  *(a2 + 32) = v9;
  LOBYTE(v14) = 4;
  if (v9 < *(a2 + 40))
  {
LABEL_16:
    sub_D7985C(v9, "Iterations", &v14, (a1 + 40));
    v11 = v9 + 48;
    *(a2 + 32) = v11;
    if (*(a1 + 40) < 2u)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = sub_D796A8((a2 + 24), "Iterations", &v14, (a1 + 40));
  *(a2 + 32) = v11;
  if (*(a1 + 40) < 2u)
  {
LABEL_17:
    LOBYTE(v14) = 4;
    if (v11 < *(a2 + 40))
    {
      goto LABEL_18;
    }

LABEL_30:
    v12 = sub_D0B2EC((a2 + 24), "BlockingIncidents", &v14, (a1 + 48));
    *(a2 + 32) = v12;
    LOBYTE(v14) = 5;
    if (v12 >= *(a2 + 40))
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_26:
  v15 = 4;
  v14 = 1;
  if (v11 >= *(a2 + 40))
  {
    v11 = sub_D799AC((a2 + 24), "Iterations.GreaterOne", &v15, &v14);
  }

  else
  {
    sub_D79B60(v11, "Iterations.GreaterOne", &v15, &v14);
    v11 += 48;
  }

  *(a2 + 32) = v11;
  LOBYTE(v14) = 4;
  if (v11 >= *(a2 + 40))
  {
    goto LABEL_30;
  }

LABEL_18:
  sub_D0B4A0(v11, "BlockingIncidents", &v14, (a1 + 48));
  v12 = v11 + 48;
  *(a2 + 32) = v12;
  LOBYTE(v14) = 5;
  if (v12 >= *(a2 + 40))
  {
LABEL_19:
    result = sub_D0D418((a2 + 24), "UnwindingCache.Hitrate", &v14, (a1 + 56));
    *(a2 + 32) = result;
    return result;
  }

LABEL_31:
  sub_D0D5CC(v12, "UnwindingCache.Hitrate", &v14, (a1 + 56));
  result = v12 + 48;
  *(a2 + 32) = v12 + 48;
  return result;
}

void sub_DE0F54(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DE1070@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "WalkingRouteSelectionModule", 0x1BuLL);
  v8 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_CCEBC0((a2 + 24), "Runtime", &v8, a1);
    *(a2 + 32) = v5;
    v7 = 4;
    if (v5 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_CCED74(*(a2 + 32), "Runtime", &v8, a1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    v7 = 4;
    if (v5 >= *(a2 + 40))
    {
LABEL_3:
      result = sub_D7AD4C((a2 + 24), "Routes", &v7, a1 + 1);
      *(a2 + 32) = result;
      return result;
    }
  }

  sub_D7AF00(v5, "Routes", &v7, a1 + 1);
  result = v5 + 48;
  *(a2 + 32) = v5 + 48;
  return result;
}

void sub_DE1190(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DE11E8(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x51B3BEA3677D46CFLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 376 * a2;
      *&v10 = 0x8000000080000000;
      *(&v10 + 1) = 0x8000000080000000;
      do
      {
        *(v3 + 320) = 0;
        *(v3 + 32) = 0uLL;
        *(v3 + 48) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(v3 + 32) = 0x8000000080000000;
        *(v3 + 40) = 0x7FFFFFFF;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 112) = 0uLL;
        *(v3 + 112) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 144) = 0uLL;
        *(v3 + 144) = 0uLL;
        *(v3 + 160) = 0uLL;
        *(v3 + 160) = 0uLL;
        *(v3 + 176) = 0uLL;
        *(v3 + 176) = 0uLL;
        *(v3 + 192) = 0uLL;
        *(v3 + 192) = 0uLL;
        *(v3 + 208) = 0uLL;
        *(v3 + 208) = 0uLL;
        *(v3 + 224) = 0uLL;
        *(v3 + 224) = 0uLL;
        *(v3 + 240) = 0uLL;
        *(v3 + 240) = 0uLL;
        *(v3 + 256) = 0uLL;
        *(v3 + 256) = 0uLL;
        *(v3 + 272) = 0uLL;
        *(v3 + 272) = 0uLL;
        *(v3 + 288) = 0uLL;
        *(v3 + 288) = v10;
        *(v3 + 304) = 0uLL;
        *(v3 + 304) = v10;
        *(v3 + 320) = 5;
        v11 = (v3 + 328);
        *(v3 + 344) = 0uLL;
        *(v3 + 360) = 0uLL;
        v3 += 376;
        *v11 = 0uLL;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x51B3BEA3677D46CFLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAE4C415C9882B9)
    {
      sub_1794();
    }

    v7 = 0x51B3BEA3677D46CFLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x572620AE4C415CLL)
    {
      v8 = 0xAE4C415C9882B9;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAE4C415C9882B9)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 376 * v5;
    *(&v19 + 1) = 0;
    *&v13 = 0x8000000080000000;
    *(&v13 + 1) = 0x8000000080000000;
    v14 = 376 * v5;
    do
    {
      *(v14 + 320) = 0;
      *(v14 + 32) = 0uLL;
      *(v14 + 48) = 0uLL;
      *v14 = 0uLL;
      *(v14 + 16) = 0uLL;
      *(v14 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(v14 + 32) = 0x8000000080000000;
      *(v14 + 40) = 0x7FFFFFFF;
      *(v14 + 48) = 0uLL;
      *(v14 + 64) = 0uLL;
      *(v14 + 64) = 0uLL;
      *(v14 + 80) = 0uLL;
      *(v14 + 80) = 0uLL;
      *(v14 + 96) = 0uLL;
      *(v14 + 96) = 0uLL;
      *(v14 + 112) = 0uLL;
      *(v14 + 112) = 0uLL;
      *(v14 + 128) = 0uLL;
      *(v14 + 128) = 0uLL;
      *(v14 + 144) = 0uLL;
      *(v14 + 144) = 0uLL;
      *(v14 + 160) = 0uLL;
      *(v14 + 160) = 0uLL;
      *(v14 + 176) = 0uLL;
      *(v14 + 176) = 0uLL;
      *(v14 + 192) = 0uLL;
      *(v14 + 192) = 0uLL;
      *(v14 + 208) = 0uLL;
      *(v14 + 208) = 0uLL;
      *(v14 + 224) = 0uLL;
      *(v14 + 224) = 0uLL;
      *(v14 + 240) = 0uLL;
      *(v14 + 240) = 0uLL;
      *(v14 + 256) = 0uLL;
      *(v14 + 256) = 0uLL;
      *(v14 + 272) = 0uLL;
      *(v14 + 272) = 0uLL;
      *(v14 + 288) = 0uLL;
      *(v14 + 288) = v13;
      *(v14 + 304) = 0uLL;
      *(v14 + 304) = v13;
      *(v14 + 320) = 5;
      v15 = (v14 + 328);
      *(v14 + 344) = 0uLL;
      *(v14 + 360) = 0uLL;
      v14 += 376;
      *v15 = 0uLL;
    }

    while (v14 != 376 * v5 + 376 * a2);
    *&v19 = v12 + 376 * a2;
    v16 = a1[1];
    v17 = v12 + *a1 - v16;
    sub_CFF5E4(a1, *a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 1) = v19;
    if (v18)
    {
      operator delete(v18);
    }
  }
}

void sub_DE1478(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CFF92C(va);
  _Unwind_Resume(a1);
}

void sub_DE148C(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    for (i = *(a1 + 360); i != v2; sub_5EBD80(a1 + 352, i))
    {
      i -= 1120;
    }

    *(a1 + 360) = v2;
    operator delete(*(a1 + 352));
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = *(a1 + 336);
    v6 = *(a1 + 328);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *(a1 + 328);
    }

    *(a1 + 336) = v4;
    operator delete(v6);
  }

  sub_3EE9A4((a1 + 32));
  v7 = a1;
  sub_7C05E4(&v7);
}

uint64_t sub_DE1540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, char a6, void *a7, void *a8, int a9)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  v17 = a1 + 32;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = sub_68F8AC();
  v18 = sub_3B6890(a4);
  v19 = *v18;
  *(a1 + 92) = *(v18 + 8);
  *(a1 + 84) = v19;
  *(a1 + 96) = sub_E8237C(a2);
  *(a1 + 97) = sub_E7FE50(a2);
  *(a1 + 105) = v20;
  *(a1 + 112) = a4;
  *(a1 + 120) = a5;
  *(a1 + 128) = sub_E81DF0(a2);
  *(a1 + 136) = v21;
  *(a1 + 144) = sub_394BD0();
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 160) = sub_E8902C(a2);
  *(a1 + 168) = 0;
  *(a1 + 176) = *a7;
  *(a1 + 184) = sub_394BD0();
  *(a1 + 192) = *a8;
  *(a1 + 200) = a6;
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "WalkingRouteFinding");
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v22 = sub_3AEC94(a4, __p, v50);
  v23 = v50[0];
  if (v50[0])
  {
    v24 = v50[1];
    v25 = v50[0];
    if (v50[1] != v50[0])
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
      v25 = v50[0];
    }

    v50[1] = v23;
    operator delete(v25);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 208) = v22;
  *(a1 + 216) = sub_102B908(a4, (a1 + 97), *(a1 + 144), v22);
  *(a1 + 224) = a9;
  sub_101A994(a3, a4, __p);
  v27 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v27;
    operator delete(v27);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *__p;
  v28 = __p[2];
  v29 = __p[3];
  memset(__p, 0, 24);
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 32);
    if (v31 != v30)
    {
      v33 = *(a1 + 40);
      do
      {
        v35 = *(v33 - 32);
        v33 -= 32;
        v34 = v35;
        if (v35)
        {
          *(v31 - 24) = v34;
          operator delete(v34);
        }

        v31 = v33;
      }

      while (v33 != v30);
      v32 = *v17;
    }

    *(a1 + 40) = v30;
    operator delete(v32);
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
  }

  *(a1 + 32) = v46;
  *(a1 + 48) = v47;
  v47 = 0;
  v46 = 0uLL;
  v36 = *(a1 + 56);
  if (v36)
  {
    v37 = *(a1 + 64);
    v38 = *(a1 + 56);
    if (v37 != v36)
    {
      v39 = *(a1 + 64);
      do
      {
        v41 = *(v39 - 40);
        v39 -= 40;
        v40 = v41;
        if (v41)
        {
          *(v37 - 32) = v40;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = *(a1 + 56);
    }

    *(a1 + 64) = v36;
    operator delete(v38);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = v48;
  *(a1 + 72) = v49;
  v49 = 0;
  v48 = 0uLL;
  *(a1 + 168) = sub_DE195C(a1);
  v42 = *(a1 + 208);
  HIBYTE(v51) = 12;
  strcpy(v50, "max_distance");
  v43 = sub_5F8FC(v42, v50);
  *(a1 + 152) = sub_A89E58(v43);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  sub_D78EB0(__p);
  return a1;
}

void sub_DE1894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_D78EB0(&__p);
  sub_5ECEBC((v14 + 56));
  sub_39393C(v15);
  v17 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v17;
    operator delete(v17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DE195C(uint64_t a1)
{
  result = *(a1 + 184);
  if (result != 2)
  {
    if (result == 8)
    {
      return 4;
    }

    else
    {
      v3 = *(a1 + 200);
      if (v3 == 1)
      {
        return 0;
      }

      else
      {
        if (v3 != 2)
        {
          v4 = *(a1 + 112);
          v8 = 7;
          strcpy(v7, "ETAPlan");
          v5 = 0;
          v6 = 0uLL;
          sub_3AEC94(v4, v7, &v5);
          operator new();
        }

        if (*(a1 + 32) != *(a1 + 40) && *(a1 + 64) - *(a1 + 56) == 40)
        {
          return 3;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_DE1CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a27 < 0)
    {
LABEL_5:
      operator delete(a22);
      _Unwind_Resume(a1);
    }
  }

  else if (a27 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DE1D58(uint64_t *a1, char *a2, char *a3, int *a4)
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
  sub_DE1F0C(v17, a2, a3, a4);
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

void sub_DE1EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DE1F0C(uint64_t a1, char *__s, char *a3, int *a4)
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

void sub_DE205C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[23] = 21;
  strcpy(v8, "WalkingRouteSelection");
  memset(__p, 0, sizeof(__p));
  v6 = sub_3AEC94(a3, v8, __p);
  sub_DE217C(a1, a2, a3, v6);
}

void sub_DE2158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_DE217C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = 17;
  strcpy(__p, "return_all_routes");
  v6 = sub_5F9D0(a4, __p);
  if (v20 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  v20 = 13;
  strcpy(__p, "filter_config");
  v8 = sub_5F8FC(a4, __p);
  v9 = sub_DE2824(v8);
  if (v20 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  *(a1 + 4) = v9;
  v20 = 14;
  strcpy(__p, "max_num_routes");
  v11 = sub_353010(a4, __p);
  v12 = sub_6EECC();
  if (v12 < v11)
  {
    v11 = v12;
  }

  if (v20 < 0)
  {
    operator delete(*__p);
  }

  *(a1 + 8) = v11;
  v20 = 20;
  strcpy(__p, "max_relative_sharing");
  v13 = sub_63D34(a4, __p);
  if (v20 < 0)
  {
    v14 = v13;
    operator delete(*__p);
    v13 = v14;
  }

  *(a1 + 16) = v13;
  v20 = 20;
  strcpy(__p, "min_line_distance_cm");
  v15 = sub_353010(a4, __p);
  if (v20 < 0)
  {
    v16 = v15;
    operator delete(*__p);
    v15 = v16;
  }

  *(a1 + 24) = v15;
  strcpy(__p, "score_threshold_factor");
  v20 = 22;
  v17 = sub_63D34(a4, __p);
  if (v20 < 0)
  {
    v18 = v17;
    operator delete(*__p);
    v17 = v18;
  }

  *(a1 + 32) = v17;
  operator new();
}

void sub_DE2730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_5C010(v32 - 120);
  v34 = *(v31 + 24);
  if (v34)
  {
    *(v30 + 248) = v34;
    operator delete(v34);
    v35 = *v31;
    if (!*v31)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v35 = *v31;
    if (!*v31)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  *(v30 + 224) = v35;
  operator delete(v35);
  goto LABEL_6;
}

uint64_t sub_DE2824(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(a1 + 23) & 0x80000000) == 0 || v1 != 27)
  {
    v6 = *(a1 + 23);
    if ((v6 & 0x80) != 0)
    {
      if (v1 != 4)
      {
        if (v1 == 16 && **a1 == 0x6E65726566666964 && *(*a1 + 8) == 0x64657361625F6563)
        {
          return 1;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        sub_30F54(" provided", &v14, &v15);
        if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v15;
        }

        else
        {
          v11 = v15.__r_.__value_.__r.__words[0];
        }

        if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v15.__r_.__value_.__l.__size_;
        }

        v13 = sub_2D390(exception, v11, size);
      }

      v7 = *a1;
    }

    else
    {
      v7 = a1;
      if (v6 != 4)
      {
        if (v6 == 16 && *a1 == 0x6E65726566666964 && *(a1 + 8) == 0x64657361625F6563)
        {
          return 1;
        }

        goto LABEL_35;
      }
    }

    if (*v7 != 1701736302)
    {
      goto LABEL_35;
    }

    return 2;
  }

  if (**a1 != 0x6C6F687365726874 || *(*a1 + 8) != 0x68735F646E615F64 || *(*a1 + 16) != 0x61625F676E697261 || *(*a1 + 19) != 0x64657361625F676ELL)
  {
    goto LABEL_35;
  }

  return 0;
}

void sub_DE2A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_DE2A80(double *a1, void *a2)
{
  *a1 = 2.0;
  a1[1] = 0.0;
  v4 = a1 + 1;
  a1[2] = 0.0;
  a1[3] = 0.0;
  v15 = 4;
  strcpy(__p, "norm");
  v5 = *(sub_5F33C(a2, __p) + 2);
  if (v15 < 0)
  {
    operator delete(*__p);
    if (v5 == 1)
    {
LABEL_3:
      v15 = 4;
      strcpy(__p, "norm");
      v6 = sub_5F8FC(a2, __p);
      if (v15 < 0)
      {
        v8 = v6;
        operator delete(*__p);
        v6 = v8;
        v7 = *(v8 + 23);
        if ((v7 & 0x80000000) == 0)
        {
LABEL_5:
          if (v7 != 3)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v7 = *(v6 + 23);
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      if (v6[1] != 3)
      {
LABEL_19:
        v13 = INFINITY;
LABEL_20:
        *a1 = v13;
        goto LABEL_21;
      }

      v6 = *v6;
LABEL_13:
      v9 = bswap32(*v6 | (*(v6 + 2) << 16));
      v10 = v9 >= 0x6D696E00;
      v11 = v9 > 0x6D696E00;
      v12 = !v10;
      v13 = INFINITY;
      if (v11 == v12)
      {
        v13 = -INFINITY;
      }

      goto LABEL_20;
    }
  }

  else if (v5 == 1)
  {
    goto LABEL_3;
  }

  v15 = 4;
  strcpy(__p, "norm");
  *a1 = sub_63D34(a2, __p);
  if (v15 < 0)
  {
    operator delete(*__p);
  }

LABEL_21:
  v15 = 21;
  strcpy(__p, "traversal_time_weight");
  *v4 = sub_63D34(a2, __p);
  if (v15 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_DE2D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DE2D34(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v23 = 9;
        strcpy(__p, "threshold");
        v10 = sub_63D34(v9, __p);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        v23 = 5;
        strcpy(__p, "value");
        v11 = sub_63D34(v9, __p);
        if (v23 < 0)
        {
          operator delete(__p[0]);
          v13 = a3[1];
          v12 = a3[2];
          if (v13 < v12)
          {
            goto LABEL_4;
          }

LABEL_12:
          v14 = *a3;
          v15 = v13 - *a3;
          v16 = v15 >> 4;
          v17 = (v15 >> 4) + 1;
          if (v17 >> 60)
          {
            sub_1794();
          }

          v18 = v12 - v14;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v20 = (16 * v16);
          *v20 = v10;
          v20[1] = v11;
          v21 = 16 * v16 + 16;
          memcpy(0, v14, v15);
          *a3 = 0;
          a3[1] = v21;
          a3[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            goto LABEL_12;
          }

LABEL_4:
          *v13 = v10;
          v13[1] = v11;
          a3[1] = v13 + 2;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_DE2F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_DE2F64(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_DE2FA8(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = sub_3B2E6C(a4);
  sub_2C1B08(v10, v8);
  v16 = 1;
  sub_E84AEC(a3, v10, (a1 + 3));
  if (v16 == 1)
  {
    if (v15 < 0)
    {
      operator delete(__p);
      if ((v13 & 0x80000000) == 0)
      {
LABEL_4:
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_8:
        operator delete(v10[0]);
        goto LABEL_5;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_5:
  a1[17] = a4;
  sub_60BAC4(a1, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  sub_DE30EC(*a2, a2[1], a1);
  return a1;
}

void sub_DE309C(_Unwind_Exception *a1)
{
  sub_5285C8((v1 + 3));
  sub_60A84C(v1);
  _Unwind_Resume(a1);
}

void sub_DE30BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D71D80(&a9);
  sub_60A84C(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_DE30EC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 3)
    {
      v7 = *i;
      if (*i == i[1])
      {
        v35 = 0u;
        *v36 = 0u;
        v34 = 0u;
        *__p = 0u;
        memset(v33, 0, sizeof(v33));
        *&v36[16] = 0xFFFFFFFFLL;
        v37 = 0uLL;
        v38 = 0;
        v12 = a3[1];
        if (v12 < a3[2])
        {
LABEL_9:
          *(v12 + 16) = 0;
          *(v12 + 24) = 0;
          *v12 = 0;
          *(v12 + 8) = 0;
          *v12 = *__p;
          *(v12 + 16) = v33[0];
          __p[0] = 0;
          __p[1] = 0;
          v33[0] = 0;
          *(v12 + 32) = 0;
          *(v12 + 40) = 0;
          *(v12 + 24) = *&v33[1];
          *(v12 + 40) = v33[3];
          memset(&v33[1], 0, 24);
          v13 = v34;
          v14 = v35;
          v15 = *v36;
          *(v12 + 94) = *&v36[14];
          *(v12 + 64) = v14;
          *(v12 + 80) = v15;
          *(v12 + 48) = v13;
          v16 = v37;
          *(v12 + 120) = v38;
          *(v12 + 104) = v16;
          v38 = 0;
          v37 = 0uLL;
          a3[1] = v12 + 128;
          v17 = v33[1];
          if (v33[1])
          {
            goto LABEL_14;
          }

          goto LABEL_18;
        }
      }

      else
      {
        *__p = *v7;
        v33[0] = *(v7 + 16);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *&v33[1] = *(v7 + 24);
        v33[3] = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        v8 = *(v7 + 48);
        v9 = *(v7 + 64);
        v10 = *(v7 + 80);
        *&v36[14] = *(v7 + 94);
        v35 = v9;
        *v36 = v10;
        v34 = v8;
        v11 = *(v7 + 104);
        v38 = *(v7 + 120);
        v37 = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 120) = 0;
        v12 = a3[1];
        if (v12 < a3[2])
        {
          goto LABEL_9;
        }
      }

      v18 = sub_60BC14(a3, __p);
      v19 = SHIBYTE(v38);
      a3[1] = v18;
      if (v19 < 0)
      {
        operator delete(v37);
        v17 = v33[1];
        if (v33[1])
        {
LABEL_14:
          v20 = v33[2];
          v21 = v17;
          if (v33[2] != v17)
          {
            do
            {
              v20 = sub_3EEA68(v20 - 1096);
            }

            while (v20 != v17);
            v21 = v33[1];
          }

          v33[2] = v17;
          operator delete(v21);
        }
      }

      else
      {
        v17 = v33[1];
        if (v33[1])
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      v22 = __p[0];
      if (__p[0])
      {
        v23 = __p[1];
        v6 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v24 = *(v23 - 3);
            if (v24)
            {
              v25 = *(v23 - 2);
              v26 = *(v23 - 3);
              if (v25 != v24)
              {
                do
                {
                  v27 = v25 - 32;
                  v28 = *(v25 - 8);
                  if (v28 != -1)
                  {
                    (off_2674048[v28])(v39, v25 - 32);
                  }

                  *(v25 - 8) = -1;
                  v25 -= 32;
                }

                while (v27 != v24);
                v26 = *(v23 - 3);
              }

              *(v23 - 2) = v24;
              operator delete(v26);
            }

            v29 = *(v23 - 8);
            if (v29 != -1)
            {
              (off_2674048[v29])(v39, v23 - 7);
            }

            v30 = (v23 - 10);
            *(v23 - 8) = -1;
            if (*(v23 - 57) < 0)
            {
              operator delete(*v30);
            }

            v23 -= 10;
          }

          while (v30 != v22);
          v6 = __p[0];
        }

        __p[1] = v22;
        operator delete(v6);
      }
    }
  }

  return a3;
}

void sub_DE33CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DE33E8(uint64_t a1)
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
          v3 -= 376;
          sub_DE148C(v3);
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

uint64_t sub_DE34A0(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_DE353C((a1 + 8));
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

void **sub_DE353C(void **a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    v27 = v2;
    if (v3 != v2)
    {
      v5 = v3;
      v26 = v1;
      v6 = v27;
      do
      {
        v9 = *(v3 - 3);
        v3 -= 3;
        v8 = v9;
        if (v9)
        {
          v29 = v3;
          v10 = *(v5 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            v28 = v5;
            while (1)
            {
              if (*(v10 - 1) < 0)
              {
                operator delete(*(v10 - 3));
                v12 = *(v10 - 13);
                if (v12)
                {
LABEL_18:
                  v15 = *(v10 - 12);
                  v16 = v12;
                  if (v15 != v12)
                  {
                    do
                    {
                      v15 = sub_3EEA68(v15 - 1096);
                    }

                    while (v15 != v12);
                    v16 = *(v10 - 13);
                  }

                  *(v10 - 12) = v12;
                  operator delete(v16);
                  v13 = v10 - 16;
                  v14 = *(v10 - 16);
                  if (!v14)
                  {
                    goto LABEL_12;
                  }

LABEL_22:
                  v17 = *(v10 - 15);
                  v11 = v14;
                  if (v17 != v14)
                  {
                    do
                    {
                      v18 = *(v17 - 3);
                      if (v18)
                      {
                        v19 = *(v17 - 2);
                        v20 = *(v17 - 3);
                        if (v19 != v18)
                        {
                          do
                          {
                            v21 = v19 - 32;
                            v22 = *(v19 - 2);
                            if (v22 != -1)
                            {
                              (off_2674048[v22])(&v30, v19 - 32);
                            }

                            *(v19 - 2) = -1;
                            v19 -= 32;
                          }

                          while (v21 != v18);
                          v20 = *(v17 - 3);
                        }

                        *(v17 - 2) = v18;
                        operator delete(v20);
                      }

                      v23 = *(v17 - 8);
                      if (v23 != -1)
                      {
                        (off_2674048[v23])(&v31, v17 - 7);
                      }

                      v24 = v17 - 10;
                      *(v17 - 8) = -1;
                      if (*(v17 - 57) < 0)
                      {
                        operator delete(*v24);
                      }

                      v17 -= 10;
                    }

                    while (v24 != v14);
                    v11 = *v13;
                  }

                  *(v10 - 15) = v14;
                  operator delete(v11);
                  goto LABEL_12;
                }
              }

              else
              {
                v12 = *(v10 - 13);
                if (v12)
                {
                  goto LABEL_18;
                }
              }

              v13 = v10 - 16;
              v14 = *(v10 - 16);
              if (v14)
              {
                goto LABEL_22;
              }

LABEL_12:
              v10 = v13;
              if (v13 == v8)
              {
                v5 = v28;
                v7 = *v29;
                v6 = v27;
                break;
              }
            }
          }

          *(v5 - 2) = v8;
          operator delete(v7);
          v3 = v29;
        }

        v5 = v3;
      }

      while (v3 != v6);
      v1 = v26;
      v4 = *v26;
    }

    v1[1] = v27;
    operator delete(v4);
  }

  return v1;
}

uint64_t sub_DE375C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_DE37FC(a1, a1 + 8);
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

void sub_DE37FC(uint64_t a1, uint64_t a2)
{
  sub_DE353C((a2 + 40));
  v3 = *(a2 + 16);
  if (v3)
  {
    do
    {
      v5 = *v3;
      v6 = v3[8];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v3[6];
      v3[6] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v3);
      v3 = v5;
    }

    while (v5);
  }

  v4 = *a2;
  *a2 = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_DE38A0(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 48 * a2;
      do
      {
        *v3 = 0x8000000080000000;
        *(v3 + 8) = 0x7FFFFFFF;
        *(v3 + 16) = 0x7FFFFFFFFFFFFFFFLL;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        v3 += 48;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 48 * v5;
    v11 = 48 * v5 + 48 * a2;
    v12 = 48 * v5;
    do
    {
      *v12 = 0x8000000080000000;
      *(v12 + 8) = 0x7FFFFFFF;
      *(v12 + 16) = 0x7FFFFFFFFFFFFFFFLL;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      v12 += 48;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        v18 = v16[2];
        *v17 = *v16;
        *(v17 + 16) = v18;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(v17 + 40) = 0;
        *(v17 + 24) = *(v16 + 3);
        *(v17 + 40) = v16[5];
        v16[3] = 0;
        v16[4] = 0;
        v16[5] = 0;
        v16 += 6;
        v17 += 48;
      }

      while (v16 != v14);
      do
      {
        v19 = v13[3];
        if (v19)
        {
          v20 = v13[4];
          v21 = v13[3];
          if (v20 != v19)
          {
            do
            {
              v20 = sub_53A868(v20 - 160);
            }

            while (v20 != v19);
            v21 = v13[3];
          }

          v13[4] = v19;
          operator delete(v21);
        }

        v13 += 6;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_DE3AE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        v6 = *(v3 - 16);
        v7 = *(v3 - 24);
        if (v6 != v5)
        {
          do
          {
            v6 = sub_53A868(v6 - 160);
          }

          while (v6 != v5);
          v7 = *(v3 - 24);
        }

        *(v3 - 16) = v5;
        operator delete(v7);
      }

      v3 -= 48;
    }
  }

  return a1;
}

uint64_t sub_DE3B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  sub_E830F0(a3, a1);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v10 = a5[2];
  if (v10 > 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v30 = sub_2D390(exception, "Unknown request type supplied to transit journey planner module input", 0x45uLL);
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
  *(a1 + 112) = 1;
  if (*(a3 + 328))
  {
    v15 = *(a3 + 328);
  }

  else
  {
    v15 = &off_2773798;
  }

  sub_E87768(v15, (a1 + 120));
  *(a1 + 144) = sub_E80E68(a3);
  v16 = *(a3 + 352);
  if (!v16)
  {
    v16 = &off_2776700;
  }

  *(a1 + 145) = *(v16 + 234);
  v17 = sub_E80EC8(a3);
  v18 = *(a3 + 328);
  if (!v18)
  {
    v18 = &off_2773798;
  }

  v19 = v18[8];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = &off_2773778;
  }

  v21 = sub_E7A7A8(v20);
  v22 = *(a3 + 328);
  if (!v22)
  {
    v22 = &off_2773798;
  }

  v23 = v22[8];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &off_2773778;
  }

  v25 = sub_E7A7BC(v24);
  v26 = sub_3B2E6C(a2);
  *(a1 + 152) = v17;
  *(a1 + 153) = v21;
  *(a1 + 154) = v25;
  if (*(v26 + 47) < 0)
  {
    sub_325C((a1 + 160), *(v26 + 24), *(v26 + 32));
  }

  else
  {
    v27 = *(v26 + 24);
    *(a1 + 176) = *(v26 + 40);
    *(a1 + 160) = v27;
  }

  *(a1 + 184) = sub_E85C54(a3);
  *(a1 + 188) = sub_E85CAC(a3);
  return a1;
}

void sub_DE3E08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_DE3E94(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = sub_3B2E6C(a4);
  sub_2C1B08(&v18, v8);
  BYTE8(v27) = 1;
  sub_E84AEC(a3, &v18, (a1 + 3));
  if (BYTE8(v27) == 1)
  {
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
LABEL_4:
        if ((SHIBYTE(v21) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_19:
        operator delete(v18);
        goto LABEL_5;
      }
    }

    else if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v22);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_5:
  a1[17] = a4;
  v9 = 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 3);
  v19 = 0;
  v18 = 0x8000000080000000;
  v21 = 0;
  v20 = 0x8000000080000000;
  v23 = 0;
  v22 = 0x8000000080000000;
  v25 = 0;
  v24 = 0x8000000080000000;
  *__p = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = -1;
  v34 = 0;
  v36 = 0;
  v35 = 0;
  v37 = 0;
  v38 = 0;
  v40 = 0;
  v39 = 0;
  v41 = 0x3FF0000000000000;
  v42 = 0;
  v11 = *a1;
  v10 = a1[1];
  v12 = 0x34F72C234F72C235 * ((v10 - *a1) >> 3);
  v43 = 0;
  v44 = 0;
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
        ;
      }

      a1[1] = i;
    }
  }

  else
  {
    sub_DE42C0(a1, v9 - v12, &v18);
  }

  sub_A30978(&v18);
  v15 = *a2;
  for (j = a2[1]; v15 != j; v15 += 17)
  {
    v16 = v15[3];
    if (v16 != v15[4])
    {
      sub_DE40F8(*a1 + 232 * v15[1], v16);
    }
  }

  return a1;
}

void sub_DE40A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A30978(va);
  sub_5285C8((v2 + 3));
  sub_A3091C(v2);
  _Unwind_Resume(a1);
}

void sub_DE40C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D71D80(va);
  sub_A3091C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_DE40F8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 30) = *(a2 + 30);
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = a1 + 48;
  if (*(a1 + 48))
  {
    sub_D4B520((a1 + 48));
    operator delete(*v6);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v8 = *(a1 + 96);
  if (v8)
  {
    *(a1 + 104) = v8;
    operator delete(v8);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v9 = *(a1 + 120);
  if (v9)
  {
    *(a1 + 128) = v9;
    operator delete(v9);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v10 = a2[9];
  v11 = *(a1 + 168);
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 144) = v10;
  if (v11)
  {
    *(a1 + 176) = v11;
    operator delete(v11);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v12 = (a1 + 208);
  v13 = *(a1 + 208);
  *(a1 + 192) = a2[12];
  if (v13)
  {
    v14 = *(a1 + 216);
    v15 = v13;
    if (v14 != v13)
    {
      do
      {
        v14 -= 80;
        sub_3ED230(v14);
      }

      while (v14 != v13);
      v15 = *v12;
    }

    *(a1 + 216) = v13;
    operator delete(v15);
    *v12 = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  *(a1 + 208) = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  return a1;
}

void sub_DE42C0(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (0x34F72C234F72C235 * ((v5 - v6) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v6 + 232 * a2;
      v12 = 232 * a2;
      do
      {
        sub_A31084(v6, a3);
        v6 += 232;
        v12 -= 232;
      }

      while (v12);
      v6 = v11;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = 0x34F72C234F72C235 * ((v6 - *a1) >> 3);
    if (v7 + a2 > 0x11A7B9611A7B961)
    {
      sub_1794();
    }

    v8 = 0x34F72C234F72C235 * ((v5 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x8D3DCB08D3DCB0)
    {
      v10 = 0x11A7B9611A7B961;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x11A7B9611A7B961)
      {
        operator new();
      }

      sub_1808();
    }

    v13 = 232 * v7;
    v19 = v13;
    v14 = 232 * a2;
    v15 = v13 + 232 * a2;
    do
    {
      sub_A31084(v13, a3);
      v13 += 232;
      v14 -= 232;
    }

    while (v14);
    v16 = a1[1];
    v17 = v19 + *a1 - v16;
    sub_A5B004(a1, *a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    a1[1] = v15;
    a1[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }
}

void sub_DE447C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

void sub_DE4498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DE44B0(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_A30978(v5 - 232);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_DE453C(uint64_t a1)
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
          v5 = *(v3 - 24);
          if (v5)
          {
            v6 = *(v3 - 16);
            v7 = *(v3 - 24);
            if (v6 != v5)
            {
              do
              {
                v6 = sub_53A868(v6 - 160);
              }

              while (v6 != v5);
              v7 = *(v3 - 24);
            }

            *(v3 - 16) = v5;
            operator delete(v7);
          }

          v3 -= 48;
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_21:
      operator delete(v4);
    }
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = *(a1 + 32);
      v4 = *(a1 + 24);
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
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v8;
      goto LABEL_21;
    }
  }

  return a1;
}

uint64_t sub_DE462C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D4C628(a1, a1 + 8);
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

uint64_t sub_DE46CC(uint64_t a1)
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
          v5 = *(v3 - 3);
          if (v5)
          {
            *(v3 - 2) = v5;
            operator delete(v5);
          }

          v6 = *(v3 - 6);
          if (v6)
          {
            *(v3 - 5) = v6;
            operator delete(v6);
          }

          v3 -= 36;
          sub_49AEC0(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_20:
      operator delete(v4);
    }
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v8 != v7)
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
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v7;
      goto LABEL_20;
    }
  }

  return a1;
}

uint64_t sub_DE47AC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_5EFB28(a1, *a2, *(a2 + 8), 0x86BCA1AF286BCA1BLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = *(a2 + 24);
  sub_3EDCF4(a1 + 32, (a2 + 32));
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  sub_5CEC4C(a1 + 328, *(a2 + 328), *(a2 + 336), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 336) - *(a2 + 328)) >> 5));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  sub_5713F4(a1 + 352, *(a2 + 352), *(a2 + 360), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 360) - *(a2 + 352)) >> 5));
  return a1;
}

void sub_DE4880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_5C0ED8((v10 + 328));
  sub_3EE9A4((v10 + 32));
  a10 = v10;
  sub_7C05E4(&a10);
  _Unwind_Resume(a1);
}

void sub_DE48B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7C05E4(va);
  _Unwind_Resume(a1);
}

void ***sub_DE48C8(void ***result)
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
          v4 -= 376;
          sub_DE148C(v4);
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

void *sub_DE4940(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_DE4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_DE3AE0(&a11);
  *(v11 + 8) = v12;
  sub_DE4A88(&a9);
  _Unwind_Resume(a1);
}

void ***sub_DE4A88(void ***a1)
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
          v6 = *(v4 - 3);
          if (v6)
          {
            v7 = *(v4 - 2);
            v8 = *(v4 - 3);
            if (v7 != v6)
            {
              do
              {
                v7 = sub_53A868(v7 - 160);
              }

              while (v7 != v6);
              v8 = *(v4 - 3);
            }

            *(v4 - 2) = v6;
            operator delete(v8);
          }

          v4 -= 48;
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

void **sub_DE4B3C(void **a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = a1[9];
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
              v6 = sub_53A868(v6 - 160);
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
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v8 = a1[6];
  if (v8)
  {
    v9 = a1[7];
    v10 = a1[6];
    if (v9 != v8)
    {
      do
      {
        v9 -= 376;
        sub_DE148C(v9);
      }

      while (v9 != v8);
      v10 = a1[6];
    }

    a1[7] = v8;
    operator delete(v10);
  }

  v11 = a1[3];
  if (v11)
  {
    v12 = a1[4];
    v13 = a1[3];
    if (v12 != v11)
    {
      do
      {
        v12 -= 376;
        sub_DE0144(v12);
      }

      while (v12 != v11);
      v13 = a1[3];
    }

    a1[4] = v11;
    operator delete(v13);
  }

  v14 = *a1;
  if (*a1)
  {
    v15 = a1[1];
    v16 = *a1;
    if (v15 != v14)
    {
      do
      {
        v15 -= 376;
        sub_DDF868(v15);
      }

      while (v15 != v14);
      v16 = *a1;
    }

    a1[1] = v14;
    operator delete(v16);
  }

  return a1;
}

void sub_DE4C80()
{
  byte_27B8E5F = 3;
  LODWORD(qword_27B8E48) = 5136193;
  byte_27B8E77 = 3;
  LODWORD(qword_27B8E60) = 5136194;
  byte_27B8E8F = 3;
  LODWORD(qword_27B8E78) = 5136195;
  byte_27B8EA7 = 15;
  strcpy(&qword_27B8E90, "vehicle_mass_kg");
  byte_27B8EBF = 21;
  strcpy(&xmmword_27B8EA8, "vehicle_cargo_mass_kg");
  byte_27B8ED7 = 19;
  strcpy(&qword_27B8EC0, "vehicle_aux_power_w");
  byte_27B8EEF = 15;
  strcpy(&qword_27B8ED8, "dcdc_efficiency");
  strcpy(&qword_27B8EF0, "drive_train_efficiency");
  HIBYTE(word_27B8F06) = 22;
  operator new();
}

void sub_DE5084(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object)
{
  if (SHIBYTE(word_27B8F06) < 0)
  {
    sub_21E4CFC();
  }

  sub_21E4D08(a1, a2, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_DE50B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_23D9C(&xmmword_27B8E20);
  if (a38 < 0)
  {
    operator delete(a33);
    if ((a31 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a24 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a26);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_4:
    if (a17 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a19);
  if (a17 < 0)
  {
LABEL_5:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

void sub_DE5130()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = *sub_3B8500(v6);
  v8 = sub_194F918((v5 + 4), dword_278E220);
  if (v8)
  {
    v8 = *(sub_1950CD0((v5 + 4), dword_278E220, qword_278E228) + 120);
  }

  v9 = sub_186996C(v8);
  if (*(v9 + 23) < 0)
  {
    sub_325C(&v44, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v45 = v9[2];
    v44 = v10;
  }

  v42 = v2;
  v43 = v4;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  __dst = 0uLL;
  v29[3] = 1851878480;
  v30 = 4;
  v28 = 0;
  sub_D89468(v31, &__dst);
  v11 = __dst;
  if (__dst)
  {
    v12 = *(&__dst + 1);
    v13 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v14 = *(v12 - 25);
        v12 -= 6;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = __dst;
    }

    *(&__dst + 1) = v11;
    operator delete(v13);
  }

  HIBYTE(v28) = 12;
  strcpy(&__dst, "Plan.Started");
  sub_7BDA0(18, &__dst, v7);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  v15 = sub_186996C(v5[53]);
  if (*(v15 + 23) < 0)
  {
    sub_325C(&__dst, *v15, v15[1]);
  }

  else
  {
    v16 = *v15;
    v28 = v15[2];
    __dst = v16;
  }

  if (v28 >= 0)
  {
    v17 = HIBYTE(v28);
  }

  else
  {
    v17 = *(&__dst + 1);
  }

  if (v17 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v17 + 13 >= 0x17)
  {
    operator new();
  }

  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = 0;
  v21[2] = 0;
  HIBYTE(v21[2]) = v17 + 13;
  strcpy(v21, "Plan.Started");
  if (v17)
  {
    if (v28 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    memmove(&v21[1] + 5, p_dst, v17);
  }

  *(&v21[1] + v17 + 5) = 0;
  sub_7BDA0(18, v21, v7);
  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
  }

  if (v45 >= 0)
  {
    v19 = HIBYTE(v45);
  }

  else
  {
    v19 = *(&v44 + 1);
  }

  if (v19 + 22 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v19 + 22 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v21[2]) = v19 + 22;
  strcpy(v21, "Plan.Started.Original.");
  if (v19)
  {
    if (v45 >= 0)
    {
      v20 = &v44;
    }

    else
    {
      v20 = v44;
    }

    memmove(&v21[2] + 6, v20, v19);
  }

  *(&v21[2] + v19 + 6) = 0;
  sub_7BDA0(18, v21, v7);
  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(__dst);
LABEL_45:
  sub_7E9A4(v29);
  if (sub_E6A348(v5))
  {
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v21[0] = v5;
    memset(&v21[1], 0, 24);
    v22 = 0;
    sub_D213E0();
  }

  operator new();
}

void sub_DE6098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_9DA0(&a43);
  sub_DE6C64(&a14);
  sub_DE6D00(v44 - 216);
  sub_DE6DBC(v44 - 160);
  sub_DE6E78(&STACK[0x780]);
  sub_D28608(&STACK[0x9C0]);
  sub_9DA0(&STACK[0x1060]);
  if (*(v43 + 2983) < 0)
  {
    operator delete(*(v43 + 2960));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DE6300(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v8 = sub_4A5C(&v21, "[place lookup] ", 15);
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

void sub_DE661C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_DE6660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DE6674@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "PlaceResponseBuilderModule", 0x1AuLL);
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

void sub_DE674C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DE6778(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_CCEBC0(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_CCED74(a1[1], a2, a3, a4);
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_DE67E0(uint64_t *a1, uint64_t a2, char *a3, double *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v9 = sub_DE6A74(a1, a2, a3, a4);
  }

  else
  {
    v6 = *a3;
    v7 = *a4;
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[1], *a2, *(a2 + 8));
    }

    else
    {
      v8 = *a2;
      *(v5 + 16) = *(a2 + 16);
      *v5 = v8;
    }

    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 40) = 1;
    v9 = v5 + 48;
    a1[1] = v5 + 48;
  }

  a1[1] = v9;
  return v9 - 48;
}

uint64_t sub_DE6888(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_DE68D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_DE6918(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2)
  {
    v3 = *(a1 + 336);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_44FDEC(v3 - 440);
      }

      while (v3 != v2);
      v4 = *(a1 + 328);
    }

    *(a1 + 336) = v2;
    operator delete(v4);
  }

  if (*(a1 + 320) == 1)
  {
    v5 = *(a1 + 296);
    if (v5)
    {
      *(a1 + 304) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 272);
    if (v6)
    {
      *(a1 + 280) = v6;
      operator delete(v6);
    }

    sub_49AEC0((a1 + 32));
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 3);
        if (v10)
        {
          *(v8 - 2) = v10;
          operator delete(v10);
        }

        v11 = *(v8 - 6);
        if (v11)
        {
          *(v8 - 5) = v11;
          operator delete(v11);
        }

        v8 -= 36;
        sub_49AEC0(v8);
      }

      while (v8 != v7);
      v9 = *(a1 + 8);
    }

    *(a1 + 16) = v7;
    operator delete(v9);
  }

  return a1;
}

void **sub_DE6A10(void **a1)
{
  sub_528AB4((a1 + 4));
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_D1FEA4(v3 - 1880);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_DE6A74(uint64_t *a1, uint64_t a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DE6C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DE6C64(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_18FDA18(a1 + 8);
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

uint64_t sub_DE6D00(uint64_t a1)
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
          v5 = v3 - 2480;
          sub_9390FC(v3 - 2472);
          v3 = v5;
        }

        while (v5 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
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
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_DE6DBC(uint64_t a1)
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
          v5 = v3 - 1104;
          sub_3EEA68(v3 - 1096);
          v3 = v5;
        }

        while (v5 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
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
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_DE6E78(uint64_t a1)
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
          v3 -= 19;
          sub_A4A778(v3);
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