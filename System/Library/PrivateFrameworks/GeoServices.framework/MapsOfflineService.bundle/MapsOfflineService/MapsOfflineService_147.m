void sub_923248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_92325C(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v22 = v4 >> 1;
    if ((v4 >> 1) >= (0xD37A6F4DE9BD37A7 * ((a4 - a1) >> 3)))
    {
      v9 = (0xA6F4DE9BD37A6F4ELL * ((a4 - a1) >> 3)) | 1;
      v10 = (a1 + 184 * v9);
      v11 = 0xA6F4DE9BD37A6F4ELL * ((a4 - a1) >> 3) + 2;
      if (v11 < a3)
      {
        v12 = sub_683148(a1 + 184 * v9, *a2);
        if (v12 < sub_683148(v10 + 184, *a2))
        {
          v10 = (v10 + 184);
          v9 = v11;
        }
      }

      v13 = sub_683148(v10, *a2);
      if (v13 >= sub_683148(v5, *a2))
      {
        v14 = *(v5 + 48);
        v23[2] = *(v5 + 32);
        v23[3] = v14;
        v24 = *(v5 + 64);
        v15 = *(v5 + 16);
        v23[0] = *v5;
        v23[1] = v15;
        v25[0] = 0;
        v26 = -1;
        v16 = *(v5 + 104);
        if (v16 != -1)
        {
          v34[0] = v25;
          (off_266D768[v16])(v34, v5 + 72);
          v26 = v16;
        }

        v27 = *(v5 + 112);
        *v28 = *(v5 + 120);
        v29 = *(v5 + 136);
        *(v5 + 120) = 0;
        *(v5 + 128) = 0;
        *(v5 + 136) = 0;
        v30 = *(v5 + 144);
        *__p = *(v5 + 152);
        v32 = *(v5 + 168);
        *(v5 + 160) = 0;
        *(v5 + 168) = 0;
        v33 = *(v5 + 176);
        *(v5 + 152) = 0;
        do
        {
          v17 = v10;
          sub_826CE0(v5, v10);
          if (v22 < v9)
          {
            break;
          }

          v18 = (2 * v9) | 1;
          v10 = (a1 + 184 * v18);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v18;
          }

          else
          {
            v19 = sub_683148(a1 + 184 * v18, *a2);
            if (v19 >= sub_683148(v10 + 184, *a2))
            {
              v9 = v18;
            }

            else
            {
              v10 = (v10 + 184);
            }
          }

          v20 = sub_683148(v10, *a2);
          v5 = v17;
        }

        while (v20 >= sub_683148(v23, *a2));
        sub_826CE0(v17, v23);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v29) & 0x80000000) == 0)
          {
LABEL_19:
            v21 = v26;
            if (v26 == -1)
            {
              return;
            }

LABEL_23:
            (off_266D740[v21])(v34, v25);
            return;
          }
        }

        else if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        operator delete(v28[0]);
        v21 = v26;
        if (v26 == -1)
        {
          return;
        }

        goto LABEL_23;
      }
    }
  }
}

void sub_923508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_92351C(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v8;
    v24 = *(a1 + 64);
    v9 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v9;
    v25[0] = 0;
    v26 = -1;
    v10 = *(a1 + 104);
    if (v10 != -1)
    {
      v11 = a2;
      v34[0] = v25;
      (off_266D768[v10])(v34, a1 + 72);
      v26 = v10;
      a2 = v11;
    }

    v22 = a2;
    v12 = 0;
    v27 = *(a1 + 112);
    *v28 = *(a1 + 120);
    v29 = *(a1 + 136);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    v30 = *(a1 + 144);
    *__p = *(a1 + 152);
    v32 = *(a1 + 168);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v33 = *(a1 + 176);
    v13 = a1;
    v21 = a1;
    *(a1 + 152) = 0;
    do
    {
      v16 = v13 + 184 * v12;
      v14 = (v16 + 184);
      v15 = (2 * v12) | 1;
      v17 = 2 * v12 + 2;
      if (v17 < a4)
      {
        v18 = sub_683148(v16 + 184, *a3);
        v19 = v16 + 368;
        if (v18 < sub_683148(v19, *a3))
        {
          v14 = v19;
          v15 = v17;
        }
      }

      sub_826CE0(v13, v14);
      v13 = v14;
      v12 = v15;
    }

    while (v15 <= (v4 >> 1));
    if (v14 == (v22 - 184))
    {
      sub_826CE0(v14, v23);
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_826CE0(v14, (v22 - 184));
      sub_826CE0(v22 - 184, v23);
      sub_9237A4(v21, v14 + 184, a3, 0xD37A6F4DE9BD37A7 * ((v14 - v21 + 184) >> 3));
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(__p[0]);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_13:
      v20 = v26;
      if (v26 == -1)
      {
        return;
      }

LABEL_18:
      (off_266D740[v20])(v34, v25);
      return;
    }

LABEL_17:
    operator delete(v28[0]);
    v20 = v26;
    if (v26 == -1)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_923778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_923790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_9237A4(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 184 * v7);
    v9 = a2 - 184;
    v10 = sub_683148(v8, *a3);
    if (v10 < sub_683148(v9, *a3))
    {
      v11 = v9;
      v12 = *(v9 + 48);
      v19[2] = *(v9 + 32);
      v19[3] = v12;
      v20 = *(v9 + 64);
      v13 = *(v9 + 16);
      v19[0] = *v9;
      v19[1] = v13;
      v21[0] = 0;
      v22 = -1;
      v14 = *(a2 - 80);
      if (v14 != -1)
      {
        v30 = v21;
        (off_266D768[v14])(&v30, a2 - 112);
        v22 = v14;
        v11 = v9;
      }

      v23 = *(a2 - 72);
      *v24 = *(a2 - 64);
      v25 = *(a2 - 48);
      *(a2 - 64) = 0;
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      v26 = *(a2 - 40);
      *__p = *(a2 - 32);
      v28 = *(a2 - 16);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 32) = 0;
      v29 = *(a2 - 8);
      do
      {
        v15 = v8;
        sub_826CE0(v11, v8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 184 * v7);
        v16 = sub_683148(v8, *a3);
        v17 = sub_683148(v19, *a3);
        v11 = v15;
      }

      while (v16 < v17);
      sub_826CE0(v15, v19);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
LABEL_10:
          v18 = v22;
          if (v22 == -1)
          {
            return;
          }

LABEL_14:
          (off_266D740[v18])(&v30, v21);
          return;
        }
      }

      else if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v24[0]);
      v18 = v22;
      if (v22 == -1)
      {
        return;
      }

      goto LABEL_14;
    }
  }
}

void sub_9239AC(__int128 *a1, __int128 *a2, unsigned int **a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 184);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xD37A6F4DE9BD37A7 * (v12 >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v20 = sub_683148(a2 - 184, *a3);
        if (v20 < sub_683148(a1, *a3))
        {

          sub_826B90(a1, v8);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_9220A0(a1, (a1 + 184), a1 + 23, (a2 - 184), a3);
      return;
    }

    if (v13 == 5)
    {

      sub_922198(a1, (a1 + 184), a1 + 23, (a1 + 552), (a2 - 184), a3);
      return;
    }

LABEL_10:
    if (v12 <= 4415)
    {
      if (a5)
      {

        sub_923E20(a1, a2, a3);
      }

      else
      {

        sub_924148(a1, a2, a3);
      }

      return;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v21 = (v13 - 2) >> 1;
        v22 = v21 + 1;
        v23 = a1 + 184 * v21;
        do
        {
          sub_924DAC(a1, a3, 0xD37A6F4DE9BD37A7 * (v12 >> 3), v23);
          v23 -= 184;
          --v22;
        }

        while (v22);
        v24 = 0xD37A6F4DE9BD37A7 * (v12 >> 3);
        do
        {
          sub_92506C(a1, a2, a3, v24);
          a2 = (a2 - 184);
        }

        while (v24-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (a1 + 184 * (v13 >> 1));
    if (v12 < 0x5C01)
    {
      sub_921F68(v15, a1, (a2 - 184), a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_921F68(a1, v15, (a2 - 184), a3);
      sub_921F68(a1 + 184, (a1 + 184 * v14 - 184), a2 - 23, a3);
      sub_921F68((a1 + 23), (a1 + 184 * v14 + 184), (a2 - 552), a3);
      sub_921F68(a1 + 184 * v14 - 184, v15, (a1 + 184 * v14 + 184), a3);
      sub_826B90(a1, v15);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v16 = sub_683148(a1 - 184, *a3);
    if (v16 >= sub_683148(a1, *a3))
    {
      v9 = sub_924448(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v17 = sub_924758(a1, a2, a3);
    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }

    v19 = sub_924A5C(a1, v17, a3);
    v9 = v17 + 184;
    if (sub_924A5C((v17 + 184), a2, a3))
    {
      a4 = -v11;
      a2 = v17;
      if (v19)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v19)
    {
LABEL_20:
      sub_9239AC(a1, v17, a3, -v11, a5 & 1);
      v9 = v17 + 184;
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_921F68(a1, (a1 + 184), (a2 - 184), a3);
}

void sub_923E20(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 184;
    if (a1 + 184 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        v10 = sub_683148(v5, *a3);
        if (v10 >= sub_683148(v8, *a3))
        {
          goto LABEL_4;
        }

        v11 = *(v9 + 48);
        v24[2] = *(v9 + 32);
        v24[3] = v11;
        v25 = *(v9 + 64);
        v12 = *(v9 + 16);
        v24[0] = *v9;
        v24[1] = v12;
        v26[0] = 0;
        v27 = -1;
        v13 = *(v8 + 288);
        if (v13 != -1)
        {
          v35[0] = v26;
          (off_266D768[v13])(v35, v8 + 256);
          v27 = v13;
        }

        v28 = *(v8 + 296);
        v29 = *(v8 + 304);
        v30 = *(v8 + 320);
        *(v8 + 304) = 0;
        *(v8 + 312) = 0;
        *(v8 + 320) = 0;
        v31 = *(v8 + 328);
        __p = *(v8 + 336);
        v33 = *(v8 + 352);
        *(v8 + 344) = 0;
        *(v8 + 352) = 0;
        *(v8 + 336) = 0;
        v14 = v7;
        v34 = *(v8 + 360);
        while (1)
        {
          v15 = a1 + v14;
          v16 = *(a1 + v14 + 16);
          *(v15 + 184) = *(a1 + v14);
          *(v15 + 200) = v16;
          v17 = *(a1 + v14 + 40);
          *(v15 + 216) = *(a1 + v14 + 32);
          *(v15 + 224) = v17;
          *(v15 + 232) = *(a1 + v14 + 48);
          *(v15 + 236) = *(a1 + v14 + 52);
          *(v15 + 241) = *(a1 + v14 + 57);
          v18 = *(a1 + v14 + 288);
          v19 = *(a1 + v14 + 104);
          if (v18 == -1)
          {
            if (v19 == -1)
            {
              goto LABEL_14;
            }
          }

          else if (v19 == -1)
          {
            (off_266D740[v18])(v35, a1 + v14 + 256);
            *(v15 + 288) = -1;
            goto LABEL_14;
          }

          v35[0] = a1 + v14 + 256;
          (off_266D790[v19])(v35);
LABEL_14:
          v20 = a1 + v14;
          *(a1 + v14 + 296) = *(a1 + v14 + 112);
          if (*(a1 + v14 + 327) < 0)
          {
            operator delete(*(v20 + 304));
          }

          *(v20 + 304) = *(v20 + 120);
          *(v20 + 320) = *(v20 + 136);
          *(v20 + 143) = 0;
          *(v20 + 120) = 0;
          *(v20 + 328) = *(v20 + 144);
          if (*(v20 + 359) < 0)
          {
            operator delete(*(v20 + 336));
          }

          v21 = (a1 + v14);
          *(v20 + 336) = *(a1 + v14 + 152);
          *(v20 + 352) = *(a1 + v14 + 168);
          v21[175] = 0;
          v21[152] = 0;
          v21[360] = *(a1 + v14 + 176);
          if (!v14)
          {
            break;
          }

          v22 = sub_683148(v24, *a3);
          v14 -= 184;
          if (v22 >= sub_683148((v21 - 184), *a3))
          {
            sub_826CE0(a1 + v14 + 184, v24);
            if ((SHIBYTE(v33) & 0x80000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        sub_826CE0(a1, v24);
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_23:
        operator delete(__p);
LABEL_24:
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29);
          v23 = v27;
          if (v27 == -1)
          {
            goto LABEL_4;
          }

LABEL_28:
          (off_266D740[v23])(v35, v26);
          goto LABEL_4;
        }

        v23 = v27;
        if (v27 != -1)
        {
          goto LABEL_28;
        }

LABEL_4:
        v5 = v9 + 184;
        v7 += 184;
        v8 = v9;
      }

      while (v9 + 184 != a2);
    }
  }
}

void sub_924134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_924148(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = a1;
  v5 = a1 + 184;
  if (a1 + 184 == a2)
  {
    return;
  }

  v7 = a1 - 184;
  while (2)
  {
    v8 = v5;
    v9 = sub_683148(v5, *a3);
    if (v9 >= sub_683148(v4, *a3))
    {
      goto LABEL_4;
    }

    v10 = *(v8 + 48);
    v24[2] = *(v8 + 32);
    v24[3] = v10;
    v25 = *(v8 + 64);
    v11 = *(v8 + 16);
    v24[0] = *v8;
    v24[1] = v11;
    v26[0] = 0;
    v27 = -1;
    v12 = *(v4 + 288);
    if (v12 != -1)
    {
      v35[0] = v26;
      (off_266D768[v12])(v35, v4 + 256);
      v27 = v12;
    }

    v28 = *(v4 + 296);
    v29 = *(v4 + 304);
    v30 = *(v4 + 320);
    *(v4 + 304) = 0;
    *(v4 + 312) = 0;
    *(v4 + 320) = 0;
    v31 = *(v4 + 328);
    __p = *(v4 + 336);
    v33 = *(v4 + 352);
    *(v4 + 344) = 0;
    *(v4 + 352) = 0;
    *(v4 + 336) = 0;
    v13 = *(v4 + 360);
    v14 = v7;
    v34 = v13;
    do
    {
      v15 = *(v14 + 200);
      *(v14 + 368) = *(v14 + 184);
      *(v14 + 384) = v15;
      v16 = *(v14 + 224);
      *(v14 + 400) = *(v14 + 216);
      *(v14 + 408) = v16;
      *(v14 + 416) = *(v14 + 232);
      *(v14 + 420) = *(v14 + 236);
      *(v14 + 425) = *(v14 + 241);
      v17 = *(v14 + 472);
      v18 = *(v14 + 288);
      if (v17 == -1)
      {
        if (v18 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (v18 == -1)
      {
        (off_266D740[v17])(v35, v14 + 440);
        *(v14 + 472) = -1;
        goto LABEL_14;
      }

      v35[0] = v14 + 440;
      (off_266D790[v18])(v35);
LABEL_14:
      *(v14 + 480) = *(v14 + 296);
      v19 = (v14 + 488);
      if (*(v14 + 511) < 0)
      {
        operator delete(*v19);
      }

      *v19 = *(v14 + 304);
      *(v14 + 504) = *(v14 + 320);
      *(v14 + 327) = 0;
      *(v14 + 304) = 0;
      *(v14 + 512) = *(v14 + 328);
      v20 = (v14 + 520);
      if (*(v14 + 543) < 0)
      {
        operator delete(*v20);
      }

      *v20 = *(v14 + 336);
      *(v14 + 536) = *(v14 + 352);
      *(v14 + 359) = 0;
      *(v14 + 336) = 0;
      *(v14 + 544) = *(v14 + 360);
      v21 = sub_683148(v24, *a3);
      v22 = sub_683148(v14, *a3);
      v14 -= 184;
    }

    while (v21 < v22);
    sub_826CE0(v14 + 368, v24);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v30) < 0)
      {
        goto LABEL_24;
      }

LABEL_21:
      v23 = v27;
      if (v27 != -1)
      {
LABEL_25:
        (off_266D740[v23])(v35, v26);
      }
    }

    else
    {
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      operator delete(v29);
      v23 = v27;
      if (v27 != -1)
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    v5 = v8 + 184;
    v7 += 184;
    v4 = v8;
    if (v8 + 184 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_924434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_924448(uint64_t a1, __int128 *a2, unsigned int **a3)
{
  v6 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v6;
  v21 = *(a1 + 64);
  v7 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v7;
  v22[0] = 0;
  v23 = -1;
  v8 = *(a1 + 104);
  if (v8 != -1)
  {
    v31 = v22;
    (off_266D768[v8])(&v31, a1 + 72);
    v23 = v8;
  }

  v24 = *(a1 + 112);
  *v25 = *(a1 + 120);
  v26 = *(a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  v27 = *(a1 + 144);
  *__p = *(a1 + 152);
  v29 = *(a1 + 168);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  v30 = *(a1 + 176);
  v9 = sub_683148(v20, *a3);
  if (v9 >= sub_683148(a2 - 184, *a3))
  {
    v12 = a1 + 184;
    do
    {
      v10 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = sub_683148(v20, *a3);
      v14 = sub_683148(v10, *a3);
      v12 = v10 + 184;
    }

    while (v13 >= v14);
  }

  else
  {
    v10 = a1;
    do
    {
      v11 = sub_683148(v20, *a3);
      v10 += 184;
    }

    while (v11 >= sub_683148(v10, *a3));
  }

  if (v10 < a2)
  {
    do
    {
      v15 = sub_683148(v20, *a3);
      a2 = (a2 - 184);
    }

    while (v15 < sub_683148(a2, *a3));
  }

  while (v10 < a2)
  {
    sub_826B90(v10, a2);
    do
    {
      v16 = sub_683148(v20, *a3);
      v10 += 184;
    }

    while (v16 >= sub_683148(v10, *a3));
    do
    {
      v17 = sub_683148(v20, *a3);
      a2 = (a2 - 184);
    }

    while (v17 < sub_683148(a2, *a3));
  }

  if (v10 - 184 != a1)
  {
    sub_826CE0(a1, (v10 - 184));
  }

  sub_826CE0(v10 - 184, v20);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_21:
      v18 = v23;
      if (v23 == -1)
      {
        return v10;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v25[0]);
  v18 = v23;
  if (v23 != -1)
  {
LABEL_25:
    (off_266D740[v18])(&v31, v22);
  }

  return v10;
}

__int128 *sub_924758(uint64_t a1, unint64_t a2, unsigned int **a3)
{
  v6 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v6;
  v22 = *(a1 + 64);
  v7 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v7;
  v23[0] = 0;
  v24 = -1;
  v8 = *(a1 + 104);
  if (v8 != -1)
  {
    v32 = v23;
    (off_266D768[v8])(&v32, a1 + 72);
    v24 = v8;
  }

  v9 = 0;
  v25 = *(a1 + 112);
  v27 = *(a1 + 136);
  v28 = *(a1 + 144);
  v30 = *(a1 + 168);
  v31 = *(a1 + 176);
  *v26 = *(a1 + 120);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *__p = *(a1 + 152);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  do
  {
    v10 = sub_683148(a1 + v9 + 184, *a3);
    v9 += 184;
  }

  while (v10 < sub_683148(v21, *a3));
  v11 = a1 + v9;
  if (v9 == 184)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      a2 -= 184;
      v13 = sub_683148(a2, *a3);
    }

    while (v13 >= sub_683148(v21, *a3));
  }

  else
  {
    do
    {
      a2 -= 184;
      v12 = sub_683148(a2, *a3);
    }

    while (v12 >= sub_683148(v21, *a3));
  }

  if (v11 >= a2)
  {
    v18 = (v11 - 184);
    if (v11 - 184 == a1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = a1 + v9;
  v15 = a2;
  do
  {
    sub_826B90(v14, v15);
    do
    {
      v14 += 184;
      v16 = sub_683148(v14, *a3);
    }

    while (v16 < sub_683148(v21, *a3));
    do
    {
      v15 = (v15 - 184);
      v17 = sub_683148(v15, *a3);
    }

    while (v17 >= sub_683148(v21, *a3));
  }

  while (v14 < v15);
  v18 = (v14 - 184);
  if (v14 - 184 != a1)
  {
LABEL_19:
    sub_826CE0(a1, v18);
  }

LABEL_20:
  sub_826CE0(v18, v21);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
LABEL_22:
      v19 = v24;
      if (v24 == -1)
      {
        return v18;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v26[0]);
  v19 = v24;
  if (v24 != -1)
  {
LABEL_26:
    (off_266D740[v19])(&v32, v23);
  }

  return v18;
}

BOOL sub_924A5C(__int128 *a1, __int128 *a2, unsigned int **a3)
{
  v6 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_921F68(a1, (a1 + 184), (a2 - 184), a3);
        return 1;
      case 4:
        sub_9220A0(a1, (a1 + 184), a1 + 23, (a2 - 184), a3);
        return 1;
      case 5:
        sub_922198(a1, (a1 + 184), a1 + 23, (a1 + 552), (a2 - 184), a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v10 = (a1 + 23);
    sub_921F68(a1, (a1 + 184), a1 + 23, a3);
    v11 = a1 + 552;
    if ((a1 + 552) == a2)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = sub_683148(v11, *a3);
      if (v14 >= sub_683148(v10, *a3))
      {
        goto LABEL_15;
      }

      v15 = *(v11 + 48);
      v22[2] = *(v11 + 32);
      v22[3] = v15;
      v23 = *(v11 + 64);
      v16 = *(v11 + 16);
      v22[0] = *v11;
      v22[1] = v16;
      v24[0] = 0;
      v25 = -1;
      v17 = *(v11 + 104);
      if (v17 != -1)
      {
        v33[0] = v24;
        (off_266D768[v17])(v33, v11 + 72);
        v25 = v17;
      }

      v26 = *(v11 + 112);
      v27 = *(v11 + 120);
      v28 = *(v11 + 136);
      *(v11 + 120) = 0;
      *(v11 + 128) = 0;
      *(v11 + 136) = 0;
      v29 = *(v11 + 144);
      __p = *(v11 + 152);
      v31 = *(v11 + 168);
      *(v11 + 160) = 0;
      *(v11 + 168) = 0;
      v32 = *(v11 + 176);
      v18 = v12;
      *(v11 + 152) = 0;
      do
      {
        sub_826CE0(a1 + v18 + 552, (a1 + v18 + 368));
        if (v18 == -368)
        {
          sub_826CE0(a1, v22);
          if (SHIBYTE(v31) < 0)
          {
            goto LABEL_28;
          }

LABEL_25:
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_29;
          }

LABEL_26:
          v21 = v25;
          if (v25 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }

        v19 = sub_683148(v22, *a3);
        v20 = sub_683148(a1 + v18 + 184, *a3);
        v18 -= 184;
      }

      while (v19 < v20);
      sub_826CE0(a1 + v18 + 552, v22);
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      operator delete(__p);
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_29:
      operator delete(v27);
      v21 = v25;
      if (v25 == -1)
      {
        goto LABEL_14;
      }

LABEL_30:
      (off_266D740[v21])(v33, v24);
LABEL_14:
      if (++v13 == 8)
      {
        return v11 + 184 == a2;
      }

LABEL_15:
      v10 = v11;
      v12 += 184;
      v11 += 184;
      if (v11 == a2)
      {
        return 1;
      }
    }
  }

  v8 = (a2 - 184);
  v9 = sub_683148(a2 - 184, *a3);
  if (v9 >= sub_683148(a1, *a3))
  {
    return 1;
  }

  sub_826B90(a1, v8);
  return 1;
}

void sub_924D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_924DAC(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v22 = v4 >> 1;
    if ((v4 >> 1) >= (0xD37A6F4DE9BD37A7 * ((a4 - a1) >> 3)))
    {
      v9 = (0xA6F4DE9BD37A6F4ELL * ((a4 - a1) >> 3)) | 1;
      v10 = (a1 + 184 * v9);
      v11 = 0xA6F4DE9BD37A6F4ELL * ((a4 - a1) >> 3) + 2;
      if (v11 < a3)
      {
        v12 = sub_683148(a1 + 184 * v9, *a2);
        if (v12 < sub_683148(v10 + 184, *a2))
        {
          v10 = (v10 + 184);
          v9 = v11;
        }
      }

      v13 = sub_683148(v10, *a2);
      if (v13 >= sub_683148(v5, *a2))
      {
        v14 = *(v5 + 48);
        v23[2] = *(v5 + 32);
        v23[3] = v14;
        v24 = *(v5 + 64);
        v15 = *(v5 + 16);
        v23[0] = *v5;
        v23[1] = v15;
        v25[0] = 0;
        v26 = -1;
        v16 = *(v5 + 104);
        if (v16 != -1)
        {
          v34[0] = v25;
          (off_266D768[v16])(v34, v5 + 72);
          v26 = v16;
        }

        v27 = *(v5 + 112);
        *v28 = *(v5 + 120);
        v29 = *(v5 + 136);
        *(v5 + 120) = 0;
        *(v5 + 128) = 0;
        *(v5 + 136) = 0;
        v30 = *(v5 + 144);
        *__p = *(v5 + 152);
        v32 = *(v5 + 168);
        *(v5 + 160) = 0;
        *(v5 + 168) = 0;
        v33 = *(v5 + 176);
        *(v5 + 152) = 0;
        do
        {
          v17 = v10;
          sub_826CE0(v5, v10);
          if (v22 < v9)
          {
            break;
          }

          v18 = (2 * v9) | 1;
          v10 = (a1 + 184 * v18);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v18;
          }

          else
          {
            v19 = sub_683148(a1 + 184 * v18, *a2);
            if (v19 >= sub_683148(v10 + 184, *a2))
            {
              v9 = v18;
            }

            else
            {
              v10 = (v10 + 184);
            }
          }

          v20 = sub_683148(v10, *a2);
          v5 = v17;
        }

        while (v20 >= sub_683148(v23, *a2));
        sub_826CE0(v17, v23);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v29) & 0x80000000) == 0)
          {
LABEL_19:
            v21 = v26;
            if (v26 == -1)
            {
              return;
            }

LABEL_23:
            (off_266D740[v21])(v34, v25);
            return;
          }
        }

        else if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        operator delete(v28[0]);
        v21 = v26;
        if (v26 == -1)
        {
          return;
        }

        goto LABEL_23;
      }
    }
  }
}

void sub_925058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_92506C(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v8;
    v24 = *(a1 + 64);
    v9 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v9;
    v25[0] = 0;
    v26 = -1;
    v10 = *(a1 + 104);
    if (v10 != -1)
    {
      v11 = a2;
      v34[0] = v25;
      (off_266D768[v10])(v34, a1 + 72);
      v26 = v10;
      a2 = v11;
    }

    v22 = a2;
    v12 = 0;
    v27 = *(a1 + 112);
    *v28 = *(a1 + 120);
    v29 = *(a1 + 136);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    v30 = *(a1 + 144);
    *__p = *(a1 + 152);
    v32 = *(a1 + 168);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v33 = *(a1 + 176);
    v13 = a1;
    v21 = a1;
    *(a1 + 152) = 0;
    do
    {
      v16 = v13 + 184 * v12;
      v14 = (v16 + 184);
      v15 = (2 * v12) | 1;
      v17 = 2 * v12 + 2;
      if (v17 < a4)
      {
        v18 = sub_683148(v16 + 184, *a3);
        v19 = v16 + 368;
        if (v18 < sub_683148(v19, *a3))
        {
          v14 = v19;
          v15 = v17;
        }
      }

      sub_826CE0(v13, v14);
      v13 = v14;
      v12 = v15;
    }

    while (v15 <= (v4 >> 1));
    if (v14 == (v22 - 184))
    {
      sub_826CE0(v14, v23);
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_826CE0(v14, (v22 - 184));
      sub_826CE0(v22 - 184, v23);
      sub_9252F4(v21, v14 + 184, a3, 0xD37A6F4DE9BD37A7 * ((v14 - v21 + 184) >> 3));
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(__p[0]);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_13:
      v20 = v26;
      if (v26 == -1)
      {
        return;
      }

LABEL_18:
      (off_266D740[v20])(v34, v25);
      return;
    }

LABEL_17:
    operator delete(v28[0]);
    v20 = v26;
    if (v26 == -1)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_9252C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_9252E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_9252F4(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 184 * v7);
    v9 = a2 - 184;
    v10 = sub_683148(v8, *a3);
    if (v10 < sub_683148(v9, *a3))
    {
      v11 = v9;
      v12 = *(v9 + 48);
      v19[2] = *(v9 + 32);
      v19[3] = v12;
      v20 = *(v9 + 64);
      v13 = *(v9 + 16);
      v19[0] = *v9;
      v19[1] = v13;
      v21[0] = 0;
      v22 = -1;
      v14 = *(a2 - 80);
      if (v14 != -1)
      {
        v30 = v21;
        (off_266D768[v14])(&v30, a2 - 112);
        v22 = v14;
        v11 = v9;
      }

      v23 = *(a2 - 72);
      *v24 = *(a2 - 64);
      v25 = *(a2 - 48);
      *(a2 - 64) = 0;
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      v26 = *(a2 - 40);
      *__p = *(a2 - 32);
      v28 = *(a2 - 16);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 32) = 0;
      v29 = *(a2 - 8);
      do
      {
        v15 = v8;
        sub_826CE0(v11, v8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 184 * v7);
        v16 = sub_683148(v8, *a3);
        v17 = sub_683148(v19, *a3);
        v11 = v15;
      }

      while (v16 < v17);
      sub_826CE0(v15, v19);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
LABEL_10:
          v18 = v22;
          if (v22 == -1)
          {
            return;
          }

LABEL_14:
          (off_266D740[v18])(&v30, v21);
          return;
        }
      }

      else if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v24[0]);
      v18 = v22;
      if (v22 == -1)
      {
        return;
      }

      goto LABEL_14;
    }
  }
}

void sub_9254FC(__int128 *a1, __int128 *a2, unsigned int **a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 184);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xD37A6F4DE9BD37A7 * (v12 >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v20 = sub_683148(a2 - 184, *a3);
        if (v20 < sub_683148(a1, *a3))
        {

          sub_826B90(a1, v8);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_9220A0(a1, (a1 + 184), a1 + 23, (a2 - 184), a3);
      return;
    }

    if (v13 == 5)
    {

      sub_922198(a1, (a1 + 184), a1 + 23, (a1 + 552), (a2 - 184), a3);
      return;
    }

LABEL_10:
    if (v12 <= 4415)
    {
      if (a5)
      {

        sub_925970(a1, a2, a3);
      }

      else
      {

        sub_925C98(a1, a2, a3);
      }

      return;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v21 = (v13 - 2) >> 1;
        v22 = v21 + 1;
        v23 = a1 + 184 * v21;
        do
        {
          sub_9268FC(a1, a3, 0xD37A6F4DE9BD37A7 * (v12 >> 3), v23);
          v23 -= 184;
          --v22;
        }

        while (v22);
        v24 = 0xD37A6F4DE9BD37A7 * (v12 >> 3);
        do
        {
          sub_926BBC(a1, a2, a3, v24);
          a2 = (a2 - 184);
        }

        while (v24-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (a1 + 184 * (v13 >> 1));
    if (v12 < 0x5C01)
    {
      sub_921F68(v15, a1, (a2 - 184), a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_921F68(a1, v15, (a2 - 184), a3);
      sub_921F68(a1 + 184, (a1 + 184 * v14 - 184), a2 - 23, a3);
      sub_921F68((a1 + 23), (a1 + 184 * v14 + 184), (a2 - 552), a3);
      sub_921F68(a1 + 184 * v14 - 184, v15, (a1 + 184 * v14 + 184), a3);
      sub_826B90(a1, v15);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v16 = sub_683148(a1 - 184, *a3);
    if (v16 >= sub_683148(a1, *a3))
    {
      v9 = sub_925F98(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v17 = sub_9262A8(a1, a2, a3);
    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }

    v19 = sub_9265AC(a1, v17, a3);
    v9 = v17 + 184;
    if (sub_9265AC((v17 + 184), a2, a3))
    {
      a4 = -v11;
      a2 = v17;
      if (v19)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v19)
    {
LABEL_20:
      sub_9254FC(a1, v17, a3, -v11, a5 & 1);
      v9 = v17 + 184;
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_921F68(a1, (a1 + 184), (a2 - 184), a3);
}

void sub_925970(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 184;
    if (a1 + 184 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        v10 = sub_683148(v5, *a3);
        if (v10 >= sub_683148(v8, *a3))
        {
          goto LABEL_4;
        }

        v11 = *(v9 + 48);
        v24[2] = *(v9 + 32);
        v24[3] = v11;
        v25 = *(v9 + 64);
        v12 = *(v9 + 16);
        v24[0] = *v9;
        v24[1] = v12;
        v26[0] = 0;
        v27 = -1;
        v13 = *(v8 + 288);
        if (v13 != -1)
        {
          v35[0] = v26;
          (off_266D768[v13])(v35, v8 + 256);
          v27 = v13;
        }

        v28 = *(v8 + 296);
        v29 = *(v8 + 304);
        v30 = *(v8 + 320);
        *(v8 + 304) = 0;
        *(v8 + 312) = 0;
        *(v8 + 320) = 0;
        v31 = *(v8 + 328);
        __p = *(v8 + 336);
        v33 = *(v8 + 352);
        *(v8 + 344) = 0;
        *(v8 + 352) = 0;
        *(v8 + 336) = 0;
        v14 = v7;
        v34 = *(v8 + 360);
        while (1)
        {
          v15 = a1 + v14;
          v16 = *(a1 + v14 + 16);
          *(v15 + 184) = *(a1 + v14);
          *(v15 + 200) = v16;
          v17 = *(a1 + v14 + 40);
          *(v15 + 216) = *(a1 + v14 + 32);
          *(v15 + 224) = v17;
          *(v15 + 232) = *(a1 + v14 + 48);
          *(v15 + 236) = *(a1 + v14 + 52);
          *(v15 + 241) = *(a1 + v14 + 57);
          v18 = *(a1 + v14 + 288);
          v19 = *(a1 + v14 + 104);
          if (v18 == -1)
          {
            if (v19 == -1)
            {
              goto LABEL_14;
            }
          }

          else if (v19 == -1)
          {
            (off_266D740[v18])(v35, a1 + v14 + 256);
            *(v15 + 288) = -1;
            goto LABEL_14;
          }

          v35[0] = a1 + v14 + 256;
          (off_266D790[v19])(v35);
LABEL_14:
          v20 = a1 + v14;
          *(a1 + v14 + 296) = *(a1 + v14 + 112);
          if (*(a1 + v14 + 327) < 0)
          {
            operator delete(*(v20 + 304));
          }

          *(v20 + 304) = *(v20 + 120);
          *(v20 + 320) = *(v20 + 136);
          *(v20 + 143) = 0;
          *(v20 + 120) = 0;
          *(v20 + 328) = *(v20 + 144);
          if (*(v20 + 359) < 0)
          {
            operator delete(*(v20 + 336));
          }

          v21 = (a1 + v14);
          *(v20 + 336) = *(a1 + v14 + 152);
          *(v20 + 352) = *(a1 + v14 + 168);
          v21[175] = 0;
          v21[152] = 0;
          v21[360] = *(a1 + v14 + 176);
          if (!v14)
          {
            break;
          }

          v22 = sub_683148(v24, *a3);
          v14 -= 184;
          if (v22 >= sub_683148((v21 - 184), *a3))
          {
            sub_826CE0(a1 + v14 + 184, v24);
            if ((SHIBYTE(v33) & 0x80000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        sub_826CE0(a1, v24);
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_23:
        operator delete(__p);
LABEL_24:
        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29);
          v23 = v27;
          if (v27 == -1)
          {
            goto LABEL_4;
          }

LABEL_28:
          (off_266D740[v23])(v35, v26);
          goto LABEL_4;
        }

        v23 = v27;
        if (v27 != -1)
        {
          goto LABEL_28;
        }

LABEL_4:
        v5 = v9 + 184;
        v7 += 184;
        v8 = v9;
      }

      while (v9 + 184 != a2);
    }
  }
}

void sub_925C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_925C98(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = a1;
  v5 = a1 + 184;
  if (a1 + 184 == a2)
  {
    return;
  }

  v7 = a1 - 184;
  while (2)
  {
    v8 = v5;
    v9 = sub_683148(v5, *a3);
    if (v9 >= sub_683148(v4, *a3))
    {
      goto LABEL_4;
    }

    v10 = *(v8 + 48);
    v24[2] = *(v8 + 32);
    v24[3] = v10;
    v25 = *(v8 + 64);
    v11 = *(v8 + 16);
    v24[0] = *v8;
    v24[1] = v11;
    v26[0] = 0;
    v27 = -1;
    v12 = *(v4 + 288);
    if (v12 != -1)
    {
      v35[0] = v26;
      (off_266D768[v12])(v35, v4 + 256);
      v27 = v12;
    }

    v28 = *(v4 + 296);
    v29 = *(v4 + 304);
    v30 = *(v4 + 320);
    *(v4 + 304) = 0;
    *(v4 + 312) = 0;
    *(v4 + 320) = 0;
    v31 = *(v4 + 328);
    __p = *(v4 + 336);
    v33 = *(v4 + 352);
    *(v4 + 344) = 0;
    *(v4 + 352) = 0;
    *(v4 + 336) = 0;
    v13 = *(v4 + 360);
    v14 = v7;
    v34 = v13;
    do
    {
      v15 = *(v14 + 200);
      *(v14 + 368) = *(v14 + 184);
      *(v14 + 384) = v15;
      v16 = *(v14 + 224);
      *(v14 + 400) = *(v14 + 216);
      *(v14 + 408) = v16;
      *(v14 + 416) = *(v14 + 232);
      *(v14 + 420) = *(v14 + 236);
      *(v14 + 425) = *(v14 + 241);
      v17 = *(v14 + 472);
      v18 = *(v14 + 288);
      if (v17 == -1)
      {
        if (v18 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (v18 == -1)
      {
        (off_266D740[v17])(v35, v14 + 440);
        *(v14 + 472) = -1;
        goto LABEL_14;
      }

      v35[0] = v14 + 440;
      (off_266D790[v18])(v35);
LABEL_14:
      *(v14 + 480) = *(v14 + 296);
      v19 = (v14 + 488);
      if (*(v14 + 511) < 0)
      {
        operator delete(*v19);
      }

      *v19 = *(v14 + 304);
      *(v14 + 504) = *(v14 + 320);
      *(v14 + 327) = 0;
      *(v14 + 304) = 0;
      *(v14 + 512) = *(v14 + 328);
      v20 = (v14 + 520);
      if (*(v14 + 543) < 0)
      {
        operator delete(*v20);
      }

      *v20 = *(v14 + 336);
      *(v14 + 536) = *(v14 + 352);
      *(v14 + 359) = 0;
      *(v14 + 336) = 0;
      *(v14 + 544) = *(v14 + 360);
      v21 = sub_683148(v24, *a3);
      v22 = sub_683148(v14, *a3);
      v14 -= 184;
    }

    while (v21 < v22);
    sub_826CE0(v14 + 368, v24);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v30) < 0)
      {
        goto LABEL_24;
      }

LABEL_21:
      v23 = v27;
      if (v27 != -1)
      {
LABEL_25:
        (off_266D740[v23])(v35, v26);
      }
    }

    else
    {
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      operator delete(v29);
      v23 = v27;
      if (v27 != -1)
      {
        goto LABEL_25;
      }
    }

LABEL_4:
    v5 = v8 + 184;
    v7 += 184;
    v4 = v8;
    if (v8 + 184 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_925F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_925F98(uint64_t a1, __int128 *a2, unsigned int **a3)
{
  v6 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v6;
  v21 = *(a1 + 64);
  v7 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v7;
  v22[0] = 0;
  v23 = -1;
  v8 = *(a1 + 104);
  if (v8 != -1)
  {
    v31 = v22;
    (off_266D768[v8])(&v31, a1 + 72);
    v23 = v8;
  }

  v24 = *(a1 + 112);
  *v25 = *(a1 + 120);
  v26 = *(a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  v27 = *(a1 + 144);
  *__p = *(a1 + 152);
  v29 = *(a1 + 168);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  v30 = *(a1 + 176);
  v9 = sub_683148(v20, *a3);
  if (v9 >= sub_683148(a2 - 184, *a3))
  {
    v12 = a1 + 184;
    do
    {
      v10 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = sub_683148(v20, *a3);
      v14 = sub_683148(v10, *a3);
      v12 = v10 + 184;
    }

    while (v13 >= v14);
  }

  else
  {
    v10 = a1;
    do
    {
      v11 = sub_683148(v20, *a3);
      v10 += 184;
    }

    while (v11 >= sub_683148(v10, *a3));
  }

  if (v10 < a2)
  {
    do
    {
      v15 = sub_683148(v20, *a3);
      a2 = (a2 - 184);
    }

    while (v15 < sub_683148(a2, *a3));
  }

  while (v10 < a2)
  {
    sub_826B90(v10, a2);
    do
    {
      v16 = sub_683148(v20, *a3);
      v10 += 184;
    }

    while (v16 >= sub_683148(v10, *a3));
    do
    {
      v17 = sub_683148(v20, *a3);
      a2 = (a2 - 184);
    }

    while (v17 < sub_683148(a2, *a3));
  }

  if (v10 - 184 != a1)
  {
    sub_826CE0(a1, (v10 - 184));
  }

  sub_826CE0(v10 - 184, v20);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_21:
      v18 = v23;
      if (v23 == -1)
      {
        return v10;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v25[0]);
  v18 = v23;
  if (v23 != -1)
  {
LABEL_25:
    (off_266D740[v18])(&v31, v22);
  }

  return v10;
}

__int128 *sub_9262A8(uint64_t a1, unint64_t a2, unsigned int **a3)
{
  v6 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v6;
  v22 = *(a1 + 64);
  v7 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v7;
  v23[0] = 0;
  v24 = -1;
  v8 = *(a1 + 104);
  if (v8 != -1)
  {
    v32 = v23;
    (off_266D768[v8])(&v32, a1 + 72);
    v24 = v8;
  }

  v9 = 0;
  v25 = *(a1 + 112);
  v27 = *(a1 + 136);
  v28 = *(a1 + 144);
  v30 = *(a1 + 168);
  v31 = *(a1 + 176);
  *v26 = *(a1 + 120);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *__p = *(a1 + 152);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  do
  {
    v10 = sub_683148(a1 + v9 + 184, *a3);
    v9 += 184;
  }

  while (v10 < sub_683148(v21, *a3));
  v11 = a1 + v9;
  if (v9 == 184)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      a2 -= 184;
      v13 = sub_683148(a2, *a3);
    }

    while (v13 >= sub_683148(v21, *a3));
  }

  else
  {
    do
    {
      a2 -= 184;
      v12 = sub_683148(a2, *a3);
    }

    while (v12 >= sub_683148(v21, *a3));
  }

  if (v11 >= a2)
  {
    v18 = (v11 - 184);
    if (v11 - 184 == a1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = a1 + v9;
  v15 = a2;
  do
  {
    sub_826B90(v14, v15);
    do
    {
      v14 += 184;
      v16 = sub_683148(v14, *a3);
    }

    while (v16 < sub_683148(v21, *a3));
    do
    {
      v15 = (v15 - 184);
      v17 = sub_683148(v15, *a3);
    }

    while (v17 >= sub_683148(v21, *a3));
  }

  while (v14 < v15);
  v18 = (v14 - 184);
  if (v14 - 184 != a1)
  {
LABEL_19:
    sub_826CE0(a1, v18);
  }

LABEL_20:
  sub_826CE0(v18, v21);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
LABEL_22:
      v19 = v24;
      if (v24 == -1)
      {
        return v18;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v26[0]);
  v19 = v24;
  if (v24 != -1)
  {
LABEL_26:
    (off_266D740[v19])(&v32, v23);
  }

  return v18;
}

BOOL sub_9265AC(__int128 *a1, __int128 *a2, unsigned int **a3)
{
  v6 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_921F68(a1, (a1 + 184), (a2 - 184), a3);
        return 1;
      case 4:
        sub_9220A0(a1, (a1 + 184), a1 + 23, (a2 - 184), a3);
        return 1;
      case 5:
        sub_922198(a1, (a1 + 184), a1 + 23, (a1 + 552), (a2 - 184), a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v10 = (a1 + 23);
    sub_921F68(a1, (a1 + 184), a1 + 23, a3);
    v11 = a1 + 552;
    if ((a1 + 552) == a2)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = sub_683148(v11, *a3);
      if (v14 >= sub_683148(v10, *a3))
      {
        goto LABEL_15;
      }

      v15 = *(v11 + 48);
      v22[2] = *(v11 + 32);
      v22[3] = v15;
      v23 = *(v11 + 64);
      v16 = *(v11 + 16);
      v22[0] = *v11;
      v22[1] = v16;
      v24[0] = 0;
      v25 = -1;
      v17 = *(v11 + 104);
      if (v17 != -1)
      {
        v33[0] = v24;
        (off_266D768[v17])(v33, v11 + 72);
        v25 = v17;
      }

      v26 = *(v11 + 112);
      v27 = *(v11 + 120);
      v28 = *(v11 + 136);
      *(v11 + 120) = 0;
      *(v11 + 128) = 0;
      *(v11 + 136) = 0;
      v29 = *(v11 + 144);
      __p = *(v11 + 152);
      v31 = *(v11 + 168);
      *(v11 + 160) = 0;
      *(v11 + 168) = 0;
      v32 = *(v11 + 176);
      v18 = v12;
      *(v11 + 152) = 0;
      do
      {
        sub_826CE0(a1 + v18 + 552, (a1 + v18 + 368));
        if (v18 == -368)
        {
          sub_826CE0(a1, v22);
          if (SHIBYTE(v31) < 0)
          {
            goto LABEL_28;
          }

LABEL_25:
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_29;
          }

LABEL_26:
          v21 = v25;
          if (v25 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }

        v19 = sub_683148(v22, *a3);
        v20 = sub_683148(a1 + v18 + 184, *a3);
        v18 -= 184;
      }

      while (v19 < v20);
      sub_826CE0(a1 + v18 + 552, v22);
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      operator delete(__p);
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_29:
      operator delete(v27);
      v21 = v25;
      if (v25 == -1)
      {
        goto LABEL_14;
      }

LABEL_30:
      (off_266D740[v21])(v33, v24);
LABEL_14:
      if (++v13 == 8)
      {
        return v11 + 184 == a2;
      }

LABEL_15:
      v10 = v11;
      v12 += 184;
      v11 += 184;
      if (v11 == a2)
      {
        return 1;
      }
    }
  }

  v8 = (a2 - 184);
  v9 = sub_683148(a2 - 184, *a3);
  if (v9 >= sub_683148(a1, *a3))
  {
    return 1;
  }

  sub_826B90(a1, v8);
  return 1;
}

void sub_9268E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_9268FC(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v22 = v4 >> 1;
    if ((v4 >> 1) >= (0xD37A6F4DE9BD37A7 * ((a4 - a1) >> 3)))
    {
      v9 = (0xA6F4DE9BD37A6F4ELL * ((a4 - a1) >> 3)) | 1;
      v10 = (a1 + 184 * v9);
      v11 = 0xA6F4DE9BD37A6F4ELL * ((a4 - a1) >> 3) + 2;
      if (v11 < a3)
      {
        v12 = sub_683148(a1 + 184 * v9, *a2);
        if (v12 < sub_683148(v10 + 184, *a2))
        {
          v10 = (v10 + 184);
          v9 = v11;
        }
      }

      v13 = sub_683148(v10, *a2);
      if (v13 >= sub_683148(v5, *a2))
      {
        v14 = *(v5 + 48);
        v23[2] = *(v5 + 32);
        v23[3] = v14;
        v24 = *(v5 + 64);
        v15 = *(v5 + 16);
        v23[0] = *v5;
        v23[1] = v15;
        v25[0] = 0;
        v26 = -1;
        v16 = *(v5 + 104);
        if (v16 != -1)
        {
          v34[0] = v25;
          (off_266D768[v16])(v34, v5 + 72);
          v26 = v16;
        }

        v27 = *(v5 + 112);
        *v28 = *(v5 + 120);
        v29 = *(v5 + 136);
        *(v5 + 120) = 0;
        *(v5 + 128) = 0;
        *(v5 + 136) = 0;
        v30 = *(v5 + 144);
        *__p = *(v5 + 152);
        v32 = *(v5 + 168);
        *(v5 + 160) = 0;
        *(v5 + 168) = 0;
        v33 = *(v5 + 176);
        *(v5 + 152) = 0;
        do
        {
          v17 = v10;
          sub_826CE0(v5, v10);
          if (v22 < v9)
          {
            break;
          }

          v18 = (2 * v9) | 1;
          v10 = (a1 + 184 * v18);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v18;
          }

          else
          {
            v19 = sub_683148(a1 + 184 * v18, *a2);
            if (v19 >= sub_683148(v10 + 184, *a2))
            {
              v9 = v18;
            }

            else
            {
              v10 = (v10 + 184);
            }
          }

          v20 = sub_683148(v10, *a2);
          v5 = v17;
        }

        while (v20 >= sub_683148(v23, *a2));
        sub_826CE0(v17, v23);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v29) & 0x80000000) == 0)
          {
LABEL_19:
            v21 = v26;
            if (v26 == -1)
            {
              return;
            }

LABEL_23:
            (off_266D740[v21])(v34, v25);
            return;
          }
        }

        else if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        operator delete(v28[0]);
        v21 = v26;
        if (v26 == -1)
        {
          return;
        }

        goto LABEL_23;
      }
    }
  }
}

void sub_926BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_926BBC(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v8;
    v24 = *(a1 + 64);
    v9 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v9;
    v25[0] = 0;
    v26 = -1;
    v10 = *(a1 + 104);
    if (v10 != -1)
    {
      v11 = a2;
      v34[0] = v25;
      (off_266D768[v10])(v34, a1 + 72);
      v26 = v10;
      a2 = v11;
    }

    v22 = a2;
    v12 = 0;
    v27 = *(a1 + 112);
    *v28 = *(a1 + 120);
    v29 = *(a1 + 136);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    v30 = *(a1 + 144);
    *__p = *(a1 + 152);
    v32 = *(a1 + 168);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v33 = *(a1 + 176);
    v13 = a1;
    v21 = a1;
    *(a1 + 152) = 0;
    do
    {
      v16 = v13 + 184 * v12;
      v14 = (v16 + 184);
      v15 = (2 * v12) | 1;
      v17 = 2 * v12 + 2;
      if (v17 < a4)
      {
        v18 = sub_683148(v16 + 184, *a3);
        v19 = v16 + 368;
        if (v18 < sub_683148(v19, *a3))
        {
          v14 = v19;
          v15 = v17;
        }
      }

      sub_826CE0(v13, v14);
      v13 = v14;
      v12 = v15;
    }

    while (v15 <= (v4 >> 1));
    if (v14 == (v22 - 184))
    {
      sub_826CE0(v14, v23);
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_826CE0(v14, (v22 - 184));
      sub_826CE0(v22 - 184, v23);
      sub_926E44(v21, v14 + 184, a3, 0xD37A6F4DE9BD37A7 * ((v14 - v21 + 184) >> 3));
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(__p[0]);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_13:
      v20 = v26;
      if (v26 == -1)
      {
        return;
      }

LABEL_18:
      (off_266D740[v20])(v34, v25);
      return;
    }

LABEL_17:
    operator delete(v28[0]);
    v20 = v26;
    if (v26 == -1)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_926E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_926E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_682EB4(va);
  _Unwind_Resume(a1);
}

void sub_926E44(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = (a4 - 2) >> 1;
    v8 = (a1 + 184 * v7);
    v9 = a2 - 184;
    v10 = sub_683148(v8, *a3);
    if (v10 < sub_683148(v9, *a3))
    {
      v11 = v9;
      v12 = *(v9 + 48);
      v19[2] = *(v9 + 32);
      v19[3] = v12;
      v20 = *(v9 + 64);
      v13 = *(v9 + 16);
      v19[0] = *v9;
      v19[1] = v13;
      v21[0] = 0;
      v22 = -1;
      v14 = *(a2 - 80);
      if (v14 != -1)
      {
        v30 = v21;
        (off_266D768[v14])(&v30, a2 - 112);
        v22 = v14;
        v11 = v9;
      }

      v23 = *(a2 - 72);
      *v24 = *(a2 - 64);
      v25 = *(a2 - 48);
      *(a2 - 64) = 0;
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      v26 = *(a2 - 40);
      *__p = *(a2 - 32);
      v28 = *(a2 - 16);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 32) = 0;
      v29 = *(a2 - 8);
      do
      {
        v15 = v8;
        sub_826CE0(v11, v8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 184 * v7);
        v16 = sub_683148(v8, *a3);
        v17 = sub_683148(v19, *a3);
        v11 = v15;
      }

      while (v16 < v17);
      sub_826CE0(v15, v19);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
LABEL_10:
          v18 = v22;
          if (v22 == -1)
          {
            return;
          }

LABEL_14:
          (off_266D740[v18])(&v30, v21);
          return;
        }
      }

      else if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v24[0]);
      v18 = v22;
      if (v22 == -1)
      {
        return;
      }

      goto LABEL_14;
    }
  }
}

void sub_92704C()
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
  xmmword_27B1310 = 0u;
  unk_27B1320 = 0u;
  dword_27B1330 = 1065353216;
  sub_3A9A34(&xmmword_27B1310, v0);
  sub_3A9A34(&xmmword_27B1310, v3);
  sub_3A9A34(&xmmword_27B1310, __p);
  sub_3A9A34(&xmmword_27B1310, v9);
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
    qword_27B12E8 = 0;
    qword_27B12F0 = 0;
    qword_27B12E0 = 0;
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

void sub_927294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B12F8)
  {
    qword_27B1300 = qword_27B12F8;
    operator delete(qword_27B12F8);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_927340(_OWORD *__dst, _OWORD *a2, __int128 *a3)
{
  __dst[1] = 0u;
  __dst[2] = 0u;
  *__dst = 0u;
  if (__dst == a2)
  {
    goto LABEL_4;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
LABEL_4:
    v6 = 0;
    v7 = 0;
LABEL_5:
    v8 = *(__dst + 3);
    v9 = (v6 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_1794();
    }

    v11 = v7 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v18 = 16 * v9;
    v19 = *a3;
    *(16 * v9) = *a3;
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v13 = (v18 + 16);
    v14 = *(__dst + 3);
    v15 = *(__dst + 4) - v14;
    v16 = v18 - v15;
    memcpy((v18 - v15), v14, v15);
    *(__dst + 3) = v16;
    *(__dst + 4) = v13;
    *(__dst + 5) = 0;
    if (v14)
    {
      operator delete(v14);
    }

    goto LABEL_17;
  }

  sub_13A68(__dst, *a2, *(a2 + 1));
  v6 = *(__dst + 4);
  v7 = *(__dst + 5);
  if (v6 >= v7)
  {
    goto LABEL_5;
  }

  v20 = *(a3 + 1);
  *v6 = *a3;
  v6[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v6 + 2;
LABEL_17:
  *(__dst + 4) = v13;
  return __dst;
}

void sub_9274CC(_Unwind_Exception *a1)
{
  sub_2C1818((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_9274F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  while (1)
  {
    if (v4 == v5)
    {
      v9 = *(a2 + 23);
      v10 = v9 < 0;
      if (v9 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      if (v10)
      {
        v12 = *(a2 + 8);
      }

      else
      {
        v12 = *(a2 + 23);
      }

      v13 = 4;
      if (v12 < 4)
      {
        v13 = v12;
      }

      if (!v12)
      {
        goto LABEL_47;
      }

      v14 = &v11[v13];
      v15 = v11;
      v16 = &v11[v13];
LABEL_17:
      for (i = v15 + 3; ; ++i)
      {
        v15 = i - 2;
        if (*(i - 3) == 68)
        {
          if (v15 == v14)
          {
            goto LABEL_29;
          }

          if (*v15 == 69)
          {
            if (i - 1 == v14)
            {
              goto LABEL_29;
            }

            if (*(i - 1) == 86)
            {
              if (i != v14)
              {
                if (*i == 58)
                {
                  v16 = i - 3;
                }

                goto LABEL_17;
              }

LABEL_29:
              if (v16 != v14 && v16 == v11)
              {
                if (sub_7E7E4(3u))
                {
                  sub_19594F8(&v46);
                  v18 = sub_4A5C(&v46, "Missing localization for development key: '", 43);
                  v19 = *(a2 + 23);
                  if (v19 >= 0)
                  {
                    v20 = a2;
                  }

                  else
                  {
                    v20 = *a2;
                  }

                  if (v19 >= 0)
                  {
                    v21 = *(a2 + 23);
                  }

                  else
                  {
                    v21 = *(a2 + 8);
                  }

                  v22 = sub_4A5C(v18, v20, v21);
                  v23 = sub_4A5C(v22, "' in language :'", 16);
                  v24 = *(a1 + 23);
                  if (v24 >= 0)
                  {
                    v25 = a1;
                  }

                  else
                  {
                    v25 = *a1;
                  }

                  if (v24 >= 0)
                  {
                    v26 = *(a1 + 23);
                  }

                  else
                  {
                    v26 = *(a1 + 8);
                  }

                  v27 = sub_4A5C(v23, v25, v26);
                  sub_4A5C(v27, "'", 1);
                  if ((v56 & 0x10) != 0)
                  {
                    v42 = v55;
                    if (v55 < v52)
                    {
                      v55 = v52;
                      v42 = v52;
                    }

                    v43 = v51;
                    v28 = v42 - v51;
                    if (v42 - v51 > 0x7FFFFFFFFFFFFFF7)
                    {
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    if ((v56 & 8) == 0)
                    {
                      v28 = 0;
                      HIBYTE(v45) = 0;
                      goto LABEL_87;
                    }

                    v43 = v49;
                    v28 = v50 - v49;
                    if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
                    {
LABEL_94:
                      sub_3244();
                    }
                  }

                  if (v28 >= 0x17)
                  {
                    operator new();
                  }

                  HIBYTE(v45) = v28;
                  if (v28)
                  {
                    memmove(&__p, v43, v28);
                  }

LABEL_87:
                  *(&__p + v28) = 0;
                  sub_7E854(&__p, 3u);
                  if (SHIBYTE(v45) < 0)
                  {
                    operator delete(__p);
                  }

                  if (v54 < 0)
                  {
                    operator delete(v53);
                  }

                  std::locale::~locale(&v48);
                  std::ostream::~ostream();
                  std::ios::~ios();
                }

                operator new();
              }

LABEL_47:
              if (sub_7E7E4(3u))
              {
                sub_19594F8(&v46);
                v29 = sub_4A5C(&v46, "Missing localization for production key: '", 42);
                v30 = *(a2 + 23);
                if (v30 >= 0)
                {
                  v31 = a2;
                }

                else
                {
                  v31 = *a2;
                }

                if (v30 >= 0)
                {
                  v32 = *(a2 + 23);
                }

                else
                {
                  v32 = *(a2 + 8);
                }

                v33 = sub_4A5C(v29, v31, v32);
                v34 = sub_4A5C(v33, "' in language :'", 16);
                v35 = *(a1 + 23);
                if (v35 >= 0)
                {
                  v36 = a1;
                }

                else
                {
                  v36 = *a1;
                }

                if (v35 >= 0)
                {
                  v37 = *(a1 + 23);
                }

                else
                {
                  v37 = *(a1 + 8);
                }

                v38 = sub_4A5C(v34, v36, v37);
                sub_4A5C(v38, "'", 1);
                if ((v56 & 0x10) != 0)
                {
                  v40 = v55;
                  if (v55 < v52)
                  {
                    v55 = v52;
                    v40 = v52;
                  }

                  v41 = v51;
                  v39 = v40 - v51;
                  if (v40 - v51 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  if ((v56 & 8) == 0)
                  {
                    v39 = 0;
                    HIBYTE(v45) = 0;
                    goto LABEL_71;
                  }

                  v41 = v49;
                  v39 = v50 - v49;
                  if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
                  {
LABEL_78:
                    sub_3244();
                  }
                }

                if (v39 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v45) = v39;
                if (v39)
                {
                  memmove(&__p, v41, v39);
                }

LABEL_71:
                *(&__p + v39) = 0;
                sub_7E854(&__p, 3u);
                if (SHIBYTE(v45) < 0)
                {
                  operator delete(__p);
                }

                if (v54 < 0)
                {
                  operator delete(v53);
                }

                std::locale::~locale(&v48);
                std::ostream::~ostream();
                std::ios::~ios();
              }

              operator new();
            }
          }
        }

        else if (v15 == v14)
        {
          goto LABEL_29;
        }
      }
    }

    v6 = sub_9286DC(*v4, a1);
    if (v6)
    {
      v7 = sub_3536DC(v6[5], a2);
      if (v7)
      {
        return v7 + 5;
      }
    }

    v4 += 2;
  }
}

void sub_927FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_928058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_928074(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  while (v6 != v7)
  {
    v8 = sub_9286DC(*v6, a1);
    if (v8 && sub_3536DC(v8[5], a2))
    {
      return 1;
    }

    v6 += 2;
  }

  if (!a3)
  {
    return 0;
  }

  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (v11 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v11 + 4 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v18 = 0;
  HIBYTE(v18) = v11 + 4;
  __p[0] = 978603605;
  if (v11)
  {
    if ((v10 & 0x80u) == 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(__p + 4, v12, v11);
  }

  *(__p + v11 + 4) = 0;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  while (v13 != v14)
  {
    v15 = sub_9286DC(*v13, a1);
    if (v15 && sub_3536DC(v15[5], __p))
    {
      result = 1;
      if ((SHIBYTE(v18) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_28;
    }

    v13 += 2;
  }

  result = 0;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_28:
  v16 = result;
  operator delete(__p[0]);
  return v16;
}

void sub_928220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_92823C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = a1 + 24;
  if (&v4[-v5] <= 0x10)
  {
    return sub_928264(result, v4, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
  }

  return result;
}

uint64_t sub_928264(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a5 + (&v9[-*a1] >> 4);
    if (v11 >> 60)
    {
      sub_1794();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v26 = 16 * ((a2 - v10) >> 4);
    v27 = (v26 + 16 * a5);
    v28 = v26;
    do
    {
      v29 = v7[1];
      *v28 = *v7;
      *(v28 + 1) = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v28 += 16;
      v7 += 2;
    }

    while (v28 != v27);
    v30 = *(a1 + 8) - a2;
    memcpy(v27, a2, v30);
    v32 = &v27[v30];
    *(a1 + 8) = v5;
    v33 = *a1;
    v34 = &v5[-*a1];
    v35 = v26 - v34;
    memcpy((v26 - v34), *a1, v34);
    *a1 = v35;
    *(a1 + 8) = v32;
    *(a1 + 16) = 0;
    if (v33)
    {
      operator delete(v33);
    }

    return v26;
  }

  v14 = v9 - a2;
  v15 = (v9 - a2) >> 4;
  if (v15 < a5)
  {
    v16 = (a3 + v14);
    if ((a3 + v14) == a4)
    {
      v17 = *(a1 + 8);
      v18 = v17;
    }

    else
    {
      v17 = *(a1 + 8);
      v37 = v16;
      v18 = v17;
      do
      {
        v38 = v37[1];
        *v18 = *v37;
        *(v18 + 1) = v38;
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
        }

        v37 += 2;
        v18 += 16;
        v17 += 16;
      }

      while (v37 != a4);
    }

    *(a1 + 8) = v17;
    if (v15 >= 1)
    {
      v19 = &v17[-16 * a5];
      if (v19 >= v9)
      {
        v21 = v17;
      }

      else
      {
        v20 = &v17[-16 * a5];
        v21 = v17;
        do
        {
          *v21 = *v20;
          v21 += 16;
          *v20 = 0;
          *(v20 + 1) = 0;
          v20 += 16;
        }

        while (v20 < v9);
      }

      *(a1 + 8) = v21;
      if (v18 != &a2[16 * a5])
      {
        v50 = (v17 - 8);
        v51 = v19 - 16;
        v52 = (&a2[16 * a5] - v17);
        do
        {
          v53 = *v51;
          *v51 = 0;
          *(v51 + 1) = 0;
          v54 = *v50;
          *(v50 - 1) = v53;
          if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v54->__on_zero_shared)(v54);
            std::__shared_weak_count::__release_weak(v54);
          }

          v50 -= 2;
          v51 -= 16;
          v52 += 16;
        }

        while (v52);
      }

      if (v9 != v5)
      {
        v55 = 0;
        do
        {
          v57 = *v7;
          v56 = v7[1];
          if (v56)
          {
            atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
          }

          v58 = &v5[v55];
          v59 = *&v5[v55 + 8];
          *v58 = v57;
          *(v58 + 1) = v56;
          if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v59->__on_zero_shared)(v59);
            std::__shared_weak_count::__release_weak(v59);
          }

          v7 += 2;
          v55 += 16;
        }

        while (v7 != v16);
      }
    }

    return v5;
  }

  v22 = &a2[16 * a5];
  v23 = &v9[-16 * a5];
  if (v23 >= v9)
  {
    *(a1 + 8) = v9;
    if (v9 == v22)
    {
      goto LABEL_43;
    }

LABEL_38:
    v39 = (v9 - 8);
    v40 = v23 - 16;
    v41 = (&a2[16 * a5] - v9);
    do
    {
      v42 = *v40;
      *v40 = 0;
      *(v40 + 1) = 0;
      v43 = *v39;
      *(v39 - 1) = v42;
      if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
      }

      v39 -= 2;
      v40 -= 16;
      v41 += 16;
    }

    while (v41);
    goto LABEL_43;
  }

  v24 = &v9[-16 * a5];
  v25 = *(a1 + 8);
  do
  {
    *v25++ = *v24;
    *v24 = 0;
    *(v24 + 1) = 0;
    v24 += 16;
  }

  while (v24 < v9);
  *(a1 + 8) = v25;
  if (v9 != v22)
  {
    goto LABEL_38;
  }

LABEL_43:
  v44 = 0;
  v45 = &v7[2 * a5];
  do
  {
    v47 = *v7;
    v46 = v7[1];
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = &v5[v44];
    v49 = *&v5[v44 + 8];
    *v48 = v47;
    *(v48 + 1) = v46;
    if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v49->__on_zero_shared)(v49);
      std::__shared_weak_count::__release_weak(v49);
    }

    v7 += 2;
    v44 += 16;
  }

  while (v7 != v45);
  return v5;
}

uint64_t **sub_9286DC(void *a1, uint64_t a2)
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

void sub_928894(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF144(a2);
  a1[1] = sub_3AF6B4(a2);
  __p = 0;
  v5 = 0;
  v6 = 0;
  sub_6AAC1C(a1 + 2, a2);
}

void sub_928A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5135D0((v25 + 1288));
  _Unwind_Resume(a1);
}

void sub_928A9C(uint64_t a1, void *a2)
{
  if (!sub_4D1DC0(a2) || *(a1 + 3545) != 1)
  {
    return;
  }

  if (*(a1 + 3544))
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = a2[925];
  v6 = a2[926];
  v84 = a1;
  if (v5 >= v6)
  {
    v7 = a2[924];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3) + 1;
    if (v8 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
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
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 8 * ((v5 - v7) >> 3);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = v4;
    v12 = v11 + 24;
    v13 = (v11 - (v5 - v7));
    memcpy(v13, v7, v5 - v7);
    a2[924] = v13;
    a2[925] = v12;
    a2[926] = 0;
    if (v7)
    {
      operator delete(v7);
    }

    a1 = v84;
    a2[925] = v12;
    v83 = sub_4D1DC0(a2);
    if (!v83)
    {
      return;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = v4;
    a2[925] = v5 + 24;
    v83 = sub_4D1DC0(a2);
    if (!v83)
    {
      return;
    }
  }

  v14 = 0;
  v15 = 0;
  LOWORD(v81) = 0;
  v82 = 0;
  LOBYTE(v80) = 1;
  v85 = v4;
  do
  {
    v16 = sub_4D1F50(a2, v15);
    v18 = (*v16 - **v16);
    v19 = 0.0;
    if (*v18 >= 9u)
    {
      v20 = v18[4];
      if (v20)
      {
        LODWORD(v17) = *(*v16 + v20);
        v19 = v17;
      }
    }

    v21 = v19 * (sub_4D2148(a2, v15) / 1000000000.0);
    if (v21 >= 0.0)
    {
      if (v21 < 4.50359963e15)
      {
        v22 = (v21 + v21) + 1;
        goto LABEL_31;
      }
    }

    else if (v21 > -4.50359963e15)
    {
      v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
LABEL_31:
      v21 = (v22 >> 1);
    }

    v23 = sub_4D1F50(a2, v15);
    v25 = (*v23 - **v23);
    v26 = 0.0;
    if (*v25 >= 9u)
    {
      v27 = v25[4];
      if (v27)
      {
        LODWORD(v24) = *(*v23 + v27);
        v26 = v24;
      }
    }

    v28 = v26 * (sub_4D21C8(a2, v15) / 1000000000.0);
    if (v28 >= 0.0)
    {
      v29 = 4.50359963e15;
      if (v28 < 4.50359963e15)
      {
        v29 = v28 + v28;
        v30 = (v28 + v28) + 1;
        goto LABEL_40;
      }
    }

    else
    {
      v29 = -4.50359963e15;
      if (v28 > -4.50359963e15)
      {
        v29 = v28 + v28;
        v30 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_40:
        v28 = (v30 >> 1);
      }
    }

    v31 = sub_4D23F8(a2, v15, v29);
    v32 = sub_4D1F50(a2, v15);
    v33 = (*v32 - **v32);
    if (*v33 >= 0x1Du && (v34 = v33[14]) != 0)
    {
      v35 = *(*v32 + v34);
    }

    else
    {
      v35 = 0;
    }

    if (*(v32 + 38))
    {
      v36 = -v35;
    }

    else
    {
      v36 = v35;
    }

    sub_2BC814(*a1, v36, &v95);
    v37 = sub_929480(a1, a2, v15);
    v88 = v32;
    if ((v37 & 0x100000000) != 0)
    {
      v38 = v95;
      if (v37 || v95 != v96)
      {
        v96 = v95;
        if (v95 >= v97)
        {
          v39 = (v97 - v95) >> 4;
          if (v39 <= 1)
          {
            v39 = 1;
          }

          if (v97 - v95 >= 0x7FFFFFFFFFFFFFE0)
          {
            v40 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v39;
          }

          if (!(v40 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v95->n128_u64[0] = 0x7FFFFFFFFFFFFFFFLL;
        v38->n128_u64[1] = 0;
        v38[1].n128_u64[0] = 0;
        v38[1].n128_u64[1] = 0;
        v96 = v38 + 2;
        v38->n128_u32[3] = v37;
        a1 = v84;
      }
    }

    v41 = sub_4D2768(a2, v15);
    v42 = v31 + v14;
    v43 = v95;
    if ((v41 & 1) == 0)
    {
      v44 = v96;
      if (v95 != v96)
      {
        v89 = v96;
        v90 = v15;
        v45 = v14 - v21;
        v86 = v45;
        while (1)
        {
          v47 = (*v32 - **v32);
          if (*v47 >= 9u && (v48 = v47[4]) != 0)
          {
            v49 = *(*v32 + v48);
            v50 = v43[1].n128_i64[1];
            if (v50 >= v49)
            {
              v49 = 0;
              goto LABEL_71;
            }
          }

          else
          {
            v49 = 0;
            v50 = v43[1].n128_i64[1];
            if ((v50 & 0x8000000000000000) == 0)
            {
              goto LABEL_71;
            }
          }

          v49 -= v50;
LABEL_71:
          v51 = v43[1].n128_i64[0];
          if (v51 <= v21)
          {
            v51 = v21;
          }

          if (v49 >= v28)
          {
            v49 = v28;
          }

          if (v49 <= v51)
          {
            v46 = v4;
            goto LABEL_64;
          }

          v52 = v45 + v49;
          v53 = a2[925];
          v54 = *(v53 - 24);
          if (v54 >= v52)
          {
            v46 = v4;
            v44 = v89;
            goto LABEL_64;
          }

          v55 = v45 + v51;
          if (v45 + v51 <= v54)
          {
            v56 = *(v53 - 24);
          }

          else
          {
            v56 = v45 + v51;
          }

          v46 = v43->n128_u32[3];
          v87 = v56;
          if (v46 == 1)
          {
            if (v82)
            {
              v46 = 2;
              if (v54 < v55)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v65 = *(sub_4D1F50(a2, v90) + 32);
              v81 = HIDWORD(v65);
              v82 = v65;
              v80 = HIWORD(v65);
              v46 = 2;
              if (v54 < v55)
              {
                goto LABEL_86;
              }
            }
          }

          else
          {
            if (!v46)
            {
              if (*(v84 + 3544))
              {
                v46 = 4;
              }

              else
              {
                v46 = 0;
              }
            }

            if (v54 < v55)
            {
LABEL_86:
              v57 = a2[925];
              v58 = a2[926];
              if (v57 >= v58)
              {
                v61 = a2[924];
                v62 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v61) >> 3) + 1;
                if (v62 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_136;
                }

                v63 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v61) >> 3);
                if (2 * v63 > v62)
                {
                  v62 = 2 * v63;
                }

                if (v63 >= 0x555555555555555)
                {
                  v64 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v64 = v62;
                }

                if (v64)
                {
                  if (v64 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

LABEL_137:
                  sub_1808();
                }

                v66 = 8 * ((v57 - v61) >> 3);
                *v66 = v87;
                *(v66 + 8) = v90;
                *(v66 + 16) = v46;
                v59 = v66 + 24;
                v67 = (v66 - (v57 - v61));
                memcpy(v67, v61, v57 - v61);
                a2[924] = v67;
                a2[925] = v59;
                a2[926] = 0;
                if (v61)
                {
                  operator delete(v61);
                }
              }

              else
              {
                *v57 = v87;
                *(v57 + 8) = v90;
                v59 = v57 + 24;
                *(v57 + 16) = v46;
              }

              a2[925] = v59;
              goto LABEL_109;
            }
          }

          v60 = a2[925];
          if (v4 == v46 && 0xAAAAAAAAAAAAAAABLL * ((v60 - a2[924]) >> 3) >= 2)
          {
            a2[925] = v60 - 24;
            v46 = v4;
          }

          else
          {
            *(v60 - 8) = v46;
            *(v60 - 16) = v90;
          }

LABEL_109:
          if (v90 == sub_4D1DC0(a2) - 1 && v52 >= v42)
          {
LABEL_125:
            v43 = v95;
            v4 = v46;
            a1 = v84;
            v15 = v90;
            break;
          }

          v68 = a2[925];
          v69 = a2[926];
          if (v68 >= v69)
          {
            v71 = a2[924];
            v72 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v71) >> 3) + 1;
            if (v72 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_136:
              sub_1794();
            }

            v73 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v71) >> 3);
            if (2 * v73 > v72)
            {
              v72 = 2 * v73;
            }

            if (v73 >= 0x555555555555555)
            {
              v74 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v74 = v72;
            }

            if (v74)
            {
              if (v74 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              goto LABEL_137;
            }

            v75 = 8 * ((v68 - v71) >> 3);
            *v75 = v52;
            *(v75 + 8) = v90;
            *(v75 + 16) = v85;
            v70 = v75 + 24;
            v76 = (v75 - (v68 - v71));
            memcpy(v76, v71, v68 - v71);
            a2[924] = v76;
            a2[925] = v70;
            a2[926] = 0;
            if (v71)
            {
              operator delete(v71);
            }
          }

          else
          {
            *v68 = v52;
            *(v68 + 8) = v90;
            v70 = v68 + 24;
            *(v68 + 16) = v85;
          }

          v45 = v86;
          a2[925] = v70;
          v32 = v88;
          v44 = v89;
LABEL_64:
          v43 += 2;
          v4 = v46;
          if (v43 == v44)
          {
            goto LABEL_125;
          }
        }
      }
    }

    if (v43)
    {
      v96 = v43;
      operator delete(v43);
    }

    ++v15;
    v14 = v42;
  }

  while (v15 != v83);
  if (v82)
  {
    v77 = sub_74700();
    v78 = *(a1 + 8);
    v79 = sub_31DDCC(v78, (v81 << 32) | (v80 << 48) | v82);
    sub_40C59C(v78, v79, &v95);
    sub_2B51D8(*(a1 + 8), (v81 << 32) & 0xFFFFFFFFFFFFLL | v82);
    sub_734A0(v77, &v94);
    sub_73EC4(v77);
    v91 = sub_7421C(v77);
    sub_7230C(&v91, &__p);
    if (v93 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_134;
      }

LABEL_131:
      if (SHIBYTE(v97) < 0)
      {
LABEL_135:
        operator delete(v95);
      }
    }

    else
    {
      if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

LABEL_134:
      operator delete(v94.__r_.__value_.__l.__data_);
      if (SHIBYTE(v97) < 0)
      {
        goto LABEL_135;
      }
    }
  }
}

void sub_92941C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 121) < 0)
  {
    operator delete(*(v31 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_929480(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  if (!sub_6ABAB4((a1 + 2), v6))
  {
LABEL_27:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    return v22 | v24 | v23;
  }

  v7 = a3 + 1;
  do
  {
    v8 = v7;
    v9 = sub_4D1DC0(a2);
    if (v8 >= v9)
    {
      v15 = 0;
      goto LABEL_20;
    }

    v10 = sub_4D1F50(a2, v8);
    v11 = sub_6ABAB4((a1 + 2), v10);
    v7 = v8 + 1;
  }

  while ((v11 & 1) != 0);
  v12 = (*v10 - **v10);
  if (*v12 >= 0x1Du && (v13 = v12[14]) != 0)
  {
    v14 = *(*v10 + v13);
  }

  else
  {
    v14 = 0;
  }

  if (*(v10 + 38))
  {
    v16 = -v14;
  }

  else
  {
    v16 = v14;
  }

  sub_2BC814(*a1, v16, &v29);
  if (v29 != v30)
  {
    if (v29[1].n128_u64[0])
    {
      v15 = 0;
    }

    else
    {
      v15 = v29->n128_i32[3];
    }

    goto LABEL_19;
  }

  v15 = 0;
  if (v29)
  {
LABEL_19:
    v30 = v29;
    operator delete(v29);
  }

LABEL_20:
  v17 = a3 - 1;
  do
  {
    if (v17 == -1)
    {
      if (v8 >= v9)
      {
        goto LABEL_27;
      }

      goto LABEL_36;
    }

    v18 = sub_4D1F50(a2, v17--);
  }

  while ((sub_6ABAB4((a1 + 2), v18) & 1) != 0);
  v19 = (*v18 - **v18);
  if (*v19 >= 0x1Du && (v20 = v19[14]) != 0)
  {
    v21 = *(*v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  if (*(v18 + 38))
  {
    v25 = -v21;
  }

  else
  {
    v25 = v21;
  }

  sub_2BC814(*a1, v25, &v29);
  if (v29 == v30 || v30[-1].n128_u64[1])
  {
    v15 = 0;
    if (!v29)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v27 = v30[-2].n128_i32[3];
  if (v15 <= v27)
  {
    v28 = v30[-2].n128_u32[3];
  }

  else
  {
    v28 = v15;
  }

  if (v27)
  {
    v15 = v28;
  }

  else
  {
    v15 = 0;
  }

  if (v29)
  {
LABEL_35:
    v30 = v29;
    operator delete(v29);
  }

LABEL_36:
  v24 = v15 & 0xFFFFFF00;
  v23 = v15;
  v22 = 0x100000000;
  return v22 | v24 | v23;
}

void sub_929780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9297A0(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF144(a2);
  a1[1] = sub_3AF6B4(a2);
  __p = 0;
  v5 = 0;
  v6 = 0;
  sub_6AC41C(a1 + 2, a2);
}

void sub_929948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5135D0((v25 + 1288));
  _Unwind_Resume(a1);
}

void sub_929AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_929AC4(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF144(a2);
  a1[1] = sub_3AF6B4(a2);
  __p = 0;
  v5 = 0;
  v6 = 0;
  sub_6A8FEC(a1 + 2, a2);
}

void sub_929C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5135D0((v25 + 1288));
  _Unwind_Resume(a1);
}

void sub_929DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_929DE8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = nullsub_1(a3);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7 && *a2 == 2)
  {
LABEL_6:
    sub_928A9C(a1, v6);
    while (1)
    {
      v6 += 1582;
      if (v6 == v7)
      {
        break;
      }

      if (*a2 == 2)
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_929E70()
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
  xmmword_27B1368 = 0u;
  unk_27B1378 = 0u;
  dword_27B1388 = 1065353216;
  sub_3A9A34(&xmmword_27B1368, v0);
  sub_3A9A34(&xmmword_27B1368, v3);
  sub_3A9A34(&xmmword_27B1368, __p);
  sub_3A9A34(&xmmword_27B1368, v9);
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
    qword_27B1340 = 0;
    qword_27B1348 = 0;
    qword_27B1338 = 0;
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

void sub_92A0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1350)
  {
    qword_27B1358 = qword_27B1350;
    operator delete(qword_27B1350);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_92A164(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return -1;
  }

  v4 = -1431655765 * ((v2 - *a1) >> 2);
  v5 = (v4 - 1);
  if (v5 >= -1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 - 1;
  }

  if ((v5 & 0x80000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = v6 - v4 + 1;
    v40 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v41 = vdupq_n_s64(0x4076800000000000uLL);
    v38 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v39 = vdupq_n_s64(0xC066800000000000);
    while (1)
    {
      v13 = a1[1];
      v14 = sub_41224(a1, v5);
      v16 = *(v13 - 12);
      v15 = *(v13 - 8);
      v17 = v16 == -1 && v15 == -1;
      if (v17 || ((v19 = *v14, v18 = v14[1], *v14 == -1) ? (v20 = v18 == -1) : (v20 = 0), v20))
      {
LABEL_33:
        v8 = v5;
        return *sub_41224(a1, v8);
      }

      v21 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
      v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
      v23.i64[0] = v16;
      v23.i64[1] = v19;
      v24 = exp(3.14159265 - v18 * 6.28318531 / 4294967300.0);
      v25 = atan((v24 - 1.0 / v24) * 0.5) * 57.2957795 * 0.0174532925;
      v26 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v23), v41), v40), v39), v38);
      v42 = vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0];
      v27 = sin((v22 - v25) * 0.5);
      v28 = v27 * v27;
      v29 = cos(v22);
      v30 = v29 * cos(v25);
      v31 = sin(0.5 * v42);
      v32 = atan2(sqrt(v31 * v31 * v30 + v28), sqrt(1.0 - (v31 * v31 * v30 + v28)));
      v33 = (v32 + v32) * 6372797.56 * 100.0;
      if (v33 >= 0.0)
      {
        v34 = v33;
        if (v33 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v35 = (v33 + v33) + 1;
      }

      else
      {
        v34 = v33;
        if (v33 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v35 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
      }

      v34 = (v35 >> 1);
LABEL_25:
      if (v34 >= 9.22337204e18)
      {
        v11 = 0x7FFFFFFFFFFFFFFELL;
        if (a2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_33;
        }

        goto LABEL_8;
      }

      if (v33 >= 0.0)
      {
        if (v33 >= 4.50359963e15)
        {
          goto LABEL_32;
        }

        v36 = (v33 + v33) + 1;
      }

      else
      {
        if (v33 <= -4.50359963e15)
        {
          goto LABEL_32;
        }

        v36 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
      }

      v33 = (v36 >> 1);
LABEL_32:
      v11 = v33;
      if (v33 >= a2)
      {
        goto LABEL_33;
      }

LABEL_8:
      if (v11 > v9)
      {
        v9 = v11;
        v8 = v5;
      }

      --v5;
      if (__CFADD__(v10++, 1))
      {
        return *sub_41224(a1, v8);
      }
    }
  }

  v8 = 0;
  return *sub_41224(a1, v8);
}

uint64_t *sub_92A4E0(uint64_t a1)
{
  result = nullsub_1(a1);
  v2 = *result;
  v15 = result[1];
  if (*result != v15)
  {
    do
    {
      if (*(v2 + 10120) == 1)
      {
        v3 = *(v2 + 10320);
        v4 = *(v2 + 10328);
        v16 = v4;
        while (v3 != v4)
        {
          v5 = *(v3 + 20);
          v6 = v5;
          v7 = HIDWORD(v5);
          v8 = *(v3 + 28);
          v9 = *(v3 + 32);
          v10 = *(v3 + 40);
          while (v9 != v10)
          {
            if ((*(v9 + 52) & 1) == 0)
            {
              v11 = sub_69CB14(v2, *(v9 + 8));
              v12 = sub_92A164(v11, *(v9 + 32));
              v14 = v13;
              result = sub_68312C(v9);
              if ((result & 1) != 0 || v6 == 0xFFFFFFFFLL && (v6 = 0xFFFFFFFFLL, v7 == 0xFFFFFFFF))
              {
                v6 = v12;
                v7 = HIDWORD(v12);
                v8 = v14;
              }
            }

            v9 += 184;
          }

          *(v3 + 20) = v6 | (v7 << 32);
          *(v3 + 28) = v8;
          v3 += 104;
          v4 = v16;
        }
      }

      v2 += 12656;
    }

    while (v2 != v15);
  }

  return result;
}

void sub_92A620()
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
  xmmword_27B13C0 = 0u;
  *algn_27B13D0 = 0u;
  dword_27B13E0 = 1065353216;
  sub_3A9A34(&xmmword_27B13C0, v0);
  sub_3A9A34(&xmmword_27B13C0, v3);
  sub_3A9A34(&xmmword_27B13C0, __p);
  sub_3A9A34(&xmmword_27B13C0, v9);
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
    qword_27B1398 = 0;
    qword_27B13A0 = 0;
    qword_27B1390 = 0;
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

void sub_92A868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B13A8)
  {
    qword_27B13B0 = qword_27B13A8;
    operator delete(qword_27B13A8);
  }

  _Unwind_Resume(exception_object);
}

void sub_92AA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_92AA54(uint64_t a1, int *a2, int *a3)
{
  v5 = *a3;
  if (*a3 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  v7 = *(a1 + 8);
  v8 = v7 * pow((*a3 / 10 + (((103 * (v6 + *a3 % 10)) >> 15) & 1) + ((103 * (v6 + *a3 % 10)) >> 10)), *(a1 + 16)) * 10.0;
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_10:
  v10 = *a1 + v8;
  v11 = *a2;
  if (v5 > v10 && v11 < v5 - v10)
  {
    return 0;
  }

  if (v11 < v10 + v5)
  {
    return 1;
  }

  v14 = v10;
  v15 = v14 + v14;
  if (v14 + v14 >= 0.0)
  {
    if (v15 >= 4.50359963e15)
    {
      goto LABEL_23;
    }

    v16 = (v15 + v15) + 1;
  }

  else
  {
    if (v15 <= -4.50359963e15)
    {
      goto LABEL_23;
    }

    v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
  }

  v15 = (v16 >> 1);
LABEL_23:
  if (v11 < v5 + v15)
  {
    return 2;
  }

  v17 = v14 * 3.0;
  if (v17 >= 0.0)
  {
    if (v17 >= 4.50359963e15)
    {
      goto LABEL_31;
    }

    v18 = (v17 + v17) + 1;
  }

  else
  {
    if (v17 <= -4.50359963e15)
    {
      goto LABEL_31;
    }

    v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
  }

  v17 = (v18 >> 1);
LABEL_31:
  if (v11 < v5 + v17)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

void sub_92AC84(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v2 = "_Traffic_Heavy";
      goto LABEL_11;
    }

    if (a1 == 4)
    {
      operator new();
    }

LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      *(a2 + 23) = 17;
      strcpy(a2, "_Traffic_Moderate");
      return;
    }

    goto LABEL_9;
  }

  v2 = "_Traffic_Light";
LABEL_11:
  *(a2 + 23) = 14;
  *a2 = *v2;
  *(a2 + 6) = *(v2 + 6);
  *(a2 + 14) = 0;
}

BOOL sub_92AD80(uint64_t a1, _DWORD *a2, int *a3)
{
  v3 = *(a1 + 32) * *a3;
  if (v3 >= 0.0)
  {
    if (v3 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) + 1;
  }

  else
  {
    if (v3 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v4 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
  }

  v3 = (v4 >> 1);
LABEL_7:
  v5 = v3;
  if (*(a1 + 24) > v3)
  {
    v5 = *(a1 + 24);
  }

  return *a2 > v5 + *a3;
}

void sub_92B15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_92B188(void *a1, uint64_t a2, _DWORD *a3)
{
  v8 = 0;
  LOBYTE(__p) = 0;
  sub_5FB24(a1, a2, &__p, v9);
  if (v8 < 0)
  {
    operator delete(__p);
    v6 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v6 = v9[1];
    }

    if (!v6)
    {
LABEL_5:
      if ((v5 & 0x80) == 0)
      {
        return;
      }

LABEL_11:
      operator delete(v9[0]);
      return;
    }
  }

  else
  {
    v4 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v4 = v9[1];
    }

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  *a3 = sub_92B264(v9);
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_11;
  }
}

void sub_92B234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_92B264(__int128 *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) == 7 && **a1 == 1635151465 && *(*a1 + 3) == 1684630625)
    {
      return 0x7FFFFFFFLL;
    }

    if (*(a1 + 1) == 7)
    {
      v3 = *a1;
LABEL_16:
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v5 != 1096175177 || v6 != 1145654337)
      {
        goto LABEL_20;
      }

      return 0x7FFFFFFFLL;
    }
  }

  else if (v1 == 7)
  {
    v2 = *a1 == 1635151465 && *(a1 + 3) == 1684630625;
    v3 = a1;
    if (v2)
    {
      return 0x7FFFFFFFLL;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_71628(a1, &v10);
  result = sub_66B70(&__p, v10);
  if (v12 < 0)
  {
    v9 = result;
    operator delete(__p);
    return v9;
  }

  return result;
}

void sub_92B384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_92B3A0(void *result, uint64_t a2, char a3)
{
  v4 = result;
  v5 = (a2 + 56);
  v7 = *result;
  v6 = result[1];
  v8 = a2 - 56;
  if (*result == a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = (a2 - 56);
  }

  *(a2 + 16) = a3;
  v10 = v6 == v5;
  if (v6 == v5)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 + 56;
  }

  *a2 = *v9;
  v12 = v9[3];
  *(a2 + 8) = *(v11 + 8);
  v13 = *(v11 + 32);
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = *(v11 + 40);
  if (!v10)
  {
    *(a2 + 48) += *(v11 + 48);
    v14 = (a2 + 112);
    v15 = result[1];
    v16 = v15 - (v5 + 56);
    if (v15 != v5 + 56)
    {
      result = memmove(v5, v14, v15 - (v5 + 56));
    }

    v4[1] = &v5[v16];
  }

  if (v7 != a2)
  {
    *(a2 + 48) += v9[6];
    v17 = v4[1];
    v18 = v17 - (v8 + 56);
    if (v17 != v8 + 56)
    {
      result = memmove(v8, (v8 + 56), v17 - (v8 + 56));
    }

    v4[1] = v8 + v18;
  }

  return result;
}

BOOL sub_92B494(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  sub_6F4F88(a1, v6, &v70);
  v7 = a3 + 1;
  v8 = sub_4D1F50(a2, v7);
  sub_6F4F88(a1, v8, v68);
  v65 = v70;
  v66 = v71;
  v67 = v72;
  while (v7 < sub_4D1DC0(a2) - 1)
  {
    v10 = sub_4D1F50(a2, v7);
    v11 = (*v10 - **v10);
    if (*v11 < 0x2Fu || (v12 = v11[23]) == 0 || ((v13 = *(*v10 + v12), v14 = v13 > 0x36, v15 = (1 << v13) & 0x44000000000008, !v14) ? (v16 = v15 == 0) : (v16 = 1), v16))
    {
      v18 = sub_4D1F50(a2, v7);
      sub_6F4F88(a1, v18, &v73);
      v19 = (v65 - *v65);
      if (*v19 >= 0x2Fu && (v20 = v19[23]) != 0 && *(v65 + v20) == 50 && sub_710994(a1 + 1432, &v73, &v65, 0))
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v17 = sub_4D1F50(a2, v7);
      sub_6F4F88(a1, v17, &v73);
      v9 = 0;
      v65 = v73;
      v66 = v74;
      v67 = v75;
      ++v7;
    }

    if (v9)
    {
      if (v9 != 3)
      {
        return 0;
      }

      break;
    }
  }

  v21 = sub_4D1F50(a2, v7);
  v22 = ((*(v21 + 36) & 0x20000000) << 19) | (*(v21 + 36) << 32) | *(v21 + 32);
  __p[0] = 0;
  __p[1] = 0;
  v64 = 0;
  v60 = v68[0];
  v61 = v68[1];
  v62 = v69;
  v23 = (v70 - *v70);
  if (*v23 < 0x2Fu || !v23[23] || ((v24 = *(v70 + v23[23]), v14 = v24 > 0x36, v25 = (1 << v24) & 0x44000000000008, !v14) ? (v26 = v25 == 0) : (v26 = 1), v26))
  {
    v31 = (v60 - *v60);
    if (*v31 >= 9u && (v32 = v31[4]) != 0)
    {
      v33 = *(v60 + v32);
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_36;
  }

  v27 = v23[4];
  if (!v27)
  {
    v28 = 0;
    v29 = v60;
    v30 = (v60 - *v60);
    if (*v30 >= 9u)
    {
      goto LABEL_33;
    }

LABEL_35:
    v33 = v28;
    goto LABEL_36;
  }

  v28 = *(v70 + v27);
  v29 = v60;
  v30 = (v60 - *v60);
  if (*v30 < 9u)
  {
    goto LABEL_35;
  }

LABEL_33:
  v35 = v30[4];
  if (!v35)
  {
    goto LABEL_35;
  }

  v33 = *(v29 + v35) + v28;
LABEL_36:
  v36 = 0;
  v37 = 0;
  v38 = v22 ^ 0x1000000000000;
  v65 = v70;
  v66 = v71;
  v67 = v72;
  v39 = v33;
  while (1)
  {
    sub_31B8F4(*a1, &v60, __p);
    v40 = __p[1];
    v41 = __p[0];
    v42 = __p[0];
    if (__p[0] != __p[1])
    {
      while ((v42[4] & 0xFFFFFFFFFFFFFFLL) != v38)
      {
        v42 += 5;
        if (v42 == __p[1])
        {
          v42 = __p[1];
          break;
        }
      }

      v36 |= v42 != __p[1];
      v42 = __p[0];
      while (1)
      {
        v43 = (*v42 - **v42);
        if (*v43 >= 0x2Fu)
        {
          v44 = v43[23];
          if (v44)
          {
            v45 = *(*v42 + v44);
            v14 = v45 > 0x36;
            v46 = (1 << v45) & 0x44000000000008;
            if (!v14 && v46 != 0)
            {
              break;
            }
          }
        }

        v42 += 5;
        if (v42 == __p[1])
        {
          goto LABEL_74;
        }
      }
    }

    if (v42 == __p[1])
    {
      break;
    }

    v65 = v60;
    v66 = v61;
    v67 = v62;
    v49 = *v42;
    v48 = *(v42 + 1);
    v62 = v42[4];
    v60 = v49;
    v61 = v48;
    if (v62 == v69 && (HIDWORD(v62) & 0xFFFFFF) == (HIDWORD(v69) & 0xFFFFFF))
    {
      break;
    }

    v51 = *v60;
    v52 = -v51;
    if ((v36 & 1) != 0 || *(v60 - v51) < 9u)
    {
      v53 = 0;
      v54 = (v60 + v52);
      if (*v54 < 9u)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v53 = *(v60 - v51 + 8);
      if (*(v60 + v52 + 8))
      {
        v53 = *(v60 + v53);
      }

      v54 = (v60 + v52);
      if (*v54 < 9u)
      {
        goto LABEL_64;
      }
    }

    v55 = v54[4];
    if (v55)
    {
      v56 = *(v60 + v55);
      v39 += v53;
      if (v39 > *(a1 + 664))
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

LABEL_64:
    v56 = 0;
    v39 += v53;
    if (v39 > *(a1 + 664))
    {
      goto LABEL_78;
    }

LABEL_65:
    v33 += v56;
    if (v33 > *(a1 + 672))
    {
      goto LABEL_78;
    }

    if (__p[0] != __p[1])
    {
      while (1)
      {
        v57 = *v41;
        v58 = v41[1];
        v75 = *(v41 + 4);
        v73 = v57;
        v74 = v58;
        if (sub_718648(a1 + 1432, &v70, &v60, &v73, &v65, 0))
        {
          break;
        }

        v41 = (v41 + 40);
        if (v41 == v40)
        {
          v41 = v40;
          break;
        }
      }

      v40 = __p[1];
    }

    v37 += (v41 != v40) & (v36 ^ 1);
    if (*(a1 + 680) <= v37)
    {
      v34 = 0;
      v41 = __p[0];
      if (!__p[0])
      {
        return v34;
      }

      goto LABEL_79;
    }
  }

LABEL_74:
  if (v39 < *(a1 + 664) && v33 < *(a1 + 672))
  {
    v34 = *(a1 + 680) > v37;
    if (!__p[0])
    {
      return v34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v34 = 0;
  if (!__p[0])
  {
    return v34;
  }

LABEL_79:
  __p[1] = v41;
  operator delete(v41);
  return v34;
}

void sub_92B9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_92B9E0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = sub_4D1F50(a2, a3);
  v10 = *(v8 + 32);
  v9 = *(v8 + 36);
  v11 = ((v9 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v9 << 32) | v10;
  v12 = sub_2B51D8(v7, ((v9 & 0x20000000u) << 19) | (v9 << 32) & 0xFFFFFFFFFFFFLL | v10 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v13 = sub_30C50C(v7 + 3896, v10, 0);
    v14 = &v13[-*v13];
    if (*v14 < 5u)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 2);
      if (v15)
      {
        v15 += &v13[*&v13[v15]];
      }
    }

    v16 = (v15 + 4 * v9 + 4 + *(v15 + 4 * v9 + 4));
  }

  else
  {
    v16 = 0;
  }

  v144[0] = v12;
  v144[1] = v16;
  v144[2] = sub_31D7E8(v7, v11 & 0xFFFFFFFFFFFFLL, 1);
  v144[3] = v17;
  v139 = v11 ^ 0x1000000000000;
  v140 = a1;
  v144[4] = (v11 ^ 0x1000000000000);
  v141 = a3;
  v18 = a3 + 1;
  v19 = *a1;
  v20 = sub_4D1F50(a2, a3 + 1);
  v21 = *(v20 + 32);
  v22 = ((*(v20 + 36) & 0x20000000) << 19) | (*(v20 + 36) << 32) | v21;
  v142 = sub_2B51D8(v19, v22 & 0xFFFFFFFFFFFFLL);
  if (*(v19 + 7772) == 1)
  {
    sub_30C50C(v19 + 3896, v21, 0);
  }

  v138 = v22;
  sub_31D7E8(v19, v22 & 0xFFFFFFFFFFFFLL, 1);
  sub_4D0560();
  v24 = v23;
  v26 = v25;
  sub_4D0560();
  v28 = v27;
  v30 = v18 + v29;
  if (!v24)
  {
    if (v27 && v30 < sub_4D1DC0(v27))
    {
      while (1)
      {
        v41 = sub_4D1F50(0, v26);
        v42 = (*v41 - **v41);
        if (*v42 < 0x2Fu)
        {
          goto LABEL_43;
        }

        v43 = v42[23];
        if (!v43)
        {
          goto LABEL_43;
        }

        v44 = *(*v41 + v43);
        v38 = v44 > 0x36;
        v45 = (1 << v44) & 0x44000000000008;
        if (v38 || v45 == 0)
        {
          goto LABEL_43;
        }

        ++v26;
        if (v30 >= sub_4D1DC0(v28))
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_42;
  }

  if (!v27)
  {
    if (v26 < sub_4D1DC0(v24))
    {
      do
      {
        v47 = sub_4D1F50(v24, v26);
        v48 = (*v47 - **v47);
        if (*v48 < 0x2Fu)
        {
          goto LABEL_43;
        }

        v49 = v48[23];
        if (!v49)
        {
          goto LABEL_43;
        }

        v50 = *(*v47 + v49);
        v38 = v50 > 0x36;
        v51 = (1 << v50) & 0x44000000000008;
        if (v38 || v51 == 0)
        {
          goto LABEL_43;
        }
      }

      while (++v26 < sub_4D1DC0(v24));
    }

LABEL_42:
    v53 = 1;
    goto LABEL_44;
  }

  while (1)
  {
    v31 = sub_4D1DC0(v24);
    v32 = sub_4D1DC0(v28);
    if (v26 >= v31 || v30 >= v32)
    {
      if (v26 < v31 == v30 < v32)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v33 = sub_4D1F50(v24, v26);
      if (v33 == sub_4D1F50(v28, v30))
      {
        goto LABEL_42;
      }
    }

    v34 = sub_4D1F50(v24, v26);
    v35 = (*v34 - **v34);
    if (*v35 < 0x2Fu)
    {
      break;
    }

    v36 = v35[23];
    if (!v36)
    {
      break;
    }

    v37 = *(*v34 + v36);
    v38 = v37 > 0x36;
    v39 = (1 << v37) & 0x44000000000008;
    if (v38 || v39 == 0)
    {
      break;
    }

    ++v26;
  }

LABEL_43:
  v53 = 0;
LABEL_44:
  sub_4D0560();
  v55 = v54;
  v57 = v18 + v56;
  sub_4D0568();
  v60 = v58;
  v61 = v59;
  if (v55)
  {
    if (v58)
    {
      while (1)
      {
        v62 = sub_4D1DC0(v55);
        v63 = sub_4D1DC0(v60);
        if (v57 >= v62 || v61 >= v63)
        {
          if (v57 < v62 == v61 < v63)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v64 = sub_4D1F50(v55, v57);
          if (v64 == sub_4D1F50(v60, v61))
          {
            goto LABEL_76;
          }
        }

        v65 = sub_4D1F50(v55, v57);
        v66 = (*v65 - **v65);
        if (*v66 < 0x2Fu)
        {
          goto LABEL_78;
        }

        v67 = v66[23];
        if (!v67)
        {
          goto LABEL_78;
        }

        v68 = *(*v65 + v67);
        v38 = v68 > 0x36;
        v69 = (1 << v68) & 0x44000000000008;
        if (v38 || v69 == 0)
        {
          goto LABEL_78;
        }

        ++v57;
      }
    }

    if (v57 < sub_4D1DC0(v55))
    {
      do
      {
        v77 = sub_4D1F50(v55, v57);
        v78 = (*v77 - **v77);
        if (*v78 < 0x2Fu)
        {
          goto LABEL_78;
        }

        v79 = v78[23];
        if (!v79)
        {
          goto LABEL_78;
        }

        v80 = *(*v77 + v79);
        v38 = v80 > 0x36;
        v81 = (1 << v80) & 0x44000000000008;
        if (v38 || v81 == 0)
        {
          goto LABEL_78;
        }
      }

      while (++v57 < sub_4D1DC0(v55));
    }
  }

  else if (v58 && v59 < sub_4D1DC0(v58))
  {
    while (1)
    {
      v71 = sub_4D1F50(0, v57);
      v72 = (*v71 - **v71);
      if (*v72 < 0x2Fu)
      {
        break;
      }

      v73 = v72[23];
      if (!v73)
      {
        break;
      }

      v74 = *(*v71 + v73);
      v38 = v74 > 0x36;
      v75 = (1 << v74) & 0x44000000000008;
      if (v38 || v75 == 0)
      {
        break;
      }

      ++v57;
      if (v61 >= sub_4D1DC0(v60))
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    v83 = 0;
    v84 = &v12[-*v12];
    v85 = *v84;
    if (v85 >= 0x2F)
    {
      goto LABEL_79;
    }

    goto LABEL_85;
  }

LABEL_76:
  v83 = 1;
  v84 = &v12[-*v12];
  v85 = *v84;
  if (v85 >= 0x2F)
  {
LABEL_79:
    v86 = *(v84 + 23);
    if (*(v84 + 23))
    {
      v87 = v12[*(v84 + 23)];
      v38 = v87 > 0x36;
      v88 = (1 << v87) & 0x44000000000008;
      if (!v38 && v88 != 0)
      {
        goto LABEL_94;
      }
    }
  }

LABEL_85:
  v90 = (v142 - *v142);
  if (*v90 >= 0x2Fu)
  {
    v91 = v90[23];
    if (v91)
    {
      v92 = v141;
      v93 = *(v142 + v91);
      v38 = v93 > 0x36;
      v94 = (1 << v93) & 0x44000000000008;
      if (!v38 && v94 != 0)
      {
        goto LABEL_107;
      }
    }
  }

  if (v85 < 0x2F)
  {
    return 0;
  }

  v86 = *(v84 + 23);
  if (!*(v84 + 23))
  {
    return 0;
  }

LABEL_94:
  v96 = v12[v86];
  v38 = v96 > 0x36;
  v97 = (1 << v96) & 0x44000000000008;
  if (v38 || v97 == 0)
  {
    return 0;
  }

  v99 = (v142 - *v142);
  if (*v99 >= 0x2Fu)
  {
    v100 = v99[23];
    if (v100)
    {
      v101 = *(v142 + v100);
      v38 = v101 > 0x36;
      v102 = (1 << v101) & 0x44000000000008;
      if (!v38 && v102 != 0)
      {
        return 0;
      }
    }
  }

  if (v53)
  {
    v92 = 0;
LABEL_107:
    v105 = v140;
    v106 = sub_92B494(v140, a2, v92);
    goto LABEL_109;
  }

  v106 = 0;
  v105 = v140;
LABEL_109:
  v107 = *(v105 + 706) & v106;
  sub_7018FC(v105, a2, v141, v107 & 1, v105 + 64);
  v137 = *(v105 + 168);
  v108 = a4;
  v110 = *(a4 + 8);
  v109 = *(a4 + 16);
  if (v110 >= v109)
  {
    v112 = *a4;
    v113 = v110 - *a4;
    v114 = v113 >> 3;
    v115 = (v113 >> 3) + 1;
    if (v115 >> 61)
    {
      goto LABEL_161;
    }

    v116 = v109 - v112;
    if (v116 >> 2 > v115)
    {
      v115 = v116 >> 2;
    }

    if (v116 >= 0x7FFFFFFFFFFFFFF8)
    {
      v117 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v117 = v115;
    }

    if (v117)
    {
      if (!(v117 >> 61))
      {
        operator new();
      }

LABEL_162:
      sub_1808();
    }

    *(8 * v114) = v139;
    v111 = (8 * v114 + 8);
    memcpy(0, v112, v113);
    *a4 = 0;
    *(a4 + 8) = v111;
    *(a4 + 16) = 0;
    if (v112)
    {
      operator delete(v112);
      v108 = a4;
    }
  }

  else
  {
    *v110 = v139;
    v111 = v110 + 1;
  }

  v118 = v138 ^ 0x1000000000000;
  *(v108 + 8) = v111;
  v119 = *(v108 + 16);
  if (v111 < v119)
  {
    *v111 = v118;
    v120 = (v111 + 1);
    goto LABEL_135;
  }

  v121 = *v108;
  v122 = v111 - *v108;
  v123 = v122 >> 3;
  v124 = (v122 >> 3) + 1;
  if (v124 >> 61)
  {
LABEL_161:
    sub_1794();
  }

  v125 = v119 - v121;
  if (v125 >> 2 > v124)
  {
    v124 = v125 >> 2;
  }

  if (v125 >= 0x7FFFFFFFFFFFFFF8)
  {
    v126 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v126 = v124;
  }

  if (v126)
  {
    if (!(v126 >> 61))
    {
      operator new();
    }

    goto LABEL_162;
  }

  *(8 * v123) = v118;
  v120 = 8 * v123 + 8;
  memcpy(0, v121, v122);
  *v108 = 0;
  *(v108 + 8) = v120;
  *(v108 + 16) = 0;
  if (v121)
  {
    operator delete(v121);
    v108 = a4;
  }

LABEL_135:
  *(v108 + 8) = v120;
  if (!(v83 & 1 | v53 & 1 | ((v107 & 1) == 0)))
  {
    sub_6FB318(v140, a2, v141, (v140 + 64), a4, 0);
    v127 = *(a4 + 24);
    if (v127 == 2)
    {
      *(a4 + 24) = 87;
    }

    else if (v127 == 1)
    {
      *(a4 + 24) = 86;
    }

    return 1;
  }

  if ((v83 & v107) == 1)
  {
    *(v108 + 24) = 0;
    return 1;
  }

  if ((v53 & v107) == 1)
  {
    v128 = sub_6F532C(v140, a2, v144, (v140 + 144), v137, 1, 0, 0);
    result = 1;
    *(a4 + 24) = v128;
    return result;
  }

  if ((v107 & 1) != 0 || *(v140 + 707) != 1)
  {
    sub_6FB318(v140, a2, v141, (v140 + 64), a4, 0);
    return 1;
  }

  v129 = sub_6F532C(v140, a2, v144, (v140 + 144), v137, 1, 0, 0);
  v130 = sub_6F532C(v140, a2, v144, (v140 + 144), v137, 1, 1, 0);
  result = 1;
  if (v129)
  {
    v130 = v129;
  }

  *(a4 + 24) = v130;
  if (v130 == v129)
  {
    v131 = &v144[0][-*v144[0]];
    if (*v131 < 0x2Fu || (v132 = *(v131 + 23)) == 0 || (v133 = v144[0][v132], v133 > 0x36) || ((1 << v133) & 0x44000000000008) == 0)
    {
      v134 = (v142 - *v142);
      if (*v134 >= 0x2Fu)
      {
        v135 = v134[23];
        if (v135)
        {
          v136 = *(v142 + v135);
          if (v136 <= 0x36 && ((1 << v136) & 0x44000000000008) != 0)
          {
            *(a4 + 112) = v137;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_92C464(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v12 = *(v10 + 32);
  v13 = v12 | (*(v10 + 36) << 32);
  v44 = sub_2B51D8(*a1, v13);
  if (*(v11 + 7772) == 1)
  {
    sub_30C50C(v11 + 3896, v12, 0);
  }

  sub_31D7E8(v11, v13, 1);
  v14 = *a1;
  v15 = sub_4D1F50(a2, a4);
  v17 = *(v15 + 32);
  v16 = *(v15 + 36);
  v18 = v17 | (v16 << 32);
  v19 = sub_2B51D8(v14, v18);
  if (*(v14 + 7772) == 1)
  {
    sub_30C50C(v14 + 3896, v17, 0);
  }

  sub_31D7E8(v14, v18, 1);
  v20 = *a1;
  v21 = a5;
  v22 = sub_4D1F50(a2, a5);
  v23 = *(v22 + 32);
  v24 = *(v22 + 36);
  v25 = v23 | (v24 << 32);
  v26 = sub_2B51D8(v20, v25);
  if (*(v20 + 7772) == 1)
  {
    sub_30C50C(v20 + 3896, v23, 0);
  }

  sub_31D7E8(v20, v25, 1);
  v27 = (v19 - *v19);
  v28 = *v27;
  if ((v16 & 0x20000000) != 0)
  {
    if (v28 < 0x4B || (v29 = v27[37]) == 0)
    {
LABEL_17:
      v30 = -1;
      v31 = (v26 - *v26);
      v32 = *v31;
      if ((v24 & 0x20000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_14:
      if (v32 >= 0x49)
      {
        v33 = v31[36];
        if (v31[36])
        {
          goto LABEL_20;
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (v28 < 0x49)
    {
      goto LABEL_17;
    }

    v29 = v27[36];
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  v30 = *(v19 + v29);
  v31 = (v26 - *v26);
  v32 = *v31;
  if ((v24 & 0x20000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (v32 >= 0x4B)
  {
    v33 = v31[37];
    if (v31[37])
    {
LABEL_20:
      v34 = *(v26 + v33);
      goto LABEL_22;
    }
  }

LABEL_21:
  v34 = 0xFFFF;
LABEL_22:
  v35 = v30 + 18000;
  v36 = v30 - 18000;
  if ((v35 >> 5) < 0x465u)
  {
    v36 = v35;
  }

  v37 = v34 - v36;
  if (v37 > 18000)
  {
    v37 -= 36000;
  }

  if (v37 < -17999)
  {
    v37 += 36000;
  }

  if (fabs(v37 / 100.0) <= *(a1 + 200))
  {
    return 0;
  }

  v38 = (v44 - *v44);
  if (*v38 < 0x9Bu)
  {
    return 0;
  }

  v39 = v38[77];
  if (!v39)
  {
    return 0;
  }

  if ((*(v44 + v39) & 3) == 0)
  {
    return 0;
  }

  if (v32 < 0x9B)
  {
    return 0;
  }

  v40 = v31[77];
  if (!v40 || (*(v26 + v40) & 3) == 0)
  {
    return 0;
  }

  return sub_70144C(a1, a2, a3, v21, a6);
}

BOOL sub_92C754(uint64_t a1, int **a2, int **a3)
{
  v5 = sub_70E2E0(a1 + 1432, a2, a3);
  v6 = *a2;
  v7 = (*a2 - **a2);
  v8 = *v7;
  if (v8 < 0x9B)
  {
    if (v8 < 0x39)
    {
      return fabs(v5) >= *(a1 + 200);
    }
  }

  else if (v7[77] && (*(v6 + v7[77]) & 3) != 0)
  {
    return fabs(v5) >= *(a1 + 200);
  }

  v9 = v7[28];
  if (v9)
  {
    v10 = *(v6 + v9);
    if ((v10 & 0x23) != 0 || (v10 & 7) == 4)
    {
      return 0;
    }
  }

  return fabs(v5) >= *(a1 + 200);
}

void sub_92C7FC()
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
  xmmword_27B1418 = 0u;
  unk_27B1428 = 0u;
  dword_27B1438 = 1065353216;
  sub_3A9A34(&xmmword_27B1418, v0);
  sub_3A9A34(&xmmword_27B1418, v3);
  sub_3A9A34(&xmmword_27B1418, __p);
  sub_3A9A34(&xmmword_27B1418, v9);
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
    qword_27B13F0 = 0;
    qword_27B13F8 = 0;
    qword_27B13E8 = 0;
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

void sub_92CA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1400)
  {
    qword_27B1408 = qword_27B1400;
    operator delete(qword_27B1400);
  }

  _Unwind_Resume(exception_object);
}

void sub_92CAF0(uint64_t a1, void *a2)
{
  *a1 = sub_3AF6B4(a2);
  strcpy(v7, "WindshieldModeDetector");
  v7[23] = 22;
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v7, __p);
  *(a1 + 18) = 131074;
  *(a1 + 40) = 0;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *(a1 + 48) = v5;
  *(a1 + 64) = 0x8000000080000000;
  *(a1 + 72) = v5;
  *(a1 + 88) = 0x8000000080000000;
  *(a1 + 96) = v5;
  *(a1 + 112) = 0x8000000080000000;
  *(a1 + 120) = v5;
  *(a1 + 136) = v5;
  *(a1 + 152) = 1;
  sub_92E6DC();
}

void sub_92CC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_92CC58(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    return *(*(a1 + 248) + 1526) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_92CC80(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1 && *(*(a1 + 248) + 1460) == 1)
  {
    sub_92CEC4(a2, v14);
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    v4 = a2[139] - a2[138];
    if (v4)
    {
      v5 = 0;
      v6 = 0x3795876FF3795877 * (v4 >> 3);
      do
      {
        sub_92D068(a1, v14, a2, v5, __p);
        if (__p[0] != __p[1])
        {
          sub_685A18(&v15);
        }

        ++v5;
      }

      while (v5 != v6);
    }

    sub_92D28C(a1, a2, __p, v14);
    v15 = 0uLL;
    v16 = 0;
    v7 = __p[0];
    v8 = __p[1];
    if (__p[0] != __p[1])
    {
      do
      {
        sub_92DE58(a1, v7, &v15);
        v7 += 616;
      }

      while (v7 != v8);
      v7 = __p[0];
    }

    if (v7)
    {
      for (i = __p[1]; i != v7; sub_5ECDEC(__p, i))
      {
        i -= 616;
      }

      __p[1] = v7;
      operator delete(__p[0]);
    }

    *__p = v15;
    v13 = v16;
    sub_7518D8(a2 + 1269, a2[1270], v15, *(&v15 + 1), 0x4FCACE213F2B3885 * ((*(&v15 + 1) - v15) >> 3));
    v10 = __p[0];
    if (__p[0])
    {
      for (j = __p[1]; j != v10; sub_5ECDEC(__p, j))
      {
        j -= 616;
      }

      __p[1] = v10;
      operator delete(__p[0]);
    }

    if (v14[0])
    {
      operator delete(v14[0]);
    }
  }
}

void sub_92CE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  sub_5EC548(&a9);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_92CEC4@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_4D1DC0(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_0 = 0;
  result = sub_4D1DC0(a1);
  v6 = result;
  if (result)
  {
    result = sub_4D1DC0(a1);
    if (result >= 2)
    {
      result = sub_4D23F8(a1, 0, v7);
      *dword_8 = result;
    }

    if (v6 != 1)
    {
      v8 = dword_10;
      v9 = 1;
      do
      {
        result = sub_4D1DC0(a1);
        v11 = v9 + 1;
        if (v9 + 1 < result)
        {
          result = sub_4D23F8(a1, v9, v10);
          *v8 = *(v8 - 1) + result;
        }

        ++v8;
        ++v9;
      }

      while (v6 != v11);
    }
  }

  return result;
}

void sub_92CFF0(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_92D008(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_92D020(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_92D038(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_92D050(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

BOOL sub_92D068(_BOOL8 result, uint64_t *a2, void *a3, uint64_t a4, void *a5)
{
  v5 = a3[138] + 2616 * a4;
  v6 = *(v5 + 2008);
  v7 = *(v5 + 2016);
  if (v6 != v7)
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = 0x4FA4FA4FA4FA4FA5 * ((v7 - v6) >> 3);
    v14 = result + 8;
    do
    {
      v15 = *(v5 + 2008);
      result = sub_6C7D24(v15 + v11);
      v16 = 40;
      if (result)
      {
        v16 = 48;
      }

      if (*(v5 + 1008) < *(v14 + v16))
      {
        break;
      }

      v17 = *(v5 + 2057);
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v21 = 3;
          if (result)
          {
            v21 = 7;
          }

          if ((*(v14 + v21) & 1) == 0)
          {
            return result;
          }
        }

        else
        {
          if (v17 != 3)
          {
            return result;
          }

          v19 = 12;
          if (result)
          {
            v19 = 16;
          }

          if ((*(v10 + v19) & 1) == 0)
          {
            return result;
          }
        }
      }

      else if (*(v5 + 2057))
      {
        if (v17 != 1)
        {
          return result;
        }

        v18 = 2;
        if (result)
        {
          v18 = 6;
        }

        if ((*(v14 + v18) & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        v20 = (v14 + 5);
        if (!result)
        {
          v20 = (v14 + 1);
        }

        if (*v20 != 1)
        {
          return result;
        }
      }

      if (!result || (*(v5 + 2056) & 1) == 0)
      {
        result = sub_92D6B8(v10, v15 + v11);
        if (result)
        {
          v26 = sub_92D50C(v10, a3, v5, v12, a2, 0);
          v25 = sub_92DA20(v10, a3, v5, v12, a2);
          v22 = sub_92DB5C(v25, v15 + v11, v5);
          if (sub_6C71FC(v15 + v11))
          {
            v23 = sub_6C6E64(v15 + v11);
          }

          else
          {
            v23 = sub_6C7034(v15 + v11);
          }

          sub_92DCD8(v10, v22, &v26, &v25, v23, a2, a5);
        }
      }

      ++v12;
      v11 += 360;
    }

    while (v13 != v12);
  }

  return result;
}

void sub_92D28C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    while (!sub_92E4D0(a1, a2, v5, a4))
    {
      v5 += 616;
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_15;
      }
    }

    if (v5 != v6)
    {
      for (i = v5 + 616; i != v6; i += 616)
      {
        if (!sub_92E4D0(a1, a2, i, a4))
        {
          v13 = *i;
          v14 = *(i + 16);
          v15 = *(i + 32);
          *(v5 + 48) = *(i + 48);
          *(v5 + 16) = v14;
          *(v5 + 32) = v15;
          *v5 = v13;
          v16 = *(v5 + 56);
          if (v16)
          {
            *(v5 + 64) = v16;
            operator delete(v16);
            *(v5 + 56) = 0;
            *(v5 + 64) = 0;
            *(v5 + 72) = 0;
          }

          *(v5 + 56) = *(i + 56);
          *(v5 + 72) = *(i + 72);
          *(i + 56) = 0;
          *(i + 64) = 0;
          *(i + 72) = 0;
          sub_5D85BC(v5 + 80, (i + 80));
          v17 = (v5 + 552);
          v18 = *(v5 + 552);
          if (v18)
          {
            *(v5 + 560) = v18;
            operator delete(v18);
            *v17 = 0;
            *(v5 + 560) = 0;
            *(v5 + 568) = 0;
          }

          *v17 = *(i + 552);
          *(v5 + 568) = *(i + 568);
          *(i + 568) = 0;
          *(i + 552) = 0u;
          v11 = *(i + 576);
          v12 = *(i + 592);
          *(v5 + 608) = *(i + 608);
          *(v5 + 576) = v11;
          *(v5 + 592) = v12;
          v5 += 616;
        }
      }
    }
  }

LABEL_15:
  v19 = a3[1];
  if (v5 != v19)
  {
    while (v19 != v5)
    {
      v19 -= 616;
      sub_5ECDEC(a3, v19);
    }

    a3[1] = v5;
  }
}

uint64_t sub_92D50C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  if (*(a1 + 40) == 1 && *(*(a1 + 248) + 1526) == 1)
  {
    v12 = *(a3 + 2008) + 360 * a4;
    v13 = sub_6C7D24(v12);
    v14 = sub_6C6B4C(v12);
    v16 = sub_4D23F8(a2, v14, v15);
    v18 = 56;
    if (v13)
    {
      v18 = 60;
    }

    v19 = sub_69F088(a2, v14, v16, *(*a5 + 8 * v14) + v16, *(a1 + v18 + 8), 1, v17);
    if (*(*a5 + 8 * *(a3 + 40)) <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = *(*a5 + 8 * *(a3 + 40));
    }

    v21 = v20;
    if (!a6)
    {
      goto LABEL_21;
    }

LABEL_19:
    v32 = *(a3 + 2008) + 360 * a4 - 360;
    v33 = sub_92D6B8(a1, v32);
    v21 = v20;
    if (v33)
    {
      v21 = *(*a5 + 8 * sub_6C6B4C(v32));
    }

    goto LABEL_21;
  }

  v22 = *(a3 + 2008) + 360 * a4;
  v23 = sub_6C7D24(v22);
  v24 = sub_6C6B4C(v22);
  v25 = *a5;
  v27 = *(v25 + 8 * v24) + sub_4D23F8(a2, v24, v26);
  v28 = 40;
  if (v23)
  {
    v28 = 48;
  }

  v29 = *(a1 + v28 + 8);
  v30 = v27 <= v29;
  v31 = v27 - v29;
  if (v30)
  {
    v31 = 0;
  }

  if (*(*a5 + 8 * *(a3 + 40)) <= v31)
  {
    v20 = v31;
  }

  else
  {
    v20 = *(*a5 + 8 * *(a3 + 40));
  }

  v21 = v20;
  if (a6)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v21 <= v20)
  {
    return v20;
  }

  else
  {
    return v21;
  }
}

BOOL sub_92D6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6C7D24(a2);
  v5 = sub_6C6B88(a2);
  v6 = a1 + 8;
  v7 = 10;
  if (v4)
  {
    v7 = 12;
  }

  if (*(v6 + v7) > v5)
  {
    return 0;
  }

  v8 = v5;
  v9 = sub_6C7034(a2);
  v10 = sub_6C70C8(a2);
  v11 = sub_6C7414(a2);
  v12 = 16;
  if (v4)
  {
    v12 = 24;
  }

  if (*(v6 + v12) * (v11 + v8) < v9)
  {
    return 0;
  }

  v17 = v9;
  if (v8)
  {
    v14 = 0;
    do
    {
      v15 = sub_6C8244(a2, v14);
      v16 = v15[1];
      if (v16 != *v15)
      {
        if (((v16 - *v15) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_6C784C(a2, v14++);
    }

    while (v14 != v8);
  }

  return !v17 && v10 == 0;
}

void sub_92DA08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_92DA20(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (*(a1 + 40) == 1 && *(*(a1 + 248) + 1526) == 1)
  {
    v9 = a3[251] + 360 * a4;
    v10 = sub_6C7D24(v9);
    v11 = a3[126] + *(*a5 + 8 * a3[5]);
    if (!v10)
    {
      v12 = sub_6C6B4C(v9);
      v14 = sub_4D23F8(a2, v12, v13);
      result = sub_69F1B0(a2, v12, v14, *(*a5 + 8 * v12) + v14, *(a1 + 112), 1);
      if (v11 < result)
      {
        return v11;
      }

      return result;
    }

    return v11;
  }

  v16 = a3[251] + 360 * a4;
  v17 = sub_6C7D24(v16);
  v11 = a3[126] + *(*a5 + 8 * a3[5]);
  if (v17)
  {
    return v11;
  }

  v18 = sub_6C7D4C(v16);
  v19 = *(a1 + 96);
  if (v11 >= v11 - v18 + v19)
  {
    return v11 - v18 + v19;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_92DB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_6C7D24(a2))
  {
    return 2;
  }

  result = 7;
  switch(*(a3 + 160))
  {
    case 1:
    case 0x14:
    case 0x1B:
    case 0x1D:
    case 0x21:
    case 0x3C:
    case 0x3E:
    case 0x41:
      result = 6;
      break;
    case 2:
    case 0x15:
    case 0x1C:
    case 0x1E:
    case 0x22:
    case 0x3D:
    case 0x3F:
    case 0x42:
      return result;
    default:
      return 2;
  }

  return result;
}

void sub_92DCD8(uint64_t a1, char a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a2;
  v10 = a5;
  if (*(a1 + 40) == 1)
  {
    v7 = (*(*(a1 + 248) + 1526) ^ 1) & 1;
    v9 = v7;
    v8 = a7[1];
    if (v8 >= a7[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 1;
    v9 = 1;
    v8 = a7[1];
    if (v8 >= a7[2])
    {
LABEL_3:
      sub_92F530(a7, &v11, a3, a4, &v10, &v9);
    }
  }

  sub_685814(v8, a2, a3, a4, a5, v7);
}

void sub_92DE58(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a3[1];
  if (*a3 == v5 || !sub_685B64(a2) || !sub_685B64(v5 - 616))
  {
    goto LABEL_7;
  }

  v7 = sub_68518C(a2 + 73);
  v8 = 8 * v7 + 112;
  if (v7 >= 4)
  {
    v8 = 136;
  }

  if (a2[1] <= *(v5 - 600) + *(a1 + v8 + 8))
  {
    v10 = (a3[1] - 616);

    sub_6859A8(v10, a2);
  }

  else
  {
LABEL_7:
    v9 = a3[1];
    if (v9 >= a3[2])
    {
      a3[1] = sub_7DBA4C(a3, a2);
    }

    else
    {
      sub_571154(a3[1], a2);
      a3[1] = v9 + 616;
      a3[1] = v9 + 616;
    }
  }
}

BOOL sub_92DF60(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a3 + 24);
  v7 = *(a3 + 32);
  v9 = *a1;
  v10 = sub_4D1F50(a2, v8);
  sub_2B7A20(v9, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL, v30);
  v11 = __p;
  if (__p != v32)
  {
    v12 = sub_31A76C(v30);
    v11 = __p;
    v13 = HIDWORD(v12);
    v14 = v12;
    if (!__p)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0xFFFFFFFFLL;
  v13 = 0xFFFFFFFFLL;
  if (__p)
  {
LABEL_3:
    v32 = v11;
    operator delete(v11);
  }

LABEL_4:
  v15 = *a1;
  v16 = sub_4D1F50(a2, v7);
  sub_2B7A20(v15, *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, v30);
  v17 = __p;
  if (__p != v32)
  {
    v18 = sub_31A76C(v30);
    v17 = __p;
    v19 = HIDWORD(v18);
    v20 = v18;
    if (!__p)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v20 = 0xFFFFFFFFLL;
  v19 = 0xFFFFFFFFLL;
  if (__p)
  {
LABEL_6:
    v32 = v17;
    operator delete(v17);
  }

LABEL_7:
  v21 = sqrt(((v14 - v20) * (v14 - v20) + (v13 - v19) * (v13 - v19))) / 100.0 * 100.0;
  if (v21 < 4.50359963e15)
  {
    v21 = (((v21 + v21) + 1) >> 1);
  }

  v22 = 9.22337204e18;
  if (v21 < 9.22337204e18)
  {
    *&v21 = v21;
    v22 = *&v21;
  }

  v23 = *a4;
  v24 = *(*a4 + 8 * v7);
  v25 = *(v23 + 8 * v8);
  v26 = sub_4D23F8(a2, v7, v21);
  v27 = v22 * *(a1 + 160);
  if (v27 >= 0.0)
  {
    if (v27 < 4.50359963e15)
    {
      v28 = (v27 + v27) + 1;
      goto LABEL_16;
    }
  }

  else if (v27 > -4.50359963e15)
  {
    v28 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
LABEL_16:
    v27 = (v28 >> 1);
  }

  return v24 - v25 + v26 > v27;
}

void sub_92E16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_92E18C(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a2[138];
  v9 = 0;
  v10 = a2[139] - v8;
  if (!v10)
  {
    v15 = 0;
    v16 = a4;
    if (*(a3 + 24) != a4)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v11 = 0x3795876FF3795877 * (v10 >> 3);
  v12 = *(a3 + 24);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v13 = (v8 + 40);
  while (*v13 < v12)
  {
    v13 += 327;
    if (v11 == ++v9)
    {
      v9 = v11;
      break;
    }
  }

  v14 = v9 != 0;
  v15 = v9 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = a4;
  if (v12 == a4)
  {
LABEL_13:
    v17 = *(v8 + 2616 * v15 + 40);
    v16 = a4;
    if (v17 < a4)
    {
      v16 = a4;
      while (1)
      {
        v18 = sub_4D1F50(a2, v16);
        v19 = (*v18 - **v18);
        if (*v19 < 0x2Fu)
        {
          break;
        }

        v20 = v19[23];
        if (!v20)
        {
          break;
        }

        v21 = *(*v18 + v20);
        v22 = v21 > 0x2A;
        v23 = (1 << v21) & 0x50426810004;
        if (v22 || v23 == 0)
        {
          break;
        }

        if (--v16 <= v17)
        {
          v16 = v17;
          break;
        }
      }
    }
  }

LABEL_23:
  v25 = *(a3 + 32);
  v26 = sub_4D1F50(a2, a4);
  sub_2B7A20(*a1, *(v26 + 32) & 0xFFFFFFFFFFFFFFLL, v48);
  v27 = __p;
  if (__p != v50)
  {
    v28 = sub_31A76C(v48);
    v27 = __p;
    v29 = HIDWORD(v28);
    v30 = v28;
    if (!__p)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v30 = 0xFFFFFFFFLL;
  v29 = 0xFFFFFFFFLL;
  if (__p)
  {
LABEL_25:
    v50 = v27;
    operator delete(v27);
  }

LABEL_26:
  v31 = sub_4D1F50(a2, v16);
  sub_2B7A20(*a1, *(v31 + 32) & 0xFFFFFFFFFFFFFFLL, v48);
  v32 = __p;
  if (__p == v50)
  {
    v35 = 0xFFFFFFFFLL;
    v34 = 0xFFFFFFFFLL;
    if (!__p)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v33 = sub_31A76C(v48);
  v32 = __p;
  v34 = HIDWORD(v33);
  v35 = v33;
  if (__p)
  {
LABEL_28:
    v50 = v32;
    operator delete(v32);
  }

LABEL_29:
  v36 = 0;
  v37 = sqrt(((v35 - v30) * (v35 - v30) + (v34 - v29) * (v34 - v29))) / 100.0;
  v38 = v16 + 1;
  while (1)
  {
    v39 = v38;
    if (v38 > v25)
    {
      return v39 <= v25;
    }

    v40 = v36;
    v41 = sub_4D1F50(a2, v38);
    sub_2B7A20(*a1, *(v41 + 32) & 0xFFFFFFFFFFFFFFLL, v48);
    v42 = __p;
    if (__p != v50)
    {
      v43 = sub_31A76C(v48);
      v42 = __p;
      v44 = HIDWORD(v43);
      v45 = v43;
      if (!__p)
      {
        goto LABEL_34;
      }

LABEL_33:
      v50 = v42;
      operator delete(v42);
      goto LABEL_34;
    }

    v45 = 0xFFFFFFFFLL;
    v44 = 0xFFFFFFFFLL;
    if (__p)
    {
      goto LABEL_33;
    }

LABEL_34:
    v46 = sqrt(((v35 - v45) * (v35 - v45) + (v34 - v44) * (v34 - v44))) / 100.0;
    v22 = v46 <= v37;
    v36 = (v46 > v37) | v40;
    v38 = v39 + 1;
    v37 = v46;
    if (v22)
    {
      v37 = v46;
      if (((v40 ^ 1) & 1) == 0)
      {
        return v39 <= v25;
      }
    }
  }
}

void sub_92E4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_92E4D0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  for (i = *(a3 + 24); i < *(a3 + 32); ++i)
  {
    v9 = sub_4D1F50(a2, i);
    v10 = v9[1];
    v11 = (v10 - *v10);
    if (*v11 >= 0x11u && (v12 = v11[8]) != 0)
    {
      v13 = *(v10 + v12);
      if ((*(*(a1 + 256) + 2497) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
      if ((*(*(a1 + 256) + 2497) & 1) == 0)
      {
LABEL_7:
        if ((v13 & 0x40) == 0)
        {
          return 1;
        }

        goto LABEL_11;
      }
    }

    if ((v13 & 0xC0) == 0)
    {
      return 1;
    }

LABEL_11:
    v14 = *v9;
    v15 = &(*v9)[-**v9];
    v16 = *v15;
    if (v16 < 0x9B)
    {
      if (v16 < 0x71)
      {
        if (v16 < 0x2F)
        {
          continue;
        }

        goto LABEL_23;
      }
    }

    else if (v15[77])
    {
      v17 = *&v14[v15[77]];
      if ((v17 & 0x10000800) != 0)
      {
        return 1;
      }

      if ((v17 & 0x8000) != 0)
      {
        if (v15[56] && v14[v15[56]] - 1 < 2)
        {
          return 1;
        }

        goto LABEL_23;
      }
    }

    if (v15[56] && (v14[v15[56]] & 0xFD) == 1)
    {
      return 1;
    }

LABEL_23:
    v18 = v15[23];
    if (v18)
    {
      v19 = v14[v18];
      v20 = v19 > 0x2A;
      v21 = (1 << v19) & 0x50426810004;
      if (!v20 && v21 != 0)
      {

        return sub_92E18C(a1, a2, a3, i);
      }
    }
  }

  if (*(a1 + 152) != 1)
  {
    return 0;
  }

  return sub_92DF60(a1, a2, a3, a4);
}

void sub_92F498(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_92F530(void *a1, char *a2, void *a3, uint64_t *a4, uint64_t *a5, char *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3) + 1;
  if (v6 <= 0x6A63BD81A98EF6)
  {
    if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v6)
    {
      v6 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
    {
      v7 = 0x6A63BD81A98EF6;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      if (v7 <= 0x6A63BD81A98EF6)
      {
        operator new();
      }

      sub_1808();
    }

    sub_685814(8 * ((a1[1] - *a1) >> 3), *a2, a3, a4, *a5, *a6);
  }

  sub_1794();
}

void sub_92F6AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_751560(va);
  _Unwind_Resume(a1);
}

void sub_92F6C0()
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
  xmmword_27B1470 = 0u;
  unk_27B1480 = 0u;
  dword_27B1490 = 1065353216;
  sub_3A9A34(&xmmword_27B1470, v0);
  sub_3A9A34(&xmmword_27B1470, v3);
  sub_3A9A34(&xmmword_27B1470, __p);
  sub_3A9A34(&xmmword_27B1470, v9);
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
    qword_27B1448 = 0;
    qword_27B1450 = 0;
    qword_27B1440 = 0;
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

void sub_92F908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1458)
  {
    qword_27B1460 = qword_27B1458;
    operator delete(qword_27B1458);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_92F9B4(uint64_t a1, uint64_t a2)
{
  strcpy(v13, "BoundsComponentBuilder");
  HIBYTE(v13[2]) = 22;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = sub_3AEC94(a2, v13, &v10);
  v15 = 11;
  strcpy(__p, "ttl_seconds");
  *a1 = 10 * sub_352470(v4, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v10;
  if (v10)
  {
    v6 = v11;
    v7 = v10;
    if (v11 != v10)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v10;
    }

    v11 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  *(a1 + 8) = a2;
  return a1;
}

void sub_92FACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

int *sub_92FB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0x27FFFFFFFLL;
  *a3 = &off_266D810;
  a3[2] = -1;
  a3[3] = -1;
  v5 = sub_93C810(a2);
  v7 = v6;
  result = sub_3AFC64(*(a1 + 8));
  if (v7 == 5)
  {
    result = sub_92FC60(result, v5, 0, "line");
    v9 = (result - *result);
    if (*v9 >= 0x53u)
    {
      v10 = v9[41];
      if (v10)
      {
        v11 = result + v10;
        LODWORD(v12) = *(v11 + 4);
        if (v12 >= 0xFFFFFFFE)
        {
          v12 = 4294967294;
        }

        else
        {
          v12 = v12;
        }

        v16 = *v11 | (v12 << 32);
        v17 = 0x7FFFFFFF;
        v13 = *(v11 + 8);
        LODWORD(v11) = *(v11 + 12);
        if (v11 >= 0xFFFFFFFE)
        {
          v11 = 4294967294;
        }

        else
        {
          v11 = v11;
        }

        v14 = v13 | (v11 << 32);
        v15 = 0x7FFFFFFF;
        result = sub_320C0(&v18, &v16, &v14);
        *(a3 + 1) = v18;
      }
    }
  }

  *(a3 + 2) = *a1;
  return result;
}

uint64_t sub_92FC60(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0xFu)
  {
    v9 = *(v8 + 7);
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

void sub_92FDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_92FDEC()
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
  xmmword_27B14C8 = 0u;
  unk_27B14D8 = 0u;
  dword_27B14E8 = 1065353216;
  sub_3A9A34(&xmmword_27B14C8, v0);
  sub_3A9A34(&xmmword_27B14C8, v3);
  sub_3A9A34(&xmmword_27B14C8, __p);
  sub_3A9A34(&xmmword_27B14C8, v9);
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
    qword_27B14A0 = 0;
    qword_27B14A8 = 0;
    qword_27B1498 = 0;
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

void sub_930034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B14B0)
  {
    qword_27B14B8 = qword_27B14B0;
    operator delete(qword_27B14B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_9301F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_930218(uint64_t a1, uint64_t a2)
{
  strcpy(v3, "EntityComponentBuilder");
  v3[23] = 22;
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v3, __p);
  sub_9300E0();
}

void sub_9302FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_930324(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x27FFFFFFFLL;
  *a3 = &off_266D850;
  *(a3 + 16) = 0u;
  v5 = a3 + 16;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  sub_930428(a1, a2, __p);
  if (*(a3 + 39) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *__p;
  *(v5 + 16) = v8;
  HIBYTE(v8) = 0;
  LOBYTE(__p[0]) = 0;
  if (*(a3 + 63) < 0)
  {
    operator delete(*(a3 + 40));
    v6 = SHIBYTE(v8);
    *(a3 + 40) = v9;
    *(a3 + 56) = v10;
    HIBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a3 + 40) = v9;
    *(a3 + 56) = v10;
  }

  *(a3 + 8) = *(a1 + 4);
}

void sub_930428(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_93C810(a2);
  if (v6 == 5)
  {
    v7 = sub_3AF4C0(*(a1 + 8));
    sub_21E2C18(v7, 5, *(*(a1 + 16) + 968));
  }

  v8 = sub_3AFB1C(*(a1 + 8));
  sub_9592FC(a2, v8, *(a1 + 16), &v9);
  sub_84578(a3, &__p, &v9);
  if (v12 < 0)
  {
    operator delete(__p);
    if (v10 < 0)
    {
LABEL_8:
      operator delete(v9.n128_u64[0]);
    }
  }

  else if (v10 < 0)
  {
    goto LABEL_8;
  }
}

void sub_9305F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      sub_1F1A8(v24 - 64);
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  sub_1F1A8(v24 - 64);
  _Unwind_Resume(a1);
}

uint64_t sub_930684(uint64_t a1)
{
  *a1 = &off_266D850;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 16));
  return a1;
}

void sub_9306FC()
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
  xmmword_27B1520 = 0u;
  *algn_27B1530 = 0u;
  dword_27B1540 = 1065353216;
  sub_3A9A34(&xmmword_27B1520, v0);
  sub_3A9A34(&xmmword_27B1520, v3);
  sub_3A9A34(&xmmword_27B1520, __p);
  sub_3A9A34(&xmmword_27B1520, v9);
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
    qword_27B14F8 = 0;
    qword_27B1500 = 0;
    qword_27B14F0 = 0;
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

void sub_930944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1508)
  {
    qword_27B1510 = qword_27B1508;
    operator delete(qword_27B1508);
  }

  _Unwind_Resume(exception_object);
}

void sub_930B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t sub_930B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x27FFFFFFFLL;
  *a3 = &off_266D880;
  *(a3 + 16) = 0u;
  v6 = a3 + 16;
  v7 = (a3 + 372);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 136) = -1;
  *(a3 + 144) = 0xFFFF;
  *(a3 + 152) = -1;
  *(a3 + 154) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 174) = 0;
  *(a3 + 184) = 0x7FFFFFFF;
  *(a3 + 192) = 0x7FFFFFFF;
  *(a3 + 200) = 0;
  *(a3 + 208) = 0;
  *(a3 + 196) = 0x7FFFFFFF7FFFFFFFLL;
  *&v8 = 0x8000000080000000;
  *(a3 + 216) = 0x8000000080000000;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0;
  *(a3 + 276) = 0x7FFFFFFF;
  *(a3 + 280) = 0x8000000080000000;
  *(a3 + 296) = 0;
  *(a3 + 304) = xmmword_2297C00;
  *(a3 + 320) = -1;
  *(a3 + 328) = -1;
  *(a3 + 330) = 0;
  *(a3 + 350) = 0;
  *(a3 + 336) = 0u;
  *(a3 + 360) = 0x7FFFFFFF;
  *(a3 + 376) = 0u;
  *(a3 + 368) = 0x7FFFFFFF;
  *v7 = 0x7FFFFFFF7FFFFFFFLL;
  *(a3 + 392) = 0x8000000080000000;
  *(a3 + 448) = 0;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 452) = 0x7FFFFFFF;
  *(a3 + 456) = 0x8000000080000000;
  *(a3 + 472) = 0;
  *(a3 + 480) = xmmword_2297C00;
  *(a3 + 496) = -1;
  *(a3 + 504) = 0x7FFFFFFF;
  v7[17] = 0x7FFFFFFF7FFFFFFFLL;
  *(a3 + 520) = 0u;
  *(a3 + 536) = 0;
  *(a3 + 544) = 0x8000000080000000;
  *(a3 + 552) = 0x7FFFFFFF;
  *(a3 + 560) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 568) = 0x8000000080000000;
  *(a3 + 576) = 0x7FFFFFFF;
  *(a3 + 792) = 0u;
  *(a3 + 808) = 0u;
  *(a3 + 760) = 0u;
  *(a3 + 776) = 0u;
  *(a3 + 728) = 0u;
  *(a3 + 744) = 0u;
  *(a3 + 696) = 0u;
  *(a3 + 712) = 0u;
  *(a3 + 664) = 0u;
  *(a3 + 680) = 0u;
  *(a3 + 632) = 0u;
  *(a3 + 648) = 0u;
  *(a3 + 600) = 0u;
  *(a3 + 616) = 0u;
  *(a3 + 584) = 0u;
  *(&v8 + 1) = 0x8000000080000000;
  *(a3 + 824) = v8;
  *(a3 + 840) = v8;
  *(a3 + 1080) = 0u;
  *(a3 + 1096) = 0u;
  *(a3 + 1048) = 0u;
  *(a3 + 1064) = 0u;
  *(a3 + 1016) = 0u;
  *(a3 + 1032) = 0u;
  *(a3 + 984) = 0u;
  *(a3 + 1000) = 0u;
  *(a3 + 952) = 0u;
  *(a3 + 968) = 0u;
  *(a3 + 920) = 0u;
  *(a3 + 936) = 0u;
  *(a3 + 888) = 0u;
  *(a3 + 904) = 0u;
  *(a3 + 856) = 0u;
  *(a3 + 872) = 0u;
  result = sub_4D6468((a2 + 784));
  if (result)
  {
    result = sub_4D6664(v6, a2 + 784);
  }

  *(a3 + 8) = *(a1 + 8);
  return result;
}

void sub_930D78(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_3EEA68(v3);
  _Unwind_Resume(a1);
}

void sub_930D98()
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
  xmmword_27B1578 = 0u;
  unk_27B1588 = 0u;
  dword_27B1598 = 1065353216;
  sub_3A9A34(&xmmword_27B1578, v0);
  sub_3A9A34(&xmmword_27B1578, v3);
  sub_3A9A34(&xmmword_27B1578, __p);
  sub_3A9A34(&xmmword_27B1578, v9);
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
    qword_27B1550 = 0;
    qword_27B1558 = 0;
    qword_27B1548 = 0;
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

void sub_930FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1560)
  {
    qword_27B1568 = qword_27B1560;
    operator delete(qword_27B1560);
  }

  _Unwind_Resume(exception_object);
}

void sub_93108C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

void sub_93119C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_9311C4(uint64_t a1, void *a2)
{
  v7 = 5;
  strcpy(__p, "ttl_s");
  *a1 = sub_64F20(a2, __p);
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  v7 = 21;
  strcpy(__p, "prefer_curated_length");
  v4 = sub_5F9D0(a2, __p);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *(a1 + 4) = v4;
  operator new();
}

void sub_9312F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_93131C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x27FFFFFFFLL;
  *a3 = &off_266D8B0;
  *(a3 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 24) = 0x7FFFFFFF;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *(a3 + 32) = vnegq_f64(v6);
  sub_64B998(a3 + 48);
  *(a3 + 8) = *(a1 + 16);
  if (*(a2 + 584) == 4 && *(a2 + 8) && *(a2 + 12) != -1 && sub_4D6468((a2 + 784)))
  {
    sub_61ECB0(v7, *a1, *(a1 + 8));
  }
}

void sub_93155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_3D2A1C(&a29);
  *v29 = v30;
  sub_53A868((v29 + 6));
  _Unwind_Resume(a1);
}

void sub_9315A0(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_53A868((v1 + 6));
  _Unwind_Resume(a1);
}

double sub_9315B8@<D0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3B2978(*a1);
  v7 = sub_6213F8(v6, a2, 0);
  v8 = (v7 - *v7);
  if (*v8 >= 7u)
  {
    v9 = v8[3];
    if (v9)
    {
      v10 = *(v7 + v9);
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v27[23] = 22;
          strcpy(v27, "Hike_Type_Out_And_Back");
        }

        else
        {
          if (v10 != 3)
          {
            goto LABEL_37;
          }

          v27[23] = 14;
          strcpy(v27, "Hike_Type_Loop");
        }

        v25 = sub_3AF4C0(*a1);
        sub_21E2C18(v25, 6, *(a1[1] + 242));
      }

      if (v10)
      {
        operator new();
      }
    }
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "Hiking tour (", 13);
    v11 = sub_6213F8(v6, a2, 0);
    v12 = (v11 - *v11);
    if (*v12 >= 5u && (v13 = v12[2]) != 0)
    {
      v14 = *(v11 + v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_4A084C(v6 + 16, 1u, 0);
    v16 = &v15[-*v15];
    if (*v16 >= 5u)
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v18 = &v15[v17 + *&v15[v17]];
        v19 = &v18[-*v18];
        if (*v19 >= 5u)
        {
          v20 = *(v19 + 2);
          if (v20)
          {
            if (v18[v20])
            {
              nullsub_1(v14);
            }
          }
        }
      }
    }

    v21 = std::ostream::operator<<();
    sub_4A5C(v21, ") has a hiking tour type value of UNKNOWN", 41);
    if ((v39 & 0x10) != 0)
    {
      v23 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v23 = v35;
      }

      v24 = v34;
      v22 = v23 - v34;
      if (v23 - v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v22 = 0;
        v29 = 0;
LABEL_32:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 1u);
        if (v29 < 0)
        {
          operator delete(__dst);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        std::locale::~locale(&v31);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v24 = v32;
      v22 = v33 - v32;
      if ((v33 - v32) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_39:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v29 = v22;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_32;
  }

LABEL_37:
  v27[23] = 0;
  v27[0] = 0;
  return sub_64B998(a3);
}

void sub_931AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_931B98()
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
  xmmword_27B15D0 = 0u;
  unk_27B15E0 = 0u;
  dword_27B15F0 = 1065353216;
  sub_3A9A34(&xmmword_27B15D0, v0);
  sub_3A9A34(&xmmword_27B15D0, v3);
  sub_3A9A34(&xmmword_27B15D0, __p);
  sub_3A9A34(&xmmword_27B15D0, v9);
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
    qword_27B15A8 = 0;
    qword_27B15B0 = 0;
    qword_27B15A0 = 0;
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

void sub_931DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B15B8)
  {
    qword_27B15C0 = qword_27B15B8;
    operator delete(qword_27B15B8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_931E8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    v6 = result;
    while (1)
    {
      v13 = 0;
      sub_9334B4(v14);
      v8 = *(v3 + 584);
      if (!v8)
      {
        break;
      }

      v9 = v3;
      if (v8 == 4)
      {
        goto LABEL_10;
      }

      if (v8 == 3)
      {
        v16 = *(v3 + 8);
        v10 = *(v3 + 592);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v16 = -1;
        v10 = *(v3 + 592);
        if (!v10)
        {
LABEL_13:
          if (sub_93C760(v3))
          {
            if (*(a2 + 1626) == 1)
            {
              sub_93DACC();
            }

            if (*(a2 + 1635) == 1)
            {
              v11 = sub_92FB30(&v19, *v6);
              sub_92FB34(v11, v3, v17);
              v14[1] = v17[1];
              v15 = v18;
            }

            sub_932418(v6, a2);
            if (*(a2 + 1639) == 1)
            {
              sub_930B90(&v19, *v6);
            }

            if (*(a2 + 1638) == 1)
            {
              sub_9311C0(&v19, *v6, a2 + 32);
            }

            if (*(a2 + 1627) == 1)
            {
              sub_93E758();
            }

            sub_932544(v6, a2);
            sub_932628(v6, a2);
            sub_9327F8(v6, a2);
            if (*(a2 + 1637) == 1)
            {
              sub_93CA34();
            }

            sub_93299C(v6, a2);
            if (*(a2 + 1633) == 1)
            {
              sub_9649A0();
            }

            sub_932AE8(v6, a2);
            if (*(a2 + 1631) == 1)
            {
              sub_969FF0();
            }

            sub_932BD4(v6, a2);
            sub_932CE4(v6, a2, v3, &v13);
          }

          else
          {
            v13 = 43;
          }

          goto LABEL_32;
        }
      }

LABEL_11:
      v13 = v10;
LABEL_32:
      v12 = *(a3 + 8);
      if (v12 >= *(a3 + 16))
      {
        *(a3 + 8) = sub_933E90(a3, &v13);
        result = sub_9390FC(v14);
        v3 += 1880;
        if (v3 == v4)
        {
          return result;
        }
      }

      else
      {
        *v12 = v13;
        sub_934060(v12 + 8, v14);
        *(v12 + 2472) = v16;
        *(a3 + 8) = v12 + 2480;
        result = sub_9390FC(v14);
        v3 += 1880;
        if (v3 == v4)
        {
          return result;
        }
      }
    }

    v9 = (v3 + 48);
LABEL_10:
    v16 = *v9;
    v10 = *(v3 + 592);
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  return result;
}

void sub_9323C8(_Unwind_Exception *a1)
{
  *(v1 + 8) = v3;
  sub_9390FC(v2 + 8);
  sub_939588(v1);
  _Unwind_Resume(a1);
}

void sub_9323FC(_Unwind_Exception *a1)
{
  sub_9390FC(v2 + 8);
  sub_939588(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_932418(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 1636) == 1)
  {
    v8[3] = v5;
    v8[4] = v4;
    v8[5] = v3;
    v8[6] = v2;
    v8[7] = v6;
    v8[8] = v7;
    sub_930320(v8, *result);
  }

  return result;
}

void sub_932544(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1624) == 1)
  {
    sub_93F140();
  }
}

void sub_932628(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1625) == 1)
  {
    sub_945110();
  }
}

void sub_9327F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1628) == 1)
  {
    sub_94D130();
  }
}

void sub_932988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_939710(va);
  _Unwind_Resume(a1);
}

void sub_93299C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1632) == 1)
  {
    sub_951D68();
  }
}

void sub_932AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_939898(va);
  _Unwind_Resume(a1);
}

void sub_932AE8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1630) == 1)
  {
    sub_965B58();
  }
}

void sub_932BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_932BD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1629) == 1)
  {
    sub_950A00();
  }
}

void sub_932CE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 1634) == 1)
  {
    v6 = sub_3320D0(&v15, *a1, a2 + 32);
    sub_96B244(v6, a3, v8);
    sub_933384(a4 + 2296, v8);
    v8[0] = &off_266DB30;
    if (v14 < 0)
    {
      operator delete(__p);
      if ((v12 & 0x80000000) == 0)
      {
LABEL_4:
        v7 = v10;
        if (v10 == -1)
        {
          return;
        }

LABEL_8:
        (off_266DA38[v7])(&v16, &v9);
        return;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v11);
    v7 = v10;
    if (v10 == -1)
    {
      return;
    }

    goto LABEL_8;
  }
}

void *sub_932DD0(void *a1)
{
  *a1 = &off_266D988;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_399184(v3 - 456);
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_932E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 16;
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = v5;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_937A74(v6 - 312);
      }

      while (v6 != v5);
      v7 = *v4;
    }

    *(a1 + 24) = v5;
    operator delete(v7);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v8 = (a1 + 40);
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    if (v10 == v9)
    {
LABEL_18:
      *(a1 + 48) = v9;
      operator delete(v11);
      *v8 = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      goto LABEL_19;
    }

    while ((*(v10 - 1) & 0x80000000) == 0)
    {
      v12 = (v10 - 56);
      if (*(v10 - 56))
      {
        goto LABEL_12;
      }

LABEL_13:
      v13 = v10 - 80;
      v14 = *(v10 - 80);
      if (v14)
      {
        *(v10 - 72) = v14;
        operator delete(v14);
      }

      v10 -= 80;
      if (v13 == v9)
      {
        v11 = *v8;
        goto LABEL_18;
      }
    }

    operator delete(*(v10 - 24));
    v12 = (v10 - 56);
    if (!*(v10 - 56))
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_936658(v12);
    operator delete(*v12);
    goto LABEL_13;
  }

LABEL_19:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void *sub_932F98(void *a1)
{
  *a1 = &off_266D928;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
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
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_933028(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 16;
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = v5;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_9357A0(v6 - 696);
      }

      while (v6 != v5);
      v7 = *v4;
    }

    *(a1 + 24) = v5;
    operator delete(v7);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v8 = (a1 + 40);
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    if (v10 != v9)
    {
      do
      {
        v10 = sub_935DD4(v10 - 208);
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 48) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v12 = (a1 + 64);
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 64);
    if (v14 != v13)
    {
      do
      {
        v14 -= 152;
        sub_936258(v14);
      }

      while (v14 != v13);
      v15 = *v12;
    }

    *(a1 + 72) = v13;
    operator delete(v15);
    *v12 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v16 = (a1 + 88);
  if (*(a1 + 88))
  {
    sub_936658((a1 + 88));
    operator delete(*v16);
    *v16 = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v17 = (a1 + 112);
  v18 = *(a1 + 112);
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = *(a1 + 120);
  v20 = *(a1 + 112);
  if (v19 == v18)
  {
    goto LABEL_28;
  }

  v21 = v19 - 48;
  do
  {
    if (*(v21 + 47) < 0)
    {
      operator delete(*(v21 + 24));
      if (!*v21)
      {
        goto LABEL_21;
      }

LABEL_26:
      sub_936658(v21);
      operator delete(*v21);
      goto LABEL_21;
    }

    if (*v21)
    {
      goto LABEL_26;
    }

LABEL_21:
    v22 = v21 - 24;
    v21 -= 72;
  }

  while (v22 != v18);
  v20 = *v17;
LABEL_28:
  *(a1 + 120) = v18;
  operator delete(v20);
  *v17 = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
LABEL_29:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v23 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v23;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v24 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v24;
  *(a2 + 183) = 0;
  *(a2 + 160) = 0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  v25 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v25;
  *(a2 + 207) = 0;
  *(a2 + 184) = 0;
  *(a1 + 208) = *(a2 + 208);
  return a1;
}