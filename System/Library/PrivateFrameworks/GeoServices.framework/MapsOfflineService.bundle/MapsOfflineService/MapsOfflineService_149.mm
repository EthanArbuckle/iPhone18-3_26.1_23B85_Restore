uint64_t sub_9415C0(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 96))
  {
    sub_936658((a1 + 96));
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_941658(uint64_t a1, uint64_t a2)
{
  v3 = sub_93C810(a2);
  v5 = v4;
  v31 = v3;
  v32 = v4;
  v6 = sub_3AFB1C(*(a1 + 24));
  v7 = sub_3AFC64(*(a1 + 24));
  LODWORD(v8) = 0;
  v9 = 0xFFFFFFFF00000000;
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        return -1;
      case 1:
        v10 = sub_502FF8(v6, v3, 0, "stop");
        break;
      case 2:
        v10 = sub_93D2F4(v6, v3, 0, "hall");
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v5 <= 4)
  {
    if (v5 != 3)
    {
      v10 = sub_503310(v6, v3, 0, "access point");
      v11 = *(v10 - *v10 + 22);
LABEL_18:
      v8 = *(v10 + v11);
      v9 = v8 & 0xFFFFFFFF00000000;
      goto LABEL_19;
    }

    v10 = sub_93D480(v6, v3, 0, "station");
LABEL_17:
    v11 = *(v10 - *v10 + 18);
    goto LABEL_18;
  }

  if (v5 == 5)
  {
    v14 = &v31;
  }

  else
  {
    if (v5 != 6)
    {
      goto LABEL_19;
    }

    v12 = v7;
    v13 = sub_3A25A8(v7, v3, 0, "trip");
    v29 = *(v13 + *(v13 - *v13 + 6));
    v14 = &v29;
    v7 = v12;
  }

  sub_941908(v7, v14, __p);
  v8 = *__p[0];
  v9 = *__p[0] & 0xFFFFFFFF00000000;
  __p[1] = __p[0];
  operator delete(__p[0]);
LABEL_19:
  v16 = sub_3AFEE8(*(a1 + 24));
  v17 = sub_943960(v16, v8 | v9, 0, "market");
  v18 = (v17 - *v17);
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v15 = *(v17 + v19);
    v20 = sub_2C939C(v16, 1u, 0);
    if (!v20)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v15 = 0;
    v20 = sub_2C939C(v16, 1u, 0);
    if (!v20)
    {
      goto LABEL_31;
    }
  }

  v21 = &v20[-*v20];
  if (*v21 < 0xDu || (v22 = *(v21 + 6)) == 0)
  {
LABEL_31:
    exception = __cxa_allocate_exception(0x40uLL);
    v28 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v23 = &v20[v22 + *&v20[v22]];
  v24 = &v23[-*v23];
  if (*v24 >= 0xBu)
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      if (v23[v25])
      {
        return nullsub_1(v15);
      }
    }
  }

  return v15;
}

void sub_941908(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_92FC60(a1, *a2, 0, "line");
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *v8;
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v8 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v12 = *v11;
          sub_2512DC(a3, &v12);
        }

        ++v11;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_9419E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_9419FC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_93D480(a1, a2, 0, "station");
  v6 = (v5 - *v5);
  if (*v6 >= 0x2Fu && (v7 = v6[23]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *v8;
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v8 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v12 = *v11;
          sub_2512DC(a3, &v12);
        }

        ++v11;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_941AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_941AEC(void ***a1)
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
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 3));
              }

              v6 -= 4;
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v8 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
          operator delete(*v8);
        }

        v3 -= 8;
      }

      while (v8 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_941BB4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x66FD0EB66FD0EB67 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_9357A0(v10 - 696);
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

    if (a4 <= 0x5E293205E29320)
    {
      v12 = 0x66FD0EB66FD0EB67 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2F149902F14990)
      {
        v14 = 0x5E293205E29320;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x5E293205E29320)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x66FD0EB66FD0EB67 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_941E54(v8, v5);
        v5 += 696;
        v8 += 696;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 696;
      result = sub_9357A0(v15);
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
        result = sub_941E54(v8, v5);
        v5 += 696;
        v8 += 696;
        v16 -= 696;
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
        result = sub_934F60(v15 + v19, v17 + v19);
        v19 += 696;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_941E28(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 696;
    v7 = -v4;
    do
    {
      v6 = sub_9357A0(v6) - 696;
      v7 += 696;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_941E54(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  else
  {
    sub_942014(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    v4 = *(a2 + 47);
    if (*(a1 + 47) < 0)
    {
      if (v4 >= 0)
      {
        v7 = (a2 + 24);
      }

      else
      {
        v7 = *(a2 + 24);
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 47);
      }

      else
      {
        v8 = *(a2 + 32);
      }

      sub_13B38(a1 + 24, v7, v8);
    }

    else if ((*(a2 + 47) & 0x80) != 0)
    {
      sub_13A68((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    v9 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v9;
    sub_31F64((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  }

  *(a1 + 96) = *(a2 + 96);
  sub_5410A0(a1 + 104, a2 + 104);
  sub_5410A0(a1 + 216, a2 + 216);
  sub_5410A0(a1 + 328, a2 + 328);
  sub_5410A0(a1 + 440, a2 + 440);
  v10 = *(a2 + 560);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = v10;
  if (a1 == a2)
  {
    *(a1 + 640) = *(a2 + 640);
  }

  else
  {
    sub_384B90((a1 + 568), *(a2 + 568), *(a2 + 576), *(a2 + 576) - *(a2 + 568));
    sub_384B90((a1 + 592), *(a2 + 592), *(a2 + 600), *(a2 + 600) - *(a2 + 592));
    sub_384B90((a1 + 616), *(a2 + 616), *(a2 + 624), *(a2 + 624) - *(a2 + 616));
    *(a1 + 640) = *(a2 + 640);
    sub_9423BC((a1 + 648), *(a2 + 648), *(a2 + 656), (*(a2 + 656) - *(a2 + 648)) >> 3);
    sub_3865E0((a1 + 672), *(a2 + 672), *(a2 + 680), (*(a2 + 680) - *(a2 + 672)) >> 4);
  }

  return a1;
}

void sub_942014(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3) < a4)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_22:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_23:
      if (a4 <= 0x492492492492492)
      {
        v18 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
        v19 = 2 * v18;
        if (2 * v18 <= a4)
        {
          v19 = a4;
        }

        if (v18 >= 0x249249249249249)
        {
          v20 = 0x492492492492492;
        }

        else
        {
          v20 = v19;
        }

        if (v20 <= 0x492492492492492)
        {
          operator new();
        }
      }

      sub_1794();
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
LABEL_10:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
          goto LABEL_10;
        }
      }

      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        goto LABEL_22;
      }
    }
  }

  v13 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v13 >> 3) < a4)
  {
    sub_942268(a2, a2 + v13, v8);
    a1[1] = sub_93555C(a1, (a2 + v13), a3, a1[1]);
    return;
  }

  sub_942268(a2, a3, v8);
  v15 = v14;
  v16 = a1[1];
  if (v16 != v14)
  {
    do
    {
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 3));
        v17 = v16 - 7;
        if (*(v16 - 33) < 0)
        {
LABEL_20:
          operator delete(*v17);
        }
      }

      else
      {
        v17 = v16 - 7;
        if (*(v16 - 33) < 0)
        {
          goto LABEL_20;
        }
      }

      v16 = v17;
    }

    while (v17 != v15);
  }

  a1[1] = v15;
}

uint64_t sub_942268(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (result != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (v4 + v6);
      if (v4 == a3)
      {
        *(v7 + 24) = *(v8 + 24);
      }

      else
      {
        v9 = *(v8 + 23);
        if (*(v7 + 23) < 0)
        {
          if (v9 >= 0)
          {
            v11 = (v4 + v6);
          }

          else
          {
            v11 = *(v4 + v6);
          }

          if (v9 >= 0)
          {
            v12 = *(v8 + 23);
          }

          else
          {
            v12 = *(v4 + v6 + 8);
          }

          sub_13B38(v7, v11, v12);
        }

        else if ((*(v8 + 23) & 0x80) != 0)
        {
          sub_13A68(v7, *(v4 + v6), *(v4 + v6 + 8));
        }

        else
        {
          v10 = *v8;
          *(v7 + 16) = *(v8 + 2);
          *v7 = v10;
        }

        v13 = a3 + v6;
        *(a3 + v6 + 24) = *(v4 + v6 + 24);
        v14 = (v4 + v6 + 32);
        v15 = *(v4 + v6 + 55);
        if (*(a3 + v6 + 55) < 0)
        {
          if (v15 >= 0)
          {
            v17 = (v4 + v6 + 32);
          }

          else
          {
            v17 = *v14;
          }

          if (v15 >= 0)
          {
            v18 = *(v4 + v6 + 55);
          }

          else
          {
            v18 = *(v4 + v6 + 40);
          }

          sub_13B38(v13 + 32, v17, v18);
        }

        else if ((*(v4 + v6 + 55) & 0x80) != 0)
        {
          sub_13A68((v13 + 32), *v14, *(v4 + v6 + 40));
        }

        else
        {
          v16 = *v14;
          *(v13 + 48) = *(v4 + v6 + 48);
          *(v13 + 32) = v16;
        }
      }

      v6 += 56;
    }

    while (v4 + v6 != a2);
    return a2;
  }

  return result;
}

char *sub_9423BC(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a4 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      a1[1] = v6;
      v8 = a4;
      operator delete(v6);
      a4 = v8;
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v5 >> 2;
      if (v5 >> 2 <= a4)
      {
        v9 = a4;
      }

      v33 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = a1[1];
  if (a4 <= (v11 - v6) >> 3)
  {
    if (a2 != a3)
    {
      v26 = a3 - a2 - 8;
      if (v26 >= 0x78)
      {
        v45 = v26 & 0xFFFFFFFFFFFFFFF8 | 4;
        v46 = &v6[v45];
        v47 = a2 + v45;
        v48 = (v26 & 0xFFFFFFFFFFFFFFF8) + 8;
        v50 = (v6 + 4) < a2 + v48 && a2 + 4 < &v6[v48];
        if (v46 <= a2 || v6 >= v47)
        {
          if (v50)
          {
            v27 = a2;
          }

          else
          {
            v52 = (v26 >> 3) + 1;
            v53 = 8 * (v52 & 0x3FFFFFFFFFFFFFF8);
            result = &v6[v53];
            v27 = (a2 + v53);
            v54 = (a2 + 32);
            v55 = v6 + 32;
            v56 = v52 & 0x3FFFFFFFFFFFFFF8;
            do
            {
              v58 = *(v54 - 2);
              v57 = *(v54 - 1);
              v60 = *v54;
              v59 = v54[1];
              v54 += 4;
              *(v55 - 2) = v58;
              *(v55 - 1) = v57;
              *v55 = v60;
              v55[1] = v59;
              v55 += 4;
              v56 -= 8;
            }

            while (v56);
            if (v52 == (v52 & 0x3FFFFFFFFFFFFFF8))
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v27 = a2;
        }
      }

      else
      {
        v27 = a2;
      }

      do
      {
        v28 = *v27++;
        *result = v28;
        result += 8;
      }

      while (v27 != a3);
    }

LABEL_29:
    a1[1] = result;
    return result;
  }

  v12 = (a2 + v11 - v6);
  v13 = v11 - v6;
  if (v11 == v6)
  {
    goto LABEL_16;
  }

  v14 = v13 - 8;
  if ((v13 - 8) < 0x78)
  {
    v15 = a2;
    do
    {
LABEL_15:
      v16 = *v15++;
      *result = v16;
      result += 8;
    }

    while (v15 != v12);
    goto LABEL_16;
  }

  v29 = v14 & 0xFFFFFFFFFFFFFFF8 | 4;
  v30 = &v6[v29];
  v31 = a2 + v29;
  v32 = (v14 & 0xFFFFFFFFFFFFFFF8) + 8;
  v33 = (v6 + 4) >= a2 + v32 || a2 + 4 >= &v6[v32];
  v34 = !v33;
  v15 = a2;
  if (v30 > a2 && v6 < v31)
  {
    goto LABEL_15;
  }

  if (v34)
  {
    goto LABEL_15;
  }

  v36 = (v14 >> 3) + 1;
  v37 = 8 * (v36 & 0x3FFFFFFFFFFFFFF8);
  result = &v6[v37];
  v15 = (a2 + v37);
  v38 = (a2 + 32);
  v39 = v6 + 32;
  v40 = v36 & 0x3FFFFFFFFFFFFFF8;
  do
  {
    v42 = *(v38 - 2);
    v41 = *(v38 - 1);
    v44 = *v38;
    v43 = v38[1];
    v38 += 4;
    *(v39 - 2) = v42;
    *(v39 - 1) = v41;
    *v39 = v44;
    v39[1] = v43;
    v39 += 4;
    v40 -= 8;
  }

  while (v40);
  if (v36 != (v36 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v12 == a3)
  {
    a1[1] = v11;
  }

  else
  {
    v17 = a3 + v6 - &v11[a2] - 8;
    if (v17 < 0x18)
    {
      goto LABEL_22;
    }

    if (&v6[-a2] < 0x20)
    {
      goto LABEL_22;
    }

    v18 = (v17 >> 3) + 1;
    v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v12 = (v12 + v19);
    v20 = &v11[v19];
    v21 = v11 + 16;
    v22 = (a2 + v21 - v6);
    v23 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      v21 += 32;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    v11 = v20;
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_22:
      v20 = v11;
      do
      {
        v25 = *v12++;
        *v20 = v25;
        v20 += 8;
      }

      while (v12 != a3);
    }

    a1[1] = v20;
  }

  return result;
}

uint64_t *sub_942718(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_935DD4(v10 - 208);
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

    if (a4 <= 0x13B13B13B13B13BLL)
    {
      v12 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x9D89D89D89D89DLL)
      {
        v14 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x13B13B13B13B13BLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_9429B8(v8, v5);
        v5 += 208;
        v8 += 208;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 208;
      result = sub_935DD4(v15);
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
        result = sub_9429B8(v8, v5);
        v5 += 208;
        v8 += 208;
        v16 -= 208;
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
        result = sub_935BD4(v15 + v19, v17 + v19);
        v19 += 208;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_94298C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 208;
    v7 = -v4;
    do
    {
      v6 = sub_935DD4(v6) - 208;
      v7 += 208;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_9429B8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    sub_942014(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    v4 = *(a2 + 47);
    if (*(a1 + 47) < 0)
    {
      if (v4 >= 0)
      {
        v6 = (a2 + 24);
      }

      else
      {
        v6 = *(a2 + 24);
      }

      if (v4 >= 0)
      {
        v7 = *(a2 + 47);
      }

      else
      {
        v7 = *(a2 + 32);
      }

      sub_13B38(a1 + 24, v6, v7);
    }

    else if ((*(a2 + 47) & 0x80) != 0)
    {
      sub_13A68((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = *(a2 + 48);
    sub_31F64((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
  }

  sub_5410A0(a1 + 88, a2 + 88);
  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t sub_942AA0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v9 = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 120) = v9;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  LODWORD(v7) = *(a2 + 144);
  *(v6 + 148) = *(a2 + 148);
  *(v6 + 144) = v7;
  v10 = 152 * v2 + 152;
  v11 = *a1;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 8);
      *(v15 + 24) = *(v14 + 3);
      *(v15 + 8) = v16;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 1) = 0;
      v17 = *(v14 + 2);
      *(v15 + 48) = *(v14 + 6);
      *(v15 + 32) = v17;
      *(v14 + 5) = 0;
      *(v14 + 6) = 0;
      *(v14 + 4) = 0;
      v18 = *(v14 + 7);
      *(v15 + 64) = *(v14 + 16);
      *(v15 + 56) = v18;
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      *(v15 + 72) = *(v14 + 72);
      *(v15 + 88) = *(v14 + 11);
      *(v14 + 9) = 0;
      *(v14 + 10) = 0;
      *(v14 + 11) = 0;
      *(v15 + 104) = 0;
      *(v15 + 112) = 0;
      *(v15 + 96) = *(v14 + 6);
      *(v15 + 112) = *(v14 + 14);
      *(v14 + 12) = 0;
      *(v14 + 13) = 0;
      *(v14 + 14) = 0;
      v19 = *(v14 + 120);
      *(v15 + 136) = *(v14 + 17);
      *(v15 + 120) = v19;
      *(v14 + 16) = 0;
      *(v14 + 17) = 0;
      *(v14 + 15) = 0;
      LODWORD(v18) = *(v14 + 36);
      *(v15 + 148) = v14[148];
      *(v15 + 144) = v18;
      v14 += 152;
      v15 += 152;
    }

    while (v14 != v12);
    do
    {
      sub_936258(v11);
      v11 += 152;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

uint64_t sub_942D1C(uint64_t a1)
{
  v2 = *(a1 + 424);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 408);
  *(a1 + 408) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 384);
  if (v5)
  {
    do
    {
      v26 = *v5;
      v27 = v5[2];
      if (v27)
      {
        v5[3] = v27;
        operator delete(v27);
      }

      operator delete(v5);
      v5 = v26;
    }

    while (v26);
  }

  v6 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 344);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 304);
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

  v12 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 264);
  if (v13)
  {
    do
    {
      v14 = *v13;
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(a1 + 224);
  if (v16)
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(a1 + 184);
  if (v19)
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(a1 + 144);
  if (v22)
  {
    do
    {
      v23 = *v22;
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_942EB8((a1 + 48));
  return a1;
}

uint64_t *sub_942EB8(uint64_t *a1)
{
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    sub_F4AF44(v2);
    operator delete();
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    sub_F4AF44(v3);
    operator delete();
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    sub_784028(v4);
    operator delete();
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    sub_784028(v5);
    operator delete();
  }

  return a1;
}

void **sub_942F5C(void **a1)
{
  v2 = a1[30];
  if (v2)
  {
    v3 = a1[31];
    v4 = a1[30];
    if (v3 != v2)
    {
      v5 = a1[31];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[30];
    }

    a1[31] = v2;
    operator delete(v4);
  }

  v8 = a1[27];
  if (v8)
  {
    v9 = a1[28];
    v10 = a1[27];
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 3);
        if (v11)
        {
          *(v9 - 2) = v11;
          operator delete(v11);
        }

        v12 = v9 - 6;
        if (*(v9 - 25) < 0)
        {
          operator delete(*v12);
        }

        v9 -= 6;
      }

      while (v12 != v8);
      v10 = a1[27];
    }

    a1[28] = v8;
    operator delete(v10);
  }

  v13 = a1[24];
  if (v13)
  {
    v14 = a1[25];
    v15 = a1[24];
    if (v14 != v13)
    {
      do
      {
        v14 = sub_399184(v14 - 456);
      }

      while (v14 != v13);
      v15 = a1[24];
    }

    a1[25] = v13;
    operator delete(v15);
  }

  v16 = a1[21];
  if (v16)
  {
    v17 = a1[22];
    v18 = a1[21];
    if (v17 != v16)
    {
      do
      {
        v17 = sub_78B5C0(v17 - 7808);
      }

      while (v17 != v16);
      v18 = a1[21];
    }

    a1[22] = v16;
    operator delete(v18);
  }

  v19 = a1[18];
  if (!v19)
  {
    goto LABEL_42;
  }

  v20 = a1[19];
  v21 = a1[18];
  if (v20 == v19)
  {
    goto LABEL_41;
  }

  do
  {
    if (*(v20 - 9) < 0)
    {
      operator delete(*(v20 - 4));
      if (*(v20 - 41) < 0)
      {
LABEL_38:
        operator delete(*(v20 - 8));
        v22 = v20 - 14;
        v23 = *(v20 - 20);
        if (v23 == -1)
        {
          goto LABEL_32;
        }

LABEL_39:
        (off_266DCB0[v23])(&v43, v22);
        goto LABEL_32;
      }
    }

    else if (*(v20 - 41) < 0)
    {
      goto LABEL_38;
    }

    v22 = v20 - 14;
    v23 = *(v20 - 20);
    if (v23 != -1)
    {
      goto LABEL_39;
    }

LABEL_32:
    *(v20 - 20) = -1;
    v20 = v22;
  }

  while (v22 != v19);
  v21 = a1[18];
LABEL_41:
  a1[19] = v19;
  operator delete(v21);
LABEL_42:
  v24 = a1[15];
  if (v24)
  {
    v25 = a1[16];
    v26 = a1[15];
    if (v25 != v24)
    {
      do
      {
        v25 = sub_9432AC(v25 - 304);
      }

      while (v25 != v24);
      v26 = a1[15];
    }

    a1[16] = v24;
    operator delete(v26);
  }

  v27 = a1[12];
  if (v27)
  {
    v28 = a1[13];
    v29 = a1[12];
    if (v28 != v27)
    {
      do
      {
        v28 = sub_935DD4(v28 - 208);
      }

      while (v28 != v27);
      v29 = a1[12];
    }

    a1[13] = v27;
    operator delete(v29);
  }

  v30 = a1[9];
  if (v30)
  {
    v31 = a1[10];
    v32 = a1[9];
    if (v31 != v30)
    {
      do
      {
        v31 = sub_9357A0(v31 - 696);
      }

      while (v31 != v30);
      v32 = a1[9];
    }

    a1[10] = v30;
    operator delete(v32);
  }

  v33 = a1[6];
  if (v33)
  {
    v34 = a1[7];
    v35 = a1[6];
    if (v34 != v33)
    {
      do
      {
        v34 = sub_943558(v34 - 136);
      }

      while (v34 != v33);
      v35 = a1[6];
    }

    a1[7] = v33;
    operator delete(v35);
  }

  v36 = a1[3];
  if (v36)
  {
    v37 = a1[4];
    v38 = a1[3];
    if (v37 != v36)
    {
      do
      {
        v37 = sub_943718(v37 - 144);
      }

      while (v37 != v36);
      v38 = a1[3];
    }

    a1[4] = v36;
    operator delete(v38);
  }

  v39 = *a1;
  if (*a1)
  {
    v40 = a1[1];
    v41 = *a1;
    if (v40 != v39)
    {
      do
      {
        v40 = sub_943834(v40 - 168);
      }

      while (v40 != v39);
      v41 = *a1;
    }

    a1[1] = v39;
    operator delete(v41);
  }

  return a1;
}

uint64_t sub_9432AC(uint64_t a1)
{
  if ((*(a1 + 295) & 0x80000000) == 0)
  {
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 240));
    v2 = *(a1 + 224);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 272));
  if (*(a1 + 263) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 224);
  if (v2 != -1)
  {
LABEL_7:
    (off_266DCB0[v2])(&v19, a1 + 192);
  }

LABEL_8:
  *(a1 + 224) = -1;
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    v5 = *(a1 + 144);
    v6 = *(a1 + 136);
    if (v5 == v4)
    {
LABEL_20:
      *(a1 + 144) = v4;
      operator delete(v6);
      goto LABEL_21;
    }

    while (1)
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
        if (*(v5 - 33) < 0)
        {
LABEL_18:
          operator delete(*(v5 - 56));
        }
      }

      else if (*(v5 - 33) < 0)
      {
        goto LABEL_18;
      }

      v5 -= 64;
      if (v5 == v4)
      {
        v6 = *(a1 + 136);
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v7 = *(a1 + 112);
  if (!v7)
  {
    goto LABEL_32;
  }

  v8 = *(a1 + 120);
  v9 = *(a1 + 112);
  if (v8 != v7)
  {
    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 24));
        if (*(v8 - 33) < 0)
        {
LABEL_29:
          operator delete(*(v8 - 56));
        }
      }

      else if (*(v8 - 33) < 0)
      {
        goto LABEL_29;
      }

      v8 -= 64;
      if (v8 == v7)
      {
        v9 = *(a1 + 112);
        break;
      }
    }
  }

  *(a1 + 120) = v7;
  operator delete(v9);
LABEL_32:
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_38:
    operator delete(*(a1 + 64));
    v10 = *(a1 + 40);
    if (!v10)
    {
LABEL_35:
      v11 = *(a1 + 16);
      if (v11)
      {
        goto LABEL_49;
      }

      return a1;
    }

    goto LABEL_39;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v10 = *(a1 + 40);
  if (!v10)
  {
    goto LABEL_35;
  }

LABEL_39:
  v13 = *(a1 + 48);
  if (v13 == v10)
  {
    *(a1 + 48) = v10;
    operator delete(v10);
    v11 = *(a1 + 16);
    if (v11)
    {
      goto LABEL_49;
    }

    return a1;
  }

  do
  {
    if (*(v13 - 1) < 0)
    {
      operator delete(*(v13 - 3));
      v14 = v13 - 7;
      if ((*(v13 - 33) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v14 = v13 - 7;
      if ((*(v13 - 33) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    operator delete(*v14);
LABEL_42:
    v13 = v14;
  }

  while (v14 != v10);
  v15 = *(a1 + 40);
  *(a1 + 48) = v10;
  operator delete(v15);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return a1;
  }

LABEL_49:
  v16 = *(a1 + 24);
  v17 = v11;
  if (v16 != v11)
  {
    while (1)
    {
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 3));
        v18 = v16 - 7;
        if (*(v16 - 33) < 0)
        {
LABEL_56:
          operator delete(*v18);
        }
      }

      else
      {
        v18 = v16 - 7;
        if (*(v16 - 33) < 0)
        {
          goto LABEL_56;
        }
      }

      v16 = v18;
      if (v18 == v11)
      {
        v17 = *(a1 + 16);
        break;
      }
    }
  }

  *(a1 + 24) = v11;
  operator delete(v17);
  return a1;
}

uint64_t sub_943558(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 120);
  v4 = *(a1 + 112);
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 64));
        v5 = *(v3 - 80);
        if (v5 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266DCB0[v5])(&v14, v3 - 112);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = *(v3 - 80);
    if (v5 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 80) = -1;
    v3 -= 128;
  }

  while (v3 != v2);
  v4 = *(a1 + 112);
LABEL_13:
  *(a1 + 120) = v2;
  operator delete(v4);
LABEL_14:
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 64);
    if (v7 == v6)
    {
LABEL_24:
      *(a1 + 72) = v6;
      operator delete(v8);
      goto LABEL_25;
    }

    while (2)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 24));
        if (*(v7 - 33) < 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(v7 - 33) < 0)
      {
LABEL_22:
        operator delete(*(v7 - 56));
      }

      v7 -= 64;
      if (v7 == v6)
      {
        v8 = *(a1 + 64);
        goto LABEL_24;
      }

      continue;
    }
  }

LABEL_25:
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 == v9)
    {
LABEL_37:
      *(a1 + 24) = v9;
      operator delete(v11);
      return a1;
    }

    while (2)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v12 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
LABEL_35:
          operator delete(*v12);
        }
      }

      v10 = v12;
      if (v12 == v9)
      {
        v11 = *(a1 + 16);
        goto LABEL_37;
      }

      continue;
    }
  }

  return a1;
}

uint64_t sub_943718(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 == v3)
    {
LABEL_13:
      *(a1 + 72) = v3;
      operator delete(v5);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
        if (*(v4 - 33) < 0)
        {
LABEL_11:
          operator delete(*(v4 - 56));
        }
      }

      else if (*(v4 - 33) < 0)
      {
        goto LABEL_11;
      }

      v4 -= 64;
      if (v4 == v3)
      {
        v5 = *(a1 + 64);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 16);
    if (v7 == v6)
    {
LABEL_26:
      *(a1 + 24) = v6;
      operator delete(v8);
      return a1;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_24:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = *(a1 + 16);
        goto LABEL_26;
      }
    }
  }

  return a1;
}

uint64_t sub_943834(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 64);
    if (v4 == v3)
    {
LABEL_15:
      *(a1 + 72) = v3;
      operator delete(v5);
      goto LABEL_16;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
        if (*(v4 - 33) < 0)
        {
LABEL_13:
          operator delete(*(v4 - 56));
        }
      }

      else if (*(v4 - 33) < 0)
      {
        goto LABEL_13;
      }

      v4 -= 64;
      if (v4 == v3)
      {
        v5 = *(a1 + 64);
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 16);
    if (v7 == v6)
    {
LABEL_28:
      *(a1 + 24) = v6;
      operator delete(v8);
      return a1;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_26:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_26;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = *(a1 + 16);
        goto LABEL_28;
      }
    }
  }

  return a1;
}

uint64_t sub_943960(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x13u)
  {
    v9 = *(v8 + 9);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_943ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_943AEC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_943C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_943D6C(va);
  _Unwind_Resume(a1);
}

void sub_943C1C(uint64_t *a1, void *a2)
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
      v9 = *v7;
      *(v8 + 16) = *(v7 + 2);
      *v8 = v9;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 7);
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      v7 += 4;
      v8 += 64;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 40);
      if (v10)
      {
        v11 = *(v5 + 48);
        v12 = *(v5 + 40);
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
          v12 = *(v5 + 40);
        }

        *(v5 + 48) = v10;
        operator delete(v12);
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 64;
    }

    while (v5 != v4);
  }

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

uint64_t sub_943D6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
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
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_943E24(unsigned int **a1, unsigned int **a2, uint64_t *a3, void (*a4)(void **__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(v16, *a1 + **a1);
    while (1)
    {
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v11 = sub_943F8C(a3, v16);
        v12 = __p[0];
        a3[1] = v11;
        if (v12)
        {
          v13 = __p[1];
          v14 = v12;
          if (__p[1] != v12)
          {
            do
            {
              if (*(v13 - 1) < 0)
              {
                operator delete(*(v13 - 3));
              }

              v13 -= 4;
            }

            while (v13 != v12);
            v14 = __p[0];
          }

          __p[1] = v12;
          operator delete(v14);
        }
      }

      else
      {
        v10 = *v16;
        *(v9 + 16) = v17;
        *v9 = v10;
        v16[1] = 0;
        v17 = 0;
        v16[0] = 0;
        *(v9 + 24) = v18;
        *(v9 + 48) = 0;
        *(v9 + 56) = 0;
        *(v9 + 40) = 0;
        *(v9 + 40) = *__p;
        *(v9 + 56) = v20;
        __p[0] = 0;
        __p[1] = 0;
        v20 = 0;
        a3[1] = v9 + 64;
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      v8 = *a1 + 1;
      *a1 = v8;
      if (v8 == *a2)
      {
        break;
      }

      a4(v16, v8 + *v8);
    }
  }

  return a3;
}

uint64_t sub_943F8C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  __p = 0;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v17 = (v2 << 6) + 64;
  v18 = 0;
  sub_943C1C(a1, &__p);
  v8 = a1[1];
  v9 = v16;
  while (1)
  {
    v10 = v17;
    if (v17 == v9)
    {
      break;
    }

    v17 -= 64;
    v11 = *(v10 - 24);
    if (v11)
    {
      v12 = *(v10 - 16);
      v13 = *(v10 - 24);
      if (v12 != v11)
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
        v13 = *(v10 - 24);
      }

      *(v10 - 16) = v11;
      operator delete(v13);
    }

    if (*(v10 - 41) < 0)
    {
      operator delete(*(v10 - 64));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_94411C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_943D6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_944130(uint64_t *a1, uint64_t a2)
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
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 72 * v2;
  __p = 0;
  v16 = v7;
  v17 = v7;
  v18 = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  sub_93636C((v7 + 24), (a2 + 24));
  if (*(a2 + 71) < 0)
  {
    sub_325C((v7 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 64) = *(a2 + 64);
  }

  v17 += 72;
  sub_944314(a1, &__p);
  v8 = a1[1];
  v9 = v16;
  while (1)
  {
    v10 = v17;
    if (v17 == v9)
    {
      break;
    }

    v17 -= 72;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v13 = *(v10 - 48);
      v11 = (v10 - 48);
      if (v13)
      {
LABEL_19:
        sub_936658(v11);
        operator delete(*v11);
      }
    }

    else
    {
      v12 = *(v10 - 48);
      v11 = (v10 - 48);
      if (v12)
      {
        goto LABEL_19;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_9442E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_934E08((v2 + 24));
  sub_944448(va);
  _Unwind_Resume(a1);
}

void sub_944300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_944448(va);
  _Unwind_Resume(a1);
}

void sub_944314(uint64_t *a1, void *a2)
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
      v9 = *v7;
      *(v8 + 16) = *(v7 + 4);
      *v8 = v9;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 40) = *(v7 + 5);
      *(v7 + 3) = 0;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      v10 = v7[3];
      *(v8 + 64) = *(v7 + 8);
      *(v8 + 48) = v10;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      *(v7 + 6) = 0;
      v7 = (v7 + 72);
      v8 += 72;
    }

    while (v7 != v4);
    while (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 6));
      v11 = v5 + 3;
      if (*(v5 + 3))
      {
        goto LABEL_10;
      }

LABEL_5:
      v5 = (v5 + 72);
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    v11 = v5 + 3;
    if (!*(v5 + 3))
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_936658(v11);
    operator delete(*v11);
    goto LABEL_5;
  }

LABEL_11:
  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_944448(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      v6 = *(i - 48);
      v4 = (i - 48);
      if (!v6)
      {
        continue;
      }

LABEL_8:
      sub_936658(v4);
      operator delete(*v4);
      continue;
    }

    v5 = *(i - 48);
    v4 = (i - 48);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9444D4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 24))
  {
    sub_936658((a1 + 24));
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t *sub_944524(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t sub_94489C(uint64_t a1, unint64_t a2)
{
  v3 = sub_92FC60(a1, a2, 0, "line");
  v4 = (v3 - *v3);
  if (*v4 >= 9u)
  {
    v5 = v4[4];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }

  return 3;
}

void sub_944AB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_944AD0()
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
  xmmword_27B17B8 = 0u;
  unk_27B17C8 = 0u;
  dword_27B17D8 = 1065353216;
  sub_3A9A34(&xmmword_27B17B8, v0);
  sub_3A9A34(&xmmword_27B17B8, v3);
  sub_3A9A34(&xmmword_27B17B8, __p);
  sub_3A9A34(&xmmword_27B17B8, v9);
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
    qword_27B1760 = 0;
    qword_27B1768 = 0;
    qword_27B1758 = 0;
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

void sub_944DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1770)
  {
    qword_27B1778 = qword_27B1770;
    operator delete(qword_27B1770);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_944FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9450EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_945114(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x27FFFFFFFLL;
  *a3 = &off_266D9E8;
  *(a3 + 16) = -1;
  v6 = a3 + 16;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = -1;
  *(a3 + 80) = 0x7FFFFFFF;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0x7FFFFFFF;
  *(a3 + 164) = 0;
  v7 = sub_93C810(a2);
  v9 = v8;
  v33 = v7;
  v34 = v8;
  if (*(a2 + 584) || *(a2 + 24) == *(a2 + 32) || !v8)
  {
    goto LABEL_2;
  }

  v14 = *sub_945514((a2 + 24), 0);
  v15 = sub_3AFB1C(*(a1 + 32));
  sub_9572CC(v14, a2, v15, *(a1 + 24), v9 == 1, v22);
  sub_939B60(v6, v22);
  if (v32 < 0)
  {
    operator delete(v31);
    v16 = v29;
    if (!v29)
    {
LABEL_17:
      v17 = v27;
      if (!v27)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v16 = v29;
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  v18 = v16;
  if (v30 == v16)
  {
    goto LABEL_36;
  }

  v19 = v30 - 65;
  do
  {
    if (v19[64] < 0)
    {
      operator delete(*(v19 + 41));
      if ((v19[32] & 0x80000000) == 0)
      {
LABEL_28:
        if (*v19 < 0)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }
    }

    else if ((v19[32] & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(*(v19 + 9));
    if (*v19 < 0)
    {
LABEL_33:
      operator delete(*(v19 - 23));
      v21 = *(v19 - 39);
      if (v21 == -1)
      {
        goto LABEL_25;
      }

LABEL_34:
      (off_266DCD8[v21])(&v35, v19 - 71);
      goto LABEL_25;
    }

LABEL_29:
    v21 = *(v19 - 39);
    if (v21 != -1)
    {
      goto LABEL_34;
    }

LABEL_25:
    *(v19 - 39) = -1;
    v20 = v19 - 79;
    v19 -= 144;
  }

  while (v20 != v16);
  v18 = v29;
LABEL_36:
  v30 = v16;
  operator delete(v18);
  v17 = v27;
  if (v27)
  {
LABEL_18:
    v28 = v17;
    operator delete(v17);
  }

LABEL_19:
  if (v26 < 0)
  {
    operator delete(__p);
    if (v24 < 0)
    {
      goto LABEL_39;
    }
  }

  else if (v24 < 0)
  {
LABEL_39:
    operator delete(v22[1]);
  }

LABEL_2:
  v10 = sub_93C870(a2);
  v11 = v10;
  if (v10 <= 0xFFFFFFFEFFFFFFFFLL && v10)
  {
    v12 = sub_3AFC64(*(a1 + 32));
    sub_3A25A8(v12, v11, 0, "trip");
    sub_948248();
  }

  sub_9483C8(&v33, *(a1 + 24), *(a1 + 32), *(a1 + 8), v22);
  if (*(a3 + 112))
  {
    sub_936658((a3 + 112));
    operator delete(*(a3 + 112));
  }

  *(a3 + 112) = *v22;
  *(a3 + 128) = v23;
  v13 = sub_3AFB1C(*(a1 + 32));
  sub_9592FC(a2, v13, *(a1 + 24), v22);
  if (*(a3 + 159) < 0)
  {
    operator delete(*(a3 + 136));
  }

  *(a3 + 136) = *v22;
  *(a3 + 152) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22[0]) = 0;
  if (v26 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  *(a3 + 8) = *(a1 + 16);
}

uint64_t sub_945514(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, (a1[1] - *a1) >> 3);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 8 * a2;
}

void sub_945648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_945728()
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
  xmmword_27B1810 = 0u;
  unk_27B1820 = 0u;
  dword_27B1830 = 1065353216;
  sub_3A9A34(&xmmword_27B1810, v0);
  sub_3A9A34(&xmmword_27B1810, v3);
  sub_3A9A34(&xmmword_27B1810, __p);
  sub_3A9A34(&xmmword_27B1810, v9);
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
    qword_27B17E8 = 0;
    qword_27B17F0 = 0;
    qword_27B17E0 = 0;
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

void sub_945970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B17F8)
  {
    qword_27B1800 = qword_27B17F8;
    operator delete(qword_27B17F8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_945A1C(unint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = sub_92FC60(a2, *v2, 0, "line");
      v6 = (v5 - *v5);
      if (*v6 >= 0x45u)
      {
        v7 = v6[34];
        if (v7)
        {
          if (*(v5 + v7 + *(v5 + v7)))
          {
            operator new();
          }
        }
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

void sub_945BF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_945C14(unint64_t **a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = sub_3AFEE8(a4);
  v76 = sub_3AFB1C(a4);
  v77 = sub_3AFC64(a4);
  v78 = 0;
  v10 = *a2;
  v11 = a2[1];
  v102 = 0u;
  v103 = 0u;
  v104 = 1065353216;
  v79 = 0;
  v80 = 0;
  if (v10 == v11)
  {
    v33 = 0;
    v34 = 0;
    goto LABEL_87;
  }

  do
  {
    v12 = *v10;
    nullsub_1(&v83);
    v13 = sub_93E04C(v9, v12, 0, "system");
    v14 = (v13 - *v13);
    if (*v14 >= 7u && (v15 = v14[3]) != 0)
    {
      v16 = (v13 + v15 + *(v13 + v15));
      v105 = 0uLL;
      v106 = 0;
      sub_943AEC(&v105, *v16);
      v88 = v16 + 1;
      v87 = &v16[*v16 + 1];
      sub_943E24(&v88, &v87, &v105, sub_509164);
      v17 = v105;
      v18 = v106;
    }

    else
    {
      v18 = 0;
      v17 = 0uLL;
    }

    *__p = v17;
    v82 = v18;
    sub_9D6590(__p, a3 + 968, &v84);
    v19 = __p[0];
    if (__p[0])
    {
      v20 = __p[1];
      v21 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v22 = *(v20 - 3);
          if (v22)
          {
            v23 = *(v20 - 2);
            v24 = *(v20 - 3);
            if (v23 != v22)
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
              v24 = *(v20 - 3);
            }

            *(v20 - 2) = v22;
            operator delete(v24);
          }

          v25 = (v20 - 64);
          if (*(v20 - 41) < 0)
          {
            operator delete(*v25);
          }

          v20 -= 64;
        }

        while (v25 != v19);
        v21 = __p[0];
      }

      __p[1] = v19;
      operator delete(v21);
    }

    sub_9D45D8(&v84, &v105);
    memset(v92, 255, sizeof(v92));
    v93 = 0uLL;
    v94 = 0;
    v95 = 0;
    v97 = 0;
    v98 = 0;
    v96 = 0;
    v99 = 0;
    v101 = 0;
    v100 = 0uLL;
    v91 = 0;
    LODWORD(v89) = 1;
    if (SHIBYTE(v106) < 0)
    {
      sub_13A68(&v100, v105, *(&v105 + 1));
    }

    else
    {
      v100 = v105;
      v101 = v106;
    }

    if (v108 < 0)
    {
      operator delete(v107);
      if ((SHIBYTE(v106) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      operator delete(v105);
      v26 = v84;
      if (!v84)
      {
        goto LABEL_42;
      }

LABEL_33:
      v27 = v85;
      v28 = v26;
      if (v85 == v26)
      {
LABEL_41:
        v85 = v26;
        operator delete(v28);
        goto LABEL_42;
      }

      while (1)
      {
        if (*(v27 - 1) < 0)
        {
          operator delete(*(v27 - 3));
          v29 = v27 - 7;
          if ((*(v27 - 33) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_39:
          operator delete(*v29);
          v27 = v29;
          if (v29 == v26)
          {
LABEL_40:
            v28 = v84;
            goto LABEL_41;
          }
        }

        else
        {
          v29 = v27 - 7;
          if (*(v27 - 33) < 0)
          {
            goto LABEL_39;
          }

LABEL_36:
          v27 = v29;
          if (v29 == v26)
          {
            goto LABEL_40;
          }
        }
      }
    }

    if (SHIBYTE(v106) < 0)
    {
      goto LABEL_32;
    }

LABEL_29:
    v26 = v84;
    if (v84)
    {
      goto LABEL_33;
    }

LABEL_42:
    if (!sub_94A7F4(&v102, &v89))
    {
      sub_94B3C0(&v102, &v89);
      v31 = v79;
      if (v79 >= v80)
      {
        v79 = sub_94B948(&v78, &v89);
        if (SHIBYTE(v101) < 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        *v79 = v89;
        sub_55F1E8((v31 + 8), v90);
        if (SHIBYTE(v101) < 0)
        {
          sub_325C(v31 + 120, v100, *(&v100 + 1));
          v79 = v31 + 144;
          if (SHIBYTE(v101) < 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v32 = v100;
          *(v31 + 17) = v101;
          *(v31 + 120) = v32;
          v79 = v31 + 144;
          if (SHIBYTE(v101) < 0)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_44:
      if ((SHIBYTE(v98) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_54;
    }

    if ((SHIBYTE(v101) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_53:
    operator delete(v100);
    if ((SHIBYTE(v98) & 0x80000000) == 0)
    {
LABEL_45:
      if ((v95 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_55:
      operator delete(*(&v93 + 1));
      v30 = v91;
      if (v91 == -1)
      {
        goto LABEL_3;
      }

      goto LABEL_56;
    }

LABEL_54:
    operator delete(v96);
    if (v95 < 0)
    {
      goto LABEL_55;
    }

LABEL_46:
    v30 = v91;
    if (v91 != -1)
    {
LABEL_56:
      (off_266DD00[v30])(&v105, v90);
    }

LABEL_3:
    ++v10;
  }

  while (v10 != v11);
  v34 = v78;
  v33 = v79;
  if (v78 == v79)
  {
LABEL_87:
    v36 = a5;
    goto LABEL_113;
  }

  v35 = v78 + 287;
  v36 = a5;
  while (1)
  {
    v34 = v35 - 287;
    v39 = *(v35 - 287);
    if (v39 == 4)
    {
      goto LABEL_64;
    }

    if (v39 == 3)
    {
      break;
    }

    if (v39 != 1)
    {
      goto LABEL_83;
    }

    v40 = *(v35 - 144);
    if ((v40 & 0x80u) != 0)
    {
      v40 = *(v35 - 159);
    }

    if (!v40)
    {
      goto LABEL_83;
    }

LABEL_64:
    v38 = v35 - 143;
    v35 += 144;
    if (v38 == v79)
    {
      v34 = v79;
      goto LABEL_113;
    }
  }

  v41 = *(v35 - 247);
  if (v41 <= 2)
  {
    v42 = v35 - 279;
    if (v41 == 1)
    {
      if (*v42 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (v41 != 2 || *(v35 - 275) == -1 && *v42 == -1 && *(v35 - 271) == *(v35 - 263))
    {
      goto LABEL_83;
    }

    goto LABEL_64;
  }

  if (v41 == 3 || v41 == 4)
  {
    v37 = *(v35 - 256);
    if ((v37 & 0x80u) != 0)
    {
      v37 = *(v35 - 271);
    }

    if (v37)
    {
      goto LABEL_64;
    }
  }

LABEL_83:
  if (v34 != v79 && v35 - 143 != v79)
  {
    while (1)
    {
      v44 = *(v35 - 143);
      if (v44 == 4)
      {
        goto LABEL_90;
      }

      if (v44 != 3)
      {
        break;
      }

      v46 = *(v35 - 103);
      if (v46 > 2)
      {
        if (v46 != 3 && v46 != 4)
        {
          goto LABEL_91;
        }

        v47 = *(v35 - 112);
        if ((v47 & 0x80u) != 0)
        {
          v47 = *(v35 - 127);
        }

        if (!v47)
        {
          goto LABEL_91;
        }

LABEL_90:
        sub_94BC18(v34, (v35 - 143));
        v34 += 144;
        goto LABEL_91;
      }

      if (v46 != 1)
      {
        if (v46 != 2 || *(v35 - 131) == -1 && *(v35 - 135) == -1 && *(v35 - 127) == *(v35 - 119))
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }

      if (*(v35 - 135) != -1)
      {
        goto LABEL_90;
      }

LABEL_91:
      v43 = v35 + 1;
      v35 += 144;
      if (v43 == v33)
      {
        v33 = v79;
        goto LABEL_113;
      }
    }

    if (v44 != 1)
    {
      goto LABEL_91;
    }

    v45 = *v35;
    if ((v45 & 0x80u) != 0)
    {
      v45 = *(v35 - 15);
    }

    if (!v45)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_113:
  sub_94BAF4(&v78, v34, v33);
  v48 = v79;
  if (0x8E38E38E38E38E39 * ((v79 - v78) >> 4) > v36)
  {
    v49 = 0;
    v50 = v79 - 144;
    do
    {
      v52 = &v48[v49];
      if (v48[v49 - 1] < 0)
      {
        operator delete(*(v52 - 3));
        if ((*(v52 - 33) & 0x80000000) == 0)
        {
LABEL_118:
          v53 = &v48[v49];
          if ((v48[v49 - 65] & 0x80000000) == 0)
          {
            goto LABEL_119;
          }

          goto LABEL_123;
        }
      }

      else if ((*(v52 - 33) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      operator delete(*&v48[v49 - 56]);
      v53 = &v48[v49];
      if ((v48[v49 - 65] & 0x80000000) == 0)
      {
LABEL_119:
        v54 = *(v53 - 26);
        if (v54 == -1)
        {
          goto LABEL_115;
        }

LABEL_124:
        (off_266DD00[v54])(&v89, v52 - 136);
        goto LABEL_115;
      }

LABEL_123:
      operator delete(*(v53 - 11));
      v54 = *(v53 - 26);
      if (v54 != -1)
      {
        goto LABEL_124;
      }

LABEL_115:
      *(v53 - 26) = -1;
      v79 = &v48[v49 - 144];
      v51 = 0x8E38E38E38E38E39 * ((&v50[v49] - v78) >> 4);
      v49 -= 144;
    }

    while (v51 > v36);
  }

  sub_94A714(&v102);
  v56 = v78;
  v55 = v79;
  v57 = v79 - v78;
  if (0x8E38E38E38E38E39 * ((v79 - v78) >> 4) > 1)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v89 = a6;
    v90[0] = 0;
    if (v55 == v56)
    {
      goto LABEL_156;
    }

LABEL_130:
    if (0x8E38E38E38E38E39 * (v57 >> 4) <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_945A1C(a1, v77))
  {
    v59 = v78;
    v58 = v79;
    v57 = v79 - v78;
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v89 = a6;
    v90[0] = 0;
    if (v58 == v59)
    {
      goto LABEL_156;
    }

    goto LABEL_130;
  }

  v60 = *a1;
  v61 = a1[1];
  v102 = 0u;
  v103 = 0u;
  v104 = 1065353216;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  if (v60 != v61)
  {
    sub_9A8A70(v9, v76, v77, *v60, a3);
  }

  sub_94BAF4(&v84, 0, 0);
  sub_94A714(&v102);
  if (v84 != v85)
  {
    v62 = 0x8E38E38E38E38E39 * ((v85 - v84) >> 4);
    if (v62 <= a5)
    {
      *a6 = 0;
      a6[1] = 0;
      a6[2] = 0;
      v89 = a6;
      v90[0] = 0;
      if (v62 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1794();
    }
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v89 = a6;
  v90[0] = 0;
  if (v79 != v78)
  {
    if (0x8E38E38E38E38E39 * ((v79 - v78) >> 4) <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1794();
  }

  v63 = v84;
  if (!v84)
  {
    goto LABEL_156;
  }

  v64 = v84;
  if (v85 == v84)
  {
    goto LABEL_155;
  }

  v65 = v85 - 65;
  do
  {
    if (v65[64] < 0)
    {
      operator delete(*(v65 + 41));
      if ((v65[32] & 0x80000000) == 0)
      {
LABEL_147:
        if (*v65 < 0)
        {
          goto LABEL_152;
        }

        goto LABEL_148;
      }
    }

    else if ((v65[32] & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    operator delete(*(v65 + 9));
    if (*v65 < 0)
    {
LABEL_152:
      operator delete(*(v65 - 23));
      v67 = *(v65 - 39);
      if (v67 == -1)
      {
        goto LABEL_144;
      }

LABEL_153:
      (off_266DD00[v67])(&v89, v65 - 71);
      goto LABEL_144;
    }

LABEL_148:
    v67 = *(v65 - 39);
    if (v67 != -1)
    {
      goto LABEL_153;
    }

LABEL_144:
    *(v65 - 39) = -1;
    v66 = v65 - 79;
    v65 -= 144;
  }

  while (v66 != v63);
  v64 = v84;
LABEL_155:
  v85 = v63;
  operator delete(v64);
LABEL_156:
  v68 = v78;
  if (!v78)
  {
    return;
  }

  v69 = v78;
  if (v79 == v78)
  {
    goto LABEL_170;
  }

  v70 = v79 - 65;
  while (2)
  {
    if ((v70[64] & 0x80000000) == 0)
    {
      if ((v70[32] & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

LABEL_166:
      operator delete(*(v70 + 9));
      if (*v70 < 0)
      {
        goto LABEL_167;
      }

LABEL_163:
      v72 = *(v70 - 39);
      if (v72 == -1)
      {
        goto LABEL_159;
      }

LABEL_168:
      (off_266DD00[v72])(&v89, v70 - 71);
      goto LABEL_159;
    }

    operator delete(*(v70 + 41));
    if (v70[32] < 0)
    {
      goto LABEL_166;
    }

LABEL_162:
    if ((*v70 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

LABEL_167:
    operator delete(*(v70 - 23));
    v72 = *(v70 - 39);
    if (v72 != -1)
    {
      goto LABEL_168;
    }

LABEL_159:
    *(v70 - 39) = -1;
    v71 = (v70 - 79);
    v70 -= 144;
    if (v71 != v68)
    {
      continue;
    }

    break;
  }

  v69 = v78;
LABEL_170:
  v79 = v68;
  operator delete(v69);
}

void sub_946B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  v29 = v27;
  *(v29 + 8) = v28;
  sub_936608(&a27);
  sub_934E08(&a22);
  sub_934E08(&a14);
  _Unwind_Resume(a1);
}

void sub_946B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_934E08(va1);
  sub_94A714(v6 - 256);
  sub_934E08(va);
  _Unwind_Resume(a1);
}

void sub_946C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_948038(&a27);
  sub_509680(v27 - 208);
  sub_9354C4(&a22);
  sub_934E08(&a14);
  sub_94A714(v27 - 256);
  _Unwind_Resume(a1);
}

void sub_946D44(unint64_t **a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = sub_3AFEE8(a4);
  sub_3AFB1C(a4);
  v10 = sub_3AFC64(a4);
  v11 = *a2;
  v12 = a2[1];
  memset(v82, 0, sizeof(v82));
  v83 = 1065353216;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  if (v11 == v12)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_49;
  }

  do
  {
    sub_9480E4(*v11, v9, a3, &v69);
    if (sub_94A7F4(v82, &v69))
    {
      if ((SHIBYTE(v79) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_94B3C0(v82, &v69);
      v14 = v67;
      if (v67 >= v68)
      {
        v67 = sub_94B948(&v66, &v69);
        if ((SHIBYTE(v79) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *v67 = v69;
        sub_55F1E8((v14 + 8), v70);
        if (SHIBYTE(v79) < 0)
        {
          sub_325C(v14 + 120, __p, *(&__p + 1));
          v67 = v14 + 144;
          if ((SHIBYTE(v79) & 0x80000000) == 0)
          {
LABEL_6:
            if ((SHIBYTE(v76) & 0x80000000) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v15 = __p;
          *(v14 + 17) = v79;
          *(v14 + 120) = v15;
          v67 = v14 + 144;
          if ((SHIBYTE(v79) & 0x80000000) == 0)
          {
            goto LABEL_6;
          }
        }
      }
    }

    operator delete(__p);
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
LABEL_7:
      if (v73 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_16:
    operator delete(v74);
    if (v73 < 0)
    {
LABEL_17:
      operator delete(*&v72[8]);
      v13 = v71;
      if (v71 == -1)
      {
        goto LABEL_3;
      }

LABEL_18:
      (off_266DD00[v13])(v80, v70);
      goto LABEL_3;
    }

LABEL_8:
    v13 = v71;
    if (v71 != -1)
    {
      goto LABEL_18;
    }

LABEL_3:
    ++v11;
  }

  while (v11 != v12);
  v17 = v66;
  v16 = v67;
  if (v66 == v67)
  {
LABEL_49:
    v19 = a5;
    goto LABEL_75;
  }

  v18 = v66 + 287;
  v19 = a5;
  while (1)
  {
    v17 = v18 - 287;
    v22 = *(v18 - 287);
    if (v22 == 4)
    {
      goto LABEL_26;
    }

    if (v22 == 3)
    {
      break;
    }

    if (v22 != 1)
    {
      goto LABEL_45;
    }

    v23 = *(v18 - 144);
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v18 - 159);
    }

    if (!v23)
    {
      goto LABEL_45;
    }

LABEL_26:
    v21 = v18 - 143;
    v18 += 144;
    if (v21 == v67)
    {
      v17 = v67;
      goto LABEL_75;
    }
  }

  v24 = *(v18 - 247);
  if (v24 <= 2)
  {
    v25 = v18 - 279;
    if (v24 == 1)
    {
      if (*v25 == -1)
      {
        goto LABEL_45;
      }
    }

    else if (v24 != 2 || *(v18 - 275) == -1 && *v25 == -1 && *(v18 - 271) == *(v18 - 263))
    {
      goto LABEL_45;
    }

    goto LABEL_26;
  }

  if (v24 == 3 || v24 == 4)
  {
    v20 = *(v18 - 256);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v18 - 271);
    }

    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_45:
  if (v17 != v67 && v18 - 143 != v67)
  {
    while (1)
    {
      v27 = *(v18 - 143);
      if (v27 == 4)
      {
        goto LABEL_52;
      }

      if (v27 != 3)
      {
        break;
      }

      v29 = *(v18 - 103);
      if (v29 > 2)
      {
        if (v29 != 3 && v29 != 4)
        {
          goto LABEL_53;
        }

        v30 = *(v18 - 112);
        if ((v30 & 0x80u) != 0)
        {
          v30 = *(v18 - 127);
        }

        if (!v30)
        {
          goto LABEL_53;
        }

LABEL_52:
        sub_94BC18(v17, (v18 - 143));
        v17 += 144;
        goto LABEL_53;
      }

      if (v29 != 1)
      {
        if (v29 != 2 || *(v18 - 131) == -1 && *(v18 - 135) == -1 && *(v18 - 127) == *(v18 - 119))
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      if (*(v18 - 135) != -1)
      {
        goto LABEL_52;
      }

LABEL_53:
      v26 = v18 + 1;
      v18 += 144;
      if (v26 == v16)
      {
        v16 = v67;
        goto LABEL_75;
      }
    }

    if (v27 != 1)
    {
      goto LABEL_53;
    }

    v28 = *v18;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v18 - 15);
    }

    if (!v28)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_75:
  sub_94BAF4(&v66, v17, v16);
  v31 = v67;
  if (0x8E38E38E38E38E39 * ((v67 - v66) >> 4) > v19)
  {
    v32 = 0;
    do
    {
      v34 = &v31[v32];
      if (v31[v32 - 1] < 0)
      {
        operator delete(*(v34 - 3));
        if ((*(v34 - 33) & 0x80000000) == 0)
        {
LABEL_80:
          v35 = &v31[v32];
          if ((v31[v32 - 65] & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_85;
        }
      }

      else if ((*(v34 - 33) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

      operator delete(*&v31[v32 - 56]);
      v35 = &v31[v32];
      if ((v31[v32 - 65] & 0x80000000) == 0)
      {
LABEL_81:
        v36 = *(v35 - 26);
        if (v36 == -1)
        {
          goto LABEL_77;
        }

LABEL_86:
        (off_266DD00[v36])(&v69, v34 - 136);
        goto LABEL_77;
      }

LABEL_85:
      operator delete(*(v35 - 11));
      v36 = *(v35 - 26);
      if (v36 != -1)
      {
        goto LABEL_86;
      }

LABEL_77:
      *(v35 - 26) = -1;
      v67 = &v31[v32 - 144];
      v33 = 0x8E38E38E38E38E39 * ((&v31[v32 - 144] - v66) >> 4);
      v32 -= 144;
    }

    while (v33 > a5);
  }

  sub_94A714(v82);
  v38 = v66;
  v37 = v67;
  v39 = 0x8E38E38E38E38E39 * ((v67 - v66) >> 4);
  if (v39 >= 2)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v69 = a6;
    v70[0] = 0;
    if (v37 != v38)
    {
      if (v39 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1794();
    }

    goto LABEL_141;
  }

  v40 = *a1;
  v41 = a1[1];
  memset(v80, 0, sizeof(v80));
  v81 = 1065353216;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  if (v40 != v41)
  {
    operator new();
  }

  sub_94BAF4(&v63, 0, 0);
  sub_94A714(v80);
  if (v63 != v64)
  {
    v43 = v66;
    v42 = v67;
    v44 = 0x8E38E38E38E38E39 * ((v64 - v63) >> 4);
    if (v66 == v67)
    {
      if (v44 <= a5)
      {
        *a6 = 0;
        a6[1] = 0;
        a6[2] = 0;
        v69 = a6;
        v70[0] = 0;
        if (v44 <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_1794();
      }

      v46 = 0;
      v45 = a6;
      goto LABEL_110;
    }

    v45 = a6;
    if (v44 <= a5)
    {
      if (sub_945A1C(a1, v10))
      {
        *a6 = 0;
        a6[1] = 0;
        a6[2] = 0;
        v69 = a6;
        v70[0] = 0;
        if (v64 != v63)
        {
          if (0x8E38E38E38E38E39 * ((v64 - v63) >> 4) <= 0x1C71C71C71C71C7)
          {
            operator new();
          }

          sub_1794();
        }

        goto LABEL_126;
      }

      v43 = v66;
      v42 = v67;
      v44 = 0x8E38E38E38E38E39 * ((v64 - v63) >> 4);
    }

    v46 = v42 - v43;
    if (v44 - 0x71C71C71C71C71C7 * ((v42 - v43) >> 4) + 1 > a5)
    {
LABEL_110:
      *v45 = 0;
      v45[1] = 0;
      v45[2] = 0;
      v69 = v45;
      v70[0] = 0;
      if (v42 != v43)
      {
        if (0x8E38E38E38E38E39 * (v46 >> 4) <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_1794();
      }

      goto LABEL_126;
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v69 = a6;
    v70[0] = 0;
    if (v42 != v43)
    {
      if (0x8E38E38E38E38E39 * ((v42 - v43) >> 4) <= 0x1C71C71C71C71C7)
      {
        operator new();
      }

      sub_1794();
    }

    memset(v72, 255, 7);
    memset(&v72[7], 0, 24);
    v73 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v77 = 0;
    v79 = 0;
    __p = 0uLL;
    v71 = 0;
    LODWORD(v69) = 4;
    sub_94A210(a6, &v69);
    v48 = SHIBYTE(v79);
    a6[1] = v49;
    if (v48 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v76) < 0)
      {
        goto LABEL_117;
      }

LABEL_122:
      if ((v73 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

LABEL_118:
      operator delete(*&v72[8]);
      v47 = v71;
      if (v71 != -1)
      {
LABEL_124:
        (off_266DD00[v47])(v82, v70);
      }
    }

    else
    {
      if ((SHIBYTE(v76) & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

LABEL_117:
      operator delete(v74);
      if (v73 < 0)
      {
        goto LABEL_118;
      }

LABEL_123:
      v47 = v71;
      if (v71 != -1)
      {
        goto LABEL_124;
      }
    }

    sub_94BD48(a6, a6[1], v63, v64, 0x8E38E38E38E38E39 * ((v64 - v63) >> 4));
    goto LABEL_126;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v69 = a6;
  v70[0] = 0;
  if (v67 != v66)
  {
    if (0x8E38E38E38E38E39 * ((v67 - v66) >> 4) <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_126:
  v50 = v63;
  if (!v63)
  {
    goto LABEL_141;
  }

  v51 = v63;
  if (v64 == v63)
  {
    goto LABEL_140;
  }

  v52 = v64 - 65;
  while (2)
  {
    if ((v52[64] & 0x80000000) == 0)
    {
      if ((v52[32] & 0x80000000) == 0)
      {
        goto LABEL_132;
      }

LABEL_136:
      operator delete(*(v52 + 9));
      if (*v52 < 0)
      {
        goto LABEL_137;
      }

LABEL_133:
      v54 = *(v52 - 39);
      if (v54 == -1)
      {
        goto LABEL_129;
      }

LABEL_138:
      (off_266DD00[v54])(&v69, v52 - 71);
      goto LABEL_129;
    }

    operator delete(*(v52 + 41));
    if (v52[32] < 0)
    {
      goto LABEL_136;
    }

LABEL_132:
    if ((*v52 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

LABEL_137:
    operator delete(*(v52 - 23));
    v54 = *(v52 - 39);
    if (v54 != -1)
    {
      goto LABEL_138;
    }

LABEL_129:
    *(v52 - 39) = -1;
    v53 = v52 - 79;
    v52 -= 144;
    if (v53 != v50)
    {
      continue;
    }

    break;
  }

  v51 = v63;
LABEL_140:
  v64 = v50;
  operator delete(v51);
LABEL_141:
  v55 = v66;
  if (!v66)
  {
    return;
  }

  v56 = v66;
  if (v67 == v66)
  {
    goto LABEL_155;
  }

  v57 = v67 - 65;
  while (2)
  {
    if ((v57[64] & 0x80000000) == 0)
    {
      if ((v57[32] & 0x80000000) == 0)
      {
        goto LABEL_147;
      }

LABEL_151:
      operator delete(*(v57 + 9));
      if (*v57 < 0)
      {
        goto LABEL_152;
      }

LABEL_148:
      v59 = *(v57 - 39);
      if (v59 == -1)
      {
        goto LABEL_144;
      }

LABEL_153:
      (off_266DD00[v59])(&v69, v57 - 71);
      goto LABEL_144;
    }

    operator delete(*(v57 + 41));
    if (v57[32] < 0)
    {
      goto LABEL_151;
    }

LABEL_147:
    if ((*v57 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

LABEL_152:
    operator delete(*(v57 - 23));
    v59 = *(v57 - 39);
    if (v59 != -1)
    {
      goto LABEL_153;
    }

LABEL_144:
    *(v57 - 39) = -1;
    v58 = (v57 - 79);
    v57 -= 144;
    if (v58 != v55)
    {
      continue;
    }

    break;
  }

  v56 = v66;
LABEL_155:
  v67 = v55;
  operator delete(v56);
}

void sub_947E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  *(v5 + 8) = v6;
  sub_936608(va2);
  sub_934E08(va);
  sub_934E08(va1);
  _Unwind_Resume(a1);
}

void sub_947EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  *(v8 + 8) = v9;
  sub_936608(va1);
  sub_934E08(va);
  _Unwind_Resume(a1);
}

void sub_947F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_934E08(&a13);
  sub_94A714(&a37);
  sub_934E08(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_948038(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 88));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = *(a1 + 40);
    if (v2 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(a1 + 56));
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
LABEL_9:
    (off_266DD00[v2])(&v4, a1 + 8);
  }

LABEL_10:
  *(a1 + 40) = -1;
  return a1;
}

double sub_9480E4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_9A809C(a2, a1, &v11);
  *(a4 + 40) = 0;
  *(a4 + 48) = -1;
  *(a4 + 51) = -1;
  *(a4 + 88) = 0;
  v8 = (a4 + 88);
  *(a4 + 55) = 0;
  *(a4 + 71) = 0;
  *(a4 + 63) = 0;
  *(a4 + 79) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 120) = 0;
  *a4 = 3;
  sub_5410A0(a4 + 8, &v11);
  if ((v17 & 0x80000000) == 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v14);
    v9 = v13;
    if (v13 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p);
  if (v15 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = v13;
  if (v13 != -1)
  {
LABEL_7:
    (off_266DD00[v9])(&v18, &v11);
  }

LABEL_8:
  sub_9BC958(a1, a2, a3, &v11);
  if (*(a4 + 111) < 0)
  {
    operator delete(*v8);
  }

  result = *&v11;
  *v8 = v11;
  *(a4 + 104) = v12;
  return result;
}

void sub_94822C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_948038(v2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_948384(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_9483C8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  v10 = *(a1 + 8);
  if (v10 > 2)
  {
    if (v10 > 4)
    {
      if (v10 == 5)
      {
        sub_948248();
      }

      if (v10 == 6)
      {
        v27 = sub_3AFC64(a3);
        if (*(a1 + 8) == 6)
        {
          sub_3A25A8(v27, *a1, 0, "trip");
          sub_948248();
        }

        sub_5AF20();
      }

      goto LABEL_29;
    }

    if (v10 != 3)
    {
      v11 = sub_3AFB1C(a3);
      if (*(a1 + 8) != 4)
      {
        sub_5AF20();
      }

      v12 = v11;
      v13 = sub_503310(v11, *a1, 0, "access point");
      v14 = (v13 - *v13);
      if (*v14 >= 0x11u)
      {
        v15 = v14[8];
        if (v15)
        {
          v16 = (v13 + v15 + *(v13 + v15));
          v17 = *v16;
          if (v17)
          {
            v18 = 8 * v17;
            v19 = v16 + 1;
            do
            {
              if (*(v12 + 3888) != 1 || sub_2D5204(*(v12 + 3872)))
              {
                operator new();
              }

              v19 += 2;
              v18 -= 8;
            }

            while (v18);
          }
        }
      }

      goto LABEL_29;
    }

    v29 = *a1;
    v30 = sub_3AFB1C(a3);
    v31 = sub_3AFC64(a3);
    sub_9498A4(v29, v30, v31, a2, &v43);
    v32 = *(a1 + 8);
    *v47 = v43;
    v48 = v44;
    if (v32 != 3)
    {
      sub_5AF20();
    }

    v33 = *a1;
    v34 = sub_3AFEE8(a3);
    v35 = sub_3AFB1C(a3);
    sub_949C08(v33, v34, v35, a2, &v43);
    goto LABEL_28;
  }

  switch(v10)
  {
    case 0:
      v28 = 0;
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      goto LABEL_33;
    case 1:
      v36 = *a1;
      v37 = sub_3AFB1C(a3);
      v38 = sub_3AFC64(a3);
      sub_9489C4(v36, v37, v38, a2, &v43);
      v39 = *(a1 + 8);
      *v47 = v43;
      v48 = v44;
      if (v39 != 1)
      {
        sub_5AF20();
      }

      v40 = *a1;
      v41 = sub_3AFEE8(a3);
      v42 = sub_3AFB1C(a3);
      sub_948D28(v40, v41, v42, a2, &v43);
      goto LABEL_28;
    case 2:
      v20 = *a1;
      v21 = sub_3AFB1C(a3);
      v22 = sub_3AFC64(a3);
      sub_949134(v20, v21, v22, a2, &v43);
      v23 = *(a1 + 8);
      *v47 = v43;
      v48 = v44;
      if (v23 != 2)
      {
        sub_5AF20();
      }

      v24 = *a1;
      v25 = sub_3AFEE8(a3);
      v26 = sub_3AFB1C(a3);
      sub_949498(v24, v25, v26, a2, &v43);
LABEL_28:
      *__p = v43;
      v46 = v44;
      break;
  }

LABEL_29:
  if (*(a2 + 1433) == 1)
  {
    sub_945C14(v47, __p, a2, a3, a4, a5);
  }

  else
  {
    sub_946D44(v47, __p, a2, a3, a4, a5);
  }

  v28 = __p[0];
LABEL_33:
  if (v28)
  {
    operator delete(v28);
  }

  if (v47[0])
  {
    operator delete(v47[0]);
  }
}

void sub_948938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  operator delete(v21);
  if (__p)
  {
    operator delete(__p);
    v23 = a21;
    if (a21)
    {
LABEL_6:
      operator delete(v23);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v23 = a21;
    if (a21)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_9489C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  v10 = sub_502FF8(a2, a1, 0, "stop");
  v11 = (v10 - *v10);
  if (*v11 < 0x39u || (v12 = v11[28]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v28 = v17;
    v18 = sub_502FF8(a2, a1, 0, "stop");
    v19 = (v18 - *v18);
    if (*v19 >= 0xFu)
    {
      v20 = v19[7];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v17 = v28;
    sub_2D31D4(0, 0, &v29, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
    {
      v30 = *v16;
      sub_2512DC(a5, &v30);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_94C4B0(v26, *v17, a4, a3);
  if (result != a5[1])
  {
    *v17 = result;
  }

  return result;
}

void sub_948CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *a12 = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_948D28(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  v10 = sub_502FF8(a3, a1, 0, "stop");
  v11 = (v10 - *v10);
  if (*v11 < 0x37u || (v12 = v11[27]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v18 = sub_502FF8(a3, a1, 0, "stop");
    v19 = (v18 - *v18);
    if (*v19 >= 0x11u)
    {
      v20 = v19[8];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2D31D4(0, 0, &v33, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
    {
      v34 = *v16;
      sub_2512DC(a5, &v34);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  v27 = *v17;
  if (v26 != *v17)
  {
    while (1)
    {
      v28 = *v26;
      if (*(a4 + 1432) & 1) == 0 && (sub_94C60C(a2, *v26))
      {
        break;
      }

      v29 = *(a4 + 1433);
      if (v29 < sub_94C828(a2, v28))
      {
        break;
      }

      if (++v26 == v27)
      {
        v26 = v27;
        goto LABEL_37;
      }
    }

    if (v26 != v27)
    {
      for (i = v26 + 1; i != v27; ++i)
      {
        v31 = *i;
        if ((*(a4 + 1432) & 1) != 0 || (sub_94C60C(a2, *i) & 1) == 0)
        {
          v32 = *(a4 + 1433);
          if (v32 >= sub_94C828(a2, v31))
          {
            *v26++ = *i;
          }
        }
      }
    }
  }

LABEL_37:
  if (v26 != a5[1])
  {
    *v17 = v26;
  }
}

void sub_9490D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **a12)
{
  v13 = *a12;
  if (*a12)
  {
    *a11 = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_949134@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  v10 = sub_93D2F4(a2, a1, 0, "hall");
  v11 = (v10 - *v10);
  if (*v11 < 0x2Bu || (v12 = v11[21]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v28 = v17;
    v18 = sub_93D2F4(a2, a1, 0, "hall");
    v19 = (v18 - *v18);
    if (*v19 >= 0xFu)
    {
      v20 = v19[7];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v17 = v28;
    sub_2D31D4(0, 0, &v29, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
    {
      v30 = *v16;
      sub_2512DC(a5, &v30);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_94C4B0(v26, *v17, a4, a3);
  if (result != a5[1])
  {
    *v17 = result;
  }

  return result;
}

void sub_949440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *a12 = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_949498(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  v10 = sub_93D2F4(a3, a1, 0, "hall");
  v11 = (v10 - *v10);
  if (*v11 < 0x27u || (v12 = v11[19]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v18 = sub_93D2F4(a3, a1, 0, "hall");
    v19 = (v18 - *v18);
    if (*v19 >= 0x11u)
    {
      v20 = v19[8];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2D31D4(0, 0, &v33, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
    {
      v34 = *v16;
      sub_2512DC(a5, &v34);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  v27 = *v17;
  if (v26 != *v17)
  {
    while (1)
    {
      v28 = *v26;
      if (*(a4 + 1432) & 1) == 0 && (sub_94C60C(a2, *v26))
      {
        break;
      }

      v29 = *(a4 + 1433);
      if (v29 < sub_94C828(a2, v28))
      {
        break;
      }

      if (++v26 == v27)
      {
        v26 = v27;
        goto LABEL_37;
      }
    }

    if (v26 != v27)
    {
      for (i = v26 + 1; i != v27; ++i)
      {
        v31 = *i;
        if ((*(a4 + 1432) & 1) != 0 || (sub_94C60C(a2, *i) & 1) == 0)
        {
          v32 = *(a4 + 1433);
          if (v32 >= sub_94C828(a2, v31))
          {
            *v26++ = *i;
          }
        }
      }
    }
  }

LABEL_37:
  if (v26 != a5[1])
  {
    *v17 = v26;
  }
}

void sub_949844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **a12)
{
  v13 = *a12;
  if (*a12)
  {
    *a11 = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_9498A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  v10 = sub_93D480(a2, a1, 0, "station");
  v11 = (v10 - *v10);
  if (*v11 < 0x2Du || (v12 = v11[22]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v28 = v17;
    v18 = sub_93D480(a2, a1, 0, "station");
    v19 = (v18 - *v18);
    if (*v19 >= 0xFu)
    {
      v20 = v19[7];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v17 = v28;
    sub_2D31D4(0, 0, &v29, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a2 + 3888) != 1 || sub_2D5204(*(a2 + 3872)))
    {
      v30 = *v16;
      sub_2512DC(a5, &v30);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_94C4B0(v26, *v17, a4, a3);
  if (result != a5[1])
  {
    *v17 = result;
  }

  return result;
}

void sub_949BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *a12 = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_949C08(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  v10 = sub_93D480(a3, a1, 0, "station");
  v11 = (v10 - *v10);
  if (*v11 < 0x2Bu || (v12 = v11[21]) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_11;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v14 = *v13;
  if (!v14)
  {
LABEL_11:
    v17 = a5 + 1;
LABEL_12:
    v18 = sub_93D480(a3, a1, 0, "station");
    v19 = (v18 - *v18);
    if (*v19 >= 0x11u)
    {
      v20 = v19[8];
      if (v20)
      {
        v21 = (v18 + v20 + *(v18 + v20));
        v22 = *v21;
        if (v22)
        {
          v23 = 8 * v22;
          v24 = v21 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v24 += 2;
            v23 -= 8;
          }

          while (v23);
        }
      }
    }

    v25 = *a5;
    if (*a5)
    {
      a5[1] = v25;
      operator delete(v25);
      a5[1] = 0;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2D31D4(0, 0, &v33, 0, 1);
    v26 = *a5;
    goto LABEL_23;
  }

  v15 = 8 * v14;
  v16 = (v13 + 1);
  do
  {
    if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
    {
      v34 = *v16;
      sub_2512DC(a5, &v34);
    }

    ++v16;
    v15 -= 8;
  }

  while (v15);
  v26 = *a5;
  v17 = a5 + 1;
  if (*a5 == a5[1])
  {
    goto LABEL_12;
  }

LABEL_23:
  v27 = *v17;
  if (v26 != *v17)
  {
    while (1)
    {
      v28 = *v26;
      if (*(a4 + 1432) & 1) == 0 && (sub_94C60C(a2, *v26))
      {
        break;
      }

      v29 = *(a4 + 1433);
      if (v29 < sub_94C828(a2, v28))
      {
        break;
      }

      if (++v26 == v27)
      {
        v26 = v27;
        goto LABEL_37;
      }
    }

    if (v26 != v27)
    {
      for (i = v26 + 1; i != v27; ++i)
      {
        v31 = *i;
        if ((*(a4 + 1432) & 1) != 0 || (sub_94C60C(a2, *i) & 1) == 0)
        {
          v32 = *(a4 + 1433);
          if (v32 >= sub_94C828(a2, v31))
          {
            *v26++ = *i;
          }
        }
      }
    }
  }

LABEL_37:
  if (v26 != a5[1])
  {
    *v17 = v26;
  }
}

void sub_949FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **a12)
{
  v13 = *a12;
  if (*a12)
  {
    *a11 = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_94A014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 120);
    do
    {
      v8 = v6 - 120;
      *v4 = *(v6 - 30);
      sub_55F1E8(v4 + 8, (v6 - 7));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 120), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 136) = *(v6 + 2);
        *(v4 + 120) = v7;
      }

      v4 = v13 + 144;
      v13 += 144;
      v6 += 9;
    }

    while (v8 + 144 != a3);
  }

  v11 = 1;
  sub_94A11C(v10);
  return v4;
}

void sub_94A0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53E440(v9);
  sub_94A11C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_94A11C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 65;
      do
      {
        if (v4[64] < 0)
        {
          operator delete(*(v4 + 41));
          if ((v4[32] & 0x80000000) == 0)
          {
LABEL_7:
            if ((*v4 & 0x80000000) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_12;
          }
        }

        else if ((v4[32] & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v4 + 9));
        if ((*v4 & 0x80000000) == 0)
        {
LABEL_8:
          v6 = *(v4 - 39);
          if (v6 == -1)
          {
            goto LABEL_4;
          }

LABEL_13:
          (off_266DD00[v6])(&v8, v4 - 71);
          goto LABEL_4;
        }

LABEL_12:
        operator delete(*(v4 - 23));
        v6 = *(v4 - 39);
        if (v6 != -1)
        {
          goto LABEL_13;
        }

LABEL_4:
        *(v4 - 39) = -1;
        v5 = v4 - 79;
        v4 -= 144;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

double sub_94A210(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v13 + 1) = 0;
  *v6 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 40) = -1;
  v7 = *(a2 + 40);
  if (v7 != -1)
  {
    v14 = v6 + 8;
    (off_266DD28[v7])(&v14, a2 + 8);
    *(v6 + 40) = v7;
  }

  *(v6 + 48) = *(a2 + 48);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 88) = *(a2 + 88);
  *(v6 + 104) = *(a2 + 104);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  *(v6 + 112) = *(a2 + 112);
  v8 = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 120) = v8;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  *&v13 = v6 + 144;
  sub_94A43C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *&result = v6 + 144;
  *(a1 + 1) = v13;
  if (v11)
  {
    operator delete(v11);
    *&result = v6 + 144;
  }

  return result;
}

void sub_94A3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_94A404(va);
  _Unwind_Resume(a1);
}

uint64_t sub_94A404(uint64_t a1)
{
  sub_94A630(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_94A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2 + 8;
    do
    {
      v11 = v7 - 8;
      *v4 = *(v7 - 8);
      *(v4 + 8) = 0;
      *(v4 + 40) = -1;
      v12 = *(v7 + 32);
      v13 = v4;
      if (v12 != -1)
      {
        v20 = v4 + 8;
        (off_266DD28[v12])(&v20, v7);
        *(v4 + 40) = v12;
        v13 = v19;
      }

      *(v4 + 48) = *(v7 + 40);
      v8 = *(v7 + 48);
      *(v4 + 72) = *(v7 + 64);
      *(v4 + 56) = v8;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      *(v4 + 80) = *(v7 + 72);
      v9 = *(v7 + 80);
      *(v4 + 104) = *(v7 + 96);
      *(v4 + 88) = v9;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 80) = 0;
      *(v4 + 112) = *(v7 + 104);
      v10 = *(v7 + 112);
      *(v4 + 136) = *(v7 + 128);
      *(v4 + 120) = v10;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      *(v7 + 112) = 0;
      v4 = v13 + 144;
      v19 = v13 + 144;
      v7 += 144;
    }

    while (v11 + 144 != a3);
    v17 = 1;
    while (v6 != a3)
    {
      if (*(v6 + 143) < 0)
      {
        operator delete(*(v6 + 120));
        if ((*(v6 + 111) & 0x80000000) == 0)
        {
LABEL_11:
          if ((*(v6 + 79) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }
      }

      else if ((*(v6 + 111) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(v6 + 88));
      if ((*(v6 + 79) & 0x80000000) == 0)
      {
LABEL_12:
        v14 = *(v6 + 40);
        if (v14 == -1)
        {
          goto LABEL_8;
        }

LABEL_17:
        (off_266DD00[v14])(&v20, v6 + 8);
        goto LABEL_8;
      }

LABEL_16:
      operator delete(*(v6 + 56));
      v14 = *(v6 + 40);
      if (v14 != -1)
      {
        goto LABEL_17;
      }

LABEL_8:
      *(v6 + 40) = -1;
      v6 += 144;
    }
  }

  return sub_94A11C(v16);
}

void sub_94A630(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 33) & 0x80000000) == 0)
      {
LABEL_6:
        if ((*(i - 65) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 56));
    if ((*(i - 65) & 0x80000000) == 0)
    {
LABEL_7:
      v5 = *(i - 104);
      if (v5 == -1)
      {
        goto LABEL_3;
      }

LABEL_12:
      (off_266DD00[v5])(&v6, i - 136);
      goto LABEL_3;
    }

LABEL_11:
    operator delete(*(i - 88));
    v5 = *(i - 104);
    if (v5 != -1)
    {
      goto LABEL_12;
    }

LABEL_3:
    *(i - 104) = -1;
  }
}

uint64_t sub_94A714(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 159) < 0)
      {
        operator delete(v2[17]);
        if ((*(v2 + 127) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(v2 + 95) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else if ((*(v2 + 127) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(v2[13]);
      if ((*(v2 + 95) & 0x80000000) == 0)
      {
LABEL_7:
        v4 = *(v2 + 14);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_12:
        (off_266DD00[v4])(&v7, v2 + 3);
        goto LABEL_3;
      }

LABEL_11:
      operator delete(v2[9]);
      v4 = *(v2 + 14);
      if (v4 != -1)
      {
        goto LABEL_12;
      }

LABEL_3:
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_94A7F4(void *a1, uint64_t a2)
{
  v4 = sub_94AA10(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = (a2 + 120);
    if (v7.u32[0] < 2uLL)
    {
      v12 = *&v5 - 1;
      while (1)
      {
        v13 = v10[1];
        if (v13 == v6)
        {
          if (*(v10 + 4) == *a2 && sub_55DD5C((v10 + 3), a2 + 8))
          {
            v14 = *(v10 + 159);
            if (v14 >= 0)
            {
              v15 = *(v10 + 159);
            }

            else
            {
              v15 = v10[18];
            }

            v16 = *(a2 + 143);
            v17 = v16;
            if ((v16 & 0x80u) != 0)
            {
              v16 = *(a2 + 128);
            }

            if (v15 == v16)
            {
              v18 = v14 >= 0 ? v10 + 17 : v10[17];
              v19 = (v17 >= 0 ? a2 + 120 : *v11);
              if (!memcmp(v18, v19, v15))
              {
                return v10;
              }
            }
          }
        }

        else if ((v13 & v12) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v21 = v10[1];
      if (v21 == v6)
      {
        if (*(v10 + 4) == *a2 && sub_55DD5C((v10 + 3), a2 + 8))
        {
          v22 = *(v10 + 159);
          if (v22 >= 0)
          {
            v23 = *(v10 + 159);
          }

          else
          {
            v23 = v10[18];
          }

          v24 = *(a2 + 143);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(a2 + 128);
          }

          if (v23 == v24)
          {
            v26 = v22 >= 0 ? v10 + 17 : v10[17];
            v27 = (v25 >= 0 ? a2 + 120 : *v11);
            if (!memcmp(v26, v27, v23))
            {
              return v10;
            }
          }
        }
      }

      else
      {
        if (v21 >= *&v5)
        {
          v21 %= *&v5;
        }

        if (v21 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

uint64_t sub_94AA10(uint64_t a1, unsigned int *a2)
{
  v14 = 3735928559;
  v3 = *a2;
  sub_55F1E8(v8, (a2 + 2));
  if (*(a2 + 143) < 0)
  {
    sub_325C(__p, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 30);
    v7 = *(a2 + 17);
  }

  v14 = (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  if (SHIBYTE(v7) < 0)
  {
    sub_325C(&v15, __p[0], __p[1]);
  }

  else
  {
    v15 = *__p;
    v16 = v7;
  }

  sub_94ABD4(&v14, v8, &v15);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v12);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_11:
    v4 = v9;
    if (v9 == -1)
    {
      return v14;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v10);
  v4 = v9;
  if (v9 != -1)
  {
LABEL_17:
    (off_266DD00[v4])(&v15, v8);
  }

  return v14;
}

void sub_94AB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if ((a14 & 0x80000000) == 0)
  {
    sub_53E440(&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_53E440(&a15);
  _Unwind_Resume(a1);
}

void sub_94ABD4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_55F1E8(v8, a2);
  *a1 ^= sub_94AD3C(&v15, v8) + (*a1 << 6) + (*a1 >> 2) + 2654435769u;
  if ((v14 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v11);
    v5 = v10;
    if (v10 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p);
  if (v12 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v10;
  if (v10 != -1)
  {
LABEL_7:
    (off_266DD00[v5])(&v16, v8);
  }

LABEL_8:
  if (*(a3 + 23) < 0)
  {
    sub_325C(v8, *a3, *(a3 + 8));
  }

  else
  {
    *v8 = *a3;
    v9 = *(a3 + 16);
  }

  if (v9 >= 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = v8[0];
  }

  if (v9 >= 0)
  {
    v7 = HIBYTE(v9);
  }

  else
  {
    v7 = v8[1];
  }

  *a1 ^= sub_AAD8(&v16, v6, v7) + 2654435769u + (*a1 << 6) + (*a1 >> 2);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

unint64_t sub_94AD3C(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 72) + 0x388152A534) ^ 0xDEADBEEFLL;
  v4 = (*(a2 + 104) + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = *(a2 + 32);
  if (v5 == 2)
  {
    v6 = 2654435770;
  }

  else
  {
    v6 = 2654435769;
  }

  v7 = (v6 + (v4 << 6) + (v4 >> 2)) ^ v4;
  if (v5 == 3)
  {
    v8 = 2654435770;
  }

  else
  {
    v8 = 2654435769;
  }

  if (v5 == 4)
  {
    v9 = 2654435770;
  }

  else
  {
    v9 = 2654435769;
  }

  if (v5 == 1)
  {
    v10 = 2654435770;
  }

  else
  {
    v10 = 2654435769;
  }

  v11 = (v8 + (((v10 + (v7 << 6) + (v7 >> 2)) ^ v7) << 6) + (((v10 + (v7 << 6) + (v7 >> 2)) ^ v7) >> 2)) ^ (v10 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v12 = (v9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  v18 = v12;
  switch(v5)
  {
    case 1:
      *__p = *a2;
      if (*(a2 + 31) < 0)
      {
        sub_325C(&__p[8], *(a2 + 8), *(a2 + 16));
      }

      else
      {
        *&__p[8] = *(a2 + 8);
        v20 = *(a2 + 24);
      }

LABEL_32:
      v12 ^= sub_94B14C(&v21, __p) + 2654435769 + (v12 << 6) + (v12 >> 2);
      if (SHIBYTE(v20) < 0)
      {
        v16 = *&__p[8];
LABEL_34:
        operator delete(v16);
        return v12;
      }

      return v12;
    case 2:
      v13 = *(a2 + 8);
      *__p = *a2;
      *&__p[8] = 0;
      *&__p[16] = 0;
      v20 = 0;
      v14 = *(a2 + 16);
      if (v14 != v13)
      {
        if (((v14 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v15 = sub_94B2A0(&v21, __p) + 2654435769 + (v12 << 6) + (v12 >> 2);
      if (*&__p[8])
      {
        *&__p[16] = *&__p[8];
        operator delete(*&__p[8]);
      }

      v12 ^= v15;
      if (*(a2 + 40) == -1)
      {
        return v12;
      }

      *__p = *(a2 + 40);
      if (*(a2 + 71) < 0)
      {
        sub_325C(&__p[8], *(a2 + 48), *(a2 + 56));
      }

      else
      {
        *&__p[8] = *(a2 + 48);
        v20 = *(a2 + 64);
      }

      goto LABEL_32;
    case 3:
      sub_94B010(&v18, a2);
      return v18;
    case 4:
      if (*(a2 + 23) < 0)
      {
        sub_325C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        *&__p[16] = *(a2 + 16);
      }

      v21 = 3735928559;
      sub_94B010(&v21, __p);
      v12 ^= v21 + 2654435769 + (v12 << 6) + (v12 >> 2);
      if ((__p[23] & 0x80000000) != 0)
      {
        v16 = *__p;
        goto LABEL_34;
      }

      break;
  }

  return v12;
}

void sub_94AFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_94B010(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_3:
      *__p = *v7;
      v10 = v8;
      goto LABEL_6;
    }
  }

  sub_325C(__p, v7[0], v7[1]);
LABEL_6:
  if (v10 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v10 >= 0)
  {
    v4 = HIBYTE(v10);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_AAD8(&v11, v3, v4);
  if (SHIBYTE(v10) < 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  *a1 ^= ((v5 + 0x388152A534) ^ 0xDEADBEEF) + (*a1 << 6) + (*a1 >> 2) + 2654435769u;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_94B12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_94B14C(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C(__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *__p = *(a2 + 2);
    v14 = *(a2 + 3);
  }

  if (v14 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v14 >= 0)
  {
    v5 = HIBYTE(v14);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_AAD8(&v15, v4, v5);
  if (SHIBYTE(v14) < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  v8 = ((((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + v6 + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  v9 = a2[1];
  v10 = ((v9 - 0x61C8860E9D9A5872) << 6) + BYTE2(v9) + ((v9 - 0x61C8860E9D9A5872) >> 2) - 0x61C8864680B583EDLL;
  v11 = (v10 << 6) + BYTE1(v9) + (v10 >> 2) - 0x61C8864680B583EDLL;
  return ((v8 >> 2) + (v9 >> 24) + (v11 >> 2) + ((v11 + v8) << 6) - 0x61C88645E27E0A34) ^ v8;
}

uint64_t sub_94B2A0(uint64_t a1, unsigned int *a2)
{
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v2 = (a2[1] + (((*a2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((*a2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (*a2 + 0x388152A534) ^ 0xDEADBEEFLL;
  return ((v2 << 6) + (v2 >> 2) + 0x17CE538A8) ^ v2;
}

uint64_t *sub_94B3C0(void *a1, uint64_t a2)
{
  v4 = sub_94AA10(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_51;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_51:
    operator new();
  }

  v11 = (a2 + 120);
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (*(v10 + 4) == *a2 && sub_55DD5C((v10 + 3), a2 + 8))
        {
          v13 = *(v10 + 159);
          if (v13 >= 0)
          {
            v14 = *(v10 + 159);
          }

          else
          {
            v14 = v10[18];
          }

          v15 = *(a2 + 143);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(a2 + 128);
          }

          if (v14 == v15)
          {
            v17 = v13 >= 0 ? v10 + 17 : v10[17];
            v18 = (v16 >= 0 ? a2 + 120 : *v11);
            if (!memcmp(v17, v18, v14))
            {
              return v10;
            }
          }
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_51;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v19 = v10[1];
    if (v19 == v5)
    {
      break;
    }

    if (v19 >= *&v6)
    {
      v19 %= *&v6;
    }

    if (v19 != v8)
    {
      goto LABEL_51;
    }

LABEL_31:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_51;
    }
  }

  if (*(v10 + 4) != *a2 || !sub_55DD5C((v10 + 3), a2 + 8))
  {
    goto LABEL_31;
  }

  v20 = *(v10 + 159);
  if (v20 >= 0)
  {
    v21 = *(v10 + 159);
  }

  else
  {
    v21 = v10[18];
  }

  v22 = *(a2 + 143);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 128);
  }

  if (v21 != v22)
  {
    goto LABEL_31;
  }

  v24 = v20 >= 0 ? v10 + 17 : v10[17];
  v25 = (v23 >= 0 ? a2 + 120 : *v11);
  if (memcmp(v24, v25, v21))
  {
    goto LABEL_31;
  }

  return v10;
}

void sub_94B80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(v2 + 24);
  sub_94B850(va);
  _Unwind_Resume(a1);
}

void sub_94B828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_94B850(va);
  _Unwind_Resume(a1);
}

void sub_94B83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_94B850(va);
  _Unwind_Resume(a1);
}

uint64_t sub_94B850(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_94B8A0(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_94B8A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
    if ((*(a2 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a2 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 111) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 88));
  if ((*(a2 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    v3 = *(a2 + 40);
    if (v3 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(a2 + 56));
  v3 = *(a2 + 40);
  if (v3 != -1)
  {
LABEL_9:
    (off_266DD00[v3])(&v4, a2 + 8);
  }

LABEL_10:
  *(a2 + 40) = -1;
}

uint64_t sub_94B948(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  sub_55F1E8(v6 + 8, a2 + 8);
  if (*(a2 + 143) < 0)
  {
    sub_325C((v6 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    *(v6 + 120) = *(a2 + 120);
    *(v6 + 136) = *(a2 + 136);
  }

  v7 = a1[1];
  v8 = v6 + *a1 - v7;
  sub_94A43C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6 + 144;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6 + 144;
}

void sub_94BAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(v2);
  sub_94A404(va);
  _Unwind_Resume(a1);
}

void sub_94BAE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_94A404(va);
  _Unwind_Resume(a1);
}

uint64_t sub_94BAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_94BC18(v7, v4);
        v4 += 144;
        v7 += 144;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = (v6 - 65);
      do
      {
        if (v8[64] < 0)
        {
          operator delete(*(v8 + 41));
          if ((v8[32] & 0x80000000) == 0)
          {
LABEL_10:
            if ((*v8 & 0x80000000) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_15;
          }
        }

        else if ((v8[32] & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v8 + 9));
        if ((*v8 & 0x80000000) == 0)
        {
LABEL_11:
          v10 = *(v8 - 39);
          if (v10 == -1)
          {
            goto LABEL_7;
          }

LABEL_16:
          (off_266DD00[v10])(&v12, v8 - 71);
          goto LABEL_7;
        }

LABEL_15:
        operator delete(*(v8 - 23));
        v10 = *(v8 - 39);
        if (v10 != -1)
        {
          goto LABEL_16;
        }

LABEL_7:
        *(v8 - 39) = -1;
        v9 = v8 - 79;
        v8 -= 144;
      }

      while (v9 != v7);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_94BC18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266DD00[v4])(&v11, a1 + 8);
    *(a1 + 40) = -1;
    goto LABEL_6;
  }

  v10 = a1 + 8;
  (off_266DD50[v5])(&v10);
LABEL_6:
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  *(a1 + 80) = *(a2 + 80);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  *(a1 + 112) = *(a2 + 112);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  return a1;
}

uint64_t sub_94BD48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 4)) >= a5)
    {
      v15 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 4)) >= a5)
      {
        v29 = 144 * a5;
        v30 = v10 - 144 * a5;
        v31 = a1[1];
        if (v30 < v10)
        {
          v32 = 0;
          do
          {
            v36 = v30 + v32;
            v37 = v10 + v32;
            *v37 = *(v30 + v32);
            *(v10 + v32 + 8) = 0;
            *(v37 + 40) = -1;
            v38 = *(v30 + v32 + 40);
            if (v38 != -1)
            {
              v76 = v10 + v32 + 8;
              (off_266DD28[v38])(&v76, v36 + 8);
              *(v37 + 40) = v38;
            }

            *(v37 + 48) = *(v36 + 48);
            v33 = *(v36 + 56);
            *(v37 + 72) = *(v36 + 72);
            *(v37 + 56) = v33;
            *(v36 + 64) = 0;
            *(v36 + 72) = 0;
            *(v36 + 56) = 0;
            *(v37 + 80) = *(v36 + 80);
            v34 = *(v36 + 88);
            *(v37 + 104) = *(v36 + 104);
            *(v37 + 88) = v34;
            *(v36 + 96) = 0;
            *(v36 + 104) = 0;
            *(v36 + 88) = 0;
            *(v37 + 112) = *(v36 + 112);
            v35 = *(v36 + 120);
            *(v37 + 136) = *(v36 + 136);
            *(v37 + 120) = v35;
            *(v36 + 128) = 0;
            *(v36 + 136) = 0;
            *(v36 + 120) = 0;
            v32 += 144;
          }

          while (v36 + 144 < v10);
          v31 = v10 + v32;
          v29 = 144 * a5;
        }

        a1[1] = v31;
        if (v10 != v5 + v29)
        {
          v53 = v10 - 144;
          v54 = v5 + v29 - v10;
          v55 = v10 - 144 - v29;
          do
          {
            sub_94BC18(v53, v55);
            v53 -= 144;
            v55 -= 144;
            v54 += 144;
          }

          while (v54);
        }

        v56 = 0;
        v57 = a3 + 144 * a5;
        do
        {
          v60 = a3 + v56;
          v61 = (a3 + v56 + 120);
          *(v5 + v56) = *(a3 + v56);
          sub_5410A0(v5 + v56 + 8, a3 + v56 + 8);
          if (v5 != a3)
          {
            v62 = *(v60 + 143);
            if (*(v5 + v56 + 143) < 0)
            {
              if (v62 >= 0)
              {
                v58 = (a3 + v56 + 120);
              }

              else
              {
                v58 = *v61;
              }

              if (v62 >= 0)
              {
                v59 = *(v60 + 143);
              }

              else
              {
                v59 = *(a3 + v56 + 128);
              }

              sub_13B38(v5 + v56 + 120, v58, v59);
            }

            else if ((*(v60 + 143) & 0x80) != 0)
            {
              sub_13A68((v5 + v56 + 120), *v61, *(a3 + v56 + 128));
            }

            else
            {
              v63 = *v61;
              *(v5 + v56 + 136) = *(a3 + v56 + 136);
              *(v5 + v56 + 120) = v63;
            }
          }

          v56 += 144;
        }

        while (v60 + 144 != v57);
      }

      else
      {
        v16 = v15 + a3;
        v17 = sub_94C3A8(a1, v15 + a3, a4, a1[1]);
        v18 = v17;
        a1[1] = v17;
        if (v15 >= 1)
        {
          v19 = 144 * a5;
          v20 = v17;
          if (v17 - 144 * a5 < v10)
          {
            v74 = 144 * a5;
            v75 = v15 + a3;
            v21 = 0;
            v22 = -144 * a5;
            do
            {
              v26 = v22 + v18;
              v27 = v21 + v18;
              *v27 = *(v22 + v18);
              *(v21 + v18 + 8) = 0;
              *(v27 + 40) = -1;
              v28 = *(v22 + v18 + 40);
              if (v28 != -1)
              {
                v76 = v21 + v18 + 8;
                (off_266DD28[v28])(&v76, v26 + 8);
                *(v27 + 40) = v28;
              }

              *(v27 + 48) = *(v26 + 48);
              v23 = *(v26 + 56);
              *(v27 + 72) = *(v26 + 72);
              *(v27 + 56) = v23;
              *(v26 + 64) = 0;
              *(v26 + 72) = 0;
              *(v26 + 56) = 0;
              *(v27 + 80) = *(v26 + 80);
              v24 = *(v26 + 88);
              *(v27 + 104) = *(v26 + 104);
              *(v27 + 88) = v24;
              *(v26 + 96) = 0;
              *(v26 + 104) = 0;
              *(v26 + 88) = 0;
              *(v27 + 112) = *(v26 + 112);
              v25 = *(v26 + 120);
              *(v27 + 136) = *(v26 + 136);
              *(v27 + 120) = v25;
              *(v26 + 128) = 0;
              *(v26 + 136) = 0;
              *(v26 + 120) = 0;
              v22 += 144;
              v21 += 144;
            }

            while (v26 + 144 < v10);
            v20 = v21 + v18;
            v19 = v74;
            v16 = v75;
          }

          a1[1] = v20;
          if (v18 != v5 + v19)
          {
            v64 = v18 - 144;
            v65 = v5 + v19 - v18;
            v66 = v18 - 144 - v19;
            do
            {
              sub_94BC18(v64, v66);
              v64 -= 144;
              v66 -= 144;
              v65 += 144;
            }

            while (v65);
          }

          v67 = 0;
          do
          {
            v70 = a3 + v67;
            v71 = (a3 + v67 + 120);
            *(v5 + v67) = *(a3 + v67);
            sub_5410A0(v5 + v67 + 8, a3 + v67 + 8);
            if (v5 != a3)
            {
              v72 = *(v70 + 143);
              if (*(v5 + v67 + 143) < 0)
              {
                if (v72 >= 0)
                {
                  v68 = (a3 + v67 + 120);
                }

                else
                {
                  v68 = *v71;
                }

                if (v72 >= 0)
                {
                  v69 = *(v70 + 143);
                }

                else
                {
                  v69 = *(a3 + v67 + 128);
                }

                sub_13B38(v5 + v67 + 120, v68, v69);
              }

              else if ((*(v70 + 143) & 0x80) != 0)
              {
                sub_13A68((v5 + v67 + 120), *v71, *(a3 + v67 + 128));
              }

              else
              {
                v73 = *v71;
                *(v5 + v67 + 136) = *(a3 + v67 + 136);
                *(v5 + v67 + 120) = v73;
              }
            }

            v67 += 144;
          }

          while (v70 + 144 != v16);
        }
      }
    }

    else
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

      v80 = a1;
      if (v14)
      {
        if (v14 <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_1808();
      }

      v39 = 0;
      v40 = 16 * ((a2 - v11) >> 4);
      v76 = 0;
      v77 = v40;
      v78 = v40;
      v79 = 0;
      v41 = 144 * a5;
      v42 = v40 + 144 * a5;
      do
      {
        v44 = v40 + v39;
        v45 = a3 + v39;
        *(v40 + v39) = *(a3 + v39);
        sub_55F1E8(v40 + v39 + 8, a3 + v39 + 8);
        if (*(a3 + v39 + 143) < 0)
        {
          sub_325C((v44 + 120), *(v45 + 120), *(a3 + v39 + 128));
        }

        else
        {
          v43 = *(v45 + 120);
          *(v44 + 136) = *(v45 + 136);
          *(v44 + 120) = v43;
        }

        v39 += 144;
      }

      while (v41 != v39);
      v78 = v42;
      v46 = v77;
      sub_94A43C(a1, v5, a1[1], v42);
      v47 = *a1;
      v48 = v77;
      v49 = v42 + a1[1] - v5;
      v78 += a1[1] - v5;
      a1[1] = v5;
      v50 = v48 + v47 - v5;
      sub_94A43C(a1, v47, v5, v50);
      v51 = *a1;
      *a1 = v50;
      a1[1] = v49;
      a1[2] = v79;
      if (v51)
      {
        operator delete(v51);
      }

      return v46;
    }
  }

  return v5;
}

void sub_94C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_94A404(va);
  _Unwind_Resume(a1);
}

void sub_94C364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  sub_53E440(v15 + v14 + 8);
  a14 = v15 + v14;
  sub_94A404(&a12);
  _Unwind_Resume(a1);
}

void sub_94C38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  a14 = v15 + v14;
  sub_94A404(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_94C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 120);
    do
    {
      v8 = v6 - 120;
      *v4 = *(v6 - 30);
      sub_55F1E8(v4 + 8, (v6 - 7));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 120), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 136) = *(v6 + 2);
        *(v4 + 120) = v7;
      }

      v4 = v13 + 144;
      v13 += 144;
      v6 += 9;
    }

    while (v8 + 144 != a3);
  }

  v11 = 1;
  sub_94A11C(v10);
  return v4;
}

void sub_94C480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53E440(v9);
  sub_94A11C(&a9);
  _Unwind_Resume(a1);
}

unint64_t *sub_94C4B0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v4 = a1;
    while (1)
    {
      v9 = *v4;
      if ((*(a3 + 1432) & 1) == 0)
      {
        v10 = sub_92FC60(a4, *v4, 0, "line");
        v11 = (v10 - *v10);
        if (*v11 >= 0x23u)
        {
          v12 = v11[17];
          if (v12)
          {
            if (*(v10 + v12))
            {
              break;
            }
          }
        }
      }

      v13 = *(a3 + 1433);
      if (v13 < sub_94489C(a4, v9))
      {
        break;
      }

      if (++v4 == a2)
      {
        v4 = a2;
        break;
      }
    }

    if (v4 != a2)
    {
      for (i = v4 + 1; i != a2; ++i)
      {
        v15 = *i;
        if ((*(a3 + 1432) & 1) == 0)
        {
          v16 = sub_92FC60(a4, *i, 0, "line");
          v17 = (v16 - *v16);
          if (*v17 >= 0x23u)
          {
            v18 = v17[17];
            if (v18)
            {
              if (*(v16 + v18))
              {
                continue;
              }
            }
          }
        }

        v19 = *(a3 + 1433);
        if (v19 >= sub_94489C(a4, v15))
        {
          *v4++ = *i;
        }
      }
    }
  }

  return v4;
}

uint64_t sub_94C60C(uint64_t a1, unint64_t a2)
{
  v3 = sub_93E04C(a1, a2, 0, "system");
  v4 = (v3 - *v3);
  if (*v4 < 9u)
  {
    return 1;
  }

  v5 = v4[4];
  if (!v5)
  {
    return 1;
  }

  v6 = (v3 + v5 + *(v3 + v5));
  v7 = *v6;
  if (!v7)
  {
    return 1;
  }

  v8 = 8 * v7;
  v9 = v6 + 1;
  do
  {
    if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
    {
      operator new();
    }

    v9 += 2;
    v8 -= 8;
  }

  while (v8);
  return 1;
}

void sub_94C808(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_94C828(uint64_t a1, unint64_t a2)
{
  v3 = sub_93E04C(a1, a2, 0, "system");
  v4 = (v3 - *v3);
  if (*v4 >= 0xBu)
  {
    v5 = v4[5];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }

  return 3;
}

void sub_94CA3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_94CA5C()
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
  xmmword_27B1868 = 0u;
  unk_27B1878 = 0u;
  dword_27B1888 = 1065353216;
  sub_3A9A34(&xmmword_27B1868, v0);
  sub_3A9A34(&xmmword_27B1868, v3);
  sub_3A9A34(&xmmword_27B1868, __p);
  sub_3A9A34(&xmmword_27B1868, v9);
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
    qword_27B1840 = 0;
    qword_27B1848 = 0;
    qword_27B1838 = 0;
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

void sub_94CCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1850)
  {
    qword_27B1858 = qword_27B1850;
    operator delete(qword_27B1850);
  }

  _Unwind_Resume(exception_object);
}

void sub_94CD50(_DWORD *a1, void *a2)
{
  v3 = 11;
  strcpy(__p, "ttl_seconds");
  *a1 = 10 * sub_352470(a2, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_94CF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_94D10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_94D138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a3;
  *(a3 + 8) = 0x27FFFFFFFLL;
  *a3 = &off_266DA18;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v83 = a3 + 64;
  v84 = (a3 + 16);
  sub_5F328(a3 + 64);
  v6 = *(a2 + 600);
  v85 = *(a2 + 608);
  if (v6 != v85)
  {
    v90 = v5;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v88 = vnegq_f64(v7);
    v91 = a2;
    do
    {
      __p = 0uLL;
      v116 = 0;
      v118 = 0;
      LODWORD(v119[0]) = -1;
      *(v119 + 3) = -1;
      memset(v119 + 7, 0, 26);
      v121 = 0;
      v120 = 0uLL;
      v122 = 0;
      v124 = 0;
      v125 = 0;
      v123 = 0;
      sub_94E360(a1, v6, (a2 + 648), &v95);
      if (SHIBYTE(v116) < 0)
      {
        operator delete(__p);
      }

      __p = v95;
      v116 = v96;
      sub_94E8B0(a1, v6, (a2 + 648), &v95);
      if (v118 == -1)
      {
        if (v97 == -1)
        {
          goto LABEL_11;
        }
      }

      else if (v97 == -1)
      {
        (off_266DD78[v118])(v108, v117);
        v118 = -1;
        goto LABEL_11;
      }

      v108[0] = v117;
      (off_266DDA0[v97])(v108);
LABEL_11:
      v119[0] = v98;
      if (SHIBYTE(v119[3]) < 0)
      {
        operator delete(v119[1]);
      }

      *&v119[1] = v99;
      v119[3] = v100;
      HIBYTE(v100) = 0;
      LOBYTE(v99) = 0;
      LOBYTE(v119[4]) = v101;
      if (SHIBYTE(v121) < 0)
      {
        operator delete(v120);
        v120 = v102;
        v121 = v103;
        HIBYTE(v103) = 0;
        LOBYTE(v102) = 0;
        v122 = v104;
        if ((SHIBYTE(v100) & 0x80000000) == 0)
        {
          v8 = v97;
          if (v97 == -1)
          {
            goto LABEL_19;
          }

LABEL_18:
          (off_266DD78[v8])(v108, &v95);
          goto LABEL_19;
        }

        operator delete(v99);
        v8 = v97;
        if (v97 != -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v120 = v102;
        v121 = v103;
        HIBYTE(v103) = 0;
        LOBYTE(v102) = 0;
        v122 = v104;
        v8 = v97;
        if (v97 != -1)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v9 = *v6;
      v86 = v6[1];
      v87 = v6;
      if (*v6 == v86)
      {
        goto LABEL_137;
      }

      do
      {
LABEL_23:
        memset(v108, 0, sizeof(v108));
        v109 = v88;
        v110 = 0x8000000080000000;
        memset(__dst, 0, sizeof(__dst));
        v112 = 0u;
        v113 = 0;
        sub_94EA7C(a1, v9, (a2 + 648), &v95);
        if (SHIBYTE(v108[2]) < 0)
        {
          operator delete(v108[0]);
        }

        *v108 = v95;
        v108[2] = v96;
        sub_94F278(a1, v9, (a2 + 648), &v95);
        if (SHIBYTE(v108[5]) < 0)
        {
          operator delete(v108[3]);
        }

        *&v108[3] = v95;
        v108[5] = v96;
        if (__dst != v9)
        {
          v10 = *v9;
          v11 = v9[1];
          v12 = v9;
          v13 = v11 - *v9;
          v14 = __dst[2];
          v15 = __dst[0];
          if ((__dst[2] - __dst[0]) < v13)
          {
            if (__dst[0])
            {
              __dst[1] = __dst[0];
              operator delete(__dst[0]);
              v14 = 0;
              memset(__dst, 0, 24);
            }

            v16 = v13 >> 3;
            if (!((v13 >> 3) >> 61))
            {
              if (v14 >> 2 > v16)
              {
                v16 = v14 >> 2;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFF8)
              {
                v17 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v16;
              }

              if (!(v17 >> 61))
              {
                operator new();
              }
            }

            sub_1794();
          }

          v18 = __dst[1];
          v19 = __dst[1] - __dst[0];
          if ((__dst[1] - __dst[0]) >= v13)
          {
            if (v11 != v10)
            {
              memmove(__dst[0], v10, v13);
            }

            v22 = &v15[v13];
          }

          else
          {
            if (__dst[1] != __dst[0])
            {
              memmove(__dst[0], v10, __dst[1] - __dst[0]);
              v18 = __dst[1];
            }

            v20 = v10 + v19;
            v21 = v11 - (v10 + v19);
            if (v21)
            {
              memmove(v18, v20, v21);
            }

            v22 = &v18[v21];
          }

          v9 = v12;
          __dst[1] = v22;
        }

        v114 = *(v9 + 24);
        sub_95B8C4(&v95, *(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 48));
        v23 = sub_95B900(&v95, v9 + 4);
        v24 = sub_64AEEC(v23, *(a1 + 4));
        sub_95D748(v24, *(a1 + 56));
        v25 = *v9;
        v26 = v9[1];
        v89 = v9;
        while (v25 != v26)
        {
          v27 = *(a2 + 648);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 656) - v27) >> 4) <= *v25)
          {
            sub_6FAB4();
          }

          v28 = (v27 + 48 * *v25);
          v30 = *v28;
          v29 = v28[1];
          v31 = v29 - v30;
          v32 = (v29 - v30) >> 3;
          if (v32 < 1)
          {
LABEL_50:
            ++v25;
          }

          else
          {
            v33 = __dst[4];
            if (__dst[5] - __dst[4] < v31)
            {
              v34 = (__dst[4] - __dst[3]) >> 3;
              v35 = v34 + v32;
              if (v35 >> 61)
              {
                sub_1794();
              }

              v36 = __dst[5] - __dst[3];
              if ((__dst[5] - __dst[3]) >> 2 > v35)
              {
                v35 = v36 >> 2;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFF8)
              {
                v37 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                if (!(v37 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v48 = 8 * v34;
              v49 = 8 * v34 + v31;
              if ((v31 - 8) >= 0x18)
              {
                v38 = v48;
                if ((__dst[4] - __dst[3] - v30) < &stru_20)
                {
                  goto LABEL_166;
                }

                v50 = ((v31 - 8) >> 3) + 1;
                v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
                v38 = (v48 + v51);
                v52 = &v30[v51];
                v53 = (v30 + 16);
                v54 = (v48 + 16);
                v55 = v50 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v56 = *v53;
                  *(v54 - 1) = *(v53 - 1);
                  *v54 = v56;
                  v53 += 2;
                  v54 += 2;
                  v55 -= 4;
                }

                while (v55);
                v30 = v52;
                if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_166:
                  do
                  {
LABEL_80:
                    v57 = *v30;
                    v30 += 8;
                    *v38++ = v57;
                  }

                  while (v38 != v49);
                }

                v58 = (__dst[4] - v33);
                memcpy(v49, v33, __dst[4] - v33);
                v59 = &v58[v49];
                __dst[4] = v33;
                v60 = __dst[3];
                v61 = (v48 - (v33 - __dst[3]));
                memcpy(v61, __dst[3], v33 - __dst[3]);
                __dst[3] = v61;
                __dst[4] = v59;
                __dst[5] = 0;
                a2 = v91;
                if (v60)
                {
                  operator delete(v60);
                }

                goto LABEL_50;
              }

              v38 = v48;
              goto LABEL_80;
            }

            if (v30 == v29)
            {
              ++v25;
            }

            else
            {
              if ((v31 - 8) < 0x18)
              {
                goto LABEL_71;
              }

              if ((__dst[4] - v30) < &stru_20)
              {
                goto LABEL_71;
              }

              v39 = ((v31 - 8) >> 3) + 1;
              v40 = 8 * (v39 & 0x3FFFFFFFFFFFFFFCLL);
              v41 = &v30[v40];
              v42 = __dst[4] + v40;
              v43 = __dst[4] + 16;
              v44 = (v30 + 16);
              v45 = v39 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v46 = *v44;
                *(v43 - 1) = *(v44 - 1);
                *v43 = v46;
                v43 += 2;
                v44 += 2;
                v45 -= 4;
              }

              while (v45);
              v30 = v41;
              v33 = v42;
              if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_71:
                v42 = v33;
                do
                {
                  v47 = *v30;
                  v30 += 8;
                  *v42++ = v47;
                }

                while (v30 != v29);
              }

              __dst[4] = v42;
              ++v25;
            }
          }
        }

        if (__dst[3] != __dst[4])
        {
          v62 = *(a2 + 624);
          if (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 632) - v62) >> 3) > *__dst[3])
          {
            sub_3A25A8(*(a1 + 40), *(v62 + 120 * *__dst[3] + 4) | (*(v62 + 120 * *__dst[3]) << 32), 0, "trip");
            v92 = 0;
            v93 = 0;
            v94 = 0;
            operator new();
          }

          sub_6FAB4();
        }

        if ((*(a1 + 6) & 1) == 0 && !HIDWORD(v110))
        {
          v110 = 0x8000000080000000;
        }

        if ((*(a1 + 7) & 1) == 0 && !*&v109.f64[1])
        {
          v109 = v88;
        }

        sub_95BD68(&v95, &v92);
        if (v93 != v92)
        {
          if (!((0x823EE08FB823EE09 * ((v93 - v92) >> 3)) >> 61))
          {
            operator new();
          }

          sub_1794();
        }

        if (v112)
        {
          *(&v112 + 1) = v112;
          operator delete(v112);
        }

        v112 = 0uLL;
        v113 = 0;
        v5 = v90;
        v63 = 0x86BCA1AF286BCA1BLL * ((v90[6] - v90[5]) >> 3);
        v64 = v124;
        v6 = v87;
        if (v124 >= v125)
        {
          v66 = v123;
          v67 = v124 - v123;
          v68 = (v124 - v123) >> 3;
          v69 = v68 + 1;
          a2 = v91;
          if ((v68 + 1) >> 61)
          {
            sub_1794();
          }

          v70 = v125 - v123;
          if ((v125 - v123) >> 2 > v69)
          {
            v69 = v70 >> 2;
          }

          if (v70 >= 0x7FFFFFFFFFFFFFF8)
          {
            v71 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v69;
          }

          if (v71)
          {
            if (!(v71 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v68) = v63;
          v65 = 8 * v68 + 8;
          memcpy(0, v66, v67);
          v123 = 0;
          v124 = v65;
          v125 = 0;
          if (v66)
          {
            operator delete(v66);
          }
        }

        else
        {
          *v124 = v63;
          v65 = (v64 + 8);
          a2 = v91;
        }

        v124 = v65;
        v72 = v90[6];
        if (v72 >= v90[7])
        {
          v76 = sub_94F7D8(v90 + 5, v108);
        }

        else
        {
          v73 = *v108;
          *(v72 + 16) = v108[2];
          *v72 = v73;
          memset(v108, 0, 24);
          v74 = v108[5];
          *(v72 + 24) = *&v108[3];
          *(v72 + 40) = v74;
          memset(&v108[3], 0, 24);
          v75 = v110;
          *(v72 + 48) = v109;
          *(v72 + 64) = v75;
          *(v72 + 72) = 0;
          *(v72 + 80) = 0;
          *(v72 + 88) = 0;
          *(v72 + 72) = *__dst;
          *__dst = 0uLL;
          *(v72 + 88) = __dst[2];
          *(v72 + 96) = 0;
          __dst[2] = 0;
          *(v72 + 104) = 0;
          *(v72 + 112) = 0;
          *(v72 + 96) = *&__dst[3];
          __dst[3] = 0;
          __dst[4] = 0;
          *(v72 + 112) = __dst[5];
          *(v72 + 120) = 0;
          *(v72 + 128) = 0;
          *(v72 + 136) = 0;
          *(v72 + 120) = v112;
          *(v72 + 136) = v113;
          __dst[5] = 0;
          v112 = 0uLL;
          v113 = 0;
          *(v72 + 144) = v114;
          v76 = v72 + 152;
        }

        v90[6] = v76;
        v77 = v92;
        if (v92)
        {
          v78 = v93;
          v79 = v92;
          if (v93 != v92)
          {
            do
            {
              v78 = sub_399184(v78 - 456);
            }

            while (v78 != v77);
            v79 = v92;
          }

          v93 = v77;
          operator delete(v79);
        }

        if (v106)
        {
          v107 = v106;
          operator delete(v106);
        }

        if (v104)
        {
          v105 = v104;
          operator delete(v104);
        }

        if (v102)
        {
          *(&v102 + 1) = v102;
          operator delete(v102);
        }

        if (*(&v99 + 1))
        {
          v100 = *(&v99 + 1);
          operator delete(*(&v99 + 1));
        }

        if (v97)
        {
          v98 = v97;
          operator delete(v97);
        }

        if (v112)
        {
          *(&v112 + 1) = v112;
          operator delete(v112);
        }

        if (__dst[3])
        {
          __dst[4] = __dst[3];
          operator delete(__dst[3]);
        }

        if (__dst[0])
        {
          __dst[1] = __dst[0];
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v108[5]) < 0)
        {
          operator delete(v108[3]);
          if (SHIBYTE(v108[2]) < 0)
          {
            goto LABEL_136;
          }

LABEL_22:
          v9 = v89 + 7;
          if (v89 + 7 == v86)
          {
            break;
          }

          goto LABEL_23;
        }

        if ((SHIBYTE(v108[2]) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_136:
        operator delete(v108[0]);
        v9 = v89 + 7;
      }

      while (v89 + 7 != v86);
LABEL_137:
      v80 = v5[3];
      if (v80 >= v5[4])
      {
        v81 = sub_94FCC4(v84, &__p);
      }

      else
      {
        sub_936CE0(v5[3], &__p);
        v81 = v80 + 160;
      }

      v5[3] = v81;
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      if (SHIBYTE(v121) < 0)
      {
        operator delete(v120);
        if (SHIBYTE(v119[3]) < 0)
        {
          goto LABEL_147;
        }

LABEL_144:
        v82 = v118;
        if (v118 != -1)
        {
LABEL_148:
          (off_266DD78[v82])(&v95, v117);
        }
      }

      else
      {
        if ((SHIBYTE(v119[3]) & 0x80000000) == 0)
        {
          goto LABEL_144;
        }

LABEL_147:
        operator delete(v119[1]);
        v82 = v118;
        if (v118 != -1)
        {
          goto LABEL_148;
        }
      }

      v118 = -1;
      if (SHIBYTE(v116) < 0)
      {
        operator delete(__p);
      }

      v6 += 4;
    }

    while (v6 != v85);
  }

  if (v83 != a2 + 704)
  {
    *(v5 + 24) = *(a2 + 736);
    sub_618D4(v83, *(a2 + 720), 0);
  }

  *(v5 + 2) = *a1;
}

void sub_94E04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_94F774(v10 + 40);
  sub_933BA4(a10);
  _Unwind_Resume(a1);
}

void sub_94E06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  *(v73 + 24) = v72;
  v75 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v75;
    operator delete(v75);
    if (SLOBYTE(STACK[0x24F]) < 0)
    {
LABEL_3:
      operator delete(STACK[0x238]);
      if ((SLOBYTE(STACK[0x22F]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (SLOBYTE(STACK[0x24F]) < 0)
  {
    goto LABEL_3;
  }

  if ((SLOBYTE(STACK[0x22F]) & 0x80000000) == 0)
  {
LABEL_4:
    v76 = LODWORD(STACK[0x208]);
    if (v76 == -1)
    {
LABEL_10:
      LODWORD(STACK[0x208]) = -1;
      if (a72 < 0)
      {
        operator delete(a67);
      }

      sub_9395F0(v73);
      _Unwind_Resume(a1);
    }

LABEL_9:
    (off_266DD78[v76])(&a25, a12);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(STACK[0x218]);
  v76 = LODWORD(STACK[0x208]);
  if (v76 == -1)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_94E360(void *a1@<X0>, unint64_t ***a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 24);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v24 = ***a2;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) > v24)
      {
        v25 = sub_3A25A8(a1[5], __ROR8__(*(*a3 + 48 * v24 + 24), 32), 0, "trip");
        v26 = sub_92FC60(a1[5], *(v25 + *(v25 - *v25 + 6)), 0, "line");
        v19 = sub_93E04C(a1[3], *(v26 + *(v26 - *v26 + 6)), 0, "system");
        v27 = (v19 - *v19);
        if (*v27 < 0x23u)
        {
          goto LABEL_21;
        }

        v21 = v27[17];
        if (!v21)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_14;
      }

      v17 = ***a2;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) > v17)
      {
        v18 = sub_3A25A8(a1[5], __ROR8__(*(*a3 + 48 * v17 + 24), 32), 0, "trip");
        v19 = sub_92FC60(a1[5], *(v18 + *(v18 - *v18 + 6)), 0, "line");
        v20 = (v19 - *v19);
        if (*v20 < 0x2Bu || (v21 = v20[21]) == 0)
        {
LABEL_21:
          v28 = 2;
          goto LABEL_22;
        }

LABEL_20:
        v28 = *(v19 + v21);
LABEL_22:

        sub_94F4E0(a1, v28, a4);
        return;
      }
    }

LABEL_60:
    sub_6FAB4();
  }

  if (!*(a2 + 24))
  {
    v22 = sub_9274F4(a1[8], "Suggested");
    if (*(v22 + 23) < 0)
    {
      v44 = *v22;
      v45 = v22[1];

      sub_325C(a4, v44, v45);
    }

    else
    {
      v23 = *v22;
      *(a4 + 16) = v22[2];
      *a4 = v23;
    }

    return;
  }

  if (v6 != 1)
  {
LABEL_14:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v7 = ***a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v7)
  {
    goto LABEL_60;
  }

  v8 = sub_3A25A8(a1[5], __ROR8__(*(*a3 + 48 * v7 + 24), 32), 0, "trip");
  v9 = sub_92FC60(a1[5], *(v8 + *(v8 - *v8 + 6)), 0, "line");
  v10 = *(v9 + *(v9 - *v9 + 6));
  nullsub_1(&v48);
  v11 = sub_93E04C(a1[3], v10, 0, "system");
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
    v51 = 0uLL;
    v52 = 0;
    sub_943AEC(&v51, *v14);
    v54 = v14 + 1;
    v53 = &v14[*v14 + 1];
    sub_943E24(&v54, &v53, &v51, sub_509164);
    v15 = v51;
    v16 = v52;
  }

  else
  {
    v16 = 0;
    v15 = 0uLL;
  }

  *__p = v15;
  v47 = v16;
  sub_9D6590(__p, a1[1] + 968, &v49);
  v29 = __p[0];
  if (__p[0])
  {
    v30 = __p[1];
    v31 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v32 = *(v30 - 3);
        if (v32)
        {
          v33 = *(v30 - 2);
          v34 = *(v30 - 3);
          if (v33 != v32)
          {
            do
            {
              if (*(v33 - 1) < 0)
              {
                operator delete(*(v33 - 24));
              }

              v33 -= 32;
            }

            while (v33 != v32);
            v34 = *(v30 - 3);
          }

          *(v30 - 2) = v32;
          operator delete(v34);
        }

        v35 = (v30 - 64);
        if (*(v30 - 41) < 0)
        {
          operator delete(*v35);
        }

        v30 -= 64;
      }

      while (v35 != v29);
      v31 = __p[0];
    }

    __p[1] = v29;
    operator delete(v31);
  }

  v36 = sub_93E04C(a1[3], v10, 0, "system");
  v37 = (v36 - *v36);
  if (*v37 >= 0x27u && (v38 = v37[19]) != 0)
  {
    v39 = *(v36 + v38);
  }

  else
  {
    v39 = 127;
  }

  sub_9D4650(v39, &v49, a4);
  v40 = v49;
  if (v49)
  {
    v41 = v50;
    v42 = v49;
    if (v50 == v49)
    {
LABEL_55:
      v50 = v40;
      operator delete(v42);
      return;
    }

    while (1)
    {
      if (*(v41 - 1) < 0)
      {
        operator delete(*(v41 - 3));
        v43 = v41 - 7;
        if ((*(v41 - 33) & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_53:
        operator delete(*v43);
        v41 = v43;
        if (v43 == v40)
        {
LABEL_54:
          v42 = v49;
          goto LABEL_55;
        }
      }

      else
      {
        v43 = v41 - 7;
        if (*(v41 - 33) < 0)
        {
          goto LABEL_53;
        }

LABEL_50:
        v41 = v43;
        if (v43 == v40)
        {
          goto LABEL_54;
        }
      }
    }
  }
}